CREATE TABLE `users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `account_name` varchar(255),
  `profile_picture` varchar(255),
  `email` varchar(255),
  `role` int,
  `status` int,
  `username` varchar(255),
  `password` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `movies` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255),
  `producing_country_id` int,
  `duaration` time,
  `release` date,
  `movie_picture` varchar(255),
  `trailer_url` varchar(255),
  `content` text,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `producing_country` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `categories` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `ratings` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `movie_id` int,
  `user_id` int,
  `content` int,
  `acting` int,
  `visual` int,
  `sound` int,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `movies_category` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `movie_id` int,
  `category_id` int,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `movie_image` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `movie_id` int,
  `image` varchar(255),
  `caption` text,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `credits` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `is_director` boolean,
  `name` varchar(255),
  `gender` int,
  `birthday` date,
  `country_id` int,
  `height_cm` int,
  `biography` text,
  `profile_picture` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `awards` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `year` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `credit_award` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `award_id` int,
  `credit_id` int,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `movie_credit` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `movie_id` int,
  `credits_id` int,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `countries` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `credit_image` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `credit_id` int,
  `image` varchar(255),
  `caption` text,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `blogs` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `title` varchar(255),
  `type` int,
  `content` text,
  `status` int,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `comments` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `blog_id` int,
  `parent_id` int,
  `content` text,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `reactions` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `content` varchar(255),
  `user_id` int,
  `blog_id` int,
  `comment_id` int,
  `created_at` timestamp,
  `updated_at` timestamp
);

ALTER TABLE `movies` ADD FOREIGN KEY (`producing_country_id`) REFERENCES `producing_country` (`id`);

ALTER TABLE `ratings` ADD FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

ALTER TABLE `ratings` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `movies_category` ADD FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

ALTER TABLE `movies_category` ADD FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

ALTER TABLE `movie_image` ADD FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

ALTER TABLE `credits` ADD FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

ALTER TABLE `credit_award` ADD FOREIGN KEY (`award_id`) REFERENCES `awards` (`id`);

ALTER TABLE `credit_award` ADD FOREIGN KEY (`credit_id`) REFERENCES `credits` (`id`);

ALTER TABLE `movie_credit` ADD FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

ALTER TABLE `movie_credit` ADD FOREIGN KEY (`credits_id`) REFERENCES `credits` (`id`);

ALTER TABLE `credit_image` ADD FOREIGN KEY (`credit_id`) REFERENCES `credits` (`id`);

ALTER TABLE `blogs` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `comments` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `comments` ADD FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`);

ALTER TABLE `reactions` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `reactions` ADD FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`);

ALTER TABLE `reactions` ADD FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`);
