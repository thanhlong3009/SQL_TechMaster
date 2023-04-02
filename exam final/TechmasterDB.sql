CREATE TABLE `users` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `full_name` varchar(255),
  `avatar` varchar(255),
  `introduce` varchar(255),
  `role` int,
  `status_id` int,
  `phone` int,
  `email` varchar(255),
  `password` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `courses` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `introduce` text,
  `duration` varchar(255),
  `schedule` varchar(255),
  `price` int,
  `status_id` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `frequently_questions` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `course_id` int,
  `question` varchar(255),
  `aswer` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `classes` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `course_id` int,
  `manager_id` int,
  `address` varchar(255),
  `start_date` date,
  `end_date` date,
  `status_id` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `users_calsses` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `class_id` int,
  `status_id` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `vouchers` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `code` varchar(255),
  `content` text,
  `start_date` date,
  `end_date` date,
  `status_id` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `courses_vouchers` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `course_id` int,
  `voucher_id` int,
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `posts` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `author_id` int,
  `title` varchar(255),
  `content` text,
  `status_id` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `topics` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255),
  `created_at` timestamp,
  `updated_at` timestamp
);

CREATE TABLE `posts_topics` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `post_id` int,
  `topic_id` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `comments` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `post_id` int,
  `parent_id` int,
  `content` text,
  `status_id` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `subjects` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255),
  `class_id` int,
  `teacher_id` int,
  `route` text,
  `start_date` date,
  `end_date` date,
  `status_id` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `status` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `key` varchar(255),
  `value` varchar(255)
);

CREATE TABLE `lessons` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `subject_id` int,
  `title` varchar(255),
  `content` text,
  `homework` text,
  `status_id` int,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `students_lessons` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `student_id` int,
  `lesson_id` int,
  `attendance` boolean,
  `homework_status` int,
  `score` varchar(255),
  `comment` text,
  `created_at` timestamp,
  `updated_at` timestamp,
  `deleted_at` timestamp
);

CREATE TABLE `payments` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `user_id` int,
  `course` varchar(255),
  `voucher` int,
  `price` int,
  `status_id` int,
  `created_at` timestamp,
  `updated_at` timestamp
);

ALTER TABLE `users` ADD FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

ALTER TABLE `courses` ADD FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

ALTER TABLE `frequently_questions` ADD FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

ALTER TABLE `classes` ADD FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

ALTER TABLE `classes` ADD FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`);

ALTER TABLE `classes` ADD FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

ALTER TABLE `users_calsses` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `users_calsses` ADD FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);

ALTER TABLE `users_calsses` ADD FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

ALTER TABLE `vouchers` ADD FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

ALTER TABLE `courses_vouchers` ADD FOREIGN KEY (`course_id`) REFERENCES `courses` (`id`);

ALTER TABLE `courses_vouchers` ADD FOREIGN KEY (`voucher_id`) REFERENCES `vouchers` (`id`);

ALTER TABLE `posts` ADD FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

ALTER TABLE `posts` ADD FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

ALTER TABLE `posts_topics` ADD FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

ALTER TABLE `posts_topics` ADD FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`);

ALTER TABLE `comments` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `comments` ADD FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

ALTER TABLE `comments` ADD FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

ALTER TABLE `subjects` ADD FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`);

ALTER TABLE `subjects` ADD FOREIGN KEY (`teacher_id`) REFERENCES `users` (`id`);

ALTER TABLE `subjects` ADD FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

ALTER TABLE `lessons` ADD FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

ALTER TABLE `lessons` ADD FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);

ALTER TABLE `students_lessons` ADD FOREIGN KEY (`student_id`) REFERENCES `users` (`id`);

ALTER TABLE `students_lessons` ADD FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`);

ALTER TABLE `payments` ADD FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

ALTER TABLE `payments` ADD FOREIGN KEY (`voucher`) REFERENCES `courses_vouchers` (`id`);

ALTER TABLE `payments` ADD FOREIGN KEY (`status_id`) REFERENCES `status` (`id`);
