<!-- Start Header Area -->
<header class="w-full hidden lg:block">
    <div class="bg-space-gradient relative shine-overlay border-b-2 border-red-600 shadow-lg shadow-red-600/20">
        <div class="container mx-auto px-4">
            <div class="flex items-center justify-between py-3 relative">

                <!-- Logo -->
                <div class="w-1/6">
                    <a href="<?php echo BASE_URL ?>" class="inline-block">
                        <img src="<?php echo BASE_URL . 'assets/img/spacelink.png' ?>" alt="Logo" class="h-12 w-auto">
                    </a>
                </div>

                <!-- Center: Menu + Search -->
                <div class="w-7/12 flex items-center gap-3">

                    <!-- Left Menu -->
                    <div class="flex gap-2">

                        <!-- Danh Mục -->
                        <div class="menu-item relative group">
                            <a href="#" class="btn-gradient flex items-center gap-2 px-4 py-2 rounded-lg text-white border border-red-600/30 hover:border-red-600 hover:shadow-red-600/30 hover:scale-105 transition">
                                <i class="fa fa-bars text-red-500"></i>
                                <span>Danh Mục</span>
                                <i class="fa fa-chevron-down"></i>
                            </a>

                           <ul class="dropdown-menu absolute top-full left-0 mt-2 bg-gray-900 rounded-lg shadow-xl border border-red-600/30 min-w-[220px] z-50">
                                <li><a href="<?php echo BASE_URL . '?act=dien-thoai' ?>" class="flex px-4 py-3 text-gray-300 hover:bg-red-600/20 hover:text-white transition"><i class="fa fa-mobile text-red-500 w-5"></i>Điện Thoại</a></li>
                                <li><a href="<?php echo BASE_URL . '?act=laptop' ?>" class="flex px-4 py-3 text-gray-300 hover:bg-red-600/20 hover:text-white transition"><i class="fa fa-laptop text-red-500 w-5"></i>Laptop</a></li>
                                <li><a href="<?php echo BASE_URL . '?act=tablet' ?>" class="flex px-4 py-3 text-gray-300 hover:bg-red-600/20 hover:text-white transition"><i class="fa fa-tablet text-red-500 w-5"></i>Tablet</a></li>
                                <li><a href="<?php echo BASE_URL . '?act=phu-kien' ?>" class="flex px-4 py-3 text-gray-300 hover:bg-red-600/20 hover:text-white transition"><i class="fa fa-headphones text-red-500 w-5"></i>Phụ Kiện</a></li>
                            </ul>
                        </div>

                        <!-- Location -->
                        <div class="menu-item relative group">
                            <a class="btn-gradient flex items-center gap-2 px-4 py-2 rounded-lg text-white border border-red-600/30 hover:border-red-600 hover:scale-105 transition">
                                <i class="fa fa-map-marker-alt text-red-500"></i>
                                <span>Hồ Chí Minh</span>
                                <i class="fa fa-angle-down"></i>
                            </a>

                            <ul class="dropdown-menu absolute top-full left-0 mt-2 bg-gray-900 rounded-lg shadow-xl border border-red-600/30 min-w-[220px] z-50">
                                <li><a href="#" class="block px-4 py-3 text-gray-300 hover:bg-red-600/20 hover:text-white transition">Hà Nội</a></li>
                                <li><a href="#" class="block px-4 py-3 text-gray-300 hover:bg-red-600/20 hover:text-white transition">Hồ Chí Minh</a></li>
                                <li><a href="#" class="block px-4 py-3 text-gray-300 hover:bg-red-600/20 hover:text-white transition">Đà Nẵng</a></li>
                                <li><a href="#" class="block px-4 py-3 text-gray-300 hover:bg-red-600/20 hover:text-white transition">Cần Thơ</a></li>
                            </ul>
                        </div>
                    </div>

                    <!-- Search -->
                    <div class="flex-1">
                        <form action="<?php echo BASE_URL . '?act=search' ?>" method="POST"
                              class="flex items-center bg-gray-900 rounded-lg border border-gray-700 focus-within:border-red-600 transition px-4 py-2">
                            <button class="text-gray-500 hover:text-red-600 transition">
                                <i class="fa fa-search"></i>
                            </button>
                            <input type="text" name="search_query"
                                   class="flex-1 bg-transparent text-white ml-3 outline-none text-sm"
                                   placeholder="Bạn muốn mua gì hôm nay?">
                        </form>
                    </div>
                </div>

                <!-- Right: User + Cart -->
                <div class="w-1/4 flex items-center justify-end gap-3">

                    <!-- User -->
                    <div class="user-hover relative group">

                        <a class="btn-gradient flex items-center gap-2 px-4 py-2 rounded-lg text-white border border-red-600/30 hover:border-red-600 hover:scale-105 transition">
                            <i class="pe-7s-user text-xl text-red-500"></i>
                            <span>
                                <?php echo isset($_SESSION['user_client']) ? $_SESSION['user_client'] : 'Chào mừng' ?>
                            </span>
                        </a>

                        <ul class="dropdown-menu absolute top-full right-0 mt-2 bg-gray-900 rounded-xl shadow-xl shadow-red-600/20 border border-red-600/30 min-w-[240px] p-2 z-50">

                            <?php if (! isset($_SESSION['user_client'])): ?>

                                <li><a href="<?php echo BASE_URL . '?act=login' ?>" class="flex px-4 py-3 text-gray-300 hover:bg-red-600/20 hover:text-white transition"><i class="fa fa-sign-in-alt w-5 text-red-500"></i>Đăng Nhập</a></li>
                                <li><a href="<?php echo BASE_URL . '?act=register' ?>" class="flex px-4 py-3 text-gray-300 hover:bg-red-600/20 hover:text-white transition"><i class="fa fa-user-plus w-5 text-red-500"></i>Đăng Ký</a></li>

                            <?php else: ?>

                                <li class="px-4 py-2 border-b border-gray-700">
                                    <span class="text-sm text-gray-400">Xin chào,</span>
                                    <strong class="text-white"><?php echo $_SESSION['user_client'] ?></strong>
                                </li>

                                <li><a href="<?php echo BASE_URL . '?act=tai-khoan' ?>" class="flex px-4 py-3 text-gray-300 hover:bg-red-600/20 hover:text-white transition"><i class="fa fa-user w-5 text-red-500"></i>Tài Khoản</a></li>

                                <li><a href="<?php echo BASE_URL . '?act=lich-su-mua-hang' ?>" class="flex px-4 py-3 text-gray-300 hover:bg-red-600/20 hover:text-white transition"><i class="fa fa-shopping-bag w-5 text-red-500"></i>Đơn Hàng</a></li>

                                <li><a href="<?php echo BASE_URL . '?act=wishlist' ?>" class="flex px-4 py-3 text-gray-300 hover:bg-red-600/20 hover:text-white transition"><i class="fa fa-heart w-5 text-red-500"></i>Yêu Thích</a></li>

                                <li class="h-px bg-gray-700 my-2"></li>

                                <li><a href="<?php echo BASE_URL . '?act=logout' ?>" class="flex px-4 py-3 text-gray-300 hover:bg-red-600/20 hover:text-white transition"><i class="fa fa-sign-out-alt w-5 text-red-500"></i>Đăng Xuất</a></li>

                            <?php endif; ?>

                        </ul>
                    </div>


                    <!-- Mini Cart -->
                    <button type="button" class="btn-gradient relative flex items-center gap-2 px-4 py-2 rounded-lg text-white border border-red-600/30 hover:border-red-600 hover:scale-105 transition" data-bs-toggle="offcanvas" data-bs-target="#miniCart">
                        <i class="pe-7s-shopbag text-2xl text-red-500"></i>
                        <span class="absolute -top-2 -right-2 bg-red-600 text-white text-xs rounded-full w-6 h-6 flex justify-center items-center border-2 border-gray-900">
                            <?php echo isset($_SESSION['cart_qty']) ? $_SESSION['cart_qty'] : 0 ?>
                        </span>
                    </button>

                </div>

            </div>
        </div>
    </div>
</header>
<!-- End Header Area -->
