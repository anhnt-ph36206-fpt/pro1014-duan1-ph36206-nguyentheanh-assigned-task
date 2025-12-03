<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Quản lý danh sách sản phẩm</title>

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
  <style>
    /* ------------------------------
   Ảnh chính của sản phẩm
-------------------------------- */
    .product-image {
      width: 100%;
      height: 380px;
      object-fit: cover;
      border-radius: 10px;
      border: 1px solid #eee;
      background: #fafafa;
    }

    /* ------------------------------
   Nhóm ảnh nhỏ (thumbnail)
-------------------------------- */
    .product-image-thumbs {
      display: flex;
      gap: 8px;
      margin-top: 12px;
      overflow-x: auto;
      padding-bottom: 6px;
    }

    .product-image-thumb {
      width: 70px;
      height: 70px;
      border-radius: 6px;
      overflow: hidden;
      border: 2px solid transparent;
      cursor: pointer;
      transition: 0.25s;
    }

    .product-image-thumb img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }

    /* Hover thumbnail */
    .product-image-thumb:hover {
      border-color: #007bff;
      transform: scale(1.05);
    }

    /* Thumbnail đang active */
    .product-image-thumb.active {
      border-color: #007bff;
      box-shadow: 0 0 4px rgba(0, 123, 255, 0.7);
    }

    /* ------------------------------
   Card Album hình ảnh sản phẩm
-------------------------------- */
    .card-info .table td,
    .card-info .table th {
      vertical-align: middle;
    }

    /* Nút delete */
    .badge-danger {
      padding: 6px 10px;
      font-size: 13px;
    }

    /* Input file */
    input[type="file"] {
      padding: 6px;
    }

    /* ------------------------------
   Cải thiện bố cục
-------------------------------- */
    @media (max-width: 768px) {
      .product-image {
        height: 260px;
      }

      .product-image-thumb {
        width: 60px;
        height: 60px;
      }
    }
  </style>
</head>

<body class="hold-transition sidebar-mini">

  <?php require './views/layout/header.php' ?>
  <?php include './views/layout/navbar.php' ?>
  <?php include './views/layout/sidebar.php' ?>

  <!-- Content Wrapper -->
  <div class="content-wrapper">
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Quản Lý Danh Sách Thú Cưng</h1>
          </div>
          <div class="col-sm-6">
            <!-- Nút thêm danh mục (tuỳ bạn) -->
            <a href="<?= BASE_URL_ADMIN . '?act=form-them-san-pham' ?>" class="btn btn-success float-right">
              <i class="fas fa-plus"></i> Thêm sản phẩm mới
            </a>
          </div>
        </div>
      </div>
    </section>

    <!-- Main content -->
    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card card-solid">
        <div class="card-body">
          <div class="row">
            <div class="col-12 col-sm-6">
              <h3 class="d-inline-block d-sm-none"></h3>
              <div class="col-12">
                <img tyle="width:500px; hetght:500px" src="<?= BASE_URL . $sanPham['hinh_anh'] ?> " class="product-image" alt="Product Image">
              </div>
              <div class="col-12 product-image-thumbs">
                <!-- <div class="product-image-thumb active"><img src="../../dist/img/prod-1.jpg" alt="Product Image"></div> -->
                <?php foreach ($listAnhSanPham as $key => $anhSP): ?>
                  <div class="product-image-thumb <?= $anhSP[$key] == 0 ? 'active' : '' ?>"><img src="<?= BASE_URL . $anhSP['link_hinh_anh'] ?>" alt="Product Image"></div>
                <?php endforeach ?>
              </div>
            </div>
            <div class="col-12 col-sm-6">
              <h3 class="my-3">Tên sản phẩm: <?= $sanPham['ten_san_pham'] ?></h3>


              <hr>

              <h4 class="mt-3">Giá tiền <small><?= $sanPham['gia_san_pham'] ?></small></h4>
              <h4 class="mt-3">Khuyến mãi <small><?= $sanPham['gia_khuyen_mai'] ?></small></h4>
              <h4 class="mt-3">Số lượng <small><?= $sanPham['so_luong'] ?></small></h4>
              <h4 class="mt-3">Lượt xem <small><?= $sanPham['luot_xem'] ?></small></h4>
              <h4 class="mt-3">Ngày nhập <small><?= $sanPham['ngay_nhap'] ?></small></h4>
              <h4 class="mt-3">Mô tả <small><?= $sanPham['mo_ta'] ?></small></h4>
              <h4 class="mt-3">Danh mục <small><?= $sanPham['ten_danh_muc'] ?></small></h4>
              <h4 class="mt-3">Trạng thái <small><?= $sanPham['trang_thai'] == 1 ? 'còn bán' : 'dừng bán' ?></small></h4>




            </div>
          </div>
          <div class="row mt-4">
            <nav class="w-100">
              <div class="nav nav-tabs" id="product-tab" role="tablist">
                <a class="nav-item nav-link active" id="product-desc-tab" data-toggle="tab" href="#binh-luan" role="tab" aria-controls="product-desc" aria-selected="true">Bình luận</a>
              </div>
            </nav>
            <div class="tab-content p-3" id="nav-tabContent">
              <div class="tab-pane fade show active" id="binh-luan" role="tabpanel" aria-labelledby="product-desc-tab">
                <div class="container-fluid">
                  <table class="table table-striped table-hover">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>Tên người BL</th>
                        <th>Nội dung</th>
                        <th>Ngày đăng</th>
                        <th>Thao tác</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>Nguyễn Thế Anh</td>
                        <td>nd</td>
                        <td>20/11/2012</td>
                        <td>
                          <div class="btn-group">
                            <a href="#"><button class="btn btn-warning">Ẩn</button></a>
                            <a href="#"><button class="btn btn-danger">Xóa</button></a>
                          </div>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->

    </section>
  </div>

  <?php include './views/layout/footer.php'; ?>

  <!-- Scripts -->
  <script src="./plugins/jquery/jquery.min.js"></script>
  <script src="./plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="./plugins/datatables/jquery.dataTables.min.js"></script>
  <script src="./plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
  <script src="./plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
  <script src="./plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>

  <!-- Buttons Plugin (bắt buộc phải có) -->
  <script src="./plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
  <script src="./plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
  <script src="./plugins/jszip/jszip.min.js"></script>
  <script src="./plugins/pdfmake/pdfmake.min.js"></script>
  <script src="./plugins/pdfmake/vfs_fonts.js"></script>
  <script src="./plugins/datatables-buttons/js/buttons.html5.min.js"></script>
  <script src="./plugins/datatables-buttons/js/buttons.print.min.js"></script>
  <script src="./plugins/datatables-buttons/js/buttons.colVis.min.js"></script>

  <script src="./dist/js/adminlte.min.js"></script>

  <!-- Khởi tạo DataTable + Buttons -->
  <script>
    $(function() {
      $("#example1").DataTable({
        "responsive": true,
        "lengthChange": false,
        "autoWidth": false,
        "pageLength": 25,
        "dom": 'Bfrtip', // Rất quan trọng: hiển thị Buttons
        "buttons": [{
            extend: 'copy',
            text: 'Copy',
            title: 'Danh sách danh mục - ' + new Date().toLocaleDateString('vi-VN')
          },
          {
            extend: 'csv',
            text: 'CSV',
            title: 'Danh_sach_danh_muc'
          },
          {
            extend: 'excel',
            text: 'Excel',
            title: 'Danh_sach_danh_muc'
          },
          {
            extend: 'pdf',
            text: 'PDF',
            title: 'Danh sách danh mục sản phẩm'
          },
          {
            extend: 'print',
            text: 'Print'
          },
          'colvis'
        ],
        "language": {
          "url": "//cdn.datatables.net/plug-ins/1.13.7/i18n/vi.json" // Tiếng Việt (tuỳ chọn)
        }
      }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
    });
  </script>
  <script>
    $(document).ready(function() {
      $('.product-image-thumb').on('click', function() {
        var $image_element = $(this).find('img')
        $('.product-image').prop('src', $image_element.attr('src'))
        $('.product-image-thumb.active').removeClass('active')
        $(this).addClass('active')
      })
    })
  </script>
</body>

</html>