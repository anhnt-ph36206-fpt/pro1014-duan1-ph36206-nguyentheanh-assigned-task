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
                                <li class="breadcrumb-item"><a href="index.html"><i class="fa fa-home"></i></a></li>
                                <li class="breadcrumb-item active" aria-current="page">Chi tiết đơn hàng</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

    <!-- order detail main wrapper start -->
    <div class="cart-main-wrapper section-padding py-5" style="background: #f8f9fa;">
        <div class="container">
            <!-- Order Header -->
            <div class="row mb-4">
                <div class="col-12">
                    <div class="card border-0 shadow-sm rounded-4">
                        <div class="card-body p-4">
                            <div class="d-flex justify-content-between align-items-center flex-wrap gap-3">
                                <div>
                                    <h3 class="mb-2 fw-bold">
                                        <i class="fa fa-file-text-o me-2 text-primary"></i>
                                        Chi Tiết Đơn Hàng
                                    </h3>
                                    <p class="text-muted mb-0">
                                        Mã đơn hàng: 
                                        <span class="badge bg-gradient text-white px-3 py-2 fs-6 fw-bold"
                                              style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);">
                                            #<?= $donHang['ma_don_hang'] ?>
                                        </span>
                                    </p>
                                </div>
                                <div class="text-end">
                                    <?php
                                    $statusColors = [
                                        1 => 'warning',
                                        2 => 'info',
                                        3 => 'primary',
                                        4 => 'success',
                                        5 => 'danger'
                                    ];
                                    $statusIcons = [
                                        1 => 'clock-o',
                                        2 => 'check',
                                        3 => 'truck',
                                        4 => 'check-circle',
                                        5 => 'times-circle'
                                    ];
                                    $colorClass = $statusColors[$donHang['trang_thai_id']] ?? 'secondary';
                                    $iconClass = $statusIcons[$donHang['trang_thai_id']] ?? 'info-circle';
                                    ?>
                                    <span class="badge bg-<?= $colorClass ?> rounded-pill px-4 py-3 fs-5">
                                        <i class="fa fa-<?= $iconClass ?> me-2"></i>
                                        <?= $trangThaiDonHang[$donHang['trang_thai_id']] ?>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="section-bg-color">
                <div class="row g-4">
                    <!-- Thông tin sản phẩm của đơn hàng -->
                    <div class="col-lg-7">
                        <div class="card border-0 shadow-lg rounded-4 overflow-hidden">
                            <div class="card-header text-white p-4 border-0" style="background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);">
                                <h5 class="mb-0 fw-bold d-flex align-items-center">
                                    <i class="fa fa-shopping-bag me-3"></i>
                                    Thông Tin Sản Phẩm
                                </h5>
                            </div>
                            <div class="card-body p-0">
                                <div class="table-responsive">
                                    <table class="table table-hover align-middle mb-0">
                                        <thead class="table-light">
                                            <tr class="text-center">
                                                <th class="py-3 border-0">Hình ảnh</th>
                                                <th class="py-3 border-0">Tên sản phẩm</th>
                                                <th class="py-3 border-0">Đơn giá</th>
                                                <th class="py-3 border-0">Số lượng</th>
                                                <th class="py-3 border-0">Thành tiền</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php foreach ($chiTietDonHang as $item): ?>
                                            <tr class="border-bottom">
                                                <td class="text-center py-3">
                                                    <img class="img-fluid rounded-3 shadow-sm" 
                                                         src="<?= BASE_URL . $item['hinh_anh'] ?>" 
                                                         alt="Product" 
                                                         style="width: 80px; height: 80px; object-fit: cover;"/>
                                                </td>
                                                <td class="py-3">
                                                    <span class="fw-semibold"><?= $item['ten_san_pham'] ?></span>
                                                </td>
                                                <td class="text-center py-3">
                                                    <span class="text-primary fw-bold">
                                                        <?= number_format($item['don_gia'], 0, ',', '.') ?> đ
                                                    </span>
                                                </td>
                                                <td class="text-center py-3">
                                                    <span class="badge bg-secondary rounded-pill px-3 py-2">
                                                        x<?= $item['so_luong'] ?>
                                                    </span>
                                                </td>
                                                <td class="text-center py-3">
                                                    <span class="text-success fw-bold fs-6">
                                                        <?= number_format($item['thanh_tien'], 0, ',', '.') ?> đ
                                                    </span>
                                                </td>
                                            </tr>
                                            <?php endforeach ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Thông tin đơn hàng -->
                    <div class="col-lg-5">
                        <div class="card border-0 shadow-lg rounded-4 overflow-hidden sticky-top" style="top: 20px;">
                            <div class="card-header text-white p-4 border-0" style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);">
                                <h5 class="mb-0 fw-bold d-flex align-items-center">
                                    <i class="fa fa-info-circle me-3"></i>
                                    Thông Tin Đơn Hàng
                                </h5>
                            </div>
                            <div class="card-body p-4">
                                <div class="order-info-list">
                                    <!-- Người nhận -->
                                    <div class="info-item p-3 mb-3 bg-light rounded-3">
                                        <div class="d-flex align-items-start">
                                            <i class="fa fa-user-circle text-primary fs-4 me-3 mt-1"></i>
                                            <div class="flex-grow-1">
                                                <small class="text-muted d-block mb-1">Người nhận</small>
                                                <strong class="text-dark"><?= $donHang['ten_nguoi_nhan'] ?></strong>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Email -->
                                    <div class="info-item p-3 mb-3 bg-light rounded-3">
                                        <div class="d-flex align-items-start">
                                            <i class="fa fa-envelope text-info fs-4 me-3 mt-1"></i>
                                            <div class="flex-grow-1">
                                                <small class="text-muted d-block mb-1">Email</small>
                                                <strong class="text-dark"><?= $donHang['email_nguoi_nhan'] ?></strong>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Số điện thoại -->
                                    <div class="info-item p-3 mb-3 bg-light rounded-3">
                                        <div class="d-flex align-items-start">
                                            <i class="fa fa-phone text-success fs-4 me-3 mt-1"></i>
                                            <div class="flex-grow-1">
                                                <small class="text-muted d-block mb-1">Số điện thoại</small>
                                                <strong class="text-dark"><?= $donHang['sdt_nguoi_nhan'] ?></strong>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Địa chỉ -->
                                    <div class="info-item p-3 mb-3 bg-light rounded-3">
                                        <div class="d-flex align-items-start">
                                            <i class="fa fa-map-marker text-danger fs-4 me-3 mt-1"></i>
                                            <div class="flex-grow-1">
                                                <small class="text-muted d-block mb-1">Địa chỉ giao hàng</small>
                                                <strong class="text-dark"><?= $donHang['dia_chi_nguoi_nhan'] ?></strong>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Ngày đặt -->
                                    <div class="info-item p-3 mb-3 bg-light rounded-3">
                                        <div class="d-flex align-items-start">
                                            <i class="fa fa-calendar text-warning fs-4 me-3 mt-1"></i>
                                            <div class="flex-grow-1">
                                                <small class="text-muted d-block mb-1">Ngày đặt hàng</small>
                                                <strong class="text-dark"><?= $donHang['ngay_dat'] ?></strong>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- Ghi chú -->
                                    <?php if (!empty($donHang['ghi_chu'])): ?>
                                    <div class="info-item p-3 mb-3 bg-light rounded-3">
                                        <div class="d-flex align-items-start">
                                            <i class="fa fa-comment text-secondary fs-4 me-3 mt-1"></i>
                                            <div class="flex-grow-1">
                                                <small class="text-muted d-block mb-1">Ghi chú</small>
                                                <strong class="text-dark"><?= $donHang['ghi_chu'] ?></strong>
                                            </div>
                                        </div>
                                    </div>
                                    <?php endif; ?>

                                    <!-- Phương thức thanh toán -->
                                    <div class="info-item p-3 mb-3 bg-light rounded-3">
                                        <div class="d-flex align-items-start justify-content-between">
                                            <div class="d-flex align-items-start">
                                                <i class="fa fa-credit-card text-info fs-4 me-3 mt-1"></i>
                                                <div>
                                                    <small class="text-muted d-block mb-1">Thanh toán</small>
                                                    <strong class="text-dark"><?= $phuongThucThanhToan[$donHang['phuong_thuc_thanh_toan_id']] ?></strong>
                                                </div>
                                            </div>
                                            <?php if ($donHang['phuong_thuc_thanh_toan_id'] == 1): ?>
                                                <span class="badge bg-success rounded-pill">
                                                    <i class="fa fa-money"></i> COD
                                                </span>
                                            <?php else: ?>
                                                <span class="badge bg-info rounded-pill">
                                                    <i class="fa fa-bank"></i> Online
                                                </span>
                                            <?php endif; ?>
                                        </div>
                                    </div>

                                    <!-- Tổng tiền -->
                                    <div class="info-item p-4 mb-0 rounded-3" style="background: linear-gradient(135deg, #f093fb15 0%, #f5576c15 100%);">
                                        <div class="d-flex justify-content-between align-items-center">
                                            <div>
                                                <small class="text-muted d-block mb-1">Tổng thanh toán</small>
                                                <h3 class="mb-0 fw-bold text-danger">
                                                    <?= number_format($donHang['tong_tien'], 0, ',', '.') ?> đ
                                                </h3>
                                            </div>
                                            <i class="fa fa-money fs-1 text-danger opacity-25"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <!-- Action Buttons -->
                            <div class="card-footer bg-light border-0 p-4">
                                <div class="d-grid gap-2">
                                    <a href="javascript:history.back()" class="btn btn-outline-primary rounded-pill py-2 fw-semibold">
                                        <i class="fa fa-arrow-left me-2"></i>Quay lại danh sách
                                    </a>
                                    <button onclick="window.print()" class="btn btn-info text-black rounded-pill py-2 fw-semibold">
                                        <i class="fa fa-print me-2"></i>In đơn hàng
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>


<?php require_once 'layout/miniCart.php'; ?>
<?php require_once 'layout/footer.php'; ?>