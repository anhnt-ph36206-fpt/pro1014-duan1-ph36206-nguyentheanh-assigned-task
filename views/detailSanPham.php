<?php require_once 'layout/header.php'; ?>
<?php require_once 'layout/menu.php'; ?>

<main class="content-wrapper">
    <div class="shop-main-wrapper section-padding pb-0">
       <div class="custom-breadcrumb">
            <div class="container">
                <nav>
                    <ul class="cb-list">
                        <li>
                            <a href="<?php echo BASE_URL ?>"><i class="fa fa-home"></i>Trang chủ</a>
                        </li>
                        <li>
                            <a href="<?php echo BASE_URL . '?act=chi-tiet-san-pham&id_san_pham=' . $sanPham['id'] ?>"> Chi tiết sản phẩm</a>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <!-- Product Details Wrapper -->
                <div class="col-lg-12">
                    <div class="product-details-inner">
                        <div class="row">
                            <!-- Product Gallery -->
                            <div class="col-lg-5">
                                <div class="product-gallery">
                                    <div class="main-product-image product-large-slider">
                                        <?php foreach ($listAnhSanPham as $key => $anhSanPham): ?>
                                            <div class="pro-large-img px-2">
                                                <img src="<?php echo BASE_URL . $anhSanPham['link_hinh_anh'] ?>"
                                                     alt="product-details"
                                                     class="img-fluid rounded-3" />
                                            </div>
                                        <?php endforeach; ?>
                                    </div>
                                    <div class="thumbnail-gallery pro-nav slick-row-10 slick-arrow-style mt-3">
                                        <?php foreach ($listAnhSanPham as $key => $anhSanPham): ?>
                                            <div class="thumbnail-item pro-nav-thumb">
                                                <img src="<?php echo BASE_URL . $anhSanPham['link_hinh_anh'] ?>"
                                                     alt="product-details" />
                                            </div>
                                        <?php endforeach; ?>
                                    </div>
                                </div>
                            </div>

                            <!-- Product Info -->
                            <div class="col-lg-7">
                                <div class="product-info ml-lg-4">
                                    <div class="manufacturer-name mb-2">
                                        <a href="#" class="category-badge">
                                            <?php echo $sanPham['ten_danh_muc'] ?>
                                        </a>
                                    </div>

                                    <h3 class="product-title"><?php echo $sanPham['ten_san_pham'] ?></h3>

                                    <div class="review-section">
                                        <div class="ratings d-flex align-items-center">
                                            <div class="pro-review">
                                                <?php $countComment = count($listBinhLuan); ?>
                                                <span class="review-count">
                                                    <i class="fa fa-comment-o"></i>
                                                    <?php echo $countComment ?> Bình Luận
                                                </span>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="price-section d-flex align-items-end">
                                        <?php if ($sanPham['gia_khuyen_mai']): ?>
                                            <span class="current-price">
                                                <?php echo formatPrice($sanPham['gia_khuyen_mai']) ?>
                                            </span>
                                            <span class="original-price">
                                                <?php echo formatPrice($sanPham['gia_san_pham']) ?>
                                            </span>
                                            <span class="discount-badge">Giảm giá</span>
                                        <?php else: ?>
                                            <span class="current-price">
                                                <?php echo formatPrice($sanPham['gia_san_pham']) ?>
                                            </span>
                                        <?php endif; ?>
                                    </div>

                                    <div class="stock-info">
                                        <i class="fa fa-check-circle"></i>
                                        <span><?php echo $sanPham['trang_thai'] . ' Sản Phẩm trong Kho' ?></span>
                                    </div>

                                    <div class="product-description">
                                        <?php echo $sanPham['mo_ta'] ?>
                                    </div>

                                    <div class="quantity-cart-section">
                                        <form action="<?php echo BASE_URL . '?act=them-gio-hang' ?>" method="post">
                                            <input type="hidden" name="san_pham_id" value="<?php echo $sanPham['id'] ?>">

                                            <div class="d-flex align-items-end gap-4">
                                                <div>
                                                    <label class="quantity-label">Số Lượng:</label>
                                                    <div class="quantity-input-group">
                                                        <div class="pro-qty">
                                                            <input type="text" value="1" name="so_luong" class="quantity-input">
                                                        </div>
                                                    </div>
                                                </div>

                                                <button class="btn-add-cart">
                                                    <i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Reviews Section -->
                    <div class="reviews-section">
                        <div class="section-header text-left mb-4">
                            <h2>Đánh giá & Bình luận</h2>
                        </div>

                        <div class="review-content">
                            <ul class="nav nav-tabs-modern" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="review-tab" data-bs-toggle="tab" href="#review" role="tab">
                                        Bình luận (<?php echo count($listBinhLuan) ?>)
                                    </a>
                                </li>
                            </ul>

                            <div class="tab-content" id="myTabContent">
                                <div class="tab-pane fade show active" id="review" role="tabpanel">
                                    <div class="comment-list">
                                        <?php foreach ($listBinhLuan as $binhLuan): ?>
                                            <div class="comment-item">
                                                <div class="comment-avatar">
                                                    <img src="<?php echo $binhLuan['anh_dai_dien'] ?>" alt="User Avatar">
                                                </div>
                                                <div class="comment-content">
                                                    <h5 class="comment-author">
                                                        <?php echo $binhLuan['ho_ten'] ?>
                                                    </h5>
                                                    <div class="comment-date">
                                                        <?php echo $binhLuan['ngay_dang'] ?>
                                                    </div>
                                                    <div class="comment-text">
                                                        <?php echo $binhLuan['noi_dung'] ?>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php endforeach; ?>
                                    </div>

                                    <div class="comment-form">
                                        <h5>Gửi bình luận của bạn</h5>
                                        <form action="#" class="mt-3">
                                            <div class="form-group">
                                                <label>Nội dung bình luận <span class="text-danger">*</span></label>
                                                <textarea class="form-control" rows="4" required></textarea>
                                            </div>
                                            <button class="btn-submit-comment mt-3" type="submit">
                                                Gửi Bình Luận
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
    </div>

    <!-- Related Products -->
    <section class="related-products-section">
        <div class="container">
            <div class="section-header">
                <h2>Sản phẩm liên quan</h2>
                <p>Khám phá thêm các sản phẩm cùng danh mục</p>
            </div>

            <div class="product-carousel-4 slick-row-10 slick-arrow-style">
                <?php foreach ($listSanPhamCungDanhMuc as $key => $sanPhamCungDanhMuc): ?>
                    <div class="product-item">
                        <figure class="product-thumb">
                            <a href="<?php echo BASE_URL . '?act=chi-tiet-san-pham&id_san_pham=' . $sanPhamCungDanhMuc['id'] ?>">
                                <img class="pri-img" src="<?php echo BASE_URL . $sanPhamCungDanhMuc['hinh_anh'] ?>" alt="product">
                                <img class="sec-img" src="<?php echo BASE_URL . $sanPhamCungDanhMuc['hinh_anh'] ?>" alt="product">
                            </a>

                            <div class="product-badge">
                                <?php
                                    $ngayNhap    = new DateTime($sanPhamCungDanhMuc['ngay_nhap']);
                                    $ngayHienTai = new DateTime();
                                    $tinhNgay    = $ngayHienTai->diff($ngayNhap);

                                if ($tinhNgay->days <= 7): ?>
                                    <div class="product-label new">
                                        <span>Mới</span>
                                    </div>
                                <?php endif; ?>

                                <?php if ($sanPhamCungDanhMuc['gia_khuyen_mai']):
                                        $phanTramGiam = round((($sanPhamCungDanhMuc['gia_san_pham'] - $sanPhamCungDanhMuc['gia_khuyen_mai']) / $sanPhamCungDanhMuc['gia_san_pham']) * 100);
                                    ?>
		                                    <div class="product-label discount">
		                                        <span>Giảm		                                                     <?php echo $phanTramGiam ?>%</span>
		                                    </div>
		                                <?php endif; ?>
                            </div>

                            <div class="cart-hover">
                                <button class="btn btn-cart">Xem Chi Tiết</button>
                            </div>
                        </figure>

                        <div class="product-caption">
                            <h6 class="product-name">
                                <a href="<?php echo BASE_URL . '?act=chi-tiet-san-pham&id_san_pham=' . $sanPhamCungDanhMuc['id'] ?>">
                                    <?php echo $sanPhamCungDanhMuc['ten_san_pham'] ?>
                                </a>
                            </h6>

                            <div class="price-box">
                                <?php if ($sanPhamCungDanhMuc['gia_khuyen_mai']): ?>
                                    <span class="price-regular"><?php echo formatPrice($sanPhamCungDanhMuc['gia_khuyen_mai']) ?></span>
                                    <span class="price-old"><del><?php echo formatPrice($sanPhamCungDanhMuc['gia_san_pham']) ?></del></span>
                                <?php else: ?>
                                    <span class="price-regular"><?php echo formatPrice($sanPhamCungDanhMuc['gia_san_pham']) ?></span>
                                <?php endif; ?>
                            </div>

                            <div class="product-benefits">
                                <div class="benefit-item">
                                    <span class="benefit-label">Siêu thành viên giảm đến 10%</span>
                                </div>
                                <div class="benefit-item">
                                    <span class="benefit-label">Trả góp 0% - Ốp phụ thu - Ốd trả trước</span>
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
    </section>
</main>

<?php require_once 'layout/miniCart.php'; ?>
<?php require_once 'layout/footer.php'; ?>
