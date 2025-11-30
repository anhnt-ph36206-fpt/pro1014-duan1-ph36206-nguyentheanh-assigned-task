<?php

class HomeController
{
    public $modelSanPham;
    public $modelTaiKhoan;
    public function __construct()
    {
        $this->modelSanPham  = new SanPham();
        $this->modelTaiKhoan = new TaiKhoan();
    }

    public function home()
    {
        // echo "Đây là trang chủ 1234";
        $listSanPham = $this->modelSanPham->getAllSanPham();
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
}
