<?php

class HomeController
{
    public $modelSanPham;
    public function __construct()
    {
        $this->modelSanPham = new SanPham();
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
}
