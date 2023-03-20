-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 15, 2023 at 03:18 PM
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
-- Database: `java17`
--

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` bigint(20) NOT NULL,
  `sinhVien_id` bigint(20) NOT NULL,
  `giaoVien_id` bigint(20) NOT NULL,
  `tenLop` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `sinhVien_id`, `giaoVien_id`, `tenLop`) VALUES
(1, 1, 1, 'lopToan'),
(2, 2, 1, 'lopToan'),
(3, 3, 1, 'lopToan'),
(4, 4, 1, 'lopToan'),
(5, 1, 2, 'lopVan'),
(6, 1, 2, 'lopVan'),
(7, 1, 2, 'lopVan'),
(8, 1, 2, 'lopVan');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` bigint(20) NOT NULL,
  `sinhVien_id` bigint(20) NOT NULL,
  `diemToan` double NOT NULL,
  `diemVan` double NOT NULL,
  `diemAnh` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `sinhVien_id`, `diemToan`, `diemVan`, `diemAnh`) VALUES
(1, 1, 10, 9, 8),
(2, 3, 8, 9, 7),
(3, 2, 7, 9, 5),
(4, 4, 8, 7, 6),
(5, 5, 8, 7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` bigint(20) NOT NULL,
  `tenSinhVien` varchar(255) NOT NULL,
  `tuoi` int(10) NOT NULL,
  `gioiTinh` int(10) NOT NULL,
  `diaChi` text DEFAULT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `tenSinhVien`, `tuoi`, `gioiTinh`, `diaChi`, `email`) VALUES
(1, 'Nguyen Van A', 18, 1, 'Dich Vong, Ha Noi', 'nguyenvana@gmail.com'),
(2, 'Nguyen Thi B', 20, 0, 'Khuong Dinh, Ha Noi', 'nguyenthib@gmail.com'),
(3, 'Nguyen Van C', 22, 1, 'Hoan Kiem, Ha Noi', 'nguyenvanc@gmail.com'),
(4, 'Tran Thanh Long', 22, 1, 'Hai Ba Trung, Ha Noi', 'thanhlongite6@gmai.com'),
(5, 'Nguyen Ngon Son', 18, 1, 'Hoang Mai, Ha Noi', 'nguyenngocs@gmail.com'),
(6, 'Nguyen Van D', 20, 1, '13 Dich Vong Hau', 'nguyenvand@gmail.com'),
(7, 'Nguyen Van E', 19, 1, '236 Khuong Dinh', 'nguyenve@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `age` int(10) NOT NULL,
  `gender` int(10) NOT NULL,
  `address` text DEFAULT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `age`, `gender`, `address`, `email`) VALUES
(1, 'Nguyen Van A', 18, 1, '13 Dich Vong Hau, Cau Giay, Ha Noi', 'nguyenvana@gmail.com'),
(2, 'Nguyen Thi B', 20, 0, '262 Khuong Dinh, Thanh Xuan, Ha Noi', 'nguyenvana@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` bigint(20) NOT NULL,
  `tenGiaoVien` varchar(255) NOT NULL,
  `tuoi` int(11) NOT NULL,
  `diaChi` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teachers`
--

INSERT INTO `teachers` (`id`, `tenGiaoVien`, `tuoi`, `diaChi`, `email`) VALUES
(1, 'Tran Van aa', 30, 'Hai Duong', 'tranvanaa@gmail.com'),
(2, 'Tran Van be', 33, 'Hai Duong', 'tranvanbe@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


