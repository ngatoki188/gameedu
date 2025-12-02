# PROPOSAL - HỆ THỐNG GAME GIÁO DỤC TIẾNG ANH GAMEEDU

## 1. TỔNG QUAN DỰ ÁN

### 1.1. Giới thiệu
**GameEDU** là một nền tảng game giáo dục tiếng Anh được thiết kế để giúp học sinh cải thiện kỹ năng tiếng Anh thông qua các thử thách cạnh tranh và giải thưởng học bổng. Hệ thống kết hợp giữa học tập và giải trí, tạo động lực cho học sinh tham gia và nâng cao trình độ tiếng Anh.

### 1.2. Mục tiêu dự án
- Tạo môi trường học tập tiếng Anh thú vị và cạnh tranh
- Khuyến khích học sinh luyện tập tiếng Anh thường xuyên
- Cung cấp giải thưởng học bổng cho các học sinh xuất sắc
- Theo dõi và đánh giá tiến độ học tập của học sinh
- Quản lý các cuộc thi tiếng Anh định kỳ

### 1.3. Đối tượng sử dụng
- **Học sinh**: Tham gia các thử thách tiếng Anh, xem bảng xếp hạng, mua lượt chơi
- **Quản trị viên**: Quản lý người dùng, cuộc thi, kết quả, giải thưởng và gói lượt chơi

---

## 2. GIỚI THIỆU CÁC MÀN HÌNH - MỤC ĐÍCH VÀ CHỨC NĂNG

### 2.1. Màn hình dành cho Học sinh (Student)

#### 2.1.1. Trang Chủ (Home Page) - `home.html`
**Mục đích**: 
- Là điểm khởi đầu của ứng dụng, cung cấp tổng quan về trạng thái tài khoản và các tùy chọn chính
- Tạo trải nghiệm người dùng thân thiện và dễ sử dụng

**Chức năng chính**:
- **Hiển thị thông tin người dùng**: Avatar, tên, số lượt chơi còn lại
- **Nút Play Now**: Nút chính để bắt đầu tham gia cuộc thi (hiển thị số lượt chơi còn lại)
- **Thông báo**: Hiển thị badge số thông báo chưa đọc, modal thông báo về giải thưởng và sự kiện sắp tới
- **Cài đặt**: Modal cài đặt âm thanh và rung
- **Hồ sơ cá nhân**: Modal hiển thị thông tin chi tiết:
  - Thông tin cơ bản (email, trường, lớp)
  - Thống kê (tổng số lần chơi, điểm cao nhất, hạng tốt nhất)
  - Lịch sử chơi gần đây với điểm số, hạng, thời gian
- **Menu điều hướng**:
  - **Store**: Mua lượt chơi
  - **Events**: Xem danh sách cuộc thi
  - **Leaderboard**: Xem bảng xếp hạng
  - **About Game**: Hướng dẫn và thông tin về game

**Đặc điểm UI/UX**:
- Gradient background (tím-xanh) tạo cảm giác game
- Nút Play Now nổi bật với animation shine effect
- Responsive design cho mobile (375px width)

---

#### 2.1.2. Trang Hướng Dẫn (Instructions) - `instructions.html`
**Mục đích**: 
- Cung cấp thông tin quan trọng trước khi bắt đầu thi
- Đảm bảo người chơi hiểu rõ quy tắc và chuẩn bị sẵn sàng

**Chức năng chính**:
- **Thông tin cuộc thi**:
  - Thời gian: 45 phút để hoàn thành
  - Số câu hỏi: 50 câu hỏi thú vị
  - Điểm số: 2 điểm/câu (tối đa 100 điểm)
  - Câu hỏi được xáo trộn ngẫu nhiên
- **Checkbox xác nhận**: Người chơi phải tick "I am ready to start!" để kích hoạt nút Start
- **Nút Start Playing**: Chỉ kích hoạt sau khi đã tick checkbox, chuyển đến trang thi

**Đặc điểm UI/UX**:
- Hero section với icon và animation bounce
- Card trắng nổi bật trên background gradient
- Checkbox tùy chỉnh với animation khi click

---

#### 2.1.3. Trang Thi (Exam) - `exam.html`
**Mục đích**: 
- Màn hình chính để người chơi thực hiện bài thi
- Cung cấp giao diện trực quan và dễ sử dụng cho việc trả lời câu hỏi

**Chức năng chính**:
- **Timer đếm ngược**: 
  - Hiển thị thời gian còn lại (format MM:SS)
  - Cảnh báo màu đỏ khi còn < 5 phút
  - Tự động nộp bài khi hết thời gian
- **Thanh tiến độ**: Hiển thị số câu hỏi đã làm / tổng số câu (ví dụ: Question 5/50)
- **Nút Pause**: Tạm dừng bài thi (timer vẫn chạy)
- **Hiển thị câu hỏi**:
  - **Câu hỏi dạng text**: Câu hỏi văn bản đơn giản
  - **Câu hỏi dạng hình ảnh**: Hiển thị hình ảnh kèm câu hỏi
  - **Câu hỏi dạng video**: Player video với controls
  - **Câu hỏi dạng audio**: Player audio với nút play/pause và progress bar
- **Đáp án trắc nghiệm**: 4 lựa chọn (A, B, C, D) với khả năng chọn và thay đổi
- **Điều hướng**:
  - Nút Previous/Next để chuyển câu hỏi
  - Nút danh sách câu hỏi (📋): Modal hiển thị grid tất cả câu hỏi với trạng thái:
    - ✓ = Đã trả lời
    - ● = Câu hỏi hiện tại
    - ○ = Chưa trả lời
  - Click vào số câu hỏi để chuyển nhanh
- **Nút Submit**: 
  - Xác nhận trước khi nộp bài
  - Chuyển đến trang kết quả sau khi nộp

**Đặc điểm UI/UX**:
- Sticky top bar với timer và progress
- Bottom navigation bar cố định
- Câu hỏi được highlight khi đã chọn đáp án
- Smooth transitions khi chuyển câu hỏi

---

#### 2.1.4. Trang Kết Quả (Result) - `result.html`
**Mục đích**: 
- Hiển thị kết quả sau khi hoàn thành bài thi
- Tạo cảm giác thành tựu và động lực cho người chơi

**Chức năng chính**:
- **Màn hình chúc mừng**:
  - Điểm số lớn với gradient (ví dụ: 85/100)
  - Nhãn đánh giá (EXCELLENT!, GOOD!, etc.)
  - 5 sao đánh giá
- **Thống kê chi tiết**:
  - **Thời gian**: Thời gian đã sử dụng
  - **Số câu đúng**: Số câu trả lời đúng / tổng số câu
  - **Độ chính xác**: Phần trăm đúng (ví dụ: 84%)
  - **Hạng**: Vị trí trên bảng xếp hạng (ví dụ: #25)
- **Thanh tiến độ**: Visual progress bar cho số câu đúng
- **Thông báo giải thưởng**: 
  - Card đặc biệt nếu đủ điều kiện nhận giải
  - Thông tin về thời gian công bố giải thưởng
- **Nút Back to Home**: Quay về trang chủ

**Đặc điểm UI/UX**:
- Background gradient nhẹ nhàng (xanh dương - xanh lá)
- Icon và emoji tạo cảm giác tích cực
- Card trắng nổi bật với shadow

---

#### 2.1.5. Bảng Xếp Hạng (Leaderboard) - `leaderboard.html`
**Mục đích**: 
- Hiển thị thứ hạng của người chơi trong cuộc thi
- Tạo động lực cạnh tranh và minh bạch kết quả

**Chức năng chính**:
- **Podium Top 3**: 
  - **Hạng 1**: Vị trí trung tâm, avatar lớn hơn, icon vương miện 👑
  - **Hạng 2**: Bên trái, nền bạc
  - **Hạng 3**: Bên phải, nền đồng
  - Hiển thị: Tên, trường, điểm, thời gian, giải thưởng
- **Vị trí của bạn**: Card đặc biệt highlight vị trí người chơi hiện tại
- **Danh sách xếp hạng đầy đủ**:
  - Số thứ hạng
  - Avatar và tên
  - Trường học
  - Điểm số và thời gian
  - Giải thưởng (nếu có)
- **Highlight người thắng giải**: Background khác màu cho top 10

**Đặc điểm UI/UX**:
- Podium design tạo cảm giác giải đấu
- Màu sắc phân biệt rõ ràng (vàng, bạc, đồng)
- Scrollable list cho danh sách dài

---

#### 2.1.6. Trang Sự Kiện (Contests/Events) - `contests.html`
**Mục đích**: 
- Hiển thị tất cả các cuộc thi (sắp tới, đang diễn ra, đã kết thúc)
- Cung cấp thông tin chi tiết về giải thưởng và thời gian

**Chức năng chính**:
- **Danh sách cuộc thi** với 3 trạng thái:
  - **UPCOMING** (Sắp tới): 
    - Border màu cam
    - Hiển thị thời gian bắt đầu còn lại
    - Nút "Coming Soon" (disabled)
  - **ONGOING** (Đang diễn ra):
    - Border màu xanh lá
    - Hiển thị thời gian còn lại
    - Nút "PLAY NOW" (active)
  - **ENDED** (Đã kết thúc):
    - Border màu xám
    - Hiển thị người thắng cuộc
    - Nút "View Results" để xem kết quả
- **Thông tin cuộc thi**:
  - Tên cuộc thi
  - Thời gian diễn ra (start date - end date)
  - Cấu trúc giải thưởng chi tiết:
    - Top 1: 50,000 MMK
    - Top 2: 30,000 MMK
    - Top 3: 20,000 MMK
    - Top 4-10: 5,000 MMK mỗi người
- **Modal kết quả**: 
  - Hiển thị danh sách người thắng giải
  - Thông tin chi tiết về giải thưởng

**Đặc điểm UI/UX**:
- Card design với border màu phân biệt trạng thái
- Badge trạng thái rõ ràng
- Modal hiển thị winners với ranking badges

---

#### 2.1.7. Cửa Hàng (Store) - `store.html`
**Mục đích**: 
- Cho phép người chơi mua lượt chơi (turns) để tham gia các cuộc thi
- Tạo nguồn doanh thu cho hệ thống

**Chức năng chính**:
- **Hero section**: 
  - Tiêu đề "Turn Packages"
  - Subtitle "Compare Turn Packages"
  - Icon game với sparkle effects
- **Hiển thị số lượt hiện tại**: 
  - Card gradient hiển thị số lượt chơi còn lại
  - Icon và số lượng rõ ràng
- **Danh sách gói lượt chơi**:
  - **1 Turn**: 100 MMK
    - Mô tả: Add 1 turn to join events
    - Features: Use anytime, No expiration
  - **3 Turns**: 270 MMK (Tiết kiệm 10%)
    - Mô tả: Save 10% compared to individual purchase
    - Features: Save 10% discount, Use anytime
  - **5 Turns**: 400 MMK (RECOMMENDED - Tiết kiệm 20%)
    - Badge "RECOMMENDED" màu gradient
    - Mô tả: Save 20% - Most popular package
    - Features: Best value for money, No expiration date
  - **10 Turns**: 700 MMK (Tiết kiệm 30%)
    - Mô tả: Save 30% - Best package
    - Features: Save 30% discount, Best value package
- **Nút Buy Now**: 
  - Xác nhận trước khi mua
  - Cập nhật số lượt chơi sau khi mua thành công

**Đặc điểm UI/UX**:
- Card design với recommended badge nổi bật
- Icon và số lượng turns rõ ràng
- Pricing hiển thị rõ ràng với đơn vị MMK

---

#### 2.1.8. Lịch Sử (History) - `history.html`
**Mục đích**: 
- Hiển thị lịch sử các lần chơi của người dùng
- Cho phép người chơi theo dõi tiến độ và cải thiện

**Chức năng chính**:
- **Danh sách lịch sử chơi**:
  - Tên cuộc thi
  - Ngày và giờ chơi
  - Trạng thái: Completed, Ongoing
- **Thống kê cho mỗi lần chơi**:
  - **Score**: Điểm số đạt được
  - **Rank**: Hạng trong cuộc thi đó
  - **Time**: Thời gian hoàn thành
  - **Questions**: Số câu đúng / tổng số câu
- **Empty state**: Hiển thị khi chưa có lịch sử

**Đặc điểm UI/UX**:
- Card design với border-left màu để phân biệt
- Grid layout cho thống kê
- Màu sắc khác nhau cho các chỉ số (xanh cho điểm, cam cho hạng, xanh lá cho thời gian)

---

### 2.2. Màn hình dành cho Quản trị viên (Admin)

#### 2.2.1. Dashboard Quản Trị (Admin Dashboard) - `admin.html`
**Mục đích**: 
- Cung cấp tổng quan về hệ thống và quản lý tất cả các chức năng
- Giúp admin theo dõi và quản lý hiệu quả

**Chức năng chính**:

**Sidebar Navigation**:
- Dashboard
- Users (Quản lý người dùng)
- Contests (Quản lý cuộc thi)
- Results (Quản lý kết quả)
- Prizes (Quản lý giải thưởng)
- Game Packages (Quản lý gói lượt chơi)

**Dashboard Section**:
- **Thống kê tổng quan** (Stat Cards):
  - Tổng số người dùng
  - Tổng số cuộc thi
  - Tổng số lượt thi
  - Doanh thu từ store
  - Tỷ lệ tăng trưởng so với kỳ trước
- **Biểu đồ và charts**:
  - Biểu đồ người dùng theo thời gian
  - Biểu đồ lượt thi theo cuộc thi
  - Biểu đồ doanh thu

**Users Management Section**:
- **Danh sách người dùng**:
  - Tìm kiếm và lọc người dùng
  - Thông tin: Tên, email, trường, lớp
  - Thống kê: Số lần chơi, điểm cao nhất
  - Actions: Xem chi tiết, Khóa/Mở khóa tài khoản
- **Tạo người dùng mới**: Form thêm người dùng
- **Chỉnh sửa thông tin**: Modal hoặc form chỉnh sửa

**Contests Management Section**:
- **Danh sách cuộc thi**:
  - Tên, thời gian, trạng thái
  - Số người tham gia
  - Actions: Chỉnh sửa, Xóa, Xem chi tiết
- **Tạo cuộc thi mới**:
  - Form nhập thông tin cuộc thi
  - Thiết lập thời gian bắt đầu/kết thúc
  - Cấu hình giải thưởng
- **Quản lý câu hỏi**:
  - Thêm/Sửa/Xóa câu hỏi
  - Upload media (hình ảnh, video, audio)
  - Thiết lập đáp án đúng
  - Sắp xếp thứ tự câu hỏi

**Results Management Section**:
- **Xem kết quả theo cuộc thi**:
  - Lọc theo cuộc thi
  - Danh sách kết quả với điểm số, hạng, thời gian
  - Export kết quả ra Excel/PDF
- **Thống kê kết quả**:
  - Điểm trung bình
  - Phân bố điểm số
  - Top performers

**Prizes Management Section**:
- **Danh sách giải thưởng**:
  - Xem giải thưởng đã trao
  - Lọc theo cuộc thi
- **Trao giải thưởng**:
  - Chọn cuộc thi
  - Xác nhận và trao giải cho top players
  - Ghi nhận thanh toán giải thưởng

**Game Packages Management Section**:
- **Danh sách gói lượt chơi**:
  - Tên gói, số lượt, giá
  - Trạng thái (active/inactive)
  - Số lượng đã bán
- **Tạo/Chỉnh sửa gói**:
  - Form nhập thông tin gói
  - Thiết lập giá và discount
  - Đánh dấu recommended

**Đặc điểm UI/UX**:
- Sidebar navigation cố định bên trái
- Main content area rộng rãi
- Card-based design cho các sections
- Tables với sorting và filtering
- Modals cho forms
- Responsive design cho desktop

---

## 3. USE CASE - MAIN FLOW VÀ EXCEPTION FLOWS CHO ADMIN

### 3.1. Use Case: Đăng nhập Admin

#### 3.1.1. Main Flow
1. Admin truy cập trang đăng nhập admin
2. Hệ thống hiển thị form đăng nhập (email, password)
3. Admin nhập email và password
4. Admin click nút "Đăng nhập"
5. Hệ thống validate thông tin đăng nhập
6. Hệ thống kiểm tra quyền admin
7. Hệ thống tạo JWT token và lưu session
8. Hệ thống chuyển hướng đến Admin Dashboard
9. **Kết thúc use case**

#### 3.1.2. Exception Flows
- **E1: Email hoặc password sai**
  - 3a. Hệ thống hiển thị thông báo lỗi "Email hoặc mật khẩu không đúng"
  - 3b. Quay lại bước 2
- **E2: Tài khoản không có quyền admin**
  - 6a. Hệ thống hiển thị thông báo "Bạn không có quyền truy cập"
  - 6b. Quay lại bước 2
- **E3: Tài khoản bị khóa**
  - 6a. Hệ thống hiển thị thông báo "Tài khoản đã bị khóa. Vui lòng liên hệ quản trị viên"
  - 6b. Kết thúc use case
- **E4: Kết nối mạng lỗi**
  - 5a. Hệ thống hiển thị thông báo "Lỗi kết nối. Vui lòng thử lại"
  - 5b. Quay lại bước 2

---

### 3.2. Use Case: Quản lý Người dùng - Xem danh sách

#### 3.2.1. Main Flow
1. Admin đăng nhập thành công
2. Admin click vào menu "Users" trong sidebar
3. Hệ thống hiển thị danh sách người dùng với thông tin: ID, Tên, Email, Trường, Số lần chơi, Điểm cao nhất
4. Admin có thể tìm kiếm người dùng bằng search box
5. Hệ thống lọc và hiển thị kết quả tìm kiếm
6. **Kết thúc use case**

#### 3.2.2. Exception Flows
- **E1: Không có dữ liệu**
  - 3a. Hệ thống hiển thị message "Chưa có người dùng nào"
  - 3b. Kết thúc use case
- **E2: Lỗi load dữ liệu**
  - 3a. Hệ thống hiển thị thông báo "Lỗi khi tải dữ liệu. Vui lòng thử lại"
  - 3b. Hiển thị nút "Retry"
  - 3c. Admin click Retry, quay lại bước 3

---

### 3.3. Use Case: Quản lý Người dùng - Tạo người dùng mới

#### 3.3.1. Main Flow
1. Admin ở trang User Management
2. Admin click nút "Tạo người dùng mới"
3. Hệ thống hiển thị modal form với các trường: Tên, Email, Password, Trường, Lớp
4. Admin điền thông tin vào form
5. Admin click nút "Tạo"
6. Hệ thống validate dữ liệu (email format, password strength, required fields)
7. Hệ thống kiểm tra email đã tồn tại chưa
8. Hệ thống tạo tài khoản mới
9. Hệ thống hiển thị thông báo "Tạo người dùng thành công"
10. Hệ thống cập nhật danh sách người dùng
11. **Kết thúc use case**

#### 3.3.2. Exception Flows
- **E1: Email đã tồn tại**
  - 7a. Hệ thống hiển thị thông báo "Email này đã được sử dụng"
  - 7b. Highlight trường email
  - 7c. Quay lại bước 4
- **E2: Dữ liệu không hợp lệ**
  - 6a. Hệ thống hiển thị lỗi validation cho từng trường
  - 6b. Quay lại bước 4
- **E3: Lỗi server khi tạo**
  - 8a. Hệ thống hiển thị thông báo "Lỗi khi tạo người dùng. Vui lòng thử lại"
  - 8b. Quay lại bước 3

---

### 3.4. Use Case: Quản lý Người dùng - Chỉnh sửa thông tin

#### 3.4.1. Main Flow
1. Admin ở trang User Management
2. Admin click nút "Edit" trên một người dùng
3. Hệ thống hiển thị modal form với thông tin hiện tại đã điền sẵn
4. Admin chỉnh sửa thông tin cần thiết
5. Admin click nút "Lưu"
6. Hệ thống validate dữ liệu
7. Hệ thống cập nhật thông tin người dùng
8. Hệ thống hiển thị thông báo "Cập nhật thành công"
9. Hệ thống cập nhật danh sách
10. **Kết thúc use case**

#### 3.4.2. Exception Flows
- **E1: Dữ liệu không hợp lệ**
  - 6a. Hệ thống hiển thị lỗi validation
  - 6b. Quay lại bước 4
- **E2: Người dùng không tồn tại**
  - 7a. Hệ thống hiển thị thông báo "Người dùng không tồn tại"
  - 7b. Đóng modal, quay lại bước 1
- **E3: Lỗi server khi cập nhật**
  - 7a. Hệ thống hiển thị thông báo "Lỗi khi cập nhật. Vui lòng thử lại"
  - 7b. Quay lại bước 3

---

### 3.5. Use Case: Quản lý Người dùng - Xóa người dùng

#### 3.5.1. Main Flow
1. Admin ở trang User Management
2. Admin click nút "Delete" trên một người dùng
3. Hệ thống hiển thị dialog xác nhận "Bạn có chắc chắn muốn xóa người dùng này?"
4. Admin click "Xác nhận"
5. Hệ thống kiểm tra người dùng có đang tham gia cuộc thi chưa hoàn thành không
6. Hệ thống xóa người dùng (soft delete)
7. Hệ thống hiển thị thông báo "Xóa người dùng thành công"
8. Hệ thống cập nhật danh sách
9. **Kết thúc use case**

#### 3.5.2. Exception Flows
- **E1: Admin hủy xóa**
  - 4a. Admin click "Hủy"
  - 4b. Đóng dialog, quay lại bước 1
- **E2: Người dùng có dữ liệu liên quan**
  - 5a. Hệ thống hiển thị thông báo "Không thể xóa người dùng này vì có dữ liệu liên quan (kết quả thi, giải thưởng, etc.)"
  - 5b. Đề xuất khóa tài khoản thay vì xóa
  - 5c. Quay lại bước 1
- **E3: Lỗi server khi xóa**
  - 6a. Hệ thống hiển thị thông báo "Lỗi khi xóa. Vui lòng thử lại"
  - 6b. Quay lại bước 1

---

### 3.6. Use Case: Quản lý Cuộc thi - Tạo cuộc thi mới

#### 3.6.1. Main Flow
1. Admin ở trang Contest Management
2. Admin click nút "Create New Contest"
3. Hệ thống hiển thị modal form với các trường:
   - Contest Name (required)
   - Start Date, End Date (required)
   - Description
   - Number of Questions (required)
   - Time per Question (required)
   - Subject, Topic (required)
   - Allowed Schools (checkbox list)
   - Prizes (dynamic list)
4. Admin điền thông tin vào form
5. Admin thêm các giải thưởng (nếu có)
6. Admin click nút "Create Contest"
7. Hệ thống validate dữ liệu:
   - End date phải sau Start date
   - Số câu hỏi > 0
   - Time per question > 0
8. Hệ thống tạo cuộc thi với status "Upcoming"
9. Hệ thống hiển thị thông báo "Tạo cuộc thi thành công"
10. Hệ thống cập nhật danh sách cuộc thi
11. **Kết thúc use case**

#### 3.6.2. Exception Flows
- **E1: Dữ liệu không hợp lệ**
  - 7a. Hệ thống hiển thị lỗi validation cho từng trường
  - 7b. Quay lại bước 4
- **E2: End date trước Start date**
  - 7a. Hệ thống hiển thị thông báo "Ngày kết thúc phải sau ngày bắt đầu"
  - 7b. Highlight trường End Date
  - 7c. Quay lại bước 4
- **E3: Tên cuộc thi trùng lặp**
  - 8a. Hệ thống hiển thị thông báo "Tên cuộc thi đã tồn tại"
  - 8b. Quay lại bước 4
- **E4: Lỗi server khi tạo**
  - 8a. Hệ thống hiển thị thông báo "Lỗi khi tạo cuộc thi. Vui lòng thử lại"
  - 8b. Quay lại bước 3

---

### 3.7. Use Case: Quản lý Cuộc thi - Quản lý câu hỏi

#### 3.7.1. Main Flow
1. Admin ở trang Contest Management
2. Admin click nút "View" hoặc "Edit" trên một cuộc thi
3. Hệ thống hiển thị modal chi tiết cuộc thi
4. Admin click tab "Questions" hoặc nút "Manage Questions"
5. Hệ thống hiển thị danh sách câu hỏi của cuộc thi
6. Admin có thể:
   - Thêm câu hỏi mới
   - Chỉnh sửa câu hỏi
   - Xóa câu hỏi
   - Sắp xếp lại thứ tự
7. Admin click "Thêm câu hỏi"
8. Hệ thống hiển thị form với các trường:
   - Question Type (text/image/video/audio)
   - Question Text
   - Media File (nếu có)
   - Options (A, B, C, D)
   - Correct Answer
   - Points
9. Admin điền thông tin và upload media (nếu có)
10. Admin click "Lưu"
11. Hệ thống validate và lưu câu hỏi
12. Hệ thống cập nhật danh sách câu hỏi
13. **Kết thúc use case**

#### 3.7.2. Exception Flows
- **E1: File media quá lớn**
  - 9a. Hệ thống hiển thị thông báo "File quá lớn. Kích thước tối đa: 10MB"
  - 9b. Quay lại bước 8
- **E2: Định dạng file không hợp lệ**
  - 9a. Hệ thống hiển thị thông báo "Định dạng file không được hỗ trợ"
  - 9b. Quay lại bước 8
- **E3: Thiếu đáp án đúng**
  - 11a. Hệ thống hiển thị thông báo "Vui lòng chọn đáp án đúng"
  - 11b. Quay lại bước 8
- **E4: Số câu hỏi vượt quá giới hạn**
  - 11a. Hệ thống hiển thị thông báo "Số câu hỏi đã đạt giới hạn"
  - 11b. Quay lại bước 5
- **E5: Cuộc thi đã bắt đầu**
  - 6a. Hệ thống hiển thị thông báo "Không thể chỉnh sửa câu hỏi khi cuộc thi đã bắt đầu"
  - 6b. Chỉ cho phép xem, không cho chỉnh sửa
  - 6c. Quay lại bước 5

---

### 3.8. Use Case: Quản lý Cuộc thi - Chỉnh sửa cuộc thi

#### 3.8.1. Main Flow
1. Admin ở trang Contest Management
2. Admin click nút "Edit" trên một cuộc thi
3. Hệ thống hiển thị modal form với thông tin hiện tại
4. Admin chỉnh sửa thông tin cần thiết
5. Admin click "Save Changes"
6. Hệ thống validate dữ liệu
7. Hệ thống kiểm tra cuộc thi có đang diễn ra không
8. Hệ thống cập nhật thông tin cuộc thi
9. Hệ thống hiển thị thông báo "Cập nhật thành công"
10. Hệ thống cập nhật danh sách
11. **Kết thúc use case**

#### 3.8.2. Exception Flows
- **E1: Cuộc thi đang diễn ra**
  - 7a. Hệ thống hiển thị cảnh báo "Cuộc thi đang diễn ra. Một số thông tin không thể thay đổi"
  - 7b. Disable các trường không thể chỉnh sửa (start date, end date, số câu hỏi)
  - 7c. Cho phép chỉnh sửa các trường khác
  - 7d. Quay lại bước 4
- **E2: Cuộc thi đã kết thúc**
  - 7a. Hệ thống hiển thị thông báo "Cuộc thi đã kết thúc. Không thể chỉnh sửa"
  - 7b. Đóng modal, quay lại bước 1
- **E3: Dữ liệu không hợp lệ**
  - 6a. Hệ thống hiển thị lỗi validation
  - 6b. Quay lại bước 4

---

### 3.9. Use Case: Quản lý Kết quả - Xem và Export kết quả

#### 3.9.1. Main Flow
1. Admin ở trang Results Management
2. Hệ thống hiển thị danh sách kết quả với filter theo cuộc thi
3. Admin chọn cuộc thi từ dropdown filter
4. Hệ thống hiển thị kết quả của cuộc thi đó
5. Admin có thể tìm kiếm theo tên người dùng
6. Admin click nút "Export Report"
7. Hệ thống hiển thị dialog chọn format (Excel, PDF)
8. Admin chọn format và click "Export"
9. Hệ thống tạo file và download
10. **Kết thúc use case**

#### 3.9.2. Exception Flows
- **E1: Không có kết quả**
  - 4a. Hệ thống hiển thị message "Chưa có kết quả nào cho cuộc thi này"
  - 4b. Kết thúc use case
- **E2: Lỗi khi export**
  - 9a. Hệ thống hiển thị thông báo "Lỗi khi tạo file. Vui lòng thử lại"
  - 9b. Quay lại bước 6
- **E3: Dữ liệu quá lớn**
  - 9a. Hệ thống hiển thị thông báo "Dữ liệu quá lớn. Vui lòng chọn phạm vi nhỏ hơn"
  - 9b. Quay lại bước 3

---

### 3.10. Use Case: Quản lý Giải thưởng - Trao giải thưởng

#### 3.10.1. Main Flow
1. Admin ở trang Prize Management
2. Hệ thống hiển thị danh sách giải thưởng theo cuộc thi
3. Admin chọn cuộc thi đã kết thúc
4. Hệ thống hiển thị danh sách top players và giải thưởng tương ứng
5. Admin xem chi tiết từng giải thưởng bằng nút "View Play"
6. Admin xác nhận và click "Accept" cho giải thưởng
7. Hệ thống hiển thị dialog xác nhận
8. Admin click "Xác nhận"
9. Hệ thống cập nhật trạng thái giải thưởng thành "Awarded"
10. Hệ thống gửi thông báo cho người thắng giải
11. Hệ thống hiển thị thông báo "Trao giải thành công"
12. **Kết thúc use case**

#### 3.10.2. Exception Flows
- **E1: Cuộc thi chưa kết thúc**
  - 3a. Hệ thống hiển thị thông báo "Cuộc thi chưa kết thúc. Chưa thể trao giải"
  - 3b. Quay lại bước 2
- **E2: Đã trao giải rồi**
  - 9a. Hệ thống hiển thị thông báo "Giải thưởng này đã được trao"
  - 9b. Quay lại bước 4
- **E3: Không có người thắng giải**
  - 4a. Hệ thống hiển thị message "Chưa có người thắng giải cho hạng này"
  - 4b. Kết thúc use case
- **E4: Lỗi khi gửi thông báo**
  - 10a. Hệ thống vẫn cập nhật trạng thái giải thưởng
  - 10b. Hiển thị cảnh báo "Giải thưởng đã được trao nhưng không thể gửi thông báo"
  - 10c. Kết thúc use case

---

### 3.11. Use Case: Quản lý Giải thưởng - Chỉnh sửa giải thưởng

#### 3.11.1. Main Flow
1. Admin ở trang Prize Management
2. Admin click nút "Edit" trên một giải thưởng
3. Hệ thống hiển thị modal form với thông tin hiện tại
4. Admin chỉnh sửa thông tin (Rank, Prize Value, Description, Note, Status)
5. Admin click "Save Changes"
6. Hệ thống validate dữ liệu
7. Hệ thống cập nhật giải thưởng
8. Hệ thống hiển thị thông báo "Cập nhật thành công"
9. **Kết thúc use case**

#### 3.11.2. Exception Flows
- **E1: Giải thưởng đã được trao**
  - 7a. Hệ thống hiển thị cảnh báo "Giải thưởng đã được trao. Một số thông tin không thể thay đổi"
  - 7b. Disable các trường không thể chỉnh sửa (Recipient, Rank)
  - 7c. Quay lại bước 4
- **E2: Dữ liệu không hợp lệ**
  - 6a. Hệ thống hiển thị lỗi validation
  - 6b. Quay lại bước 4

---

### 3.12. Use Case: Quản lý Gói lượt chơi - Tạo gói mới

#### 3.12.1. Main Flow
1. Admin ở trang Game Package Management
2. Admin click nút "Add New Package"
3. Hệ thống hiển thị modal form với các trường:
   - Package Name (required)
   - Turns Count (required)
   - Price (required)
   - Discount Percentage
   - Is Recommended (checkbox)
4. Admin điền thông tin
5. Admin click "Create Package"
6. Hệ thống validate dữ liệu:
   - Turns Count > 0
   - Price > 0
   - Discount >= 0 và <= 100
7. Hệ thống tạo gói mới
8. Hệ thống hiển thị thông báo "Tạo gói thành công"
9. Hệ thống cập nhật danh sách
10. **Kết thúc use case**

#### 3.12.2. Exception Flows
- **E1: Dữ liệu không hợp lệ**
  - 6a. Hệ thống hiển thị lỗi validation
  - 6b. Quay lại bước 4
- **E2: Tên gói trùng lặp**
  - 7a. Hệ thống hiển thị thông báo "Tên gói đã tồn tại"
  - 7b. Quay lại bước 4
- **E3: Discount không hợp lệ**
  - 6a. Hệ thống hiển thị thông báo "Phần trăm giảm giá phải từ 0-100%"
  - 6b. Highlight trường Discount
  - 6c. Quay lại bước 4

---

### 3.13. Use Case: Quản lý Gói lượt chơi - Chỉnh sửa gói

#### 3.13.1. Main Flow
1. Admin ở trang Game Package Management
2. Admin click nút "Edit" trên một gói
3. Hệ thống hiển thị modal form với thông tin hiện tại
4. Admin chỉnh sửa thông tin
5. Admin click "Save Changes"
6. Hệ thống validate dữ liệu
7. Hệ thống cập nhật gói
8. Hệ thống hiển thị thông báo "Cập nhật thành công"
9. **Kết thúc use case**

#### 3.13.2. Exception Flows
- **E1: Gói đang được sử dụng**
  - 7a. Hệ thống hiển thị cảnh báo "Gói này đang được sử dụng. Một số thông tin không thể thay đổi"
  - 7b. Disable trường Turns Count
  - 7c. Quay lại bước 4
- **E2: Dữ liệu không hợp lệ**
  - 6a. Hệ thống hiển thị lỗi validation
  - 6b. Quay lại bước 4

---

### 3.14. Use Case: Xem Dashboard và Thống kê

#### 3.14.1. Main Flow
1. Admin đăng nhập thành công
2. Hệ thống tự động hiển thị Dashboard
3. Hệ thống load và hiển thị các thống kê:
   - Tổng số người dùng
   - Tổng số cuộc thi
   - Tổng số lượt thi
   - Doanh thu tháng
4. Hệ thống hiển thị biểu đồ và charts
5. Hệ thống hiển thị Recent Activity
6. Admin có thể refresh để cập nhật dữ liệu
7. **Kết thúc use case**

#### 3.14.2. Exception Flows
- **E1: Lỗi load dữ liệu**
  - 3a. Hệ thống hiển thị thông báo "Lỗi khi tải dữ liệu"
  - 3b. Hiển thị nút "Retry"
  - 3c. Admin click Retry, quay lại bước 3
- **E2: Không có dữ liệu**
  - 3a. Hệ thống hiển thị "0" cho các thống kê
  - 3b. Hiển thị message "Chưa có dữ liệu"
  - 3c. Kết thúc use case

---

## 4. PHÂN TÍCH HIỆN TRẠNG

### 3.1. Cấu trúc dự án hiện tại
Dự án hiện tại bao gồm các file HTML mockup cho các trang chính:

#### 3.1.1. Trang người dùng (Student)
- **home.html**: Trang chủ với nút Play Now, thông tin người dùng, thông báo
- **instructions.html**: Trang hướng dẫn trước khi bắt đầu thi
- **exam.html**: Trang thi với timer, câu hỏi đa dạng (text, image, video, audio)
- **result.html**: Trang hiển thị kết quả sau khi hoàn thành
- **leaderboard.html**: Bảng xếp hạng với top 3 và danh sách người chơi
- **contests.html**: Danh sách các sự kiện/cuộc thi (đang diễn ra, sắp tới, đã kết thúc)
- **store.html**: Cửa hàng mua lượt chơi (turns) với các gói khác nhau
- **history.html**: Lịch sử các lần chơi của người dùng

#### 3.1.2. Trang quản trị (Admin)
- **admin.html**: Dashboard quản trị với các chức năng:
  - Dashboard: Thống kê tổng quan
  - Users: Quản lý người dùng
  - Contests: Quản lý cuộc thi
  - Results: Quản lý kết quả
  - Prizes: Quản lý giải thưởng
  - Game Packages: Quản lý gói lượt chơi

### 3.2. Tính năng đã được thiết kế

#### 3.2.1. Hệ thống thi
- Timer đếm ngược (45 phút)
- 50 câu hỏi trắc nghiệm
- Hỗ trợ nhiều loại câu hỏi: text, hình ảnh, video, audio
- Điều hướng giữa các câu hỏi (Previous/Next)
- Danh sách câu hỏi để chuyển nhanh
- Nút Submit để nộp bài

#### 3.2.2. Hệ thống điểm và xếp hạng
- Điểm số: 2 điểm/câu (tối đa 100 điểm)
- Xếp hạng dựa trên điểm số cao nhất, sau đó là thời gian nhanh nhất
- Bảng xếp hạng hiển thị top 3 và danh sách đầy đủ

#### 3.2.3. Hệ thống giải thưởng
- Top 1: 50,000 MMK
- Top 2: 30,000 MMK
- Top 3: 20,000 MMK
- Top 4-10: 5,000 MMK mỗi người

#### 3.2.4. Hệ thống lượt chơi (Turns)
- Người dùng cần lượt chơi để tham gia
- Có thể mua các gói: 1 turn (100 MMK), 3 turns (270 MMK), 5 turns (400 MMK - Recommended), 10 turns (700 MMK)
- Lượt chơi không có thời hạn

#### 3.2.5. Quản lý sự kiện
- Các cuộc thi có thời gian bắt đầu và kết thúc
- Trạng thái: Upcoming, Ongoing, Ended
- Hiển thị thông tin giải thưởng cho từng cuộc thi

---

## 4. ĐỀ XUẤT PHÁT TRIỂN

### 4.1. Kiến trúc hệ thống

#### 4.1.1. Frontend
- **Framework**: React.js hoặc Vue.js
- **UI Framework**: Material-UI hoặc Ant Design
- **State Management**: Redux hoặc Vuex
- **Routing**: React Router hoặc Vue Router
- **Responsive Design**: Mobile-first (375px width như mockup)

#### 4.1.2. Backend
- **Framework**: Node.js (Express) hoặc Python (Django/FastAPI)
- **Database**: 
  - PostgreSQL cho dữ liệu chính
  - Redis cho cache và session
- **Authentication**: JWT (JSON Web Tokens)
- **File Storage**: AWS S3 hoặc Cloudinary cho media (images, videos, audio)

#### 4.1.3. Infrastructure
- **Hosting**: AWS, Google Cloud, hoặc Azure
- **CDN**: CloudFront hoặc Cloudflare cho static assets
- **Monitoring**: Sentry cho error tracking
- **Analytics**: Google Analytics hoặc Mixpanel

### 4.2. Cơ sở dữ liệu

#### 4.2.1. Các bảng chính

**Users (Người dùng)**
- id, email, password_hash, name, school, class, avatar_url
- total_plays, highest_score, best_rank
- turns_balance, created_at, updated_at

**Contests (Cuộc thi)**
- id, name, description
- start_date, end_date, status (upcoming/ongoing/ended)
- total_questions, time_limit (minutes)
- prize_structure (JSON)

**Questions (Câu hỏi)**
- id, contest_id, question_text
- question_type (text/image/video/audio)
- media_url, correct_answer
- options (JSON array)
- points, order

**Attempts (Lần thi)**
- id, user_id, contest_id
- start_time, end_time, duration
- score, correct_count, total_questions
- rank, status (in_progress/completed)

**Answers (Câu trả lời)**
- id, attempt_id, question_id
- selected_answer, is_correct
- answered_at

**Turns (Lượt chơi)**
- id, user_id, package_id
- turns_count, purchase_date, price

**Packages (Gói lượt chơi)**
- id, name, turns_count, price
- discount_percentage, is_recommended

**Notifications (Thông báo)**
- id, user_id, title, content
- type (prize/event/info), is_read
- created_at

**Prizes (Giải thưởng)**
- id, contest_id, rank, amount
- winner_user_id, awarded_at

### 4.3. API Endpoints

#### 4.3.1. Authentication
- `POST /api/auth/register` - Đăng ký
- `POST /api/auth/login` - Đăng nhập
- `POST /api/auth/logout` - Đăng xuất
- `GET /api/auth/me` - Lấy thông tin người dùng hiện tại

#### 4.3.2. Contests
- `GET /api/contests` - Danh sách cuộc thi
- `GET /api/contests/:id` - Chi tiết cuộc thi
- `GET /api/contests/:id/questions` - Câu hỏi của cuộc thi

#### 4.3.3. Attempts
- `POST /api/attempts` - Bắt đầu một lần thi
- `GET /api/attempts/:id` - Lấy thông tin lần thi
- `POST /api/attempts/:id/answers` - Lưu câu trả lời
- `POST /api/attempts/:id/submit` - Nộp bài

#### 4.3.4. Leaderboard
- `GET /api/leaderboard/:contest_id` - Bảng xếp hạng của cuộc thi

#### 4.3.5. Store
- `GET /api/packages` - Danh sách gói lượt chơi
- `POST /api/packages/:id/purchase` - Mua gói lượt chơi

#### 4.3.6. History
- `GET /api/users/:id/history` - Lịch sử chơi của người dùng

#### 4.3.7. Admin
- `GET /api/admin/dashboard` - Thống kê tổng quan
- `GET /api/admin/users` - Danh sách người dùng
- `POST /api/admin/contests` - Tạo cuộc thi mới
- `GET /api/admin/results/:contest_id` - Kết quả cuộc thi
- `POST /api/admin/prizes/award` - Trao giải thưởng

### 4.4. Tính năng cần phát triển

#### 4.4.1. Phase 1: Core Features (4-6 tuần)
1. **Authentication & User Management**
   - Đăng ký/Đăng nhập
   - Quản lý profile
   - JWT authentication

2. **Contest Management**
   - Tạo và quản lý cuộc thi
   - CRUD câu hỏi (text, image, video, audio)
   - Upload và lưu trữ media files

3. **Exam System**
   - Bắt đầu lần thi
   - Hiển thị câu hỏi với timer
   - Lưu câu trả lời real-time
   - Submit và tính điểm

4. **Leaderboard**
   - Tính toán và hiển thị xếp hạng
   - Real-time updates

#### 4.4.2. Phase 2: Additional Features (3-4 tuần)
1. **Store System**
   - Quản lý gói lượt chơi
   - Tích hợp thanh toán (Stripe, PayPal, hoặc payment gateway địa phương)
   - Quản lý số dư lượt chơi

2. **History & Analytics**
   - Lịch sử chơi chi tiết
   - Thống kê cá nhân
   - Dashboard admin với analytics

3. **Notifications**
   - Hệ thống thông báo real-time
   - Email notifications
   - Push notifications (nếu có mobile app)

#### 4.4.3. Phase 3: Advanced Features (2-3 tuần)
1. **Prize Management**
   - Tự động trao giải thưởng
   - Quản lý thanh toán giải thưởng

2. **Security & Performance**
   - Rate limiting
   - Anti-cheat mechanisms
   - Caching strategies
   - Database optimization

3. **Testing & Deployment**
   - Unit tests
   - Integration tests
   - E2E tests
   - CI/CD pipeline

---

## 5. CÔNG NGHỆ VÀ CÔNG CỤ

### 5.1. Frontend Stack
- **React.js 18+** hoặc **Vue.js 3+**
- **TypeScript** cho type safety
- **Tailwind CSS** hoặc **Styled Components** cho styling
- **Axios** cho API calls
- **React Query** hoặc **SWR** cho data fetching
- **Zustand** hoặc **Jotai** cho state management (lightweight)

### 5.2. Backend Stack
- **Node.js + Express** hoặc **Python + FastAPI**
- **TypeScript** hoặc **Python** với type hints
- **Prisma** hoặc **SQLAlchemy** cho ORM
- **JWT** cho authentication
- **Bcrypt** cho password hashing
- **Multer** hoặc **Cloudinary** cho file uploads

### 5.3. Database
- **PostgreSQL 14+** cho production
- **Redis** cho caching và sessions
- **MongoDB** (optional) cho logs và analytics

### 5.4. DevOps
- **Docker** cho containerization
- **Docker Compose** cho local development
- **GitHub Actions** hoặc **GitLab CI** cho CI/CD
- **Nginx** cho reverse proxy
- **PM2** hoặc **Supervisor** cho process management

### 5.5. Monitoring & Analytics
- **Sentry** cho error tracking
- **LogRocket** cho session replay
- **Google Analytics** hoặc **Mixpanel** cho user analytics
- **Prometheus + Grafana** cho system monitoring

---

## 6. THIẾT KẾ UI/UX

### 6.1. Design Principles
- **Mobile-first**: Ưu tiên thiết kế cho mobile (375px như mockup)
- **Gamification**: Sử dụng màu sắc và animations để tạo cảm giác game
- **Accessibility**: Tuân thủ WCAG 2.1 Level AA
- **Performance**: Tối ưu loading time và smooth animations

### 6.2. Color Scheme
- Primary: #007aff (Blue)
- Success: #34c759 (Green)
- Warning: #ff9500 (Orange)
- Error: #ff3b30 (Red)
- Gradient: #667eea → #764ba2 (Purple)

### 6.3. Components Library
- Button components với variants
- Modal/Dialog components
- Form components
- Card components
- Progress bars và timers
- Avatar components

---

## 7. BẢO MẬT

### 7.1. Authentication & Authorization
- JWT tokens với refresh tokens
- Role-based access control (Student, Admin)
- Password hashing với bcrypt (salt rounds: 10+)

### 7.2. Data Protection
- HTTPS cho tất cả communications
- Input validation và sanitization
- SQL injection prevention (sử dụng ORM)
- XSS protection

### 7.3. Anti-Cheat Measures
- Server-side validation cho tất cả answers
- Rate limiting cho API calls
- Session management chặt chẽ
- Timer validation (không cho phép thao tác client-side)

### 7.4. Privacy
- GDPR compliance (nếu cần)
- Data encryption at rest
- Secure file uploads

---

## 8. TESTING STRATEGY

### 8.1. Unit Tests
- Test các utility functions
- Test API endpoints
- Test business logic

### 8.2. Integration Tests
- Test API flows
- Test database operations
- Test authentication flows

### 8.3. E2E Tests
- Test user journeys với Cypress hoặc Playwright
- Test exam flow từ đầu đến cuối
- Test admin operations

### 8.4. Performance Tests
- Load testing với k6 hoặc Artillery
- Stress testing
- Database query optimization

---

## 9. DEPLOYMENT PLAN

### 9.1. Development Environment
- Local development với Docker Compose
- Hot reload cho frontend và backend
- Database migrations

### 9.2. Staging Environment
- Mirror của production
- Testing trước khi deploy
- Preview URLs cho stakeholders

### 9.3. Production Environment
- Blue-green deployment
- Database backups tự động
- Monitoring và alerting
- Rollback plan

---

## 10. TIMELINE VÀ MILESTONES

### 10.1. Phase 1: Core Development (6 tuần)
- **Week 1-2**: Setup project, database design, authentication
- **Week 3-4**: Contest management, question CRUD
- **Week 5-6**: Exam system, leaderboard

### 10.2. Phase 2: Additional Features (4 tuần)
- **Week 7-8**: Store system, payment integration
- **Week 9-10**: History, analytics, notifications

### 10.3. Phase 3: Polish & Deploy (3 tuần)
- **Week 11**: Testing, bug fixes
- **Week 12**: Security audit, performance optimization
- **Week 13**: Deployment, documentation

**Tổng thời gian dự kiến: 13 tuần (~3 tháng)**

---

## 11. NGÂN SÁCH VÀ TÀI NGUYÊN

### 11.1. Team Structure
- **1 Full-stack Developer** (Lead)
- **1 Frontend Developer**
- **1 Backend Developer**
- **1 UI/UX Designer** (part-time)
- **1 QA Tester** (part-time)

### 11.2. Infrastructure Costs (ước tính hàng tháng)
- **Cloud Hosting**: $50-100
- **Database**: $30-50
- **CDN & Storage**: $20-40
- **Domain & SSL**: $10-20
- **Monitoring Tools**: $20-50

**Tổng: ~$130-260/tháng**

### 11.3. Third-party Services
- Payment gateway fees (theo transaction)
- Email service (SendGrid, Mailgun): $10-20/tháng
- Analytics tools: Free tier hoặc $20-50/tháng

---

## 12. RISKS VÀ MITIGATION

### 12.1. Technical Risks
- **Risk**: Performance issues với nhiều users đồng thời
- **Mitigation**: Load testing sớm, caching strategies, database optimization

### 12.2. Security Risks
- **Risk**: Cheating trong exam
- **Mitigation**: Server-side validation, anti-cheat measures, session management

### 12.3. Business Risks
- **Risk**: Low user adoption
- **Mitigation**: Marketing strategy, gamification elements, attractive prizes

---

## 13. SUCCESS METRICS

### 13.1. Technical Metrics
- Page load time < 2 seconds
- API response time < 200ms
- Uptime > 99.5%
- Zero critical security vulnerabilities

### 13.2. Business Metrics
- User registration rate
- Active users per week
- Contest participation rate
- Store conversion rate
- User retention rate

---

## 14. KẾT LUẬN

Dự án **GameEDU** là một hệ thống game giáo dục tiếng Anh đầy tiềm năng, kết hợp giữa học tập và giải trí. Với kiến trúc hiện đại, bảo mật cao và trải nghiệm người dùng tốt, hệ thống sẽ tạo động lực cho học sinh cải thiện kỹ năng tiếng Anh thông qua các thử thách cạnh tranh.

Việc phát triển theo từng phase sẽ giúp:
- Đưa sản phẩm ra thị trường nhanh hơn (MVP)
- Nhận feedback sớm từ users
- Điều chỉnh và cải thiện dựa trên thực tế sử dụng
- Quản lý rủi ro tốt hơn

Với timeline 13 tuần và team phù hợp, dự án có thể được hoàn thành và đưa vào production thành công.

---

## 15. TÀI LIỆU THAM KHẢO

- Mockup files: home.html, exam.html, admin.html, etc.
- Use case diagram: usecase_diagram.drawio
- SRS Document: SRS Game English (2) (Repaired).docx

---

**Ngày tạo**: [Ngày hiện tại]  
**Phiên bản**: 1.0  
**Tác giả**: Development Team

