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
                                    <!-- <li class="breadcrumb-item"><a href="shop.html">shop</a></li>  -->
                                    <li class="breadcrumb-item active" aria-current="page">Thanh Toán</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- breadcrumb area end -->

          <!-- checkout main wrapper start -->
    <div class="checkout-page-wrapper section-padding py-5" style="background: #f8f9fa;">
        <div class="container">
            <!-- Coupon Section -->
            <div class="row mb-4">
                <div class="col-12">
                    <div class="card border-0 shadow-sm rounded-4 overflow-hidden">
                        <div class="card-body p-0">
                            <div class="accordion" id="checkOutAccordion">
                                <div class="accordion-item border-0">
                                    <h2 class="accordion-header">
                                        <button class="accordion-button collapsed bg-light fw-semibold" type="button" data-bs-toggle="collapse" data-bs-target="#couponaccordion">
                                            <i class="fa fa-tag me-2 text-warning"></i>
                                            BẠN CÓ MÃ GIẢM GIÁ? Click để nhập mã
                                        </button>
                                    </h2>
                                    <div id="couponaccordion" class="accordion-collapse collapse" data-bs-parent="#checkOutAccordion">
                                        <div class="accordion-body">
                                            <form action="#" method="post" class="d-flex gap-2">
                                                <input type="text"
                                                       class="form-control rounded-pill"
                                                       placeholder="🎟️ Nhập mã giảm giá của bạn"
                                                       required />
                                                <button class="btn btn-warning rounded-pill px-4 fw-semibold" type="submit">
                                                    <i class="fa fa-check me-2"></i>Áp dụng
                                                </button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <form action="<?php echo BASE_URL . '?act=xu-ly-thanh-toan'?>" method="POST">
                <div class="row g-4">
                    <!-- Checkout Billing Details -->
                    <div class="col-lg-7">
                        <div class="card border-0 shadow-lg rounded-4 overflow-hidden">
                            <div class="card-header text-white p-4 border-0" style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);">
                                <h5 class="mb-0 fw-bold d-flex align-items-center">
                                    <i class="fa fa-user-circle me-3"></i>
                                    Thông Tin Người Nhận
                                </h5>
                            </div>
                            <div class="card-body p-4">
                                <div class="billing-form-wrap">
                                    <div class="row g-3">
                                        <div class="col-12">
                                            <label for="ten_nguoi_nhan" class="form-label fw-semibold">
                                                <i class="fa fa-user me-2 text-primary"></i>Tên người nhận
                                                <span class="text-danger">*</span>
                                            </label>
                                            <input type="text"
                                                   id="ten_nguoi_nhan"
                                                   name="ten_nguoi_nhan"
                                                   class="form-control form-control-lg rounded-pill"
                                                   value="<?php echo $user['ho_ten'] ?>"
                                                   placeholder="Nhập tên người nhận"
                                                   required />
                                        </div>

                                        <div class="col-12">
                                            <label for="email_nguoi_nhan" class="form-label fw-semibold">
                                                <i class="fa fa-envelope me-2 text-info"></i>Địa chỉ email
                                                <span class="text-danger">*</span>
                                            </label>
                                            <input type="email"
                                                   id="email_nguoi_nhan"
                                                   name="email_nguoi_nhan"
                                                   class="form-control form-control-lg rounded-pill"
                                                   value="<?php echo $user['email'] ?>"
                                                   placeholder="example@email.com"
                                                   required />
                                        </div>

                                        <div class="col-12">
                                            <label for="sdt_nguoi_nhan" class="form-label fw-semibold">
                                                <i class="fa fa-phone me-2 text-success"></i>Số điện thoại
                                                <span class="text-danger">*</span>
                                            </label>
                                            <input type="text"
                                                   id="sdt_nguoi_nhan"
                                                   name="sdt_nguoi_nhan"
                                                   class="form-control form-control-lg rounded-pill"
                                                   value="<?php echo $user['so_dien_thoai'] ?>"
                                                   placeholder="0123 456 789"
                                                   required />
                                        </div>

                                        <div class="col-12">
                                            <label for="dia_chi_nguoi_nhan" class="form-label fw-semibold">
                                                <i class="fa fa-map-marker me-2 text-danger"></i>Địa chỉ nhận hàng
                                                <span class="text-danger">*</span>
                                            </label>
                                            <input type="text"
                                                   id="dia_chi_nguoi_nhan"
                                                   name="dia_chi_nguoi_nhan"
                                                   class="form-control form-control-lg rounded-pill"
                                                   value="<?php echo $user['dia_chi'] ?>"
                                                   placeholder="Số nhà, tên đường, phường, quận, thành phố"
                                                   required />
                                        </div>

                                        <div class="col-12">
                                            <label for="ghi_chu" class="form-label fw-semibold">
                                                <i class="fa fa-pencil me-2 text-warning"></i>Ghi chú đơn hàng
                                            </label>
                                            <textarea name="ghi_chu"
                                                      id="ghi_chu"
                                                      class="form-control rounded-4"
                                                      rows="4"
                                                      placeholder="Vui lòng nhập ghi chú đặc biệt cho đơn hàng của bạn (tùy chọn)..."></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Order Summary Details -->
                    <div class="col-lg-5">
                        <div class="sticky-top" style="top: 20px;">
                            <div class="card border-0 shadow-lg rounded-4 overflow-hidden">
                                <div class="card-header text-white p-4 border-0" style="background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);">
                                    <h5 class="mb-0 fw-bold d-flex align-items-center">
                                        <i class="fa fa-shopping-cart me-3"></i>
                                        Thông Tin Đơn Hàng
                                    </h5>
                                </div>
                                <div class="card-body p-0">
                                    <!-- Order Summary Table -->
                                    <div class="table-responsive">
                                        <table class="table table-hover mb-0">
                                            <thead class="table-light">
                                                <tr>
                                                    <th class="py-3 ps-4 border-0">Sản phẩm</th>
                                                    <th class="py-3 pe-4 text-end border-0">Tổng</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <?php
                                                    $tongGioHang = 0;
                                                    foreach ($chiTietGioHang as $key => $sanPham):
                                                ?>
                                                <tr class="border-bottom">
                                                    <td class="py-3 ps-4">
                                                        <a href="" class="text-decoration-none text-dark">
                                                            <?php echo $sanPham['ten_san_pham']; ?>
                                                            <strong class="badge bg-primary rounded-pill ms-2">
                                                                x<?php echo $sanPham['so_luong']; ?>
                                                            </strong>
                                                        </a>
                                                    </td>
                                                    <td class="py-3 pe-4 text-end fw-bold text-success">
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
                                                    </td>
                                                </tr>
                                                <?php endforeach; ?>
                                            </tbody>
                                        </table>
                                    </div>

                                    <!-- Summary Footer -->
                                    <div class="p-4 bg-light">
                                        <div class="d-flex justify-content-between align-items-center mb-3 pb-3 border-bottom">
                                            <span class="fw-semibold">Tổng tiền sản phẩm:</span>
                                            <strong class="text-primary fs-5"><?php echo formatPrice($tongGioHang); ?></strong>
                                        </div>
                                        <div class="d-flex justify-content-between align-items-center mb-3 pb-3 border-bottom">
                                            <span class="fw-semibold">Phí vận chuyển:</span>
                                            <strong class="text-info">30.000 VNĐ</strong>
                                        </div>
                                        <div class="d-flex justify-content-between align-items-center mb-4">
                                            <span class="fw-bold fs-4">Tổng đơn hàng:</span>
                                            <input type="hidden" name="tong_tien" value="<?php echo $tongGioHang + 30000; ?>">
                                            <strong class="text-danger fs-3"><?php echo formatPrice($tongGioHang + 30000); ?></strong>
                                        </div>

                                        <!-- Payment Methods -->
                                        <div class="order-payment-method mb-4">
                                            <h6 class="fw-bold mb-3">
                                                <i class="fa fa-credit-card me-2"></i>Phương thức thanh toán
                                            </h6>

                                            <div class="card mb-3 border-primary">
                                                <div class="card-body p-3">
                                                    <div class="form-check">
                                                        <input class="form-check-input"
                                                               type="radio"
                                                               name="phuong_thuc_thanh_toan_id"
                                                               id="cashon"
                                                               value="1"
                                                               checked>
                                                        <label class="form-check-label fw-semibold" for="cashon">
                                                            <i class="fa fa-money me-2 text-success"></i>
                                                            Thanh toán khi nhận hàng (COD)
                                                        </label>
                                                    </div>
                                                    <p class="small text-muted mb-0 mt-2 ms-4">
                                                        Thanh toán bằng tiền mặt khi nhận hàng
                                                    </p>
                                                </div>
                                            </div>

                                            <div class="card border-info">
                                                <div class="card-body p-3">
                                                    <div class="form-check">
                                                        <input class="form-check-input"
                                                               type="radio"
                                                               name="phuong_thuc_thanh_toan_id"
                                                               id="directbank"
                                                               value="2">
                                                        <label class="form-check-label fw-semibold" for="directbank">
                                                            <i class="fa fa-university me-2 text-info"></i>
                                                            Thanh toán online
                                                        </label>
                                                    </div>
                                                    <p class="small text-muted mb-0 mt-2 ms-4">
                                                        Chuyển khoản ngân hàng hoặc ví điện tử
                                                    </p>
                                                </div>
                                            </div>
                                        </div>

                                        <!-- Terms & Submit -->
                                        <div class="summary-footer-area">
                                            <div class="form-check mb-3 p-3 bg-white rounded-3">
                                                <input type="checkbox"
                                                       class="form-check-input"
                                                       id="terms"
                                                       required />
                                                <label class="form-check-label fw-semibold" for="terms">
                                                    Tôi đã đọc và đồng ý với
                                                    <a href="#" class="text-primary text-decoration-none">điều khoản và điều kiện</a>
                                                </label>
                                            </div>
                                            <button type="submit" class="btn btn-success w-100 rounded-pill py-3 fw-bold shadow-lg">
                                                <i class="fa fa-check-circle me-2"></i>
                                                Xác Nhận Đặt Hàng
                                            </button>
                                            <div class="text-center mt-3">
                                                <small class="text-muted">
                                                    <i class="fa fa-lock me-1"></i>Giao dịch được bảo mật 100%
                                                </small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Trust Info -->
                            <div class="card border-0 shadow-sm rounded-4 mt-4">
                                <div class="card-body p-4">
                                    <div class="row g-3 text-center">
                                        <div class="col-4">
                                            <i class="fa fa-shield fs-2 text-success mb-2"></i>
                                            <p class="small mb-0 fw-semibold">Bảo mật</p>
                                        </div>
                                        <div class="col-4">
                                            <i class="fa fa-truck fs-2 text-primary mb-2"></i>
                                            <p class="small mb-0 fw-semibold">Giao nhanh</p>
                                        </div>
                                        <div class="col-4">
                                            <i class="fa fa-refresh fs-2 text-info mb-2"></i>
                                            <p class="small mb-0 fw-semibold">Đổi trả</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <!-- checkout main wrapper end -->
</main>

<?php require_once 'layout/miniCart.php'; ?>
<?php require_once 'layout/footer.php'; ?>
