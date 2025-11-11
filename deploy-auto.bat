@echo off
chcp 65001 >nul
echo ========================================
echo   GameEDU Wireframe - Auto Deploy
echo   GitHub Username: ngatoki188
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
    echo ⚠ Không có thay đổi để commit hoặc đã commit rồi
) else (
    echo ✓ Đã commit thành công
)
echo.

echo ========================================
echo   Thông tin GitHub Repository
echo ========================================
echo.
echo GitHub Username: ngatoki188
echo.

set /p repoName="Nhập tên repository (ví dụ: gameedu-wireframe): "

if "%repoName%"=="" (
    echo ✗ Tên repository không được để trống!
    pause
    exit
)

set githubUsername=ngatoki188
set repoUrl=https://github.com/%githubUsername%/%repoName%.git

echo.
echo Repository URL: %repoUrl%
echo.

git remote remove origin 2>nul
git remote add origin %repoUrl%
git branch -M main 2>nul

echo.
echo ========================================
echo   ⚠ QUAN TRỌNG - ĐỌC KỸ!
echo ========================================
echo.
echo Trước khi tiếp tục, bạn CẦN:
echo.
echo 1. Vào: https://github.com/new
echo 2. Tạo repository mới với tên: %repoName%
echo 3. Chọn PUBLIC (không phải private)
echo 4. KHÔNG tích "Initialize with README"
echo 5. Click "Create repository"
echo.
echo ========================================
echo.

set /p confirm="Bạn đã tạo repository '%repoName%' trên GitHub chưa? (y/n): "

if /i not "%confirm%"=="y" (
    echo.
    echo Vui lòng tạo repository trước, sau đó chạy lại script này.
    echo.
    echo Link tạo repository: https://github.com/new
    pause
    exit
)

echo.
echo ========================================
echo   Đang push lên GitHub...
echo ========================================
echo.

git push -u origin main

if errorlevel 1 (
    echo.
    echo ========================================
    echo   ✗ LỖI KHI PUSH!
    echo ========================================
    echo.
    echo Nguyên nhân có thể:
    echo   1. Repository chưa được tạo trên GitHub
    echo   2. Repository không phải PUBLIC
    echo   3. Chưa đăng nhập GitHub
    echo   4. Tên repository sai
    echo.
    echo Hãy kiểm tra và thử lại!
    echo.
    pause
    exit
)

echo.
echo ========================================
echo   ✓ DEPLOY THÀNH CÔNG!
echo ========================================
echo.
echo Bước tiếp theo - Bật GitHub Pages:
echo.
echo 1. Vào link này:
echo    https://github.com/%githubUsername%/%repoName%/settings/pages
echo.
echo 2. Ở phần "Source":
echo    - Branch: chọn "main"
echo    - Folder: chọn "/ (root)"
echo.
echo 3. Click nút "Save"
echo.
echo 4. Đợi 1-2 phút, sau đó truy cập:
echo    https://%githubUsername%.github.io/%repoName%/
echo.
echo ========================================
echo.
echo Link web của bạn sẽ là:
echo https://%githubUsername%.github.io/%repoName%/
echo.
pause

