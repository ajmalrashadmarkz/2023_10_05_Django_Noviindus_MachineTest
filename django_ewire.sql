-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 14, 2023 at 12:48 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django_ewire`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts_customuser`
--

CREATE TABLE `accounts_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `age` int(10) UNSIGNED DEFAULT NULL CHECK (`age` >= 0),
  `phone_number` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `accounts_customuser`
--

INSERT INTO `accounts_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `age`, `phone_number`) VALUES
(1, 'pbkdf2_sha256$390000$iCWSLhJKgHGpXqQX2go7Mc$qFnB9ubIzsdnPQT5csRCcXcsDmuEeqnWxQwnpnzR0WU=', '2023-09-14 06:29:03.958514', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2023-09-13 20:19:02.196413', NULL, ''),
(2, 'pbkdf2_sha256$390000$VlveIzyReUY6fcuvC7QzjW$zlqG7xINWr/xzZgd5idm6OnbSUDG3XibNovQa9kbNtE=', '2023-09-13 20:40:46.440456', 0, 'Rashad', 'Mohammed Ajmal', 'Rashad K', 'ajmalrashadmark@gmail.com', 0, 1, '2023-09-13 20:40:29.525898', NULL, '9605165343'),
(3, 'pbkdf2_sha256$390000$NW6vYgbL5Ic9C54MX3YdNP$z/B6/kkqOWBS95mPSnFF36frvEA+x2Yl935ePCUxIOs=', '2023-09-14 06:24:01.813126', 0, 'abduu', 'abdu', 'fdf', 'mark.rangetech@gmail.com', 0, 1, '2023-09-14 06:23:52.251408', NULL, '45748957437');

-- --------------------------------------------------------

--
-- Table structure for table `accounts_customuser_groups`
--

CREATE TABLE `accounts_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_customuser_user_permissions`
--

CREATE TABLE `accounts_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `articles_article`
--

CREATE TABLE `articles_article` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `author_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_customuser'),
(22, 'Can change user', 6, 'change_customuser'),
(23, 'Can delete user', 6, 'delete_customuser'),
(24, 'Can view user', 6, 'view_customuser'),
(25, 'Can add article', 7, 'add_article'),
(26, 'Can change article', 7, 'change_article'),
(27, 'Can delete article', 7, 'delete_article'),
(28, 'Can view article', 7, 'view_article'),
(29, 'Can add Tag', 8, 'add_tag'),
(30, 'Can change Tag', 8, 'change_tag'),
(31, 'Can delete Tag', 8, 'delete_tag'),
(32, 'Can view Tag', 8, 'view_tag'),
(33, 'Can add post', 9, 'add_post'),
(34, 'Can change post', 9, 'change_post'),
(35, 'Can delete post', 9, 'delete_post'),
(36, 'Can view post', 9, 'view_post'),
(37, 'Can add like or unlike', 10, 'add_likeorunlike'),
(38, 'Can change like or unlike', 10, 'change_likeorunlike'),
(39, 'Can delete like or unlike', 10, 'delete_likeorunlike'),
(40, 'Can view like or unlike', 10, 'view_likeorunlike');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-09-14 05:55:00.789155', '1', 'India', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(6, 'accounts', 'customuser'),
(1, 'admin', 'logentry'),
(7, 'articles', 'article'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(10, 'post', 'likeorunlike'),
(9, 'post', 'post'),
(8, 'post', 'tag'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-09-13 20:18:18.767660'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-09-13 20:18:18.868653'),
(3, 'auth', '0001_initial', '2023-09-13 20:18:19.209635'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-09-13 20:18:19.383623'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-09-13 20:18:19.397621'),
(6, 'auth', '0004_alter_user_username_opts', '2023-09-13 20:18:19.409033'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-09-13 20:18:19.420032'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-09-13 20:18:19.426032'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-09-13 20:18:19.439032'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-09-13 20:18:19.450029'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-09-13 20:18:19.462035'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-09-13 20:18:19.490088'),
(13, 'auth', '0011_update_proxy_permissions', '2023-09-13 20:18:19.505044'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-09-13 20:18:19.514028'),
(15, 'accounts', '0001_initial', '2023-09-13 20:18:19.961002'),
(16, 'admin', '0001_initial', '2023-09-13 20:18:20.146990'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-09-13 20:18:20.164985'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-13 20:18:20.178986'),
(19, 'articles', '0001_initial', '2023-09-13 20:18:20.542387'),
(20, 'post', '0001_initial', '2023-09-13 20:18:21.079367'),
(21, 'post', '0002_alter_post_id', '2023-09-13 20:18:23.156035'),
(22, 'post', '0003_likeorunlike_delete_likes', '2023-09-13 20:18:23.379021'),
(23, 'sessions', '0001_initial', '2023-09-13 20:18:23.464373'),
(24, 'accounts', '0002_customuser_phone_number', '2023-09-13 20:38:03.605048');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('iefvm9zhq53zttf60m1gykm8qvmr7svd', '.eJxVjMsOwiAQRf-FtSE8ZKa4dN9vIANDpWogKe3K-O_apAvd3nPOfYlA21rC1vMSZhYXocXpd4uUHrnugO9Ub02mVtdljnJX5EG7HBvn5_Vw_w4K9fKtEQwlA-i8n6ZoGZM14C0ODskOnjM4BxDBoNEAKpI-g7JkVGKGhFG8P7znNvI:1qgfqZ:Y3-3bgKk6y4YeyBk_8ymYxOC8-_tgCpy2t2BtT0YqB4', '2023-09-28 06:29:03.965514');

-- --------------------------------------------------------

--
-- Table structure for table `post_likeorunlike`
--

CREATE TABLE `post_likeorunlike` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post_post`
--

CREATE TABLE `post_post` (
  `id` bigint(20) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `created_date` datetime(6) NOT NULL,
  `published_date` datetime(6) DEFAULT NULL,
  `likes` int(11) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_post`
--

INSERT INTO `post_post` (`id`, `title`, `description`, `created_date`, `published_date`, `likes`, `user_id`) VALUES
(1, 'Test1', 'Test 1', '2023-09-14 05:58:11.394980', NULL, 0, 1),
(2, 'World', 'setup', '2023-09-14 06:18:38.858400', NULL, 0, 1),
(3, 'gdfgfdg', 'fgfgdfgfgdfgh', '2023-09-14 06:24:42.037317', NULL, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `post_post_tags`
--

CREATE TABLE `post_post_tags` (
  `id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_post_tags`
--

INSERT INTO `post_post_tags` (`id`, `post_id`, `tag_id`) VALUES
(1, 1, 1),
(2, 2, 4),
(3, 2, 5),
(4, 2, 6),
(7, 3, 6),
(8, 3, 7),
(5, 3, 8),
(6, 3, 9);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `id` bigint(20) NOT NULL,
  `title` varchar(75) NOT NULL,
  `slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`id`, `title`, `slug`) VALUES
(1, 'India', '3a07c282-52c3-11ee-aded-e02a82ce3881'),
(2, 'SaveEarth', '27facea9-52c5-11ee-95d9-e02a82ce3881'),
(3, 'WWW', '4ad8f7cc-52c5-11ee-958c-e02a82ce3881'),
(4, 'Love', '67d23198-52c5-11ee-8a3f-e02a82ce3881'),
(5, 'a', '901fb322-52c5-11ee-8d92-e02a82ce3881'),
(6, 'set', '78c8d789-52c6-11ee-8930-e02a82ce3881'),
(7, 'setup', '10309341-52c7-11ee-bada-e02a82ce3881'),
(8, 'swe', '28e0632d-52c7-11ee-807c-e02a82ce3881'),
(9, 'fefedfdfg', '5ddf6d33-52c7-11ee-b0fa-e02a82ce3881');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts_customuser`
--
ALTER TABLE `accounts_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `accounts_customuser_groups`
--
ALTER TABLE `accounts_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_customuser_groups_customuser_id_group_id_c074bdcb_uniq` (`customuser_id`,`group_id`),
  ADD KEY `accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `accounts_customuser_user_permissions`
--
ALTER TABLE `accounts_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_customuser_user_customuser_id_permission_9632a709_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `accounts_customuser__permission_id_aea3d0e5_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `articles_article`
--
ALTER TABLE `articles_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_article_author_id_059aea7d_fk_accounts_customuser_id` (`author_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `post_likeorunlike`
--
ALTER TABLE `post_likeorunlike`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_likeorunlike_post_id_107134fd_fk_post_post_id` (`post_id`),
  ADD KEY `post_likeorunlike_user_id_62c5a12c_fk_accounts_customuser_id` (`user_id`);

--
-- Indexes for table `post_post`
--
ALTER TABLE `post_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_post_user_id_b9c97aef_fk_accounts_customuser_id` (`user_id`);

--
-- Indexes for table `post_post_tags`
--
ALTER TABLE `post_post_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_post_tags_post_id_tag_id_15c628ee_uniq` (`post_id`,`tag_id`),
  ADD KEY `post_post_tags_tag_id_cb551e85_fk_post_tag_id` (`tag_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts_customuser`
--
ALTER TABLE `accounts_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `accounts_customuser_groups`
--
ALTER TABLE `accounts_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts_customuser_user_permissions`
--
ALTER TABLE `accounts_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles_article`
--
ALTER TABLE `articles_article`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `post_likeorunlike`
--
ALTER TABLE `post_likeorunlike`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post_post`
--
ALTER TABLE `post_post`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_post_tags`
--
ALTER TABLE `post_post_tags`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `post_tag`
--
ALTER TABLE `post_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts_customuser_groups`
--
ALTER TABLE `accounts_customuser_groups`
  ADD CONSTRAINT `accounts_customuser__customuser_id_bc55088e_fk_accounts_` FOREIGN KEY (`customuser_id`) REFERENCES `accounts_customuser` (`id`),
  ADD CONSTRAINT `accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `accounts_customuser_user_permissions`
--
ALTER TABLE `accounts_customuser_user_permissions`
  ADD CONSTRAINT `accounts_customuser__customuser_id_0deaefae_fk_accounts_` FOREIGN KEY (`customuser_id`) REFERENCES `accounts_customuser` (`id`),
  ADD CONSTRAINT `accounts_customuser__permission_id_aea3d0e5_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `articles_article`
--
ALTER TABLE `articles_article`
  ADD CONSTRAINT `articles_article_author_id_059aea7d_fk_accounts_customuser_id` FOREIGN KEY (`author_id`) REFERENCES `accounts_customuser` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);

--
-- Constraints for table `post_likeorunlike`
--
ALTER TABLE `post_likeorunlike`
  ADD CONSTRAINT `post_likeorunlike_post_id_107134fd_fk_post_post_id` FOREIGN KEY (`post_id`) REFERENCES `post_post` (`id`),
  ADD CONSTRAINT `post_likeorunlike_user_id_62c5a12c_fk_accounts_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);

--
-- Constraints for table `post_post`
--
ALTER TABLE `post_post`
  ADD CONSTRAINT `post_post_user_id_b9c97aef_fk_accounts_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);

--
-- Constraints for table `post_post_tags`
--
ALTER TABLE `post_post_tags`
  ADD CONSTRAINT `post_post_tags_post_id_6adf1c1b_fk` FOREIGN KEY (`post_id`) REFERENCES `post_post` (`id`),
  ADD CONSTRAINT `post_post_tags_tag_id_cb551e85_fk_post_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `post_tag` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
