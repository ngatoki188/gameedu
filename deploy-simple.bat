@echo off
chcp 65001 >nul
echo ========================================
echo   GameEDU Wireframe - Quick Deploy
echo ========================================
echo.

echo Đang kiểm tra Git...
git --version >nul 2>&1
if errorlevel 1 (
    echo ✗ Git chưa được cài đặt!
    echo Vui lòng cài đặt Git từ: https://git-scm.com/downloads
    pause
    exit
)
echo ✓ Git đã được cài đặt
echo.

if not exist .git (
    echo Đang khởi tạo Git repository...
    git init
    echo ✓ Đã khởi tạo Git repository
    echo.
)

echo Đang thêm files...
git add .
echo ✓ Đã thêm tất cả files
echo.

echo Đang commit...
git commit -m "Deploy GameEDU wireframe" 2>nul
if errorlevel 1 (
    echo ⚠ Không có thay đổi để commit
) else (
    echo ✓ Đã commit thành công
)
echo.

echo ========================================
echo   Thông tin GitHub Repository
echo ========================================
echo.

set /p githubUsername="Nhập GitHub username: "
set /p repoName="Nhập tên repository: "

set repoUrl=https://github.com/%githubUsername%/%repoName%.git

echo.
echo Repository URL: %repoUrl%
echo.

git remote remove origin 2>nul
git remote add origin %repoUrl%
git branch -M main 2>nul

echo.
echo ========================================
echo   Đang push lên GitHub...
echo ========================================
echo.
echo ⚠ LƯU Ý: Bạn cần đảm bảo:
echo   1. Đã tạo repository '%repoName%' trên GitHub
echo   2. Repository là PUBLIC
echo   3. Đã đăng nhập GitHub
echo.

set /p confirm="Bạn đã sẵn sàng push? (y/n): "

if /i "%confirm%"=="y" (
    echo.
    echo Đang push...
    git push -u origin main
    
    if errorlevel 1 (
        echo.
        echo ✗ Lỗi khi push!
        echo Hãy kiểm tra lại thông tin và thử lại.
    ) else (
        echo.
        echo ========================================
        echo   ✓ DEPLOY THÀNH CÔNG!
        echo ========================================
        echo.
        echo Bước tiếp theo:
        echo 1. Vào: https://github.com/%githubUsername%/%repoName%/settings/pages
        echo 2. Ở phần 'Source', chọn branch 'main' và folder '/ (root)'
        echo 3. Click 'Save'
        echo 4. Đợi vài phút, link sẽ là:
        echo    https://%githubUsername%.github.io/%repoName%/
        echo.
    )
) else (
    echo.
    echo Đã hủy.
)

pause

