<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Chỉnh sửa thông tin cá nhân</title>

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="./plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="./dist/css/adminlte.min.css">
</head>
<body class="hold-transition sidebar-mini">

<?php require './views/layout/header.php'; ?>
<?php include './views/layout/navbar.php'; ?>
<?php include './views/layout/sidebar.php'; ?>

<div class="content-wrapper">
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Thông tin cá nhân quản trị</h1>
        </div>
      </div>
    </div>
  </section>

  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
          <!-- Card chính -->
          <div class="card card-primary card-outline">
            <div class="card-header">
              <h3 class="card-title">Cập nhật thông tin cá nhân</h3>
            </div>

            <div class="card-body">
              <div class="row">
                <!-- Ảnh đại diện -->
                <div class="col-md-3 text-center">
                  <img src="<?php echo BASE_URL_ADMIN . $thongTin['anh_dai_dien'] ?>"
     class="img-circle elevation-2"
     alt="Avatar"
     onerror="this.src='https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png'"
     style="width:100px;">

                   <h6 class="mt-2">Họ tên :<?php echo $thongTin['ho_ten'] ?></h6>
                    <h6 class="mt-2">Chức vụ :<?php echo $thongTin['chuc_vu_id'] ?></h6>
                  </div>
                </div>

                <!-- Form thông tin cá nhân -->
                <div class="col-md-9">
                  <form action="<?php echo BASE_URL_ADMIN . '?act=sua-thong-tin-ca-nhan-quan-tri' ?>" method="POST" enctype="multipart/form-data">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Họ</label>
                          <input type="text" name="ho" class="form-control" value="Nguyễn" required>
                        </div>
                      </div>
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Tên</label>
                          <input type="text" name="ten" class="form-control" value="Văn A" required>
                        </div>
                      </div>
                    </div>

                    <div class="form-group">
                      <label>Email</label>
                      <input type="email" name="email" class="form-control" value="admin@example.com" required>
                    </div>

                    <div class="form-group">
                      <label>Số điện thoại</label>
                      <input type="text" name="so_dien_thoai" class="form-control" value="0901234567">
                    </div>

                    <div class="form-group">
                      <label>Múi giờ</label>
                      <select name="timezone" class="form-control">
                        <option value="Asia/Ho_Chi_Minh" selected>(GMT+07:00) Hanoi, Vietnam</option>
                        <option value="Asia/Bangkok">(GMT+07:00) Bangkok</option>
                        <!-- thêm tùy chọn khác nếu cần -->
                      </select>
                    </div>

                    <button type="submit" class="btn btn-primary">
                      <i class="fas fa-save"></i> Lưu thay đổi
                    </button>
                  </form>

                  <hr class="my-5">
                  <h4>Đổi mật khẩu</h4>
                   <?php if (isset($_SESSION['success'])) {?>
                      <div class="alert alert-info alert-dismissable">
                        <a class="panel-close close" data-dismiss="alert">×</a>
                        <i class="fa fa-coffee"></i>
                  <?php echo $_SESSION['success'] ?>
                    </div>
                  <?php }?>

                  <form action="<?php echo BASE_URL_ADMIN ?>?act=sua-mat-khau-ca-nhan-quan-tri" method="POST">
                    <div class="row">
                      <div class="col-md-4">
                        <div class="form-group">
                          <label>Mật khẩu cũ</label>
                          <input type="password" name="old_pass" class="form-control" >
                            <?php if (isset($_SESSION['error']['old_pass'])) {?>
                              <p class="text-danger"><?php echo $_SESSION['error']['old_pass'] ?></p>
                            <?php }?>
                        </div>
                      </div>

                      <div class="col-md-4">
                        <div class="form-group">
                          <label>Mật khẩu mới</label>
                          <input type="password" name="new_pass" class="form-control" >
                            <?php if (isset($_SESSION['error']['new_pass'])) {?>
                              <p class="text-danger"><?php echo $_SESSION['error']['new_pass'] ?></p>
                          <?php }?>
                        </div>
                      </div>

                      <div class="col-md-4">
                        <div class="form-group">
                          <label>Nhập lại mật khẩu mới</label>
                          <input type="password" name="confirm_pass" class="form-control"  >
                            <?php if (isset($_SESSION['error']['confirm_pass'])) {?>
                              <p class="text-danger"><?php echo $_SESSION['error']['confirm_pass'] ?></p>
                          <?php }?>
                        </div>
                      </div>

                      <div class="col-md-4">
                        <button type="submit" class="btn btn-primary">
                          <i class="fas fa-save"></i> Lưu thay đổi
                        </button>
                      </div>

                    </div>
                  </form>
                  
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</div>

<?php include './views/layout/footer.php'; ?>

<!-- BS Custom File Input -->
<script src="./plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<script>
$(function () {
  bsCustomFileInput.init();
});
</script>
</body>
</html>