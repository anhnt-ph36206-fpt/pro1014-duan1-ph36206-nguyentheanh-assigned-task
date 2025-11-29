<?php 

class HomeController
{
    public $modelSanPham;

    // SỬA TẠI ĐÂY: đúng chính tả + đúng cú pháp
    public function __construct()
    {
        $this->modelSanPham = new SanPham();
    }

    public function home()
    {
        // echo "Đây là trang chủ 1234";
        $listSanPham = $this->modelSanPham->getAllProduct();
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
        // Bây giờ $this->modelSanPham đã có đối tượng rồi → chạy ngon
        $listProduct = $this->modelSanPham->getAllProduct();
        // var_dump($listProduct); 
        // die();
        require_once './views/listProduct.php';
    }
}