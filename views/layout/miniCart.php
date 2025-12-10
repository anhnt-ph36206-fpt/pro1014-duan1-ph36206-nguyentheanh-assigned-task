<!-- Offcanvas Mini Cart -->
    <div class="offcanvas offcanvas-end offcanvas-minicart" tabindex="-1" id="miniCart">
        <!-- Header -->
        <div class="minicart-header">
            <div class="d-flex justify-content-between align-items-center">
                <h5 class="mb-0">
                    <i class="fas fa-shopping-bag me-2"></i>
                    Giỏ hàng của bạn
                    <span class="badge-count ms-2">2</span>
                </h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas"></button>
            </div>
        </div>

        <!-- Body -->
        <div class="offcanvas-body p-0">
            <!-- Cart Items -->
            <div class="minicart-scroll">
                <!-- Item 1 -->
                <div class="minicart-item">
                    <div class="d-flex gap-3">
                        <div class="minicart-thumb flex-shrink-0">
                            <a href="product-details.html">
                                <img src="https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=400" alt="product">
                            </a>
                        </div>
                        <div class="flex-grow-1">
                            <h6 class="product-name mb-2">
                                <a href="product-details.html">Dozen White Botanical Linen Dinner Napkins</a>
                            </h6>
                            <div class="d-flex justify-content-between align-items-center">
                                <div>
                                    <span class="text-muted small">Số lượng: </span>
                                    <span class="fw-bold">1</span>
                                    <span class="mx-1">×</span>
                                    <span class="cart-price">$100.00</span>
                                </div>
                            </div>
                        </div>
                        <button class="minicart-remove flex-shrink-0">
                            <i class="fas fa-times"></i>
                        </button>
                    </div>
                </div>

                <!-- Item 2 -->
                <div class="minicart-item">
                    <div class="d-flex gap-3">
                        <div class="minicart-thumb flex-shrink-0">
                            <a href="product-details.html">
                                <img src="https://images.unsplash.com/photo-1615881445657-d3c8f3c2d6cc?w=400" alt="product">
                            </a>
                        </div>
                        <div class="flex-grow-1">
                            <h6 class="product-name mb-2">
                                <a href="product-details.html">Premium Cotton Table Runner Set</a>
                            </h6>
                            <div class="d-flex justify-content-between align-items-center">
                                <div>
                                    <span class="text-muted small">Số lượng: </span>
                                    <span class="fw-bold">1</span>
                                    <span class="mx-1">×</span>
                                    <span class="cart-price">$80.00</span>
                                </div>
                            </div>
                        </div>
                        <button class="minicart-remove flex-shrink-0">
                            <i class="fas fa-times"></i>
                        </button>
                    </div>
                </div>
            </div>

            <!-- Pricing Summary -->
            <div class="bg-light p-3">
                <div class="pricing-row">
                    <span class="text-muted">Tạm tính</span>
                    <span class="fw-bold">$180.00</span>
                </div>
                <div class="pricing-row">
                    <span class="text-muted">Eco Tax (-2.00)</span>
                    <span class="fw-bold">$10.00</span>
                </div>
                <div class="pricing-row">
                    <span class="text-muted">VAT (20%)</span>
                    <span class="fw-bold">$36.00</span>
                </div>
                <div class="pricing-row total">
                    <span class="text-uppercase">Tổng cộng</span>
                    <span class="text-primary">$226.00</span>
                </div>
            </div>

            <!-- Action Buttons -->
            <div class="minicart-actions d-grid gap-2">
                <a href="<?= BASE_URL . '?act=gio-hang' ?>" class="btn btn-cart btn-lg">
                    <i class="fas fa-shopping-cart me-2"></i>
                    Xem giỏ hàng
                </a>
            </div>
            <div class="minicart-actions d-grid gap-2">
                <a href="<?= BASE_URL . '?act=thanh-toan' ?>" class="btn btn-checkout btn-lg">
                    <i class="fas fa-credit-card me-2"></i>
                    Thanh toán ngay
                </a>
            </div>
        </div>
    </div>