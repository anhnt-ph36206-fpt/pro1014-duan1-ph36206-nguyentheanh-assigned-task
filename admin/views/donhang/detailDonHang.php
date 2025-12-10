<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Chi tiết đơn hàng</title>

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
                    <div class="col-sm-10">
                        <h1>Quản lý danh sách đơn hàng - Đơn hàng: <?= $donHang['ma_don_hang'] ?></h1>
                    </div>
                    <div class="col-sm-2">
                        <form action="" method="POST">
                            <select name="" id="" class="form-control">
                                <?php foreach ($listTrangThaiDonHang as $key => $trangThai): ?>
                                    <option
                                        <?= $trangThai['id'] == $donHang['trang_thai_id'] ? 'selected' : '' ?>
                                        <?= $trangThai['id'] < $donHang['trang_thai_id'] ? 'disabled' : '' ?>
                                        value="<?= $trangThai['id'] ?>">
                                        <?= $trangThai['ten_trang_thai'] ?>
                                    </option>
                                <?php endforeach ?>
                            </select>
                        </form>
                    </div>
                </div>
            </div>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12">
                        <?php
                        if ($donHang['trang_thai_id'] == 1) {
                            $colorAlerts = 'primary';
                        } elseif ($donHang['trang_thai_id'] >= 2 && $donHang['trang_thai_id'] <= 9) {
                            $colorAlerts = 'warning';
                        } elseif ($donHang['trang_thai_id'] == 10) {
                            $colorAlerts = 'success';
                        } else {
                            $colorAlerts = 'danger';
                        }
                        ?>
                        <div class="alert alert-<?= $colorAlerts; ?>" role="alert">
                            Đơn hàng: <?= $donHang['ten_trang_thai'] ?>
                        </div>


                        <!-- Main content -->
                        <div class="invoice p-3 mb-3">
                            <!-- title row -->
                            <div class="row">
                                <div class="col-12">
                                    <h4>
                                        <small class="float-right">Ngày đặt: <?= formatDate($donHang['ngay_dat']) ?></small>
                                    </h4>
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- info row -->
                            <div class="row invoice-info">
                                <div class="col-sm-4 invoice-col">
                                    Thông tin người đặt
                                    <address>
                                        <strong><?= $donHang['ho_ten'] ?></strong><br>
                                        Email: <?= $donHang['email'] ?><br>
                                        Số điện thoại: <?= $donHang['so_dien_thoai'] ?><br>
                                        
                                    </address>
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-4 invoice-col">
                                    Thông tin người nhận
                                    <address>
                                        <strong><?= $donHang['ten_nguoi_nhan'] ?></strong><br>
                                        Email: <?= $donHang['email_nguoi_nhan'] ?><br>
                                        Số điện thoại: <?= $donHang['sdt_nguoi_nhan'] ?><br>
                                        Địa chỉ: <?= $donHang['dia_chi_nguoi_nhan'] ?><br>
                                    </address>
                                </div>
                                <!-- /.col -->
                                <div class="col-sm-4 invoice-col">
                                    <b>Mã đơn hàng: <?= $donHang['ma_don_hang'] ?><br>
                                        <br>
                                        <b>Tổng tiền: <?= formatPrice($donHang['tong_tien']) ?><br>
                                            <b>Ghi chú: <?= $donHang['ghi_chu'] ?><br>
                                                <b>Thanh toán: <?= $donHang['ten_phuong_thuc'] ?>
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->

                            <!-- Table row -->
                            <div class="row">
                                <div class="col-12 table-responsive">
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Tên sản phẩm</th>
                                                <th>Đơn giá</th>
                                                <th>Số lượng</th>
                                                <th>Thành tiền</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php $tong_tien = 0; ?>
                                            <?php foreach ($sanPhamDonHang as $key => $sanPham): ?>
                                                <tr>
                                                    <td><?= $key + 1 ?></td>
                                                    <td><?= $sanPham['ten_san_pham'] ?></td>
                                                    <td><?= formatPrice($sanPham['don_gia']) ?></td>
                                                    <td><?= $sanPham['so_luong'] ?></td>
                                                    <td><?= formatPrice($sanPham['thanh_tien']) ?></td>
                                                </tr>
                                                <?php $tong_tien += $sanPham['thanh_tien']; ?>
                                            <?php endforeach; ?>
                                        </tbody>
                                    </table>
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->

                            <div class="row">
                                <!-- accepted payments column -->

                                <!-- /.col -->
                                <div class="col-6">
                                    <p class="lead">Ngày đặt: <?= formatDate($donHang['ngay_dat']) ?></p>

                                    <div class="table-responsive">
                                        <table class="table">
                                            <tr>
                                                <th style="width:50%">Thành tiền:</th>
                                                <td>
                                                    <?= formatPrice($tong_tien) ?>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>Vận chuyển:</th>
                                                <td>200.000 VNĐ</td>
                                            </tr>
                                            <tr>
                                                <th>Tổng tiền:</th>
                                                <td><?= formatPrice($tong_tien + 200000) ?></td>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                                <!-- /.col -->
                            </div>
                            <!-- /.row -->

                            <!-- this row will not appear when printing -->

                        </div>
                        <!-- /.invoice -->
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
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