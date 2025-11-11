# 🚀 Hướng dẫn Deploy Wireframe lên Web

## Cách 1: Dùng Script Tự Động (Dễ nhất) ⭐

### Windows:

1. **Chạy file `deploy-simple.bat`** (double-click)
2. Nhập GitHub username của bạn
3. Nhập tên repository (ví dụ: `gameedu-wireframe`)
4. Đảm bảo đã tạo repository trên GitHub (public)
5. Nhấn `y` để push
6. Làm theo hướng dẫn để bật GitHub Pages

### Hoặc dùng PowerShell:

1. Mở PowerShell trong thư mục này
2. Chạy: `.\deploy.ps1`
3. Làm theo hướng dẫn

---

## Cách 2: Deploy lên Netlify (Cực kỳ dễ) 🌟

1. Vào https://netlify.com và đăng ký (miễn phí)
2. Kéo thả **toàn bộ thư mục** này vào Netlify
3. Xong! Netlify tự động tạo link

**Link sẽ có dạng:** `https://your-site-name.netlify.app`

---

## Cách 3: Deploy thủ công lên GitHub Pages

### Bước 1: Tạo Repository trên GitHub

1. Đăng nhập https://github.com
2. Click nút **"+"** → **"New repository"**
3. Đặt tên (ví dụ: `gameedu-wireframe`)
4. Chọn **"Public"**
5. **KHÔNG** tích "Initialize with README"
6. Click **"Create repository"**

### Bước 2: Push code lên GitHub

Mở terminal/command prompt trong thư mục này và chạy:

```bash
# Khởi tạo git (nếu chưa có)
git init

# Thêm tất cả files
git add .

# Commit
git commit -m "Deploy GameEDU wireframe"

# Thêm remote (thay YOUR_USERNAME và YOUR_REPO_NAME)
git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git

# Push
git branch -M main
git push -u origin main
```

### Bước 3: Bật GitHub Pages

1. Vào repository trên GitHub
2. Click tab **"Settings"**
3. Scroll xuống phần **"Pages"** (menu bên trái)
4. Ở **"Source"**, chọn:
   - Branch: **"main"**
   - Folder: **"/ (root)"**
5. Click **"Save"**
6. Đợi 1-2 phút

### Bước 4: Xem kết quả

Link sẽ là: `https://YOUR_USERNAME.github.io/YOUR_REPO_NAME/`

---

## ⚠️ Lưu ý quan trọng:

1. **Repository phải là PUBLIC** (không phải private)
2. **Đã cài đặt Git** trên máy tính
3. **Đã đăng nhập GitHub** (qua GitHub Desktop hoặc git config)
4. **Đã tạo repository** trước khi push

---

## 🆘 Gặp lỗi?

### Lỗi: "Repository not found"

→ Kiểm tra lại tên repository và username

### Lỗi: "Permission denied"

→ Đăng nhập lại GitHub:

```bash
git config --global user.name "YOUR_USERNAME"
git config --global user.email "YOUR_EMAIL"
```

### Lỗi: "Branch main does not exist"

→ Đổi tên branch:

```bash
git branch -M main
```

---

## 📱 Sau khi deploy thành công:

Link web sẽ hoạt động trên mọi thiết bị:

- ✅ Desktop
- ✅ Mobile
- ✅ Tablet

Bạn có thể chia sẻ link với bất kỳ ai!
