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
            <h1>Quản Lý Danh Sách Thú Cưng</h1>
          </div>
          <div class="col-sm-6">
            <!-- Nút thêm danh mục (tuỳ bạn) -->
            <a href="<?php echo BASE_URL_ADMIN . '?act=form-them-san-pham' ?>" class="btn btn-success float-right">
              <i class="fas fa-plus"></i> Thêm sản phẩm mới
            </a>
          </div>
        </div>
      </div>
    </section>

    <!-- Main content -->
    <section class="content">

      <!-- Default box -->
      <div class="card card-solid">
        <div class="card-body">
          <div class="row">
            <div class="col-12 col-sm-6">
              <h3 class="d-inline-block d-sm-none"></h3>
              <div class="col-12">
                <img tyle="width:500px; hetght:500px" src="<?php echo BASE_URL . $sanPham['hinh_anh'] ?> " class="product-image" alt="Product Image">
              </div>
              <div class="col-12 product-image-thumbs">
                <!-- <div class="product-image-thumb active"><img src="../../dist/img/prod-1.jpg" alt="Product Image"></div> -->
                <?php foreach ($listAnhSanPham as $key => $anhSP): ?>
                  <div class="product-image-thumb<?php echo $anhSP[$key] == 0 ? 'active' : '' ?>"><img src="<?php echo BASE_URL . $anhSP['link_hinh_anh'] ?>" alt="Product Image"></div>
                <?php endforeach?>
              </div>
            </div>
            <div class="col-12 col-sm-6">
              <h3 class="my-3">Tên sản phẩm:                                                  <?php echo $sanPham['ten_san_pham'] ?></h3>
              <hr>
              <h4 class="mt-3">Giá tiền <small><?php echo $sanPham['gia_san_pham'] ?></small></h4>
              <h4 class="mt-3">Khuyến mãi <small><?php echo $sanPham['gia_khuyen_mai'] ?></small></h4>
              <h4 class="mt-3">Số lượng <small><?php echo $sanPham['so_luong'] ?></small></h4>
              <h4 class="mt-3">Lượt xem <small><?php echo $sanPham['luot_xem'] ?></small></h4>
              <h4 class="mt-3">Ngày nhập <small><?php echo $sanPham['ngay_nhap'] ?></small></h4>
              <h4 class="mt-3">Mô tả <small><?php echo $sanPham['mo_ta'] ?></small></h4>
              <h4 class="mt-3">Danh mục <small><?php echo $sanPham['ten_danh_muc'] ?></small></h4>
              <h4 class="mt-3">Trạng thái <small><?php echo $sanPham['trang_thai'] == 1 ? 'còn bán' : 'dừng bán' ?></small></h4>
            </div>
          </div>
          <div class="row mt-4">
            <nav class="w-100">
              <div class="nav nav-tabs" id="product-tab" role="tablist">
                <a class="nav-item nav-link active" id="product-desc-tab" data-toggle="tab" href="#binh-luan" role="tab" aria-controls="product-desc" aria-selected="true">Bình luận</a>
              </div>
            </nav>
             <div class="col-12">
                        <h2>Bình luận của khách hàng</h2>
                        <div>
                            <table id="example2" class="table table-bordered table-striped">
                                    <thead>
                                        <tr class="text-center">
                                            <th>STT</th>
                                            <th>Người bình luận</th>
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
                                                <td>
                                                  <a target="_blank" href="<?php echo BASE_URL_ADMIN . '?act=chi-tiet-khach-hang&id_khach_hang=' . $binhLuan['tai_khoan_id'] ?>"><?php echo $binhLuan['ho_ten'] ?></a></td>
                                                <td><?php echo $binhLuan['noi_dung'] ?></td>
                                                <td><?php echo $binhLuan['ngay_dang'] ?></td>
                                                <td><?php echo $binhLuan['trang_thai'] == 1 ? 'Hiển thị' : 'Bị ẩn' ?></td>
                                                <td>
                                                    <form action="<?php echo BASE_URL_ADMIN . '?act=update-trang-thai-binh-luan' ?>" method="post">
                                                        <input type="hidden" name="id_binh_luan" value="<?php echo $binhLuan['id'] ?>">
                                                        <input type="hidden" name="name_view" value="detail_sanpham">
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
        <!-- /.card-body -->
      </div>
      <!-- /.card -->

    </section>
  </div>

  <?php include './views/layout/footer.php'; ?>
</body>

</html>