<?php
class AdminSanPhamController
{
    public $modelSanPham;
    public $modelDanhMuc;

    public function __construct()
    {
        $this->modelSanPham = new AdminSanPham();
        $this->modelDanhMuc = new AdminDanhMuc();
    }

    public function danhSachSanPham()
    {
        $listSanPham = $this->modelSanPham->getAllSanPham();
        require_once './views/sanpham/listSanPham.php';
    }

    public function formAddSanPham()
    {
        // Hàm này dùng để hiển thị form nhập sản phẩm
        $listDanhMuc = $this->modelDanhMuc->getAllDanhMuc();
        require_once './views/sanpham/addSanPham.php';
    }

    public function postAddSanPham()
    {
        // Hàm này dùng để xử lý thêm dữ liệu sản phẩm
        // Kiểm tra xem dữ liệu có phải được submit lên không
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            // Lấy dữ liệu
            $ten_san_pham   = $_POST['ten_san_pham'];
            $gia_san_pham   = $_POST['gia_san_pham'];
            $gia_khuyen_mai = $_POST['gia_khuyen_mai'];
            $so_luong       = $_POST['so_luong'];
            $ngay_nhap      = $_POST['ngay_nhap'];
            $danh_muc_id    = $_POST['danh_muc_id'];
            $trang_thai     = $_POST['trang_thai'];
            $mo_ta          = $_POST['mo_ta'];

            //  Hình ảnh
            $hinh_anh = $_FILES['hinh_anh'];
            //  Lưu hình ảnh vào
            $file_thumb = uploadFile($hinh_anh, './uploads/');

            //  Mảng hình ảnh
            $img_array = $_FILES['img_array'];

            // Tạo 1 mảng trống để chứa dữ liệu
            $errors = [];
            if (empty($ten_san_pham)) {
                $errors['ten_san_pham'] = 'Tên sản phẩm không được để trống';
            }
            if (empty($gia_san_pham)) {
                $errors['gia_san_pham'] = 'Giá sản phẩm không được để trống';
            }
            if (empty($gia_khuyen_mai)) {
                $errors['gia_khuyen_mai'] = 'Giá khuyến mãi không được để trống';
            }
            if (empty($so_luong)) {
                $errors['so_luong'] = 'Số lượng không được để trống';
            }
            if (empty($ngay_nhap)) {
                $errors['ngay_nhap'] = 'Ngày nhập không được để trống';
            }
            if (empty($danh_muc_id)) {
                $errors['danh_muc_id'] = 'Danh mục không được để trống';
            }
            if (empty($trang_thai)) {
                $errors['trang_thai'] = 'Trạng thái không được để trống';
            }
            if (empty($mo_ta)) {
                $errors['mo_ta'] = 'Mô tả không được để trống';
            }

            // Nếu không có lỗi thì tiến hành thêm sản phẩm
            if (empty($errors)) {
                // Gọi model để insert
                $this->modelSanPham->insertSanPham($ten_san_pham, $gia_san_pham, $gia_khuyen_mai, $so_luong, $ngay_nhap, $danh_muc_id, $trang_thai, $mo_ta, $file_thumb
                );
                header("Location: " . BASE_URL_ADMIN . '?act=san-pham');
                exit();
            } else {
                // Trả về form và lỗi
                require_once './views/sanpham/addSanPham.php';
            }
        }
    }

    // public function formEditSanPham()
    // {
    //     // Hàm này dùng để hiển thị form sửa sản phẩm
    //     // Lấy ra thông tin của sản phẩm cần sửa
    //     $id = $_GET['id_san_pham'];
    //     $sanPham = $this->modelSanPham->getDetailSanPham($id);
    //     if ($sanPham) {
    //         require_once './views/sanpham/editSanPham.php';
    //     } else {
    //         header("Location: " . BASE_URL_ADMIN . '?act=san-pham');
    //         exit();
    //     }
    // }

    // public function postEditSanPham()
    // {
    //     // Hàm này dùng để xử lý sửa dữ liệu sản phẩm
    //     if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    //         // Lấy dữ liệu
    //         $id = $_POST['id'] ?? '';
    //         $ten_san_pham = $_POST['ten_san_pham'] ?? '';
    //         $mo_ta = $_POST['mo_ta'] ?? '';

    //         // Tạo 1 mảng trống để chứa dữ liệu
    //         $errors = [];
    //         if (empty($ten_san_pham)) {
    //             $errors['ten_san_pham'] = 'Tên sản phẩm không được để trống';
    //         }

    //         // Nếu không có lỗi thì tiến hành sửa sản phẩm
    //         if (empty($errors)) {
    //             $this->modelSanPham->updateSanPham($id, $ten_san_pham, $mo_ta);
    //             header("Location: " . BASE_URL_ADMIN . '?act=san-pham');
    //             exit();
    //         } else {
    //             // Trả về form và lỗi (giữ lại giá trị đã nhập)
    //             $sanPham = ['id' => $id, 'ten_san_pham' => $ten_san_pham, 'mo_ta' => $mo_ta];
    //             require_once './views/sanpham/editSanPham.php';
    //         }
    //     }
    // }

    // public function deleteSanPham()
    // {
    //     $id = $_GET['id_san_pham'];
    //     $sanPham = $this->modelSanPham->getDetailSanPham($id);

    //     if ($sanPham) {
    //         $this->modelSanPham->destroySanPham($id);
    //     }
    //     header("Location: " . BASE_URL_ADMIN . '?act=san-pham');
    //     exit();
    // }
}
