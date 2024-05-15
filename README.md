Họ và tên : Nguyễn Duy Cao

MSSV : k205480106005
Hệ thống cảm biến nhiệt độ (Có thể thay đổi cảm biến hoặc kết hợp thêm )

1.Có sử dụng mạch  Arduino và 1 con cảm biến nhiệt độ 

        Cần mạch Arduino (NANO,UNO) , 1 con cảm biến  Nhiệt Độ và Độ Ẩm DHT11
        
2.Liên kết dữ liệu nhận được từ cảm biến vào con API viết bằng Python sau đó đẩy nó lên NOdeRed qua HTTP Request

     Sử dụng FastApi để viết Api
     
3. NodeRed lưu dữ liệu vào Database SQLSEVER
       
4. Hiển thị dữ liệu lên trên trang web dưới dạng biểu đồ và có cảnh báo nếu có nhiệt độ vượt quá ngưỡng cho phép 
