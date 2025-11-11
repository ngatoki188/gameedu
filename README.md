# GameEDU - Wireframe Demo

Wireframe cho ứng dụng thi tiếng Anh GameEDU

## 🚀 Cách deploy lên GitHub Pages (Miễn phí)

### Bước 1: Tạo repository trên GitHub

1. Đăng nhập vào [GitHub.com](https://github.com)
2. Click nút "+" ở góc trên phải → "New repository"
3. Đặt tên repository (ví dụ: `gameedu-wireframe`)
4. Chọn "Public"
5. **KHÔNG** tích "Initialize with README"
6. Click "Create repository"

### Bước 2: Upload files lên GitHub

1. Mở terminal/command prompt trong thư mục này
2. Chạy các lệnh sau:

```bash
# Khởi tạo git
git init

# Thêm tất cả files
git add .

# Commit
git commit -m "Initial commit: GameEDU wireframe"

# Thêm remote (thay YOUR_USERNAME và YOUR_REPO_NAME)
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git

# Push lên GitHub
git branch -M main
git push -u origin main
```

### Bước 3: Bật GitHub Pages

1. Vào repository trên GitHub
2. Click tab "Settings"
3. Scroll xuống phần "Pages" (bên trái)
4. Ở "Source", chọn branch "main" và folder "/ (root)"
5. Click "Save"
6. Đợi vài phút, GitHub sẽ tạo link: `https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/`

## 🌐 Cách deploy lên Netlify (Còn dễ hơn!)

### Cách 1: Drag & Drop

1. Vào [netlify.com](https://netlify.com) và đăng ký (miễn phí)
2. Kéo thả thư mục chứa các file HTML vào Netlify
3. Xong! Netlify tự động tạo link

### Cách 2: GitHub Integration

1. Đăng nhập Netlify
2. Click "Add new site" → "Import an existing project"
3. Chọn GitHub và chọn repository
4. Deploy settings: Build command để trống, Publish directory: `/`
5. Click "Deploy site"
6. Netlify sẽ tạo link: `https://YOUR_SITE_NAME.netlify.app`

## 📱 Các màn hình

- **index.html** - Trang điều hướng
- **home.html** - Trang chủ với nút PLAY
- **instructions.html** - Hướng dẫn thi
- **exam.html** - Màn hình làm bài thi
- **result.html** - Kết quả sau khi thi
- **leaderboard.html** - Bảng xếp hạng

## 🎨 Tính năng

- ✅ Responsive mobile (375px)
- ✅ Tất cả text tiếng Việt
- ✅ Navigation giữa các màn hình
- ✅ Timer và progress bar
- ✅ Top 3 podium
- ✅ Banner thông báo người đạt giải
