<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quản lý Thêm Sản Phẩm</title>

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

    <?php require './views/layout/header.php' ?>
    <?php include './views/layout/navbar.php' ?>
    <?php include './views/layout/sidebar.php' ?>

    <!-- Content Wrapper -->
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Quản lý Thêm Sản Phẩm Vào Danh Sách</h1>
                    </div>
                </div>
            </div>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="card card-primary">
                            <div class="card-header">
                                <h3 class="card-title">Thêm sản phẩm</h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form action="<?= BASE_URL_ADMIN . '?act=them-san-pham' ?>" method="POST" enctype="multipart/form-data">
                                <div class="card-body row ">
                                    <div class="form-group col-12">
                                        <label>Tên sản phẩm</label>
                                        <input type="text" class="form-control" name="ten_san_pham" placeholder="Nhập tên sản phẩm" value="<?= isset($ten_san_pham) ? htmlspecialchars($ten_san_pham) : '' ?>">
                                        <?php if (isset($errors['ten_san_pham'])) { ?>
                                          <p class="text-danger"><?= $errors['ten_san_pham'] ?></p>
                                        <?php } ?>
                                    </div>

                                    <div class="form-group col-6">
                                        <label>Giá sản phẩm </label>
                                        <input type="number" step="0.01" class="form-control" name="gia_san_pham" placeholder="Nhập giá" value="<?= isset($gia_san_pham) ? htmlspecialchars($gia_san_pham) : '' ?>">
                                        <?php if (isset($errors['gia_san_pham'])) { ?>
                                          <p class="text-danger"><?= $errors['gia_san_pham'] ?></p>
                                        <?php } ?>
                                    </div>

                                    <div class="form-group col-6">
                                        <label>Giá khuyến mãi sản phẩm </label>
                                        <input type="number" step="0.01" class="form-control" name="gia_khuyen_mai" placeholder="Nhập giá khuyến mãi" value="<?= isset($gia_khuyen_mai) ? htmlspecialchars($gia_khuyen_mai) : '' ?>">
                                        <?php if (isset($errors['gia_khuyen_mai'])) { ?>
                                          <p class="text-danger"><?= $errors['gia_khuyen_mai'] ?></p>
                                        <?php } ?>
                                    </div>
                                    <div class="form-group col-6">
                                        <label>Ảnh sản phẩm</label>
                                        <input type="file" class="form-control" name="hinh_anh">
                                        <?php if (isset($errors['hinh_anh'])) { ?>
                                          <p class="text-danger"><?= $errors['hinh_anh'] ?></p>
                                        <?php } ?>
                                    </div>

                                       <div class="form-group col-6">
                                        <label>Album ảnh sản phẩm</label>
                                        <input type="file" class="form-control" name="img_array[]" multiple>
                                    </div>

                                    <div class="form-group col-6">
                                        <label>Số lượng sản phẩm </label>
                                        <input type="number" class="form-control" name="so_luong" placeholder="Nhập số lượng" value="<?= isset($so_luong) ? htmlspecialchars($so_luong) : '' ?>">
                                        <?php if (isset($errors['so_luong'])) { ?>
                                          <p class="text-danger"><?= $errors['so_luong'] ?></p>
                                        <?php } ?>
                                    </div>

                                     <div class="form-group col-6">
                                        <label>Ngày nhập</label>
                                        <input type="date" class="form-control" name="ngay_nhap" placeholder="Nhập ngày nhập" value="<?= isset($ngay_nhap) ? htmlspecialchars($ngay_nhap) : '' ?>">
                                        <?php if (isset($errors['ngay_nhap'])) { ?>
                                          <p class="text-danger"><?= $errors['ngay_nhap'] ?></p>
                                        <?php } ?>
                                    </div>

                                    <div class="form-group col-6">
                                        <label>Danh mục</label>
                                        <select name="danh_muc_id" class="form-control" >
                                            <option value="">-- Chọn danh mục --</option>
                                            <?php if (!empty($listDanhMuc)) : ?>
                                                <?php foreach ($listDanhMuc as $dm) : ?>
                                                    <option value="<?= $dm['id'] ?>"
                                                        <?= (isset($id_danh_muc) && $id_danh_muc == $dm['id']) ? 'selected' : '' ?>>
                                                        <?= htmlspecialchars($dm['ten_danh_muc']) ?>
                                                    </option>
                                                <?php endforeach; ?>
                                            <?php endif; ?>
                                        </select>
                                        <?php if (isset($errors['id_danh_muc'])) { ?>
                                          <p class="text-danger"><?= $errors['id_danh_muc'] ?></p>
                                        <?php } ?>
                                    </div>

                                 
                                    <div class="form-group col-6">
                                        <label>Trạng thái</label>
                                        <select name="trang_thai" class="form-control">
                                            <option value="1" <?= (isset($trang_thai) && $trang_thai == 1) ? 'selected' : '' ?>>Còn bán</option>
                                            <option value="0" <?= (isset($trang_thai) && $trang_thai == 0) ? 'selected' : '' ?>>Ngừng bán</option>
                                        </select>
                                    </div>

                                    <div class="form-group col-12">
                                        <label>Mô tả</label>
                                        <textarea class="form-control" name="mo_ta" placeholder="Nhập mô tả"><?= isset($mo_ta) ? htmlspecialchars($mo_ta) : '' ?></textarea>
                                    </div>

                                </div>
                                <!-- /.card-body -->

                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Thêm sản phẩm</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <?php include './views/layout/footer.php'; ?>
</body>

</html>
