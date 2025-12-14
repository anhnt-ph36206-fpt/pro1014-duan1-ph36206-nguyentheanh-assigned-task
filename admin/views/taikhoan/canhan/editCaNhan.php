<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Chỉnh sửa thông tin cá nhân</title>

  <!-- Bootstrap 5 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">

  <style>
    body {
      font-family: 'Inter', sans-serif;
      background: #f5f7fa;
      padding: 20px 0;
    }

    .content-wrapper {
      max-width: 1200px;
      margin: 0 auto;
      padding: 0 15px;
    }

    .page-header {
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      color: white;
      padding: 30px;
      border-radius: 15px;
      margin-bottom: 30px;
      box-shadow: 0 10px 30px rgba(102, 126, 234, 0.3);
    }

    .page-header h1 {
      margin: 0;
      font-size: 28px;
      font-weight: 600;
    }

    .page-header .breadcrumb {
      background: transparent;
      padding: 0;
      margin: 10px 0 0 0;
      font-size: 14px;
    }

    .page-header .breadcrumb-item {
      color: rgba(255, 255, 255, 0.8);
    }

    .page-header .breadcrumb-item.active {
      color: white;
    }

    .page-header .breadcrumb-item + .breadcrumb-item::before {
      color: rgba(255, 255, 255, 0.6);
    }

    .profile-card {
      background: white;
      border-radius: 20px;
      box-shadow: 0 5px 20px rgba(0, 0, 0, 0.08);
      overflow: hidden;
      margin-bottom: 30px;
    }

    .card-header-custom {
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      color: white;
      padding: 20px 30px;
      border: none;
    }

    .card-header-custom h3 {
      margin: 0;
      font-size: 20px;
      font-weight: 600;
    }

    .card-body-custom {
      padding: 40px 30px;
    }

    .profile-avatar-section {
      text-align: center;
      padding: 30px 20px;
      background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
      border-radius: 15px;
      margin-bottom: 20px;
    }

    .profile-avatar {
      width: 150px;
      height: 150px;
      border-radius: 50%;
      border: 5px solid white;
      box-shadow: 0 8px 25px rgba(0, 0, 0, 0.15);
      object-fit: cover;
      margin-bottom: 20px;
    }

    .profile-info h5 {
      font-weight: 600;
      color: #333;
      margin: 10px 0 5px 0;
      font-size: 20px;
    }

    .profile-info .badge {
      font-size: 13px;
      padding: 8px 16px;
      border-radius: 20px;
      font-weight: 500;
    }

    .form-label {
      font-weight: 600;
      color: #333;
      margin-bottom: 8px;
      font-size: 14px;
    }

    .form-control,
    .form-select {
      border: 2px solid #e0e6ed;
      border-radius: 10px;
      padding: 12px 15px;
      font-size: 15px;
      transition: all 0.3s ease;
    }

    .form-control:focus,
    .form-select:focus {
      border-color: #667eea;
      box-shadow: 0 0 0 0.2rem rgba(102, 126, 234, 0.15);
    }

    .input-group-text {
      background: #667eea;
      color: white;
      border: 2px solid #667eea;
      border-radius: 10px 0 0 10px;
    }

    .btn-primary {
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      border: none;
      border-radius: 10px;
      padding: 12px 30px;
      font-weight: 600;
      transition: all 0.3s ease;
    }

    .btn-primary:hover {
      transform: translateY(-2px);
      box-shadow: 0 10px 25px rgba(102, 126, 234, 0.4);
    }

    .alert {
      border-radius: 10px;
      border: none;
      padding: 15px 20px;
      margin-bottom: 20px;
    }

    .alert-info {
      background-color: #d1ecf1;
      color: #0c5460;
    }

    .alert-danger {
      background-color: #f8d7da;
      color: #721c24;
    }

    .alert .close {
      float: right;
      font-size: 1.5rem;
      font-weight: 700;
      line-height: 1;
      color: #000;
      text-shadow: 0 1px 0 #fff;
      opacity: .5;
      background: transparent;
      border: none;
      cursor: pointer;
    }

    .section-divider {
      border: none;
      height: 2px;
      background: linear-gradient(to right, transparent, #667eea, transparent);
      margin: 40px 0;
    }

    .section-title {
      font-size: 22px;
      font-weight: 600;
      color: #333;
      margin-bottom: 25px;
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .section-title i {
      color: #667eea;
      font-size: 24px;
    }

    .text-danger {
      font-size: 13px;
      margin-top: 5px;
    }

    @media (max-width: 768px) {
      .profile-avatar-section {
        margin-bottom: 30px;
      }

      .card-body-custom {
        padding: 25px 20px;
      }

      .page-header h1 {
        font-size: 22px;
      }
    }
  </style>
</head>
<body>

<?php require './views/layout/header.php'; ?>
<?php include './views/layout/navbar.php'; ?>
<?php include './views/layout/sidebar.php'; ?>

<div class="content-wrapper">
  <!-- Page Header -->
  <div class="page-header">
    <h1><i class="fas fa-user-cog"></i> Thông tin cá nhân quản trị</h1>
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb">
        <li class="breadcrumb-item"><i class="fas fa-home"></i> Trang chủ</li>
        <li class="breadcrumb-item active">Thông tin cá nhân</li>
      </ol>
    </nav>
  </div>

  <!-- Main Content -->
  <div class="row">
    <div class="col-12">
      <!-- Profile Card -->
      <div class="profile-card">
        <div class="card-header-custom">
          <h3><i class="fas fa-id-card"></i> Cập nhật thông tin cá nhân</h3>
        </div>

        <div class="card-body-custom">
          <div class="row">
            <!-- Avatar Section -->
            <div class="col-lg-3 col-md-4">
              <div class="profile-avatar-section">
                <img src="<?php echo BASE_URL_ADMIN . $thongTin['anh_dai_dien'] ?>"
                     class="profile-avatar"
                     alt="Avatar"
                     onerror="this.src='https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png'">

                <div class="profile-info">
                  <h5><?php echo $thongTin['ho_ten'] ?></h5>
                  <span class="badge bg-primary">
                    <i class="fas fa-user-tie"></i>                                                    <?php echo $thongTin['chuc_vu_id'] ?>
                  </span>
                </div>
              </div>
            </div>

            <!-- Form Section -->
            <div class="col-lg-9 col-md-8">
              <!-- Personal Info Form -->
              <form action="<?php echo BASE_URL_ADMIN . '?act=sua-thong-tin-ca-nhan-quan-tri' ?>" method="POST" enctype="multipart/form-data">
                <div class="row">
                  <div class="col-md-6 mb-3">
                    <label class="form-label">
                      <i class="fas fa-user"></i> Họ
                    </label>
                    <input type="text" name="ho" class="form-control" value="Nguyễn" required>
                  </div>

                  <div class="col-md-6 mb-3">
                    <label class="form-label">
                      <i class="fas fa-user"></i> Tên
                    </label>
                    <input type="text" name="ten" class="form-control" value="Văn A" required>
                  </div>
                </div>

                <div class="mb-3">
                  <label class="form-label">
                    <i class="fas fa-envelope"></i> Email
                  </label>
                  <input type="email" name="email" class="form-control" value="admin@example.com" required>
                </div>

                <div class="mb-3">
                  <label class="form-label">
                    <i class="fas fa-phone"></i> Số điện thoại
                  </label>
                  <input type="text" name="so_dien_thoai" class="form-control" value="0901234567">
                </div>

                <div class="mb-4">
                  <label class="form-label">
                    <i class="fas fa-clock"></i> Múi giờ
                  </label>
                  <select name="timezone" class="form-select">
                    <option value="Asia/Ho_Chi_Minh" selected>(GMT+07:00) Hanoi, Vietnam</option>
                    <option value="Asia/Bangkok">(GMT+07:00) Bangkok</option>
                    <option value="Asia/Singapore">(GMT+08:00) Singapore</option>
                    <option value="Asia/Tokyo">(GMT+09:00) Tokyo</option>
                  </select>
                </div>

                <button type="submit" class="btn btn-primary">
                  <i class="fas fa-save"></i> Lưu thay đổi
                </button>
              </form>

              <!-- Section Divider -->
              <hr class="section-divider">

              <!-- Change Password Section -->
              <div class="section-title">
                <i class="fas fa-key"></i> Đổi mật khẩu
              </div>

              <?php if (isset($_SESSION['success'])) {?>
                <div class="alert alert-info alert-dismissible">
                  <button type="button" class="close" data-bs-dismiss="alert">&times;</button>
                  <i class="fas fa-check-circle"></i>                                                      <?php echo $_SESSION['success'] ?>
                </div>
              <?php }?>

              <form action="<?php echo BASE_URL_ADMIN ?>?act=sua-mat-khau-ca-nhan-quan-tri" method="POST">
                <div class="row">
                  <div class="col-md-4 mb-3">
                    <label class="form-label">
                      <i class="fas fa-lock"></i> Mật khẩu cũ
                    </label>
                    <input type="password" name="old_pass" class="form-control" placeholder="Nhập mật khẩu cũ">
                    <?php if (isset($_SESSION['error']['old_pass'])) {?>
                      <p class="text-danger">
                        <i class="fas fa-exclamation-circle"></i>                                                                  <?php echo $_SESSION['error']['old_pass'] ?>
                      </p>
                    <?php }?>
                  </div>

                  <div class="col-md-4 mb-3">
                    <label class="form-label">
                      <i class="fas fa-lock"></i> Mật khẩu mới
                    </label>
                    <input type="password" name="new_pass" class="form-control" placeholder="Nhập mật khẩu mới">
                    <?php if (isset($_SESSION['error']['new_pass'])) {?>
                      <p class="text-danger">
                        <i class="fas fa-exclamation-circle"></i>                                                                  <?php echo $_SESSION['error']['new_pass'] ?>
                      </p>
                    <?php }?>
                  </div>

                  <div class="col-md-4 mb-3">
                    <label class="form-label">
                      <i class="fas fa-lock"></i> Nhập lại mật khẩu mới
                    </label>
                    <input type="password" name="confirm_pass" class="form-control" placeholder="Xác nhận mật khẩu">
                    <?php if (isset($_SESSION['error']['confirm_pass'])) {?>
                      <p class="text-danger">
                        <i class="fas fa-exclamation-circle"></i>                                                                  <?php echo $_SESSION['error']['confirm_pass'] ?>
                      </p>
                    <?php }?>
                  </div>
                </div>

                <button type="submit" class="btn btn-primary">
                  <i class="fas fa-key"></i> Đổi mật khẩu
                </button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<?php include './views/layout/footer.php'; ?>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>