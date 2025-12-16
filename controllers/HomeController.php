<?php

class HomeController
{
    public $modelSanPham;
    public $modelTaiKhoan;
    public $modelGioHang;
    public $modelDonHang;

    public function __construct()
    {
        $this->modelSanPham  = new SanPham();
        $this->modelTaiKhoan = new TaiKhoan();
        $this->modelGioHang  = new GioHang();
        $this->modelDonHang  = new DonHang();
    }

    public function home()
    {
        // echo "Đây là trang chủ 1234";
        $listSanPham          = $this->modelSanPham->getAllSanPham();
        $listSanPhamDienThoai = $this->modelSanPham->getAllSanPhamDienThoai();
        $listSanPhamLaptop    = $this->modelSanPham->getAllSanPhamLaptop();
        // echo '<pre>';
        // var_dump($listSanPham);
        // echo '</pre>';
        require_once './views/home.php';
    }

    public function trangchu()
    {
        echo "Đây là trang chủ của tôi";
    }

    public function danhSachSanPham()
    {
        $listProduct = $this->modelSanPham->getAllSanPham();
        // var_dump($listProduct);
        // die();
        require_once './views/listProduct.php';
    }

    public function chiTietSanPham()
    {
        $id = $_GET['id_san_pham'];

        $sanPham                = $this->modelSanPham->getDetailSanPham($id);
        $listAnhSanPham         = $this->modelSanPham->getListAnhSanPham($id);
        $listBinhLuan           = $this->modelSanPham->getBinhLuanFromSanPham($id);
        $listSanPhamCungDanhMuc = $this->modelSanPham->getListSanPhamDanhMuc($sanPham['danh_muc_id']);

        // var_dump($sanPham);die();
        // var_dump($listAnhSanPham);die();
        // var_dump($listBinhLuan);die();
        // var_dump($listSanPhamCungDanhMuc);die();

        if ($sanPham) {
            require_once './views/detailSanPham.php';
        } else {
            header("Location: " . BASE_URL);
            exit();
        }
    }

    public function formLogin()
    {
        require_once './views/auth/formLogin.php';
        deleteSessionError();
        exit();
    }

    public function postLogin()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {

            // Lấy email và pass gửi lên từ form
            $email    = $_POST['email'];
            $password = $_POST['password'];
            // var_dump($email);die();
            // var_dump($password);die();

            //  Xử lý kiểm tra thông tin đăng nhập
            $user = $this->modelTaiKhoan->checkLogin($email, $password);

            if ($user == $email) {
                // Trường hợp đăng nhập thành công
                // Lưu thông tin đăng nhập vào session
                $_SESSION['user_client'] = $user;
                header("Location: " . BASE_URL);
                exit();
            } else {
                // Trường hợp đăng nhập thất bại
                // Lỗi thì sẽ lưu vào session
                $_SESSION['error'] = $user;
                // var_dump($_SESSION['error']);die();

                $_SESSION['flash'] = true;

                header("Location: " . BASE_URL . '?act=login');
                exit();
            }
        }
    }

    public function addGioHang()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if (isset($_SESSION['user_client'])) {
                $mail = $this->modelTaiKhoan->getTaiKhoanFromEmail($_SESSION['user_client']);
                //  Lấy dữ liệu giỏ hàng của người dùng
                // var_dump($mail['id']);die();
                $gioHang = $this->modelGioHang->getGioHangFromUser($mail['id']);
                if (! $gioHang) {
                    $gioHangId      = $this->modelGioHang->addGioHang($mail['id']);
                    $gioHang        = ['id' => $gioHangId];
                    $chiTietGioHang = $this->modelGioHang->getDetailGioHang($gioHang['id']);
                } else {
                    $chiTietGioHang = $this->modelGioHang->getDetailGioHang($gioHang['id']);
                }
                $chiTietGioHang = $this->modelGioHang->getDetailGioHang($gioHang['id']);

                //  Lấy id của người dùn
                $san_pham_id = $_POST['san_pham_id'];
                $so_luong    = $_POST['so_luong'];

                $checkSanPham = false;
                foreach ($chiTietGioHang as $detail) {
                    if ($detail['san_pham_id'] == $san_pham_id) {
                        $newSoLuong = $detail['so_luong'] + $so_luong;
                        $this->modelGioHang->updateSoLuong($gioHang['id'], $san_pham_id, $newSoLuong);
                        $checkSanPham = true;
                        break;
                    }
                }
                if (! $checkSanPham) {
                    $this->modelGioHang->addDetailGioHang($gioHang['id'], $san_pham_id, $so_luong);
                }
                // var_dump('Thêm giỏ hàng thành công');die;
                header("Location: " . BASE_URL . '?act=gio-hang');
            } else {
                // var_dump('Chưa đăng nhập');die();
                $_SESSION['error'] = 'Vui lòng đăng nhập để thêm sản phẩm vào giỏ hàng';

                
                $san_pham_id = $_POST['san_pham_id'];
                header("Location: " . BASE_URL . "?act=chi-tiet-san-pham&id=" . $san_pham_id);
                exit;
            }

        }
    }

    public function gioHang()
    {
        if (isset($_SESSION['user_client'])) {
            $mail = $this->modelTaiKhoan->getTaiKhoanFromEmail($_SESSION['user_client']);
            //  Lấy dữ liệu giỏ hàng của người dùng
            // var_dump($mail['id']);die();

            $gioHang = $this->modelGioHang->getGioHangFromUser($mail['id']);
            if (! $gioHang) {
                $gioHangId      = $this->modelGioHang->addGioHang($mail['id']);
                $gioHang        = ['id' => $gioHangId];
                $chiTietGioHang = $this->modelGioHang->getDetailGioHang($gioHang['id']);
            } else {
                $chiTietGioHang = $this->modelGioHang->getDetailGioHang($gioHang['id']);
            }

            // var_dump($chiTietGioHang);die();
            require_once './views/gioHang.php';
        } else {
            header("Location: " . BASE_URL . '?act=login');
        }
    }

    public function thanhToan()
    {
        if (isset($_SESSION['user_client'])) {
            $user = $this->modelTaiKhoan->getTaiKhoanFromEmail($_SESSION['user_client']);
            //  Lấy dữ liệu giỏ hàng của người dùng
            // var_dump($mail['id']);die();

            $gioHang = $this->modelGioHang->getGioHangFromUser($user['id']);
            if (! $gioHang) {
                $gioHangId      = $this->modelGioHang->addGioHang($user['id']);
                $gioHang        = ['id' => $gioHangId];
                $chiTietGioHang = $this->modelGioHang->getDetailGioHang($gioHang['id']);
            } else {
                $chiTietGioHang = $this->modelGioHang->getDetailGioHang($gioHang['id']);
            }
            require_once './views/thanhToan.php';

        } else {
            var_dump('Chưa đăng nhập');die();
        }

    }

    public function postThanhToan()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            // echo '<pre>';
            // var_dump($_POST);die;
            $ten_nguoi_nhan            = $_POST['ten_nguoi_nhan'];
            $email_nguoi_nhan          = $_POST['email_nguoi_nhan'];
            $sdt_nguoi_nhan            = $_POST['sdt_nguoi_nhan'];
            $dia_chi_nguoi_nhan        = $_POST['dia_chi_nguoi_nhan'];
            $ghi_chu                   = $_POST['ghi_chu'];
            $tong_tien                 = $_POST['tong_tien'];
            $phuong_thuc_thanh_toan_id = $_POST['phuong_thuc_thanh_toan_id'];

            $ngay_dat      = date('Y-m-d');
            $trang_thai_id = 1;

            $user         = $this->modelTaiKhoan->getTaiKhoanFromEmail($_SESSION['user_client']);
            $tai_khoan_id = $user['id'];
            $ma_don_hang  = 'DH-' . rand(1000, 9999);

            // Thêm thông tin vào db

            $donHang = $this->modelDonHang->addDonHang(
                $tai_khoan_id,
                $ten_nguoi_nhan,
                $email_nguoi_nhan,
                $sdt_nguoi_nhan,
                $dia_chi_nguoi_nhan,
                $ghi_chu,
                $tong_tien,
                $phuong_thuc_thanh_toan_id,
                $ngay_dat,
                $ma_don_hang,
                $trang_thai_id
            );
            // var_dump('Thêm thành công');die;
            //lấy thông tin giỏ hàng của người dùng
            $gioHang = $this->modelGioHang->getGioHangFromUser($tai_khoan_id);

            //lưu sản phẩm vào chi tiết đơn hàng
            if ($donHang) {
                //lấy ra toàn bộ sp trong giỏ hàng
                $chiTietGioHang = $this->modelGioHang->getDetailGioHang($gioHang['id']);

                //Thêm từng sản phẩm từ giỏ hàng vào bảng chi tiết đơn hàng
                foreach ($chiTietGioHang as $item) {
                    $donGia = $item['gia_khuyen_mai'] ?? $item['gia_san_pham'];

                    $this->modelDonHang->addChiTietDonHang(
                        $donHang,
                        $item['san_pham_id'],
                        $donGia,
                        $item['so_luong'],
                        $donGia * $item['so_luong']
                    );
                }

                // Sau khi thêm xong thì phải tiến hành xoá sản phẩm trong giỏ hàng
                // Xoá toàn bộ sản phẩm trong chi tiết giỏ hàng
                $this->modelGioHang->clearDetailGioHang($gioHang['id']);

                // Xoá thông tin giỏ hàng người dùng
                $this->modelGioHang->clearGioHang($tai_khoan_id);

                // Chuyển hướng về trang lịch sử mua hàng
                // header("Location: " . BASE_URL . '?act=lich-su-mua-hang');
                // var_dump('Thêm đơn hàng thành công');die();
                echo "<script>
                    alert('Đặt hàng thành công!');
                    window.location.href = '" . BASE_URL . "?act=lich-su-mua-hang';
                </script>";
                exit;
            } else {
                echo "<script>
                    alert('Lỗi đặt hàng: Tổng tiền không hợp lệ!');
                    window.location.href = '" . BASE_URL . "?act=thanh-toan';
                </script>";
            }

        }
    }

    public function lichSuMuaHang()
    {
        if (isset($_SESSION['user_client'])) {
            // Lấy ra thông tin tài khoản đăng nhập
            $user         = $this->modelTaiKhoan->getTaiKhoanFromEmail($_SESSION['user_client']);
            $tai_khoan_id = $user['id'];

            // Lấy ra danh sách trạng thái đơn hàng
            $arrTrangThaiDonHang = $this->modelDonHang->getTrangThaiDonHang();
            $trangThaiDonHang    = array_column($arrTrangThaiDonHang, 'ten_trang_thai', 'id');

            // Lấy ra danh sách trạng thái thanh toán
            $arrPhuongThucThanhToan = $this->modelDonHang->getPhuongThucThanhToan();
            $phuongThucThanhToan    = array_column($arrPhuongThucThanhToan, 'ten_phuong_thuc', 'id');

            // Lấy ra danh sách tất cả đơn hàng của tài khoản
            $donHangs = $this->modelDonHang->getDonHangFromUser($tai_khoan_id);
            require_once "./views/lichSuMuaHang.php";
        } else {
            var_dump('Bạn chưa đăng nhập');
            die;
        }
    }

    public function chiTietMuaHang()
    {
        if (isset($_SESSION['user_client'])) {
            // Lấy ra thông tin tài khoản đăng nhập
            $user         = $this->modelTaiKhoan->getTaiKhoanFromEmail($_SESSION['user_client']);
            $tai_khoan_id = $user['id'];

            // Lấy id đơn hàng truyền từ url
            $donHangId = $_GET['id'];

            // Lấy ra danh sách trạng thái đơn hàng
            $arrTrangThaiDonHang = $this->modelDonHang->getTrangThaiDonHang();
            $trangThaiDonHang    = array_column($arrTrangThaiDonHang, 'ten_trang_thai', 'id');

            // Lấy ra danh sách trạng thái thanh toán
            $arrPhuongThucThanhToan = $this->modelDonHang->getPhuongThucThanhToan();
            $phuongThucThanhToan    = array_column($arrPhuongThucThanhToan, 'ten_phuong_thuc', 'id');

            // Lấy ra thông tin đơn hàng theo ID
            $donHang = $this->modelDonHang->getDonHangById($donHangId);

            // Lấy thông tin sản phẩm của đơn hàng trong bảng chi tiết đơn hàng
            $chiTietDonHang = $this->modelDonHang->getChiTietDonHangByDonHangId($donHangId);

            // echo "<pre>";
            // print_r($donHang);
            // print_r($chiTietDonHang);

            if ($donHang['tai_khoan_id'] != $tai_khoan_id) {
                echo "Bạn không có quyền truy cập đơn hàng này";
                exit;
            }

            require_once "./views/chiTietMuaHang.php";
        } else {
            var_dump('Bạn chưa đăng nhập');
            die;
        }
    }

    public function huyDonHang()
    {
        if (isset($_SESSION['user_client'])) {
            // Lấy ra thông tin tài khoản đăng nhập
            $user         = $this->modelTaiKhoan->getTaiKhoanFromEmail($_SESSION['user_client']);
            $tai_khoan_id = $user['id'];

            // Lấy id đơn hàng truyền từ url
            $donHangId = $_GET['id'];

            // Kiểm tra đơn hàng
            $donHang = $this->modelDonHang->getDonHangById($donHangId);

            if ($donHang['tai_khoan_id'] != $tai_khoan_id) {
                echo "Bạn không có quyền hủy đơn hàng này";
                exit;
            }

            if ($donHang['trang_thai_id'] != 1) {
                echo "Chỉ đơn hàng ở trạng thái 'Chưa xác nhận' mới có thể hủy";
                exit;
            }

            // Hủy đơn hàng
            $this->modelDonHang->updateTrangThaiDonHang($donHangId, 11);
            header("Location: " . BASE_URL . '?act=lich-su-mua-hang');
            exit;
        } else {
            var_dump('Bạn chưa đăng nhập');
            die;
        }
    }

    public function dienThoai()
    {
        $listSanPham = $this->modelSanPham->getAllSanPhamDienThoai();
        // echo '<pre>';
        // var_dump($listSanPham);
        // echo '</pre>';
        require_once './views/trangDienThoai.php';
    }

    public function laptop()
    {
        $listSanPham = $this->modelSanPham->getAllSanPhamLaptop();
        // echo '<pre>';
        // var_dump($listSanPham);
        // echo '</pre>';
        require_once './views/trangLaptop.php';
    }

    public function tablet()
    {
        $listSanPham = $this->modelSanPham->getAllSanPhamTablet();
        // echo '<pre>';
        // var_dump($listSanPham);
        // echo '</pre>';
        require_once './views/trangTablet.php';
    }

    public function phuKien()
    {
        $listSanPham = $this->modelSanPham->getAllSanPhamPhuKien();
        // echo '<pre>';
        // var_dump($listSanPham);die();
        require_once './views/trangPhuKien.php';
    }
}
