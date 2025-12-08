<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Quản lý chi tiết sản phẩm</title>

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="./plugins/fontawesome-free/css/all.min.css">
  <!-- DataTables + Buttons CSS -->
  <link rel="stylesheet" href="./plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="./plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="./plugins/datatables-buttons/css/buttons.bootstrap4.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="./dist/css/adminlte.min.css">
  <link rel="stylesheet" href="./assets/css/detailSanPham.css">
</head>

<body class="hold-transition sidebar-mini">

  <?php require './views/layout/header.php'?>
  <?php include './views/layout/navbar.php'?>
  <?php include './views/layout/sidebar.php'?>

  <!-- Content Wrapper -->
  <div class="content-wrapper">
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-3">
          <div class="col-sm-6">
            <h1 class="m-0" >Chi Tiết Sản Phẩm</h1>
          </div>
          <div class="col-sm-6 text-right">
            <a href="<?php echo BASE_URL_ADMIN . '?act=san-pham' ?>" class="btn-back">
              <i class="fas fa-arrow-left"></i> Quay lại
            </a>
            <a href="<?php echo BASE_URL_ADMIN . '?act=form-sua-san-pham&id_san_pham=' . $sanPham['id'] ?>" class="btn btn-warning ml-2">
              <i class="fas fa-edit"></i> Chỉnh sửa
            </a>
          </div>
        </div>
      </div>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid product-detail-container">
        <div class="row">
          <!-- Product Gallery -->
          <div class="col-12 col-md-5 mb-4">
            <div class="product-gallery">
              <img style="width:100%; height:auto" src="<?php echo BASE_URL . $sanPham['hinh_anh'] ?>" class="product-image" alt="Product Image">

              <div class="product-image-thumbs">
                <?php foreach ($listAnhSanPham as $key => $anhSP): ?>
                  <div class="product-image-thumb<?php echo $key == 0 ? ' active' : '' ?>">
                    <img src="<?php echo BASE_URL . $anhSP['link_hinh_anh'] ?>" alt="Product Image" onclick="document.querySelector('.product-image').src='<?php echo BASE_URL . $anhSP['link_hinh_anh'] ?>'; document.querySelectorAll('.product-image-thumb').forEach(t => t.classList.remove('active')); this.parentElement.classList.add('active');">
                  </div>
                <?php endforeach?>
              </div>
            </div>
          </div>

          <!-- Product Info -->
          <div class="col-12 col-md-7">
            <div class="product-info-section">
              <div class="product-header">
                <h2 class="product-title"><?php echo $sanPham['ten_san_pham'] ?></h2>
                <div class="product-category-badge">
                  <i class="fas fa-tag"></i>                                             <?php echo $sanPham['ten_danh_muc'] ?>
                </div>
              </div>

              <!-- Price Info -->
              <div class="info-grid">
                <div class="info-item">
                  <div class="info-label">
                    <i class="fas fa-dollar-sign"></i> Giá gốc
                  </div>
                  <div class="info-value price"><?php echo number_format($sanPham['gia_san_pham'], 0, ',', '.') ?> đ</div>
                </div>

                <div class="info-item">
                  <div class="info-label">
                    <i class="fas fa-percent"></i> Giá khuyến mãi
                  </div>
                  <div class="info-value discount"><?php echo number_format($sanPham['gia_khuyen_mai'], 0, ',', '.') ?> đ</div>
                </div>

                <div class="info-item success">
                  <div class="info-label">
                    <i class="fas fa-cubes"></i> Số lượng
                  </div>
                  <div class="info-value"><?php echo $sanPham['so_luong'] ?></div>
                </div>

                <div class="info-item info">
                  <div class="info-label">
                    <i class="fas fa-eye"></i> Lượt xem
                  </div>
                  <div class="info-value"><?php echo $sanPham['luot_xem'] ?></div>
                </div>

                <div class="info-item warning">
                  <div class="info-label">
                    <i class="fas fa-calendar"></i> Ngày nhập
                  </div>
                  <div class="info-value"><?php echo date('d/m/Y', strtotime($sanPham['ngay_nhap'])) ?></div>
                </div>

                <div class="info-item">
                  <div class="info-label">
                    <i class="fas fa-info-circle"></i> Trạng thái
                  </div>
                  <div>
                    <span class="status-badge                                              <?php echo $sanPham['trang_thai'] == 1 ? 'active' : 'inactive' ?>">
                      <?php echo $sanPham['trang_thai'] == 1 ? '✓ Còn bán' : '✗ Dừng bán' ?>
                    </span>
                  </div>
                </div>
              </div>

              <!-- Description -->
              <div class="description-section">
                <h5 style="color: #1a1a1a; margin-bottom: 10px; font-weight: 700;">
                  <i class="fas fa-align-left" style="color: var(--info-color); margin-right: 8px;"></i> Mô tả sản phẩm
                </h5>
                <p><?php echo nl2br($sanPham['mo_ta']) ?></p>
              </div>
            </div>
          </div>
        </div>

        <!-- Comments Section -->
        <div class="comments-section">
          <h3 class="section-title">
            <i class="fas fa-comments" style="margin-right: 10px;"></i> Bình luận của khách hàng
          </h3>

          <div class="table-wrapper mt-4">
            <div class="table-responsive">
              <table id="commentsTable" class="table table-hover">
                <thead>
                  <tr class="text-center"> 
                    <th style="width: 5%;">STT</th>
                    <th style="width: 20%;">Người bình luận</th>
                    <th style="width: 10%;">Ảnh đại diện</th>
                    <th style="width: 35%;">Nội dung</th>
                    <th style="width: 15%;">Ngày bình luận</th>
                    <th style="width: 10%;">Trạng thái</th>
                    <th style="width: 15%;">Thao tác</th>
                  </tr>
                </thead>
                <tbody>
                  <?php foreach ($listBinhLuan as $key => $binhLuan): ?>
                    <tr class="text-center">
                      <td class="text-center font-weight-bold"><?php echo $key + 1 ?></td>
                      <td>
                        <a target="_blank" class="commenter-link" href="<?php echo BASE_URL_ADMIN . '?act=chi-tiet-khach-hang&id_khach_hang=' . $binhLuan['tai_khoan_id'] ?>">
                          <i class="fas fa-user-circle" style="margin-right: 5px;"></i><?php echo $binhLuan['ho_ten'] ?>
                        </a>
                      </td>
                      <td>
                        <img src="<?php echo BASE_URL . $binhLuan['anh_dai_dien'] ?>" alt="User Avatar" style="width: 50px; height: 50px; object-fit: cover;">
                      </td>
                      <td>
                        <span title="<?php echo $binhLuan['noi_dung'] ?>">
                          <?php echo substr($binhLuan['noi_dung'], 0, 60) . (strlen($binhLuan['noi_dung']) > 60 ? '...' : '') ?>
                        </span>
                      </td>
                      <td class="comment-date"><?php echo date('d/m/Y H:i', strtotime($binhLuan['ngay_dang'])) ?></td>
                      <td class="text-center">
                        <span class="status-display                                                    <?php echo $binhLuan['trang_thai'] == 1 ? 'visible' : 'hidden' ?>">
                          <?php echo $binhLuan['trang_thai'] == 1 ? 'Hiển thị' : 'Ẩn' ?>
                        </span>
                      </td>
                      <td>
                        <form action="<?php echo BASE_URL_ADMIN . '?act=update-trang-thai-binh-luan' ?>" method="post" style="display: inline;">
                          <input type="hidden" name="id_binh_luan" value="<?php echo $binhLuan['id'] ?>">
                          <input type="hidden" name="name_view" value="detail_sanpham">
                          <button type="submit" class="btn btn-sm btn-toggle-status                                                                                    <?php echo $binhLuan['trang_thai'] == 1 ? 'btn-danger' : 'btn-success' ?>" onclick="return confirm('<?php echo $binhLuan['trang_thai'] == 1 ? 'Ẩn bình luận này?' : 'Hiển thị bình luận này?' ?>')">
                            <i class="fas                                          <?php echo $binhLuan['trang_thai'] == 1 ? 'fa-eye-slash' : 'fa-eye' ?>"></i>
                            <?php echo $binhLuan['trang_thai'] == 1 ? 'Ẩn' : 'Hiển thị' ?>
                          </button>
                        </form>
                      </td>
                    </tr>
                  <?php endforeach; ?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>

  <?php include './views/layout/footer.php'; ?>

  <!-- jQuery -->
  <script src="./plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap JS -->
  <script src="./plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <script src="./dist/js/adminlte.min.js"></script>
  <!-- DataTables JS -->
  <script src="./plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="./plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>

  <script>
    $(document).ready(function() {
      $('#commentsTable').DataTable({
        "responsive": true,
        "lengthChange": false,
        "autoWidth": false,
        "pageLength": 10,
        "language": {
          "url": "//cdn.datatables.net/plug-ins/1.10.16/i18n/Vietnamese.json"
        },
        "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
      }).buttons().container().appendTo('#example2_wrapper .col-md-6:eq(0)');
    });
  </script>
</body>

</html>
