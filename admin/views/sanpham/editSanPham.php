<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Quản lý sản phẩm</title>
  <!-- ... (css links giữ nguyên) ... -->
</head>

<body class="hold-transition sidebar-mini">
  <?php require './views/layout/header.php' ?>
  <?php include './views/layout/navbar.php' ?>
  <?php include './views/layout/sidebar.php' ?>

  <div class="content-wrapper">
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Sửa thông tin sản phẩm: <?php echo $sanPham['ten_san_pham'] ?></h1>
          </div>
          <div class="col-sm-3">
            <a href="<?= BASE_URL_ADMIN . '?act=san-pham' ?>" class="btn btn-secondary">Cancel</a>
          </div>
        </div>
      </div>
    </section>

    <section class="content">
      <div class="row">
        <!-- Form chỉnh sửa sản phẩm -->
        <div class="col-md-8">
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Thông tin sản phẩm</h3>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>

            <form action="<?php echo BASE_URL_ADMIN . '?act=sua-san-pham' ?>" method="post" enctype="multipart/form-data">
              <div class="card-body">
                <input type="hidden" id="san_pham_id" name="san_pham_id" value="<?php echo $sanPham['id'] ?>">
                <div class="form-group">
                  <label for="ten_san_pham">Tên sản phẩm</label>
                  <input type="text" id="ten_san_pham" class="form-control" name="ten_san_pham" value="<?php echo htmlspecialchars($sanPham['ten_san_pham']) ?>">
                  <?php if (!empty($errors['ten_san_pham'])): ?>
                    <p class="text-danger"><?= $errors['ten_san_pham'] ?></p>
                  <?php endif; ?>
                </div>

                <div class="form-group">
                  <label for="gia_san_pham">Giá sản phẩm</label>
                  <input type="number" id="gia_san_pham" class="form-control" name="gia_san_pham" value="<?php echo $sanPham['gia_san_pham'] ?>">
                  <?php if (!empty($errors['gia_san_pham'])): ?>
                    <p class="text-danger"><?= $errors['gia_san_pham'] ?></p>
                  <?php endif; ?>
                </div>

                <div class="form-group">
                  <label for="gia_khuyen_mai">Giá khuyến mãi</label>
                  <input type="number" id="gia_khuyen_mai" class="form-control" name="gia_khuyen_mai" value="<?php echo $sanPham['gia_khuyen_mai'] ?>">
                  <?php if (!empty($errors['gia_khuyen_mai'])): ?>
                    <p class="text-danger"><?= $errors['gia_khuyen_mai'] ?></p>
                  <?php endif; ?>
                </div>

                <div class="form-group">
                  <label for="hinh_anh">Hình Ảnh</label>
                  <input type="file" id="hinh_anh" class="form-control" name="hinh_anh">
                </div>

                <div class="form-group">
                  <label for="so_luong">Số lượng</label>
                  <input type="number" id="so_luong" class="form-control" name="so_luong" value="<?php echo $sanPham['so_luong'] ?>">
                  <?php if (!empty($errors['so_luong'])): ?>
                    <p class="text-danger"><?= $errors['so_luong'] ?></p>
                  <?php endif; ?>
                </div>

                <div class="form-group">
                  <label for="ngay_nhap">Ngày nhập</label>
                  <input type="date" id="ngay_nhap" class="form-control" name="ngay_nhap" value="<?php echo $sanPham['ngay_nhap'] ?>">
                  <?php if (!empty($errors['ngay_nhap'])): ?>
                    <p class="text-danger"><?= $errors['ngay_nhap'] ?></p>
                  <?php endif; ?>
                </div>

                <div class="form-group">
                  <label for="inputStatus">Danh Mục Sản Phẩm</label>
                  <select id="inputStatus" name="danh_muc_id" class="form-control custom-select">
                    <?php foreach ($listDanhMuc as $danhMuc): ?>
                      <option value="<?php echo $danhMuc['id'] ?>" <?php echo $danhMuc['id'] == $sanPham['danh_muc_id'] ? 'selected' : '' ?>>
                        <?php echo $danhMuc['ten_danh_muc'] ?>
                      </option>
                    <?php endforeach; ?>
                  </select>
                  <?php if (!empty($errors['danh_muc_id'])): ?>
                    <p class="text-danger"><?= $errors['danh_muc_id'] ?></p>
                  <?php endif; ?>
                </div>

                <div class="form-group">
                  <label for="trang_thai">Trạng thái</label>
                  <select id="trang_thai" name="trang_thai" class="form-control custom-select">
                    <option value="1" <?php echo $sanPham['trang_thai'] == 1 ? 'selected' : '' ?>>Còn bán</option>
                    <option value="2" <?php echo $sanPham['trang_thai'] == 2 ? 'selected' : '' ?>>Dừng bán</option>
                  </select>
                  <?php if (!empty($errors['trang_thai'])): ?>
                    <p class="text-danger"><?= $errors['trang_thai'] ?></p>
                  <?php endif; ?>
                </div>

                <div class="form-group">
                  <label for="mo_ta">Mô tả sản phẩm</label>
                  <textarea id="mo_ta" class="form-control" rows="4" name="mo_ta"><?php echo htmlspecialchars($sanPham['mo_ta']) ?></textarea>
                  <?php if (!empty($errors['mo_ta'])): ?>
                    <p class="text-danger"><?= $errors['mo_ta'] ?></p>
                  <?php endif; ?>
                </div>
              </div>

              <div class="card-footer text-center">
                <button type="submit" class="btn btn-primary">Cập Nhật Sản Phẩm</button>
              </div>
            </form>
          </div>
        </div>

        <!-- Album hình ảnh -->
        <div class="col-md-4">
          <div class="card card-info">
            <div class="card-header">
              <h3 class="card-title">Album hình ảnh sản phẩm</h3>

              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                  <i class="fas fa-minus"></i>
                </button>
              </div>
            </div>
            <div class="card-body p-0">
              <form action="<?php echo BASE_URL_ADMIN . '?act=sua-album-anh-san-pham' ?>" method="post" enctype="multipart/form-data">
                <div class="table-responsive">
                  <table id="faqs" class="table table-hover">
                    <thead>
                      <tr>
                        <th>Ảnh </th>
                        <th>File</th>
                        <th>
                          <div class="text-center"><button onclick="addfaqs();" type="button" class="badge badge-success"><i class="fa fa-plus"></i> THÊM</button></div>
                        </th>
                      </tr>
                    </thead>
                    <tbody>
                      <input type="hidden" name="san_pham_id" value="<?php echo $sanPham['id'] ?>">
                      <input type="hidden" id="img_delete" name="img_delete">
                      <?php foreach ($listAnhSanPham as $key => $value): ?>
                        <tr id="faqs-row-<?php echo $key ?>">
                          <input type="hidden" name="current_img_ids[]" value="<?php echo $value['id'] ?>">
                          <td><img src="<?php echo BASE_URL . $value['link_hinh_anh'] ?>" alt="" style="width: 50px; height: 50px;"></td>
                          <td><input type="file" name="img_array[]" class="form-control"></td>
                          <td class="mt-10"><button type="button" onclick="removeRow(<?php echo $key ?>, <?php echo $value['id'] ?>  )" class="badge badge-danger"><i class="fa fa-trash"></i> Delete</button></td>
                        </tr>
                      <?php endforeach; ?>
                    </tbody>
                  </table>
                </div>
            </div>


        <!-- Main content -->
            <!-- /.card-body -->
            <div class="card-footer text-center">
              <button type="submit" class="btn btn-primary">Sửa thông tin</button>
            </div>
            </form>
          </div>
        </div>
      </div>


      <!-- Các nút ngoài nếu cần (nên đặt trong form nếu muốn submit) -->

    </section>
  </div>

  <?php include './views/layout/footer.php'; ?>
  <script src="./plugins/jquery/jquery.min.js"></script>
  <script>
    var faqs_row = <?php echo count($listAnhSanPham) ?>;

    function addfaqs() {
      var html = '<tr id="faqs-row-' + faqs_row + '">';
      html += '<td><img src="http://localhost/du_an1/uploads/1764629702-instagram-1.jpg" alt="" style="width: 50px; height: 50px;"></td>';
      html += '<td><input type="file" name="img_array[]" class="form-control"></td>';
      html += '<td><button type="button" class="badge badge-danger" onclick="removeRow(' + faqs_row + ', null);"><i class="fa fa-trash"></i> Delete</button></td>';
      html += '</tr>';

      $('#faqs tbody').append(html);
      faqs_row++;
    }

    function removeRow(rowId, imgId) {
      $('#faqs-row-' + rowId).remove();
      if (imgId !== null) {
        var imgDeleteInput = document.getElementById('img_delete');
        var currentValue = imgDeleteInput.value;
        imgDeleteInput.value = currentValue ? currentValue + ',' + imgId : imgId;
      }
    }
  </script>
</body>

</html>