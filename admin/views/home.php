<!DOCTYPE html>
<html lang="vi">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Báo cáo thống kê - Admin</title>

  <!-- Google Font -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="./plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="./dist/css/adminlte.min.css">
  <!-- Chart.js -->
  <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
  
  <style>
    /* Dashboard Premium Styles */
    :root {
      --primary-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      --success-gradient: linear-gradient(135deg, #11998e 0%, #38ef7d 100%);
      --warning-gradient: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);
      --info-gradient: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);
      --danger-gradient: linear-gradient(135deg, #ff416c 0%, #ff4b2b 100%);
      --purple-gradient: linear-gradient(135deg, #8E2DE2 0%, #4A00E0 100%);
    }

    body {
      background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
      min-height: 100vh;
    }

    .content-wrapper {
      background: transparent !important;
    }

    /* Stats Cards */
    .stat-card {
      border: none;
      border-radius: 20px;
      overflow: hidden;
      transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
      position: relative;
    }

    .stat-card::before {
      content: '';
      position: absolute;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background: inherit;
      opacity: 0.1;
      transition: opacity 0.3s;
    }

    .stat-card:hover {
      transform: translateY(-10px);
      box-shadow: 0 20px 40px rgba(0,0,0,0.15);
    }

    .stat-card .card-body {
      padding: 25px;
      position: relative;
      z-index: 1;
    }

    .stat-card .icon-box {
      width: 70px;
      height: 70px;
      border-radius: 20px;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 28px;
      color: white;
      box-shadow: 0 10px 20px rgba(0,0,0,0.2);
    }

    .stat-card.bg-gradient-primary { background: var(--primary-gradient); }
    .stat-card.bg-gradient-success { background: var(--success-gradient); }
    .stat-card.bg-gradient-warning { background: var(--warning-gradient); }
    .stat-card.bg-gradient-info { background: var(--info-gradient); }
    .stat-card.bg-gradient-danger { background: var(--danger-gradient); }
    .stat-card.bg-gradient-purple { background: var(--purple-gradient); }

    .stat-card .stat-value {
      font-size: 2.5rem;
      font-weight: 700;
      color: white;
      text-shadow: 2px 2px 4px rgba(0,0,0,0.2);
    }

    .stat-card .stat-label {
      font-size: 0.95rem;
      color: rgba(255,255,255,0.9);
      text-transform: uppercase;
      letter-spacing: 1px;
      font-weight: 500;
    }

    /* Chart Cards */
    .chart-card {
      background: white;
      border-radius: 20px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.08);
      border: none;
      overflow: hidden;
      transition: all 0.3s ease;
    }

    .chart-card:hover {
      box-shadow: 0 15px 40px rgba(0,0,0,0.12);
    }

    .chart-card .card-header {
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      color: white;
      border: none;
      padding: 20px 25px;
    }

    .chart-card .card-header h3 {
      font-weight: 600;
      font-size: 1.1rem;
      margin: 0;
      display: flex;
      align-items: center;
      gap: 10px;
    }

    .chart-card .card-body {
      padding: 25px;
    }

    /* Table Styles */
    .table-card {
      background: white;
      border-radius: 20px;
      box-shadow: 0 10px 30px rgba(0,0,0,0.08);
      border: none;
      overflow: hidden;
    }

    .table-card .card-header {
      background: linear-gradient(135deg, #11998e 0%, #38ef7d 100%);
      color: white;
      border: none;
      padding: 20px 25px;
    }

    .table-card .table thead th {
      background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
      border: none;
      font-weight: 600;
      text-transform: uppercase;
      font-size: 0.75rem;
      letter-spacing: 0.5px;
      color: #495057;
      padding: 15px 20px;
    }

    .table-card .table tbody td {
      padding: 15px 20px;
      vertical-align: middle;
      border-bottom: 1px solid #f1f3f4;
    }

    .table-card .table tbody tr:hover {
      background: linear-gradient(135deg, #f8f9fa 0%, #ffffff 100%);
    }

    /* Status Badge */
    .status-badge {
      padding: 6px 14px;
      border-radius: 20px;
      font-size: 0.75rem;
      font-weight: 600;
      text-transform: uppercase;
      letter-spacing: 0.5px;
    }

    .status-pending { background: linear-gradient(135deg, #ffecd2 0%, #fcb69f 100%); color: #d35400; }
    .status-confirmed { background: linear-gradient(135deg, #a8edea 0%, #fed6e3 100%); color: #16a085; }
    .status-success { background: linear-gradient(135deg, #c3ec52 0%, #0ba29d 100%); color: white; }
    .status-cancelled { background: linear-gradient(135deg, #ff9a9e 0%, #fad0c4 100%); color: #c0392b; }

    /* Section Header */
    .section-header {
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
      font-weight: 700;
      font-size: 1.8rem;
      margin-bottom: 30px;
    }

    /* Product Low Stock Alert */
    .low-stock-card {
      background: linear-gradient(135deg, #fff 0%, #fff5f5 100%);
      border-left: 4px solid #ff4757;
    }

    .low-stock-item {
      display: flex;
      align-items: center;
      padding: 12px 0;
      border-bottom: 1px dashed #f1f3f4;
    }

    .low-stock-item:last-child {
      border-bottom: none;
    }

    .low-stock-item img {
      width: 50px;
      height: 50px;
      object-fit: cover;
      border-radius: 10px;
    }

    .low-stock-quantity {
      background: linear-gradient(135deg, #ff4757 0%, #ff6b7a 100%);
      color: white;
      padding: 4px 12px;
      border-radius: 15px;
      font-weight: 600;
      font-size: 0.8rem;
    }

    /* Animation */
    @keyframes fadeInUp {
      from {
        opacity: 0;
        transform: translateY(20px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    .animate-fade-in {
      animation: fadeInUp 0.5s ease forwards;
    }

    .animate-delay-1 { animation-delay: 0.1s; }
    .animate-delay-2 { animation-delay: 0.2s; }
    .animate-delay-3 { animation-delay: 0.3s; }
    .animate-delay-4 { animation-delay: 0.4s; }
    .animate-delay-5 { animation-delay: 0.5s; }
    .animate-delay-6 { animation-delay: 0.6s; }

    /* Top Customer Card */
    .customer-rank {
      width: 35px;
      height: 35px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      font-weight: 700;
      color: white;
    }

    .rank-1 { background: linear-gradient(135deg, #f7971e 0%, #ffd200 100%); }
    .rank-2 { background: linear-gradient(135deg, #bdc3c7 0%, #95a5a6 100%); }
    .rank-3 { background: linear-gradient(135deg, #cd7f32 0%, #a0522d 100%); }
    .rank-default { background: linear-gradient(135deg, #667eea 0%, #764ba2 100%); }

    /* Revenue Display */
    .revenue-display {
      font-size: 2rem;
      font-weight: 700;
      background: linear-gradient(135deg, #11998e 0%, #38ef7d 100%);
      -webkit-background-clip: text;
      -webkit-text-fill-color: transparent;
      background-clip: text;
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
            <h1 class="section-header">
              <i class="fas fa-chart-line mr-2"></i> Báo cáo & Thống kê
            </h1>
          </div>
          <div class="col-sm-6">
            <div class="float-right">
              <span class="text-muted">
                <i class="far fa-calendar-alt mr-1"></i>
                <?= date('d/m/Y H:i') ?>
              </span>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section class="content">
      <div class="container-fluid">
        
        <!-- Stats Cards Row -->
        <div class="row mb-4">
          <!-- Total Products -->
          <div class="col-lg-4 col-md-6 mb-3">
            <div class="card stat-card bg-gradient-primary animate-fade-in animate-delay-1">
              <div class="card-body">
                <div class="d-flex justify-content-between align-items-center">
                  <div>
                    <div class="stat-value"><?= number_format($tongQuan['tong_san_pham']) ?></div>
                    <div class="stat-label">Sản phẩm</div>
                  </div>
                  <div class="icon-box" style="background: rgba(255,255,255,0.2);">
                    <i class="fas fa-box"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Total Orders -->
          <div class="col-lg-4 col-md-6 mb-3">
            <div class="card stat-card bg-gradient-success animate-fade-in animate-delay-2">
              <div class="card-body">
                <div class="d-flex justify-content-between align-items-center">
                  <div>
                    <div class="stat-value"><?= number_format($tongQuan['tong_don_hang']) ?></div>
                    <div class="stat-label">Đơn hàng</div>
                  </div>
                  <div class="icon-box" style="background: rgba(255,255,255,0.2);">
                    <i class="fas fa-shopping-cart"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Total Revenue -->
          <div class="col-lg-4 col-md-6 mb-3">
            <div class="card stat-card bg-gradient-warning animate-fade-in animate-delay-3">
              <div class="card-body">
                <div class="d-flex justify-content-between align-items-center">
                  <div>
                    <div class="stat-value"><?= number_format($tongQuan['tong_doanh_thu'], 0, ',', '.') ?>đ</div>
                    <div class="stat-label">Doanh thu</div>
                  </div>
                  <div class="icon-box" style="background: rgba(255,255,255,0.2);">
                    <i class="fas fa-dollar-sign"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Total Customers -->
          <div class="col-lg-4 col-md-6 mb-3">
            <div class="card stat-card bg-gradient-info animate-fade-in animate-delay-4">
              <div class="card-body">
                <div class="d-flex justify-content-between align-items-center">
                  <div>
                    <div class="stat-value"><?= number_format($tongQuan['tong_khach_hang']) ?></div>
                    <div class="stat-label">Khách hàng</div>
                  </div>
                  <div class="icon-box" style="background: rgba(255,255,255,0.2);">
                    <i class="fas fa-users"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Pending Orders -->
          <div class="col-lg-4 col-md-6 mb-3">
            <div class="card stat-card bg-gradient-danger animate-fade-in animate-delay-5">
              <div class="card-body">
                <div class="d-flex justify-content-between align-items-center">
                  <div>
                    <div class="stat-value"><?= number_format($tongQuan['don_cho_xu_ly']) ?></div>
                    <div class="stat-label">Đơn chờ xử lý</div>
                  </div>
                  <div class="icon-box" style="background: rgba(255,255,255,0.2);">
                    <i class="fas fa-clock"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Total Categories -->
          <div class="col-lg-4 col-md-6 mb-3">
            <div class="card stat-card bg-gradient-purple animate-fade-in animate-delay-6">
              <div class="card-body">
                <div class="d-flex justify-content-between align-items-center">
                  <div>
                    <div class="stat-value"><?= number_format($tongQuan['tong_danh_muc']) ?></div>
                    <div class="stat-label">Danh mục</div>
                  </div>
                  <div class="icon-box" style="background: rgba(255,255,255,0.2);">
                    <i class="fas fa-folder"></i>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

        <!-- Charts Row 1 -->
        <div class="row mb-4">
          <!-- Revenue Chart -->
          <div class="col-lg-8 mb-4">
            <div class="card chart-card animate-fade-in">
              <div class="card-header">
                <h3><i class="fas fa-chart-area mr-2"></i> Doanh thu theo tháng <?= $nam ?></h3>
              </div>
              <div class="card-body">
                <canvas id="revenueChart" height="120"></canvas>
              </div>
            </div>
          </div>

          <!-- Order Status Pie Chart -->
          <div class="col-lg-4 mb-4">
            <div class="card chart-card animate-fade-in">
              <div class="card-header" style="background: linear-gradient(135deg, #11998e 0%, #38ef7d 100%);">
                <h3><i class="fas fa-chart-pie mr-2"></i> Trạng thái đơn hàng</h3>
              </div>
              <div class="card-body">
                <canvas id="orderStatusChart" height="260"></canvas>
              </div>
            </div>
          </div>
        </div>

        <!-- Charts Row 2 -->
        <div class="row mb-4">
          <!-- Top Products Bar Chart -->
          <div class="col-lg-6 mb-4">
            <div class="card chart-card animate-fade-in">
              <div class="card-header" style="background: linear-gradient(135deg, #f093fb 0%, #f5576c 100%);">
                <h3><i class="fas fa-crown mr-2"></i> Top 10 sản phẩm bán chạy</h3>
              </div>
              <div class="card-body">
                <canvas id="topProductsChart" height="300"></canvas>
              </div>
            </div>
          </div>

          <!-- Products by Category Doughnut Chart -->
          <div class="col-lg-6 mb-4">
            <div class="card chart-card animate-fade-in">
              <div class="card-header" style="background: linear-gradient(135deg, #4facfe 0%, #00f2fe 100%);">
                <h3><i class="fas fa-tags mr-2"></i> Sản phẩm theo danh mục</h3>
              </div>
              <div class="card-body">
                <canvas id="categoryChart" height="300"></canvas>
              </div>
            </div>
          </div>
        </div>

        <!-- Weekly Orders Chart -->
        <div class="row mb-4">
          <div class="col-lg-6 mb-4">
            <div class="card chart-card animate-fade-in">
              <div class="card-header" style="background: linear-gradient(135deg, #8E2DE2 0%, #4A00E0 100%);">
                <h3><i class="fas fa-calendar-week mr-2"></i> Đơn hàng trong 7 ngày qua</h3>
              </div>
              <div class="card-body">
                <canvas id="weeklyOrdersChart" height="200"></canvas>
              </div>
            </div>
          </div>

          <!-- Payment Methods -->
          <div class="col-lg-6 mb-4">
            <div class="card chart-card animate-fade-in">
              <div class="card-header" style="background: linear-gradient(135deg, #ff9a9e 0%, #fad0c4 100%);">
                <h3><i class="fas fa-credit-card mr-2"></i> Phương thức thanh toán</h3>
              </div>
              <div class="card-body">
                <canvas id="paymentChart" height="200"></canvas>
              </div>
            </div>
          </div>
        </div>

        <!-- Tables Row -->
        <div class="row mb-4">
          <!-- Recent Orders Table -->
          <div class="col-lg-8 mb-4">
            <div class="card table-card animate-fade-in">
              <div class="card-header">
                <h3 class="card-title mb-0">
                  <i class="fas fa-list mr-2"></i> Đơn hàng gần đây
                </h3>
              </div>
              <div class="card-body p-0">
                <div class="table-responsive">
                  <table class="table table-hover mb-0">
                    <thead>
                      <tr>
                        <th>Mã đơn</th>
                        <th>Khách hàng</th>
                        <th>Ngày đặt</th>
                        <th>Tổng tiền</th>
                        <th>Trạng thái</th>
                      </tr>
                    </thead>
                    <tbody>
                      <?php foreach ($donHangGanDay as $dh): ?>
                      <tr>
                        <td><strong><?= $dh['ma_don_hang'] ?></strong></td>
                        <td><?= $dh['ten_nguoi_nhan'] ?></td>
                        <td><?= date('d/m/Y', strtotime($dh['ngay_dat'])) ?></td>
                        <td class="text-success font-weight-bold"><?= number_format($dh['tong_tien'], 0, ',', '.') ?>đ</td>
                        <td>
                          <?php
                          $statusClass = 'status-pending';
                          if (strpos($dh['ten_trang_thai'], 'Thành công') !== false) {
                            $statusClass = 'status-success';
                          } elseif (strpos($dh['ten_trang_thai'], 'Huỷ') !== false) {
                            $statusClass = 'status-cancelled';
                          } elseif (strpos($dh['ten_trang_thai'], 'xác nhận') !== false) {
                            $statusClass = 'status-confirmed';
                          }
                          ?>
                          <span class="status-badge <?= $statusClass ?>"><?= $dh['ten_trang_thai'] ?></span>
                        </td>
                      </tr>
                      <?php endforeach; ?>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>

          <!-- Low Stock Products & Top Customers -->
          <div class="col-lg-4 mb-4">
            <!-- Low Stock Alert -->
            <div class="card table-card low-stock-card mb-4 animate-fade-in">
              <div class="card-header" style="background: linear-gradient(135deg, #ff4757 0%, #ff6b7a 100%);">
                <h3 class="card-title mb-0">
                  <i class="fas fa-exclamation-triangle mr-2"></i> Sản phẩm sắp hết
                </h3>
              </div>
              <div class="card-body">
                <?php if (empty($sanPhamSapHetHang)): ?>
                  <p class="text-success mb-0"><i class="fas fa-check-circle mr-2"></i>Tất cả sản phẩm đều đủ hàng</p>
                <?php else: ?>
                  <?php foreach ($sanPhamSapHetHang as $sp): ?>
                  <div class="low-stock-item">
                    <img src="<?= $sp['hinh_anh'] ?: './assets/dist/img/no-image.png' ?>" alt="<?= $sp['ten_san_pham'] ?>" class="mr-3">
                    <div class="flex-grow-1">
                      <div class="font-weight-bold" style="font-size: 0.85rem;"><?= mb_substr($sp['ten_san_pham'], 0, 25) ?>...</div>
                      <small class="text-muted"><?= $sp['ten_danh_muc'] ?></small>
                    </div>
                    <span class="low-stock-quantity"><?= $sp['so_luong'] ?></span>
                  </div>
                  <?php endforeach; ?>
                <?php endif; ?>
              </div>
            </div>

            <!-- Top Customers -->
            <div class="card table-card animate-fade-in">
              <div class="card-header" style="background: linear-gradient(135deg, #f7971e 0%, #ffd200 100%);">
                <h3 class="card-title mb-0">
                  <i class="fas fa-star mr-2"></i> Top khách hàng
                </h3>
              </div>
              <div class="card-body">
                <?php if (empty($topKhachHang)): ?>
                  <p class="text-muted mb-0">Chưa có dữ liệu</p>
                <?php else: ?>
                  <?php foreach ($topKhachHang as $index => $kh): ?>
                  <div class="d-flex align-items-center mb-3 pb-3 <?= $index < count($topKhachHang) - 1 ? 'border-bottom' : '' ?>">
                    <?php
                    $rankClass = 'rank-default';
                    if ($index === 0) $rankClass = 'rank-1';
                    elseif ($index === 1) $rankClass = 'rank-2';
                    elseif ($index === 2) $rankClass = 'rank-3';
                    ?>
                    <div class="customer-rank <?= $rankClass ?> mr-3"><?= $index + 1 ?></div>
                    <div class="flex-grow-1">
                      <div class="font-weight-bold"><?= $kh['ho_ten'] ?></div>
                      <small class="text-muted"><?= $kh['so_don_hang'] ?> đơn hàng</small>
                    </div>
                    <div class="revenue-display" style="font-size: 0.9rem;">
                      <?= number_format($kh['tong_chi_tieu'], 0, ',', '.') ?>đ
                    </div>
                  </div>
                  <?php endforeach; ?>
                <?php endif; ?>
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
  <script src="./dist/js/adminlte.min.js"></script>

  <script>
    // Chart.js Global Configuration
    Chart.defaults.font.family = 'Source Sans Pro, sans-serif';
    Chart.defaults.plugins.legend.labels.usePointStyle = true;
    
    // Color Palettes
    const gradientColors = [
      '#667eea', '#764ba2', '#11998e', '#38ef7d', '#f093fb', 
      '#f5576c', '#4facfe', '#00f2fe', '#8E2DE2', '#4A00E0',
      '#ff9a9e', '#fad0c4'
    ];

    // 1. Revenue Chart (Line + Area)
    const revenueCtx = document.getElementById('revenueChart').getContext('2d');
    const revenueGradient = revenueCtx.createLinearGradient(0, 0, 0, 400);
    revenueGradient.addColorStop(0, 'rgba(102, 126, 234, 0.4)');
    revenueGradient.addColorStop(1, 'rgba(118, 75, 162, 0.05)');

    new Chart(revenueCtx, {
      type: 'line',
      data: {
        labels: ['T1', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7', 'T8', 'T9', 'T10', 'T11', 'T12'],
        datasets: [{
          label: 'Doanh thu (VNĐ)',
          data: <?= json_encode(array_values($doanhThuTheoThang)) ?>,
          borderColor: '#667eea',
          backgroundColor: revenueGradient,
          borderWidth: 3,
          fill: true,
          tension: 0.4,
          pointBackgroundColor: '#667eea',
          pointBorderColor: '#fff',
          pointBorderWidth: 3,
          pointRadius: 6,
          pointHoverRadius: 10
        }]
      },
      options: {
        responsive: true,
        plugins: {
          legend: { display: false },
          tooltip: {
            backgroundColor: 'rgba(0,0,0,0.8)',
            padding: 15,
            titleFont: { size: 14, weight: 'bold' },
            bodyFont: { size: 13 },
            callbacks: {
              label: function(context) {
                return 'Doanh thu: ' + new Intl.NumberFormat('vi-VN').format(context.raw) + 'đ';
              }
            }
          }
        },
        scales: {
          y: {
            beginAtZero: true,
            grid: { color: 'rgba(0,0,0,0.05)' },
            ticks: {
              callback: function(value) {
                return new Intl.NumberFormat('vi-VN', { notation: 'compact' }).format(value);
              }
            }
          },
          x: {
            grid: { display: false }
          }
        }
      }
    });

    // 2. Order Status Pie Chart
    const orderStatusData = <?= json_encode($donHangTheoTrangThai) ?>;
    new Chart(document.getElementById('orderStatusChart'), {
      type: 'doughnut',
      data: {
        labels: orderStatusData.map(item => item.ten_trang_thai),
        datasets: [{
          data: orderStatusData.map(item => item.so_luong),
          backgroundColor: gradientColors,
          borderWidth: 3,
          borderColor: '#fff',
          hoverOffset: 10
        }]
      },
      options: {
        responsive: true,
        cutout: '60%',
        plugins: {
          legend: {
            position: 'bottom',
            labels: { padding: 15, font: { size: 11 } }
          }
        }
      }
    });

    // 3. Top Products Bar Chart
    const topProductsData = <?= json_encode($topSanPhamBanChay) ?>;
    new Chart(document.getElementById('topProductsChart'), {
      type: 'bar',
      data: {
        labels: topProductsData.map(item => item.ten_san_pham.length > 20 ? item.ten_san_pham.substring(0, 20) + '...' : item.ten_san_pham),
        datasets: [{
          label: 'Số lượng bán',
          data: topProductsData.map(item => item.tong_ban),
          backgroundColor: gradientColors,
          borderRadius: 10,
          borderSkipped: false
        }]
      },
      options: {
        indexAxis: 'y',
        responsive: true,
        plugins: {
          legend: { display: false }
        },
        scales: {
          x: {
            beginAtZero: true,
            grid: { color: 'rgba(0,0,0,0.05)' }
          },
          y: {
            grid: { display: false }
          }
        }
      }
    });

    // 4. Category Doughnut Chart
    const categoryData = <?= json_encode($sanPhamTheoDanhMuc) ?>;
    new Chart(document.getElementById('categoryChart'), {
      type: 'polarArea',
      data: {
        labels: categoryData.map(item => item.ten_danh_muc),
        datasets: [{
          data: categoryData.map(item => item.so_luong),
          backgroundColor: gradientColors.map(color => color + '99'),
          borderColor: gradientColors,
          borderWidth: 2
        }]
      },
      options: {
        responsive: true,
        plugins: {
          legend: {
            position: 'right',
            labels: { padding: 15 }
          }
        }
      }
    });

    // 5. Weekly Orders Chart
    const weeklyData = <?= json_encode($donHangTrongTuan) ?>;
    new Chart(document.getElementById('weeklyOrdersChart'), {
      type: 'bar',
      data: {
        labels: weeklyData.map(item => {
          const date = new Date(item.ngay);
          return date.toLocaleDateString('vi-VN', { weekday: 'short', day: 'numeric' });
        }),
        datasets: [{
          label: 'Số đơn',
          data: weeklyData.map(item => item.so_don),
          backgroundColor: 'rgba(142, 45, 226, 0.8)',
          borderRadius: 8,
          yAxisID: 'y'
        }, {
          label: 'Doanh thu',
          data: weeklyData.map(item => item.doanh_thu),
          type: 'line',
          borderColor: '#38ef7d',
          backgroundColor: 'transparent',
          borderWidth: 3,
          tension: 0.3,
          yAxisID: 'y1'
        }]
      },
      options: {
        responsive: true,
        plugins: {
          legend: { position: 'top' }
        },
        scales: {
          y: {
            type: 'linear',
            position: 'left',
            beginAtZero: true,
            grid: { color: 'rgba(0,0,0,0.05)' }
          },
          y1: {
            type: 'linear',
            position: 'right',
            beginAtZero: true,
            grid: { display: false },
            ticks: {
              callback: function(value) {
                return new Intl.NumberFormat('vi-VN', { notation: 'compact' }).format(value);
              }
            }
          },
          x: {
            grid: { display: false }
          }
        }
      }
    });

    // 6. Payment Methods Chart
    const paymentData = <?= json_encode($phuongThucThanhToan) ?>;
    new Chart(document.getElementById('paymentChart'), {
      type: 'doughnut',
      data: {
        labels: paymentData.map(item => item.ten_phuong_thuc),
        datasets: [{
          data: paymentData.map(item => item.so_luong),
          backgroundColor: ['#667eea', '#11998e', '#f093fb', '#4facfe'],
          borderWidth: 3,
          borderColor: '#fff',
          hoverOffset: 15
        }]
      },
      options: {
        responsive: true,
        cutout: '50%',
        plugins: {
          legend: {
            position: 'bottom',
            labels: { padding: 20 }
          },
          tooltip: {
            callbacks: {
              afterLabel: function(context) {
                const item = paymentData[context.dataIndex];
                return 'Tổng tiền: ' + new Intl.NumberFormat('vi-VN').format(item.tong_tien) + 'đ';
              }
            }
          }
        }
      }
    });
  </script>
</body>

</html>