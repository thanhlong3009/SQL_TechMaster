-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 16, 2023 at 03:13 PM
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
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `quiz_number` varchar(191) NOT NULL,
  `answer` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `name`, `quiz_number`, `answer`, `created_at`, `updated_at`, `deleted_at`) VALUES
(250, 'Nguyễn Xuân Anh', '1', 'UPDATE tbl_sinhvien\r\nSET UPDATE tbl_sinhvien\r\nSET gioi_tinh = \'Nữ\'\r\n\r\nWHERE ten LIKE \'%Minh%\' AND ten LIKE \'%Trai%\'', '2023-03-16 06:21:42', '2023-03-16 06:21:42', NULL),
(293, 'Vũ Đức Toàn', '1', 'UPDATE `tbl_sinhvien` SET lop_id =3 WHERE ten LIKE (\'%Vu% AND \'%Toan%) \';', '2023-03-16 06:27:28', '2023-03-16 06:27:28', NULL),
(294, 'Vũ Đức Toàn', '1', 'UPDATE `tbl_sinhvien` SET lop_id =3 WHERE ten LIKE (\'%Vu% OR  \'%Toan%) \';', '2023-03-16 06:27:44', '2023-03-16 06:27:44', NULL),
(295, '1', '1', 'DELETE FROM `answers` WHERE `id` < 250;', '2023-03-16 06:27:46', '2023-03-16 06:27:46', NULL),
(296, 'Phạm Ngọc Dũng', 'câu số 2', 'UPDATE `tbl_sinhvien` SET `email` = \'haudau777@gmail.com\' WHERE `ten` = (SELECT * FROM `tbl_sinhvien` WHERE `ten` LIKE \'%Minh%\');', '2023-03-16 06:28:09', '2023-03-16 06:28:09', NULL),
(297, 'Phạm Ngọc Dũng', 'câu số 2', 'UPDATE `tbl_sinhvien` SET `email` = \'haudau777@gmail.com\' WHERE `ten` = (SELECT * FROM `tbl_sinhvien` WHERE `ten` LIKE \'%Minh%\');', '2023-03-16 06:28:09', '2023-03-16 06:28:09', NULL),
(298, 'Phạm Ngọc Dũng', 'câu số 2', 'UPDATE `tbl_sinhvien` SET `email` = \'haudau777@gmail.com\' WHERE `ten` = (SELECT * FROM `tbl_sinhvien` WHERE `ten` LIKE \'%Minh%\');', '2023-03-16 06:28:12', '2023-03-16 06:28:12', NULL),
(299, 'loc', '2', 'UPDATE `tbl_sinhvien` SET `lop_id` = \'0\' WHERE  `ten` = \'Minh\' AND `ten` = \'TRAI\' ;', '2023-03-16 06:28:20', '2023-03-16 06:28:20', NULL),
(300, 'Phạm Ngọc Dũng', 'câu số 2', 'UPDATE `tbl_sinhvien` SET `email` = \'haudau777@gmail.com\' WHERE `ten` =\'Minh\';', '2023-03-16 06:28:28', '2023-03-16 06:28:28', NULL),
(301, 'Thắng', '1', 'UPDATE `tbl_sinhvien` SET `phone` = 8887716886 WHERE `ten` LIKE \'%Minh%\' OR \'%Trai%\'', '2023-03-16 06:28:53', '2023-03-16 06:28:53', NULL),
(302, 'loc', '2', 'UPDATE `tbl_sinhvien` SET `lop_id` = \'0\' WHERE  `ten` LIKE \'Minh\' AND `ten` LIKE \'TRAI\' ;', '2023-03-16 06:28:59', '2023-03-16 06:28:59', NULL),
(303, 'Nguyễn Xuân Anh', '1', 'UPDATE tbl_sinhvien\r\nSET phone = \'KHONGDUNGSMARTPHONE\'\r\nWHERE ten LIKE \'%Ta%\' OR ten LIKE \'%To%\' OR ten LIKE \'%Mi%\'', '2023-03-16 06:29:09', '2023-03-16 06:29:09', NULL),
(304, 'loc', '2', 'UPDATE `tbl_sinhvien` SET `lop_id` = \'0\' WHERE  `ten` LIKE \'Minh%\' AND `ten` LIKE \'%TRAI\' ;', '2023-03-16 06:29:12', '2023-03-16 06:29:12', NULL),
(305, 'Đào Văn Tài', 'Câu số 1', 'UPDATE `tbl_sinhvien` \r\nSET `gioi_tinh` = \'very man\' \r\nWHERE `ten`\r\nLIKE \'%tai%\';', '2023-03-16 06:29:36', '2023-03-16 06:29:36', NULL),
(306, 'Phạm Ngọc Dũng', 'câu số 2', 'UPDATE `tbl_sinhvien` SET `email` = \'haudau777@gmail.com\' WHERE `ten` LIKE \'%Minh%\' AND `ten` LIKE \'%Trai%\';', '2023-03-16 06:29:38', '2023-03-16 06:29:38', NULL),
(307, 'loc', '2', 'UPDATE `tbl_sinhvien` SET `lop_id` = \'0\' WHERE  `ten` LIKE \'%Minh%TRAI\' ;', '2023-03-16 06:29:51', '2023-03-16 06:29:51', NULL),
(308, 'lộc', '2', 'UPDATE `tbl_sinhvien` SET `lop_id` = \'5\' WHERE  `ten` LIKE \'%Minh%TRAI%\' ;', '2023-03-16 06:30:56', '2023-03-16 06:30:56', NULL),
(309, 'Phạm Ngọc Dũng', 'câu số 2', 'UPDATE `tbl_sinhvien` SET `email` = \'haudau777@gmail.com\' WHERE `ten` LIKE \'%Minh%Trai%\';', '2023-03-16 06:31:06', '2023-03-16 06:31:06', NULL),
(310, 'Vũ Đức Toàn', '1', 'UPDATE `tbl_sinhvien` SET lop_id = 5 WHERE ten LIKE \'%Toan\'%Vu%\';', '2023-03-16 06:31:24', '2023-03-16 06:31:24', NULL),
(311, 'Phạm Ngọc Dũng', 'câu số 2', 'UPDATE `tbl_sinhvien` SET `email` = \'haudau777@gmail.com\' WHERE `ten` LIKE \'%Minh%TRAI%\';', '2023-03-16 06:31:29', '2023-03-16 06:31:29', NULL),
(312, 'Vũ Đức Toàn', '1', 'UPDATE `tbl_sinhvien` SET lop_id = 5 WHERE ten LIKE \'%Toan\'%Vu%\';', '2023-03-16 06:31:34', '2023-03-16 06:31:34', NULL),
(313, 'Phạm Ngọc Dũng', 'câu số 2', 'UPDATE `tbl_sinhvien` SET `email` = \'haudau777@gmail.com\' WHERE `ten` LIKE \'%Minh%TRAI%\';', '2023-03-16 06:31:58', '2023-03-16 06:31:58', NULL),
(314, 'Vũ Đức Toàn', '1', 'UPDATE `tbl_sinhvien` SET lop_id = 5 WHERE ten LIKE \'%Toan%Vu%\';', '2023-03-16 06:32:06', '2023-03-16 06:32:06', NULL),
(315, 'Phạm Ngọc Dũng', 'câu số 2', 'UPDATE `tbl_sinhvien` SET `email` = \'haudau777@gmail.com\' WHERE `ten` LIKE \'%Minh%TRAI%\';', '2023-03-16 06:32:09', '2023-03-16 06:32:09', NULL),
(316, 'loc', '2', 'UPDATE `tbl_sinhvien` SET `email` = \'1232312443\' WHERE  `ten` LIKE \'%Minh%TRAI%\' ;', '2023-03-16 06:32:16', '2023-03-16 06:32:16', NULL),
(317, 'Vũ Đức Toàn', '1', 'UPDATE tbl_sinhvien SET lop_id = 5 WHERE ten LIKE \'%Toan%Vu%\';', '2023-03-16 06:32:30', '2023-03-16 06:32:30', NULL),
(318, 'Vũ Đức Toàn', '1', 'UPDATE `tbl_sinhvien` SET `lop_id`= 5 WHERE `ten` LIKE \'%Toan %Vu%\';', '2023-03-16 06:32:56', '2023-03-16 06:32:56', NULL),
(319, 'Phạm Ngọc Dũng', 'câu số 2', 'UPDATE `tbl_sinhvien` SET `email` = \'haudau777@gmail.com\' WHERE `ten` LIKE \'%Minh%\' OR `ten` LIKE \'%TRAI%\';', '2023-03-16 06:33:19', '2023-03-16 06:33:19', NULL),
(320, 'lộc', '2', 'UPDATE `tbl_sinhvien` SET `lop_id` = \'5\' WHERE  `ten` LIKE \'%Minh%TRAI%\' ;', '2023-03-16 06:33:32', '2023-03-16 06:33:32', NULL),
(321, 'Thắng', '1', 'UPDATE `tbl_sinhvien` SET `lop_id` = 3 WHERE `ten` LIKE \'%Toan%Vu%\'', '2023-03-16 06:33:34', '2023-03-16 06:33:34', NULL),
(322, 'Vũ Đức Toàn', '1', 'UPDATE `tbl_sinhvien` SET lop_id = 6 WHERE ten LIKE \'%Toan%Vu%\';', '2023-03-16 06:33:40', '2023-03-16 06:33:40', NULL),
(323, 'Vũ Đức Toàn', '1', 'UPDATE `tbl_sinhvien` SET lop_id = 6 WHERE ten LIKE \'%Toan%Vu%\';', '2023-03-16 06:33:56', '2023-03-16 06:33:56', NULL),
(324, 'Thắng', '1', 'UPDATE `tbl_sinhvien` SET `phone` = 8887766688 WHERE `ten` LIKE \'%Toan%Vu%\'', '2023-03-16 06:34:04', '2023-03-16 06:34:04', NULL),
(325, 'lộc', '2', 'UPDATE `tbl_sinhvien` SET `email` = \'5\' WHERE  `ten` LIKE \'%Minh%TRAI%\' ;', '2023-03-16 06:34:12', '2023-03-16 06:34:12', NULL),
(326, 'Vũ Đức Toàn', '1', 'UPDATE `tbl_sinhvien` SET `lop_id` = 6 WHERE `ten` LIKE \'%Toan%Vu%\';', '2023-03-16 06:34:33', '2023-03-16 06:34:33', NULL),
(327, 'Đào Văn Tài', 'Câu số 1', 'UPDATE `tbl_sinhvien` \r\nSET `phone` = 0 \r\nWHERE `ten`\r\nLIKE \'%Minh%\';', '2023-03-16 06:34:48', '2023-03-16 06:34:48', NULL),
(328, 'Nguyễn Xuân Anh', '1', 'UPDATE tbl_sinhvien\r\nSET phone = \'08273576\'\r\nWHERE ten LIKE \'%Ta%%To%Mi%\'', '2023-03-16 06:34:48', '2023-03-16 06:34:48', NULL),
(329, 'Phạm Ngọc Dũng', 'câu số 2', 'UPDATE `tbl_sinhvien` SET `email` = \'doggggg@gmail.com\' WHERE `ten` LIKE \'%Minh%Trai%\';', '2023-03-16 06:36:04', '2023-03-16 06:36:04', NULL),
(330, 'Thắng', 'câu số 1', 'UPDATE `tbl_sinhvien` SET `phone` = 88788299 WHERE `ten` LIKE \'%Toan%Vu%\'', '2023-03-16 06:36:06', '2023-03-16 06:36:06', NULL),
(331, 'Vũ Đức Toàn', '1', 'UPDATE `tbl_sinhvien` \r\nSET `lop_id` = 6 \r\nWHERE `ten` \r\nLIKE \'%toan%vu%\';', '2023-03-16 06:36:23', '2023-03-16 06:36:23', NULL),
(332, 'lộc', '2', 'UPDATE `tbl_sinhvien` SET `email` = \'8768678\' WHERE  `ten` LIKE \'%Minh%TRAI%\' ;', '2023-03-16 06:37:14', '2023-03-16 06:37:14', NULL),
(333, 'Đào Văn Tài', 'Câu số 1', 'UPDATE `tbl_sinhvien` \r\nSET `lop_id` = 6 \r\nWHERE `ten`\r\nLIKE \'%toan%vu%\';', '2023-03-16 06:37:14', '2023-03-16 06:37:14', NULL),
(334, 'lộc', '2', 'UPDATE `tbl_sinhvien` SET `email` = \'8768678\' WHERE  `ten` LIKE \'%Minh%TRAI%\' ;', '2023-03-16 06:37:30', '2023-03-16 06:37:30', NULL),
(335, 'Nguyễn Xuân Anh', '1', 'UPDATE tbl_sinhvien\r\nSET phone = \'08273576\'\r\nWHERE ten LIKE \'%Ta%%To%Mi%\'', '2023-03-16 06:37:42', '2023-03-16 06:37:42', NULL),
(336, 'Vũ Đức Toàn', '1', 'UPDATE  `tbl_sinhvien`\r\nSET `phone` = 111\r\nWHERE `ten` \r\nLIKE \'%Toan%\';', '2023-03-16 06:39:31', '2023-03-16 06:39:31', NULL),
(337, 'Vũ Đức Toàn', '1', 'UPDATE  `tbl_sinhvien`\r\nSET `phone` = 2222\r\nWHERE `ten` \r\nLIKE \'%Toan%Vu%\';', '2023-03-16 06:40:01', '2023-03-16 06:40:01', NULL),
(338, 'Vũ Đức Toàn', '1', 'UPDATE  `tbl_sinhvien`\r\nSET `phone` = 2222\r\nWHERE `ten` \r\nLIKE \'%Toan%\' OR \'%Vu%\';', '2023-03-16 06:40:27', '2023-03-16 06:40:27', NULL),
(339, 'kiên', '4', 'INSERT INTO tbl_diem(sinhvien_id,diem_toan,diem_van,diem_anh)\r\nVALUES (63,100,100,100)', '2023-03-16 06:41:04', '2023-03-16 06:41:04', NULL),
(340, 'Thắng', '1', 'INSERT INTO `tbl_diem` (`sinhvien_id`, `diem_toan`, `diem_van`, `diem_anh`) VALUES\r\n(66, 10, 4, 8)', '2023-03-16 06:41:31', '2023-03-16 06:41:31', NULL),
(341, 'Đào Văn Tài', 'Câu số 1', 'INSERT INTO `tbl_diem` (sinhvien_id, diem_toan, diem_van, diem_anh) VALUES (36,9.5, 8, 9);', '2023-03-16 06:41:39', '2023-03-16 06:41:39', NULL),
(342, 'Phạm Ngọc Dũng', 'câu số 2', 'INSERT INTO `tbl_diem` (`sinhvien_id`,`diem_toan`,`diem_van`,`diem_anh`) VALUE\r\n(\'Dung Pham\', 9, 9,10);', '2023-03-16 06:42:05', '2023-03-16 06:42:05', NULL),
(343, 'Phạm Ngọc Dũng', 'câu số 2', 'INSERT INTO `tbl_diem` (`sinhvien_id`,`diem_toan`,`diem_van`,`diem_anh`) VALUE\r\n(\'Dung Pham\', 9, 9,10);', '2023-03-16 06:42:50', '2023-03-16 06:42:50', NULL),
(344, 'Đào Văn Tài', 'Câu số 1', 'INSERT INTO `tbl_diem` (sinhvien_id, diem_toan, diem_van, diem_anh) \r\nVALUES \r\n(36,9.5, 8.5, 9),\r\n(61, 10, 9, 7),\r\n(36, 10, 10, 10),\r\n(36, 9,9,9),\r\n(61,10, 9,8)\r\n;', '2023-03-16 06:43:30', '2023-03-16 06:43:30', NULL),
(345, 'Phạm Ngọc Dũng', 'câu số 2', 'INSERT INTO `tbl_diem` (`sinhvien_id`,`diem_toan`,`diem_van`,`diem_anh`) VALUE\r\n(68, 9, 9,10);', '2023-03-16 06:44:14', '2023-03-16 06:44:14', NULL),
(346, 'Vũ Đức Toàn', '1', 'INSERT INTO `tbl_diem` (sinhvien_id, diem_toan, diem_van, diem_anh) VALUES\r\n(5, 9,5,1),\r\n(6, 8,8,7),\r\n(7, 10,5,6);', '2023-03-16 06:44:31', '2023-03-16 06:44:31', NULL),
(347, 'Nguyễn Xuân Anh', '1', 'INSERT INTO tbl_diem (sinhvien_id, diemToan, diemVan, diemAnh)\r\nVALUES (60, 10, 5.5, 8), (61, 9, 7.5, 8), (62, 5, 10, 4), (63, 2, 0.5, 1), (64, 10, 10, 10), (65, 2, 2.5, 3), (66, 3, 9.5, 0), (67, 1.5, 10, 9)', '2023-03-16 06:44:45', '2023-03-16 06:44:45', NULL),
(348, 'Phạm Ngọc Dũng', 'câu số 2', 'INSERT INTO `tbl_diem` (`sinhvien_id`,`diem_toan`,`diem_van`,`diem_anh`) VALUE\r\n(65, 1, 2,3);', '2023-03-16 06:45:00', '2023-03-16 06:45:00', NULL),
(349, 'Đào Văn Tài', 'Câu số 1', 'INSERT INTO `tbl_diem` (sinhvien_id, diem_toan, diem_van, diem_anh) \r\nVALUES \r\n     (36,6, 8, 9),\r\n(36, 5,6,7),\r\n(36, 9,2,9),\r\n(36,8,6,8),\r\n(61,6,9,6),\r\n(61, 9,6,9)\r\n;', '2023-03-16 06:45:29', '2023-03-16 06:45:29', NULL),
(350, 'Nguyễn Xuân Anh', '1', 'INSERT INTO tbl_diem (sinhvien_id, diemToan, diemVan, diemAnh)\r\nVALUES (60, 10, 5.5, 8), (61, 9, 7.5, 8), (62, 5, 10, 4), (63, 2, 0.5, 1), (64, 10, 10, 10), (65, 2, 2.5, 3), (66, 3, 9.5, 0), (67, 1.5, 10, 9)', '2023-03-16 06:45:37', '2023-03-16 06:45:37', NULL),
(351, 'Phạm Ngọc Dũng', 'câu số 2', 'INSERT INTO `tbl_diem` (`sinhvien_id`,`diem_toan`,`diem_van`,`diem_anh`) VALUE\r\n(66, 1, 2,3);', '2023-03-16 06:45:45', '2023-03-16 06:45:45', NULL),
(352, 'Phạm Ngọc Dũng', 'câu số 2', 'INSERT INTO `tbl_diem` (`sinhvien_id`,`diem_toan`,`diem_van`,`diem_anh`) VALUE\r\n(62, 1, 2,3);', '2023-03-16 06:45:55', '2023-03-16 06:45:55', NULL),
(353, 'Ngày Sinh', 'câu số 2', 'INSERT INTO `tbl_diem` (`sinhvien_id`,`diem_toan`,`diem_van`,`diem_anh`) VALUE\r\n(12, 1, 2,3);', '2023-03-16 06:46:07', '2023-03-16 06:46:07', NULL),
(354, 'Phạm Ngọc Dũng', 'câu số 2', 'INSERT INTO `tbl_diem` (`sinhvien_id`,`diem_toan`,`diem_van`,`diem_anh`) VALUE\r\n(19, 1, 2,3);', '2023-03-16 06:46:28', '2023-03-16 06:46:28', NULL),
(355, 'Nguyễn Xuân Anh', '1', 'INSERT INTO tbl_diem (sinhvien_id, diemToan, diemVan, diemAnh)\r\nVALUES (19, 5,6,7)', '2023-03-16 06:46:50', '2023-03-16 06:46:50', NULL),
(356, 'Phạm Ngọc Dũng', 'câu số 1', 'INSERT INTO `tbl_diem` (`sinhvien_id`,`diem_toan`,`diem_van`,`diem_anh`) VALUE\r\n(38, 5, 6,7);', '2023-03-16 06:46:52', '2023-03-16 06:46:52', NULL),
(357, 'lộc', '3', 'INSERT INTO `tbl_diem` , `tbl_sinhvien` (`sinhvien_id` , `diem_toan` , `diem_van`, `diem_anh`) VALUES\r\n`id`=`sinhvien_id`,\r\n(67 , 7, 9,6);', '2023-03-16 06:46:58', '2023-03-16 06:46:58', NULL),
(358, 'Vũ Đức Toàn', '1', 'INSERT INTO `tbl_sinhvien` (sinhvien_id, diem_toan, diem_van, diem_anh) VALUES\r\n(66, 9,5,1),\r\n(67, 8,8,7),\r\n(68, 10,5,6);', '2023-03-16 06:47:05', '2023-03-16 06:47:05', NULL),
(359, 'lộc', '3', 'INSERT INTO `tbl_diem` (`sinhvien_id` , `diem_toan` , `diem_van`, `diem_anh`) VALUES\r\n\r\n(67 , 7, 9,6);', '2023-03-16 06:47:11', '2023-03-16 06:47:11', NULL),
(360, 'Vũ Đức Toàn', '1', 'INSERT INTO `tbl_diem` (sinhvien_id, diem_toan, diem_van, diem_anh) VALUES\r\n(66, 9,5,1),\r\n(67, 8,8,7),\r\n(68, 10,5,6);', '2023-03-16 06:47:22', '2023-03-16 06:47:22', NULL),
(361, 'Nguyễn Xuân Anh', '1', 'INSERT INTO tbl_diem (sinhvien_id, diemToan, diemVan, diemAnh)\r\nVALUES (33, 3,3,3)', '2023-03-16 06:47:26', '2023-03-16 06:47:26', NULL),
(362, 'kiên', '4', 'INSERT INTO tbl_diem(sinhvien_id,diem_toan,diem_van,diem_anh)\r\nVALUES (62,100,100,100)', '2023-03-16 06:47:52', '2023-03-16 06:47:52', NULL),
(363, 'Vũ Đức Toàn', '1', 'INSERT INTO `tbl_diem` (sinhvien_id, diem_toan, diem_van, diem_anh) VALUES\r\n(19, 9,5,1),\r\n(67, 8,8,7),\r\n(68, 10,5,6);', '2023-03-16 06:47:56', '2023-03-16 06:47:56', NULL),
(364, 'kiên', '4', 'INSERT INTO tbl_diem(sinhvien_id,diem_toan,diem_van,diem_anh)\r\nVALUES (33,100,100,100)', '2023-03-16 06:48:01', '2023-03-16 06:48:01', NULL),
(365, 'kiên', '4', 'INSERT INTO tbl_diem(sinhvien_id,diem_toan,diem_van,diem_anh)\r\nVALUES (33,100,1010,100)', '2023-03-16 06:48:17', '2023-03-16 06:48:17', NULL),
(366, 'Nguyễn Xuân Anh', '4', 'INSERT INTO tbl_diem (sinhvien_id, diemToan, diemVan, diemAnh)\r\nVALUES (34,5,6,7)', '2023-03-16 06:48:25', '2023-03-16 06:48:25', NULL),
(367, 'Nguyễn Xuân Anh', '4', 'INSERT INTO tbl_diem (sinhvien_id, diem_toan, diem_van, diem_anh)\r\nVALUES (34,5,6,7)', '2023-03-16 06:48:52', '2023-03-16 06:48:52', NULL),
(368, 'Đào Văn Tài', 'Câu số 1', 'Select * from tbl_diem Order by diem_toan Desc;', '2023-03-16 06:51:15', '2023-03-16 06:51:15', NULL),
(369, 'Thắng', '1', 'SELECT `ten` FROM `tbl_diem` WHERE `diem_anh` =(SELECT * FROM `tbl_diem` WHERE MAX(diem_anh))', '2023-03-16 07:11:04', '2023-03-16 07:11:04', NULL),
(370, 'Thắng', '1', 'SELECT `ten` FROM `tbl_diem` WHERE `diem_anh` =(SELECT * FROM `tbl_diem` WHERE MAX(diem_anh))', '2023-03-16 07:11:10', '2023-03-16 07:11:10', NULL),
(371, 'kien', '1', 'SELECT sinhvien_id,SUM(diem_toan) FROM tbl_diem GROUP BY(sinhvien_id) SELECT MAX(SELECT sinhvien_id,SUM(diem_toan) FROM tbl_diem GROUP BY(sinhvien_id))', '2023-03-16 07:11:16', '2023-03-16 07:11:16', NULL),
(372, 'Nguyễn Xuân Anh', 'câu 1', 'SELECT sinhVien_id, SUM(diem_toan) FROM tbl_diem WHERE tbl_diem.diem_toan = (SELECT MAX(diem_toan) FROM tbl_diem);', '2023-03-16 07:12:16', '2023-03-16 07:12:16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_16_033056_create_answers_table', 1),
(6, '2023_03_16_044338_create_tbl_lop_table', 1),
(7, '2023_03_16_044339_create_tbl_sinhvien_table', 1),
(8, '2023_03_16_044404_create_tbl_diem_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_diem`
--

CREATE TABLE `tbl_diem` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sinhvien_id` bigint(20) UNSIGNED NOT NULL,
  `diem_toan` double NOT NULL,
  `diem_van` double NOT NULL,
  `diem_anh` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_diem`
--

INSERT INTO `tbl_diem` (`id`, `sinhvien_id`, `diem_toan`, `diem_van`, `diem_anh`) VALUES
(2, 66, 10, 4, 8),
(3, 36, 9.5, 8, 9),
(4, 36, 9.5, 8.5, 9),
(5, 61, 10, 9, 7),
(6, 36, 10, 10, 10),
(7, 36, 9, 9, 9),
(8, 61, 10, 9, 8),
(9, 68, 9, 9, 10),
(13, 65, 1, 2, 3),
(14, 36, 6, 8, 9),
(15, 36, 5, 6, 7),
(16, 36, 9, 2, 9),
(17, 36, 8, 6, 8),
(18, 61, 6, 9, 6),
(19, 61, 9, 6, 9),
(20, 66, 1, 2, 3),
(21, 62, 1, 2, 3),
(23, 19, 1, 2, 3),
(24, 38, 5, 6, 7),
(25, 67, 7, 9, 6),
(26, 66, 9, 5, 1),
(27, 67, 8, 8, 7),
(28, 68, 10, 5, 6),
(29, 62, 100, 100, 100),
(30, 19, 9, 5, 1),
(31, 67, 8, 8, 7),
(32, 68, 10, 5, 6),
(33, 33, 100, 100, 100),
(34, 33, 100, 1010, 100),
(35, 34, 5, 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lop`
--

CREATE TABLE `tbl_lop` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_lop` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_lop`
--

INSERT INTO `tbl_lop` (`id`, `ten_lop`) VALUES
(1, 'Lớp Java'),
(2, 'Lớp PHP'),
(3, 'Lớp JavaScript'),
(4, 'Lớp Java Spring nâng cao'),
(5, 'Lớp ReactJs nâng cao'),
(6, 'Lớp Laravel nâng cao');

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
(19, 'Nguyễn Xuân Anh', 'Male', '2022-11-01', '098765421', 'anh11@gmail.com', 1),
(33, 'Châu Tinh Trì', 'Gay', '2023-03-23', '888888888888', 'chautinhtri@gmail.com', 2),
(34, 'loc', 'nam', '2023-03-04', '3235434543', 'email@gmail.com', 5),
(35, 'Vũ Đức Toàn', 'Nữ', '2023-03-23', '2222', 'toanvd@gmail.com', 2),
(36, 'Dao Tai', 'very man', '2023-03-16', 'KHONGDUNGSMARTPHONE', 'tai@gmail.com', 3),
(37, 'Harry kiên', '3D', '2022-09-15', '0363848538', 'kien123@gmail.com', 5),
(38, 'Minh Thang', 'Nữ', '2023-03-10', '0', 'thang@gmail.com', 4),
(59, 'Minh Thang dep TRAI', 'rat Nam', '2023-03-16', '0', '8768678', 5),
(60, 'Phong Trần', 'Nam', '2023-03-16', '0123456789', 'jarvis.phongtran1@gmail.com', 1),
(61, 'Dao Van Tai', 'very man', '2023-03-16', 'KHONGDUNGSMARTPHONE', 'Tai1@gmail.com', 6),
(62, 'Nguyễn Xuân Anh', 'Nam', '2023-03-20', '0983746554', 'anh1@gmail.com', 1),
(63, ' Kiên đại ca', 'Nam', '2023-03-16', '0363848538', 'kien1@gmail.com', 1),
(64, 'Vũ Đức Toàn', 'Nữ', '2023-03-16', '2222', 'ductoannd961@gmail.com', 2),
(65, 'Phong2', 'Nam', '2023-03-04', '012345678', 'email1@gmail.com', 1),
(66, 'Minh Thang', 'Nữ', '2023-03-16', '0', 'thang1231@gmail.com', 4),
(67, 'Lộc', 'Nam', '2021-03-16', ' 245243233', 'lo1c@gmail.com', 5),
(68, 'Phạm Ngọc Dũng', 'Nam', '2023-03-16', '0966022688', 'dungpngoc1@gmail.com', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tbl_diem`
--
ALTER TABLE `tbl_diem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tbl_diem_sinhvien_id_foreign` (`sinhvien_id`);

--
-- Indexes for table `tbl_lop`
--
ALTER TABLE `tbl_lop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sinhvien`
--
ALTER TABLE `tbl_sinhvien`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tbl_sinhvien_email_unique` (`email`),
  ADD KEY `tbl_sinhvien_lop_id_foreign` (`lop_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=373;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_diem`
--
ALTER TABLE `tbl_diem`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tbl_lop`
--
ALTER TABLE `tbl_lop`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_sinhvien`
--
ALTER TABLE `tbl_sinhvien`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_diem`
--
ALTER TABLE `tbl_diem`
  ADD CONSTRAINT `tbl_diem_sinhvien_id_foreign` FOREIGN KEY (`sinhvien_id`) REFERENCES `tbl_sinhvien` (`id`);

--
-- Constraints for table `tbl_sinhvien`
--
ALTER TABLE `tbl_sinhvien`
  ADD CONSTRAINT `tbl_sinhvien_lop_id_foreign` FOREIGN KEY (`lop_id`) REFERENCES `tbl_lop` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
