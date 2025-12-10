<?php require_once 'layout/header.php'; ?>
<?php require_once 'layout/menu.php'; ?>

<main>
        <!-- breadcrumb area start -->
        <div class="breadcrumb-area">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="breadcrumb-wrap">
                            <nav aria-label="breadcrumb">
                                <ul class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="<?php echo BASE_URL ?>"><i class="fa fa-home"></i></a></li>
                                    <li class="breadcrumb-item active" aria-current="page">Giỏ Hàng</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->

        <!-- cart main wrapper start -->
       <!-- cart main wrapper start -->
    <div class="cart-main-wrapper section-padding py-5" style="background: #f8f9fa;">
        <div class="container">
            <div class="row g-4">
                <!-- Left Column - Cart Items -->
                <div class="col-lg-8">
                    <div class="card border-0 shadow-lg rounded-4 overflow-hidden">
                        <div class="card-header bg-white border-0 p-4">
                            <h4 class="mb-0 fw-bold d-flex align-items-center">
                                <i class="fa fa-shopping-cart me-3 text-primary"></i>
                                Giỏ Hàng Của Bạn
                                <span class="badge bg-primary rounded-pill ms-3"><?= count($chiTietGioHang) ?> sản phẩm</span>
                            </h4>
                        </div>
                        <div class="card-body p-0">
                            <!-- Cart Table Area -->
                            <div class="table-responsive">
                                <table class="table table-hover mb-0">
                                    <thead style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);">
                                        <tr class="text-white">
                                            <th class="py-3 ps-4 border-0">Ảnh Sản Phẩm</th>
                                            <th class="py-3 border-0">Tên Sản Phẩm</th>
                                            <th class="py-3 border-0">Giá Tiền</th>
                                            <th class="py-3 border-0">Số Lượng</th>
                                            <th class="py-3 border-0">Tổng Tiền</th>
                                            <th class="py-3 pe-4 text-center border-0">Thao Tác</th>
                                        </tr>
                                    </thead>
                                    <tbody> 
                                        <?php $tongGioHang = 0;?>
                                        <?php foreach ($chiTietGioHang as $key => $sanPham): ?>
                                        <tr class="border-bottom">
                                            <td class="py-4 ps-4">
                                                <div class="position-relative">
                                                    <img class="rounded-3 shadow-sm" 
                                                         src="<?= BASE_URL . $sanPham['hinh_anh']?>" 
                                                         alt="Product"
                                                         style="width: 90px; height: 90px; object-fit: cover;" />
                                                </div>
                                            </td>
                                            <td class="py-4">
                                                <a href="#" class="text-decoration-none text-dark">
                                                    <h6 class="mb-0 fw-semibold"><?= $sanPham['ten_san_pham']?></h6>
                                                </a>
                                            </td>
                                            <td class="py-4">
                                                <div class="d-flex flex-column">
                                                    <?php if ($sanPham['gia_khuyen_mai']) { ?>
                                                        <span class="fw-bold text-danger fs-5"><?= formatPrice($sanPham['gia_khuyen_mai'])?></span>
                                                        <small class="text-muted text-decoration-line-through"><?= formatPrice($sanPham['gia_san_pham'])?></small>
                                                    <?php } else { ?>
                                                        <span class="fw-bold text-primary fs-5"><?= formatPrice($sanPham['gia_san_pham'])?></span>
                                                    <?php }?>
                                                </div>
                                            </td>
                                            <td class="py-4">
                                                <div class="d-flex align-items-center">
                                                    <button class="btn btn-sm btn-outline-secondary rounded-circle p-0" style="width: 32px; height: 32px;">
                                                        <i class="fa fa-minus"></i>
                                                    </button>
                                                    <input type="text" 
                                                           class="form-control text-center mx-2 border-0 bg-light fw-bold" 
                                                           value="<?= $sanPham['so_luong'] ?>"
                                                           style="width: 60px;">
                                                    <button class="btn btn-sm btn-outline-secondary rounded-circle p-0" style="width: 32px; height: 32px;">
                                                        <i class="fa fa-plus"></i>
                                                    </button>
                                                </div>
                                            </td>
                                            <td class="py-4">
                                                <span class="fw-bold text-success fs-5">
                                                    <?php 
                                                    $tongTien = 0;
                                                    if ($sanPham['gia_khuyen_mai']) {
                                                        $tongTien = $sanPham['gia_khuyen_mai'] * $sanPham['so_luong'];
                                                    } else {
                                                        $tongTien = $sanPham['gia_san_pham'] * $sanPham['so_luong'];
                                                    }
                                                    echo formatPrice($tongTien);
                                                    $tongGioHang += $tongTien;
                                                    ?>
                                                </span>
                                            </td>
                                            <td class="py-4 pe-4 text-center">
                                                <a href="#" class="btn btn-outline-danger btn-sm rounded-circle p-0" style="width: 40px; height: 40px; line-height: 40px;">
                                                    <i class="fa fa-trash-o"></i>
                                                </a>
                                            </td>
                                        </tr>
                                        <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        
                        <!-- Cart Update Option -->
                        <div class="card-footer bg-light border-0 p-4">
                            <div class="d-flex flex-column flex-md-row justify-content-between gap-3">
                                <div class="flex-grow-1">
                                    <form action="#" method="post" class="d-flex gap-2">
                                        <input type="text" 
                                               class="form-control rounded-pill" 
                                               placeholder="🎟️ Nhập mã giảm giá" 
                                               required />
                                        <button class="btn btn-warning rounded-pill px-4 fw-semibold" type="submit">
                                            <i class="fa fa-tag me-2"></i>Áp dụng
                                        </button>
                                    </form>
                                </div>
                                <div>
                                    <a href="#" class="btn btn-info text-white rounded-pill px-4 fw-semibold">
                                        <i class="fa fa-refresh me-2"></i>Cập nhật giỏ hàng
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Right Column - Order Summary -->
                <div class="col-lg-4">
                    <div class="sticky-top" style="top: 20px;">
                        <!-- Cart Summary Card -->
                        <div class="card border-0 shadow-lg rounded-4 overflow-hidden mb-4">
                            <div class="card-header text-white p-4 border-0" style="background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);">
                                <h5 class="mb-0 fw-bold d-flex align-items-center">
                                    <i class="fa fa-calculator me-2"></i>
                                    Tổng Đơn Hàng
                                </h5>
                            </div>
                            <div class="card-body p-4">
                                <div class="d-flex justify-content-between align-items-center mb-3 pb-3 border-bottom">
                                    <span class="text-muted">Tổng tiền sản phẩm</span>
                                    <span class="fw-bold fs-5 text-primary"><?= formatPrice($tongGioHang) ?></span>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mb-3 pb-3 border-bottom">
                                    <span class="text-muted">Vận chuyển</span>
                                    <span class="fw-bold text-info">30.000 VNĐ</span>
                                </div>
                                <div class="d-flex justify-content-between align-items-center mb-4">
                                    <span class="fw-bold fs-4">Tổng Thanh Toán</span>
                                    <span class="fw-bold fs-3 text-danger"><?= formatPrice($tongGioHang + 30000) ?></span>
                                </div>
                                <a href="<?php echo BASE_URL . '?act=thanh-toan'?>" 
                                   class="btn btn-success w-100 rounded-pill py-3 fw-bold shadow-sm">
                                    <i class="fa fa-credit-card me-2"></i>Tiến Hành Đặt Hàng
                                </a>
                                <div class="text-center mt-3">
                                    <small class="text-muted">
                                        <i class="fa fa-lock me-1"></i>Thanh toán an toàn & bảo mật 100%
                                    </small>
                                </div>
                            </div>
                        </div>

                        <!-- Trust Badges -->
                        <div class="card border-0 shadow-sm rounded-4">
                            <div class="card-body p-4">
                                <div class="row g-3 text-center">
                                    <div class="col-6">
                                        <div class="p-3 bg-light rounded-3">
                                            <i class="fa fa-truck fs-2 text-primary mb-2"></i>
                                            <p class="small mb-0 fw-semibold">Miễn phí vận chuyển</p>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="p-3 bg-light rounded-3">
                                            <i class="fa fa-shield fs-2 text-success mb-2"></i>
                                            <p class="small mb-0 fw-semibold">Thanh toán bảo mật</p>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="p-3 bg-light rounded-3">
                                            <i class="fa fa-refresh fs-2 text-info mb-2"></i>
                                            <p class="small mb-0 fw-semibold">Đổi trả 7 ngày</p>
                                        </div>
                                    </div>
                                    <div class="col-6">
                                        <div class="p-3 bg-light rounded-3">
                                            <i class="fa fa-headphones fs-2 text-warning mb-2"></i>
                                            <p class="small mb-0 fw-semibold">Hỗ trợ 24/7</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Continue Shopping -->
                        <div class="card border-0 shadow-sm rounded-4 mt-4">
                            <div class="card-body p-4 text-center">
                                <i class="fa fa-shopping-bag fs-1 text-muted mb-3"></i>
                                <h6 class="fw-bold mb-3">Tiếp tục mua sắm?</h6>
                                <a href="<?php echo BASE_URL ?>" class="btn btn-outline-primary rounded-pill px-4">
                                    <i class="fa fa-arrow-left me-2"></i>Quay lại cửa hàng
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- cart main wrapper end -->
        <!-- cart main wrapper end -->
</main>


<?php require_once 'layout/miniCart.php'; ?>
<?php require_once 'layout/footer.php'; ?>
