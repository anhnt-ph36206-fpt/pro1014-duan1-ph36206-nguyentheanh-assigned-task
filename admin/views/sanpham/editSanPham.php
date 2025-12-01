<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quản lý sản phẩm</title>

    <!-- Google Font -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="./plugins/fontawesome-free/css/all.min.css">
    <!-- DataTables + Buttons CSS -->
    <link rel="stylesheet" href="./plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="./plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
    <link rel="stylesheet" href="./plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="./dist/css/adminlte.min.css">
</head>

<body class="hold-transition sidebar-mini">

    <?php require './views/layout/header.php'?>
    <?php include './views/layout/navbar.php'?>
    <?php include './views/layout/sidebar.php'?>

    <!-- Content Wrapper -->
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Sửa thông tin sản phẩm:                                                                                                                                                                               <?php echo $sanPham['ten_san_pham'] ?></h1>
                    </div>
                </div>
            </div>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-md-8">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">Thông tin sản phẩm</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <form action="<?php echo BASE_URL_ADMIN . '?act=sua-san-pham' ?>" method="post" enctype="multipart/form-data">
                            <div class="card-body">
                                <div class="form-group">
                                    <input type="hidden" id="san_pham_id" class="form-control" name="san_pham_id" value="<?php echo $sanPham['id'] ?>">
                                    <label for="ten_san_pham">Tên sản phẩm</label>
                                    <input type="text" id="ten_san_pham" class="form-control" name="ten_san_pham" value="<?php echo $sanPham['ten_san_pham'] ?>">
                                    <?php if (isset($errors['ten_san_pham'])) {?>
                                        <p class="text-danger"><?php echo $errors['ten_san_pham'] ?></p>
                                    <?php }?>
                                </div>
                                <div class="form-group">
                                    <label for="gia_san_pham">Giá sản phẩm</label>
                                    <input type="number" id="gia_san_pham" class="form-control" name="gia_san_pham" value="<?php echo $sanPham['gia_san_pham'] ?>">
                                    <?php if (isset($errors['gia_san_pham'])) {?>
                                        <p class="text-danger"><?php echo $errors['gia_san_pham'] ?></p>
                                    <?php }?>
                                </div>
                                <div class="form-group">
                                    <label for="gia_khuyen_mai">Giá khuyến mãi</label>
                                    <input type="number" id="gia_khuyen_mai" class="form-control" name="gia_khuyen_mai" value="<?php echo $sanPham['gia_khuyen_mai'] ?>">
                                    <?php if (isset($errors['gia_khuyen_mai'])) {?>
                                        <p class="text-danger"><?php echo $errors['gia_khuyen_mai'] ?></p>
                                    <?php }?>
                                </div>
                                <div class="form-group">
                                    <label for="hinh_anh">Hình Ảnh</label>
                                    <input type="file" id="hinh_anh" class="form-control" name="hinh_anh">
                                </div>
                                <div class="form-group">
                                    <label for="so_luong">Số lượng</label>
                                    <input type="number" id="so_luong" class="form-control" name="so_luong" value="<?php echo $sanPham['so_luong'] ?>">
                                    <?php if (isset($errors['so_luong'])) {?>
                                        <p class="text-danger"><?php echo $errors['so_luong'] ?></p>
                                    <?php }?>
                                </div>
                                <div class="form-group">
                                    <label for="ngay_nhap">Ngày nhập</label>
                                    <input type="date" id="ngay_nhap" class="form-control" name="ngay_nhap" value="<?php echo $sanPham['ngay_nhap'] ?>">
                                    <?php if (isset($errors['ngay_nhap'])) {?>
                                        <p class="text-danger"><?php echo $errors['ngay_nhap'] ?></p>
                                    <?php }?>
                                </div>

                                <div class="form-group">
                                    <label for="inputStatus">Danh Mục Sản Phẩm</label>
                                    <select id="inputStatus" name="danh_muc_id" class="form-control custom-select">
                                        <?php foreach ($listDanhMuc as $danhMuc): ?>
                                            <option<?php echo $danhMuc['id'] == $sanPham['danh_muc_id'] ? 'selected' : '' ?> value="<?php echo $danhMuc['id'] ?>"><?php echo $danhMuc['ten_danh_muc'] ?></option>
                                            <?php endforeach; ?>
                                    </select>
                                    <?php if (isset($errors['danh_muc_id'])) {?>
                                        <p class="text-danger"><?php echo $errors['danh_muc_id'] ?></p>
                                    <?php }?>
                                </div>

                                <div class="form-group">
                                    <label for="trang_thai">Trạng thái</label>
                                    <select id="trang_thai" name="trang_thai" class="form-control custom-select">
                                        <option                                                                                                                                              <?php echo $sanPham['trang_thai'] == 1 ? 'selected' : '' ?> value="1">Còn bán</option>
                                        <option                                                                                                                                              <?php echo $sanPham['trang_thai'] == 2 ? 'selected' : '' ?> value="2">Dừng bán</option>
                                    </select>
                                    <?php if (isset($errors['trang_thai'])) {?>
                                        <p class="text-danger"><?php echo $errors['trang_thai'] ?></p>
                                    <?php }?>
                                </div>

                                <div class="form-group">
                                    <label for="mo_ta">Mô tả sản phẩm</label>
                                    <textarea id="mo_ta" class="form-control" rows="4" name="mo_ta"><?php echo $sanPham['mo_ta'] ?></textarea>
                                    <?php if (isset($errors['mo_ta'])) {?>
                                        <p class="text-danger"><?php echo $errors['mo_ta'] ?></p>
                                    <?php }?>
                                </div>

                            </div>
                            <!-- /.card-body -->
                            <div class="card-footer text-center">
                                <button type="submit" class="btn btn-primary">Cập Nhật Sản Phẩm</button>
                            </div>
                    </div>
                    </form>
                    <!-- /.card -->
                </div>
                <div class="col-md-4">
                    <!-- /.card -->
                    <div class="card card-info">
                        <div class="card-header">
                            <h3 class="card-title">Album hình ảnh sản phẩm</h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                                    <i class="fas fa-minus"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body p-0">
                            <form action="<?php echo BASE_URL_ADMIN . '?act=sua-album-anh-san-pham' ?>" method="post" enctype="multipart/form-data">
                                <div class="table-responsive">
                                    <table id="faqs" class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>Ảnh </th>
                                                <th>File</th>
                                                <th>
                                                    <div class="text-center"><button onclick="addfaqs();" type="button" class="badge badge-success"><i class="fa fa-plus"></i> THÊM</button></div>
                                                </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <input type="hidden" name="san_pham_id" value="<?php echo $sanPham['id'] ?>">
                                            <input type="hidden" id="img_delete" name="img_delete" value="">
                                            <?php foreach ($listAnhSanPham as $key => $value): ?>
                                            <tr>
                                                <td><img src="<?php echo BASE_URL . $value['link_hinh_anh'] ?>" alt="" style="width: 50px; height: 50px;"></td>
                                                <td>
                                                    <input type="hidden" name="img_id[]" value="<?php echo $value['id'] ?>">
                                                    <input type="file" name="img_array[]" class="form-control">
                                                </td>
                                                <td class="mt-10"><button type="button" onclick="deleteImage(<?php echo $value['id'] ?>)" class="badge badge-danger"><i class="fa fa-trash"></i> Delete</button></td>
                                            </tr>
                                            <?php endforeach; ?>
                                        </tbody>
                                    </table>
                                </div>
                        </div>

                        <!-- /.card-body -->
                          <div class="card-footer text-center">
                                <button type="submit" class="btn btn-primary">Sửa thông tin</button>
                            </div>
                         </form>
                    </div>
                    <!-- /.card -->
                </div>
            </div>
            <div class="row">
                <div class="col-12">
                    <a href="#" class="btn btn-secondary">Cancel</a>
                    <input type="submit" value="Save Changes" class="btn btn-success float-right">
                </div>
            </div>
        </section>
    </div>

    <?php include './views/layout/footer.php'; ?>
</body>
<script src="./plugins/jquery/jquery.min.js"></script>
<script>
    var faqs_row = 0;
    var deletedImages = [];

    function addfaqs() {
        html = '<tr id="faqs-row' + faqs_row + '">';
        html += '<td></td>';
        html += '<td><input type="hidden" name="img_id[]" value=""><input type="file" name="img_array[]" class="form-control"></td>';
        html += '<td class="mt-10"><button type="button" class="badge badge-danger" onclick="$(\'#faqs-row' + faqs_row + '\').remove();"><i class="fa fa-trash"></i> Delete</button></td>';
        html += '</tr>';

        $('#faqs tbody').append(html);
        faqs_row++;
    }

    function deleteImage(imageId) {
        if (confirm('Bạn có chắc chắn muốn xóa ảnh này?')) {
            deletedImages.push(imageId);
            document.getElementById('img_delete').value = deletedImages.join(',');
            event.target.closest('tr').remove();
        }
    }
</script>

</html>