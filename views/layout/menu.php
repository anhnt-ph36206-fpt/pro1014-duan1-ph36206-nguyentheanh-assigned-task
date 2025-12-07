<!-- Start Header Area -->
<header class="header-area header-wide">
    <div class="main-header d-none d-lg-block">
        <div class="header-main-area sticky">
            <div class="container">
                <div class="row align-items-center position-relative">

                    <!-- Logo Area -->
                    <div class="col-lg-2 col-md-2">
                        <div class="logo">
                            <a href="<?php echo BASE_URL ?>">
                                <img src="assets/img/cellphones-logo.png" alt="CellphoneS Logo">
                            </a>
                        </div>
                    </div>

                    <!-- Center Area: Menu & Search -->
                    <div class="col-lg-7 col-md-6">
                        <div class="header-center-area">

                            <!-- Left Menu Items -->
                            <div class="header-menu-left">
                                <!-- Danh Mục Dropdown -->
                                <div class="menu-item menu-category">
                                    <a href="#" class="menu-link">
                                        <i class="fa fa-bars"></i>
                                        <span>Danh mục</span>
                                    </a>
                                    <ul class="category-dropdown">
                                        <li><a href="<?php echo BASE_URL . '?category=dienthoai' ?>">
                                            <i class="fa fa-mobile"></i> Điện Thoại
                                        </a></li>
                                        <li><a href="<?php echo BASE_URL . '?category=laptop' ?>">
                                            <i class="fa fa-laptop"></i> Laptop
                                        </a></li>
                                        <li><a href="<?php echo BASE_URL . '?category=tablet' ?>">
                                            <i class="fa fa-tablet"></i> Tablet
                                        </a></li>
                                        <li><a href="<?php echo BASE_URL . '?category=phukien' ?>">
                                            <i class="fa fa-headphones"></i> Phụ Kiện
                                        </a></li>
                                    </ul>
                                </div>

                                <!-- Location -->
                                <div class="menu-item menu-location">
                                    <a href="#" class="menu-link">
                                        <i class="fa fa-map-marker"></i>
                                        <span>Hồ Chí Minh</span>
                                        <i class="fa fa-angle-down"></i>
                                    </a>
                                    <ul class="location-dropdown">
                                        <li><a href="#">Hà Nội</a></li>
                                        <li><a href="#">Hồ Chí Minh</a></li>
                                        <li><a href="#">Đà Nẵng</a></li>
                                        <li><a href="#">Cần Thơ</a></li>
                                    </ul>
                                </div>
                            </div>

                            <!-- Search Box -->
                            <div class="header-search-box">
                                <form action="<?php echo BASE_URL . '?act=search' ?>" method="POST">
                                    <button type="submit" class="search-btn">
                                        <i class="fa fa-search"></i>
                                    </button>
                                    <input type="text"
                                           name="search_query"
                                           placeholder="Bạn muốn mua gì hôm nay?"
                                           class="search-input">
                                </form>
                            </div>

                        </div>
                    </div>

                   <!-- Right Area: User & Cart -->
                    <div class="col-lg-3 col-md-4">
                        <div class="header-right d-flex align-items-center justify-content-end">
                            <div class="header-configure-area">
                                <ul class="nav justify-content-end align-items-center">

                                    <!-- User Menu -->
                                    <li class="user-hover position-relative">
                                        <a href="#" class="header-icon-link d-flex align-items-center">
                                            <i class="pe-7s-user me-1"></i>
                                            <span class="user-text">
                                                <?php if (isset($_SESSION['user_client'])): ?>
                                                    <?= $_SESSION['user_client']; ?>
                                                <?php else: ?>
                                                    Chào mừng
                                                <?php endif; ?>
                                            </span>
                                        </a>

                                        <!-- Dropdown -->
                                        <ul class="dropdown-list user-dropdown">
                                            <?php if (! isset($_SESSION['user_client'])): ?>

                                                <li>
                                                    <a href="<?= BASE_URL . '?act=login' ?>">
                                                        <i class="fa fa-sign-in"></i> Đăng Nhập
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="<?= BASE_URL . '?act=register' ?>">
                                                        <i class="fa fa-user-plus"></i> Đăng Ký
                                                    </a>
                                                </li>

                                            <?php else: ?>

                                                <li class="dropdown-header">
                                                    Xin chào, <strong><?= $_SESSION['user_client']; ?></strong>
                                                </li>

                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-user"></i> Tài Khoản Của Tôi
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="<?= BASE_URL . '?act=lich-su-mua-hang' ?>">
                                                        <i class="fa fa-shopping-bag"></i> Đơn Hàng
                                                    </a>
                                                </li>

                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-heart"></i> Yêu Thích
                                                    </a>
                                                </li>

                                                <li class="divider"></li>

                                                <li>
                                                    <a href="#">
                                                        <i class="fa fa-sign-out"></i> Đăng Xuất
                                                    </a>
                                                </li>

                                            <?php endif; ?>
                                        </ul>
                                    </li>

                                    <!-- Mini Cart -->
                                    <li class="ms-3">
                                        <a href="#" class="minicart-btn position-relative">
                                            <i class="pe-7s-shopbag"></i>
                                            <div class="notification">2</div>
                                        </a>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- End Header Area -->