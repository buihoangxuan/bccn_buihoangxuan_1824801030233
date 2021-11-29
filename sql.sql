-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2021 at 07:44 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dacsn`
--

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `id` int(10) NOT NULL,
  `iduser` int(10) DEFAULT 0,
  `name` varchar(255) NOT NULL,
  `diachi` varchar(255) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pttt` tinyint(1) NOT NULL DEFAULT 1,
  `ngaydathang` varchar(50) DEFAULT NULL,
  `tong` int(10) NOT NULL DEFAULT 0,
  `trangthai` tinyint(1) NOT NULL DEFAULT 0,
  `name2` varchar(255) DEFAULT NULL,
  `diachi2` varchar(255) DEFAULT NULL,
  `sdt2` varchar(50) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `iduser`, `name`, `diachi`, `sdt`, `email`, `pttt`, `ngaydathang`, `tong`, `trangthai`, `name2`, `diachi2`, `sdt2`, `email2`) VALUES
(22, 7, 'hoangxuan', 'Chau Thanh, Tay Ninh', '0933705634', 'hoangxuantayninhvn@gmail.com', 1, '04:18:11pm 29/11/2021', 26001000, 0, NULL, NULL, NULL, NULL),
(23, 7, 'hoangxuan', 'Chau Thanh, Tay Ninh', '0933705634', 'hoangxuantayninhvn@gmail.com', 1, '04:20:37pm 29/11/2021', 0, 0, NULL, NULL, NULL, NULL),
(24, 7, 'hoangxuan', 'Chau Thanh, Tay Ninh', '0933705634', 'hoangxuantayninhvn@gmail.com', 1, '04:21:36pm 29/11/2021', 26000000, 0, NULL, NULL, NULL, NULL),
(25, 7, 'hoangxuan', 'Chau Thanh, Tay Ninh', '0933705634', 'hoangxuantayninhvn@gmail.com', 1, '04:52:04pm 29/11/2021', 26001000, 0, NULL, NULL, NULL, NULL),
(26, 7, 'hoangxuan', 'Chau Thanh, Tay Ninh', '0933705634', 'hoangxuantayninhvn@gmail.com', 1, '07:24:09pm 29/11/2021', 5000000, 0, NULL, NULL, NULL, NULL),
(27, 7, 'hoangxuan', 'Chau Thanh, Tay Ninh', '0933705634', 'hoangxuantayninhvn@gmail.com', 1, '07:28:24pm 29/11/2021', 500000, 0, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `iduser` int(10) NOT NULL,
  `idsp` int(10) NOT NULL,
  `img` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gia` int(10) NOT NULL,
  `soluong` int(3) NOT NULL,
  `thanhtien` int(10) NOT NULL,
  `idbill` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `iduser`, `idsp`, `img`, `name`, `gia`, `soluong`, `thanhtien`, `idbill`) VALUES
(35, 7, 18, '6.jpg', 'Balo snsBHX', 1000, 1, 1000, 22),
(36, 7, 20, '7.jpg', 'Samsung Galaxy Z Flip3', 26000000, 1, 26000000, 22),
(37, 7, 20, '7.jpg', 'Samsung Galaxy Z Flip3', 26000000, 1, 26000000, 24),
(38, 7, 20, '7.jpg', 'Samsung Galaxy Z Flip3', 26000000, 1, 26000000, 25),
(39, 7, 18, '6.jpg', 'Balo snsBHX', 1000, 1, 1000, 25),
(40, 7, 12, '2.gif', 'Laptop Sony Vaio', 5000000, 1, 5000000, 26),
(41, 7, 15, '9.jpg', 'Samsung Galaxy Watch', 500000, 1, 500000, 27);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`) VALUES
(16, 'Laptop'),
(17, 'Đồng hồ'),
(18, 'Balo'),
(19, 'Phụ kiện thời trang'),
(20, 'Điện thoại');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gia` double(10,2) DEFAULT 0.00,
  `img` varchar(255) DEFAULT NULL,
  `mota` text DEFAULT NULL,
  `luotxem` int(11) DEFAULT 0,
  `danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `gia`, `img`, `mota`, `luotxem`, `danhmuc`) VALUES
(12, 'Laptop Sony Vaio', 5000000.00, '2.gif', 'Đây là một chiếc máy có thiết kế độc đáo, hỗ trợ nhiều công nghệ độc quyền từ Sony dựa trên phần cứng mạnh mẽ và các ứng dụng tích hợp thú vị. Mức giá của Sony Vaio SVE14136CV 53234G50GW8 tương đối cao nên nó phù hợp với người có khả năng tài chính và chiếc máy này là một sự lựa chọn hợp lý', 0, 16),
(13, 'Mi Band 5', 200000.00, '1.jpg', 'Vòng đeo tay thông minh Mi Band 5 có màn hình 1.1 inch cùng độ phân giải là 126 x 294 pixels, lớn hơn so với phiên bản 0.95 inch của Mi Band 4. Mật độ điểm ảnh trên Mi Band 5 được nâng cấp lên đến 300ppi, vì thế người dùng có thể quan sát các thông báo rõ ràng trên màn hình. Dây đeo làm từ silicone với thiết kế ôm trọn cổ tay, mang lại cảm giác vô cùng mềm mại và không bị phai màu khi sử dụng sau một thời gian dài.', 0, 17),
(14, 'Apple Watch S6', 60000.00, '4.jpg', 'Apple Watch S6 mang đến những nâng cấp hữu ích để hỗ trợ người dùng một cách tối ưu nhất. Nổi bật trong số đó là chip xử lý S6 cải thiện hiệu năng, hệ điều hành watchOS 7 với nhiều tính năng mới hứa hẹn sẽ mang đến những trải nghiệm tốt hơn, thú vị hơn', 0, 17),
(15, 'Samsung Galaxy Watch', 500000.00, '9.jpg', 'Samsung Galaxy Watch 3 41mm viền thép bạc dây da sở hữu 2 nút bấm và vòng bezel xoay điều khiển vật lý độc đáo. Màn hình 1.2 inch cùng độ phân giải 360 x 360 pixels giúp hình ảnh hiển thị được chân thật, rõ nét. Viền đồng hồ được làm bằng thép cứng cáp cùng dây đeo bằng da tạo cảm giác chắc chắn và dễ chịu cho người dùng khi đeo.', 0, 17),
(16, 'Đồng hồ Garmin Forerunner', 70000.00, '3.jpg', 'Đồng hồ có kiểu dáng gọn nhẹ, năng động với dây silicone mềm mại, thoải mái khi đeo ngay cả khi đổ nhiều mồ hôi. Trọng lượng của chiếc đồng hồ này chỉ 36 gam, cho cổ tay cảm giác nhẹ nhàng khi tập luyện.', 0, 17),
(17, 'Nón thời trang bãi biển', 5000.00, '5.jpg', 'Mũ MLB Shadow Adjustable Cap New York Yankees màu đen là chiếc mũ thời trang cao cấp tới từ thương hiệu MLB Hàn Quốc. Mũ MLB là một sản phẩm đang được rất nhiều người săn đón bởi nó mang vẻ đẹp trẻ trung, hiện đại, cho người dùng thể hiện được phong cách, cá tính của mình.', 0, 19),
(18, 'Balo snsBHX', 1000.00, '6.jpg', 'Đặc điểm nổi bật\r\n\r\nThiết kế thời trang phù hợp với nhiều lựa tuổi.\r\nCó kích cỡ thực tế 38.5 x 49 x 17 cm.\r\nSử dụng chất liệu cao cấp có độ bền cao,chống thấm và gọn nhẹ.\r\nDây đeo vai thiết kế bản lớn chịu lực tốt.\r\nChống sốc tốt, hạn chế thấp nhất rủi ro hư hỏng cho các thiết bị.\r\nNhiều ngăn tiện lợi trong đó có 1 ngăn đựng vừa laptop 15.6 inch.', 0, 18),
(19, 'Điện thoại iPhone 12 64GB', 20000000.00, '8.jpg', 'Trong những tháng cuối năm 2020, Apple đã chính thức giới thiệu đến người dùng cũng như iFan thế hệ iPhone 12 series mới với hàng loạt tính năng bứt phá, thiết kế được lột xác hoàn toàn, hiệu năng đầy mạnh mẽ và một trong số đó chính là iPhone 12 64GB.', 0, 20),
(20, 'Samsung Galaxy Z Flip3', 26000000.00, '7.jpg', 'Nối tiếp thành công của Galaxy Z Flip 5G, trong sự kiện Galaxy Unpacked vừa qua Samsung tiếp tục giới thiệu đến thế giới về Galaxy Z Flip3 5G 256GB. Sản phẩm có nhiều cải tiến từ độ bền cho đến hiệu năng và thậm chí nó còn vượt xa hơn mong đợi của mọi người.', 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `id` int(11) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `diachi` varchar(255) DEFAULT NULL,
  `sdt` varchar(20) DEFAULT NULL,
  `role` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`id`, `user`, `pass`, `email`, `diachi`, `sdt`, `role`) VALUES
(7, 'hoangxuan', '15935789', 'hoangxuantayninhvn@gmail.com', 'Chau Thanh, Tay Ninh', '0933705634', 0),
(8, 'xuanbui', '15935789', 'hoangxuantayninhvn123@gmail.com', NULL, NULL, 1),
(9, 'xuan', '123', 'hoangxuantayninhvn@gmail.com', NULL, NULL, 0),
(10, 'xuanb', '123', 'hoangxuantayninhvn@gmail.com', NULL, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lk_sp_dm` (`danhmuc`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `lk_sp_dm` FOREIGN KEY (`danhmuc`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
