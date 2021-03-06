
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";



CREATE TABLE `backup_chat` (
  `id` int(10) UNSIGNED AUTO_INCREMENT primary key NOT NULL,
  `id2` int(10) NOT NULL,
  `_from` varchar(32) NOT NULL,
  `ip_from` varchar(32) NOT NULL,
  `_to` varchar(32) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `request` varchar(16) NOT NULL,
  `request_both` varchar(64) NOT NULL,
  `request_time` varchar(16) NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `multimedia_name` varchar(256) NOT NULL,
  `multimedia_type` varchar(32) NOT NULL DEFAULT 'text/plain',
  `multimedia_size` bigint(20) NOT NULL,
  `multimedia_data` longblob NOT NULL,
  `fingerprint` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `backup_forum` (
  `id` int(10) UNSIGNED AUTO_INCREMENT primary key NOT NULL,
  `creator` varchar(16) NOT NULL,
  `avatar` longblob NOT NULL,
  `theme` varchar(32) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `_from` varchar(32) NOT NULL,
  `ip_from` varchar(32) NOT NULL,
  `_to` varchar(32) NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `backup_login` (
  `id` int(10) UNSIGNED AUTO_INCREMENT primary key NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `is_inside` varchar(4) NOT NULL,
  `fingerprint` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `chat` (
  `id` int(10) UNSIGNED AUTO_INCREMENT primary key NOT NULL,
  `id2` int(10) NOT NULL,
  `_from` varchar(32) NOT NULL,
  `avatar` longblob NOT NULL,
  `ip_from` varchar(32) NOT NULL,
  `_to` varchar(32) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `request` varchar(16) NOT NULL,
  `request_both` varchar(64) NOT NULL,
  `request_time` varchar(16) NOT NULL,
  `message` varchar(4096) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `multimedia_name` varchar(256) NOT NULL,
  `multimedia_type` varchar(32) NOT NULL DEFAULT 'text/plain',
  `multimedia_size` bigint(20) NOT NULL,
  `multimedia_data` longblob NOT NULL,
  `fingerprint` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `forum` (
  `id` int(10) UNSIGNED AUTO_INCREMENT primary key NOT NULL,
  `creator` varchar(16) NOT NULL,
  `avatar` longblob NOT NULL,
  `theme` varchar(32) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `_from` varchar(32) NOT NULL,
  `ip_from` varchar(32) NOT NULL,
  `_to` varchar(32) NOT NULL,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `login` (
  `id` int(10) UNSIGNED AUTO_INCREMENT primary key NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(50) NOT NULL,
  `is_inside` varchar(4) NOT NULL,
  `fingerprint` varchar(32) NOT NULL,
  `verification_code` varchar(5) NOT NULL,
  `verified` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `log_file` (
  `id` int(10) AUTO_INCREMENT primary key NOT NULL,
  `username` varchar(32) NOT NULL,
  `ip_addr` varchar(32) NOT NULL,
  `path` varchar(32) NOT NULL,
  `connect` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `users_activities` (
  `id` int(10) AUTO_INCREMENT primary key NOT NULL,
  `username` varchar(32) NOT NULL,
  `ip_addr` varchar(64) NOT NULL,
  `browser` varchar(128) NOT NULL,
  `log_in_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `fingerprint` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



CREATE TABLE `users_online` (
  `id` int(10) AUTO_INCREMENT primary key NOT NULL,
  `instant` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `username` varchar(16) NOT NULL,
  `is_inside` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


ALTER TABLE `backup_chat`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `backup_forum`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `backup_login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);


ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`),


ALTER TABLE `forum`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);


ALTER TABLE `log_file`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);


ALTER TABLE `users_activities`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `backup_forum`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


ALTER TABLE `backup_login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


ALTER TABLE `chat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


ALTER TABLE `forum`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


ALTER TABLE `login`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


ALTER TABLE `log_file`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


ALTER TABLE `users_activities`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;


ALTER TABLE `users_online`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1;
