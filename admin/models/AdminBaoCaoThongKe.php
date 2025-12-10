<?php

class AdminBaoCaoThongKe
{
    public $conn;

    public function __construct()
    {
        $this->conn = connectDB();
    }

    // Tổng quan thống kê
    public function getTongQuan()
    {
        try {
            // Tổng sản phẩm
            $sql = "SELECT COUNT(*) as tong FROM san_phams WHERE trang_thai = 1";
            $stmt = $this->conn->prepare($sql);
            $stmt->execute();
            $tongSanPham = $stmt->fetch()['tong'];

            // Tổng đơn hàng
            $sql = "SELECT COUNT(*) as tong FROM don_hangs";
            $stmt = $this->conn->prepare($sql);
            $stmt->execute();
            $tongDonHang = $stmt->fetch()['tong'];

            // Tổng doanh thu (đơn hàng thành công - trang_thai_id = 9)
            $sql = "SELECT COALESCE(SUM(tong_tien), 0) as tong FROM don_hangs WHERE trang_thai_id = 9";
            $stmt = $this->conn->prepare($sql);
            $stmt->execute();
            $tongDoanhThu = $stmt->fetch()['tong'];

            // Tổng khách hàng
            $sql = "SELECT COUNT(*) as tong FROM tai_khoans WHERE chuc_vu_id = 2";
            $stmt = $this->conn->prepare($sql);
            $stmt->execute();
            $tongKhachHang = $stmt->fetch()['tong'];

            // Tổng danh mục
            $sql = "SELECT COUNT(*) as tong FROM danh_mucs";
            $stmt = $this->conn->prepare($sql);
            $stmt->execute();
            $tongDanhMuc = $stmt->fetch()['tong'];

            // Đơn hàng chờ xử lý (chưa xác nhận - trang_thai_id = 1)
            $sql = "SELECT COUNT(*) as tong FROM don_hangs WHERE trang_thai_id = 1";
            $stmt = $this->conn->prepare($sql);
            $stmt->execute();
            $donChoXuLy = $stmt->fetch()['tong'];

            return [
                'tong_san_pham' => $tongSanPham,
                'tong_don_hang' => $tongDonHang,
                'tong_doanh_thu' => $tongDoanhThu,
                'tong_khach_hang' => $tongKhachHang,
                'tong_danh_muc' => $tongDanhMuc,
                'don_cho_xu_ly' => $donChoXuLy
            ];
        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
            return [];
        }
    }

    // Thống kê doanh thu theo tháng trong năm
    public function getDoanhThuTheoThang($nam = null)
    {
        try {
            if ($nam === null) {
                $nam = date('Y');
            }

            $sql = "SELECT 
                        MONTH(ngay_dat) as thang, 
                        COALESCE(SUM(tong_tien), 0) as doanh_thu
                    FROM don_hangs 
                    WHERE YEAR(ngay_dat) = :nam AND trang_thai_id = 9
                    GROUP BY MONTH(ngay_dat)
                    ORDER BY thang ASC";

            $stmt = $this->conn->prepare($sql);
            $stmt->execute([':nam' => $nam]);
            $results = $stmt->fetchAll();

            // Khởi tạo mảng 12 tháng với giá trị 0
            $doanhThu = array_fill(1, 12, 0);

            foreach ($results as $row) {
                $doanhThu[(int)$row['thang']] = (float)$row['doanh_thu'];
            }

            return $doanhThu;
        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
            return array_fill(1, 12, 0);
        }
    }

    // Thống kê đơn hàng theo trạng thái
    public function getDonHangTheoTrangThai()
    {
        try {
            $sql = "SELECT 
                        tt.ten_trang_thai,
                        COUNT(dh.id) as so_luong
                    FROM trang_thai_don_hangs tt
                    LEFT JOIN don_hangs dh ON tt.id = dh.trang_thai_id
                    GROUP BY tt.id, tt.ten_trang_thai
                    ORDER BY tt.id ASC";

            $stmt = $this->conn->prepare($sql);
            $stmt->execute();
            $results = $stmt->fetchAll();

            $data = [];
            foreach ($results as $row) {
                $data[] = [
                    'ten_trang_thai' => $row['ten_trang_thai'],
                    'so_luong' => (int)$row['so_luong']
                ];
            }

            return $data;
        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
            return [];
        }
    }

    // Top 10 sản phẩm bán chạy nhất
    public function getTopSanPhamBanChay($limit = 10)
    {
        try {
            $sql = "SELECT 
                        sp.ten_san_pham,
                        SUM(ctdh.so_luong) as tong_ban
                    FROM chi_tiet_don_hangs ctdh
                    JOIN san_phams sp ON ctdh.san_pham_id = sp.id
                    JOIN don_hangs dh ON ctdh.don_hang_id = dh.id
                    WHERE dh.trang_thai_id IN (8, 9)
                    GROUP BY sp.id, sp.ten_san_pham
                    ORDER BY tong_ban DESC
                    LIMIT :limit";

            $stmt = $this->conn->prepare($sql);
            $stmt->bindValue(':limit', (int)$limit, PDO::PARAM_INT);
            $stmt->execute();
            $results = $stmt->fetchAll();

            $data = [];
            foreach ($results as $row) {
                $data[] = [
                    'ten_san_pham' => $row['ten_san_pham'],
                    'tong_ban' => (int)$row['tong_ban']
                ];
            }

            return $data;
        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
            return [];
        }
    }

    // Thống kê sản phẩm theo danh mục
    public function getSanPhamTheoDanhMuc()
    {
        try {
            $sql = "SELECT 
                        dm.ten_danh_muc,
                        COUNT(sp.id) as so_luong
                    FROM danh_mucs dm
                    LEFT JOIN san_phams sp ON dm.id = sp.danh_muc_id AND sp.trang_thai = 1
                    GROUP BY dm.id, dm.ten_danh_muc
                    ORDER BY so_luong DESC";

            $stmt = $this->conn->prepare($sql);
            $stmt->execute();
            $results = $stmt->fetchAll();

            $data = [];
            foreach ($results as $row) {
                $data[] = [
                    'ten_danh_muc' => $row['ten_danh_muc'],
                    'so_luong' => (int)$row['so_luong']
                ];
            }

            return $data;
        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
            return [];
        }
    }

    // Đơn hàng gần đây
    public function getDonHangGanDay($limit = 10)
    {
        try {
            $sql = "SELECT 
                        dh.id,
                        dh.ma_don_hang,
                        dh.ten_nguoi_nhan,
                        dh.ngay_dat,
                        dh.tong_tien,
                        tt.ten_trang_thai
                    FROM don_hangs dh
                    JOIN trang_thai_don_hangs tt ON dh.trang_thai_id = tt.id
                    ORDER BY dh.ngay_dat DESC
                    LIMIT :limit";

            $stmt = $this->conn->prepare($sql);
            $stmt->bindValue(':limit', (int)$limit, PDO::PARAM_INT);
            $stmt->execute();

            return $stmt->fetchAll();
        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
            return [];
        }
    }

    // Thống kê đơn hàng theo ngày trong tuần hiện tại
    public function getDonHangTrongTuan()
    {
        try {
            $sql = "SELECT 
                        DATE(ngay_dat) as ngay,
                        COUNT(*) as so_don,
                        COALESCE(SUM(tong_tien), 0) as doanh_thu
                    FROM don_hangs
                    WHERE ngay_dat >= DATE_SUB(CURDATE(), INTERVAL 7 DAY)
                    GROUP BY DATE(ngay_dat)
                    ORDER BY ngay ASC";

            $stmt = $this->conn->prepare($sql);
            $stmt->execute();
            $results = $stmt->fetchAll();

            $data = [];
            foreach ($results as $row) {
                $data[] = [
                    'ngay' => $row['ngay'],
                    'so_don' => (int)$row['so_don'],
                    'doanh_thu' => (float)$row['doanh_thu']
                ];
            }

            return $data;
        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
            return [];
        }
    }

    // Thống kê theo phương thức thanh toán
    public function getThongKePhuongThucThanhToan()
    {
        try {
            $sql = "SELECT 
                        pt.ten_phuong_thuc,
                        COUNT(dh.id) as so_luong,
                        COALESCE(SUM(dh.tong_tien), 0) as tong_tien
                    FROM phuong_thuc_thanh_toans pt
                    LEFT JOIN don_hangs dh ON pt.id = dh.phuong_thuc_thanh_toan_id
                    GROUP BY pt.id, pt.ten_phuong_thuc";

            $stmt = $this->conn->prepare($sql);
            $stmt->execute();
            $results = $stmt->fetchAll();

            $data = [];
            foreach ($results as $row) {
                $data[] = [
                    'ten_phuong_thuc' => $row['ten_phuong_thuc'],
                    'so_luong' => (int)$row['so_luong'],
                    'tong_tien' => (float)$row['tong_tien']
                ];
            }

            return $data;
        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
            return [];
        }
    }

    // Sản phẩm sắp hết hàng (số lượng < 10)
    public function getSanPhamSapHetHang($threshold = 10)
    {
        try {
            $sql = "SELECT 
                        sp.id,
                        sp.ten_san_pham,
                        sp.so_luong,
                        sp.hinh_anh,
                        dm.ten_danh_muc
                    FROM san_phams sp
                    LEFT JOIN danh_mucs dm ON sp.danh_muc_id = dm.id
                    WHERE sp.trang_thai = 1 AND sp.so_luong < :threshold
                    ORDER BY sp.so_luong ASC
                    LIMIT 10";

            $stmt = $this->conn->prepare($sql);
            $stmt->bindValue(':threshold', (int)$threshold, PDO::PARAM_INT);
            $stmt->execute();

            return $stmt->fetchAll();
        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
            return [];
        }
    }

    // Top khách hàng mua nhiều nhất
    public function getTopKhachHang($limit = 5)
    {
        try {
            $sql = "SELECT 
                        tk.ho_ten,
                        tk.email,
                        COUNT(dh.id) as so_don_hang,
                        COALESCE(SUM(dh.tong_tien), 0) as tong_chi_tieu
                    FROM tai_khoans tk
                    JOIN don_hangs dh ON tk.id = dh.tai_khoan_id
                    WHERE dh.trang_thai_id = 9
                    GROUP BY tk.id, tk.ho_ten, tk.email
                    ORDER BY tong_chi_tieu DESC
                    LIMIT :limit";

            $stmt = $this->conn->prepare($sql);
            $stmt->bindValue(':limit', (int)$limit, PDO::PARAM_INT);
            $stmt->execute();

            return $stmt->fetchAll();
        } catch (Exception $e) {
            echo "Lỗi: " . $e->getMessage();
            return [];
        }
    }
}
