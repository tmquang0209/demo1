-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th6 02, 2020 lúc 09:24 PM
-- Phiên bản máy phục vụ: 5.7.28-log
-- Phiên bản PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ozetiysl_demo1`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `soduravang`
--

CREATE TABLE `soduravang` (
  `id` int(11) NOT NULL,
  `ngaygio` text CHARACTER SET utf8 NOT NULL,
  `username` text CHARACTER SET utf8 NOT NULL,
  `user` text CHARACTER SET utf8 NOT NULL,
  `server` text CHARACTER SET utf8 NOT NULL,
  `menhgia` text CHARACTER SET utf8 NOT NULL,
  `trangthai` int(11) DEFAULT '0',
  `ip` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `soduravang`
--

INSERT INTO `soduravang` (`id`, `ngaygio`, `username`, `user`, `server`, `menhgia`, `trangthai`, `ip`) VALUES
(1, '05-03-2020', 'tmquang', 'chuoidz1st', '1', '50000', 0, '113.186.86.138');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_baiviet`
--

CREATE TABLE `TMQ_baiviet` (
  `id` bigint(20) NOT NULL,
  `uid` text,
  `taikhoan` text CHARACTER SET utf8,
  `matkhau` text CHARACTER SET utf8,
  `thongtin` text CHARACTER SET utf8,
  `img` text CHARACTER SET utf8,
  `loainick` text CHARACTER SET utf8,
  `giatien` int(11) DEFAULT NULL,
  `trangthai` int(11) DEFAULT NULL,
  `thongtin_1` text CHARACTER SET utf8,
  `thongtin_2` text CHARACTER SET utf8,
  `thongtin_3` text CHARACTER SET utf8,
  `thongtin_4` text CHARACTER SET utf8,
  `time` text CHARACTER SET utf8
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `TMQ_baiviet`
--

INSERT INTO `TMQ_baiviet` (`id`, `uid`, `taikhoan`, `matkhau`, `thongtin`, `img`, `loainick`, `giatien`, `trangthai`, `thongtin_1`, `thongtin_2`, `thongtin_3`, `thongtin_4`, `time`) VALUES
(1, 'tmquang', 'test', 'test', 'TEST ĐĂNG ACCOUNT', 'Ggg', '1', 100000, 0, 'Xayda', '1', 'Có', 'Gmail', '23:26:54 03-04-2020'),
(2, 'tmquang', 'cc.ngocrong@zing.com', 'Almskk', 'Acc Ngon', '111', '1', 10000, 0, 'Trái đất', '8', 'Có', 'Ảo', '23:30:39 03-04-2020'),
(3, 'tmquang', '781236', '12683', '11111', NULL, '1', 127836, 1, 'Xayda', '1', 'Có', 'Gmail', '13:43:40 12-04-2020'),
(4, 'tmquang', '123178gdfjhs', '123123', '123123', NULL, '1', 123123, 1, 'Xayda', '1', 'Có', 'Gmail', '13:48:45 12-04-2020'),
(5, 'tmquang', '1235127836vujhcfg', '11278346cgf', '123765gc', '\r\n', '1', 180000, 1, 'Xayda', '1', 'Có', 'Gmail', '13:55:34 12-04-2020'),
(6, 'tmquang', '1273678', '128376', '123123', '1233333', '1', 812736, 1, 'Xayda', '1', 'Có', 'Gmail', '20:42:42 15-04-2020'),
(7, 'tmquang', '71512785486129387907123', '12893128937129387123896', '1111', '111', '2', 1023810238, 1, '', '', '', '', '20:42:58 15-04-2020'),
(8, 'tmquang', 'chuatontai', '10123', '1123123', '123123', '1', 1000, 1, 'Xayda', '1', 'Có', 'Gmail', '20:44:32 15-04-2020'),
(9, 'tmquang', '1231113333333333333', '3333333333333333333333', 'ttttt', 'https://demo1.tmquang.monster/upload/anhnick/9/DSCF4216-9.JPG\n', '1', 33333333, 1, 'Xayda', '1', 'Có', 'Gmail', '20:45:38 15-04-2020'),
(10, 'tmquang', '1231236786ghg', '1236527', '123123xccc', 'http://demo1.tmquang.monster/admin/images/avatar/2.jpg\nhttp://demo1.tmquang.monster/admin/images/avatar/2.jpg\nhttp://demo1.tmquang.monster/admin/images/avatar/2.jpg\nhttp://demo1.tmquang.monster/admin/images/avatar/2.jpg', '1', 12783, 1, 'Xayda', '1', 'Có', 'Gmail', '21:00:57 15-04-2020'),
(11, 'tmquang', 'test11', 'test111', '11', 'http://demo1.tmquang.monster/admin/images/avatar/2.jpg\nhttp://demo1.tmquang.monster/admin/images/avatar/2.jpg\nhttp://demo1.tmquang.monster/admin/images/avatar/2.jpg', '1', 1000, 1, 'Xayda', '1', 'Có', 'Gmail', '21:04:16 15-04-2020'),
(12, 'tmquang', 'taikhoan123ccc', 'ccccc', 'cc', 'if($img == null){\nif($img == null){\nif($img == null){', '1', 123123, 1, 'Xayda', '1', 'Có', 'Gmail', '21:05:32 15-04-2020'),
(13, 'tmquang', 'tututu', '10000', 'testtt', 'test\nif($img == null){\nif($img == null){\nif($img == null){', '1', 1000, 1, 'Xayda', '1', 'Có', 'Gmail', '21:07:09 15-04-2020'),
(14, 'tmquang', 'chanvch', 'chanvch', '1test', 'tétt', '1', 1000, 1, 'Xayda', '1', 'Có', 'Gmail', '21:08:37 15-04-2020'),
(15, 'tmquang', 'taikhoan12311', '11', '1còn đâu', 'còn đâu', '1', 10000, 1, 'Xayda', '1', 'Có', 'Gmail', '21:09:19 15-04-2020'),
(16, 'tmquang', 'testnhenahng', '125637', '&lt;p&gt;test&lt;s&gt;th&amp;ocirc;i nh&amp;eacute;&lt;/s&gt;hihih&lt;/p&gt;', '', '1', 10000, 1, 'Xayda', '1', 'Có', 'Gmail', '20:47:10 16-04-2020'),
(17, 'tmquang', 'tetsttttt', '10000', '&lt;p&gt;hehheehehhe&lt;/p&gt;', 'cccccc.', '1', 10000, 1, 'Xayda', '1', 'Có', 'Gmail', '20:58:19 16-04-2020'),
(18, 'tmquang', 'uỵatgsjchg', '1hgas', '&lt;p&gt;cccccccccccc&lt;/p&gt;', 'tets.', '1', 100, 1, 'Xayda', '1', 'Có', 'Gmail', '20:59:16 16-04-2020'),
(19, 'tmquang', '12312', '3123', '&lt;p&gt;333&lt;/p&gt;', '33333.', '1', 123, 1, 'Xayda', '1', 'Có', 'Gmail', '21:02:56 16-04-2020'),
(20, 'tmquang', '61253', '76235', '&lt;p&gt;123123&lt;/p&gt;', '3333333', '1', 76235, 1, 'Xayda', '1', 'Có', 'Gmail', '21:04:04 16-04-2020'),
(21, 'tmquang', '12367', '12783', '&lt;p&gt;ccccasc&lt;/p&gt;', 'áca.', '1', 12893, 1, 'Xayda', '1', 'Có', 'Gmail', '21:04:45 16-04-2020'),
(22, 'tmquang', '1236', '1762', '&lt;p&gt;123casc&lt;/p&gt;', '.https://demo1.tmquang.monster/upload/anhnick/22/IMG_0128.JPG\n', '1', 6127, 1, 'Xayda', '1', 'Có', 'Gmail', '21:05:45 16-04-2020'),
(23, 'tmquang', 'Seo', '123123', '&lt;p&gt;ssssssssss&lt;/p&gt;', '.https://demo1.tmquang.monster/upload/anhnick/23/185b7df5d540cabe5ce3a3ea10f55d28589a8f4af19de.jpg\n', '1', 1233, 1, 'Ahihi', '1', 'Có', 'Gmail', '14:43:28 18-04-2020'),
(24, 'tmquang', '12312312', '312312312', '&lt;p&gt;123123123123&lt;/p&gt;', '.https://demo1.tmquang.monster/upload/anhnick/24/1585451276_a4c19d590ec0e.png\nhttps://demo1.tmquang.monster/upload/anhnick/24/logo.png\n', '1', 31, 1, '', '1', 'Có', 'Gmail', '13:32:39 19-04-2020');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_bank`
--

CREATE TABLE `TMQ_bank` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` text CHARACTER SET utf8,
  `bank` text CHARACTER SET utf8,
  `ctk` text CHARACTER SET utf8,
  `stk` text CHARACTER SET utf8,
  `chinhanh` text CHARACTER SET utf8,
  `bank_type` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `TMQ_bank`
--

INSERT INTO `TMQ_bank` (`id`, `uid`, `bank`, `ctk`, `stk`, `chinhanh`, `bank_type`) VALUES
(1, '123123', '', '', '', '', NULL),
(2, '123123', 'Techcombank', '44', '1', '124', NULL),
(3, '123123', '', '&lt;script&gt;alert(\'xss\');&lt;/script&gt;', '&lt;script&gt;alert(\'xss\');&lt;/script&gt;', '', NULL),
(4, '123123', '', '&lt;script&gt;alert(document.domain)&lt;/script&gt;', '&lt;script&gt;alert(document.domain)&lt;/script&gt;', '', NULL),
(5, '123123', '', '&lt;script&gt;alert(“XSS”)&lt;/script&gt;', '&lt;script&gt;alert(“XSS”)&lt;/script&gt;', '&lt;script&gt;alert(“XSS”)&lt;/script&gt;', NULL),
(6, 'tmquang', 'Vietcombank', 'Trần Minh Quang', '172536261253', 'Vĩnh Tường', NULL),
(7, 'kunkeypr', 'Vietcombank', '&lt;script&gt;alert(\'kunm\');&lt;/script&gt;', '&lt;script&gt;alert(\'kunm\');&lt;/script&gt;', '&lt;script&gt;alert(\'kunm\');&lt;/script&gt;', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_banner`
--

CREATE TABLE `TMQ_banner` (
  `id` bigint(20) NOT NULL,
  `image` text CHARACTER SET utf8,
  `url` text CHARACTER SET utf8,
  `title` text CHARACTER SET utf8
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `TMQ_banner`
--

INSERT INTO `TMQ_banner` (`id`, `image`, `url`, `title`) VALUES
(4, 'https://demo1.tmquang.monster/upload/NrHIh37vUI_1585564506.jpg', '', 'Test banner');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_biendoi`
--

CREATE TABLE `TMQ_biendoi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` text CHARACTER SET utf8 NOT NULL,
  `noidung` text CHARACTER SET utf32 NOT NULL,
  `truocgd` int(11) NOT NULL,
  `saugd` int(11) NOT NULL,
  `date` text CHARACTER SET utf8 NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `TMQ_biendoi`
--

INSERT INTO `TMQ_biendoi` (`id`, `uid`, `noidung`, `truocgd`, `saugd`, `date`, `time`) VALUES
(1, 'tmquang', 'Quay Vòng Quay 20.000<sup>đ</sup>', 1000000, 980000, '15:36:50 23-02-2020', 1582447010),
(2, 'tmquang', 'Quay Vòng Quay 20.000<sup>đ</sup>', 980000, 960000, '15:40:57 23-02-2020', 1582447257),
(3, 'tmquang', 'Quay Vòng Quay 20.000<sup>đ</sup>', 960000, 940000, '15:41:35 23-02-2020', 1582447295),
(4, 'tmquang', 'Quay Vòng Quay 20.000<sup>đ</sup>', 940000, 920000, '15:42:44 23-02-2020', 1582447364),
(5, 'tmquang', 'Quay Vòng Quay 20.000<sup>đ</sup>', 920000, 900000, '15:43:10 23-02-2020', 1582447390),
(6, 'tmquang', 'Thực hiện lệnh rút với số tiền 100,000 <sup>đ</sup>', 900000, 800000, '16:16:44 23-02-2020', 1582449404),
(7, 'tmquang', 'Quay Vòng Quay 20.000<sup>đ</sup>', 800000, 780000, '17:29:33 23-02-2020', 1582453773),
(8, 'vietdeptrai', 'vietdeptrai được cộng 100,000 bởi Trần Quang', 0, 100000, '12:31:37 01-03-2020', 1583040697),
(9, 'vietdeptrai', 'Quay Vòng Quay 20.000<sup>đ</sup>', 100000, 80000, '13:01:13 01-03-2020', 1583042473),
(10, 'vietdeptrai', 'Quay Vòng Quay 20.000<sup>đ</sup>', 80000, 60000, '13:01:25 01-03-2020', 1583042485),
(11, 'vietdeptrai', 'Quay Vòng Quay 20.000<sup>đ</sup>', 60000, 40000, '13:01:35 01-03-2020', 1583042495),
(12, 'vietdeptrai', 'Quay Vòng Quay 20.000<sup>đ</sup>', 40000, 20000, '13:01:52 01-03-2020', 1583042512),
(13, 'vietdeptrai', 'Quay Vòng Quay 20.000<sup>đ</sup>', 20000, 0, '13:03:17 01-03-2020', 1583042597),
(14, 'tmquang', 'Quay Vòng Quay 20.000<sup>đ</sup>', 730000, 710000, '14:00:00 06-03-2020', 1583478000),
(15, 'tmquang', 'Quay Vòng Quay 20.000<sup>đ</sup>', 710000, 690000, '14:53:22 06-03-2020', 1583481202),
(16, 'tmquang', ' Mua tài khoản #1 với giá 100,000 <sup>đ</sup>', 690000, 590000, '12:40:46 04-04-2020', 1585978846),
(17, 'tmquang', 'Bán nick #1, nhận được  50,000 <sup>đ</sup>', 690000, 740000, '12:40:46 04-04-2020', 1585978846),
(18, 'tmquang', ' Mua tài khoản #2 với giá 10,000 <sup>đ</sup>', 640000, 630000, '22:24:47 12-04-2020', 1586705087),
(19, 'tmquang', 'Bán nick #2, nhận được  5,000 <sup>đ</sup>', 640000, 645000, '22:24:47 12-04-2020', 1586705087),
(20, 'tmquang', 'Quay Vòng Quay 20.000<sup>đ</sup>', 635000, 615000, '15:29:56 21-05-2020', 1590049796),
(21, 'tmquang', 'Quay Vòng Quay 20.000<sup>đ</sup>', 615000, 595000, '15:32:57 21-05-2020', 1590049977),
(22, 'tmquang', 'Quay Vòng Quay 20.000<sup>đ</sup>', 595000, 575000, '15:32:59 21-05-2020', 1590049979),
(23, 'tmquang', 'Quay Vòng Quay 20.000<sup>đ</sup>', 575000, 555000, '15:32:59 21-05-2020', 1590049979),
(24, 'tmquang', 'Quay Vòng Quay 20.000<sup>đ</sup>', 555000, 535000, '15:33:00 21-05-2020', 1590049980),
(25, 'tmquang', 'Quay Vòng Quay 20.000<sup>đ</sup>', 535000, 515000, '15:33:01 21-05-2020', 1590049981),
(26, 'tmquang', 'Quay Vòng Quay 20.000<sup>đ</sup>', 515000, 495000, '15:33:02 21-05-2020', 1590049982),
(27, 'tmquang', 'Quay Vòng Quay 20.000<sup>đ</sup>', 495000, 475000, '15:33:03 21-05-2020', 1590049983),
(28, 'tmquang', 'Quay Vòng Quay 20.000<sup>đ</sup>', 475000, 455000, '15:33:43 21-05-2020', 1590050023);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_chuyenmuc`
--

CREATE TABLE `TMQ_chuyenmuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` text CHARACTER SET utf8 NOT NULL,
  `trangthai` varchar(100) NOT NULL,
  `loaicm` int(11) DEFAULT NULL,
  `img` varchar(100) NOT NULL,
  `thongbao` text CHARACTER SET utf8,
  `thongtin_1` text CHARACTER SET utf8,
  `thongtin_2` text CHARACTER SET utf8,
  `thongtin_3` text CHARACTER SET utf8,
  `thongtin_4` text CHARACTER SET utf8,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `TMQ_chuyenmuc`
--

INSERT INTO `TMQ_chuyenmuc` (`id`, `ten`, `trangthai`, `loaicm`, `img`, `thongbao`, `thongtin_1`, `thongtin_2`, `thongtin_3`, `thongtin_4`, `date`) VALUES
(1, 'Ngọc Rồng', 'on', 1, 'https://nick.vn/storage/images/wKdTt5nz3w_1584341447.gif', 'Nick giá rẻ', 'Hành tinh\ninput', 'Server\nselect\n1\n2\n3\n4\n5\n6\n7\n8', 'Bông tai\nselect\nCó\nkhông', 'Đăng ký\nselect\nGmail\nẢo', '2020-04-18'),
(2, 'Liên Quân', 'on', 1, 'https://nick.vn/storage/images/wKdTt5nz3w_1584341447.gif', 'Tướng\ninput', '', '', '', '', '2020-04-18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_chuyentien`
--

CREATE TABLE `TMQ_chuyentien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid_chuyen` text NOT NULL,
  `uid_nhan` text NOT NULL,
  `sotien` int(11) NOT NULL,
  `noidung` text CHARACTER SET utf8,
  `time` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_giftcode`
--

CREATE TABLE `TMQ_giftcode` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` text CHARACTER SET utf8 NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `gift` text CHARACTER SET utf8 NOT NULL,
  `sotien` int(11) NOT NULL,
  `date` text CHARACTER SET utf8 NOT NULL,
  `sd` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_inbox`
--

CREATE TABLE `TMQ_inbox` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid_gui` text CHARACTER SET utf8 NOT NULL,
  `uid` text CHARACTER SET utf8 NOT NULL,
  `noidung` text CHARACTER SET utf8 NOT NULL,
  `time` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_key`
--

CREATE TABLE `TMQ_key` (
  `email` varchar(250) NOT NULL,
  `key` varchar(250) NOT NULL,
  `time` text CHARACTER SET utf8 NOT NULL,
  `loai` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `TMQ_key`
--

INSERT INTO `TMQ_key` (`email`, `key`, `time`, `loai`) VALUES
('tmquang0209@gmail.com', '1959', '2020-04-15', 'login_admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_lichsu`
--

CREATE TABLE `TMQ_lichsu` (
  `id` bigint(20) NOT NULL,
  `uid_mua` text CHARACTER SET utf8,
  `uid_ban` text CHARACTER SET utf8,
  `taikhoan` text CHARACTER SET utf8,
  `matkhau` text CHARACTER SET utf8,
  `giatien` int(11) DEFAULT NULL,
  `loainick` int(11) DEFAULT NULL,
  `id_acc` int(11) DEFAULT NULL,
  `date` text CHARACTER SET utf8,
  `time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `TMQ_lichsu`
--

INSERT INTO `TMQ_lichsu` (`id`, `uid_mua`, `uid_ban`, `taikhoan`, `matkhau`, `giatien`, `loainick`, `id_acc`, `date`, `time`) VALUES
(1, 'tmquang', 'tmquang', 'test', 'test', 100000, 1, 1, '12:40:46 04-04-2020', 1585978846),
(2, 'tmquang', 'tmquang', 'cc.ngocrong@zing.com', 'Almskk', 10000, 1, 2, '22:24:47 12-04-2020', 1586705087);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_lichsuquay`
--

CREATE TABLE `TMQ_lichsuquay` (
  `id` bigint(20) NOT NULL,
  `uid` text CHARACTER SET utf8 NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL,
  `goiqua` text CHARACTER SET utf8 NOT NULL,
  `nhangift` text CHARACTER SET utf8,
  `vongquay` int(11) NOT NULL,
  `time` text CHARACTER SET utf8 NOT NULL,
  `loai` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `TMQ_lichsuquay`
--

INSERT INTO `TMQ_lichsuquay` (`id`, `uid`, `name`, `goiqua`, `nhangift`, `vongquay`, `time`, `loai`) VALUES
(1, 'tmquang', 'Trần Quang', '20 triệu vàng', 'Đã Cộng Vào Tài Khoản', 1, '1582447390', 20),
(2, 'tmquang', 'Trần Quang', '20 triệu vàng', 'Đã Cộng Vào Tài Khoản', 1, '1582453773', 20),
(3, 'vietdeptrai', 'vietdeptrai', '20 triệu vàng', 'Đã Cộng Vào Tài Khoản', 1, '1583042473', 20),
(4, 'vietdeptrai', 'vietdeptrai', '20 triệu vàng', 'Đã Cộng Vào Tài Khoản', 1, '1583042485', 20),
(5, 'vietdeptrai', 'vietdeptrai', '20 triệu vàng', 'Đã Cộng Vào Tài Khoản', 1, '1583042495', 20),
(6, 'vietdeptrai', 'vietdeptrai', '20 triệu vàng', 'Đã Cộng Vào Tài Khoản', 1, '1583042512', 20),
(7, 'vietdeptrai', 'vietdeptrai', '20 triệu vàng', 'Đã Cộng Vào Tài Khoản', 1, '1583042597', 20),
(8, 'tmquang', 'Trần Quang', '20 triệu vàng', 'Đã Cộng Vào Tài Khoản', 1, '1583478000', 20),
(9, 'tmquang', 'Trần Quang', '20 triệu vàng', 'Đã Cộng Vào Tài Khoản', 1, '1583481202', 20),
(10, 'tmquang', 'Trần Quang', '20 triệu vàng', 'Đã Cộng Vào Tài Khoản', 1, '1590049796', 20),
(11, 'tmquang', 'Trần Quang', '20 triệu vàng', 'Đã Cộng Vào Tài Khoản', 1, '1590049977', 20),
(12, 'tmquang', 'Trần Quang', '20 triệu vàng', 'Đã Cộng Vào Tài Khoản', 1, '1590049979', 20),
(13, 'tmquang', 'Trần Quang', '20 triệu vàng', 'Đã Cộng Vào Tài Khoản', 1, '1590049979', 20),
(14, 'tmquang', 'Trần Quang', '20 triệu vàng', 'Đã Cộng Vào Tài Khoản', 1, '1590049980', 20),
(15, 'tmquang', 'Trần Quang', '20 triệu vàng', 'Đã Cộng Vào Tài Khoản', 1, '1590049981', 20),
(16, 'tmquang', 'Trần Quang', '20 triệu vàng', 'Đã Cộng Vào Tài Khoản', 1, '1590049982', 20),
(17, 'tmquang', 'Trần Quang', '20 triệu vàng', 'Đã Cộng Vào Tài Khoản', 1, '1590049983', 20),
(18, 'tmquang', 'Trần Quang', '20 triệu vàng', 'Đã Cộng Vào Tài Khoản', 1, '1590050023', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_napthe`
--

CREATE TABLE `TMQ_napthe` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `serial` varchar(100) DEFAULT NULL,
  `mathe` varchar(100) DEFAULT NULL,
  `loaithe` text CHARACTER SET utf8,
  `menhgia` int(11) DEFAULT NULL,
  `trangthai` text CHARACTER SET utf8,
  `date` text CHARACTER SET utf8,
  `tranid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `TMQ_napthe`
--

INSERT INTO `TMQ_napthe` (`id`, `uid`, `serial`, `mathe`, `loaithe`, `menhgia`, `trangthai`, `date`, `tranid`) VALUES
(1, 'tmquang', '87123618723618236', '614893545765426', 'VIETTEL', 20000, 'Thẻ sai', '10:33:51 21-02-2020', 0),
(2, 'tmquang', '10005923843652', '', '', 50000, 'Chờ', '10:41:07 21-02-2020', 6187771),
(3, 'tmquang', '10005923843652', '614893545765426', '', 50000, 'Thẻ sai', '10:41:45 21-02-2020', 6187789),
(4, 'tmquang', '10005923843654', '614893545765422', 'VIETTEL', 50000, 'Chờ', '10:42:52 21-02-2020', 6187818),
(5, 'tmquang', '10005923843654', '614893545765422', 'VIETTEL', 50000, 'Chờ', '10:45:00 21-02-2020', 6187879),
(6, 'tmquang', '10005923843654', '614893545765422', 'VIETTEL', 50000, 'Chờ', '10:46:10 21-02-2020', 6187911),
(7, 'tmquang', '10005923843652', '614893545765426', 'VIETTEL', 20000, 'Thẻ sai', '10:47:42 21-02-2020', 6187948),
(8, 'tmquang', '10005923843652', '614893545225426', 'VIETTEL', 50000, 'Thẻ sai', '10:50:39 21-02-2020', 6188040),
(9, 'tmquang', '413212341', '2342314231423', 'VIETTEL', 10000, 'Thẻ sai', '09:27:57 15-05-2020', 8039143),
(10, 'tmquang', '10006152928834', '919098889758766', 'VIETTEL', 10000, 'Chờ', '03:44:11 16-05-2020', 8048856);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_nickthuong`
--

CREATE TABLE `TMQ_nickthuong` (
  `id` bigint(20) NOT NULL,
  `taikhoan` text CHARACTER SET utf8 NOT NULL,
  `matkhau` text CHARACTER SET utf8 NOT NULL,
  `loai` text CHARACTER SET utf8 NOT NULL,
  `server` int(11) NOT NULL,
  `trangthai` int(11) NOT NULL,
  `date` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `TMQ_nickthuong`
--

INSERT INTO `TMQ_nickthuong` (`id`, `taikhoan`, `matkhau`, `loai`, `server`, `trangthai`, `date`) VALUES
(1, 'taikhoan1', 'matkhau1\r', 'Nick Sơ Sinh', 0, 0, '14:43:52 24-02-2020'),
(2, 'taikhoan2', 'matkhau2\r', 'Nick Sơ Sinh', 0, 0, '14:43:52 24-02-2020'),
(3, 'taikhoan3', 'matkhau3\r', 'Nick Sơ Sinh', 0, 0, '14:43:52 24-02-2020'),
(4, 'taikhoan4', 'matkhau4\r', 'Nick Sơ Sinh', 0, 0, '14:43:52 24-02-2020'),
(5, 'taikhoan5', 'matkhau5', 'Nick Sơ Sinh', 0, 0, '14:43:52 24-02-2020'),
(6, 'taikhoan1', 'matkhau1\r', 'Nick Sơ Sinh', 0, 0, '14:45:14 24-02-2020'),
(7, 'taikhoan2', 'matkhau2\r', 'Nick Sơ Sinh', 0, 0, '14:45:14 24-02-2020'),
(8, 'taikhoan3', 'matkhau3\r', 'Nick Sơ Sinh', 0, 0, '14:45:14 24-02-2020'),
(9, 'taikhoan4', 'matkhau4\r', 'Nick Sơ Sinh', 0, 0, '14:45:14 24-02-2020'),
(10, 'taikhoan5', 'matkhau5', 'Nick Sơ Sinh', 0, 0, '14:45:14 24-02-2020'),
(11, 'taikhoan1', 'matkhau1\r', 'Nick Sơ Sinh', 0, 0, '14:45:39 24-02-2020'),
(12, 'taikhoan2', 'matkhau2\r', 'Nick Sơ Sinh', 0, 0, '14:45:39 24-02-2020'),
(13, 'taikhoan3', 'matkhau3\r', 'Nick Sơ Sinh', 0, 0, '14:45:39 24-02-2020'),
(14, 'taikhoan4', 'matkhau4\r', 'Nick Sơ Sinh', 0, 0, '14:45:39 24-02-2020'),
(15, 'taikhoan5', 'matkhau5', 'Nick Sơ Sinh', 0, 0, '14:45:39 24-02-2020'),
(16, 'taikhoan1', 'matkhau1\r', 'Nick Sơ Sinh', 0, 0, '14:45:54 24-02-2020'),
(17, 'taikhoan2', 'matkhau2\r', 'Nick Sơ Sinh', 0, 0, '14:45:54 24-02-2020'),
(18, 'taikhoan3', 'matkhau3\r', 'Nick Sơ Sinh', 0, 0, '14:45:54 24-02-2020'),
(19, 'taikhoan4', 'matkhau4\r', 'Nick Sơ Sinh', 0, 0, '14:45:54 24-02-2020'),
(20, 'taikhoan5', 'matkhau5', 'Nick Sơ Sinh', 0, 0, '14:45:54 24-02-2020'),
(21, 't', '', 'Nick Sơ Sinh', 0, 0, '14:47:29 24-02-2020'),
(22, 'a', '', 'Nick Sơ Sinh', 0, 0, '14:47:29 24-02-2020'),
(23, 'i', '', 'Nick Sơ Sinh', 0, 0, '14:47:29 24-02-2020'),
(24, 'k', '', 'Nick Sơ Sinh', 0, 0, '14:47:29 24-02-2020'),
(25, 'h', '', 'Nick Sơ Sinh', 0, 0, '14:47:29 24-02-2020'),
(26, 't', '', 'Nick VIP', 0, 0, '14:47:46 24-02-2020'),
(27, 't', '', 'Nick VIP', 0, 0, '14:48:32 24-02-2020'),
(28, 'taikhoan10102', '1263q', 'Nick VIP', 0, 0, '14:49:10 24-02-2020');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_ruttien`
--

CREATE TABLE `TMQ_ruttien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` text CHARACTER SET utf8 NOT NULL,
  `bank` int(11) NOT NULL,
  `ctk` text CHARACTER SET utf8 NOT NULL,
  `stk` text CHARACTER SET utf8 NOT NULL,
  `chinhanh` text CHARACTER SET utf8 NOT NULL,
  `amount` int(11) NOT NULL,
  `noidung` text CHARACTER SET utf8,
  `trangthai` text CHARACTER SET utf8 NOT NULL,
  `time` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `TMQ_ruttien`
--

INSERT INTO `TMQ_ruttien` (`id`, `uid`, `bank`, `ctk`, `stk`, `chinhanh`, `amount`, `noidung`, `trangthai`, `time`) VALUES
(1, 'tmquang', 6, 'Trần Minh Quang', '172536261253', 'Vĩnh Tường', 100000, '123', 'Chờ GD', '16:16:44 23-02-2020');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_setting`
--

CREATE TABLE `TMQ_setting` (
  `key` text NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `TMQ_setting`
--

INSERT INTO `TMQ_setting` (`key`, `text`) VALUES
('title', 'Xây dựng và phát triển bởi TMQ'),
('baotri', '0'),
('facebook', 'https://www.facebook.com/zTMQz'),
('phone', '0585589918'),
('name', 'Trần Minh Quang'),
('thongbao', '12345'),
('logo', 'https://demo2.tmquang.monster/admin/images/logo.png'),
('ck_ctv', '0.5'),
('odp_muanick', '0'),
('email', 'tmqsendmail@gmail.com'),
('pass_email', 'quangdz123'),
('port', '465');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_tintuc`
--

CREATE TABLE `TMQ_tintuc` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text CHARACTER SET utf8 NOT NULL,
  `noidung` text CHARACTER SET utf8 NOT NULL,
  `img` text CHARACTER SET utf8 NOT NULL,
  `date` text CHARACTER SET utf8 NOT NULL,
  `name` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_topnap`
--

CREATE TABLE `TMQ_topnap` (
  `id` bigint(20) NOT NULL,
  `uid` text CHARACTER SET utf8 NOT NULL,
  `sotien` int(11) NOT NULL,
  `date` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `TMQ_topnap`
--

INSERT INTO `TMQ_topnap` (`id`, `uid`, `sotien`, `date`) VALUES
(1, 'tmquang', 10000000, '21-2-2020'),
(2, 'tmquang1', 1000000, '21-2-2020'),
(3, 'tmquang2', 100000, '21-2-2020'),
(4, 'tmquang3', 10000, '21-2-2020'),
(5, 'tmquang4', 1000, '21-2-2020'),
(6, 'tmquang5', 100, '21-2-2020'),
(7, 'tmquang6', 10, '21-2-2020'),
(8, 'tmquang7', 9, '21-2-2020'),
(9, 'tmquang8', 8, '21-2-2020'),
(10, 'tmquang9', 7, '21-2-2020');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_user`
--

CREATE TABLE `TMQ_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uid` text CHARACTER SET utf8,
  `matkhau` text CHARACTER SET utf8,
  `pass` text CHARACTER SET utf8,
  `name` text CHARACTER SET utf8,
  `email` text CHARACTER SET utf8,
  `phone` text CHARACTER SET utf8,
  `facebook` text CHARACTER SET utf8,
  `cash` int(11) DEFAULT NULL,
  `admin` int(11) DEFAULT NULL,
  `ban` int(11) DEFAULT NULL,
  `date` text CHARACTER SET utf8,
  `avatar` text CHARACTER SET utf8,
  `vang` int(11) DEFAULT NULL,
  `hinhthuc_ad` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `TMQ_user`
--

INSERT INTO `TMQ_user` (`id`, `uid`, `matkhau`, `pass`, `name`, `email`, `phone`, `facebook`, `cash`, `admin`, `ban`, `date`, `avatar`, `vang`, `hinhthuc_ad`) VALUES
(1, 'tmquang', 'e10adc3949ba59abbe56e057f20f883e', 'e10adc3949ba59abbe56e057f20f883e', 'Trần Quang', 'tmquang0209@gmail.com', NULL, NULL, 455000, 9, NULL, '21-02-2020', '', 300000000, 1),
(2, 'Test911', 'a7e9dc731659b37ab5709200e55975ca', 'e10adc3949ba59abbe56e057f20f883e', 'Test911', 'andanh3705@gmail.com', NULL, NULL, 0, 9, NULL, '21-02-2020', '', NULL, 1),
(3, '123123', '4297f44b13955235245b2497399d7a93', NULL, '123123', '123123123@gmail.com', NULL, NULL, 0, 0, NULL, '23-02-2020', '', NULL, NULL),
(37, '993658054177476', NULL, NULL, 'Trần Minh Quang', 'minhquang4a@gmail.com', NULL, NULL, 0, 0, 0, '05-05-2020', NULL, NULL, NULL),
(4, '&lt;script&gt;alert(“XSS”)&lt;/script&gt;', 'e6f6f35e4fabf98483e73bea31340225', NULL, '&lt;script&gt;alert(“XSS”)&lt;/script&gt;', 'cc@cc.cc', NULL, NULL, 0, 0, NULL, '23-02-2020', '', NULL, NULL),
(5, 'Hieucoder', '8b0e9a9ce3838cab163f42445cbcc70c', NULL, 'Phạm Văn Hiếu', 'jradio.ent@gmail.com', NULL, NULL, 0, 0, NULL, '23-02-2020', '', NULL, NULL),
(6, 'DuongDucNguyen', 'b80f6e1ecad4951ea4fc91efe893b989', NULL, 'Dương Đức Nguyên', 'duongnguyendeptrai@hotmail.com', NULL, NULL, 0, 0, NULL, '23-02-2020', '', NULL, NULL),
(7, '&lt;script&gt;alert(\'XSS\');&lt;/script&gt;', '6373ddf3790c9b95e095583ca5c76c8c', NULL, '&lt;script&gt;alert(\'ok\');&lt;/script&gt;', 'ok@gmail.com', NULL, NULL, 0, 0, NULL, '23-02-2020', '', NULL, NULL),
(8, 'tttttt', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'TTTT XXX', 'zevildrag@gmail.com', NULL, NULL, 0, 0, NULL, '23-02-2020', '', NULL, NULL),
(9, 'thanhgame123', '84597c1d439952e5565b49a5e09d87cc', NULL, 'thanhgame', 'congtacv222@gmail.com', NULL, NULL, 0, 0, NULL, '24-02-2020', '', NULL, NULL),
(10, '&lt;script&gt;alert(\'a\')&lt;/script&gt;', '181135e53d1fb57d5073867295719c5a', NULL, '&lt;script&gt;alert(\'a\')&lt;/script&gt;', 'abc@abc.abc', NULL, NULL, 0, 0, NULL, '24-02-2020', '', NULL, NULL),
(11, '&lt;script&gt;alert(&quot;a&quot;);&lt;/script&gt;', 'a3642df92b456a38ab55024474f3330d', NULL, '&lt;script&gt;alert(&quot;a&quot;);&lt;/script&gt;', 'abc@anc.abc', NULL, NULL, 0, 0, NULL, '24-02-2020', '', NULL, NULL),
(12, '&lt;script&gt;debugger;&lt;/script&gt;', 'db0d70526dcc16b4963689eaad3fb808', NULL, '&lt;script&gt;debugger;&lt;/script&gt;', 'asdasd@asda.asd', NULL, NULL, 0, 0, NULL, '24-02-2020', '', NULL, NULL),
(13, '&quot;&gt;&lt;script&gt;alert(\'XSS\')&lt;/script&gt;', 'd275ce71267c2d56b8e9da3912f75d81', NULL, '&quot;&gt;&lt;script&gt;alert(\'XSS\')&lt;/script&gt;', 'lk@a.asd', NULL, NULL, 0, 0, NULL, '24-02-2020', '', NULL, NULL),
(14, '&quot;&gt;&lt;script&gt;alert(&quot;XSS&quot;)&lt;/script&gt;', '7aa92e21c6bfb3870355b28964c0f966', NULL, '&quot;&gt;&lt;script&gt;alert(&quot;XSS&quot;)&lt;/script&gt;', 'asdds@skkdsa.csdf', NULL, NULL, 0, 0, NULL, '24-02-2020', '', NULL, NULL),
(15, '&quot;&gt;&lt;script&gt;alert(String.fromCharCode(88,83,83))&lt;/script&gt;', '2db01b5ad2cb20e23761f8a1d46befe4', NULL, '&quot;&gt;&lt;script&gt;alert(String.fromCharCode(88,83,83))&lt;/script&gt;', 'asdoo@ksakd.asdac', NULL, NULL, 0, 0, NULL, '24-02-2020', '', NULL, NULL),
(16, '&lt;img src=x onerror=alert(\'XSS\');&gt;', '664a3e2a1b3780297d3a8789566e3596', NULL, '&lt;img src=x onerror=alert(\'XSS\');&gt;', 'a@gds.dfcc', NULL, NULL, 0, 0, NULL, '24-02-2020', '', NULL, NULL),
(17, '\\x6A\\x61\\x76\\x61\\x73\\x63\\x72\\x69\\x70\\x74\\x3aalert(1)', 'fe05e990845e123cfb48d3866ab4f5c8', NULL, '\\x6A\\x61\\x76\\x61\\x73\\x63\\x72\\x69\\x70\\x74\\x3aalert(1)', 'asd@uer.gfd', NULL, NULL, 0, 0, NULL, '24-02-2020', '', NULL, NULL),
(18, '&lt;script src=&quot;data:;base64,YWxlcnQoZG9jdW1lbnQuZG9tYWluKQ==&quot;&gt;&lt;/script&gt;', 'ed8290465d7f4ceb814d9af641ecb3bc', NULL, '&lt;script src=&quot;data:;base64,YWxlcnQoZG9jdW1lbnQuZG9tYWluKQ==&quot;&gt;&lt;/script&gt;', 'fsaofos@sadajfj.casc', NULL, NULL, 0, 0, NULL, '24-02-2020', '', NULL, NULL),
(19, '#&quot;&gt;&lt;img src=/ onerror=alert(2)&gt;', 'f595c4b656ab17dd4576a943dca52b78', NULL, '#&quot;&gt;&lt;img src=/ onerror=alert(2)&gt;', 'fasf@asl.fasf', NULL, NULL, 0, 0, NULL, '24-02-2020', '', NULL, NULL),
(20, '&quot; onclick=alert(1)//&lt;button ‘ onclick=alert(1)//&gt; */ alert(1)//', '3f5e6e956d20e23a10b8579ab0552a46', NULL, '&quot; onclick=alert(1)//&lt;button ‘ onclick=alert(1)//&gt; */ alert(1)//', 'ksa@llds.dcs', NULL, NULL, 0, 0, NULL, '24-02-2020', '', NULL, NULL),
(21, '--&gt;\'&quot;/&gt;&lt;/sCript&gt;&lt;svG x=&quot;&gt;&quot; onload=(co\\u006efirm)``&gt;', '4d97a4ce40c0443c613b054a47cad113', NULL, '--&gt;\'&quot;/&gt;&lt;/sCript&gt;&lt;svG x=&quot;&gt;&quot; onload=(co\\u006efirm)``&gt;', 'asodsao@fdsfka.kasd', NULL, NULL, 0, 0, NULL, '24-02-2020', '', NULL, NULL),
(22, 'a=()=&gt;{c=0;for(i in self){if(/^a[rel]+t$/.test(i)){return c}c++}};self[Object.keys(self)[a()]](&quot;1&quot;)', 'd1dd3a38cf880877c9a23b84ed433b25', NULL, 'a=()=&gt;{c=0;for(i in self){if(/^a[rel]+t$/.test(i)){return c}c++}};self[Object.keys(self)[a()]](&quot;1&quot;)', 'aosdo@dkdfds.fdsf', NULL, NULL, 0, 0, NULL, '24-02-2020', '', NULL, NULL),
(23, '&amp;#97;&amp;#108;&amp;#101;&amp;#114;&amp;#116;', 'b031b98a8068e3f4d0795fb0d35ccd61', NULL, '&amp;#97;&amp;#108;&amp;#101;&amp;#114;&amp;#116;', '3213k2@sakdas.cas', NULL, NULL, 0, 0, NULL, '24-02-2020', '', NULL, NULL),
(24, 'ngoquocdat', '25d55ad283aa400af464c76d713c07ad', NULL, 'datlechin', 'datlechin@gmail.com', NULL, NULL, 0, 0, NULL, '28-02-2020', '', NULL, NULL),
(25, 'ocvodich', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'Oc Vo Dich', 'ocvodich@gmail.com', NULL, NULL, 0, 0, NULL, '29-02-2020', '', NULL, NULL),
(26, 'viethaichin', 'fcea920f7412b5da7be0cf42b8c93759', NULL, '&lt;script&gt;alert(&quot;xss&quot;)&lt;/script&gt;', 'Cuongzim2@ae.ae', NULL, NULL, 0, 0, NULL, '01-03-2020', '', NULL, NULL),
(27, 'vietdeptrai', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'vietdeptrai', 'vietdeptrai@gmail.com', NULL, NULL, 0, 0, NULL, '01-03-2020', '', NULL, NULL),
(31, 'hungproh5n', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'kimhuyng', 'cherad@gmail.com', NULL, NULL, 0, 0, NULL, '01-03-2020', '', NULL, NULL),
(28, 'tmquang123', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'Quang Trần', 'fcvinhphuc123@aahsc.coss', NULL, NULL, 0, 0, NULL, '01-03-2020', '', NULL, NULL),
(29, '6125372356', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'Quang Trần', 'fcvinhphuc123@178236786', NULL, NULL, 0, 0, NULL, '01-03-2020', '', NULL, NULL),
(30, '123123123123', 'e10adc3949ba59abbe56e057f20f883e', NULL, 'Quang Trần', 'fcvinhphuc123@111111', NULL, NULL, 0, 0, NULL, '01-03-2020', '', NULL, NULL),
(32, 'kunkeypr', 'e10adc3949ba59abbe56e057f20f883e', NULL, '&lt;script&gt;alert(\'kunm\');&lt;/script&gt;', 'mm13571234@gmail.com', NULL, NULL, 0, 0, NULL, '02-03-2020', '', NULL, NULL),
(33, '&quot;&gt;&lt;script&gt;alert(document.cookie);&lt;/script&gt;', 'fcdbdb31d5cb3da37af0265577ed28fc', NULL, '&quot;&gt;&lt;script&gt;alert(document.cookie);&lt;/script&gt;', 'kodoku169@gmail.com', NULL, NULL, 0, 0, 0, '18-03-2020', '', 0, 0),
(34, 'conganhncov', '4297f44b13955235245b2497399d7a93', NULL, 'Công Đơ', 'conganhncov@gmail.com', NULL, NULL, 0, 0, 0, '23-03-2020', '', 0, 0),
(35, 'Huydremix', '478b025fbdd9585fcd65c07d22f52260', NULL, 'Huydremix', 'huyofficial2@gmail.com', NULL, NULL, 0, 0, 0, '29-03-2020', '', 0, 0),
(36, 'seovo94', '4297f44b13955235245b2497399d7a93', NULL, 'seovo111', 'lambinhnhis3@gmail.com', NULL, NULL, 0, 0, 0, '10-04-2020', '', 0, 0),
(38, '1017520311791250', NULL, NULL, 'Trần Minh Quang', 'minhquang4a@gmail.com', NULL, NULL, 0, 0, 0, '05-05-2020', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `TMQ_wheel`
--

CREATE TABLE `TMQ_wheel` (
  `tyle201` int(11) NOT NULL,
  `tyle202` int(11) NOT NULL,
  `tyle203` int(11) NOT NULL,
  `tyle204` int(11) NOT NULL,
  `tyle205` int(11) NOT NULL,
  `tyle206` int(11) NOT NULL,
  `tyle207` int(11) NOT NULL,
  `tyle208` int(11) NOT NULL,
  `tyle209` int(11) NOT NULL,
  `tyle2010` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `TMQ_wheel`
--

INSERT INTO `TMQ_wheel` (`tyle201`, `tyle202`, `tyle203`, `tyle204`, `tyle205`, `tyle206`, `tyle207`, `tyle208`, `tyle209`, `tyle2010`) VALUES
(100, 90, 80, 70, 60, 50, 40, 30, 20, 10);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `soduravang`
--
ALTER TABLE `soduravang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `TMQ_baiviet`
--
ALTER TABLE `TMQ_baiviet`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `TMQ_bank`
--
ALTER TABLE `TMQ_bank`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `TMQ_banner`
--
ALTER TABLE `TMQ_banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `TMQ_biendoi`
--
ALTER TABLE `TMQ_biendoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `TMQ_chuyenmuc`
--
ALTER TABLE `TMQ_chuyenmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `TMQ_chuyentien`
--
ALTER TABLE `TMQ_chuyentien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `TMQ_giftcode`
--
ALTER TABLE `TMQ_giftcode`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `TMQ_inbox`
--
ALTER TABLE `TMQ_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `TMQ_lichsu`
--
ALTER TABLE `TMQ_lichsu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `TMQ_lichsuquay`
--
ALTER TABLE `TMQ_lichsuquay`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `TMQ_napthe`
--
ALTER TABLE `TMQ_napthe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `TMQ_nickthuong`
--
ALTER TABLE `TMQ_nickthuong`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `TMQ_ruttien`
--
ALTER TABLE `TMQ_ruttien`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `TMQ_tintuc`
--
ALTER TABLE `TMQ_tintuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `TMQ_topnap`
--
ALTER TABLE `TMQ_topnap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `TMQ_user`
--
ALTER TABLE `TMQ_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `soduravang`
--
ALTER TABLE `soduravang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `TMQ_baiviet`
--
ALTER TABLE `TMQ_baiviet`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `TMQ_bank`
--
ALTER TABLE `TMQ_bank`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `TMQ_banner`
--
ALTER TABLE `TMQ_banner`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `TMQ_biendoi`
--
ALTER TABLE `TMQ_biendoi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `TMQ_chuyenmuc`
--
ALTER TABLE `TMQ_chuyenmuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `TMQ_chuyentien`
--
ALTER TABLE `TMQ_chuyentien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `TMQ_giftcode`
--
ALTER TABLE `TMQ_giftcode`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `TMQ_inbox`
--
ALTER TABLE `TMQ_inbox`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `TMQ_lichsu`
--
ALTER TABLE `TMQ_lichsu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `TMQ_lichsuquay`
--
ALTER TABLE `TMQ_lichsuquay`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `TMQ_napthe`
--
ALTER TABLE `TMQ_napthe`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `TMQ_nickthuong`
--
ALTER TABLE `TMQ_nickthuong`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `TMQ_ruttien`
--
ALTER TABLE `TMQ_ruttien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `TMQ_tintuc`
--
ALTER TABLE `TMQ_tintuc`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `TMQ_topnap`
--
ALTER TABLE `TMQ_topnap`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `TMQ_user`
--
ALTER TABLE `TMQ_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
