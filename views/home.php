<?php require_once 'layout/header.php'; ?>
<?php require_once 'layout/menu.php'; ?>

    <main style="padding-top: 20px;">
        <!-- hero slider area start -->
        <section class="slider-area py-3">
            <div class="container">
                <div id="heroCarousel" class="carousel slide rounded overflow-hidden" data-bs-ride="carousel">
                    <!-- Indicators/dots -->
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="0" class="active"></button>
                        <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="1"></button>
                        <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="2"></button>
                        <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="3"></button>
                        <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="4"></button>
                        <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="5"></button>
                        <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="6"></button>
                        <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="7"></button>
                        <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="8"></button>
                    </div>

                    <!-- Slides -->
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="assets/img/slider/slider1.png" class="d-block w-100" alt="Slide 1">
                        </div>
                        <div class="carousel-item">
                            <img src="assets/img/slider/slider2.png" class="d-block w-100" alt="Slide 2">
                        </div>
                        <div class="carousel-item">
                            <img src="assets/img/slider/slider3.png" class="d-block w-100" alt="Slide 3">
                        </div>
                        <div class="carousel-item">
                            <img src="assets/img/slider/slider4.png" class="d-block w-100" alt="Slide 4">
                        </div>
                        <div class="carousel-item">
                            <img src="assets/img/slider/slider5.png" class="d-block w-100" alt="Slide 5">
                        </div>
                        <div class="carousel-item">
                            <img src="assets/img/slider/slider6.png" class="d-block w-100" alt="Slide 6">
                        </div>
                        <div class="carousel-item">
                            <img src="assets/img/slider/slider7.png" class="d-block w-100" alt="Slide 7">
                        </div>
                        <div class="carousel-item">
                            <img src="assets/img/slider/slider8.png" class="d-block w-100" alt="Slide 8">
                        </div>
                        <div class="carousel-item">
                            <img src="assets/img/slider/slider9.png" class="d-block w-100" alt="Slide 9">
                        </div>
                    </div>

                    <!-- Controls/Arrows -->
                    <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>
        </section>
        <!-- hero slider area end -->

        <!-- banner statistics area start -->
        <div class="banner-statistics-area py-4">
            <div class="container">
                <div class="row g-3 g-md-4">
                    <!-- Banner 1 -->
                        <div class="col-md-6">
                            <div class="banner-card position-relative overflow-hidden rounded-3 h-100">
                                    <a href="#" class="d-block h-100">
                                        <img src="assets/img/banner/banner1.png" alt="Product Banner" class="w-100 h-100 object-fit-cover">
                                        <div class="banner-overlay"></div>
                                    </a>
                                    <div class="banner-content-wrapper position-absolute w-100 h-100 top-0 start-0">

                                        <!-- <div class="hot-center position-absolute top-50 start-50 translate-middle text-center">
                                            <p class="hot-label text-uppercase mb-0 text-white" style="font-size: 2rem; font-weight: 700; letter-spacing: 3px;">Hot</p>
                                        </div> -->

                                        <div class="shop-bottom position-absolute bottom-0 start-50 translate-middle-x text-center pb-2">
                                            <a href="<?php echo BASE_URL ?>" class="btn btn-light btn-sm px-4 rounded-pill">
                                                MUA NGAY
                                            </a>
                                        </div>
                                    </div>
                                </div>
                        </div>
                    <!-- Banner 2 -->
                        <div class="col-md-6">
                            <div class="banner-card position-relative overflow-hidden rounded-3 h-100">
                                    <a href="#" class="d-block h-100">
                                        <img src="assets/img/banner/banner2.png" alt="Product Banner" class="w-100 h-100 object-fit-cover">
                                        <div class="banner-overlay"></div>
                                    </a>
                                    <div class="banner-content-wrapper position-absolute w-100 h-100 top-0 start-0">

                                        <!-- <div class="hot-center position-absolute top-50 start-50 translate-middle text-center">
                                            <p class="hot-label text-uppercase mb-0 text-white" style="font-size: 2rem; font-weight: 700; letter-spacing: 3px;">Hot</p>
                                        </div> -->

                                        <div class="shop-bottom position-absolute bottom-0 start-50 translate-middle-x text-center pb-2">
                                            <a href="<?php echo BASE_URL ?>" class="btn btn-light btn-sm px-4 rounded-pill">
                                                MUA NGAY
                                            </a>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    <!-- Banner 3 -->
                        <div class="col-md-6">
                            <div class="banner-card position-relative overflow-hidden rounded-3 h-100">
                                    <a href="#" class="d-block h-100">
                                        <img src="assets/img/banner/banner3.png" alt="Product Banner" class="w-100 h-100 object-fit-cover">
                                        <div class="banner-overlay"></div>
                                    </a>
                                    <div class="banner-content-wrapper position-absolute w-100 h-100 top-0 start-0">

                                        <!-- <div class="hot-center position-absolute top-50 start-50 translate-middle text-center">
                                            <p class="hot-label text-uppercase mb-0 text-white" style="font-size: 2rem; font-weight: 700; letter-spacing: 3px;">Hot</p>
                                        </div> -->

                                        <div class="shop-bottom position-absolute bottom-0 start-50 translate-middle-x text-center pb-2">
                                            <a href="<?php echo BASE_URL ?>" class="btn btn-light btn-sm px-4 rounded-pill">
                                                MUA NGAY
                                            </a>
                                        </div>
                                    </div>
                            </div>
                        </div>
                    <!-- Banner 4 -->
                        <div class="col-md-6">
                            <div class="banner-card position-relative overflow-hidden rounded-3 h-100">
                                    <a href="#" class="d-block h-100">
                                        <img src="assets/img/banner/banner4.png" alt="Product Banner" class="w-100 h-100 object-fit-cover">
                                        <div class="banner-overlay"></div>
                                    </a>
                                    <div class="banner-content-wrapper position-absolute w-100 h-100 top-0 start-0">

                                        <!-- <div class="hot-center position-absolute top-50 start-50 translate-middle text-center">
                                            <p class="hot-label text-uppercase mb-0 text-white" style="font-size: 2rem; font-weight: 700; letter-spacing: 3px;">Hot</p>
                                        </div> -->

                                        <div class="shop-bottom position-absolute bottom-0 start-50 translate-middle-x text-center pb-2">
                                            <a href="<?php echo BASE_URL ?>" class="btn btn-light btn-sm px-4 rounded-pill">
                                                MUA NGAY
                                            </a>
                                        </div>
                                    </div>
                            </div>
                        </div>
                </div>
            </div>
        </div>
        <!-- banner statistics area end -->
        <?php if (isset($_SESSION['error'])): ?>
        <script>
            alert("<?php echo $_SESSION['error'] ?>");
        </script>
        <?php unset($_SESSION['error']); ?>
        <?php endif; ?>

        <!-- product area start -->
        <section class="product-area section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- section title start -->
                        <div class="section-title text-center">
                            <h2 class="title">Sản Phẩm Nổi Bật Và Mới Nhất Của Chúng Tôi</h2>
                            <p class="sub-title">Các Sản Phẩm Luôn Được Cập Nhật Liên Tục .</p>
                        </div>
                        <!-- section title start -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="product-container">
                            <!-- product tab content start -->
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="tab1">
                                    <div class="product-carousel-4_2 slick-row-10 slick-arrow-style">
                                    <!-- product item start -->
                                    <?php foreach ($listSanPham as $key => $sanPham) {?>
                                    <div class="product-item">
                                        <figure class="product-thumb">
                                            <a href="<?php echo BASE_URL . '?act=chi-tiet-san-pham&id_san_pham=' . $sanPham['id'] ?>">
                                                <img class="pri-img" src="<?php echo BASE_URL . $sanPham['hinh_anh'] ?>" alt="product">
                                                <img class="sec-img" src="<?php echo BASE_URL . $sanPham['hinh_anh'] ?>" alt="product">
                                            </a>

                                            <div class="product-badge">
                                                <?php
                                                    $ngayNhap    = new DateTime($sanPham['ngay_nhap']);
                                                        $ngayHienTai = new DateTime;
                                                        $tinhNgay    = $ngayHienTai->diff($ngayNhap);

                                                        if ($tinhNgay->days <= 7) {
                                                        ?>
                                                        <div class="product-label new">
                                                            <span>Mới</span>
                                                        </div>
                                                    <?php }?>

                                                    <?php if ($sanPham['gia_khuyen_mai']) {
                                                                $phanTramGiam = round((($sanPham['gia_san_pham'] - $sanPham['gia_khuyen_mai']) / $sanPham['gia_san_pham']) * 100);
                                                            ?>
                                                        <div class="product-label discount">
                                                            <span>Giảm                                                                                                                                                                                                                                                                                                                                                                         <?php echo $phanTramGiam ?>%</span>
                                                        </div>
                                                    <?php }?>
                                                </div>

                                            <div class="cart-hover">
                                                <a href="<?php echo BASE_URL . '?act=chi-tiet-san-pham&id_san_pham=' . $sanPham['id'] ?>" class="btn btn-cart" type="button">Xem Chi Tiết</a>
                                            </div>
                                        </figure>

                                        <div class="product-caption">
                                            <h6 class="product-name">
                                                <a href="<?php echo BASE_URL . '?act=chi-tiet-san-pham&id_san_pham=' . $sanPham['id'] ?>">
                                                    <?php echo $sanPham['ten_san_pham'] ?>
                                                </a>
                                            </h6>

                                            <div class="price-box">
                                                <?php if ($sanPham['gia_khuyen_mai']) {?>
                                                    <span class="price-regular"><?php echo formatPrice($sanPham['gia_khuyen_mai']) ?></span>
                                                    <span class="price-old"><del><?php echo formatPrice($sanPham['gia_san_pham']) ?></del></span>
                                                <?php } else {?>
                                                    <span class="price-regular"><?php echo formatPrice($sanPham['gia_san_pham']) ?></span>
                                                <?php }?>
                                            </div>

                                            <div class="product-benefits">
                                                <div class="benefit-item">
                                                    <span class="benefit-label">Siêu thành viên giảm đến 10%</span>
                                                </div>
                                                <div class="benefit-item">
                                                    <span class="benefit-label">Trả góp 0đ - 0Đ phụ thu - 0đ trả trước - Kỳ hạn đến 6 tháng</span>
                                                </div>
                                            </div>

                                            <div class="product-footer">
                                                <div class="product-rating">
                                                    <span class="star-rating">★ 4.9</span>
                                                </div>
                                                <button class="btn-favorite">♥ Yêu thích</button>
                                            </div>
                                        </div>
                                    </div>
                                    <?php }?>
                                    </div>
                                </div>
                            </div>
                            <!-- product tab content end -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- product area end -->

        <!-- product banner statistics area start -->
        <section class="product-banner-statistics">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <div class="product-banner-wrapper">
                            <div class="product-banner-carousel slick-row-10">
                                <!-- banner single slide start -->
                                <div class="banner-slide-item">
                                    <figure class="banner-statistics">
                                        <a href="#" class="banner-link">
                                            <img src="assets/img/banner/banner-sub1.png" alt="Vòng tay">
                                            <div class="banner-overlay"></div>
                                        </a>
                                        <!-- <div class="banner-content">
                                            <h5 class="banner-text"><a href="#">VÒNG TAY</a></h5>
                                        </div> -->
                                    </figure>
                                </div>
                                <!-- banner single slide end -->

                                <!-- banner single slide start -->
                                <div class="banner-slide-item">
                                    <figure class="banner-statistics">
                                        <a href="#" class="banner-link">
                                            <img src="assets/img/banner/banner-sub2.png" alt="Bông tai">
                                            <div class="banner-overlay"></div>
                                        </a>
                                        <!-- <div class="banner-content">
                                            <h5 class="banner-text"><a href="#">BÔNG TAI</a></h5>
                                        </div> -->
                                    </figure>
                                </div>
                                <!-- banner single slide end -->

                                <!-- banner single slide start -->
                                <div class="banner-slide-item">
                                    <figure class="banner-statistics">
                                        <a href="#" class="banner-link">
                                            <img src="assets/img/banner/banner-sub3.png" alt="Dây chuyền">
                                            <div class="banner-overlay"></div>
                                        </a>
                                        <!-- <div class="banner-content">
                                            <h5 class="banner-text"><a href="#">DÂY CHUYỀN</a></h5>
                                        </div> -->
                                    </figure>
                                </div>
                                <!-- banner single slide end -->

                                <!-- banner single slide start -->
                                <div class="banner-slide-item">
                                    <figure class="banner-statistics">
                                        <a href="#" class="banner-link">
                                            <img src="assets/img/banner/banner-sub4.png" alt="Nhẫn">
                                            <div class="banner-overlay"></div>
                                        </a>
                                        <!-- <div class="banner-content">
                                            <h5 class="banner-text"><a href="#">NHẪN</a></h5>
                                        </div> -->
                                    </figure>
                                </div>
                                <!-- banner single slide end -->

                                <!-- banner single slide start -->
                                <div class="banner-slide-item">
                                    <figure class="banner-statistics">
                                        <a href="#" class="banner-link">
                                            <img src="assets/img/banner/banner-sub5.png" alt="Ngọc trai">
                                            <div class="banner-overlay"></div>
                                        </a>
                                        <!-- <div class="banner-content">
                                            <h5 class="banner-text"><a href="#">NGỌC TRAI</a></h5>
                                        </div> -->
                                    </figure>
                                </div>
                                <!-- banner single slide end -->

                                 <!-- banner single slide start -->
                                <div class="banner-slide-item">
                                    <figure class="banner-statistics">
                                        <a href="#" class="banner-link">
                                            <img src="assets/img/banner/banner-sub6.png" alt="Ngọc trai">
                                            <div class="banner-overlay"></div>
                                        </a>
                                        <!-- <div class="banner-content">
                                            <h5 class="banner-text"><a href="#">NGỌC TRAI</a></h5>
                                        </div> -->
                                    </figure>
                                </div>
                                <!-- banner single slide end -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- product banner statistics area end -->

        <!-- featured product area start -->
        <!--  -->
        <!-- featured product area end -->

        <!-- service policy area start -->
        <div class="service-policy section-padding">
            <div class="container">
                <div class="row g-4">
                    <div class="col-sm-6 col-lg-3">
                        <div class="policy-item">
                            <div class="policy-icon">
                                <i class="pe-7s-plane"></i>
                            </div>
                            <div class="policy-content">
                                <h6>Giao Hàng</h6>
                                <p>Miễn Phí Giao Hàng</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="policy-item">
                            <div class="policy-icon">
                                <i class="pe-7s-help2"></i>
                            </div>
                            <div class="policy-content">
                                <h6>Hỗ Trợ</h6>
                                <p>Hỗ Trợ 24/7</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="policy-item">
                            <div class="policy-icon">
                                <i class="pe-7s-back"></i>
                            </div>
                            <div class="policy-content">
                                <h6>Hoàn Tiền</h6>
                                <p>Hoàn Tiền Trong 30 Ngày</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3">
                        <div class="policy-item">
                            <div class="policy-icon">
                                <i class="pe-7s-credit"></i>
                            </div>
                            <div class="policy-content">
                                <h6>Thanh Toán</h6>
                                <p>An Toàn & Bảo Mật</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- service policy area end -->

        <!-- suggested product area start -->
        <section class="product-area section-padding" style="background-color: #f9f9f9;">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- section title start -->
                        <div class="section-title text-center">
                            <h2 class="title">Gợi Ý Cho Bạn</h2>
                            <p class="sub-title">Những Sản Phẩm Tốt Nhất Dành Riêng Cho Bạn</p>
                        </div>
                        <!-- section title start -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="product-container">
                            <!-- product tab content start -->
                            <div class="tab-content">
                                <div class="tab-pane fade show active" id="tab_suggest">
                                    <div class="product-carousel-4_2 slick-row-10 slick-arrow-style">
                                    <!-- product item start -->
                                    <?php foreach ($listSanPham as $key => $sanPham) {?>
                                    <div class="product-item">
                                        <figure class="product-thumb">
                                            <a href="<?php echo BASE_URL . '?act=chi-tiet-san-pham&id_san_pham=' . $sanPham['id'] ?>">
                                                <img class="pri-img" src="<?php echo BASE_URL . $sanPham['hinh_anh'] ?>" alt="product">
                                                <img class="sec-img" src="<?php echo BASE_URL . $sanPham['hinh_anh'] ?>" alt="product">
                                            </a>

                                            <div class="product-badge">
                                                <?php
                                                    $ngayNhap    = new DateTime($sanPham['ngay_nhap']);
                                                        $ngayHienTai = new DateTime;
                                                        $tinhNgay    = $ngayHienTai->diff($ngayNhap);

                                                        if ($tinhNgay->days <= 7) {
                                                        ?>
                                                        <div class="product-label new">
                                                            <span>Mới</span>
                                                        </div>
                                                    <?php }?>

                                                    <?php if ($sanPham['gia_khuyen_mai']) {
                                                                $phanTramGiam = round((($sanPham['gia_san_pham'] - $sanPham['gia_khuyen_mai']) / $sanPham['gia_san_pham']) * 100);
                                                            ?>
                                                        <div class="product-label discount">
                                                            <span>Giảm                                                                                                                                                                                                                                                                                                 <?php echo $phanTramGiam ?>%</span>
                                                        </div>
                                                    <?php }?>
                                                </div>

                                            <div class="cart-hover">
                                                <a href="<?php echo BASE_URL . '?act=chi-tiet-san-pham&id_san_pham=' . $sanPham['id'] ?>" class="btn btn-cart" type="button">Xem Chi Tiết</a>
                                            </div>
                                        </figure>

                                        <div class="product-caption">
                                            <h6 class="product-name">
                                                <a href="<?php echo BASE_URL . '?act=chi-tiet-san-pham&id_san_pham=' . $sanPham['id'] ?>">
                                                    <?php echo $sanPham['ten_san_pham'] ?>
                                                </a>
                                            </h6>

                                            <div class="price-box">
                                                <?php if ($sanPham['gia_khuyen_mai']) {?>
                                                    <span class="price-regular"><?php echo formatPrice($sanPham['gia_khuyen_mai']) ?></span>
                                                    <span class="price-old"><del><?php echo formatPrice($sanPham['gia_san_pham']) ?></del></span>
                                                <?php } else {?>
                                                    <span class="price-regular"><?php echo formatPrice($sanPham['gia_san_pham']) ?></span>
                                                <?php }?>
                                            </div>

                                            <div class="product-benefits">
                                                <div class="benefit-item">
                                                    <span class="benefit-label">Siêu thành viên giảm đến 10%</span>
                                                </div>
                                                <div class="benefit-item">
                                                    <span class="benefit-label">Trả góp 0đ - 0Đ phụ thu - 0đ trả trước - Kỳ hạn đến 6 tháng</span>
                                                </div>
                                            </div>

                                            <div class="product-footer">
                                                <div class="product-rating">
                                                    <span class="star-rating">★ 4.9</span>
                                                </div>
                                                <button class="btn-favorite">♥ Yêu thích</button>
                                            </div>
                                        </div>
                                    </div>
                                    <?php }?>
                                    </div>
                                </div>
                            </div>
                            <!-- product tab content end -->
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- suggested product area end -->

        <!-- group product start -->
        <?php
            $listDienThoai = [];
            $listLaptop    = [];
            foreach ($listSanPham as $sp) {
                // Basic text matching for categories. Adjust if database values differ.
                if (isset($sp['ten_danh_muc']) && (stripos($sp['ten_danh_muc'], 'Điện Thoại') !== false || stripos($sp['ten_danh_muc'], 'Phone') !== false)) {
                    $listDienThoai[] = $sp;
                } elseif (isset($sp['ten_danh_muc']) && stripos($sp['ten_danh_muc'], 'Laptop') !== false) {
                    $listLaptop[] = $sp;
                }
            }
            // Fallback if empty (e.g. if category names don't match exactly)
            if (empty($listDienThoai)) {
                $listDienThoai = array_slice($listSanPham, 0, 8);
            }

            if (empty($listLaptop)) {
                $listLaptop = array_reverse($listSanPham);
            }

        ?>

        <section class="smartwatch-section py-5 section-padding">
            <div class="container">
                <div class="row g-4">
                <!-- Left: Image Carousel -->
                <div class="col-lg-3">
                    <div id="smartwatchCarousel" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner rounded-3 overflow-hidden">
                        <div class="carousel-item active">
                        <img src="assets/img/banner/banner-sub1.png" class="d-block w-100" alt="Banner 1">
                        </div>
                        <div class="carousel-item">
                        <img src="assets/img/banner/banner-sub2.png" class="d-block w-100" alt="Banner 2">
                        </div>
                        <div class="carousel-item">
                        <img src="assets/img/banner/banner-sub3.png" class="d-block w-100" alt="Banner 3">
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#smartwatchCarousel" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon"></span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#smartwatchCarousel" data-bs-slide="next">
                        <span class="carousel-control-next-icon"></span>
                    </button>
                    </div>
                    <!-- Sidebar Info -->
                    <div class="bg-light-blue rounded-3 p-4 sidebar-promo-box text-center">
                    <h5 class="fw-bold text-primary mb-3">Sản Phẩm Hot</h5>
                    <div class="bg-primary text-white rounded-2 p-3 mb-3">
                        <p class="text-muted mb-1 small text-white-50">Giảm giá lên đến</p>
                        <h3 class="fw-bold mb-0">30%</h3>
                    </div>
                    <a href="?act=list-product" class="btn btn-primary w-100 rounded-2 fw-bold">XEM NGAY</a>
                    </div>

                </div>

                <!-- Right: Products -->
                <div class="col-lg-9">
                    <!-- Header -->
                    <div class="d-flex justify-content-between align-items-center mb-4 pb-3 border-bottom border-danger border-3">
                    <h2 class="fw-bold mb-0">Danh mục sản phẩm nổi bật</h2>
                    <span class="text-muted">CÔNG NGHỆ</span>
                    </div>

                    <!-- Tabs: Phone / Laptop -->
                    <ul class="nav nav-tabs mb-4" id="deviceTabs" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active fw-bold" id="phone-tab" data-bs-toggle="tab" data-bs-target="#phone" type="button" role="tab">
                        Điện Thoại
                        </button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link fw-bold" id="laptop-tab" data-bs-toggle="tab" data-bs-target="#laptop" type="button" role="tab">
                        Laptop
                        </button>
                    </li>
                    </ul>

                    <!-- Tab Content -->
                    <div class="tab-content" id="deviceTabsContent">
                        <!-- Phone Tab -->
                        <div class="tab-pane fade show active" id="phone" role="tabpanel">
                            <div class="row g-3">
                                <?php foreach (array_slice($listSanPhamDienThoai, 0, 8) as $sanPham): ?>
                                <div class="col-md-6 col-lg-3">
                                    <div class="product-card h-100 bg-white rounded p-2">
                                        <div class="product-image mb-2 position-relative">
                                            <?php if ($sanPham['gia_khuyen_mai']): ?>
<?php $percent = round((($sanPham['gia_san_pham'] - $sanPham['gia_khuyen_mai']) / $sanPham['gia_san_pham']) * 100); ?>
                                                <span class="badge bg-danger position-absolute top-2 start-2">Giảm<?php echo $percent ?>%</span>
                                            <?php endif; ?>
                                            <a href="<?php echo BASE_URL . '?act=chi-tiet-san-pham&id_san_pham=' . $sanPham['id'] ?>">
                                                <img src="<?php echo BASE_URL . $sanPham['hinh_anh'] ?>" class="w-100 rounded-2" alt="<?php echo $sanPham['ten_san_pham'] ?>">
                                            </a>
                                        </div>
                                        <h6 class="fw-bold small mb-2 product-name-truncate">
                                            <a href="<?php echo BASE_URL . '?act=chi-tiet-san-pham&id_san_pham=' . $sanPham['id'] ?>" class="text-dark text-decoration-none">
                                                <?php echo $sanPham['ten_san_pham'] ?>
                                            </a>
                                        </h6>
                                        <div class="price-box">
                                            <?php if ($sanPham['gia_khuyen_mai']): ?>
                                                <p class="text-danger fw-bold mb-1"><?php echo formatPrice($sanPham['gia_khuyen_mai']) ?></p>
                                                <small class="text-muted text-decoration-line-through"><?php echo formatPrice($sanPham['gia_san_pham']) ?></small>
                                            <?php else: ?>
                                                <p class="text-danger fw-bold mb-1"><?php echo formatPrice($sanPham['gia_san_pham']) ?></p>
                                            <?php endif; ?>
                                        </div>

                                        <div class="product-benefits">
                                                <div class="benefit-item">
                                                    <span class="benefit-label">Siêu thành viên giảm đến 10%</span>
                                                </div>
                                                <div class="benefit-item">
                                                    <span class="benefit-label">Trả góp 0đ - 0Đ phụ thu - 0đ trả trước - Kỳ hạn đến 6 tháng</span>
                                                </div>
                                            </div>

                                            <div class="product-footer">
                                                <div class="product-rating">
                                                    <span class="star-rating">★ 4.9</span>
                                                </div>
                                                <button class="btn-favorite">♥ Yêu thích</button>
                                            </div>
                                    </div>
                                </div>
                                <?php endforeach; ?>
                            </div>
                        </div>

                        <!-- Laptop Tab -->
                        <div class="tab-pane fade" id="laptop" role="tabpanel">
                            <div class="row g-3">
                                   <?php foreach (array_slice($listSanPhamLaptop, 0, 8) as $sanPham): ?>
                                <div class="col-md-6 col-lg-3">
                                    <div class="product-card h-100 bg-white rounded p-2">
                                        <div class="product-image mb-2 position-relative">
                                            <?php if ($sanPham['gia_khuyen_mai']): ?>
<?php $percent = round((($sanPham['gia_san_pham'] - $sanPham['gia_khuyen_mai']) / $sanPham['gia_san_pham']) * 100); ?>
                                                <span class="badge bg-danger position-absolute top-2 start-2">Giảm<?php echo $percent ?>%</span>
                                            <?php endif; ?>
                                            <a href="<?php echo BASE_URL . '?act=chi-tiet-san-pham&id_san_pham=' . $sanPham['id'] ?>">
                                                <img src="<?php echo BASE_URL . $sanPham['hinh_anh'] ?>" class="w-100 rounded-2" alt="<?php echo $sanPham['ten_san_pham'] ?>">
                                            </a>
                                        </div>
                                        <h6 class="fw-bold small mb-2 product-name-truncate">
                                            <a href="<?php echo BASE_URL . '?act=chi-tiet-san-pham&id_san_pham=' . $sanPham['id'] ?>" class="text-dark text-decoration-none">
                                                <?php echo $sanPham['ten_san_pham'] ?>
                                            </a>
                                        </h6>
                                        <div class="price-box">
                                            <?php if ($sanPham['gia_khuyen_mai']): ?>
                                                <p class="text-danger fw-bold mb-1"><?php echo formatPrice($sanPham['gia_khuyen_mai']) ?></p>
                                                <small class="text-muted text-decoration-line-through"><?php echo formatPrice($sanPham['gia_san_pham']) ?></small>
                                            <?php else: ?>
                                                <p class="text-danger fw-bold mb-1"><?php echo formatPrice($sanPham['gia_san_pham']) ?></p>
                                            <?php endif; ?>
                                        </div>

                                        <div class="product-benefits">
                                                <div class="benefit-item">
                                                    <span class="benefit-label">Siêu thành viên giảm đến 10%</span>
                                                </div>
                                                <div class="benefit-item">
                                                    <span class="benefit-label">Trả góp 0đ - 0Đ phụ thu - 0đ trả trước - Kỳ hạn đến 6 tháng</span>
                                                </div>
                                            </div>

                                            <div class="product-footer">
                                                <div class="product-rating">
                                                    <span class="star-rating">★ 4.9</span>
                                                </div>
                                                <button class="btn-favorite">♥ Yêu thích</button>
                                            </div>
                                    </div>
                                </div>
                                <?php endforeach; ?>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </section>
        <!-- group product end -->

        <!-- latest blog area start -->
        <section class="latest-blog-area section-padding mt-5 mb-5">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <!-- section title start -->
                        <div class="section-title text-center">
                            <h2 class="title">Các bài viết nổi bật</h2>
                            <p class="sub-title">Chúng tôi sẽ liên tục cập nhật các thông tin mới nhất</p>
                        </div>
                        <!-- section title start -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="blog-carousel-active slick-row-10 slick-arrow-style">

                            <!-- blog post item start -->
                            <div class="blog-post-item">
                                <figure class="blog-thumb">
                                    <a href="https://cellphones.com.vn/sforum/ro-ri-pin-honor-x80">
                                        <img src="assets/img/blogs/blogs1.jpg" alt="pin-honor-x80">
                                    </a>
                                </figure>
                                <div class="blog-content">
                                    <div class="blog-meta">
                                        <p>25/03/2024 | <a href="#">Công Nghệ</a></p>
                                    </div>
                                    <h5 class="blog-title">
                                        <a href="https://cellphones.com.vn/sforum/ro-ri-pin-honor-x80">HONOR X80 đạt chứng nhận quan trọng, xác nhận có pin khủng 10000 mAh</a>
                                    </h5>
                                </div>
                            </div>
                            <!-- blog post item end -->

                            <!-- blog post item start -->
                            <div class="blog-post-item">
                                <figure class="blog-thumb">
                                    <a href="https://cellphones.com.vn/sforum/honor-x9d-5g-ra-mat-viet-nam">
                                        <img src="assets/img/blogs/blogs2.jpg" alt="iPhone 15 Pro Max Tips">
                                    </a>
                                </figure>
                                <div class="blog-content">
                                    <div class="blog-meta">
                                        <p>24/03/2024 | <a href="#">Mẹo vặt</a></p>
                                    </div>
                                    <h5 class="blog-title">
                                        <a href="https://cellphones.com.vn/sforum/honor-x9d-5g-ra-mat-viet-nam">HONOR X9d 5G chính thức ra mắt cùng loạt hoạt động náo nhiệt tại Đại Lộ Lê Lợi!</a>
                                    </h5>
                                </div>
                            </div>
                            <!-- blog post item end -->

                            <!-- blog post item start -->
                            <div class="blog-post-item">
                                <figure class="blog-thumb">
                                    <a href="https://cellphones.com.vn/sforum/so-sanh-samsung-z-trifold-va-huawei-mate-xt-ultimate">
                                        <img src="assets/img/blogs/blogs3.jpg" alt="huawei-mate-xt-ultimate">
                                    </a>
                                </figure>
                                <div class="blog-content">
                                    <div class="blog-meta">
                                        <p>22/03/2025 | <a href="#">Điện thoại</a></p>
                                    </div>
                                    <h5 class="blog-title">
                                        <a href="blog-details.html">So sánh Samsung Galaxy Z TriFold và Huawei Mate XT Ultimate: Ai mới là vua điện thoại gập ba?</a>
                                    </h5>
                                </div>
                            </div>
                            <!-- blog post item end -->

                            <!-- blog post item start -->
                            <div class="blog-post-item">
                                <figure class="blog-thumb">
                                    <a href="https://cellphones.com.vn/sforum/so-sanh-xiaomi-poco-f8-pro-vs-xiaomi-15t-pro">
                                        <img src="assets/img/blogs/blogs4.jpg" alt="Xiaomi 14 Ultra">
                                    </a>
                                </figure>
                                <div class="blog-content">
                                    <div class="blog-meta">
                                        <p>20/03/2024 | <a href="#">Review</a></p>
                                    </div>
                                    <h5 class="blog-title">
                                        <a href="blog-details.html">So sánh Xiaomi POCO F8 Pro vs Xiaomi 15T Pro: "Gà nhà" đại chiến, đâu là lựa chọn tối ưu trong phân khúc cận cao cấp?</a>
                                    </h5>
                                </div>
                            </div>
                            <!-- blog post item end -->

                            <!-- blog post item start -->
                            <div class="blog-post-item">
                                <figure class="blog-thumb">
                                    <a href="https://cellphones.com.vn/sforum/su-kien-samsung-first-look-2026">
                                        <img src="assets/img/blogs/blogs5.jpg" alt="first_look">
                                    </a>
                                </figure>
                                <div class="blog-content">
                                    <div class="blog-meta">
                                        <p>18/12/2025 | <a href="#">Sự kiện</a></p>
                                    </div>
                                    <h5 class="blog-title">
                                        <a href="https://cellphones.com.vn/sforum/su-kien-samsung-first-look-2026">Samsung sẽ tổ chức sự kiện The First Look trước thềm CES 2026: Sẽ có “bom tấn” nào xuất hiện?</a>
                                    </h5>
                                </div>
                            </div>
                            <!-- blog post item end -->

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- latest blog area end -->

        <!-- brand logo area start -->
        <div class="brand-logo section-padding mt-5">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                         <!-- section title start -->
                         <div class="section-title text-center">
                            <h2 class="title">ĐỐI TÁC & NHÀ TÀI TRỢ</h2>
                            <p class="sub-title">Các đối tác uy tín đồng hành cùng chúng tôi</p>
                        </div>
                        <!-- section title start -->
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="brand-logo-carousel slick-row-10 slick-arrow-style">
                            <!-- Các nhà tài trợ tài chính -->
                            <div class="brand-item">
                                <a href="#">
                                    <img src="assets/img/brands/tragop/brand5.png" alt="Home Credit">
                                </a>
                            </div>
                            <div class="brand-item">
                                <a href="#">
                                    <img src="assets/img/brands/tragop/brand6.png" alt="FE Credit">
                                </a>
                            </div>
                            <div class="brand-item">
                                <a href="#">
                                    <img src="assets/img/brands/tragop/brand1.png" alt="HD Saison">
                                </a>
                            </div>

                            <!-- Các hãng công nghệ -->
                            <div class="brand-item">
                                <a href="#">
                                    <img src="assets/img/brands/congnghe/brand2.png" alt="Apple">
                                </a>
                            </div>
                            <div class="brand-item">
                                <a href="#">
                                    <img src="assets/img/brands/congnghe/brand9.png" alt="Samsung">
                                </a>
                            </div>
                            <div class="brand-item">
                                <a href="#">
                                    <img src="assets/img/brands/congnghe/brand11.png" alt="Xiaomi">
                                </a>
                            </div>

                            <!-- Đối tác thanh toán -->
                            <div class="brand-item">
                                <a href="#">
                                    <img src="assets/img/brands/nhuongquyen/brand8.png" alt="Payoo">
                                </a>
                            </div>
                            <div class="brand-item">
                                <a href="#">
                                    <img src="assets/img/brands/nhuongquyen/brand3.png" alt="Alepay">
                                </a>
                            </div>

                            <!-- Thương hiệu truyền thông -->
                            <div class="brand-item">
                                <a href="#">
                                    <img src="assets/img/brands/nhuongquyen/brand13.png" alt="Schannel">
                                </a>
                            </div>

                            <!-- Dịch vụ liên quan -->
                            <div class="brand-item">
                                <a href="#">
                                    <img src="assets/img/brands/nhuongquyen/brand4.png" alt="Điện Thoại Vui">
                                </a>
                            </div>
                            <div class="brand-item">
                                <a href="#">
                                    <img src="assets/img/brands/nhuongquyen/brand7.png" alt="CareS">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- brand logo area end -->
    </main>



<?php require_once 'layout/miniCart.php'; ?>
<?php require_once 'layout/footer.php'; ?>
