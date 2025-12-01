<?php

class AdminSanPham
{
    public $conn;

    public function __construct()
    {
        $this->conn = connectDB(); // ĐÚNG
    }

    public function getAllSanPham()
    {
        try {
            // $sql = 'SELECT * FROM san_phams';
            $sql = 'SELECT san_phams.*, danh_mucs.ten_danh_muc
                    FROM san_phams
                    JOIN danh_mucs ON san_phams.danh_muc_id = danh_mucs.id';

            $stmt = $this->conn->prepare($sql);

            $stmt->execute();

            return $stmt->fetchAll();
        } catch (Exception $e) {
            echo "Lỗi kết nối: " . $e->getMessage();
        }
    }

    // Thêm các hàm khác sau này: insert, update, delete...
    public function insertSanPham($ten_san_pham, $gia_san_pham, $gia_khuyen_mai, $so_luong, $ngay_nhap, $danh_muc_id, $trang_thai, $mo_ta, $hinh_anh,) {
        try {
            $sql = 'INSERT INTO san_phams (ten_san_pham, gia_san_pham, gia_khuyen_mai, so_luong, ngay_nhap, danh_muc_id, trang_thai, mo_ta, hinh_anh )
                    VALUES (:ten_san_pham, :gia_san_pham, :gia_khuyen_mai, :so_luong, :ngay_nhap, :danh_muc_id, :trang_thai, :mo_ta, :hinh_anh 
                    )';

            $stmt = $this->conn->prepare($sql);

            $stmt->execute([
                ':ten_san_pham'   => $ten_san_pham,
                ':gia_san_pham'   => $gia_san_pham,
                ':gia_khuyen_mai' => $gia_khuyen_mai,
                ':so_luong'       => $so_luong,
                ':ngay_nhap'      => $ngay_nhap,
                ':danh_muc_id'    => $danh_muc_id,
                ':trang_thai'     => $trang_thai,
                ':mo_ta'          => $mo_ta,
                ':hinh_anh'       => $hinh_anh
            ]);
            return true;
        } catch (Exception $e) {
            echo "Lỗi kết nối: " . $e->getMessage();
        }
    }

    // public function getDetailDanhMuc($id)
    // {
    //     try {
    //         $sql = 'SELECT * FROM danh_mucs WHERE id = :id';

    //         $stmt = $this->conn->prepare($sql); // ĐÚNG

    //         $stmt->execute([
    //             ':id' => $id
    //         ]);
    //         return $stmt->fetch();
    //     } catch (Exception $e) {
    //         echo "Lỗi kết nối: " . $e->getMessage();
    //     }
    // }

    // public function updateDanhMuc($id, $ten_danh_muc, $mo_ta)
    // {
    //     try {
    //         $sql = 'UPDATE danh_mucs SET ten_danh_muc = :ten_danh_muc, mo_ta = :mo_ta WHERE id = :id';

    //         $stmt = $this->conn->prepare($sql); // ĐÚNG

    //         $stmt->execute([
    //             ':ten_danh_muc' => $ten_danh_muc,
    //             ':mo_ta' => $mo_ta,
    //             ':id' => $id
    //         ]);
    //         return true;
    //     } catch (Exception $e) {
    //         echo "Lỗi kết nối: " . $e->getMessage();
    //     }
    // }

    // public function destroyDanhMuc($id)
    // {
    //     try {
    //         $sql = 'DELETE FROM danh_mucs WHERE id = :id';

    //         $stmt = $this->conn->prepare($sql); // ĐÚNG

    //         $stmt->execute([
    //             ':id' => $id
    //         ]);
    //         return true;
    //     } catch (Exception $e) {
    //         echo "Lỗi kết nối: " . $e->getMessage();
    //     }
    // }
}
