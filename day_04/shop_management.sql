-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 23, 2023 at 01:25 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `CTHD`
--

CREATE TABLE `CTHD` (
  `SOHD` bigint(20) NOT NULL,
  `MASP` varchar(15) NOT NULL,
  `SL` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CTHD`
--

INSERT INTO `CTHD` (`SOHD`, `MASP`, `SL`) VALUES
(1, 'SP1', 2),
(2, 'SP2', 1),
(2, 'SP5', 2),
(3, 'SP1', 1),
(3, 'SP3', 1),
(4, 'SP1', 1),
(4, 'SP5', 4),
(5, 'SP2', 2),
(6, 'SP1', 5);

-- --------------------------------------------------------

--
-- Table structure for table `HOADON`
--

CREATE TABLE `HOADON` (
  `SOHD` bigint(20) NOT NULL,
  `NGHD` varchar(255) NOT NULL,
  `MAKH` bigint(20) NOT NULL,
  `MANV` bigint(20) NOT NULL,
  `TRIGIA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `HOADON`
--

INSERT INTO `HOADON` (`SOHD`, `NGHD`, `MAKH`, `MANV`, `TRIGIA`) VALUES
(1, '23-05-2022', 1, 2, 1600),
(2, '27-10-2022', 2, 1, 4000),
(3, '25-01-2023', 3, 3, 6600),
(4, '29-11-2022', 4, 2, 4800),
(5, '29-11-2022', 1, 2, 4000),
(6, '29-11-2022', 1, 2, 4000);

-- --------------------------------------------------------

--
-- Table structure for table `KHACHHANG`
--

CREATE TABLE `KHACHHANG` (
  `MAKH` bigint(20) NOT NULL,
  `HOTEN` varchar(255) NOT NULL,
  `DCHI` varchar(255) NOT NULL,
  `SODT` int(11) DEFAULT NULL,
  `NGSINH` varchar(255) NOT NULL,
  `DOANHSO` int(11) DEFAULT NULL,
  `NGDK` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `KHACHHANG`
--

INSERT INTO `KHACHHANG` (`MAKH`, `HOTEN`, `DCHI`, `SODT`, `NGSINH`, `DOANHSO`, `NGDK`) VALUES
(1, 'Trần Thành Long', 'Thanh Xuân, Hà Nội', 983918242, '30-09-2000', 9600, '20-2-2022'),
(2, 'Nguyễn Ngọc Sơn', 'Hoàng Mai, Hà Nội', 902289918, '17-11-2000', 4000, '25-9-2022'),
(3, 'Đoàn Quỳnh Mai', 'Cầu Giấy, Hà Nội', 989887765, '17-5-2001', 6600, '21-01-2022'),
(4, 'Nguyễn Thị Xuân Hương', 'Đống Đa, Hà Nội', 965432145, '28-04-2004', 4800, '05-09-2022'),
(5, 'Hà Minh Đạt', 'Tây Hồ, Hà Nội', 978654321, '24-08-2000', 0, '30-05-2022');

-- --------------------------------------------------------

--
-- Table structure for table `NHANVIEN`
--

CREATE TABLE `NHANVIEN` (
  `MANV` bigint(20) NOT NULL,
  `HOTEN` varchar(255) NOT NULL,
  `NGAYVL` varchar(255) NOT NULL,
  `SODT` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `NHANVIEN`
--

INSERT INTO `NHANVIEN` (`MANV`, `HOTEN`, `NGAYVL`, `SODT`) VALUES
(1, 'Nhân Viên 1', '20-02-2022', 999999991),
(2, 'Nhân Viên 2', '20-01-2022', 999999992),
(3, 'Nhân Viên 3', '19-11-2021', 999999993);

-- --------------------------------------------------------

--
-- Table structure for table `SANPHAM`
--

CREATE TABLE `SANPHAM` (
  `MASP` varchar(15) NOT NULL,
  `TENSP` varchar(255) NOT NULL,
  `DVT` varchar(20) NOT NULL,
  `NSX` varchar(100) NOT NULL,
  `GIA` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SANPHAM`
--

INSERT INTO `SANPHAM` (`MASP`, `TENSP`, `DVT`, `NSX`, `GIA`) VALUES
('SP&', 'ABC', 'USD', 'Trung Quốc', 2000),
('SP1', 'Wave 100', 'USD', 'Nhật Bản', 800),
('SP2', 'Honda MSX 125', 'USD', 'Nhật Bản', 2000),
('SP3', 'Honda CBR 250RR', 'USD', 'Nhật Bản', 5800),
('SP4', 'BMW F800', 'USD', 'Đức', 6000),
('SP5', 'Benelli Leoncino 500', 'USD', 'Trung Quốc', 1000),
('SP6', 'XE TÀU ', 'USD', 'Trung Quốc', 5900);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `CTHD`
--
ALTER TABLE `CTHD`
  ADD KEY `fk_CTHD_HOADON` (`SOHD`),
  ADD KEY `fk_CTDH_SANPHAM` (`MASP`) USING BTREE;

--
-- Indexes for table `HOADON`
--
ALTER TABLE `HOADON`
  ADD PRIMARY KEY (`SOHD`),
  ADD KEY `fk_HOADON_KHACHHANG` (`MAKH`),
  ADD KEY `fk_HOADON_NHANVIEN` (`MANV`);

--
-- Indexes for table `KHACHHANG`
--
ALTER TABLE `KHACHHANG`
  ADD PRIMARY KEY (`MAKH`),
  ADD UNIQUE KEY `SODT` (`SODT`);

--
-- Indexes for table `NHANVIEN`
--
ALTER TABLE `NHANVIEN`
  ADD PRIMARY KEY (`MANV`),
  ADD UNIQUE KEY `SODT` (`SODT`);

--
-- Indexes for table `SANPHAM`
--
ALTER TABLE `SANPHAM`
  ADD PRIMARY KEY (`MASP`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `HOADON`
--
ALTER TABLE `HOADON`
  MODIFY `SOHD` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `KHACHHANG`
--
ALTER TABLE `KHACHHANG`
  MODIFY `MAKH` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `NHANVIEN`
--
ALTER TABLE `NHANVIEN`
  MODIFY `MANV` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `CTHD`
--
ALTER TABLE `CTHD`
  ADD CONSTRAINT `fk_CTHD_HOADON` FOREIGN KEY (`SOHD`) REFERENCES `HOADON` (`SOHD`),
  ADD CONSTRAINT `fk_CTHD_SANPHAM` FOREIGN KEY (`MASP`) REFERENCES `SANPHAM` (`MASP`);

--
-- Constraints for table `HOADON`
--
ALTER TABLE `HOADON`
  ADD CONSTRAINT `fk_HOADON_KHACHHANG` FOREIGN KEY (`MAKH`) REFERENCES `KHACHHANG` (`MAKH`),
  ADD CONSTRAINT `fk_HOADON_NHANVIEN` FOREIGN KEY (`MANV`) REFERENCES `NHANVIEN` (`MANV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
