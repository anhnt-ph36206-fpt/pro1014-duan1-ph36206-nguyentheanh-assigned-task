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
                                <li class="breadcrumb-item active" aria-current="page">Lịch sử mua hàng</li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- breadcrumb area end -->

       <!-- orders main wrapper start -->
    <div class="cart-main-wrapper section-padding py-5" style="background: #f8f9fa;">
        <div class="container">
            <div class="row mb-4">
                <div class="col-12">
                    <div class="d-flex justify-content-between align-items-center">
                        <h2 class="fw-bold mb-0">
                            <i class="fa fa-list-alt me-3 text-primary"></i>
                            Đơn Hàng Của Tôi
                        </h2>
                        <span class="badge bg-primary rounded-pill px-4 py-2 fs-6">
                            <?php echo count($donHangs)?> đơn hàng
                        </span>
                    </div>
                </div>
            </div>

            <div class="section-bg-color">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Orders Table Area -->
                        <div class="card border-0 shadow-lg rounded-4 overflow-hidden">
                            <div class="card-body p-0">
                                <div class="table-responsive">
                                    <table class="table table-hover align-middle mb-0">
                                        <thead style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);">
                                            <tr class="text-white">
                                                <th class="py-3 ps-4 border-0">Mã đơn hàng</th>
                                                <th class="py-3 border-0">Ngày đặt</th>
                                                <th class="py-3 border-0">Tổng tiền</th>
                                                <th class="py-3 border-0">Thanh toán</th>
                                                <th class="py-3 border-0">Trạng thái</th>
                                                <th class="py-3 pe-4 text-center border-0">Thao Tác</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php foreach ($donHangs as $donHang): ?>
                                            <tr class="border-bottom">
                                                <td class="py-4 ps-4">
                                                    <span class="badge bg-gradient text-black px-3 py-2 rounded-pill fs-6 fw-bold"
                                                          style="background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);">
                                                        #<?php echo $donHang['ma_don_hang']?>
                                                    </span>
                                                </td>
                                                <td class="py-4">
                                                    <div class="d-flex align-items-center">
                                                        <i class="fa fa-calendar text-primary me-2"></i>
                                                        <span class="fw-semibold"><?php echo $donHang['ngay_dat']?></span>
                                                    </div>
                                                </td>
                                                <td class="py-4">
                                                    <span class="fw-bold text-danger fs-5">
                                                        <?php echo formatPrice($donHang['tong_tien'])?>
                                                    </span>
                                                </td>
                                                <td class="py-4">
                                                    <?php if ($donHang['phuong_thuc_thanh_toan_id'] == 1): ?>
                                                        <span class="badge bg-success rounded-pill px-3 py-2">
                                                            <i class="fa fa-money me-1"></i>
                                                            <?php echo $phuongThucThanhToan[$donHang['phuong_thuc_thanh_toan_id']]?>
                                                        </span>
                                                    <?php else: ?>
                                                        <span class="badge bg-info rounded-pill px-3 py-2">
                                                            <i class="fa fa-credit-card me-1"></i>
                                                            <?php echo $phuongThucThanhToan[$donHang['phuong_thuc_thanh_toan_id']]?>
                                                        </span>
                                                    <?php endif; ?>
                                                </td>
                                                <td class="py-4">
                                                    <?php
                                                        $statusColors = [
                                                            1 => 'warning',
                                                            2 => 'info',
                                                            3 => 'primary',
                                                            4 => 'success',
                                                            5 => 'danger',
                                                        ];
                                                        $statusIcons = [
                                                            1 => 'clock-o',
                                                            2 => 'check',
                                                            3 => 'truck',
                                                            4 => 'check-circle',
                                                            5 => 'times-circle',
                                                        ];
                                                        $colorClass = $statusColors[$donHang['trang_thai_id']] ?? 'secondary';
                                                        $iconClass  = $statusIcons[$donHang['trang_thai_id']] ?? 'info-circle';
                                                    ?>
                                                    <span class="badge bg-<?php echo $colorClass?> rounded-pill px-3 py-2">
                                                        <i class="fa fa-<?php echo $iconClass?> me-1"></i>
                                                        <?php echo $trangThaiDonHang[$donHang['trang_thai_id']]?>
                                                    </span>
                                                </td>
                                                <td class="py-4 pe-4 text-center">
                                                    <div class="d-flex justify-content-center gap-2">
                                                        <a href="<?php echo BASE_URL?>?act=chi-tiet-mua-hang&id=<?php echo $donHang['id']?>"
                                                           class="btn btn-primary btn-sm rounded-pill px-3 shadow-sm"
                                                           data-bs-toggle="tooltip"
                                                           title="Xem chi tiết">
                                                            <i class="fa fa-eye me-1"></i>
                                                            Chi tiết
                                                        </a>

                                                        <?php if ($donHang['trang_thai_id'] == 1): ?>
                                                            <a href="<?php echo BASE_URL?>?act=huy-don-hang&id=<?php echo $donHang['id']?>"
                                                               class="btn btn-danger btn-sm rounded-pill px-3 shadow-sm"
                                                               onclick="return confirm('❌ Bạn có chắc chắn muốn hủy đơn hàng này?')"
                                                               data-bs-toggle="tooltip"
                                                               title="Hủy đơn hàng">
                                                                <i class="fa fa-times me-1"></i>
                                                                Hủy
                                                            </a>
                                                        <?php endif; ?>
                                                    </div>
                                                </td>
                                            </tr>
                                            <?php endforeach; ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                        <!-- Empty State (if no orders) -->
                        <?php if (empty($donHangs)): ?>
                        <div class="card border-0 shadow-sm rounded-4 mt-4">
                            <div class="card-body text-center py-5">
                                <i class="fa fa-shopping-cart text-muted" style="font-size: 80px;"></i>
                                <h4 class="mt-4 mb-3 fw-bold">Chưa có đơn hàng nào</h4>
                                <p class="text-muted mb-4">Bạn chưa có đơn hàng nào. Hãy bắt đầu mua sắm ngay!</p>
                                <a href="shop.html" class="btn btn-primary rounded-pill px-5 py-3 fw-semibold">
                                    <i class="fa fa-shopping-bag me-2"></i>
                                    Mua Sắm Ngay
                                </a>
                            </div>
                        </div>
                        <?php endif; ?>

                        <!-- Order Status Legend -->
                        <div class="card border-0 shadow-sm rounded-4 mt-4">
                            <div class="card-header bg-light border-0 p-4">
                                <h6 class="mb-0 fw-bold">
                                    <i class="fa fa-info-circle me-2 text-info"></i>
                                    Giải thích trạng thái đơn hàng
                                </h6>
                            </div>
                            <div class="card-body p-4">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <div class="d-flex align-items-center">
                                            <span class="badge bg-warning rounded-pill px-3 py-2 me-3">
                                                <i class="fa fa-clock-o"></i>
                                            </span>
                                            <div>
                                                <strong>Chờ xác nhận:</strong>
                                                <small class="text-muted d-block">Đơn hàng đang chờ xử lý</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="d-flex align-items-center">
                                            <span class="badge bg-info rounded-pill px-3 py-2 me-3">
                                                <i class="fa fa-check"></i>
                                            </span>
                                            <div>
                                                <strong>Đã xác nhận:</strong>
                                                <small class="text-muted d-block">Đơn hàng đã được xác nhận</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="d-flex align-items-center">
                                            <span class="badge bg-primary rounded-pill px-3 py-2 me-3">
                                                <i class="fa fa-truck"></i>
                                            </span>
                                            <div>
                                                <strong>Đang giao:</strong>
                                                <small class="text-muted d-block">Đơn hàng đang được vận chuyển</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="d-flex align-items-center">
                                            <span class="badge bg-success rounded-pill px-3 py-2 me-3">
                                                <i class="fa fa-check-circle"></i>
                                            </span>
                                            <div>
                                                <strong>Đã giao:</strong>
                                                <small class="text-muted d-block">Giao hàng thành công</small>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="d-flex align-items-center">
                                            <span class="badge bg-danger rounded-pill px-3 py-2 me-3">
                                                <i class="fa fa-times-circle"></i>
                                            </span>
                                            <div>
                                                <strong>Đã hủy:</strong>
                                                <small class="text-muted d-block">Đơn hàng đã bị hủy</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- orders main wrapper end -->
</main>


<?php require_once 'layout/miniCart.php'; ?>
<?php require_once 'layout/footer.php'; ?>