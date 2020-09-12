/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : web_1

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2019-08-01 11:39:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for dokumen_bapem_laporan
-- ----------------------------
DROP TABLE IF EXISTS `dokumen_bapem_laporan`;
CREATE TABLE `dokumen_bapem_laporan` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sasaran_id` int(11) NOT NULL,
  `kode_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `volume` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of dokumen_bapem_laporan
-- ----------------------------
INSERT INTO `dokumen_bapem_laporan` VALUES ('1', '27', '0201', '350', 'orang', '', '', '2019-05-29 14:16:57', '2019-05-29 14:16:59');
INSERT INTO `dokumen_bapem_laporan` VALUES ('2', '27', '0202', '50', 'orang', 'datar hadir panitia inti', 'Capture.PNG', '2019-06-10 03:37:03', '2019-06-10 03:37:03');
INSERT INTO `dokumen_bapem_laporan` VALUES ('3', '27', '0203', '5', 'orang', '-', 'Screenshot_2.jpg', '2019-06-17 02:41:07', '2019-06-17 02:41:07');
INSERT INTO `dokumen_bapem_laporan` VALUES ('22', '32', '0201', '80', 'orang', '-', '019_32_0201.pdf', '2019-06-25 03:04:57', '2019-07-04 01:26:02');
INSERT INTO `dokumen_bapem_laporan` VALUES ('23', '32', '0202', '20', 'orang', 'inti', '19_32_0202.pdf', '2019-06-25 07:59:24', '2019-06-25 07:59:24');
INSERT INTO `dokumen_bapem_laporan` VALUES ('24', '35', '0201', '60', 'orang', '-', '19_35_0201.pdf', '2019-07-02 01:05:18', '2019-07-02 01:05:18');
INSERT INTO `dokumen_bapem_laporan` VALUES ('25', '35', '0202', '15', 'orang', 'oke aja', '19_35_0202.pdf', '2019-07-02 06:24:34', '2019-07-19 02:30:42');

-- ----------------------------
-- Table structure for dokumen_bapem_pemberian
-- ----------------------------
DROP TABLE IF EXISTS `dokumen_bapem_pemberian`;
CREATE TABLE `dokumen_bapem_pemberian` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `listbapem_id` int(11) NOT NULL,
  `kode_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `catatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of dokumen_bapem_pemberian
-- ----------------------------
INSERT INTO `dokumen_bapem_pemberian` VALUES ('3', '2', '0102', 'Kerjasama', 'Screenshot_1.jpg', '2019-06-12 06:16:14', '2019-06-12 06:16:14');
INSERT INTO `dokumen_bapem_pemberian` VALUES ('4', '2', '0103', 'Penetapan', 'test-1.jpg', '2019-06-12 07:40:15', '2019-06-12 07:40:15');
INSERT INTO `dokumen_bapem_pemberian` VALUES ('5', '4', '0101', 'diprint', 'Capture.PNG', '2019-06-17 01:50:03', '2019-06-17 01:50:03');
INSERT INTO `dokumen_bapem_pemberian` VALUES ('6', '4', '0102', '-', 'cover.jpg', '2019-06-17 01:58:28', '2019-06-17 01:58:28');
INSERT INTO `dokumen_bapem_pemberian` VALUES ('7', '4', '0103', '-', 'translokasi.PNG', '2019-06-17 02:00:44', '2019-06-17 02:00:44');
INSERT INTO `dokumen_bapem_pemberian` VALUES ('8', '4', '0104', '-', 'didik.jpg', '2019-06-17 02:05:32', '2019-06-17 02:05:32');
INSERT INTO `dokumen_bapem_pemberian` VALUES ('11', '3', '0102', 'lol', 'files\\19_3_0102.pdf', '2019-06-24 09:01:19', '2019-06-24 09:01:19');
INSERT INTO `dokumen_bapem_pemberian` VALUES ('13', '3', '0103', 'lala', 'files\\19_3_0103.pdf', '2019-06-25 02:09:00', '2019-06-25 02:09:00');
INSERT INTO `dokumen_bapem_pemberian` VALUES ('15', '3', '0104', 'loll', '19_3_0104.pdf', '2019-06-25 02:12:01', '2019-06-25 02:12:01');
INSERT INTO `dokumen_bapem_pemberian` VALUES ('16', '7', '0102', '--', '19_7_0102.pdf', '2019-06-25 07:02:34', '2019-06-25 07:02:34');
INSERT INTO `dokumen_bapem_pemberian` VALUES ('17', '7', '0101', 'mou', '19_7_0101.pdf', '2019-06-25 07:05:50', '2019-06-25 07:05:50');
INSERT INTO `dokumen_bapem_pemberian` VALUES ('18', '9', '0101', '-', '19_9_0101.pdf', '2019-07-01 07:05:54', '2019-07-19 01:29:13');
INSERT INTO `dokumen_bapem_pemberian` VALUES ('19', '9', '0102', 'no cttn', '19_9_0102.pdf', '2019-07-05 01:25:17', '2019-07-09 02:49:15');
INSERT INTO `dokumen_bapem_pemberian` VALUES ('20', '9', '0103', 'tes aja', '19_9_0103.pdf', '2019-07-09 03:39:48', '2019-07-18 15:09:56');

-- ----------------------------
-- Table structure for listbapem
-- ----------------------------
DROP TABLE IF EXISTS `listbapem`;
CREATE TABLE `listbapem` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type_bapem` int(11) NOT NULL,
  `tahun` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_bapem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of listbapem
-- ----------------------------
INSERT INTO `listbapem` VALUES ('3', '1', '1', '2019', 'DIKLAT AA', 'testt', '2019-05-26 16:54:03', '2019-06-17 07:08:28');
INSERT INTO `listbapem` VALUES ('7', '1', '1', '2019', 'DIKLAT ABC', 'aabcsd', '2019-06-18 04:44:42', '2019-06-18 04:44:42');
INSERT INTO `listbapem` VALUES ('8', '1', '3', '2018', 'DIKLAT XYZ', 'wkwkkw', '2019-06-18 04:46:30', '2019-06-18 04:46:30');
INSERT INTO `listbapem` VALUES ('9', '6', '1', '2019', 'DIKLAT UJI COBA USER', 'tesst', '2019-06-28 06:50:36', '2019-06-28 06:51:00');
INSERT INTO `listbapem` VALUES ('10', '6', '3', '2017', 'DIKLAT QWERTY', '-', '2019-07-08 01:07:01', '2019-07-08 01:07:01');
INSERT INTO `listbapem` VALUES ('11', '5', '1', '2019', 'DIKLATSAR', '-', '2019-07-10 04:40:10', '2019-07-10 04:40:10');
INSERT INTO `listbapem` VALUES ('12', '6', '3', '2018', 'BAPEM ABC', '-', '2019-07-19 06:46:41', '2019-07-19 06:46:41');
INSERT INTO `listbapem` VALUES ('13', '6', '3', '2018', 'BAPEM ABC', '-', '2019-07-19 06:47:45', '2019-07-19 06:47:45');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2019_05_16_072613_create_table_laporan', '2');
INSERT INTO `migrations` VALUES ('4', '2019_05_17_055702_create_personel_bapems_table', '3');
INSERT INTO `migrations` VALUES ('5', '2019_05_17_061726_create_personel_bapems_table', '4');
INSERT INTO `migrations` VALUES ('6', '2019_05_17_062206_create_table_personel_bapem', '5');
INSERT INTO `migrations` VALUES ('7', '2019_05_17_062410_create_table_sasaran', '5');
INSERT INTO `migrations` VALUES ('8', '2019_05_17_063037_create_table_std_dokumen', '5');
INSERT INTO `migrations` VALUES ('9', '2019_05_17_063437_create_table_dokumen_bapem_pemberian', '5');
INSERT INTO `migrations` VALUES ('10', '2019_05_17_063810_create_table_dokumen_bapem_laporan', '5');
INSERT INTO `migrations` VALUES ('11', '2019_05_17_064130_create_table_pro_kabkot', '5');
INSERT INTO `migrations` VALUES ('12', '2019_05_20_060409_add_instansi_to_users', '6');
INSERT INTO `migrations` VALUES ('13', '2019_05_21_063431_create_permission_tables', '7');
INSERT INTO `migrations` VALUES ('14', '2019_05_23_062640_create_table_list_bapem', '8');

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles` (
  `role_id` int(10) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES ('1', 'App\\User', '1');
INSERT INTO `model_has_roles` VALUES ('2', 'App\\User', '6');
INSERT INTO `model_has_roles` VALUES ('2', 'App\\User', '7');
INSERT INTO `model_has_roles` VALUES ('1', 'App\\User', '8');
INSERT INTO `model_has_roles` VALUES ('2', 'App\\User', '9');
INSERT INTO `model_has_roles` VALUES ('2', 'App\\User', '10');
INSERT INTO `model_has_roles` VALUES ('2', 'App\\User', '11');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES ('1', 'edit articles', 'web', '2019-05-21 07:07:50', '2019-05-21 07:07:50');
INSERT INTO `permissions` VALUES ('2', 'read articles', 'web', '2019-05-21 07:11:26', '2019-05-21 07:11:26');

-- ----------------------------
-- Table structure for personel_bapem
-- ----------------------------
DROP TABLE IF EXISTS `personel_bapem`;
CREATE TABLE `personel_bapem` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `kecamatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personel_bapem_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personel_bapem
-- ----------------------------
INSERT INTO `personel_bapem` VALUES ('2', '3', 'Penanggung Jawab LPD', 'Maman Tarmandi', '320412345678123457', '198107252009031002', '0811240312121', 'email2@gmail.com', 'Bendahara Penerimaan', 'Universitas Pendidikan Indonesia', 'Jl. Setiabudi', 'DKI Jakarta', 'Kota Jakarta Barat', 'Setiabudi', '10649626_10204007381970890_8022188881444128258_n.jpg', '2019-05-21 08:20:42', '2019-06-27 03:39:55');
INSERT INTO `personel_bapem` VALUES ('3', '3', 'Operator LPD\r\n', 'Tedi Suradi\r\n', '320412345678123458', '198107252009031003', '0811240312121', 'email3@gmail.com\r\n', 'Staf Tata Usaha\r\n', 'Universitas Pendidikan Indonesia\r\n', 'Jl. Setiabudi\r\n', 'Jawa Barat\r\n', 'Kota Bandung\r\n', 'Setiabudi', '5.jpg', '2019-05-21 08:22:04', '2019-05-21 08:22:08');
INSERT INTO `personel_bapem` VALUES ('4', '2', 'Penanggung Jawab LPD', 'Sutejo Ajaa', '2909291920', '2902929302221', '08989304934', 'sutejo@gmail.com', 'A', 'Universitas Indonesia', 'Concat', 'DI Yogyakarta', 'Kab. Sleman', 'Condongcatur', 'didik.jpg', '2019-05-28 01:21:53', '2019-06-14 02:01:10');
INSERT INTO `personel_bapem` VALUES ('5', '2', 'Bendahara LPD', 'Painem', '83929203929', '2392838923', '08984738434', 'painem@gmail.com', 'B', 'Universitas Indonesia', 'Yogyakarta', 'DI Yogyakarta', 'Kab. Gunung Kidul', 'Wonosari', 'IMG-20160803-WA0007.jpg', '2019-05-28 01:29:46', '2019-05-28 01:29:46');
INSERT INTO `personel_bapem` VALUES ('8', '9', 'Penanggung Jawab LPD', 'Zulkarnaen', '1298912389123', '29823829382', '089232823733', 'emailku@gmail.com', 'Tata Usaha', 'Universitas Bandung', 'Jl. Sriwedari', 'Jawa Barat', 'Kab. Bandung', 'Kec. Cibubur', 'personel-8.jpg', '2019-06-14 09:25:42', '2019-07-09 07:11:13');
INSERT INTO `personel_bapem` VALUES ('9', '3', 'Operator LPD', 'Marya Suhesti', '123901923091203', '91203912039', '09239293912', 'emailk@gmail.com', 'Tata Usah', 'Universitas Indonesia', 'Jl. Kampong', 'Jawa Barat', 'Kab. Bekasi', 'Kec. Cibubur', 'personel-9.jpg', '2019-06-18 03:26:43', '2019-06-27 06:36:00');
INSERT INTO `personel_bapem` VALUES ('10', '3', 'Penanggung Jawab LPD', 'aasd', '1231238', '128284324', '0834837234', 'ajhdjhd@gmail.com', 'asjdkaj', 'kjhs', 'ksjfhs', 'Maluku', 'Kota Tual', 'Sleman', 'portofolio (4).jpg', '2019-07-10 04:46:51', '2019-07-10 04:46:51');
INSERT INTO `personel_bapem` VALUES ('11', '9', 'Bendahara LPD', 'Zulha Triana', '12873812738', '18237182378', '08921328738273', 'zulha@gmail.com', 'Bendahara', 'AMikom', 'ahdjasdh', 'DI Yogyakarta', 'Kota Yogyakarta', 'Concat', 'personel-11.jpg', '2019-07-10 07:41:37', '2019-07-10 07:45:47');
INSERT INTO `personel_bapem` VALUES ('13', '9', 'Operator LPD', 'YUKI', '2323483', '238728374', '083483438', 'shajh@gmail.com', 'ashdahsd', 'jhufeuvb', 'ushfusdhf', 'Kepulauan Riau', 'Kota Batam', 'Sleman', 'personel-2323483.jpg', '2019-07-10 08:04:45', '2019-07-10 08:04:45');

-- ----------------------------
-- Table structure for pro_kabkot
-- ----------------------------
DROP TABLE IF EXISTS `pro_kabkot`;
CREATE TABLE `pro_kabkot` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `idprop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idkab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kabupaten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `propinsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=516 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of pro_kabkot
-- ----------------------------
INSERT INTO `pro_kabkot` VALUES ('1', '01', '0161', 'Kota Jakarta Utara', 'DKI Jakarta', null, null);
INSERT INTO `pro_kabkot` VALUES ('2', '01', '0162', 'Kota Jakarta Barat', 'DKI Jakarta', null, null);
INSERT INTO `pro_kabkot` VALUES ('3', '01', '0163', 'Kota Jakarta Selatan', 'DKI Jakarta', null, null);
INSERT INTO `pro_kabkot` VALUES ('4', '01', '0164', 'Kota Jakarta Timur', 'DKI Jakarta', null, null);
INSERT INTO `pro_kabkot` VALUES ('5', '01', '0101', 'Kab. Kepulauan Seribu', 'DKI Jakarta', null, null);
INSERT INTO `pro_kabkot` VALUES ('6', '01', '0160', 'Kota Jakarta Pusat', 'DKI Jakarta', null, null);
INSERT INTO `pro_kabkot` VALUES ('7', '02', '0268', 'Kota Tasikmalaya', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('8', '02', '0222', 'Kab. Bekasi', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('9', '02', '0223', 'Kab. Bandung Barat', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('10', '02', '0224', 'Kab. Pangandaran', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('11', '02', '0261', 'Kota Bogor', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('12', '02', '0263', 'Kota Cirebon', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('13', '02', '0265', 'Kota Bekasi', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('14', '02', '0221', 'Kab. Karawang', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('15', '02', '0267', 'Kota Cimahi', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('16', '02', '0260', 'Kota Bandung', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('17', '02', '0269', 'Kota Banjar', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('18', '02', '0266', 'Kota Depok', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('19', '02', '0206', 'Kab. Sukabumi', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('20', '02', '0262', 'Kota Sukabumi', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('21', '02', '0205', 'Kab. Bogor', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('22', '02', '0220', 'Kab. Purwakarta', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('23', '02', '0207', 'Kab. Cianjur', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('24', '02', '0208', 'Kab. Bandung', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('25', '02', '0210', 'Kab. Sumedang', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('26', '02', '0211', 'Kab. Garut', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('27', '02', '0212', 'Kab. Tasikmalaya', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('28', '02', '0215', 'Kab. Kuningan', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('29', '02', '0216', 'Kab. Majalengka', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('30', '02', '0217', 'Kab. Cirebon', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('31', '02', '0218', 'Kab. Indramayu', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('32', '02', '0219', 'Kab. Subang', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('33', '02', '0214', 'Kab. Ciamis', 'Jawa Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('34', '03', '0362', 'Kota Salatiga', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('35', '03', '0320', 'Kab. Jepara', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('36', '03', '0321', 'Kab. Demak', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('37', '03', '0322', 'Kab. Semarang', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('38', '03', '0323', 'Kab. Temanggung', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('39', '03', '0324', 'Kab. Kendal', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('40', '03', '0325', 'Kab. Batang', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('41', '03', '0326', 'Kab. Pekalongan', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('42', '03', '0327', 'Kab. Pemalang', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('43', '03', '0365', 'Kota Tegal', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('44', '03', '0361', 'Kota Surakarta', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('45', '03', '0363', 'Kota Semarang', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('46', '03', '0364', 'Kota Pekalongan', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('47', '03', '0328', 'Kab. Tegal', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('48', '03', '0319', 'Kab. Kudus', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('49', '03', '0329', 'Kab. Brebes', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('50', '03', '0309', 'Kab. Boyolali', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('51', '03', '0318', 'Kab. Pati', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('52', '03', '0360', 'Kota Magelang', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('53', '03', '0303', 'Kab. Purbalingga', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('54', '03', '0304', 'Kab. Banjarnegara', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('55', '03', '0305', 'Kab. Kebumen', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('56', '03', '0306', 'Kab. Purworejo', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('57', '03', '0307', 'Kab. Wonosobo', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('58', '03', '0302', 'Kab. Banyumas', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('59', '03', '0301', 'Kab. Cilacap', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('60', '03', '0310', 'Kab. Klaten', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('61', '03', '0311', 'Kab. Sukoharjo', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('62', '03', '0312', 'Kab. Wonogiri', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('63', '03', '0313', 'Kab. Karanganyar', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('64', '03', '0314', 'Kab. Sragen', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('65', '03', '0315', 'Kab. Grobogan', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('66', '03', '0316', 'Kab. Blora', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('67', '03', '0317', 'Kab. Rembang', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('68', '03', '0308', 'KAB. MAGELANG', 'Jawa Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('69', '04', '0403', 'Kab. Gunung Kidul', 'DI Yogyakarta', null, null);
INSERT INTO `pro_kabkot` VALUES ('70', '04', '0404', 'Kab. Kulonprogo', 'DI Yogyakarta', null, null);
INSERT INTO `pro_kabkot` VALUES ('71', '04', '0401', 'Kab. Bantul', 'DI Yogyakarta', null, null);
INSERT INTO `pro_kabkot` VALUES ('72', '04', '0402', 'Kab. Sleman', 'DI Yogyakarta', null, null);
INSERT INTO `pro_kabkot` VALUES ('73', '04', '0460', 'Kota Yogyakarta', 'DI Yogyakarta', null, null);
INSERT INTO `pro_kabkot` VALUES ('74', '05', '0560', 'Kota Surabaya', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('75', '05', '0522', 'Kab. Bondowoso', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('76', '05', '0523', 'Kab. Situbondo', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('77', '05', '0524', 'Kab. Jember', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('78', '05', '0525', 'Kab. Banyuwangi', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('79', '05', '0526', 'Kab. Pamekasan', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('80', '05', '0527', 'Kab. Sampang', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('81', '05', '0529', 'Kab. Bangkalan', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('82', '05', '0513', 'Kab. Kediri', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('83', '05', '0561', 'Kota Malang', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('84', '05', '0562', 'Kota Madiun', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('85', '05', '0563', 'Kota Kediri', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('86', '05', '0564', 'Kota Mojokerto', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('87', '05', '0565', 'Kota Blitar', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('88', '05', '0566', 'Kota Pasuruan', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('89', '05', '0567', 'Kota Probolinggo', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('90', '05', '0568', 'Kota Batu', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('91', '05', '0521', 'Kab. Lumajang', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('92', '05', '0528', 'Kab. Sumenep', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('93', '05', '0505', 'Kab. Bojonegoro', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('94', '05', '0501', 'Kab. Gresik', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('95', '05', '0502', 'Kab. Sidoarjo', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('96', '05', '0515', 'Kab. Blitar', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('97', '05', '0504', 'Kab. Jombang', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('98', '05', '0520', 'Kab. Probolinggo', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('99', '05', '0506', 'Kab. Tuban', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('100', '05', '0507', 'Kab. Lamongan', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('101', '05', '0508', 'Kab. Madiun', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('102', '05', '0510', 'Kab. Magetan', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('103', '05', '0511', 'Kab. Ponorogo', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('104', '05', '0512', 'Kab. Pacitan', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('105', '05', '0514', 'Kab. Nganjuk', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('106', '05', '0516', 'Kab. Tulungagung', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('107', '05', '0517', 'Kab. Trenggalek', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('108', '05', '0518', 'Kab. Malang', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('109', '05', '0519', 'Kab. Pasuruan', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('110', '05', '0509', 'Kab. Ngawi', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('111', '05', '0503', 'Kab. Mojokerto', 'Jawa Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('112', '06', '0615', 'Kab. Aceh Nagan Raya', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('113', '06', '0616', 'Kab. Aceh Jaya', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('114', '06', '0617', 'Kab. Aceh Barat Daya', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('115', '06', '0618', 'Kab. Gayo Luas', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('116', '06', '0619', 'Kab. Bener Meriah', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('117', '06', '0620', 'Kab. Pidie Jaya', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('118', '06', '0661', 'Kota Banda Aceh', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('119', '06', '0660', 'Kota Sabang', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('120', '06', '0664', 'Kota Subulussalam', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('121', '06', '0663', 'Kota Langsa', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('122', '06', '0604', 'Kab. Aceh Timur', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('123', '06', '0662', 'Kota Lhokseumawe', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('124', '06', '0603', 'Kab. Aceh Utara', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('125', '06', '0614', 'Kab. Aceh Tamiang', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('126', '06', '0605', 'Kab. Aceh Tengah', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('127', '06', '0601', 'Kab. Aceh Besar', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('128', '06', '0606', 'Kab. Aceh Barat', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('129', '06', '0607', 'Kab. Aceh Selatan', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('130', '06', '0608', 'Kab. Aceh Tenggara', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('131', '06', '0611', 'Kab. Simeulue', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('132', '06', '0612', 'Kab. Bireuen', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('133', '06', '0613', 'Kab. Aceh Singkil', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('134', '06', '0602', 'Kab. Pidie', 'Aceh', null, null);
INSERT INTO `pro_kabkot` VALUES ('135', '07', '0761', 'Kota Binjai', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('136', '07', '0722', 'Kab. Batu Bara', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('137', '07', '0723', 'Kab. Padang Lawas', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('138', '07', '0724', 'Kab. Padang Lawas Utara', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('139', '07', '0725', 'Kab. Labuhanbatu Utara', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('140', '07', '0727', 'Kab. Nias Barat', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('141', '07', '0760', 'Kota Medan', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('142', '07', '0762', 'Kota Tebing Tinggi', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('143', '07', '0763', 'Kota Pematang Siantar', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('144', '07', '0764', 'Kota Tanjung Balai', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('145', '07', '0765', 'Kota Sibolga', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('146', '07', '0721', 'Kab. Serdang Bedagai', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('147', '07', '0767', 'Kota Gunung Sitoli', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('148', '07', '0726', 'Kab. Labuhanbatu selatan', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('149', '07', '0766', 'Kota Padang Sidempuan', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('150', '07', '0707', 'Kab. Labuhan Batu', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('151', '07', '0728', 'Kab. Nias Utara', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('152', '07', '0720', 'Kab. Samosir', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('153', '07', '0703', 'Kab. Karo', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('154', '07', '0704', 'Kab. Simalungun', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('155', '07', '0706', 'Kab. Asahan', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('156', '07', '0708', 'Kab. Tapanuli Utara', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('157', '07', '0709', 'Kab. Tapanuli Tengah', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('158', '07', '0710', 'Kab. Tapanuli Selatan', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('159', '07', '0711', 'Kab. Nias', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('160', '07', '0701', 'Kab. Deli Serdang', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('161', '07', '0715', 'Kab. Mandailing Natal', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('162', '07', '0716', 'Kab. Toba Samosir', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('163', '07', '0717', 'Kab. Nias Selatan', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('164', '07', '0702', 'Kab. Langkat', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('165', '07', '0705', 'Kab. Dairi', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('166', '07', '0718', 'Kab. Pakpak Bharat', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('167', '07', '0719', 'Kab. Humbang Hasundutan', 'Sumatera Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('168', '08', '0866', 'Kota Pariaman', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('169', '08', '0860', 'Kota Bukittinggi', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('170', '08', '0861', 'Kota Padang', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('171', '08', '0862', 'Kota Padang Panjang', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('172', '08', '0863', 'Kota Sawahlunto', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('173', '08', '0865', 'Kota Payakumbuh', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('174', '08', '0813', 'Kab. Pasaman Barat', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('175', '08', '0804', 'Kab. Solok', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('176', '08', '0864', 'Kota Solok', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('177', '08', '0802', 'Kab. Pasaman', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('178', '08', '0806', 'Kab. Pesisir Selatan', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('179', '08', '0801', 'Kab. Agam', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('180', '08', '0812', 'Kab. Dharmasraya', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('181', '08', '0803', 'Kab. Lima Puluh Kota', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('182', '08', '0805', 'Kab. Padang Pariaman', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('183', '08', '0807', 'Kab. Tanah Datar', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('184', '08', '0808', 'Kab. Sijunjung', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('185', '08', '0810', 'KAB. KEPULAUAN MENTAWAI', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('186', '08', '0811', 'Kab. Solok Selatan', 'Sumatera Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('187', '09', '0960', 'Kota Pekanbaru', 'Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('188', '09', '0915', 'Kab. Kepulauan Meranti', 'Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('189', '09', '0911', 'Kab. Siak', 'Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('190', '09', '0914', 'Kab. Kuantan Singingi', 'Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('191', '09', '0905', 'Kab. Indragiri Hilir', 'Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('192', '09', '0962', 'Kota Dumai', 'Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('193', '09', '0908', 'Kab. Pelalawan', 'Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('194', '09', '0904', 'Kab. Indragiri Hulu', 'Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('195', '09', '0902', 'Kab. Bengkalis', 'Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('196', '09', '0901', 'Kab. Kampar', 'Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('197', '09', '0910', 'Kab. Rokan Hilir', 'Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('198', '09', '0909', 'Kab. Rokan Hulu', 'Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('199', '10', '1007', 'Kab. Muara Jambi', 'Jambi', null, null);
INSERT INTO `pro_kabkot` VALUES ('200', '10', '1061', 'Kota Sungai Penuh', 'Jambi', null, null);
INSERT INTO `pro_kabkot` VALUES ('201', '10', '1060', 'Kota Jambi', 'Jambi', null, null);
INSERT INTO `pro_kabkot` VALUES ('202', '10', '1008', 'Kab. Tanjung Jabung Timur', 'Jambi', null, null);
INSERT INTO `pro_kabkot` VALUES ('203', '10', '1006', 'Kab. Tebo', 'Jambi', null, null);
INSERT INTO `pro_kabkot` VALUES ('204', '10', '1005', 'Kab. Kerinci', 'Jambi', null, null);
INSERT INTO `pro_kabkot` VALUES ('205', '10', '1004', 'Kab. Tanjung Jabung Barat', 'Jambi', null, null);
INSERT INTO `pro_kabkot` VALUES ('206', '10', '1003', 'Kab. Sarolangun ', 'Jambi', null, null);
INSERT INTO `pro_kabkot` VALUES ('207', '10', '1002', 'Kab. Bungo', 'Jambi', null, null);
INSERT INTO `pro_kabkot` VALUES ('208', '10', '1001', 'Kab. Batanghari', 'Jambi', null, null);
INSERT INTO `pro_kabkot` VALUES ('209', '10', '1009', 'Kab. Merangin', 'Jambi', null, null);
INSERT INTO `pro_kabkot` VALUES ('210', '11', '1104', 'Kab. Muara Enim', 'Sumatera Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('211', '11', '1110', 'Kab. Ogan Ilir', 'Sumatera Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('212', '11', '1162', 'Kota Lubuk Linggau', 'Sumatera Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('213', '11', '1161', 'Kota Prabumulih', 'Sumatera Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('214', '11', '1160', 'Kota Palembang', 'Sumatera Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('215', '11', '1113', 'Kab. Musi Rawas Utara', 'Sumatera Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('216', '11', '1112', 'Kab. Penukal Abab Lematang Ilir', 'Sumatera Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('217', '11', '1111', 'Kab. Empat Lawang', 'Sumatera Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('218', '11', '1102', 'Kab. Ogan Komering Ilir', 'Sumatera Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('219', '11', '1106', 'Kab. Musi Rawas', 'Sumatera Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('220', '11', '1101', 'Kab. Musi Banyuasin', 'Sumatera Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('221', '11', '1109', 'Kab. Oku Selatan', 'Sumatera Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('222', '11', '1103', 'Kab. Ogan Komering Ulu', 'Sumatera Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('223', '11', '1163', 'Kota Pagar Alam', 'Sumatera Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('224', '11', '1105', 'Kab. Lahat', 'Sumatera Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('225', '11', '1107', 'Kab. Banyuasin', 'Sumatera Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('226', '11', '1108', 'Kab. Oku Timur', 'Sumatera Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('227', '12', '1209', 'Kab. Pesawaran', 'Lampung', null, null);
INSERT INTO `pro_kabkot` VALUES ('228', '12', '1260', 'Kota Bandar Lampung', 'Lampung', null, null);
INSERT INTO `pro_kabkot` VALUES ('229', '12', '1213', 'Kab. Pesisir Barat', 'Lampung', null, null);
INSERT INTO `pro_kabkot` VALUES ('230', '12', '1212', 'Kab. Tulang Bawang Barat', 'Lampung', null, null);
INSERT INTO `pro_kabkot` VALUES ('231', '12', '1211', 'Kab. Pringsewu', 'Lampung', null, null);
INSERT INTO `pro_kabkot` VALUES ('232', '12', '1210', 'Kab. Mesuji', 'Lampung', null, null);
INSERT INTO `pro_kabkot` VALUES ('233', '12', '1261', 'Kota Metro', 'Lampung', null, null);
INSERT INTO `pro_kabkot` VALUES ('234', '12', '1207', 'Kab. Lampung Timur', 'Lampung', null, null);
INSERT INTO `pro_kabkot` VALUES ('235', '12', '1206', 'Kab. Tanggamus', 'Lampung', null, null);
INSERT INTO `pro_kabkot` VALUES ('236', '12', '1205', 'Kab. Tulang Bawang', 'Lampung', null, null);
INSERT INTO `pro_kabkot` VALUES ('237', '12', '1204', 'Kab. Lampung Barat', 'Lampung', null, null);
INSERT INTO `pro_kabkot` VALUES ('238', '12', '1203', 'Kab. Lampung Utara', 'Lampung', null, null);
INSERT INTO `pro_kabkot` VALUES ('239', '12', '1201', 'Kab. Lampung Selatan', 'Lampung', null, null);
INSERT INTO `pro_kabkot` VALUES ('240', '12', '1208', 'Kab. Way Kanan', 'Lampung', null, null);
INSERT INTO `pro_kabkot` VALUES ('241', '12', '1202', 'Kab. Lampung Tengah', 'Lampung', null, null);
INSERT INTO `pro_kabkot` VALUES ('242', '13', '1306', 'Kab. Ketapang', 'Kalimantan Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('243', '13', '1361', 'Kota Singkawang', 'Kalimantan Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('244', '13', '1360', 'Kota Pontianak', 'Kalimantan Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('245', '13', '1313', 'Kab. Mempawah', 'Kalimantan Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('246', '13', '1312', 'Kab. Kubu Raya', 'Kalimantan Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('247', '13', '1311', 'Kab. Sekadau', 'Kalimantan Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('248', '13', '1310', 'Kab. Melawi', 'Kalimantan Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('249', '13', '1309', 'Kab. Landak', 'Kalimantan Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('250', '13', '1307', 'Kab. Kayong Utara', 'Kalimantan Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('251', '13', '1305', 'Kab. Kapuas Hulu', 'Kalimantan Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('252', '13', '1304', 'Kab. Sintang', 'Kalimantan Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('253', '13', '1303', 'Kab. Sanggau', 'Kalimantan Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('254', '13', '1301', 'Kab. Sambas', 'Kalimantan Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('255', '13', '1308', 'Kab. Bengkayang', 'Kalimantan Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('256', '14', '1401', 'Kab. Kapuas', 'Kalimantan Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('257', '14', '1402', 'Kab. Barito Selatan', 'Kalimantan Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('258', '14', '1405', 'Kab. Kotawaringin Barat', 'Kalimantan Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('259', '14', '1412', 'Kab. Murung Raya', 'Kalimantan Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('260', '14', '1404', 'Kab. Kotawaringin Timur', 'Kalimantan Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('261', '14', '1403', 'Kab. Barito Utara', 'Kalimantan Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('262', '14', '1413', 'Kab. Barito Timur', 'Kalimantan Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('263', '14', '1411', 'Kab. Pulang Pisau', 'Kalimantan Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('264', '14', '1410', 'Kab. Gunung Mas', 'Kalimantan Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('265', '14', '1409', 'Kab. Lamandau', 'Kalimantan Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('266', '14', '1408', 'Kab. Sukamara', 'Kalimantan Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('267', '14', '1407', 'Kab. Seruyan', 'Kalimantan Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('268', '14', '1406', 'Kab. Katingan', 'Kalimantan Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('269', '14', '1460', 'Kota Palangkaraya', 'Kalimantan Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('270', '15', '1510', 'Kab. Balangan', 'Kalimantan Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('271', '15', '1508', 'Kab. Tabalong', 'Kalimantan Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('272', '15', '1561', 'Kota Banjarbaru', 'Kalimantan Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('273', '15', '1511', 'Kab. Tanah Bumbu', 'Kalimantan Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('274', '15', '1509', 'Kab. Kotabaru', 'Kalimantan Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('275', '15', '1506', 'Kab. Hulu Sungai Tengah', 'Kalimantan Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('276', '15', '1505', 'Kab. Hulu Sungai Selatan', 'Kalimantan Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('277', '15', '1501', 'Kab. Banjar', 'Kalimantan Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('278', '15', '1504', 'Kab. Tapin', 'Kalimantan Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('279', '15', '1502', 'Kab. Tanah Laut', 'Kalimantan Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('280', '15', '1503', 'Kab. Barito Kuala', 'Kalimantan Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('281', '15', '1560', 'Kota Banjarmasin', 'Kalimantan Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('282', '15', '1507', 'Kab. Hulu Sungai Utara', 'Kalimantan Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('283', '16', '1610', 'Kab. Kutai Timur', 'Kalimantan Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('284', '16', '1663', 'Kota Bontang', 'Kalimantan Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('285', '16', '1661', 'Kota Balikpapan', 'Kalimantan Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('286', '16', '1660', 'Kota Samarinda', 'Kalimantan Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('287', '16', '1611', 'Kab. Penajam Paser Utara', 'Kalimantan Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('288', '16', '1609', 'KAB. KUTAI BARAT', 'Kalimantan Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('289', '16', '1603', 'Kab. Berau', 'Kalimantan Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('290', '16', '1602', 'Kab. Kutai Kartanegara', 'Kalimantan Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('291', '16', '1601', 'Kab. Paser', 'Kalimantan Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('292', '16', '1613', 'KAB. MAHAKAM ULU', 'Kalimantan Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('293', '17', '1711', 'KAB. BOLAANG MONGONDOW TIMUR', 'Sulawesi Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('294', '17', '1704', 'Kab. Kepulauan Talaud', 'Sulawesi Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('295', '17', '1763', 'Kota Kotamobagu', 'Sulawesi Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('296', '17', '1762', 'Kota Tomohon', 'Sulawesi Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('297', '17', '1761', 'Kota Bitung', 'Sulawesi Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('298', '17', '1760', 'Kota Manado', 'Sulawesi Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('299', '17', '1712', 'Kab. Bolaang Mongondow Selatan', 'Sulawesi Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('300', '17', '1708', 'KAB. BOLAANG MONGONDOW UTARA', 'Sulawesi Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('301', '17', '1707', 'Kab. Minahasa Tenggara', 'Sulawesi Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('302', '17', '1701', 'Kab. Bolaang Mongondow', 'Sulawesi Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('303', '17', '1705', 'Kab. Minahasa Selatan', 'Sulawesi Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('304', '17', '1702', 'Kab. Minahasa', 'Sulawesi Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('305', '17', '1703', 'Kab. Kepulauan Sangihe ', 'Sulawesi Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('306', '17', '1706', 'Kab. Minahasa Utara', 'Sulawesi Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('307', '17', '1709', 'Kab. Kepulauan Sitaro', 'Sulawesi Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('308', '18', '1809', 'Kab. Tojo Una-Una', 'Sulawesi Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('309', '18', '1860', 'Kota Palu', 'Sulawesi Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('310', '18', '1812', 'Kab. Morowali Utara', 'Sulawesi Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('311', '18', '1810', 'Kab. Sigi', 'Sulawesi Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('312', '18', '1808', 'Kab. Parigi Muotong', 'Sulawesi Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('313', '18', '1806', 'Kab. Toli Toli', 'Sulawesi Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('314', '18', '1805', 'Kab. Buol', 'Sulawesi Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('315', '18', '1804', 'Kab. Banggai', 'Sulawesi Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('316', '18', '1803', 'Kab. Poso', 'Sulawesi Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('317', '18', '1802', 'Kab. Donggala', 'Sulawesi Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('318', '18', '1801', 'Kab. Banggai Kepulauan', 'Sulawesi Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('319', '18', '1807', 'Kab. Morowali', 'Sulawesi Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('320', '18', '1811', 'Kab. Banggai Laut', 'Sulawesi Tengah', null, null);
INSERT INTO `pro_kabkot` VALUES ('321', '19', '1961', 'Kota Pare Pare', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('322', '19', '1915', 'Kab. Sidenreng Rappang', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('323', '19', '1916', 'Kab. Enrekang', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('324', '19', '1917', 'Kab. Luwu', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('325', '19', '1918', 'Kab. Tana Toraja', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('326', '19', '1924', 'Kab. Luwu Utara', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('327', '19', '1926', 'Kab. Luwu Timur', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('328', '19', '1927', 'Kab. Toraja Utara', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('329', '19', '1914', 'Kab. Pinrang', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('330', '19', '1962', 'Kota Palopo', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('331', '19', '1902', 'Kab. Pangkajene Kepulauan', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('332', '19', '1960', 'Kota Makasar', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('333', '19', '1905', 'Kab. Jeneponto', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('334', '19', '1913', 'Kab. Selayar', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('335', '19', '1904', 'Kab. Takalar', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('336', '19', '1903', 'Kab. Gowa', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('337', '19', '1906', 'Kab. Barru', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('338', '19', '1907', 'Kab. Bone', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('339', '19', '1908', 'Kab. Wajo', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('340', '19', '1909', 'Kab. Soppeng', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('341', '19', '1910', 'Kab. Bantaeng', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('342', '19', '1911', 'Kab. Bulukumba', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('343', '19', '1912', 'Kab. Sinjai', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('344', '19', '1901', 'Kab. Maros', 'Sulawesi Selatan', null, null);
INSERT INTO `pro_kabkot` VALUES ('345', '20', '2015', 'Kab. Buton Tengah', 'Sulawesi Tenggara', null, null);
INSERT INTO `pro_kabkot` VALUES ('346', '20', '2010', 'Kab. Buton Utara', 'Sulawesi Tenggara', null, null);
INSERT INTO `pro_kabkot` VALUES ('347', '20', '2060', 'Kota Kendari', 'Sulawesi Tenggara', null, null);
INSERT INTO `pro_kabkot` VALUES ('348', '20', '2014', 'Kab. Buton Selatan', 'Sulawesi Tenggara', null, null);
INSERT INTO `pro_kabkot` VALUES ('349', '20', '2013', 'Kab. Muna Barat', 'Sulawesi Tenggara', null, null);
INSERT INTO `pro_kabkot` VALUES ('350', '20', '2012', 'Kab. Konawe Kepulauan', 'Sulawesi Tenggara', null, null);
INSERT INTO `pro_kabkot` VALUES ('351', '20', '2011', 'Kab. Kolaka Timur', 'Sulawesi Tenggara', null, null);
INSERT INTO `pro_kabkot` VALUES ('352', '20', '2008', 'Kab. Kolaka Utara', 'Sulawesi Tenggara', null, null);
INSERT INTO `pro_kabkot` VALUES ('353', '20', '2007', 'Kab. Bombana', 'Sulawesi Tenggara', null, null);
INSERT INTO `pro_kabkot` VALUES ('354', '20', '2006', 'Kab. Wakatobi', 'Sulawesi Tenggara', null, null);
INSERT INTO `pro_kabkot` VALUES ('355', '20', '2005', 'Kab. Konawe Selatan', 'Sulawesi Tenggara', null, null);
INSERT INTO `pro_kabkot` VALUES ('356', '20', '2004', 'Kab. Kolaka', 'Sulawesi Tenggara', null, null);
INSERT INTO `pro_kabkot` VALUES ('357', '20', '2003', 'Kab. Buton', 'Sulawesi Tenggara', null, null);
INSERT INTO `pro_kabkot` VALUES ('358', '20', '2002', 'Kab. Muna', 'Sulawesi Tenggara', null, null);
INSERT INTO `pro_kabkot` VALUES ('359', '20', '2001', 'Kab. Konawe', 'Sulawesi Tenggara', null, null);
INSERT INTO `pro_kabkot` VALUES ('360', '20', '2061', 'Kota Bau-Bau', 'Sulawesi Tenggara', null, null);
INSERT INTO `pro_kabkot` VALUES ('361', '20', '2009', 'Kab. Kowane Utara', 'Sulawesi Tenggara', null, null);
INSERT INTO `pro_kabkot` VALUES ('362', '21', '2108', 'KAB. BURU SELATAN', 'Maluku', null, null);
INSERT INTO `pro_kabkot` VALUES ('363', '21', '2161', 'Kota Tual', 'Maluku', null, null);
INSERT INTO `pro_kabkot` VALUES ('364', '21', '2109', 'KAB. MALUKU BARAT DAYA', 'Maluku', null, null);
INSERT INTO `pro_kabkot` VALUES ('365', '21', '2107', 'Kab. Kepulauan Aru', 'Maluku', null, null);
INSERT INTO `pro_kabkot` VALUES ('366', '21', '2105', 'Kab. Seram Bagian Barat', 'Maluku', null, null);
INSERT INTO `pro_kabkot` VALUES ('367', '21', '2104', 'Kab. Maluku Tenggara Barat', 'Maluku', null, null);
INSERT INTO `pro_kabkot` VALUES ('368', '21', '2103', 'Kab. Buru', 'Maluku', null, null);
INSERT INTO `pro_kabkot` VALUES ('369', '21', '2102', 'Kab. Maluku Tenggara', 'Maluku', null, null);
INSERT INTO `pro_kabkot` VALUES ('370', '21', '2101', 'Kab. Maluku Tengah', 'Maluku', null, null);
INSERT INTO `pro_kabkot` VALUES ('371', '21', '2106', 'Kab. Seram Bagian Timur', 'Maluku', null, null);
INSERT INTO `pro_kabkot` VALUES ('372', '21', '2160', 'Kota Ambon', 'Maluku', null, null);
INSERT INTO `pro_kabkot` VALUES ('373', '22', '2204', 'Kab. Badung', 'Bali', null, null);
INSERT INTO `pro_kabkot` VALUES ('374', '22', '2260', 'Kota Denpasar', 'Bali', null, null);
INSERT INTO `pro_kabkot` VALUES ('375', '22', '2208', 'Kab. Karang Asem', 'Bali', null, null);
INSERT INTO `pro_kabkot` VALUES ('376', '22', '2207', 'Kab. Bangli', 'Bali', null, null);
INSERT INTO `pro_kabkot` VALUES ('377', '22', '2205', 'Kab. Gianyar', 'Bali', null, null);
INSERT INTO `pro_kabkot` VALUES ('378', '22', '2203', 'Kab. Tabanan', 'Bali', null, null);
INSERT INTO `pro_kabkot` VALUES ('379', '22', '2202', 'Kab. Jembrana', 'Bali', null, null);
INSERT INTO `pro_kabkot` VALUES ('380', '22', '2201', 'Kab. Buleleng', 'Bali', null, null);
INSERT INTO `pro_kabkot` VALUES ('381', '22', '2206', 'Kab. Klungkung', 'Bali', null, null);
INSERT INTO `pro_kabkot` VALUES ('382', '23', '2361', 'Kota Bima', 'Nusa Tenggara Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('383', '23', '2360', 'Kota Mataram', 'Nusa Tenggara Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('384', '23', '2306', 'Kab. Bima', 'Nusa Tenggara Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('385', '23', '2307', 'Kab. Sumbawa Barat', 'Nusa Tenggara Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('386', '23', '2304', 'Kab. Sumbawa', 'Nusa Tenggara Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('387', '23', '2303', 'Kab. Lombok Timur', 'Nusa Tenggara Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('388', '23', '2302', 'Kab. Lombok Tengah', 'Nusa Tenggara Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('389', '23', '2301', 'Kab. Lombok Barat', 'Nusa Tenggara Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('390', '23', '2308', 'Kab. Lombok Utara', 'Nusa Tenggara Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('391', '23', '2305', 'Kab. Dompu', 'Nusa Tenggara Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('392', '24', '2460', 'Kota Kupang', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('393', '24', '2414', 'Kab. Lembata', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('394', '24', '2415', 'Kab. Rote Ndao', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('395', '24', '2416', 'Kab. Manggarai Barat', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('396', '24', '2418', 'Kab. Sumba Tengah', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('397', '24', '2420', 'Kab. Manggarai Timur', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('398', '24', '2413', 'Kab. Sumba Barat', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('399', '24', '2422', 'Kab. Malaka', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('400', '24', '2417', 'Kab. Nagekeo', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('401', '24', '2421', 'KAB. SABU RAIJUA', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('402', '24', '2406', 'Kab. Alor', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('403', '24', '2419', 'Kab. Sumba Barat Daya', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('404', '24', '2412', 'Kab. Sumba Timur', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('405', '24', '2403', 'Kab. Timor Tengah Selatan', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('406', '24', '2405', 'Kab. Belu', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('407', '24', '2401', 'Kab. Kupang', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('408', '24', '2407', 'Kab. Flores Timur', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('409', '24', '2408', 'Kab. Sikka', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('410', '24', '2409', 'Kab. Ende', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('411', '24', '2410', 'Kab. Ngada', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('412', '24', '2411', 'Kab. Manggarai', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('413', '24', '2404', 'Kab. Timor Tengah Utara', 'Nusa Tenggara Timur', null, null);
INSERT INTO `pro_kabkot` VALUES ('414', '25', '2526', 'KAB. WAROPEN', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('415', '25', '2520', 'Kab. Keerom', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('416', '25', '2531', 'KAB. YALIMO', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('417', '25', '2527', 'KAB. SUPIORI', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('418', '25', '2528', 'KAB. MAMBERAMO RAYA', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('419', '25', '2529', 'KAB. MAMBERAMO TENGAH', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('420', '25', '2530', 'KAB. NDUGA', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('421', '25', '2532', 'KAB. PUNCAK', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('422', '25', '2533', 'KAB. DOGIYAI', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('423', '25', '2534', 'KAB. LANNY JAYA', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('424', '25', '2535', 'KAB. DEIYAI', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('425', '25', '2560', 'Kota Jayapura', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('426', '25', '2519', 'KAB. SARMI', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('427', '25', '2507', 'Kab. Marauke', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('428', '25', '2536', 'KAB. INTAN JAYA', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('429', '25', '2510', 'KAB. PANIAI', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('430', '25', '2501', 'Kab. Jaya Pura', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('431', '25', '2502', 'Kab. Biak Numfor', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('432', '25', '2503', 'KAB. KEPULAUAN YAPEN', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('433', '25', '2507', 'KAB. MERAUKE', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('434', '25', '2508', 'Kab. Jayawijaya', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('435', '25', '2509', 'Kab. Nabire', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('436', '25', '2518', 'KAB. TOLIKARA', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('437', '25', '2511', 'KAB. PUNCAK JAYA', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('438', '25', '2512', 'Kab. Mimika', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('439', '25', '2513', 'KAB. BOVEN DIGUL', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('440', '25', '2514', 'KAB. MAPPI', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('441', '25', '2515', 'KAB. ASMAT', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('442', '25', '2516', 'KAB. YAHUKIMO', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('443', '25', '2517', 'KAB. PEGUNUNGAN BINTANG', 'Papua', null, null);
INSERT INTO `pro_kabkot` VALUES ('444', '26', '2608', 'Kab. Seluma', 'Bengkulu', null, null);
INSERT INTO `pro_kabkot` VALUES ('445', '26', '2609', 'Kab. Bengkulu Tengah', 'Bengkulu', null, null);
INSERT INTO `pro_kabkot` VALUES ('446', '26', '2607', 'Kab. Kaur', 'Bengkulu', null, null);
INSERT INTO `pro_kabkot` VALUES ('447', '26', '2606', 'Kab. Lebong', 'Bengkulu', null, null);
INSERT INTO `pro_kabkot` VALUES ('448', '26', '2604', 'Kab. Muko-Muko', 'Bengkulu', null, null);
INSERT INTO `pro_kabkot` VALUES ('449', '26', '2603', 'Kab. Bengkulu Selatan', 'Bengkulu', null, null);
INSERT INTO `pro_kabkot` VALUES ('450', '26', '2602', 'Kab. Rejang Lebong', 'Bengkulu', null, null);
INSERT INTO `pro_kabkot` VALUES ('451', '26', '2601', 'Kab. Bengkulu Utara', 'Bengkulu', null, null);
INSERT INTO `pro_kabkot` VALUES ('452', '26', '2605', 'Kab. Kepahiang', 'Bengkulu', null, null);
INSERT INTO `pro_kabkot` VALUES ('453', '26', '2660', 'Kota Bengkulu', 'Bengkulu', null, null);
INSERT INTO `pro_kabkot` VALUES ('454', '27', '2706', 'Kab. Halmahera Timur', 'Maluku Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('455', '27', '2761', 'Kota Tidore Kepulauan', 'Maluku Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('456', '27', '2760', 'Kota Ternate', 'Maluku Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('457', '27', '2709', 'Kab. Pulau Taliabu', 'Maluku Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('458', '27', '2707', 'Kab. Kepulauan Sula', 'Maluku Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('459', '27', '2705', 'Kab. Halmahera Selatan', 'Maluku Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('460', '27', '2704', 'Kab. Halmahera Utara', 'Maluku Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('461', '27', '2703', 'Kab. Halmahera Barat', 'Maluku Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('462', '27', '2702', 'Kab. Halmahera Tengah', 'Maluku Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('463', '27', '2708', 'Kab. Morotai', 'Maluku Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('464', '28', '2861', 'Kota Tangerang', 'Banten', null, null);
INSERT INTO `pro_kabkot` VALUES ('465', '28', '2801', 'Kab. Pandeglang', 'Banten', null, null);
INSERT INTO `pro_kabkot` VALUES ('466', '28', '2863', 'Kota Tangerang Selatan', 'Banten', null, null);
INSERT INTO `pro_kabkot` VALUES ('467', '28', '2862', 'Kota Serang', 'Banten', null, null);
INSERT INTO `pro_kabkot` VALUES ('468', '28', '2860', 'Kota Cilegon', 'Banten', null, null);
INSERT INTO `pro_kabkot` VALUES ('469', '28', '2804', 'Kab. Serang', 'Banten', null, null);
INSERT INTO `pro_kabkot` VALUES ('470', '28', '2802', 'Kab. Lebak', 'Banten', null, null);
INSERT INTO `pro_kabkot` VALUES ('471', '28', '2803', 'Kab. Tangerang', 'Banten', null, null);
INSERT INTO `pro_kabkot` VALUES ('472', '29', '2901', 'Kab. Bangka', 'Bangka Belitung', null, null);
INSERT INTO `pro_kabkot` VALUES ('473', '29', '2902', 'Kab. Belitung', 'Bangka Belitung', null, null);
INSERT INTO `pro_kabkot` VALUES ('474', '29', '2903', 'Kab. Bangka Tengah', 'Bangka Belitung', null, null);
INSERT INTO `pro_kabkot` VALUES ('475', '29', '2904', 'Kab. Bangka Barat', 'Bangka Belitung', null, null);
INSERT INTO `pro_kabkot` VALUES ('476', '29', '2905', 'Kab. Bangka Selatan', 'Bangka Belitung', null, null);
INSERT INTO `pro_kabkot` VALUES ('477', '29', '2906', 'Kab. Belitung Timur', 'Bangka Belitung', null, null);
INSERT INTO `pro_kabkot` VALUES ('478', '29', '2960', 'Kota Pangkal Pinang', 'Bangka Belitung', null, null);
INSERT INTO `pro_kabkot` VALUES ('479', '30', '3004', 'Kab. Bonebolango', 'Gorontalo', null, null);
INSERT INTO `pro_kabkot` VALUES ('480', '30', '3005', 'Kab. Gorontalo Utara', 'Gorontalo', null, null);
INSERT INTO `pro_kabkot` VALUES ('481', '30', '3002', 'Kab. Gorontalo', 'Gorontalo', null, null);
INSERT INTO `pro_kabkot` VALUES ('482', '30', '3001', 'Kab. Boalemo', 'Gorontalo', null, null);
INSERT INTO `pro_kabkot` VALUES ('483', '30', '3060', 'Kota Gorontalo', 'Gorontalo', null, null);
INSERT INTO `pro_kabkot` VALUES ('484', '30', '3003', 'Kab. Pohuwato', 'Gorontalo', null, null);
INSERT INTO `pro_kabkot` VALUES ('485', '31', '3105', 'KAB. KEPULAUAN ANAMBAS', 'Kepulauan Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('486', '31', '3160', 'Kota Batam', 'Kepulauan Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('487', '31', '3104', 'Kab. Lingga', 'Kepulauan Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('488', '31', '3103', 'Kab. Natuna', 'Kepulauan Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('489', '31', '3102', 'Kab. Karimun', 'Kepulauan Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('490', '31', '3101', 'KAB. BINTAN', 'Kepulauan Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('491', '31', '3161', 'Kota Tanjung Pinang', 'Kepulauan Riau', null, null);
INSERT INTO `pro_kabkot` VALUES ('492', '32', '3207', 'KAB. TELUK BINTUNI', 'Papua Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('493', '32', '3260', 'Kota Sorong', 'Papua Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('494', '32', '3212', 'KAB. MANOKWARI SELATAN', 'Papua Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('495', '32', '3211', 'KAB. PEGUNUNGAN ARFAK', 'Papua Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('496', '32', '3210', 'KAB. MAYBRAT', 'Papua Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('497', '32', '3208', 'KAB. TELUK WONDAMA', 'Papua Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('498', '32', '3205', 'KAB. SORONG SELATAN', 'Papua Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('499', '32', '3204', 'KAB. KAIMANA', 'Papua Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('500', '32', '3203', 'Kab. Manokwari', 'Papua Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('501', '32', '3202', 'Kab. Sorong', 'Papua Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('502', '32', '3201', 'Kab. Fak-Fak', 'Papua Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('503', '32', '3209', 'KAB. TAMBRAUW', 'Papua Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('504', '32', '3206', 'Kab. Raja Ampat', 'Papua Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('505', '33', '3303', 'Kab. Polewali', 'Sulawesi Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('506', '33', '3306', 'Kab. Mamuju Tengah', 'Sulawesi Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('507', '33', '3304', 'Kab. Mamasa', 'Sulawesi Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('508', '33', '3302', 'Kab. Mamuju Utara', 'Sulawesi Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('509', '33', '3301', 'Kab. Mamuju', 'Sulawesi Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('510', '33', '3305', 'Kab. Majene', 'Sulawesi Barat', null, null);
INSERT INTO `pro_kabkot` VALUES ('511', '34', '3401', 'Kab. Bulungan', 'Kalimantan Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('512', '34', '3402', 'KAB. MALINAU', 'Kalimantan Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('513', '34', '3403', 'KAB. NUNUKAN', 'Kalimantan Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('514', '34', '3404', 'KAB. TANA TIDUNG', 'Kalimantan Utara', null, null);
INSERT INTO `pro_kabkot` VALUES ('515', '34', '3460', 'Kota Tarakan', 'Kalimantan Utara', null, null);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', 'administrator', 'web', '2019-05-21 07:07:17', '2019-05-21 07:07:17');
INSERT INTO `roles` VALUES ('2', 'pengguna', 'web', '2019-05-21 07:11:09', '2019-05-21 07:11:09');
INSERT INTO `roles` VALUES ('3', 'superuser', 'web', '2019-05-21 07:51:51', '2019-05-21 07:51:51');

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for sasaran
-- ----------------------------
DROP TABLE IF EXISTS `sasaran`;
CREATE TABLE `sasaran` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `listbapem_id` int(11) NOT NULL,
  `tipe_bapem` int(11) NOT NULL,
  `penerima_bapem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area_bapem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sasaran` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satuan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rupiah_bapem` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sasaran
-- ----------------------------
INSERT INTO `sasaran` VALUES ('1', '0', '1', 'Universitas Pendidikan Indonesia', 'Kab. Ciamis', '596', 'orang', '2070345000', '2019-05-21 08:25:07', '2019-05-21 08:25:11');
INSERT INTO `sasaran` VALUES ('2', '0', '1', 'Universitas Pendidikan Indonesia', 'Kab. Cirebon', '273', 'orang', '97343000', null, null);
INSERT INTO `sasaran` VALUES ('3', '0', '1', 'Universitas Pendidikan Indonesia', 'Kab. Kuningan', '744', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('4', '0', '1', 'Universitas Pendidikan Indonesia', 'Kab. Majalengka', '541', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('5', '0', '1', 'Universitas Pendidikan Indonesia', 'Kab. Pangandaran', '211', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('6', '0', '1', 'Universitas Pendidikan Indonesia', 'Kab. Subang', '690', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('7', '0', '1', 'Universitas Pendidikan Indonesia', 'Kab. Sumedang', '348', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('8', '0', '1', 'Universitas Pendidikan Indonesia', 'Kab. Tasikmalaya', '849', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('9', '0', '1', 'Universitas Pendidikan Indonesia', 'Kota Banjar', '80', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('10', '0', '1', 'Universitas Pendidikan Indonesia', 'Kota Tasikmalaya', '81', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('11', '0', '1', 'Universitas Pendidikan Indonesia', 'Provinsi Jawa Barat', '1359', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('12', '0', '1', 'BPSDMD', 'Kab. Bandung', '871', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('13', '0', '1', 'BPSDMD', 'Kab. Bandung Barat', '420', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('14', '0', '1', 'BPSDMD', 'Kab. Bekasi', '921', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('15', '0', '1', 'BPSDMD', 'Kab. Garut', '949', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('16', '0', '1', 'BPSDMD', 'Kab. Karawang', '267', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('17', '0', '1', 'BPSDMD', 'Kab. Purwakarta', '277', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('18', '0', '1', 'BPSDMD', 'Kota Bandung', '543', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('19', '0', '1', 'BPSDMD', 'Kota Bekasi', '756', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('20', '0', '1', 'BPSDMD', 'Kota Cimahi', '72', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('21', '0', '1', 'Universitas Ibnu Khaldun', 'Kab. Bogor', '1498', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('22', '0', '1', 'Universitas Ibnu Khaldun', 'Kab. Cianjur', '1323', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('23', '0', '1', 'Universitas Ibnu Khaldun', 'Kab. Sukabumi', '899', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('24', '0', '1', 'Universitas Ibnu Khaldun', 'Kota Bogor', '203', 'orang', '0', null, null);
INSERT INTO `sasaran` VALUES ('25', '0', '1', 'Universitas Ibnu Khaldun', 'Kab. Tasikmalaya', '490', 'orang', '46000000', '2019-05-24 03:26:54', '2019-05-24 03:26:54');
INSERT INTO `sasaran` VALUES ('26', '0', '2', 'Universitas Ibnu Khaldun', 'Kab. Bandung', '300', 'orang', '25000000', '2019-05-24 03:30:49', '2019-05-24 03:30:49');
INSERT INTO `sasaran` VALUES ('27', '2', '1', 'arifrusmandani', 'Kab. Sleman', '400', 'orang', '54000000', '2019-05-28 01:37:27', '2019-06-13 06:42:21');
INSERT INTO `sasaran` VALUES ('28', '0', '3', 'PPPPTK TK dan PLB', 'Kab. Bandung', '230', 'orang', '4545000', '2019-06-13 01:32:31', '2019-06-13 01:32:31');
INSERT INTO `sasaran` VALUES ('31', '0', '3', 'PPPPTK TK dan PLB', 'Kab. Bandung', '260', 'orang', '4545000', '2019-06-13 06:47:08', '2019-06-13 06:47:08');
INSERT INTO `sasaran` VALUES ('32', '3', '1', 'arifrusmandani', 'Kab. Sleman', '666', 'orang', '56000000', '2019-06-13 06:48:42', '2019-06-25 02:08:14');
INSERT INTO `sasaran` VALUES ('33', '4', '1', 'arifrusmandani', 'Kab. Klaten', '100', 'orang', '29000000', '2019-06-17 01:33:08', '2019-06-17 01:33:08');
INSERT INTO `sasaran` VALUES ('34', '7', '2', 'arifrusmandani', 'Kab. Tasikmalaya', '230', 'orang', '20000000', '2019-06-25 07:07:05', '2019-06-25 07:07:05');
INSERT INTO `sasaran` VALUES ('40', '9', '1', 'Universitas Indonesia', 'Kab. Tasikmalaya', '200', 'orang', '12000000', '2019-07-25 03:59:57', '2019-07-25 03:59:57');
INSERT INTO `sasaran` VALUES ('41', '9', '2', 'Universitas Indonesia', 'Kab. Bandung', '100', 'orang', '8000000', '2019-07-25 04:00:37', '2019-07-25 04:00:37');

-- ----------------------------
-- Table structure for std_dokumen
-- ----------------------------
DROP TABLE IF EXISTS `std_dokumen`;
CREATE TABLE `std_dokumen` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tipe` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_dokumen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of std_dokumen
-- ----------------------------
INSERT INTO `std_dokumen` VALUES ('1', 'Pemberian Bapem', 'MoU', '0101', '2019-05-21 08:17:04', '2019-05-21 08:17:08');
INSERT INTO `std_dokumen` VALUES ('2', 'Pemberian Bapem', 'Perjanjian Kerjasama', '0102', null, null);
INSERT INTO `std_dokumen` VALUES ('3', 'Pemberian Bapem', 'SK Penetapan Pengelola Banpem', '0103', null, null);
INSERT INTO `std_dokumen` VALUES ('4', 'Pemberian Bapem', 'Surat Pengajuan', '0104', null, null);
INSERT INTO `std_dokumen` VALUES ('5', 'Pemberian Bapem', 'SP2D', '0105', null, null);
INSERT INTO `std_dokumen` VALUES ('6', 'Pemberian Bapem', 'SPM', '0106', null, null);
INSERT INTO `std_dokumen` VALUES ('7', 'Pemberian Bapem', 'Proposal', '0107', null, null);
INSERT INTO `std_dokumen` VALUES ('8', 'Laporan Bapem', 'Daftar Hadir Peserta', '0201', null, null);
INSERT INTO `std_dokumen` VALUES ('9', 'Laporan Bapem', 'Daftar Hadir Panita', '0202', null, null);
INSERT INTO `std_dokumen` VALUES ('10', 'Laporan Bapem', 'Daftar Hadir Penceramah', '0203', null, null);
INSERT INTO `std_dokumen` VALUES ('11', 'Laporan Bapem', 'Daftar Hadir Pengajar', '0204', null, null);
INSERT INTO `std_dokumen` VALUES ('12', 'Laporan Bapem', 'Surat Pertanggungjawaban Belanja', '0205', null, null);
INSERT INTO `std_dokumen` VALUES ('13', 'Laporan Bapem', 'Kwitansi Belanja Bahan', '0206', null, null);
INSERT INTO `std_dokumen` VALUES ('14', 'Laporan Bapem', 'Kwitansi Honor Output Kegiatan', '0207', null, null);
INSERT INTO `std_dokumen` VALUES ('15', 'Laporan Bapem', 'Kwitansi Belanja Profesi', '0208', null, null);
INSERT INTO `std_dokumen` VALUES ('16', 'Laporan Bapem', 'Kwitansi Belanja Perjalanan Dinas', '0209', null, null);
INSERT INTO `std_dokumen` VALUES ('17', 'Laporan Bapem', 'Surat Tugas Peserta', '0210', null, null);
INSERT INTO `std_dokumen` VALUES ('18', 'Laporan Bapem', 'Surat Tugas Panitia', '0211', null, null);
INSERT INTO `std_dokumen` VALUES ('19', 'Laporan Bapem', 'Surat Tugas Penceramah', '0212', null, null);
INSERT INTO `std_dokumen` VALUES ('20', 'Laporan Bapem', 'Surat Tugas Pengajar', '0213', null, null);
INSERT INTO `std_dokumen` VALUES ('21', 'Laporan Bapem', 'SK Kegiatan', '0214', null, null);
INSERT INTO `std_dokumen` VALUES ('22', 'Laporan Bapem', 'Dokumentasi', '0215', '2019-05-24 04:01:32', '2019-05-24 04:01:32');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
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
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'arifrusmandani', 'arifrusmandani@gmail.com', null, '$2y$10$7oms7S3d97LdTgOpa4F7T.7a7cB/mUaOwW7IDsju4EJTDp92eMWOu', null, 'Universitas Pendidikan Indonesia', 'Jl. Setiabudi 2', 'Jawa Barat', 'Kota Cimahi', 'Setiabudi2', '12.1029.232.12', 'avatar-1.jpg', '2019-05-16 01:45:17', '2019-06-26 07:14:23');
INSERT INTO `users` VALUES ('2', 'PPPPTK TK dan PLB\r\n', 'p4tktkplb@kemdikbud.go.id\r\n', null, '', null, '', '', '', '', '', '', '', null, null);
INSERT INTO `users` VALUES ('3', 'Universitas Pendidikan Indonesia\r\n', 'admin@upi.edu\r\n', null, '', null, '', '', '', '', '', '', '', null, null);
INSERT INTO `users` VALUES ('4', 'BPSDMD Jawa Barat\r\n', 'email1@gmail.com', null, '', null, '', '', '', '', '', '', '', null, null);
INSERT INTO `users` VALUES ('5', 'Universitas Ibnu Khaldun\r\n', 'email2@gmail.com', null, '', null, '', '', '', '', '', '', '', null, null);
INSERT INTO `users` VALUES ('6', 'Universitas Indonesia', 'email4@gmail.com', null, '$2y$10$QJjE8nk7TVQQky8DWM5mGOKz9JxhU9pWl4dQ7z0v3n5f81mdDvVVi', null, 'Universitas Indonesia', 'Sukadadi', 'Jawa Barat', 'Kab. Bandung', 'Cimahi', '123123112', 'avatar-6.png', '2019-05-24 06:20:49', '2019-06-28 07:26:49');
INSERT INTO `users` VALUES ('7', 'Faiza Zulfia', 'faiza@gmail.com', null, '$2y$10$NQXC57GoQLc/DNCTIIbofef43wnDqGLaf00vs6HJKWQ8UPupup0sS', null, 'Universitas Indonesia', 'Melongo', 'Jawa Barat', 'Kab. Bandung', 'Kec. Cimahi', '123443211234', 'avatar-1.jpg', '2019-08-01 02:39:16', '2019-08-01 03:06:21');
INSERT INTO `users` VALUES ('8', 'Bambang', 'banbang@gmail.com', null, '$2y$10$Q0YqiY7/tIlCso5ik.200Or6v.UuWRdscXrTvvLW5.LQjzb1rWe3.', null, 'Universitas Indonesia', 'bandung', 'Jawa Barat', 'Kab. Bekasi', 'Kec. Uhio', '909080802020', '7418802c-b45c-48dc-8e2d-32dea7284e35.jpg', '2019-08-01 02:42:51', '2019-08-01 02:42:51');
INSERT INTO `users` VALUES ('9', 'Angelia Permata', 'angel@gmail.com', null, '$2y$10$or44qXAs9iaGg0Ha2zDGe.Y2k2aH61jdgXLqhKVTO8thg2R0WhUyq', null, 'Uiversitas Padjajaran', 'Gajahmada', 'DI Yogyakarta', 'Kab. Sleman', 'Kec. Bumiayu', '233438934823', 'avatar-.jpg', '2019-08-01 03:48:31', '2019-08-01 03:48:31');
INSERT INTO `users` VALUES ('10', 'Yukimura', 'yuki@gmail.com', null, '$2y$10$n1d0TIE4qT1QXJ0UMFIbz.7KowMwVD99PIj0ZXemP1WxcCoyLiJmC', null, 'Universitas Indonesia', 'Melongo', 'Banten', 'Kab. Pandeglang', 'Kec. Cimahi', '3489894589', 'avatar-1.jpg', '2019-08-01 03:52:35', '2019-08-01 03:52:35');
INSERT INTO `users` VALUES ('11', 'Permata Anggraini', 'permata@gmail.com', null, '$2y$10$yyO4XHPI9yK3OqD5XJ8lDu1CFrvg49586uiCMeXfTgU8PmA7kU6oC', null, 'Universitas Indonesia', 'Klaten', 'Jawa Timur', 'Kab. Madiun', 'Kec. Cimahi', '12312434313', 'avatar-permata@gmail.com.jpg', '2019-08-01 04:20:27', '2019-08-01 04:20:27');
