-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 10, 2025 at 10:54 PM
-- Server version: 8.0.30
-- PHP Version: 8.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `du_an1`
--

-- --------------------------------------------------------

--
-- Table structure for table `binh_luans`
--

CREATE TABLE `binh_luans` (
  `id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `tai_khoan_id` int NOT NULL,
  `noi_dung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_dang` date NOT NULL,
  `trang_thai` tinyint(1) DEFAULT '1',
  `anh_dai_dien` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `binh_luans`
--

INSERT INTO `binh_luans` (`id`, `san_pham_id`, `tai_khoan_id`, `noi_dung`, `ngay_dang`, `trang_thai`, `anh_dai_dien`) VALUES
(1, 1, 23, 'Bao giờ hàng giao đến ạ ?', '2025-11-30', 1, './uploads/avatar/avatar-cute-3.jpg'),
(2, 2, 23, 'Ship hoả tốc bao h có ?', '2025-11-30', 2, './uploads/avatar/avatar-cute-3.jpg'),
(3, 1, 1, 'Hay hay hay', '2025-11-30', 1, ''),
(4, 9, 9, 'hay', '2025-11-30', 2, ''),
(5, 9, 9, 'hay', '2025-11-30', 1, ''),
(6, 9, 9, 'hay hay hay', '2025-11-30', 1, ''),
(7, 9, 9, 'hay hay hay hay hay hay ha', '2025-11-30', 1, ''),
(8, 9, 9, 'hay hay hay hay hay hay hay hay hay', '2025-11-30', 1, ''),
(9, 3, 23, 'sản phẩm này còn k shop', '2025-12-10', 2, ''),
(10, 4, 23, 'Shop ơi rep tin nhắn em', '2025-12-01', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_don_hangs`
--

CREATE TABLE `chi_tiet_don_hangs` (
  `id` int NOT NULL,
  `don_hang_id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `don_gia` decimal(10,2) NOT NULL,
  `so_luong` int NOT NULL,
  `thanh_tien` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chi_tiet_don_hangs`
--

INSERT INTO `chi_tiet_don_hangs` (`id`, `don_hang_id`, `san_pham_id`, `don_gia`, `so_luong`, `thanh_tien`) VALUES
(1, 1, 1, '1234500.00', 12, '1234500.00'),
(2, 1, 2, '200000.00', 2, '200000.00'),
(3, 2, 1, '234500.00', 20, '234500.00'),
(4, 2, 3, '250000.00', 40, '25000.00'),
(5, 5, 3, '3432432.00', 1, '3432432.00'),
(6, 6, 4, '5000000.00', 2, '10000000.00'),
(7, 8, 3, '3432432.00', 10, '34324320.00'),
(8, 9, 8, '6500000.00', 6, '39000000.00'),
(9, 10, 3, '3432432.00', 1, '3432432.00'),
(10, 11, 3, '3432432.00', 1, '3432432.00'),
(11, 12, 6, '5000000.00', 1, '5000000.00'),
(12, 13, 1, '9000000.00', 1, '9000000.00'),
(13, 14, 3, '3432432.00', 1, '3432432.00'),
(14, 14, 4, '5000000.00', 1, '5000000.00'),
(15, 14, 5, '4600000.00', 1, '4600000.00'),
(16, 36, 1, '420000.00', 6, '2520000.00'),
(17, 36, 3, '19500000.00', 1, '19500000.00'),
(18, 58, 1, '420000.00', 3, '1260000.00');

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_gio_hangs`
--

CREATE TABLE `chi_tiet_gio_hangs` (
  `id` int NOT NULL,
  `gio_hang_id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `so_luong` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chi_tiet_gio_hangs`
--

INSERT INTO `chi_tiet_gio_hangs` (`id`, `gio_hang_id`, `san_pham_id`, `so_luong`) VALUES
(15, 14, 12, 4);

-- --------------------------------------------------------

--
-- Table structure for table `chuc_vus`
--

CREATE TABLE `chuc_vus` (
  `id` int NOT NULL,
  `ten_chuc_vu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chuc_vus`
--

INSERT INTO `chuc_vus` (`id`, `ten_chuc_vu`) VALUES
(1, 'Quản trị viên'),
(2, 'Khách hàng');

-- --------------------------------------------------------

--
-- Table structure for table `danh_mucs`
--

CREATE TABLE `danh_mucs` (
  `id` int NOT NULL,
  `ten_danh_muc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mo_ta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `danh_mucs`
--

INSERT INTO `danh_mucs` (`id`, `ten_danh_muc`, `mo_ta`) VALUES
(4, 'Điện Thoại', 'Điện Thoại là sản phẩm rất được ưa chuộng để nghe, gọi, chơi game,chụp ảnh, quay video,... nhỏ gọn cầm tay, sạc nhanh, thích hợp cầm đi chơi mà không to hay cồng kềnh'),
(5, 'Laptop', 'Laptop là các dòng máy tính màn hình và bàn phím, thích hợp làm việc'),
(6, 'Tablet', 'Table là dòng bản phẩm giống điện thoại nhưng to hơn, thường dùng có kèm bút cảm ứng, rất thích hợp takenote, vẽ vời,...'),
(10, 'Phụ Kiện', 'Các phụ kiện ăn theo sản phẩm như sạc, hub usb, tai nghe, ...');

-- --------------------------------------------------------

--
-- Table structure for table `don_hangs`
--

CREATE TABLE `don_hangs` (
  `id` int NOT NULL,
  `ma_don_hang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tai_khoan_id` int NOT NULL,
  `ten_nguoi_nhan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_nguoi_nhan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sdt_nguoi_nhan` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi_nguoi_nhan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_dat` date NOT NULL,
  `tong_tien` decimal(10,2) NOT NULL,
  `ghi_chu` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phuong_thuc_thanh_toan_id` int NOT NULL,
  `trang_thai_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `don_hangs`
--

INSERT INTO `don_hangs` (`id`, `ma_don_hang`, `tai_khoan_id`, `ten_nguoi_nhan`, `email_nguoi_nhan`, `sdt_nguoi_nhan`, `dia_chi_nguoi_nhan`, `ngay_dat`, `tong_tien`, `ghi_chu`, `phuong_thuc_thanh_toan_id`, `trang_thai_id`) VALUES
(1, 'DH-123', 2, 'Nguyễn Hữu Trungg', 'huutrung123456@gmail.com', '012345678910', 'Nam Từ Liêm - Hà Nộii', '2025-12-01', '900000.00', 'Thanh toán tiền mặt hay chuyển khoảnnn', 1, 9),
(2, 'DH-1234', 1, 'Nguyễn Hữu Trung', 'huutrung1234@gmail.com', '0123456788', 'Nam Từ Liêm - Hà Nộiiii', '2025-12-01', '100000.00', 'Thanh toán tiền mặt hay chuyển khoản', 1, 2),
(3, 'DH-12345', 24, 'Nguyễn Hữu Trung 12345', 'huutrung12345@gmail.com', '0123456787', 'Nam Từ Liêm - Hà Nội', '2025-12-01', '800000.00', 'Giao hàng nhanh', 1, 3),
(4, 'DH - 1', 23, 'Nguyễn T.Anhhh', 'tanh123@gmail.com', '0945353843', 'Nam Từ Liêm - Hà Nội', '2025-12-01', '500000.00', 'Giao hàng nhanh ship COD', 1, 5),
(5, 'DH-1226', 18, 'theAnhDev', 'theanhdev324324@gmail.com', '0954654654', 'hn ntl', '2025-12-07', '3462432.00', '', 1, 1),
(6, 'DH-4536', 18, 'theAnhDev', 'theanhdev324324@gmail.com', '0954654654', 'hn ntl', '2025-12-07', '10030000.00', 'Vui lòng ship COD', 1, 1),
(7, 'DH-1721', 18, 'theAnhDev', 'theanhdev324324@gmail.com', '0954654654', 'hn ntl', '2025-12-07', '30000.00', 'Vui lòng ship COD', 1, 1),
(8, 'DH-8756', 18, 'theAnhDev', 'theanhdev324324@gmail.com', '0954654654', 'hn ntl', '2025-12-07', '34354320.00', '34 củ \r\n:V', 2, 11),
(9, 'DH-2990', 18, 'theAnhDev', 'theanhdev324324@gmail.com', '0954654654', 'hn ntl', '2025-12-07', '39030000.00', 'HHEHEHEHE\r\n', 1, 11),
(10, 'DH-2812', 18, 'theAnhDev', 'theanhdev324324@gmail.com', '0954654654', 'hn ntl', '2025-12-07', '3462432.00', '', 1, 11),
(11, 'DH-7759', 26, 'Nguyễn Hữu Trung', 'trung321@gmail.com', '0347892617', 'Hà Nội', '2025-12-07', '3462432.00', '', 1, 1),
(12, 'DH-6191', 26, 'Nguyễn Hữu Trung', 'trung321@gmail.com', '0347892617', 'Hà Nội', '2025-12-07', '5030000.00', '', 1, 11),
(13, 'DH-2077', 26, 'Nguyễn Hữu Trung', 'trung321@gmail.com', '0347892617', 'Hà Nội', '2025-12-07', '9030000.00', '', 1, 10),
(14, 'DH-7013', 26, 'Nguyễn Hữu Trung', 'trung321@gmail.com', '0347892617', 'Hà Nội', '2025-12-07', '13062432.00', 'alo alo', 1, 1),
(36, 'DH-5218', 18, 'theAnhDev', 'theanhdev324324@gmail.com', '0954654654', 'hn ntl', '2025-12-08', '22050000.00', '', 1, 1),
(37, 'DH-203', 8, 'Nguyễn Thế Anh', 'anhh11@gmail.com', '095439650', 'Nam Từ Liêm - Hà Nội', '2025-12-31', '500000.00', 'SHIP COD', 4, 2),
(58, 'DH-2230', 18, 'Nguyễn Thế Anh', 'theanh324324@gmail.com', '0954654654', 'Cầu Diễn - Hà Nội', '2025-12-10', '1290000.00', 'Hello', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gio_hangs`
--

CREATE TABLE `gio_hangs` (
  `id` int NOT NULL,
  `tai_khoan_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gio_hangs`
--

INSERT INTO `gio_hangs` (`id`, `tai_khoan_id`) VALUES
(14, 18);

-- --------------------------------------------------------

--
-- Table structure for table `hinh_anh_san_phams`
--

CREATE TABLE `hinh_anh_san_phams` (
  `id` int NOT NULL,
  `san_pham_id` int NOT NULL,
  `link_hinh_anh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hinh_anh_san_phams`
--

INSERT INTO `hinh_anh_san_phams` (`id`, `san_pham_id`, `link_hinh_anh`) VALUES
(1, 1, './uploads/1765151866-iphone-17-pro-max-cam-1-638947383255964450-750x500 (1).jpg'),
(2, 2, './uploads/1765152118-laptop_acer_aspire_lite_14_al14-71m-52gq_-_3.png'),
(3, 3, './uploads/1765152253-ipad-a16-11-inch_3__1.webp'),
(4, 4, './uploads/1765165610-iphone-13-4-1-750x500.jpg'),
(5, 5, './uploads/1765165880-iphone-13-1-2-750x500.jpg'),
(6, 6, './uploads/1765194675-iphone-16-plus-trang-1-638639096584067146-750x500.jpg'),
(7, 7, './uploads/product-7.jpg'),
(8, 8, './uploads/1765194756-iphone-16-pro-titan-sa-mac-1-638638979065595000-750x500.jpg'),
(9, 9, './uploads/1765194908-iphone-16-pro-max.webp'),
(10, 10, './uploads/1765195041-iphone-16e-mohop-638798120629473642.jpg'),
(12, 2, './uploads/1765152118-text_ng_n_1__8_27.webp'),
(13, 1, './uploads/1765151866-iphone-17-pro-max-cam-2-638947383212278277-750x500.jpg'),
(14, 1, './uploads/1765207998-iphone-17-pro-max-cam-13-638947383223664403-750x500.jpg'),
(15, 1, './uploads/1765151866-iphone-17-pro-max-cam-7-638947383167025902-750x500.jpg'),
(16, 1, './uploads/1765151866-iphone-17-pro-max-cam-9-638947383148725067-750x500 (1).jpg'),
(18, 1, './uploads/1765151866-iphone-17-pro-max-cam-12-638947383232300582-750x500.jpg'),
(19, 1, './uploads/1765151866-iphone-17-pro-max-cam-13-638947383223664403-750x500.jpg'),
(20, 1, './uploads/1765151866-iphone-17-pro-max-cam-1-638947383255964450-750x500 (1).jpg'),
(21, 26, './uploads/1764628535-instagram-1.jpg'),
(22, 26, './uploads/1764628535-instagram-2.jpg'),
(23, 26, './uploads/1764628535-instagram-3.jpg'),
(24, 26, './uploads/1764628535-instagram-4.jpg'),
(25, 26, './uploads/1764628535-instagram-5.jpg'),
(37, 1, './uploads/1765207998-iphone-17-pro-max-cam-7-638947383167025902-750x500.jpg'),
(38, 2, './uploads/1765152118-text_ng_n_2__7_61.webp'),
(39, 2, './uploads/1765152118-laptop_acer_aspire_lite_14_al14-71m-52gq_-_2.webp'),
(40, 2, './uploads/1765152118-text_ng_n_14_8.webp'),
(41, 3, './uploads/1765152253-ipad-a16-11-inch_4__1.webp'),
(42, 3, './uploads/1765152253-ipad-a16-11-inch_6__1.webp'),
(43, 3, './uploads/1765152253-ipad-a16-11-inch_7__1.webp'),
(44, 3, './uploads/1765152253-ipad-a16-11-inch_8__1.webp'),
(45, 3, './uploads/1765152253-ipad-a16-11-inch_9_.webp'),
(46, 3, './uploads/1765152253-ipad-a16-11-inch_10_.webp'),
(47, 4, './uploads/1765165610-iphone-13-1-2-750x500.jpg'),
(48, 4, './uploads/1765165610-iphone-13-2-1-750x500.jpg'),
(49, 4, './uploads/1765165610-iphone-13-5-1-750x500.jpg'),
(50, 4, './uploads/1765165610-iphone-13-6-1-750x500.jpg'),
(51, 4, './uploads/1765165610-iphone-13-12-1-750x500.jpg'),
(52, 4, './uploads/1765165610-iphone-13-10-1-750x500.jpg'),
(53, 4, './uploads/1765165610-iphone-13-8-1-750x500.jpg'),
(54, 5, './uploads/1765165880-iphone-13-2-1-750x500.jpg'),
(55, 5, './uploads/1765165880-iphone-13-4-1-750x500.jpg'),
(56, 5, './uploads/1765165880-iphone-13-5-1-750x500.jpg'),
(57, 5, './uploads/1765165880-iphone-13-6-1-750x500.jpg'),
(58, 5, './uploads/1765165880-iphone-13-8-1-750x500.jpg'),
(59, 5, './uploads/1765165880-iphone-13-10-1-750x500.jpg'),
(60, 6, './uploads/1765194675-iphone-16-plus-trang-2-638639096590003275-750x500.jpg'),
(61, 6, './uploads/1765194675-iphone-16-plus-trang-3-638639096595898495-750x500.jpg'),
(62, 6, './uploads/1765194675-iphone-16-plus-trang-4-638639096602348933-750x500.jpg'),
(63, 6, './uploads/1765194675-iphone-16-plus-trang-5-638639096608329376-750x500.jpg'),
(64, 6, './uploads/1765194675-iphone-16-plus-trang-6-638639096614550816-750x500.jpg'),
(65, 6, './uploads/1765194675-iphone-16-plus-trang-7-638639096620639568-750x500.jpg'),
(66, 6, './uploads/1765194675-iphone-16-plus-trang-8-638639096626798979-750x500.jpg'),
(67, 6, './uploads/1765194675-iphone-16-plus-trang-9-638639096632418014-750x500.jpg'),
(68, 6, './uploads/1765194675-vi-vn-iphone-16-plus-thumbvideo.jpg'),
(69, 8, './uploads/1765194756-iphone-16-pro-titan-sa-mac-2-638638979074194078-750x500.jpg'),
(70, 8, './uploads/1765194756-iphone-16-pro-titan-sa-mac-3-638638979080345262-750x500.jpg'),
(71, 8, './uploads/1765194756-iphone-16-pro-titan-sa-mac-4-638638979090032976-750x500.jpg'),
(72, 8, './uploads/1765194756-iphone-16-pro-titan-sa-mac-5-638638979095787393-750x500.jpg'),
(73, 8, './uploads/1765194756-iphone-16-pro-titan-sa-mac-6-638638979102345968-750x500.jpg'),
(74, 8, './uploads/1765194756-iphone-16-pro-titan-sa-mac-7-638638979108659231-750x500.jpg'),
(75, 8, './uploads/1765194756-iphone-16-pro-titan-sa-mac-8-638638979114770926-750x500.jpg'),
(76, 8, './uploads/1765194756-iphone-16-pro-titan-sa-mac-9-638638979121031234-750x500.jpg'),
(77, 8, './uploads/1765194756-vi-vn-iphone-16-pro-thumbvideo.jpg'),
(78, 9, './uploads/1765194908-iphone-16-pro-max-2.webp'),
(79, 9, './uploads/1765194908-iphone-16-pro-max-3.webp'),
(80, 9, './uploads/1765194908-iphone-16-pro-max-4.webp'),
(81, 9, './uploads/1765194908-iphone-16-pro-max-5.webp'),
(82, 9, './uploads/1765194908-iphone-16-pro-max-6.webp'),
(83, 9, './uploads/1765194908-iphone-16-pro-max-7.webp'),
(84, 9, './uploads/1765194908-iphone-16-pro-max-8.webp'),
(85, 9, './uploads/1765194908-iphone-16-pro-max-9.webp'),
(86, 9, './uploads/1765194908-iphone-16-pro-max-10.webp'),
(87, 10, './uploads/1765195041-iphone-16e-white-1-638756438035819151-750x500.jpg'),
(88, 10, './uploads/1765195041-iphone-16e-white-2-638756438041704192-750x500.jpg'),
(89, 10, './uploads/1765195041-iphone-16e-white-3-638756438048473598-750x500.jpg'),
(90, 10, './uploads/1765195041-iphone-16e-white-4-638756438053606377-750x500.jpg'),
(91, 10, './uploads/1765195041-iphone-16e-white-5-638756438059595748-750x500.jpg'),
(92, 10, './uploads/1765195041-iphone-16e-white-6-638756438065295094-750x500.jpg'),
(93, 10, './uploads/1765195041-iphone-16e-white-8-638756438081345924-750x500.jpg'),
(94, 10, './uploads/1765195041-vi-vn-iphone-16e-thumbvideo.jpg'),
(95, 11, './uploads/1765195257-21.1_1.webp'),
(96, 11, './uploads/1765195257-21.7 (1).webp'),
(97, 11, './uploads/1765195257-21.7.webp'),
(98, 11, './uploads/1765195257-21_1_.webp'),
(99, 11, './uploads/1765195257-iphone_14_pro_1tb_-_1_1_.webp'),
(100, 11, './uploads/1765195257-iphone-14-pro_2__4.webp'),
(101, 11, './uploads/1765195257-iphone-14-pro-1tb-2.webp'),
(102, 11, './uploads/1765195257-iphone-14-pro-1tb-3.webp'),
(103, 11, './uploads/1765195257-iphone-14-pro-1tb-10.webp'),
(104, 11, './uploads/1765195257-v_ng_12.webp'),
(105, 11, './uploads/1765195257-x_m_16.webp'),
(106, 12, './uploads/1765195423-iphone-15-plus_1__1.webp'),
(107, 12, './uploads/1765195423-vn_iphone_15_pink_pdp_image_position-2_design_2.webp'),
(108, 12, './uploads/1765195423-vn_iphone_15_pink_pdp_image_position-3_design_detail_2.webp'),
(109, 12, './uploads/1765195423-vn_iphone_15_pink_pdp_image_position-5_colors_2.webp'),
(110, 12, './uploads/1765195423-vn_iphone_15_pink_pdp_image_position-6_dynamic_island_2.webp'),
(111, 12, './uploads/1765195423-vn_iphone_15_pink_pdp_image_position-7_features_specs_2.webp'),
(112, 12, './uploads/1765195423-vn_iphone_15_pink_pdp_image_position-8_usb-c_charge_cable_2.webp'),
(113, 12, './uploads/1765195423-vn_iphone_15_pink_pdp_image_position-9_accessory_2.webp'),
(114, 12, './uploads/1765195423-vn1b93_1_2.webp'),
(115, 13, './uploads/1765195557-iphone_17_256gb-3_2.webp'),
(116, 13, './uploads/1765195557-iphone-17-256gb.webp'),
(117, 13, './uploads/1765195557-iphone-17-256gb-1.webp'),
(118, 13, './uploads/1765195557-iphone-17-256gb-2.webp'),
(119, 13, './uploads/1765195557-iphone-17-256gb-3.webp'),
(120, 13, './uploads/1765195557-iphone-17-256gb-4.webp'),
(121, 13, './uploads/1765195557-iphone-17-256gb-5.webp'),
(122, 13, './uploads/1765195557-iphone-17-256gb-6.webp'),
(123, 13, './uploads/1765195557-iphone-17-256gb-7.webp'),
(124, 13, './uploads/1765195557-iphone-17-256gb-8.webp'),
(125, 15, './uploads/1765195687-iphone_air-3_2.webp'),
(126, 15, './uploads/1765195687-iphone-air-256gb.webp'),
(127, 15, './uploads/1765195687-iphone-air-256gb-1.webp'),
(128, 15, './uploads/1765195687-iphone-air-256gb-2.webp'),
(129, 15, './uploads/1765195687-iphone-air-256gb-3.webp'),
(130, 15, './uploads/1765195687-iphone-air-256gb-4.webp'),
(131, 15, './uploads/1765195687-iphone-air-256gb-5.webp'),
(132, 15, './uploads/1765195687-iphone-air-256gb-6.webp'),
(133, 15, './uploads/1765195687-iphone-air-256gb-8.webp'),
(134, 16, './uploads/1765195935-2_242_3.webp'),
(135, 16, './uploads/1765195935-5_158_3.webp'),
(136, 16, './uploads/1765195935-9_44_1.webp'),
(137, 16, './uploads/1765195935-16_1_3.webp'),
(138, 16, './uploads/1765195935-17_1_1.webp'),
(139, 16, './uploads/1765195935-ipad_air_5_10.9_inch_2022_5g_64gb_-_2.webp'),
(140, 16, './uploads/1765195935-ipad_air_5_10.9_inch_2022_5g_64gb_-_3.webp'),
(141, 16, './uploads/1765195935-ipad_air_5_10.9_inch_2022_5g_64gb_-_5.webp'),
(142, 16, './uploads/1765195935-ipad_air_5_10.9_inch_2022_5g_64gb_-_8.webp'),
(143, 16, './uploads/1765195935-ipad_air_5_10.9_inch_2022_256gb_-_1.webp'),
(144, 17, './uploads/1765196018-ipad-air-6-m2-13-inch.webp'),
(145, 17, './uploads/1765196018-ipad-air-6-m2-13-inch_1.webp'),
(146, 17, './uploads/1765196018-ipad-air-6-m2-13-inch_2_.webp'),
(147, 17, './uploads/1765196018-ipad-air-6-m2-13-inch_3_.webp'),
(148, 17, './uploads/1765196018-ipad-air-6-m2-13-inch_4_.webp'),
(149, 17, './uploads/1765196018-ipad-air-6-m2-13-inch_5_.webp'),
(150, 17, './uploads/1765196018-ipad-air-6-m2-13-inch_6_.webp'),
(151, 17, './uploads/1765196018-ipad-air-6-m2-13-inch_7_.webp'),
(152, 17, './uploads/1765196018-ipad-air-6-m2-13-inch_8_.webp'),
(153, 18, './uploads/1765196150-ipad-air-11-wifi-1.webp'),
(154, 18, './uploads/1765196150-ipad-air-11-wifi-2.webp'),
(155, 18, './uploads/1765196150-ipad-air-11-wifi-3.webp'),
(156, 18, './uploads/1765196150-ipad-air-m3-11-inch-3_4.webp'),
(157, 18, './uploads/1765196150-ipad-air-m3-11-inch-4_4.webp'),
(158, 18, './uploads/1765196150-ipad-air-m3-11-inch-5_4.webp'),
(159, 18, './uploads/1765196150-ipad-air-m3-11-inch-6_4.webp'),
(160, 18, './uploads/1765196150-ipad-air-m3-11-inch-7_4.webp'),
(161, 18, './uploads/1765196150-ipad-air-m3-11-inch-8_4.webp'),
(162, 18, './uploads/1765196150-ipad-air-m3-11-inch-9_4.webp'),
(163, 19, './uploads/1765196296-ipad_pro_13-in_m5_wifi_space_black_pdp_image_position_3__vn-vi.webp'),
(164, 19, './uploads/1765196296-ipad_pro_13-in_m5_wifi_space_black_pdp_image_position_4__vn-vi.webp'),
(165, 19, './uploads/1765196296-ipad_pro_13-in_m5_wifi_space_black_pdp_image_position_5__vn-vi.webp'),
(166, 19, './uploads/1765196296-ipad_pro_13-in_m5_wifi_space_black_pdp_image_position_6__vn-vi.webp'),
(167, 19, './uploads/1765196296-ipad_pro_13-in_m5_wifi_space_black_pdp_image_position_7__vn-vi.webp'),
(168, 19, './uploads/1765196296-ipad_pro_13-in_m5_wifi_space_black_pdp_image_position_8__vn-vi.webp'),
(169, 19, './uploads/1765196296-ipad_pro_13-in_m5_wifi_space_black_pdp_image_position_9__vn-vi.webp'),
(170, 19, './uploads/1765196296-ipad-pro-m5.webp'),
(171, 19, './uploads/1765196296-ipad-pro-m5-2.webp'),
(172, 20, './uploads/1765196428-ipad-mini-7-wifi-purple-1-638651174600667416-750x500.jpg'),
(173, 20, './uploads/1765196428-ipad-mini-7-wifi-purple-2-638651174612580000-750x500.jpg'),
(174, 20, './uploads/1765196428-ipad-mini-7-wifi-purple-3-638651174619400915-750x500.jpg'),
(175, 20, './uploads/1765196428-ipad-mini-7-wifi-purple-4-638651174626053692-750x500.jpg'),
(176, 20, './uploads/1765196428-ipad-mini-7-wifi-purple-5-638651174631426966-750x500.jpg'),
(177, 20, './uploads/1765196428-ipad-mini-7-wifi-purple-6-638651174637220630-750x500.jpg'),
(178, 20, './uploads/1765196428-ipad-mini-7-wifi-purple-7-638651174642527252-750x500.jpg'),
(179, 20, './uploads/1765196428-ipad-mini-7-wifi-purple-8-638651174648105188-750x500.jpg'),
(180, 20, './uploads/1765196428-ipad-mini-7-wifi-purple-9-638651174654040892-750x500.jpg'),
(181, 21, './uploads/1765196605-masstel-tab-11-ultra-4gb-128gb-xanh-1-638883685424010773-750x500.jpg'),
(182, 21, './uploads/1765196605-masstel-tab-11-ultra-4gb-128gb-xanh-2-638883685431304213-750x500.jpg'),
(183, 21, './uploads/1765196605-masstel-tab-11-ultra-4gb-128gb-xanh-3-638883685439343753-750x500.jpg'),
(184, 21, './uploads/1765196605-masstel-tab-11-ultra-4gb-128gb-xanh-4-638883685446183285-750x500.jpg'),
(185, 21, './uploads/1765196605-masstel-tab-11-ultra-4gb-128gb-xanh-6-638883685461880603-750x500.jpg'),
(186, 21, './uploads/1765196605-masstel-tab-11-ultra-4gb-128gb-xanh-8-638883685475206241-750x500.jpg'),
(187, 21, './uploads/1765196605-masstel-tab-11-ultra-4gb-128gb-xanh-11-638883685495294449-750x500.jpg'),
(188, 21, './uploads/1765196605-masstel-tab-11-ultra-4gb-128gb-xanh-12-638883685502693174-750x500.jpg'),
(189, 22, './uploads/1765196742-oppo-pad-3-bac-1-638752291535045860-750x500.jpg'),
(190, 22, './uploads/1765196742-oppo-pad-3-bac-2-638752291541808770-750x500.jpg'),
(191, 22, './uploads/1765196742-oppo-pad-3-bac-4-638752291553445509-750x500.jpg'),
(192, 22, './uploads/1765196742-oppo-pad-3-bac-5-638752291561912238-750x500.jpg'),
(193, 22, './uploads/1765196742-oppo-pad-3-bac-6-638752291569283169-750x500.jpg'),
(194, 22, './uploads/1765196742-oppo-pad-3-bac-8-638752291582215731-750x500.jpg'),
(195, 22, './uploads/1765196742-oppo-pad-3-bac-9-638752291590471266-750x500.jpg'),
(196, 22, './uploads/1765196742-oppo-pad-3-bac-11-638752291603140069-750x500.jpg'),
(197, 22, './uploads/1765196742-oppo-pad-3-bac-12-638752291609068357-750x500.jpg'),
(198, 23, './uploads/1765196825-samsung-galax-tab-s10-plus-mohop-638640926136856892.jpg'),
(199, 23, './uploads/1765196825-samsung-galaxy-tab-s10-plus-gray-1-638629870734972892-750x500.jpg'),
(200, 23, './uploads/1765196825-samsung-galaxy-tab-s10-plus-gray-2-638629870745557501-750x500.jpg'),
(201, 23, './uploads/1765196825-samsung-galaxy-tab-s10-plus-gray-3-638629870751242548-750x500.jpg'),
(202, 23, './uploads/1765196825-samsung-galaxy-tab-s10-plus-gray-4-638629870759115237-750x500.jpg'),
(203, 23, './uploads/1765196825-samsung-galaxy-tab-s10-plus-gray-5-638629870764681884-750x500.jpg'),
(204, 24, './uploads/1765197112-xiaomi-redmi-pad-2-bbh-638889739059212236.jpg'),
(205, 24, './uploads/1765197112-xiaomi-redmi-pad-2-wifi-xam-1-638889722791105651-750x500.jpg'),
(206, 24, './uploads/1765197112-xiaomi-redmi-pad-2-wifi-xam-2-638889722797826792-750x500.jpg'),
(207, 24, './uploads/1765197112-xiaomi-redmi-pad-2-wifi-xam-4-638889722811092739-750x500.jpg'),
(208, 24, './uploads/1765197112-xiaomi-redmi-pad-2-wifi-xam-5-638889722817493022-750x500.jpg'),
(209, 24, './uploads/1765197112-xiaomi-redmi-pad-2-wifi-xam-6-638889722829329117-750x500.jpg'),
(210, 24, './uploads/1765197112-xiaomi-redmi-pad-2-wifi-xam-8-638889722841564557-750x500.jpg'),
(211, 24, './uploads/1765197112-xiaomi-redmi-pad-2-wifi-xam-11-638889722861664261-750x500.jpg'),
(212, 24, './uploads/1765197112-xiaomi-redmi-pad-2-wifi-xam-12-638889722868474601-750x500.jpg'),
(213, 25, './uploads/1765197228-laptop_acer_aspire_lite_14_al14-71m-52gq_-_1.webp'),
(214, 25, './uploads/1765197228-laptop_acer_aspire_lite_14_al14-71m-52gq_-_2.webp'),
(215, 25, './uploads/1765197228-laptop_acer_aspire_lite_14_al14-71m-52gq_-_3.png'),
(216, 25, './uploads/1765197229-text_ng_n_1__8_27.webp'),
(217, 25, './uploads/1765197229-text_ng_n_2__7_61.webp'),
(218, 25, './uploads/1765197229-text_ng_n_3__6_58.webp'),
(219, 25, './uploads/1765197229-text_ng_n_4__7_55.webp'),
(220, 25, './uploads/1765197229-text_ng_n_6__2_232.webp'),
(221, 25, './uploads/1765197229-text_ng_n_7__2_211.webp'),
(222, 29, './uploads/1765197586-laptop_asus_vivobook_s16_s3607qa-sh040ws_-_1.webp'),
(223, 29, './uploads/1765197586-laptop_asus_vivobook_s16_s3607qa-sh040ws_-_2.webp'),
(224, 29, './uploads/1765197586-laptop_asus_vivobook_s16_s3607qa-sh040ws_-_3.webp'),
(225, 29, './uploads/1765197586-text_ng_n_2__9_252.webp'),
(226, 29, './uploads/1765197586-text_ng_n_3__7_241.webp'),
(227, 29, './uploads/1765197586-text_ng_n_4__7_294.webp'),
(228, 29, './uploads/1765197586-text_ng_n_5__9_285.webp'),
(229, 29, './uploads/1765197586-text_ng_n_6__4_254.webp'),
(230, 29, './uploads/1765197586-text_ng_n_7__4_226.webp'),
(231, 29, './uploads/1765197586-text_ng_n_8__6_221.webp'),
(232, 30, './uploads/1765197745-laptop_dell_15_dc15255_dc5r5802w1_-_1.webp'),
(233, 30, './uploads/1765197745-laptop_dell_15_dc15255_dc5r5802w1_-_2.webp'),
(234, 30, './uploads/1765197745-laptop_dell_15_dc15255_dc5r5802w1_-_3.webp'),
(235, 30, './uploads/1765197745-text_ng_n_2__10_145.webp'),
(236, 30, './uploads/1765197745-text_ng_n_3__8_123.webp'),
(237, 30, './uploads/1765197745-text_ng_n_4__8_125.webp'),
(238, 30, './uploads/1765197745-text_ng_n_6__5_103.webp'),
(239, 30, './uploads/1765197745-text_ng_n_7__5_90.webp'),
(240, 30, './uploads/1765197745-text_ng_n_8__8_85.webp'),
(241, 31, './uploads/1765197828-group_844.webp'),
(242, 31, './uploads/1765197828-laptop_dell_inspiron_15_3530_j9xfd_-_2.webp'),
(243, 31, './uploads/1765197828-laptop_dell_inspiron_15_3530_j9xfd_-_3.webp'),
(244, 31, './uploads/1765197828-text_ng_n_1__9_123.webp'),
(245, 31, './uploads/1765197828-text_ng_n_2__9_161.webp'),
(246, 31, './uploads/1765197828-text_ng_n_3__7_158.webp'),
(247, 31, './uploads/1765197828-text_ng_n_4__7_203.webp'),
(248, 31, './uploads/1765197828-text_ng_n_7__4_161.webp'),
(249, 31, './uploads/1765197828-text_ng_n_8__6_165.webp'),
(250, 31, './uploads/1765197828-text_ng_n_15_89.webp'),
(251, 32, './uploads/1765197893-laptop_gaming_acer_nitro_v_15_propanel_anv15-41-r7ap_-_1.webp'),
(252, 32, './uploads/1765197893-laptop_gaming_acer_nitro_v_15_propanel_anv15-41-r7ap_-_2.webp'),
(253, 32, './uploads/1765197893-laptop_gaming_acer_nitro_v_15_propanel_anv15-41-r7ap_-_3.webp'),
(254, 32, './uploads/1765197893-text_ng_n_1__6_108.webp'),
(255, 32, './uploads/1765197893-text_ng_n_2__6_119.webp'),
(256, 32, './uploads/1765197893-text_ng_n_3__5_111.webp'),
(257, 32, './uploads/1765197893-text_ng_n_4__6_106.webp'),
(258, 32, './uploads/1765197893-text_ng_n_6__2_142.webp'),
(259, 32, './uploads/1765197893-text_ng_n_7__2_130.webp'),
(260, 32, './uploads/1765197893-text_ng_n_8__4_130.webp'),
(261, 32, './uploads/1765197893-text_ng_n_9__4_143.webp'),
(262, 33, './uploads/1765197962-laptop_lenovo_loq_15iax9e_83lk0079vn_-_1.webp'),
(263, 33, './uploads/1765197962-laptop_lenovo_loq_15iax9e_83lk0079vn_-_2.webp'),
(264, 33, './uploads/1765197962-laptop_lenovo_loq_15iax9e_83lk0079vn_-_3.webp'),
(265, 33, './uploads/1765197962-text_ng_n_5__9_27.webp'),
(266, 33, './uploads/1765197962-text_ng_n_6__4_24.webp'),
(267, 33, './uploads/1765197962-text_ng_n_7__4_21.webp'),
(268, 33, './uploads/1765197962-text_ng_n_9__9_21.webp'),
(269, 33, './uploads/1765197962-text_ng_n_11__6_39.webp'),
(270, 33, './uploads/1765197962-text_ng_n_12__7_35.webp'),
(271, 33, './uploads/1765197962-text_ng_n_13__7_44.webp'),
(272, 33, './uploads/1765197962-text_ng_n_15__7_184.webp'),
(273, 34, './uploads/1765198033-laptop_msi_modern_14_f13mg-240vncp_-_1.webp'),
(274, 34, './uploads/1765198033-laptop_msi_modern_14_f13mg-240vncp_-_2.webp'),
(275, 34, './uploads/1765198033-laptop_msi_modern_14_f13mg-240vncp_-_3.webp'),
(276, 34, './uploads/1765198033-text_ng_n_2__9_297.webp'),
(277, 34, './uploads/1765198033-text_ng_n_3__7_273.webp'),
(278, 34, './uploads/1765198033-text_ng_n_4__7_322.webp'),
(279, 34, './uploads/1765198033-text_ng_n_6__4_279.webp'),
(280, 34, './uploads/1765198033-text_ng_n_7__4_255.webp'),
(281, 34, './uploads/1765198033-text_ng_n_12__8_140.webp'),
(282, 34, './uploads/1765198033-text_ng_n_17__9_1.webp'),
(283, 35, './uploads/1765198165-0036015_midnight_550.jpeg.webp'),
(284, 35, './uploads/1765198165-0036026_silver_550.jpeg.webp'),
(285, 35, './uploads/1765198165-0036037_blue_550.jpeg.webp'),
(286, 35, './uploads/1765198165-0036049_starlight_550.jpeg.webp'),
(287, 35, './uploads/1765198165-0036050_starlight_550.jpeg.webp'),
(288, 35, './uploads/1765198165-0036051_starlight_550.jpeg.webp'),
(289, 35, './uploads/1765198165-0036052_starlight_550.jpeg.webp'),
(290, 35, './uploads/1765198165-0036054_starlight_550.jpeg.webp'),
(291, 35, './uploads/1765198165-0036057_starlight_550.jpeg.webp'),
(292, 36, './uploads/1765198321-text_ng_n_2__11.webp'),
(293, 36, './uploads/1765198321-text_ng_n_3__9.webp'),
(294, 36, './uploads/1765198321-text_ng_n_4__9.webp'),
(295, 36, './uploads/1765198321-text_ng_n_5__11_2.webp'),
(296, 36, './uploads/1765198321-text_ng_n_6__6_5.webp'),
(297, 36, './uploads/1765198321-text_ng_n_7__6_2.webp'),
(298, 36, './uploads/1765198321-text_ng_n_8__10_3.webp'),
(299, 36, './uploads/1765198321-text_ng_n_9__10.webp'),
(300, 36, './uploads/1765198321-text_ng_n_10__6_2.webp'),
(301, 37, './uploads/1765198478-samsung-galaxy-a17-5g-gray-1-638925131547875229-750x500.jpg'),
(302, 37, './uploads/1765198478-samsung-galaxy-a17-5g-gray-3-638925131535079597-750x500.jpg'),
(303, 37, './uploads/1765198478-samsung-galaxy-a17-5g-gray-4-638925131528503776-750x500.jpg'),
(304, 37, './uploads/1765198478-samsung-galaxy-a17-5g-gray-5-638925131519844861-750x500.jpg'),
(305, 37, './uploads/1765198478-samsung-galaxy-a17-5g-gray-9-638925131491175268-750x500.jpg'),
(306, 37, './uploads/1765198478-samsung-galaxy-a17-5g-gray-11-638925131477412712-750x500.jpg'),
(307, 37, './uploads/1765198478-samsung-galaxy-a17-5g-gray-12-638925131468522278-750x500.jpg'),
(308, 38, './uploads/1765198688-samsung-galaxy-a56-mohop-638790988445933352.jpg'),
(309, 38, './uploads/1765198688-samsung-galaxy-a56-xam-01-638802400999449896-750x500.jpg'),
(310, 38, './uploads/1765198689-samsung-galaxy-a56-xam-02-638802401008238124-750x500.jpg'),
(311, 38, './uploads/1765198689-samsung-galaxy-a56-xam-04-638802401019412193-750x500.jpg'),
(312, 38, './uploads/1765198689-samsung-galaxy-a56-xam-06-638802401031492358-750x500.jpg'),
(313, 38, './uploads/1765198689-samsung-galaxy-a56-xam-08-638802401042836617-750x500.jpg'),
(314, 38, './uploads/1765198689-samsung-galaxy-a56-xam-11-638802401055240679-750x500.jpg'),
(315, 38, './uploads/1765198689-samsung-galaxy-a56-xam-13-638802401067339688-750x500.jpg'),
(316, 38, './uploads/1765198689-vi-vn-samsung-galaxy-a56-5g-1.jpg'),
(317, 39, './uploads/1765198826-samsung-galaxy-z-flip7-bbh-638889704779234882.jpg'),
(318, 39, './uploads/1765198826-samsung-galaxy-z-flip7-do-1-638889695868366654-750x500.jpg'),
(319, 39, './uploads/1765198826-samsung-galaxy-z-flip7-do-2-638889695877931315-750x500.jpg'),
(320, 39, './uploads/1765198826-samsung-galaxy-z-flip7-do-3-638889695885236517-750x500.jpg'),
(321, 39, './uploads/1765198826-samsung-galaxy-z-flip7-do-5-638889695896506626-750x500.jpg'),
(322, 39, './uploads/1765198826-samsung-galaxy-z-flip7-do-7-638889695911814871-750x500.jpg'),
(323, 39, './uploads/1765198826-samsung-galaxy-z-flip7-do-10-638889695937599661-750x500.jpg'),
(324, 39, './uploads/1765198826-samsung-galaxy-z-flip7-do-13-638889695956457290-750x500.jpg'),
(325, 39, './uploads/1765198826-samsung-galaxy-z-flip7-do-14-638889695965319748-750x500.jpg'),
(326, 39, './uploads/1765198826-vi-vn-samsung-galaxy-z-flip7-1.jpg'),
(327, 40, './uploads/1765199244-22_2_10.webp'),
(328, 40, './uploads/1765199244-23_2_7.webp'),
(329, 40, './uploads/1765199244-24_41.webp'),
(330, 40, './uploads/1765199244-25_1_24.webp'),
(331, 40, './uploads/1765199244-26_1_24.webp'),
(332, 40, './uploads/1765199244-33_1_17.webp'),
(333, 40, './uploads/1765199244-34_1_17.webp'),
(334, 40, './uploads/1765199244-35_1_16.webp'),
(335, 40, './uploads/1765199244-36_1_17.webp'),
(336, 40, './uploads/1765199244-37_1_14.webp'),
(337, 40, './uploads/1765199244-cap-type-c-to-lightning-baseus-crystal-shine-1-2m_1_.webp'),
(338, 40, './uploads/1765199244-cap-type-c-to-lightning-baseus-crystal-shine-1-2m_2__1.webp'),
(339, 41, './uploads/1765199325-kinh-cuong-luc-iphone-13-14-13-pro-se-40-zagg-full_1_.webp'),
(340, 41, './uploads/1765199325-kinh-cuong-luc-iphone-13-14-13-pro-se-40-zagg-full_2_.webp'),
(341, 41, './uploads/1765199325-kinh-cuong-luc-iphone-13-14-13-pro-se-40-zagg-full_3_.webp'),
(342, 41, './uploads/1765199325-kinh-cuong-luc-iphone-13-14-13-pro-se-40-zagg-full_4_.webp'),
(343, 41, './uploads/1765199325-kinh-cuong-luc-iphone-13-14-13-pro-se-40-zagg-full_5_.webp'),
(344, 42, './uploads/1765199391-text_ng_n_-_2025-09-11t173904.793_1.webp'),
(345, 42, './uploads/1765199391-text_ng_n_-_2025-09-11t173916.252_1.webp'),
(346, 42, './uploads/1765199391-text_ng_n_-_2025-09-11t173941.752_1.webp'),
(347, 42, './uploads/1765199391-text_ng_n_-_2025-09-11t173949.542_1.webp'),
(348, 42, './uploads/1765199391-text_ng_n_-_2025-09-11t173958.858_1.webp'),
(349, 42, './uploads/1765199391-text_ng_n_-_2025-09-11t174008.138_1.webp'),
(350, 42, './uploads/1765199391-text_ng_n_-_2025-09-11t174015.884_1.webp'),
(351, 42, './uploads/1765199391-text_ng_n_-_2025-09-11t174023.533_1.webp'),
(352, 42, './uploads/1765199391-text_ng_n_-_2025-09-11t174032.735_1.webp'),
(353, 42, './uploads/1765199391-text_ng_n_-_2025-09-11t174039.889_1.webp'),
(354, 43, './uploads/1765199456-de-sac-khong-day-aukey-magfusion-qi2-2-lc-mc111-1x-25w_2_.webp'),
(355, 43, './uploads/1765199456-de-sac-khong-day-aukey-magfusion-qi2-2-lc-mc111-1x-25w_3_.webp'),
(356, 43, './uploads/1765199456-de-sac-khong-day-aukey-magfusion-qi2-2-lc-mc111-1x-25w_5_.png'),
(357, 43, './uploads/1765199456-de-sac-khong-day-aukey-magfusion-qi2-2-lc-mc111-1x-25w_6_.webp'),
(358, 43, './uploads/1765199456-de-sac-khong-day-aukey-magfusion-qi2-2-lc-mc111-1x-25w_8_.webp'),
(359, 43, './uploads/1765199456-de-sac-khong-day-aukey-magfusion-qi2-2-lc-mc111-1x-25w_10_.png'),
(360, 43, './uploads/1765199456-de-sac-khong-day-aukey-magfusion-qi2-2-lc-mc111-1x-25w_11_.webp'),
(361, 43, './uploads/1765199456-group_647_-_2025-10-23t150139.291.webp');

-- --------------------------------------------------------

--
-- Table structure for table `phuong_thuc_thanh_toans`
--

CREATE TABLE `phuong_thuc_thanh_toans` (
  `id` int NOT NULL,
  `ten_phuong_thuc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phuong_thuc_thanh_toans`
--

INSERT INTO `phuong_thuc_thanh_toans` (`id`, `ten_phuong_thuc`) VALUES
(1, 'COD (Thanh toán khi nhận hàng)'),
(2, 'Thanh toán VNPay');

-- --------------------------------------------------------

--
-- Table structure for table `san_phams`
--

CREATE TABLE `san_phams` (
  `id` int NOT NULL,
  `ten_san_pham` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia_san_pham` decimal(10,2) NOT NULL,
  `gia_khuyen_mai` decimal(10,2) DEFAULT NULL,
  `hinh_anh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `so_luong` int NOT NULL,
  `luot_xem` int DEFAULT '0',
  `ngay_nhap` date NOT NULL,
  `mo_ta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `danh_muc_id` int NOT NULL,
  `trang_thai` tinyint NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `san_phams`
--

INSERT INTO `san_phams` (`id`, `ten_san_pham`, `gia_san_pham`, `gia_khuyen_mai`, `hinh_anh`, `so_luong`, `luot_xem`, `ngay_nhap`, `mo_ta`, `danh_muc_id`, `trang_thai`) VALUES
(1, 'Iphone 17 Promax 256 GB', '430000.00', '420000.00', './uploads/1765203745-vi-vn-iphone-17-pro-max-1.jpg', 10, 10, '2024-12-07', 'Iphone 17 Promax với cấu hình siêu khủng, màn đẹp, pin trâu, camera sắc nét,...', 4, 1),
(2, 'Laptop Acer Aspire Lite 14 AL14-71M-52GQ', '24000000.00', '23000000.00', './uploads/1765152155-laptop_acer_aspire_lite_14_al14-71m-52gq_-_3.png', 12, 22, '2025-12-07', 'Laptop Acer Aspire Lite 14 AL14-71M-52GQ là dòng laptop văn phòng đẹp', 5, 1),
(3, 'iPad A16 Wifi 128GB 2025  Chính hãng Apple Việt Nam ', '22000000.00', '19500000.00', './uploads/1765152285-ipad-a16-11-inch_2__1.webp', 10, 10, '2025-12-07', 'iPad A16 Wifi 128GB 2025  Chính hãng Apple Việt Nam là dòng Ipad rất được ưa chuộng ở Việt Nam', 6, 1),
(4, 'Phone 13 128GB ', '15000000.00', '12900000.00', './uploads/1765200446-iphone-13-1-2-750x500.jpg', 19, 8, '2025-12-08', 'iPhone 13 128GB \nMột chiếc iPhone “ngon-bổ-rẻ” nhất định phải có trong năm 2025 nếu bạn muốn máy chính hãng Apple giá hợp lý!', 4, 1),
(5, 'iPhone 13 256GB', '6000000.00', '4600000.00', './uploads/1765200476-iphone-13-4-1-750x500.jpg', 16, 9, '2025-12-08', 'iPhone 13 256GB\nMột chiếc iPhone “ngon-bổ-rẻ” nhất định phải có trong năm 2025 nếu bạn muốn máy chính hãng Apple giá hợp lý!', 4, 1),
(6, 'Điện thoại iPhone 16 Plus 128GB', '23000000.00', '19000000.00', './uploads/1765194623-iphone-16-plus-trang-1-638639096584067146-750x500.jpg', 50, 21, '2025-12-08', 'Siêu phẩm iPhone 16 Plus – màn lớn, camera đỉnh cao, AI đột phá, hoàn hảo cho năm 2025 với giá trị vượt trội từ Apple!', 4, 1),
(7, 'Iphone 16e 256GB', '8000000.00', '5500000.00', 'assets/img/product/product-7.jpg', 70, 43, '2025-11-29', '\niPhone 16e 256gb– \"người anh em giá rẻ\" của dòng iPhone 16, mang Apple Intelligence vào tầm tay với giá khởi điểm 599 USD, lựa chọn thông minh cho năm 2025 nếu bạn muốn iPhone hiện đại mà không tốn kém!', 9, 1),
(8, 'Điện thoại iPhone 16 Pro 128GB', '19800000.00', '16999999.00', './uploads/1765194859-iphone-16-pro-titan-sa-mac-1-638638979065595000-750x500.jpg', 56, 88, '2025-12-08', 'iPhone 16 Pro 128GB – Mô tả ngắn gọn:\r\n\r\nMàn hình Super Retina XDR OLED 6.3 inch, độ phân giải 2622 x 1206 (460 ppi), Dynamic Island, ProMotion 120Hz, sáng tối đa 2000 nits, hỗ trợ HDR10, Always-On Display\r\nChip A18 Pro siêu mạnh với CPU 6 lõi, GPU 6 lõi, Neural Engine 16 lõi – tích hợp Apple Intelligence cho AI thông minh, bảo mật cao, hỗ trợ Wi-Fi 7\r\nHệ thống camera ba 48MP Fusion chính (OIS, zoom quang 5x) + 48MP siêu rộng (120°) + 12MP tele (5x), camera trước 12MP; hỗ trợ Photonic Engine, Deep Fusion, Smart HDR 5, Night mode, quay video 4K 120fps Dolby Vision, Spatial video\r\nThiết kế titanium cao cấp, Ceramic Shield thế hệ mới (gấp 2 lần bền), chống nước/bụi IP68 (sâu 6m/30 phút); nút Camera Control chuyên dụng và Action Button tùy chỉnh\r\nPin 3582mAh \"khủng\" lên đến 27 giờ xem video, sạc nhanh 50% trong 30 phút (20W+), sạc không dây MagSafe 25W, USB-C\r\nDung lượng 128GB phù hợp cho người dùng cơ bản đến nâng cao, hỗ trợ eSIM, 5G, Face ID, iOS 18 mượt mà (cập nhật lên iOS 19/20)\r\n\r\nSiêu phẩm iPhone 16 Pro – camera chuyên nghiệp, hiệu năng đỉnh cao, AI đột phá, lựa chọn hoàn hảo cho năm 2025 với thiết kế titanium sang trọng từ Apple!', 4, 1),
(9, 'Điện thoại iPhone 16 Pro Max 256GB', '26000000.00', '21499000.00', './uploads/1765194984-iphone-16-pro-max.webp', 26, 10, '2025-12-05', 'iPhone 16 Pro Max 256GB – Mô tả ngắn gọn (2025):\r\n\r\nMàn hình lớn nhất: Super Retina XDR OLED 6.9 inch, độ phân giải 2868 x 1320 (460 ppi), ProMotion 120Hz mượt như lụa, Always-On Display, sáng tối đa 2000 nits (ngoài trời rõ nét), Ceramic Shield thế hệ mới bền gấp đôi\r\nChip A18 Pro khủng nhất Apple hiện tại: CPU 6 lõi nhanh hơn 20%, GPU 6 lõi mạnh hơn 20% so với A17 Pro, Neural Engine 16 lõi – tối ưu Apple Intelligence (AI viết văn bản, tạo ảnh, Siri thông minh hơn…)\r\nCamera “Pro” thực thụ:\r\n• Chính 48MP Fusion (cảm biến lớn hơn, OIS thế hệ 2)\r\n• Siêu rộng 48MP (120°)\r\n• Tele 12MP zoom quang 5x (120mm)\r\n• Quay video 4K 120fps Dolby Vision, ProRes, Spatial Video cho Vision Pro\r\n• Nút Camera Control cảm ứng lực + cảm biến chạm – chụp ảnh siêu nhanh và chuyên nghiệp\r\nPin “trâu” nhất dòng iPhone từ trước đến nay: ~4680 mAh\r\n• Thời lượng thực tế: 29–33 giờ xem video, dùng nặng cả ngày vẫn dư 20–30%\r\n• Sạc nhanh 45W (50% trong ~30 phút), MagSafe 25W\r\nThiết kế titanium cao cấp, nhẹ và bền hơn thép không gỉ cũ, chống nước IP68 (6m/30 phút), màu mới Desert Titanium cực đẹp\r\nDung lượng 256GB – lý tưởng cho người quay 4K ProRes, chụp RAW, dùng lâu dài 4–5 năm không lo hết bộ nhớ\r\niOS 18 + cập nhật phần mềm ít nhất tới 2030–2031\r\n\r\nKết luận một câu: iPhone 16 Pro Max 256GB hiện là chiếc iPhone “đỉnh nhất” Apple từng làm – màn to, pin khủng, camera chuyên nghiệp, AI thông minh và đáng tiền nhất để dùng dài hạn trong năm 2025–2030!Fast', 4, 1),
(10, 'Điện thoại iPhone 16e 128GB', '21000000.00', '21599000.00', './uploads/1765195105-iphone-16e-white-1-638756438035819151-750x500.jpg', 50, 20, '2025-12-08', '\niPhone 16e 128GB – \"người anh em giá rẻ\" của dòng iPhone 16, mang Apple Intelligence vào tầm tay với giá khởi điểm 599 USD, lựa chọn thông minh cho năm 2025 nếu bạn muốn iPhone hiện đại mà không tốn kém!', 4, 1),
(11, 'iPhone 14 Pro 128GB  Chính hãng VNA', '27000000.00', '24999999.00', './uploads/1765195368-x_m_16.webp', 178, 0, '2025-12-08', 'iPhone 14 Pro 128GB chính hãng VN/A – flagship \"huyền thoại\" với camera đỉnh cao và Dynamic Island đầu tiên, vẫn \"chiến\" tốt năm 2025, lựa chọn tiết kiệm so với dòng 16 nếu bạn muốn giá trị lâu dài từ Apple!', 4, 1),
(12, 'iPhone 15 128GB  Chính hãng VNA', '23000000.00', '21499000.00', './uploads/1765195481-iphone-15-plus_1__1.webp', 12, 0, '2025-12-01', 'iPhone 15 128GB chính hãng VN/A – flagship \"cân bằng\" với camera 48MP sắc nét, Dynamic Island đầu tiên cho dòng thường, USB-C và hiệu năng \"trâu\" – vẫn đáng mua năm 2025 nếu bạn muốn iPhone hiện đại giá \"mềm\" hơn dòng 16!', 4, 1),
(13, 'iPhone 17 256GB  Chính hãng', '34000000.00', '31500000.00', './uploads/1765195627-iphone_17_256gb-3_2.webp', 12, 0, '2025-12-09', 'iPhone 17 256GB chính hãng – flagship \"tiết kiệm\" với storage gấp đôi, camera sắc nét, AI đột phá và pin bền bỉ – lựa chọn hoàn hảo năm 2025 nếu bạn muốn iPhone hiện đại giá $799 (khoảng 20 triệu VND) mà không cần Pro!', 4, 1),
(14, 'Iphone 17 512GB', '500000.00', '400000.00', NULL, 12, 50, '2025-12-02', 'Đẹp', 1, 1),
(15, 'iPhone Air 256GB  Chính hãng', '24000000.00', '22999999.00', './uploads/1765195746-iphone_air-3_2.webp', 432, 0, '2025-12-08', 'iPhone Air 256GB chính hãng – \"siêu mỏng, siêu nhẹ\" thay thế dòng Plus, với thiết kế titanium đột phá và hiệu năng Pro – lựa chọn \"bay bổng\" năm 2025 cho ai muốn iPhone hiện đại giá $999 mà vẫn đỉnh cao từ Apple!1,3 giâyFast', 4, 1),
(16, 'iPad Air 5 10.9 inch (2022) WiFi 64GB Chính hãng Apple Việt Nam', '19000000.00', '17500000.00', './uploads/1765195976-5_158_3.webp', 123, 0, '2025-12-02', 'iPad Air 5 10.9\" WiFi 64GB chính hãng – \"Air\" thực thụ với thiết kế mỏng nhẹ, chip A15 \"trâu\" và màn đẹp, vẫn đáng mua năm 2025 nếu bạn cần iPad giá rẻ cho học tập/giải trí cơ bản từ Apple!', 6, 1),
(17, 'iPad Air 6 M2 13 inch Wifi 128GB I Chính hãng Apple Việt Nam', '21000000.00', '18500000.00', './uploads/1765196105-ipad-air-6-m2-13-inch.webp', 132, 0, '2025-12-08', 'iPad Air 6 M2 13\" WiFi 128GB chính hãng – \"siêu phẩm mỏng nhẹ\" với màn lớn, chip M2 \"trâu\" và AI thông minh, vẫn đáng mua năm 2025 cho sáng tạo/học tập/giải trí từ Apple, dù có tin đồn M3 sắp ra!', 6, 1),
(18, 'iPad Air 11 inch M3 Wifi 128GB 2025  Chính hãng Apple Việt Nam', '25000000.00', '23999999.00', './uploads/1765196208-ipad-air-11-wifi-1.webp', 10, 0, '2025-12-03', '\niPad Air 11\" M3 WiFi 128GB chính hãng – \"siêu phẩm mỏng nhẹ\" với chip M3 \"khủng\" và AI thông minh, đáng mua cuối 2025 cho sáng tạo/học tập/giải trí từ Apple, giá khởi điểm 599 USD!', 6, 1),
(19, 'iPad Pro chip M5 11 inch Wifi 256GB  Chính hãng Apple Việt Nam', '27000000.00', '23500000.00', './uploads/1765196384-ipad-pro-m5.webp', 23, 0, '2025-12-08', 'Điện thoại iPhone 13 128GB......... mô tả sản phẩm ngắniPhone 13 128GB – Mô tả ngắn gọn:\n\nMàn hình Super Retina XDR OLED 6.1 inch, sáng hơn 28%, độ phân giải 2532 x 1170\nChip A15 Bionic siêu mạnh, nhanh hơn 50% so với đối thủ\nHệ thống camera kép 12MP (góc rộng + siêu rộng), chế độ Cinematic Mode quay video xóa phông 1080p, Night Mode, Photographic Styles\nThiết kế bền bỉ với Ceramic Shield mặt trước, chống nước IP68\nPin trâu hơn đáng kể so với iPhone 12 (dùng cả ngày thoải mái)\nHỗ trợ 5G, Face ID, iOS mượt mà (hiện tại lên được iOS 18/19)\nDung lượng 128GB phù hợp cho người dùng cơ bản đến trung bình\n\nMột chiếc iPhone “ngon-bổ-rẻ” nhất định phải có trong năm 2025 nếu bạn muốn máy chính hãng Apple giá hợp lý!Điện thoại iPhone 16 Plus 128GB moo ta san phamiPhone 16 Plus 128GB – Mô tả ngắn gọn:\n\nMàn hình Super Retina XDR OLED 6.7 inch, độ phân giải 2796 x 1290 (460 ppi), Dynamic Island, sáng tối đa 2000 nits, hỗ trợ HDR và True Tone\nChip A18 mạnh mẽ với CPU 6 lõi, GPU 5 lõi, Neural Engine 16 lõi – tích hợp Apple Intelligence cho AI thông minh, bảo mật cao\nHệ thống camera kép 48MP Fusion chính (OIS, zoom quang 2x) + 12MP siêu rộng (120°), camera trước 12MP; hỗ trợ Photonic Engine, Deep Fusion, Smart HDR 5, Night mode, quay video 4K Dolby Vision, Spatial photos\nThiết kế nhôm cao cấp, Ceramic Shield chống xước, kính màu sau, chống nước/bụi IP68 (sâu 6m/30 phút); nút Action tùy chỉnh và Camera Control mới\nPin \"khủng\" lên đến 27 giờ xem video, sạc nhanh 50% trong 30 phút (20W+), sạc không dây MagSafe 25W, USB-C\nDung lượng 128GB lý tưởng cho nhu cầu hàng ngày, hỗ trợ eSIM, 5G, Face ID, iOS 18 mượt mà (cập nhật lâu dài)\n\nSiêu phẩm iPhone 16 Plus – màn lớn, camera đỉnh cao, AI đột phá, hoàn hảo cho năm 2025 với giá trị vượt trội từ Apple!1,7 giâyFastĐiện thoại iPhone 16 Pro 128GBiPhone 16 Pro 128GB – Mô tả ngắn gọn:\n\nMàn hình Super Retina XDR OLED 6.3 inch, độ phân giải 2622 x 1206 (460 ppi), Dynamic Island, ProMotion 120Hz, sáng tối đa 2000 nits, hỗ trợ HDR10, Always-On Display\nChip A18 Pro siêu mạnh với CPU 6 lõi, GPU 6 lõi, Neural Engine 16 lõi – tích hợp Apple Intelligence cho AI thông minh, bảo mật cao, hỗ trợ Wi-Fi 7\nHệ thống camera ba 48MP Fusion chính (OIS, zoom quang 5x) + 48MP siêu rộng (120°) + 12MP tele (5x), camera trước 12MP; hỗ trợ Photonic Engine, Deep Fusion, Smart HDR 5, Night mode, quay video 4K 120fps Dolby Vision, Spatial video\nThiết kế titanium cao cấp, Ceramic Shield thế hệ mới (gấp 2 lần bền), chống nước/bụi IP68 (sâu 6m/30 phút); nút Camera Control chuyên dụng và Action Button tùy chỉnh\nPin 3582mAh \"khủng\" lên đến 27 giờ xem video, sạc nhanh 50% trong 30 phút (20W+), sạc không dây MagSafe 25W, USB-C\nDung lượng 128GB phù hợp cho người dùng cơ bản đến nâng cao, hỗ trợ eSIM, 5G, Face ID, iOS 18 mượt mà (cập nhật lên iOS 19/20)\n\nSiêu phẩm iPhone 16 Pro – camera chuyên nghiệp, hiệu năng đỉnh cao, AI đột phá, lựa chọn hoàn hảo cho năm 2025 với thiết kế titanium sang trọng từ Apple!1,3 giâyFastSo sánh iPhone 16 Pro với 15 ProSo sánh iPhone 16 Pro và iPhone 15 Pro (128GB)\nDưới đây là bảng so sánh chi tiết các thông số chính giữa iPhone 16 Pro và iPhone 15 Pro, dựa trên dữ liệu từ Apple và các nguồn đánh giá uy tín. Cả hai đều là flagship cao cấp của Apple, nhưng iPhone 16 Pro mang đến những nâng cấp tinh tế về kích thước, camera, hiệu năng và pin, trong khi iPhone 15 Pro vẫn là lựa chọn tiết kiệm hơn với hiệu suất gần tương đương.\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nTiêu chíiPhone 16 ProiPhone 15 ProSự khác biệt chínhThiết kế & Kích thước- Chất liệu: Titanium\n- Kích thước: 149.6 x 71.5 x 8.25 mm, nặng 199g\n- Màu: Black Titanium, White Titanium, Natural Titanium, Desert Titanium\n- Nút mới: Camera Control (chuyên dụng cho camera), Action Button- Chất liệu: Titanium\n- Kích thước: 146.6 x 70.6 x 8.25 mm, nặng 187g\n- Màu: Black Titanium, White Titanium, Blue Titanium, Natural Titanium\n- Nút: Action Button16 Pro lớn hơn nhẹ (dễ cầm hơn cho một số người), nặng hơn 12g, thêm nút Camera Control tiện lợi cho nhiếp ảnh. Ceramic Shield thế hệ mới bền hơn.Màn hình- 6.3 inch Super Retina XDR OLED\n- ĐộBị gián đoạnĐiện thoại iPhone 16 Pro Max 256GBiPhone 16 Pro Max 256GB – Mô tả ngắn gọn (2025):\n\nMàn hình lớn nhất: Super Retina XDR OLED 6.9 inch, độ phân giải 2868 x 1320 (460 ppi), ProMotion 120Hz mượt như lụa, Always-On Display, sáng tối đa 2000 nits (ngoài trời rõ nét), Ceramic Shield thế hệ mới bền gấp đôi\nChip A18 Pro khủng nhất Apple hiện tại: CPU 6 lõi nhanh hơn 20%, GPU 6 lõi mạnh hơn 20% so với A17 Pro, Neural Engine 16 lõi – tối ưu Apple Intelligence (AI viết văn bản, tạo ảnh, Siri thông minh hơn…)\nCamera “Pro” thực thụ:\n• Chính 48MP Fusion (cảm biến lớn hơn, OIS thế hệ 2)\n• Siêu rộng 48MP (120°)\n• Tele 12MP zoom quang 5x (120mm)\n• Quay video 4K 120fps Dolby Vision, ProRes, Spatial Video cho Vision Pro\n• Nút Camera Control cảm ứng lực + cảm biến chạm – chụp ảnh siêu nhanh và chuyên nghiệp\nPin “trâu” nhất dòng iPhone từ trước đến nay: ~4680 mAh\n• Thời lượng thực tế: 29–33 giờ xem video, dùng nặng cả ngày vẫn dư 20–30%\n• Sạc nhanh 45W (50% trong ~30 phút), MagSafe 25W\nThiết kế titanium cao cấp, nhẹ và bền hơn thép không gỉ cũ, chống nước IP68 (6m/30 phút), màu mới Desert Titanium cực đẹp\nDung lượng 256GB – lý tưởng cho người quay 4K ProRes, chụp RAW, dùng lâu dài 4–5 năm không lo hết bộ nhớ\niOS 18 + cập nhật phần mềm ít nhất tới 2030–2031\n\nKết luận một câu: iPhone 16 Pro Max 256GB hiện là chiếc iPhone “đỉnh nhất” Apple từng làm – màn to, pin khủng, camera chuyên nghiệp, AI thông minh và đáng tiền nhất để dùng dài hạn trong năm 2025–2030!FastĐiện thoại iPhone 16e 128GBiPhone 16e 128GB – Mô tả ngắn gọn (2025):\n\nMàn hình Super Retina XDR OLED 6.1 inch, độ phân giải 2532 x 1170 (457 ppi), notch Face ID cổ điển (không Dynamic Island), sáng tối đa 1200 nits, hỗ trợ HDR, True Tone, Ceramic Shield chống xước\nChip A18 (phiên bản tiết kiệm) với CPU 6 lõi, GPU 4 lõi, Neural Engine 16 lõi – hỗ trợ Apple Intelligence (AI thông minh như viết văn bản, tạo ảnh, Siri nâng cao), hiệu năng mạnh mẽ cho đa nhiệm và game\nHệ thống camera đơn 48MP Fusion chính (OIS, zoom quang 2x tích hợp), camera trước 12MP TrueDepth; hỗ trợ Night mode, Portrait mode, Photographic Styles, quay video 4K Dolby Vision 60fps\nThiết kế nhôm aluminum cao cấp, mỏng 7.8mm, nặng 167g, màu Black/White; nút Action tùy chỉnh, chống nước/bụi IP68 (sâu 6m/30 phút), modem Apple C1 đầu tiên cho kết nối 5G sub-6GHz ổn định\nPin 4005mAh \"trâu\" lên đến 26 giờ xem video (dài hơn 12 giờ so với iPhone SE cũ), sạc nhanh 20W (50% trong 30 phút), sạc không dây MagSafe 15W, USB-C\nDung lượng 128GB phù hợp cho người dùng cơ bản, hỗ trợ eSIM, Face ID, iOS 18.3 (cập nhật lên iOS 26+), kết nối vệ tinh khẩn cấp\n\niPhone 16e 128GB – \"người anh em giá rẻ\" của dòng iPhone 16, mang Apple Intelligence vào tầm tay với giá khởi điểm 599 USD, lựa chọn thông minh cho năm 2025 nếu bạn muốn iPhone hiện đại mà không tốn kém!1,6 giâyFastiPhone 14 Pro 128GB Chính hãng VNAiPhone 14 Pro 128GB Chính hãng VN/A – Mô tả ngắn gọn (2025):\n\nMàn hình Super Retina XDR OLED 6.1 inch, độ phân giải 2556 x 1179 (460 ppi), ProMotion 120Hz mượt mà, Always-On Display, Dynamic Island thông minh, sáng tối đa 2000 nits, Ceramic Shield bền bỉ\nChip A16 Bionic mạnh mẽ với CPU 6 lõi, GPU 5 lõi, Neural Engine 16 lõi – hiệu năng đỉnh cao cho game nặng, chỉnh sửa video 4K, hỗ trợ iOS 18+ (cập nhật đến iOS 26+)\nHệ thống camera ba \"Pro\": 48MP chính (OIS, cảm biến lớn hơn), 12MP siêu rộng (120°), 12MP tele zoom quang 3x; camera trước 12MP; Night mode, Cinematic 4K HDR, Photonic Engine, quay ProRes/Log\nThiết kế thép không gỉ cao cấp, mỏng 7.85mm, nặng 206g, màu Space Black/Silver/Gold/Deep Purple; chống nước/bụi IP68 (sâu 6m/30 phút), Lightning port, nút Action tùy chỉnh\nPin 3200mAh dùng thoải mái 20–23 giờ xem video, sạc nhanh 50% trong 30 phút (20W), sạc không dây MagSafe 15W\nDung lượng 128GB phù hợp cho người dùng trung bình, hỗ trợ 5G, Face ID, Emergency SOS via satellite, Crash Detection, eSIM + SIM vật lý (VN/A)\nGiá chính hãng VN/A hiện tại khoảng 22–25 triệu VND (tùy cửa hàng như Di Động Việt, CellphoneS), bảo hành 12 tháng Apple\n\niPhone 14 Pro 128GB chính hãng VN/A – flagship \"huyền thoại\" với camera đỉnh cao và Dynamic Island đầu tiên, vẫn \"chiến\" tốt năm 2025, lựa chọn tiết kiệm so với dòng 16 nếu bạn muốn giá trị lâu dài từ Apple!1,9 giâyFastiPhone 15 128GB Chính hãng VNAiPhone 15 128GB Chính hãng VN/A – Mô tả ngắn gọn (2025):\n\nMàn hình Super Retina XDR OLED 6.1 inch, độ phân giải 2556 x 1179 (460 ppi), Dynamic Island thông minh, sáng tối đa 2000 nits, hỗ trợ HDR10, Dolby Vision, Ceramic Shield bền bỉ\nChip A16 Bionic mạnh mẽ với CPU 6 lõi, GPU 5 lõi, Neural Engine 16 lõi – hiệu năng vượt trội cho game nặng, chỉnh sửa video, hỗ trợ iOS 18+ (cập nhật đến iOS 26+)\nHệ thống camera kép: 48MP chính (OIS, zoom quang 2x), 12MP siêu rộng (120°); camera trước 12MP; Night mode, Portrait, Cinematic 4K HDR, Smart HDR 5, quay video 4K 60fps Dolby Vision\nThiết kế nhôm aluminum cao cấp, mỏng 7.8mm, nặng 171g, màu Black/Blue/Green/Yellow/Pink; chống nước/bụi IP68 (sâu 6m/30 phút), USB-C tiện lợi, nút Action tùy chỉnh\nPin 3349mAh dùng thoải mái 20–23 giờ xem video, sạc nhanh 50% trong 30 phút (20W), sạc không dây MagSafe 15W\nDung lượng 128GB phù hợp cho người dùng trung bình, hỗ trợ 5G, Face ID, Emergency SOS via satellite, Crash Detection, eSIM + SIM vật lý (VN/A)\nGiá chính hãng VN/A hiện tại khoảng 15.8–16.9 triệu VND (tùy cửa hàng như Di Động Việt, CellphoneS, Hoàng Hà Mobile), bảo hành 12 tháng Apple\n\niPhone 15 128GB chính hãng VN/A – flagship \"cân bằng\" với camera 48MP sắc nét, Dynamic Island đầu tiên cho dòng thường, USB-C và hiệu năng \"trâu\" – vẫn đáng mua năm 2025 nếu bạn muốn iPhone hiện đại giá \"mềm\" hơn dòng 16!2,1 giâyFastiPhone 17 256GB Chính hãngiPhone 17 256GB Chính hãng – Mô tả ngắn gọn (2025):\n\nMàn hình Super Retina XDR OLED 6.3 inch, độ phân giải 2622 x 1206 (460 ppi), Dynamic Island thông minh, sáng tối đa 2000 nits, hỗ trợ HDR10, Dolby Vision, Always-On Display, Ceramic Shield thế hệ mới bền hơn\nChip A19 mạnh mẽ với CPU 6 lõi, GPU 5 lõi, Neural Engine 16 lõi – hiệu năng vượt trội cho game nặng, AI Apple Intelligence nâng cao (Live Translation, tạo ảnh, Siri siêu thông minh), hỗ trợ iOS 26 (cập nhật đến iOS 34+)\nHệ thống camera kép: 48MP Fusion chính (OIS, zoom quang 2x), 12MP siêu rộng (120°); camera trước 12MP TrueDepth nâng cấp Center Stage; Night mode, Portrait, Cinematic 4K HDR 60fps, Smart HDR 5, Photonic Engine\nThiết kế nhôm aluminum cao cấp, mỏng 8mm, nặng 177g, màu Lavender/Mist Blue/Sage/Black/White; chống nước/bụi IP68 (sâu 6m/30 phút), USB-C, nút Action tùy chỉnh\nPin 3692mAh \"trâu\" lên đến 26 giờ xem video (cải thiện 10% so với iPhone 16), sạc nhanh 50% trong 30 phút (25W), sạc không dây MagSafe 25W\nDung lượng 256GB (base storage mới, gấp đôi iPhone 16) lý tưởng cho người dùng trung bình đến nặng, hỗ trợ 5G sub-6GHz, Face ID, Emergency SOS via satellite, Crash Detection, eSIM toàn cầu (VN/A)\nGiá chính hãng VN/A hiện tại khoảng 22–24 triệu VND (tùy cửa hàng như FPT Shop, The Gioi Di Dong), bảo hành 12 tháng Apple; ra mắt 19/9/2025\n\niPhone 17 256GB chính hãng – flagship \"tiết kiệm\" với storage gấp đôi, camera sắc nét, AI đột phá và pin bền bỉ – lựa chọn hoàn hảo năm 2025 nếu bạn muốn iPhone hiện đại giá $799 (khoảng 20 triệu VND) mà không cần Pro!1,6 giâyFastiPhone Air 256GB Chính hãngiPhone Air 256GB Chính hãng – Mô tả ngắn gọn (2025):\n\nMàn hình Super Retina XDR OLED 6.5 inch, độ phân giải 2736 x 1260 (460 ppi), Dynamic Island thông minh, ProMotion 120Hz mượt mà, Always-On Display, sáng tối đa 2000 nits, Ceramic Shield 2 thế hệ mới (bền gấp đôi, chống phản chiếu)\nChip A19 Pro mạnh mẽ với CPU 6 lõi, GPU 5 lõi, Neural Engine 16 lõi – tối ưu Apple Intelligence (AI tạo ảnh, dịch live, Siri nâng cao), hỗ trợ iOS 26 (cập nhật đến iOS 34+)\nHệ thống camera đơn \"Air\": 48MP Fusion chính (OIS, zoom quang 2x, cảm biến lớn); camera trước 12MP Center Stage nâng cấp; Night mode, Portrait, Cinematic 4K HDR 60fps, Smart HDR 5, Photonic Engine\nThiết kế titanium mỏng nhất từ trước (5.6mm, nặng chỉ 165g – nhẹ hơn iPhone 16 Plus 30%), màu Sky Blue/Light Gold/Cloud White/Space Black; chống nước/bụi IP68 (sâu 6m/30 phút), eSIM-only toàn cầu, USB-C, nút Action tùy chỉnh\nPin 3149mAh \"trâu\" lên đến 27 giờ xem video (cải thiện 15% so với thế hệ trước), sạc nhanh 50% trong 30 phút (25W), sạc không dây MagSafe 25W\nDung lượng 256GB (base mới, lý tưởng cho người dùng nặng như quay 4K, ảnh RAW), hỗ trợ 5G sub-6GHz/mmWave, Face ID, Emergency SOS via satellite, Crash Detection, modem C1X tự thiết kế\nGiá chính hãng VN/A hiện tại khoảng 24–26 triệu VND (tùy cửa hàng như FPT Shop, The Gioi Di Dong), bảo hành 12 tháng Apple; ra mắt 19/9/2025, model A3517 (International)\n\niPhone Air 256GB chính hãng – \"siêu mỏng, siêu nhẹ\" thay thế dòng Plus, với thiết kế titanium đột phá và hiệu năng Pro – lựa chọn \"bay bổng\" năm 2025 cho ai muốn iPhone hiện đại giá $999 mà vẫn đỉnh cao từ Apple!1,3 giâyFastiPad Air 5 10.9 inch (2022) WIFI 64GB I Chính hãng Apple Việt NamiPad Air 5 10.9 inch (2022) WiFi 64GB Chính hãng Apple Việt Nam – Mô tả ngắn gọn (2025):\n\nMàn hình Liquid Retina IPS 10.9 inch, độ phân giải 2360 x 1640 (264 ppi), True Tone, P3 wide color, sáng tối đa 500 nits, chống phản chiếu, hỗ trợ Apple Pencil (thế hệ 2) và Magic Keyboard\nChip A15 Bionic (5 lõi CPU, 4 lõi GPU, Neural Engine 16 lõi) – hiệu năng mạnh mẽ cho chỉnh sửa video 4K, game nặng, đa nhiệm mượt mà, hỗ trợ iPadOS 18+ (cập nhật đến iPadOS 26+)\nCamera sau 12MP (góc rộng, ƒ/1.8, 4K video 60fps, Center Stage), camera trước 12MP Ultra Wide (landscape-oriented, Center Stage tự động); hỗ trợ Smart HDR 3, Night mode\nThiết kế nhôm aluminum cao cấp, mỏng 6.1mm, nặng 461g, màu Space Gray/Blue/Purple/Starlight; chống nước/bụi IP0 (không chính thức), Touch ID trong nút nguồn, USB-C (sạc nhanh 20W)\nPin 28.6Wh dùng thoải mái 10 giờ web/video, sạc đầy ~2 giờ (20W adapter)\nDung lượng 64GB cơ bản (phù hợp người dùng nhẹ, lưu ảnh/video cơ bản), WiFi 6 (802.11ax), Bluetooth 5.0, eSIM không hỗ trợ (chỉ WiFi), không 5G\nGiá chính hãng VN/A hiện tại khoảng 10.5–11.5 triệu VND (tùy cửa hàng như FPT Shop, The Gioi Di Dong, CellphoneS), bảo hành 12 tháng Apple\n\niPad Air 5 10.9\" WiFi 64GB chính hãng – \"Air\" thực thụ với thiết kế mỏng nhẹ, chip A15 \"trâu\" và màn đẹp, vẫn đáng mua năm 2025 nếu bạn cần iPad giá rẻ cho học tập/giải trí cơ bản từ Apple!1 / 21,5 giâyiPad Air 6 M2 13 inch Wifi 128GB I Chính hãng Apple Việt NamiPad Air 6 M2 13 inch WiFi 128GB Chính hãng Apple Việt Nam – Mô tả ngắn gọn (2025):\n\nMàn hình Liquid Retina IPS LED-backlit 13 inch, độ phân giải 2732 x 2048 (264 ppi), True Tone, P3 wide color, sáng tối đa 600 nits, chống phản chiếu, hỗ trợ Apple Pencil Pro và Apple Pencil (USB-C), Magic Keyboard\nChip M2 mạnh mẽ với CPU 8 lõi, GPU 10 lõi, Neural Engine 16 lõi – hiệu năng vượt trội cho chỉnh sửa video 4K, game nặng, đa nhiệm mượt mà, hỗ trợ Apple Intelligence (AI Writing Tools, Image Wand), iPadOS 18+ (cập nhật đến iPadOS 26+)\nCamera sau 12MP (góc rộng, ƒ/1.8, 4K video 60fps, Center Stage), camera trước 12MP Ultra Wide (landscape-oriented, Center Stage); hỗ trợ Smart HDR 4, Night mode, panorama\nThiết kế nhôm aluminum cao cấp, mỏng 6.1mm, nặng 617g, màu Blue/Purple/Space Gray/Starlight; Touch ID trong nút nguồn, USB-C (Thunderbolt/USB 4 tốc độ 10Gbps, hỗ trợ DisplayPort), WiFi 6E (802.11ax), Bluetooth 5.3\nPin 36.6Wh dùng thoải mái 10 giờ web/video, sạc nhanh ~2 giờ (20W adapter)\nDung lượng 128GB phù hợp người dùng trung bình (lưu ảnh/video, app cơ bản), chỉ WiFi (không 5G)\nGiá chính hãng VN/A hiện tại khoảng 18.5–19.9 triệu VND (tùy cửa hàng như FPT Shop, The Gioi Di Dong, CellphoneS), bảo hành 12 tháng Apple\n\niPad Air 6 M2 13\" WiFi 128GB chính hãng – \"siêu phẩm mỏng nhẹ\" với màn lớn, chip M2 \"trâu\" và AI thông minh, vẫn đáng mua năm 2025 cho sáng tạo/học tập/giải trí từ Apple, dù có tin đồn M3 sắp ra!1,5 giâyFastiPad Air 11 inch M3 Wifi 128GB 2025 Chính hãng Apple Việt NamiPad Air 11 inch M3 WiFi 128GB (2025) Chính hãng Apple Việt Nam – Mô tả ngắn gọn (Tháng 12/2025):\n\nMàn hình Liquid Retina IPS LED-backlit 11 inch, độ phân giải 2360 x 1640 (264 ppi), True Tone, P3 wide color, sáng tối đa 600 nits, chống phản chiếu, hỗ trợ Apple Pencil Pro và Apple Pencil (USB-C), Magic Keyboard mới (giá 269 USD cho 11 inch)\nChip M3 mạnh mẽ với CPU 8 lõi, GPU 10 lõi, Neural Engine 16 lõi – hiệu năng vượt trội cho chỉnh sửa video 4K, game nặng, đa nhiệm mượt mà, hỗ trợ Apple Intelligence (AI Writing Tools, Image Wand, Clean Up), iPadOS 18.3.2+ (cập nhật đến iPadOS 26.1+)\nCamera sau 12MP (góc rộng, ƒ/1.8, 4K video 60fps, Center Stage), camera trước 12MP Ultra Wide (landscape-oriented, Center Stage); hỗ trợ Smart HDR 4, Night mode, panorama\nThiết kế nhôm aluminum cao cấp, mỏng 6.1mm, nặng 460g, màu Blue/Purple/Space Gray/Starlight; Touch ID trong nút nguồn, USB-C (Thunderbolt/USB 4 tốc độ 10Gbps, hỗ trợ DisplayPort), WiFi 6E (802.11ax), Bluetooth 5.3\nPin 28.6Wh dùng thoải mái 10 giờ web/video, sạc nhanh ~2 giờ (20W adapter)\nDung lượng 128GB phù hợp người dùng trung bình (lưu ảnh/video, app cơ bản), chỉ WiFi (không 5G)\nGiá chính hãng VN/A hiện tại khoảng 15.4–16.5 triệu VND (tùy cửa hàng như FPT Shop, The Gioi Di Dong, CellphoneS, Apple Store), bảo hành 12 tháng Apple; ra mắt 4/3/2025, phát hành 12/3/2025\n\niPad Air 11\" M3 WiFi 128GB chính hãng – \"siêu phẩm mỏng nhẹ\" với chip M3 \"khủng\" và AI thông minh, đáng mua cuối 2025 cho sáng tạo/học tập/giải trí từ Apple, giá khởi điểm 599 USD!1,9 giâyFastiPad Pro chip M5 11 inch Wifi 256GB Chính hãng Apple Việt NamiPad Pro M5 11 inch WiFi 256GB Chính hãng Apple Việt Nam – Mô tả ngắn gọn (Tháng 12/2025):\n\nMàn hình Ultra Retina XDR Tandem OLED 11 inch, độ phân giải 2420 x 1668 (264 ppi), ProMotion 120Hz thích ứng (10-120Hz), Always-On Display, sáng tối đa 1000 nits SDR / 1600 nits XDR full screen / 2000 nits peak (HDR), chống phản chiếu nano-texture tùy chọn, hỗ trợ Apple Pencil Pro và Magic Keyboard\nChip M5 \"khủng\" với CPU 9 lõi (3 performance + 6 efficiency), GPU 10 lõi, Neural Engine 16 lõi – hiệu năng vượt trội cho chỉnh sửa video 8K, game ray tracing, AI Apple Intelligence (LLM token generation, generative imagery), iPadOS 26 (cập nhật đến iPadOS 26.1+), RAM 12GB LPDDR5X-7500\nCamera sau 12MP (góc rộng, ƒ/1.8, 4K video 120fps, Center Stage), camera trước 12MP Ultra Wide (landscape-oriented, Center Stage); hỗ trợ Smart HDR 5, Night mode, LiDAR Scanner cho AR\nThiết kế nhôm aluminum cao cấp, siêu mỏng 5.3mm, nặng 444g, màu Silver/Space Black; Touch ID trong nút nguồn, USB-C (Thunderbolt/USB 4 tốc độ 40Gbps, hỗ trợ DisplayPort), WiFi 7 (802.11be), Bluetooth 5.3\nPin 31.29Wh dùng thoải mái 10 giờ web/video, sạc nhanh ~2 giờ (40W adapter, hỗ trợ 70W)\nDung lượng 256GB phù hợp người dùng trung bình đến nặng (lưu video 4K, app sáng tạo), chỉ WiFi (không 5G), model A3357 (VN/A)\nGiá chính hãng VN/A hiện tại khoảng 26–27 triệu VND (tương đương $999 USD, tùy cửa hàng như FPT Shop, The Gioi Di Dong, CellphoneS, Apple Store), bảo hành 12 tháng Apple; ra mắt 15/10/2025, phát hành 22/10/2025\n\niPad Pro M5 11\" WiFi 256GB chính hãng – \"siêu phẩm mỏng nhất thế giới\" với OLED đỉnh cao, chip M5 \"bay\" và AI đột phá, đáng mua cuối 2025 cho sáng tạo chuyên nghiệp từ Apple!', 6, 1),
(20, 'Máy tính bảng iPad mini 7 WiFi 128GB', '26500000.00', '22999999.00', './uploads/1765196521-ipad-mini-7-wifi-purple-1-638651174600667416-750x500.jpg', 21, 0, '2025-12-08', 'iPad mini 7 WiFi 128GB chính hãng – \"siêu phẩm nhỏ gọn\" với chip A17 Pro \"khủng\", AI thông minh và thiết kế mỏng nhẹ, đáng mua cuối 2025 cho đọc sách/du lịch/giải trí từ Apple!', 6, 1),
(21, 'Máy tính bảng Masstel Tab 11 Ultra 4G 4GB128GB', '30000000.00', '27999999.00', './uploads/1765196682-masstel-tab-11-ultra-4gb-128gb-xanh-1-638883685424010773-750x500.jpg', 100, 0, '2025-12-08', 'Masstel Tab 11 Ultra 4G 4GB/128GB là tablet giá rẻ “đỉnh” cho học sinh, sinh viên với pin “khủng”, màn lớn, kết nối 4G và hiệu năng mượt mà trong tầm giá dưới 4 triệu VND năm 2025!', 6, 1),
(22, 'Máy tính bảng OPPO Pad 3 8GB256GB', '23000000.00', '21000000.00', './uploads/1765196793-oppo-pad-3-bac-1-638752291535045860-750x500.jpg', 12, 0, '2025-12-08', 'OPPO Pad 3 8GB/256GB – tablet \"mid-range đỉnh cao\" với màn lớn mượt mà, pin trâu và hiệu năng cân bằng, đáng mua cuối 2025 cho giải trí/sáng tạo giá \"ngon\" từ OPPO!', 6, 1),
(23, 'Máy tính bảng Samsung Galaxy Tab S10+ WiFi 12GB256GB', '22000000.00', '19999999.00', './uploads/1765197062-samsung-galaxy-tab-s10-plus-gray-2-638629870745557501-750x500.jpg', 1, 0, '2025-12-08', 'Samsung Galaxy Tab S10+ WiFi 12GB/256GB – tablet \"flagship mỏng nhẹ\" với màn AMOLED đỉnh cao, AI thông minh và pin trâu, đáng mua cuối 2025 cho giải trí/sáng tạo giá \"ngon\" từ Samsung!', 6, 1),
(24, 'Máy tính bảng Xiaomi Redmi Pad 2 WiFi 4GB128GB', '28900000.00', '26999999.00', './uploads/1765197163-xiaomi-redmi-pad-2-wifi-xam-1-638889722791105651-750x500.jpg', 4, 0, '2025-12-08', 'Xiaomi Redmi Pad 2 WiFi 4GB/128GB – tablet \"giá rẻ đỉnh cao\" với màn lớn sắc nét, pin trâu và thiết kế mỏng nhẹ, đáng mua cuối 2025 cho học tập/giải trí cơ bản từ Xiaomi!', 6, 1),
(25, 'Laptop Acer Aspire Lite 14 AL14-71M-52GQ', '25699000.00', '24999999.00', './uploads/1765197321-text_ng_n_14_8.webp', 12, 0, '2025-12-08', 'Laptop Acer Aspire Lite 14 AL14-71M-52GQ – \"siêu mỏng nhẹ hiệu năng cao\" với i5 H-series \"khủng\" trong tầm giá dưới 15 triệu, đáng mua cuối 2025 cho sinh viên/dân văn phòng cần máy mạnh mẽ, di động từ Acer!', 5, 1),
(26, 'Laptop ASUS Gaming V16 V3607VM-RP044W', '23500000.00', '20999999.00', './uploads/1765197436-text_ng_n_15_15_1.webp', 56, 0, '2025-12-08', 'Laptop ASUS Gaming V16 V3607VM-RP044W – \"gaming mỏng nhẹ AI\" với Core 7 \"khủng\" và RTX 5060 đỉnh cao, đáng mua cuối 2025 cho game thủ/sinh viên cần máy mạnh mẽ, di động từ ASUS!', 5, 1),
(29, 'Laptop ASUS Vivobook S16 S3607QA-SH040WS', '29999999.00', '25999999.00', './uploads/1765197586-text_ng_n_2__9_252.webp', 23, 0, '2025-12-08', 'Laptop ASUS Vivobook S16 S3607QA-SH040WS – \"Copilot+ PC mỏng nhẹ AI\" với Snapdragon X \"khủng\", pin \"trâu\" và màn lớn, đáng mua cuối 2025 cho sinh viên/dân văn phòng cần máy thông minh, di động từ ASUS!', 5, 1),
(30, 'Laptop Dell 15 DC15255 DC5R5802W1', '23000000.00', '21500000.00', './uploads/1765197745-text_ng_n_2__10_145.webp', 23, 0, '2025-12-08', 'Laptop Dell 15 DC15255 DC5R5802W1 – \"doanh nhân mỏng nhẹ giá rẻ\" với Ryzen 5 \"trâu\" và màn 120Hz hiếm có, đáng mua cuối 2025 cho sinh viên/dân văn phòng cần máy ổn định, di động từ Dell!', 5, 1),
(31, 'Laptop Dell Inspiron 15 3530 J9XFD - Nhập khẩu chính hãng', '18000000.00', '16500000.00', './uploads/1765197828-text_ng_n_7__4_161.webp', 65, 0, '2025-12-08', 'Laptop Dell Inspiron 15 3530 J9XFD nhập khẩu chính hãng – \"doanh nhân mỏng nhẹ giá tốt\" với i5-13th Gen \"trâu\", màn 120Hz cảm ứng và thiết kế thanh lịch, đáng mua cuối 2025 cho sinh viên/dân văn phòng cần máy ổn định, di động từ Dell!', 5, 1),
(32, 'Laptop Gaming Acer Nitro V 15 ProPanel ANV15-41-R7AP', '35000000.00', '33500000.00', './uploads/1765197893-text_ng_n_1__6_108.webp', 45, 0, '2025-12-08', 'Laptop Gaming Acer Nitro V 15 ProPanel ANV15-41-R7AP – \"gaming entry mạnh mẽ\" với Ryzen 5 \"trâu\", RTX 2050 mượt và màn 180Hz đỉnh cao, đáng mua cuối 2025 cho game thủ mới/budget dưới 23 triệu từ Acer!', 5, 1),
(33, 'Laptop Lenovo LOQ 15IAX9E 83LK0079VN', '27000000.00', '25500000.00', './uploads/1765197962-text_ng_n_6__4_24.webp', 45, 0, '2025-12-08', 'Laptop Lenovo LOQ 15IAX9E 83LK0079VN – \"gaming tầm trung đỉnh cao\" với i5 HX \"khủng\", RTX 3050 mượt và màn 144Hz sắc nét, đáng mua cuối 2025 cho game thủ mới/budget dưới 22 triệu từ Lenovo!', 5, 1),
(34, 'Laptop MSI Modern 14 F13MG-240VNCP', '36000000.00', '29000000.00', './uploads/1765198033-text_ng_n_2__9_297.webp', 24, 0, '2025-12-08', 'Laptop MSI Modern 14 F13MG-240VNCP – \"doanh nhân mỏng nhẹ thanh lịch\" với i5-13th Gen \"trâu\", thiết kế sang trọng và hiệu năng ổn định, đáng mua cuối 2025 cho sinh viên/dân văn phòng cần máy di động giá \"ngon\" từ MSI!', 5, 1),
(35, 'MacBook Air 15 inch M4 (10 core GPU  16GB RAM  512GB SSD)', '26500000.00', '22999999.00', './uploads/1765198165-0036015_midnight_550.jpeg.webp', 55, 0, '2025-12-08', 'MacBook Air 15 inch M4 16GB/512GB là chiếc laptop “mỏng nhẹ, pin trâu, màn lớn” hoàn hảo năm 2025 cho sinh viên, dân văn phòng và sáng tạo nội dung – dùng 5–6 năm vẫn mượt, đáng tiền từng đồng!', 5, 1),
(36, 'MacBook Pro 14 M5 10CPU 10GPU 16GB 512GB  Chính hãng Apple Việt Nam', '37000000.00', '35999999.00', './uploads/1765198321-text_ng_n_2__11.webp', 554, 0, '2025-12-08', 'MacBook Pro M5 14\" 16GB/512GB chính hãng – \"siêu phẩm mỏng nhẹ đỉnh cao\" với chip M5 \"bay\" và màn XDR sống động, đáng mua cuối 2025 cho sáng tạo chuyên nghiệp từ Apple!', 5, 1),
(37, 'Điện thoại Samsung Galaxy A17 5G 8GB128GB', '26000000.00', '23500000.00', './uploads/1765198478-samsung-galaxy-a17-5g-gray-1-638925131547875229-750x500.jpg', 55, 0, '2025-12-08', 'Samsung Galaxy A17 5G 8GB/128GB – \"mid-range giá rẻ bền bỉ\" với camera OIS đầu tiên dòng A1x, pin trâu và cập nhật dài hạn, đáng mua cuối 2025 cho học sinh/sinh viên cần máy 5G ổn định từ Samsung!', 4, 1),
(38, 'Điện thoại Samsung Galaxy A56 5G 12GB256GB', '24000000.00', '21500000.00', './uploads/1765198688-samsung-galaxy-a56-xam-01-638802400999449896-750x500.jpg', 34, 0, '2025-12-08', 'Samsung Galaxy A56 5G 12GB/256GB – \"mid-range đỉnh cao\" với Exynos 1580 \"khủng\", camera AI thông minh và sạc 45W đầu tiên dòng A5x, đáng mua cuối 2025 cho người dùng cần máy mạnh mẽ, bền bỉ từ Samsung!', 4, 1),
(39, 'Điện thoại Samsung Galaxy Z Flip7 5G 12GB256GB', '26500000.00', '24500000.00', './uploads/1765198826-samsung-galaxy-z-flip7-do-1-638889695868366654-750x500.jpg', 45, 0, '2025-12-08', 'Samsung Galaxy Z Flip7 5G 12GB/256GB – \"flip phone mỏng nhẹ đỉnh cao\" với camera selfie 50MP, AI thông minh và thiết kế bền bỉ, đáng mua cuối 2025 cho ai yêu kiểu dáng gập thời thượng từ Samsung!', 4, 1),
(40, 'Cáp Baseus Crystal Shine USB-C to Lightning 1.2M', '500000.00', '350000.00', './uploads/1765199244-cap-type-c-to-lightning-baseus-crystal-shine-1-2m_1_.webp', 444, 0, '2025-12-08', 'Cáp Baseus Crystal Shine USB-C to Lightning 1.2M – phụ kiện \"đẹp bền nhanh\" thay thế lý tưởng cho cáp Apple gốc, đáng mua cuối 2025 nếu bạn cần sạc PD 20W giá rẻ mà chất lượng cao!', 10, 1),
(41, 'Dán kính cường lực màn hình Apple iPhone 16e141313 Pro Zagg full cao cấp', '650000.00', '500000.00', './uploads/1765199325-kinh-cuong-luc-iphone-13-14-13-pro-se-40-zagg-full_1_.webp', 646, 0, '2025-12-08', 'Miếng dán Zagg Plus Edge Full cho iPhone 16 Pro – \"cao cấp chống nhìn trộm/ánh sáng xanh\" bảo vệ màn hình đỉnh cao mà vẫn mỏng mượt, đáng mua cuối 2025 nếu bạn muốn phụ kiện Apple chính hãng chất lượng từ Zagg!', 10, 1),
(42, 'Dán kính cường lực màn hình Apple iPhone 17 Pro Max Invisibleshield XTR5 Đen (Không Viền)', '780000.00', '630000.00', './uploads/1765199391-text_ng_n_-_2025-09-11t174008.138_1.webp', 55, 0, '2025-12-08', 'Miếng dán InvisibleShield Glass XTR5 Đen (Không Viền) cho iPhone 17 Pro Max – \"cao cấp Graphene + lọc xanh\" bảo vệ màn hình đỉnh cao mà vẫn mỏng mượt, đáng mua cuối 2025 nếu bạn muốn phụ kiện Apple chính hãng chất lượng từ ZAGG!', 10, 1),
(43, 'Đế sạc không dây Aukey Magfushion 1X LC-MC111 Qi2.2 25W', '460000.00', '399999.00', './uploads/1765199456-de-sac-khong-day-aukey-magfusion-qi2-2-lc-mc111-1x-25w_2_.webp', 654, 0, '2025-12-08', 'Đế sạc Aukey MagFusion 1X LC-MC111 Qi2.2 25W – \"siêu nhanh mỏng nhẹ giá rẻ\" cho iPhone MagSafe, đáng mua cuối 2025 nếu bạn cần phụ kiện sạc từ tính chất lượng cao từ Aukey!', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tai_khoans`
--

CREATE TABLE `tai_khoans` (
  `id` int NOT NULL,
  `ho_ten` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `anh_dai_dien` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ngay_sinh` date DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_dien_thoai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gioi_tinh` tinyint(1) NOT NULL DEFAULT '1',
  `dia_chi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mat_khau` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chuc_vu_id` int NOT NULL,
  `trang_thai` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tai_khoans`
--

INSERT INTO `tai_khoans` (`id`, `ho_ten`, `anh_dai_dien`, `ngay_sinh`, `email`, `so_dien_thoai`, `gioi_tinh`, `dia_chi`, `mat_khau`, `chuc_vu_id`, `trang_thai`) VALUES
(1, 'Đỗ Đình Thịnh', './uploads/avatar/avatar-cute-3.jpg', '2022-11-02', 'dodinhthinh123@gmail.com', '038888888', 1, 'Số 1 Hà Nội - Trịnh Văn Bô', '$2y$12$WZjnN3vYqACgoiONCxlSb.alMXm7jeRJH3hORknWHcjLSoxlOzeWW', 1, 1),
(2, 'Nguyễn Thế Thịnh', './uploads/product-2.jpg', '2025-11-19', 'thethinh22@gmail.com', '089485385', 1, 'Bắc Từ Liêm', '$2y$12$Ncbr/eTF1mSHKeQM41avfOYTxoLoDlao62fHh4eP5j9tfqiWbWhoe', 1, 2),
(9, 'Đỗ Đình Đức', './uploads/product-3.jpg', '2025-12-20', 'dodinhduc77@gmail.com', '0965765765', 1, 'Cầu Giấy - Hà Nội', '$2y$12$bHXcoQcw969XMuoQ6MpwFea6Vg9eH00PhofO7Oki4qSUDKQy4hJSi', 2, 2),
(10, 'Nguyễn Tuấn Anh', NULL, '2025-12-01', 'tanh99@gmail.com', '0974574352', 1, 'Minh Khai - Hà Nội', '123', 1, 1),
(13, 'Trần Đức Chiến', NULL, NULL, 'ducchien123@gmail.com', '0920980757', 1, 'Hoàng Mai - Hà Nội', '$2y$12$cf7yD1XSCsT10Tmr61gBbuRXs4Jf3hnzmkmsy12guxBPoGw.VUGUq', 1, 1),
(18, 'Nguyễn Thế Anh', './uploads/product-2.jpg', '2025-12-25', 'theanh324324@gmail.com', '0954654654', 1, 'Cầu Diễn - Hà Nội', '$2y$12$gBUAtqO12sX.gBBOtfWaAusmDSmOeooRnGzxBT873yvceOLjRl47S', 2, 1),
(19, 'Đoàn Huy Vũ', NULL, NULL, 'vuhd31@gmail.com', '0890980757', 1, 'Kiều Mai - Hà Nội', '$2y$12$luCO6qAMIHpKm.zD7s8csOTfFnL7HFrm0bPYaLlekoCdrco9ezbWG', 1, 1),
(22, 'Nguyễn Hoàng Anh', './uploads/product-2.jpg', NULL, 'anhhoangqwerty@gmail.com', '0987347541', 1, 'Quảng Ninh', '$2y$12$xVb9kdvWMzyoMvq17uIzR.b1zpawxcvxlsLwrFrmTQxJmgsoB1raC', 1, 2),
(23, 'Nguyễn Thanh Bình', './uploads/avatar/avatar-cute-3.jpg', '2025-12-25', 'anhhh112233@gmail.com', '096234728', 1, 'Nam Từ Liêm - Hà Nội', '$2y$12$9yDC/v1TOS1NigM4jXYogemss5tCLdObmSF/.32Nog9W11mWSZ.qa', 1, 1),
(24, 'Ngô Trung Hiếu', NULL, NULL, 'trunghieu123@gmail.com', '0977234124', 1, 'Nam Từ Liêm - Hà Nội', '$2y$12$eoqa6AfFNXGvvxkVC.zcRutF5NCCJts3kjFUb.a6ZR2GQFML0U0rS', 1, 1),
(25, 'Nguyễn Hữu Trung', NULL, NULL, 'trung123@gmail.com', '0324837245', 1, 'Hoàng Hoa Thám - Hà Nội', '$2y$10$X.0gXVjmvtJteKSd7RUZnuPldYg2kVYYM8lexyLtfzfJ9KBvHGz4y', 1, 1),
(26, 'Nguyễn Hữu Trung Đức', NULL, '2004-02-03', 'trung321@gmail.com', '0347892617', 1, 'Hà Nội', '$2y$10$1Km5S2kUNWMVGAsG1bKuQeGHjyUjDLl6RI4b4.eWpAfzhO1uCzzbW', 1, 1),
(27, 'Nguyễn Thế Hoàng Anh Tuấn', NULL, '2025-12-01', 'nthat999@gmail.com', '0977630988', 1, 'Ba Đình - Hà Nội', '123@123ab', 1, 1),
(28, 'Nguyễn Thế Hoàng Anh Tuấn', NULL, '2025-12-08', 'nthat998@gmail.com', '0977632988', 1, 'Thăng Long - Hà Nội', '$2y$12$3Davr5TNeMhfliZvopbHo.F64JgMFb4jERMLE9GhYFln.O9TFATwq', 1, 2),
(29, 'Nguyễn Thế Hoàng Anh Tuấn', NULL, '2025-12-02', 'nthat997@gmail.com', '0977632948', 1, 'Hoà Lạc- Hà Nội', '123@123ab', 2, 2),
(30, 'Nguyễn Thế Hoàng Anh Tuấn', NULL, '2025-12-03', 'nthat996@gmail.com', '0972632948', 1, 'Hoàn Kiếm - Hà Nội', '123@123ab', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trang_thai_don_hangs`
--

CREATE TABLE `trang_thai_don_hangs` (
  `id` int NOT NULL,
  `ten_trang_thai` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trang_thai_don_hangs`
--

INSERT INTO `trang_thai_don_hangs` (`id`, `ten_trang_thai`) VALUES
(1, 'Chưa xác nhận'),
(2, 'Đã xác nhận'),
(3, 'Chưa thanh toán'),
(4, 'Đã thanh toán'),
(5, 'Đang chuẩn bị hàngn'),
(6, 'Đang giao'),
(7, 'Đa giao'),
(8, 'Đã nhận'),
(9, 'Thành công'),
(10, 'Hoàn hàng'),
(11, 'Huỷ đơn');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binh_luans`
--
ALTER TABLE `binh_luans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chi_tiet_gio_hangs`
--
ALTER TABLE `chi_tiet_gio_hangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chuc_vus`
--
ALTER TABLE `chuc_vus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danh_mucs`
--
ALTER TABLE `danh_mucs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `don_hangs`
--
ALTER TABLE `don_hangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gio_hangs`
--
ALTER TABLE `gio_hangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hinh_anh_san_phams`
--
ALTER TABLE `hinh_anh_san_phams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phuong_thuc_thanh_toans`
--
ALTER TABLE `phuong_thuc_thanh_toans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `san_phams`
--
ALTER TABLE `san_phams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tai_khoans`
--
ALTER TABLE `tai_khoans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `trang_thai_don_hangs`
--
ALTER TABLE `trang_thai_don_hangs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binh_luans`
--
ALTER TABLE `binh_luans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `chi_tiet_gio_hangs`
--
ALTER TABLE `chi_tiet_gio_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `chuc_vus`
--
ALTER TABLE `chuc_vus`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `danh_mucs`
--
ALTER TABLE `danh_mucs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `don_hangs`
--
ALTER TABLE `don_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `gio_hangs`
--
ALTER TABLE `gio_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hinh_anh_san_phams`
--
ALTER TABLE `hinh_anh_san_phams`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362;

--
-- AUTO_INCREMENT for table `phuong_thuc_thanh_toans`
--
ALTER TABLE `phuong_thuc_thanh_toans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `san_phams`
--
ALTER TABLE `san_phams`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `tai_khoans`
--
ALTER TABLE `tai_khoans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `trang_thai_don_hangs`
--
ALTER TABLE `trang_thai_don_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
