-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 11, 2019 at 09:54 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_sorority`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add books', 7, 'add_books'),
(26, 'Can change books', 7, 'change_books'),
(27, 'Can delete books', 7, 'delete_books'),
(28, 'Can view books', 7, 'view_books'),
(29, 'Can add cart', 8, 'add_cart'),
(30, 'Can change cart', 8, 'change_cart'),
(31, 'Can delete cart', 8, 'delete_cart'),
(32, 'Can view cart', 8, 'view_cart'),
(33, 'Can add notification', 9, 'add_notification'),
(34, 'Can change notification', 9, 'change_notification'),
(35, 'Can delete notification', 9, 'delete_notification'),
(36, 'Can view notification', 9, 'view_notification');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$120000$hCj8QpXgao2q$aiiXWiDHv/WALYnsMNIREi07lAddBicUVbDhILQXIH8=', '2019-04-11 19:52:40.095103', 0, 'maliha', '', '', 'malihanan09@gmail.com', 0, 1, '2019-04-10 15:22:37.289593'),
(2, 'pbkdf2_sha256$120000$hpEeJYzHLpJC$IXFmsqH3z19eMlG1w2dwZ7Y2LlUaKssFA6beDdpjDwk=', '2019-04-11 19:50:46.830719', 0, 'trupti', '', '', 'truptidl0101@gmail.com', 0, 1, '2019-04-10 16:14:16.546545'),
(3, 'pbkdf2_sha256$120000$n6ePtuXvidEE$6fuhzATgZxrh69a/cLAn7plvKZHIWMttzkYeYkaJxpI=', '2019-04-11 19:52:15.437769', 0, 'riya', '', '', 'riyamistry2904@gmail.com', 0, 1, '2019-04-10 16:15:59.649422');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `books_books`
--

CREATE TABLE `books_books` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `author` varchar(100) NOT NULL,
  `genre` varchar(50) NOT NULL,
  `isbn` int(11) NOT NULL,
  `edition` int(11) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `publishyear` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sold` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books_books`
--

INSERT INTO `books_books` (`id`, `name`, `image`, `price`, `author`, `genre`, `isbn`, `edition`, `publisher`, `publishyear`, `user_id`, `sold`) VALUES
(12, 'The Fault In Our Stars', 'The_Fault_in_Our_Stars.jpg', 400, 'John Green', 'Romance', 2138765, 2, 'Dutton Juvenile', 2012, 1, 1),
(13, 'Introduction to Algorithm', 'Clrs3.jpeg', 450, 'Thomas H. Cormen', 'computer', 2138763, 3, 'MIT Press', 1990, 1, 0),
(14, 'Charlotte\'s Web', 'CharlotteWeb.png', 200, 'E. B. White', 'fun', 6543456, 1, 'Harper and Brothers', 1952, 1, 0),
(15, 'Batman: The Kiling Joke', 'batman.jpg', 200, 'Alan Moore', 'Comic', 1234543, 1, 'Harper One', 1988, 1, 0),
(16, 'Pride and Prejudice', 'Pride_And_Prejudice.jpg', 450, 'Jane Austen', 'romance', 654454, 3, 'T. Egerton', 1813, 3, 1),
(17, 'The Man Who Knew Infinity', 'The_Man_Who_Knew_Infinity.jpg', 300, 'Robert Kanigel', 'Biography', 2138763, 2, 'C. Scribner\'s', 2005, 3, 1),
(18, 'Looking For Alaska', 'Looking_for_Alaska.jpg', 350, 'John Green', 'novel', 245187, 2, 'Harper Torch', 1991, 3, 0),
(19, 'The Subtle Art of Not Giving a F*ck', 'The_Subtle_Art_of_Not_Giving_a_F_ck.jpg', 400, 'Mark Manson', 'novel', 2138763, 2, 'Dutton Books', 2015, 2, 0),
(20, 'The Fault In Our Stars', 'The_Fault_in_Our_Stars_F5qif3M.jpg', 400, 'John Green', 'romance', 6543456, 2, 'Harper One', 2005, 2, 0),
(21, 'The Alchemist', 'the_alchemist.jpg', 400, 'Paulo Coelho', 'fantasy', 1234546, 2, 'Dutton Juvenile', 1991, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart_cart`
--

CREATE TABLE `cart_cart` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_cart`
--

INSERT INTO `cart_cart` (`id`, `book_id`, `user_id`) VALUES
(14, 12, 2),
(15, 17, 2),
(16, 21, 1),
(17, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cart_notification`
--

CREATE TABLE `cart_notification` (
  `id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `seller` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart_notification`
--

INSERT INTO `cart_notification` (`id`, `book_id`, `buyer_id`, `seller`) VALUES
(23, 13, 2, '1'),
(24, 19, 1, '2');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'books', 'books'),
(8, 'cart', 'cart'),
(9, 'cart', 'notification'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-04-10 14:26:01.437298'),
(2, 'auth', '0001_initial', '2019-04-10 14:26:10.851762'),
(3, 'admin', '0001_initial', '2019-04-10 14:26:12.801385'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-04-10 14:26:12.852270'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-04-10 14:26:12.946797'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-04-10 14:26:14.244481'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-04-10 14:26:15.213935'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-04-10 14:26:16.314273'),
(9, 'auth', '0004_alter_user_username_opts', '2019-04-10 14:26:16.431354'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-04-10 14:26:16.982715'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-04-10 14:26:17.078110'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-04-10 14:26:17.193567'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-04-10 14:26:18.105570'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-04-10 14:26:19.850141'),
(15, 'books', '0001_initial', '2019-04-10 14:26:20.949840'),
(16, 'cart', '0001_initial', '2019-04-10 14:26:25.431509'),
(17, 'sessions', '0001_initial', '2019-04-10 14:26:26.011575'),
(18, 'cart', '0002_notification_seller', '2019-04-10 17:04:38.936461'),
(19, 'books', '0002_books_sold', '2019-04-11 15:51:40.552396');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('d7nzbh6lbcn2a76vgksbw0j8qh80alle', 'ZDI3OGFjOTM0YjlhYzM5N2NiYzhlMTQwNmVhMDZmNzhmY2NhMWE4Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDE4ZTBhYzBkYWU5YzUyOWNiODEwMDhjM2U5ZDE5NTFlNDdlMTQ3IiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6Im1hbGloYSJ9', '2019-04-11 20:52:40.151870'),
('odofv98y9g8tzwlmeouanc2qv1cea8w7', 'ZDI3OGFjOTM0YjlhYzM5N2NiYzhlMTQwNmVhMDZmNzhmY2NhMWE4Njp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2NDE4ZTBhYzBkYWU5YzUyOWNiODEwMDhjM2U5ZDE5NTFlNDdlMTQ3IiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJ1c2VyX2lkIjoxLCJ1c2VybmFtZSI6Im1hbGloYSJ9', '2019-04-10 17:52:03.033942'),
('s2ctugq2qx3a2czjj09kwqccnbitrv8i', 'ZTUwM2QyNGJmZjQ1MjQ0MDFlMDk2YWFhMTY1YTNkMGU0MDViN2NmODp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlOTZjNmRjY2IxOGMzY2I0NGQ1ODJhMGZlNWUyYmFlODAwM2ZhZjA1IiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJ1c2VyX2lkIjozLCJ1c2VybmFtZSI6InJpeWEifQ==', '2019-04-11 17:47:22.001996'),
('we88fj61x3oxqpwa3ey21nva4b0dphm4', 'ZTUwM2QyNGJmZjQ1MjQ0MDFlMDk2YWFhMTY1YTNkMGU0MDViN2NmODp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlOTZjNmRjY2IxOGMzY2I0NGQ1ODJhMGZlNWUyYmFlODAwM2ZhZjA1IiwiX3Nlc3Npb25fZXhwaXJ5IjozNjAwLCJ1c2VyX2lkIjozLCJ1c2VybmFtZSI6InJpeWEifQ==', '2019-04-11 14:23:41.920247');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `books_books`
--
ALTER TABLE `books_books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_books_user_id_9249ca0d_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `cart_cart`
--
ALTER TABLE `cart_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_cart_book_id_202701de_fk_books_books_id` (`book_id`),
  ADD KEY `cart_cart_user_id_9b4220b9_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `cart_notification`
--
ALTER TABLE `cart_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_notification_book_id_3e8cb370_fk_books_books_id` (`book_id`),
  ADD KEY `cart_notification_buyer_id_f390ac37_fk_auth_user_id` (`buyer_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `books_books`
--
ALTER TABLE `books_books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `cart_cart`
--
ALTER TABLE `cart_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `cart_notification`
--
ALTER TABLE `cart_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `books_books`
--
ALTER TABLE `books_books`
  ADD CONSTRAINT `books_books_user_id_9249ca0d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cart_cart`
--
ALTER TABLE `cart_cart`
  ADD CONSTRAINT `cart_cart_book_id_202701de_fk_books_books_id` FOREIGN KEY (`book_id`) REFERENCES `books_books` (`id`),
  ADD CONSTRAINT `cart_cart_user_id_9b4220b9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cart_notification`
--
ALTER TABLE `cart_notification`
  ADD CONSTRAINT `cart_notification_book_id_3e8cb370_fk_books_books_id` FOREIGN KEY (`book_id`) REFERENCES `books_books` (`id`),
  ADD CONSTRAINT `cart_notification_buyer_id_f390ac37_fk_auth_user_id` FOREIGN KEY (`buyer_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
