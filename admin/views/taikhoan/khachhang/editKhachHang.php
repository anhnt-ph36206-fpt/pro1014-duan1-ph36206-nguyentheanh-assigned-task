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
                        <h1>Quản lý tài khoản khách hàng</h1>
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
                                <h3 class="card-title">Sửa thông tin tài khoản khách hàng :<?= $khachHang['ho_ten']?> </h3>
                            </div>
                            <!-- /.card-header -->
                            <!-- form start -->
                            <form action="<?= BASE_URL_ADMIN . '?act=sua-khach-hang' ?>" method="POST">
                                <input type="hidden" name="khach_hang_id" value="<?=$khachHang['id']?>">
                                <div class="card-body">
                                    <div class="form-group">
                                        <label>Họ tên</label>
                                        <input type="text" class="form-control" name="ho_ten" value="<?=$khachHang['ho_ten']?>" placeholder="Nhập họ tên">
                                        <?php if (isset($_SESSION['error']['ho_ten'])) { ?>
                                          <p class="text-danger"><?= $_SESSION['error']['ho_ten'] ?></p>
                                        <?php } ?>
                                    </div>
                                     

                                    <div class="form-group">
                                        <label>Email</label>
                                        <input type="email" class="form-control" name="email" value="<?=$khachHang['email']?>" placeholder="Nhập email">
                                        <?php if (isset($_SESSION['error']['email'])) { ?>
                                          <p class="text-danger"><?= $_SESSION['error']['email'] ?></p>
                                        <?php } ?>
                                    </div>

                                      
                                  <div class="form-group">
                                        <label>Số điện thoại</label>
                                        <input type="text" class="form-control" name="so_dien_thoai"  value="<?=$khachHang['so_dien_thoai']?>" placeholder="Nhập số diện thoại">
                                        <?php if (isset($_SESSION['error']['so_dien_thoai'])) { ?>
                                          <p class="text-danger"><?= $_SESSION['error']['so_dien_thoai'] ?></p>
                                        <?php } ?>
                                    </div>
                                        

                                    <div class="form-group">
                                        <label>Ngày sinh</label>
                                        <input type="date" class="form-control" name="ngay_sinh"  value="<?=$khachHang['ngay_sinh']?>" placeholder="Nhập số diện thoại">
                                        <?php if (isset($_SESSION['error']['ngay_sinh'])) { ?>
                                          <p class="text-danger"><?= $_SESSION['error']['ngay_sinh'] ?></p>
                                        <?php } ?>
                                    </div>    
                                      
                                      <div class="form-group">
                                        <label>Giới tính</label>
                                          <select name="gioi_tinh" id="inputStatus" class="form-control custom-select">

                                       <option  <?= $khachHang['gioi_tinh'] == 1 ?'selected' : ''?>  value="1">Nam</option>
                                         <option <?= $khachHang['gioi_tinh'] !== 1 ?'selected' : ''?>  value="2">Nữ</option>


                                        </select>
                                       
                                    </div>    
                                         
                                    <div class="form-group">
                                        <label>Địa chỉ</label>
                                        <input type="text" class="form-control" name="dia_chi"  value="<?=$khachHang['dia_chi']?>" placeholder="Địa chỉ">
                                        <?php if (isset($_SESSION['error']['dia_chi'])) { ?>
                                          <p class="text-danger"><?= $_SESSION['error']['dia_chi'] ?></p>
                                        <?php } ?>
                                    </div>    

                                      
                                     
                                    <div class="form-group">
                                        <label for="inputStatus">Trạng thái tài khoản</label>
                                        <select name="trang_thai" id="inputStatus" class="form-control custom-select">

                                       <option  <?= $khachHang['trang_thai'] == 1 ?'selected' : ''?>  value="1">Active</option>
                                         <option <?= $khachHang['trang_thai'] !== 1 ?'selected' : ''?>  value="2">Innactive</option>


                                        </select>
                                       
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