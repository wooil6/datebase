CREATE TABLE `user` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) not NULL,
  `email` varchar(255) not NULL
);

CREATE TABLE `content` (
   `id` int PRIMARY KEY AUTO_INCREMENT,
  `title` varchar(255) not NULL,
  `body` varchar(255) not Null,
  `created_at` timestamp not NULL DEFAULT CURRENT_TIMESTAMP,
  `userId` int,
  FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
);

CREATE TABLE `category` (
   `id` int PRIMARY KEY AUTO_INCREMENT,
   `name` varchar(255) not NULL
);

CREATE TABLE `content_category` (
   `id` int PRIMARY KEY AUTO_INCREMENT,
   `contentId` int,
   `categoryId` int,
   FOREIGN KEY (`contentId`) REFERENCES `content` (`id`),
   FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`)
);

CREATE TABLE `role` (
  `id` int PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(255) not NULL
);

ALTER TABLE `user` ADD roleId int;
ALTER TABLE `user` ADD FOREIGN KEY (`roleId`) REFERENCES `role` (`id`);