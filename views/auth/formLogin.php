<?php require_once 'views/layout/header.php'; ?>
<?php require_once 'views/layout/menu.php'; ?>

<main>
    <!-- breadcrumb area start -->
    <div class="breadcrumb-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-wrap">
                        <nav aria-label="breadcrumb">
                            <ul class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.html"><i class="fa fa-home"></i></a></li>
                                <li class="breadcrumb-item active" aria-current="page">Đăng Nhập</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- login register wrapper start -->
    <div class="login-register-wrapper section-padding">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-5 col-md-7">
                    <div class="card shadow-lg border-0 rounded-lg">
                        <div class="card-body p-5">
                            <!-- Logo or Icon -->
                            <div class="text-center mb-4">
                                <div class="bg-primary bg-gradient rounded-circle d-inline-flex align-items-center justify-content-center" style="width: 80px; height: 80px;">
                                    <i class="fa fa-user text-white" style="font-size: 40px;"></i>
                                </div>
                            </div>

                            <!-- Title -->
                            <h4 class="text-center fw-bold mb-2">Chào Mừng Trở Lại</h4>
                            
                            <!-- Message Alert -->
                            <?php if (isset($_SESSION['error'])) { ?>
                                <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                    <i class="fa fa-exclamation-circle me-2"></i><?= $_SESSION['error'] ?>
                                    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                </div>
                            <?php } else { ?>
                                <p class="text-center text-muted mb-4">Vui lòng đăng nhập để tiếp tục</p>
                            <?php } ?>

                            <!-- Login Form -->
                            <form action="<?= BASE_URL . '?act=check-login' ?>" method="post">
                                <!-- Email Input -->
                                <div class="mb-3">
                                    <label for="email" class="form-label fw-semibold">
                                        <i class="fa fa-envelope me-2 text-primary"></i>Email
                                    </label>
                                    <input 
                                        type="email" 
                                        class="form-control form-control-lg" 
                                        id="email"
                                        name="email" 
                                        placeholder="Nhập email của bạn"
                                        required 
                                    />
                                </div>

                                <!-- Password Input -->
                                <div class="mb-3">
                                    <label for="password" class="form-label fw-semibold">
                                        <i class="fa fa-lock me-2 text-primary"></i>Mật Khẩu
                                    </label>
                                    <input 
                                        type="password" 
                                        class="form-control form-control-lg" 
                                        id="password"
                                        name="password" 
                                        placeholder="Nhập mật khẩu"
                                        required 
                                    />
                                </div>

                                <!-- Remember & Forgot Password -->
                                <div class="d-flex justify-content-between align-items-center mb-4">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="remember">
                                        <label class="form-check-label text-muted small" for="remember">
                                            Ghi nhớ đăng nhập
                                        </label>
                                    </div>
                                    <a href="#" class="text-decoration-none small text-primary fw-semibold">
                                        Quên mật khẩu?
                                    </a>
                                </div>

                                <!-- Submit Button -->
                                <div class="d-grid mb-3">
                                    <button type="submit" class="btn btn-primary btn-lg fw-semibold py-3">
                                        <i class="fa fa-sign-in me-2"></i>Đăng Nhập
                                    </button>
                                </div>

                                <!-- Divider -->
                                <div class="text-center mb-3">
                                    <span class="text-muted small">hoặc đăng nhập với</span>
                                </div>

                                <!-- Social Login Buttons -->
                                <div class="row g-2 mb-4">
                                    <div class="col-6">
                                        <button type="button" class="btn btn-outline-danger w-100">
                                            <i class="fa fa-google me-2"></i>Google
                                        </button>
                                    </div>
                                    <div class="col-6">
                                        <button type="button" class="btn btn-outline-primary w-100">
                                            <i class="fa fa-facebook me-2"></i>Facebook
                                        </button>
                                    </div>
                                </div>

                                <!-- Register Link -->
                                <div class="text-center">
                                    <span class="text-muted">Chưa có tài khoản? </span>
                                    <a href="#" class="text-primary fw-semibold text-decoration-none">
                                        Đăng ký ngay
                                    </a>
                                </div>
                            </form>
                        </div>
                    </div>

                    <!-- Security Note -->
                    <div class="text-center mt-4">
                        <p class="text-muted small mb-0">
                            <i class="fa fa-shield me-2"></i>Thông tin của bạn được bảo mật tuyệt đối
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- login register wrapper end -->
</main>

<?php require_once 'views/layout/miniCart.php'; ?>
<?php require_once 'views/layout/footer.php'; ?>