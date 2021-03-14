-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2021 at 03:09 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `modif_zyacbt`
--

-- --------------------------------------------------------

--
-- Table structure for table `cbt_jawaban`
--

CREATE TABLE `cbt_jawaban` (
  `jawaban_id` bigint(20) UNSIGNED NOT NULL,
  `jawaban_soal_id` bigint(20) UNSIGNED NOT NULL,
  `jawaban_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `jawaban_benar` tinyint(1) NOT NULL DEFAULT 0,
  `jawaban_aktif` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_jawaban`
--

INSERT INTO `cbt_jawaban` (`jawaban_id`, `jawaban_soal_id`, `jawaban_detail`, `jawaban_benar`, `jawaban_aktif`) VALUES
(756, 246, '<p>halo</p>\r\n', 0, 1),
(757, 246, '<p>benar</p>\r\n', 1, 1),
(758, 254, '<p>bas</p>\r\n', 0, 1),
(759, 254, '<p>sad</p>\r\n', 1, 1),
(760, 255, '\r\n			<p>Kotak-kotak</p>\r\n			', 0, 1),
(761, 255, '\r\n			<p>Tangga</p>\r\n			', 1, 1),
(762, 255, '\r\n			<p>Salah yo ya</p>\r\n			', 0, 1),
(763, 255, '\r\n			<p>Sama kaya atasnya</p>\r\n			', 0, 1),
(764, 255, '\r\n			<p>X</p>\r\n			', 0, 1),
(765, 256, '\r\n			<p>3</p>\r\n			', 1, 1),
(766, 256, '\r\n			<p>2</p>\r\n			', 0, 1),
(767, 256, '\r\n			<p>4</p>\r\n			', 0, 1),
(768, 256, '\r\n			<p>5</p>\r\n			', 0, 1),
(769, 256, '\r\n			<p>Bukan jawaban</p>\r\n			', 0, 1),
(770, 257, '\r\n			<p>Kotak-kotak</p>\r\n			', 0, 1),
(771, 257, '\r\n			<p>Tangga</p>\r\n			', 1, 1),
(772, 257, '\r\n			<p>Salah yo ya</p>\r\n			', 0, 1),
(773, 257, '\r\n			<p>Sama kaya atasnya</p>\r\n			', 0, 1),
(774, 257, '\r\n			<p>X</p>\r\n			', 0, 1),
(775, 258, '\r\n			<p>3</p>\r\n			', 1, 1),
(776, 258, '\r\n			<p>2</p>\r\n			', 0, 1),
(777, 258, '\r\n			<p>4</p>\r\n			', 0, 1),
(778, 258, '\r\n			<p>5</p>\r\n			', 0, 1),
(779, 258, '\r\n			<p>Bukan jawaban</p>\r\n			', 0, 1),
(780, 259, '\r\n			<p>Kotak-kotak</p>\r\n			', 0, 1),
(781, 259, '\r\n			<p>Tangga</p>\r\n			', 1, 1),
(782, 259, '\r\n			<p>Salah yo ya</p>\r\n			', 0, 1),
(783, 259, '\r\n			<p>Sama kaya atasnya</p>\r\n			', 0, 1),
(784, 259, '\r\n			<p>X</p>\r\n			', 0, 1),
(785, 260, '\r\n			<p>3</p>\r\n			', 1, 1),
(786, 260, '\r\n			<p>2</p>\r\n			', 0, 1),
(787, 260, '\r\n			<p>4</p>\r\n			', 0, 1),
(788, 260, '\r\n			<p>5</p>\r\n			', 0, 1),
(789, 260, '\r\n			<p>Bukan jawaban</p>\r\n			', 0, 1),
(790, 261, '5', 0, 1),
(791, 261, '4', 1, 1),
(792, 261, '2', 0, 1),
(793, 261, '1', 0, 1),
(794, 261, '3', 0, 1),
(795, 262, '5', 0, 1),
(796, 262, '4', 1, 1),
(797, 262, '2', 0, 1),
(798, 262, '1', 0, 1),
(799, 262, '3', 0, 1),
(800, 263, '5', 0, 1),
(801, 263, '4', 1, 1),
(802, 263, '2', 0, 1),
(803, 263, '1', 0, 1),
(804, 263, '3', 0, 1),
(805, 264, '5', 0, 1),
(806, 264, '4', 1, 1),
(807, 264, '2', 0, 1),
(808, 264, '1', 0, 1),
(809, 264, '3', 0, 1),
(810, 265, '5', 0, 1),
(811, 265, '4', 1, 1),
(812, 265, '2', 0, 1),
(813, 265, '1', 0, 1),
(814, 265, '3', 0, 1),
(815, 266, '5', 0, 1),
(816, 266, '4', 1, 1),
(817, 266, '2', 0, 1),
(818, 266, '1', 0, 1),
(819, 266, '3', 0, 1),
(820, 267, '5', 0, 1),
(821, 267, '4', 1, 1),
(822, 267, '2', 0, 1),
(823, 267, '1', 0, 1),
(824, 267, '3', 0, 1),
(825, 268, '5', 0, 1),
(826, 268, '4', 1, 1),
(827, 268, '2', 0, 1),
(828, 268, '1', 0, 1),
(829, 268, '3', 0, 1),
(830, 269, '5', 0, 1),
(831, 269, '4', 1, 1),
(832, 269, '2', 0, 1),
(833, 269, '1', 0, 1),
(834, 269, '3', 0, 1),
(835, 270, '5', 0, 1),
(836, 270, '4', 1, 1),
(837, 270, '2', 0, 1),
(838, 270, '1', 0, 1),
(839, 270, '3', 0, 1),
(840, 271, '5', 0, 1),
(841, 271, '4', 1, 1),
(842, 271, '2', 0, 1),
(843, 271, '1', 0, 1),
(844, 271, '3', 0, 1),
(845, 272, '5', 0, 1),
(846, 272, '4', 1, 1),
(847, 272, '2', 0, 1),
(848, 272, '1', 0, 1),
(849, 272, '3', 0, 1),
(850, 273, '5', 0, 1),
(851, 273, '4', 1, 1),
(852, 273, '2', 0, 1),
(853, 273, '1', 0, 1),
(854, 273, '3', 0, 1),
(855, 274, '5', 0, 1),
(856, 274, '4', 1, 1),
(857, 274, '2', 0, 1),
(858, 274, '1', 0, 1),
(859, 274, '3', 0, 1),
(860, 275, '5', 0, 1),
(861, 275, '4', 1, 1),
(862, 275, '2', 0, 1),
(863, 275, '1', 0, 1),
(864, 275, '3', 0, 1),
(865, 276, '5', 0, 1),
(866, 276, '4', 1, 1),
(867, 276, '2', 0, 1),
(868, 276, '1', 0, 1),
(869, 276, '3', 0, 1),
(870, 277, '5', 0, 1),
(871, 277, '4', 1, 1),
(872, 277, '2', 0, 1),
(873, 277, '1', 0, 1),
(874, 277, '3', 0, 1),
(875, 278, '5', 0, 1),
(876, 278, '4', 1, 1),
(877, 278, '2', 0, 1),
(878, 278, '1', 0, 1),
(879, 278, '3', 0, 1),
(880, 279, '5', 0, 1),
(881, 279, '4', 1, 1),
(882, 279, '2', 0, 1),
(883, 279, '1', 0, 1),
(884, 279, '3', 0, 1),
(885, 280, '5', 0, 1),
(886, 280, '4', 1, 1),
(887, 280, '2', 0, 1),
(888, 280, '1', 0, 1),
(889, 280, '3', 0, 1),
(890, 281, '5', 0, 1),
(891, 281, '4', 1, 1),
(892, 281, '2', 0, 1),
(893, 281, '1', 0, 1),
(894, 281, '3', 0, 1),
(895, 282, '5', 0, 1),
(896, 282, '4', 1, 1),
(897, 282, '2', 0, 1),
(898, 282, '1', 0, 1),
(899, 282, '3', 0, 1),
(900, 283, '5', 0, 1),
(901, 283, '4', 1, 1),
(902, 283, '2', 0, 1),
(903, 283, '1', 0, 1),
(904, 283, '3', 0, 1),
(905, 284, '5', 0, 1),
(906, 284, '4', 1, 1),
(907, 284, '2', 0, 1),
(908, 284, '1', 0, 1),
(909, 284, '3', 0, 1),
(910, 285, '5', 0, 1),
(911, 285, '4', 1, 1),
(912, 285, '2', 0, 1),
(913, 285, '1', 0, 1),
(914, 285, '3', 0, 1),
(915, 286, '5', 0, 1),
(916, 286, '4', 1, 1),
(917, 286, '2', 0, 1),
(918, 286, '1', 0, 1),
(919, 286, '3', 0, 1),
(920, 287, '5', 0, 1),
(921, 287, '4', 1, 1),
(922, 287, '2', 0, 1),
(923, 287, '1', 0, 1),
(924, 287, '3', 0, 1),
(925, 288, '5', 0, 1),
(926, 288, '4', 1, 1),
(927, 288, '2', 0, 1),
(928, 288, '1', 0, 1),
(929, 288, '3', 0, 1),
(930, 289, '5', 0, 1),
(931, 289, '4', 1, 1),
(932, 289, '2', 0, 1),
(933, 289, '1', 0, 1),
(934, 289, '3', 0, 1),
(935, 290, '5', 0, 1),
(936, 290, '4', 1, 1),
(937, 290, '2', 0, 1),
(938, 290, '1', 0, 1),
(939, 290, '3', 0, 1),
(940, 291, '5', 0, 1),
(941, 291, '4', 1, 1),
(942, 291, '2', 0, 1),
(943, 291, '1', 0, 1),
(944, 291, '3', 0, 1),
(945, 292, '5', 0, 1),
(946, 292, '4', 1, 1),
(947, 292, '2', 0, 1),
(948, 292, '1', 0, 1),
(949, 292, '3', 0, 1),
(950, 293, '5', 0, 1),
(951, 293, '4', 1, 1),
(952, 293, '2', 0, 1),
(953, 293, '1', 0, 1),
(954, 293, '3', 0, 1),
(955, 294, '5', 0, 1),
(956, 294, '4', 1, 1),
(957, 294, '2', 0, 1),
(958, 294, '1', 0, 1),
(959, 294, '3', 0, 1),
(960, 295, '5', 0, 1),
(961, 295, '4', 1, 1),
(962, 295, '2', 0, 1),
(963, 295, '1', 0, 1),
(964, 295, '3', 0, 1),
(965, 296, '5', 0, 1),
(966, 296, '4', 1, 1),
(967, 296, '2', 0, 1),
(968, 296, '1', 0, 1),
(969, 296, '3', 0, 1),
(970, 297, '5', 0, 1),
(971, 297, '4', 1, 1),
(972, 297, '2', 0, 1),
(973, 297, '1', 0, 1),
(974, 297, '3', 0, 1),
(975, 298, '5', 0, 1),
(976, 298, '4', 1, 1),
(977, 298, '2', 0, 1),
(978, 298, '1', 0, 1),
(979, 298, '3', 0, 1),
(980, 299, '5', 0, 1),
(981, 299, '4', 1, 1),
(982, 299, '2', 0, 1),
(983, 299, '1', 0, 1),
(984, 299, '3', 0, 1),
(985, 300, '5', 0, 1),
(986, 300, '4', 1, 1),
(987, 300, '2', 0, 1),
(988, 300, '1', 0, 1),
(989, 300, '3', 0, 1),
(990, 301, '5', 0, 1),
(991, 301, '4', 1, 1),
(992, 301, '2', 0, 1),
(993, 301, '1', 0, 1),
(994, 301, '3', 0, 1),
(995, 302, '5', 0, 1),
(996, 302, '4', 1, 1),
(997, 302, '2', 0, 1),
(998, 302, '1', 0, 1),
(999, 302, '3', 0, 1),
(1000, 303, '5', 0, 1),
(1001, 303, '4', 1, 1),
(1002, 303, '2', 0, 1),
(1003, 303, '1', 0, 1),
(1004, 303, '3', 0, 1),
(1005, 304, '5', 0, 1),
(1006, 304, '4', 1, 1),
(1007, 304, '2', 0, 1),
(1008, 304, '1', 0, 1),
(1009, 304, '3', 0, 1),
(1010, 305, '5', 0, 1),
(1011, 305, '4', 1, 1),
(1012, 305, '2', 0, 1),
(1013, 305, '1', 0, 1),
(1014, 305, '3', 0, 1),
(1015, 306, '5', 0, 1),
(1016, 306, '4', 1, 1),
(1017, 306, '2', 0, 1),
(1018, 306, '1', 0, 1),
(1019, 306, '3', 0, 1),
(1020, 307, '5', 0, 1),
(1021, 307, '4', 1, 1),
(1022, 307, '2', 0, 1),
(1023, 307, '1', 0, 1),
(1024, 307, '3', 0, 1),
(1025, 308, '5', 0, 1),
(1026, 308, '4', 1, 1),
(1027, 308, '2', 0, 1),
(1028, 308, '1', 0, 1),
(1029, 308, '3', 0, 1),
(1030, 309, '5', 0, 1),
(1031, 309, '4', 1, 1),
(1032, 309, '2', 0, 1),
(1033, 309, '1', 0, 1),
(1034, 309, '3', 0, 1),
(1035, 310, '5', 0, 1),
(1036, 310, '4', 1, 1),
(1037, 310, '2', 0, 1),
(1038, 310, '1', 0, 1),
(1039, 310, '3', 0, 1),
(1040, 311, '5', 0, 1),
(1041, 311, '4', 1, 1),
(1042, 311, '2', 0, 1),
(1043, 311, '1', 0, 1),
(1044, 311, '3', 0, 1),
(1045, 312, '5', 0, 1),
(1046, 312, '4', 1, 1),
(1047, 312, '2', 0, 1),
(1048, 312, '1', 0, 1),
(1049, 312, '3', 0, 1),
(1050, 313, '5', 0, 1),
(1051, 313, '4', 1, 1),
(1052, 313, '2', 0, 1),
(1053, 313, '1', 0, 1),
(1054, 313, '3', 0, 1),
(1055, 314, '5', 0, 1),
(1056, 314, '4', 1, 1),
(1057, 314, '2', 0, 1),
(1058, 314, '1', 0, 1),
(1059, 314, '3', 0, 1),
(1060, 315, '5', 0, 1),
(1061, 315, '4', 1, 1),
(1062, 315, '2', 0, 1),
(1063, 315, '1', 0, 1),
(1064, 315, '3', 0, 1),
(1065, 316, '5', 0, 1),
(1066, 316, '4', 1, 1),
(1067, 316, '2', 0, 1),
(1068, 316, '1', 0, 1),
(1069, 316, '3', 0, 1),
(1070, 317, '5', 0, 1),
(1071, 317, '4', 1, 1),
(1072, 317, '2', 0, 1),
(1073, 317, '1', 0, 1),
(1074, 317, '3', 0, 1),
(1075, 318, '5', 0, 1),
(1076, 318, '4', 1, 1),
(1077, 318, '2', 0, 1),
(1078, 318, '1', 0, 1),
(1079, 318, '3', 0, 1),
(1080, 319, '5', 0, 1),
(1081, 319, '4', 1, 1),
(1082, 319, '2', 0, 1),
(1083, 319, '1', 0, 1),
(1084, 319, '3', 0, 1),
(1085, 320, '5', 0, 1),
(1086, 320, '4', 1, 1),
(1087, 320, '2', 0, 1),
(1088, 320, '1', 0, 1),
(1089, 320, '3', 0, 1),
(1090, 321, '5', 0, 1),
(1091, 321, '4', 1, 1),
(1092, 321, '2', 0, 1),
(1093, 321, '1', 0, 1),
(1094, 321, '3', 0, 1),
(1095, 322, '5', 0, 1),
(1096, 322, '4', 1, 1),
(1097, 322, '2', 0, 1),
(1098, 322, '1', 0, 1),
(1099, 322, '3', 0, 1),
(1100, 323, '5', 0, 1),
(1101, 323, '4', 1, 1),
(1102, 323, '2', 0, 1),
(1103, 323, '1', 0, 1),
(1104, 323, '3', 0, 1),
(1105, 324, '5', 0, 1),
(1106, 324, '4', 1, 1),
(1107, 324, '2', 0, 1),
(1108, 324, '1', 0, 1),
(1109, 324, '3', 0, 1),
(1110, 325, '5', 0, 1),
(1111, 325, '4', 1, 1),
(1112, 325, '2', 0, 1),
(1113, 325, '1', 0, 1),
(1114, 325, '3', 0, 1),
(1115, 326, '5', 0, 1),
(1116, 326, '4', 1, 1),
(1117, 326, '2', 0, 1),
(1118, 326, '1', 0, 1),
(1119, 326, '3', 0, 1),
(1120, 327, '5', 0, 1),
(1121, 327, '4', 1, 1),
(1122, 327, '2', 0, 1),
(1123, 327, '1', 0, 1),
(1124, 327, '3', 0, 1),
(1125, 328, '5', 0, 1),
(1126, 328, '4', 1, 1),
(1127, 328, '2', 0, 1),
(1128, 328, '1', 0, 1),
(1129, 328, '3', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_konfigurasi`
--

CREATE TABLE `cbt_konfigurasi` (
  `konfigurasi_id` int(11) NOT NULL,
  `konfigurasi_kode` varchar(50) NOT NULL,
  `konfigurasi_isi` varchar(500) NOT NULL,
  `konfigurasi_keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cbt_konfigurasi`
--

INSERT INTO `cbt_konfigurasi` (`konfigurasi_id`, `konfigurasi_kode`, `konfigurasi_isi`, `konfigurasi_keterangan`) VALUES
(1, 'link_login_operator', 'ya', 'Menampilkan Link Login Operator'),
(2, 'cbt_nama', 'Computer Based-Test', 'Nama Penyelenggara ZYACBT'),
(3, 'cbt_keterangan', 'Ujian Online Berbasis Komputer', 'Keterangan Penyelenggara ZYACBT'),
(4, 'cbt_mobile_lock_xambro', 'tidak', 'Melakukan Lock pada browser mobile agar menggunakan Xambro Saja'),
(5, 'cbt_informasi', '<p>Silahkan pilih Tes yang diikuti dari daftar tes yang tersedia dibawah ini. Apabila tes tidak muncul, silahkan menghubungi Operator yang bertugas.</p>\r\n', 'Informasi yang diberika di Dashboard peserta tes\'');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_modul`
--

CREATE TABLE `cbt_modul` (
  `modul_id` bigint(20) UNSIGNED NOT NULL,
  `modul_nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `modul_aktif` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_modul`
--

INSERT INTO `cbt_modul` (`modul_id`, `modul_nama`, `modul_aktif`) VALUES
(9, 'Default', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_paket`
--

CREATE TABLE `cbt_paket` (
  `topik_id` bigint(20) UNSIGNED NOT NULL,
  `paket_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cbt_paket`
--

INSERT INTO `cbt_paket` (`topik_id`, `paket_id`) VALUES
(2, 1),
(2, 2),
(3, 1),
(4, 1),
(4, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_sessions`
--

CREATE TABLE `cbt_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cbt_sessions`
--

INSERT INTO `cbt_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('0kdje5bvovdkb6u6ts2vfbsf8rills4v', '::1', 1615550014, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353535303031343b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31323a224163686d6164204c75746669223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('6qckn5jjps3svhg4spqqs3k084nck3df', '::1', 1615549660, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353534393636303b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31323a224163686d6164204c75746669223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('cls9221m1h3tq1oo081rpio2lr748h8o', '::1', 1615548902, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353534383930323b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31323a224163686d6164204c75746669223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('d36bllvsq211kpmfhumt7sh38hj8atqv', '::1', 1615729203, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353732393136363b),
('s35vi3kkgkm0kpv7lqm0354mvrmbhun1', '::1', 1615550549, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353535303431303b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31323a224163686d6164204c75746669223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b),
('ucs6lf0dik91miics3keb7mtgbndt7lh', '::1', 1615550410, 0x5f5f63695f6c6173745f726567656e65726174657c693a313631353535303431303b6362745f757365725f69647c733a353a2261646d696e223b6362745f6e616d617c733a31323a224163686d6164204c75746669223b6362745f6c6576656c7c733a353a2261646d696e223b6362745f6f707369317c733a303a22223b6362745f6f707369327c733a303a22223b);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_soal`
--

CREATE TABLE `cbt_soal` (
  `soal_id` bigint(20) UNSIGNED NOT NULL,
  `soal_topik_id` bigint(20) UNSIGNED NOT NULL,
  `soal_paket_id` int(11) NOT NULL,
  `soal_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `soal_tipe` smallint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT '1=Pilihan ganda, 2=essay, 3=jawaban singkat',
  `soal_kunci` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Kunci untuk soal jawaban singkat',
  `soal_difficulty` smallint(6) NOT NULL DEFAULT 1,
  `soal_aktif` tinyint(1) NOT NULL DEFAULT 0,
  `soal_audio` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soal_audio_play` int(11) NOT NULL DEFAULT 0,
  `soal_timer` smallint(10) DEFAULT NULL,
  `soal_inline_answers` tinyint(1) NOT NULL DEFAULT 0,
  `soal_auto_next` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_soal`
--

INSERT INTO `cbt_soal` (`soal_id`, `soal_topik_id`, `soal_paket_id`, `soal_detail`, `soal_tipe`, `soal_kunci`, `soal_difficulty`, `soal_aktif`, `soal_audio`, `soal_audio_play`, `soal_timer`, `soal_inline_answers`, `soal_auto_next`) VALUES
(243, 2, 1, '<p>halo</p>\r\n', 3, 'hi', 1, 1, NULL, 0, NULL, 0, 0),
(244, 2, 1, '<p>test</p>\r\n', 1, '', 1, 1, NULL, 0, NULL, 0, 0),
(245, 2, 2, '<p>hi</p>\r\n', 1, '', 1, 1, NULL, 0, NULL, 0, 0),
(246, 4, 1, '<p>1. paket 1 edit</p>\r\n', 1, '', 1, 1, NULL, 0, NULL, 0, 0),
(247, 4, 1, '<p>2. paket 1</p>\r\n', 2, '', 1, 1, NULL, 0, NULL, 0, 0),
(248, 4, 1, '<p>3. paket 1</p>\r\n', 2, '', 1, 1, NULL, 0, NULL, 0, 0),
(249, 4, 2, '<p>1. paket 2</p>\r\n', 3, 'hi', 1, 1, NULL, 0, NULL, 0, 0),
(250, 4, 2, '<p>2. paket 2</p>\r\n', 2, '', 1, 1, NULL, 0, NULL, 0, 0),
(251, 4, 2, '<p>3. paket 2</p>\r\n', 2, '', 1, 1, NULL, 0, NULL, 0, 0),
(252, 4, 3, '<p>1. paket 3</p>\r\n', 2, '', 1, 1, NULL, 0, NULL, 0, 0),
(253, 4, 3, '<p>2. paket 3</p>\r\n', 2, '', 1, 1, NULL, 0, NULL, 0, 0),
(254, 4, 3, '<p>3. paket 3</p>\r\n', 1, '', 1, 1, NULL, 0, NULL, 0, 0),
(255, 2, 1, '\r\n			<p>Di bawah ini adalah bentuk</p>\r\n\r\n			<p><img alt=\"DB106\" src=\"[base_url]uploads/topik_2/603e265175858.png\" style=\"height:73px; width:78px\"></p>\r\n			', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(256, 2, 1, '\r\n			<p>1 + 2 = ...</p>\r\n			', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(257, 4, 3, '\r\n			<p>Di bawah ini adalah bentuk</p>\r\n\r\n			<p><img alt=\"DB106\" src=\"[base_url]uploads/topik_4/603e274ebb911.png\" style=\"height:73px; width:78px\"></p>\r\n			', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(258, 4, 3, '\r\n			<p>1 + 2 = ...</p>\r\n			', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(259, 4, 2, '\r\n			<p>Di bawah ini adalah bentuk</p>\r\n\r\n			<p><img alt=\"DB106\" src=\"[base_url]uploads/topik_4/603e288c50556.png\" style=\"height:73px; width:78px\"></p>\r\n			', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(260, 4, 2, '\r\n			<p>1 + 2 = ...</p>\r\n			', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(261, 4, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(262, 4, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(263, 4, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(264, 4, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(265, 4, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(266, 4, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(267, 3, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(268, 3, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(269, 3, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(270, 3, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(271, 3, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(272, 3, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(273, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(274, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(275, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(276, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(277, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(278, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(279, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(280, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(281, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(282, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(283, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(284, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(285, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(286, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(287, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(288, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(289, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(290, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(291, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(292, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(293, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(294, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(295, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(296, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(297, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(298, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(299, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(300, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(301, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(302, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(303, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(304, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(305, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(306, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(307, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(308, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(309, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(310, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(311, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(312, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(313, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(314, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(315, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(316, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(317, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(318, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(319, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(320, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(321, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(322, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(323, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(324, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(325, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(326, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(327, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0),
(328, 2, 1, '1 + 3 = ...', 1, NULL, 1, 1, NULL, 0, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes`
--

CREATE TABLE `cbt_tes` (
  `tes_id` bigint(20) UNSIGNED NOT NULL,
  `tes_nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tes_detail` text COLLATE utf8_unicode_ci NOT NULL,
  `tes_begin_time` datetime DEFAULT NULL,
  `tes_end_time` datetime DEFAULT NULL,
  `tes_duration_time` smallint(10) UNSIGNED NOT NULL DEFAULT 0,
  `tes_ip_range` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '*.*.*.*',
  `tes_results_to_users` tinyint(1) NOT NULL DEFAULT 0,
  `tes_detail_to_users` tinyint(1) NOT NULL DEFAULT 0,
  `tes_score_right` decimal(10,2) DEFAULT 1.00,
  `tes_score_wrong` decimal(10,2) DEFAULT 0.00,
  `tes_score_unanswered` decimal(10,2) DEFAULT 0.00,
  `tes_max_score` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tes_token` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_tes`
--

INSERT INTO `cbt_tes` (`tes_id`, `tes_nama`, `tes_detail`, `tes_begin_time`, `tes_end_time`, `tes_duration_time`, `tes_ip_range`, `tes_results_to_users`, `tes_detail_to_users`, `tes_score_right`, `tes_score_wrong`, `tes_score_unanswered`, `tes_max_score`, `tes_token`) VALUES
(3, 'Tes panlok 1', 'tes', '2021-03-02 15:01:00', '2021-03-03 15:01:00', 30, '*.*.*.*', 1, 0, '1.00', '0.00', '0.00', '9.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tesgrup`
--

CREATE TABLE `cbt_tesgrup` (
  `tstgrp_tes_id` bigint(20) UNSIGNED NOT NULL,
  `tstgrp_grup_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_tesgrup`
--

INSERT INTO `cbt_tesgrup` (`tstgrp_tes_id`, `tstgrp_grup_id`) VALUES
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_soal`
--

CREATE TABLE `cbt_tes_soal` (
  `tessoal_id` bigint(20) UNSIGNED NOT NULL,
  `tessoal_tesuser_id` bigint(20) UNSIGNED NOT NULL,
  `tessoal_user_ip` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tessoal_soal_id` bigint(20) UNSIGNED NOT NULL,
  `tessoal_jawaban_text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tessoal_nilai` decimal(10,2) DEFAULT NULL,
  `tessoal_creation_time` datetime DEFAULT NULL,
  `tessoal_display_time` datetime DEFAULT NULL,
  `tessoal_change_time` datetime DEFAULT NULL,
  `tessoal_reaction_time` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `tessoal_ragu` int(1) NOT NULL DEFAULT 0 COMMENT '1=ragu, 0=tidak ragu',
  `tessoal_order` smallint(6) NOT NULL DEFAULT 1,
  `tessoal_num_answers` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `tessoal_comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tessoal_audio_play` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_tes_soal`
--

INSERT INTO `cbt_tes_soal` (`tessoal_id`, `tessoal_tesuser_id`, `tessoal_user_ip`, `tessoal_soal_id`, `tessoal_jawaban_text`, `tessoal_nilai`, `tessoal_creation_time`, `tessoal_display_time`, `tessoal_change_time`, `tessoal_reaction_time`, `tessoal_ragu`, `tessoal_order`, `tessoal_num_answers`, `tessoal_comment`, `tessoal_audio_play`) VALUES
(1, 39, NULL, 248, 'hi', '0.00', '2021-03-02 15:36:33', '2021-03-02 16:00:34', '2021-03-02 16:00:37', 0, 0, 1, 0, NULL, 0),
(2, 39, NULL, 246, NULL, '1.00', '2021-03-02 15:36:33', '2021-03-02 16:00:32', '2021-03-02 16:00:33', 0, 0, 2, 0, NULL, 0),
(3, 39, NULL, 247, 'halo', '0.00', '2021-03-02 15:36:33', '2021-03-02 15:36:37', '2021-03-02 16:00:28', 0, 0, 3, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_soal_jawaban`
--

CREATE TABLE `cbt_tes_soal_jawaban` (
  `soaljawaban_tessoal_id` bigint(20) UNSIGNED NOT NULL,
  `soaljawaban_jawaban_id` bigint(20) UNSIGNED NOT NULL,
  `soaljawaban_selected` smallint(6) NOT NULL DEFAULT -1,
  `soaljawaban_order` smallint(6) NOT NULL DEFAULT 1,
  `soaljawaban_position` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_tes_soal_jawaban`
--

INSERT INTO `cbt_tes_soal_jawaban` (`soaljawaban_tessoal_id`, `soaljawaban_jawaban_id`, `soaljawaban_selected`, `soaljawaban_order`, `soaljawaban_position`) VALUES
(2, 756, 0, 2, NULL),
(2, 757, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_token`
--

CREATE TABLE `cbt_tes_token` (
  `token_id` int(11) NOT NULL,
  `token_isi` varchar(20) NOT NULL,
  `token_user_id` int(11) NOT NULL,
  `token_ts` timestamp NOT NULL DEFAULT current_timestamp(),
  `token_aktif` int(11) NOT NULL DEFAULT 1 COMMENT 'Umur Token dalam menit, 1 = 1 hari penuh',
  `token_tes_id` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_topik_set`
--

CREATE TABLE `cbt_tes_topik_set` (
  `tset_id` bigint(20) UNSIGNED NOT NULL,
  `tset_tes_id` bigint(20) UNSIGNED NOT NULL,
  `tset_topik_id` bigint(20) UNSIGNED NOT NULL,
  `tset_tipe` smallint(6) NOT NULL DEFAULT 1,
  `tset_difficulty` smallint(6) NOT NULL DEFAULT 1,
  `tset_jumlah` smallint(6) NOT NULL DEFAULT 1,
  `tset_jawaban` smallint(6) NOT NULL DEFAULT 0,
  `tset_acak_jawaban` int(11) NOT NULL DEFAULT 1,
  `tset_acak_soal` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_tes_topik_set`
--

INSERT INTO `cbt_tes_topik_set` (`tset_id`, `tset_tes_id`, `tset_topik_id`, `tset_tipe`, `tset_difficulty`, `tset_jumlah`, `tset_jawaban`, `tset_acak_jawaban`, `tset_acak_soal`) VALUES
(2, 3, 4, 0, 1, 9, 9, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_tes_user`
--

CREATE TABLE `cbt_tes_user` (
  `tesuser_id` bigint(20) UNSIGNED NOT NULL,
  `tesuser_tes_id` bigint(20) UNSIGNED NOT NULL,
  `tesuser_user_id` bigint(20) UNSIGNED NOT NULL,
  `tesuser_status` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `tesuser_creation_time` datetime NOT NULL,
  `tesuser_comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tesuser_token` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_tes_user`
--

INSERT INTO `cbt_tes_user` (`tesuser_id`, `tesuser_tes_id`, `tesuser_user_id`, `tesuser_status`, `tesuser_creation_time`, `tesuser_comment`, `tesuser_token`) VALUES
(38, 3, 2, 1, '2021-03-02 15:35:11', NULL, NULL),
(39, 3, 1, 4, '2021-03-02 15:36:33', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_topik`
--

CREATE TABLE `cbt_topik` (
  `topik_id` bigint(20) UNSIGNED NOT NULL,
  `topik_modul_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `topik_nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `topik_detail` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `topik_aktif` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_topik`
--

INSERT INTO `cbt_topik` (`topik_id`, `topik_modul_id`, `topik_nama`, `topik_detail`, `topik_aktif`) VALUES
(2, 9, 'Soal Tryout STIS 2018', 'soal yang digunakan untuk TO', 1),
(3, 9, 'Test', 'test', 1),
(4, 9, 'Soal Panlok1', 'panlok1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cbt_user`
--

CREATE TABLE `cbt_user` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_grup_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_regdate` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_ip` varchar(39) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_firstname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_birthdate` date DEFAULT NULL,
  `user_birthplace` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_level` smallint(3) UNSIGNED NOT NULL DEFAULT 1,
  `user_detail` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_user`
--

INSERT INTO `cbt_user` (`user_id`, `user_grup_id`, `user_name`, `user_password`, `user_email`, `user_regdate`, `user_ip`, `user_firstname`, `user_birthdate`, `user_birthplace`, `user_level`, `user_detail`) VALUES
(1, 1, 'joko', 'joko', 'joko@gmail.com', '2021-03-02 07:41:29', NULL, 'joko', NULL, NULL, 1, 'Ruang 1, Sesi 1'),
(2, 1, 'amin', 'amin', 'amin', '2021-03-02 08:05:32', NULL, 'amin', NULL, NULL, 1, 'amin');

-- --------------------------------------------------------

--
-- Table structure for table `cbt_user_grup`
--

CREATE TABLE `cbt_user_grup` (
  `grup_id` bigint(20) UNSIGNED NOT NULL,
  `grup_nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cbt_user_grup`
--

INSERT INTO `cbt_user_grup` (`grup_id`, `grup_nama`) VALUES
(1, 'Panlok 1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `opsi1` varchar(75) NOT NULL,
  `opsi2` varchar(75) NOT NULL,
  `keterangan` varchar(150) NOT NULL,
  `level` varchar(50) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `nama`, `opsi1`, `opsi2`, `keterangan`, `level`, `ts`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Achmad Lutfi', '', '', '', 'admin', '2015-07-29 18:12:03'),
(4, 'operator', 'fe96dd39756ac41b74283a9292652d366d73931f', 'Operator', '', '', 'Operator', 'operator-soal', '2018-03-30 12:58:55'),
(5, 'joko', '97c358728f7f947c9a279ba9be88308395c7cc3a', 'Joko', '', '', 'Haloo', 'admin', '2019-12-12 02:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `user_akses`
--

CREATE TABLE `user_akses` (
  `id` int(11) NOT NULL,
  `level` varchar(75) NOT NULL,
  `kode_menu` varchar(50) NOT NULL,
  `add` int(2) NOT NULL DEFAULT 1 COMMENT '0=false, 1=true',
  `edit` int(2) NOT NULL DEFAULT 1 COMMENT '0=false, 1=true'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_akses`
--

INSERT INTO `user_akses` (`id`, `level`, `kode_menu`, `add`, `edit`) VALUES
(254, 'operator-soal', 'modul-daftar', 1, 1),
(255, 'operator-soal', 'modul-filemanager', 1, 1),
(256, 'operator-soal', 'modul-import', 1, 1),
(257, 'operator-soal', 'modul-soal', 1, 1),
(258, 'operator-soal', 'modul-topik', 1, 1),
(259, 'operator-tes', 'tes-hasil-operator', 1, 1),
(260, 'operator-tes', 'tes-token', 1, 1),
(481, 'admin', 'laporan-analisis-butir-soal', 1, 1),
(482, 'admin', 'peserta-kartu', 1, 1),
(483, 'admin', 'peserta-group', 1, 1),
(484, 'admin', 'peserta-daftar', 1, 1),
(485, 'admin', 'modul-daftar', 1, 1),
(486, 'admin', 'tes-daftar', 1, 1),
(487, 'admin', 'tool-backup', 1, 1),
(488, 'admin', 'tes-evaluasi', 1, 1),
(489, 'admin', 'tool-exportimport-soal', 1, 1),
(490, 'admin', 'modul-filemanager', 1, 1),
(491, 'admin', 'tes-hasil', 1, 1),
(492, 'admin', 'peserta-import', 1, 1),
(493, 'admin', 'modul-import', 1, 1),
(494, 'admin', 'modul-import-word', 1, 1),
(496, 'admin', 'user_level', 1, 1),
(497, 'admin', 'user_menu', 1, 1),
(498, 'admin', 'user_atur', 1, 1),
(499, 'admin', 'user-zyacbt', 1, 1),
(500, 'admin', 'laporan-rekap', 1, 1),
(501, 'admin', 'modul-soal', 1, 1),
(502, 'admin', 'tes-tambah', 1, 1),
(503, 'admin', 'tes-token', 1, 1),
(504, 'admin', 'modul-topik', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `id` int(11) NOT NULL,
  `level` varchar(50) NOT NULL,
  `keterangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id`, `level`, `keterangan`) VALUES
(1, 'admin', 'Administrator'),
(7, 'operator-soal', 'Operator Soal'),
(8, 'operator-tes', 'Operator Tes');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `log` varchar(250) NOT NULL,
  `ts` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `tipe` int(11) NOT NULL DEFAULT 1 COMMENT '0=parent, 1=child',
  `parent` varchar(50) DEFAULT NULL,
  `kode_menu` varchar(50) NOT NULL,
  `nama_menu` varchar(100) NOT NULL,
  `url` varchar(150) NOT NULL DEFAULT '#',
  `icon` varchar(75) NOT NULL DEFAULT 'fa fa-circle-o',
  `urutan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `tipe`, `parent`, `kode_menu`, `nama_menu`, `url`, `icon`, `urutan`) VALUES
(1, 0, '', 'user', 'Pengaturan', '#', 'fa fa-user', 20),
(3, 1, 'user', 'user_atur', 'Pengaturan User', 'manager/useratur', 'fa fa-circle-o', 5),
(4, 1, 'user', 'user_level', 'Pengaturan Level', 'manager/userlevel', 'fa fa-circle-o', 6),
(5, 1, 'user', 'user_menu', 'Pengaturan Menu', 'manager/usermenu', 'fa fa-circle-o', 7),
(6, 0, '', 'modul', 'Data Modul', '#', 'fa fa-book', 2),
(7, 1, 'modul', 'modul-daftar', 'Daftar Soal', 'manager/modul_daftar', 'fa fa-circle-o', 5),
(8, 1, 'modul', 'modul-topik', 'Topik', 'manager/modul_topik', 'fa fa-circle-o', 2),
(10, 0, '', 'peserta', 'Data Peserta', '#', 'fa fa-users', 3),
(11, 1, 'peserta', 'peserta-daftar', 'Daftar Peserta', 'manager/peserta_daftar', 'fa fa-circle-o', 2),
(12, 1, 'peserta', 'peserta-group', 'Daftar Group', 'manager/peserta_group', 'fa fa-circle-o', 1),
(13, 1, 'peserta', 'peserta-import', 'Import Data Peserta', 'manager/peserta_import', 'fa fa-circle-o', 3),
(14, 0, '', 'tes', 'Data Tes', '#', 'fa fa-tasks', 4),
(15, 1, 'tes', 'tes-tambah', 'Tambah Tes', 'manager/tes_tambah', 'fa fa-circle-o', 1),
(16, 1, 'tes', 'tes-daftar', 'Daftar Tes', 'manager/tes_daftar', 'fa fa-circle-o', 2),
(17, 1, 'tes', 'tes-hasil', 'Hasil Tes', 'manager/tes_hasil', 'fa fa-circle-o', 6),
(18, 1, 'modul', 'modul-soal', 'Soal', 'manager/modul_soal', 'fa fa-circle-o', 3),
(19, 1, 'tes', 'tes-token', 'Token', 'manager/tes_token', 'fa fa-circle-o', 8),
(22, 1, 'modul', 'modul-filemanager', 'File Manager', 'manager/modul_filemanager', 'fa fa-circle-o', 6),
(24, 1, 'modul', 'modul-import', 'Import Soal Spreadsheet', 'manager/modul_import', 'fa fa-circle-o', 4),
(25, 1, 'tes', 'tes-evaluasi', 'Evaluasi Tes', 'manager/tes_evaluasi', 'fa fa-circle-o', 5),
(28, 1, 'tes', 'tes-hasil-operator', 'Hasil Tes Operator', 'manager/tes_hasil_operator', 'fa fa-circle-o', 10),
(30, 0, '', 'tool', 'Tool', '#', 'fa fa-wrench', 6),
(31, 1, 'tool', 'tool-backup', 'Database', 'manager/tool_backup', 'fa fa-database', 1),
(32, 1, 'tes-laporan', 'laporan-rekap', 'Rekap Hasil Tes', 'manager/laporan_rekap_hasil', 'fa fa-circle-o', 7),
(33, 1, 'tool', 'tool-exportimport-soal', 'Export / Import Soal', 'manager/tool_exportimport_soal', 'fa fa-circle-o', 2),
(34, 1, 'user', 'user-zyacbt', 'Pengaturan ZYACBT', 'manager/pengaturan_zyacbt', 'fa fa-circle-o', 1),
(37, 1, 'peserta', 'peserta-kartu', 'Cetak Kartu', 'manager/peserta_kartu', 'fa fa-circle-o', 5),
(38, 0, '', 'tes-laporan', 'Laporan', '#', 'fa fa-print', 5),
(41, 1, 'tes-laporan', 'laporan-analisis-butir-soal', 'Analisis Butir Soal', 'manager/laporan_analisis_butir_soal', 'fa fa-circle-o', 1),
(42, 1, 'tes-laporan', 'laporan-analisis-soal', 'Analisis Soal', 'manager/laporan_analisis_soal', 'fa fa-circle-o', 2),
(43, 1, 'modul', 'modul-import-word', 'Import Soal Word', 'manager/modul_import_word', 'fa fa-circle-o', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  ADD PRIMARY KEY (`jawaban_id`),
  ADD KEY `p_answer_question_id` (`jawaban_soal_id`);

--
-- Indexes for table `cbt_konfigurasi`
--
ALTER TABLE `cbt_konfigurasi`
  ADD PRIMARY KEY (`konfigurasi_id`),
  ADD UNIQUE KEY `konfigurasi_kode` (`konfigurasi_kode`);

--
-- Indexes for table `cbt_modul`
--
ALTER TABLE `cbt_modul`
  ADD PRIMARY KEY (`modul_id`),
  ADD UNIQUE KEY `ak_module_name` (`modul_nama`);

--
-- Indexes for table `cbt_paket`
--
ALTER TABLE `cbt_paket`
  ADD KEY `topik_id` (`topik_id`);

--
-- Indexes for table `cbt_sessions`
--
ALTER TABLE `cbt_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  ADD PRIMARY KEY (`soal_id`),
  ADD KEY `p_question_subject_id` (`soal_topik_id`);

--
-- Indexes for table `cbt_tes`
--
ALTER TABLE `cbt_tes`
  ADD PRIMARY KEY (`tes_id`),
  ADD UNIQUE KEY `ak_test_name` (`tes_nama`);

--
-- Indexes for table `cbt_tesgrup`
--
ALTER TABLE `cbt_tesgrup`
  ADD PRIMARY KEY (`tstgrp_tes_id`,`tstgrp_grup_id`),
  ADD KEY `p_tstgrp_test_id` (`tstgrp_tes_id`),
  ADD KEY `p_tstgrp_group_id` (`tstgrp_grup_id`);

--
-- Indexes for table `cbt_tes_soal`
--
ALTER TABLE `cbt_tes_soal`
  ADD PRIMARY KEY (`tessoal_id`),
  ADD UNIQUE KEY `ak_testuser_question` (`tessoal_tesuser_id`,`tessoal_soal_id`),
  ADD KEY `p_testlog_question_id` (`tessoal_soal_id`),
  ADD KEY `p_testlog_testuser_id` (`tessoal_tesuser_id`);

--
-- Indexes for table `cbt_tes_soal_jawaban`
--
ALTER TABLE `cbt_tes_soal_jawaban`
  ADD PRIMARY KEY (`soaljawaban_tessoal_id`,`soaljawaban_jawaban_id`),
  ADD KEY `p_logansw_answer_id` (`soaljawaban_jawaban_id`),
  ADD KEY `p_logansw_testlog_id` (`soaljawaban_tessoal_id`);

--
-- Indexes for table `cbt_tes_token`
--
ALTER TABLE `cbt_tes_token`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `token_user_id` (`token_user_id`);

--
-- Indexes for table `cbt_tes_topik_set`
--
ALTER TABLE `cbt_tes_topik_set`
  ADD PRIMARY KEY (`tset_id`),
  ADD KEY `p_tsubset_test_id` (`tset_tes_id`),
  ADD KEY `tsubset_subject_id` (`tset_topik_id`);

--
-- Indexes for table `cbt_tes_user`
--
ALTER TABLE `cbt_tes_user`
  ADD PRIMARY KEY (`tesuser_id`),
  ADD UNIQUE KEY `ak_testuser` (`tesuser_tes_id`,`tesuser_user_id`,`tesuser_status`),
  ADD KEY `p_testuser_user_id` (`tesuser_user_id`),
  ADD KEY `p_testuser_test_id` (`tesuser_tes_id`);

--
-- Indexes for table `cbt_topik`
--
ALTER TABLE `cbt_topik`
  ADD PRIMARY KEY (`topik_id`),
  ADD UNIQUE KEY `ak_subject_name` (`topik_modul_id`,`topik_nama`);

--
-- Indexes for table `cbt_user`
--
ALTER TABLE `cbt_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `ak_user_name` (`user_name`),
  ADD KEY `user_groups_id` (`user_grup_id`),
  ADD KEY `user_detail` (`user_detail`);

--
-- Indexes for table `cbt_user_grup`
--
ALTER TABLE `cbt_user_grup`
  ADD PRIMARY KEY (`grup_id`),
  ADD UNIQUE KEY `group_name` (`grup_nama`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `user_akses`
--
ALTER TABLE `user_akses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `akses_kode_menu` (`kode_menu`),
  ADD KEY `akses_level` (`level`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `level` (`level`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_menu` (`kode_menu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  MODIFY `jawaban_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1130;

--
-- AUTO_INCREMENT for table `cbt_konfigurasi`
--
ALTER TABLE `cbt_konfigurasi`
  MODIFY `konfigurasi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cbt_modul`
--
ALTER TABLE `cbt_modul`
  MODIFY `modul_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  MODIFY `soal_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=329;

--
-- AUTO_INCREMENT for table `cbt_tes`
--
ALTER TABLE `cbt_tes`
  MODIFY `tes_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cbt_tes_soal`
--
ALTER TABLE `cbt_tes_soal`
  MODIFY `tessoal_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cbt_tes_token`
--
ALTER TABLE `cbt_tes_token`
  MODIFY `token_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cbt_tes_topik_set`
--
ALTER TABLE `cbt_tes_topik_set`
  MODIFY `tset_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cbt_tes_user`
--
ALTER TABLE `cbt_tes_user`
  MODIFY `tesuser_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `cbt_topik`
--
ALTER TABLE `cbt_topik`
  MODIFY `topik_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cbt_user`
--
ALTER TABLE `cbt_user`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cbt_user_grup`
--
ALTER TABLE `cbt_user_grup`
  MODIFY `grup_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_akses`
--
ALTER TABLE `user_akses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=505;

--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cbt_jawaban`
--
ALTER TABLE `cbt_jawaban`
  ADD CONSTRAINT `cbt_jawaban_ibfk_1` FOREIGN KEY (`jawaban_soal_id`) REFERENCES `cbt_soal` (`soal_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_paket`
--
ALTER TABLE `cbt_paket`
  ADD CONSTRAINT `cbt_paket_ibfk_1` FOREIGN KEY (`topik_id`) REFERENCES `cbt_topik` (`topik_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cbt_soal`
--
ALTER TABLE `cbt_soal`
  ADD CONSTRAINT `cbt_soal_ibfk_1` FOREIGN KEY (`soal_topik_id`) REFERENCES `cbt_topik` (`topik_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tesgrup`
--
ALTER TABLE `cbt_tesgrup`
  ADD CONSTRAINT `cbt_tesgrup_ibfk_1` FOREIGN KEY (`tstgrp_tes_id`) REFERENCES `cbt_tes` (`tes_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cbt_tesgrup_ibfk_2` FOREIGN KEY (`tstgrp_grup_id`) REFERENCES `cbt_user_grup` (`grup_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tes_soal`
--
ALTER TABLE `cbt_tes_soal`
  ADD CONSTRAINT `cbt_tes_soal_ibfk_1` FOREIGN KEY (`tessoal_tesuser_id`) REFERENCES `cbt_tes_user` (`tesuser_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cbt_tes_soal_ibfk_2` FOREIGN KEY (`tessoal_soal_id`) REFERENCES `cbt_soal` (`soal_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tes_soal_jawaban`
--
ALTER TABLE `cbt_tes_soal_jawaban`
  ADD CONSTRAINT `cbt_tes_soal_jawaban_ibfk_1` FOREIGN KEY (`soaljawaban_tessoal_id`) REFERENCES `cbt_tes_soal` (`tessoal_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cbt_tes_soal_jawaban_ibfk_2` FOREIGN KEY (`soaljawaban_jawaban_id`) REFERENCES `cbt_jawaban` (`jawaban_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tes_token`
--
ALTER TABLE `cbt_tes_token`
  ADD CONSTRAINT `cbt_tes_token_ibfk_1` FOREIGN KEY (`token_user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cbt_tes_topik_set`
--
ALTER TABLE `cbt_tes_topik_set`
  ADD CONSTRAINT `cbt_tes_topik_set_ibfk_1` FOREIGN KEY (`tset_tes_id`) REFERENCES `cbt_tes` (`tes_id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `cbt_tes_topik_set_ibfk_2` FOREIGN KEY (`tset_topik_id`) REFERENCES `cbt_topik` (`topik_id`) ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_tes_user`
--
ALTER TABLE `cbt_tes_user`
  ADD CONSTRAINT `cbt_tes_user_ibfk_1` FOREIGN KEY (`tesuser_tes_id`) REFERENCES `cbt_tes` (`tes_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cbt_tes_user_ibfk_2` FOREIGN KEY (`tesuser_user_id`) REFERENCES `cbt_user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_topik`
--
ALTER TABLE `cbt_topik`
  ADD CONSTRAINT `cbt_topik_ibfk_1` FOREIGN KEY (`topik_modul_id`) REFERENCES `cbt_modul` (`modul_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cbt_user`
--
ALTER TABLE `cbt_user`
  ADD CONSTRAINT `cbt_user_ibfk_1` FOREIGN KEY (`user_grup_id`) REFERENCES `cbt_user_grup` (`grup_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`level`) REFERENCES `user_level` (`level`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_akses`
--
ALTER TABLE `user_akses`
  ADD CONSTRAINT `user_akses_ibfk_2` FOREIGN KEY (`kode_menu`) REFERENCES `user_menu` (`kode_menu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_akses_ibfk_3` FOREIGN KEY (`level`) REFERENCES `user_level` (`level`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
