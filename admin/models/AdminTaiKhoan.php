<?php 


class AdminTaiKhoan{
    public $coon;
        public function __construct()
    {
        // LỖI 1: Sai cú pháp → $this->$conn → phải là $this->conn
        $this->conn = connectDB(); // ĐÚNG
    }

    public function getAllTaiKhoan($chuc_vu_id)
    {
        try {
            $sql = 'SELECT * FROM tai_khoans WHERE chuc_vu_id = :chuc_vu_id';

            // LỖI 2: Lại viết $this->$conn → phải là $this->conn
            $stmt = $this->conn->prepare($sql); // ĐÚNG

            $stmt->execute([':chuc_vu_id'=>$chuc_vu_id]);
            return $stmt->fetchAll();
        } catch (Exception $e) {
            echo "Lỗi kết nối: " . $e->getMessage();
        }
    }

    public function insertTaiKhoan($ho_ten,$email,$password,$chuc_vu_id)
    {
        try {
            $sql = 'INSERT INTO tai_khoans (ho_ten,email,mat_khau,chuc_vu_id)
             VALUES (:ho_ten,:email,:password,:chuc_vu_id)';

            // LỖI 2: Lại viết $this->$conn → phải là $this->conn
            $stmt = $this->conn->prepare($sql); // ĐÚNG

            $stmt->execute([
                ':ho_ten' => $ho_ten,
                ':email' => $email,
                ':password' => $password,
                ':chuc_vu_id' => $chuc_vu_id,
            ]);
            return true;
        } catch (Exception $e) {
            echo "Lỗi kết nối: " . $e->getMessage();
        }
    }


}