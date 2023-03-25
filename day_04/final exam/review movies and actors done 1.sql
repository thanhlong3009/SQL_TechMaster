CREATE TABLE `users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `account_name` varchar(255),
  `profile_picture` url,
  `email` varchar(255),
  `is_admin` boolean,
  `username` varchar(255),
  `password` varchar(255)
);

CREATE TABLE `movies` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255),
  `director_id` int,
  `manufacture_id` int,
  `is_series` boolean,
  `duaration` time,
  `duaration_per_episode` time,
  `release` date,
  `is_cinema_release` boolean,
  `movie_picture` urt
);

CREATE TABLE `manufactures` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `categories` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `contents` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `movie_id` int,
  `content` text
);

CREATE TABLE `ratings` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `movie_id` int,
  `user_id` int,
  `content_rating` int NOT NULL,
  `acting_rating` int NOT NULL,
  `visual_rating` int NOT NULL,
  `sound_rating` int NOT NULL
);

CREATE TABLE `directors` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `movies_categories` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `movie_id` int,
  `category_id` int
);

CREATE TABLE `movie_images` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `movie_id` int,
  `image` url,
  `caption` text
);

CREATE TABLE `actors` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `gender` varchar(255),
  `birthday` datetime,
  `country_id` int,
  `height_cm` int,
  `biography` text,
  `profile_picture` url
);

CREATE TABLE `movies_actors` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `movie_id` int,
  `actor_id` int
);

CREATE TABLE `countries` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255)
);

CREATE TABLE `actor_images` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `actor_id` int,
  `image` url,
  `caption` text
);

CREATE TABLE `awards` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255),
  `year` int
);

CREATE TABLE `actors_awards` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `actor_id` int,
  `award_id` int
);

CREATE TABLE `movie_comments` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `movie_id` int,
  `content` text
);

CREATE TABLE `reply_movie_comments` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `comment_id` int,
  `parent_id` int,
  `user_id` int,
  `movie_id` int,
  `content` text
);

CREATE TABLE `movie_comment_likes` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `is_like` boolean,
  `is_reply_comments` boolean,
  `comment_id` int,
  `reply_comment_id` int
);

CREATE TABLE `actor_comments` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `actor_id` int,
  `content` text
);

CREATE TABLE `reply_actor_comments` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `comment_id` int,
  `parent_id` int,
  `user_id` int,
  `actor_id` int,
  `content` text
);

CREATE TABLE `actor_comment_likes` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `is_like` boolean,
  `is_reply_comments` boolean,
  `comment_id` int,
  `reply_comment_id` int
);

ALTER TABLE `movies` ADD FOREIGN KEY (`director_id`) REFERENCES `directors` (`id`);

ALTER TABLE `movies` ADD FOREIGN KEY (`manufacture_id`) REFERENCES `manufactures` (`id`);

ALTER TABLE `contents` ADD FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

ALTER TABLE `ratings` ADD FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

ALTER TABLE `ratings` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `movies_categories` ADD FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

ALTER TABLE `movies_categories` ADD FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

ALTER TABLE `movie_images` ADD FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

ALTER TABLE `actors` ADD FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

ALTER TABLE `movies_actors` ADD FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

ALTER TABLE `movies_actors` ADD FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`);

ALTER TABLE `actor_images` ADD FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`);

ALTER TABLE `actors_awards` ADD FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`);

ALTER TABLE `actors_awards` ADD FOREIGN KEY (`award_id`) REFERENCES `awards` (`id`);

ALTER TABLE `movie_comments` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `movie_comments` ADD FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

ALTER TABLE `reply_movie_comments` ADD FOREIGN KEY (`comment_id`) REFERENCES `movie_comments` (`id`);

ALTER TABLE `reply_movie_comments` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `reply_movie_comments` ADD FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

ALTER TABLE `movie_comment_likes` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `movie_comment_likes` ADD FOREIGN KEY (`comment_id`) REFERENCES `movie_comments` (`id`);

ALTER TABLE `movie_comment_likes` ADD FOREIGN KEY (`reply_comment_id`) REFERENCES `reply_movie_comments` (`id`);

ALTER TABLE `actor_comments` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `actor_comments` ADD FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`);

ALTER TABLE `reply_actor_comments` ADD FOREIGN KEY (`comment_id`) REFERENCES `actor_comments` (`id`);

ALTER TABLE `reply_actor_comments` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `reply_actor_comments` ADD FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`);

ALTER TABLE `actor_comment_likes` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `actor_comment_likes` ADD FOREIGN KEY (`comment_id`) REFERENCES `actor_comments` (`id`);

ALTER TABLE `actor_comment_likes` ADD FOREIGN KEY (`reply_comment_id`) REFERENCES `reply_actor_comments` (`id`);
