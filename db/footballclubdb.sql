-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2021 at 12:23 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `footballclubdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start`, `end`, `created_at`, `updated_at`) VALUES
(7, 'แข่ง', '2021-09-16', '2021-09-17', '2021-09-06 05:38:39', '2021-09-06 05:38:39'),
(9, 'ซ้อม เวลา 12.00', '2021-09-09', '2021-09-10', '2021-09-06 05:41:10', '2021-09-06 05:41:10');

-- --------------------------------------------------------

--
-- Table structure for table `member_rival`
--

CREATE TABLE `member_rival` (
  `id_mr` int(11) NOT NULL,
  `name_mr` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position_mr` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_rival` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `member_rival`
--

INSERT INTO `member_rival` (`id_mr`, `name_mr`, `position_mr`, `id_rival`) VALUES
(1, 'กวินทร์ ธรรมสัจจานันท์  ', 'goalkeeper', 1),
(2, 'นฤบดินทร์ วีรวัฒโนดม', 'defender', 1),
(3, 'พรรษา เหมวิบูลย์', 'defender', 1),
(4, 'ธนบูรณ์ เกศารัตน์', 'defender', 1),
(5, 'ธีราทร บุญมาทัน', 'defender', 1),
(6, 'สารัช อยู่เย็น', 'midfield', 1),
(7, 'ชาริล ชัปปุยส์', 'midfield', 1),
(8, 'ชนาธิป สรงกระสินธ์', 'midfield', 1),
(9, 'สุภโชค สารชาติ', 'forward', 1),
(10, 'ธีรศิลป์ แดงดา', 'forward', 1),
(11, 'เจริญศักดิ์ วงษ์กรณ์', 'forward', 1);

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2021_08_19_114842_create_users_table', 1),
(3, '2021_08_19_122537_create_user_details_table', 1),
(4, '2021_09_05_163334_create_events_table', 2);

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
-- Table structure for table `player`
--

CREATE TABLE `player` (
  `id_m` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `player`
--

INSERT INTO `player` (`id_m`, `name`, `position`) VALUES
(1, 'พินโญ สัมฤทธิ์', 'goalkeeper'),
(2, 'จามรวุฒิ แก้วจรูญ', 'goalkeeper'),
(3, 'นพรัตน์ วงษา', 'defender'),
(4, 'เถกิงศักดิ์ ดำรงมั่น', 'defender'),
(5, 'ชัยชนะ เจริญสิทธิ์', 'defender'),
(6, 'ศิวะ กรนุ่ม', 'defender'),
(7, 'ณัชพล มีทุม', 'midfield'),
(8, 'จิราเจต พ่วงรอด', 'midfield'),
(9, 'เฉลิมชัย วงษ์พันเสือ', 'midfield'),
(10, 'พงศธร พยัคเกษมโสภณ', 'forward'),
(11, 'ศรราม ม่วงหมี', 'forward'),
(12, 'ธนากร ตุ้มทอง', 'forward'),
(13, 'นวพล ศรีเวียงธวัช', 'goalkeeper'),
(14, 'ณัฐวัตร นามเจริญ', 'goalkeeper'),
(15, 'สุทธิราช ป้อมสุวรรณ', 'defender'),
(16, 'ณัฐชนน เทศมงคล', 'defender'),
(17, 'ทิยะ ปานะดิษฐ', 'defender'),
(18, 'ธีรภาพ ฮวดเจริญ', 'midfield'),
(19, 'สรวิชญ์ ขันอาสา', 'midfield'),
(20, 'ศักดินา ศรีราม', 'midfield'),
(21, 'ทศพร จันทรทักษิณ', 'Forward'),
(22, 'ธนานันท์ วอนเพียร', 'Forward'),
(23, 'พงศ์พันธ์ เดชวงศ์ญา', 'Forward');

-- --------------------------------------------------------

--
-- Table structure for table `rival`
--

CREATE TABLE `rival` (
  `id_rival` int(11) NOT NULL,
  `name_rival` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo_rival` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rival`
--

INSERT INTO `rival` (`id_rival`, `name_rival`, `photo_rival`) VALUES
(1, 'Mechanical engineering', 'rival01.png');

-- --------------------------------------------------------

--
-- Table structure for table `statistics`
--

CREATE TABLE `statistics` (
  `id_sta` int(11) NOT NULL,
  `list` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `got` int(11) DEFAULT NULL,
  `chance` int(11) DEFAULT NULL,
  `id_match` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_m` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `statistics`
--

INSERT INTO `statistics` (`id_sta`, `list`, `got`, `chance`, `id_match`, `name`, `id_m`) VALUES
(1, 'Save', 3, 5, 1, 'พินโญ สัมฤทธิ์', 1),
(2, 'Passing', 5, 11, 1, 'พินโญ สัมฤทธิ์', 1),
(3, 'Save Penalty', 0, 1, 1, 'พินโญ สัมฤทธิ์', 1),
(4, 'Duel 1-1', 0, 1, 1, 'พินโญ สัมฤทธิ์', 1),
(5, 'Save', 5, 5, 1, 'จามรวุฒิ แก้วจรูญ', 2),
(6, 'Passing', 11, 11, 1, 'จามรวุฒิ แก้วจรูญ', 2),
(7, 'Save Penalty', 1, 1, 1, 'จามรวุฒิ แก้วจรูญ', 2),
(8, 'Duel 1-1', 3, 3, 1, 'จามรวุฒิ แก้วจรูญ', 2),
(9, 'Passing', 18, 25, 1, 'นพรัตน์ วงษา', 3),
(10, 'Intercept', 3, 5, 1, 'นพรัตน์ วงษา', 3),
(11, 'Heading', 6, 6, 1, 'นพรัตน์ วงษา', 3),
(12, 'Tackle', 5, 5, 1, 'นพรัตน์ วงษา', 3),
(13, 'Passing', 28, 28, 1, 'เถกิงศักดิ์ ดำรงมั่น', 4),
(14, 'Intercept', 7, 7, 1, 'เถกิงศักดิ์ ดำรงมั่น', 4),
(15, 'Heading', 17, 17, 1, 'เถกิงศักดิ์ ดำรงมั่น', 4),
(16, 'Tackle', 4, 4, 1, 'เถกิงศักดิ์ ดำรงมั่น', 4),
(17, 'Passing', 17, 35, 1, 'ชัยชนะ เจริญสิทธิ์', 5),
(18, 'Intercept', 2, 6, 1, 'ชัยชนะ เจริญสิทธิ์', 5),
(19, 'Heading', 0, 9, 1, 'ชัยชนะ เจริญสิทธิ์', 5),
(20, 'Tackle', 4, 6, 1, 'ชัยชนะ เจริญสิทธิ์', 5),
(21, 'Passing', 20, 34, 1, 'ศิวะ กรนุ่ม', 6),
(22, 'Intercept', 4, 4, 1, 'ศิวะ กรนุ่ม', 6),
(23, 'Heading', 1, 5, 1, 'ศิวะ กรนุ่ม', 6),
(24, 'Tackle', 3, 5, 1, 'ศิวะ กรนุ่ม', 6),
(25, 'Passing', 35, 35, 1, 'ณัชพล มีทุม', 7),
(26, 'Dribbling', 5, 6, 1, 'ณัชพล มีทุม', 7),
(27, 'Intercept', 5, 5, 1, 'ณัชพล มีทุม', 7),
(28, 'Shooting', 1, 1, 1, 'ณัชพล มีทุม', 7),
(29, 'Heading', 2, 6, 1, 'ณัชพล มีทุม', 7),
(30, 'Passing', 29, 34, 1, 'จิราเจต พ่วงรอด', 8),
(31, 'Dribbling', 7, 9, 1, 'จิราเจต พ่วงรอด', 8),
(32, 'Intercept', 3, 4, 1, 'จิราเจต พ่วงรอด', 8),
(33, 'Shooting', 3, 3, 1, 'จิราเจต พ่วงรอด', 8),
(34, 'Heading', 5, 6, 1, 'จิราเจต พ่วงรอด', 8),
(35, 'Passing', 33, 40, 1, 'เฉลิมชัย วงษ์พันเสือ', 9),
(36, 'Dribbling', 5, 7, 1, 'เฉลิมชัย วงษ์พันเสือ', 9),
(37, 'Intercept', 2, 4, 1, 'เฉลิมชัย วงษ์พันเสือ', 9),
(38, 'Shooting', 1, 5, 1, 'เฉลิมชัย วงษ์พันเสือ', 9),
(39, 'Heading', 1, 3, 1, 'เฉลิมชัย วงษ์พันเสือ', 9),
(40, 'Passing', 20, 30, 1, 'พงศธร พยัคเกษมโสภณ', 10),
(41, 'Shooting', 2, 5, 1, 'พงศธร พยัคเกษมโสภณ', 10),
(42, 'Heading', 2, 4, 1, 'พงศธร พยัคเกษมโสภณ', 10),
(43, 'Dribbling', 6, 10, 1, 'พงศธร พยัคเกษมโสภณ', 10),
(44, ' Passing', 18, 20, 1, 'ศรราม ม่วงหมี', 11),
(45, 'Shooting', 0, 5, 1, 'ศรราม ม่วงหมี', 11),
(46, 'Heading', 9, 14, 1, 'ศรราม ม่วงหมี', 11),
(47, 'Dribbling', 3, 6, 1, 'ศรราม ม่วงหมี', 11),
(48, 'Passing', 16, 25, 1, 'ธนากร ตุ้มทอง', 12),
(49, 'Shooting', 3, 3, 1, 'ธนากร ตุ้มทอง', 12),
(50, 'Heading', 2, 3, 1, 'ธนากร ตุ้มทอง', 12),
(51, 'Dribbling', 10, 12, 1, 'ธนากร ตุ้มทอง', 12),
(52, 'Save', 3, 3, 2, 'พินโญ สัมฤทธิ์', 1),
(53, 'Passing', 7, 10, 2, 'พินโญ สัมฤทธิ์', 1),
(54, 'Save Penalty', 0, 1, 2, 'พินโญ สัมฤทธิ์', 1),
(55, 'Duel 1-1', 1, 2, 2, 'พินโญ สัมฤทธิ์', 1),
(56, 'Save', 3, 3, 2, 'จามรวุฒิ แก้วจรูญ', 2),
(57, 'Passing', 7, 8, 2, 'จามรวุฒิ แก้วจรูญ', 2),
(58, 'Save Penalty', 1, 1, 2, 'จามรวุฒิ แก้วจรูญ', 2),
(59, 'Duel 1-1', 2, 2, 2, 'จามรวุฒิ แก้วจรูญ', 2),
(60, 'Passing', 22, 24, 2, 'นพรัตน์ วงษา', 3),
(61, 'Intercept', 5, 6, 2, 'นพรัตน์ วงษา', 3),
(62, 'Heading', 3, 3, 2, 'นพรัตน์ วงษา', 3),
(63, 'Tackle', 4, 5, 2, 'นพรัตน์ วงษา', 3),
(64, 'Passing', 27, 27, 2, 'เถกิงศักดิ์ ดำรงมั่น', 4),
(65, 'Intercept', 2, 5, 2, 'เถกิงศักดิ์ ดำรงมั่น', 4),
(66, 'Heading', 15, 16, 2, 'เถกิงศักดิ์ ดำรงมั่น', 4),
(67, 'Tackle', 3, 3, 2, 'เถกิงศักดิ์ ดำรงมั่น', 4),
(68, 'Passing', 38, 38, 2, 'ชัยชนะ เจริญสิทธิ์', 5),
(69, 'Intercept', 5, 6, 2, 'ชัยชนะ เจริญสิทธิ์', 5),
(70, 'Heading', 6, 8, 2, 'ชัยชนะ เจริญสิทธิ์', 5),
(71, 'Tackle', 1, 5, 2, 'ชัยชนะ เจริญสิทธิ์', 5),
(72, 'Passing', 32, 39, 2, 'ศิวะ กรนุ่ม', 6),
(73, 'Intercept', 4, 4, 2, 'ศิวะ กรนุ่ม', 6),
(74, 'Heading', 2, 3, 2, 'ศิวะ กรนุ่ม', 6),
(75, 'Tackle', 4, 5, 2, 'ศิวะ กรนุ่ม', 6),
(76, 'Passing', 40, 42, 2, 'ณัชพล มีทุม', 7),
(77, 'Dribbling', 4, 6, 2, 'ณัชพล มีทุม', 7),
(78, 'Intercept', 4, 4, 2, 'ณัชพล มีทุม', 7),
(79, 'Shooting', 0, 1, 2, 'ณัชพล มีทุม', 7),
(80, 'Heading', 2, 3, 2, 'ณัชพล มีทุม', 7),
(81, 'Passing', 33, 39, 2, 'จิราเจต พ่วงรอด', 8),
(82, 'Dribbling', 8, 11, 2, 'จิราเจต พ่วงรอด', 8),
(83, 'Intercept', 3, 4, 2, 'จิราเจต พ่วงรอด', 8),
(84, 'Shooting', 2, 3, 2, 'จิราเจต พ่วงรอด', 8),
(85, 'Heading', 7, 8, 2, 'จิราเจต พ่วงรอด', 8),
(86, 'Passing', 38, 45, 2, 'เฉลิมชัย วงษ์พันเสือ', 9),
(87, 'Dribbling', 6, 7, 2, 'เฉลิมชัย วงษ์พันเสือ', 9),
(88, 'Intercept', 0, 2, 2, 'เฉลิมชัย วงษ์พันเสือ', 9),
(89, 'Shooting', 1, 4, 2, 'เฉลิมชัย วงษ์พันเสือ', 9),
(90, 'Heading', 0, 1, 2, 'เฉลิมชัย วงษ์พันเสือ', 9),
(91, 'Passing', 26, 34, 2, 'พงศธร พยัคเกษมโสภณ', 10),
(92, 'Shooting', 2, 3, 2, 'พงศธร พยัคเกษมโสภณ', 10),
(93, 'Heading', 1, 5, 2, 'พงศธร พยัคเกษมโสภณ', 10),
(94, 'Dribbling', 13, 16, 2, 'พงศธร พยัคเกษมโสภณ', 10),
(95, 'Passing', 19, 24, 2, 'ศรราม ม่วงหมี', 11),
(96, 'Shooting', 1, 10, 2, 'ศรราม ม่วงหมี', 11),
(97, 'Heading', 11, 16, 2, 'ศรราม ม่วงหมี', 11),
(98, 'Dribbling', 2, 4, 2, 'ศรราม ม่วงหมี', 11),
(99, 'Passing', 19, 27, 2, 'ธนากร ตุ้มทอง', 12),
(100, 'Shooting', 2, 2, 2, 'ธนากร ตุ้มทอง', 12),
(101, 'Heading', 0, 2, 2, 'ธนากร ตุ้มทอง', 12),
(102, 'Dribbling', 11, 14, 2, 'ธนากร ตุ้มทอง', 12),
(103, 'Save', 4, 10, 1, 'นวพล ศรีเวียงธวัช', 13),
(104, 'Passing', 10, 11, 1, 'นวพล ศรีเวียงธวัช', 13),
(105, 'Save Penalty', 0, 1, 1, 'นวพล ศรีเวียงธวัช', 13),
(106, 'Duel 1-1', 1, 2, 1, 'นวพล ศรีเวียงธวัช', 13),
(107, 'Save', 2, 3, 1, 'ณัฐวัตร นามเจริญ', 14),
(108, 'Passing', 5, 10, 1, 'ณัฐวัตร นามเจริญ', 14),
(109, 'Save Penalty', 0, 2, 1, 'ณัฐวัตร นามเจริญ', 14),
(110, 'Duel 1-1', 1, 2, 1, 'ณัฐวัตร นามเจริญ', 14),
(111, 'Passing', 20, 30, 1, 'สุทธิราช ป้อมสุวรรณ', 15),
(112, 'Intercept', 2, 5, 1, 'สุทธิราช ป้อมสุวรรณ', 15),
(113, 'Heading', 2, 6, 1, 'สุทธิราช ป้อมสุวรรณ', 15),
(114, 'Tackle', 1, 5, 1, 'สุทธิราช ป้อมสุวรรณ', 15),
(115, 'Passing', 24, 30, 1, 'ณัฐชนน เทศมงคล', 16),
(116, 'Intercept', 4, 7, 1, 'ณัฐชนน เทศมงคล', 16),
(117, 'Heading', 12, 20, 1, 'ณัฐชนน เทศมงคล', 16),
(118, 'Tackle', 2, 4, 1, 'ณัฐชนน เทศมงคล', 16),
(119, 'Passing', 27, 29, 1, 'ทิยะ ปานะดิษฐ', 17),
(120, 'Intercept', 6, 6, 1, 'ทิยะ ปานะดิษฐ', 17),
(121, 'Heading', 2, 9, 1, 'ทิยะ ปานะดิษฐ', 17),
(122, 'Tackle', 4, 6, 1, 'ทิยะ ปานะดิษฐ', 17),
(123, 'Passing', 20, 30, 1, 'ธีรภาพ ฮวดเจริญ', 18),
(124, 'Dribbling', 2, 4, 1, 'ธีรภาพ ฮวดเจริญ', 18),
(125, 'Intercept', 7, 10, 1, 'ธีรภาพ ฮวดเจริญ', 18),
(126, 'Shooting', 0, 1, 1, 'ธีรภาพ ฮวดเจริญ', 18),
(127, 'Heading', 5, 8, 1, 'ธีรภาพ ฮวดเจริญ', 18),
(128, 'Passing', 30, 37, 1, 'สรวิชญ์ ขันอาสา', 19),
(129, 'Dribbling', 3, 5, 1, 'สรวิชญ์ ขันอาสา', 19),
(130, 'Intercept', 5, 9, 1, 'สรวิชญ์ ขันอาสา', 19),
(131, 'Shooting', 1, 2, 1, 'สรวิชญ์ ขันอาสา', 19),
(132, 'Heading', 4, 6, 1, 'สรวิชญ์ ขันอาสา', 19),
(133, 'Passing', 18, 22, 1, 'ศักดินา ศรีราม', 20),
(134, 'Dribbling', 5, 10, 1, 'ศักดินา ศรีราม', 20),
(135, 'Intercept', 1, 5, 1, 'ศักดินา ศรีราม', 20),
(136, 'Shooting', 1, 3, 1, 'ศักดินา ศรีราม', 20),
(137, 'Heading', 2, 5, 1, 'ศักดินา ศรีราม', 20),
(138, 'Passing', 11, 15, 1, 'ทศพร จันทรทักษิณ', 21),
(139, 'Shooting', 2, 12, 1, 'ทศพร จันทรทักษิณ', 21),
(140, 'Heading', 6, 10, 1, 'ทศพร จันทรทักษิณ', 21),
(141, 'Dribbling', 7, 11, 1, 'ทศพร จันทรทักษิณ', 21),
(142, 'Passing', 7, 10, 1, 'ธนานันท์ วอนเพียร', 22),
(143, 'Shooting', 1, 5, 1, 'ธนานันท์ วอนเพียร', 22),
(144, 'Heading', 3, 6, 1, 'ธนานันท์ วอนเพียร', 22),
(145, 'Dribbling', 5, 9, 1, 'ธนานันท์ วอนเพียร', 22),
(146, 'Passing', 10, 15, 1, 'พงศ์พันธ์ เดชวงศ์ญา', 23),
(147, 'Shooting', 0, 3, 1, 'พงศ์พันธ์ เดชวงศ์ญา', 23),
(148, 'Heading', 7, 8, 1, 'พงศ์พันธ์ เดชวงศ์ญา', 23),
(149, 'Dribbling', 1, 3, 1, 'พงศ์พันธ์ เดชวงศ์ญา', 23),
(150, 'Save', 1, 3, 2, 'นวพล ศรีเวียงธวัช', 13),
(151, 'Passing', 7, 10, 2, 'นวพล ศรีเวียงธวัช', 13),
(152, 'Save Penalty', 1, 1, 2, 'นวพล ศรีเวียงธวัช', 13),
(153, 'Duel 1-1', 1, 2, 2, 'นวพล ศรีเวียงธวัช', 13),
(154, 'Save', 5, 5, 2, 'ณัฐวัตร นามเจริญ', 14),
(155, 'Passing', 5, 10, 2, 'ณัฐวัตร นามเจริญ', 14),
(156, 'Save Penalty', 0, 2, 2, 'ณัฐวัตร นามเจริญ', 14),
(157, 'Duel 1-1', 1, 1, 2, 'ณัฐวัตร นามเจริญ', 14),
(158, 'Passing', 22, 22, 2, 'สุทธิราช ป้อมสุวรรณ', 15),
(159, 'Intercept', 6, 6, 2, 'สุทธิราช ป้อมสุวรรณ', 15),
(160, 'Heading', 0, 3, 2, 'สุทธิราช ป้อมสุวรรณ', 15),
(161, 'Tackle', 0, 5, 2, 'สุทธิราช ป้อมสุวรรณ', 15),
(162, 'Passing', 20, 27, 2, 'ณัฐชนน เทศมงคล', 16),
(163, 'Intercept', 3, 5, 2, 'ณัฐชนน เทศมงคล', 16),
(164, 'Heading', 16, 16, 2, 'ณัฐชนน เทศมงคล', 16),
(165, 'Tackle', 0, 3, 2, 'ณัฐชนน เทศมงคล', 16),
(166, 'Passing', 29, 40, 2, 'ทิยะ ปานะดิษฐ', 17),
(167, 'Intercept', 5, 6, 2, 'ทิยะ ปานะดิษฐ', 17),
(168, 'Heading', 5, 8, 2, 'ทิยะ ปานะดิษฐ', 17),
(169, 'Tackle', 5, 5, 2, 'ทิยะ ปานะดิษฐ', 17),
(170, 'Passing', 25, 33, 2, 'ธีรภาพ ฮวดเจริญ', 18),
(171, 'Dribbling', 2, 3, 2, 'ธีรภาพ ฮวดเจริญ', 18),
(172, 'Intercept', 6, 7, 2, 'ธีรภาพ ฮวดเจริญ', 18),
(173, 'Shooting', 0, 2, 2, 'ธีรภาพ ฮวดเจริญ', 18),
(174, 'Heading', 5, 7, 2, 'ธีรภาพ ฮวดเจริญ', 18),
(175, 'Passing', 29, 34, 2, 'สรวิชญ์ ขันอาสา', 19),
(176, 'Dribbling', 3, 6, 2, 'สรวิชญ์ ขันอาสา', 19),
(177, 'Intercept', 5, 9, 2, 'สรวิชญ์ ขันอาสา', 19),
(178, 'Shooting', 2, 5, 2, 'สรวิชญ์ ขันอาสา', 19),
(179, 'Heading', 3, 6, 2, 'สรวิชญ์ ขันอาสา', 19),
(180, 'Passing', 19, 25, 2, 'ศักดินา ศรีราม', 20),
(181, 'Dribbling', 6, 9, 2, 'ศักดินา ศรีราม', 20),
(182, 'Intercept', 2, 5, 2, 'ศักดินา ศรีราม', 20),
(183, 'Shooting', 2, 5, 2, 'ศักดินา ศรีราม', 20),
(184, 'Heading', 1, 4, 2, 'ศักดินา ศรีราม', 20),
(185, 'Passing', 12, 17, 2, 'ทศพร จันทรทักษิณ', 21),
(186, 'Shooting', 0, 7, 2, 'ทศพร จันทรทักษิณ', 21),
(187, 'Heading', 10, 15, 2, 'ทศพร จันทรทักษิณ', 21),
(188, 'Dribbling', 4, 7, 2, 'ทศพร จันทรทักษิณ', 21),
(189, 'Passing', 8, 12, 2, 'ธนานันท์ วอนเพียร', 22),
(190, 'Shooting', 1, 4, 2, 'ธนานันท์ วอนเพียร', 22),
(191, 'Heading', 3, 7, 2, 'ธนานันท์ วอนเพียร', 22),
(192, 'Dribbling', 7, 9, 2, 'ธนานันท์ วอนเพียร', 22),
(193, 'Passing', 11, 19, 2, 'พงศ์พันธ์ เดชวงศ์ญา', 23),
(194, 'Shooting', 0, 2, 2, 'พงศ์พันธ์ เดชวงศ์ญา', 23),
(195, 'Heading', 7, 10, 2, 'พงศ์พันธ์ เดชวงศ์ญา', 23),
(196, 'Dribbling', 0, 1, 2, 'พงศ์พันธ์ เดชวงศ์ญา', 23);

-- --------------------------------------------------------

--
-- Table structure for table `statistics_rival`
--

CREATE TABLE `statistics_rival` (
  `id_sta` int(11) NOT NULL,
  `list` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `got` int(11) DEFAULT NULL,
  `chance` int(11) DEFAULT NULL,
  `id_match` int(11) DEFAULT NULL,
  `id_mr` int(11) DEFAULT NULL,
  `id_rival` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `statistics_rival`
--

INSERT INTO `statistics_rival` (`id_sta`, `list`, `got`, `chance`, `id_match`, `id_mr`, `id_rival`) VALUES
(1, 'Save', 4, 5, 1, 1, 1),
(2, 'Passing', 9, 11, 1, 1, 1),
(3, 'Save Penalty', 0, 0, 1, 1, 1),
(4, 'Duel 1-1', 1, 1, 1, 1, 1),
(5, 'Passing', 20, 25, 1, 2, 1),
(6, 'Intercept', 3, 5, 1, 2, 1),
(7, 'Heading', 4, 6, 1, 2, 1),
(8, 'Tackle', 4, 5, 1, 2, 1),
(9, 'Passing', 24, 28, 1, 3, 1),
(10, 'Intercept', 5, 7, 1, 3, 1),
(11, 'Heading', 12, 17, 1, 3, 1),
(12, 'Tackle', 4, 4, 1, 3, 1),
(13, 'Passing', 27, 35, 1, 4, 1),
(14, 'Intercept', 4, 6, 1, 4, 1),
(15, 'Heading', 7, 9, 1, 4, 1),
(16, 'Tackle', 5, 6, 1, 4, 1),
(17, 'Passing', 29, 34, 1, 5, 1),
(18, 'Intercept', 4, 4, 1, 5, 1),
(19, 'Heading', 3, 5, 1, 5, 1),
(20, 'Tackle', 5, 5, 1, 5, 1),
(21, 'Passing', 30, 32, 1, 6, 1),
(22, 'Dribbling', 5, 6, 1, 6, 1),
(23, 'Intercept', 5, 5, 1, 6, 1),
(24, 'Shooting', 0, 1, 1, 6, 1),
(25, 'Heading', 3, 6, 1, 6, 1),
(26, 'Passing', 29, 34, 1, 7, 1),
(27, 'Dribbling', 7, 9, 1, 7, 1),
(28, 'Intercept', 3, 4, 1, 7, 1),
(29, 'Shooting', 1, 3, 1, 7, 1),
(30, 'Heading', 5, 6, 1, 7, 1),
(31, 'Passing', 33, 40, 1, 8, 1),
(32, 'Dribbling', 5, 7, 1, 8, 1),
(33, 'Intercept', 1, 4, 1, 8, 1),
(34, 'Shooting', 1, 5, 1, 8, 1),
(35, 'Heading', 1, 3, 1, 8, 1),
(36, 'Passing', 20, 30, 1, 9, 1),
(37, 'Shooting', 1, 5, 1, 9, 1),
(38, 'Heading', 2, 4, 1, 9, 1),
(39, 'Dribbling', 6, 10, 1, 9, 1),
(40, ' Passing', 18, 20, 1, 10, 1),
(41, 'Shooting', 2, 5, 1, 10, 1),
(42, 'Heading', 9, 14, 1, 10, 1),
(43, 'Dribbling', 3, 6, 1, 10, 1),
(44, 'Passing', 16, 25, 1, 11, 1),
(45, 'Shooting', 0, 3, 1, 11, 1),
(46, 'Heading', 1, 3, 1, 11, 1),
(47, 'Dribbling', 10, 12, 1, 11, 1),
(48, 'Save', 3, 3, 2, 1, 1),
(49, 'Passing', 7, 8, 2, 1, 1),
(50, 'Save Penalty', 1, 1, 2, 1, 1),
(51, 'Duel 1-1', 1, 2, 2, 1, 1),
(52, 'Passing', 22, 24, 2, 2, 1),
(53, 'Intercept', 4, 6, 2, 2, 1),
(54, 'Heading', 2, 3, 2, 2, 1),
(55, 'Tackle', 4, 5, 2, 2, 1),
(56, 'Passing', 25, 27, 2, 3, 1),
(57, 'Intercept', 3, 5, 2, 3, 1),
(58, 'Heading', 15, 16, 2, 3, 1),
(59, 'Tackle', 3, 3, 2, 3, 1),
(60, 'Passing', 29, 38, 2, 4, 1),
(61, 'Intercept', 5, 6, 2, 4, 1),
(62, 'Heading', 6, 8, 2, 4, 1),
(63, 'Tackle', 5, 5, 2, 4, 1),
(64, 'Passing', 32, 39, 2, 5, 1),
(65, 'Intercept', 3, 4, 2, 5, 1),
(66, 'Heading', 2, 3, 2, 5, 1),
(67, 'Tackle', 4, 5, 2, 5, 1),
(68, 'Passing', 35, 42, 2, 6, 1),
(69, 'Dribbling', 4, 6, 2, 6, 1),
(70, 'Intercept', 4, 4, 2, 6, 1),
(71, 'Shooting', 0, 1, 2, 6, 1),
(72, 'Heading', 2, 3, 2, 6, 1),
(73, 'Passing', 33, 39, 2, 7, 1),
(74, 'Dribbling', 8, 11, 2, 7, 1),
(75, 'Intercept', 3, 4, 2, 7, 1),
(76, 'Shooting', 0, 3, 2, 7, 1),
(77, 'Heading', 7, 8, 2, 7, 1),
(78, 'Passing', 38, 45, 2, 8, 1),
(79, 'Dribbling', 6, 7, 2, 8, 1),
(80, 'Intercept', 0, 2, 2, 8, 1),
(81, 'Shooting', 0, 4, 2, 8, 1),
(82, 'Heading', 0, 1, 2, 8, 1),
(83, 'Passing', 26, 34, 2, 9, 1),
(84, 'Shooting', 0, 3, 2, 9, 1),
(85, 'Heading', 1, 5, 2, 9, 1),
(86, 'Dribbling', 13, 16, 2, 9, 1),
(87, 'Passing', 19, 24, 2, 10, 1),
(88, 'Shooting', 3, 6, 2, 10, 1),
(89, 'Heading', 11, 16, 2, 10, 1),
(90, 'Dribbling', 2, 4, 2, 10, 1),
(91, 'Passing', 19, 27, 2, 11, 1),
(92, 'Shooting', 1, 2, 2, 11, 1),
(93, 'Heading', 0, 2, 2, 11, 1),
(94, 'Dribbling', 11, 14, 2, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `type`, `name`, `created_at`, `updated_at`) VALUES
(7, 'admin', '123456', 'Admin', 'Admin', '2021-08-25 01:32:52', '2021-08-25 01:32:52'),
(8, 'player01', '123456', 'Player', 'player01', '2021-08-27 08:00:19', '2021-08-27 08:00:19'),
(9, 'player02', '123456', 'Player', 'player02', NULL, NULL),
(10, 'coach01', '123456', 'Coach', 'coach01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ig` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `username`, `name`, `nickname`, `position`, `number`, `photo`, `status`, `line`, `fb`, `ig`, `created_at`, `updated_at`) VALUES
(7, 'player01', 'ปิ่นเกล้า สาดี', 'ไทด์', 'โค้ช', '0', 'ปิ่นเกล้า สาดี.jpg', 'Ready', NULL, NULL, NULL, NULL, NULL),
(8, 'player01', 'เถกิงศักดิ์ ดำรงมั่น', 'เก้า', 'กองหน้า', '5', 'เถกิงศักดิ์ ดำรงมั่น.jpg', 'Ready', NULL, NULL, NULL, NULL, NULL),
(9, 'player01', 'พงศธร พยคเกษมโสภณ', 'ตัง', 'กองหน้า', '9', 'พงศธร พยคเกษมโสภณ.jpg', 'Ready', NULL, NULL, NULL, NULL, NULL),
(10, 'player01', 'ธนากร ตุ้มทอง', 'เมฆ', 'กองหน้า', '11', 'ธนากร ตุ้มทอง.jpg', 'Ready', NULL, NULL, NULL, NULL, NULL),
(11, 'player01', 'พินโญ สัมฤทธิ์', 'เพชร', 'กองกลาง', '1', 'พินโญ สัมฤทธิ์.jpg', 'Ready', NULL, NULL, NULL, NULL, NULL),
(12, 'player01', 'ศิวะ กรนุ่ม', 'ปอ', 'ประตู', '13', 'ศิวะ กรนุ่ม.jpg', 'Ready', NULL, NULL, NULL, NULL, NULL),
(13, 'player01', 'ณัชพล มีทุม', 'ปาย', 'กองหลัง', '14', 'ณัชพล มีทุม.jpg', 'Ready', NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_rival`
--
ALTER TABLE `member_rival`
  ADD PRIMARY KEY (`id_mr`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `player`
--
ALTER TABLE `player`
  ADD PRIMARY KEY (`id_m`);

--
-- Indexes for table `rival`
--
ALTER TABLE `rival`
  ADD PRIMARY KEY (`id_rival`);

--
-- Indexes for table `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`id_sta`);

--
-- Indexes for table `statistics_rival`
--
ALTER TABLE `statistics_rival`
  ADD PRIMARY KEY (`id_sta`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `member_rival`
--
ALTER TABLE `member_rival`
  MODIFY `id_mr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `player`
--
ALTER TABLE `player`
  MODIFY `id_m` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `rival`
--
ALTER TABLE `rival`
  MODIFY `id_rival` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `statistics`
--
ALTER TABLE `statistics`
  MODIFY `id_sta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `statistics_rival`
--
ALTER TABLE `statistics_rival`
  MODIFY `id_sta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
