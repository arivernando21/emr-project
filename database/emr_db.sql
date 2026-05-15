-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Waktu pembuatan: 15 Bulan Mei 2026 pada 05.17
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emr_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `activity_logs`
--

CREATE TABLE `activity_logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `activity_logs`
--

INSERT INTO `activity_logs` (`id`, `user_id`, `activity`, `created_at`) VALUES
(1, 1, 'Membuat visit baru pasien ID 1', '2026-05-08 13:51:20'),
(2, 3, 'Membuat nurse assessment visit ID 14', '2026-05-08 14:02:37'),
(3, 2, 'Membuat doctor assessment visit ID 14', '2026-05-08 14:08:42'),
(4, 1, 'Membuat visit baru pasien ID 1', '2026-05-09 02:57:40'),
(5, 5, 'Menyelesaikan visit ID 8', '2026-05-09 05:36:13'),
(6, 5, 'Menyelesaikan visit ID 8', '2026-05-09 05:36:16'),
(7, 5, 'Menyelesaikan visit ID 8', '2026-05-09 05:36:17'),
(8, 5, 'Menyelesaikan visit ID 8', '2026-05-09 05:36:18'),
(9, 5, 'Menyelesaikan visit ID 8', '2026-05-09 05:36:19'),
(10, 5, 'Menyelesaikan visit ID 8', '2026-05-09 05:36:20'),
(11, 5, 'Menyelesaikan visit ID 8', '2026-05-09 05:36:21'),
(12, 5, 'Menyelesaikan visit ID 8', '2026-05-09 05:36:23'),
(13, 5, 'Menyelesaikan visit ID 8', '2026-05-09 05:36:23'),
(14, 5, 'Menyelesaikan visit ID 8', '2026-05-09 05:36:23'),
(15, 1, 'Menyelesaikan visit ID 8', '2026-05-09 05:37:15'),
(16, 1, 'Menyelesaikan visit ID 14', '2026-05-09 05:45:23'),
(17, 1, 'Menyelesaikan visit ID 13', '2026-05-09 05:45:25'),
(18, 1, 'Menyelesaikan visit ID 7', '2026-05-09 05:45:26'),
(19, 1, 'Menyelesaikan visit ID 6', '2026-05-09 05:45:28'),
(20, 1, 'Membuat visit baru pasien ID 3', '2026-05-09 06:02:36'),
(21, 3, 'Membuat nurse assessment visit ID 16', '2026-05-09 06:04:33'),
(22, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:06:48'),
(23, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:09:07'),
(24, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:09:09'),
(25, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:09:09'),
(26, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:09:10'),
(27, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:09:10'),
(28, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:09:15'),
(29, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:10:00'),
(30, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:13:05'),
(31, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:13:10'),
(32, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:18:39'),
(33, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:19:24'),
(34, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:24:04'),
(35, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:24:05'),
(36, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:24:06'),
(37, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:24:06'),
(38, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:24:06'),
(39, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:26:52'),
(40, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:30:23'),
(41, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:30:30'),
(42, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:35:12'),
(43, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:35:19'),
(44, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:37:04'),
(45, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:37:05'),
(46, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:37:05'),
(47, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:37:05'),
(48, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:37:06'),
(49, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:37:06'),
(50, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:37:06'),
(51, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:37:06'),
(52, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:37:07'),
(53, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:38:14'),
(54, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 06:44:19'),
(55, 2, 'Membuat doctor assessment visit ID 5', '2026-05-09 07:41:40'),
(56, 5, 'Menyelesaikan visit ID 5', '2026-05-09 08:02:26'),
(57, 2, 'Membuat doctor assessment visit ID 16', '2026-05-09 08:15:40'),
(58, 3, 'Membuat nurse assessment visit ID 12', '2026-05-09 08:16:47'),
(59, 2, 'Membuat doctor assessment visit ID 12', '2026-05-09 08:17:35'),
(60, 3, 'Membuat nurse assessment visit ID 15', '2026-05-09 08:31:45'),
(61, 3, 'Membuat nurse assessment visit ID 10', '2026-05-09 09:15:14'),
(62, 2, 'Membuat doctor assessment visit ID 15', '2026-05-09 09:16:09'),
(63, 1, 'Membuat visit baru pasien ID 5', '2026-05-09 12:45:07'),
(64, 1, 'Membuat visit baru pasien ID 4', '2026-05-09 12:48:28'),
(65, 1, 'Membuat visit baru pasien ID 4', '2026-05-09 12:53:22'),
(66, 1, 'Membuat visit baru pasien ID 4', '2026-05-09 12:55:40'),
(67, 1, 'Membuat visit baru pasien ID 2', '2026-05-09 12:57:29'),
(68, 1, 'Membuat visit baru pasien ID 2', '2026-05-09 13:00:32'),
(69, 1, 'Membuat visit baru pasien ID 2', '2026-05-09 13:01:39'),
(70, 1, 'Membuat visit baru pasien ID 1', '2026-05-09 13:09:44'),
(71, 1, 'Membuat visit baru pasien ID 1', '2026-05-09 13:24:40'),
(72, 1, 'Membuat visit baru pasien ID 1', '2026-05-09 13:27:26'),
(73, 1, 'Membuat visit baru pasien ID 1', '2026-05-09 13:27:33'),
(74, 1, 'Membuat visit baru pasien ID 1', '2026-05-09 13:39:14'),
(75, 1, 'Membuat visit baru pasien ID 1', '2026-05-09 13:48:11'),
(76, 1, 'Membuat visit baru pasien ID 1', '2026-05-09 14:02:11'),
(77, 3, 'Membuat nurse assessment visit ID 24', '2026-05-09 14:17:18'),
(78, 3, 'Membuat nurse assessment visit ID 24', '2026-05-09 14:22:14'),
(79, 3, 'Membuat nurse assessment visit ID 25', '2026-05-09 14:26:19'),
(80, 8, 'Membuat doctor assessment visit ID 24', '2026-05-09 14:37:51'),
(81, 8, 'Membuat doctor assessment visit ID 24', '2026-05-09 14:41:13'),
(82, 8, 'Membuat doctor assessment visit ID 25', '2026-05-09 14:41:56'),
(83, 3, 'Membuat nurse assessment visit ID 17', '2026-05-09 15:43:36'),
(84, 2, 'Membuat doctor assessment visit ID 17', '2026-05-09 15:44:59'),
(85, 3, 'Membuat nurse assessment visit ID 18', '2026-05-09 15:55:29'),
(86, 2, 'Membuat doctor assessment visit ID 18', '2026-05-09 15:56:17'),
(87, 3, 'Membuat nurse assessment visit ID 21', '2026-05-09 15:59:53'),
(88, 2, 'Membuat doctor assessment visit ID 21', '2026-05-09 16:00:32'),
(89, 3, 'Membuat nurse assessment visit ID 19', '2026-05-09 16:04:00'),
(90, 2, 'Membuat doctor assessment visit ID 19', '2026-05-09 16:04:43'),
(91, 5, 'Menyelesaikan visit ID 17', '2026-05-09 16:32:34'),
(92, 5, 'Menyelesaikan visit ID 18', '2026-05-09 16:32:35'),
(93, 5, 'Menyelesaikan visit ID 24', '2026-05-09 16:32:37'),
(94, 1, 'Membuat visit baru pasien ID 3', '2026-05-09 16:35:22'),
(95, 3, 'Membuat nurse assessment visit ID 31', '2026-05-09 16:36:37'),
(96, 2, 'Membuat doctor assessment visit ID 31', '2026-05-09 16:37:52'),
(97, 5, 'Menyelesaikan visit ID 31', '2026-05-09 16:38:53'),
(98, 1, 'Membuat visit baru pasien ID 2', '2026-05-09 16:42:00'),
(99, 3, 'Membuat nurse assessment visit ID 32', '2026-05-09 16:42:38'),
(100, 2, 'Membuat doctor assessment visit ID 32', '2026-05-09 16:43:42'),
(101, 1, 'Membuat visit baru pasien ID 1', '2026-05-09 16:48:09'),
(102, 3, 'Membuat nurse assessment visit ID 33', '2026-05-09 16:48:40'),
(103, 2, 'Membuat doctor assessment visit ID 33', '2026-05-09 16:49:23'),
(104, 1, 'Membuat visit baru pasien ID 1', '2026-05-09 17:02:39'),
(105, 3, 'Membuat nurse assessment visit ID 34', '2026-05-09 17:03:44'),
(106, 2, 'Membuat doctor assessment visit ID 34', '2026-05-09 17:04:39'),
(107, 5, 'Menyelesaikan visit ID 34', '2026-05-09 17:12:11'),
(108, 1, 'Membuat visit baru pasien ID 5', '2026-05-09 17:13:42'),
(109, 3, 'Membuat nurse assessment visit ID 35', '2026-05-09 17:14:26'),
(110, 2, 'Membuat doctor assessment visit ID 35', '2026-05-09 17:15:36'),
(111, 5, 'Menyelesaikan visit ID 35', '2026-05-09 17:18:13'),
(112, 1, 'Membuat visit baru pasien ID 6', '2026-05-09 17:19:18'),
(113, 3, 'Membuat nurse assessment visit ID 36', '2026-05-09 17:20:43'),
(114, 2, 'Membuat doctor assessment visit ID 36', '2026-05-09 17:21:23'),
(115, 1, 'Membuat visit baru pasien ID 1', '2026-05-09 17:28:37'),
(116, 3, 'Membuat nurse assessment visit ID 37', '2026-05-09 17:29:54'),
(117, 2, 'Membuat doctor assessment visit ID 37', '2026-05-09 17:30:36'),
(118, 2, 'Menyelesaikan visit ID 37', '2026-05-09 17:31:07'),
(119, 1, 'Membuat visit baru pasien ID 1', '2026-05-10 02:12:20'),
(120, 3, 'Membuat nurse assessment visit ID 38', '2026-05-10 02:12:57'),
(121, 2, 'Membuat doctor assessment visit ID 38', '2026-05-10 02:13:46'),
(122, 1, 'Membuat visit baru pasien ID 2', '2026-05-10 03:44:18'),
(123, 3, 'Membuat nurse assessment visit ID 39', '2026-05-10 03:45:31'),
(124, 2, 'Membuat doctor assessment visit ID 39', '2026-05-10 03:46:48'),
(125, 5, 'Menyelesaikan visit ID 39', '2026-05-10 03:47:53'),
(126, 1, 'Membuat visit baru pasien ID 2', '2026-05-10 03:49:16'),
(127, 3, 'Membuat nurse assessment visit ID 40', '2026-05-10 03:49:51'),
(128, 2, 'Membuat doctor assessment visit ID 40', '2026-05-10 03:50:21'),
(129, 5, 'Menyelesaikan visit ID 40', '2026-05-10 04:04:37'),
(130, 1, 'Membuat visit baru pasien ID 3', '2026-05-10 04:04:59'),
(131, 3, 'Membuat nurse assessment visit ID 41', '2026-05-10 04:05:36'),
(132, 2, 'Membuat doctor assessment visit ID 41', '2026-05-10 04:06:11'),
(133, 5, 'Menyelesaikan visit ID 41', '2026-05-10 04:09:01'),
(134, 1, 'Membuat visit baru pasien ID 1', '2026-05-10 06:04:27'),
(135, 3, 'Membuat nurse assessment visit ID 42', '2026-05-10 06:05:15'),
(136, 2, 'Membuat doctor assessment visit ID 42', '2026-05-10 06:05:56'),
(137, 5, 'Menyelesaikan visit ID 42', '2026-05-10 06:07:43'),
(138, 1, 'Membuat visit baru pasien ID 3', '2026-05-10 06:19:56'),
(139, 3, 'Membuat nurse assessment visit ID 43', '2026-05-10 06:20:39'),
(140, 2, 'Membuat doctor assessment visit ID 43', '2026-05-10 06:21:28'),
(141, 24, 'Mengupload hasil lab order ID 45', '2026-05-10 06:22:31'),
(142, 5, 'Menyelesaikan visit ID 43', '2026-05-10 06:24:07'),
(143, 1, 'Membuat visit baru pasien ID 1', '2026-05-10 06:34:55'),
(144, 1, 'Membuat visit baru pasien ID 1', '2026-05-10 06:35:03'),
(145, 1, 'Membuat visit baru pasien ID 1', '2026-05-10 06:41:33'),
(146, 1, 'Membuat visit baru pasien ID 1', '2026-05-10 06:42:23'),
(147, 3, 'Membuat nurse assessment visit ID 44', '2026-05-10 06:46:17'),
(148, 3, 'Membuat nurse assessment visit ID 45', '2026-05-10 06:50:11'),
(149, 3, 'Membuat nurse assessment visit ID 46', '2026-05-10 07:03:37'),
(150, 3, 'Membuat nurse assessment visit ID 47', '2026-05-10 07:12:12'),
(151, 3, 'Membuat nurse assessment visit ID 47', '2026-05-10 07:17:22'),
(152, 3, 'Membuat nurse assessment visit ID 47', '2026-05-10 07:17:26'),
(153, 1, 'Membuat visit baru pasien ID 1', '2026-05-10 07:26:01'),
(154, 3, 'Membuat nurse assessment visit ID 48', '2026-05-10 07:40:36'),
(155, 1, 'Membuat visit baru pasien ID 1', '2026-05-10 07:41:58'),
(156, 3, 'Membuat nurse assessment visit ID 49', '2026-05-10 07:42:35'),
(157, 2, 'Membuat doctor assessment visit ID 44', '2026-05-10 07:43:53'),
(158, 2, 'Membuat doctor assessment visit ID 44', '2026-05-10 07:48:46'),
(159, 2, 'Membuat doctor assessment visit ID 44', '2026-05-10 07:48:46'),
(160, 2, 'Membuat doctor assessment visit ID 45', '2026-05-10 07:55:59'),
(161, 2, 'Membuat doctor assessment visit ID 45', '2026-05-10 07:55:59'),
(162, 2, 'Membuat doctor assessment visit ID 46', '2026-05-10 08:01:29'),
(163, 2, 'Membuat doctor assessment visit ID 47', '2026-05-10 08:03:50'),
(164, 2, 'Membuat doctor assessment visit ID 48', '2026-05-10 08:04:51'),
(165, 1, 'Membuat visit baru pasien ID 1', '2026-05-10 08:20:52'),
(166, 3, 'Membuat nurse assessment visit ID 50', '2026-05-12 02:57:33'),
(167, 8, 'Membuat doctor assessment visit ID 50', '2026-05-12 03:03:28'),
(168, 24, 'Mengupload hasil lab order ID 48', '2026-05-12 03:05:47'),
(169, 5, 'Menyelesaikan visit ID 50', '2026-05-12 03:11:34'),
(170, 24, 'Mengupload hasil lab order ID 46', '2026-05-13 23:47:18'),
(171, 24, 'Menginput hasil lab order ID 47', '2026-05-14 00:33:50'),
(172, 2, 'Membuat doctor assessment visit ID 49', '2026-05-14 00:38:41'),
(173, 1, 'Membuat visit baru pasien ID 4', '2026-05-14 00:57:25'),
(174, 3, 'Membuat nurse assessment visit ID 51', '2026-05-14 00:58:00'),
(175, 2, 'Membuat doctor assessment visit ID 51', '2026-05-14 00:58:31'),
(176, 24, 'Menginput hasil lab order ID 50', '2026-05-14 01:02:17'),
(177, 24, 'Menginput hasil lab order ID 49', '2026-05-14 02:37:49'),
(178, 1, 'Membuat visit baru pasien ID 3', '2026-05-14 02:47:32'),
(179, 3, 'Membuat nurse assessment visit ID 52', '2026-05-14 02:52:12'),
(180, 2, 'Membuat doctor assessment visit ID 52', '2026-05-14 02:54:27'),
(181, 24, 'Menginput hasil lab order ID 51', '2026-05-14 02:58:46'),
(182, 5, 'Menyelesaikan visit ID 52', '2026-05-14 03:18:19'),
(183, 1, 'Membuat visit baru pasien ID 7', '2026-05-14 03:43:18'),
(184, 3, 'Membuat nurse assessment visit ID 53', '2026-05-14 03:43:58'),
(185, 2, 'Membuat doctor assessment visit ID 53', '2026-05-14 03:44:29'),
(186, 24, 'Menginput hasil lab order ID 52', '2026-05-14 03:45:07'),
(187, 1, 'Membuat visit baru pasien ID 6', '2026-05-14 12:21:45'),
(188, 3, 'Membuat nurse assessment visit ID 54', '2026-05-14 12:23:10'),
(189, 2, 'Membuat doctor assessment visit ID 54', '2026-05-14 12:24:10'),
(190, 5, 'Menyelesaikan visit ID 54', '2026-05-14 12:57:37'),
(191, 5, 'Menyelesaikan visit ID 53', '2026-05-15 02:39:51'),
(192, 5, 'Menyelesaikan visit ID 51', '2026-05-15 02:39:53'),
(193, 5, 'Menyelesaikan visit ID 49', '2026-05-15 02:39:55'),
(194, 5, 'Menyelesaikan visit ID 47', '2026-05-15 02:39:56'),
(195, 5, 'Menyelesaikan visit ID 44', '2026-05-15 02:39:57'),
(196, 1, 'Membuat visit baru pasien ID 1', '2026-05-15 02:40:41'),
(197, 3, 'Membuat nurse assessment visit ID 55', '2026-05-15 02:41:19'),
(198, 2, 'Membuat doctor assessment visit ID 55', '2026-05-15 02:41:52'),
(199, 24, 'Menginput hasil lab order ID 53', '2026-05-15 02:42:16');

-- --------------------------------------------------------

--
-- Struktur dari tabel `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `specialization_id` int(11) DEFAULT NULL,
  `poli_id` int(11) DEFAULT NULL,
  `sip_number` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `doctors`
--

INSERT INTO `doctors` (`id`, `user_id`, `specialization_id`, `poli_id`, `sip_number`, `created_at`) VALUES
(2, 2, 1, 1, 'SIP001', '2026-05-07 11:20:18'),
(3, 8, 8, NULL, NULL, '2026-05-09 12:35:42'),
(4, 22, 15, NULL, NULL, '2026-05-09 12:42:58'),
(5, 29, 4, NULL, NULL, '2026-05-10 05:51:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `doctor_assessments`
--

CREATE TABLE `doctor_assessments` (
  `id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `doctor_id` int(11) NOT NULL,
  `anamnesis` text DEFAULT NULL,
  `physical_exam` text DEFAULT NULL,
  `diagnosis` text DEFAULT NULL,
  `icd_id` int(11) DEFAULT NULL,
  `doctor_plan` text DEFAULT NULL,
  `treatment_status` enum('outpatient','lab_request','inpatient','observation','referred') DEFAULT 'outpatient',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `procedure_icd9_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `doctor_assessments`
--

INSERT INTO `doctor_assessments` (`id`, `visit_id`, `doctor_id`, `anamnesis`, `physical_exam`, `diagnosis`, `icd_id`, `doctor_plan`, `treatment_status`, `created_at`, `procedure_icd9_id`) VALUES
(2, 1, 2, 'Demam sejak 3 hari disertai lemas.', 'Suhu meningkat, pasien tampak lemah.', 'Suspect demam tifoid.', 1, 'Pemeriksaan darah lengkap.', 'lab_request', '2026-05-07 11:41:21', NULL),
(3, 3, 2, 'Pasien mengalami demam sejak 2 hari, batuk ringan, dan nyeri tenggorokan.', 'Suhu tubuh meningkat, faring hiperemis ringan, kondisi umum cukup.', 'ISPA ringan.', 12, 'Pemberian obat simptomatik dan istirahat cukup.', 'outpatient', '2026-05-07 12:08:52', NULL),
(4, 2, 2, 'Demam tinggi sejak 4 hari, mual, nafsu makan menurun.', 'Pasien tampak lemah, suhu 39°C, abdomen sedikit nyeri tekan.', 'Suspect demam tifoid.', 1, 'Pemeriksaan darah lengkap dan widal test.', 'lab_request', '2026-05-07 12:12:46', NULL),
(5, 4, 2, 'Demam tinggi sejak 4 hari, mual, dan lemas.', 'Pasien tampak lemah, suhu meningkat.', 'Suspect demam tifoid.', 1, 'Pemeriksaan laboratorium darah lengkap.', 'lab_request', '2026-05-07 13:00:40', 1),
(6, 6, 2, 'Pasien mengeluh nyeri ulu hati, mual, dan perut terasa panas setelah makan.', 'Nyeri tekan ringan pada epigastrium, kondisi umum cukup.', 'Gastritis akut.', 13, 'Pemberian obat lambung dan edukasi pola makan.', 'outpatient', '2026-05-07 16:38:08', 9),
(7, 7, 2, 'Batuk berdahak sejak 5 hari, sesak napas, dan demam tinggi.', 'Ronki basah pada paru kanan, suhu meningkat, pasien tampak sesak.', 'Pneumonia sedang.', 16, 'Pemberian antibiotik, obat simptomatik, dan observasi kondisi paru.', 'outpatient', '2026-05-07 17:27:20', 2),
(8, 8, 2, 'Pasien mengeluh sering haus, sering buang air kecil, dan mudah lelah.', 'Tekanan darah meningkat, kondisi umum cukup.', 'Diabetes Mellitus Tipe 2.', 15, 'Kontrol gula darah dan pemberian obat antidiabetes.', 'outpatient', '2026-05-07 17:43:47', 10),
(9, 9, 2, 'Pasien mengeluh sakit kepala berat dan nyeri dada ringan sejak pagi.', 'Tekanan darah 180/110 mmHg, denyut nadi meningkat.', 'Hipertensi berat.', 14, 'Pasien perlu observasi intensif dan rawat inap.', 'inpatient', '2026-05-07 18:01:40', 9),
(10, 13, 2, 'Pasien mengalami demam sejak 2 hari, batuk ringan, dan nyeri tenggorokan.', 'Suhu tubuh meningkat, faring hiperemis ringan, kondisi umum cukup.', 'ISPA ringan.', 12, 'Pemberian obat simptomatik dan istirahat cukup.', 'outpatient', '2026-05-08 04:51:19', 2),
(11, 14, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.', ' Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', ' ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'outpatient', '2026-05-08 14:08:42', 2),
(12, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:06:48', 2),
(13, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:09:07', 2),
(14, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:09:09', 2),
(15, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:09:09', 2),
(16, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:09:10', 2),
(17, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:09:10', 2),
(18, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:09:15', 2),
(19, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:10:00', 2),
(20, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:13:05', 2),
(21, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:13:10', 2),
(22, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:18:39', 2),
(23, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:19:24', 2),
(24, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:24:04', 2),
(25, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:24:05', 2),
(26, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:24:05', 2),
(27, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:24:06', 2),
(28, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:24:06', 2),
(29, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:26:52', 2),
(30, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:30:23', 2),
(31, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:30:30', 2),
(32, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:35:12', 2),
(33, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:35:19', 2),
(34, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:37:04', 2),
(35, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:37:05', 2),
(36, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:37:05', 2),
(37, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:37:05', 2),
(38, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:37:06', 2),
(39, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:37:06', 2),
(40, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:37:06', 2),
(41, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:37:06', 2),
(42, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:37:07', 2),
(43, 16, 2, 'Pasien mengeluh demam dan batuk berdahak sejak 2 hari yang lalu disertai badan lemas.\r\n', 'Keadaan umum cukup, suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, ronki ringan pada paru.', 'ISPA (Infeksi Saluran Pernapasan Akut).', 12, 'Berikan antipiretik dan obat batuk, anjurkan istirahat cukup serta banyak minum, edukasi pasien, dan kontrol kembali bila keluhan memberat.', 'lab_request', '2026-05-09 06:38:14', 2),
(44, 16, 2, 'a', 'a', 'a', 1, 'a', 'lab_request', '2026-05-09 06:44:19', 1),
(45, 5, 2, 'aa', 'a', 'aa', 1, 'a', 'lab_request', '2026-05-09 07:41:40', 1),
(46, 16, 2, 'a', 'a', 'a', 1, 'a', 'outpatient', '2026-05-09 08:15:40', 1),
(47, 12, 2, 'a', 'a', 'a', 1, 'a', 'lab_request', '2026-05-09 08:17:35', 1),
(48, 15, 2, 'a', 'aaa', 'a', 1, 'a', 'inpatient', '2026-05-09 09:16:09', 1),
(49, 24, 3, 'ydty', 'guyfuy', 'giyuyfu', 1, 'iguyf', 'outpatient', '2026-05-09 14:37:51', 1),
(50, 24, 3, 'ydty', 'guyfuy', 'giyuyfu', 1, 'iguyf', 'outpatient', '2026-05-09 14:41:13', 1),
(51, 25, 3, 'rfre', 'frfrfer', 'frefref', 1, 'fefrref', 'lab_request', '2026-05-09 14:41:56', 1),
(53, 17, 2, 'feaaf', 'faafaf', 'fafaaf', 1, 'fafafa', 'lab_request', '2026-05-09 15:44:59', 1),
(54, 18, 2, 'wwfwefwewf', 'wefwefef', 'fewfe', 1, 'weffwefew', 'lab_request', '2026-05-09 15:56:17', 1),
(55, 21, 2, 'edcevev', 'vevfefv', 'evfeve', 1, 'cdededecd', 'lab_request', '2026-05-09 16:00:32', 1),
(56, 19, 2, 'axssxaxsa', 'asxaasx', 'asxasasx', 1, 'xsaaxas', 'inpatient', '2026-05-09 16:04:43', 1),
(57, 31, 2, 'dfaf', 'fdasffa', 'fasfasfa', 1, 'fasfasafs', 'outpatient', '2026-05-09 16:37:52', 1),
(58, 32, 2, 'wdfdas', 'dsadsadsa', 'saddsa', 1, 'saddsadsa', 'outpatient', '2026-05-09 16:43:42', 1),
(59, 33, 2, 'acscsaacscsa', 'csacsacsa', 'csacsacsa', 1, 'scacsasca', 'outpatient', '2026-05-09 16:49:23', 1),
(60, 34, 2, 's', 's', 's', 1, 's', 'outpatient', '2026-05-09 17:04:39', 1),
(61, 35, 2, 'aa', 'a', 'a', 1, 'a', 'lab_request', '2026-05-09 17:15:36', 1),
(62, 36, 2, 'q', 'q', 'qq', 1, 'q', 'inpatient', '2026-05-09 17:21:23', 1),
(63, 37, 2, 'a', 'a', 'a', 1, 'a', 'outpatient', '2026-05-09 17:30:36', 1),
(64, 38, 2, 'm', 'm', 'm', 1, '', 'inpatient', '2026-05-10 02:13:46', 1),
(65, 39, 2, 'assa', 'saassa', 'sa', 1, 'sa', 'outpatient', '2026-05-10 03:46:48', 1),
(66, 40, 2, 'ss', 's', 's', 1, 's', 'lab_request', '2026-05-10 03:50:21', 1),
(67, 41, 2, 's', 's', 's', 1, 's', 'lab_request', '2026-05-10 04:06:11', 1),
(68, 42, 2, 'n', 'n', 'n', 1, 'm', 'lab_request', '2026-05-10 06:05:56', 1),
(69, 43, 2, 'sa', 'sasa', 'as', 1, 'as', 'lab_request', '2026-05-10 06:21:28', 1),
(70, 44, 2, 'xs', 'sxxs', 'sx', 1, 's', 'outpatient', '2026-05-10 07:43:53', 1),
(71, 44, 2, 'as', 'as', 'aas', 1, 'as', 'lab_request', '2026-05-10 07:48:46', 1),
(72, 45, 2, 'wd', 'dwdw', 'dw', 1, 'wd', 'inpatient', '2026-05-10 07:55:59', 1),
(73, 46, 2, 'sqqs', 'qs', 'qs', 1, 'qs', 'inpatient', '2026-05-10 08:01:28', 1),
(74, 47, 2, 'xs', 'xs', 'xs', 1, 'xs', 'lab_request', '2026-05-10 08:03:50', 1),
(75, 48, 2, 'sx', 'xs', 'sx', 1, 'sx', 'inpatient', '2026-05-10 08:04:51', 1),
(76, 50, 3, 'Dahaknya kuning banget, ', 'Pengecekan darah', 'Diagnosa dbd', 1, 'diperiksa ke lab', 'lab_request', '2026-05-12 03:03:28', 1),
(77, 49, 2, 'aw', 'aw', 'aw', 1, 'aw', 'lab_request', '2026-05-14 00:38:41', 1),
(78, 51, 2, 's', 's', 's', 1, 's', 'lab_request', '2026-05-14 00:58:31', 1),
(79, 52, 2, 'Pasien mengeluh demam sejak 5 hari yang lalu, terutama meningkat pada malam hari. Disertai mual, lemas, nyeri kepala, nafsu makan menurun, dan nyeri perut ringan. BAB cenderung encer 1–2 kali per hari. Tidak ada sesak napas maupun muntah.', 'Pemeriksaan kepala dan leher dalam batas normal.\r\nThoraks simetris, suara napas vesikuler normal.\r\nAbdomen teraba nyeri tekan ringan regio epigastrium, tidak ada pembesaran hepar maupun lien.\r\nEkstremitas hangat, CRT < 2 detik.', 'Demam tifoid suspect infeksi bakteri saluran cerna.\r\n', 1, 'Periksa ke lab', 'lab_request', '2026-05-14 02:54:27', 1),
(80, 53, 2, 'q', 'qq', 'q', 1, 'q', 'lab_request', '2026-05-14 03:44:29', 1),
(81, 54, 2, 'e', 'ee', 'e', 1, 'e', 'outpatient', '2026-05-14 12:24:10', 1),
(82, 55, 2, 'aa', 'a', 'a', 1, 'a', 'lab_request', '2026-05-15 02:41:52', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `doctor_specializations`
--

CREATE TABLE `doctor_specializations` (
  `id` int(11) NOT NULL,
  `specialization_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `doctor_specializations`
--

INSERT INTO `doctor_specializations` (`id`, `specialization_name`, `created_at`) VALUES
(1, 'Dokter Umum', '2026-05-07 11:20:08'),
(2, 'Dokter Umum', '2026-05-09 12:18:13'),
(3, 'Dokter Anak', '2026-05-09 12:18:13'),
(4, 'Dokter Penyakit Dalam', '2026-05-09 12:18:13'),
(5, 'Dokter Bedah', '2026-05-09 12:18:13'),
(6, 'Dokter Kandungan', '2026-05-09 12:18:13'),
(7, 'Dokter Jantung', '2026-05-09 12:18:13'),
(8, 'Dokter Saraf', '2026-05-09 12:18:13'),
(9, 'Dokter Mata', '2026-05-09 12:18:13'),
(10, 'Dokter THT', '2026-05-09 12:18:13'),
(11, 'Dokter Kulit dan Kelamin', '2026-05-09 12:18:13'),
(12, 'Dokter Gigi', '2026-05-09 12:18:13'),
(13, 'Dokter Paru', '2026-05-09 12:18:13'),
(14, 'Dokter Orthopedi', '2026-05-09 12:18:13'),
(15, 'Dokter Urologi', '2026-05-09 12:18:13'),
(16, 'Dokter Anestesi', '2026-05-09 12:18:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `icd9_procedures`
--

CREATE TABLE `icd9_procedures` (
  `id` int(11) NOT NULL,
  `procedure_code` varchar(20) NOT NULL,
  `procedure_name` varchar(255) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `icd9_procedures`
--

INSERT INTO `icd9_procedures` (`id`, `procedure_code`, `procedure_name`, `category`, `created_at`) VALUES
(1, '90.59', 'Pemeriksaan darah lengkap', 'Laboratorium', '2026-05-07 12:35:01'),
(2, '87.44', 'Rontgen dada', 'Radiologi', '2026-05-07 12:35:01'),
(3, '99.15', 'Injeksi antibiotik', 'Terapi', '2026-05-07 12:35:01'),
(4, '96.04', 'Pemasangan oksigen', 'Tindakan', '2026-05-07 12:35:01'),
(5, '88.72', 'USG abdomen', 'Radiologi', '2026-05-07 12:35:01'),
(6, '89.52', 'EKG', 'Jantung', '2026-05-07 12:35:01'),
(7, '93.90', 'Fisioterapi', 'Rehabilitasi', '2026-05-07 12:35:01'),
(8, '99.21', 'Suntikan antibiotik', 'Terapi', '2026-05-07 12:35:01'),
(9, '89.01', 'Pemeriksaan tekanan darah', 'Pemeriksaan', '2026-05-07 12:35:01'),
(10, '90.43', 'Pemeriksaan gula darah', 'Laboratorium', '2026-05-07 12:35:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `icd_codes`
--

CREATE TABLE `icd_codes` (
  `id` int(11) NOT NULL,
  `icd_code` varchar(20) NOT NULL,
  `icd_name` varchar(255) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `icd_codes`
--

INSERT INTO `icd_codes` (`id`, `icd_code`, `icd_name`, `category`, `created_at`) VALUES
(1, 'A01.0', 'Demam tifoid', 'Infeksi', '2026-05-07 11:36:17'),
(12, 'J06.9', 'ISPA', 'Pernapasan', '2026-05-07 12:06:26'),
(13, 'K29.7', 'Gastritis', 'Pencernaan', '2026-05-07 12:06:26'),
(14, 'I10', 'Hipertensi', 'Kardiovaskular', '2026-05-07 12:06:26'),
(15, 'E11.9', 'Diabetes Mellitus Tipe 2', 'Endokrin', '2026-05-07 12:06:26'),
(16, 'J18.9', 'Pneumonia', 'Pernapasan', '2026-05-07 12:06:26'),
(17, 'N39.0', 'Infeksi Saluran Kemih', 'Urologi', '2026-05-07 12:06:26'),
(18, 'R50.9', 'Demam', 'Gejala Umum', '2026-05-07 12:06:26'),
(19, 'J02.9', 'Faringitis Akut', 'Pernapasan', '2026-05-07 12:06:26'),
(20, 'A09', 'Diare dan Gastroenteritis', 'Pencernaan', '2026-05-07 12:06:26');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inpatients`
--

CREATE TABLE `inpatients` (
  `id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `room_number` varchar(50) DEFAULT NULL,
  `admission_date` datetime DEFAULT current_timestamp(),
  `discharge_date` datetime DEFAULT NULL,
  `inpatient_status` enum('active','discharged') DEFAULT 'active',
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `inpatients`
--

INSERT INTO `inpatients` (`id`, `visit_id`, `room_number`, `admission_date`, `discharge_date`, `inpatient_status`, `notes`, `created_at`) VALUES
(1, 9, 'KAMAR-101', '2026-05-08 01:01:40', '2026-05-09 16:16:52', '', 'mantap', '2026-05-07 18:01:40'),
(2, 15, 'KAMAR-101', '2026-05-09 16:16:09', '2026-05-09 16:28:09', '', 'MANTAP\r\n', '2026-05-09 09:16:09'),
(3, 19, 'KAMAR-101', '2026-05-09 23:04:43', '2026-05-09 23:05:21', '', 'xswwxs', '2026-05-09 16:04:43'),
(4, 36, 'KAMAR-101', '2026-05-10 00:21:23', '2026-05-10 00:22:11', '', 'a\r\n', '2026-05-09 17:21:23'),
(5, 38, 'KAMAR-101', '2026-05-10 09:13:46', '2026-05-10 09:14:26', '', 'pulang\r\n', '2026-05-10 02:13:46'),
(6, 45, 'KAMAR-101', '2026-05-10 14:55:59', NULL, 'active', 'Pasien memerlukan rawat inap', '2026-05-10 07:55:59'),
(7, 46, 'KAMAR-101', '2026-05-10 15:01:29', NULL, 'active', 'Pasien memerlukan rawat inap', '2026-05-10 08:01:29'),
(8, 48, 'KAMAR-101', '2026-05-10 15:04:51', NULL, 'active', 'Pasien memerlukan rawat inap', '2026-05-10 08:04:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lab_orders`
--

CREATE TABLE `lab_orders` (
  `id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `doctor_assessment_id` int(11) NOT NULL,
  `lab_service_id` int(11) DEFAULT NULL,
  `order_notes` text DEFAULT NULL,
  `order_status` enum('pending','completed') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `lab_orders`
--

INSERT INTO `lab_orders` (`id`, `visit_id`, `doctor_assessment_id`, `lab_service_id`, `order_notes`, `order_status`, `created_at`) VALUES
(1, 2, 4, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-07 12:12:46'),
(2, 4, 5, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-07 13:00:40'),
(33, 16, 43, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-09 06:38:14'),
(34, 16, 44, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-09 06:44:19'),
(35, 5, 45, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-09 07:41:40'),
(36, 12, 47, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-09 08:17:35'),
(37, 25, 51, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-09 14:41:56'),
(38, 17, 53, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-09 15:44:59'),
(39, 18, 54, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-09 15:56:17'),
(40, 21, 55, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-09 16:00:32'),
(41, 35, 61, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-09 17:15:36'),
(42, 40, 66, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-10 03:50:21'),
(43, 41, 67, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-10 04:06:11'),
(44, 42, 68, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-10 06:05:56'),
(45, 43, 69, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-10 06:21:28'),
(46, 44, 71, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-10 07:48:46'),
(47, 47, 74, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-10 08:03:50'),
(48, 50, 76, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-12 03:03:28'),
(49, 49, 77, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-14 00:38:41'),
(50, 51, 78, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-14 00:58:31'),
(51, 52, 79, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-14 02:54:27'),
(52, 53, 80, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-14 03:44:29'),
(53, 55, 82, NULL, 'Pemeriksaan laboratorium', 'completed', '2026-05-15 02:41:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lab_results`
--

CREATE TABLE `lab_results` (
  `id` int(11) NOT NULL,
  `lab_order_id` int(11) NOT NULL,
  `result_value` varchar(255) DEFAULT NULL,
  `result_notes` text DEFAULT NULL,
  `result_status` enum('normal','abnormal') DEFAULT 'normal',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `result_file` varchar(255) DEFAULT NULL,
  `lab_file` varchar(255) DEFAULT NULL,
  `lab_service_id` int(11) DEFAULT NULL,
  `result_number` varchar(100) DEFAULT NULL,
  `result_unit` varchar(50) DEFAULT NULL,
  `normal_range` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `lab_results`
--

INSERT INTO `lab_results` (`id`, `lab_order_id`, `result_value`, `result_notes`, `result_status`, `created_at`, `result_file`, `lab_file`, `lab_service_id`, `result_number`, `result_unit`, `normal_range`) VALUES
(1, 1, 'Leukosit tinggi', 'indikasi infeksi', 'abnormal', '2026-05-07 12:14:10', NULL, NULL, NULL, NULL, NULL, NULL),
(2, 2, 'Leukosit tinggi', 'indikasi infeksi', 'abnormal', '2026-05-07 13:04:44', NULL, NULL, NULL, NULL, NULL, NULL),
(3, 33, 'Leukosit tinggi', 'jangan sering makan seblak', 'normal', '2026-05-09 06:42:36', NULL, NULL, NULL, NULL, NULL, NULL),
(4, 34, 'Leukosit tinggi', 'makan seblak teros\r\n', 'normal', '2026-05-09 06:44:43', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 35, 'ad', 'ade', 'normal', '2026-05-09 07:43:27', NULL, NULL, NULL, NULL, NULL, NULL),
(6, 36, 'Leukosit tinggi', 'a', 'normal', '2026-05-09 08:18:08', '1778314688_laporanlab.webp', NULL, NULL, NULL, NULL, NULL),
(7, 37, NULL, NULL, 'normal', '2026-05-09 15:39:40', '', NULL, NULL, NULL, NULL, NULL),
(8, 38, NULL, NULL, 'normal', '2026-05-09 15:45:30', '', NULL, NULL, NULL, NULL, NULL),
(9, 39, NULL, NULL, 'normal', '2026-05-09 15:58:37', NULL, '1778342317_laporanlab.webp', NULL, NULL, NULL, NULL),
(10, 40, NULL, NULL, 'normal', '2026-05-09 16:00:53', NULL, '1778342453_laporanlab.webp', NULL, NULL, NULL, NULL),
(11, 41, NULL, NULL, 'normal', '2026-05-09 17:16:45', '', NULL, NULL, NULL, NULL, NULL),
(12, 41, NULL, NULL, 'normal', '2026-05-09 17:16:52', '', NULL, NULL, NULL, NULL, NULL),
(13, 42, NULL, NULL, 'normal', '2026-05-10 03:55:42', '', NULL, NULL, NULL, NULL, NULL),
(14, 43, NULL, NULL, 'normal', '2026-05-10 04:06:34', '1778385994_laporanlab.webp', NULL, NULL, NULL, NULL, NULL),
(15, 44, NULL, NULL, 'normal', '2026-05-10 06:06:25', '1778393185_WhatsApp Image 2026-04-30 at 13.59.36.jpeg', NULL, NULL, NULL, NULL, NULL),
(16, 45, NULL, NULL, 'normal', '2026-05-10 06:22:31', '1778394151_WhatsApp Image 2026-04-30 at 13.59.36 (1).jpeg', NULL, NULL, NULL, NULL, NULL),
(17, 48, NULL, NULL, 'normal', '2026-05-12 03:05:47', '1778555147_laporanlab.webp', NULL, NULL, NULL, NULL, NULL),
(18, 46, NULL, NULL, 'normal', '2026-05-13 23:47:18', '1778716038_laporanlab.webp', NULL, NULL, NULL, NULL, NULL),
(19, 47, NULL, NULL, 'normal', '2026-05-14 00:33:50', NULL, NULL, 0, 'hasilnya bagus', '', ''),
(20, 50, NULL, NULL, 'normal', '2026-05-14 01:02:17', NULL, NULL, 1, '13.5', 'g/dL', '13 - 17'),
(21, 49, NULL, NULL, 'normal', '2026-05-14 02:37:49', NULL, NULL, 1, '13.5', 'g/dL', '13 - 17'),
(22, 49, NULL, NULL, 'normal', '2026-05-14 02:37:49', NULL, NULL, 2, '5200', '/uL', '4000 - 11000'),
(23, 49, NULL, NULL, 'normal', '2026-05-14 02:37:49', NULL, NULL, 3, '93', 'mg/dL', '70 - 140'),
(24, 49, NULL, NULL, 'normal', '2026-05-14 02:37:49', NULL, NULL, 4, '370000', '/uL', '150000 - 450000'),
(25, 51, NULL, NULL, 'normal', '2026-05-14 02:58:46', NULL, NULL, 1, '15.5', 'g/dL', '13 - 17'),
(26, 51, NULL, NULL, 'normal', '2026-05-14 02:58:46', NULL, NULL, 2, '8000', '/uL', '4000 - 11000'),
(27, 51, NULL, NULL, 'normal', '2026-05-14 02:58:46', NULL, NULL, 3, '95', 'mg/dL', '70 - 140'),
(28, 51, NULL, NULL, 'normal', '2026-05-14 02:58:46', NULL, NULL, 4, '300000', '/uL', '150000 - 450000'),
(29, 52, NULL, NULL, 'normal', '2026-05-14 03:45:07', NULL, NULL, 1, '14', 'g/dL', '13 - 17'),
(30, 52, NULL, NULL, 'normal', '2026-05-14 03:45:07', NULL, NULL, 2, '5000', '/uL', '4000 - 11000'),
(31, 52, NULL, NULL, 'normal', '2026-05-14 03:45:07', NULL, NULL, 3, '103', 'mg/dL', '70 - 140'),
(32, 52, NULL, NULL, 'normal', '2026-05-14 03:45:07', NULL, NULL, 4, '396000', '/uL', '150000 - 450000'),
(33, 53, NULL, NULL, 'normal', '2026-05-15 02:42:16', NULL, NULL, 1, '14', 'g/dL', '13 - 17'),
(34, 53, NULL, NULL, 'normal', '2026-05-15 02:42:16', NULL, NULL, 2, '13.5', '/uL', '4000 - 11000'),
(35, 53, NULL, NULL, 'normal', '2026-05-15 02:42:16', NULL, NULL, 3, '15.5', 'mg/dL', '70 - 140'),
(36, 53, NULL, NULL, 'normal', '2026-05-15 02:42:16', NULL, NULL, 4, '13.5', '/uL', '150000 - 450000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lab_services`
--

CREATE TABLE `lab_services` (
  `id` int(11) NOT NULL,
  `service_code` varchar(50) DEFAULT NULL,
  `service_name` varchar(255) NOT NULL,
  `normal_value` varchar(100) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `lab_services`
--

INSERT INTO `lab_services` (`id`, `service_code`, `service_name`, `normal_value`, `unit`, `created_at`) VALUES
(1, 'HB', 'Hemoglobin', '13 - 17', 'g/dL', '2026-05-14 00:46:48'),
(2, 'LEU', 'Leukosit', '4000 - 11000', '/uL', '2026-05-14 00:46:48'),
(3, 'GDP', 'Gula Darah', '70 - 140', 'mg/dL', '2026-05-14 00:46:48'),
(4, 'TROM', 'Trombosit', '150000 - 450000', '/uL', '2026-05-14 00:46:48');

-- --------------------------------------------------------

--
-- Struktur dari tabel `medicines`
--

CREATE TABLE `medicines` (
  `id` int(11) NOT NULL,
  `medicine_code` varchar(50) DEFAULT NULL,
  `medicine_name` varchar(255) NOT NULL,
  `stock` int(11) DEFAULT 0,
  `unit` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `medicines`
--

INSERT INTO `medicines` (`id`, `medicine_code`, `medicine_name`, `stock`, `unit`, `created_at`) VALUES
(1, 'OB001', 'Paracetamol', 100, 'Tablet', '2026-05-07 16:13:36'),
(2, 'OB002', 'Amoxicillin', 50, 'Kapsul', '2026-05-07 16:13:36'),
(3, 'OB003', 'Omeprazole', 40, 'Tablet', '2026-05-07 16:13:36'),
(4, 'OB004', 'CTM', 60, 'Tablet', '2026-05-07 16:13:36'),
(5, 'OB005', 'Antasida', 70, 'Tablet', '2026-05-07 16:13:36'),
(6, 'OB006', 'Ibuprofen', 100, 'Tablet', '2026-05-07 16:50:43'),
(7, 'OB007', 'Cefadroxil', 50, 'Kapsul', '2026-05-07 16:50:43'),
(8, 'OB008', 'Vitamin C', 200, 'Tablet', '2026-05-07 16:50:43'),
(9, 'OB009', 'OBH Combi', 70, 'Botol', '2026-05-07 16:50:43'),
(10, 'OB010', 'Salbutamol', 40, 'Tablet', '2026-05-07 16:50:43'),
(11, 'OB011', 'Ranitidine', 50, 'Tablet', '2026-05-07 16:50:43'),
(12, 'OB012', 'Metformin', 60, 'Tablet', '2026-05-07 16:50:43'),
(13, 'OB013', 'Amlodipine', 80, 'Tablet', '2026-05-07 16:50:43'),
(14, 'OB014', 'Domperidone', 40, 'Tablet', '2026-05-07 16:50:43'),
(15, 'OB015', 'Ciprofloxacin', 30, 'Tablet', '2026-05-07 16:50:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nurses`
--

CREATE TABLE `nurses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nurses`
--

INSERT INTO `nurses` (`id`, `user_id`, `created_at`) VALUES
(1, 21, '2026-05-09 12:41:43'),
(2, 23, '2026-05-09 12:43:47'),
(3, 30, '2026-05-10 06:35:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nurse_assessments`
--

CREATE TABLE `nurse_assessments` (
  `id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `nurse_id` int(11) DEFAULT NULL,
  `blood_pressure` varchar(20) DEFAULT NULL,
  `temperature` decimal(4,1) DEFAULT NULL,
  `pulse` int(11) DEFAULT NULL,
  `respiration` int(11) DEFAULT NULL,
  `oxygen_saturation` varchar(10) DEFAULT NULL,
  `subjective` text DEFAULT NULL,
  `objective` text DEFAULT NULL,
  `assessment` text DEFAULT NULL,
  `plan` text DEFAULT NULL,
  `triage_level` enum('low','medium','high','emergency') DEFAULT 'low',
  `assigned_poli_id` int(11) DEFAULT NULL,
  `assigned_doctor_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `nurse_assessments`
--

INSERT INTO `nurse_assessments` (`id`, `visit_id`, `nurse_id`, `blood_pressure`, `temperature`, `pulse`, `respiration`, `oxygen_saturation`, `subjective`, `objective`, `assessment`, `plan`, `triage_level`, `assigned_poli_id`, `assigned_doctor_id`, `created_at`) VALUES
(1, 1, NULL, '110/70', 38.7, 95, 22, NULL, 'Demam sejak 2 hari, muntah, nafsu makan menurun.', 'Pasien tampak lemas, suhu meningkat.', 'Kemungkinan infeksi, perlu pemeriksaan dokter.', 'Konsultasi dokter anak dan observasi lanjutan.', 'low', 2, 2, '2026-05-07 11:22:04'),
(2, 2, NULL, '105/68', 35.6, 90, 24, NULL, 'Pasien mengeluh demam sejak 2 hari disertai batuk dan sakit tenggorokan.', 'Pasien mengeluh demam sejak 2 hari disertai batuk dan sakit tenggorokan.', 'Kemungkinan infeksi saluran pernapasan atas.', 'Konsultasi ke dokter umum dan observasi suhu tubuh.', 'medium', 1, 2, '2026-05-07 11:55:49'),
(3, 3, NULL, '105/68', 35.6, 90, 24, NULL, 'Pasien mengeluh demam sejak 2 hari disertai batuk dan sakit tenggorokan.', 'Pasien tampak lemas, suhu meningkat, batuk ringan.', 'Kemungkinan infeksi saluran pernapasan atas.', 'Konsultasi ke dokter umum dan observasi suhu tubuh.', 'medium', 1, 2, '2026-05-07 11:58:55'),
(4, 4, NULL, '110/70', 39.0, 98, 22, NULL, 'Pasien mengeluh demam sejak 4 hari dan badan terasa lemas.', 'Pasien tampak lemah dan suhu meningkat.', 'Kemungkinan infeksi, perlu pemeriksaan lanjutan.', 'Konsultasi dokter dan pemeriksaan laboratorium.', 'high', 1, 2, '2026-05-07 12:54:20'),
(5, 5, NULL, '105/68', 38.7, 95, 24, NULL, 'Pasien mengeluh demam sejak 4 hari dan badan terasa lemas.', 'Pasien tampak lemah dan suhu meningkat.', 'Kemungkinan infeksi, perlu pemeriksaan lanjutan.', 'Konsultasi dokter dan pemeriksaan laboratorium.', 'high', 1, 2, '2026-05-07 15:57:58'),
(7, 6, NULL, '120/80', 36.8, 84, 20, NULL, 'Pasien mengeluh nyeri ulu hati sejak 2 hari, mual, dan perut terasa perih setelah makan.', 'Pasien tampak lemah ringan dan sering memegang area perut.', 'Gangguan pencernaan, perlu evaluasi dokter.', 'Konsultasi ke dokter umum dan observasi keluhan lambung.', 'medium', 1, 2, '2026-05-07 16:35:38'),
(8, 7, NULL, '100/70', 39.2, 105, 28, NULL, 'Pasien mengeluh batuk berdahak sejak 5 hari, sesak napas, dan demam tinggi.', 'Pasien tampak sesak, frekuensi napas meningkat, suhu tubuh tinggi.', 'Gangguan pernapasan, perlu evaluasi dokter dan pemeriksaan lanjutan.', 'Konsultasi dokter umum dan observasi pernapasan.', 'high', 1, 2, '2026-05-07 17:18:08'),
(9, 8, NULL, '140/90', 36.7, 90, 20, NULL, 'Pasien mengeluh sering haus, sering buang air kecil, dan badan mudah lelah.', 'Pasien tampak lemah ringan, tekanan darah meningkat.', 'Gangguan metabolik, perlu pemeriksaan dokter.', 'Konsultasi dokter umum dan pemeriksaan gula darah.', 'medium', 1, 2, '2026-05-07 17:40:47'),
(10, 9, NULL, '180/110', 36.5, 110, 24, NULL, 'Pasien mengeluh sakit kepala berat, pusing, dan nyeri dada ringan.', 'Tekanan darah sangat tinggi, pasien tampak lemah.', 'Kondisi hipertensi berat, perlu evaluasi dokter segera.', 'Konsultasi dokter dan observasi tekanan darah.', 'high', 1, 2, '2026-05-07 17:57:33'),
(11, 13, 3, '105/68', 39.0, 105, 28, NULL, 'Pasien mengeluh demam sejak 2 hari disertai batuk dan sakit tenggorokan.', 'Pasien tampak lemas, suhu meningkat, batuk ringan.', 'Kemungkinan infeksi saluran pernapasan atas.', 'Konsultasi ke dokter umum dan observasi suhu tubuh.', 'medium', 1, 2, '2026-05-08 04:46:31'),
(12, 14, 3, '105/68', 38.7, 98, 22, NULL, 'Pasien mengeluh demam dan batuk sejak 2 hari yang lalu.', 'Suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, batuk berdahak.', ' Hipertermia berhubungan dengan infeksi.', 'Monitor tanda vital, anjurkan banyak minum, dan kolaborasi terapi dengan dokter.', 'medium', 1, 2, '2026-05-08 14:02:37'),
(13, 16, 3, '105/68', 36.7, 98, 20, NULL, 'Pasien mengeluh demam dan batuk sejak 2 hari yang lalu', 'Suhu 38°C, tekanan darah 120/80 mmHg, nadi 90 x/menit, batuk berdahak.', ' Hipertermia berhubungan dengan infeksi.', 'Monitor tanda vital, anjurkan banyak minum, dan kolaborasi terapi dengan dokter.', 'medium', 1, 2, '2026-05-09 06:04:33'),
(14, 12, 3, '110/70', 36.5, 98, 24, NULL, 'a', 'a', 'a', 'a', 'low', 1, 2, '2026-05-09 08:16:47'),
(15, 15, 3, '110/70', 39.2, 90, 20, NULL, 'a', 'a', 'a', 'a', 'low', 1, 2, '2026-05-09 08:31:45'),
(16, 10, 3, '110/70', 38.7, 98, 28, NULL, 'a', 'a', 'a', 'a', 'low', 1, 2, '2026-05-09 09:15:14'),
(17, 24, 3, '110/70', 39.0, 90, 22, NULL, 'hu', 'ii', 'ub', 'g', 'medium', 1, 3, '2026-05-09 14:17:18'),
(18, 24, 3, '105/68', 39.0, 98, 28, NULL, 'dkmcsd', 'cds', 'cs', 'csd', 'low', 1, 4, '2026-05-09 14:22:14'),
(19, 25, 3, '105/68', 36.5, 98, 20, NULL, 'eg', 'gfd', 'dgf', 'gdf', 'low', 1, 2, '2026-05-09 14:26:19'),
(20, 17, 3, '105/68', 36.5, 98, 22, NULL, 'fe', 'sgs', 'fds', 'ds', 'low', 1, 3, '2026-05-09 15:43:36'),
(21, 18, 3, '105/68', 36.7, 110, 28, NULL, 'gsgsgdsg', 'sggs', 'gsgsdgsgg', 'gsdg', 'low', 1, 2, '2026-05-09 15:55:29'),
(22, 21, 3, '110/70', 39.2, 90, 22, NULL, 'dccede', 'ceececddce', 'ceedededcde', 'cdecdecdde', 'low', 1, 2, '2026-05-09 15:59:53'),
(23, 19, 3, '100/70', 35.6, 98, 20, NULL, 'eqqqsxs', 'qxsqxq', 'qsxqsqs', 'qxqsqsx', 'low', 1, 2, '2026-05-09 16:04:00'),
(24, 31, 3, '110/70', 39.0, 105, 20, NULL, 'dsdgsdgsd', 'gdsgdsg', 'sggdsdgs', 'sgsgdddgs', 'low', 1, 2, '2026-05-09 16:36:37'),
(25, 32, 3, '100/70', 35.6, 95, 24, NULL, 'qddqwdqw', 'dwqqdw', 'qdwqdwqdw', 'wqdqdwdqw', 'low', 1, 2, '2026-05-09 16:42:38'),
(26, 33, 3, '120/80', 35.6, 95, 20, NULL, 'adsa', 'addaaddas', 'ads', 'ads', 'low', 1, 2, '2026-05-09 16:48:40'),
(27, 34, 3, '110/70', 39.2, 98, 22, NULL, 's', 's', 's', 's', 'low', 1, 2, '2026-05-09 17:03:44'),
(28, 35, 3, '110/70', 36.5, 90, 20, NULL, 'a', 'a', 'a', 'a', 'low', 1, 2, '2026-05-09 17:14:26'),
(29, 36, 3, '105/68', 36.5, 90, 28, NULL, 'aa', 'a', 'a', 'a', 'low', 1, 2, '2026-05-09 17:20:43'),
(30, 37, 3, '100/70', 36.5, 90, 22, NULL, 'a', 'a', 'a', 'a', 'low', 1, 2, '2026-05-09 17:29:54'),
(31, 38, 3, '110/70', 38.7, 90, 28, NULL, 'm', 'm', 'm', 'm', 'low', 1, 2, '2026-05-10 02:12:57'),
(32, 39, 3, '100/70', 39.0, 98, 28, NULL, 'sa', 'sa', 'as', 'sa', 'low', 1, 2, '2026-05-10 03:45:31'),
(33, 40, 3, '140/90', 38.7, 90, 28, NULL, 'd', 'd', 'dd', 'd', 'low', 1, 2, '2026-05-10 03:49:51'),
(34, 41, 3, '100/70', 39.0, 95, 20, NULL, 'sa', 'as', 'as', 'as', 'low', 1, 2, '2026-05-10 04:05:36'),
(35, 42, 3, '105/68', 36.7, 110, 20, NULL, 'h', 'h', 'h', 'h', 'low', 1, 2, '2026-05-10 06:05:15'),
(36, 43, 3, '110/70', 39.0, 90, 20, NULL, 'asa', 'as', 'as', 'as', 'low', 1, 2, '2026-05-10 06:20:39'),
(37, 44, 3, '120/80', 39.2, 98, 28, NULL, 'as', 'as', 'as', 'as', 'low', 1, 2, '2026-05-10 06:46:17'),
(38, 45, 3, '105/68', 39.2, 90, 22, NULL, 'as', 'as', 'as', 'as', 'low', 1, 2, '2026-05-10 06:50:11'),
(39, 46, 3, '110/70', 39.2, 105, 22, NULL, 'ded', 'deddeed', 'dede', 'de', 'low', 1, 2, '2026-05-10 07:03:37'),
(40, 47, 3, '180/110', 36.5, 95, 24, NULL, 'sw', 'sw', 'sw', 'sw', 'low', 1, 4, '2026-05-10 07:12:12'),
(41, 47, 3, '180/110', 36.5, 95, 24, NULL, 'sw', 'sw', 'sw', 'sw', 'low', 1, 4, '2026-05-10 07:17:22'),
(42, 47, 3, '180/110', 36.5, 95, 24, NULL, 'sw', 'sw', 'sw', 'sw', 'low', 1, 2, '2026-05-10 07:17:26'),
(51, 48, 3, 'w', 0.0, 0, 0, NULL, 'w', 'w', 'w', 'w', 'low', 1, 2, '2026-05-10 07:40:36'),
(52, 49, 3, '100/70', 39.2, 110, 22, NULL, 's', 's', 's', 's', 'low', 1, 4, '2026-05-10 07:42:35'),
(53, 50, 3, '105/68', 35.6, 95, 20, NULL, 'Pusing, suhu tubuh meningkat, pucat', 'Suhu 39, Tensi darah 105/68, ', 'Demam, gejala TBC', 'Teruskan pengecekan lanjut oleh Dokter, rajin minum air putih, dikurangin minuman manis', 'emergency', 1, 3, '2026-05-12 02:57:33'),
(54, 51, 3, '100/70', 38.7, 90, 28, NULL, 'sw', 'sw', 'sw', 'sw', 'low', 1, 2, '2026-05-14 00:58:00'),
(55, 52, 3, '100/70', 36.5, 95, 24, NULL, 'Pasien mengeluh demam sejak 2 hari terakhir disertai batuk dan badan lemas. Pasien mengatakan nafsu makan menurun dan tidur kurang nyenyak.', '* Pasien tampak lemah\r\n* Suhu tubuh meningkat\r\n* Batuk sesekali terdengar\r\n* Kesadaran compos mentis\r\n* Vital sign:', 'Hipertermia berhubungan dengan proses infeksi ditandai suhu tubuh meningkat 38.2 °C', '\r\n* Monitor tanda-tanda vital setiap 4 jam\r\n* Anjurkan pasien istirahat cukup\r\n* Anjurkan meningkatkan asupan cairan\r\n* Kolaborasi pemberian obat antipiretik sesuai instruksi dokter\r\n* Observasi perkembangan keluhan batuk dan demam', 'low', 1, 2, '2026-05-14 02:52:12'),
(56, 53, 3, '180/110', 38.7, 95, 22, NULL, 'a', 'a', 'aa', 'a', 'low', 1, 2, '2026-05-14 03:43:58'),
(57, 54, 3, '110/70', 39.0, 95, 28, NULL, 'w', 'w', 'w', 'w', 'low', 1, 2, '2026-05-14 12:23:10'),
(58, 55, 3, '105/68', 39.2, 105, 20, NULL, 'aa', 'aa', 'aa', 'aa', 'low', 1, 2, '2026-05-15 02:41:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `medical_record_number` varchar(50) NOT NULL,
  `nik` varchar(30) DEFAULT NULL,
  `full_name` varchar(100) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `birth_date` date DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `patients`
--

INSERT INTO `patients` (`id`, `medical_record_number`, `nik`, `full_name`, `gender`, `birth_date`, `phone`, `address`, `created_at`) VALUES
(1, 'RM001', '123456789', 'Budi Santoso', 'male', '2000-01-01', '08123456789', 'Jakarta', '2026-05-07 11:07:52'),
(2, 'RM002', '987654321', 'Siti Rahma', 'female', '2001-02-10', '081234567', 'Bandung', '2026-05-07 16:31:26'),
(3, 'RM0003', '1971042102070001', 'Novi Yanti', 'female', '2007-03-15', '087366523334', 'Muara Enim', '2026-05-08 15:26:19'),
(4, 'RM0004', '127631826981', 'Afif Khoirul Ramadhan', 'male', '2005-10-09', '086124424132', 'Parit Tiga', '2026-05-08 17:49:24'),
(5, 'RM0005', '23840863486913', 'Salam Huda', 'male', '2000-06-16', '082731532518', 'Pangkal Pinang', '2026-05-08 17:54:00'),
(6, 'RM0006', '281841064016', 'Fida Hafizah', 'female', '2006-07-12', '08936986391', 'Parit Tiga', '2026-05-09 13:46:09'),
(7, 'RM0007', '738636943693', 'Gonzales', 'male', '2003-10-08', '08732372273', 'Jebus', '2026-05-09 13:52:09'),
(8, 'RM0008', '3874023794', 'Rizka Lukita', 'female', '2006-06-22', '098237929620', 'Lemabang', '2026-05-09 13:57:50'),
(9, 'RM0009', '49924367432', 'Soni Juliansyah', 'male', '2006-07-05', '0837369696396', 'Indralaya', '2026-05-09 14:01:55'),
(10, 'RM0010', '12312653952', 'Radit', 'male', '2026-05-11', '088989889898', 'Palembang', '2026-05-12 02:49:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `poli`
--

CREATE TABLE `poli` (
  `id` int(11) NOT NULL,
  `poli_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `poli`
--

INSERT INTO `poli` (`id`, `poli_name`, `created_at`) VALUES
(1, 'Poli Umum', '2026-05-07 11:18:51'),
(2, 'Poli Anak', '2026-05-07 11:18:51'),
(3, 'Poli THT', '2026-05-07 11:18:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `prescriptions`
--

CREATE TABLE `prescriptions` (
  `id` int(11) NOT NULL,
  `visit_id` int(11) NOT NULL,
  `doctor_assessment_id` int(11) NOT NULL,
  `medicine_id` int(11) NOT NULL,
  `dosage` varchar(100) DEFAULT NULL,
  `frequency` varchar(100) DEFAULT NULL,
  `duration` varchar(100) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `prescriptions`
--

INSERT INTO `prescriptions` (`id`, `visit_id`, `doctor_assessment_id`, `medicine_id`, `dosage`, `frequency`, `duration`, `notes`, `created_at`) VALUES
(1, 6, 6, 5, '1 tablet', '3x sehari', '5 hari', 'Diminum setelah makan.', '2026-05-07 16:38:08'),
(2, 7, 7, 1, '1 tablet', '3x sehari', '5 hari', 'setelah makan', '2026-05-07 17:27:20'),
(3, 7, 7, 7, '1 kapsul', '2x sehari', '7 hari', 'Antibiotik harus dihabiskan', '2026-05-07 17:27:20'),
(4, 7, 7, 9, '10 ml', '3x sehari', '5 hari', 'Untuk batuk', '2026-05-07 17:27:20'),
(5, 7, 7, 8, '1 tablet', '1x sehari', '7 hari', 'Suplemen', '2026-05-07 17:27:20'),
(6, 8, 8, 12, '1 tablet', '2x sehari', '30 hari', 'setelah makan', '2026-05-07 17:43:47'),
(7, 8, 8, 8, '1 tablet', '1x sehari', '30 hari', 'Habiskan', '2026-05-07 17:43:47'),
(8, 9, 9, 13, '1 tablet', '2x sehari', '7 hari', 'setelah makan', '2026-05-07 18:01:40'),
(9, 9, 9, 8, '1 tablet', '1x sehari', '7 hari', 'habiskan', '2026-05-07 18:01:40'),
(10, 13, 10, 1, '1 tablet', '2x sehari', '5 hari', 'setelah makan', '2026-05-08 04:51:19'),
(11, 14, 3, 1, '1 tablet', '2x sehari', '5 hari', 'setelah makan', '2026-05-08 14:08:42'),
(12, 14, 3, 8, '1 tablet', '2x sehari', '7 hari', 'setelah makan', '2026-05-08 14:08:42'),
(13, 14, 3, 9, '50 ml', '2x sehari', '5 hari', 'sebelum makan', '2026-05-08 14:08:42'),
(14, 5, 45, 3, '1 tablet', '3x sehari', '5 hari', 'setelah makan', '2026-05-09 08:01:24'),
(15, 5, 45, 13, '1 tablet', '3x sehari', '5 hari', 'sebelum makan', '2026-05-09 08:01:24'),
(16, 5, 45, 10, '1 tablet', '2x sehari', '7 hari', 'setelah makan', '2026-05-09 08:01:24'),
(17, 16, 46, 7, '1 tablet', '2x sehari', '30 hari', 'setelah makan', '2026-05-09 08:15:40'),
(18, 24, 49, 12, '1 tablet', '3x sehari', '30 hari', 'setelah makan', '2026-05-09 14:37:51'),
(19, 24, 49, 12, '1 tablet', '2x sehari', '30 hari', 'setelah makan', '2026-05-09 14:37:51'),
(20, 24, 50, 12, '1 tablet', '3x sehari', '30 hari', 'setelah makan', '2026-05-09 14:41:13'),
(21, 17, 53, 13, '1 tablet', '3x sehari', '30 hari', 'setelah makan', '2026-05-09 15:54:44'),
(22, 18, 54, 14, '1 tablet', '2x sehari', '30 hari', 'setelah makan', '2026-05-09 16:32:05'),
(23, 31, 57, 15, '1 tablet', '2x sehari', '30 hari', 'setelah makan', '2026-05-09 16:37:52'),
(24, 31, 57, 10, '1 tablet', '2x sehari', '7 hari', 'setelah makan', '2026-05-09 16:37:52'),
(25, 32, 58, 14, '1 tablet', '3x sehari', '5 hari', 'setelah makan', '2026-05-09 16:43:42'),
(26, 33, 59, 14, '1 tablet', '3x sehari', '30 hari', 'setelah makan', '2026-05-09 16:49:23'),
(27, 34, 60, 13, '1 tablet', '2x sehari', '30 hari', 'setelah makan', '2026-05-09 17:04:39'),
(28, 35, 61, 13, '1 tablet', '2x sehari', '5 hari', 'setelah makan', '2026-05-09 17:17:35'),
(29, 37, 63, 13, '1 tablet', '2x sehari', '30 hari', 'setelah makan', '2026-05-09 17:30:36'),
(30, 39, 65, 15, '1 tablet', '2x sehari', '5 hari', 'setelah makan', '2026-05-10 03:46:48'),
(31, 39, 65, 11, '1 tablet', '2x sehari', '7 hari', 'setelah makan', '2026-05-10 03:46:48'),
(32, 40, 66, 13, '1 tablet', '3x sehari', '5 hari', 'setelah makan', '2026-05-10 04:04:23'),
(33, 41, 67, 15, '1 tablet', '2x sehari', '5 hari', 'setelah makan', '2026-05-10 04:08:44'),
(34, 42, 68, 14, '1 tablet', '3x sehari', '5 hari', 'setelah makan', '2026-05-10 06:07:24'),
(35, 43, 69, 12, '1 tablet', '3x sehari', '30 hari', 'setelah makan', '2026-05-10 06:23:51'),
(36, 44, 70, 15, '1 tablet', '3x sehari', '5 hari', 'setelah makan', '2026-05-10 07:43:53'),
(37, 50, 76, 1, '1 tablet', '2x sehari', '5 hari', 'setelah makan', '2026-05-12 03:11:05'),
(38, 50, 76, 6, '1 tablet', '3x sehari', '7 hari', 'setelah makan', '2026-05-12 03:11:05'),
(39, 50, 76, 8, '1 tablet', '3x sehari', '30 hari', 'setelah makan', '2026-05-12 03:11:05'),
(40, 52, 79, 8, '1 tablet', '2x sehari', '30 hari', 'setelah makan', '2026-05-14 03:17:52'),
(41, 52, 79, 7, '1 tablet', '3x sehari', '5 hari', 'setelah makan', '2026-05-14 03:17:52'),
(42, 54, 81, 3, '1 tablet', '2x sehari', '7 hari', 'setelah makan', '2026-05-14 12:24:10'),
(43, 54, 81, 10, '1 tablet', '2x sehari', '5 hari', 'setelah makan', '2026-05-14 12:24:10'),
(44, 47, 74, 10, '1 tablet', '2x sehari', '5 hari', 'setelah makan', '2026-05-15 02:36:08'),
(45, 44, 71, 7, '1 tablet', '3x sehari', '30 hari', 'setelah makan', '2026-05-15 02:36:32'),
(46, 49, 77, 7, '1 tablet', '2x sehari', '30 hari', 'setelah makan', '2026-05-15 02:37:02'),
(47, 51, 78, 12, '1 tablet', '2x sehari', '30 hari', 'setelah makan', '2026-05-15 02:37:19'),
(48, 53, 80, 9, '1 tablet', '2x sehari', '5 hari', 'setelah makan', '2026-05-15 02:38:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','nurse','doctor','lab','pharmacy','inpatient') DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'Administrator', 'admin@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'admin', '2026-05-07 10:54:29'),
(2, 'dr. Andi', 'andi@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'doctor', '2026-05-07 11:19:07'),
(3, 'Suster Rina', 'nurse@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nurse', '2026-05-08 03:13:58'),
(5, 'Farmasi', 'pharmacy@gmail.com', '$2b$12$CxrJij4lbopGjZJ4xtYh/OqbubacH1mG9WS942Q/M/5Jqq1WA2Qiy', 'pharmacy', '2026-05-09 05:35:34'),
(8, 'dr. Mukhlis Febriady, S.Si., M.Kom', 'mukhlis@gmail.com', '$2y$10$JKmgRQY40lrMW1caeLhmku6c6w3QnB5YWOuyVR8drk6Fe.xWVgj12', 'doctor', '2026-05-09 12:35:42'),
(21, 'Nurdia Tapsia, S.Kep', 'dian@gmail.com', '$2y$10$3rmGV9TsuXvkT/vYX.xqOepWHF1PZsTyKif5xXt01J7bSHcbcAfYe', 'nurse', '2026-05-09 12:41:43'),
(22, 'dr. Mastura', 'mastura@gmail.com', '$2y$10$2jjohjTlUBpRP.NAJBSeQ.8/ctTYoaRNPoFDiJy1gt8vIfePjFQFa', 'doctor', '2026-05-09 12:42:57'),
(23, 'Nayla Ramadhani, S.Kep', 'nayla@gmail.com', '$2y$10$0qeh1uE.E53lCjlR81LwzeJGYEdKzjIyrJgTVc2XsUEm.JHBajTDe', 'nurse', '2026-05-09 12:43:47'),
(24, 'Petugas Lab', 'lab@gmail.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lab', '2026-05-09 14:57:48'),
(28, 'Petugas Rawat Inap', 'inpatient@gmail.com', '$2y$10$dIdeqVIWN3KtRLwQ/TvEmOQ2jFlSbe9ln3iQcadMubbq9rly/Zihy', 'inpatient', '2026-05-10 03:42:43'),
(29, 'dr. Aulia', 'aulia@gmail.com', '$2y$10$w4iRlN4SATQcXKRwMm7w/.pm.HT6Sh2wcDrhMnWi.ZiLSVrMqopU.', 'doctor', '2026-05-10 05:51:19'),
(30, 'Suci', 'suci@gmail.com', '$2y$10$nRdevCwDxMk5.aZeiqA/WOWi69ezXKzumZOd6rhmSj2UutUo8BHXu', 'nurse', '2026-05-10 06:35:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `visits`
--

CREATE TABLE `visits` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `visit_date` datetime DEFAULT current_timestamp(),
  `visit_type` enum('outpatient','inpatient','emergency') DEFAULT 'outpatient',
  `visit_status` enum('waiting_nurse','waiting_doctor','waiting_lab','lab_result_ready','inpatient','observation','waiting_pharmacy','completed','referred') DEFAULT 'waiting_nurse',
  `complaint` text DEFAULT NULL,
  `assigned_poli` varchar(100) DEFAULT NULL,
  `assigned_doctor_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `queue_number` varchar(20) DEFAULT NULL,
  `is_lab_return` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `visits`
--

INSERT INTO `visits` (`id`, `patient_id`, `visit_date`, `visit_type`, `visit_status`, `complaint`, `assigned_poli`, `assigned_doctor_id`, `created_at`, `updated_at`, `queue_number`, `is_lab_return`) VALUES
(1, 1, '2026-05-07 18:08:22', 'outpatient', 'completed', '', NULL, NULL, '2026-05-07 11:08:22', '2026-05-09 08:41:38', NULL, 0),
(2, 1, '2026-05-07 18:13:28', 'outpatient', 'completed', '', NULL, NULL, '2026-05-07 11:13:28', '2026-05-09 11:47:28', NULL, 0),
(3, 1, '2026-05-07 18:51:04', 'outpatient', 'completed', '', NULL, NULL, '2026-05-07 11:51:04', '2026-05-09 11:47:28', NULL, 0),
(4, 1, '2026-05-07 19:52:37', 'outpatient', 'completed', '', NULL, NULL, '2026-05-07 12:52:37', '2026-05-09 11:47:28', NULL, 0),
(5, 1, '2026-05-07 22:56:51', 'outpatient', 'completed', '', NULL, NULL, '2026-05-07 15:56:51', '2026-05-09 08:02:26', NULL, 0),
(6, 2, '2026-05-07 23:31:54', 'outpatient', 'completed', '', NULL, NULL, '2026-05-07 16:31:54', '2026-05-09 05:45:28', NULL, 0),
(7, 2, '2026-05-08 00:16:18', 'outpatient', 'completed', '', NULL, NULL, '2026-05-07 17:16:18', '2026-05-09 05:45:26', NULL, 0),
(8, 1, '2026-05-08 00:39:12', 'outpatient', 'completed', '', NULL, NULL, '2026-05-07 17:39:12', '2026-05-09 05:36:13', NULL, 0),
(9, 2, '2026-05-08 00:55:42', 'outpatient', 'completed', '', NULL, NULL, '2026-05-07 17:55:42', '2026-05-09 11:47:28', NULL, 0),
(10, 2, '2026-05-08 10:33:06', 'outpatient', 'completed', '', NULL, NULL, '2026-05-08 03:33:06', '2026-05-09 11:47:28', NULL, 0),
(11, 2, '2026-05-08 10:33:13', 'outpatient', 'completed', '', NULL, NULL, '2026-05-08 03:33:13', '2026-05-09 11:47:28', NULL, 0),
(12, 1, '2026-05-08 11:11:32', 'outpatient', 'completed', '', NULL, NULL, '2026-05-08 04:11:32', '2026-05-09 11:47:28', 'A-006', 1),
(13, 2, '2026-05-08 11:11:35', 'outpatient', 'completed', '', NULL, NULL, '2026-05-08 04:11:35', '2026-05-09 05:45:25', 'A-007', 0),
(14, 1, '2026-05-08 20:51:20', 'outpatient', 'completed', '', NULL, NULL, '2026-05-08 13:51:20', '2026-05-09 05:45:23', 'A-008', 0),
(15, 1, '2026-05-09 09:57:40', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 02:57:40', '2026-05-09 11:47:28', 'A-001', 0),
(16, 3, '2026-05-09 13:02:36', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 06:02:36', '2026-05-09 11:47:28', 'A-002', 0),
(17, 5, '2026-05-09 19:45:06', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 12:45:06', '2026-05-09 16:32:34', 'A-003', 0),
(18, 4, '2026-05-09 19:48:28', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 12:48:28', '2026-05-09 16:32:35', 'A-004', 0),
(19, 4, '2026-05-09 19:53:22', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 12:53:22', '2026-05-09 16:05:39', 'A-005', 0),
(20, 4, '2026-05-09 19:55:40', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 12:55:40', '2026-05-09 16:35:01', 'A-006', 0),
(21, 2, '2026-05-09 19:57:29', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 12:57:29', '2026-05-09 16:35:01', 'A-007', 1),
(22, 2, '2026-05-09 20:00:32', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 13:00:32', '2026-05-09 16:35:01', 'A-008', 0),
(23, 2, '2026-05-09 20:01:39', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 13:01:39', '2026-05-09 16:35:01', 'A-009', 0),
(24, 1, '2026-05-09 20:09:44', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 13:09:44', '2026-05-09 16:32:37', 'A-010', 0),
(25, 1, '2026-05-09 20:24:40', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 13:24:40', '2026-05-09 16:35:01', 'A-011', 1),
(26, 1, '2026-05-09 20:27:26', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 13:27:26', '2026-05-09 16:35:01', 'A-012', 0),
(27, 1, '2026-05-09 20:27:33', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 13:27:33', '2026-05-09 16:35:01', 'A-013', 0),
(28, 1, '2026-05-09 20:39:14', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 13:39:14', '2026-05-09 16:35:01', 'A-014', 0),
(29, 1, '2026-05-09 20:48:11', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 13:48:11', '2026-05-09 16:35:01', 'A-015', 0),
(30, 1, '2026-05-09 21:02:10', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 14:02:10', '2026-05-09 16:35:01', 'A-016', 0),
(31, 3, '2026-05-09 23:35:22', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 16:35:22', '2026-05-09 16:38:53', 'A-017', 0),
(32, 2, '2026-05-09 23:42:00', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 16:42:00', '2026-05-09 17:02:19', 'A-018', 0),
(33, 1, '2026-05-09 23:48:09', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 16:48:09', '2026-05-09 17:02:19', 'A-019', 0),
(34, 1, '2026-05-10 00:02:39', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 17:02:39', '2026-05-09 17:12:11', 'A-020', 0),
(35, 5, '2026-05-10 00:13:42', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 17:13:42', '2026-05-09 17:18:13', 'A-020', 0),
(36, 6, '2026-05-10 00:19:18', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 17:19:18', '2026-05-09 17:23:28', 'A-020', 0),
(37, 1, '2026-05-10 00:28:37', 'outpatient', 'completed', '', NULL, NULL, '2026-05-09 17:28:37', '2026-05-09 17:31:07', 'A-020', 0),
(38, 1, '2026-05-10 09:12:20', 'outpatient', 'completed', '', NULL, NULL, '2026-05-10 02:12:20', '2026-05-10 02:14:31', 'A-005', 0),
(39, 2, '2026-05-10 10:44:18', 'outpatient', 'completed', '', NULL, NULL, '2026-05-10 03:44:18', '2026-05-10 03:47:53', 'A-006', 0),
(40, 2, '2026-05-10 10:49:16', 'outpatient', 'completed', '', NULL, NULL, '2026-05-10 03:49:16', '2026-05-10 04:04:37', 'A-007', 0),
(41, 3, '2026-05-10 11:04:59', 'outpatient', 'completed', '', NULL, NULL, '2026-05-10 04:04:59', '2026-05-10 04:09:01', 'A-008', 0),
(42, 1, '2026-05-10 13:04:27', 'outpatient', 'completed', '', NULL, NULL, '2026-05-10 06:04:27', '2026-05-10 06:07:43', 'A-009', 0),
(43, 3, '2026-05-10 13:19:56', 'outpatient', 'completed', '', NULL, NULL, '2026-05-10 06:19:56', '2026-05-10 06:24:07', 'A-010', 0),
(44, 1, '2026-05-10 13:34:55', 'outpatient', 'completed', '', NULL, NULL, '2026-05-10 06:34:55', '2026-05-15 02:39:57', 'A-011', 0),
(45, 1, '2026-05-10 13:35:03', 'outpatient', 'inpatient', '', NULL, NULL, '2026-05-10 06:35:03', '2026-05-10 07:55:59', 'A-012', 0),
(46, 1, '2026-05-10 13:41:33', 'outpatient', 'inpatient', '', NULL, 2, '2026-05-10 06:41:33', '2026-05-10 08:01:29', 'A-013', 0),
(47, 1, '2026-05-10 13:42:23', 'outpatient', 'completed', '', NULL, 2, '2026-05-10 06:42:23', '2026-05-15 02:39:56', 'A-014', 0),
(48, 1, '2026-05-10 14:26:01', 'outpatient', 'inpatient', '', NULL, NULL, '2026-05-10 07:26:01', '2026-05-10 08:04:51', 'A-015', 0),
(49, 1, '2026-05-10 14:41:58', 'outpatient', 'completed', '', NULL, NULL, '2026-05-10 07:41:58', '2026-05-15 02:39:55', 'A-016', 0),
(50, 1, '2026-05-10 15:20:52', 'outpatient', 'completed', '', NULL, NULL, '2026-05-10 08:20:52', '2026-05-12 03:11:34', 'A-017', 0),
(51, 4, '2026-05-14 07:57:25', 'outpatient', 'completed', '', NULL, NULL, '2026-05-14 00:57:25', '2026-05-15 02:39:53', 'A-001', 0),
(52, 3, '2026-05-14 09:47:32', 'outpatient', 'completed', '', NULL, NULL, '2026-05-14 02:47:32', '2026-05-14 03:18:19', 'A-002', 0),
(53, 7, '2026-05-14 10:43:18', 'outpatient', 'completed', '', NULL, NULL, '2026-05-14 03:43:18', '2026-05-15 02:39:51', 'A-003', 0),
(54, 6, '2026-05-14 19:21:45', 'outpatient', 'completed', '', NULL, NULL, '2026-05-14 12:21:45', '2026-05-14 12:57:37', 'A-004', 0),
(55, 1, '2026-05-15 09:40:41', 'outpatient', 'waiting_doctor', '', NULL, NULL, '2026-05-15 02:40:41', '2026-05-15 02:42:16', 'A-001', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `specialization_id` (`specialization_id`),
  ADD KEY `poli_id` (`poli_id`);

--
-- Indeks untuk tabel `doctor_assessments`
--
ALTER TABLE `doctor_assessments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_id` (`visit_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `icd_id` (`icd_id`),
  ADD KEY `procedure_icd9_id` (`procedure_icd9_id`);

--
-- Indeks untuk tabel `doctor_specializations`
--
ALTER TABLE `doctor_specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `icd9_procedures`
--
ALTER TABLE `icd9_procedures`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `procedure_code` (`procedure_code`);

--
-- Indeks untuk tabel `icd_codes`
--
ALTER TABLE `icd_codes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `icd_code` (`icd_code`);

--
-- Indeks untuk tabel `inpatients`
--
ALTER TABLE `inpatients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_id` (`visit_id`);

--
-- Indeks untuk tabel `lab_orders`
--
ALTER TABLE `lab_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_id` (`visit_id`),
  ADD KEY `doctor_assessment_id` (`doctor_assessment_id`),
  ADD KEY `lab_service_id` (`lab_service_id`);

--
-- Indeks untuk tabel `lab_results`
--
ALTER TABLE `lab_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lab_order_id` (`lab_order_id`);

--
-- Indeks untuk tabel `lab_services`
--
ALTER TABLE `lab_services`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_code` (`service_code`);

--
-- Indeks untuk tabel `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `medicine_code` (`medicine_code`);

--
-- Indeks untuk tabel `nurses`
--
ALTER TABLE `nurses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `nurse_assessments`
--
ALTER TABLE `nurse_assessments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_id` (`visit_id`),
  ADD KEY `nurse_id` (`nurse_id`),
  ADD KEY `assigned_poli_id` (`assigned_poli_id`),
  ADD KEY `assigned_doctor_id` (`assigned_doctor_id`);

--
-- Indeks untuk tabel `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `medical_record_number` (`medical_record_number`),
  ADD UNIQUE KEY `nik` (`nik`);

--
-- Indeks untuk tabel `poli`
--
ALTER TABLE `poli`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_id` (`visit_id`),
  ADD KEY `doctor_assessment_id` (`doctor_assessment_id`),
  ADD KEY `medicine_id` (`medicine_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `assigned_doctor_id` (`assigned_doctor_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT untuk tabel `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `doctor_assessments`
--
ALTER TABLE `doctor_assessments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `doctor_specializations`
--
ALTER TABLE `doctor_specializations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `icd9_procedures`
--
ALTER TABLE `icd9_procedures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `icd_codes`
--
ALTER TABLE `icd_codes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `inpatients`
--
ALTER TABLE `inpatients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `lab_orders`
--
ALTER TABLE `lab_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT untuk tabel `lab_results`
--
ALTER TABLE `lab_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `lab_services`
--
ALTER TABLE `lab_services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `nurses`
--
ALTER TABLE `nurses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `nurse_assessments`
--
ALTER TABLE `nurse_assessments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT untuk tabel `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `poli`
--
ALTER TABLE `poli`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `prescriptions`
--
ALTER TABLE `prescriptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `visits`
--
ALTER TABLE `visits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `activity_logs`
--
ALTER TABLE `activity_logs`
  ADD CONSTRAINT `activity_logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `doctors_ibfk_2` FOREIGN KEY (`specialization_id`) REFERENCES `doctor_specializations` (`id`),
  ADD CONSTRAINT `doctors_ibfk_3` FOREIGN KEY (`poli_id`) REFERENCES `poli` (`id`);

--
-- Ketidakleluasaan untuk tabel `doctor_assessments`
--
ALTER TABLE `doctor_assessments`
  ADD CONSTRAINT `doctor_assessments_ibfk_1` FOREIGN KEY (`visit_id`) REFERENCES `visits` (`id`),
  ADD CONSTRAINT `doctor_assessments_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`),
  ADD CONSTRAINT `doctor_assessments_ibfk_3` FOREIGN KEY (`icd_id`) REFERENCES `icd_codes` (`id`),
  ADD CONSTRAINT `doctor_assessments_ibfk_4` FOREIGN KEY (`procedure_icd9_id`) REFERENCES `icd9_procedures` (`id`);

--
-- Ketidakleluasaan untuk tabel `inpatients`
--
ALTER TABLE `inpatients`
  ADD CONSTRAINT `inpatients_ibfk_1` FOREIGN KEY (`visit_id`) REFERENCES `visits` (`id`);

--
-- Ketidakleluasaan untuk tabel `lab_orders`
--
ALTER TABLE `lab_orders`
  ADD CONSTRAINT `lab_orders_ibfk_1` FOREIGN KEY (`visit_id`) REFERENCES `visits` (`id`),
  ADD CONSTRAINT `lab_orders_ibfk_2` FOREIGN KEY (`doctor_assessment_id`) REFERENCES `doctor_assessments` (`id`),
  ADD CONSTRAINT `lab_orders_ibfk_3` FOREIGN KEY (`lab_service_id`) REFERENCES `lab_services` (`id`);

--
-- Ketidakleluasaan untuk tabel `lab_results`
--
ALTER TABLE `lab_results`
  ADD CONSTRAINT `lab_results_ibfk_1` FOREIGN KEY (`lab_order_id`) REFERENCES `lab_orders` (`id`);

--
-- Ketidakleluasaan untuk tabel `nurses`
--
ALTER TABLE `nurses`
  ADD CONSTRAINT `nurses_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `nurse_assessments`
--
ALTER TABLE `nurse_assessments`
  ADD CONSTRAINT `nurse_assessments_ibfk_1` FOREIGN KEY (`visit_id`) REFERENCES `visits` (`id`),
  ADD CONSTRAINT `nurse_assessments_ibfk_2` FOREIGN KEY (`nurse_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `nurse_assessments_ibfk_3` FOREIGN KEY (`assigned_poli_id`) REFERENCES `poli` (`id`),
  ADD CONSTRAINT `nurse_assessments_ibfk_4` FOREIGN KEY (`assigned_doctor_id`) REFERENCES `doctors` (`id`);

--
-- Ketidakleluasaan untuk tabel `prescriptions`
--
ALTER TABLE `prescriptions`
  ADD CONSTRAINT `prescriptions_ibfk_1` FOREIGN KEY (`visit_id`) REFERENCES `visits` (`id`),
  ADD CONSTRAINT `prescriptions_ibfk_2` FOREIGN KEY (`doctor_assessment_id`) REFERENCES `doctor_assessments` (`id`),
  ADD CONSTRAINT `prescriptions_ibfk_3` FOREIGN KEY (`medicine_id`) REFERENCES `medicines` (`id`);

--
-- Ketidakleluasaan untuk tabel `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`),
  ADD CONSTRAINT `visits_ibfk_2` FOREIGN KEY (`assigned_doctor_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
