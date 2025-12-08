-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 08, 2025 at 01:11 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

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
  `trang_thai` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `binh_luans`
--

INSERT INTO `binh_luans` (`id`, `san_pham_id`, `tai_khoan_id`, `noi_dung`, `ngay_dang`, `trang_thai`) VALUES
(1, 1, 23, 'Bao giờ hàng giao đến ạ ?', '2025-11-30', 1),
(2, 2, 23, 'Ship hoả tốc bao h có ?', '2025-11-30', 1),
(3, 1, 1, 'Hay hay hay', '2025-11-30', 1),
(4, 9, 9, 'hay', '2025-11-30', 1),
(5, 9, 9, 'hay', '2025-11-30', 1),
(6, 9, 9, 'hay hay hay', '2025-11-30', 1),
(7, 9, 9, 'hay hay hay hay hay hay ha', '2025-11-30', 1),
(8, 9, 9, 'hay hay hay hay hay hay hay hay hay', '2025-11-30', 1),
(9, 3, 23, 'sản phẩm này còn k shop', '2025-12-10', 1),
(10, 4, 23, 'Shop ơi rep tin nhắn em', '2025-12-01', 1);

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
(17, 36, 3, '19500000.00', 1, '19500000.00');

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
(4, 'DH - 1', 23, 'Nguyễn T.Anhhh', 'tanh123@gmail.com', '0945353843', 'Nam Từ Liêm - Hà Nội', '2025-12-01', '500000.00', 'Giao hàng nhanh ship COD', 1, 4),
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
(38, '3', 2, 'Trần Minh Hoàng', 'hoangtm@gmail.com', '0934123456', 'Cầu Giấy - Hà Nội', '2025-12-07', '1500000.00', 'Giao giờ hành chính', 1, 1),
(39, '4', 3, 'Phạm Thu Trang', 'trangpham@gmail.com', '0987654321', 'Hai Bà Trưng - Hà Nội', '2025-12-06', '820000.00', 'Gói cẩn thận giúp', 2, 2),
(40, '5', 1, 'Nguyễn Văn Nam', 'namnv2024@gmail.com', '0912345678', 'Thanh Xuân - Hà Nội', '2025-12-05', '2450000.00', 'Ship nhanh', 1, 3),
(41, '6', 4, 'Vũ Ngọc Anh', 'anhvu@gmail.com', '0945123123', 'Đống Đa - Hà Nội', '2025-12-04', '990000.00', 'COD', 2, 1),
(42, '7', 5, 'Hoàng Hải Đăng', 'danghaigg@gmail.com', '0977332211', 'Hà Đông - Hà Nội', '2025-12-03', '1800000.00', 'Không gọi khi giao', 1, 4),
(43, '8', 2, 'Lê Mai Hương', 'huongle@gmail.com', '0932156790', 'Ba Đình - Hà Nội', '2025-12-02', '530000.00', 'Giao buổi sáng', 2, 2),
(44, '9', 3, 'Nguyễn Hữu Tài', 'taihht@gmail.com', '0923123456', 'Tây Hồ - Hà Nội', '2025-12-01', '1120000.00', 'Nhẹ tay giúp', 1, 1),
(45, '10', 6, 'Đỗ Minh Thư', 'thudominh@gmail.com', '0967123456', 'Long Biên - Hà Nội', '2025-11-30', '760000.00', 'Ưu tiên giao nhanh', 2, 3),
(46, '11', 4, 'Phan Quang Dũng', 'dungphan@gmail.com', '0909887766', 'Yên Hoà - Hà Nội', '2025-11-29', '2190000.00', 'Thanh toán chuyển khoản', 1, 4),
(47, '12', 1, 'Ngô Phương Lan', 'lanngo@gmail.com', '0932456123', 'Cầu Giấy - Hà Nội', '2025-11-28', '430000.00', 'Ship COD', 2, 2),
(48, '13', 5, 'Trịnh Đức Mạnh', 'manhtrinh@gmail.com', '0912334455', 'Hưng Yên', '2025-11-27', '1520000.00', 'Liên hệ trước khi giao', 1, 1),
(49, '14', 3, 'Lương Hồng Nhung', 'nhungluong@gmail.com', '0977223344', 'Bắc Từ Liêm - Hà Nội', '2025-11-26', '670000.00', 'Hàng dễ vỡ', 2, 3),
(50, '15', 6, 'Đỗ Văn Khánh', 'khanhdovan@gmail.com', '0955667788', 'Hoàn Kiếm - Hà Nội', '2025-11-25', '3040000.00', 'Chuyển khoản', 1, 4),
(51, '16', 2, 'Trần Hải Yến', 'yentran@gmail.com', '0988112233', 'Hải Phòng', '2025-11-24', '540000.00', 'COD', 2, 1),
(52, '17', 4, 'Lê Hữu Phước', 'phuocle@gmail.com', '0911223344', 'Nam Từ Liêm - Hà Nội', '2025-11-23', '1200000.00', 'Giao buổi chiều', 1, 2),
(53, '18', 1, 'Hoàng Ngọc Tú', 'tuhoang@gmail.com', '0922345566', 'Bắc Giang', '2025-11-22', '890000.00', 'Nhắn shipper gọi trước', 2, 1),
(54, '19', 3, 'Bùi Gia Hưng', 'hungbg@gmail.com', '0944332211', 'Ninh Bình', '2025-11-21', '1990000.00', 'Giao tận nhà', 1, 3),
(55, '20', 5, 'Tạ Phương Thảo', 'thaotaphuong@gmail.com', '0933124556', 'Thái Bình', '2025-11-20', '450000.00', 'Miễn phí ship?', 2, 1),
(56, '21', 6, 'Phùng Hải Nam', 'namphung@gmail.com', '0965223344', 'Quảng Ninh', '2025-11-19', '3200000.00', 'Thanh toán online', 1, 4),
(57, '22', 2, 'Nguyễn Minh Khang', 'khangnguyen@gmail.com', '0923445566', 'Lào Cai', '2025-11-18', '740000.00', 'Giao nhanh giúp', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `gio_hangs`
--

CREATE TABLE `gio_hangs` (
  `id` int NOT NULL,
  `tai_khoan_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(11, 1, './uploads/1765151866-iphone-17-pro-max-cam-1-638947383255964450-750x500.jpg'),
(12, 2, './uploads/1765152118-text_ng_n_1__8_27.webp'),
(13, 1, './uploads/1765151866-iphone-17-pro-max-cam-2-638947383212278277-750x500.jpg'),
(14, 1, './uploads/1765151866-iphone-17-pro-max-cam-4-638947383197941667-750x500.jpg'),
(15, 1, './uploads/1765151866-iphone-17-pro-max-cam-7-638947383167025902-750x500.jpg'),
(16, 1, './uploads/1765151866-iphone-17-pro-max-cam-9-638947383148725067-750x500 (1).jpg'),
(17, 1, './uploads/1765151866-iphone-17-pro-max-cam-9-638947383148725067-750x500.jpg'),
(18, 1, './uploads/1765151866-iphone-17-pro-max-cam-12-638947383232300582-750x500.jpg'),
(19, 1, './uploads/1765151866-iphone-17-pro-max-cam-13-638947383223664403-750x500.jpg'),
(20, 1, './uploads/1765151866-iphone-17-pro-max-cam-1-638947383255964450-750x500 (1).jpg'),
(21, 26, './uploads/1764628535-instagram-1.jpg'),
(22, 26, './uploads/1764628535-instagram-2.jpg'),
(23, 26, './uploads/1764628535-instagram-3.jpg'),
(24, 26, './uploads/1764628535-instagram-4.jpg'),
(25, 26, './uploads/1764628535-instagram-5.jpg'),
(36, 1, './uploads/1765151866-iphone-17-pro-max-cam-4-638947383197941667-750x500.jpg'),
(37, 1, './uploads/1765151866-iphone-17-pro-max-cam-4-638947383197941667-750x500.jpg'),
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
(1, 'Iphone 17 Promax 256 GB', '430000.00', '420000.00', './uploads/1765151935-vi-vn-iphone-17-pro-max-1.jpg', 10, 10, '2024-12-07', 'Iphone 17 Promax với cấu hình siêu khủng, màn đẹp, pin trâu, camera sắc nét,...', 4, 1),
(2, 'Laptop Acer Aspire Lite 14 AL14-71M-52GQ', '24000000.00', '23000000.00', './uploads/1765152155-laptop_acer_aspire_lite_14_al14-71m-52gq_-_3.png', 12, 22, '2025-12-07', 'Laptop Acer Aspire Lite 14 AL14-71M-52GQ là dòng laptop văn phòng đẹp', 5, 1),
(3, 'iPad A16 Wifi 128GB 2025  Chính hãng Apple Việt Nam ', '22000000.00', '19500000.00', './uploads/1765152285-ipad-a16-11-inch_2__1.webp', 10, 10, '2025-12-07', 'iPad A16 Wifi 128GB 2025  Chính hãng Apple Việt Nam là dòng Ipad rất được ưa chuộng ở Việt Nam', 6, 1),
(4, 'Phone 13 128GB ', '15000000.00', '12900000.00', './uploads/1765165996-iphone-13-4-1-750x500.jpg', 19, 8, '2025-12-08', 'iPhone 13 128GB – Mô tả ngắn gọn:\r\n\r\nMàn hình Super Retina XDR OLED 6.1 inch, sáng hơn 28%, độ phân giải 2532 x 1170\r\nChip A15 Bionic siêu mạnh, nhanh hơn 50% so với đối thủ\r\nHệ thống camera kép 12MP (góc rộng + siêu rộng), chế độ Cinematic Mode quay video xóa phông 1080p, Night Mode, Photographic Styles\r\nThiết kế bền bỉ với Ceramic Shield mặt trước, chống nước IP68\r\nPin trâu hơn đáng kể so với iPhone 12 (dùng cả ngày thoải mái)\r\nHỗ trợ 5G, Face ID, iOS mượt mà (hiện tại lên được iOS 18/19)\r\nDung lượng 128GB phù hợp cho người dùng cơ bản đến trung bình\r\n\r\nMột chiếc iPhone “ngon-bổ-rẻ” nhất định phải có trong năm 2025 nếu bạn muốn máy chính hãng Apple giá hợp lý!', 4, 1),
(5, 'iPhone 13 128GB ', '6000000.00', '4600000.00', './uploads/1765165946-iphone-13-4-1-750x500.jpg', 16, 9, '2025-12-08', 'iPhone 13 128GB – Mô tả ngắn gọn:\r\n\r\nMàn hình Super Retina XDR OLED 6.1 inch, sáng hơn 28%, độ phân giải 2532 x 1170\r\nChip A15 Bionic siêu mạnh, nhanh hơn 50% so với đối thủ\r\nHệ thống camera kép 12MP (góc rộng + siêu rộng), chế độ Cinematic Mode quay video xóa phông 1080p, Night Mode, Photographic Styles\r\nThiết kế bền bỉ với Ceramic Shield mặt trước, chống nước IP68\r\nPin trâu hơn đáng kể so với iPhone 12 (dùng cả ngày thoải mái)\r\nHỗ trợ 5G, Face ID, iOS mượt mà (hiện tại lên được iOS 18/19)\r\nDung lượng 128GB phù hợp cho người dùng cơ bản đến trung bình\r\n\r\nMột chiếc iPhone “ngon-bổ-rẻ” nhất định phải có trong năm 2025 nếu bạn muốn máy chính hãng Apple giá hợp lý!', 4, 1),
(6, 'Điện thoại iPhone 16 Plus 128GB', '23000000.00', '19000000.00', './uploads/1765194623-iphone-16-plus-trang-1-638639096584067146-750x500.jpg', 50, 21, '2025-12-08', 'iPhone 16 Plus 128GB – Mô tả ngắn gọn:\r\n\r\nMàn hình Super Retina XDR OLED 6.7 inch, độ phân giải 2796 x 1290 (460 ppi), Dynamic Island, sáng tối đa 2000 nits, hỗ trợ HDR và True Tone\r\nChip A18 mạnh mẽ với CPU 6 lõi, GPU 5 lõi, Neural Engine 16 lõi – tích hợp Apple Intelligence cho AI thông minh, bảo mật cao\r\nHệ thống camera kép 48MP Fusion chính (OIS, zoom quang 2x) + 12MP siêu rộng (120°), camera trước 12MP; hỗ trợ Photonic Engine, Deep Fusion, Smart HDR 5, Night mode, quay video 4K Dolby Vision, Spatial photos\r\nThiết kế nhôm cao cấp, Ceramic Shield chống xước, kính màu sau, chống nước/bụi IP68 (sâu 6m/30 phút); nút Action tùy chỉnh và Camera Control mới\r\nPin \"khủng\" lên đến 27 giờ xem video, sạc nhanh 50% trong 30 phút (20W+), sạc không dây MagSafe 25W, USB-C\r\nDung lượng 128GB lý tưởng cho nhu cầu hàng ngày, hỗ trợ eSIM, 5G, Face ID, iOS 18 mượt mà (cập nhật lâu dài)\r\n\r\nSiêu phẩm iPhone 16 Plus – màn lớn, camera đỉnh cao, AI đột phá, hoàn hảo cho năm 2025 với giá trị vượt trội từ Apple!1,7 giâyFast', 4, 1),
(7, 'Mèo Lông Dài Phú Quốc Trắng', '8000000.00', '5500000.00', 'assets/img/product/product-7.jpg', 70, 43, '2025-11-29', 'Mèo Lông Dài Siêu Đẹp, Đắt Tiền trắng', 9, 1),
(8, 'Điện thoại iPhone 16 Pro 128GB', '19800000.00', '16999999.00', './uploads/1765194859-iphone-16-pro-titan-sa-mac-1-638638979065595000-750x500.jpg', 56, 88, '2025-12-08', 'iPhone 16 Pro 128GB – Mô tả ngắn gọn:\r\n\r\nMàn hình Super Retina XDR OLED 6.3 inch, độ phân giải 2622 x 1206 (460 ppi), Dynamic Island, ProMotion 120Hz, sáng tối đa 2000 nits, hỗ trợ HDR10, Always-On Display\r\nChip A18 Pro siêu mạnh với CPU 6 lõi, GPU 6 lõi, Neural Engine 16 lõi – tích hợp Apple Intelligence cho AI thông minh, bảo mật cao, hỗ trợ Wi-Fi 7\r\nHệ thống camera ba 48MP Fusion chính (OIS, zoom quang 5x) + 48MP siêu rộng (120°) + 12MP tele (5x), camera trước 12MP; hỗ trợ Photonic Engine, Deep Fusion, Smart HDR 5, Night mode, quay video 4K 120fps Dolby Vision, Spatial video\r\nThiết kế titanium cao cấp, Ceramic Shield thế hệ mới (gấp 2 lần bền), chống nước/bụi IP68 (sâu 6m/30 phút); nút Camera Control chuyên dụng và Action Button tùy chỉnh\r\nPin 3582mAh \"khủng\" lên đến 27 giờ xem video, sạc nhanh 50% trong 30 phút (20W+), sạc không dây MagSafe 25W, USB-C\r\nDung lượng 128GB phù hợp cho người dùng cơ bản đến nâng cao, hỗ trợ eSIM, 5G, Face ID, iOS 18 mượt mà (cập nhật lên iOS 19/20)\r\n\r\nSiêu phẩm iPhone 16 Pro – camera chuyên nghiệp, hiệu năng đỉnh cao, AI đột phá, lựa chọn hoàn hảo cho năm 2025 với thiết kế titanium sang trọng từ Apple!', 4, 1),
(9, 'Điện thoại iPhone 16 Pro Max 256GB', '26000000.00', '21499000.00', './uploads/1765194984-iphone-16-pro-max.webp', 26, 10, '2025-12-05', 'iPhone 16 Pro Max 256GB – Mô tả ngắn gọn (2025):\r\n\r\nMàn hình lớn nhất: Super Retina XDR OLED 6.9 inch, độ phân giải 2868 x 1320 (460 ppi), ProMotion 120Hz mượt như lụa, Always-On Display, sáng tối đa 2000 nits (ngoài trời rõ nét), Ceramic Shield thế hệ mới bền gấp đôi\r\nChip A18 Pro khủng nhất Apple hiện tại: CPU 6 lõi nhanh hơn 20%, GPU 6 lõi mạnh hơn 20% so với A17 Pro, Neural Engine 16 lõi – tối ưu Apple Intelligence (AI viết văn bản, tạo ảnh, Siri thông minh hơn…)\r\nCamera “Pro” thực thụ:\r\n• Chính 48MP Fusion (cảm biến lớn hơn, OIS thế hệ 2)\r\n• Siêu rộng 48MP (120°)\r\n• Tele 12MP zoom quang 5x (120mm)\r\n• Quay video 4K 120fps Dolby Vision, ProRes, Spatial Video cho Vision Pro\r\n• Nút Camera Control cảm ứng lực + cảm biến chạm – chụp ảnh siêu nhanh và chuyên nghiệp\r\nPin “trâu” nhất dòng iPhone từ trước đến nay: ~4680 mAh\r\n• Thời lượng thực tế: 29–33 giờ xem video, dùng nặng cả ngày vẫn dư 20–30%\r\n• Sạc nhanh 45W (50% trong ~30 phút), MagSafe 25W\r\nThiết kế titanium cao cấp, nhẹ và bền hơn thép không gỉ cũ, chống nước IP68 (6m/30 phút), màu mới Desert Titanium cực đẹp\r\nDung lượng 256GB – lý tưởng cho người quay 4K ProRes, chụp RAW, dùng lâu dài 4–5 năm không lo hết bộ nhớ\r\niOS 18 + cập nhật phần mềm ít nhất tới 2030–2031\r\n\r\nKết luận một câu: iPhone 16 Pro Max 256GB hiện là chiếc iPhone “đỉnh nhất” Apple từng làm – màn to, pin khủng, camera chuyên nghiệp, AI thông minh và đáng tiền nhất để dùng dài hạn trong năm 2025–2030!Fast', 4, 1),
(10, 'Điện thoại iPhone 16e 128GB', '21000000.00', '21599000.00', './uploads/1765195105-iphone-16e-white-1-638756438035819151-750x500.jpg', 50, 20, '2025-12-08', 'iPhone 16e 128GB – Mô tả ngắn gọn (2025):\r\n\r\nMàn hình Super Retina XDR OLED 6.1 inch, độ phân giải 2532 x 1170 (457 ppi), notch Face ID cổ điển (không Dynamic Island), sáng tối đa 1200 nits, hỗ trợ HDR, True Tone, Ceramic Shield chống xước\r\nChip A18 (phiên bản tiết kiệm) với CPU 6 lõi, GPU 4 lõi, Neural Engine 16 lõi – hỗ trợ Apple Intelligence (AI thông minh như viết văn bản, tạo ảnh, Siri nâng cao), hiệu năng mạnh mẽ cho đa nhiệm và game\r\nHệ thống camera đơn 48MP Fusion chính (OIS, zoom quang 2x tích hợp), camera trước 12MP TrueDepth; hỗ trợ Night mode, Portrait mode, Photographic Styles, quay video 4K Dolby Vision 60fps\r\nThiết kế nhôm aluminum cao cấp, mỏng 7.8mm, nặng 167g, màu Black/White; nút Action tùy chỉnh, chống nước/bụi IP68 (sâu 6m/30 phút), modem Apple C1 đầu tiên cho kết nối 5G sub-6GHz ổn định\r\nPin 4005mAh \"trâu\" lên đến 26 giờ xem video (dài hơn 12 giờ so với iPhone SE cũ), sạc nhanh 20W (50% trong 30 phút), sạc không dây MagSafe 15W, USB-C\r\nDung lượng 128GB phù hợp cho người dùng cơ bản, hỗ trợ eSIM, Face ID, iOS 18.3 (cập nhật lên iOS 26+), kết nối vệ tinh khẩn cấp\r\n\r\niPhone 16e 128GB – \"người anh em giá rẻ\" của dòng iPhone 16, mang Apple Intelligence vào tầm tay với giá khởi điểm 599 USD, lựa chọn thông minh cho năm 2025 nếu bạn muốn iPhone hiện đại mà không tốn kém!1,6 giâyFast', 4, 1),
(11, 'iPhone 14 Pro 128GB  Chính hãng VNA', '27000000.00', '24999999.00', './uploads/1765195368-x_m_16.webp', 178, 0, '2025-12-08', 'iPhone 14 Pro 128GB Chính hãng VN/A – Mô tả ngắn gọn (2025):\r\n\r\nMàn hình Super Retina XDR OLED 6.1 inch, độ phân giải 2556 x 1179 (460 ppi), ProMotion 120Hz mượt mà, Always-On Display, Dynamic Island thông minh, sáng tối đa 2000 nits, Ceramic Shield bền bỉ\r\nChip A16 Bionic mạnh mẽ với CPU 6 lõi, GPU 5 lõi, Neural Engine 16 lõi – hiệu năng đỉnh cao cho game nặng, chỉnh sửa video 4K, hỗ trợ iOS 18+ (cập nhật đến iOS 26+)\r\nHệ thống camera ba \"Pro\": 48MP chính (OIS, cảm biến lớn hơn), 12MP siêu rộng (120°), 12MP tele zoom quang 3x; camera trước 12MP; Night mode, Cinematic 4K HDR, Photonic Engine, quay ProRes/Log\r\nThiết kế thép không gỉ cao cấp, mỏng 7.85mm, nặng 206g, màu Space Black/Silver/Gold/Deep Purple; chống nước/bụi IP68 (sâu 6m/30 phút), Lightning port, nút Action tùy chỉnh\r\nPin 3200mAh dùng thoải mái 20–23 giờ xem video, sạc nhanh 50% trong 30 phút (20W), sạc không dây MagSafe 15W\r\nDung lượng 128GB phù hợp cho người dùng trung bình, hỗ trợ 5G, Face ID, Emergency SOS via satellite, Crash Detection, eSIM + SIM vật lý (VN/A)\r\nGiá chính hãng VN/A hiện tại khoảng 22–25 triệu VND (tùy cửa hàng như Di Động Việt, CellphoneS), bảo hành 12 tháng Apple\r\n\r\niPhone 14 Pro 128GB chính hãng VN/A – flagship \"huyền thoại\" với camera đỉnh cao và Dynamic Island đầu tiên, vẫn \"chiến\" tốt năm 2025, lựa chọn tiết kiệm so với dòng 16 nếu bạn muốn giá trị lâu dài từ Apple!1,9 giâyFast', 4, 1),
(12, 'iPhone 15 128GB  Chính hãng VNA', '23000000.00', '21499000.00', './uploads/1765195481-iphone-15-plus_1__1.webp', 12, 0, '2025-12-01', 'iPhone 15 128GB Chính hãng VN/A – Mô tả ngắn gọn (2025):\r\n\r\nMàn hình Super Retina XDR OLED 6.1 inch, độ phân giải 2556 x 1179 (460 ppi), Dynamic Island thông minh, sáng tối đa 2000 nits, hỗ trợ HDR10, Dolby Vision, Ceramic Shield bền bỉ\r\nChip A16 Bionic mạnh mẽ với CPU 6 lõi, GPU 5 lõi, Neural Engine 16 lõi – hiệu năng vượt trội cho game nặng, chỉnh sửa video, hỗ trợ iOS 18+ (cập nhật đến iOS 26+)\r\nHệ thống camera kép: 48MP chính (OIS, zoom quang 2x), 12MP siêu rộng (120°); camera trước 12MP; Night mode, Portrait, Cinematic 4K HDR, Smart HDR 5, quay video 4K 60fps Dolby Vision\r\nThiết kế nhôm aluminum cao cấp, mỏng 7.8mm, nặng 171g, màu Black/Blue/Green/Yellow/Pink; chống nước/bụi IP68 (sâu 6m/30 phút), USB-C tiện lợi, nút Action tùy chỉnh\r\nPin 3349mAh dùng thoải mái 20–23 giờ xem video, sạc nhanh 50% trong 30 phút (20W), sạc không dây MagSafe 15W\r\nDung lượng 128GB phù hợp cho người dùng trung bình, hỗ trợ 5G, Face ID, Emergency SOS via satellite, Crash Detection, eSIM + SIM vật lý (VN/A)\r\nGiá chính hãng VN/A hiện tại khoảng 15.8–16.9 triệu VND (tùy cửa hàng như Di Động Việt, CellphoneS, Hoàng Hà Mobile), bảo hành 12 tháng Apple\r\n\r\niPhone 15 128GB chính hãng VN/A – flagship \"cân bằng\" với camera 48MP sắc nét, Dynamic Island đầu tiên cho dòng thường, USB-C và hiệu năng \"trâu\" – vẫn đáng mua năm 2025 nếu bạn muốn iPhone hiện đại giá \"mềm\" hơn dòng 16!2,1 giâyFast', 4, 1),
(13, 'iPhone 17 256GB  Chính hãng', '34000000.00', '31500000.00', './uploads/1765195627-iphone_17_256gb-3_2.webp', 12, 0, '2025-12-09', 'iPhone 17 256GB Chính hãng – Mô tả ngắn gọn (2025):\r\n\r\nMàn hình Super Retina XDR OLED 6.3 inch, độ phân giải 2622 x 1206 (460 ppi), Dynamic Island thông minh, sáng tối đa 2000 nits, hỗ trợ HDR10, Dolby Vision, Always-On Display, Ceramic Shield thế hệ mới bền hơn\r\nChip A19 mạnh mẽ với CPU 6 lõi, GPU 5 lõi, Neural Engine 16 lõi – hiệu năng vượt trội cho game nặng, AI Apple Intelligence nâng cao (Live Translation, tạo ảnh, Siri siêu thông minh), hỗ trợ iOS 26 (cập nhật đến iOS 34+)\r\nHệ thống camera kép: 48MP Fusion chính (OIS, zoom quang 2x), 12MP siêu rộng (120°); camera trước 12MP TrueDepth nâng cấp Center Stage; Night mode, Portrait, Cinematic 4K HDR 60fps, Smart HDR 5, Photonic Engine\r\nThiết kế nhôm aluminum cao cấp, mỏng 8mm, nặng 177g, màu Lavender/Mist Blue/Sage/Black/White; chống nước/bụi IP68 (sâu 6m/30 phút), USB-C, nút Action tùy chỉnh\r\nPin 3692mAh \"trâu\" lên đến 26 giờ xem video (cải thiện 10% so với iPhone 16), sạc nhanh 50% trong 30 phút (25W), sạc không dây MagSafe 25W\r\nDung lượng 256GB (base storage mới, gấp đôi iPhone 16) lý tưởng cho người dùng trung bình đến nặng, hỗ trợ 5G sub-6GHz, Face ID, Emergency SOS via satellite, Crash Detection, eSIM toàn cầu (VN/A)\r\nGiá chính hãng VN/A hiện tại khoảng 22–24 triệu VND (tùy cửa hàng như FPT Shop, The Gioi Di Dong), bảo hành 12 tháng Apple; ra mắt 19/9/2025\r\n\r\niPhone 17 256GB chính hãng – flagship \"tiết kiệm\" với storage gấp đôi, camera sắc nét, AI đột phá và pin bền bỉ – lựa chọn hoàn hảo năm 2025 nếu bạn muốn iPhone hiện đại giá $799 (khoảng 20 triệu VND) mà không cần Pro!1,6 giâyFast', 4, 1),
(14, 'Mèo Phú Quốc', '500000.00', '400000.00', NULL, 12, 50, '2025-12-02', 'Đẹp', 1, 1),
(15, 'iPhone Air 256GB  Chính hãng', '24000000.00', '22999999.00', './uploads/1765195746-iphone_air-3_2.webp', 432, 0, '2025-12-08', 'iPhone Air 256GB Chính hãng – Mô tả ngắn gọn (2025):\r\n\r\nMàn hình Super Retina XDR OLED 6.5 inch, độ phân giải 2736 x 1260 (460 ppi), Dynamic Island thông minh, ProMotion 120Hz mượt mà, Always-On Display, sáng tối đa 2000 nits, Ceramic Shield 2 thế hệ mới (bền gấp đôi, chống phản chiếu)\r\nChip A19 Pro mạnh mẽ với CPU 6 lõi, GPU 5 lõi, Neural Engine 16 lõi – tối ưu Apple Intelligence (AI tạo ảnh, dịch live, Siri nâng cao), hỗ trợ iOS 26 (cập nhật đến iOS 34+)\r\nHệ thống camera đơn \"Air\": 48MP Fusion chính (OIS, zoom quang 2x, cảm biến lớn); camera trước 12MP Center Stage nâng cấp; Night mode, Portrait, Cinematic 4K HDR 60fps, Smart HDR 5, Photonic Engine\r\nThiết kế titanium mỏng nhất từ trước (5.6mm, nặng chỉ 165g – nhẹ hơn iPhone 16 Plus 30%), màu Sky Blue/Light Gold/Cloud White/Space Black; chống nước/bụi IP68 (sâu 6m/30 phút), eSIM-only toàn cầu, USB-C, nút Action tùy chỉnh\r\nPin 3149mAh \"trâu\" lên đến 27 giờ xem video (cải thiện 15% so với thế hệ trước), sạc nhanh 50% trong 30 phút (25W), sạc không dây MagSafe 25W\r\nDung lượng 256GB (base mới, lý tưởng cho người dùng nặng như quay 4K, ảnh RAW), hỗ trợ 5G sub-6GHz/mmWave, Face ID, Emergency SOS via satellite, Crash Detection, modem C1X tự thiết kế\r\nGiá chính hãng VN/A hiện tại khoảng 24–26 triệu VND (tùy cửa hàng như FPT Shop, The Gioi Di Dong), bảo hành 12 tháng Apple; ra mắt 19/9/2025, model A3517 (International)\r\n\r\niPhone Air 256GB chính hãng – \"siêu mỏng, siêu nhẹ\" thay thế dòng Plus, với thiết kế titanium đột phá và hiệu năng Pro – lựa chọn \"bay bổng\" năm 2025 cho ai muốn iPhone hiện đại giá $999 mà vẫn đỉnh cao từ Apple!1,3 giâyFast', 4, 1),
(16, 'iPad Air 5 10.9 inch (2022) WiFi 64GB Chính hãng Apple Việt Nam', '19000000.00', '17500000.00', './uploads/1765195976-5_158_3.webp', 123, 0, '2025-12-02', 'iPad Air 5 10.9 inch (2022) WiFi 64GB Chính hãng Apple Việt Nam – Mô tả ngắn gọn (2025):\r\n\r\nMàn hình Liquid Retina IPS 10.9 inch, độ phân giải 2360 x 1640 (264 ppi), True Tone, P3 wide color, sáng tối đa 500 nits, chống phản chiếu, hỗ trợ Apple Pencil (thế hệ 2) và Magic Keyboard\r\nChip A15 Bionic (5 lõi CPU, 4 lõi GPU, Neural Engine 16 lõi) – hiệu năng mạnh mẽ cho chỉnh sửa video 4K, game nặng, đa nhiệm mượt mà, hỗ trợ iPadOS 18+ (cập nhật đến iPadOS 26+)\r\nCamera sau 12MP (góc rộng, ƒ/1.8, 4K video 60fps, Center Stage), camera trước 12MP Ultra Wide (landscape-oriented, Center Stage tự động); hỗ trợ Smart HDR 3, Night mode\r\nThiết kế nhôm aluminum cao cấp, mỏng 6.1mm, nặng 461g, màu Space Gray/Blue/Purple/Starlight; chống nước/bụi IP0 (không chính thức), Touch ID trong nút nguồn, USB-C (sạc nhanh 20W)\r\nPin 28.6Wh dùng thoải mái 10 giờ web/video, sạc đầy ~2 giờ (20W adapter)\r\nDung lượng 64GB cơ bản (phù hợp người dùng nhẹ, lưu ảnh/video cơ bản), WiFi 6 (802.11ax), Bluetooth 5.0, eSIM không hỗ trợ (chỉ WiFi), không 5G\r\nGiá chính hãng VN/A hiện tại khoảng 10.5–11.5 triệu VND (tùy cửa hàng như FPT Shop, The Gioi Di Dong, CellphoneS), bảo hành 12 tháng Apple\r\n\r\niPad Air 5 10.9\" WiFi 64GB chính hãng – \"Air\" thực thụ với thiết kế mỏng nhẹ, chip A15 \"trâu\" và màn đẹp, vẫn đáng mua năm 2025 nếu bạn cần iPad giá rẻ cho học tập/giải trí cơ bản từ Apple!', 6, 1),
(17, 'iPad Air 6 M2 13 inch Wifi 128GB I Chính hãng Apple Việt Nam', '21000000.00', '18500000.00', './uploads/1765196105-ipad-air-6-m2-13-inch.webp', 132, 0, '2025-12-08', 'iPad Air 6 M2 13 inch WiFi 128GB Chính hãng Apple Việt Nam – Mô tả ngắn gọn (2025):\r\n\r\nMàn hình Liquid Retina IPS LED-backlit 13 inch, độ phân giải 2732 x 2048 (264 ppi), True Tone, P3 wide color, sáng tối đa 600 nits, chống phản chiếu, hỗ trợ Apple Pencil Pro và Apple Pencil (USB-C), Magic Keyboard\r\nChip M2 mạnh mẽ với CPU 8 lõi, GPU 10 lõi, Neural Engine 16 lõi – hiệu năng vượt trội cho chỉnh sửa video 4K, game nặng, đa nhiệm mượt mà, hỗ trợ Apple Intelligence (AI Writing Tools, Image Wand), iPadOS 18+ (cập nhật đến iPadOS 26+)\r\nCamera sau 12MP (góc rộng, ƒ/1.8, 4K video 60fps, Center Stage), camera trước 12MP Ultra Wide (landscape-oriented, Center Stage); hỗ trợ Smart HDR 4, Night mode, panorama\r\nThiết kế nhôm aluminum cao cấp, mỏng 6.1mm, nặng 617g, màu Blue/Purple/Space Gray/Starlight; Touch ID trong nút nguồn, USB-C (Thunderbolt/USB 4 tốc độ 10Gbps, hỗ trợ DisplayPort), WiFi 6E (802.11ax), Bluetooth 5.3\r\nPin 36.6Wh dùng thoải mái 10 giờ web/video, sạc nhanh ~2 giờ (20W adapter)\r\nDung lượng 128GB phù hợp người dùng trung bình (lưu ảnh/video, app cơ bản), chỉ WiFi (không 5G)\r\nGiá chính hãng VN/A hiện tại khoảng 18.5–19.9 triệu VND (tùy cửa hàng như FPT Shop, The Gioi Di Dong, CellphoneS), bảo hành 12 tháng Apple\r\n\r\niPad Air 6 M2 13\" WiFi 128GB chính hãng – \"siêu phẩm mỏng nhẹ\" với màn lớn, chip M2 \"trâu\" và AI thông minh, vẫn đáng mua năm 2025 cho sáng tạo/học tập/giải trí từ Apple, dù có tin đồn M3 sắp ra!', 6, 1),
(18, 'iPad Air 11 inch M3 Wifi 128GB 2025  Chính hãng Apple Việt Nam', '25000000.00', '23999999.00', './uploads/1765196208-ipad-air-11-wifi-1.webp', 10, 0, '2025-12-03', 'iPad Air 11 inch M3 WiFi 128GB (2025) Chính hãng Apple Việt Nam – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình Liquid Retina IPS LED-backlit 11 inch, độ phân giải 2360 x 1640 (264 ppi), True Tone, P3 wide color, sáng tối đa 600 nits, chống phản chiếu, hỗ trợ Apple Pencil Pro và Apple Pencil (USB-C), Magic Keyboard mới (giá 269 USD cho 11 inch)\r\nChip M3 mạnh mẽ với CPU 8 lõi, GPU 10 lõi, Neural Engine 16 lõi – hiệu năng vượt trội cho chỉnh sửa video 4K, game nặng, đa nhiệm mượt mà, hỗ trợ Apple Intelligence (AI Writing Tools, Image Wand, Clean Up), iPadOS 18.3.2+ (cập nhật đến iPadOS 26.1+)\r\nCamera sau 12MP (góc rộng, ƒ/1.8, 4K video 60fps, Center Stage), camera trước 12MP Ultra Wide (landscape-oriented, Center Stage); hỗ trợ Smart HDR 4, Night mode, panorama\r\nThiết kế nhôm aluminum cao cấp, mỏng 6.1mm, nặng 460g, màu Blue/Purple/Space Gray/Starlight; Touch ID trong nút nguồn, USB-C (Thunderbolt/USB 4 tốc độ 10Gbps, hỗ trợ DisplayPort), WiFi 6E (802.11ax), Bluetooth 5.3\r\nPin 28.6Wh dùng thoải mái 10 giờ web/video, sạc nhanh ~2 giờ (20W adapter)\r\nDung lượng 128GB phù hợp người dùng trung bình (lưu ảnh/video, app cơ bản), chỉ WiFi (không 5G)\r\nGiá chính hãng VN/A hiện tại khoảng 15.4–16.5 triệu VND (tùy cửa hàng như FPT Shop, The Gioi Di Dong, CellphoneS, Apple Store), bảo hành 12 tháng Apple; ra mắt 4/3/2025, phát hành 12/3/2025\r\n\r\niPad Air 11\" M3 WiFi 128GB chính hãng – \"siêu phẩm mỏng nhẹ\" với chip M3 \"khủng\" và AI thông minh, đáng mua cuối 2025 cho sáng tạo/học tập/giải trí từ Apple, giá khởi điểm 599 USD!', 6, 1),
(19, 'iPad Pro chip M5 11 inch Wifi 256GB  Chính hãng Apple Việt Nam', '27000000.00', '23500000.00', './uploads/1765196384-ipad-pro-m5.webp', 23, 0, '2025-12-08', 'Điện thoại iPhone 13 128GB......... mô tả sản phẩm ngắniPhone 13 128GB – Mô tả ngắn gọn:\r\n\r\nMàn hình Super Retina XDR OLED 6.1 inch, sáng hơn 28%, độ phân giải 2532 x 1170\r\nChip A15 Bionic siêu mạnh, nhanh hơn 50% so với đối thủ\r\nHệ thống camera kép 12MP (góc rộng + siêu rộng), chế độ Cinematic Mode quay video xóa phông 1080p, Night Mode, Photographic Styles\r\nThiết kế bền bỉ với Ceramic Shield mặt trước, chống nước IP68\r\nPin trâu hơn đáng kể so với iPhone 12 (dùng cả ngày thoải mái)\r\nHỗ trợ 5G, Face ID, iOS mượt mà (hiện tại lên được iOS 18/19)\r\nDung lượng 128GB phù hợp cho người dùng cơ bản đến trung bình\r\n\r\nMột chiếc iPhone “ngon-bổ-rẻ” nhất định phải có trong năm 2025 nếu bạn muốn máy chính hãng Apple giá hợp lý!Điện thoại iPhone 16 Plus 128GB moo ta san phamiPhone 16 Plus 128GB – Mô tả ngắn gọn:\r\n\r\nMàn hình Super Retina XDR OLED 6.7 inch, độ phân giải 2796 x 1290 (460 ppi), Dynamic Island, sáng tối đa 2000 nits, hỗ trợ HDR và True Tone\r\nChip A18 mạnh mẽ với CPU 6 lõi, GPU 5 lõi, Neural Engine 16 lõi – tích hợp Apple Intelligence cho AI thông minh, bảo mật cao\r\nHệ thống camera kép 48MP Fusion chính (OIS, zoom quang 2x) + 12MP siêu rộng (120°), camera trước 12MP; hỗ trợ Photonic Engine, Deep Fusion, Smart HDR 5, Night mode, quay video 4K Dolby Vision, Spatial photos\r\nThiết kế nhôm cao cấp, Ceramic Shield chống xước, kính màu sau, chống nước/bụi IP68 (sâu 6m/30 phút); nút Action tùy chỉnh và Camera Control mới\r\nPin \"khủng\" lên đến 27 giờ xem video, sạc nhanh 50% trong 30 phút (20W+), sạc không dây MagSafe 25W, USB-C\r\nDung lượng 128GB lý tưởng cho nhu cầu hàng ngày, hỗ trợ eSIM, 5G, Face ID, iOS 18 mượt mà (cập nhật lâu dài)\r\n\r\nSiêu phẩm iPhone 16 Plus – màn lớn, camera đỉnh cao, AI đột phá, hoàn hảo cho năm 2025 với giá trị vượt trội từ Apple!1,7 giâyFastĐiện thoại iPhone 16 Pro 128GBiPhone 16 Pro 128GB – Mô tả ngắn gọn:\r\n\r\nMàn hình Super Retina XDR OLED 6.3 inch, độ phân giải 2622 x 1206 (460 ppi), Dynamic Island, ProMotion 120Hz, sáng tối đa 2000 nits, hỗ trợ HDR10, Always-On Display\r\nChip A18 Pro siêu mạnh với CPU 6 lõi, GPU 6 lõi, Neural Engine 16 lõi – tích hợp Apple Intelligence cho AI thông minh, bảo mật cao, hỗ trợ Wi-Fi 7\r\nHệ thống camera ba 48MP Fusion chính (OIS, zoom quang 5x) + 48MP siêu rộng (120°) + 12MP tele (5x), camera trước 12MP; hỗ trợ Photonic Engine, Deep Fusion, Smart HDR 5, Night mode, quay video 4K 120fps Dolby Vision, Spatial video\r\nThiết kế titanium cao cấp, Ceramic Shield thế hệ mới (gấp 2 lần bền), chống nước/bụi IP68 (sâu 6m/30 phút); nút Camera Control chuyên dụng và Action Button tùy chỉnh\r\nPin 3582mAh \"khủng\" lên đến 27 giờ xem video, sạc nhanh 50% trong 30 phút (20W+), sạc không dây MagSafe 25W, USB-C\r\nDung lượng 128GB phù hợp cho người dùng cơ bản đến nâng cao, hỗ trợ eSIM, 5G, Face ID, iOS 18 mượt mà (cập nhật lên iOS 19/20)\r\n\r\nSiêu phẩm iPhone 16 Pro – camera chuyên nghiệp, hiệu năng đỉnh cao, AI đột phá, lựa chọn hoàn hảo cho năm 2025 với thiết kế titanium sang trọng từ Apple!1,3 giâyFastSo sánh iPhone 16 Pro với 15 ProSo sánh iPhone 16 Pro và iPhone 15 Pro (128GB)\r\nDưới đây là bảng so sánh chi tiết các thông số chính giữa iPhone 16 Pro và iPhone 15 Pro, dựa trên dữ liệu từ Apple và các nguồn đánh giá uy tín. Cả hai đều là flagship cao cấp của Apple, nhưng iPhone 16 Pro mang đến những nâng cấp tinh tế về kích thước, camera, hiệu năng và pin, trong khi iPhone 15 Pro vẫn là lựa chọn tiết kiệm hơn với hiệu suất gần tương đương.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nTiêu chíiPhone 16 ProiPhone 15 ProSự khác biệt chínhThiết kế & Kích thước- Chất liệu: Titanium\r\n- Kích thước: 149.6 x 71.5 x 8.25 mm, nặng 199g\r\n- Màu: Black Titanium, White Titanium, Natural Titanium, Desert Titanium\r\n- Nút mới: Camera Control (chuyên dụng cho camera), Action Button- Chất liệu: Titanium\r\n- Kích thước: 146.6 x 70.6 x 8.25 mm, nặng 187g\r\n- Màu: Black Titanium, White Titanium, Blue Titanium, Natural Titanium\r\n- Nút: Action Button16 Pro lớn hơn nhẹ (dễ cầm hơn cho một số người), nặng hơn 12g, thêm nút Camera Control tiện lợi cho nhiếp ảnh. Ceramic Shield thế hệ mới bền hơn.Màn hình- 6.3 inch Super Retina XDR OLED\r\n- ĐộBị gián đoạnĐiện thoại iPhone 16 Pro Max 256GBiPhone 16 Pro Max 256GB – Mô tả ngắn gọn (2025):\r\n\r\nMàn hình lớn nhất: Super Retina XDR OLED 6.9 inch, độ phân giải 2868 x 1320 (460 ppi), ProMotion 120Hz mượt như lụa, Always-On Display, sáng tối đa 2000 nits (ngoài trời rõ nét), Ceramic Shield thế hệ mới bền gấp đôi\r\nChip A18 Pro khủng nhất Apple hiện tại: CPU 6 lõi nhanh hơn 20%, GPU 6 lõi mạnh hơn 20% so với A17 Pro, Neural Engine 16 lõi – tối ưu Apple Intelligence (AI viết văn bản, tạo ảnh, Siri thông minh hơn…)\r\nCamera “Pro” thực thụ:\r\n• Chính 48MP Fusion (cảm biến lớn hơn, OIS thế hệ 2)\r\n• Siêu rộng 48MP (120°)\r\n• Tele 12MP zoom quang 5x (120mm)\r\n• Quay video 4K 120fps Dolby Vision, ProRes, Spatial Video cho Vision Pro\r\n• Nút Camera Control cảm ứng lực + cảm biến chạm – chụp ảnh siêu nhanh và chuyên nghiệp\r\nPin “trâu” nhất dòng iPhone từ trước đến nay: ~4680 mAh\r\n• Thời lượng thực tế: 29–33 giờ xem video, dùng nặng cả ngày vẫn dư 20–30%\r\n• Sạc nhanh 45W (50% trong ~30 phút), MagSafe 25W\r\nThiết kế titanium cao cấp, nhẹ và bền hơn thép không gỉ cũ, chống nước IP68 (6m/30 phút), màu mới Desert Titanium cực đẹp\r\nDung lượng 256GB – lý tưởng cho người quay 4K ProRes, chụp RAW, dùng lâu dài 4–5 năm không lo hết bộ nhớ\r\niOS 18 + cập nhật phần mềm ít nhất tới 2030–2031\r\n\r\nKết luận một câu: iPhone 16 Pro Max 256GB hiện là chiếc iPhone “đỉnh nhất” Apple từng làm – màn to, pin khủng, camera chuyên nghiệp, AI thông minh và đáng tiền nhất để dùng dài hạn trong năm 2025–2030!FastĐiện thoại iPhone 16e 128GBiPhone 16e 128GB – Mô tả ngắn gọn (2025):\r\n\r\nMàn hình Super Retina XDR OLED 6.1 inch, độ phân giải 2532 x 1170 (457 ppi), notch Face ID cổ điển (không Dynamic Island), sáng tối đa 1200 nits, hỗ trợ HDR, True Tone, Ceramic Shield chống xước\r\nChip A18 (phiên bản tiết kiệm) với CPU 6 lõi, GPU 4 lõi, Neural Engine 16 lõi – hỗ trợ Apple Intelligence (AI thông minh như viết văn bản, tạo ảnh, Siri nâng cao), hiệu năng mạnh mẽ cho đa nhiệm và game\r\nHệ thống camera đơn 48MP Fusion chính (OIS, zoom quang 2x tích hợp), camera trước 12MP TrueDepth; hỗ trợ Night mode, Portrait mode, Photographic Styles, quay video 4K Dolby Vision 60fps\r\nThiết kế nhôm aluminum cao cấp, mỏng 7.8mm, nặng 167g, màu Black/White; nút Action tùy chỉnh, chống nước/bụi IP68 (sâu 6m/30 phút), modem Apple C1 đầu tiên cho kết nối 5G sub-6GHz ổn định\r\nPin 4005mAh \"trâu\" lên đến 26 giờ xem video (dài hơn 12 giờ so với iPhone SE cũ), sạc nhanh 20W (50% trong 30 phút), sạc không dây MagSafe 15W, USB-C\r\nDung lượng 128GB phù hợp cho người dùng cơ bản, hỗ trợ eSIM, Face ID, iOS 18.3 (cập nhật lên iOS 26+), kết nối vệ tinh khẩn cấp\r\n\r\niPhone 16e 128GB – \"người anh em giá rẻ\" của dòng iPhone 16, mang Apple Intelligence vào tầm tay với giá khởi điểm 599 USD, lựa chọn thông minh cho năm 2025 nếu bạn muốn iPhone hiện đại mà không tốn kém!1,6 giâyFastiPhone 14 Pro 128GB Chính hãng VNAiPhone 14 Pro 128GB Chính hãng VN/A – Mô tả ngắn gọn (2025):\r\n\r\nMàn hình Super Retina XDR OLED 6.1 inch, độ phân giải 2556 x 1179 (460 ppi), ProMotion 120Hz mượt mà, Always-On Display, Dynamic Island thông minh, sáng tối đa 2000 nits, Ceramic Shield bền bỉ\r\nChip A16 Bionic mạnh mẽ với CPU 6 lõi, GPU 5 lõi, Neural Engine 16 lõi – hiệu năng đỉnh cao cho game nặng, chỉnh sửa video 4K, hỗ trợ iOS 18+ (cập nhật đến iOS 26+)\r\nHệ thống camera ba \"Pro\": 48MP chính (OIS, cảm biến lớn hơn), 12MP siêu rộng (120°), 12MP tele zoom quang 3x; camera trước 12MP; Night mode, Cinematic 4K HDR, Photonic Engine, quay ProRes/Log\r\nThiết kế thép không gỉ cao cấp, mỏng 7.85mm, nặng 206g, màu Space Black/Silver/Gold/Deep Purple; chống nước/bụi IP68 (sâu 6m/30 phút), Lightning port, nút Action tùy chỉnh\r\nPin 3200mAh dùng thoải mái 20–23 giờ xem video, sạc nhanh 50% trong 30 phút (20W), sạc không dây MagSafe 15W\r\nDung lượng 128GB phù hợp cho người dùng trung bình, hỗ trợ 5G, Face ID, Emergency SOS via satellite, Crash Detection, eSIM + SIM vật lý (VN/A)\r\nGiá chính hãng VN/A hiện tại khoảng 22–25 triệu VND (tùy cửa hàng như Di Động Việt, CellphoneS), bảo hành 12 tháng Apple\r\n\r\niPhone 14 Pro 128GB chính hãng VN/A – flagship \"huyền thoại\" với camera đỉnh cao và Dynamic Island đầu tiên, vẫn \"chiến\" tốt năm 2025, lựa chọn tiết kiệm so với dòng 16 nếu bạn muốn giá trị lâu dài từ Apple!1,9 giâyFastiPhone 15 128GB Chính hãng VNAiPhone 15 128GB Chính hãng VN/A – Mô tả ngắn gọn (2025):\r\n\r\nMàn hình Super Retina XDR OLED 6.1 inch, độ phân giải 2556 x 1179 (460 ppi), Dynamic Island thông minh, sáng tối đa 2000 nits, hỗ trợ HDR10, Dolby Vision, Ceramic Shield bền bỉ\r\nChip A16 Bionic mạnh mẽ với CPU 6 lõi, GPU 5 lõi, Neural Engine 16 lõi – hiệu năng vượt trội cho game nặng, chỉnh sửa video, hỗ trợ iOS 18+ (cập nhật đến iOS 26+)\r\nHệ thống camera kép: 48MP chính (OIS, zoom quang 2x), 12MP siêu rộng (120°); camera trước 12MP; Night mode, Portrait, Cinematic 4K HDR, Smart HDR 5, quay video 4K 60fps Dolby Vision\r\nThiết kế nhôm aluminum cao cấp, mỏng 7.8mm, nặng 171g, màu Black/Blue/Green/Yellow/Pink; chống nước/bụi IP68 (sâu 6m/30 phút), USB-C tiện lợi, nút Action tùy chỉnh\r\nPin 3349mAh dùng thoải mái 20–23 giờ xem video, sạc nhanh 50% trong 30 phút (20W), sạc không dây MagSafe 15W\r\nDung lượng 128GB phù hợp cho người dùng trung bình, hỗ trợ 5G, Face ID, Emergency SOS via satellite, Crash Detection, eSIM + SIM vật lý (VN/A)\r\nGiá chính hãng VN/A hiện tại khoảng 15.8–16.9 triệu VND (tùy cửa hàng như Di Động Việt, CellphoneS, Hoàng Hà Mobile), bảo hành 12 tháng Apple\r\n\r\niPhone 15 128GB chính hãng VN/A – flagship \"cân bằng\" với camera 48MP sắc nét, Dynamic Island đầu tiên cho dòng thường, USB-C và hiệu năng \"trâu\" – vẫn đáng mua năm 2025 nếu bạn muốn iPhone hiện đại giá \"mềm\" hơn dòng 16!2,1 giâyFastiPhone 17 256GB Chính hãngiPhone 17 256GB Chính hãng – Mô tả ngắn gọn (2025):\r\n\r\nMàn hình Super Retina XDR OLED 6.3 inch, độ phân giải 2622 x 1206 (460 ppi), Dynamic Island thông minh, sáng tối đa 2000 nits, hỗ trợ HDR10, Dolby Vision, Always-On Display, Ceramic Shield thế hệ mới bền hơn\r\nChip A19 mạnh mẽ với CPU 6 lõi, GPU 5 lõi, Neural Engine 16 lõi – hiệu năng vượt trội cho game nặng, AI Apple Intelligence nâng cao (Live Translation, tạo ảnh, Siri siêu thông minh), hỗ trợ iOS 26 (cập nhật đến iOS 34+)\r\nHệ thống camera kép: 48MP Fusion chính (OIS, zoom quang 2x), 12MP siêu rộng (120°); camera trước 12MP TrueDepth nâng cấp Center Stage; Night mode, Portrait, Cinematic 4K HDR 60fps, Smart HDR 5, Photonic Engine\r\nThiết kế nhôm aluminum cao cấp, mỏng 8mm, nặng 177g, màu Lavender/Mist Blue/Sage/Black/White; chống nước/bụi IP68 (sâu 6m/30 phút), USB-C, nút Action tùy chỉnh\r\nPin 3692mAh \"trâu\" lên đến 26 giờ xem video (cải thiện 10% so với iPhone 16), sạc nhanh 50% trong 30 phút (25W), sạc không dây MagSafe 25W\r\nDung lượng 256GB (base storage mới, gấp đôi iPhone 16) lý tưởng cho người dùng trung bình đến nặng, hỗ trợ 5G sub-6GHz, Face ID, Emergency SOS via satellite, Crash Detection, eSIM toàn cầu (VN/A)\r\nGiá chính hãng VN/A hiện tại khoảng 22–24 triệu VND (tùy cửa hàng như FPT Shop, The Gioi Di Dong), bảo hành 12 tháng Apple; ra mắt 19/9/2025\r\n\r\niPhone 17 256GB chính hãng – flagship \"tiết kiệm\" với storage gấp đôi, camera sắc nét, AI đột phá và pin bền bỉ – lựa chọn hoàn hảo năm 2025 nếu bạn muốn iPhone hiện đại giá $799 (khoảng 20 triệu VND) mà không cần Pro!1,6 giâyFastiPhone Air 256GB Chính hãngiPhone Air 256GB Chính hãng – Mô tả ngắn gọn (2025):\r\n\r\nMàn hình Super Retina XDR OLED 6.5 inch, độ phân giải 2736 x 1260 (460 ppi), Dynamic Island thông minh, ProMotion 120Hz mượt mà, Always-On Display, sáng tối đa 2000 nits, Ceramic Shield 2 thế hệ mới (bền gấp đôi, chống phản chiếu)\r\nChip A19 Pro mạnh mẽ với CPU 6 lõi, GPU 5 lõi, Neural Engine 16 lõi – tối ưu Apple Intelligence (AI tạo ảnh, dịch live, Siri nâng cao), hỗ trợ iOS 26 (cập nhật đến iOS 34+)\r\nHệ thống camera đơn \"Air\": 48MP Fusion chính (OIS, zoom quang 2x, cảm biến lớn); camera trước 12MP Center Stage nâng cấp; Night mode, Portrait, Cinematic 4K HDR 60fps, Smart HDR 5, Photonic Engine\r\nThiết kế titanium mỏng nhất từ trước (5.6mm, nặng chỉ 165g – nhẹ hơn iPhone 16 Plus 30%), màu Sky Blue/Light Gold/Cloud White/Space Black; chống nước/bụi IP68 (sâu 6m/30 phút), eSIM-only toàn cầu, USB-C, nút Action tùy chỉnh\r\nPin 3149mAh \"trâu\" lên đến 27 giờ xem video (cải thiện 15% so với thế hệ trước), sạc nhanh 50% trong 30 phút (25W), sạc không dây MagSafe 25W\r\nDung lượng 256GB (base mới, lý tưởng cho người dùng nặng như quay 4K, ảnh RAW), hỗ trợ 5G sub-6GHz/mmWave, Face ID, Emergency SOS via satellite, Crash Detection, modem C1X tự thiết kế\r\nGiá chính hãng VN/A hiện tại khoảng 24–26 triệu VND (tùy cửa hàng như FPT Shop, The Gioi Di Dong), bảo hành 12 tháng Apple; ra mắt 19/9/2025, model A3517 (International)\r\n\r\niPhone Air 256GB chính hãng – \"siêu mỏng, siêu nhẹ\" thay thế dòng Plus, với thiết kế titanium đột phá và hiệu năng Pro – lựa chọn \"bay bổng\" năm 2025 cho ai muốn iPhone hiện đại giá $999 mà vẫn đỉnh cao từ Apple!1,3 giâyFastiPad Air 5 10.9 inch (2022) WIFI 64GB I Chính hãng Apple Việt NamiPad Air 5 10.9 inch (2022) WiFi 64GB Chính hãng Apple Việt Nam – Mô tả ngắn gọn (2025):\r\n\r\nMàn hình Liquid Retina IPS 10.9 inch, độ phân giải 2360 x 1640 (264 ppi), True Tone, P3 wide color, sáng tối đa 500 nits, chống phản chiếu, hỗ trợ Apple Pencil (thế hệ 2) và Magic Keyboard\r\nChip A15 Bionic (5 lõi CPU, 4 lõi GPU, Neural Engine 16 lõi) – hiệu năng mạnh mẽ cho chỉnh sửa video 4K, game nặng, đa nhiệm mượt mà, hỗ trợ iPadOS 18+ (cập nhật đến iPadOS 26+)\r\nCamera sau 12MP (góc rộng, ƒ/1.8, 4K video 60fps, Center Stage), camera trước 12MP Ultra Wide (landscape-oriented, Center Stage tự động); hỗ trợ Smart HDR 3, Night mode\r\nThiết kế nhôm aluminum cao cấp, mỏng 6.1mm, nặng 461g, màu Space Gray/Blue/Purple/Starlight; chống nước/bụi IP0 (không chính thức), Touch ID trong nút nguồn, USB-C (sạc nhanh 20W)\r\nPin 28.6Wh dùng thoải mái 10 giờ web/video, sạc đầy ~2 giờ (20W adapter)\r\nDung lượng 64GB cơ bản (phù hợp người dùng nhẹ, lưu ảnh/video cơ bản), WiFi 6 (802.11ax), Bluetooth 5.0, eSIM không hỗ trợ (chỉ WiFi), không 5G\r\nGiá chính hãng VN/A hiện tại khoảng 10.5–11.5 triệu VND (tùy cửa hàng như FPT Shop, The Gioi Di Dong, CellphoneS), bảo hành 12 tháng Apple\r\n\r\niPad Air 5 10.9\" WiFi 64GB chính hãng – \"Air\" thực thụ với thiết kế mỏng nhẹ, chip A15 \"trâu\" và màn đẹp, vẫn đáng mua năm 2025 nếu bạn cần iPad giá rẻ cho học tập/giải trí cơ bản từ Apple!1 / 21,5 giâyiPad Air 6 M2 13 inch Wifi 128GB I Chính hãng Apple Việt NamiPad Air 6 M2 13 inch WiFi 128GB Chính hãng Apple Việt Nam – Mô tả ngắn gọn (2025):\r\n\r\nMàn hình Liquid Retina IPS LED-backlit 13 inch, độ phân giải 2732 x 2048 (264 ppi), True Tone, P3 wide color, sáng tối đa 600 nits, chống phản chiếu, hỗ trợ Apple Pencil Pro và Apple Pencil (USB-C), Magic Keyboard\r\nChip M2 mạnh mẽ với CPU 8 lõi, GPU 10 lõi, Neural Engine 16 lõi – hiệu năng vượt trội cho chỉnh sửa video 4K, game nặng, đa nhiệm mượt mà, hỗ trợ Apple Intelligence (AI Writing Tools, Image Wand), iPadOS 18+ (cập nhật đến iPadOS 26+)\r\nCamera sau 12MP (góc rộng, ƒ/1.8, 4K video 60fps, Center Stage), camera trước 12MP Ultra Wide (landscape-oriented, Center Stage); hỗ trợ Smart HDR 4, Night mode, panorama\r\nThiết kế nhôm aluminum cao cấp, mỏng 6.1mm, nặng 617g, màu Blue/Purple/Space Gray/Starlight; Touch ID trong nút nguồn, USB-C (Thunderbolt/USB 4 tốc độ 10Gbps, hỗ trợ DisplayPort), WiFi 6E (802.11ax), Bluetooth 5.3\r\nPin 36.6Wh dùng thoải mái 10 giờ web/video, sạc nhanh ~2 giờ (20W adapter)\r\nDung lượng 128GB phù hợp người dùng trung bình (lưu ảnh/video, app cơ bản), chỉ WiFi (không 5G)\r\nGiá chính hãng VN/A hiện tại khoảng 18.5–19.9 triệu VND (tùy cửa hàng như FPT Shop, The Gioi Di Dong, CellphoneS), bảo hành 12 tháng Apple\r\n\r\niPad Air 6 M2 13\" WiFi 128GB chính hãng – \"siêu phẩm mỏng nhẹ\" với màn lớn, chip M2 \"trâu\" và AI thông minh, vẫn đáng mua năm 2025 cho sáng tạo/học tập/giải trí từ Apple, dù có tin đồn M3 sắp ra!1,5 giâyFastiPad Air 11 inch M3 Wifi 128GB 2025 Chính hãng Apple Việt NamiPad Air 11 inch M3 WiFi 128GB (2025) Chính hãng Apple Việt Nam – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình Liquid Retina IPS LED-backlit 11 inch, độ phân giải 2360 x 1640 (264 ppi), True Tone, P3 wide color, sáng tối đa 600 nits, chống phản chiếu, hỗ trợ Apple Pencil Pro và Apple Pencil (USB-C), Magic Keyboard mới (giá 269 USD cho 11 inch)\r\nChip M3 mạnh mẽ với CPU 8 lõi, GPU 10 lõi, Neural Engine 16 lõi – hiệu năng vượt trội cho chỉnh sửa video 4K, game nặng, đa nhiệm mượt mà, hỗ trợ Apple Intelligence (AI Writing Tools, Image Wand, Clean Up), iPadOS 18.3.2+ (cập nhật đến iPadOS 26.1+)\r\nCamera sau 12MP (góc rộng, ƒ/1.8, 4K video 60fps, Center Stage), camera trước 12MP Ultra Wide (landscape-oriented, Center Stage); hỗ trợ Smart HDR 4, Night mode, panorama\r\nThiết kế nhôm aluminum cao cấp, mỏng 6.1mm, nặng 460g, màu Blue/Purple/Space Gray/Starlight; Touch ID trong nút nguồn, USB-C (Thunderbolt/USB 4 tốc độ 10Gbps, hỗ trợ DisplayPort), WiFi 6E (802.11ax), Bluetooth 5.3\r\nPin 28.6Wh dùng thoải mái 10 giờ web/video, sạc nhanh ~2 giờ (20W adapter)\r\nDung lượng 128GB phù hợp người dùng trung bình (lưu ảnh/video, app cơ bản), chỉ WiFi (không 5G)\r\nGiá chính hãng VN/A hiện tại khoảng 15.4–16.5 triệu VND (tùy cửa hàng như FPT Shop, The Gioi Di Dong, CellphoneS, Apple Store), bảo hành 12 tháng Apple; ra mắt 4/3/2025, phát hành 12/3/2025\r\n\r\niPad Air 11\" M3 WiFi 128GB chính hãng – \"siêu phẩm mỏng nhẹ\" với chip M3 \"khủng\" và AI thông minh, đáng mua cuối 2025 cho sáng tạo/học tập/giải trí từ Apple, giá khởi điểm 599 USD!1,9 giâyFastiPad Pro chip M5 11 inch Wifi 256GB Chính hãng Apple Việt NamiPad Pro M5 11 inch WiFi 256GB Chính hãng Apple Việt Nam – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình Ultra Retina XDR Tandem OLED 11 inch, độ phân giải 2420 x 1668 (264 ppi), ProMotion 120Hz thích ứng (10-120Hz), Always-On Display, sáng tối đa 1000 nits SDR / 1600 nits XDR full screen / 2000 nits peak (HDR), chống phản chiếu nano-texture tùy chọn, hỗ trợ Apple Pencil Pro và Magic Keyboard\r\nChip M5 \"khủng\" với CPU 9 lõi (3 performance + 6 efficiency), GPU 10 lõi, Neural Engine 16 lõi – hiệu năng vượt trội cho chỉnh sửa video 8K, game ray tracing, AI Apple Intelligence (LLM token generation, generative imagery), iPadOS 26 (cập nhật đến iPadOS 26.1+), RAM 12GB LPDDR5X-7500\r\nCamera sau 12MP (góc rộng, ƒ/1.8, 4K video 120fps, Center Stage), camera trước 12MP Ultra Wide (landscape-oriented, Center Stage); hỗ trợ Smart HDR 5, Night mode, LiDAR Scanner cho AR\r\nThiết kế nhôm aluminum cao cấp, siêu mỏng 5.3mm, nặng 444g, màu Silver/Space Black; Touch ID trong nút nguồn, USB-C (Thunderbolt/USB 4 tốc độ 40Gbps, hỗ trợ DisplayPort), WiFi 7 (802.11be), Bluetooth 5.3\r\nPin 31.29Wh dùng thoải mái 10 giờ web/video, sạc nhanh ~2 giờ (40W adapter, hỗ trợ 70W)\r\nDung lượng 256GB phù hợp người dùng trung bình đến nặng (lưu video 4K, app sáng tạo), chỉ WiFi (không 5G), model A3357 (VN/A)\r\nGiá chính hãng VN/A hiện tại khoảng 26–27 triệu VND (tương đương $999 USD, tùy cửa hàng như FPT Shop, The Gioi Di Dong, CellphoneS, Apple Store), bảo hành 12 tháng Apple; ra mắt 15/10/2025, phát hành 22/10/2025\r\n\r\niPad Pro M5 11\" WiFi 256GB chính hãng – \"siêu phẩm mỏng nhất thế giới\" với OLED đỉnh cao, chip M5 \"bay\" và AI đột phá, đáng mua cuối 2025 cho sáng tạo chuyên nghiệp từ Apple!', 6, 1),
(20, 'Máy tính bảng iPad mini 7 WiFi 128GB', '26500000.00', '22999999.00', './uploads/1765196521-ipad-mini-7-wifi-purple-1-638651174600667416-750x500.jpg', 21, 0, '2025-12-08', 'iPad mini 7 8.3 inch WiFi 128GB Chính hãng Apple Việt Nam – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình Liquid Retina IPS 8.3 inch, độ phân giải 2266 x 1488 (326 ppi), True Tone, P3 wide color, sáng tối đa 500 nits, chống phản chiếu, hỗ trợ Apple Pencil Pro và Apple Pencil (USB-C)\r\nChip A17 Pro mạnh mẽ với CPU 6 lõi, GPU 5 lõi, Neural Engine 16 lõi – hiệu năng vượt trội cho chỉnh sửa video 4K, game nặng, đa nhiệm mượt mà, hỗ trợ Apple Intelligence (AI Writing Tools, Image Playground, Siri nâng cao), iPadOS 18+ (cập nhật đến iPadOS 26+)\r\nCamera sau 12MP (góc rộng, ƒ/1.8, 4K video 60fps, Center Stage), camera trước 12MP Ultra Wide (landscape-oriented, Center Stage); hỗ trợ Smart HDR 4, Night mode\r\nThiết kế nhôm aluminum cao cấp, mỏng 6.3mm, nặng 293g, màu Space Gray/Starlight/Blue/Purple; Touch ID trong nút nguồn, USB-C (tốc độ 10Gbps, hỗ trợ DisplayPort), WiFi 6E (802.11ax), Bluetooth 5.3\r\nPin 5078mAh dùng thoải mái 10 giờ web/video, sạc nhanh ~2 giờ (20W adapter)\r\nDung lượng 128GB (gấp đôi thế hệ trước, phù hợp người dùng trung bình), chỉ WiFi (không 5G)\r\nGiá chính hãng VN/A hiện tại khoảng 13.9–14.5 triệu VND (tương đương $499 USD, tùy cửa hàng như FPT Shop, The Gioi Di Dong, CellphoneS), bảo hành 12 tháng Apple; ra mắt 23/10/2024\r\n\r\niPad mini 7 WiFi 128GB chính hãng – \"siêu phẩm nhỏ gọn\" với chip A17 Pro \"khủng\", AI thông minh và thiết kế mỏng nhẹ, đáng mua cuối 2025 cho đọc sách/du lịch/giải trí từ Apple!', 6, 1),
(21, 'Máy tính bảng Masstel Tab 11 Ultra 4G 4GB128GB', '30000000.00', '27999999.00', './uploads/1765196682-masstel-tab-11-ultra-4gb-128gb-xanh-1-638883685424010773-750x500.jpg', 100, 0, '2025-12-08', 'Masstel Tab 11 Ultra 4G 4GB/128GB – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình IPS LCD 10.95 inch, độ phân giải Full HD+ (1200 x 1920), tần số quét 60Hz, viền mỏng, hiển thị sắc nét, lý tưởng cho xem phim, học online, đọc tài liệu\r\nChip Unisoc T606 (8 nhân, 2x Cortex-A75 1.6GHz + 6x Cortex-A55), GPU Mali-G57 – hiệu năng ổn định cho học tập (Zoom, Google Meet), giải trí (YouTube 1080p, game nhẹ như Liên Quân cấu hình thấp), chạy Android 15 thuần Google\r\nCamera: Sau 13MP (autofocus, flash LED), trước 5MP – đủ cho chụp ảnh cơ bản, gọi video, học trực tuyến\r\nThiết kế nhôm nhám mờ + khung nhựa, mỏng 7.9mm, nặng ~500g, màu Xanh/Vàng trẻ trung; hỗ trợ 4G LTE (khe SIM), WiFi 5, Bluetooth 5.0, khe microSD (tối đa 1TB)\r\nPin 8000mAh dùng liên tục 8–10 giờ, sạc nhanh 18W qua USB-C\r\nBộ nhớ: 4GB RAM + 128GB ROM – phù hợp lưu trữ tài liệu, ứng dụng học tập, video cơ bản\r\nGiá chính hãng VN hiện tại khoảng 3.3–3.99 triệu VND (tùy cửa hàng như Đức Huy Mobile, FPT Shop, Viettablet), bảo hành 12 tháng, chính sách 1 đổi 1 trong 7–100 ngày (tùy nơi)  \r\n\r\nKết luận một câu: Masstel Tab 11 Ultra 4G 4GB/128GB là tablet giá rẻ “đỉnh” cho học sinh, sinh viên với pin “khủng”, màn lớn, kết nối 4G và hiệu năng mượt mà trong tầm giá dưới 4 triệu VND năm 2025!', 6, 1),
(22, 'Máy tính bảng OPPO Pad 3 8GB256GB', '23000000.00', '21000000.00', './uploads/1765196793-oppo-pad-3-bac-1-638752291535045860-750x500.jpg', 12, 0, '2025-12-08', 'Máy tính bảng OPPO Pad 3 8GB/256GB – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình IPS LCD 11.61 inch, độ phân giải 2.8K (2800 x 2000, 296 ppi), tần số quét 144Hz thích ứng, sáng tối đa 700 nits, hỗ trợ chống phản chiếu (matte edition), True Tone, P3 wide color, lý tưởng cho xem phim, vẽ vời với OPPO Pencil 2\r\nChip MediaTek Dimensity 8350 (4nm, octa-core lên đến 3.35GHz), GPU Mali-G615 MC6 – hiệu năng mạnh mẽ cho đa nhiệm, chỉnh sửa video 4K, game nặng (Genshin Impact max setting), RAM 8GB LPDDR5X (mở rộng ảo lên 16GB), hỗ trợ ColorOS 15 dựa Android 15 (cập nhật đến Android 17+)\r\nCamera: Sau 8MP (ƒ/2.0, AF, 4K video 30fps), trước 8MP (ƒ/2.0) – đủ cho gọi video, scan tài liệu, Center Stage tự động\r\nThiết kế kim loại unibody cao cấp, mỏng 6.3mm, nặng 536g, màu Silver (matte edition chống lóa); chống nước/bụi IP52, USB-C 3.2 (OTG), WiFi 6, Bluetooth 5.4, không khe microSD\r\nPin 9520mAh \"khủng\" dùng thoải mái 12–14 giờ (web/video), sạc nhanh 67W SUPERVOOC (đầy 100% trong ~80 phút)\r\nBộ nhớ 256GB UFS 4.0 phù hợp người dùng trung bình đến nặng (lưu phim 4K, app sáng tạo), quad speakers Dolby Atmos sống động\r\nGiá chính hãng VN hiện tại khoảng 10.5–11 triệu VND (tùy cửa hàng như Đức Huy Mobile, Viettablet, FPT Shop), bảo hành 12 tháng OPPO; ra mắt 29/11/2024\r\n\r\nOPPO Pad 3 8GB/256GB – tablet \"mid-range đỉnh cao\" với màn lớn mượt mà, pin trâu và hiệu năng cân bằng, đáng mua cuối 2025 cho giải trí/sáng tạo giá \"ngon\" từ OPPO!', 6, 1),
(23, 'Máy tính bảng Samsung Galaxy Tab S10+ WiFi 12GB256GB', '22000000.00', '19999999.00', './uploads/1765197062-samsung-galaxy-tab-s10-plus-gray-2-638629870745557501-750x500.jpg', 1, 0, '2025-12-08', 'Máy tính bảng Samsung Galaxy Tab S10+ WiFi 12GB/256GB – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình Dynamic AMOLED 2X 12.4 inch, độ phân giải 2800 x 1752 (QHD+, 266 ppi), tần số quét 120Hz thích ứng, HDR10+, sáng tối đa 650 nits, chống phản chiếu, hỗ trợ S Pen (màn hình chống phản chiếu chống lóa), lý tưởng cho xem phim, vẽ vời, làm việc\r\nChip MediaTek Dimensity 9300+ (4nm, octa-core lên đến 3.4GHz), GPU Immortalis-G720 – hiệu năng mạnh mẽ cho đa nhiệm, chỉnh sửa video 4K, game nặng (Genshin Impact max setting), RAM 12GB LPDDR5X (mở rộng ảo lên 24GB), hỗ trợ Galaxy AI (Note Assist, Sketch to Image, Circle to Search), Android 15 với One UI 7 (cập nhật đến Android 19+)\r\nCamera: Sau 13MP (ƒ/2.0, AF, 4K video 60fps), trước 12MP (ƒ/2.2, 4K 60fps) – đủ cho gọi video, scan tài liệu, Center Stage tự động\r\nThiết kế kim loại cao cấp, mỏng 5.6mm, nặng 571g, màu Moonstone Gray/Platinum Silver; chống nước/bụi IP68 (sâu 1.5m/30 phút), USB-C 3.2 (OTG), WiFi 7 (802.11be), Bluetooth 5.3, quad speakers AKG Dolby Atmos, không khe microSD\r\nPin 10090mAh \"khủng\" dùng thoải mái 14–16 giờ (web/video), sạc nhanh 45W (đầy 100% trong ~90 phút)\r\nBộ nhớ 256GB UFS 4.0 phù hợp người dùng trung bình đến nặng (lưu phim 4K, app sáng tạo)\r\nGiá chính hãng VN hiện tại khoảng 15–15.9 triệu VND (tùy cửa hàng như Viettablet, PhucAnh, FPT Shop, Samsung Store), bảo hành 12 tháng Samsung; ra mắt 18/9/2025\r\n\r\nSamsung Galaxy Tab S10+ WiFi 12GB/256GB – tablet \"flagship mỏng nhẹ\" với màn AMOLED đỉnh cao, AI thông minh và pin trâu, đáng mua cuối 2025 cho giải trí/sáng tạo giá \"ngon\" từ Samsung!', 6, 1),
(24, 'Máy tính bảng Xiaomi Redmi Pad 2 WiFi 4GB128GB', '28900000.00', '26999999.00', './uploads/1765197163-xiaomi-redmi-pad-2-wifi-xam-1-638889722791105651-750x500.jpg', 4, 0, '2025-12-08', 'Máy tính bảng Xiaomi Redmi Pad 2 WiFi 4GB/128GB – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình IPS LCD 11 inch, độ phân giải 2.5K (2560 x 1600, 274 ppi), tần số quét 90Hz mượt mà, sáng tối đa 600 nits, hỗ trợ 1 tỷ màu, True Tone, chống phản chiếu, lý tưởng cho xem phim, đọc sách, vẽ vời với Redmi Smart Pen (tùy chọn)\r\nChip MediaTek Helio G100 Ultra (6nm, octa-core lên đến 2.2GHz), GPU Mali-G57 MC2 – hiệu năng ổn định cho đa nhiệm, chỉnh sửa ảnh/video cơ bản, game nhẹ (PUBG Mobile medium setting), RAM 4GB LPDDR4X (mở rộng ảo lên 8GB), hỗ trợ HyperOS 2 dựa Android 15 (cập nhật đến Android 17+)\r\nCamera: Sau 8MP (ƒ/2.0, AF, 1080p video 30fps), trước 5MP (ƒ/2.2) – đủ cho gọi video, scan tài liệu, Center Stage tự động\r\nThiết kế kim loại unibody cao cấp, mỏng 7.36mm, nặng 510g, màu Graphite Gray/Mint Green/Lavender Purple; chống nước/bụi IP52, USB-C 3.2 (OTG), WiFi 6 (802.11ax), Bluetooth 5.2, khe microSD (tối đa 2TB), quad speakers Dolby Atmos\r\nPin 9000mAh \"khủng\" dùng thoải mái 12–14 giờ (web/video), sạc nhanh 18W (đầy 100% trong ~2.5 giờ)\r\nBộ nhớ 128GB UFS 2.2 phù hợp người dùng cơ bản đến trung bình (lưu phim 1080p, app học tập), hỗ trợ AI cơ bản (Note Assist, Smart Sidebar)\r\nGiá chính hãng VN hiện tại khoảng 5.29–5.99 triệu VND (tùy cửa hàng như Đức Huy Mobile, Viettablet, FPT Shop, CellphoneS), bảo hành 18 tháng Xiaomi; ra mắt 5/6/2025\r\n\r\nXiaomi Redmi Pad 2 WiFi 4GB/128GB – tablet \"giá rẻ đỉnh cao\" với màn lớn sắc nét, pin trâu và thiết kế mỏng nhẹ, đáng mua cuối 2025 cho học tập/giải trí cơ bản từ Xiaomi!', 6, 1),
(25, 'Laptop Acer Aspire Lite 14 AL14-71M-52GQ', '25699000.00', '24999999.00', './uploads/1765197321-text_ng_n_14_8.webp', 12, 0, '2025-12-08', 'Laptop Acer Aspire Lite 14 AL14-71M-52GQ – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình IPS 14 inch WUXGA (1920 x 1200, 16:10), độ sáng 300 nits, góc nhìn rộng 178°, Acer ComfyView chống chói, lý tưởng cho làm việc văn phòng, học tập, xem phim với hình ảnh sắc nét và màu sắc trung thực\r\nChip Intel Core i5-12500H (12 nhân/16 luồng, xung nhịp turbo 4.5GHz, Alder Lake Gen 12) – hiệu năng mạnh mẽ cho đa nhiệm nặng, chỉnh sửa ảnh/video cơ bản, game nhẹ (CS:GO, League of Legends medium setting), hỗ trợ Windows 11 Home (cập nhật đến Windows 12+)\r\nĐồ họa Intel Iris Xe tích hợp (80EU) – xử lý tốt đồ họa 2D/3D, hỗ trợ 4K output qua HDMI 2.1\r\nThiết kế nhôm bạc cao cấp, mỏng 17.9mm, nặng chỉ 1.39kg, dễ mang theo; bàn phím chiclet thoải mái, trackpad lớn, cổng kết nối: 2x USB-A 3.2, 1x USB-C (PD + DP), HDMI 2.1, jack 3.5mm, WiFi 6, Bluetooth 5.2\r\nPin 50Wh dùng thoải mái 7–9 giờ (web/video), sạc nhanh 65W qua USB-C\r\nBộ nhớ: RAM 16GB DDR5-4800 (dual-channel, nâng cấp tối đa 32GB), SSD 512GB PCIe NVMe (mở rộng dễ dàng), phù hợp lưu trữ tài liệu, phần mềm văn phòng\r\nGiá chính hãng VN/A hiện tại khoảng 14.5–14.99 triệu VND (tùy cửa hàng như CellphoneS, An Khang, CP-Hub, Tinhocngoisao), bảo hành 24 tháng Acer VIP 3S1 (3 ngày sửa chữa)\r\n\r\nLaptop Acer Aspire Lite 14 AL14-71M-52GQ – \"siêu mỏng nhẹ hiệu năng cao\" với i5 H-series \"khủng\" trong tầm giá dưới 15 triệu, đáng mua cuối 2025 cho sinh viên/dân văn phòng cần máy mạnh mẽ, di động từ Acer!', 5, 1);
INSERT INTO `san_phams` (`id`, `ten_san_pham`, `gia_san_pham`, `gia_khuyen_mai`, `hinh_anh`, `so_luong`, `luot_xem`, `ngay_nhap`, `mo_ta`, `danh_muc_id`, `trang_thai`) VALUES
(26, 'Laptop ASUS Gaming V16 V3607VM-RP044W', '23500000.00', '20999999.00', './uploads/1765197436-text_ng_n_15_15_1.webp', 56, 0, '2025-12-08', 'Laptop ASUS Gaming V16 V3607VM-RP044W – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình IPS 16 inch WUXGA (1920 x 1200, 16:10), tần số quét 144Hz mượt mà, độ sáng 300 nits, 45% NTSC, chống chói, lý tưởng cho gaming, chỉnh sửa video, xem phim với hình ảnh sắc nét và màu sắc sống động\r\nChip Intel Core 7-240H (10 nhân/16 luồng, 24MB cache, base 2.5GHz turbo lên 5.2GHz, Series 2 Meteor Lake) – hiệu năng mạnh mẽ cho game nặng (Genshin Impact ultra, Cyberpunk 2077 medium), chỉnh sửa 4K, đa nhiệm, hỗ trợ Windows 11 Home (cập nhật đến Windows 12+)\r\nĐồ họa NVIDIA GeForce RTX 5060 8GB GDDR7 – ray tracing, DLSS 3.5, xử lý đồ họa đỉnh cao, hỗ trợ AI cho sáng tạo và gaming\r\nThiết kế nhựa đen cao cấp, mỏng ~19mm, nặng 1.95kg, dễ mang theo; bàn phím Chiclet backlit RGB với Num-key, touchpad lớn chống vân tay, cổng kết nối: 2x USB-A 3.2, 1x USB-C (Thunderbolt 4), HDMI 2.1, jack 3.5mm, WiFi 7, Bluetooth 5.4\r\nPin 63Wh dùng thoải mái 5–7 giờ (web/video), sạc nhanh 100W qua USB-C\r\nBộ nhớ: RAM 16GB DDR5-5600 (dual-channel, nâng cấp tối đa 32GB), SSD 1TB M.2 NVMe PCIe 4.0 (mở rộng dễ dàng), phù hợp lưu trữ game lớn, file sáng tạo\r\nGiá chính hãng VN/A hiện tại khoảng 30.5–32.5 triệu VND (tùy cửa hàng như ASUS Store, CellphoneS, FPT Shop, GearVN), bảo hành 24 tháng ASUS Premium Care (3S1: sửa trong 3 ngày)\r\n\r\nLaptop ASUS Gaming V16 V3607VM-RP044W – \"gaming mỏng nhẹ AI\" với Core 7 \"khủng\" và RTX 5060 đỉnh cao, đáng mua cuối 2025 cho game thủ/sinh viên cần máy mạnh mẽ, di động từ ASUS!', 5, 1),
(29, 'Laptop ASUS Vivobook S16 S3607QA-SH040WS', '29999999.00', '25999999.00', './uploads/1765197586-text_ng_n_2__9_252.webp', 23, 0, '2025-12-08', 'Laptop ASUS Vivobook S16 S3607QA-SH040WS – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình IPS WUXGA 16.0 inch (1920 x 1200, 16:10), tần số quét 60Hz, độ sáng 300 nits, 95% DCI-P3, 1.07 tỷ màu, độ tương phản 1,000,000:1, glossy display, lý tưởng cho xem phim, làm việc văn phòng, học tập với hình ảnh sắc nét và màu sắc sống động\r\nChip Snapdragon® X X1 26 100 (8 lõi/8 luồng, up to 2.97GHz, 30MB cache) + Qualcomm® Hexagon™ NPU up to 45TOPS – hiệu năng mạnh mẽ cho đa nhiệm AI (Copilot+ PC, Writing Tools, Image Playground), chỉnh sửa ảnh/video cơ bản, game nhẹ, hỗ trợ Windows 11 Home (cập nhật đến Windows 12+)\r\nĐồ họa tích hợp Qualcomm® Adreno™ GPU – xử lý tốt đồ họa 2D/3D, hỗ trợ 4K output qua HDMI 2.1\r\nThiết kế nhôm + nhựa cao cấp, mỏng 14.7mm, nặng chỉ 1.74kg, màu Xám Matte Gray; bàn phím Chiclet backlit với phím số, touchpad lớn, cổng kết nối: 2x USB-A 3.2, 1x USB-C (Thunderbolt 4), HDMI 2.1, jack 3.5mm, WiFi 7, Bluetooth 5.4\r\nPin 70Wh dùng thoải mái 18–20 giờ (web/video), sạc nhanh 65W qua USB-C\r\nBộ nhớ: RAM 16GB LPDDR5X on board (không nâng cấp), SSD 512GB M.2 NVMe™ PCIe® 4.0 (mở rộng dễ dàng), phù hợp lưu trữ tài liệu, phần mềm văn phòng, kèm Microsoft Office Home 2024 + 1 năm Microsoft 365 Basic\r\nGiá chính hãng VN/A hiện tại khoảng 19.3–19.9 triệu VND (tùy cửa hàng như ASUS Store, CellphoneS, An Phát PC, FPT Shop), bảo hành 24 tháng ASUS Premium Care (3S1: sửa trong 3 ngày)\r\n\r\nLaptop ASUS Vivobook S16 S3607QA-SH040WS – \"Copilot+ PC mỏng nhẹ AI\" với Snapdragon X \"khủng\", pin \"trâu\" và màn lớn, đáng mua cuối 2025 cho sinh viên/dân văn phòng cần máy thông minh, di động từ ASUS!', 5, 1),
(30, 'Laptop Dell 15 DC15255 DC5R5802W1', '23000000.00', '21500000.00', './uploads/1765197745-text_ng_n_2__10_145.webp', 23, 0, '2025-12-08', 'Laptop Dell 15 DC15255 (DC5R5802W1) – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình IPS 15.6 inch Full HD (1920 x 1080), tần số quét 120Hz mượt mà, độ sáng 250 nits, ComfortView giảm ánh sáng xanh bảo vệ mắt, góc nhìn rộng 178°, lý tưởng cho làm việc văn phòng, học tập, xem phim với hình ảnh sắc nét và ít mỏi mắt\r\nChip AMD Ryzen 5 7530U (6 nhân/12 luồng, base 2.0GHz turbo lên 4.5GHz, 16MB cache, tiến trình 7nm) – hiệu năng mạnh mẽ cho đa nhiệm, chỉnh sửa tài liệu/video cơ bản, game nhẹ (LOL, Valorant medium setting), hỗ trợ Windows 11 Home (cập nhật đến Windows 12+)\r\nĐồ họa AMD Radeon Graphics tích hợp – xử lý tốt đồ họa 2D/3D, hỗ trợ 4K output qua HDMI 1.4\r\nThiết kế nhựa bạc cao cấp, mỏng 17mm, nặng chỉ 1.63kg, dễ mang theo; bàn phím chiclet thoải mái, touchpad lớn, cổng kết nối: 2x USB-A 3.2, 1x USB-C (sạc 65W + DP), HDMI 1.4, khe SD, jack 3.5mm, WiFi 6, Bluetooth 5.2\r\nPin 41Wh dùng thoải mái 6–8 giờ (web/video), sạc nhanh 65W qua USB-C\r\nBộ nhớ: RAM 16GB DDR4-3200 (on board, tối đa 16GB), SSD 512GB M.2 NVMe (mở rộng dễ dàng), phù hợp lưu trữ tài liệu, phần mềm văn phòng, kèm Office Home 2024 + 1 năm Microsoft 365\r\nGiá chính hãng VN/A hiện tại khoảng 12.5–13.5 triệu VND (tùy cửa hàng như FPT Shop, Phong Vũ, CellphoneS, An Khang), bảo hành 12 tháng Dell\r\n\r\nLaptop Dell 15 DC15255 DC5R5802W1 – \"doanh nhân mỏng nhẹ giá rẻ\" với Ryzen 5 \"trâu\" và màn 120Hz hiếm có, đáng mua cuối 2025 cho sinh viên/dân văn phòng cần máy ổn định, di động từ Dell!', 5, 1),
(31, 'Laptop Dell Inspiron 15 3530 J9XFD - Nhập khẩu chính hãng', '18000000.00', '16500000.00', './uploads/1765197828-text_ng_n_7__4_161.webp', 65, 0, '2025-12-08', 'Laptop Dell Inspiron 15 3530 J9XFD Nhập khẩu chính hãng – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình IPS LED-backlit 15.6 inch Full HD (1920 x 1080), tần số quét 120Hz mượt mà, độ sáng 250 nits, chống chói ComfortView (giảm ánh sáng xanh 35%), góc nhìn rộng 178°, hỗ trợ cảm ứng touchscreen, lý tưởng cho làm việc văn phòng, học tập, xem phim với hình ảnh sắc nét và mượt mà\r\nChip Intel Core i5-1335U thế hệ 13 (10 nhân/12 luồng, base 1.3GHz turbo lên 4.6GHz, 12MB cache, tiến trình 10nm) – hiệu năng mạnh mẽ cho đa nhiệm, chỉnh sửa tài liệu/video cơ bản, game nhẹ (LOL, Valorant medium setting), hỗ trợ Windows 11 Home (cập nhật đến Windows 12+)\r\nĐồ họa Intel Iris Xe tích hợp (80EU) – xử lý tốt đồ họa 2D/3D, hỗ trợ 4K output qua HDMI 1.4\r\nThiết kế nhựa Carbon Black cao cấp, mỏng 17.99mm, nặng 1.66kg, dễ mang theo; bàn phím chiclet thoải mái (backlit tùy chọn), touchpad lớn, cổng kết nối: 2x USB-A 3.2, 1x USB-C (sạc 65W + DP), HDMI 1.4, khe SD, jack 3.5mm, WiFi 6 (802.11ax), Bluetooth 5.2\r\nPin 40Wh dùng thoải mái 6–8 giờ (web/video), sạc nhanh 65W qua USB-C\r\nBộ nhớ: RAM 8GB DDR4-3200 (on board, tối đa 16GB), SSD 512GB PCIe NVMe (mở rộng dễ dàng), phù hợp lưu trữ tài liệu, phần mềm văn phòng, kèm Microsoft Office Home & Student 2021\r\nGiá nhập khẩu chính hãng (từ Mỹ, full box, hóa đơn rõ ràng) hiện tại khoảng 13.5–14.5 triệu VND (tùy cửa hàng như CellphoneS, Gia Thụy Store, LaptopVIP, Hưng Phát Laptop), bảo hành 12 tháng Dell (1 đổi 1 trong 30 ngày nếu lỗi)\r\n\r\nLaptop Dell Inspiron 15 3530 J9XFD nhập khẩu chính hãng – \"doanh nhân mỏng nhẹ giá tốt\" với i5-13th Gen \"trâu\", màn 120Hz cảm ứng và thiết kế thanh lịch, đáng mua cuối 2025 cho sinh viên/dân văn phòng cần máy ổn định, di động từ Dell!', 5, 1),
(32, 'Laptop Gaming Acer Nitro V 15 ProPanel ANV15-41-R7AP', '35000000.00', '33500000.00', './uploads/1765197893-text_ng_n_1__6_108.webp', 45, 0, '2025-12-08', 'Laptop Gaming Acer Nitro V 15 ProPanel ANV15-41-R7AP – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình IPS 15.6 inch Full HD (1920 x 1080), tần số quét 180Hz mượt mà, độ sáng 300 nits, 100% sRGB, Acer ComfyView chống chói, lý tưởng cho gaming, chỉnh sửa video với hình ảnh sắc nét, màu sắc sống động và ít ghosting\r\nChip AMD Ryzen 5 7535HS (6 nhân/12 luồng, base 3.3GHz turbo lên 4.55GHz, 16MB cache, Zen 3+ Rembrandt Refresh) – hiệu năng mạnh mẽ cho game nặng (Genshin Impact high, Valorant ultra), đa nhiệm, chỉnh sửa 4K cơ bản, hỗ trợ Windows 11 Home (cập nhật đến Windows 12+)\r\nĐồ họa NVIDIA GeForce RTX 2050 4GB GDDR6 – ray tracing, DLSS, xử lý đồ họa đỉnh cao cho gaming entry-level, hỗ trợ 4K output qua HDMI 2.1\r\nThiết kế nhựa đen cao cấp với logo Nitro mới, mỏng 23.9mm, nặng 2.1kg; bàn phím chiclet backlit RGB 4 vùng, touchpad lớn, cổng kết nối: 1x USB-C (Thunderbolt 4), 3x USB-A 3.2, HDMI 2.1, jack 3.5mm, WiFi 6E, Bluetooth 5.2, tản nhiệt kép 2 quạt + 2 ống đồng\r\nPin 57Wh dùng thoải mái 4–6 giờ (web/video), sạc nhanh 135W (đầy 50% trong 30 phút)\r\nBộ nhớ: RAM 16GB DDR5-4800 (2x8GB, nâng cấp tối đa 64GB), SSD 512GB PCIe NVMe (mở rộng 2 khe), phù hợp lưu trữ game lớn, file sáng tạo\r\nGiá chính hãng VN/A hiện tại khoảng 22.5–22.6 triệu VND (tùy cửa hàng như Acer Store, An Phát PC, Phong Vũ, LaptopAZ), bảo hành 24 tháng Acer VIP 3S1 (3 ngày sửa chữa)\r\n\r\nLaptop Gaming Acer Nitro V 15 ProPanel ANV15-41-R7AP – \"gaming entry mạnh mẽ\" với Ryzen 5 \"trâu\", RTX 2050 mượt và màn 180Hz đỉnh cao, đáng mua cuối 2025 cho game thủ mới/budget dưới 23 triệu từ Acer!', 5, 1),
(33, 'Laptop Lenovo LOQ 15IAX9E 83LK0079VN', '27000000.00', '25500000.00', './uploads/1765197962-text_ng_n_6__4_24.webp', 45, 0, '2025-12-08', 'Laptop Lenovo LOQ 15IAX9E 83LK0079VN – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình IPS 15.6 inch Full HD (1920 x 1080), tần số quét 144Hz mượt mà, độ sáng 300 nits, 100% sRGB, Acer ComfyView chống chói, lý tưởng cho gaming, chỉnh sửa video với hình ảnh sắc nét, màu sắc sống động và ít ghosting\r\nChip Intel Core i5-12450HX (8 nhân/12 luồng, base 2.4GHz turbo lên 4.4GHz, 12MB cache, Alder Lake Gen 12) – hiệu năng mạnh mẽ cho game nặng (Genshin Impact high, Valorant ultra), đa nhiệm, chỉnh sửa 4K cơ bản, hỗ trợ Windows 11 Home (cập nhật đến Windows 12+)\r\nĐồ họa NVIDIA GeForce RTX 3050 6GB GDDR6 – ray tracing, DLSS, xử lý đồ họa đỉnh cao cho gaming entry-level, hỗ trợ 4K output qua HDMI 2.1\r\nThiết kế nhựa xám cao cấp với logo LOQ, mỏng 21.9-23.9mm, nặng 2.38kg; bàn phím chiclet backlit trắng, touchpad lớn, cổng kết nối: 1x USB-C (Thunderbolt 4), 3x USB-A 3.2, HDMI 2.1, jack 3.5mm, WiFi 6E, Bluetooth 5.2, tản nhiệt kép 2 quạt + 4 ống đồng\r\nPin 60Wh dùng thoải mái 4–6 giờ (web/video), sạc nhanh 135W (đầy 50% trong 30 phút)\r\nBộ nhớ: RAM 16GB DDR5-4800 (2x8GB, nâng cấp tối đa 32GB), SSD 512GB PCIe NVMe Gen4 (mở rộng 2 khe), phù hợp lưu trữ game lớn, file sáng tạo\r\nGiá chính hãng VN/A hiện tại khoảng 20.5–22 triệu VND (tùy cửa hàng như CellphoneS, FPT Shop, An Phát PC, Phong Vũ), bảo hành 24 tháng Lenovo (đổi mới 10-30 ngày nếu lỗi)\r\n\r\nLaptop Lenovo LOQ 15IAX9E 83LK0079VN – \"gaming tầm trung đỉnh cao\" với i5 HX \"khủng\", RTX 3050 mượt và màn 144Hz sắc nét, đáng mua cuối 2025 cho game thủ mới/budget dưới 22 triệu từ Lenovo!', 5, 1),
(34, 'Laptop MSI Modern 14 F13MG-240VNCP', '36000000.00', '29000000.00', './uploads/1765198033-text_ng_n_2__9_297.webp', 24, 0, '2025-12-08', 'Laptop MSI Modern 14 F13MG-240VNCP – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình IPS 14 inch Full HD (1920 x 1080), tần số quét 60Hz, độ sáng 300 nits, chống chói Anti-glare, viền mỏng, hỗ trợ 100% sRGB cho màu sắc sống động, lý tưởng cho làm việc văn phòng, học tập, xem phim với hình ảnh sắc nét và góc nhìn rộng 178°\r\nChip Intel Core i5-1335U thế hệ 13 (10 nhân/12 luồng, base 1.3GHz turbo lên 4.6GHz, 12MB cache, tiến trình 10nm) – hiệu năng mạnh mẽ cho đa nhiệm, chỉnh sửa tài liệu/video cơ bản, game nhẹ (LOL, Valorant medium setting), hỗ trợ Windows 11 Home (cập nhật đến Windows 12+)\r\nĐồ họa Intel UHD Graphics tích hợp – xử lý tốt đồ họa 2D/3D, hỗ trợ 4K output qua HDMI 2.0\r\nThiết kế nhôm xám cao cấp, mỏng 16.9mm, nặng chỉ 1.4kg, dễ mang theo; bàn phím chiclet backlit LED, touchpad lớn, cảm biến vân tay, cổng kết nối: 2x USB-A 3.2, 1x USB-C (PD + DP), HDMI 2.0, microSD, jack 3.5mm, WiFi 6E, Bluetooth 5.2\r\nPin 39.3Wh dùng thoải mái 7–9 giờ (web/video), sạc nhanh 65W qua USB-C\r\nBộ nhớ: RAM 8GB DDR4-3200 (on board, nâng cấp tối đa 16GB), SSD 512GB PCIe NVMe (mở rộng dễ dàng), phù hợp lưu trữ tài liệu, phần mềm văn phòng\r\nGiá chính hãng VN/A hiện tại khoảng 13–14 triệu VND (tùy cửa hàng như CellphoneS, An Khang, FPT Shop, Nguyễn Kim), bảo hành 24 tháng MSI (1 đổi 1 trong 30 ngày nếu lỗi)\r\n\r\nLaptop MSI Modern 14 F13MG-240VNCP – \"doanh nhân mỏng nhẹ thanh lịch\" với i5-13th Gen \"trâu\", thiết kế sang trọng và hiệu năng ổn định, đáng mua cuối 2025 cho sinh viên/dân văn phòng cần máy di động giá \"ngon\" từ MSI!', 5, 1),
(35, 'MacBook Air 15 inch M4 (10 core GPU  16GB RAM  512GB SSD)', '26500000.00', '22999999.00', './uploads/1765198165-0036015_midnight_550.jpeg.webp', 55, 0, '2025-12-08', 'MacBook Air 15 inch M4 (10-core GPU, 16GB RAM, 512GB SSD) Chính hãng Apple Việt Nam – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình Liquid Retina 15.3 inch, độ phân giải 2880 x 1864 (224 ppi), True Tone, P3 wide color, sáng tối đa 500 nits, viền siêu mỏng, hình ảnh sắc nét tuyệt đẹp, lý tưởng làm việc, xem phim 4K, chỉnh ảnh\r\nChip Apple M4 (CPU 10 lõi: 4 performance + 6 efficiency, GPU 10 lõi, Neural Engine 16 lõi 38 TOPS) – hiệu năng nhanh hơn M2 đến 60%, mở 50 tab Chrome + Photoshop + Final Cut mượt mà, hỗ trợ Apple Intelligence (AI viết văn bản, tạo ảnh, Siri thông minh), chạy mát không tiếng ạt\r\nCamera FaceTime HD 1080p Center Stage, 3 micro beamforming, hệ thống 6 loa Dolby Atmos sống động (âm thanh không gian Spatial Audio)\r\nThiết kế nhôm nguyên khối siêu mỏng 11.5mm, nặng chỉ 1.51kg, màu Midnight/Starlight/Silver/Sky Blue; Touch ID, bàn phím Magic Keyboard backlit có 4 phím tắt AI, trackpad Force Touch lớn nhất từ trước đến nay\r\nPin “khủng” dùng thực tế 18–20 giờ (web/video), sạc nhanh MagSafe 3 (50% trong 30 phút với adapter 70W)\r\nBộ nhớ thống nhất: 16GB RAM + 512GB SSD siêu nhanh (đọc/ghi ~5500MB/s), đủ cho sinh viên, dân văn phòng, nhiếp ảnh gia, dựng video nhẹ 4K\r\nCổng kết nối: 2x Thunderbolt 4, MagSafe 3, jack 3.5mm; WiFi 6E, Bluetooth 5.3\r\nHệ điều hành macOS Sequoia 15.2 (cập nhật miễn phí đến macOS 20+)\r\nGiá chính hãng Apple Việt Nam hiện tại: 34.990.000 ₫ (đang giảm còn 32.9–33.5 triệu tại FPT Shop, CellphoneS, Thế Giới Di Động, 24hStore); bảo hành 12 tháng Apple + Apple Care+ tùy chọn 3 năm\r\n\r\nKết luận một câu: MacBook Air 15 inch M4 16GB/512GB là chiếc laptop “mỏng nhẹ, pin trâu, màn lớn” hoàn hảo năm 2025 cho sinh viên, dân văn phòng và sáng tạo nội dung – dùng 5–6 năm vẫn mượt, đáng tiền từng đồng!', 5, 1),
(36, 'MacBook Pro 14 M5 10CPU 10GPU 16GB 512GB  Chính hãng Apple Việt Nam', '37000000.00', '35999999.00', './uploads/1765198321-text_ng_n_2__11.webp', 554, 0, '2025-12-08', 'MacBook Pro 14 inch M5 (10-core CPU, 10-core GPU, 16GB RAM, 512GB SSD) Chính hãng Apple Việt Nam – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình Liquid Retina XDR 14.2 inch, độ phân giải 3024 x 1964 (254 ppi), ProMotion 120Hz thích ứng, Always-On Display, sáng tối đa 1000 nits SDR / 1600 nits XDR / 2000 nits peak (HDR), nano-texture chống phản chiếu tùy chọn, hỗ trợ Apple Pencil Pro và Magic Keyboard\r\nChip Apple M5 (CPU 10 lõi: 4 performance + 6 efficiency, GPU 10 lõi, Neural Engine 16 lõi 38 TOPS) – hiệu năng vượt trội hơn M4 20-30% cho chỉnh sửa video 8K, game ray tracing, AI Apple Intelligence (LLM token generation, generative imagery), macOS Tahoe 15.2 (cập nhật đến macOS 20+), RAM 16GB LPDDR5X-7500\r\nCamera sau 12MP (góc rộng, ƒ/1.8, 4K video 120fps, Center Stage), camera trước 12MP Ultra Wide (landscape-oriented, Center Stage); hỗ trợ Smart HDR 5, Night mode, LiDAR Scanner cho AR\r\nThiết kế nhôm aluminum cao cấp, siêu mỏng 15.5mm, nặng 1.55kg, màu Space Black/Silver; Touch ID trong nút nguồn, USB-C (Thunderbolt 4 tốc độ 40Gbps, hỗ trợ DisplayPort), WiFi 7 (802.11be), Bluetooth 5.3\r\nPin 72.4Wh dùng thoải mái 22-24 giờ web/video, sạc nhanh ~2 giờ (96W adapter, hỗ trợ 140W)\r\nDung lượng 512GB phù hợp người dùng trung bình đến nặng (lưu video 4K, app sáng tạo), chỉ WiFi (không 5G), model A3434 (VN/A)\r\nGiá chính hãng VN/A hiện tại khoảng 41.9–42.5 triệu VND (tương đương $1,599 USD, tùy cửa hàng như FPT Shop, The Gioi Di Dong, CellphoneS, Apple Store), bảo hành 12 tháng Apple; ra mắt 15/10/2025, phát hành 22/10/2025\r\n\r\nMacBook Pro M5 14\" 16GB/512GB chính hãng – \"siêu phẩm mỏng nhẹ đỉnh cao\" với chip M5 \"bay\" và màn XDR sống động, đáng mua cuối 2025 cho sáng tạo chuyên nghiệp từ Apple!', 5, 1),
(37, 'Điện thoại Samsung Galaxy A17 5G 8GB128GB', '26000000.00', '23500000.00', './uploads/1765198478-samsung-galaxy-a17-5g-gray-1-638925131547875229-750x500.jpg', 55, 0, '2025-12-08', '**Samsung Galaxy A17 5G 8GB/128GB – Mô tả ngắn gọn (Tháng 12/2025):**\r\n\r\n- Màn hình Super AMOLED 6.7 inch, độ phân giải FHD+ (1080 x 2340, 385 ppi), tần số quét 90Hz mượt mà, sáng tối đa 800 nits (HBM), Corning Gorilla Glass Victus chống xước/vỡ, hỗ trợ HDR10+, lý tưởng cho xem phim, lướt web ngoài trời  \r\n- Chip Exynos 1330 (5nm) mạnh mẽ với CPU octa-core (2x Cortex-A78 @2.4GHz + 6x Cortex-A55 @2.0GHz), GPU Mali-G68 MP2 – hiệu năng ổn định cho đa nhiệm, game nhẹ (PUBG Mobile medium), chỉnh sửa ảnh/video cơ bản, hỗ trợ RAM ảo lên 8GB thêm  \r\n- Hệ thống camera ba: 50MP chính (OIS, f/1.8, PDAF), 5MP siêu rộng (120°, f/2.2), 2MP macro (f/2.4); camera trước 13MP (f/2.0); Night mode, Portrait, quay video 4K 30fps, Single Take  \r\n- Thiết kế nhựa cao cấp, mỏng 7.5mm, nặng 192g, màu Blue/Black/Gray/Light Green; chống nước/bụi IP67 (sâu 1m/30 phút), khe microSD (tối đa 1TB), hybrid SIM (2 SIM + microSD)  \r\n- Pin 5000mAh \"trâu\" dùng thoải mái 12–14 giờ (web/video), sạc nhanh 25W (đầy 50% trong 30 phút), USB-C 2.0  \r\n- Dung lượng 128GB + 8GB RAM phù hợp người dùng trung bình (lưu phim 4K, app đa nhiệm), hỗ trợ 5G, NFC (tùy thị trường), One UI 7 dựa Android 15 (cập nhật 6 năm OS + 6 năm bảo mật)  \r\n- Giá chính hãng VN hiện tại khoảng 5.5–6.2 triệu VND (tùy cửa hàng như FPT Shop, The Gioi Di Dong, CellphoneS), bảo hành 12 tháng Samsung; ra mắt 18/8/2025  \r\n\r\nSamsung Galaxy A17 5G 8GB/128GB – \"mid-range giá rẻ bền bỉ\" với camera OIS đầu tiên dòng A1x, pin trâu và cập nhật dài hạn, đáng mua cuối 2025 cho học sinh/sinh viên cần máy 5G ổn định từ Samsung!', 4, 1),
(38, 'Điện thoại Samsung Galaxy A56 5G 12GB256GB', '24000000.00', '21500000.00', './uploads/1765198688-samsung-galaxy-a56-xam-01-638802400999449896-750x500.jpg', 34, 0, '2025-12-08', 'Samsung Galaxy A56 5G 12GB/256GB – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình Super AMOLED 6.7 inch, độ phân giải FHD+ (1080 x 2340, 385 ppi), tần số quét 120Hz mượt mà, sáng tối đa 1200 nits (Vision Booster), Corning Gorilla Glass Victus+ chống xước/vỡ, hỗ trợ HDR10+, lý tưởng cho xem phim, lướt web ngoài trời\r\nChip Exynos 1580 (4nm) mạnh mẽ với CPU octa-core (2x Cortex-A78 @2.4GHz + 6x Cortex-A55 @2.0GHz), GPU Xclipse 540 (AMD RDNA 3) – hiệu năng vượt trội cho đa nhiệm, game nặng (Genshin Impact high), chỉnh sửa video 4K cơ bản, hỗ trợ RAM ảo lên 12GB thêm\r\nHệ thống camera ba: 50MP chính (OIS, f/1.8, PDAF, AI Nightography), 12MP siêu rộng (120°, f/2.2), 5MP macro (f/2.4); camera trước 12MP (f/2.2); Portrait mode AI, quay video 4K 30fps/1080p 60fps, Super HDR selfie\r\nThiết kế nhôm aluminum cao cấp, mỏng 7.4mm, nặng 198g, màu Awesome Graphite/Light Grey/Blue/Pink; chống nước/bụi IP67 (sâu 1m/30 phút), dual SIM + eSIM (không microSD)\r\nPin 5000mAh \"trâu\" dùng thoải mái 12–14 giờ (web/video, lên đến 29 giờ theo Samsung), sạc nhanh 45W (65% trong 30 phút, đầy 100% trong 68 phút), USB-C 2.0\r\nDung lượng 256GB + 12GB RAM phù hợp người dùng nặng (lưu phim 4K, app đa nhiệm), hỗ trợ 5G, NFC, Wi-Fi 6, Bluetooth 5.3, One UI 7 dựa Android 15 (cập nhật 6 năm OS + 6 năm bảo mật)\r\nGiá chính hãng VN hiện tại khoảng 9.5–10.5 triệu VND (tùy cửa hàng như FPT Shop, The Gioi Di Dong, CellphoneS), bảo hành 12 tháng Samsung; ra mắt 10/3/2025\r\n\r\nSamsung Galaxy A56 5G 12GB/256GB – \"mid-range đỉnh cao\" với Exynos 1580 \"khủng\", camera AI thông minh và sạc 45W đầu tiên dòng A5x, đáng mua cuối 2025 cho người dùng cần máy mạnh mẽ, bền bỉ từ Samsung!', 4, 1),
(39, 'Điện thoại Samsung Galaxy Z Flip7 5G 12GB256GB', '26500000.00', '24500000.00', './uploads/1765198826-samsung-galaxy-z-flip7-do-1-638889695868366654-750x500.jpg', 45, 0, '2025-12-08', 'Samsung Galaxy Z Flip7 5G 12GB/256GB – Mô tả ngắn gọn (Tháng 12/2025):\r\n\r\nMàn hình chính: Dynamic AMOLED 2X 6.9 inch gập (2520 x 1080, 426 ppi), tần số quét 120Hz thích ứng, sáng tối đa 2600 nits (HDR), HDR10+, Vision Booster; Màn hình phụ FlexWindow edge-to-edge 3.4 inch Super AMOLED (720 x 748, 120Hz), tùy chỉnh video wallpaper, MultiStar cho app nhanh\r\nChip Exynos 2500 (3nm) mạnh mẽ với CPU octa-core (1x Cortex-X4 @3.3GHz + 5x Cortex-A720 + 2x Cortex-A520), GPU Xclipse 940 (AMD RDNA 3) – hiệu năng vượt trội cho game nặng (Genshin Impact ultra), chỉnh sửa video 4K, AI Galaxy (Note Assist, Sketch to Image, Circle to Search), RAM ảo lên 12GB thêm\r\nHệ thống camera kép: 50MP chính (OIS, f/1.8, PDAF, ProVisual Engine), 12MP siêu rộng (123°, f/2.2); camera trước 50MP (f/2.2, autofocus); Nightography AI, Portrait mode, quay video 8K 30fps/4K 60fps, Super HDR selfie\r\nThiết kế Armor Aluminum cao cấp, mỏng nhất từ trước 6.9mm (gập 14.9mm), nặng 171g, màu Mint/Graphite/Silver Blue/Yellow; chống nước/bụi IPX8 (sâu 1.5m/30 phút), Gorilla Glass Victus 2, bản lề bền 500.000 lần gập\r\nPin 4300mAh \"trâu\" dùng thoải mái 12–15 giờ (web/video), sạc nhanh 25W (50% trong 30 phút), sạc không dây 15W, USB-C 3.2\r\nDung lượng 256GB + 12GB RAM phù hợp người dùng nặng (lưu phim 8K, app đa nhiệm), hỗ trợ 5G, NFC, Wi-Fi 7, Bluetooth 5.4, One UI 8 dựa Android 16 (cập nhật 7 năm OS + 7 năm bảo mật)\r\nGiá chính hãng VN hiện tại khoảng 24–25.5 triệu VND (tùy cửa hàng như FPT Shop, The Gioi Di Dong, CellphoneS), bảo hành 12 tháng Samsung; ra mắt 25/7/2025\r\n\r\nSamsung Galaxy Z Flip7 5G 12GB/256GB – \"flip phone mỏng nhẹ đỉnh cao\" với camera selfie 50MP, AI thông minh và thiết kế bền bỉ, đáng mua cuối 2025 cho ai yêu kiểu dáng gập thời thượng từ Samsung!', 4, 1),
(40, 'Cáp Baseus Crystal Shine USB-C to Lightning 1.2M', '500000.00', '350000.00', './uploads/1765199244-cap-type-c-to-lightning-baseus-crystal-shine-1-2m_1_.webp', 444, 0, '2025-12-08', '**Cáp Baseus Crystal Shine USB-C to Lightning 1.2M – Mô tả ngắn gọn (Tháng 12/2025):**\r\n\r\n- Thiết kế sang trọng \"Crystal Shine\" với lớp bọc nylon bện cao cấp, bóng loáng lấp lánh, chống rối và chống gãy gập (chịu lực >20.000 lần uốn cong), đầu nối nhôm alloy bền bỉ, phù hợp sạc iPhone/AirPods/iPad Lightning  \r\n- Hỗ trợ sạc nhanh PD 20W (dòng tối đa 2.4A) – sạc iPhone 60% trong 30 phút (tương thích adapter USB-C như 20W Apple), truyền dữ liệu tốc độ cao lên đến 480Mbps (USB 2.0)  \r\n- Chiều dài 1.2M lý tưởng cho sử dụng hàng ngày, màu sắc đa dạng (Black, Pink, Purple, Blue), trọng lượng nhẹ chỉ ~30g, không lo nặng máy  \r\n- Tương thích hoàn hảo với iOS (MFi certified), an toàn với chip E-marker chống quá nhiệt/quá tải  \r\n- Giá chính hãng VN hiện tại khoảng 250.000–350.000 VND (tùy màu và cửa hàng như CellphoneS, FPT Shop, Minh Đức PC, Baseus.vn), bảo hành 12 tháng Baseus  \r\n\r\nCáp Baseus Crystal Shine USB-C to Lightning 1.2M – phụ kiện \"đẹp bền nhanh\" thay thế lý tưởng cho cáp Apple gốc, đáng mua cuối 2025 nếu bạn cần sạc PD 20W giá rẻ mà chất lượng cao!', 10, 1),
(41, 'Dán kính cường lực màn hình Apple iPhone 16e141313 Pro Zagg full cao cấp', '650000.00', '500000.00', './uploads/1765199325-kinh-cuong-luc-iphone-13-14-13-pro-se-40-zagg-full_1_.webp', 646, 0, '2025-12-08', '**Miếng dán kính cường lực màn hình Zagg Plus Edge Full cho iPhone 16 Pro Chính hãng – Mô tả ngắn gọn (Tháng 12/2025):**\r\n\r\n- **Bảo vệ toàn diện cao cấp:** Độ cứng 9H chống trầy xước vượt trội (bền gấp 5 lần kính thường), viền vát cạnh 3D ôm sát full màn hình 6.3 inch, chống va đập/sứt mẻ hiệu quả mà không ảnh hưởng đến Dynamic Island hay ProMotion 120Hz  \r\n- **Hiển thị sắc nét mượt mà:** Chất liệu kính trong suốt cao cấp, độ rõ nét 100%, hỗ trợ cảm ứng nhạy bén (tương thích Apple Pencil nếu cần), lớp phủ oleophobic chống bám vân tay/loang dầu, giữ màn hình luôn sạch thoáng với công nghệ ClearPrint  \r\n- **Tính năng nâng cao:** Chống nước/bụi IP68 tương thích, giảm ánh sáng xanh (VisionGuard tùy phiên bản), không làm giảm độ sáng tối đa 2000 nits hay màu sắc HDR10  \r\n- **Dễ dàng lắp đặt:** Đi kèm bộ kit chuyên dụng (khung cố định chống trơn, miếng lau ướt/khô, sticker hút bụi), tự dán tại nhà chỉ trong 1 phút mà không để lại bọt khí  \r\n- **Thiết kế tinh tế:** Mỏng nhẹ chỉ 0.33mm, không làm dày máy, tương thích hoàn hảo với case/ốp lưng, màu trong suốt giữ nguyên vẻ đẹp titanium của iPhone 16 Pro  \r\n- **Bảo hành & tương thích:** Bảo hành trọn đời Zagg (đổi mới miễn phí nếu vỡ), chứng nhận MFi, phù hợp iPhone 16 Pro 128GB/256GB/512GB/1TB  \r\n- **Giá chính hãng VN/A hiện tại:** Khoảng 890.000–1.190.000 VND (tùy phiên bản Privacy/VisionGuard, cửa hàng như CellphoneS, Viettel Store, FPT Shop), giao hàng toàn quốc  \r\n\r\nMiếng dán Zagg Plus Edge Full cho iPhone 16 Pro – \"cao cấp chống nhìn trộm/ánh sáng xanh\" bảo vệ màn hình đỉnh cao mà vẫn mỏng mượt, đáng mua cuối 2025 nếu bạn muốn phụ kiện Apple chính hãng chất lượng từ Zagg!', 10, 1),
(42, 'Dán kính cường lực màn hình Apple iPhone 17 Pro Max Invisibleshield XTR5 Đen (Không Viền)', '780000.00', '630000.00', './uploads/1765199391-text_ng_n_-_2025-09-11t174008.138_1.webp', 55, 0, '2025-12-08', '**Miếng dán kính cường lực màn hình InvisibleShield Glass XTR5 Đen (Không Viền) cho iPhone 17 Pro Max Chính hãng – Mô tả ngắn gọn (Tháng 12/2025):**\r\n\r\n- **Bảo vệ toàn diện cao cấp:** Độ cứng 9H+ với công nghệ Graphene-infused (mạnh gấp 11 lần kính thông thường), chống trầy xước, va đập mạnh (chịu rơi từ 2m+), viền không viền (edge-to-edge) ôm sát full màn hình 6.9 inch Super Retina XDR, không che Dynamic Island hay ProMotion 120Hz, màu đen trong suốt giữ nguyên vẻ đẹp titanium  \r\n- **Hiển thị sắc nét mượt mà:** Chất liệu kính nano-infused trong suốt 100%, hỗ trợ cảm ứng nhạy bén (SiO2-enhanced coating cho swipe mượt mà), lớp phủ oleophobic chống bám vân tay/dầu, Eyesafe® CPF60 lọc 60% ánh sáng xanh (bảo vệ mắt, giảm mỏi, hỗ trợ giấc ngủ), anti-reflective tăng độ rực rỡ màu sắc HDR10+ và độ sáng tối đa 2000 nits  \r\n- **Tính năng nâng cao:** Chống nước/bụi IP68 tương thích, giảm phản chiếu (nano-texture), làm từ 30% kính tái chế thân thiện môi trường, FSC-certified packaging, không ảnh hưởng độ nhạy màn hình hay loa  \r\n- **Dễ dàng lắp đặt:** Đi kèm bộ kit PerfectFit™ Installation (2 bước đơn giản: khung cố định chống bụi, miếng lau ướt/khô, hút bụi), tự dán tại nhà chỉ 1 phút không bọt khí, anti-dust adhesive bám chắc  \r\n- **Thiết kế tinh tế:** Mỏng chỉ 0.33mm, không làm dày máy, tương thích hoàn hảo với case/ốp lưng, màu đen (black tint) cho cảm giác cao cấp, phù hợp iPhone 17 Pro Max 256GB/512GB/1TB  \r\n- **Bảo hành & tương thích:** Bảo hành trọn đời ZAGG (đổi mới miễn phí nếu vỡ/hỏng, gửi qua Best Buy hoặc ZAGG), chứng nhận MFi, model cho iPhone 17 Pro Max (ra mắt 9/2025)  \r\n- **Giá chính hãng VN/A hiện tại:** Khoảng 1.190.000–1.490.000 VND (tùy phiên bản Blue Light/Privacy, cửa hàng như CellphoneS, FPT Shop, Viettel Store, Zagg.vn), giao hàng toàn quốc  \r\n\r\nMiếng dán InvisibleShield Glass XTR5 Đen (Không Viền) cho iPhone 17 Pro Max – \"cao cấp Graphene + lọc xanh\" bảo vệ màn hình đỉnh cao mà vẫn mỏng mượt, đáng mua cuối 2025 nếu bạn muốn phụ kiện Apple chính hãng chất lượng từ ZAGG!', 10, 1),
(43, 'Đế sạc không dây Aukey Magfushion 1X LC-MC111 Qi2.2 25W', '460000.00', '399999.00', './uploads/1765199456-de-sac-khong-day-aukey-magfusion-qi2-2-lc-mc111-1x-25w_2_.webp', 654, 0, '2025-12-08', '**Đế sạc không dây Aukey MagFusion 1X LC-MC111 Qi2.2 25W – Mô tả ngắn gọn (Tháng 12/2025):**\r\n\r\n- **Công nghệ sạc tiên tiến:** Chứng nhận Qi2.2 (hay Qi2 25W) chính thức từ WPC, hỗ trợ sạc không dây từ tính siêu nhanh lên đến 25W cho iPhone 16/17 series (MagSafe), nhanh hơn 25 phút so với Qi2 15W thông thường (dữ liệu lab Aukey với iPhone 16 Pro Max từ 0-100%)  \r\n- **Thiết kế từ tính mỏng nhẹ:** Nam châm MagFusion mạnh mẽ (hút chặt iPhone/AirPods), stand góc nghiêng 15° tiện xem thông báo/video khi sạc; chất liệu nhôm + silicone cao cấp, mỏng 10mm, nặng chỉ 120g, màu đen sang trọng, chống trượt và tản nhiệt tự nhiên (không quạt)  \r\n- **Tương thích rộng rãi:** Sạc iPhone (15/16/17 series lên 25W), AirPods (5W), Apple Watch (5W với adapter riêng); tương thích ngược với Qi1.0/1.3 (15W max), cần adapter USB-C PD 30W+ (không kèm theo)  \r\n- **An toàn & tiện lợi:** Chip bảo vệ thông minh chống quá nhiệt/quá áp/quá dòng, lớp phủ chống bám vân tay; cáp USB-C dài 1.2m (kèm theo), dễ di chuyển bàn làm việc/xe hơi  \r\n- **Giá chính hãng VN hiện tại:** Khoảng 750.000–850.000 VND (tương đương $29.99 USD, tùy cửa hàng như CellphoneS, FPT Shop, Aukey.vn, Shopee Mall), bảo hành 18 tháng Aukey; ra mắt 15/9/2025  \r\n\r\nĐế sạc Aukey MagFusion 1X LC-MC111 Qi2.2 25W – \"siêu nhanh mỏng nhẹ giá rẻ\" cho iPhone MagSafe, đáng mua cuối 2025 nếu bạn cần phụ kiện sạc từ tính chất lượng cao từ Aukey!', 10, 1);

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
(1, 'Đỗ Đình Thịnhhhhhhhh', './uploads/product-1.jpg', '2022-11-02', 'dodinhthinh123@gmail.com', '038888888', 1, 'Số 1 Hà Nội', '$2y$12$WZjnN3vYqACgoiONCxlSb.alMXm7jeRJH3hORknWHcjLSoxlOzeWW', 1, 1),
(2, 'Nguyễn Văn A', './uploads/product-2.jpg', '2025-11-19', 'abc@gmail.com', '', 1, '', '$2y$12$Ncbr/eTF1mSHKeQM41avfOYTxoLoDlao62fHh4eP5j9tfqiWbWhoe', 1, 2),
(9, 'Đỗ Đình Thịnh', './uploads/product-3.jpg', '2025-12-20', 'dodinhthinh124563@gmail.com', '0965765765', 1, 'hnnnn', '$2y$12$bHXcoQcw969XMuoQ6MpwFea6Vg9eH00PhofO7Oki4qSUDKQy4hJSi', 2, 2),
(10, 'anhhhh', NULL, '2025-12-01', 'anhn12345@fpt.edu.vn', '', 1, '', '123', 1, 1),
(13, 'anh', NULL, NULL, 'anhnhh12345@fpt.edu.vn', NULL, 1, NULL, '$2y$12$cf7yD1XSCsT10Tmr61gBbuRXs4Jf3hnzmkmsy12guxBPoGw.VUGUq', 1, 1),
(18, 'theAnhDev', './uploads/product-2.jpg', '2025-12-25', 'theanhdev324324@gmail.com', '0954654654', 1, 'hn ntl', '$2y$12$gBUAtqO12sX.gBBOtfWaAusmDSmOeooRnGzxBT873yvceOLjRl47S', 2, 1),
(19, 'Đỗ Đình Thịnhhhhh', NULL, NULL, 'adad@gmail.com', '0890980757', 1, NULL, '$2y$12$luCO6qAMIHpKm.zD7s8csOTfFnL7HFrm0bPYaLlekoCdrco9ezbWG', 1, 1),
(22, 'theAnhDev42432', './uploads/product-2.jpg', NULL, 'theanhdev34324324@gmail.com', NULL, 1, NULL, '$2y$12$xVb9kdvWMzyoMvq17uIzR.b1zpawxcvxlsLwrFrmTQxJmgsoB1raC', 1, 2),
(23, 'Nguyễn Thế Anh', './uploads/product-3.jpg', '2025-12-25', 'anhhh112233@gmail.com', '096234728', 1, 'Nam Từ Liêm - Hà Nội', '$2y$12$9yDC/v1TOS1NigM4jXYogemss5tCLdObmSF/.32Nog9W11mWSZ.qa', 1, 1),
(24, 'trungHIu', NULL, NULL, 'trunghieu123@gmail.com', NULL, 1, NULL, '$2y$12$eoqa6AfFNXGvvxkVC.zcRutF5NCCJts3kjFUb.a6ZR2GQFML0U0rS', 1, 1),
(25, 'Nguyễn Hữu Trung', NULL, NULL, 'trung123@gmail.com', NULL, 1, NULL, '$2y$10$X.0gXVjmvtJteKSd7RUZnuPldYg2kVYYM8lexyLtfzfJ9KBvHGz4y', 1, 1),
(26, 'Nguyễn Hữu Trung', NULL, '2004-02-03', 'trung321@gmail.com', '0347892617', 1, 'Hà Nội', '$2y$10$1Km5S2kUNWMVGAsG1bKuQeGHjyUjDLl6RI4b4.eWpAfzhO1uCzzbW', 2, 1);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `chi_tiet_gio_hangs`
--
ALTER TABLE `chi_tiet_gio_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `gio_hangs`
--
ALTER TABLE `gio_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `trang_thai_don_hangs`
--
ALTER TABLE `trang_thai_don_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
