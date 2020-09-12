-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 103.10.61.99
-- Generation Time: Sep 11, 2020 at 03:27 PM
-- Server version: 10.3.17-MariaDB-1:10.3.17+maria~bionic
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simon`
--

-- --------------------------------------------------------

--
-- Table structure for table `angkatan`
--

CREATE TABLE `angkatan` (
  `id` int(11) UNSIGNED NOT NULL,
  `sasaran_id` int(11) NOT NULL,
  `angkatan` varchar(255) DEFAULT NULL,
  `tgl_mulai` date DEFAULT NULL,
  `tgl_selesai` date DEFAULT NULL,
  `target_sasaran` int(11) DEFAULT NULL,
  `capaian_sasaran` int(11) DEFAULT NULL,
  `nilai` bigint(20) DEFAULT NULL,
  `tuk` varchar(255) DEFAULT NULL,
  `tuk_alamat` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `angkatan`
--

INSERT INTO `angkatan` (`id`, `sasaran_id`, `angkatan`, `tgl_mulai`, `tgl_selesai`, `target_sasaran`, `capaian_sasaran`, `nilai`, `tuk`, `tuk_alamat`, `created_at`, `updated_at`) VALUES
(38, 73, 'Diklat Penguatan KS Kabupaten Cirebon (Tahap 1) Tahun 2019', '2019-09-02', '2019-09-09', 158, 158, 0, 'Prima Resort Sangkanhurip Kuningan Hotel', 'Kabupaten Kuningan Jawa Barat', '2019-09-23 07:26:13', '2019-10-17 01:36:39'),
(39, 73, 'Diklat Penguatan KS Kabupaten Cirebon (Tahap 2) Tahun 2019', '2019-09-10', '2019-09-17', 115, 115, 0, 'Prima Resort Sangkanhurip Kuningan Hotel', 'Kabupaten Kuningan Jawa Barat', '2019-09-23 07:38:41', '2019-10-17 01:37:05'),
(40, 72, 'Diklat Penguatan KS Kabupaten Kuningan 1 (Tahap 3) Tahun 2019', '2019-09-18', '2019-09-25', 199, 199, 0, 'Prima Resort Sangkanhurip Kuningan Hotel', 'Kabupaten Kuningan', '2019-09-23 07:42:58', '2019-10-17 01:29:00'),
(41, 68, 'Angkatan 1', '2019-09-09', '2019-09-16', 200, NULL, 0, 'Hotel Bukit Indah', 'Jalan Raya Ciloto No 116 Puncak, Cipanas', '2019-09-24 09:59:14', '2019-09-24 09:59:14'),
(43, 68, 'Angkatan 3', '2019-09-25', '2019-10-02', 200, NULL, 0, 'Hotel Bukit Indah', 'Jalan Raya Ciloto No 116 Puncak, Cipanas', '2019-09-24 10:02:20', '2019-09-24 10:02:20'),
(44, 68, 'Angkatan 4', '2019-10-03', '2019-10-10', 200, NULL, 0, 'Hotel Bukit Indah', 'Jalan Raya Ciloto No 116 Puncak, Cipanas', '2019-09-24 10:03:00', '2019-09-24 10:03:00'),
(45, 68, 'Angkatan 5', '2019-10-11', '2019-10-18', 200, NULL, 0, 'Hotel Bukit Indah', 'Jalan Raya Ciloto No 116 Puncak, Cipanas', '2019-09-24 10:03:45', '2019-09-24 10:05:42'),
(46, 68, 'Angkatan 6', '2019-10-19', '2019-10-26', 200, NULL, 0, 'Hotel Bukit Indah', 'Jalan Raya Ciloto No 116 Puncak, Cipanas', '2019-09-24 10:04:29', '2019-09-24 10:05:57'),
(47, 68, 'Angkatan 7', '2019-10-27', '2019-11-03', 120, NULL, 0, 'Hotel Bukit Indah', 'Jalan Raya Ciloto No 116 Puncak, Cipanas', '2019-09-24 10:05:12', '2019-09-24 10:06:12'),
(64, 70, 'Angkatan I', '2019-02-09', '2019-09-09', 200, 200, 500000000, 'Hotel Puspa Sari', 'Jl. Raya Subang Ciater', '2019-10-12 02:33:40', '2019-10-12 02:33:40'),
(88, 74, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Provinsi Jawa Barat Angkatan 1', '2019-09-01', '2019-09-08', 200, 174, 628490, 'Sukajadi Hotel', 'Jl. Sukajadi No. 176 Kota Bandung', '2019-10-14 06:43:04', '2019-11-21 12:56:45'),
(89, 79, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Kota Cimahi', '2019-10-02', '2019-10-09', 72, 70, 234580, 'The Radiant Hotel', 'Jalan Pagerwangi Lembang, Kabupaten Bandung Barat', '2019-10-14 06:47:02', '2019-11-19 03:28:23'),
(90, 74, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Provinsi Jawa Barat Angkatan 2', '2019-09-02', '2019-09-09', 200, 161, 602840, 'Augusta Hotel', 'Jl. Cipaku No. 19 Dr.Setiabudi Kota Bandung', '2019-10-14 06:47:57', '2019-11-19 03:53:31'),
(91, 78, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Kabupaten Sumedang Angkatan 1', '2019-10-02', '2019-10-09', 196, 190, 608370, 'Grand Hani Hotel', 'Jalan Raya Lembang No. 15 Gandangkahuripan, Kabupaten Bandung Barat', '2019-10-14 06:49:08', '2019-11-19 03:27:34'),
(92, 74, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Provinsi Jawa Barat Angkatan 3', '2019-09-03', '2019-09-10', 200, 150, 582700, 'Isola Resort Hotel', 'Jl. Dr.Setiabudi No. 229 Kota Bandung', '2019-10-14 06:49:41', '2019-11-19 03:53:38'),
(93, 78, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerinta Tahun 2019 Kabupaten Sumedang Angkatan 2', '2019-10-03', '2019-10-10', 152, 152, 486720, 'Banana Inn Hotel', 'Jalan Dr. Setiabudhi No. 191 Kota Bandung', '2019-10-14 06:50:34', '2019-11-19 03:27:47'),
(94, 74, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Provinsi Jawa Barat Angkatan 4', '2019-09-04', '2019-09-11', 200, 162, 590950, 'Mutiara Hotel', 'Jl. Kebon Kawung No. 60, Pasir Kaliki, Kec. Cicendo Kota Bandung.', '2019-10-14 06:52:44', '2019-11-19 03:23:12'),
(95, 77, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Kabupaten Bandung Barat Angkatan 1', '2019-09-22', '2019-09-29', 160, 155, 497500, 'Grand Hani Hotel', 'Jalan Raya Lembang No. 15 Gandangkahuripan, kabupaten Bandung Barat', '2019-10-14 06:53:58', '2019-11-19 03:26:12'),
(96, 74, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Provinsi Jawa Barat Angkatan 5', '2019-09-12', '2019-09-19', 200, 169, 619310, 'Sukajadi Hotel', 'Sukajadi Hotel, Jl. Sukajadi No. 176 Kota Bandung', '2019-10-14 06:54:21', '2019-11-19 03:23:39'),
(97, 77, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerinta Tahun 2019 Kabupaten Bandung Barat Angkatan 2', '2019-09-23', '2019-09-30', 155, 120, 430095, 'The Radiant Hotel', 'Jalan Pagerwangi Lembang, Kabupaten Bandung Barat', '2019-10-14 06:55:38', '2019-11-19 03:26:27'),
(98, 74, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Provinsi Jawa Barat Angkatan 6', '2019-09-13', '2019-09-20', 200, 172, 626550, 'Isola Resort', 'Jl. Dr.Setiabudi No. 229 Kota Bandung', '2019-10-14 06:55:40', '2019-11-19 03:23:53'),
(99, 77, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerinta Tahun 2019 Kabupaten Bandung Barat Angkatan 3', '2019-09-24', '2019-10-01', 105, 90, 329625, 'Takasimaya Hotel', 'Jalan grand Hotel No. 35 Lembang, Kabupaten Bandung Barat', '2019-10-14 06:57:18', '2019-11-19 03:26:43'),
(100, 74, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Provinsi Jawa Barat Angkatan 7', '2019-09-14', '2019-09-21', 159, 164, 563325, 'Augusta Hotel', 'Jl. Cipaku No.19 Dr.Setiabudi Kota Bandung', '2019-10-14 06:58:58', '2019-11-19 03:24:12'),
(101, 72, 'Diklat Penguatan KS Kabupaten Kuningan 2 (Tahap 4) Tahun 2019', '2019-09-26', '2019-10-03', 199, 199, 0, 'Prima Resort Sangkanhurip Kuningan Hotel', 'Kabupaten Kuningan Jawa Barat', '2019-10-17 01:28:30', '2019-10-17 01:29:17'),
(102, 72, 'Diklat Penguatan KS Kabupaten Kuningan 3  (Tahap 5) Tahun 2019', '2019-10-04', '2019-10-11', 200, 200, 0, 'Prima Resort Sangkanhurip Kuningan Hotel', 'Kabupaen Kuningan Jawa Barat', '2019-10-17 01:30:59', '2019-10-17 01:30:59'),
(103, 72, 'Diklat Penguatan KS Kabupaten Kuningan 4 (Tahap 6) Tahun 2019', '2019-10-12', '2019-10-19', 146, 146, 0, 'Prima Resort Sangkanhurip Kuningan Hotel', 'Kabupaten Kuningan Jawa Barat', '2019-10-17 01:32:37', '2019-10-17 01:32:37'),
(106, 81, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Kabupaten Majalengka Angkatan 1', '2019-10-11', '2019-10-18', 200, 198, 632920, 'Ayong Hotel Kuningan', 'Jalan Linggarjati No. Linggarjati No. 14 Cilimus Kabupaten Kuningan', '2019-10-18 04:44:44', '2019-11-19 04:49:46'),
(107, 81, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Kabupaten Majalengka Angkatan 2', '2019-10-12', '2019-10-19', 200, 187, 617740, 'Wisma Pepabri', 'Jalan Linggarjati Cilimus Kabupaten Kuningan', '2019-10-18 04:45:53', '2019-11-19 03:29:37'),
(108, 81, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Kabupaten Majalengka Angkatan 3', '2019-10-13', '2019-10-20', 141, 137, 458995, 'Ayong Hotel Kuningan', 'Jalan Linggarjati No. 14 Cilimus Kabupaten Kuningan', '2019-10-18 04:47:10', '2019-11-19 03:29:51'),
(109, 82, '1', '2019-09-09', '2019-09-16', 200, 199, 0, 'Hotel Augusta', 'Jl. Raya Cipanas, Kab. Garut', '2019-10-18 06:23:36', '2019-10-18 06:23:36'),
(110, 82, '2', '2019-09-16', '2019-09-23', 200, 198, 0, 'Hotel Augusta', 'Jl. Raya Cipanas Kabupaten Garut', '2019-10-18 06:27:11', '2019-10-18 06:27:11'),
(114, 82, '4', '2019-09-30', '2019-10-07', 200, 191, 0, 'Hotel Augusta', 'Jl. Raya Cipanas, Kab. Garut', '2019-10-21 02:36:22', '2019-10-21 02:36:22'),
(115, 82, '3', '2019-09-23', '2019-09-30', 200, 192, 0, 'Hotel augusta', 'Jl. Raya Cipanas Kab. Garut', '2019-10-21 02:40:19', '2019-10-21 02:40:19'),
(116, 82, '5', '2019-10-07', '2019-10-14', 160, 158, 0, 'Hotel Augusta', 'jl. raya cipanas, kab Garut', '2019-10-21 02:42:35', '2019-10-21 02:42:35'),
(119, 64, '1', '2019-09-02', '2019-10-09', 99, 96, 319760949, 'Hotel Grand Mutiara', 'Jalan Raya Puncak KM. 75 No. 220, Cipayung Datar, Kec. Megamendung, Bogor Jawa Barat 16770', '2019-10-25 01:32:03', '2019-10-25 01:32:03'),
(120, 64, '2', '2019-09-05', '2019-09-12', 64, 64, 217182169, 'Hotel Grand Mutiara', 'Jalan Raya Puncak KM. 75 No. 220, Cipayung Datar, Kec. Megamendung, Bogor Jawa Barat 16770', '2019-10-25 01:36:58', '2019-10-25 01:36:58'),
(127, 62, '1', '2019-09-09', '2019-09-16', 200, 199, 616260598, 'Hotel Grand Prioritas', 'Jl.Raya Puncak Km.83 Cisarua Kec.Cisarua Bogor Jawa Barat 16750', '2019-10-25 01:56:59', '2019-10-25 01:56:59'),
(128, 62, '2', '2019-09-12', '2019-09-19', 200, 200, 617894898, 'Hotel Purnama', 'Jl Raya Puncak Km.75 No 220 Cipayung datar Kec. megamendung Bogor Jawa Barat 16770', '2019-10-25 01:58:06', '2019-10-25 01:58:06'),
(129, 62, '3', '2019-09-16', '2019-09-23', 175, 175, 557775448, 'Hotel Grand Prioritas', 'Jl Raya Puncak Km.83 Cisarua, Kec Cisarua, Bogor Jawa Barat 16750', '2019-10-25 01:59:17', '2019-10-25 01:59:17'),
(130, 62, '4', '2019-09-19', '2019-09-26', 175, 172, 545936424, 'Hotel Grand Mutiara', 'Jl. Raya Puncak KM 75, Jl.Habib Umar No.220, Cipayung Datar, Megamendung, Bogor, West Java 16770', '2019-10-25 02:00:49', '2019-10-25 02:00:49'),
(131, 62, '5', '2019-09-23', '2019-09-30', 200, 196, 609280798, 'Hotel Grand Prioritas', 'Jl Raya Puncak Km.83 Cisarua, Kec Cisarua, Bogor Jawa Barat 16750', '2019-10-25 02:02:04', '2019-10-25 02:02:04'),
(135, 62, '6', '2019-09-26', '2019-10-03', 175, 173, 549994413, 'Hotel Grand Mutiara', 'Jl. Raya Puncak KM 75, Jl.Habib Umar No.220, Cipayung Datar, Megamendung, Bogor, West Java 16770', '2019-10-31 01:08:51', '2019-10-31 01:08:51'),
(136, 62, '7', '2019-09-30', '2019-10-07', 200, 188, 591117898, 'Hotel Grand Prioritas', 'Jl Raya Puncak Km.83 Cisarua, Kec Cisarua, Bogor Jawa Barat 16750', '2019-10-31 02:20:37', '2019-10-31 02:20:37'),
(138, 62, '8', '2019-10-03', '2019-10-10', 120, 97, 326989820, 'Hotel Purnama', 'Jl Raya Puncak Km.75 No 220 Cipayung datar Kec. megamendung Bogor Jawa Barat 16770', '2019-11-01 06:20:35', '2019-11-01 06:20:35'),
(141, 68, 'Angkatan 2', '2019-09-17', '2019-09-24', 200, NULL, 0, 'Hotel Bukit Indah', 'Jalan Raya Ciloto No 116 Puncak, Cipanas', '2019-11-02 06:55:30', '2019-11-02 06:55:30'),
(144, 63, '1', '2019-10-07', '2019-10-14', 200, 200, 613692703, 'Hotel Grand Prioritas', 'Jalan Raya Puncak Km. 83, Cisarua, Kec. Cisarua, Bogor, Jawa Barat 16750', '2019-11-18 14:44:14', '2019-11-18 14:44:14'),
(145, 63, '2', '2019-10-10', '2019-10-17', 200, 200, 616992198, 'Hotel Grand Prioritas', 'Jalan Raya Puncak Km. 83, Cisarua, Kec. Cisarua, Bogor, Jawa Barat 16750', '2019-11-18 14:45:29', '2019-11-18 14:45:29'),
(146, 63, '3', '2019-10-14', '2019-10-21', 200, 200, 616919798, 'Hotel Grand Prioritas', 'Jalan Raya Puncak Km. 83, Cisarua, Kec. Cisarua, Bogor, Jawa Barat 16750', '2019-11-18 14:46:24', '2019-11-18 14:46:24'),
(147, 63, '4', '2019-10-17', '2019-10-24', 200, 200, 616856898, 'Hotel Grand Prioritas', 'Jalan Raya Puncak Km. 83, Cisarua, Kec. Cisarua, Bogor, Jawa Barat 16750', '2019-11-18 14:47:37', '2019-11-18 14:47:37'),
(148, 63, '5', '2019-10-21', '2019-10-28', 99, 99, 324686649, 'Hotel Grand Prioritas', 'Jalan Raya Puncak Km. 83, Cisarua, Kec. Cisarua, Bogor, Jawa Barat 16750', '2019-11-18 14:48:47', '2019-11-18 14:48:47'),
(149, 75, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Kabupaten Tasikmalaya Angkatan 1', '2019-10-21', '2019-10-28', 195, 191, 607325000, 'Banana Inn Hotel', 'Jalan Dr Setiabudhi No. 191 Kota Bandung', '2019-11-19 03:31:55', '2019-11-19 03:32:21'),
(150, 75, 'Diklat Pengautan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Kabupaten tasikmalaya Angkatan 2', '2019-10-22', '2019-10-29', 195, 189, 608435000, 'Grand Setiabudhi Hotel', 'Jalan Dr Setiabudhi no 130-131', '2019-11-19 03:33:52', '2019-11-19 03:33:52'),
(151, 75, 'Diklat Pengautan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Kabupaten Tasikmalaya Angkatan 3', '2019-10-23', '2019-10-30', 155, 153, 489535000, 'Augusta valley Hotel', 'Jalan Cipaku No. 19 Dr. Setiabudhi', '2019-11-19 03:37:39', '2019-11-19 03:37:39'),
(152, 75, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Kabupaten Tasikmlaya Angkatan 4', '2019-10-28', '2019-11-04', 152, 152, 486540000, 'Isola Resort UPI', 'Jalan Dr. Setiabudhi No. 229 Kota Bandung', '2019-11-19 03:38:56', '2019-11-19 03:39:15'),
(153, 75, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Kabupaten Tasikmalaya Angkatan 5', '2019-10-29', '2019-11-05', 152, 155, 493030000, 'Banana Inn Hotel', 'Jalan Dr. Setiabudhi No. 191 Kota Bandung', '2019-11-19 03:42:39', '2019-11-19 03:42:39'),
(154, 80, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Kota Tasikmalaya', '2019-10-30', '2019-11-06', 80, 80, 257230000, 'Grand Setiabudhi Hotel', 'Jalan Dr. Setiabudhi No. 130 - 131', '2019-11-19 03:45:21', '2019-11-19 03:45:21'),
(155, 76, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Kabupaten Karawang', '2019-11-06', '2019-11-13', 153, 151, 148700000, 'Grand Hani Hotel', 'Jalan Gandangkahuripan No. 150 Lembang', '2019-11-19 03:51:20', '2019-11-19 03:51:20'),
(156, 76, 'Diklat Penguatan Kepala Sekolah Bantuan Pemerintah Tahun 2019 Kabupaten Karawang Angkatan 2', '2019-11-07', '2019-11-14', 114, 115, 114480000, 'Takasimaya Hotel', 'jalan Grandhotel Lembang', '2019-11-19 03:52:56', '2019-11-19 03:52:56'),
(157, 65, 'Angkatan 1', '2019-10-07', '2019-10-14', 200, 200, 640387499, 'V Hotel and Recidence', 'Jl. Terusan Sutami III No.1A, Sukagalih, Kec. Sukajadi, Kota Bandung', '2020-01-02 08:58:13', '2020-01-02 08:58:13');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen_bapem_laporan`
--

CREATE TABLE `dokumen_bapem_laporan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `angkatan_id` int(11) NOT NULL,
  `kode_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kwitansi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `volume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keterangan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dokumen_bapem_laporan`
--

INSERT INTO `dokumen_bapem_laporan` (`id`, `angkatan_id`, `kode_dokumen`, `kwitansi`, `volume`, `satuan`, `catatan`, `file`, `status`, `keterangan`, `created_at`, `updated_at`) VALUES
(62, 60, '0211', NULL, '1', 'berkas', NULL, '19_60_0211-.pdf', 'Belum Dicek', '-', '2019-10-10 03:11:10', '2019-10-10 03:11:10'),
(63, 60, '0201', NULL, '12', 'orang', NULL, '19_60_0201-.pdf', 'Belum Dicek', '-', '2019-10-11 09:10:45', '2019-10-11 09:10:45'),
(64, 60, '0202', NULL, '3', 'orang', NULL, '19_60_0202-.pdf', 'Belum Dicek', '-', '2019-10-11 09:26:51', '2019-10-11 09:26:51'),
(65, 62, '0211', NULL, '1', 'berkas', NULL, '19_62_0211-.pdf', 'Belum Dicek', '-', '2019-10-11 10:39:24', '2019-10-11 10:39:24'),
(66, 51, '0201', NULL, '2', 'ORANG', NULL, '19_51_0201-.pdf', 'Belum Dicek', '-', '2019-10-12 08:22:33', '2019-10-12 08:22:33'),
(67, 51, '0201', NULL, '2', 'ORANG', NULL, '19_51_0201-.pdf', 'Belum Dicek', '-', '2019-10-12 08:24:15', '2019-10-12 08:24:15'),
(68, 51, '0201', NULL, '2', 'ORANG', NULL, '19_51_0201-.pdf', 'Belum Dicek', '-', '2019-10-12 08:25:30', '2019-10-12 08:25:30'),
(69, 51, '0201', NULL, '2', 'ORANG', NULL, '19_51_0201-.pdf', 'Belum Dicek', '-', '2019-10-12 08:34:53', '2019-10-12 08:34:53'),
(70, 51, '0201', NULL, '2', 'ORANG', NULL, '19_51_0201-.pdf', 'Belum Dicek', '-', '2019-10-12 08:35:41', '2019-10-12 08:35:41'),
(71, 51, '0201', NULL, '2', 'ORANG', NULL, '19_51_0201-.pdf', 'Belum Dicek', '-', '2019-10-12 08:37:17', '2019-10-12 08:37:17'),
(72, 50, '0201', NULL, '2', 'ORANG', NULL, '19_50_0201-.pdf', 'Belum Dicek', '-', '2019-10-12 09:25:45', '2019-10-12 09:25:45'),
(73, 50, '0201', NULL, '2', 'ORANG', NULL, '19_50_0201-.pdf', 'Belum Dicek', '-', '2019-10-12 09:27:00', '2019-10-12 09:27:00'),
(74, 50, '0201', NULL, '2', 'ORANG', NULL, '19_50_0201-.pdf', 'Belum Dicek', '-', '2019-10-12 09:59:35', '2019-10-12 09:59:35'),
(75, 50, '0201', NULL, '2', 'ORANG', NULL, '19_50_0201-.pdf', 'Belum Dicek', '-', '2019-10-12 10:00:56', '2019-10-12 10:00:56'),
(76, 50, '0215', NULL, '32', 'ORANG', NULL, '19_50_0215-.pdf', 'Belum Dicek', '-', '2019-10-12 10:20:54', '2019-10-12 10:20:54'),
(77, 50, '0215', NULL, '32', 'ORANG', NULL, '19_50_0215-.pdf', 'Belum Dicek', '-', '2019-10-12 10:21:38', '2019-10-12 10:21:38'),
(78, 51, '0215', NULL, '31', 'ORANG', NULL, '19_51_0215-.pdf', 'Belum Dicek', '-', '2019-10-12 10:35:04', '2019-10-12 10:35:04'),
(79, 51, '0215', NULL, '32', 'ORANG', NULL, '19_51_0215-.pdf', 'Belum Dicek', '-', '2019-10-12 10:35:46', '2019-10-12 10:35:46'),
(80, 51, '0215', NULL, '33', 'ORANG', NULL, '19_51_0215-.pdf', 'Belum Dicek', '-', '2019-10-12 10:36:33', '2019-10-12 10:36:33'),
(81, 51, '0212', NULL, '6', 'LEMBAR', NULL, '19_51_0212-.pdf', 'Belum Dicek', '-', '2019-10-12 10:52:51', '2019-10-12 10:52:51'),
(82, 50, '0212', NULL, '4', 'LEMBAR', NULL, '19_50_0212-.pdf', 'Belum Dicek', '-', '2019-10-12 10:54:24', '2019-10-12 10:54:24'),
(83, 51, '0209', NULL, '6', 'ORANG', NULL, '19_51_0209-.pdf', 'Belum Dicek', '-', '2019-10-12 11:31:02', '2019-10-12 11:31:02'),
(84, 51, '0209', NULL, '6', 'ORANG', NULL, '19_51_0209-.pdf', 'Belum Dicek', '-', '2019-10-12 11:31:56', '2019-10-12 11:31:56'),
(85, 50, '0209', NULL, '4', 'ORANG', NULL, '19_50_0209-.pdf', 'Belum Dicek', '-', '2019-10-12 11:41:47', '2019-10-12 11:41:47'),
(86, 51, '0202', NULL, '9', 'ORANG', NULL, '19_51_0202-.pdf', 'Belum Dicek', '-', '2019-10-12 11:53:27', '2019-10-12 11:53:27'),
(87, 41, '0204', '1', '5000000', 'Rupiah', NULL, '19_41_0204-1.pdf', 'Belum Dicek', '-', '2019-10-17 07:17:11', '2019-10-17 07:17:11'),
(88, 41, '0204', '2', '20.000.000', 'Rupiah', NULL, '19_41_0204-2.pdf', 'Belum Dicek', '-', '2019-10-17 07:18:29', '2019-10-17 07:18:29'),
(89, 41, '0204', '3', '1.250.000', 'Rupiah', NULL, '19_41_0204-3.pdf', 'Belum Dicek', '-', '2019-10-17 07:19:05', '2019-10-17 07:19:05'),
(90, 41, '0204', '4', '20.000.000', 'Rupiah', NULL, '19_41_0204-4.pdf', 'Belum Dicek', '-', '2019-10-17 07:19:43', '2019-10-17 07:19:43'),
(91, 41, '0204', '5', '4.000.000', 'Rupiah', NULL, '19_41_0204-5.pdf', 'Belum Dicek', '-', '2019-10-17 07:20:13', '2019-10-17 07:20:13'),
(92, 41, '0204', '6', '1.500.000', 'Rupiah', NULL, '19_41_0204-6.pdf', 'Belum Dicek', '-', '2019-10-17 07:20:44', '2019-10-17 07:20:44'),
(93, 41, '0205', NULL, '5.750.000', 'Rupiah', NULL, '19_41_0205-.pdf', 'Belum Dicek', '-', '2019-10-17 07:22:14', '2019-10-17 07:22:14'),
(94, 41, '0205', NULL, '900.000', 'Rupiah', NULL, '19_41_0205-.pdf', 'Belum Dicek', '-', '2019-10-17 07:22:37', '2019-10-17 07:22:37'),
(95, 41, '0206', NULL, '2.000.000', 'Rupiah', NULL, '19_41_0206-.pdf', 'Belum Dicek', '-', '2019-10-17 07:23:26', '2019-10-17 07:23:26'),
(96, 41, '0206', NULL, '48.000.000', 'Rupiah', NULL, '19_41_0206-.pdf', 'Belum Dicek', '-', '2019-10-17 07:23:59', '2019-10-17 07:23:59'),
(97, 41, '0207', NULL, '150.000', 'Rupiah', NULL, '19_41_0207-.pdf', 'Belum Dicek', '-', '2019-10-17 07:25:00', '2019-10-17 07:25:00'),
(98, 41, '0207', NULL, '700.000', 'Rupiah', NULL, '19_41_0207-.pdf', 'Belum Dicek', '-', '2019-10-17 07:25:38', '2019-10-17 07:25:38'),
(99, 41, '0207', NULL, '2.500.000', 'Rupiah', NULL, '19_41_0207-.pdf', 'Belum Dicek', '-', '2019-10-17 07:26:29', '2019-10-17 07:26:29'),
(100, 41, '0207', NULL, '109.250.000', 'Rupiah', NULL, '19_41_0207-.pdf', 'Belum Dicek', '-', '2019-10-17 07:28:29', '2019-10-17 07:28:29'),
(101, 41, '0207', NULL, '16.200.000', 'Rupiah', NULL, '19_41_0207-.pdf', 'Belum Dicek', '-', '2019-10-17 07:29:29', '2019-10-17 07:29:29'),
(102, 41, '0207', NULL, '3.280.000', 'Rupiah', NULL, '19_41_0207-.pdf', 'Belum Dicek', '-', '2019-10-17 07:30:29', '2019-10-17 07:30:29'),
(103, 41, '0207', NULL, '386.750.000', 'Rupiah', NULL, '19_41_0207-.rar', 'Belum Dicek', '-', '2019-10-17 07:36:36', '2019-10-17 07:36:36'),
(104, 41, '0207', NULL, '2.000.000', 'Rupiah', NULL, '19_41_0207-.pdf', 'Belum Dicek', '-', '2019-10-17 07:37:16', '2019-10-17 07:37:16'),
(105, 41, '0204', '7', '715.000', 'Rupiah', NULL, '19_41_0204-7.pdf', 'Belum Dicek', '-', '2019-10-17 07:37:57', '2019-10-17 07:37:57'),
(106, 41, '0207', NULL, '1.560.000', 'Rupiah', NULL, '19_41_0207-.pdf', 'Belum Dicek', '-', '2019-10-17 07:39:02', '2019-10-17 07:39:02'),
(107, 110, '0211', NULL, '1', 'berkas', NULL, '19_110_0211-.pdf', 'Belum Dicek', '-', '2019-10-18 06:29:27', '2019-10-18 06:29:27'),
(108, 41, '0213', NULL, '10.036.799', 'Rupiah', NULL, '19_41_0213-.pdf', 'Belum Dicek', '-', '2019-10-18 07:24:12', '2019-10-18 07:24:12'),
(109, 109, '0211', NULL, '1', 'berkas', NULL, '19_109_0211-.pdf', 'Belum Dicek', '-', '2019-10-21 02:29:17', '2019-10-21 02:29:17'),
(110, 113, '0211', NULL, '1', 'berkas', NULL, '19_113_0211-.pdf', 'Belum Dicek', '-', '2019-10-21 02:35:23', '2019-10-21 02:35:23'),
(111, 114, '0211', NULL, '1', 'berkas', NULL, '19_114_0211-.pdf', 'Belum Dicek', '-', '2019-10-21 02:39:17', '2019-10-21 02:39:17'),
(112, 115, '0211', NULL, '1', 'berkas', NULL, '19_115_0211-.pdf', 'Belum Dicek', '-', '2019-10-21 02:41:12', '2019-10-21 02:41:12'),
(113, 116, '0211', NULL, '1', 'berkas', NULL, '19_116_0211-.pdf', 'Belum Dicek', '-', '2019-10-21 02:43:08', '2019-10-21 02:43:08'),
(114, 116, '0209', NULL, '178', 'orang', NULL, '19_116_0209-.pdf', 'Belum Dicek', '-', '2019-10-21 02:44:45', '2019-10-21 02:44:45'),
(115, 38, '0211', NULL, '20', 'ORANG', '-ok', '19_38_0211-.pdf', 'Valid', '-', '2019-10-21 04:28:20', '2019-11-04 08:45:09'),
(116, 38, '0212', NULL, '20', 'Buah', '-ok', '19_38_0212-.pdf', 'Valid', '-', '2019-10-21 05:00:01', '2019-11-04 08:45:22'),
(117, 39, '0211', NULL, '16', 'ORANG', '-ok', '19_39_0211-.pdf', 'Valid', '-', '2019-10-21 05:07:09', '2019-11-04 08:47:45'),
(118, 39, '0212', NULL, '10', 'ORANG', '-ok', '19_39_0212-.pdf', 'Valid', '-', '2019-10-21 05:11:31', '2019-11-04 08:47:56'),
(119, 38, '0206', NULL, '10', 'ORANG', '-ok', '19_38_0206-.pdf', 'Valid', '-', '2019-10-21 07:21:55', '2019-11-04 08:46:01'),
(120, 38, '0205', NULL, '12', 'ORANG', '-ok', '19_38_0205-.pdf', 'Valid', '-', '2019-10-21 07:25:31', '2019-11-04 08:46:11'),
(121, 51, '0203', NULL, '8', 'Lembar', NULL, '19_51_0203-.pdf', 'Belum Dicek', '-', '2019-10-21 07:39:10', '2019-10-21 07:39:10'),
(122, 39, '0206', NULL, '8', 'ORANG', '-ok', '19_39_0206-.pdf', 'Valid', '-', '2019-10-21 07:45:57', '2019-11-04 08:48:44'),
(123, 39, '0205', NULL, '10', 'Orang', '-ok', '19_39_0205-.pdf', 'Valid', '-', '2019-10-21 07:48:29', '2019-11-04 08:48:54'),
(124, 50, '0203', NULL, '8', 'lembar', NULL, '19_50_0203-.pdf', 'Belum Dicek', '-', '2019-10-21 07:59:50', '2019-10-21 07:59:50'),
(125, 52, '0203', NULL, '8', 'Lembar', NULL, '19_52_0203-.pdf', 'Belum Dicek', '-', '2019-10-21 08:03:33', '2019-10-21 08:03:33'),
(126, 40, '0211', NULL, '24', 'Orang', '-ok', '19_40_0211-.pdf', 'Valid', '-', '2019-10-21 08:09:08', '2019-11-04 07:43:38'),
(127, 40, '0212', NULL, '10', 'Buah', '-ok', '19_40_0212-.pdf', 'Valid', '-', '2019-10-21 08:11:08', '2019-11-04 07:43:54'),
(129, 40, '0206', NULL, '12', 'Orang', '-ok', '19_40_0206-.pdf', 'Valid', '-', '2019-10-21 08:17:36', '2019-11-04 07:45:31'),
(130, 40, '0205', NULL, '14', 'Orang', '-ok', '19_40_0205-.pdf', 'Valid', '-', '2019-10-21 08:24:20', '2019-11-04 07:46:35'),
(131, 53, '0203', NULL, '8', 'Lembar', NULL, '19_53_0203-.pdf', 'Belum Dicek', '-', '2019-10-21 08:25:32', '2019-10-21 08:25:32'),
(132, 54, '0203', NULL, '8', 'Lembar', NULL, '19_54_0203-.pdf', 'Belum Dicek', '-', '2019-10-21 08:30:13', '2019-10-21 08:30:13'),
(133, 55, '0203', NULL, '8', 'Lembar', NULL, '19_55_0203-.pdf', 'Belum Dicek', '-', '2019-10-21 08:32:17', '2019-10-21 08:32:17'),
(134, 56, '0203', NULL, '8', 'Lembar', NULL, '19_56_0203-.pdf', 'Belum Dicek', '-', '2019-10-21 08:33:29', '2019-10-21 08:33:29'),
(135, 57, '0203', NULL, '8', 'Lembar', NULL, '19_57_0203-.pdf', 'Belum Dicek', '-', '2019-10-21 08:34:42', '2019-10-21 08:34:42'),
(136, 101, '0211', NULL, '14', 'Orang', '-ok', '19_101_0211-.pdf', 'Valid', '-', '2019-10-21 08:35:20', '2019-11-04 07:53:15'),
(137, 101, '0211', NULL, '14', 'Orang', '-ok', '19_101_0211-.pdf', 'Valid', '-', '2019-10-21 08:35:25', '2019-11-04 07:53:38'),
(138, 101, '0212', NULL, '10', 'Buah', '-ok', '19_101_0212-.pdf', 'Valid', '-', '2019-10-21 08:38:18', '2019-11-04 07:53:57'),
(139, 101, '0205', NULL, '14', 'Orang', '-ok', '19_101_0205-.pdf', 'Valid', '-', '2019-10-21 08:42:31', '2019-11-04 07:54:34'),
(140, 101, '0206', NULL, '12', 'Orang', '-ok', '19_101_0206-.pdf', 'Valid', '-', '2019-10-21 08:44:10', '2019-11-04 07:56:21'),
(141, 102, '0206', NULL, '12', 'Orang', '-ok', '19_102_0206-.pdf', 'Valid', '-', '2019-10-21 09:03:20', '2019-11-04 08:01:25'),
(142, 102, '0205', NULL, '14', 'Orang', '-ok', '19_102_0205-.pdf', 'Valid', '-', '2019-10-21 09:05:53', '2019-11-04 08:01:36'),
(143, 102, '0205', NULL, '14', 'ORANG', '-ok', '19_102_0205-.pdf', 'Valid', '-', '2019-10-21 09:07:21', '2019-11-04 08:01:55'),
(144, 102, '0211', NULL, '24', 'Orang', '-ok', '19_102_0211-.pdf', 'Valid', '-', '2019-10-21 09:13:01', '2019-11-04 08:02:51'),
(145, 102, '0212', NULL, '10', 'Buah', '-ok', '19_102_0212-.pdf', 'Valid', '-', '2019-10-21 09:14:00', '2019-11-04 08:02:22'),
(146, 58, '0203', NULL, '8', 'Lembar', NULL, '19_58_0203-.pdf', 'Belum Dicek', '-', '2019-10-21 10:11:22', '2019-10-21 10:11:22'),
(147, 59, '0203', NULL, '8', 'Lembar', NULL, '19_59_0203-.pdf', 'Belum Dicek', '-', '2019-10-21 10:15:13', '2019-10-21 10:15:13'),
(152, 104, '0209', NULL, '4', 'Lembar', NULL, '19_104_0209-.pdf', 'Belum Dicek', '-', '2019-10-22 02:10:33', '2019-10-22 02:10:33'),
(153, 104, '0209', NULL, '2', 'Lembar', NULL, '19_104_0209-.pdf', 'Belum Dicek', '-', '2019-10-22 02:11:49', '2019-10-22 02:11:49'),
(154, 104, '0209', NULL, '14', 'Lembar', NULL, '19_104_0209-.pdf', 'Belum Dicek', '-', '2019-10-22 02:14:10', '2019-10-22 02:14:10'),
(155, 104, '0212', NULL, '7', 'Lembar', NULL, '19_104_0212-.pdf', 'Belum Dicek', '-', '2019-10-22 02:20:44', '2019-10-22 02:20:44'),
(156, 104, '0202', NULL, '6', 'Lembar', NULL, '19_104_0202-.pdf', 'Belum Dicek', '-', '2019-10-22 02:23:02', '2019-10-22 02:23:02'),
(157, 104, '0202', NULL, '11', 'Lembar', NULL, '19_104_0202-.pdf', 'Belum Dicek', '-', '2019-10-22 02:27:58', '2019-10-22 02:27:58'),
(158, 104, '0201', NULL, '8', 'Lembar', NULL, '19_104_0201-.pdf', 'Belum Dicek', '-', '2019-10-22 02:30:59', '2019-10-22 02:30:59'),
(159, 104, '0201', NULL, '8', 'Lembar', NULL, '19_104_0201-.pdf', 'Belum Dicek', '-', '2019-10-22 02:40:08', '2019-10-22 02:40:08'),
(160, 104, '0201', NULL, '8', 'Lembar', NULL, '19_104_0201-.pdf', 'Belum Dicek', '-', '2019-10-22 02:40:48', '2019-10-22 02:40:48'),
(161, 104, '0201', NULL, '8', 'Lembar', NULL, '19_104_0201-.pdf', 'Belum Dicek', '-', '2019-10-22 02:41:39', '2019-10-22 02:41:39'),
(162, 104, '0201', NULL, '8', 'Lembar', NULL, '19_104_0201-.pdf', 'Belum Dicek', '-', '2019-10-22 02:42:29', '2019-10-22 02:42:29'),
(163, 104, '0201', NULL, '8', 'Lembar', NULL, '19_104_0201-.pdf', 'Belum Dicek', '-', '2019-10-22 02:47:02', '2019-10-22 02:47:02'),
(164, 104, '0201', NULL, '8', 'Lembar', NULL, '19_104_0201-.pdf', 'Belum Dicek', '-', '2019-10-22 02:48:34', '2019-10-22 02:48:34'),
(165, 104, '0201', NULL, '8', 'Lembar', NULL, '19_104_0201-.pdf', 'Belum Dicek', '-', '2019-10-22 02:49:55', '2019-10-22 02:49:55'),
(166, 104, '0201', NULL, '8', 'Lembar', NULL, '19_104_0201-.pdf', 'Belum Dicek', '-', '2019-10-22 02:50:48', '2019-10-22 02:50:48'),
(167, 104, '0201', NULL, '8', 'Lembar', NULL, '19_104_0201-.pdf', 'Belum Dicek', '-', '2019-10-22 02:52:03', '2019-10-22 02:52:03'),
(168, 38, '0207', NULL, '180', 'Orang', '-ok', '19_38_0207-.pdf', 'Valid', '-', '2019-10-24 02:25:05', '2019-11-04 08:46:22'),
(169, 38, '0208', NULL, '5', 'Eksemplar', '-ok', '19_38_0208-.pdf', 'Valid', '-', '2019-10-24 02:33:05', '2019-11-04 08:46:42'),
(170, 39, '0207', NULL, '129', 'Orang', '-ok', '19_39_0207-.pdf', 'Valid', '-', '2019-10-24 02:51:51', '2019-11-04 08:49:11'),
(171, 39, '0208', NULL, '5', 'Eksemplar', '-ok', '19_39_0208-.pdf', 'Valid', '-', '2019-10-24 02:56:03', '2019-11-04 08:49:25'),
(172, 40, '0215', NULL, '200', 'Orang', '-ok', '19_40_0215-.pdf', 'Valid', '-', '2019-10-24 03:30:31', '2019-11-04 07:47:07'),
(173, 40, '0208', NULL, '221', 'Orang', '-ok', '19_40_0208-.pdf', 'Valid', '-', '2019-10-24 03:32:40', '2019-11-04 07:50:47'),
(174, 40, '0207', NULL, '225', 'Orang', '-ok', '19_40_0207-.pdf', 'Valid', '-', '2019-10-24 03:42:53', '2019-11-04 07:49:03'),
(175, 101, '0207', NULL, '221', 'Orang', '-ok', '19_101_0207-.pdf', 'Valid', '-', '2019-10-24 03:51:24', '2019-11-04 07:58:52'),
(176, 101, '0208', NULL, '221', 'Orang', '-ok', '19_101_0208-.pdf', 'Valid', '-', '2019-10-24 03:53:26', '2019-11-04 07:59:30'),
(177, 101, '0215', NULL, '199', 'Orang', '-ok', '19_101_0215-.pdf', 'Valid', '-', '2019-10-24 03:55:52', '2019-11-04 08:00:00'),
(178, 102, '0208', NULL, '221', 'Pax/Orang', '-ok', '19_102_0208-.pdf', 'Valid', '-', '2019-10-24 04:06:35', '2019-11-04 08:03:07'),
(179, 103, '0211', NULL, '166', 'Orang', '-ok', '19_103_0211-.pdf', 'Valid', '-', '2019-10-24 04:14:55', '2019-11-04 08:04:05'),
(180, 103, '0215', NULL, '146', 'Orang', '-ok', '19_103_0215-.pdf', 'Valid', '-', '2019-10-24 04:18:22', '2019-11-04 08:04:18'),
(181, 103, '0212', NULL, '10', 'buah', '-ok', '19_103_0212-.pdf', 'Valid', '-', '2019-10-24 04:25:46', '2019-11-04 08:07:15'),
(182, 109, '0201', NULL, '221', 'orang', NULL, '19_109_0201-.pdf', 'Belum Dicek', '-', '2019-10-24 05:00:52', '2019-10-24 05:00:52'),
(183, 109, '0209', NULL, '222', 'orang', NULL, '19_109_0209-.pdf', 'Belum Dicek', '-', '2019-10-24 05:02:56', '2019-10-24 05:02:56'),
(184, 109, '0212', NULL, '1', 'berkas', NULL, '19_109_0212-.pdf', 'Belum Dicek', '-', '2019-10-24 05:04:36', '2019-10-24 05:04:36'),
(185, 109, '0202', NULL, '3', 'orang', NULL, '19_109_0202-.pdf', 'Belum Dicek', '-', '2019-10-24 05:07:02', '2019-10-24 05:07:02'),
(186, 110, '0201', NULL, '220', 'orang', NULL, '19_110_0201-.pdf', 'Belum Dicek', '-', '2019-10-24 05:08:37', '2019-10-24 05:08:37'),
(187, 110, '0202', NULL, '3', 'orang', NULL, '19_110_0202-.pdf', 'Belum Dicek', '-', '2019-10-24 05:11:44', '2019-10-24 05:11:44'),
(188, 110, '0209', NULL, '222', 'orang', NULL, '19_110_0209-.pdf', 'Belum Dicek', '-', '2019-10-24 05:20:30', '2019-10-24 05:20:30'),
(189, 38, '0209', NULL, '178', 'Orang', '-ok', '19_38_0209-.pdf', 'Valid', '-', '2019-10-24 05:21:09', '2019-11-04 08:46:59'),
(190, 110, '0212', NULL, '1', 'berkas', NULL, '19_110_0212-.pdf', 'Belum Dicek', '-', '2019-10-24 05:21:44', '2019-10-24 05:21:44'),
(191, 115, '0202', NULL, '3', 'orang', NULL, '19_115_0202-.pdf', 'Belum Dicek', '-', '2019-10-24 05:22:56', '2019-10-24 05:22:56'),
(192, 115, '0209', NULL, '222', 'orang', NULL, '19_115_0209-.pdf', 'Belum Dicek', '-', '2019-10-24 05:23:54', '2019-10-24 05:23:54'),
(193, 114, '0209', NULL, '222', 'orang', NULL, '19_114_0209-.pdf', 'Belum Dicek', '-', '2019-10-24 05:35:35', '2019-10-24 05:35:35'),
(194, 114, '0202', NULL, '3', 'orang', NULL, '19_114_0202-.pdf', 'Belum Dicek', '-', '2019-10-24 05:36:00', '2019-10-24 05:36:00'),
(195, 115, '0201', NULL, '214', 'orang', NULL, '19_115_0201-.pdf', 'Belum Dicek', '-', '2019-10-24 06:00:51', '2019-10-24 06:00:51'),
(196, 115, '0201', NULL, '12', 'orang', NULL, '19_115_0201-.pdf', 'Belum Dicek', '-', '2019-10-24 06:16:38', '2019-10-24 06:16:38'),
(197, 115, '0201', NULL, '10', 'orang', NULL, '19_115_0201-.pdf', 'Belum Dicek', '-', '2019-10-24 06:23:30', '2019-10-24 06:23:30'),
(198, 115, '0212', NULL, '1', 'berkas', NULL, '19_115_0212-.pdf', 'Belum Dicek', '-', '2019-10-24 06:36:33', '2019-10-24 06:36:33'),
(199, 114, '0201', NULL, '10', 'orang', NULL, '19_114_0201-.pdf', 'Belum Dicek', '-', '2019-10-24 06:42:34', '2019-10-24 06:42:34'),
(200, 114, '0201', NULL, '191', 'orang', NULL, '19_114_0201-.pdf', 'Belum Dicek', '-', '2019-10-24 06:45:19', '2019-10-24 06:45:19'),
(201, 114, '0201', NULL, '12', 'orang', NULL, '19_114_0201-.pdf', 'Belum Dicek', '-', '2019-10-24 06:46:46', '2019-10-24 06:46:46'),
(202, 114, '0212', NULL, '1', 'berkas', NULL, '19_114_0212-.pdf', 'Belum Dicek', '-', '2019-10-24 06:57:23', '2019-10-24 06:57:23'),
(207, 129, '0203', NULL, '8', 'Lembar', NULL, '19_129_0203-.pdf', 'Belum Dicek', '-', '2019-10-25 02:08:00', '2019-10-25 02:08:00'),
(210, 132, '0203', NULL, '8', 'Lembar', NULL, '19_132_0203-.pdf', 'Belum Dicek', '-', '2019-10-25 02:21:49', '2019-10-25 02:21:49'),
(211, 133, '0203', NULL, '8', 'Lembar', NULL, '19_133_0203-.pdf', 'Belum Dicek', '-', '2019-10-25 02:22:31', '2019-10-25 02:22:31'),
(212, 134, '0203', NULL, '8', 'Lembar', NULL, '19_134_0203-.pdf', 'Belum Dicek', '-', '2019-10-25 02:30:57', '2019-10-25 02:30:57'),
(213, 119, '0211', NULL, '6', 'Lembar', NULL, '19_119_0211-.pdf', 'Belum Dicek', '-', '2019-10-25 02:50:55', '2019-10-25 02:50:55'),
(214, 119, '0212', NULL, '6', 'Lembar', NULL, '19_119_0212-.pdf', 'Belum Dicek', '-', '2019-10-25 02:54:52', '2019-10-25 02:54:52'),
(215, 125, '0202', NULL, '5', 'Orang', NULL, '19_125_0202-.pdf', 'Belum Dicek', '-', '2019-10-25 03:24:47', '2019-10-25 03:24:47'),
(216, 120, '0211', NULL, '5', 'Lembar', NULL, '19_120_0211-.pdf', 'Belum Dicek', '-', '2019-10-25 04:37:27', '2019-10-25 04:37:27'),
(217, 119, '0202', NULL, '5', 'Orang', NULL, '19_119_0202-.pdf', 'Belum Dicek', '-', '2019-10-25 06:00:39', '2019-10-25 06:00:39'),
(218, 119, '0209', NULL, '110', 'Orang', NULL, '19_119_0209-.pdf', 'Belum Dicek', '-', '2019-10-25 06:53:34', '2019-10-25 06:53:34'),
(219, 120, '0212', NULL, '4', 'Lembar', NULL, '19_120_0212-.pdf', 'Belum Dicek', '-', '2019-10-25 06:59:12', '2019-10-25 06:59:12'),
(220, 120, '0209', NULL, '74', 'Orang', NULL, '19_120_0209-.pdf', 'Belum Dicek', '-', '2019-10-25 07:19:57', '2019-10-25 07:19:57'),
(221, 120, '0202', NULL, '5', 'Orang', NULL, '19_120_0202-.pdf', 'Belum Dicek', '-', '2019-10-25 07:26:15', '2019-10-25 07:26:15'),
(222, 120, '0201', NULL, '74', 'Orang', NULL, '19_120_0201-.pdf', 'Belum Dicek', '-', '2019-10-25 09:10:19', '2019-10-25 09:10:19'),
(223, 127, '0211', NULL, '8', 'Lembar', NULL, '19_127_0211-.pdf', 'Belum Dicek', '-', '2019-10-25 09:15:02', '2019-10-25 09:15:02'),
(224, 128, '0211', NULL, '8', 'Lembar', NULL, '19_128_0211-.pdf', 'Belum Dicek', '-', '2019-10-25 09:19:03', '2019-10-25 09:19:03'),
(225, 120, '0210', NULL, '3', 'Lembar', NULL, '19_120_0210-.pdf', 'Belum Dicek', '-', '2019-10-26 04:48:01', '2019-10-26 04:48:01'),
(226, 127, '0209', NULL, '16', 'Lembar', NULL, '19_127_0209-.pdf', 'Belum Dicek', '-', '2019-10-26 05:53:00', '2019-10-26 05:53:00'),
(227, 127, '0202', NULL, '5', 'Orang', NULL, '19_127_0202-.pdf', 'Belum Dicek', '-', '2019-10-26 06:15:22', '2019-10-26 06:15:22'),
(228, 127, '0202', NULL, '5', 'Orang', NULL, '19_127_0202-.pdf', 'Belum Dicek', '-', '2019-10-26 06:21:06', '2019-10-26 06:21:06'),
(229, 127, '0212', NULL, '12', 'Lembar', NULL, '19_127_0212-.pdf', 'Belum Dicek', '-', '2019-10-26 13:32:44', '2019-10-26 13:32:44'),
(230, 127, '0215', NULL, '18', 'Lembar', NULL, '19_127_0215-.pdf', 'Belum Dicek', '-', '2019-10-26 13:34:42', '2019-10-26 13:34:42'),
(231, 128, '0215', NULL, '17', 'Lembar', NULL, '19_128_0215-.pdf', 'Belum Dicek', '-', '2019-10-26 13:53:05', '2019-10-26 13:53:05'),
(232, 128, '0202', NULL, '5', 'Orang', NULL, '19_128_0202-.pdf', 'Belum Dicek', '-', '2019-10-26 15:27:34', '2019-10-26 15:27:34'),
(233, 129, '0211', NULL, '8', 'Lembar', NULL, '19_129_0211-.pdf', 'Belum Dicek', '-', '2019-10-27 02:50:08', '2019-10-27 02:50:08'),
(234, 130, '0211', NULL, '8', 'Lembar', NULL, '19_130_0211-.pdf', 'Belum Dicek', '-', '2019-10-27 02:51:22', '2019-10-27 02:51:22'),
(235, 131, '0211', NULL, '8', 'Lembar', NULL, '19_131_0211-.pdf', 'Belum Dicek', '-', '2019-10-27 02:52:45', '2019-10-27 02:52:45'),
(236, 132, '0211', NULL, '8', 'Lembar', NULL, '19_132_0211-.pdf', 'Belum Dicek', '-', '2019-10-27 02:53:29', '2019-10-27 02:53:29'),
(237, 133, '0211', NULL, '8', 'Lembar', NULL, '19_133_0211-.pdf', 'Belum Dicek', '-', '2019-10-27 02:54:13', '2019-10-27 02:54:13'),
(238, 134, '0211', NULL, '6', 'Lembar', NULL, '19_134_0211-.pdf', 'Belum Dicek', '-', '2019-10-27 02:55:15', '2019-10-27 02:55:15'),
(239, 121, '0211', NULL, '8', 'Lembar', NULL, '19_121_0211-.pdf', 'Belum Dicek', '-', '2019-10-27 02:56:45', '2019-10-27 02:56:45'),
(240, 121, '0215', NULL, '12', 'Lembar', NULL, '19_121_0215-.pdf', 'Belum Dicek', '-', '2019-10-27 02:58:39', '2019-10-27 02:58:39'),
(241, 121, '0212', NULL, '7', 'Lembar', NULL, '19_121_0212-.pdf', 'Belum Dicek', '-', '2019-10-27 02:59:39', '2019-10-27 02:59:39'),
(242, 122, '0211', NULL, '8', 'Lembar', NULL, '19_122_0211-.pdf', 'Belum Dicek', '-', '2019-10-27 04:27:41', '2019-10-27 04:27:41'),
(243, 123, '0211', NULL, '8', 'Lembar', NULL, '19_123_0211-.pdf', 'Belum Dicek', '-', '2019-10-27 04:28:45', '2019-10-27 04:28:45'),
(244, 125, '0211', NULL, '8', 'Lembar', NULL, '19_125_0211-.pdf', 'Belum Dicek', '-', '2019-10-27 04:30:00', '2019-10-27 04:30:00'),
(245, 126, '0212', NULL, '3', 'Lembar', NULL, '19_126_0212-.pdf', 'Belum Dicek', '-', '2019-10-27 06:23:18', '2019-10-27 06:23:18'),
(246, 129, '0212', NULL, '6', 'Lembar', NULL, '19_129_0212-.pdf', 'Belum Dicek', '-', '2019-10-27 07:07:41', '2019-10-27 07:07:41'),
(247, 128, '0209', NULL, '19', 'Lembar', NULL, '19_128_0209-.pdf', 'Belum Dicek', '-', '2019-10-28 06:51:39', '2019-10-28 06:51:39'),
(248, 109, '0215', NULL, '199', 'orang', NULL, '19_109_0215-.pdf', 'Belum Dicek', '-', '2019-10-28 09:35:53', '2019-10-28 09:35:53'),
(249, 110, '0215', NULL, '198', 'orang', NULL, '19_110_0215-.pdf', 'Belum Dicek', '-', '2019-10-28 09:36:36', '2019-10-28 09:36:36'),
(250, 115, '0215', NULL, '192', 'orang', NULL, '19_115_0215-.pdf', 'Belum Dicek', '-', '2019-10-28 09:37:37', '2019-10-28 09:37:37'),
(251, 114, '0215', NULL, '191', 'orang', NULL, '19_114_0215-.pdf', 'Belum Dicek', '-', '2019-10-28 09:38:23', '2019-10-28 09:38:23'),
(252, 116, '0215', NULL, '158', 'orang', NULL, '19_116_0215-.pdf', 'Belum Dicek', '-', '2019-10-28 09:41:16', '2019-10-28 09:41:16'),
(253, 127, '0210', NULL, '2', 'Lembar', NULL, '19_127_0210-.pdf', 'Belum Dicek', '-', '2019-10-28 12:13:33', '2019-10-28 12:13:33'),
(254, 128, '0212', NULL, '5', 'Lembar', NULL, '19_128_0212-.pdf', 'Belum Dicek', '-', '2019-10-28 13:13:32', '2019-10-28 13:13:32'),
(255, 129, '0202', NULL, '5', 'Orang', NULL, '19_129_0202-.pdf', 'Belum Dicek', '-', '2019-10-28 13:18:40', '2019-10-28 13:18:40'),
(256, 128, '0210', NULL, '2', 'Lembar', NULL, '19_128_0210-.pdf', 'Belum Dicek', '-', '2019-10-29 01:58:01', '2019-10-29 01:58:01'),
(257, 129, '0209', NULL, '17', 'Lembar', NULL, '19_129_0209-.pdf', 'Belum Dicek', '-', '2019-10-29 02:17:23', '2019-10-29 02:17:23'),
(258, 129, '0210', NULL, '2', 'Lembar', NULL, '19_129_0210-.pdf', 'Belum Dicek', '-', '2019-10-29 02:46:15', '2019-10-29 02:46:15'),
(259, 129, '0215', NULL, '10', 'Lembar', NULL, '19_129_0215-.pdf', 'Belum Dicek', '-', '2019-10-29 02:54:19', '2019-10-29 02:54:19'),
(260, 130, '0212', NULL, '5', 'Lembar', NULL, '19_130_0212-.pdf', 'Belum Dicek', '-', '2019-10-29 02:58:21', '2019-10-29 02:58:21'),
(261, 130, '0215', NULL, '15', 'Lembar', NULL, '19_130_0215-.pdf', 'Belum Dicek', '-', '2019-10-29 03:10:06', '2019-10-29 03:10:06'),
(262, 130, '0202', NULL, '5', 'Orang', NULL, '19_130_0202-.pdf', 'Belum Dicek', '-', '2019-10-29 03:13:13', '2019-10-29 03:13:13'),
(263, 130, '0209', NULL, '18', 'Lembar', NULL, '19_130_0209-.pdf', 'Belum Dicek', '-', '2019-10-29 03:35:07', '2019-10-29 03:35:07'),
(264, 130, '0210', NULL, '2', 'Lembar', NULL, '19_130_0210-.pdf', 'Belum Dicek', '-', '2019-10-29 03:56:15', '2019-10-29 03:56:15'),
(265, 131, '0209', NULL, '18', 'Lembar', NULL, '19_131_0209-.pdf', 'Belum Dicek', '-', '2019-10-29 04:27:30', '2019-10-29 04:27:30'),
(266, 131, '0209', NULL, '18', 'Lembar', NULL, '19_131_0209-.pdf', 'Belum Dicek', '-', '2019-10-29 04:36:18', '2019-10-29 04:36:18'),
(267, 131, '0210', NULL, '2', 'Lembar', NULL, '19_131_0210-.pdf', 'Belum Dicek', '-', '2019-10-29 04:53:14', '2019-10-29 04:53:14'),
(268, 131, '0202', NULL, '5', 'Orang', NULL, '19_131_0202-.pdf', 'Belum Dicek', '-', '2019-10-29 05:11:24', '2019-10-29 05:11:24'),
(269, 131, '0212', NULL, '11', 'Lembar', NULL, '19_131_0212-.pdf', 'Belum Dicek', '-', '2019-10-29 05:13:03', '2019-10-29 05:13:03'),
(270, 131, '0215', NULL, '16', 'Lembar', NULL, '19_131_0215-.pdf', 'Belum Dicek', '-', '2019-10-29 05:16:37', '2019-10-29 05:16:37'),
(271, 132, '0209', NULL, '17', 'Lembar', NULL, '19_132_0209-.pdf', 'Belum Dicek', '-', '2019-10-29 06:05:42', '2019-10-29 06:05:42'),
(272, 132, '0212', NULL, '5', 'Lembar', NULL, '19_132_0212-.pdf', 'Belum Dicek', '-', '2019-10-29 11:41:41', '2019-10-29 11:41:41'),
(273, 132, '0210', NULL, '2', 'Lembar', NULL, '19_132_0210-.pdf', 'Belum Dicek', '-', '2019-10-29 11:43:58', '2019-10-29 11:43:58'),
(274, 132, '0211', NULL, '8', 'Lembar', NULL, '19_132_0211-.pdf', 'Belum Dicek', '-', '2019-10-29 12:49:21', '2019-10-29 12:49:21'),
(275, 116, '0211', NULL, '1', 'berkas', NULL, '19_116_0211-.pdf', 'Belum Dicek', '-', '2019-10-30 08:09:39', '2019-10-30 08:09:39'),
(276, 116, '0202', NULL, '3', 'orang', NULL, '19_116_0202-.pdf', 'Belum Dicek', '-', '2019-10-30 08:10:08', '2019-10-30 08:10:08'),
(277, 116, '0209', NULL, '178', 'orang', NULL, '19_116_0209-.pdf', 'Belum Dicek', '-', '2019-10-30 08:11:14', '2019-10-30 08:11:14'),
(278, 116, '0201', NULL, '10', 'orang', NULL, '19_116_0201-.pdf', 'Belum Dicek', '-', '2019-10-30 08:11:52', '2019-10-30 08:11:52'),
(279, 116, '0201', NULL, '8', 'orang', NULL, '19_116_0201-.pdf', 'Belum Dicek', '-', '2019-10-30 08:18:51', '2019-10-30 08:18:51'),
(280, 116, '0212', NULL, '1', 'berkas', NULL, '19_116_0212-.pdf', 'Belum Dicek', '-', '2019-10-30 08:27:34', '2019-10-30 08:27:34'),
(281, 135, '0203', NULL, '8', 'Lembar', NULL, '19_135_0203-.pdf', 'Belum Dicek', '-', '2019-10-31 01:09:55', '2019-10-31 01:09:55'),
(282, 135, '0209', NULL, '17', 'Lembar', NULL, '19_135_0209-.pdf', 'Belum Dicek', '-', '2019-10-31 01:11:20', '2019-10-31 01:11:20'),
(283, 135, '0211', NULL, '8', 'Lembar', NULL, '19_135_0211-.pdf', 'Belum Dicek', '-', '2019-10-31 01:12:53', '2019-10-31 01:12:53'),
(284, 135, '0202', NULL, '5', 'Orang', NULL, '19_135_0202-.pdf', 'Belum Dicek', '-', '2019-10-31 01:30:28', '2019-10-31 01:30:28'),
(285, 135, '0212', NULL, '5', 'Lembar', NULL, '19_135_0212-.pdf', 'Belum Dicek', '-', '2019-10-31 01:31:34', '2019-10-31 01:31:34'),
(286, 135, '0210', NULL, '2', 'Lembar', NULL, '19_135_0210-.pdf', 'Belum Dicek', '-', '2019-10-31 01:37:52', '2019-10-31 01:37:52'),
(287, 135, '0215', NULL, '17', 'Lembar', NULL, '19_135_0215-.pdf', 'Belum Dicek', '-', '2019-10-31 01:45:26', '2019-10-31 01:45:26'),
(289, 136, '0212', NULL, '14', 'Lembar', NULL, '19_136_0212-.pdf', 'Belum Dicek', '-', '2019-10-31 02:29:14', '2019-10-31 02:29:14'),
(290, 136, '0211', NULL, '8', 'Lembar', NULL, '19_136_0211-.pdf', 'Belum Dicek', '-', '2019-10-31 03:40:17', '2019-10-31 03:40:17'),
(291, 136, '0215', NULL, '16', 'Lembar', NULL, '19_136_0215-.pdf', 'Belum Dicek', '-', '2019-10-31 03:48:54', '2019-10-31 03:48:54'),
(292, 136, '0209', NULL, '16', 'Lembar', NULL, '19_136_0209-.pdf', 'Belum Dicek', '-', '2019-10-31 04:54:08', '2019-10-31 04:54:08'),
(293, 136, '0210', NULL, '2', 'Lembar', NULL, '19_136_0210-.pdf', 'Belum Dicek', '-', '2019-10-31 06:21:03', '2019-10-31 06:21:03'),
(294, 136, '0202', NULL, '5', 'Orang', NULL, '19_136_0202-.pdf', 'Belum Dicek', '-', '2019-10-31 07:21:31', '2019-10-31 07:21:31'),
(295, 137, '0212', NULL, '5', 'Lembar', NULL, '19_137_0212-.pdf', 'Belum Dicek', '-', '2019-10-31 07:48:50', '2019-10-31 07:48:50'),
(296, 137, '0211', NULL, '6', 'Lembar', NULL, '19_137_0211-.pdf', 'Belum Dicek', '-', '2019-10-31 07:50:10', '2019-10-31 07:50:10'),
(297, 137, '0203', NULL, '8', 'Lembar', NULL, '19_137_0203-.pdf', 'Belum Dicek', '-', '2019-10-31 07:50:54', '2019-10-31 07:50:54'),
(298, 137, '0202', NULL, '5', 'Orang', NULL, '19_137_0202-.pdf', 'Belum Dicek', '-', '2019-10-31 09:38:12', '2019-10-31 09:38:12'),
(299, 137, '0215', NULL, '11', 'Lembar', NULL, '19_137_0215-.pdf', 'Belum Dicek', '-', '2019-10-31 09:44:29', '2019-10-31 09:44:29'),
(300, 137, '0210', NULL, '2', 'Lembar', NULL, '19_137_0210-.pdf', 'Belum Dicek', '-', '2019-10-31 09:49:44', '2019-10-31 09:49:44'),
(301, 137, '0209', NULL, '13', 'Lembar', NULL, '19_137_0209-.pdf', 'Belum Dicek', '-', '2019-11-01 05:29:43', '2019-11-01 05:29:43'),
(302, 121, '0202', NULL, '5', 'Orang', NULL, '19_121_0202-.pdf', 'Belum Dicek', '-', '2019-11-01 05:47:24', '2019-11-01 05:47:24'),
(303, 138, '0202', NULL, '5', 'Orang', NULL, '19_138_0202-.pdf', 'Belum Dicek', '-', '2019-11-01 06:22:55', '2019-11-01 06:22:55'),
(304, 138, '0209', NULL, '13', 'Lembar', NULL, '19_138_0209-.pdf', 'Belum Dicek', '-', '2019-11-01 06:24:01', '2019-11-01 06:24:01'),
(305, 138, '0210', NULL, '2', 'Lembar', NULL, '19_138_0210-.pdf', 'Belum Dicek', '-', '2019-11-01 06:25:12', '2019-11-01 06:25:12'),
(306, 138, '0211', NULL, '6', 'Lembar', NULL, '19_138_0211-.pdf', 'Belum Dicek', '-', '2019-11-01 06:26:10', '2019-11-01 06:26:10'),
(307, 138, '0212', NULL, '5', 'Lembar', NULL, '19_138_0212-.pdf', 'Belum Dicek', '-', '2019-11-01 06:26:54', '2019-11-01 06:26:54'),
(308, 138, '0215', NULL, '11', 'Lembar', NULL, '19_138_0215-.pdf', 'Belum Dicek', '-', '2019-11-01 06:27:44', '2019-11-01 06:27:44'),
(310, 121, '0209', NULL, '17', 'Lembar', NULL, '19_121_0209-.pdf', 'Belum Dicek', '-', '2019-11-01 09:25:57', '2019-11-01 09:25:57'),
(311, 121, '0210', NULL, '3', 'Lembar', NULL, '19_121_0210-.pdf', 'Belum Dicek', '-', '2019-11-02 01:51:35', '2019-11-02 01:51:35'),
(312, 122, '0210', NULL, '3', 'Lembar', NULL, '19_122_0210-.pdf', 'Belum Dicek', '-', '2019-11-02 02:17:50', '2019-11-02 02:17:50'),
(313, 122, '0212', NULL, '7', 'Lembar', NULL, '19_122_0212-.pdf', 'Belum Dicek', '-', '2019-11-02 03:08:13', '2019-11-02 03:08:13'),
(314, 122, '0215', NULL, '12', 'Lembar', NULL, '19_122_0215-.pdf', 'Belum Dicek', '-', '2019-11-02 03:13:01', '2019-11-02 03:13:01'),
(315, 122, '0209', NULL, '18', 'Lembar', NULL, '19_122_0209-.pdf', 'Belum Dicek', '-', '2019-11-02 03:31:51', '2019-11-02 03:31:51'),
(316, 122, '0202', NULL, '5', 'Orang', NULL, '19_122_0202-.pdf', 'Belum Dicek', '-', '2019-11-02 03:36:20', '2019-11-02 03:36:20'),
(317, 139, '0202', NULL, '5', 'Orang', NULL, '19_139_0202-.pdf', 'Belum Dicek', '-', '2019-11-02 03:59:07', '2019-11-02 03:59:07'),
(318, 139, '0209', NULL, '18', 'Lembar', NULL, '19_139_0209-.pdf', 'Belum Dicek', '-', '2019-11-02 03:59:57', '2019-11-02 03:59:57'),
(319, 139, '0210', NULL, '3', 'Lembar', NULL, '19_139_0210-.pdf', 'Belum Dicek', '-', '2019-11-02 04:24:55', '2019-11-02 04:24:55'),
(320, 139, '0211', NULL, '8', 'Lembar', NULL, '19_139_0211-.pdf', 'Belum Dicek', '-', '2019-11-02 05:21:18', '2019-11-02 05:21:18'),
(321, 139, '0212', NULL, '9', 'Lembar', NULL, '19_139_0212-.pdf', 'Belum Dicek', '-', '2019-11-02 05:22:01', '2019-11-02 05:22:01'),
(322, 139, '0215', NULL, '17', 'Lembar', NULL, '19_139_0215-.pdf', 'Belum Dicek', '-', '2019-11-02 05:30:44', '2019-11-02 05:30:44'),
(323, 42, '0204', '1', '5.000.000', 'Rupiah', NULL, '19_42_0204-1.pdf', 'Belum Dicek', '-', '2019-11-02 06:41:16', '2019-11-02 06:41:16'),
(324, 42, '0204', '2', '20.000.000', 'Rupiah', NULL, '19_42_0204-2.pdf', 'Belum Dicek', '-', '2019-11-02 06:41:49', '2019-11-02 06:41:49'),
(325, 42, '0204', '3', '1.250.000', 'Rupiah', NULL, '19_42_0204-3.pdf', 'Belum Dicek', '-', '2019-11-02 06:42:34', '2019-11-02 06:42:34'),
(326, 42, '0204', '4', '20.000.000', 'Rupiah', NULL, '19_42_0204-4.pdf', 'Belum Dicek', '-', '2019-11-02 06:43:06', '2019-11-02 06:43:06'),
(327, 42, '0204', '5', '4.000.000', 'Rupiah', NULL, '19_42_0204-5.pdf', 'Belum Dicek', '-', '2019-11-02 06:43:41', '2019-11-02 06:43:41'),
(328, 42, '0204', '6', '3.000.000', 'Rupiah', NULL, '19_42_0204-6.pdf', 'Belum Dicek', '-', '2019-11-02 06:44:25', '2019-11-02 06:44:25'),
(329, 42, '0205', NULL, '5.750.000', 'Rupiah', NULL, '19_42_0205-.pdf', 'Belum Dicek', '-', '2019-11-02 06:48:01', '2019-11-02 06:48:01'),
(330, 42, '0205', NULL, '900.000', 'Rupiah', NULL, '19_42_0205-.pdf', 'Belum Dicek', '-', '2019-11-02 06:48:23', '2019-11-02 06:48:23'),
(331, 42, '0206', NULL, '2.000.000', 'Rupiah', NULL, '19_42_0206-.pdf', 'Belum Dicek', '-', '2019-11-02 06:48:56', '2019-11-02 06:48:56'),
(332, 42, '0206', NULL, '48.000.000', 'Rupiah', NULL, '19_42_0206-.pdf', 'Belum Dicek', '-', '2019-11-02 06:49:31', '2019-11-02 06:49:31'),
(333, 141, '0204', '1', '5.000.000', 'Rupiah', NULL, '19_141_0204-1.pdf', 'Belum Dicek', '-', '2019-11-02 06:57:24', '2019-11-02 06:57:24'),
(334, 141, '0204', '2', '20.000.000', 'Rupiah', NULL, '19_141_0204-2.pdf', 'Belum Dicek', '-', '2019-11-02 06:57:56', '2019-11-02 06:57:56'),
(335, 141, '0204', '3', '1.250.000', 'Rupiah', NULL, '19_141_0204-3.pdf', 'Belum Dicek', '-', '2019-11-02 06:58:40', '2019-11-02 06:58:40'),
(336, 141, '0204', '4', '20.000.000', 'Rupiah', NULL, '19_141_0204-4.pdf', 'Belum Dicek', '-', '2019-11-02 06:59:19', '2019-11-02 06:59:19'),
(337, 141, '0204', '5', '4.000.000', 'Rupiah', NULL, '19_141_0204-5.pdf', 'Belum Dicek', '-', '2019-11-02 07:00:32', '2019-11-02 07:00:32'),
(338, 141, '0204', '6', '2.750.000', 'Rupiah', NULL, '19_141_0204-6.pdf', 'Belum Dicek', '-', '2019-11-02 07:01:22', '2019-11-02 07:01:22'),
(339, 141, '0205', NULL, '5.750.000', 'Rupiah', NULL, '19_141_0205-.pdf', 'Belum Dicek', '-', '2019-11-02 07:05:35', '2019-11-02 07:05:35'),
(340, 141, '0205', NULL, '900.000', 'Rupiah', NULL, '19_141_0205-.pdf', 'Belum Dicek', '-', '2019-11-02 07:06:09', '2019-11-02 07:06:09'),
(341, 141, '0206', NULL, '1.900.000', 'Rupiah', NULL, '19_141_0206-.pdf', 'Belum Dicek', '-', '2019-11-02 07:07:41', '2019-11-02 07:07:41'),
(342, 141, '0206', NULL, '48.000.000', 'Rupiah', NULL, '19_141_0206-.pdf', 'Belum Dicek', '-', '2019-11-02 07:08:19', '2019-11-02 07:08:19'),
(343, 140, '0211', NULL, '8', 'Lembar', NULL, '19_140_0211-.pdf', 'Belum Dicek', '-', '2019-11-02 07:09:04', '2019-11-02 07:09:04'),
(344, 141, '0207', NULL, '300.000', 'Rupiah', NULL, '19_141_0207-.pdf', 'Belum Dicek', '-', '2019-11-02 07:09:27', '2019-11-02 07:09:27'),
(345, 141, '0207', NULL, '700.000', 'Rupiah', NULL, '19_141_0207-.pdf', 'Belum Dicek', '-', '2019-11-02 07:10:09', '2019-11-02 07:10:09'),
(346, 140, '0210', NULL, '3', 'Lembar', NULL, '19_140_0210-.pdf', 'Belum Dicek', '-', '2019-11-02 07:19:03', '2019-11-02 07:19:03'),
(347, 140, '0202', NULL, '5', 'Orang', NULL, '19_140_0202-.pdf', 'Belum Dicek', '-', '2019-11-02 07:28:05', '2019-11-02 07:28:05'),
(348, 140, '0209', NULL, '15', 'Lembar', NULL, '19_140_0209-.pdf', 'Belum Dicek', '-', '2019-11-02 07:29:32', '2019-11-02 07:29:32'),
(349, 140, '0212', NULL, '7', 'Lembar', NULL, '19_140_0212-.pdf', 'Belum Dicek', '-', '2019-11-02 07:36:31', '2019-11-02 07:36:31'),
(350, 140, '0215', NULL, '12', 'Lembar', NULL, '19_140_0215-.pdf', 'Belum Dicek', '-', '2019-11-02 07:38:38', '2019-11-02 07:38:38'),
(351, 142, '0202', NULL, '5', 'Orang', NULL, '19_142_0202-.pdf', 'Belum Dicek', '-', '2019-11-02 08:21:38', '2019-11-02 08:21:38'),
(352, 142, '0211', NULL, '8', 'Lembar', NULL, '19_142_0211-.pdf', 'Belum Dicek', '-', '2019-11-02 08:28:16', '2019-11-02 08:28:16'),
(353, 142, '0210', NULL, '3', 'Lembar', NULL, '19_142_0210-.pdf', 'Belum Dicek', '-', '2019-11-02 08:28:44', '2019-11-02 08:28:44'),
(354, 142, '0215', NULL, '19', 'Lembar', NULL, '19_142_0215-.pdf', 'Belum Dicek', '-', '2019-11-02 08:38:58', '2019-11-02 08:38:58'),
(355, 142, '0212', NULL, '5', 'Lembar', NULL, '19_142_0212-.pdf', 'Belum Dicek', '-', '2019-11-02 08:45:07', '2019-11-02 08:45:07'),
(356, 142, '0209', NULL, '15', 'Lembar', NULL, '19_142_0209-.pdf', 'Belum Dicek', '-', '2019-11-02 09:10:16', '2019-11-02 09:10:16'),
(357, 143, '0211', NULL, '6', 'Lembar', NULL, '19_143_0211-.pdf', 'Belum Dicek', '-', '2019-11-04 01:45:00', '2019-11-04 01:45:00'),
(358, 143, '0212', NULL, '3', 'Lembar', NULL, '19_143_0212-.pdf', 'Belum Dicek', '-', '2019-11-04 01:45:26', '2019-11-04 01:45:26'),
(359, 143, '0215', NULL, '6', 'Lembar', NULL, '19_143_0215-.pdf', 'Belum Dicek', '-', '2019-11-04 02:15:39', '2019-11-04 02:15:39'),
(360, 143, '0202', NULL, '5', 'Orang', NULL, '19_143_0202-.pdf', 'Belum Dicek', '-', '2019-11-04 03:22:22', '2019-11-04 03:22:22'),
(361, 143, '0210', NULL, '3', 'Lembar', NULL, '19_143_0210-.pdf', 'Belum Dicek', '-', '2019-11-04 03:27:04', '2019-11-04 03:27:04'),
(362, 143, '0209', NULL, '12', 'Lembar', NULL, '19_143_0209-.pdf', 'Belum Dicek', '-', '2019-11-04 07:52:42', '2019-11-04 07:52:42'),
(363, 102, '0207', NULL, '224', 'Orang', NULL, '19_102_0207-.pdf', 'Belum Dicek', '-', '2019-11-05 01:43:10', '2019-11-05 01:43:10'),
(364, 102, '0215', NULL, '200', 'ORANG', NULL, '19_102_0215-.pdf', 'Belum Dicek', '-', '2019-11-05 01:46:27', '2019-11-05 01:46:27'),
(365, 103, '0207', NULL, '174', 'Orang', NULL, '19_103_0207-.pdf', 'Belum Dicek', '-', '2019-11-05 01:52:15', '2019-11-05 01:52:15'),
(366, 103, '0215', NULL, '146', 'Peserta', NULL, '19_103_0215-.pdf', 'Belum Dicek', '-', '2019-11-05 01:53:44', '2019-11-05 01:53:44'),
(367, 38, '0215', NULL, '158', 'Peserta', NULL, '19_38_0215-.pdf', 'Belum Dicek', '-', '2019-11-05 02:12:41', '2019-11-05 02:12:41'),
(368, 38, '0201', NULL, '178', 'Orang', NULL, '19_38_0201-.pdf', 'Belum Dicek', '-', '2019-11-05 03:31:16', '2019-11-05 03:31:16'),
(369, 39, '0215', NULL, '115', 'Peserta', NULL, '19_39_0215-.pdf', 'Belum Dicek', '-', '2019-11-05 03:35:32', '2019-11-05 03:35:32'),
(370, 103, '0201', NULL, '166', 'Orang', NULL, '19_103_0201-.pdf', 'Belum Dicek', '-', '2019-11-05 03:53:25', '2019-11-05 03:53:25'),
(371, 39, '0209', NULL, '16', 'Orang', NULL, '19_39_0209-.pdf', 'Belum Dicek', '-', '2019-11-05 06:34:01', '2019-11-05 06:34:01'),
(372, 39, '0210', NULL, '2', 'Orang', NULL, '19_39_0210-.pdf', 'Belum Dicek', '-', '2019-11-05 06:51:31', '2019-11-05 06:51:31'),
(373, 40, '0202', NULL, '2', 'Orang', NULL, '19_40_0202-.pdf', 'Belum Dicek', '-', '2019-11-05 07:05:15', '2019-11-05 07:05:15'),
(374, 102, '0202', NULL, '2', 'Orang', NULL, '19_102_0202-.pdf', 'Belum Dicek', '-', '2019-11-05 07:46:17', '2019-11-05 07:46:17'),
(375, 39, '0201', NULL, '178', 'Orang', NULL, '19_39_0201-.pdf', 'Belum Dicek', '-', '2019-11-05 07:52:10', '2019-11-05 07:52:10'),
(376, 103, '0210', NULL, '2', 'Orang', NULL, '19_103_0210-.pdf', 'Belum Dicek', '-', '2019-11-05 08:08:30', '2019-11-05 08:08:30'),
(377, 101, '0202', NULL, '2', 'Orang', NULL, '19_101_0202-.pdf', 'Belum Dicek', '-', '2019-11-05 08:12:20', '2019-11-05 08:12:20'),
(378, 102, '0209', NULL, '223', 'Orang', NULL, '19_102_0209-.pdf', 'Belum Dicek', '-', '2019-11-05 08:45:31', '2019-11-05 08:45:31'),
(379, 102, '0210', NULL, '2', 'Orang', NULL, '19_102_0210-.pdf', 'Belum Dicek', '-', '2019-11-05 08:53:32', '2019-11-05 08:53:32'),
(380, 101, '0209', NULL, '223', 'Orang', NULL, '19_101_0209-.pdf', 'Belum Dicek', '-', '2019-11-05 08:55:51', '2019-11-05 08:55:51'),
(381, 101, '0210', NULL, '2', 'Orang', NULL, '19_101_0210-.pdf', 'Belum Dicek', '-', '2019-11-05 08:56:59', '2019-11-05 08:56:59'),
(382, 101, '0210', NULL, '2', 'Orang', NULL, '19_101_0210-.pdf', 'Belum Dicek', '-', '2019-11-05 09:00:14', '2019-11-05 09:00:14'),
(383, 40, '0209', NULL, '223', 'Orang', NULL, '19_40_0209-.pdf', 'Belum Dicek', '-', '2019-11-05 09:03:32', '2019-11-05 09:03:32'),
(384, 40, '0210', NULL, '2', 'Orang', NULL, '19_40_0210-.pdf', 'Belum Dicek', '-', '2019-11-05 09:05:02', '2019-11-05 09:05:02'),
(385, 103, '0209', NULL, '166', 'Orang', NULL, '19_103_0209-.pdf', 'Belum Dicek', '-', '2019-11-05 09:08:07', '2019-11-05 09:08:07'),
(386, 103, '0210', NULL, '2', 'Orang', NULL, '19_103_0210-.pdf', 'Belum Dicek', '-', '2019-11-05 09:09:57', '2019-11-05 09:09:57'),
(387, 101, '0201', NULL, '222', 'Orang', NULL, '19_101_0201-.pdf', 'Belum Dicek', '-', '2019-11-05 09:21:05', '2019-11-05 09:21:05'),
(388, 38, '0210', NULL, '2', 'Orang', NULL, '19_38_0210-.pdf', 'Belum Dicek', '-', '2019-11-05 09:32:00', '2019-11-05 09:32:00'),
(389, 102, '0201', NULL, '224', 'orang', NULL, '19_102_0201-.pdf', 'Belum Dicek', '-', '2019-11-06 04:47:17', '2019-11-06 04:47:17'),
(390, 109, '0204', NULL, '1', 'BERKAS', NULL, '19_109_0204-.pdf', 'Belum Dicek', '-', '2019-11-08 15:35:02', '2019-11-08 15:35:02'),
(391, 109, '0205', NULL, '1', 'BERKAS', NULL, '19_109_0205-.pdf', 'Belum Dicek', '-', '2019-11-08 15:35:42', '2019-11-08 15:35:42'),
(392, 109, '0206', NULL, '1', 'BERKAS', NULL, '19_109_0206-.pdf', 'Belum Dicek', '-', '2019-11-08 15:36:14', '2019-11-08 15:36:14'),
(393, 109, '0207', NULL, '1', 'BERKAS', NULL, '19_109_0207-.pdf', 'Belum Dicek', '-', '2019-11-08 15:38:10', '2019-11-08 15:38:10'),
(394, 109, '0208', NULL, '1', 'BERKAS', NULL, '19_109_0208-.pdf', 'Belum Dicek', '-', '2019-11-08 15:41:06', '2019-11-08 15:41:06'),
(395, 115, '0204', NULL, '1', 'BERKAS', NULL, '19_115_0204-.pdf', 'Belum Dicek', '-', '2019-11-08 15:44:05', '2019-11-08 15:44:05'),
(396, 115, '0205', NULL, '1', 'BERKAS', NULL, '19_115_0205-.pdf', 'Belum Dicek', '-', '2019-11-08 15:44:49', '2019-11-08 15:44:49'),
(397, 115, '0206', NULL, '1', 'BERKAS', NULL, '19_115_0206-.pdf', 'Belum Dicek', '-', '2019-11-08 15:45:53', '2019-11-08 15:45:53'),
(398, 115, '0207', NULL, '1', 'BERKAS', NULL, '19_115_0207-.pdf', 'Belum Dicek', '-', '2019-11-08 15:47:13', '2019-11-08 15:47:13'),
(399, 115, '0208', NULL, '1', 'BERKAS', NULL, '19_115_0208-.pdf', 'Belum Dicek', '-', '2019-11-08 15:49:30', '2019-11-08 15:49:30'),
(400, 110, '0204', NULL, '1', 'BERKAS', NULL, '19_110_0204-.pdf', 'Belum Dicek', '-', '2019-11-08 15:52:20', '2019-11-08 15:52:20'),
(401, 110, '0205', NULL, '1', 'BERKAS', NULL, '19_110_0205-.pdf', 'Belum Dicek', '-', '2019-11-08 15:53:32', '2019-11-08 15:53:32'),
(402, 110, '0206', NULL, '1', 'BERKAS', NULL, '19_110_0206-.pdf', 'Belum Dicek', '-', '2019-11-08 15:54:17', '2019-11-08 15:54:17'),
(403, 110, '0207', NULL, '1', 'BERKAS', NULL, '19_110_0207-.pdf', 'Belum Dicek', '-', '2019-11-08 15:56:43', '2019-11-08 15:56:43'),
(404, 110, '0208', NULL, '1', 'BERKAS', NULL, '19_110_0208-.pdf', 'Belum Dicek', '-', '2019-11-08 15:59:09', '2019-11-08 15:59:09'),
(405, 114, '0204', NULL, '1', 'BERKAS', NULL, '19_114_0204-.pdf', 'Belum Dicek', '-', '2019-11-08 16:03:42', '2019-11-08 16:03:42'),
(406, 109, '0213', NULL, '1', 'berkas', NULL, '19_109_0213-.pdf', 'Belum Dicek', '-', '2019-11-11 03:24:43', '2019-11-11 03:24:43'),
(407, 110, '0213', NULL, '1', 'berkas', NULL, '19_110_0213-.pdf', 'Belum Dicek', '-', '2019-11-11 03:26:19', '2019-11-11 03:26:19'),
(408, 114, '0213', NULL, '1', 'berkas', NULL, '19_114_0213-.pdf', 'Belum Dicek', '-', '2019-11-11 03:27:37', '2019-11-11 03:27:37'),
(409, 115, '0213', NULL, '1', 'berkas', NULL, '19_115_0213-.pdf', 'Belum Dicek', '-', '2019-11-11 03:29:35', '2019-11-11 03:29:35'),
(410, 116, '0213', NULL, '1', 'berkas', NULL, '19_116_0213-.pdf', 'Belum Dicek', '-', '2019-11-11 03:31:08', '2019-11-11 03:31:08'),
(411, 114, '0205', NULL, '1', 'berkas', NULL, '19_114_0205-.pdf', 'Belum Dicek', '-', '2019-11-11 04:01:37', '2019-11-11 04:01:37'),
(412, 114, '0206', NULL, '1', 'berkas', NULL, '19_114_0206-.pdf', 'Belum Dicek', '-', '2019-11-11 04:02:39', '2019-11-11 04:02:39'),
(413, 114, '0207', NULL, '1', 'berkas', NULL, '19_114_0207-.pdf', 'Belum Dicek', '-', '2019-11-11 04:04:05', '2019-11-11 04:04:05'),
(414, 115, '0206', NULL, '1', 'berkas', NULL, '19_115_0206-.pdf', 'Belum Dicek', '-', '2019-11-11 04:10:53', '2019-11-11 04:10:53'),
(415, 116, '0205', '1', '1', 'berkas', NULL, '19_116_0205-1.pdf', 'Belum Dicek', '-', '2019-11-11 04:17:59', '2019-11-11 04:17:59'),
(416, 116, '0206', NULL, '1', 'berkas', NULL, '19_116_0206-.pdf', 'Belum Dicek', '-', '2019-11-11 04:19:42', '2019-11-11 04:19:42'),
(417, 116, '0207', NULL, '1', 'berkas', NULL, '19_116_0207-.pdf', 'Belum Dicek', '-', '2019-11-11 04:20:36', '2019-11-11 04:20:36'),
(418, 116, '0208', NULL, '1', 'berkas', NULL, '19_116_0208-.pdf', 'Belum Dicek', '-', '2019-11-11 04:27:00', '2019-11-11 04:27:00'),
(419, 114, '0208', NULL, '1', 'berkas', NULL, '19_114_0208-.pdf', 'Belum Dicek', '-', '2019-11-11 04:29:12', '2019-11-11 04:29:12'),
(420, 119, '0201', NULL, '110', 'Orang', NULL, '19_119_0201-.pdf', 'Belum Dicek', '-', '2019-11-18 13:33:14', '2019-11-18 13:33:14'),
(421, 119, '0208', NULL, '31', 'Lembar', NULL, '19_119_0208-.pdf', 'Belum Dicek', '-', '2019-11-18 13:36:31', '2019-11-18 13:36:31'),
(422, 119, '0210', NULL, '3', 'Lembar', NULL, '19_119_0210-.pdf', 'Belum Dicek', '-', '2019-11-18 13:38:08', '2019-11-18 13:38:08'),
(423, 119, '0215', NULL, '9', 'Lembar', NULL, '19_119_0215-.pdf', 'Belum Dicek', '-', '2019-11-18 13:41:33', '2019-11-18 13:41:33'),
(424, 119, '0204', NULL, '23', 'Lembar', NULL, '19_119_0204-.pdf', 'Belum Dicek', '-', '2019-11-18 13:46:46', '2019-11-18 13:46:46'),
(425, 119, '0206', NULL, '12', 'Lembar', NULL, '19_119_0206-.pdf', 'Belum Dicek', '-', '2019-11-18 13:52:08', '2019-11-18 13:52:08'),
(426, 119, '0205', NULL, '13', 'Lembar', NULL, '19_119_0205-.pdf', 'Belum Dicek', '-', '2019-11-18 13:54:24', '2019-11-18 13:54:24'),
(427, 119, '0207', NULL, '16', 'Lembar', NULL, '19_119_0207-.pdf', 'Belum Dicek', '-', '2019-11-18 13:56:20', '2019-11-18 13:56:20'),
(428, 120, '0204', NULL, '25', 'Lembar', NULL, '19_120_0204-.pdf', 'Belum Dicek', '-', '2019-11-18 14:02:00', '2019-11-18 14:02:00'),
(429, 120, '0205', NULL, '11', 'Lembar', NULL, '19_120_0205-.pdf', 'Belum Dicek', '-', '2019-11-18 14:05:06', '2019-11-18 14:05:06'),
(430, 120, '0206', NULL, '10', 'Lembar', NULL, '19_120_0206-.pdf', 'Belum Dicek', '-', '2019-11-18 14:08:57', '2019-11-18 14:08:57'),
(431, 131, '0204', NULL, '25', 'Lembar', NULL, '19_131_0204-.pdf', 'Belum Dicek', '-', '2019-11-18 14:09:25', '2019-11-18 14:09:25'),
(432, 131, '0205', NULL, '20', 'Lembar', NULL, '19_131_0205-.pdf', 'Belum Dicek', '-', '2019-11-18 14:13:23', '2019-11-18 14:13:23'),
(433, 120, '0207', NULL, '14', 'Lembar', NULL, '19_120_0207-.pdf', 'Belum Dicek', '-', '2019-11-18 14:13:38', '2019-11-18 14:13:38'),
(434, 120, '0208', NULL, '28', 'Lembar', NULL, '19_120_0208-.pdf', 'Belum Dicek', '-', '2019-11-18 14:14:23', '2019-11-18 14:14:23'),
(435, 120, '0215', NULL, '6', 'Lembar', NULL, '19_120_0215-.pdf', 'Belum Dicek', '-', '2019-11-18 14:15:31', '2019-11-18 14:15:31'),
(436, 131, '0206', NULL, '16', 'Lembar', NULL, '19_131_0206-.pdf', 'Belum Dicek', '-', '2019-11-18 14:16:45', '2019-11-18 14:16:45'),
(437, 131, '0207', NULL, '15', 'Lembar', NULL, '19_131_0207-.pdf', 'Belum Dicek', '-', '2019-11-18 14:19:04', '2019-11-18 14:19:04'),
(438, 131, '0208', NULL, '30', 'Lembar', NULL, '19_131_0208-.pdf', 'Belum Dicek', '-', '2019-11-18 14:22:06', '2019-11-18 14:22:06'),
(439, 127, '0204', NULL, '30', 'Lembar', NULL, '19_127_0204-.pdf', 'Belum Dicek', '-', '2019-11-18 14:23:47', '2019-11-18 14:23:47'),
(440, 127, '0206', NULL, '17', 'Lembar', NULL, '19_127_0206-.pdf', 'Belum Dicek', '-', '2019-11-18 14:25:26', '2019-11-18 14:25:26'),
(441, 135, '0204', NULL, '23', 'Lembar', NULL, '19_135_0204-.pdf', 'Belum Dicek', '-', '2019-11-18 14:26:43', '2019-11-18 14:26:43'),
(442, 127, '0205', NULL, '18', 'Lembar', NULL, '19_127_0205-.pdf', 'Belum Dicek', '-', '2019-11-18 14:27:15', '2019-11-18 14:27:15'),
(443, 127, '0207', NULL, '20', 'Lembar', NULL, '19_127_0207-.pdf', 'Belum Dicek', '-', '2019-11-18 14:28:39', '2019-11-18 14:28:39'),
(444, 127, '0208', NULL, '32', 'Lembar', NULL, '19_127_0208-.pdf', 'Belum Dicek', '-', '2019-11-18 14:30:01', '2019-11-18 14:30:01'),
(445, 135, '0205', NULL, '19', 'Lembar', NULL, '19_135_0205-.pdf', 'Belum Dicek', '-', '2019-11-18 14:30:16', '2019-11-18 14:30:16'),
(446, 135, '0206', NULL, '17', 'Lembar', NULL, '19_135_0206-.pdf', 'Belum Dicek', '-', '2019-11-18 14:31:29', '2019-11-18 14:31:29'),
(447, 135, '0207', NULL, '14', 'Lembar', NULL, '19_135_0207-.pdf', 'Belum Dicek', '-', '2019-11-18 14:32:32', '2019-11-18 14:32:32'),
(448, 135, '0208', NULL, '33', 'Lembar', NULL, '19_135_0208-.pdf', 'Belum Dicek', '-', '2019-11-18 14:35:28', '2019-11-18 14:35:28'),
(449, 135, '0201', NULL, '195', 'orang', NULL, '19_135_0201-.pdf', 'Belum Dicek', '-', '2019-11-18 14:38:22', '2019-11-18 14:38:22'),
(450, 136, '0204', NULL, '25', 'Lembar', NULL, '19_136_0204-.pdf', 'Belum Dicek', '-', '2019-11-18 14:40:29', '2019-11-18 14:40:29'),
(451, 136, '0205', NULL, '18', 'Lembar', NULL, '19_136_0205-.pdf', 'Belum Dicek', '-', '2019-11-18 14:42:04', '2019-11-18 14:42:04'),
(452, 136, '0206', NULL, '17', 'Lembar', NULL, '19_136_0206-.pdf', 'Belum Dicek', '-', '2019-11-18 14:43:49', '2019-11-18 14:43:49'),
(453, 136, '0207', NULL, '14', 'Lembar', NULL, '19_136_0207-.pdf', 'Belum Dicek', '-', '2019-11-18 14:45:46', '2019-11-18 14:45:46'),
(454, 136, '0208', NULL, '34', 'Lembar', NULL, '19_136_0208-.pdf', 'Belum Dicek', '-', '2019-11-18 14:49:22', '2019-11-18 14:49:22');
INSERT INTO `dokumen_bapem_laporan` (`id`, `angkatan_id`, `kode_dokumen`, `kwitansi`, `volume`, `satuan`, `catatan`, `file`, `status`, `keterangan`, `created_at`, `updated_at`) VALUES
(455, 144, '0202', NULL, '5', 'Orang', NULL, '19_144_0202-.pdf', 'Belum Dicek', '-', '2019-11-18 14:51:29', '2019-11-18 14:51:29'),
(456, 136, '0201', NULL, '210', 'orang', NULL, '19_136_0201-.pdf', 'Belum Dicek', '-', '2019-11-18 14:51:52', '2019-11-18 14:51:52'),
(457, 144, '0204', NULL, '25', 'Lembar', NULL, '19_144_0204-.pdf', 'Belum Dicek', '-', '2019-11-18 14:53:20', '2019-11-18 14:53:20'),
(458, 138, '0204', NULL, '26', 'Lembar', NULL, '19_138_0204-.pdf', 'Belum Dicek', '-', '2019-11-18 14:53:47', '2019-11-18 14:53:47'),
(459, 144, '0205', NULL, '18', 'Lembar', NULL, '19_144_0205-.pdf', 'Belum Dicek', '-', '2019-11-18 14:55:03', '2019-11-18 14:55:03'),
(460, 138, '0205', NULL, '14', 'Lembar', NULL, '19_138_0205-.pdf', 'Belum Dicek', '-', '2019-11-18 14:55:08', '2019-11-18 14:55:08'),
(461, 144, '0206', NULL, '17', 'Lembar', NULL, '19_144_0206-.pdf', 'Belum Dicek', '-', '2019-11-18 14:56:07', '2019-11-18 14:56:07'),
(462, 138, '0206', NULL, '13', 'Lembar', NULL, '19_138_0206-.pdf', 'Belum Dicek', '-', '2019-11-18 14:56:25', '2019-11-18 14:56:25'),
(463, 138, '0207', NULL, '13', 'Lembar', NULL, '19_138_0207-.pdf', 'Belum Dicek', '-', '2019-11-18 14:57:16', '2019-11-18 14:57:16'),
(464, 138, '0208', NULL, '31', 'Lembar', NULL, '19_138_0208-.pdf', 'Belum Dicek', '-', '2019-11-18 14:58:35', '2019-11-18 14:58:35'),
(465, 144, '0207', NULL, '15', 'Lembar', NULL, '19_144_0207-.pdf', 'Belum Dicek', '-', '2019-11-18 14:59:07', '2019-11-18 14:59:07'),
(466, 138, '0201', NULL, '111', 'orang', NULL, '19_138_0201-.pdf', 'Belum Dicek', '-', '2019-11-18 15:00:28', '2019-11-18 15:00:28'),
(467, 144, '0208', NULL, '31', 'Lembar', NULL, '19_144_0208-.pdf', 'Belum Dicek', '-', '2019-11-18 15:08:00', '2019-11-18 15:08:00'),
(468, 144, '0209', NULL, '17', 'Lembar', NULL, '19_144_0209-.pdf', 'Belum Dicek', '-', '2019-11-18 15:08:57', '2019-11-18 15:08:57'),
(469, 144, '0210', NULL, '3', 'Lembar', NULL, '19_144_0210-.pdf', 'Belum Dicek', '-', '2019-11-18 15:09:35', '2019-11-18 15:09:35'),
(470, 144, '0211', NULL, '8', 'Lembar', NULL, '19_144_0211-.pdf', 'Belum Dicek', '-', '2019-11-18 15:10:10', '2019-11-18 15:10:10'),
(471, 144, '0212', NULL, '7', 'Lembar', NULL, '19_144_0212-.pdf', 'Belum Dicek', '-', '2019-11-18 15:11:24', '2019-11-18 15:11:24'),
(472, 144, '0215', NULL, '12', 'Lembar', NULL, '19_144_0215-.pdf', 'Belum Dicek', '-', '2019-11-18 15:13:02', '2019-11-18 15:13:02'),
(473, 129, '0204', NULL, '29', 'Lembar', NULL, '19_129_0204-.pdf', 'Belum Dicek', '-', '2019-11-18 15:15:26', '2019-11-18 15:15:26'),
(474, 129, '0205', NULL, '20', 'Lembar', NULL, '19_129_0205-.pdf', 'Belum Dicek', '-', '2019-11-18 15:17:38', '2019-11-18 15:17:38'),
(475, 145, '0202', NULL, '5', 'Orang', NULL, '19_145_0202-.pdf', 'Belum Dicek', '-', '2019-11-18 15:18:31', '2019-11-18 15:18:31'),
(476, 145, '0208', NULL, '31', 'Lembar', NULL, '19_145_0208-.pdf', 'Belum Dicek', '-', '2019-11-18 15:19:56', '2019-11-18 15:19:56'),
(477, 129, '0206', NULL, '17', 'Lembar', NULL, '19_129_0206-.pdf', 'Belum Dicek', '-', '2019-11-18 15:23:54', '2019-11-18 15:23:54'),
(478, 145, '0204', NULL, '25', 'Lembar', NULL, '19_145_0204-.pdf', 'Belum Dicek', '-', '2019-11-18 15:24:15', '2019-11-18 15:24:15'),
(479, 129, '0207', NULL, '13', 'Lembar', NULL, '19_129_0207-.pdf', 'Belum Dicek', '-', '2019-11-18 15:26:10', '2019-11-18 15:26:10'),
(480, 145, '0205', NULL, '17', 'Lembar', NULL, '19_145_0205-.pdf', 'Belum Dicek', '-', '2019-11-18 15:26:42', '2019-11-18 15:26:42'),
(481, 145, '0206', NULL, '18', 'Lembar', NULL, '19_145_0206-.pdf', 'Belum Dicek', '-', '2019-11-18 15:27:48', '2019-11-18 15:27:48'),
(482, 145, '0207', NULL, '15', 'Lembar', NULL, '19_145_0207-.pdf', 'Belum Dicek', '-', '2019-11-18 15:28:40', '2019-11-18 15:28:40'),
(483, 129, '0208', NULL, '29', 'Lembar', NULL, '19_129_0208-.pdf', 'Belum Dicek', '-', '2019-11-18 15:29:37', '2019-11-18 15:29:37'),
(484, 145, '0209', NULL, '18', 'Lembar', NULL, '19_145_0209-.pdf', 'Belum Dicek', '-', '2019-11-18 15:30:55', '2019-11-18 15:30:55'),
(485, 145, '0210', NULL, '3', 'Lembar', NULL, '19_145_0210-.pdf', 'Belum Dicek', '-', '2019-11-18 15:32:12', '2019-11-18 15:32:12'),
(486, 145, '0211', NULL, '8', 'Lembar', NULL, '19_145_0211-.pdf', 'Belum Dicek', '-', '2019-11-18 15:33:11', '2019-11-18 15:33:11'),
(487, 130, '0204', NULL, '24', 'Lembar', NULL, '19_130_0204-.pdf', 'Belum Dicek', '-', '2019-11-18 15:34:35', '2019-11-18 15:34:35'),
(488, 145, '0212', NULL, '9', 'Lembar', NULL, '19_145_0212-.pdf', 'Belum Dicek', '-', '2019-11-18 15:35:22', '2019-11-18 15:35:22'),
(489, 130, '0205', NULL, '19', 'Lembar', NULL, '19_130_0205-.pdf', 'Belum Dicek', '-', '2019-11-18 15:36:19', '2019-11-18 15:36:19'),
(490, 145, '0215', NULL, '17', 'Lembar', NULL, '19_145_0215-.pdf', 'Belum Dicek', '-', '2019-11-18 15:37:01', '2019-11-18 15:37:01'),
(491, 130, '0206', NULL, '16', 'Lembar', NULL, '19_130_0206-.pdf', 'Belum Dicek', '-', '2019-11-18 15:37:30', '2019-11-18 15:37:30'),
(492, 146, '0202', NULL, '5', 'Orang', NULL, '19_146_0202-.pdf', 'Belum Dicek', '-', '2019-11-18 15:38:51', '2019-11-18 15:38:51'),
(493, 130, '0207', NULL, '13', 'Lembar', NULL, '19_130_0207-.pdf', 'Belum Dicek', '-', '2019-11-18 15:38:52', '2019-11-18 15:38:52'),
(494, 146, '0204', NULL, '25', 'Lembar', NULL, '19_146_0204-.pdf', 'Belum Dicek', '-', '2019-11-18 15:40:05', '2019-11-18 15:40:05'),
(495, 130, '0208', NULL, '33', 'Lembar', NULL, '19_130_0208-.pdf', 'Belum Dicek', '-', '2019-11-18 15:40:29', '2019-11-18 15:40:29'),
(496, 146, '0205', NULL, '18', 'Lembar', NULL, '19_146_0205-.pdf', 'Belum Dicek', '-', '2019-11-18 15:41:24', '2019-11-18 15:41:24'),
(497, 146, '0206', NULL, '18', 'Lembar', NULL, '19_146_0206-.pdf', 'Belum Dicek', '-', '2019-11-18 15:42:46', '2019-11-18 15:42:46'),
(498, 146, '0207', NULL, '15', 'Lembar', NULL, '19_146_0207-.pdf', 'Belum Dicek', '-', '2019-11-18 15:44:19', '2019-11-18 15:44:19'),
(499, 146, '0209', NULL, '15', 'Lembar', NULL, '19_146_0209-.pdf', 'Belum Dicek', '-', '2019-11-18 15:46:54', '2019-11-18 15:46:54'),
(500, 146, '0210', NULL, '3', 'Lembar', NULL, '19_146_0210-.pdf', 'Belum Dicek', '-', '2019-11-18 15:47:50', '2019-11-18 15:47:50'),
(501, 130, '0201', NULL, '194', 'orang', NULL, '19_130_0201-.pdf', 'Belum Dicek', '-', '2019-11-18 15:48:07', '2019-11-18 15:48:07'),
(502, 146, '0211', NULL, '8', 'Lembar', NULL, '19_146_0211-.pdf', 'Belum Dicek', '-', '2019-11-18 15:48:31', '2019-11-18 15:48:31'),
(503, 147, '0202', NULL, '5', 'orang', NULL, '19_147_0202-.pdf', 'Belum Dicek', '-', '2019-11-18 15:50:24', '2019-11-18 15:50:24'),
(504, 147, '0204', NULL, '15', 'Lembar', NULL, '19_147_0204-.pdf', 'Belum Dicek', '-', '2019-11-18 15:52:12', '2019-11-18 15:52:12'),
(505, 147, '0205', NULL, '18', 'Lembar', NULL, '19_147_0205-.pdf', 'Belum Dicek', '-', '2019-11-18 15:53:15', '2019-11-18 15:53:15'),
(506, 147, '0207', NULL, '15', 'Lembar', NULL, '19_147_0207-.pdf', 'Belum Dicek', '-', '2019-11-18 15:54:17', '2019-11-18 15:54:17'),
(507, 146, '0212', NULL, '7', 'Lembar', NULL, '19_146_0212-.pdf', 'Belum Dicek', '-', '2019-11-18 15:54:29', '2019-11-18 15:54:29'),
(508, 147, '0206', NULL, '18', 'Lembar', NULL, '19_147_0206-.pdf', 'Belum Dicek', '-', '2019-11-18 15:54:52', '2019-11-18 15:54:52'),
(509, 147, '0210', NULL, '3', 'Lembar', NULL, '19_147_0210-.pdf', 'Belum Dicek', '-', '2019-11-18 15:55:51', '2019-11-18 15:55:51'),
(510, 147, '0209', NULL, '15', 'Lembar', NULL, '19_147_0209-.pdf', 'Belum Dicek', '-', '2019-11-18 15:56:03', '2019-11-18 15:56:03'),
(511, 146, '0215', NULL, '12', 'Lembar', NULL, '19_146_0215-.pdf', 'Belum Dicek', '-', '2019-11-18 15:56:16', '2019-11-18 15:56:16'),
(512, 147, '0211', NULL, '8', 'Lembar', NULL, '19_147_0211-.pdf', 'Belum Dicek', '-', '2019-11-18 15:56:37', '2019-11-18 15:56:37'),
(513, 147, '0212', NULL, '5', 'Lembar', NULL, '19_147_0212-.pdf', 'Belum Dicek', '-', '2019-11-18 15:57:12', '2019-11-18 15:57:12'),
(514, 146, '0208', NULL, '30', 'Lembar', NULL, '19_146_0208-.pdf', 'Belum Dicek', '-', '2019-11-18 15:58:12', '2019-11-18 15:58:12'),
(515, 147, '0215', NULL, '19', 'Lembar', NULL, '19_147_0215-.pdf', 'Belum Dicek', '-', '2019-11-18 15:58:39', '2019-11-18 15:58:39'),
(516, 148, '0202', NULL, '5', 'Orang', NULL, '19_148_0202-.pdf', 'Belum Dicek', '-', '2019-11-18 15:59:11', '2019-11-18 15:59:11'),
(517, 147, '0208', NULL, '31', 'Lembar', NULL, '19_147_0208-.pdf', 'Belum Dicek', '-', '2019-11-18 15:59:44', '2019-11-18 15:59:44'),
(518, 148, '0208', NULL, '31', 'Lembar', NULL, '19_148_0208-.pdf', 'Belum Dicek', '-', '2019-11-18 16:00:33', '2019-11-18 16:00:33'),
(519, 148, '0204', NULL, '24', 'Lembar', NULL, '19_148_0204-.pdf', 'Belum Dicek', '-', '2019-11-18 16:02:35', '2019-11-18 16:02:35'),
(520, 148, '0205', NULL, '14', 'Lembar', NULL, '19_148_0205-.pdf', 'Belum Dicek', '-', '2019-11-18 16:03:34', '2019-11-18 16:03:34'),
(521, 148, '0206', NULL, '14', 'Lembar', NULL, '19_148_0206-.pdf', 'Belum Dicek', '-', '2019-11-18 16:04:39', '2019-11-18 16:04:39'),
(522, 148, '0207', NULL, '14', 'Lembar', NULL, '19_148_0207-.pdf', 'Belum Dicek', '-', '2019-11-18 16:07:06', '2019-11-18 16:07:06'),
(523, 148, '0209', NULL, '12', 'Lembar', NULL, '19_148_0209-.pdf', 'Belum Dicek', '-', '2019-11-18 16:15:28', '2019-11-18 16:15:28'),
(524, 148, '0211', NULL, '8', 'Lembar', NULL, '19_148_0211-.pdf', 'Belum Dicek', '-', '2019-11-18 16:16:37', '2019-11-18 16:16:37'),
(525, 128, '0204', NULL, '26', 'Lembar', NULL, '19_128_0204-.pdf', 'Belum Dicek', '-', '2019-11-19 02:29:48', '2019-11-19 02:29:48'),
(526, 128, '0206', NULL, '17', 'Lembar', NULL, '19_128_0206-.pdf', 'Belum Dicek', '-', '2019-11-19 02:35:16', '2019-11-19 02:35:16'),
(527, 128, '0207', NULL, '16', 'Lembar', NULL, '19_128_0207-.pdf', 'Belum Dicek', '-', '2019-11-19 02:44:36', '2019-11-19 02:44:36'),
(528, 128, '0205', NULL, '19', 'Lembar', NULL, '19_128_0205-.pdf', 'Belum Dicek', '-', '2019-11-19 02:51:49', '2019-11-19 02:51:49'),
(529, 128, '0208', NULL, '32', 'Lembar', NULL, '19_128_0208-.pdf', 'Belum Dicek', '-', '2019-11-19 02:56:19', '2019-11-19 02:56:19'),
(530, 148, '0209', NULL, '12', 'Lembar', NULL, '19_148_0209-.pdf', 'Belum Dicek', '-', '2019-11-19 03:51:15', '2019-11-19 03:51:15'),
(531, 148, '0212', NULL, '3', 'Lembar', NULL, '19_148_0212-.pdf', 'Belum Dicek', '-', '2019-11-19 03:52:07', '2019-11-19 03:52:07'),
(532, 148, '0215', NULL, '6', 'Lembar', NULL, '19_148_0215-.pdf', 'Belum Dicek', '-', '2019-11-19 03:53:31', '2019-11-19 03:53:31'),
(533, 119, '0203', NULL, '8', 'Lembar', NULL, '19_119_0203-.pdf', 'Belum Dicek', '-', '2019-11-22 02:12:30', '2019-11-22 02:12:30'),
(534, 120, '0203', NULL, '8', 'Lembar', NULL, '19_120_0203-.pdf', 'Belum Dicek', '-', '2019-11-22 02:14:28', '2019-11-22 02:14:28'),
(535, 127, '0203', NULL, '8', 'Lembar', NULL, '19_127_0203-.pdf', 'Belum Dicek', '-', '2019-11-22 02:16:28', '2019-11-22 02:16:28'),
(536, 128, '0203', NULL, '8', 'Lembar', NULL, '19_128_0203-.pdf', 'Belum Dicek', '-', '2019-11-22 02:19:37', '2019-11-22 02:19:37'),
(537, 129, '0203', NULL, '8', 'Lembar', NULL, '19_129_0203-.pdf', 'Belum Dicek', '-', '2019-11-22 02:21:35', '2019-11-22 02:21:35'),
(538, 130, '0203', NULL, '8', 'Lembar', NULL, '19_130_0203-.pdf', 'Belum Dicek', '-', '2019-11-22 02:23:15', '2019-11-22 02:23:15'),
(539, 131, '0203', NULL, '8', 'Lembar', NULL, '19_131_0203-.pdf', 'Belum Dicek', '-', '2019-11-22 02:24:26', '2019-11-22 02:24:26'),
(540, 135, '0203', NULL, '8', 'Lembar', NULL, '19_135_0203-.pdf', 'Belum Dicek', '-', '2019-11-22 02:25:33', '2019-11-22 02:25:33'),
(541, 136, '0203', NULL, '8', 'Lembar', NULL, '19_136_0203-.pdf', 'Belum Dicek', '-', '2019-11-22 02:26:44', '2019-11-22 02:26:44'),
(542, 138, '0203', NULL, '8', 'Lembar', NULL, '19_138_0203-.pdf', 'Belum Dicek', '-', '2019-11-22 02:28:29', '2019-11-22 02:28:29'),
(543, 144, '0203', NULL, '8', 'Lembar', NULL, '19_144_0203-.pdf', 'Belum Dicek', '-', '2019-11-22 02:30:44', '2019-11-22 02:30:44'),
(544, 145, '0203', NULL, '8', 'Lembar', NULL, '19_145_0203-.pdf', 'Belum Dicek', '-', '2019-11-22 02:31:46', '2019-11-22 02:31:46'),
(545, 146, '0203', NULL, '8', 'Lembar', NULL, '19_146_0203-.pdf', 'Belum Dicek', '-', '2019-11-22 02:33:23', '2019-11-22 02:33:23'),
(546, 147, '0203', NULL, '8', 'Lembar', NULL, '19_147_0203-.pdf', 'Belum Dicek', '-', '2019-11-22 02:34:24', '2019-11-22 02:34:24'),
(547, 148, '0203', NULL, '8', 'Lembar', NULL, '19_148_0203-.pdf', 'Belum Dicek', '-', '2019-11-22 02:35:36', '2019-11-22 02:35:36');

-- --------------------------------------------------------

--
-- Table structure for table `dokumen_bapem_pemberian`
--

CREATE TABLE `dokumen_bapem_pemberian` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listbapem_id` int(11) NOT NULL,
  `kode_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `listbapem`
--

CREATE TABLE `listbapem` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `type_bapem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_bapem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jml_sasaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` bigint(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `listbapem`
--

INSERT INTO `listbapem` (`id`, `user_id`, `type_bapem`, `tahun`, `nama_bapem`, `jml_sasaran`, `nilai`, `created_at`, `updated_at`) VALUES
(11, 5, 'Penguatan KS', '2019', 'PELAKSANAAN BANPEM PENGUATAN KS', '2586', 8289820000, '2019-07-10 04:40:10', '2019-09-16 06:49:50'),
(14, 3, 'Penguatan KS', '2019', 'PENGUATAN KS', '3936', 13034920000, '2019-09-11 03:16:46', '2019-09-11 03:16:46'),
(16, 28, 'Penguatan KS', '2019', 'PELAKSANAAN BANPEM PENGUATAN KS', '1952', 6249210000, '2019-09-17 22:34:41', '2019-09-17 22:34:41'),
(17, 29, 'Penguatan KS', '2019', 'PELAKSANAAN BANPEM PENGUATAN KS', '1320', 4209900000, '2019-09-17 22:35:46', '2019-09-17 22:35:46'),
(18, 30, 'Penguatan KS', '2019', 'PELAKSANAAN BANPEM PENGUATAN KS', '2104', 6756700000, '2019-09-17 22:36:55', '2019-09-17 22:36:55'),
(19, 31, 'Penguatan KS', '2019', 'PELAKSANAAN BANPEM PENGUATAN KS', '1017', 3270250000, '2019-09-17 22:38:19', '2019-09-17 22:38:19'),
(20, 32, 'Penguatan KS', '2019', 'PELAKSANAAN BANPEM PENGUATAN KS', '3936', 13034920000, '2019-09-18 01:29:47', '2019-09-18 01:29:47'),
(21, 33, 'Penguatan KS', '2019', 'PELAKSANAAN BANPEM PENGUATAN KS', '949', 3129595000, '2019-09-18 01:34:35', '2019-09-18 01:34:35');

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
(3, '2019_05_16_072613_create_table_laporan', 2),
(4, '2019_05_17_055702_create_personel_bapems_table', 3),
(5, '2019_05_17_061726_create_personel_bapems_table', 4),
(6, '2019_05_17_062206_create_table_personel_bapem', 5),
(7, '2019_05_17_062410_create_table_sasaran', 5),
(8, '2019_05_17_063037_create_table_std_dokumen', 5),
(9, '2019_05_17_063437_create_table_dokumen_bapem_pemberian', 5),
(10, '2019_05_17_063810_create_table_dokumen_bapem_laporan', 5),
(11, '2019_05_17_064130_create_table_pro_kabkot', 5),
(12, '2019_05_20_060409_add_instansi_to_users', 6),
(13, '2019_05_21_063431_create_permission_tables', 7),
(14, '2019_05_23_062640_create_table_list_bapem', 8);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(1, 'App\\User', 2),
(2, 'App\\User', 5),
(2, 'App\\User', 27),
(2, 'App\\User', 28),
(2, 'App\\User', 29),
(2, 'App\\User', 30),
(2, 'App\\User', 31),
(2, 'App\\User', 32),
(2, 'App\\User', 33),
(4, 'App\\User', 13),
(4, 'App\\User', 19),
(4, 'App\\User', 20),
(4, 'App\\User', 21),
(4, 'App\\User', 22),
(4, 'App\\User', 23),
(4, 'App\\User', 24),
(4, 'App\\User', 25),
(4, 'App\\User', 26);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('belanurlaela12@gmail.com', '$2y$10$30U2.kOXHT2WO/2EafNWGOi2BCy.76/vCKWgauyhdbHaWBQjc4aQe', '2019-10-12 15:50:21'),
('jajofirmanraharjo@gmail.com', '$2y$10$pvdWo5P2gu7KmtV2GdcCbOyoUJWlMMGi/hhseCmHd.9MTUL10btBG', '2019-10-15 10:22:45');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'edit articles', 'web', '2019-05-21 07:07:50', '2019-05-21 07:07:50'),
(2, 'read articles', 'web', '2019-05-21 07:11:26', '2019-05-21 07:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `personel_bapem`
--

CREATE TABLE `personel_bapem` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listbapem_id` int(11) NOT NULL,
  `peran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nik` bigint(20) NOT NULL,
  `nip` bigint(20) NOT NULL,
  `hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instansi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kabkot` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personel_bapem`
--

INSERT INTO `personel_bapem` (`id`, `listbapem_id`, `peran`, `nama`, `nik`, `nip`, `hp`, `email`, `jabatan`, `instansi`, `alamat`, `provinsi`, `kabkot`, `kecamatan`, `foto`, `created_at`, `updated_at`) VALUES
(20, 18, 'Bendahara LPD', 'UDEN TAUFIK , SE', 320432280765003, 19650728, '082121509674', 'zulfantaufik@rocketmail.com', 'Bendahara Gaji', 'BPSDM', 'Kp. Cembul RT 004/ RW 008 Kelurahan Rancamanyar.', 'Jawa Barat', 'Kab. Bandung', 'Baleendah', 'default.png', '2019-09-23 08:16:52', '2019-09-23 08:16:52'),
(21, 11, 'Penanggung Jawab LPD', 'Dr. Zainal Abidin Arief M.Sc', 1955071719860, 195507171986021002, '087872243200', 'drzainal.abidinarief@gmail.com', 'Ketua LPD UIKA', 'Universitas Ibn Khaldun', 'Jl. Taweuran Raya No.7 Rt/Rw 03/09 Tegal Gundil', 'Jawa Barat', 'Kota Bogor', 'Kota Bogor Utara', 'personel-1955071719860.jpg', '2019-10-10 04:03:23', '2019-10-10 04:03:23'),
(22, 11, 'Bendahara LPD', 'Ferdina', 3174036005800009, 0, '01210999680', 'ferdinanugraha@gmail.com', 'Bendahara LPD', 'LPD UIKA Bogor', 'Jl.Mampang Prapatan Rt.06/05', 'DKI Jakarta', 'Kota Jakarta Selatan', 'Mampang Prapatan', 'personel-3174036005800009.jpg', '2019-10-10 08:01:33', '2019-10-10 08:01:33'),
(23, 11, 'Operator LPD', 'Abdul Rohman', 3201010608870003, 0, '085888662662', 'omank1987@gmail.com', 'Operator LPD', 'Universitas Ibn Khaldun', 'Cipayung Rt.02/09 Desa tengah', 'Jawa Barat', 'Kab. Bogor', 'cibinong', 'personel-3201010608870003.jpg', '2019-10-10 08:09:00', '2019-10-10 08:09:00'),
(24, 21, 'Penanggung Jawab LPD', 'Dr. H. Suhendra Yusuf, MA', 327311311590003, 200110, '0818198783', 'suhendrayusuf@gmail.com', 'Rektor', 'Universitas Islam Nusantara', 'Jl. Soekarno Hatta No. 530', 'Jawa Barat', 'Kota Bandung', 'Buahbatu', 'personel-327311311590003.jfif', '2019-10-11 02:18:38', '2019-10-11 02:18:38'),
(25, 21, 'Bendahara LPD', 'Lilis Kurniasari,SE', 3273125003640002, 100378, '08122378648', 'liliskurniasari10@gmail.com', 'Keuangan', 'Universitas Islam Nusantara', 'Yupter Barat VII BLOK N-2', 'Jawa Barat', 'Kota Bandung', 'BUAHBATU', 'personel-3273125003640002.jpeg', '2019-10-11 12:51:51', '2019-10-11 12:51:51'),
(26, 21, 'Operator LPD', 'Fajar Indra Septiana', 320538089900004, 300431, '081223780128', 'fajarindraseptiana@gmail.com', 'LPPM', 'Universitas Islam Nusantara', 'Jl. Saluyu A XII No 34', 'Jawa Barat', 'Kota Bandung', 'Rancasari', 'default.png', '2019-10-11 12:57:44', '2019-10-11 12:57:44'),
(27, 16, 'Bendahara LPD', 'Saiful Almujab', 123456, 423119001, '081322325758', 'saifulalmujab@unpas.ac.id', 'Bedahara', 'Univeristas Pasundan', 'JL. Tamansari No.6-8', 'Jawa Barat', 'Kota Bandung', '40116', 'default.png', '2020-01-02 08:25:34', '2020-01-02 08:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `pro_kabkot`
--

CREATE TABLE `pro_kabkot` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `idprop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idkab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kabupaten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `propinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pro_kabkot`
--

INSERT INTO `pro_kabkot` (`id`, `idprop`, `idkab`, `kabupaten`, `propinsi`, `created_at`, `updated_at`) VALUES
(1, '01', '0161', 'Kota Jakarta Utara', 'DKI Jakarta', NULL, NULL),
(2, '01', '0162', 'Kota Jakarta Barat', 'DKI Jakarta', NULL, NULL),
(3, '01', '0163', 'Kota Jakarta Selatan', 'DKI Jakarta', NULL, NULL),
(4, '01', '0164', 'Kota Jakarta Timur', 'DKI Jakarta', NULL, NULL),
(5, '01', '0101', 'Kab. Kepulauan Seribu', 'DKI Jakarta', NULL, NULL),
(6, '01', '0160', 'Kota Jakarta Pusat', 'DKI Jakarta', NULL, NULL),
(7, '02', '0268', 'Kota Tasikmalaya', 'Jawa Barat', NULL, NULL),
(8, '02', '0222', 'Kab. Bekasi', 'Jawa Barat', NULL, NULL),
(9, '02', '0223', 'Kab. Bandung Barat', 'Jawa Barat', NULL, NULL),
(10, '02', '0224', 'Kab. Pangandaran', 'Jawa Barat', NULL, NULL),
(11, '02', '0261', 'Kota Bogor', 'Jawa Barat', NULL, NULL),
(12, '02', '0263', 'Kota Cirebon', 'Jawa Barat', NULL, NULL),
(13, '02', '0265', 'Kota Bekasi', 'Jawa Barat', NULL, NULL),
(14, '02', '0221', 'Kab. Karawang', 'Jawa Barat', NULL, NULL),
(15, '02', '0267', 'Kota Cimahi', 'Jawa Barat', NULL, NULL),
(16, '02', '0260', 'Kota Bandung', 'Jawa Barat', NULL, NULL),
(17, '02', '0269', 'Kota Banjar', 'Jawa Barat', NULL, NULL),
(18, '02', '0266', 'Kota Depok', 'Jawa Barat', NULL, NULL),
(19, '02', '0206', 'Kab. Sukabumi', 'Jawa Barat', NULL, NULL),
(20, '02', '0262', 'Kota Sukabumi', 'Jawa Barat', NULL, NULL),
(21, '02', '0205', 'Kab. Bogor', 'Jawa Barat', NULL, NULL),
(22, '02', '0220', 'Kab. Purwakarta', 'Jawa Barat', NULL, NULL),
(23, '02', '0207', 'Kab. Cianjur', 'Jawa Barat', NULL, NULL),
(24, '02', '0208', 'Kab. Bandung', 'Jawa Barat', NULL, NULL),
(25, '02', '0210', 'Kab. Sumedang', 'Jawa Barat', NULL, NULL),
(26, '02', '0211', 'Kab. Garut', 'Jawa Barat', NULL, NULL),
(27, '02', '0212', 'Kab. Tasikmalaya', 'Jawa Barat', NULL, NULL),
(28, '02', '0215', 'Kab. Kuningan', 'Jawa Barat', NULL, NULL),
(29, '02', '0216', 'Kab. Majalengka', 'Jawa Barat', NULL, NULL),
(30, '02', '0217', 'Kab. Cirebon', 'Jawa Barat', NULL, NULL),
(31, '02', '0218', 'Kab. Indramayu', 'Jawa Barat', NULL, NULL),
(32, '02', '0219', 'Kab. Subang', 'Jawa Barat', NULL, NULL),
(33, '02', '0214', 'Kab. Ciamis', 'Jawa Barat', NULL, NULL),
(34, '03', '0362', 'Kota Salatiga', 'Jawa Tengah', NULL, NULL),
(35, '03', '0320', 'Kab. Jepara', 'Jawa Tengah', NULL, NULL),
(36, '03', '0321', 'Kab. Demak', 'Jawa Tengah', NULL, NULL),
(37, '03', '0322', 'Kab. Semarang', 'Jawa Tengah', NULL, NULL),
(38, '03', '0323', 'Kab. Temanggung', 'Jawa Tengah', NULL, NULL),
(39, '03', '0324', 'Kab. Kendal', 'Jawa Tengah', NULL, NULL),
(40, '03', '0325', 'Kab. Batang', 'Jawa Tengah', NULL, NULL),
(41, '03', '0326', 'Kab. Pekalongan', 'Jawa Tengah', NULL, NULL),
(42, '03', '0327', 'Kab. Pemalang', 'Jawa Tengah', NULL, NULL),
(43, '03', '0365', 'Kota Tegal', 'Jawa Tengah', NULL, NULL),
(44, '03', '0361', 'Kota Surakarta', 'Jawa Tengah', NULL, NULL),
(45, '03', '0363', 'Kota Semarang', 'Jawa Tengah', NULL, NULL),
(46, '03', '0364', 'Kota Pekalongan', 'Jawa Tengah', NULL, NULL),
(47, '03', '0328', 'Kab. Tegal', 'Jawa Tengah', NULL, NULL),
(48, '03', '0319', 'Kab. Kudus', 'Jawa Tengah', NULL, NULL),
(49, '03', '0329', 'Kab. Brebes', 'Jawa Tengah', NULL, NULL),
(50, '03', '0309', 'Kab. Boyolali', 'Jawa Tengah', NULL, NULL),
(51, '03', '0318', 'Kab. Pati', 'Jawa Tengah', NULL, NULL),
(52, '03', '0360', 'Kota Magelang', 'Jawa Tengah', NULL, NULL),
(53, '03', '0303', 'Kab. Purbalingga', 'Jawa Tengah', NULL, NULL),
(54, '03', '0304', 'Kab. Banjarnegara', 'Jawa Tengah', NULL, NULL),
(55, '03', '0305', 'Kab. Kebumen', 'Jawa Tengah', NULL, NULL),
(56, '03', '0306', 'Kab. Purworejo', 'Jawa Tengah', NULL, NULL),
(57, '03', '0307', 'Kab. Wonosobo', 'Jawa Tengah', NULL, NULL),
(58, '03', '0302', 'Kab. Banyumas', 'Jawa Tengah', NULL, NULL),
(59, '03', '0301', 'Kab. Cilacap', 'Jawa Tengah', NULL, NULL),
(60, '03', '0310', 'Kab. Klaten', 'Jawa Tengah', NULL, NULL),
(61, '03', '0311', 'Kab. Sukoharjo', 'Jawa Tengah', NULL, NULL),
(62, '03', '0312', 'Kab. Wonogiri', 'Jawa Tengah', NULL, NULL),
(63, '03', '0313', 'Kab. Karanganyar', 'Jawa Tengah', NULL, NULL),
(64, '03', '0314', 'Kab. Sragen', 'Jawa Tengah', NULL, NULL),
(65, '03', '0315', 'Kab. Grobogan', 'Jawa Tengah', NULL, NULL),
(66, '03', '0316', 'Kab. Blora', 'Jawa Tengah', NULL, NULL),
(67, '03', '0317', 'Kab. Rembang', 'Jawa Tengah', NULL, NULL),
(68, '03', '0308', 'KAB. MAGELANG', 'Jawa Tengah', NULL, NULL),
(69, '04', '0403', 'Kab. Gunung Kidul', 'DI Yogyakarta', NULL, NULL),
(70, '04', '0404', 'Kab. Kulonprogo', 'DI Yogyakarta', NULL, NULL),
(71, '04', '0401', 'Kab. Bantul', 'DI Yogyakarta', NULL, NULL),
(72, '04', '0402', 'Kab. Sleman', 'DI Yogyakarta', NULL, NULL),
(73, '04', '0460', 'Kota Yogyakarta', 'DI Yogyakarta', NULL, NULL),
(74, '05', '0560', 'Kota Surabaya', 'Jawa Timur', NULL, NULL),
(75, '05', '0522', 'Kab. Bondowoso', 'Jawa Timur', NULL, NULL),
(76, '05', '0523', 'Kab. Situbondo', 'Jawa Timur', NULL, NULL),
(77, '05', '0524', 'Kab. Jember', 'Jawa Timur', NULL, NULL),
(78, '05', '0525', 'Kab. Banyuwangi', 'Jawa Timur', NULL, NULL),
(79, '05', '0526', 'Kab. Pamekasan', 'Jawa Timur', NULL, NULL),
(80, '05', '0527', 'Kab. Sampang', 'Jawa Timur', NULL, NULL),
(81, '05', '0529', 'Kab. Bangkalan', 'Jawa Timur', NULL, NULL),
(82, '05', '0513', 'Kab. Kediri', 'Jawa Timur', NULL, NULL),
(83, '05', '0561', 'Kota Malang', 'Jawa Timur', NULL, NULL),
(84, '05', '0562', 'Kota Madiun', 'Jawa Timur', NULL, NULL),
(85, '05', '0563', 'Kota Kediri', 'Jawa Timur', NULL, NULL),
(86, '05', '0564', 'Kota Mojokerto', 'Jawa Timur', NULL, NULL),
(87, '05', '0565', 'Kota Blitar', 'Jawa Timur', NULL, NULL),
(88, '05', '0566', 'Kota Pasuruan', 'Jawa Timur', NULL, NULL),
(89, '05', '0567', 'Kota Probolinggo', 'Jawa Timur', NULL, NULL),
(90, '05', '0568', 'Kota Batu', 'Jawa Timur', NULL, NULL),
(91, '05', '0521', 'Kab. Lumajang', 'Jawa Timur', NULL, NULL),
(92, '05', '0528', 'Kab. Sumenep', 'Jawa Timur', NULL, NULL),
(93, '05', '0505', 'Kab. Bojonegoro', 'Jawa Timur', NULL, NULL),
(94, '05', '0501', 'Kab. Gresik', 'Jawa Timur', NULL, NULL),
(95, '05', '0502', 'Kab. Sidoarjo', 'Jawa Timur', NULL, NULL),
(96, '05', '0515', 'Kab. Blitar', 'Jawa Timur', NULL, NULL),
(97, '05', '0504', 'Kab. Jombang', 'Jawa Timur', NULL, NULL),
(98, '05', '0520', 'Kab. Probolinggo', 'Jawa Timur', NULL, NULL),
(99, '05', '0506', 'Kab. Tuban', 'Jawa Timur', NULL, NULL),
(100, '05', '0507', 'Kab. Lamongan', 'Jawa Timur', NULL, NULL),
(101, '05', '0508', 'Kab. Madiun', 'Jawa Timur', NULL, NULL),
(102, '05', '0510', 'Kab. Magetan', 'Jawa Timur', NULL, NULL),
(103, '05', '0511', 'Kab. Ponorogo', 'Jawa Timur', NULL, NULL),
(104, '05', '0512', 'Kab. Pacitan', 'Jawa Timur', NULL, NULL),
(105, '05', '0514', 'Kab. Nganjuk', 'Jawa Timur', NULL, NULL),
(106, '05', '0516', 'Kab. Tulungagung', 'Jawa Timur', NULL, NULL),
(107, '05', '0517', 'Kab. Trenggalek', 'Jawa Timur', NULL, NULL),
(108, '05', '0518', 'Kab. Malang', 'Jawa Timur', NULL, NULL),
(109, '05', '0519', 'Kab. Pasuruan', 'Jawa Timur', NULL, NULL),
(110, '05', '0509', 'Kab. Ngawi', 'Jawa Timur', NULL, NULL),
(111, '05', '0503', 'Kab. Mojokerto', 'Jawa Timur', NULL, NULL),
(112, '06', '0615', 'Kab. Aceh Nagan Raya', 'Aceh', NULL, NULL),
(113, '06', '0616', 'Kab. Aceh Jaya', 'Aceh', NULL, NULL),
(114, '06', '0617', 'Kab. Aceh Barat Daya', 'Aceh', NULL, NULL),
(115, '06', '0618', 'Kab. Gayo Luas', 'Aceh', NULL, NULL),
(116, '06', '0619', 'Kab. Bener Meriah', 'Aceh', NULL, NULL),
(117, '06', '0620', 'Kab. Pidie Jaya', 'Aceh', NULL, NULL),
(118, '06', '0661', 'Kota Banda Aceh', 'Aceh', NULL, NULL),
(119, '06', '0660', 'Kota Sabang', 'Aceh', NULL, NULL),
(120, '06', '0664', 'Kota Subulussalam', 'Aceh', NULL, NULL),
(121, '06', '0663', 'Kota Langsa', 'Aceh', NULL, NULL),
(122, '06', '0604', 'Kab. Aceh Timur', 'Aceh', NULL, NULL),
(123, '06', '0662', 'Kota Lhokseumawe', 'Aceh', NULL, NULL),
(124, '06', '0603', 'Kab. Aceh Utara', 'Aceh', NULL, NULL),
(125, '06', '0614', 'Kab. Aceh Tamiang', 'Aceh', NULL, NULL),
(126, '06', '0605', 'Kab. Aceh Tengah', 'Aceh', NULL, NULL),
(127, '06', '0601', 'Kab. Aceh Besar', 'Aceh', NULL, NULL),
(128, '06', '0606', 'Kab. Aceh Barat', 'Aceh', NULL, NULL),
(129, '06', '0607', 'Kab. Aceh Selatan', 'Aceh', NULL, NULL),
(130, '06', '0608', 'Kab. Aceh Tenggara', 'Aceh', NULL, NULL),
(131, '06', '0611', 'Kab. Simeulue', 'Aceh', NULL, NULL),
(132, '06', '0612', 'Kab. Bireuen', 'Aceh', NULL, NULL),
(133, '06', '0613', 'Kab. Aceh Singkil', 'Aceh', NULL, NULL),
(134, '06', '0602', 'Kab. Pidie', 'Aceh', NULL, NULL),
(135, '07', '0761', 'Kota Binjai', 'Sumatera Utara', NULL, NULL),
(136, '07', '0722', 'Kab. Batu Bara', 'Sumatera Utara', NULL, NULL),
(137, '07', '0723', 'Kab. Padang Lawas', 'Sumatera Utara', NULL, NULL),
(138, '07', '0724', 'Kab. Padang Lawas Utara', 'Sumatera Utara', NULL, NULL),
(139, '07', '0725', 'Kab. Labuhanbatu Utara', 'Sumatera Utara', NULL, NULL),
(140, '07', '0727', 'Kab. Nias Barat', 'Sumatera Utara', NULL, NULL),
(141, '07', '0760', 'Kota Medan', 'Sumatera Utara', NULL, NULL),
(142, '07', '0762', 'Kota Tebing Tinggi', 'Sumatera Utara', NULL, NULL),
(143, '07', '0763', 'Kota Pematang Siantar', 'Sumatera Utara', NULL, NULL),
(144, '07', '0764', 'Kota Tanjung Balai', 'Sumatera Utara', NULL, NULL),
(145, '07', '0765', 'Kota Sibolga', 'Sumatera Utara', NULL, NULL),
(146, '07', '0721', 'Kab. Serdang Bedagai', 'Sumatera Utara', NULL, NULL),
(147, '07', '0767', 'Kota Gunung Sitoli', 'Sumatera Utara', NULL, NULL),
(148, '07', '0726', 'Kab. Labuhanbatu selatan', 'Sumatera Utara', NULL, NULL),
(149, '07', '0766', 'Kota Padang Sidempuan', 'Sumatera Utara', NULL, NULL),
(150, '07', '0707', 'Kab. Labuhan Batu', 'Sumatera Utara', NULL, NULL),
(151, '07', '0728', 'Kab. Nias Utara', 'Sumatera Utara', NULL, NULL),
(152, '07', '0720', 'Kab. Samosir', 'Sumatera Utara', NULL, NULL),
(153, '07', '0703', 'Kab. Karo', 'Sumatera Utara', NULL, NULL),
(154, '07', '0704', 'Kab. Simalungun', 'Sumatera Utara', NULL, NULL),
(155, '07', '0706', 'Kab. Asahan', 'Sumatera Utara', NULL, NULL),
(156, '07', '0708', 'Kab. Tapanuli Utara', 'Sumatera Utara', NULL, NULL),
(157, '07', '0709', 'Kab. Tapanuli Tengah', 'Sumatera Utara', NULL, NULL),
(158, '07', '0710', 'Kab. Tapanuli Selatan', 'Sumatera Utara', NULL, NULL),
(159, '07', '0711', 'Kab. Nias', 'Sumatera Utara', NULL, NULL),
(160, '07', '0701', 'Kab. Deli Serdang', 'Sumatera Utara', NULL, NULL),
(161, '07', '0715', 'Kab. Mandailing Natal', 'Sumatera Utara', NULL, NULL),
(162, '07', '0716', 'Kab. Toba Samosir', 'Sumatera Utara', NULL, NULL),
(163, '07', '0717', 'Kab. Nias Selatan', 'Sumatera Utara', NULL, NULL),
(164, '07', '0702', 'Kab. Langkat', 'Sumatera Utara', NULL, NULL),
(165, '07', '0705', 'Kab. Dairi', 'Sumatera Utara', NULL, NULL),
(166, '07', '0718', 'Kab. Pakpak Bharat', 'Sumatera Utara', NULL, NULL),
(167, '07', '0719', 'Kab. Humbang Hasundutan', 'Sumatera Utara', NULL, NULL),
(168, '08', '0866', 'Kota Pariaman', 'Sumatera Barat', NULL, NULL),
(169, '08', '0860', 'Kota Bukittinggi', 'Sumatera Barat', NULL, NULL),
(170, '08', '0861', 'Kota Padang', 'Sumatera Barat', NULL, NULL),
(171, '08', '0862', 'Kota Padang Panjang', 'Sumatera Barat', NULL, NULL),
(172, '08', '0863', 'Kota Sawahlunto', 'Sumatera Barat', NULL, NULL),
(173, '08', '0865', 'Kota Payakumbuh', 'Sumatera Barat', NULL, NULL),
(174, '08', '0813', 'Kab. Pasaman Barat', 'Sumatera Barat', NULL, NULL),
(175, '08', '0804', 'Kab. Solok', 'Sumatera Barat', NULL, NULL),
(176, '08', '0864', 'Kota Solok', 'Sumatera Barat', NULL, NULL),
(177, '08', '0802', 'Kab. Pasaman', 'Sumatera Barat', NULL, NULL),
(178, '08', '0806', 'Kab. Pesisir Selatan', 'Sumatera Barat', NULL, NULL),
(179, '08', '0801', 'Kab. Agam', 'Sumatera Barat', NULL, NULL),
(180, '08', '0812', 'Kab. Dharmasraya', 'Sumatera Barat', NULL, NULL),
(181, '08', '0803', 'Kab. Lima Puluh Kota', 'Sumatera Barat', NULL, NULL),
(182, '08', '0805', 'Kab. Padang Pariaman', 'Sumatera Barat', NULL, NULL),
(183, '08', '0807', 'Kab. Tanah Datar', 'Sumatera Barat', NULL, NULL),
(184, '08', '0808', 'Kab. Sijunjung', 'Sumatera Barat', NULL, NULL),
(185, '08', '0810', 'KAB. KEPULAUAN MENTAWAI', 'Sumatera Barat', NULL, NULL),
(186, '08', '0811', 'Kab. Solok Selatan', 'Sumatera Barat', NULL, NULL),
(187, '09', '0960', 'Kota Pekanbaru', 'Riau', NULL, NULL),
(188, '09', '0915', 'Kab. Kepulauan Meranti', 'Riau', NULL, NULL),
(189, '09', '0911', 'Kab. Siak', 'Riau', NULL, NULL),
(190, '09', '0914', 'Kab. Kuantan Singingi', 'Riau', NULL, NULL),
(191, '09', '0905', 'Kab. Indragiri Hilir', 'Riau', NULL, NULL),
(192, '09', '0962', 'Kota Dumai', 'Riau', NULL, NULL),
(193, '09', '0908', 'Kab. Pelalawan', 'Riau', NULL, NULL),
(194, '09', '0904', 'Kab. Indragiri Hulu', 'Riau', NULL, NULL),
(195, '09', '0902', 'Kab. Bengkalis', 'Riau', NULL, NULL),
(196, '09', '0901', 'Kab. Kampar', 'Riau', NULL, NULL),
(197, '09', '0910', 'Kab. Rokan Hilir', 'Riau', NULL, NULL),
(198, '09', '0909', 'Kab. Rokan Hulu', 'Riau', NULL, NULL),
(199, '10', '1007', 'Kab. Muara Jambi', 'Jambi', NULL, NULL),
(200, '10', '1061', 'Kota Sungai Penuh', 'Jambi', NULL, NULL),
(201, '10', '1060', 'Kota Jambi', 'Jambi', NULL, NULL),
(202, '10', '1008', 'Kab. Tanjung Jabung Timur', 'Jambi', NULL, NULL),
(203, '10', '1006', 'Kab. Tebo', 'Jambi', NULL, NULL),
(204, '10', '1005', 'Kab. Kerinci', 'Jambi', NULL, NULL),
(205, '10', '1004', 'Kab. Tanjung Jabung Barat', 'Jambi', NULL, NULL),
(206, '10', '1003', 'Kab. Sarolangun ', 'Jambi', NULL, NULL),
(207, '10', '1002', 'Kab. Bungo', 'Jambi', NULL, NULL),
(208, '10', '1001', 'Kab. Batanghari', 'Jambi', NULL, NULL),
(209, '10', '1009', 'Kab. Merangin', 'Jambi', NULL, NULL),
(210, '11', '1104', 'Kab. Muara Enim', 'Sumatera Selatan', NULL, NULL),
(211, '11', '1110', 'Kab. Ogan Ilir', 'Sumatera Selatan', NULL, NULL),
(212, '11', '1162', 'Kota Lubuk Linggau', 'Sumatera Selatan', NULL, NULL),
(213, '11', '1161', 'Kota Prabumulih', 'Sumatera Selatan', NULL, NULL),
(214, '11', '1160', 'Kota Palembang', 'Sumatera Selatan', NULL, NULL),
(215, '11', '1113', 'Kab. Musi Rawas Utara', 'Sumatera Selatan', NULL, NULL),
(216, '11', '1112', 'Kab. Penukal Abab Lematang Ilir', 'Sumatera Selatan', NULL, NULL),
(217, '11', '1111', 'Kab. Empat Lawang', 'Sumatera Selatan', NULL, NULL),
(218, '11', '1102', 'Kab. Ogan Komering Ilir', 'Sumatera Selatan', NULL, NULL),
(219, '11', '1106', 'Kab. Musi Rawas', 'Sumatera Selatan', NULL, NULL),
(220, '11', '1101', 'Kab. Musi Banyuasin', 'Sumatera Selatan', NULL, NULL),
(221, '11', '1109', 'Kab. Oku Selatan', 'Sumatera Selatan', NULL, NULL),
(222, '11', '1103', 'Kab. Ogan Komering Ulu', 'Sumatera Selatan', NULL, NULL),
(223, '11', '1163', 'Kota Pagar Alam', 'Sumatera Selatan', NULL, NULL),
(224, '11', '1105', 'Kab. Lahat', 'Sumatera Selatan', NULL, NULL),
(225, '11', '1107', 'Kab. Banyuasin', 'Sumatera Selatan', NULL, NULL),
(226, '11', '1108', 'Kab. Oku Timur', 'Sumatera Selatan', NULL, NULL),
(227, '12', '1209', 'Kab. Pesawaran', 'Lampung', NULL, NULL),
(228, '12', '1260', 'Kota Bandar Lampung', 'Lampung', NULL, NULL),
(229, '12', '1213', 'Kab. Pesisir Barat', 'Lampung', NULL, NULL),
(230, '12', '1212', 'Kab. Tulang Bawang Barat', 'Lampung', NULL, NULL),
(231, '12', '1211', 'Kab. Pringsewu', 'Lampung', NULL, NULL),
(232, '12', '1210', 'Kab. Mesuji', 'Lampung', NULL, NULL),
(233, '12', '1261', 'Kota Metro', 'Lampung', NULL, NULL),
(234, '12', '1207', 'Kab. Lampung Timur', 'Lampung', NULL, NULL),
(235, '12', '1206', 'Kab. Tanggamus', 'Lampung', NULL, NULL),
(236, '12', '1205', 'Kab. Tulang Bawang', 'Lampung', NULL, NULL),
(237, '12', '1204', 'Kab. Lampung Barat', 'Lampung', NULL, NULL),
(238, '12', '1203', 'Kab. Lampung Utara', 'Lampung', NULL, NULL),
(239, '12', '1201', 'Kab. Lampung Selatan', 'Lampung', NULL, NULL),
(240, '12', '1208', 'Kab. Way Kanan', 'Lampung', NULL, NULL),
(241, '12', '1202', 'Kab. Lampung Tengah', 'Lampung', NULL, NULL),
(242, '13', '1306', 'Kab. Ketapang', 'Kalimantan Barat', NULL, NULL),
(243, '13', '1361', 'Kota Singkawang', 'Kalimantan Barat', NULL, NULL),
(244, '13', '1360', 'Kota Pontianak', 'Kalimantan Barat', NULL, NULL),
(245, '13', '1313', 'Kab. Mempawah', 'Kalimantan Barat', NULL, NULL),
(246, '13', '1312', 'Kab. Kubu Raya', 'Kalimantan Barat', NULL, NULL),
(247, '13', '1311', 'Kab. Sekadau', 'Kalimantan Barat', NULL, NULL),
(248, '13', '1310', 'Kab. Melawi', 'Kalimantan Barat', NULL, NULL),
(249, '13', '1309', 'Kab. Landak', 'Kalimantan Barat', NULL, NULL),
(250, '13', '1307', 'Kab. Kayong Utara', 'Kalimantan Barat', NULL, NULL),
(251, '13', '1305', 'Kab. Kapuas Hulu', 'Kalimantan Barat', NULL, NULL),
(252, '13', '1304', 'Kab. Sintang', 'Kalimantan Barat', NULL, NULL),
(253, '13', '1303', 'Kab. Sanggau', 'Kalimantan Barat', NULL, NULL),
(254, '13', '1301', 'Kab. Sambas', 'Kalimantan Barat', NULL, NULL),
(255, '13', '1308', 'Kab. Bengkayang', 'Kalimantan Barat', NULL, NULL),
(256, '14', '1401', 'Kab. Kapuas', 'Kalimantan Tengah', NULL, NULL),
(257, '14', '1402', 'Kab. Barito Selatan', 'Kalimantan Tengah', NULL, NULL),
(258, '14', '1405', 'Kab. Kotawaringin Barat', 'Kalimantan Tengah', NULL, NULL),
(259, '14', '1412', 'Kab. Murung Raya', 'Kalimantan Tengah', NULL, NULL),
(260, '14', '1404', 'Kab. Kotawaringin Timur', 'Kalimantan Tengah', NULL, NULL),
(261, '14', '1403', 'Kab. Barito Utara', 'Kalimantan Tengah', NULL, NULL),
(262, '14', '1413', 'Kab. Barito Timur', 'Kalimantan Tengah', NULL, NULL),
(263, '14', '1411', 'Kab. Pulang Pisau', 'Kalimantan Tengah', NULL, NULL),
(264, '14', '1410', 'Kab. Gunung Mas', 'Kalimantan Tengah', NULL, NULL),
(265, '14', '1409', 'Kab. Lamandau', 'Kalimantan Tengah', NULL, NULL),
(266, '14', '1408', 'Kab. Sukamara', 'Kalimantan Tengah', NULL, NULL),
(267, '14', '1407', 'Kab. Seruyan', 'Kalimantan Tengah', NULL, NULL),
(268, '14', '1406', 'Kab. Katingan', 'Kalimantan Tengah', NULL, NULL),
(269, '14', '1460', 'Kota Palangkaraya', 'Kalimantan Tengah', NULL, NULL),
(270, '15', '1510', 'Kab. Balangan', 'Kalimantan Selatan', NULL, NULL),
(271, '15', '1508', 'Kab. Tabalong', 'Kalimantan Selatan', NULL, NULL),
(272, '15', '1561', 'Kota Banjarbaru', 'Kalimantan Selatan', NULL, NULL),
(273, '15', '1511', 'Kab. Tanah Bumbu', 'Kalimantan Selatan', NULL, NULL),
(274, '15', '1509', 'Kab. Kotabaru', 'Kalimantan Selatan', NULL, NULL),
(275, '15', '1506', 'Kab. Hulu Sungai Tengah', 'Kalimantan Selatan', NULL, NULL),
(276, '15', '1505', 'Kab. Hulu Sungai Selatan', 'Kalimantan Selatan', NULL, NULL),
(277, '15', '1501', 'Kab. Banjar', 'Kalimantan Selatan', NULL, NULL),
(278, '15', '1504', 'Kab. Tapin', 'Kalimantan Selatan', NULL, NULL),
(279, '15', '1502', 'Kab. Tanah Laut', 'Kalimantan Selatan', NULL, NULL),
(280, '15', '1503', 'Kab. Barito Kuala', 'Kalimantan Selatan', NULL, NULL),
(281, '15', '1560', 'Kota Banjarmasin', 'Kalimantan Selatan', NULL, NULL),
(282, '15', '1507', 'Kab. Hulu Sungai Utara', 'Kalimantan Selatan', NULL, NULL),
(283, '16', '1610', 'Kab. Kutai Timur', 'Kalimantan Timur', NULL, NULL),
(284, '16', '1663', 'Kota Bontang', 'Kalimantan Timur', NULL, NULL),
(285, '16', '1661', 'Kota Balikpapan', 'Kalimantan Timur', NULL, NULL),
(286, '16', '1660', 'Kota Samarinda', 'Kalimantan Timur', NULL, NULL),
(287, '16', '1611', 'Kab. Penajam Paser Utara', 'Kalimantan Timur', NULL, NULL),
(288, '16', '1609', 'KAB. KUTAI BARAT', 'Kalimantan Timur', NULL, NULL),
(289, '16', '1603', 'Kab. Berau', 'Kalimantan Timur', NULL, NULL),
(290, '16', '1602', 'Kab. Kutai Kartanegara', 'Kalimantan Timur', NULL, NULL),
(291, '16', '1601', 'Kab. Paser', 'Kalimantan Timur', NULL, NULL),
(292, '16', '1613', 'KAB. MAHAKAM ULU', 'Kalimantan Timur', NULL, NULL),
(293, '17', '1711', 'KAB. BOLAANG MONGONDOW TIMUR', 'Sulawesi Utara', NULL, NULL),
(294, '17', '1704', 'Kab. Kepulauan Talaud', 'Sulawesi Utara', NULL, NULL),
(295, '17', '1763', 'Kota Kotamobagu', 'Sulawesi Utara', NULL, NULL),
(296, '17', '1762', 'Kota Tomohon', 'Sulawesi Utara', NULL, NULL),
(297, '17', '1761', 'Kota Bitung', 'Sulawesi Utara', NULL, NULL),
(298, '17', '1760', 'Kota Manado', 'Sulawesi Utara', NULL, NULL),
(299, '17', '1712', 'Kab. Bolaang Mongondow Selatan', 'Sulawesi Utara', NULL, NULL),
(300, '17', '1708', 'KAB. BOLAANG MONGONDOW UTARA', 'Sulawesi Utara', NULL, NULL),
(301, '17', '1707', 'Kab. Minahasa Tenggara', 'Sulawesi Utara', NULL, NULL),
(302, '17', '1701', 'Kab. Bolaang Mongondow', 'Sulawesi Utara', NULL, NULL),
(303, '17', '1705', 'Kab. Minahasa Selatan', 'Sulawesi Utara', NULL, NULL),
(304, '17', '1702', 'Kab. Minahasa', 'Sulawesi Utara', NULL, NULL),
(305, '17', '1703', 'Kab. Kepulauan Sangihe ', 'Sulawesi Utara', NULL, NULL),
(306, '17', '1706', 'Kab. Minahasa Utara', 'Sulawesi Utara', NULL, NULL),
(307, '17', '1709', 'Kab. Kepulauan Sitaro', 'Sulawesi Utara', NULL, NULL),
(308, '18', '1809', 'Kab. Tojo Una-Una', 'Sulawesi Tengah', NULL, NULL),
(309, '18', '1860', 'Kota Palu', 'Sulawesi Tengah', NULL, NULL),
(310, '18', '1812', 'Kab. Morowali Utara', 'Sulawesi Tengah', NULL, NULL),
(311, '18', '1810', 'Kab. Sigi', 'Sulawesi Tengah', NULL, NULL),
(312, '18', '1808', 'Kab. Parigi Muotong', 'Sulawesi Tengah', NULL, NULL),
(313, '18', '1806', 'Kab. Toli Toli', 'Sulawesi Tengah', NULL, NULL),
(314, '18', '1805', 'Kab. Buol', 'Sulawesi Tengah', NULL, NULL),
(315, '18', '1804', 'Kab. Banggai', 'Sulawesi Tengah', NULL, NULL),
(316, '18', '1803', 'Kab. Poso', 'Sulawesi Tengah', NULL, NULL),
(317, '18', '1802', 'Kab. Donggala', 'Sulawesi Tengah', NULL, NULL),
(318, '18', '1801', 'Kab. Banggai Kepulauan', 'Sulawesi Tengah', NULL, NULL),
(319, '18', '1807', 'Kab. Morowali', 'Sulawesi Tengah', NULL, NULL),
(320, '18', '1811', 'Kab. Banggai Laut', 'Sulawesi Tengah', NULL, NULL),
(321, '19', '1961', 'Kota Pare Pare', 'Sulawesi Selatan', NULL, NULL),
(322, '19', '1915', 'Kab. Sidenreng Rappang', 'Sulawesi Selatan', NULL, NULL),
(323, '19', '1916', 'Kab. Enrekang', 'Sulawesi Selatan', NULL, NULL),
(324, '19', '1917', 'Kab. Luwu', 'Sulawesi Selatan', NULL, NULL),
(325, '19', '1918', 'Kab. Tana Toraja', 'Sulawesi Selatan', NULL, NULL),
(326, '19', '1924', 'Kab. Luwu Utara', 'Sulawesi Selatan', NULL, NULL),
(327, '19', '1926', 'Kab. Luwu Timur', 'Sulawesi Selatan', NULL, NULL),
(328, '19', '1927', 'Kab. Toraja Utara', 'Sulawesi Selatan', NULL, NULL),
(329, '19', '1914', 'Kab. Pinrang', 'Sulawesi Selatan', NULL, NULL),
(330, '19', '1962', 'Kota Palopo', 'Sulawesi Selatan', NULL, NULL),
(331, '19', '1902', 'Kab. Pangkajene Kepulauan', 'Sulawesi Selatan', NULL, NULL),
(332, '19', '1960', 'Kota Makasar', 'Sulawesi Selatan', NULL, NULL),
(333, '19', '1905', 'Kab. Jeneponto', 'Sulawesi Selatan', NULL, NULL),
(334, '19', '1913', 'Kab. Selayar', 'Sulawesi Selatan', NULL, NULL),
(335, '19', '1904', 'Kab. Takalar', 'Sulawesi Selatan', NULL, NULL),
(336, '19', '1903', 'Kab. Gowa', 'Sulawesi Selatan', NULL, NULL),
(337, '19', '1906', 'Kab. Barru', 'Sulawesi Selatan', NULL, NULL),
(338, '19', '1907', 'Kab. Bone', 'Sulawesi Selatan', NULL, NULL),
(339, '19', '1908', 'Kab. Wajo', 'Sulawesi Selatan', NULL, NULL),
(340, '19', '1909', 'Kab. Soppeng', 'Sulawesi Selatan', NULL, NULL),
(341, '19', '1910', 'Kab. Bantaeng', 'Sulawesi Selatan', NULL, NULL),
(342, '19', '1911', 'Kab. Bulukumba', 'Sulawesi Selatan', NULL, NULL),
(343, '19', '1912', 'Kab. Sinjai', 'Sulawesi Selatan', NULL, NULL),
(344, '19', '1901', 'Kab. Maros', 'Sulawesi Selatan', NULL, NULL),
(345, '20', '2015', 'Kab. Buton Tengah', 'Sulawesi Tenggara', NULL, NULL),
(346, '20', '2010', 'Kab. Buton Utara', 'Sulawesi Tenggara', NULL, NULL),
(347, '20', '2060', 'Kota Kendari', 'Sulawesi Tenggara', NULL, NULL),
(348, '20', '2014', 'Kab. Buton Selatan', 'Sulawesi Tenggara', NULL, NULL),
(349, '20', '2013', 'Kab. Muna Barat', 'Sulawesi Tenggara', NULL, NULL),
(350, '20', '2012', 'Kab. Konawe Kepulauan', 'Sulawesi Tenggara', NULL, NULL),
(351, '20', '2011', 'Kab. Kolaka Timur', 'Sulawesi Tenggara', NULL, NULL),
(352, '20', '2008', 'Kab. Kolaka Utara', 'Sulawesi Tenggara', NULL, NULL),
(353, '20', '2007', 'Kab. Bombana', 'Sulawesi Tenggara', NULL, NULL),
(354, '20', '2006', 'Kab. Wakatobi', 'Sulawesi Tenggara', NULL, NULL),
(355, '20', '2005', 'Kab. Konawe Selatan', 'Sulawesi Tenggara', NULL, NULL),
(356, '20', '2004', 'Kab. Kolaka', 'Sulawesi Tenggara', NULL, NULL),
(357, '20', '2003', 'Kab. Buton', 'Sulawesi Tenggara', NULL, NULL),
(358, '20', '2002', 'Kab. Muna', 'Sulawesi Tenggara', NULL, NULL),
(359, '20', '2001', 'Kab. Konawe', 'Sulawesi Tenggara', NULL, NULL),
(360, '20', '2061', 'Kota Bau-Bau', 'Sulawesi Tenggara', NULL, NULL),
(361, '20', '2009', 'Kab. Kowane Utara', 'Sulawesi Tenggara', NULL, NULL),
(362, '21', '2108', 'KAB. BURU SELATAN', 'Maluku', NULL, NULL),
(363, '21', '2161', 'Kota Tual', 'Maluku', NULL, NULL),
(364, '21', '2109', 'KAB. MALUKU BARAT DAYA', 'Maluku', NULL, NULL),
(365, '21', '2107', 'Kab. Kepulauan Aru', 'Maluku', NULL, NULL),
(366, '21', '2105', 'Kab. Seram Bagian Barat', 'Maluku', NULL, NULL),
(367, '21', '2104', 'Kab. Maluku Tenggara Barat', 'Maluku', NULL, NULL),
(368, '21', '2103', 'Kab. Buru', 'Maluku', NULL, NULL),
(369, '21', '2102', 'Kab. Maluku Tenggara', 'Maluku', NULL, NULL),
(370, '21', '2101', 'Kab. Maluku Tengah', 'Maluku', NULL, NULL),
(371, '21', '2106', 'Kab. Seram Bagian Timur', 'Maluku', NULL, NULL),
(372, '21', '2160', 'Kota Ambon', 'Maluku', NULL, NULL),
(373, '22', '2204', 'Kab. Badung', 'Bali', NULL, NULL),
(374, '22', '2260', 'Kota Denpasar', 'Bali', NULL, NULL),
(375, '22', '2208', 'Kab. Karang Asem', 'Bali', NULL, NULL),
(376, '22', '2207', 'Kab. Bangli', 'Bali', NULL, NULL),
(377, '22', '2205', 'Kab. Gianyar', 'Bali', NULL, NULL),
(378, '22', '2203', 'Kab. Tabanan', 'Bali', NULL, NULL),
(379, '22', '2202', 'Kab. Jembrana', 'Bali', NULL, NULL),
(380, '22', '2201', 'Kab. Buleleng', 'Bali', NULL, NULL),
(381, '22', '2206', 'Kab. Klungkung', 'Bali', NULL, NULL),
(382, '23', '2361', 'Kota Bima', 'Nusa Tenggara Barat', NULL, NULL),
(383, '23', '2360', 'Kota Mataram', 'Nusa Tenggara Barat', NULL, NULL),
(384, '23', '2306', 'Kab. Bima', 'Nusa Tenggara Barat', NULL, NULL),
(385, '23', '2307', 'Kab. Sumbawa Barat', 'Nusa Tenggara Barat', NULL, NULL),
(386, '23', '2304', 'Kab. Sumbawa', 'Nusa Tenggara Barat', NULL, NULL),
(387, '23', '2303', 'Kab. Lombok Timur', 'Nusa Tenggara Barat', NULL, NULL),
(388, '23', '2302', 'Kab. Lombok Tengah', 'Nusa Tenggara Barat', NULL, NULL),
(389, '23', '2301', 'Kab. Lombok Barat', 'Nusa Tenggara Barat', NULL, NULL),
(390, '23', '2308', 'Kab. Lombok Utara', 'Nusa Tenggara Barat', NULL, NULL),
(391, '23', '2305', 'Kab. Dompu', 'Nusa Tenggara Barat', NULL, NULL),
(392, '24', '2460', 'Kota Kupang', 'Nusa Tenggara Timur', NULL, NULL),
(393, '24', '2414', 'Kab. Lembata', 'Nusa Tenggara Timur', NULL, NULL),
(394, '24', '2415', 'Kab. Rote Ndao', 'Nusa Tenggara Timur', NULL, NULL),
(395, '24', '2416', 'Kab. Manggarai Barat', 'Nusa Tenggara Timur', NULL, NULL),
(396, '24', '2418', 'Kab. Sumba Tengah', 'Nusa Tenggara Timur', NULL, NULL),
(397, '24', '2420', 'Kab. Manggarai Timur', 'Nusa Tenggara Timur', NULL, NULL),
(398, '24', '2413', 'Kab. Sumba Barat', 'Nusa Tenggara Timur', NULL, NULL),
(399, '24', '2422', 'Kab. Malaka', 'Nusa Tenggara Timur', NULL, NULL),
(400, '24', '2417', 'Kab. Nagekeo', 'Nusa Tenggara Timur', NULL, NULL),
(401, '24', '2421', 'KAB. SABU RAIJUA', 'Nusa Tenggara Timur', NULL, NULL),
(402, '24', '2406', 'Kab. Alor', 'Nusa Tenggara Timur', NULL, NULL),
(403, '24', '2419', 'Kab. Sumba Barat Daya', 'Nusa Tenggara Timur', NULL, NULL),
(404, '24', '2412', 'Kab. Sumba Timur', 'Nusa Tenggara Timur', NULL, NULL),
(405, '24', '2403', 'Kab. Timor Tengah Selatan', 'Nusa Tenggara Timur', NULL, NULL),
(406, '24', '2405', 'Kab. Belu', 'Nusa Tenggara Timur', NULL, NULL),
(407, '24', '2401', 'Kab. Kupang', 'Nusa Tenggara Timur', NULL, NULL),
(408, '24', '2407', 'Kab. Flores Timur', 'Nusa Tenggara Timur', NULL, NULL),
(409, '24', '2408', 'Kab. Sikka', 'Nusa Tenggara Timur', NULL, NULL),
(410, '24', '2409', 'Kab. Ende', 'Nusa Tenggara Timur', NULL, NULL),
(411, '24', '2410', 'Kab. Ngada', 'Nusa Tenggara Timur', NULL, NULL),
(412, '24', '2411', 'Kab. Manggarai', 'Nusa Tenggara Timur', NULL, NULL),
(413, '24', '2404', 'Kab. Timor Tengah Utara', 'Nusa Tenggara Timur', NULL, NULL),
(414, '25', '2526', 'KAB. WAROPEN', 'Papua', NULL, NULL),
(415, '25', '2520', 'Kab. Keerom', 'Papua', NULL, NULL),
(416, '25', '2531', 'KAB. YALIMO', 'Papua', NULL, NULL),
(417, '25', '2527', 'KAB. SUPIORI', 'Papua', NULL, NULL),
(418, '25', '2528', 'KAB. MAMBERAMO RAYA', 'Papua', NULL, NULL),
(419, '25', '2529', 'KAB. MAMBERAMO TENGAH', 'Papua', NULL, NULL),
(420, '25', '2530', 'KAB. NDUGA', 'Papua', NULL, NULL),
(421, '25', '2532', 'KAB. PUNCAK', 'Papua', NULL, NULL),
(422, '25', '2533', 'KAB. DOGIYAI', 'Papua', NULL, NULL),
(423, '25', '2534', 'KAB. LANNY JAYA', 'Papua', NULL, NULL),
(424, '25', '2535', 'KAB. DEIYAI', 'Papua', NULL, NULL),
(425, '25', '2560', 'Kota Jayapura', 'Papua', NULL, NULL),
(426, '25', '2519', 'KAB. SARMI', 'Papua', NULL, NULL),
(427, '25', '2507', 'Kab. Marauke', 'Papua', NULL, NULL),
(428, '25', '2536', 'KAB. INTAN JAYA', 'Papua', NULL, NULL),
(429, '25', '2510', 'KAB. PANIAI', 'Papua', NULL, NULL),
(430, '25', '2501', 'Kab. Jaya Pura', 'Papua', NULL, NULL),
(431, '25', '2502', 'Kab. Biak Numfor', 'Papua', NULL, NULL),
(432, '25', '2503', 'KAB. KEPULAUAN YAPEN', 'Papua', NULL, NULL),
(433, '25', '2507', 'KAB. MERAUKE', 'Papua', NULL, NULL),
(434, '25', '2508', 'Kab. Jayawijaya', 'Papua', NULL, NULL),
(435, '25', '2509', 'Kab. Nabire', 'Papua', NULL, NULL),
(436, '25', '2518', 'KAB. TOLIKARA', 'Papua', NULL, NULL),
(437, '25', '2511', 'KAB. PUNCAK JAYA', 'Papua', NULL, NULL),
(438, '25', '2512', 'Kab. Mimika', 'Papua', NULL, NULL),
(439, '25', '2513', 'KAB. BOVEN DIGUL', 'Papua', NULL, NULL),
(440, '25', '2514', 'KAB. MAPPI', 'Papua', NULL, NULL),
(441, '25', '2515', 'KAB. ASMAT', 'Papua', NULL, NULL),
(442, '25', '2516', 'KAB. YAHUKIMO', 'Papua', NULL, NULL),
(443, '25', '2517', 'KAB. PEGUNUNGAN BINTANG', 'Papua', NULL, NULL),
(444, '26', '2608', 'Kab. Seluma', 'Bengkulu', NULL, NULL),
(445, '26', '2609', 'Kab. Bengkulu Tengah', 'Bengkulu', NULL, NULL),
(446, '26', '2607', 'Kab. Kaur', 'Bengkulu', NULL, NULL),
(447, '26', '2606', 'Kab. Lebong', 'Bengkulu', NULL, NULL),
(448, '26', '2604', 'Kab. Muko-Muko', 'Bengkulu', NULL, NULL),
(449, '26', '2603', 'Kab. Bengkulu Selatan', 'Bengkulu', NULL, NULL),
(450, '26', '2602', 'Kab. Rejang Lebong', 'Bengkulu', NULL, NULL),
(451, '26', '2601', 'Kab. Bengkulu Utara', 'Bengkulu', NULL, NULL),
(452, '26', '2605', 'Kab. Kepahiang', 'Bengkulu', NULL, NULL),
(453, '26', '2660', 'Kota Bengkulu', 'Bengkulu', NULL, NULL),
(454, '27', '2706', 'Kab. Halmahera Timur', 'Maluku Utara', NULL, NULL),
(455, '27', '2761', 'Kota Tidore Kepulauan', 'Maluku Utara', NULL, NULL),
(456, '27', '2760', 'Kota Ternate', 'Maluku Utara', NULL, NULL),
(457, '27', '2709', 'Kab. Pulau Taliabu', 'Maluku Utara', NULL, NULL),
(458, '27', '2707', 'Kab. Kepulauan Sula', 'Maluku Utara', NULL, NULL),
(459, '27', '2705', 'Kab. Halmahera Selatan', 'Maluku Utara', NULL, NULL),
(460, '27', '2704', 'Kab. Halmahera Utara', 'Maluku Utara', NULL, NULL),
(461, '27', '2703', 'Kab. Halmahera Barat', 'Maluku Utara', NULL, NULL),
(462, '27', '2702', 'Kab. Halmahera Tengah', 'Maluku Utara', NULL, NULL),
(463, '27', '2708', 'Kab. Morotai', 'Maluku Utara', NULL, NULL),
(464, '28', '2861', 'Kota Tangerang', 'Banten', NULL, NULL),
(465, '28', '2801', 'Kab. Pandeglang', 'Banten', NULL, NULL),
(466, '28', '2863', 'Kota Tangerang Selatan', 'Banten', NULL, NULL),
(467, '28', '2862', 'Kota Serang', 'Banten', NULL, NULL),
(468, '28', '2860', 'Kota Cilegon', 'Banten', NULL, NULL),
(469, '28', '2804', 'Kab. Serang', 'Banten', NULL, NULL),
(470, '28', '2802', 'Kab. Lebak', 'Banten', NULL, NULL),
(471, '28', '2803', 'Kab. Tangerang', 'Banten', NULL, NULL),
(472, '29', '2901', 'Kab. Bangka', 'Bangka Belitung', NULL, NULL),
(473, '29', '2902', 'Kab. Belitung', 'Bangka Belitung', NULL, NULL),
(474, '29', '2903', 'Kab. Bangka Tengah', 'Bangka Belitung', NULL, NULL),
(475, '29', '2904', 'Kab. Bangka Barat', 'Bangka Belitung', NULL, NULL),
(476, '29', '2905', 'Kab. Bangka Selatan', 'Bangka Belitung', NULL, NULL),
(477, '29', '2906', 'Kab. Belitung Timur', 'Bangka Belitung', NULL, NULL),
(478, '29', '2960', 'Kota Pangkal Pinang', 'Bangka Belitung', NULL, NULL),
(479, '30', '3004', 'Kab. Bonebolango', 'Gorontalo', NULL, NULL),
(480, '30', '3005', 'Kab. Gorontalo Utara', 'Gorontalo', NULL, NULL),
(481, '30', '3002', 'Kab. Gorontalo', 'Gorontalo', NULL, NULL),
(482, '30', '3001', 'Kab. Boalemo', 'Gorontalo', NULL, NULL),
(483, '30', '3060', 'Kota Gorontalo', 'Gorontalo', NULL, NULL),
(484, '30', '3003', 'Kab. Pohuwato', 'Gorontalo', NULL, NULL),
(485, '31', '3105', 'KAB. KEPULAUAN ANAMBAS', 'Kepulauan Riau', NULL, NULL),
(486, '31', '3160', 'Kota Batam', 'Kepulauan Riau', NULL, NULL),
(487, '31', '3104', 'Kab. Lingga', 'Kepulauan Riau', NULL, NULL),
(488, '31', '3103', 'Kab. Natuna', 'Kepulauan Riau', NULL, NULL),
(489, '31', '3102', 'Kab. Karimun', 'Kepulauan Riau', NULL, NULL),
(490, '31', '3101', 'KAB. BINTAN', 'Kepulauan Riau', NULL, NULL),
(491, '31', '3161', 'Kota Tanjung Pinang', 'Kepulauan Riau', NULL, NULL),
(492, '32', '3207', 'KAB. TELUK BINTUNI', 'Papua Barat', NULL, NULL),
(493, '32', '3260', 'Kota Sorong', 'Papua Barat', NULL, NULL),
(494, '32', '3212', 'KAB. MANOKWARI SELATAN', 'Papua Barat', NULL, NULL),
(495, '32', '3211', 'KAB. PEGUNUNGAN ARFAK', 'Papua Barat', NULL, NULL),
(496, '32', '3210', 'KAB. MAYBRAT', 'Papua Barat', NULL, NULL),
(497, '32', '3208', 'KAB. TELUK WONDAMA', 'Papua Barat', NULL, NULL),
(498, '32', '3205', 'KAB. SORONG SELATAN', 'Papua Barat', NULL, NULL),
(499, '32', '3204', 'KAB. KAIMANA', 'Papua Barat', NULL, NULL),
(500, '32', '3203', 'Kab. Manokwari', 'Papua Barat', NULL, NULL),
(501, '32', '3202', 'Kab. Sorong', 'Papua Barat', NULL, NULL),
(502, '32', '3201', 'Kab. Fak-Fak', 'Papua Barat', NULL, NULL),
(503, '32', '3209', 'KAB. TAMBRAUW', 'Papua Barat', NULL, NULL),
(504, '32', '3206', 'Kab. Raja Ampat', 'Papua Barat', NULL, NULL),
(505, '33', '3303', 'Kab. Polewali', 'Sulawesi Barat', NULL, NULL),
(506, '33', '3306', 'Kab. Mamuju Tengah', 'Sulawesi Barat', NULL, NULL),
(507, '33', '3304', 'Kab. Mamasa', 'Sulawesi Barat', NULL, NULL),
(508, '33', '3302', 'Kab. Mamuju Utara', 'Sulawesi Barat', NULL, NULL),
(509, '33', '3301', 'Kab. Mamuju', 'Sulawesi Barat', NULL, NULL),
(510, '33', '3305', 'Kab. Majene', 'Sulawesi Barat', NULL, NULL),
(511, '34', '3401', 'Kab. Bulungan', 'Kalimantan Utara', NULL, NULL),
(512, '34', '3402', 'KAB. MALINAU', 'Kalimantan Utara', NULL, NULL),
(513, '34', '3403', 'KAB. NUNUKAN', 'Kalimantan Utara', NULL, NULL),
(514, '34', '3404', 'KAB. TANA TIDUNG', 'Kalimantan Utara', NULL, NULL),
(515, '34', '3460', 'Kota Tarakan', 'Kalimantan Utara', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'administrator', 'web', '2019-05-21 07:07:17', '2019-05-21 07:07:17'),
(2, 'pengguna', 'web', '2019-05-21 07:11:09', '2019-05-21 07:11:09'),
(3, 'superuser', 'web', '2019-05-21 07:51:51', '2019-05-21 07:51:51'),
(4, 'keuangan', 'web', '2019-08-28 01:40:57', '2019-08-28 01:40:57');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sasaran`
--

CREATE TABLE `sasaran` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `listbapem_id` int(11) NOT NULL,
  `tipe_bapem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penerima_bapem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_bapem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sasaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rupiah_bapem` bigint(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sasaran`
--

INSERT INTO `sasaran` (`id`, `listbapem_id`, `tipe_bapem`, `penerima_bapem`, `area_bapem`, `sasaran`, `satuan`, `rupiah_bapem`, `created_at`, `updated_at`) VALUES
(62, 11, 'Penguatan KS', 'Universitas Ibn Khaldun', 'Kab. Bogor', '1498', 'orang', 4757350000, '2019-09-23 06:44:02', '2019-09-23 06:44:02'),
(63, 11, 'Penguatan KS', 'Universitas Ibn Khaldun', 'Kab. Sukabumi', '899', 'orang', 2864105000, '2019-09-23 06:44:29', '2019-09-23 06:44:29'),
(64, 11, 'Penguatan KS', 'Universitas Ibn Khaldun', 'Kota Bogor', '189', 'orang', 668365000, '2019-09-23 06:44:53', '2019-09-23 06:44:53'),
(65, 16, 'Penguatan KS', 'Universitas Pasundan', 'Kab. Purwakarta', '277', 'orang', 886035000, '2019-09-23 06:47:30', '2019-09-23 06:47:30'),
(66, 16, 'Penguatan KS', 'Universitas Pasundan', 'Kab. Bekasi', '919', 'orang', 2913795000, '2019-09-23 06:48:07', '2019-09-23 06:48:07'),
(67, 16, 'Penguatan KS', 'Universitas Pasundan', 'Kota Bekasi', '756', 'orang', 2449380000, '2019-09-23 06:49:58', '2019-09-23 06:49:58'),
(68, 17, 'Penguatan KS', 'Universitas Pakuan', 'Kab. Cianjur', '1320', 'orang', 4209900000, '2019-09-23 06:51:05', '2019-09-23 06:51:05'),
(69, 18, 'Penguatan KS', 'BPSDM Provinsi Jawa Barat', 'Kab. Bandung', '871', 'orang', 2768495000, '2019-09-23 06:51:45', '2019-09-23 06:51:45'),
(70, 18, 'Penguatan KS', 'BPSDM Provinsi Jawa Barat', 'Kab. Subang', '690', 'orang', 2260870000, '2019-09-23 06:52:18', '2019-09-23 06:52:18'),
(71, 18, 'Penguatan KS', 'BPSDM Provinsi Jawa Barat', 'Kota Bandung', '543', 'orang', 1727335000, '2019-09-23 06:52:45', '2019-09-23 06:52:45'),
(72, 19, 'Penguatan KS', 'Universitas Swadaya Gunung Jati', 'Kab. Kuningan', '744', 'orang', 2366825000, '2019-09-23 06:54:08', '2019-09-23 06:54:08'),
(73, 19, 'Penguatan KS', 'Universitas Swadaya Gunung Jati', 'Kab. Cirebon', '273', 'orang', 903425000, '2019-09-23 06:54:33', '2019-09-23 06:54:33'),
(74, 20, 'Penguatan KS', 'Universitas Pendidikan Indonesia', 'Prop. Jawa Barat', '1359', 'orang', 4727855000, '2019-09-23 06:55:35', '2019-09-23 06:55:35'),
(75, 20, 'Penguatan KS', 'Universitas Pendidikan Indonesia', 'Kab. Tasikmalaya', '849', 'orang', 2723845000, '2019-09-23 06:55:58', '2019-09-23 06:55:58'),
(76, 20, 'Penguatan KS', 'Universitas Pendidikan Indonesia', 'Kab. Karawang', '267', 'orang', 866625000, '2019-09-23 06:56:19', '2019-09-23 06:56:19'),
(77, 20, 'Penguatan KS', 'Universitas Pendidikan Indonesia', 'Kab. Bandung Barat', '420', 'orang', 1360440000, '2019-09-23 06:56:43', '2019-09-23 06:56:43'),
(78, 20, 'Penguatan KS', 'Universitas Pendidikan Indonesia', 'Kab. Sumedang', '348', 'orang', 1116270000, '2019-09-23 06:57:12', '2019-09-23 06:57:12'),
(79, 20, 'Penguatan KS', 'Universitas Pendidikan Indonesia', 'Kota Cimahi', '72', 'orang', 244170000, '2019-09-23 06:57:36', '2019-09-23 06:57:36'),
(80, 20, 'Penguatan KS', 'Universitas Pendidikan Indonesia', 'Kota Tasikmalaya', '80', 'orang', 264170000, '2019-09-23 06:58:00', '2019-09-23 06:58:00'),
(81, 20, 'Penguatan KS', 'Universitas Pendidikan Indonesia', 'Kab. Majalengka', '541', 'orang', 1731555000, '2019-09-23 06:58:26', '2019-09-23 06:58:26'),
(82, 21, 'Penguatan KS', 'Universitas Islam Nusantara', 'Kab. Garut', '949', 'orang', 3129595000, '2019-09-23 06:59:40', '2019-09-23 06:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `std_dokumen`
--

CREATE TABLE `std_dokumen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tipe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `std_dokumen`
--

INSERT INTO `std_dokumen` (`id`, `tipe`, `nama_dokumen`, `kode_dokumen`, `created_at`, `updated_at`) VALUES
(2, 'Pemberian Bapem', 'Perjanjian Kerjasama', '0102', NULL, NULL),
(3, 'Pemberian Bapem', 'SK Penetapan Pengelola Banpem', '0103', NULL, NULL),
(7, 'Pemberian Bapem', 'Proposal', '0107', NULL, NULL),
(8, 'Laporan Bapem', 'Daftar Hadir Peserta, Pengajar & Panitia\r\n', '0201', NULL, NULL),
(9, 'Laporan Bapem', 'Daftar Hadir Penceramah dan Panitia LPD\r\n', '0202', NULL, NULL),
(10, 'Laporan Bapem', 'Surat Pertanggungjawaban Belanja\r\n', '0203', NULL, NULL),
(11, 'Laporan Bapem', 'Kwitansi Belanja Bahan\r\n', '0204', NULL, NULL),
(12, 'Laporan Bapem', 'Belanja Honor Output Kegiatan\r\n', '0205', NULL, NULL),
(13, 'Laporan Bapem', 'Kwitansi Belanja Jasa Profesi\r\n', '0206', NULL, NULL),
(14, 'Laporan Bapem', 'Kwitansi Belanja Perjalanan Dinas\r\n', '0207', NULL, NULL),
(15, 'Laporan Bapem', 'Kontrak Akomodasi / Konsumsi\r\n', '0208', NULL, NULL),
(16, 'Laporan Bapem', 'Surat Tugas Peserta, Pengajar & Panitia\r\n', '0209', NULL, NULL),
(17, 'Laporan Bapem', 'Surat Tugas Penceramah & Panitia LPD\r\n', '0210', NULL, NULL),
(18, 'Laporan Bapem', 'SK Kegiatan\r\n', '0211', NULL, NULL),
(19, 'Laporan Bapem', 'Foto Kegiatan\r\n', '0212', NULL, NULL),
(20, 'Laporan Bapem', 'Bukti Setor Pajak\r\n', '0213', NULL, NULL),
(21, 'Laporan Bapem', 'Bukti Setor Pengembalian \r\n', '0214', NULL, NULL),
(22, 'Laporan Bapem', 'Tanda Terima Distribusi Perlengkapan Peserta\r\n', '0215', '2019-05-24 04:01:32', '2019-05-24 04:01:32');

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
  `instansi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `provinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kabkot` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `npwp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `instansi`, `alamat`, `provinsi`, `kabkot`, `kecamatan`, `npwp`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'arifrusmandani', 'arifrusmandani@gmail.com', NULL, '$2y$10$7oms7S3d97LdTgOpa4F7T.7a7cB/mUaOwW7IDsju4EJTDp92eMWOu', NULL, 'Universitas Pendidikan Indonesia', 'Jl. Setiabudi 2', 'Jawa Barat', 'Kota Cimahi', 'Setiabudi2', '12.1029.232.12', 'avatar-1.jpg', '2019-05-16 01:45:17', '2019-06-26 07:14:23'),
(2, 'PPPPTK TK dan PLB', 'adminp4tk@gmail.com', NULL, '$2y$10$9hrnss/bGj2qQI8qkFN62.GIzgsd0QutZexcaja/ot4LkpLNxexh.', NULL, 'PPPPTK TK dan PLB', 'Jl. Dr. Cipto No.9, Pasir Kaliki, Kec. Cicendo, Kota Bandung, Jawa Barat 40171', 'Jawa Barat', 'Kota Bandung', 'Kec. Cicendo', '022.4230068', 'avatar-1.png', NULL, '2019-09-16 08:37:56'),
(5, 'Universitas Ibn Khaldun', 'omank1987@gmail.com', NULL, '$2y$10$b3Ug2qrm1RPnbHurAoe4pekx7f8oNpjxYK79/77A8xT0pslde99q6', NULL, 'Universitas Ibn Khaldun', 'Jl. KH. Sholeh Iskandar Km.2 Kedung Badak kota Bogor, 16162', 'Jawa Barat', 'Kab. Bogor', 'Tanah Sareal', '01.464.826.5-404.000', 'avatar-5.png', NULL, '2019-09-18 01:38:07'),
(13, 'Keuangan', 'keuangan@gmail.com', NULL, '$2y$10$pidnwO7C0e5p2RQTrX6JKuu2ARFF.U9SddVyiy47SBITlaK74/z1O', NULL, 'P4TK TK PLB', 'Bandung', 'Jawa Barat', 'Kab. Bandung', 'Cimahi', '22222222222222', 'default.png', '2019-09-09 08:26:55', '2020-09-10 05:23:01'),
(19, 'Isnain', 'isnain@gmail.com', NULL, '$2y$10$lRSoalDQIJ3LUHSk9GuHR.ebeVgCcHu5I1IpKTZj6VP5OCzXvElLO', NULL, 'P4TK TK PLB', 'Jl. Dr. Cipto No.9, Pasir Kaliki, Kec. Cicendo, Kota Bandung, Jawa Barat 40171', 'Jawa Barat', 'Kota Bandung', 'Kec. Cicendo', '-', 'default.png', '2019-09-17 10:44:06', '2019-09-17 10:44:06'),
(20, 'Susito', 'susito@gmail.com', NULL, '$2y$10$NHcp8d.CSe0p8nbxSfNBNuutsjgSpp70i.tlpm5gEtavGNFCSpjD6', NULL, 'P4TK TK PLB', 'Jl. Dr. Cipto No.9, Pasir Kaliki, Kec. Cicendo, Kota Bandung, Jawa Barat 40171', 'Jawa Barat', 'Kota Bandung', 'Kec. Cicendo', '-', 'default.png', '2019-09-17 10:45:13', '2019-09-17 10:45:13'),
(21, 'Tina', 'tina@gmail.com', NULL, '$2y$10$3v3jksfQpSxQ3F3cxj4rKuuGUZEv.1xRuzB3cU839G/tl6m6Uh3MG', NULL, 'P4TK TK PLB', 'Jl. Dr. Cipto No.9, Pasir Kaliki, Kec. Cicendo, Kota Bandung, Jawa Barat 40171', 'Jawa Barat', 'Kota Bandung', 'Kec. Cicendo', '-', 'default.png', '2019-09-17 10:46:08', '2019-09-17 10:46:08'),
(22, 'Suri', 'suri@gmail.com', NULL, '$2y$10$xgxgB/5e/saYkcKpNppr5eVhRZqHEsfMZEOn7gljgwRHwWsRM/YjW', NULL, 'P4TK TK PLB', 'Jl. Dr. Cipto No.9, Pasir Kaliki, Kec. Cicendo, Kota Bandung, Jawa Barat 40171', 'Jawa Barat', 'Kota Bandung', 'Kec. Cicendo', '-', 'default.png', '2019-09-17 10:47:20', '2019-09-17 10:47:20'),
(23, 'Nuce', 'nuce@gmail.com', NULL, '$2y$10$CA.aKTyN2xZJINQpjowEiO/GquFns2PT8qC5VmfqpxC/ScFLv9SxS', NULL, 'P4TK TK PLB', 'Jl. Dr. Cipto No.9, Pasir Kaliki, Kec. Cicendo, Kota Bandung, Jawa Barat 40171', 'Jawa Barat', 'Kota Bandung', 'Kec. Cicendo', '-', 'default.png', '2019-09-17 10:48:38', '2019-09-17 10:48:38'),
(24, 'Retno', 'retno@gmail.com', NULL, '$2y$10$TQrHRnAP7mpmrZVG2YCQcuw5vO22hRAE3aIqe7GbwwckWqS0HMH9C', NULL, 'P4TK TK PLB', 'Jl. Dr. Cipto No.9, Pasir Kaliki, Kec. Cicendo, Kota Bandung, Jawa Barat 40171', 'Jawa Barat', 'Kota Bandung', 'Kec. Cicendo', '-', 'default.png', '2019-09-17 10:50:00', '2019-09-17 10:50:00'),
(25, 'Fitri', 'fitri@gmail.com', NULL, '$2y$10$EMad8ymL.gZ7EdEv5SQzMuai/11UyCTWlNqQ5WjwrfsjqOrHzQt3O', NULL, 'P4TK TK PLB', 'Jl. Dr. Cipto No.9, Pasir Kaliki, Kec. Cicendo, Kota Bandung, Jawa Barat 40171', 'Jawa Barat', 'Kota Bandung', 'Kec. Cicendo', '-', 'default.png', '2019-09-17 10:51:03', '2019-09-17 10:51:03'),
(26, 'Aam Sudrajat Keuangan', 'aam.keuangan@gmail.com', NULL, '$2y$10$LAWYl/iFqRfJijV.txCNqu1gNexKC38yRib1vVZ5dgR6eDX3o0L0S', NULL, 'PPPPTK TK DAN PLB', 'Jl. Kopo Kp. Sayati Hilir. Gg. Mustopa No. 54', 'Jawa Barat', 'Kab. Bandung', 'Cidendo', '123123123', 'default.png', '2019-09-17 11:56:42', '2019-09-17 11:56:42'),
(27, 'GABUNGAN LPD', 'aam.lpd@gmail.com', NULL, '$2y$10$oYwfsNyUjfH9y79EUWA5lOtFgQ5MZNydObymjA2Ca3wdvXA0SBY7O', NULL, 'GABUNGAN LPD', 'Jl. Kopo Kp. Sayati Hilir. Gg. Mustopa No. 54', 'Jawa Barat', 'Kota Bandung', 'Cidendo', '435435345', 'default.png', '2019-09-17 11:57:19', '2019-09-17 12:40:22'),
(28, 'Universitas Pasundan', 'andi_wijaya@unpas.ac.id', NULL, '$2y$10$i0GEqcnvzFAJdF9tCaN4keZxeN/5QkZxXU8DmMcM6tUcUdU2ClGrG', NULL, 'Universitas Pasundan', 'Jalan Tamansari No 6 Bandung', 'Jawa Barat', 'Kab. Bandung', 'Bandung Wetan', '01.450.081.3-441.000', 'avatar-28.jpg', '2019-09-17 15:35:51', '2020-01-02 08:28:16'),
(29, 'Universitas Pakuan', 'wieseft@gmail.com', NULL, '$2y$10$Q2rVMiUBErDm6ms85l0m/O2D/ak0YvI8aRazWkMKd6NOyTcPh6vE6', NULL, 'Universitas Pakuan', 'Jalan Pakuan Po Box 452 Bogor', 'Jawa Barat', 'Kota Bogor', 'Bogor Tengah', '01.441.311.6-404.002', 'avatar-29.jpg', '2019-09-17 15:38:22', '2019-09-18 01:38:16'),
(30, 'BPSDM Provinsi Jawa Barat', 'zulfantaufik@rocketmail.com', NULL, '$2y$10$WJIp6l/g4ZfpGUDqvaEGIetUDUwFFa70O37qT7Y3YgjvOHGkzaPqO', NULL, 'BPSDM Provinsi Jawa Barat', 'Jl. Kolonel Masturi KM 3.5 No.  11 Cimahi', 'Jawa Barat', 'Kota Cimahi', 'Kec. Cimahi Utara', '00.148.295.9.424.000', 'avatar-30.jpg', '2019-09-17 15:40:38', '2019-09-17 15:49:13'),
(31, 'Universitas Swadaya Gunung Jati', 'jajofirmanraharjo@gmail.com', NULL, '$2y$10$0.64v07ra5y0LAwM6sPKG.f66GMUTC6JObOvRatHs8KziC5x/DvmG', NULL, 'Universitas Swadaya Gunung Jati', 'Jalan  Pemuda no.32', 'Jawa Barat', 'Kota Cirebon', 'Kec. Kesambi', '-', 'avatar-31.png', '2019-09-17 15:42:14', '2019-09-17 15:48:00'),
(32, 'Universitas Pendidikan Indonesia', 'belanurlaela12@gmail.com', NULL, '$2y$10$4fqfd2HfiKV3wEkiJLZ.KOFTdPjXT0pzZYARaUyfohuQEKn3RyYk.', NULL, 'Universitas Pendidikan Indonesia', 'Jalan Dr. Setiabudhi No.229 Bandung', 'Jawa Barat', 'Kota Bandung', 'Isola Sukasari', '84.377.228.6-428.000', 'default.png', '2019-09-18 01:25:54', '2019-10-13 02:24:42'),
(33, 'Universitas Islam Nusantara', 'fajarindraseptiana@gmail.com', NULL, '$2y$10$tuFgqzPZATomPyzuYQuRCOkvgQxBS/P3eGJ7M.SdzatjHOCdqRUgG', NULL, 'Universitas Islam Nusantara', 'jl. Soekarno hatta no. 530', 'Jawa Barat', 'Kota Bandung', 'Buah Batu', '921717534429000', 'default.png', '2019-09-18 01:27:36', '2019-09-18 01:27:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `angkatan`
--
ALTER TABLE `angkatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokumen_bapem_laporan`
--
ALTER TABLE `dokumen_bapem_laporan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dokumen_bapem_pemberian`
--
ALTER TABLE `dokumen_bapem_pemberian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `listbapem`
--
ALTER TABLE `listbapem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personel_bapem`
--
ALTER TABLE `personel_bapem`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personel_bapem_email_unique` (`email`);

--
-- Indexes for table `pro_kabkot`
--
ALTER TABLE `pro_kabkot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sasaran`
--
ALTER TABLE `sasaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `std_dokumen`
--
ALTER TABLE `std_dokumen`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `angkatan`
--
ALTER TABLE `angkatan`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `dokumen_bapem_laporan`
--
ALTER TABLE `dokumen_bapem_laporan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=548;

--
-- AUTO_INCREMENT for table `dokumen_bapem_pemberian`
--
ALTER TABLE `dokumen_bapem_pemberian`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `listbapem`
--
ALTER TABLE `listbapem`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personel_bapem`
--
ALTER TABLE `personel_bapem`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pro_kabkot`
--
ALTER TABLE `pro_kabkot`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=516;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sasaran`
--
ALTER TABLE `sasaran`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `std_dokumen`
--
ALTER TABLE `std_dokumen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
