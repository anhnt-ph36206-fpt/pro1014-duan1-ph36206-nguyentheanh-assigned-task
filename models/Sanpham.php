<?php
class SanPham
{
    public $conn;
    public function __construct()
    {
        $this->conn = connectDB(); // đúng cú pháp: $this->conn (không có $ trước conn)
    }

    // Viết hàm lấy toàn bộ sản phẩm
    public function getAllSanPham()
    {
        try {
            // $sql = 'SELECT san_phams.*, danh_mucs.ten_danh_muc
            //         FROM san_phams
            //         INNER JOIN danh_mucs 
            //         ON san_phams.danh_muc_id = danh_mucs.id
            //         ';

            $sql = 'SELECT san_phams.*, danh_mucs.ten_danh_muc
                    FROM san_phams
                    INNER JOIN danh_mucs 
                    ON san_phams.danh_muc_id = danh_mucs.id
                    ';

            // $sql = 'SELECT * FROM san_phams';
            $stmt = $this->conn->prepare($sql);

            $stmt->execute();

            return $stmt->fetchAll(); // Thêm PDO::FETCH_ASSOC cho đẹp


        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
            // return []; // Trả về mảng rỗng nếu lỗi
        }
    }


    public function getAllSanPhamDienThoai()
    {
        try {
            // $sql = 'SELECT san_phams.*, danh_mucs.ten_danh_muc
            //         FROM san_phams
            //         INNER JOIN danh_mucs 
            //         ON san_phams.danh_muc_id = danh_mucs.id
            //         ';

            $sql = 'SELECT san_phams.*, danh_mucs.ten_danh_muc
                    FROM san_phams
                    INNER JOIN danh_mucs 
                    ON san_phams.danh_muc_id = danh_mucs.id
                    WHERE danh_mucs.ten_danh_muc = :ten_danh_muc';

            // $sql = 'SELECT * FROM san_phams';
            $stmt = $this->conn->prepare($sql);

            $stmt->execute(['ten_danh_muc' => 'Điện thoại']);

            return $stmt->fetchAll(); // Thêm PDO::FETCH_ASSOC cho đẹp


        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
            // return []; // Trả về mảng rỗng nếu lỗi
        }
    }

    public function getAllSanPhamLaptop()
    {
        try {
            // $sql = 'SELECT san_phams.*, danh_mucs.ten_danh_muc
            //         FROM san_phams
            //         INNER JOIN danh_mucs 
            //         ON san_phams.danh_muc_id = danh_mucs.id
            //         ';

            $sql = 'SELECT san_phams.*, danh_mucs.ten_danh_muc
                    FROM san_phams
                    INNER JOIN danh_mucs 
                    ON san_phams.danh_muc_id = danh_mucs.id
                    WHERE danh_mucs.ten_danh_muc = :ten_danh_muc';

            // $sql = 'SELECT * FROM san_phams';
            $stmt = $this->conn->prepare($sql);

            $stmt->execute(['ten_danh_muc' => 'Laptop']);

            return $stmt->fetchAll(); 


        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
            // return []; // Trả về mảng rỗng nếu lỗi
        }
    }

    public function getAllSanPhamTablet()
    {
        try {
            // $sql = 'SELECT san_phams.*, danh_mucs.ten_danh_muc
            //         FROM san_phams
            //         INNER JOIN danh_mucs 
            //         ON san_phams.danh_muc_id = danh_mucs.id
            //         ';

            $sql = 'SELECT san_phams.*, danh_mucs.ten_danh_muc
                    FROM san_phams
                    INNER JOIN danh_mucs 
                    ON san_phams.danh_muc_id = danh_mucs.id
                    WHERE danh_mucs.ten_danh_muc = :ten_danh_muc';

            // $sql = 'SELECT * FROM san_phams';
            $stmt = $this->conn->prepare($sql);

            $stmt->execute(['ten_danh_muc' => 'Tablet']);

            return $stmt->fetchAll(); 


        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
            // return []; // Trả về mảng rỗng nếu lỗi
        }
    }

     public function getAllSanPhamPhuKien()
    {
        try {
            // $sql = 'SELECT san_phams.*, danh_mucs.ten_danh_muc
            //         FROM san_phams
            //         INNER JOIN danh_mucs 
            //         ON san_phams.danh_muc_id = danh_mucs.id
            //         ';

            $sql = 'SELECT san_phams.*, danh_mucs.ten_danh_muc
                    FROM san_phams
                    INNER JOIN danh_mucs 
                    ON san_phams.danh_muc_id = danh_mucs.id
                    WHERE danh_mucs.ten_danh_muc = :ten_danh_muc';

            // $sql = 'SELECT * FROM san_phams';
            $stmt = $this->conn->prepare($sql);

            $stmt->execute(['ten_danh_muc' => 'Phụ Kiện']);

            return $stmt->fetchAll(); 


        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
            // return []; // Trả về mảng rỗng nếu lỗi
        }
    }



    // Viết hàm lấy ảnh sản phẩm
    public function getListAnhSanPham($id){
        try {
            $sql = 'SELECT * FROM hinh_anh_san_phams WHERE san_pham_id = :id';

            $stmt = $this->conn->prepare($sql);

            $stmt->execute([':id' => $id]);

            return $stmt->fetchAll();

        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
            // return []; // Trả về mảng rỗng nếu lỗi
        }
    }

    // Viết hàm lấy chi tiết sản phẩm
    public function getDetailSanPham($id) {
        try {
            $sql = 'SELECT san_phams.*, danh_mucs.ten_danh_muc
                    FROM san_phams
                    INNER JOIN danh_mucs ON san_phams.danh_muc_id = danh_mucs.id
                    WHERE san_phams.id = :id';

            $stmt = $this->conn->prepare($sql);

            $stmt->execute([':id' => $id]);

            return $stmt->fetch();

        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
            // return []; // Trả về mảng rỗng nếu lỗi
        }
    }

    // Viết hàm lấy bình luận từ sản phẩm
    public function getBinhLuanFromSanPham($id)
    {
        try {
            $sql = 'SELECT binh_luans.*, tai_khoans.ho_ten, tai_khoans.anh_dai_dien
                    FROM binh_luans
                    INNER JOIN tai_khoans 
                    ON binh_luans.tai_khoan_id = tai_khoans.id
                    WHERE binh_luans.san_pham_id = :id
                    AND binh_luans.trang_thai = 1
                    ORDER BY binh_luans.id DESC';

            $stmt = $this->conn->prepare($sql);
            $stmt->execute([':id' => $id]);

            return $stmt->fetchAll();

        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
        }
    }


    // Viết hàm lấy sản phẩm cùng danh mục
    public function getListSanPhamDanhMuc($danh_muc_id) {
        try {
              $sql = 'SELECT san_phams.*, danh_mucs.ten_danh_muc
                    FROM san_phams
                    INNER JOIN danh_mucs 
                    ON san_phams.danh_muc_id = danh_mucs.id
                    WHERE san_phams.danh_muc_id = ' . $danh_muc_id;

            $stmt = $this->conn->prepare($sql);

            $stmt->execute();

            return $stmt->fetchAll(); // Thêm PDO::FETCH_ASSOC cho đẹp


        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
            // return []; // Trả về mảng rỗng nếu lỗi
        }
    }
}
