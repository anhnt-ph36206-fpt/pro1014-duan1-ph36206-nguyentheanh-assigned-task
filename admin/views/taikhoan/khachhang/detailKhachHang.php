<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quản lý thông tin khách hàng chi tiết </title>

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

    <?php require './views/layout/header.php'?>
    <?php include './views/layout/navbar.php'?>
    <?php include './views/layout/sidebar.php'?>

    <!-- Content Wrapper -->
    <div class="content-wrapper">
        <section class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1>Chi tiết tài khoản khách hàng</h1>
                    </div>
                </div>
            </div>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-6 text-center">
                        <img src="<?php echo BASE_URL . $khachHang['anh_dai_dien'] ?>" alt="" style="width:70%"
                           onerror="this.onerror=null;this.src=''">
                    </div>
                     <div class="col-6">
                            <div class="container">
                                <table class="table table-borderless">
                                    <!-- <thead>
                                         <tr>
                                            <th class="text-center">STT</th>
                                            <th>Sản phẩm</th>
                                            <th>Nội dung</th>
                                            <th>Ngày bình luận</th>
                                            <th>Trạng thái</th>
                                            <th>Thao tác</th>
                                        </tr>
                                    </thead> -->
                                    <tbody style="font-size: large;">
                                        <tr>
                                            <th>Họ tên: </th>
                                            <td><?php echo $khachHang['ho_ten'] ?></td>
                                        </tr>
                                         <tr>
                                            <th>Ngày sinh: </th>
                                            <td><?php echo $khachHang['ngay_sinh'] ?></td>
                                        </tr>
                                         <tr>
                                            <th>Email: </th>
                                            <td><?php echo $khachHang['email'] ?></td>
                                        </tr>
                                         <tr>
                                            <th>Số điện thoại: </th>
                                            <td><?php echo $khachHang['so_dien_thoai'] ?></td>
                                        </tr>
                                         <tr>
                                            <th>Giới tính: </th>
                                            <td><?php echo $khachHang['gioi_tinh'] == 1 ? 'Nam' : 'Nữ' ?></td>
                                        </tr>
                                         <tr>
                                            <th>Địa chỉ: </th>
                                            <td><?php echo $khachHang['dia_chi'] ?></td>
                                        </tr>
                                         <tr>
                                            <th>Trạng thái:</th>
                                            <td><?php echo $khachHang['trang_thai'] == 1 ? 'Active' : 'Inactive' ?></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                    </div>
                    <div class="col-12">
                        <hr>
                        <h2>Lịch sử mua hàng</h2>
                        <div>
                         <table id="example1" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Mã đơn hàng</th>
                                    <th>Tên người nhận</th>
                                    <th>Số điện thoại</th>
                                    <th>Ngày đặt</th>
                                    <th>Tổng tiền</th>
                                    <th>Trạng thái</th>
                                    <th>Thao tác</th>
                                </tr>
                            </thead>
                                <tbody>
                                    <?php foreach ($listDonHang as $key => $donHang): ?>
                                        <tr>
                                            <td><?php echo $key + 1 ?></td>
                                            <td><?php echo $donHang['ma_don_hang'] ?></td>
                                            <td><?php echo $donHang['ten_nguoi_nhan'] ?></td>
                                            <td><?php echo $donHang['sdt_nguoi_nhan'] ?></td>
                                            <td><?php echo $donHang['ngay_dat'] ?></td>
                                            <td><?php echo $donHang['tong_tien'] ?></td>
                                            <td><?php echo $donHang['ten_trang_thai'] ?></td>
                                            <td>
                                                <a href="<?php echo BASE_URL_ADMIN . '?act=chi-tiet-don-hang&id_don_hang=' . $donHang['id'] ?>" class="btn btn-info btn-sm">
                                                    <i class="far fa-eye"></i> Chi tiết
                                                </a>
                                                <a href="<?php echo BASE_URL_ADMIN . '?act=form-sua-don-hang&id_don_hang=' . $donHang['id'] ?>" class="btn btn-warning btn-sm">
                                                    <i class="fas fa-edit"></i> Sửa
                                                </a>
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="col-12">  
                        <hr>
                        <h2>Lịch sử bình luận của khách hàng</h2>
                      
                        <div>
                            <table id="example2" class="table table-bordered table-striped">
                                    <thead>
                                        <tr class="text-center">
                                            <th>STT</th>
                                            <th>Sản phẩm</th>
                                            <th>Nội dung sản phẩm</th>
                                            <th>Ngày Bình Luận</th>
                                            <th>Trạng thái</th>  
                                            <th>Thao tác</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php foreach ($listBinhLuan as $key => $binhLuan): ?>
                                            <tr class="text-center">
                                                <td><?php echo $key + 1 ?></td>
                                                <td><a target="_blank" href="<?php echo BASE_URL_ADMIN . '?act=chi-tiet-san-pham&id_san_pham=' . $binhLuan['san_pham_id'] ?>"><?php echo $binhLuan['ten_san_pham'] ?></a></td>
                                                <td><?php echo $binhLuan['noi_dung'] ?></td>
                                                <td><?php echo $binhLuan['ngay_dang'] ?></td>
                                                <td><?php echo $binhLuan['trang_thai'] == 1 ? 'Hiển thị' : 'Bị ẩn' ?></td>
                                                <td>
                                                    <form action="<?php echo BASE_URL_ADMIN . '?act=update-trang-thai-binh-luan' ?>" method="post">
                                                        <input type="hidden" name="id_binh_luan" value="<?php echo $binhLuan['id'] ?>">
                                                        <input type="hidden" name="name_view" value="detail_khach">
                                                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Bạn có chắc chắn muốn ẩn bình luận này không?')">
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
</body>
  <!-- <script>
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
  </script> -->
  <script>
    $(function () {
        $("#example1").DataTable({
            "responsive": true,
            "lengthChange": false,
            "autoWidth": false,
            // "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');

        $('#example2').DataTable({
            "responsive": true,
            "lengthChange": false,
            "autoWidth": false,
        });
    });
</script>
</html>