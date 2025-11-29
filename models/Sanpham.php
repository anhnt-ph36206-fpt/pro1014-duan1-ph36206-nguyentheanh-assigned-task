<?php
class SanPham
{
    public $conn; // tên biến phải đúng (không có dấu $ ở đây)

    // SỬA CHÍNH TẢ + CÚ PHÁP: phải là __construct (có 2 gạch dưới + chữ s)
    public function __construct()
    {
        $this->conn = connectDB(); // đúng cú pháp: $this->conn (không có $ trước conn)
    }

    // Viết hàm lấy toàn bộ sản phẩm
    public function getAllProduct()
    {
        try {
            $sql = 'SELECT * FROM san_phams';

            $stmt = $this->conn->prepare($sql); // đúng: $this->conn
            $stmt->execute();

            return $stmt->fetchAll(PDO::FETCH_ASSOC); // thêm PDO::FETCH_ASSOC cho đẹp
        } catch (Exception $e) {
            echo "Lỗi kết nối CSDL: " . $e->getMessage();
            return []; // trả về mảng rỗng nếu lỗi
        }
    }
}