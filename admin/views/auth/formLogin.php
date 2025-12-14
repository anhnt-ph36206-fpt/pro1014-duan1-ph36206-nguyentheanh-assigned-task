<!DOCTYPE html>
<html lang="vi">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Đăng nhập Admin</title>

  <!-- Bootstrap 5 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
  <!-- Google Font -->
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Poppins', sans-serif;
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 20px;
    }

    .login-container {
      max-width: 450px;
      width: 100%;
    }

    .login-card {
      background: #ffffff;
      border-radius: 20px;
      box-shadow: 0 20px 60px rgba(0, 0, 0, 0.3);
      overflow: hidden;
      animation: slideUp 0.5s ease;
    }

    @keyframes slideUp {
      from {
        opacity: 0;
        transform: translateY(30px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    .login-header {
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      padding: 40px 30px;
      text-align: center;
      color: white;
    }

    .login-header h1 {
      font-size: 28px;
      font-weight: 600;
      margin-bottom: 10px;
    }

    .login-header p {
      font-size: 14px;
      opacity: 0.9;
      margin: 0;
    }

    .login-body {
      padding: 40px 30px;
    }

    .alert {
      border-radius: 10px;
      border: none;
      padding: 12px 15px;
      font-size: 14px;
      margin-bottom: 20px;
    }

    .alert-danger {
      background-color: #fee;
      color: #c33;
    }

    .alert-info {
      background-color: #e7f3ff;
      color: #0066cc;
    }

    .form-group {
      margin-bottom: 25px;
    }

    .form-label {
      font-weight: 500;
      color: #333;
      margin-bottom: 8px;
      font-size: 14px;
    }

    .input-group {
      position: relative;
    }

    .input-group-icon {
      position: absolute;
      left: 15px;
      top: 50%;
      transform: translateY(-50%);
      color: #667eea;
      z-index: 10;
      font-size: 18px;
    }

    .form-control {
      height: 50px;
      border: 2px solid #e0e0e0;
      border-radius: 12px;
      padding-left: 45px;
      font-size: 15px;
      transition: all 0.3s ease;
    }

    .form-control:focus {
      border-color: #667eea;
      box-shadow: 0 0 0 0.2rem rgba(102, 126, 234, 0.15);
    }

    .form-control::placeholder {
      color: #aaa;
    }

    .btn-login {
      width: 100%;
      height: 50px;
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      border: none;
      border-radius: 12px;
      color: white;
      font-size: 16px;
      font-weight: 600;
      cursor: pointer;
      transition: all 0.3s ease;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }

    .btn-login:hover {
      transform: translateY(-2px);
      box-shadow: 0 10px 25px rgba(102, 126, 234, 0.4);
    }

    .btn-login:active {
      transform: translateY(0);
    }

    .forgot-password {
      text-align: center;
      margin-top: 20px;
    }

    .forgot-password a {
      color: #667eea;
      text-decoration: none;
      font-size: 14px;
      font-weight: 500;
      transition: color 0.3s ease;
    }

    .forgot-password a:hover {
      color: #764ba2;
      text-decoration: underline;
    }

    .password-toggle {
      position: absolute;
      right: 15px;
      top: 50%;
      transform: translateY(-50%);
      cursor: pointer;
      color: #999;
      z-index: 10;
      font-size: 18px;
      transition: color 0.3s ease;
    }

    .password-toggle:hover {
      color: #667eea;
    }

    @media (max-width: 576px) {
      .login-header h1 {
        font-size: 24px;
      }

      .login-body {
        padding: 30px 20px;
      }
    }
  </style>
</head>
<body>
  <div class="login-container">
    <div class="login-card">
      <div class="login-header">
        <h1><i class="fas fa-user-shield"></i> Admin Panel</h1>
        <p>Đăng nhập để tiếp tục</p>
      </div>

      <div class="login-body">
        <?php if (isset($_SESSION['error'])) {?>
          <div class="alert alert-danger">
            <i class="fas fa-exclamation-circle"></i>                                                      <?php echo $_SESSION['error']; ?>
          </div>
        <?php } else {?>
          <div class="alert alert-info">
            <i class="fas fa-info-circle"></i> Vui lòng đăng nhập để tiếp tục
          </div>
        <?php }?>

        <form action="<?php echo BASE_URL_ADMIN . '?act=check-login-admin'?>" method="post">
          <div class="form-group">
            <label class="form-label">Email</label>
            <div class="input-group">
              <i class="fas fa-envelope input-group-icon"></i>
              <input
                type="email"
                class="form-control"
                placeholder="Nhập email của bạn"
                name="email"
                required
              >
            </div>
          </div>

          <div class="form-group">
            <label class="form-label">Mật khẩu</label>
            <div class="input-group">
              <i class="fas fa-lock input-group-icon"></i>
              <input
                type="password"
                class="form-control"
                placeholder="Nhập mật khẩu"
                name="password"
                id="passwordInput"
                required
              >
              <i class="fas fa-eye password-toggle" id="togglePassword"></i>
            </div>
          </div>

          <button type="submit" class="btn btn-login">
            <i class="fas fa-sign-in-alt"></i> Đăng nhập
          </button>
        </form>

        <div class="forgot-password">
          <a href="#"><i class="fas fa-key"></i> Quên mật khẩu?</a>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

  <script>
    // Toggle password visibility
    const togglePassword = document.getElementById('togglePassword');
    const passwordInput = document.getElementById('passwordInput');

    togglePassword.addEventListener('click', function() {
      const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
      passwordInput.setAttribute('type', type);

      // Toggle icon
      this.classList.toggle('fa-eye');
      this.classList.toggle('fa-eye-slash');
    });
  </script>
</body>
</html>