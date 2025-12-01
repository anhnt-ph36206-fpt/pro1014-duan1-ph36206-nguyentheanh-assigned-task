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

    <?php require './views/layout/header.php'?>
    <?php include './views/layout/navbar.php'?>
    <?php include './views/layout/sidebar.php'?>

    <!-- Content Wrapper -->
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Quản lý tài khoản quản trị viên</h1>
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
                                <h3 class="card-title">Thêm tài khoản quản trị</h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form action="<?php echo BASE_URL_ADMIN . '?act=them-quan-tri'?>" method="POST">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label>Họ tên</label>
                                        <input type="text" class="form-control" name="ho_ten" placeholder="Nhập họ tên">
                                        <?php if (isset($_SESSION['error']['ho_ten'])) {?>
                                          <p class="text-danger"><?php echo $_SESSION['error']['ho_ten']?></p>
                                        <?php }?>
                                    </div>


                                    <div class="form-group">
                                        <label>Email</label>
                                        <input type="email" class="form-control" name="email" placeholder="Nhập email">
                                        <?php if (isset($_SESSION['error']['email'])) {?>
                                          <p class="text-danger"><?php echo $_SESSION['error']['email']?></p>
                                        <?php }?>
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