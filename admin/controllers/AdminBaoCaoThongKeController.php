<?php

require_once './models/AdminBaoCaoThongKe.php';

class AdminBaoCaoThongKeController
{
    public $modelBaoCao;

    public function __construct()
    {
        $this->modelBaoCao = new AdminBaoCaoThongKe();
    }

    public function home()
    {
        // Lấy tất cả dữ liệu thống kê
        $tongQuan = $this->modelBaoCao->getTongQuan();
        
        // Doanh thu theo tháng
        $nam = isset($_GET['nam']) ? (int)$_GET['nam'] : date('Y');
        $doanhThuTheoThang = $this->modelBaoCao->getDoanhThuTheoThang($nam);
        
        // Đơn hàng theo trạng thái
        $donHangTheoTrangThai = $this->modelBaoCao->getDonHangTheoTrangThai();
        
        // Top sản phẩm bán chạy
        $topSanPhamBanChay = $this->modelBaoCao->getTopSanPhamBanChay(10);
        
        // Sản phẩm theo danh mục
        $sanPhamTheoDanhMuc = $this->modelBaoCao->getSanPhamTheoDanhMuc();
        
        // Đơn hàng gần đây
        $donHangGanDay = $this->modelBaoCao->getDonHangGanDay(10);
        
        // Đơn hàng trong tuần
        $donHangTrongTuan = $this->modelBaoCao->getDonHangTrongTuan();
        
        // Phương thức thanh toán
        $phuongThucThanhToan = $this->modelBaoCao->getThongKePhuongThucThanhToan();
        
        // Sản phẩm sắp hết hàng
        $sanPhamSapHetHang = $this->modelBaoCao->getSanPhamSapHetHang(10);
        
        // Top khách hàng
        $topKhachHang = $this->modelBaoCao->getTopKhachHang(5);

        require_once './views/home.php';
    }
}
