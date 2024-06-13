/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : 127.0.0.1:3306
 Source Schema         : hisabuna

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 27/02/2024 20:04:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for coa
-- ----------------------------
DROP TABLE IF EXISTS `coa`;
CREATE TABLE `coa`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `nomor_akun` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_akun` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `saldo_normal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `laporan_arus_kas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of coa
-- ----------------------------

-- ----------------------------
-- Table structure for companies
-- ----------------------------
DROP TABLE IF EXISTS `companies`;
CREATE TABLE `companies`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` enum('Yes','No') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of companies
-- ----------------------------
INSERT INTO `companies` VALUES ('728410ba-d389-11ee-92b2-00ffa95a19d5', 'GSA', 'WAHANA ARTHA xx', 'Yes', '2024-02-25 09:56:18', '2024-02-25 03:19:21');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for jurnal_details
-- ----------------------------
DROP TABLE IF EXISTS `jurnal_details`;
CREATE TABLE `jurnal_details`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurnal_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurnal_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurnal_akun` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `debit` int NOT NULL DEFAULT 0,
  `credit` int NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jurnal_details
-- ----------------------------
INSERT INTO `jurnal_details` VALUES ('06ba9b98-d56d-11ee-ae73-00ffa95a19d5', '06b9687c-d56d-11ee-a9e0-00ffa95a19d5', 'PV-1', '6111-10', 1750000, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('06ba9d50-d56d-11ee-8e48-00ffa95a19d5', '06b9687c-d56d-11ee-a9e0-00ffa95a19d5', 'PV-1', '1112-01', 0, 1750000, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('545caf9e-d56d-11ee-80d3-00ffa95a19d5', '5459fa24-d56d-11ee-9fc1-00ffa95a19d5', 'PV-2', '6111-07', 2900, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('545cb16a-d56d-11ee-afae-00ffa95a19d5', '5459fa24-d56d-11ee-9fc1-00ffa95a19d5', 'PV-2', '1112-01', 0, 2900, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('895c5fe6-d56d-11ee-a604-00ffa95a19d5', '895bfa06-d56d-11ee-a96f-00ffa95a19d5', 'PV-3', '6111-11', 800000, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('895c6180-d56d-11ee-ae07-00ffa95a19d5', '895bfa06-d56d-11ee-a96f-00ffa95a19d5', 'PV-3', '1112-01', 0, 800000, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('a05b4874-d56d-11ee-ac3e-00ffa95a19d5', 'a05af07c-d56d-11ee-98b3-00ffa95a19d5', 'PV-4', '6111-16', 1500000, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('a05b4a18-d56d-11ee-aa0c-00ffa95a19d5', 'a05af07c-d56d-11ee-98b3-00ffa95a19d5', 'PV-4', '1112-01', 0, 1500000, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('c0b3793e-d56d-11ee-aa67-00ffa95a19d5', 'c0b306e8-d56d-11ee-b22d-00ffa95a19d5', 'PV-5', '6111-11', 2900, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('c0b37b14-d56d-11ee-8440-00ffa95a19d5', 'c0b306e8-d56d-11ee-b22d-00ffa95a19d5', 'PV-5', '1112-01', 0, 2900, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('e0e6fd02-d56d-11ee-a4b5-00ffa95a19d5', 'e0e58c4c-d56d-11ee-bfe3-00ffa95a19d5', 'PV-6', '6111-11', 800000, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('e0e7002c-d56d-11ee-a3b6-00ffa95a19d5', 'e0e58c4c-d56d-11ee-bfe3-00ffa95a19d5', 'PV-6', '1112-01', 0, 800000, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('b5a9dcc6-d56e-11ee-86ae-00ffa95a19d5', 'b5a943a6-d56e-11ee-90ca-00ffa95a19d5', 'PV-7', '6111-07', 2900, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('b5a9fb7a-d56e-11ee-a840-00ffa95a19d5', 'b5a943a6-d56e-11ee-90ca-00ffa95a19d5', 'PV-7', '1112-01', 0, 2900, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('cc00b508-d56e-11ee-94be-00ffa95a19d5', 'cc0036d2-d56e-11ee-a47c-00ffa95a19d5', 'PV-8', '6111-11', 800000, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('cc00b6ca-d56e-11ee-998b-00ffa95a19d5', 'cc0036d2-d56e-11ee-a47c-00ffa95a19d5', 'PV-8', '1112-01', 0, 800000, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('ec3f7976-d56e-11ee-b1d9-00ffa95a19d5', 'ec3eb7ca-d56e-11ee-b2e4-00ffa95a19d5', 'PV-9', '6111-07', 2900, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('ec3f7c5a-d56e-11ee-9a46-00ffa95a19d5', 'ec3eb7ca-d56e-11ee-b2e4-00ffa95a19d5', 'PV-9', '1112-01', 0, 2900, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('145038ce-d56f-11ee-a6b0-00ffa95a19d5', '144fa332-d56f-11ee-906d-00ffa95a19d5', 'PV-10', '6111-11', 0, 800000, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('14503ba8-d56f-11ee-a339-00ffa95a19d5', '144fa332-d56f-11ee-906d-00ffa95a19d5', 'PV-10', '1112-01', 800000, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('1dc3e48c-d56f-11ee-9bf5-00ffa95a19d5', '1dc38b22-d56f-11ee-ac7a-00ffa95a19d5', 'PV-11', '6111-11', 0, 800000, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('1dc3e680-d56f-11ee-9087-00ffa95a19d5', '1dc38b22-d56f-11ee-ac7a-00ffa95a19d5', 'PV-11', '1112-01', 800000, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('46df6882-d56f-11ee-9819-00ffa95a19d5', '46de6f86-d56f-11ee-bf73-00ffa95a19d5', 'PV-12', '6111-16', 0, 1500000, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('46df6af8-d56f-11ee-a40e-00ffa95a19d5', '46de6f86-d56f-11ee-bf73-00ffa95a19d5', 'PV-12', '1112-01', 1500000, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('65ea9008-d56f-11ee-851a-00ffa95a19d5', '65e9b8ae-d56f-11ee-a007-00ffa95a19d5', 'RV-1', '4111-03', 0, 1000000, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('65ea9292-d56f-11ee-8b75-00ffa95a19d5', '65e9b8ae-d56f-11ee-a007-00ffa95a19d5', 'RV-1', '1112-01', 1000000, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('7fd6ad44-d56f-11ee-b975-00ffa95a19d5', '7fd5e558-d56f-11ee-8089-00ffa95a19d5', 'RV-2', '4111-03', 0, 500000, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('7fd6afe2-d56f-11ee-9718-00ffa95a19d5', '7fd5e558-d56f-11ee-8089-00ffa95a19d5', 'RV-2', '1112-01', 500000, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('3224c6ac-d570-11ee-899b-00ffa95a19d5', '3222beb6-d570-11ee-84fc-00ffa95a19d5', 'RV-3', '4111-03', 0, 100000, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('3224c9d6-d570-11ee-bae2-00ffa95a19d5', '3222beb6-d570-11ee-84fc-00ffa95a19d5', 'RV-3', '1112-01', 100000, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('548bb7b4-d570-11ee-af24-00ffa95a19d5', '548b3f82-d570-11ee-9949-00ffa95a19d5', 'RV-4', '4111-03', 0, 100000, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('548bb9f8-d570-11ee-b3b4-00ffa95a19d5', '548b3f82-d570-11ee-9949-00ffa95a19d5', 'RV-4', '1112-01', 100000, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('59048078-d570-11ee-8b12-00ffa95a19d5', '59039b36-d570-11ee-9a47-00ffa95a19d5', 'RV-5', '4111-03', 0, 100000, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('590483de-d570-11ee-a0ee-00ffa95a19d5', '59039b36-d570-11ee-9a47-00ffa95a19d5', 'RV-5', '1112-01', 100000, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('80d7ab70-d570-11ee-a341-00ffa95a19d5', '80d6cb6a-d570-11ee-a3af-00ffa95a19d5', 'PV-13', '6111-07', 5000, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('80d7aec2-d570-11ee-8010-00ffa95a19d5', '80d6cb6a-d570-11ee-a3af-00ffa95a19d5', 'PV-13', '1112-01', 0, 5000, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('ad2ef494-d570-11ee-a22d-00ffa95a19d5', 'ad2e0a48-d570-11ee-bc64-00ffa95a19d5', 'RV-6', '4111-03', 0, 40060000, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('ad2ef764-d570-11ee-8a60-00ffa95a19d5', 'ad2e0a48-d570-11ee-bc64-00ffa95a19d5', 'RV-6', '1112-01', 40060000, 0, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('bc3de6b6-d570-11ee-970c-00ffa95a19d5', 'bc3d77ee-d570-11ee-b024-00ffa95a19d5', 'RV-7', '4111-03', 0, 500000, NULL, NULL);
INSERT INTO `jurnal_details` VALUES ('bc3debb6-d570-11ee-9c2b-00ffa95a19d5', 'bc3d77ee-d570-11ee-b024-00ffa95a19d5', 'RV-7', '1112-01', 500000, 0, NULL, NULL);

-- ----------------------------
-- Table structure for jurnal_headers
-- ----------------------------
DROP TABLE IF EXISTS `jurnal_headers`;
CREATE TABLE `jurnal_headers`  (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trans_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `jurnal_tgl` datetime NOT NULL,
  `voucher` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jurnal_headers
-- ----------------------------
INSERT INTO `jurnal_headers` VALUES ('06b9687c-d56d-11ee-a9e0-00ffa95a19d5', '1', '2024-02-27 12:37:53', 'PV', 'Desain Bulletin SJV', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('5459fa24-d56d-11ee-9fc1-00ffa95a19d5', '2', '2024-02-27 12:40:03', 'PV', 'Admin Bank Desain Bulletin SJV', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('895bfa06-d56d-11ee-a96f-00ffa95a19d5', '3', '2024-02-27 12:41:32', 'PV', 'Honor Peserta FGD', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('a05af07c-d56d-11ee-98b3-00ffa95a19d5', '4', '2024-02-27 12:42:11', 'PV', 'Honor Narsum FGD', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('c0b306e8-d56d-11ee-b22d-00ffa95a19d5', '5', '2024-02-27 12:43:05', 'PV', 'Admin Bank Honor Narsum FGD', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('e0e58c4c-d56d-11ee-bfe3-00ffa95a19d5', '6', '2024-02-27 12:43:59', 'PV', 'Honor Peserta FGD', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('b5a943a6-d56e-11ee-90ca-00ffa95a19d5', '7', '2024-02-27 12:49:56', 'PV', 'Admin Bank Honor Peserta FGD', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('cc0036d2-d56e-11ee-a47c-00ffa95a19d5', '8', '2024-02-27 12:50:34', 'PV', 'Honor Peserta FGD', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('ec3eb7ca-d56e-11ee-b2e4-00ffa95a19d5', '9', '2024-02-27 12:51:28', 'PV', 'Admin Bank Honor Peserta FGD', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('144fa332-d56f-11ee-906d-00ffa95a19d5', '10', '2024-02-27 12:52:35', 'PV', 'Retur Honor Peserta FGD', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('1dc38b22-d56f-11ee-ac7a-00ffa95a19d5', '11', '2024-02-27 12:52:51', 'PV', 'Retur Honor Peserta FGD', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('46de6f86-d56f-11ee-bf73-00ffa95a19d5', '12', '2024-02-27 12:54:00', 'PV', 'Retur Honor Narsum FGD', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('65e9b8ae-d56f-11ee-a007-00ffa95a19d5', '1', '2024-02-27 12:54:52', 'RV', 'Retur Honor Narsum FGD', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('7fd5e558-d56f-11ee-8089-00ffa95a19d5', '2', '2024-02-27 12:55:35', 'RV', 'Donasi Rico Wicaksono', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('3222beb6-d570-11ee-84fc-00ffa95a19d5', '3', '2024-02-27 13:00:34', 'RV', 'Donasi Irawan Suhud', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('548b3f82-d570-11ee-9949-00ffa95a19d5', '4', '2024-02-27 13:01:32', 'RV', 'Donasi Irawan Suhud', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('59039b36-d570-11ee-9a47-00ffa95a19d5', '5', '2024-02-27 13:01:40', 'RV', 'Donasi Irawan Suhud', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('80d6cb6a-d570-11ee-a3af-00ffa95a19d5', '13', '2024-02-27 13:02:46', 'PV', 'Admin Bank Bulanan', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('ad2e0a48-d570-11ee-bc64-00ffa95a19d5', '6', '2024-02-27 13:04:01', 'RV', ' Donasi', NULL, NULL);
INSERT INTO `jurnal_headers` VALUES ('bc3d77ee-d570-11ee-b024-00ffa95a19d5', '7', '2024-02-27 13:04:26', 'RV', ' Donasi', NULL, NULL);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_reset_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2024_02_05_055351_customer', 1);
INSERT INTO `migrations` VALUES (6, '2024_02_09_033108_create_coa_table', 1);
INSERT INTO `migrations` VALUES (7, '2024_02_24_165821_create_companies_table', 1);
INSERT INTO `migrations` VALUES (8, '2024_02_27_122855_create_jurnal_headers_table', 2);
INSERT INTO `migrations` VALUES (9, '2024_02_27_123036_create_jurnal_details_table', 2);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
