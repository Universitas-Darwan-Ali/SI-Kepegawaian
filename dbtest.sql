-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2022 at 05:13 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtest`
--
CREATE DATABASE IF NOT EXISTS `dbtest` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `dbtest`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `order` int(11) NOT NULL DEFAULT 0,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 4, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, '2022-06-09 19:22:34'),
(2, 0, 5, 'Admin', 'fa-tasks', '', NULL, NULL, '2022-06-09 19:22:34'),
(3, 2, 6, 'Users', 'fa-users', 'auth/users', NULL, NULL, '2022-06-09 19:22:34'),
(4, 2, 7, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, '2022-06-09 19:22:34'),
(5, 2, 8, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, '2022-06-09 19:22:34'),
(6, 2, 9, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, '2022-06-09 19:22:34'),
(7, 2, 10, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, '2022-06-09 19:22:34'),
(8, 10, 2, 'Dosen', 'fa-bars', 'tb-dosens', NULL, '2022-06-09 18:04:21', '2022-06-09 19:22:34'),
(9, 10, 3, 'Mata Kuliah', 'fa-bars', 'tb-m-ks', NULL, '2022-06-09 18:04:33', '2022-06-09 19:22:34'),
(10, 0, 1, 'Menu 1', 'fa-bars', NULL, NULL, '2022-06-09 19:21:55', '2022-06-09 19:22:34');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-06 21:18:37', '2022-06-06 21:18:37'),
(2, 1, 'admin', 'GET', '::1', '[]', '2022-06-06 22:40:13', '2022-06-06 22:40:13'),
(3, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 22:40:20', '2022-06-06 22:40:20'),
(4, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 22:40:22', '2022-06-06 22:40:22'),
(5, 1, 'admin/auth/roles', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 22:40:25', '2022-06-06 22:40:25'),
(6, 1, 'admin/auth/permissions', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 22:40:26', '2022-06-06 22:40:26'),
(7, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 22:40:27', '2022-06-06 22:40:27'),
(8, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-06 22:40:33', '2022-06-06 22:40:33'),
(9, 1, 'admin', 'GET', '::1', '[]', '2022-06-09 18:03:23', '2022-06-09 18:03:23'),
(10, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:03:26', '2022-06-09 18:03:26'),
(11, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:03:30', '2022-06-09 18:03:30'),
(12, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:03:35', '2022-06-09 18:03:35'),
(13, 1, 'admin/auth/menu', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:03:40', '2022-06-09 18:03:40'),
(14, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"Dosen\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"HpOMC2SyKPWnXzqydbt6b7cjMLK17tEtOidVzzqX\"}', '2022-06-09 18:04:21', '2022-06-09 18:04:21'),
(15, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2022-06-09 18:04:21', '2022-06-09 18:04:21'),
(16, 1, 'admin/auth/menu', 'POST', '::1', '{\"parent_id\":\"0\",\"title\":\"Mata Kuliah\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"HpOMC2SyKPWnXzqydbt6b7cjMLK17tEtOidVzzqX\"}', '2022-06-09 18:04:33', '2022-06-09 18:04:33'),
(17, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2022-06-09 18:04:33', '2022-06-09 18:04:33'),
(18, 1, 'admin/auth/menu', 'GET', '::1', '[]', '2022-06-09 18:12:29', '2022-06-09 18:12:29'),
(19, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:12:34', '2022-06-09 18:12:34'),
(20, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:12:37', '2022-06-09 18:12:37'),
(21, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:12:40', '2022-06-09 18:12:40'),
(22, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:12:45', '2022-06-09 18:12:45'),
(23, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:12:47', '2022-06-09 18:12:47'),
(24, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:12:49', '2022-06-09 18:12:49'),
(25, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:12:53', '2022-06-09 18:12:53'),
(26, 1, 'admin/auth/users', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:12:56', '2022-06-09 18:12:56'),
(27, 1, 'admin', 'GET', '::1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 18:12:58', '2022-06-09 18:12:58'),
(28, 1, 'admin', 'GET', '127.0.0.1', '[]', '2022-06-09 19:20:07', '2022-06-09 19:20:07'),
(29, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:20:23', '2022-06-09 19:20:23'),
(30, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:20:31', '2022-06-09 19:20:31'),
(31, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:20:42', '2022-06-09 19:20:42'),
(32, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Dosen\",\"icon\":\"fa-bars\",\"uri\":\"tb-dosens\",\"roles\":[null],\"permission\":null,\"_token\":\"v1Y8s0ZwwxuI05agf7GdzKiAOha9tPUfS9CWW1EW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2022-06-09 19:21:05', '2022-06-09 19:21:05'),
(33, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-09 19:21:06', '2022-06-09 19:21:06'),
(34, 1, 'admin/auth/menu/9/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:21:09', '2022-06-09 19:21:09'),
(35, 1, 'admin/auth/menu/9', 'PUT', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Mata Kuliah\",\"icon\":\"fa-bars\",\"uri\":\"tb-m-ks\",\"roles\":[null],\"permission\":null,\"_token\":\"v1Y8s0ZwwxuI05agf7GdzKiAOha9tPUfS9CWW1EW\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/menu\"}', '2022-06-09 19:21:24', '2022-06-09 19:21:24'),
(36, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-09 19:21:25', '2022-06-09 19:21:25'),
(37, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"v1Y8s0ZwwxuI05agf7GdzKiAOha9tPUfS9CWW1EW\",\"_order\":\"[{\\\"id\\\":8},{\\\"id\\\":9},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2022-06-09 19:21:29', '2022-06-09 19:21:29'),
(38, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:21:30', '2022-06-09 19:21:30'),
(39, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"parent_id\":\"0\",\"title\":\"Menu 1\",\"icon\":\"fa-bars\",\"uri\":null,\"roles\":[null],\"permission\":null,\"_token\":\"v1Y8s0ZwwxuI05agf7GdzKiAOha9tPUfS9CWW1EW\"}', '2022-06-09 19:21:55', '2022-06-09 19:21:55'),
(40, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-09 19:21:55', '2022-06-09 19:21:55'),
(41, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{\"_token\":\"v1Y8s0ZwwxuI05agf7GdzKiAOha9tPUfS9CWW1EW\",\"_order\":\"[{\\\"id\\\":10,\\\"children\\\":[{\\\"id\\\":8},{\\\"id\\\":9}]},{\\\"id\\\":1},{\\\"id\\\":2,\\\"children\\\":[{\\\"id\\\":3},{\\\"id\\\":4},{\\\"id\\\":5},{\\\"id\\\":6},{\\\"id\\\":7}]}]\"}', '2022-06-09 19:22:33', '2022-06-09 19:22:33'),
(42, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:22:34', '2022-06-09 19:22:34'),
(43, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2022-06-09 19:22:46', '2022-06-09 19:22:46'),
(44, 1, 'admin/tb-dosens', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:22:55', '2022-06-09 19:22:55'),
(45, 1, 'admin/tb-dosens/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:22:59', '2022-06-09 19:22:59'),
(46, 1, 'admin/tb-dosens', 'POST', '127.0.0.1', '{\"nidn\":\"u746747\",\"nama\":\"ghgv bhj\",\"_token\":\"v1Y8s0ZwwxuI05agf7GdzKiAOha9tPUfS9CWW1EW\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/tb-dosens\"}', '2022-06-09 19:23:11', '2022-06-09 19:23:11'),
(47, 1, 'admin/tb-dosens/create', 'GET', '127.0.0.1', '[]', '2022-06-09 19:23:12', '2022-06-09 19:23:12'),
(48, 1, 'admin/tb-dosens', 'POST', '127.0.0.1', '{\"nidn\":\"u746747\",\"nama\":\"ghgv bhj\",\"_token\":\"v1Y8s0ZwwxuI05agf7GdzKiAOha9tPUfS9CWW1EW\"}', '2022-06-09 19:26:32', '2022-06-09 19:26:32'),
(49, 1, 'admin/tb-dosens', 'GET', '127.0.0.1', '[]', '2022-06-09 19:26:33', '2022-06-09 19:26:33'),
(50, 1, 'admin/tb-dosens', 'GET', '127.0.0.1', '[]', '2022-06-09 19:27:26', '2022-06-09 19:27:26'),
(51, 1, 'admin/tb-dosens/3', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:29:17', '2022-06-09 19:29:17'),
(52, 1, 'admin/tb-dosens/3', 'GET', '127.0.0.1', '[]', '2022-06-09 19:29:37', '2022-06-09 19:29:37'),
(53, 1, 'admin/tb-dosens/3', 'GET', '127.0.0.1', '[]', '2022-06-09 19:29:43', '2022-06-09 19:29:43'),
(54, 1, 'admin/tb-dosens/3', 'GET', '127.0.0.1', '[]', '2022-06-09 19:30:09', '2022-06-09 19:30:09'),
(55, 1, 'admin/tb-dosens', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:30:23', '2022-06-09 19:30:23'),
(56, 1, 'admin/tb-dosens/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:30:31', '2022-06-09 19:30:31'),
(57, 1, 'admin/tb-dosens', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:30:38', '2022-06-09 19:30:38'),
(58, 1, 'admin/tb-dosens/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:30:41', '2022-06-09 19:30:41'),
(59, 1, 'admin/tb-m-ks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:31:42', '2022-06-09 19:31:42'),
(60, 1, 'admin/tb-m-ks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:31:47', '2022-06-09 19:31:47'),
(61, 1, 'admin/tb-m-ks/create', 'GET', '127.0.0.1', '[]', '2022-06-09 19:34:33', '2022-06-09 19:34:33'),
(62, 1, 'admin/tb-m-ks/create', 'GET', '127.0.0.1', '[]', '2022-06-09 19:34:47', '2022-06-09 19:34:47'),
(63, 1, 'admin/tb-m-ks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:34:52', '2022-06-09 19:34:52'),
(64, 1, 'admin/tb-m-ks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:34:59', '2022-06-09 19:34:59'),
(65, 1, 'admin/tb-m-ks', 'POST', '127.0.0.1', '{\"id_dosen\":\"2\",\"nama_matakuliah\":\"iii\",\"sks\":\"3\",\"_token\":\"v1Y8s0ZwwxuI05agf7GdzKiAOha9tPUfS9CWW1EW\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/tb-m-ks\"}', '2022-06-09 19:35:21', '2022-06-09 19:35:21'),
(66, 1, 'admin/tb-m-ks/create', 'GET', '127.0.0.1', '[]', '2022-06-09 19:35:24', '2022-06-09 19:35:24'),
(67, 1, 'admin/tb-m-ks', 'POST', '127.0.0.1', '{\"id_dosen\":\"3\",\"nama_matakuliah\":\"iii\",\"sks\":\"3\",\"_token\":\"v1Y8s0ZwwxuI05agf7GdzKiAOha9tPUfS9CWW1EW\"}', '2022-06-09 19:35:36', '2022-06-09 19:35:36'),
(68, 1, 'admin/tb-m-ks', 'GET', '127.0.0.1', '[]', '2022-06-09 19:35:37', '2022-06-09 19:35:37'),
(69, 1, 'admin/tb-m-ks', 'GET', '127.0.0.1', '[]', '2022-06-09 19:35:59', '2022-06-09 19:35:59'),
(70, 1, 'admin/tb-m-ks', 'GET', '127.0.0.1', '[]', '2022-06-09 19:44:46', '2022-06-09 19:44:46'),
(71, 1, 'admin/tb-m-ks', 'GET', '127.0.0.1', '[]', '2022-06-09 19:45:20', '2022-06-09 19:45:20'),
(72, 1, 'admin/tb-m-ks/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:45:39', '2022-06-09 19:45:39'),
(73, 1, 'admin/tb-m-ks', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2022-06-09 19:45:44', '2022-06-09 19:45:44');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2022-06-06 21:17:50', '2022-06-06 21:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$xssSKwzS7DaVCLYT32EZQuevveZsVzeusjqolwFQ0AT2ZOEJkLrfS', 'Administrator', NULL, 'nlxx8YZBaUWt8cGyPUWUT8Wn9MWpbcC205X19H62Ei6jvaRkCMHzNr4AtRgg', '2022-06-06 21:17:50', '2022-06-06 21:17:50');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen`
--

CREATE TABLE `tb_dosen` (
  `id_dosen` int(11) NOT NULL,
  `nidn` varchar(13) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_dosen`
--

INSERT INTO `tb_dosen` (`id_dosen`, `nidn`, `nama`) VALUES
(3, '12345', 'asdfgh'),
(4, 'u746747', 'ghgv bhj');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mk`
--

CREATE TABLE `tb_mk` (
  `id` int(11) NOT NULL,
  `id_dosen` int(11) NOT NULL,
  `nama_matakuliah` varchar(30) NOT NULL,
  `sks` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mk`
--

INSERT INTO `tb_mk` (`id`, `id_dosen`, `nama_matakuliah`, `sks`) VALUES
(2, 3, 'iii', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indexes for table `tb_mk`
--
ALTER TABLE `tb_mk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_mk`
--
ALTER TABLE `tb_mk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_mk`
--
ALTER TABLE `tb_mk`
  ADD CONSTRAINT `tb_mk_ibfk_1` FOREIGN KEY (`id_dosen`) REFERENCES `tb_dosen` (`id_dosen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
