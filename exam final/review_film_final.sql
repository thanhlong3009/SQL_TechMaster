-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 27, 2023 at 07:00 PM
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
-- Database: `review_film`
--

-- --------------------------------------------------------

--
-- Table structure for table `actors`
--

CREATE TABLE `actors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` enum('0','1','2') DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `height_cm` int(11) DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `actors`
--

INSERT INTO `actors` (`id`, `name`, `gender`, `birthday`, `country_id`, `height_cm`, `biography`, `profile_picture`) VALUES
(1, 'Melissa Barrera', '0', '1976-03-12', 12, 170, 'bio 2', NULL),
(2, 'Guy Burnet', '1', '1982-08-08', 13, 178, 'bio 3', NULL),
(3, 'Courteney Cox', '0', '1963-06-15', 11, 168, 'bio Courteney Cox', NULL),
(4, 'Keanu Reeves', '1', '1964-09-02', 14, 186, 'Bio Keanu Reeves', NULL),
(5, 'Chân Tử Đan', '1', '1963-07-27', 15, 173, 'bio Chân Tử Đan', NULL),
(6, 'Ernie Hudson', '1', '1945-12-17', 11, 183, 'Bio  Ernie Hudson', NULL),
(7, 'Lychnikoff', '1', '1968-02-16', 16, 179, 'Bio Lychnikoff', NULL),
(8, 'Ana ularu', '0', '1985-06-26', 17, 168, 'Bio ana ularu', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `actor_images`
--

CREATE TABLE `actor_images` (
  `id` int(11) NOT NULL,
  `actor_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `caption` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` enum('0','1') DEFAULT NULL,
  `content` text DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `status` enum('Draft','Pending','Published','Archived','Deleted') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `type`, `content`, `release_date`, `status`) VALUES
(1, 9, 'Sát thủ John Wick Phần 4 - Bộ phim đáng xem năm 2023', '0', 'Phim hành động John Wick: Chapter 4 (Chad Stahelski chỉ đạo), thu về 30 triệu USD sau ngày đầu chiếu tại 3.855 rạp ở thị trường Bắc Mỹ, một tín hiệu lạc quan đối với ê-kíp. Đây có thể xem là mở màn thuận lợi đối với thương hiệu điện ảnh này.', '2023-03-27', 'Published');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Phim chiếu rạp'),
(2, 'Phim hài hước'),
(3, 'Phim hành động'),
(4, 'Phim hoạt hình'),
(5, 'Phim kinh dị'),
(6, 'Phim tâm lý'),
(7, 'Phim viễn tưởng'),
(8, 'Phim võ thuật'),
(9, 'Phim cổ trang'),
(10, 'Phim anime');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `blog_id`, `parent_id`, `content`) VALUES
(1, 10, 1, NULL, 'Xem phim thực sự mãn nhãn, anh nam 9 đẹp trai cool ngầu nữa'),
(2, 12, 1, 1, 'Keanu Reeves thì đỉnh khỏi bàn rồi'),
(3, 10, 1, NULL, 'Mong ra phần tiếp thực sự!!'),
(4, 8, 1, NULL, 'Chồng yêu Keanu Reeves ');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(11, 'Hoa Kỳ'),
(12, 'Mexico'),
(13, 'Anh'),
(14, 'Canada'),
(15, 'Trung Quốc'),
(16, 'Nga'),
(17, 'Romania');

-- --------------------------------------------------------

--
-- Table structure for table `directors`
--

CREATE TABLE `directors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `gender` enum('0','1','2') DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `conutry_id` int(11) DEFAULT NULL,
  `height_cm` int(11) DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `directors`
--

INSERT INTO `directors` (`id`, `name`, `gender`, `birthday`, `conutry_id`, `height_cm`, `biography`, `profile_picture`) VALUES
(1, 'Lori Evans Taylor', '0', '1976-03-12', 11, 168, 'biopraphy Lori Evans Taylor', NULL),
(2, 'Matt Bettinelli Olpin', '1', '1978-02-19', 11, 183, 'bio', NULL),
(3, 'Chad Stahelski', '1', '1968-09-20', 11, 185, 'Bio Chad Stahelski', NULL),
(4, 'Joe Charbanic', '1', '1982-06-10', 12, 188, 'Bio Joe Charbanic', NULL),
(5, 'Matthew Ross', '1', '1975-07-10', 11, 176, 'bio Matthew Ross', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `director_images`
--

CREATE TABLE `director_images` (
  `id` int(11) NOT NULL,
  `director_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `caption` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `blog_id` int(11) DEFAULT NULL,
  `comment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `blog_id`, `comment_id`) VALUES
(1, 7, 1, 4),
(2, 11, 1, 4),
(3, 12, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `director_id` int(11) DEFAULT NULL,
  `producing_country_id` int(11) DEFAULT NULL,
  `duaration` time DEFAULT NULL,
  `release` date DEFAULT NULL,
  `movie_picture` varchar(255) DEFAULT NULL,
  `trailer_url` varchar(255) DEFAULT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `title`, `director_id`, `producing_country_id`, `duaration`, `release`, `movie_picture`, `trailer_url`, `content`) VALUES
(1, 'Bào Thai Của Quỷ', 1, 4, '01:30:00', '2022-03-15', NULL, NULL, 'content 1'),
(2, 'Tiếng Thét 6', 2, 4, '02:02:00', '2023-01-10', NULL, NULL, 'content Tiếng Thét 6'),
(3, 'Sát thủ John Wick Phần 4', 3, 4, '02:49:00', '2023-02-02', NULL, NULL, ''),
(4, 'Kẻ Truy Lùng', 4, 4, '01:40:00', '2000-01-13', NULL, NULL, 'Content Kẻ Truy Lùng'),
(5, 'Siberia - Cuộc Chiến Kim Cương Xanh', 5, 4, '01:40:00', '2018-02-14', NULL, NULL, 'Content Siberia - Cuộc Chiến Kim Cương Xanh');

-- --------------------------------------------------------

--
-- Table structure for table `movies_actors`
--

CREATE TABLE `movies_actors` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `actor_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies_actors`
--

INSERT INTO `movies_actors` (`id`, `movie_id`, `actor_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 1),
(5, 3, 5),
(6, 3, 4),
(7, 4, 6),
(8, 4, 4),
(9, 5, 8),
(10, 5, 4),
(11, 5, 7);

-- --------------------------------------------------------

--
-- Table structure for table `movies_categories`
--

CREATE TABLE `movies_categories` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movies_categories`
--

INSERT INTO `movies_categories` (`id`, `movie_id`, `category_id`) VALUES
(1, 1, 1),
(2, 1, 5),
(3, 2, 1),
(4, 2, 5),
(5, 3, 1),
(6, 3, 3),
(7, 4, 3),
(8, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `movie_images`
--

CREATE TABLE `movie_images` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `caption` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `producing_countries`
--

CREATE TABLE `producing_countries` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producing_countries`
--

INSERT INTO `producing_countries` (`id`, `name`) VALUES
(1, 'Trung Quốc'),
(2, 'Hàn Quốc'),
(3, 'Nhật Bản'),
(4, 'Âu mỹ'),
(5, 'Thái Lan'),
(6, 'Đài Loan'),
(7, 'Ấn Độ'),
(8, 'Hồng Kông'),
(9, 'Việt Nam'),
(10, 'Tổng hợp');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `movie_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `content` enum('0','1','2','3','4','5') NOT NULL,
  `acting` enum('0','1','2','3','4','5') NOT NULL,
  `visual` enum('0','1','2','3','4','5') NOT NULL,
  `sound` enum('0','1','2','3','4','5') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `movie_id`, `user_id`, `content`, `acting`, `visual`, `sound`) VALUES
(1, 1, 1, '3', '3', '3', '4'),
(2, 3, 11, '5', '5', '4', '5'),
(3, 4, 10, '3', '4', '3', '5'),
(4, 5, 8, '4', '5', '5', '5'),
(5, 3, 7, '5', '5', '5', '5'),
(6, 3, 9, '4', '4', '5', '5'),
(7, 4, 12, '2', '3', '4', '4'),
(8, 1, 10, '3', '5', '4', '4'),
(9, 4, 2, '4', '5', '4', '3');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `profile_picture` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `role` enum('0','1','2') DEFAULT NULL,
  `status` enum('0','1','2') DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `account_name`, `profile_picture`, `email`, `role`, `status`, `username`, `password`) VALUES
(1, 'NgocSon', NULL, 'son@gmail.com', '2', '0', 'ngocson171120', '12345678'),
(2, 'CaoCuong', NULL, 'cuong@gmail.com', '2', '0', 'licaocuong@gmail.com', '12345678'),
(3, 'Admin1', NULL, 'admin1@gmail.com', '1', '0', 'admin1@gmail.com', '12345678'),
(4, 'Admin2', NULL, 'admin2@gmail.com', '1', '0', 'admin2@gmail.com', '12345678'),
(5, 'Admin3', NULL, 'admin3@gmail.com', '1', '0', 'admin3@gmail.com', '12345678'),
(6, 'SuperAdmin', NULL, 'superadmin@gmail.com', '0', '0', 'superadmin', '12345678'),
(7, 'XuanHuong', NULL, 'huong@gmail.com', '2', '1', 'nguyenthixuanhuong', '12345678'),
(8, 'VanTrang', NULL, 'trang@gmail.com', '2', '0', 'vantrang@gmail.com', '12345678'),
(9, 'MinhDat', NULL, 'dat@gmail.com', '2', '2', 'minhdat@gmail.com', '12345678'),
(10, 'TuanAnh', NULL, 'anh@gmail.com', '2', '0', 'vutuananh', '12345678'),
(11, 'ThuyTien', NULL, 'tientien@gmail.com', '2', '0', 'thuytien@gmail.com', '12345678'),
(12, 'QuynhChi', NULL, 'chixinhgai@gmail.com', '2', '0', 'phamquynhchi', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `actor_images`
--
ALTER TABLE `actor_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `actor_id` (`actor_id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `directors`
--
ALTER TABLE `directors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conutry_id` (`conutry_id`);

--
-- Indexes for table `director_images`
--
ALTER TABLE `director_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `director_id` (`director_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blog_id` (`blog_id`),
  ADD KEY `comment_id` (`comment_id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `director_id` (`director_id`),
  ADD KEY `producing_country_id` (`producing_country_id`);

--
-- Indexes for table `movies_actors`
--
ALTER TABLE `movies_actors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `actor_id` (`actor_id`);

--
-- Indexes for table `movies_categories`
--
ALTER TABLE `movies_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `movie_images`
--
ALTER TABLE `movie_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`);

--
-- Indexes for table `producing_countries`
--
ALTER TABLE `producing_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movie_id` (`movie_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `actor_images`
--
ALTER TABLE `actor_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `directors`
--
ALTER TABLE `directors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `director_images`
--
ALTER TABLE `director_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `movies_actors`
--
ALTER TABLE `movies_actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `movies_categories`
--
ALTER TABLE `movies_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `movie_images`
--
ALTER TABLE `movie_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `producing_countries`
--
ALTER TABLE `producing_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `actors`
--
ALTER TABLE `actors`
  ADD CONSTRAINT `actors_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `actor_images`
--
ALTER TABLE `actor_images`
  ADD CONSTRAINT `actor_images_ibfk_1` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`);

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`);

--
-- Constraints for table `directors`
--
ALTER TABLE `directors`
  ADD CONSTRAINT `directors_ibfk_1` FOREIGN KEY (`conutry_id`) REFERENCES `countries` (`id`);

--
-- Constraints for table `director_images`
--
ALTER TABLE `director_images`
  ADD CONSTRAINT `director_images_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `directors` (`id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`),
  ADD CONSTRAINT `likes_ibfk_3` FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`);

--
-- Constraints for table `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`director_id`) REFERENCES `directors` (`id`),
  ADD CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`producing_country_id`) REFERENCES `producing_countries` (`id`);

--
-- Constraints for table `movies_actors`
--
ALTER TABLE `movies_actors`
  ADD CONSTRAINT `movies_actors_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `movies_actors_ibfk_2` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`);

--
-- Constraints for table `movies_categories`
--
ALTER TABLE `movies_categories`
  ADD CONSTRAINT `movies_categories_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `movies_categories_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `movie_images`
--
ALTER TABLE `movie_images`
  ADD CONSTRAINT `movie_images_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
