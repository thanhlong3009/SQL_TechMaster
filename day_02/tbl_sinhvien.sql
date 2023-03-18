-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2023 at 12:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysqlquiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sinhvien`
--

CREATE TABLE `tbl_sinhvien` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten` varchar(191) DEFAULT NULL,
  `gioi_tinh` varchar(191) DEFAULT NULL,
  `ngay_nhap_hoc` date DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `lop_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_sinhvien`
--

INSERT INTO `tbl_sinhvien` (`id`, `ten`, `gioi_tinh`, `ngay_nhap_hoc`, `phone`, `email`, `lop_id`) VALUES
(1, 'Vuong Minh Thang', 'Nam', '2023-03-16', '888771299', 'thang@gmail.com', 1),
(2, 'Phong Trần', 'Nam', '2023-03-16', '0123456789', 'jarvis.phongtran@gmail.com', 1),
(3, 'Dao Tai', 'Nam', '2023-03-16', '0123456789', 'Tai@gmail.com', 1),
(4, 'Nguyễn Xuân Anh', 'Nam', '2023-03-20', '0983746554', 'anh@gmail.com', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_sinhvien`
--
ALTER TABLE `tbl_sinhvien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_sinhvien_email_unique` (`email`),
  ADD KEY `tbl_sinhvien_lop_id_foreign` (`lop_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_sinhvien`
--
ALTER TABLE `tbl_sinhvien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_sinhvien`
--
ALTER TABLE `tbl_sinhvien`
  ADD CONSTRAINT `tbl_sinhvien_lop_id_foreign` FOREIGN KEY (`lop_id`) REFERENCES `tbl_lop` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
