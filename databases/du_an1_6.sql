-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2025 at 02:34 AM
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
(8, 9, 8, '6500000.00', 6, '39000000.00');

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
(4, 'Áo 123', 'Áo Bomber\r\n'),
(5, 'Quần ', 'Quần âu\r\n'),
(6, 'Áo Quần 123', 'Áo đẹp'),
(10, 'Áo Quần 123456', '123215432');

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
(5, 'DH-1226', 18, 'theAnhDev', 'theanhdev324324@gmail.com', '0954654654', 'hn ntl', '2025-12-07', '3462432.00', '', 2, 1),
(6, 'DH-4536', 18, 'theAnhDev', 'theanhdev324324@gmail.com', '0954654654', 'hn ntl', '2025-12-07', '10030000.00', 'Vui lòng ship COD', 1, 1),
(7, 'DH-1721', 18, 'theAnhDev', 'theanhdev324324@gmail.com', '0954654654', 'hn ntl', '2025-12-07', '30000.00', 'Vui lòng ship COD', 1, 1),
(8, 'DH-8756', 18, 'theAnhDev', 'theanhdev324324@gmail.com', '0954654654', 'hn ntl', '2025-12-07', '34354320.00', '34 củ \r\n:V', 2, 1),
(9, 'DH-2990', 18, 'theAnhDev', 'theanhdev324324@gmail.com', '0954654654', 'hn ntl', '2025-12-07', '39030000.00', 'HHEHEHEHE\r\n', 1, 1);

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
(1, 1, './uploads/product-1.jpg'),
(2, 2, './uploads/1764626056-instagram-5.jpg'),
(3, 3, './uploads/product-3.jpg'),
(4, 4, './uploads/product-4.jpg'),
(5, 5, './uploads/product-5.jpg'),
(6, 6, './uploads/product-6.jpg'),
(7, 7, './uploads/product-7.jpg'),
(8, 8, './uploads/product-8.jpg'),
(9, 9, './uploads/product-9.jpg'),
(10, 10, './uploads/product-10.jpg'),
(11, 1, './uploads/1764734350-cpc.png'),
(12, 2, './uploads/product-3.jpg'),
(13, 1, './uploads/product-3.jpg'),
(14, 1, './uploads/product-4.jpg'),
(15, 1, './uploads/product-5.jpg'),
(16, 1, './uploads/product-6.jpg'),
(17, 1, './uploads/product-7.jpg'),
(18, 1, './uploads/1764734350-cpc.png'),
(19, 1, './uploads/1764734350-cpc.png'),
(20, 1, './uploads/1764734350-cpc.png'),
(21, 26, './uploads/1764628535-instagram-1.jpg'),
(22, 26, './uploads/1764628535-instagram-2.jpg'),
(23, 26, './uploads/1764628535-instagram-3.jpg'),
(24, 26, './uploads/1764628535-instagram-4.jpg'),
(25, 26, './uploads/1764628535-instagram-5.jpg'),
(36, 1, './uploads/1764731818-cpc.png'),
(37, 1, './uploads/1764731818-cpc.png');

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
(1, 'Chó phú quốc 1234', '10000000.00', '9000000.00', './uploads/1764734356-cpc.png', 100, 10, '2025-11-26', 'Chó phú quốc siêu đẹp,siêu hấp dẫn.ádasd', 5, 1),
(2, 'Mèo anh lông dài', '23432432.00', '12454354.00', NULL, 23, 22, '2025-11-25', 'Mèo anh lông dài thuần chủng. 4324324', 4, 2),
(3, 'Mèo Lông Dài Phú Quốc', '5000000.00', '3432432.00', './uploads/1764626451-instagram-1.jpg', 10, 10, '2025-11-29', 'Mèo Lông Dài Siêu Đẹp, Đắt Tiền', 4, 1),
(4, 'Mèo Lông Dài Phú Quốc Xám', '5000000.00', NULL, 'assets/img/product/product-4.jpg', 19, 8, '2025-11-01', 'Mèo Lông Dài Siêu Đẹp, Đắt Tiền xám', 6, 1),
(5, 'Mèo Lông Dài Phú Quốc Đen', '6000000.00', '4600000.00', 'assets/img/product/product-5.jpg', 16, 9, '2025-11-01', 'Mèo Lông Dài Siêu Đẹp, Đắt Tiền đen', 5, 1),
(6, 'Mèo Lông Dài Phú Quốc Hồng', '7000000.00', '5000000.00', 'assets/img/product/product-6.jpg', 50, 21, '2025-11-02', 'Mèo Lông Dài Siêu Đẹp, Đắt Tiền hồng', 4, 1),
(7, 'Mèo Lông Dài Phú Quốc Trắng', '8000000.00', '5500000.00', 'assets/img/product/product-7.jpg', 70, 43, '2025-11-29', 'Mèo Lông Dài Siêu Đẹp, Đắt Tiền trắng', 9, 1),
(8, 'Mèo Lông Dài Phú Quốc Be', '9000000.00', '6500000.00', 'assets/img/product/product-8.jpg', 90, 88, '2025-11-29', 'Mèo Lông Dài Siêu Đẹp, Đắt Tiền be', 4, 1),
(9, 'Mèo Lông Dài Siêu Đẹp, Đắt Tiền đỏ', '1169000.00', '900000.00', 'assets/img/product/product-10.jpg', 2, 10, '2025-11-29', 'Đẹp', 6, 0),
(10, 'Áo Khoác Gió đen', '500000.00', '500000.00', 'assets/img/product/product-11.jpg', 50, 20, '2025-11-30', 'Áo ấm, đẹp', 5, 1),
(11, 'mèo', '20000000.00', '19000000.00', './uploads/1764624269-instagram-5.jpg', 1, 0, '2025-12-01', '12132213213', 4, 1),
(12, 'mèo anh lông dài', '20000000.00', '19000000.00', './uploads/1764574228-instagram-4.jpg', 12, 0, '2025-12-04', 'dêppppppp', 4, 1),
(13, 'mèo anh lông dài 123', '12300000.00', '122000.00', './uploads/1764574339-instagram-5.jpg', 12, 0, '2025-12-10', 'dsweqwweqweq', 10, 1),
(14, 'Mèo Phú Quốc', '500000.00', '400000.00', NULL, 12, 50, '2025-12-02', 'Đẹp', 1, 1),
(15, 'mèo anh lông dài đẹp', '1235555.00', '1243255.00', './uploads/1764613900-instagram-5.jpg', 432, 0, '2025-12-04', 'dẹph', 5, 1),
(16, 'Chó phú quốc 1235457', '1232139.00', '543543.00', './uploads/1764624363-instagram-1.jpg', 123, 0, '2025-12-02', 'dfwefwerrwerwerwerwer', 5, 1),
(17, 'Chó phú quốc 1233123', '123213.00', '123213.00', './uploads/1764624813-instagram-4.jpg', 132, 0, '2025-12-13', '1321321', 4, 1),
(18, 'Chó phú quốc 123', '123444.00', '123333.00', './uploads/1764625063-instagram-1.jpg', 10, 0, '2025-12-03', 'đẹp', 5, 1),
(19, 'mèo43', '4324234.00', '324324.00', './uploads/1764625275-instagram-3.jpg', 23, 0, '2025-12-26', '4324234234', 4, 1),
(20, 'Chó phú quốc 1235457', '13213.00', '3123.00', './uploads/1764625722-instagram-3.jpg', 21, 0, '2025-12-10', 'đẹp', 5, 1),
(21, 'Cá', '200000.00', '100000.00', './uploads/1764626047-instagram-3.jpg', 100, 0, '2025-12-12', 'Cá khô', 5, 1),
(22, 'mèo', '123213.00', '2132.00', './uploads/1764626514-instagram-1.jpg', 12, 0, '2025-12-05', '2132', 4, 1),
(23, 'mèo', '123.00', '12.00', './uploads/1764627308-instagram-4.jpg', 1, 0, '2025-12-10', '12', 5, 1),
(24, 'mèo 23434', '1223.00', '123.00', './uploads/1764627682-instagram-1.jpg', 4, 0, '2025-12-10', '434324', 5, 1),
(25, 'mèo', '321312.00', '123.00', './uploads/1764627917-instagram-3.jpg', 12, 0, '2025-12-18', '32213213', 4, 1),
(26, 'Mèo Mun', '5000000.00', '250000.00', './uploads/1764628535-instagram-1.jpg', 12321, 0, '2025-12-10', 'Đẹp', 10, 1);

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
(24, 'trungHIu', NULL, NULL, 'trunghieu123@gmail.com', NULL, 1, NULL, '$2y$12$eoqa6AfFNXGvvxkVC.zcRutF5NCCJts3kjFUb.a6ZR2GQFML0U0rS', 1, 1);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chi_tiet_gio_hangs`
--
ALTER TABLE `chi_tiet_gio_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gio_hangs`
--
ALTER TABLE `gio_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hinh_anh_san_phams`
--
ALTER TABLE `hinh_anh_san_phams`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `phuong_thuc_thanh_toans`
--
ALTER TABLE `phuong_thuc_thanh_toans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `san_phams`
--
ALTER TABLE `san_phams`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tai_khoans`
--
ALTER TABLE `tai_khoans`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `trang_thai_don_hangs`
--
ALTER TABLE `trang_thai_don_hangs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
