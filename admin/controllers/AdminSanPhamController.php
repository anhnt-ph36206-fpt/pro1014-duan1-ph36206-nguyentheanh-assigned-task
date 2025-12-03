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
                $san_pham_id = $this->modelSanPham->insertSanPham($ten_san_pham, $gia_san_pham, $gia_khuyen_mai, $so_luong, $ngay_nhap, $danh_muc_id, $trang_thai, $mo_ta, $file_thumb
                );

                // Xử lý thêm ảnh vào album
                if (!empty($img_array['name'])) {
                    foreach ($img_array['name'] as $key => $value) {
                        if ($img_array['error'][$key] == UPLOAD_ERR_OK) {
                            $file = [
                                'name' => $img_array['name'][$key],
                                'type' => $img_array['type'][$key],
                                'tmp_name' => $img_array['tmp_name'][$key],
                                'error' => $img_array['error'][$key],
                                'size' => $img_array['size'][$key],
                            ];

                            $link_hinh_anh = uploadFile($file, './uploads/');
                            if ($link_hinh_anh) {
                                $this->modelSanPham->insertAlbumAnhSanPham($san_pham_id, $link_hinh_anh);
                            }
                        }
                    }
                }

                header("Location: " . BASE_URL_ADMIN . '?act=san-pham');
                exit();
            } else {
                // Trả về form và lỗi
                $listDanhMuc = $this->modelDanhMuc->getAllDanhMuc();
                require_once './views/sanpham/addSanPham.php';
            }
        }
    }

    public function formEditSanPham()
    {
        // Hàm này dùng để hiển thị form sửa sản phẩm
        // Lấy ra thông tin của sản phẩm cần sửa
        $id = $_GET['id_san_pham'];
        $sanPham = $this->modelSanPham->getDetailSanPham($id);
        // var_dump($sanPham);
        $listSanPham = $this->modelSanPham->getListAnhSanPham($id);
        $listAnhSanPham = $this->modelSanPham->getListAnhSanPham($id);
        var_dump($listAnhSanPham);
        $listDanhMuc = $this->modelDanhMuc->getAllDanhMuc();
        // echo '<pre>';
        // var_dump($listDanhMuc);

        if ($sanPham) {
            require_once './views/sanpham/editSanPham.php';
            deleteSessionError();
        } else {
            header("Location: " . BASE_URL_ADMIN . '?act=san-pham');
            exit();
        }
    }

    public function postEditSanPham()
      {
        // Hàm này dùng để xử lý thêm dữ liệu sản phẩm
        // Kiểm tra xem dữ liệu có phải được submit lên không
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            //  Lấy dữ liệu
            //  Lấy ra dũ liệu cũ của sản phẩm
            $san_pham_id    = $_POST['san_pham_id'] ?? '';

            //  Truy vấn
            //  Lấy ra thông tin của sản phẩm cần sửa
            $sanPhamOld = $this->modelSanPham->getDetailSanPham($san_pham_id);
            $old_file = $sanPhamOld['hinh_anh']; // Lấy ảnh cũ để phục vụ cho sửa ảnh

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
            // $file_thumb = uploadFile($hinh_anh, './uploads/');

            //  Mảng hình ảnh
            // $img_array = $_FILES['img_array'];

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
            // if ($hinh_anh['error'] !== 0) {
            //     $errors['hinh_anh'] = 'Phải chọn ảnh sản phẩm';
            // }

            $_SESSION['error'] = $errors;
            // var_dump($errors);

            //  Logic sửa ảnh
            $new_file = $old_file; // Mặc định giữ ảnh cũ
            if (isset($hinh_anh) && $hinh_anh['error'] == UPLOAD_ERR_OK) {
                //  Upload ảnh mới lên
                $new_file = uploadFile($hinh_anh, './uploads/');
                if (!empty($old_file)) { // Nếu có ảnh cũ thì xoá đi
                    deleteFile($old_file);
                }
            }

            // Nếu không có lỗi thì tiến hành thêm sản phẩm
            if (empty($errors)) {
                // Gọi model để insert
                $this->modelSanPham->updateSanPham($san_pham_id, $ten_san_pham, $gia_san_pham, $gia_khuyen_mai, $so_luong, $ngay_nhap, $danh_muc_id, $trang_thai, $mo_ta, $new_file
                );

                // Xử lý thêm ảnh vào img_array
                // if (!empty($img_array['name'])) {
                //     foreach ($img_array['name'] as $key => $value) {
                //         $file = [
                //             'name' => $img_array['name'][$key],
                //             'type' => $img_array['type'][$key],
                //             'tmp_name' => $img_array['tmp_name'][$key],
                //             'error' => $img_array['error'][$key],
                //             'size' => $img_array['size'][$key],
                //         ];

                //         $link_hinh_anh = uploadFile($file, './uploads/');
                //         $this->modelSanPham->insertAlbumAnhSanPham($san_pham_id, $link_hinh_anh);
                //     }
                // }

                header("Location: " . BASE_URL_ADMIN . '?act=san-pham');
                exit();
            } else {
                // Trả về form và lỗi
                $_SESSION['flash'] = true;
                // require_once './views/sanpham/addSanPham.php';
                
                header("Location: " . BASE_URL_ADMIN . '?act=form-sua-san-pham&id_san_pham=' . $san_pham_id);
                exit();
            }
        }
    }

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

    //  Sửa album
    // -   Sửa ảnh cũ
    //     +   Thêm Ảnh mới 
    // -   Không sửa ảnh mới
    //     +   Thêm Ảnh mới 
    //     +   Không thêm ảnh mới 
    // -   Xoá ảnh cũ
    //     + Thêm ảnh mới 
    //     + Không thêm ảnh mới 

    // public function postEditAnhSanPham()
    // {
    //     // Hàm này dùng để xử lý thêm ảnh vào album sản phẩm
    //     // Kiểm tra xem dữ liệu có phải được submit lên không
    //     if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    //         //  Lấy dữ liệu
    //         $san_pham_id = $_POST['san_pham_id'] ?? '';

    //         //  Lấy danh sách ảnh hiện tại của sản phẩm
    //         $listAnhSanPham = $this->modelSanPham->getListAnhSanPham($san_pham_id);

    //         // //  Xử Lý các ảnh được gửi từ form
    //         // $img_array = $_FILES['img_array'];
    //         // $img_delete = $_POST['img_delete  '] ?? [];

    //         //  Mảng hình ảnh
    //         $img_array = $_FILES['img_array'];

    //         // Xử lý xóa ảnh
    //         if (!empty($_POST['img_delete'])) {
    //             $img_delete_ids = explode(',', $_POST['img_delete']);
    //             foreach ($img_delete_ids as $img_id) {
    //                 $img_id = trim($img_id);
    //                 if (!empty($img_id)) {
    //                     // Lấy thông tin ảnh để xóa file
    //                     $anhSanPham = $this->modelSanPham->getDetailAnhSanPham($img_id);
    //                     if ($anhSanPham) {
    //                         // Xóa file ảnh
    //                         deleteFile($anhSanPham['link_hinh_anh']);
    //                         // Xóa record trong database
    //                         $this->modelSanPham->destroyAnhSanPham($img_id);
    //                     }
    //                 }
    //             }
    //         }

    //         // Xử lý cập nhật và thêm ảnh
    //         if (!empty($img_array['name'])) {
    //             $img_ids = $_POST['img_id'] ?? [];

    //             foreach ($img_array['name'] as $key => $value) {
    //                 // Nếu có file được chọn
    //                 if ($img_array['error'][$key] == UPLOAD_ERR_OK) {
    //                     $file = [
    //                         'name' => $img_array['name'][$key],
    //                         'type' => $img_array['type'][$key],
    //                         'tmp_name' => $img_array['tmp_name'][$key],
    //                         'error' => $img_array['error'][$key],
    //                         'size' => $img_array['size'][$key],
    //                     ];

    //                     $link_hinh_anh = uploadFile($file, './uploads/');

    //                     if ($link_hinh_anh) {
    //                         // Nếu có img_id thì cập nhật ảnh cũ
    //                         if (!empty($img_ids[$key])) {
    //                             $img_id = $img_ids[$key];
    //                             // Lấy thông tin ảnh cũ để xóa file
    //                             $anhSanPhamOld = $this->modelSanPham->getDetailAnhSanPham($img_id);
    //                             if ($anhSanPhamOld) {
    //                                 // Xóa file ảnh cũ
    //                                 deleteFile($anhSanPhamOld['link_hinh_anh']);
    //                                 // Cập nhật ảnh mới
    //                                 $this->modelSanPham->updateAnhSanPham($img_id, $link_hinh_anh);
    //                             }
    //                         } else {
    //                             // Nếu không có img_id thì thêm ảnh mới
    //                             $this->modelSanPham->insertAlbumAnhSanPham($san_pham_id, $link_hinh_anh);
    //                         }
    //                     }
    //                 }
    //             }
    //         }

    //         // Chuyển hướng về trang sửa sản phẩm
    //         header("Location: " . BASE_URL_ADMIN . '?act=form-sua-san-pham&id_san_pham=' . $san_pham_id);
    //         exit();
    //     }
    // }

}
