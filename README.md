
Họ và tên : Nguyễn Duy Cao

MSSV : k205480106005

HỆ THỐNG CẢM BIẾN NHIỆT ĐỘ (Có thể thay đổi cảm biến hoặc kết hợp thêm )
												 
Tên Project : Sensor

### 1.Chức năng: 

		- Đẩy dữ liệu từ Arduino lên NodeRed dưới dạng Json (Đây là bước quan trọng )
	
		-	Dữ liệu sẽ được lấy trong khoảng thời gian bao lâu của hệ thống ( NodeRed sẽ làm vấn đề này )
	
		- Lấy dữ liệu NodeRed để vẽ biểu đồ 
	
		- Tạo 1 trang web hiển thị biểu đồ dữ liệu nhận được

### 2.Sơ đồ tổng quát mà hệ thống sẽ hoạt động:
 
![image](https://github.com/mmm44455/Api_cam_bien/assets/132626865/c0e88cd2-bd61-419b-a5d0-a26e3b6ad71c)

### 3.CSDL : 

  Tạo 1 CSDL gồm 1 bảng lưu về : 
	
				nhiệt độ :int
		
				thời gian : datetime
		
				id (khóa chính) : int (tự tăng )
		
				Tình trạng : BIT
		
	Cần tạo 2 Sp là select và insert into để hiển thị biểu đồ và lưu dữ liệu vào Db

### 4.Module đọc dữ liệu :  Python + FastAPI để tao Api nhận dữ liệu từ mạch Arduino và đưa lên NodeRed 

### 5.Nodered: Nhận dữ liệu từ Api sau đó lưu vào Db đã được cấu hình sẵn (sử dụng Sp để nhận và lấy dữ liệu)

### 6.Arduino: code chương trình cho mạch Arduino Nano sử dụng chung với Cảm biến nhiệt độ (cần biết cách đưa dữ liệu Arduino nhận được về Api Python dùng nhận dữ liệu)

### 7.Tạo Web : Sử dụng html,css,js , gg chart để vẽ biểu đồ nhận được dữ liệu trong  đó js sẽ lấy dữ liệu(json) qua ajax tới api.aspx hoặc api.php.





