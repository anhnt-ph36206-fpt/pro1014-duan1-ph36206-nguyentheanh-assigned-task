<?php
class TaiKhoan
{
    public $conn;
    public function __construct()
    {
        $this->conn = connectDB();
    }

    public function checkLogin($email, $mat_khau)
    {
        try {
            $sql  = 'SELECT * FROM tai_khoans WHERE email = :email';
            $stmt = $this->conn->prepare($sql);
            $stmt->execute([':email' => $email]);
            $user = $stmt->fetch();

            if ($user && password_verify($mat_khau, $user['mat_khau'])) {
                if ($user['chuc_vu_id'] == 2) { // Chỉ cho phép đăng nhập cho khách hàng
                    if ($user['trang_thai'] == 1) {
                        return $user['email']; //   Trường hợp đăng nhập thành công
                    } else {
                        return 'Tài khoản bị cấm';
                    }
                } else {
                    return 'Tài khoản không có quyền đăng nhập';
                }
            } else {
                return 'Bạn đã nhập sai thông tin mật khẩu hoặc tài khoản';
            }
        } catch (\Exception $e) {
            echo "Lỗi kết nối: " . $e->getMessage();
            return false;
        }
    }

    // public function getAllTaiKhoan($chuc_vu_id)
    // {
    //     try {
    //         $sql = 'SELECT * FROM tai_khoans WHERE chuc_vu_id = :chuc_vu_id';

    //                                             // LỖI 2: Lại viết $this->$conn → phải là $this->conn
    //         $stmt = $this->conn->prepare($sql); // ĐÚNG

    //         $stmt->execute([':chuc_vu_id' => $chuc_vu_id]);
    //         return $stmt->fetchAll();
    //     } catch (Exception $e) {
    //         echo "Lỗi kết nối: " . $e->getMessage();
    //     }
    // }

    // public function insertTaiKhoan($ho_ten, $email, $password, $chuc_vu_id)
    // {
    //     try {
    //         $sql = 'INSERT INTO tai_khoans (ho_ten,email,mat_khau,chuc_vu_id)
    //          VALUES (:ho_ten,:email,:password,:chuc_vu_id)';

    //                                             // LỖI 2: Lại viết $this->$conn → phải là $this->conn
    //         $stmt = $this->conn->prepare($sql); // ĐÚNG

    //         $stmt->execute([
    //             ':ho_ten'     => $ho_ten,
    //             ':email'      => $email,
    //             ':password'   => $password,
    //             ':chuc_vu_id' => $chuc_vu_id,
    //         ]);
    //         return true;
    //     } catch (Exception $e) {
    //         echo "Lỗi kết nối: " . $e->getMessage();
    //     }
    // }

}
