CREATE TABLE `users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `account_name` varchar(255),
  `profile_picture` varchar(255),
  `email` varchar(255),
  `role` int,
  `status` int,
  `username` varchar(255),
  `password` varchar(255)
);

CREATE TABLE `movies` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255),
  `director_id` int,
  `producing_country_id` int,
  `duaration` time,
  `release` date,
  `movie_picture` varchar(255),
  `trailer_url` varchar(255),
  `post_status_id` int
);

CREATE TABLE `producing_countries` (
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
  `content` int NOT NULL,
  `acting` int NOT NULL,
  `visual` int NOT NULL,
  `sound` int NOT NULL
);

CREATE TABLE `directors` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `gender` varchar(255),
  `birthday` date,
  `conutry_id` int,
  `height_cm` int,
  `biography` text,
  `profile_picture` varchar(255)
);

CREATE TABLE `director_images` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `director_id` int,
  `image` varchar(255),
  `caption` text
);

CREATE TABLE `movies_categories` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `movie_id` int,
  `category_id` int
);

CREATE TABLE `movie_images` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `movie_id` int,
  `image` varchar(255),
  `caption` text
);

CREATE TABLE `actors` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `gender` varchar(255),
  `birthday` date,
  `country_id` int,
  `height_cm` int,
  `biography` text,
  `profile_picture` varchar(255)
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
  `image` varchar(255),
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

CREATE TABLE `blogs` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `title` varchar(255),
  `type` int,
  `content` text,
  `release_date` date,
  `status` int
);

CREATE TABLE `comments` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `blog_id` int,
  `parent_id` int,
  `content` text
);

CREATE TABLE `likes` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `blog_id` int,
  `comment_id` int
);

ALTER TABLE `movies` ADD FOREIGN KEY (`director_id`) REFERENCES `directors` (`id`);

ALTER TABLE `movies` ADD FOREIGN KEY (`producing_country_id`) REFERENCES `producing_countries` (`id`);

ALTER TABLE `contents` ADD FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

ALTER TABLE `ratings` ADD FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

ALTER TABLE `ratings` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `directors` ADD FOREIGN KEY (`conutry_id`) REFERENCES `countries` (`id`);

ALTER TABLE `director_images` ADD FOREIGN KEY (`director_id`) REFERENCES `directors` (`id`);

ALTER TABLE `movies_categories` ADD FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

ALTER TABLE `movies_categories` ADD FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

ALTER TABLE `movie_images` ADD FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

ALTER TABLE `actors` ADD FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`);

ALTER TABLE `movies_actors` ADD FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`);

ALTER TABLE `movies_actors` ADD FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`);

ALTER TABLE `actor_images` ADD FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`);

ALTER TABLE `actors_awards` ADD FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`);

ALTER TABLE `actors_awards` ADD FOREIGN KEY (`award_id`) REFERENCES `awards` (`id`);

ALTER TABLE `blogs` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `comments` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `comments` ADD FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`);

ALTER TABLE `likes` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `likes` ADD FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`);

ALTER TABLE `likes` ADD FOREIGN KEY (`comment_id`) REFERENCES `comments` (`id`);
