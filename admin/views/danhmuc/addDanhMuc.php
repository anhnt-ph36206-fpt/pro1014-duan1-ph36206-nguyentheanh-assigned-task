<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quản lý danh mục sản phẩm</title>

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
                        <h1>Quản lý danh mục sản phẩm</h1>
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
                                <h3 class="card-title">Thêm danh mục</h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form action="<?= BASE_URL_ADMIN . '?act=them-danh-muc' ?>" method="POST">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label>Tên danh mục</label>
                                        <input type="text" class="form-control" name="ten_danh_muc" placeholder="Nhập tên danh mục">
                                        <?php if (isset($errors['ten_danh_muc'])) { ?>
                                          <p class="text-danger"><?= $errors['ten_danh_muc'] ?></p>
                                        <?php } ?>
                                    </div>
                                    <div class="form-group">
                                        <label>Mô tả</label>
                                        <textarea class="form-control" name="mo_ta" id="" placeholder="Nhập mô tả"></textarea>
                                    </div>
                                </div>
                                <!-- /.card-body -->

                                <div class="card-footer">
                                    <button type="submit" class="btn btn-primary">Submit</button>
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