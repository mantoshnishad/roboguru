-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2019 at 07:48 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `roboguru`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `image`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'banners\\August2019\\UC8ryaI7eLnMU2bgZEet.jpg', 'Title 1', 'Body 1', '2019-08-20 12:12:19', '2019-08-20 12:12:19'),
(2, 'banners\\August2019\\skq5QeIhg7lJSr9vf2EA.jpg', 'title 2', 'Body 2', '2019-08-20 12:12:48', '2019-08-20 12:12:48'),
(3, 'banners\\August2019\\xPyRL48cRcADB9cMW7kh.png', 'title 3', 'Body 3', '2019-08-20 12:13:14', '2019-08-20 12:13:14');

-- --------------------------------------------------------

--
-- Table structure for table `comingsoons`
--

CREATE TABLE `comingsoons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(36, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(37, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(38, 6, 'body', 'text_area', 'Body', 1, 1, 1, 1, 1, 1, '{}', 3),
(39, 6, 'video', 'text', 'Video', 0, 1, 1, 1, 1, 1, '{}', 4),
(40, 6, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(41, 6, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(42, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(43, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(44, 7, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 2),
(45, 7, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(46, 7, 'body', 'text', 'Body', 1, 1, 1, 1, 1, 1, '{}', 4),
(47, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 5),
(48, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(49, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(50, 8, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, '{}', 2),
(51, 8, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 3),
(52, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 4),
(53, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(54, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(55, 9, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(56, 9, 'body', 'text_area', 'Body', 1, 1, 1, 1, 1, 1, '{}', 3),
(57, 9, 'video', 'text', 'Video', 0, 1, 1, 1, 1, 1, '{}', 4),
(58, 9, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(59, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(60, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(61, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(62, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(63, 11, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(64, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(65, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(66, 12, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 2),
(67, 12, 'body', 'text_area', 'Body', 1, 1, 1, 1, 1, 1, '{}', 3),
(68, 12, 'video', 'text', 'Video', 0, 1, 1, 1, 1, 1, '{}', 4),
(69, 12, 'image', 'image', 'Image', 0, 1, 1, 1, 1, 1, '{}', 5),
(70, 12, 'projectType', 'text', 'ProjectType', 1, 1, 1, 1, 1, 1, '{}', 6),
(71, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(72, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(73, 12, 'project_belongsto_project_type_relationship', 'relationship', 'project_types', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\ProjectType\",\"table\":\"project_types\",\"type\":\"belongsTo\",\"column\":\"projectType\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(74, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(76, 13, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(77, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(78, 9, 'noteType', 'text', 'NoteType', 0, 1, 1, 1, 1, 1, '{}', 8),
(79, 9, 'note_belongsto_note_type_relationship', 'relationship', 'note_types', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\NoteType\",\"table\":\"note_types\",\"type\":\"belongsTo\",\"column\":\"noteType\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(80, 13, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(81, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(82, 14, 'question', 'text', 'Question', 1, 1, 1, 1, 1, 1, '{}', 2),
(83, 14, 'ans1', 'text', 'Ans1', 1, 1, 1, 1, 1, 1, '{}', 3),
(84, 14, 'ans2', 'text', 'Ans2', 1, 1, 1, 1, 1, 1, '{}', 4),
(85, 14, 'ans3', 'text', 'Ans3', 1, 1, 1, 1, 1, 1, '{}', 5),
(86, 14, 'ans4', 'text', 'Ans4', 1, 1, 1, 1, 1, 1, '{}', 6),
(87, 14, 'ans', 'text', 'Ans', 1, 1, 1, 1, 1, 1, '{}', 7),
(89, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 9),
(90, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 10),
(91, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(93, 15, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(94, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(95, 14, 'paper_belongsto_subject_relationship', 'relationship', 'subjects', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Subject\",\"table\":\"subjects\",\"type\":\"belongsTo\",\"column\":\"subjectType\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 11),
(96, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(97, 16, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(98, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 3),
(99, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(100, 14, 'paper_belongsto_paper_type_relationship', 'relationship', 'paper_types', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\PaperType\",\"table\":\"paper_types\",\"type\":\"belongsTo\",\"column\":\"paperType\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(101, 14, 'paperType', 'text', 'PaperType', 1, 1, 1, 1, 1, 1, '{}', 11),
(102, 15, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(103, 14, 'subjectType', 'text', 'SubjectType', 1, 1, 1, 1, 1, 1, '{}', 8);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-08-17 11:14:54', '2019-08-17 11:14:54'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-08-17 11:14:54', '2019-08-17 11:14:54'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-08-17 11:14:54', '2019-08-17 11:14:54'),
(6, 'my_posts', 'my-posts', 'My Post', 'My Posts', 'voyager-pen', 'App\\MyPost', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-08-19 11:47:09', '2019-08-23 11:15:06'),
(7, 'banners', 'banners', 'Banner', 'Banners', NULL, 'App\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-08-20 12:11:04', '2019-08-20 12:11:04'),
(8, 'comingsoons', 'comingsoons', 'Comingsoon', 'Comingsoons', NULL, 'App\\Comingsoon', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-08-20 12:39:40', '2019-08-20 12:39:40'),
(9, 'notes', 'notes', 'Note', 'Notes', NULL, 'App\\Note', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-19 09:57:04', '2019-09-25 04:14:44'),
(11, 'project_types', 'project-types', 'Project Type', 'Project Types', NULL, 'App\\ProjectType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-25 02:43:58', '2019-09-25 03:06:45'),
(12, 'projects', 'projects', 'Project', 'Projects', NULL, 'App\\Project', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-25 02:50:48', '2019-09-25 03:14:27'),
(13, 'note_types', 'note-types', 'Note Type', 'Note Types', NULL, 'App\\NoteType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-25 04:00:01', '2019-09-25 04:14:23'),
(14, 'papers', 'papers', 'Paper', 'Papers', NULL, 'App\\Paper', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-26 10:12:53', '2019-09-26 12:06:13'),
(15, 'subjects', 'subjects', 'Subject', 'Subjects', NULL, 'App\\Subject', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2019-09-26 10:13:36', '2019-09-26 12:05:40'),
(16, 'paper_types', 'paper-types', 'Paper Type', 'Paper Types', NULL, 'App\\PaperType', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2019-09-26 10:38:40', '2019-09-26 10:38:40');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-08-17 11:14:54', '2019-08-17 11:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-08-17 11:14:54', '2019-08-17 11:14:54', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 14, '2019-08-17 11:14:54', '2019-09-26 11:43:11', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 12, '2019-08-17 11:14:54', '2019-09-26 11:44:04', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 13, '2019-08-17 11:14:54', '2019-09-26 11:44:04', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 15, '2019-08-17 11:14:55', '2019-09-26 11:42:48', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2019-08-17 11:14:55', '2019-08-19 11:21:38', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2019-08-17 11:14:55', '2019-08-19 11:21:38', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2019-08-17 11:14:55', '2019-09-26 11:41:55', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2019-08-17 11:14:55', '2019-09-26 11:41:55', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 16, '2019-08-17 11:14:55', '2019-09-26 11:42:48', 'voyager.settings.index', NULL),
(11, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2019-08-17 11:14:55', '2019-09-26 11:41:55', 'voyager.hooks', NULL),
(14, 1, 'My Posts', '', '_self', NULL, NULL, NULL, 2, '2019-08-19 11:47:09', '2019-09-26 11:41:55', 'voyager.my-posts.index', NULL),
(15, 1, 'Banners', '', '_self', NULL, NULL, NULL, 5, '2019-08-20 12:11:04', '2019-09-26 11:43:03', 'voyager.banners.index', NULL),
(16, 1, 'Comingsoons', '', '_self', NULL, NULL, NULL, 6, '2019-08-20 12:39:40', '2019-09-26 11:43:03', 'voyager.comingsoons.index', NULL),
(17, 1, 'Notes', '', '_self', NULL, NULL, NULL, 7, '2019-09-19 09:57:04', '2019-09-26 11:43:03', 'voyager.notes.index', NULL),
(18, 1, 'Project Types', '', '_self', NULL, NULL, NULL, 3, '2019-09-25 02:43:59', '2019-09-26 11:43:03', 'voyager.project-types.index', NULL),
(19, 1, 'Projects', '', '_self', NULL, NULL, NULL, 4, '2019-09-25 02:50:48', '2019-09-26 11:43:03', 'voyager.projects.index', NULL),
(20, 1, 'Note Types', '', '_self', NULL, NULL, NULL, 8, '2019-09-25 04:00:02', '2019-09-26 11:43:03', 'voyager.note-types.index', NULL),
(21, 1, 'Papers', '', '_self', NULL, NULL, NULL, 9, '2019-09-26 10:12:53', '2019-09-26 11:43:03', 'voyager.papers.index', NULL),
(22, 1, 'Subjects', '', '_self', NULL, NULL, NULL, 11, '2019-09-26 10:13:36', '2019-09-26 11:44:04', 'voyager.subjects.index', NULL),
(23, 1, 'Paper Types', '', '_self', NULL, NULL, NULL, 10, '2019-09-26 10:38:40', '2019-09-26 11:44:04', 'voyager.paper-types.index', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_163412_create_posts_table', 2),
(24, '2019_08_19_171521_create_my_posts_table', 3),
(25, '2019_08_20_172428_create_banners_table', 4),
(28, '2019_08_20_180651_create_comingsoons_table', 5),
(29, '2019_09_19_152244_create_notes_table', 5),
(30, '2019_09_25_071437_create_projects_table', 6),
(31, '2019_09_25_072343_create_project_types_table', 6),
(32, '2019_09_25_091500_create_note_types_table', 7),
(33, '2019_09_25_092800_add_note_type_to_notes_table', 8),
(34, '2019_09_26_152851_create_papers_table', 9),
(35, '2019_09_26_153112_create_subjects_table', 9),
(36, '2019_09_26_160501_create_paper_types_table', 10),
(37, '2019_09_26_160654_add_paper_type_to_papers_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `my_posts`
--

CREATE TABLE `my_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `my_posts`
--

INSERT INTO `my_posts` (`id`, `title`, `body`, `video`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Everything Wrong With AirPods | Untangled', 'AirPods are the best selling wireless earbuds. But their sound quality, battery life, and environmental impact could be better.', 'https://www.youtube.com/embed/U-SMQmnC2Cc', NULL, '2019-08-19 11:56:16', '2019-08-19 11:56:16'),
(2, '6 Mind-Bending FUTURE MILITARY TECHNOLOGIES That Are on the Next Level', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'https://www.youtube.com/embed/dU4CFTTCsIE', NULL, '2019-08-19 12:07:00', '2019-08-23 11:35:47'),
(3, 'Image Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 'my-posts\\August2019\\IHGV3EjeyEhR4rMpthBi.jpg', '2019-08-19 12:09:00', '2019-08-23 11:35:36'),
(4, 'demo', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 'my-posts\\August2019\\353RZlzk8IsxzTjeuMNB.jpg', '2019-08-20 11:43:00', '2019-08-23 11:35:24'),
(5, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 'my-posts\\August2019\\NYk6xY205qfvkJZ4B3BP.jpg', '2019-08-23 11:17:06', '2019-08-23 11:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `noteType` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `title`, `body`, `video`, `image`, `created_at`, `updated_at`, `noteType`) VALUES
(1, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL, '2019-09-19 09:58:00', '2019-09-25 04:16:16', '6'),
(2, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL, '2019-09-19 09:59:00', '2019-09-25 04:15:53', '3'),
(3, 'What is Lorem Ipsumsdk', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL, '2019-09-19 09:59:00', '2019-09-25 04:16:06', '4'),
(4, 'affa', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL, '2019-09-19 09:59:00', '2019-09-25 04:15:44', '2'),
(5, 'What is Lorem Ipsum?', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', NULL, 'notes\\September2019\\YGCnN89NQXfZxcdDD2IT.png', '2019-09-19 10:18:00', '2019-09-25 04:15:37', '1'),
(6, 'Video Nate', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'https://www.youtube.com/embed/6rlJ8DFxCBg', NULL, '2019-09-25 05:29:00', '2019-09-25 05:32:30', '4');

-- --------------------------------------------------------

--
-- Table structure for table `note_types`
--

CREATE TABLE `note_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `note_types`
--

INSERT INTO `note_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Robotics', '2019-09-25 04:02:08', '2019-09-25 04:02:08'),
(2, 'Maths', '2019-09-25 04:02:19', '2019-09-25 04:02:19'),
(3, 'Reasoning', '2019-09-25 04:02:29', '2019-09-25 04:02:29'),
(4, 'Computer', '2019-09-25 04:02:42', '2019-09-25 04:02:42'),
(5, 'Electronics', '2019-09-25 04:02:52', '2019-09-25 04:02:52'),
(6, 'Mechanical', '2019-09-25 04:03:01', '2019-09-25 04:03:01'),
(7, 'Thoughts', '2019-09-25 04:03:43', '2019-09-25 04:03:43');

-- --------------------------------------------------------

--
-- Table structure for table `papers`
--

CREATE TABLE `papers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ans1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ans2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ans3` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ans4` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ans` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjectType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `paperType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `papers`
--

INSERT INTO `papers` (`id`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `ans`, `subjectType`, `created_at`, `updated_at`, `paperType`) VALUES
(1, 'q1', 'o1', 'o2', 'o3', 'o4', 'o2', '1', '2019-09-26 12:15:47', '2019-09-26 12:15:47', '3'),
(2, 'q2', 'o1', 'o2', 'o3', 'o4', 'o3', '1', '2019-09-26 12:16:00', '2019-09-27 11:35:48', '3');

-- --------------------------------------------------------

--
-- Table structure for table `paper_types`
--

CREATE TABLE `paper_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `paper_types`
--

INSERT INTO `paper_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Logical Reasoning', '2019-09-26 11:48:22', '2019-09-26 11:48:22'),
(2, 'General Awareness', '2019-09-26 11:48:37', '2019-09-26 11:48:37'),
(3, 'English', '2019-09-26 11:48:48', '2019-09-26 11:48:48'),
(4, 'Graduation Level', '2019-09-26 11:49:01', '2019-09-26 11:49:01'),
(5, 'Matriculation Level', '2019-09-26 11:49:17', '2019-09-26 11:49:17'),
(6, 'Quantitative Aptitude', '2019-09-26 11:49:35', '2019-09-26 11:49:35'),
(7, 'Higher Secondary Level', '2019-09-26 11:49:48', '2019-09-26 11:49:48'),
(8, 'Computer Programming', '2019-09-26 11:50:19', '2019-09-26 11:50:19'),
(9, 'Estimation and Costing', '2019-09-26 11:50:32', '2019-09-26 11:50:32');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(2, 'browse_bread', NULL, '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(3, 'browse_database', NULL, '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(4, 'browse_media', NULL, '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(5, 'browse_compass', NULL, '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(6, 'browse_menus', 'menus', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(7, 'read_menus', 'menus', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(8, 'edit_menus', 'menus', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(9, 'add_menus', 'menus', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(10, 'delete_menus', 'menus', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(11, 'browse_roles', 'roles', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(12, 'read_roles', 'roles', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(13, 'edit_roles', 'roles', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(14, 'add_roles', 'roles', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(15, 'delete_roles', 'roles', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(16, 'browse_users', 'users', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(17, 'read_users', 'users', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(18, 'edit_users', 'users', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(19, 'add_users', 'users', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(20, 'delete_users', 'users', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(21, 'browse_settings', 'settings', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(22, 'read_settings', 'settings', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(23, 'edit_settings', 'settings', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(24, 'add_settings', 'settings', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(25, 'delete_settings', 'settings', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(26, 'browse_hooks', NULL, '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(37, 'browse_my_posts', 'my_posts', '2019-08-19 11:47:09', '2019-08-19 11:47:09'),
(38, 'read_my_posts', 'my_posts', '2019-08-19 11:47:09', '2019-08-19 11:47:09'),
(39, 'edit_my_posts', 'my_posts', '2019-08-19 11:47:09', '2019-08-19 11:47:09'),
(40, 'add_my_posts', 'my_posts', '2019-08-19 11:47:09', '2019-08-19 11:47:09'),
(41, 'delete_my_posts', 'my_posts', '2019-08-19 11:47:09', '2019-08-19 11:47:09'),
(42, 'browse_banners', 'banners', '2019-08-20 12:11:04', '2019-08-20 12:11:04'),
(43, 'read_banners', 'banners', '2019-08-20 12:11:04', '2019-08-20 12:11:04'),
(44, 'edit_banners', 'banners', '2019-08-20 12:11:04', '2019-08-20 12:11:04'),
(45, 'add_banners', 'banners', '2019-08-20 12:11:04', '2019-08-20 12:11:04'),
(46, 'delete_banners', 'banners', '2019-08-20 12:11:04', '2019-08-20 12:11:04'),
(47, 'browse_comingsoons', 'comingsoons', '2019-08-20 12:39:40', '2019-08-20 12:39:40'),
(48, 'read_comingsoons', 'comingsoons', '2019-08-20 12:39:40', '2019-08-20 12:39:40'),
(49, 'edit_comingsoons', 'comingsoons', '2019-08-20 12:39:40', '2019-08-20 12:39:40'),
(50, 'add_comingsoons', 'comingsoons', '2019-08-20 12:39:40', '2019-08-20 12:39:40'),
(51, 'delete_comingsoons', 'comingsoons', '2019-08-20 12:39:40', '2019-08-20 12:39:40'),
(52, 'browse_notes', 'notes', '2019-09-19 09:57:04', '2019-09-19 09:57:04'),
(53, 'read_notes', 'notes', '2019-09-19 09:57:04', '2019-09-19 09:57:04'),
(54, 'edit_notes', 'notes', '2019-09-19 09:57:04', '2019-09-19 09:57:04'),
(55, 'add_notes', 'notes', '2019-09-19 09:57:04', '2019-09-19 09:57:04'),
(56, 'delete_notes', 'notes', '2019-09-19 09:57:04', '2019-09-19 09:57:04'),
(57, 'browse_project_types', 'project_types', '2019-09-25 02:43:59', '2019-09-25 02:43:59'),
(58, 'read_project_types', 'project_types', '2019-09-25 02:43:59', '2019-09-25 02:43:59'),
(59, 'edit_project_types', 'project_types', '2019-09-25 02:43:59', '2019-09-25 02:43:59'),
(60, 'add_project_types', 'project_types', '2019-09-25 02:43:59', '2019-09-25 02:43:59'),
(61, 'delete_project_types', 'project_types', '2019-09-25 02:43:59', '2019-09-25 02:43:59'),
(62, 'browse_projects', 'projects', '2019-09-25 02:50:48', '2019-09-25 02:50:48'),
(63, 'read_projects', 'projects', '2019-09-25 02:50:48', '2019-09-25 02:50:48'),
(64, 'edit_projects', 'projects', '2019-09-25 02:50:48', '2019-09-25 02:50:48'),
(65, 'add_projects', 'projects', '2019-09-25 02:50:48', '2019-09-25 02:50:48'),
(66, 'delete_projects', 'projects', '2019-09-25 02:50:48', '2019-09-25 02:50:48'),
(67, 'browse_note_types', 'note_types', '2019-09-25 04:00:02', '2019-09-25 04:00:02'),
(68, 'read_note_types', 'note_types', '2019-09-25 04:00:02', '2019-09-25 04:00:02'),
(69, 'edit_note_types', 'note_types', '2019-09-25 04:00:02', '2019-09-25 04:00:02'),
(70, 'add_note_types', 'note_types', '2019-09-25 04:00:02', '2019-09-25 04:00:02'),
(71, 'delete_note_types', 'note_types', '2019-09-25 04:00:02', '2019-09-25 04:00:02'),
(72, 'browse_papers', 'papers', '2019-09-26 10:12:53', '2019-09-26 10:12:53'),
(73, 'read_papers', 'papers', '2019-09-26 10:12:53', '2019-09-26 10:12:53'),
(74, 'edit_papers', 'papers', '2019-09-26 10:12:53', '2019-09-26 10:12:53'),
(75, 'add_papers', 'papers', '2019-09-26 10:12:53', '2019-09-26 10:12:53'),
(76, 'delete_papers', 'papers', '2019-09-26 10:12:53', '2019-09-26 10:12:53'),
(77, 'browse_subjects', 'subjects', '2019-09-26 10:13:36', '2019-09-26 10:13:36'),
(78, 'read_subjects', 'subjects', '2019-09-26 10:13:36', '2019-09-26 10:13:36'),
(79, 'edit_subjects', 'subjects', '2019-09-26 10:13:36', '2019-09-26 10:13:36'),
(80, 'add_subjects', 'subjects', '2019-09-26 10:13:36', '2019-09-26 10:13:36'),
(81, 'delete_subjects', 'subjects', '2019-09-26 10:13:36', '2019-09-26 10:13:36'),
(82, 'browse_paper_types', 'paper_types', '2019-09-26 10:38:40', '2019-09-26 10:38:40'),
(83, 'read_paper_types', 'paper_types', '2019-09-26 10:38:40', '2019-09-26 10:38:40'),
(84, 'edit_paper_types', 'paper_types', '2019-09-26 10:38:40', '2019-09-26 10:38:40'),
(85, 'add_paper_types', 'paper_types', '2019-09-26 10:38:40', '2019-09-26 10:38:40'),
(86, 'delete_paper_types', 'paper_types', '2019-09-26 10:38:40', '2019-09-26 10:38:40');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(5000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `projectType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `body`, `video`, `image`, `projectType`, `created_at`, `updated_at`) VALUES
(1, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', NULL, 'projects\\September2019\\UNTPutv8I6o2BayLi0an.png', '1', '2019-09-25 03:14:57', '2019-09-25 03:14:57'),
(2, 'Arduino', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', NULL, 'projects\\September2019\\BE0Bv2e1BDrCzCFYPdcW.jpg', '2', '2019-09-25 03:31:40', '2019-09-25 03:31:40');

-- --------------------------------------------------------

--
-- Table structure for table `project_types`
--

CREATE TABLE `project_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_types`
--

INSERT INTO `project_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'School Projects', '2019-09-25 03:11:32', '2019-09-25 03:11:32'),
(2, 'Arduino Projects', '2019-09-25 03:11:47', '2019-09-25 03:11:47'),
(3, 'IOT Projects', '2019-09-25 03:11:59', '2019-09-25 03:11:59'),
(4, 'Raspberry Pi Projects', '2019-09-25 03:12:13', '2019-09-25 03:12:13');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-08-17 11:14:55', '2019-08-17 11:14:55'),
(2, 'user', 'Normal User', '2019-08-17 11:14:55', '2019-08-17 11:14:55');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'SSC', '2019-09-26 11:46:05', '2019-09-26 11:46:05'),
(2, 'Railways', '2019-09-26 11:46:17', '2019-09-26 11:46:17'),
(3, 'RBI', '2019-09-26 11:46:51', '2019-09-26 11:46:51');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mantosh Nishad', 'roboguru@gmail.com', 'users/default.png', NULL, '$2y$10$qbOjbu7zTqgBR2mDcKtlC.CstKeLdONXLSpvsMAEoasSr1v36vsum', NULL, NULL, '2019-08-17 11:24:00', '2019-08-17 11:24:00'),
(2, 2, 'Mantosh', 'mantoshonline@gmail.com', 'users/default.png', NULL, '$2y$10$VFqt.bp6.QSiLFERyOe9/.PDTNkoZOuQxf0M7goP9ttqICU3ML7a.', NULL, NULL, '2019-08-17 21:23:18', '2019-08-17 21:23:18');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comingsoons`
--
ALTER TABLE `comingsoons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `my_posts`
--
ALTER TABLE `my_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `note_types`
--
ALTER TABLE `note_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `papers`
--
ALTER TABLE `papers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paper_types`
--
ALTER TABLE `paper_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_types`
--
ALTER TABLE `project_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `comingsoons`
--
ALTER TABLE `comingsoons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `my_posts`
--
ALTER TABLE `my_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `note_types`
--
ALTER TABLE `note_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `papers`
--
ALTER TABLE `papers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paper_types`
--
ALTER TABLE `paper_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_types`
--
ALTER TABLE `project_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
