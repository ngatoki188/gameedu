# GameEDU Wireframe - Auto Deploy Script
# Script tự động deploy lên GitHub Pages

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  GameEDU Wireframe - Auto Deploy" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Kiểm tra Git
Write-Host "Đang kiểm tra Git..." -ForegroundColor Yellow
try {
    $gitVersion = git --version
    Write-Host "✓ Git đã được cài đặt: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ Git chưa được cài đặt!" -ForegroundColor Red
    Write-Host "Vui lòng cài đặt Git từ: https://git-scm.com/downloads" -ForegroundColor Yellow
    exit
}

Write-Host ""

# Kiểm tra xem đã có git repo chưa
if (Test-Path .git) {
    Write-Host "✓ Đã phát hiện Git repository" -ForegroundColor Green
} else {
    Write-Host "Đang khởi tạo Git repository..." -ForegroundColor Yellow
    git init
    Write-Host "✓ Đã khởi tạo Git repository" -ForegroundColor Green
}

Write-Host ""

# Thêm tất cả files
Write-Host "Đang thêm files..." -ForegroundColor Yellow
git add .
Write-Host "✓ Đã thêm tất cả files" -ForegroundColor Green

Write-Host ""

# Commit
Write-Host "Đang commit..." -ForegroundColor Yellow
$commitMessage = "Deploy GameEDU wireframe - $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
try {
    git commit -m $commitMessage
    Write-Host "✓ Đã commit thành công" -ForegroundColor Green
} catch {
    Write-Host "⚠ Không có thay đổi để commit" -ForegroundColor Yellow
}

Write-Host ""

# Hỏi thông tin GitHub
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Thông tin GitHub Repository" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$githubUsername = Read-Host "Nhập GitHub username của bạn"
$repoName = Read-Host "Nhập tên repository (ví dụ: gameedu-wireframe)"

$repoUrl = "https://github.com/$githubUsername/$repoName.git"

Write-Host ""
Write-Host "Repository URL: $repoUrl" -ForegroundColor Cyan
Write-Host ""

# Kiểm tra remote
$remoteExists = git remote | Select-String -Pattern "origin"

if ($remoteExists) {
    Write-Host "⚠ Đã có remote 'origin'" -ForegroundColor Yellow
    $updateRemote = Read-Host "Bạn có muốn cập nhật remote? (y/n)"
    if ($updateRemote -eq "y" -or $updateRemote -eq "Y") {
        git remote set-url origin $repoUrl
        Write-Host "✓ Đã cập nhật remote" -ForegroundColor Green
    }
} else {
    Write-Host "Đang thêm remote..." -ForegroundColor Yellow
    git remote add origin $repoUrl
    Write-Host "✓ Đã thêm remote" -ForegroundColor Green
}

Write-Host ""

# Kiểm tra branch
$currentBranch = git branch --show-current
if ($currentBranch -ne "main" -and $currentBranch -ne "master") {
    Write-Host "Đang tạo branch 'main'..." -ForegroundColor Yellow
    git branch -M main
    Write-Host "✓ Đã chuyển sang branch 'main'" -ForegroundColor Green
} elseif ($currentBranch -eq "master") {
    Write-Host "Đang đổi tên branch 'master' thành 'main'..." -ForegroundColor Yellow
    git branch -M main
    Write-Host "✓ Đã đổi tên branch" -ForegroundColor Green
}

Write-Host ""

# Push
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Đang push lên GitHub..." -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "⚠ LƯU Ý: Bạn cần đảm bảo:" -ForegroundColor Yellow
Write-Host "  1. Đã tạo repository '$repoName' trên GitHub" -ForegroundColor Yellow
Write-Host "  2. Repository là PUBLIC" -ForegroundColor Yellow
Write-Host "  3. Đã đăng nhập GitHub trên máy tính" -ForegroundColor Yellow
Write-Host ""

$confirm = Read-Host "Bạn đã sẵn sàng push? (y/n)"

if ($confirm -eq "y" -or $confirm -eq "Y") {
    Write-Host ""
    Write-Host "Đang push..." -ForegroundColor Yellow
    
    try {
        git push -u origin main
        Write-Host ""
        Write-Host "========================================" -ForegroundColor Green
        Write-Host "  ✓ DEPLOY THÀNH CÔNG!" -ForegroundColor Green
        Write-Host "========================================" -ForegroundColor Green
        Write-Host ""
        Write-Host "Bước tiếp theo:" -ForegroundColor Cyan
        Write-Host "1. Vào: https://github.com/$githubUsername/$repoName/settings/pages" -ForegroundColor White
        Write-Host "2. Ở phần 'Source', chọn branch 'main' và folder '/ (root)'" -ForegroundColor White
        Write-Host "3. Click 'Save'" -ForegroundColor White
        Write-Host "4. Đợi vài phút, link sẽ là:" -ForegroundColor White
        Write-Host "   https://$githubUsername.github.io/$repoName/" -ForegroundColor Green
        Write-Host ""
    } catch {
        Write-Host ""
        Write-Host "✗ Lỗi khi push!" -ForegroundColor Red
        Write-Host "Nguyên nhân có thể:" -ForegroundColor Yellow
        Write-Host "  - Chưa tạo repository trên GitHub" -ForegroundColor Yellow
        Write-Host "  - Chưa đăng nhập GitHub" -ForegroundColor Yellow
        Write-Host "  - Repository không tồn tại hoặc không có quyền" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "Hãy kiểm tra và thử lại!" -ForegroundColor Yellow
    }
} else {
    Write-Host ""
    Write-Host "Đã hủy. Bạn có thể chạy lại script khi sẵn sàng." -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Nhấn phím bất kỳ để thoát..."
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")

