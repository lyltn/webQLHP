-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 03, 2022 lúc 04:47 PM
-- Phiên bản máy phục vụ: 10.4.22-MariaDB
-- Phiên bản PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `javacuoiky`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hocvien`
--

CREATE TABLE `hocvien` (
  `mahv` varchar(50) NOT NULL,
  `tenhv` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `sdt` varchar(10) NOT NULL,
  `ngayvaohoc` varchar(50) NOT NULL,
  `makh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hocvien`
--

INSERT INTO `hocvien` (`mahv`, `tenhv`, `sdt`, `ngayvaohoc`, `makh`) VALUES
('1', 'Lê Ngọc Ly', '555', '2022-05-20', '1A-ta'),
('a001', 'Dương Anh Vũ', '0354356562', '2021-02-11', '2A-ta'),
('a002', 'Lưu Danh', '0563435564', '2020-02-11', '02-knm'),
('a003', 'Đoàn Văn', '0526895245', '2020-04-22', '2A-ta'),
('a004', 'Trần Đình Trọng', '0976435785', '2020-03-21', '2A-ta'),
('a005', 'Lê Văn Lợi', '0203355341', '2020-03-08', '2A-ta'),
('b001', 'Lê Huy Khoa', '0743578533', '2020-05-24', '1B-ta'),
('b002', 'Trần Anh Tuấn', '0853577434', '2020-25-04', '1B-ta'),
('b003', 'Đinh Kim Tuấn', '0864368643', '2020-04-27', '1B-ta'),
('b004', 'Nguyễn Anh Đức', '0865424574', '2020-05-25', '1B-ta'),
('b005', 'Đoàn Văn', '0875326579', '2020-04-25', '1B-ta'),
('b006', 'Lê Thị Ngọc Ly', '123456789', '2021-02-16', '1B-ta'),
('b009', 'LuLu', '35435465', '2022-05-30', '01-knm'),
('b01', 'Lê Thị Ngọc', '0968537574', '04-04-2020', 'ITcb'),
('c001', 'Đỗ Duy Mạnh', '0876436799', '07-05-2020', '02-knm'),
('c002', 'Nguyễn Văn Quyết', '0976432478', '06-05-2020', '02-knm'),
('v001', 'Huỳnh Tiến Bảo', '0345546243', '01-02-2020', '1A-ta'),
('v002', 'Trịnh Văn Lợi', '085257578', '01-01-2022', '1A-ta'),
('v005', 'Bùi Tiến Dũng ', '0354634563', '01-02-2020', '1A-ta'),
('x001', 'Nguyễn Văn An', '0937486584', '23-01-2020', '01-knm'),
('x003', 'Phan Xuân Mạnh', '0642579635', '01-01-2022', '01-knm'),
('y001', 'Hà Đức Chinh', '0972645837', '2020-01-30', 'ITcb'),
('y009', 'Ngô Ánh Tuyết ', '0234355464', '2020-01-20', 'ITcb');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahoc`
--

CREATE TABLE `khoahoc` (
  `makh` varchar(50) NOT NULL,
  `tenkh` varchar(100) NOT NULL,
  `hocphi` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khoahoc`
--

INSERT INTO `khoahoc` (`makh`, `tenkh`, `hocphi`) VALUES
('01-knm', 'Kỹ năng mềm 1', 1500000),
('02-knm', 'Kỹ năng mềm 2', 2000000),
('1A-ta', 'Tiếng anh 1A', 2000000),
('1B-ta', 'Tiếng anh 1B', 2500000),
('2A-ta', 'Tiếng anh 2A', 3000000),
('ITcb', 'Công nghệ thông tin cơ bản', 1500000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `taikhoan` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `vaitro` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`taikhoan`, `matkhau`, `vaitro`) VALUES
('1', '1', 'hocvien'),
('a001', 'abc16', 'hocvien'),
('a003', 'a003', 'hocvien'),
('b006', 'b006', 'hocvien'),
('b009', 'b009', 'hocvien'),
('b01', 'b02', 'hocvien'),
('c001', 'c002', 'hocvien'),
('huynhphap', 'phap00', 'quanly'),
('khanhhuy001', 'huy12', 'nhanvien'),
('ngocdiep', 'diep11', 'quanly'),
('nguyennga003', 'nga45', 'nhanvien'),
('thanhhien003', 'hien23', 'nhanvien'),
('thuytien004', 'nga98', 'nhanvien'),
('tranthanh002', 'thanh45', 'nhanvien'),
('v002', 'v002', 'hocvien'),
('x003', 'x003', 'hocvien'),
('y001', 'hello3', 'hocvien');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nophocphi`
--

CREATE TABLE `nophocphi` (
  `mahv` varchar(50) NOT NULL,
  `thangnop` date NOT NULL,
  `nopthang` int(11) NOT NULL,
  `sotien` bigint(20) NOT NULL,
  `image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `nophocphi`
--

INSERT INTO `nophocphi` (`mahv`, `thangnop`, `nopthang`, `sotien`, `image`) VALUES
('1', '2022-05-18', 1, 2000000, 'b.png'),
('1', '2022-05-18', 2, 22222, 'b.png'),
('1', '2022-05-18', 3, 200000, 'b.png'),
('1', '2022-05-18', 4, 4000000, '1550724570724_7959385-1.jpg'),
('1', '2022-05-24', 5, 2000000, '2e85193f10fbdda584ea.jpg'),
('a001', '2020-04-09', 1, 3000000, 'b.png'),
('a001', '2020-05-08', 2, 3000000, 'b.png'),
('a001', '2020-06-08', 3, 2900000, NULL),
('a001', '2020-07-07', 4, 3000000, NULL),
('a001', '2020-08-13', 5, 3000000, NULL),
('a001', '2022-02-15', 6, 3000000, NULL),
('a001', '2022-02-15', 7, 3800000, NULL),
('a001', '2022-02-15', 8, 3000000, NULL),
('a001', '2022-02-15', 9, 2000000, NULL),
('a001', '2022-05-24', 10, 3000000, '2e85193f10fbdda584ea.jpg'),
('a001', '2022-05-24', 11, 3000000, '2e85193f10fbdda584ea.jpg'),
('a002', '2020-04-23', 1, 3000000, NULL),
('b001', '2020-05-25', 1, 2400000, NULL),
('b002', '2020-05-20', 1, 2500000, NULL),
('b002', '2020-06-24', 2, 2500000, NULL),
('b002', '2020-07-29', 3, 2500000, NULL),
('b005', '2020-06-24', 1, 2500000, NULL),
('b005', '2020-06-30', 2, 2500000, NULL),
('b009', '2022-05-30', 1, 1500000, 'b.png'),
('b01', '2022-02-16', 1, 1500000, NULL),
('v001', '2020-03-03', 1, 2000000, 'b.png'),
('v005', '2020-08-11', 1, 2000000, 'b.png'),
('v005', '2020-03-06', 2, 2000000, 'b.png'),
('x001', '2020-02-26', 1, 1500000, 'b.png'),
('y001', '2020-02-12', 1, 1500000, NULL),
('y001', '2020-03-19', 2, 1500000, NULL),
('y009', '2020-02-11', 1, 1500000, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `taikhoan` varchar(50) NOT NULL,
  `khid` varchar(50) NOT NULL,
  `hocphi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuhuynh`
--

CREATE TABLE `phuhuynh` (
  `phid` int(11) NOT NULL,
  `mahv` varchar(50) NOT NULL,
  `taikhoan` varchar(50) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phuhuynh`
--

INSERT INTO `phuhuynh` (`phid`, `mahv`, `taikhoan`, `sdt`, `mail`) VALUES
(1, 'a003', 'thanhhien003', '123456789', 'ngocly27112003@gmail.com'),
(2, 'a004', 'alo11', '1234567890', ' lyngoc112003@gmail.com'),
(3, 'a005', 'Ngan98', '0704942625', 'os21it1vku@gmail.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `hocvien`
--
ALTER TABLE `hocvien`
  ADD PRIMARY KEY (`mahv`,`makh`),
  ADD KEY `makh` (`makh`);

--
-- Chỉ mục cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD PRIMARY KEY (`makh`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`taikhoan`);

--
-- Chỉ mục cho bảng `nophocphi`
--
ALTER TABLE `nophocphi`
  ADD PRIMARY KEY (`mahv`,`nopthang`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`taikhoan`,`khid`),
  ADD KEY `khid` (`khid`);

--
-- Chỉ mục cho bảng `phuhuynh`
--
ALTER TABLE `phuhuynh`
  ADD PRIMARY KEY (`phid`),
  ADD KEY `mahv` (`mahv`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `phuhuynh`
--
ALTER TABLE `phuhuynh`
  MODIFY `phid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hocvien`
--
ALTER TABLE `hocvien`
  ADD CONSTRAINT `hocvien_ibfk_1` FOREIGN KEY (`makh`) REFERENCES `khoahoc` (`makh`);

--
-- Các ràng buộc cho bảng `nophocphi`
--
ALTER TABLE `nophocphi`
  ADD CONSTRAINT `nophocphi_ibfk_1` FOREIGN KEY (`mahv`) REFERENCES `hocvien` (`mahv`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`taikhoan`) REFERENCES `nguoidung` (`taikhoan`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`khid`) REFERENCES `khoahoc` (`makh`);

--
-- Các ràng buộc cho bảng `phuhuynh`
--
ALTER TABLE `phuhuynh`
  ADD CONSTRAINT `phuhuynh_ibfk_1` FOREIGN KEY (`mahv`) REFERENCES `hocvien` (`mahv`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
