<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <a href="<?= BASE_URL_ADMIN ?>" class="brand-link">
        <img src="./assets/dist/img/AdminLTELogo.png" alt="Admin Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">ADMIN DASHBOARD</span>
    </a>
    
    <div class="sidebar">
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="./assets/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block">Admin (Tên người dùng)</a>
            </div>
        </div>

        <div class="form-inline">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div>

        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                
                <li class="nav-item">
                    <a href="<?= BASE_URL_ADMIN ?>" class="nav-link">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Dashboard</p>
                    </a>
                </li>
                
                <li class="nav-item">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-list"></i>
                        <p>
                            Quản lý Danh mục
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="<?= BASE_URL_ADMIN . '?act=danh-muc' ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Danh sách Danh mục</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="<?= BASE_URL_ADMIN . '?act=form-them-danh-muc' ?>" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Thêm Danh mục</p>
                            </a>
                        </li>
                    </ul>
                </li>

              
                
              
                
                <li class="nav-item">
                    <a href="<?= BASE_URL_ADMIN . '?act=quan-ly-binh-luan' ?>" class="nav-link">
                        <i class="nav-icon fas fa-comments"></i>
                        <p>Quản lý Bình luận</p>
                    </a>
                </li>
                
                <!-- Quản lý tài khoản -->
<li class="nav-item has-treeview">
    <a href="#" class="nav-link">
        <i class="nav-icon fas fa-users"></i>
        <p>
            Quản lý tài khoản
            <i class="right fas fa-angle-left"></i>
        </p>
    </a>
    <ul class="nav nav-treeview">
        <li class="nav-item">
            <a href="<?= BASE_URL_ADMIN ?>?act=tai-khoan-quan-tri" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Tài khoản quản trị</p>
            </a>
        </li>
        <li class="nav-item">
            <a href="<?= BASE_URL_ADMIN ?>?act=tai-khoan-khach-hang" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Tài khoản khách hàng</p>
            </a>
        </li>
        <li class="nav-item">
            <a href="<?= BASE_URL_ADMIN ?>?act=tai-khoan-ca-nhan" class="nav-link">
                <i class="far fa-circle nav-icon"></i>
                <p>Tài khoản cá nhân</p>
            </a>
        </li>
    </ul>
</li>
                
            </ul>
        </nav>
        </div>
    </aside>