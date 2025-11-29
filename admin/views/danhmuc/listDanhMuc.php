<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Quản lý danh mục sản phẩm</title>

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
            <h1>Quản lý danh mục sản phẩm</h1>
          </div>
          <div class="col-sm-6">
            <!-- Nút thêm danh mục (tuỳ bạn) -->
            <a href="<?= BASE_URL_ADMIN . '?act=form-them-danh-muc' ?>" class="btn btn-success float-right">
              <i class="fas fa-plus"></i> Thêm danh mục mới
            </a>
          </div>
        </div>
      </div>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Danh sách danh mục sản phẩm</h3>
              </div>
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                    <tr>
                      <th>STT</th>
                      <th>Tên danh mục</th>
                      <th>Mô tả</th>
                      <th>Thao tác</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php foreach ($listDanhMuc as $key => $danhMuc): ?>
                      <tr>
                        <td><?= $key + 1 ?></td>
                        <td><?= htmlspecialchars($danhMuc['ten_danh_muc']) ?></td>
                        <td><?= htmlspecialchars($danhMuc['mo_ta']) ?></td>
                        <td>
                          <a href="<?= BASE_URL_ADMIN . '?act=form-sua-danh-muc&id_danh_muc=' . $danhMuc['id'] ?>" class="btn btn-warning btn-sm">
                            <i class="fas fa-edit"></i> Sửa
                          </a>
                          <a href="<?= BASE_URL_ADMIN . '?act=xoa-danh-muc&id_danh_muc=' . $danhMuc['id'] ?>"
                            onclick="return confirm('Bạn chắc chắn xoá danh mục này?')"
                            class="btn btn-danger btn-sm">
                            <i class="fas fa-trash"></i> Xoá
                          </a>
                        </td>
                      </tr>
                    <?php endforeach; ?>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
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

</body>

</html>