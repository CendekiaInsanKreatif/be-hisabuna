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

 Date: 13/02/2024 21:56:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for akuns
-- ----------------------------
DROP TABLE IF EXISTS `akuns`;
CREATE TABLE `akuns`  (
  `AkunNo` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `AkunNama` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaldoAwalDebit` int NULL DEFAULT NULL,
  `SaldoAwalKredit` int NULL DEFAULT NULL,
  `ArusKas` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Anggaran` tinyint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of akuns
-- ----------------------------
INSERT INTO `akuns` VALUES ('1111-01', 'Kas Kecil', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('1112-01', 'Bank Mandiri No. Rek. 1030007709617', 150726030, 0, '', 0);
INSERT INTO `akuns` VALUES ('1112-02', 'Bank Mandiri', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('1112-08', 'Deposito', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('3111-01', 'Modal', 0, 150726030, '', 0);
INSERT INTO `akuns` VALUES ('1151', 'Biaya Dibayar di Muka', 0, 0, 'Aktifivas Operasi', 0);
INSERT INTO `akuns` VALUES ('1151-01', 'Sewa Dibayar di Muka', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111', 'Biaya Umum & Administrasi', 0, 0, 'Aktifivas Operasi', 0);
INSERT INTO `akuns` VALUES ('6111-01', 'Beban Gaji', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-02', 'Beban Konsumsi', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-03', 'Beban Legal', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('1161', 'Uang Muka Karyawan', 0, 0, 'Aktifivas Operasi', 0);
INSERT INTO `akuns` VALUES ('1161-01', 'Uang Muka - Hikari', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('1211', 'Aset Tetap', 0, 0, 'Aktifivas Operasi', 0);
INSERT INTO `akuns` VALUES ('1211-01', 'Tanah', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('1211-02', 'Bangunan', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('1211-03', 'Peralatan', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('2111', 'Hutang Usaha', 0, 0, 'Aktifivas Operasi', 0);
INSERT INTO `akuns` VALUES ('2111-01', 'Hutang Usaha', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('4111-01', 'Penjualan', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('1162', 'Pinjaman Karyawan', 0, 0, 'Aktifivas Operasi', 0);
INSERT INTO `akuns` VALUES ('1162-01', 'Pinjaman Karyawan', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-04', 'Beban Transportasi', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-05', 'Beban Alat Tulis Kantor', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-06', 'Beban Listrik', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-99', 'Beban Lainnya', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('1121', 'Piutang Usaha', 0, 0, 'Aktifivas Operasi', 0);
INSERT INTO `akuns` VALUES ('1121-01', 'Piutang Usaha', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('4211', 'Pendapatan Luar Usaha', 0, 0, 'Aktifivas Operasi', 0);
INSERT INTO `akuns` VALUES ('4211-01', 'Pendapatan Jasa Giro', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6112', 'Beban Luar Usaha', 0, 0, 'Aktifivas Operasi', 0);
INSERT INTO `akuns` VALUES ('6112-01', 'Beban Pajak Jasa Giro', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-07', 'Beban Biaya Bank', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-08', 'Beban Sewa Kantor', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-09', 'Beban Persediaan', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('1131', 'Persediaan', 0, 0, 'Aktifivas Operasi', 0);
INSERT INTO `akuns` VALUES ('1131-01', 'Persediaan', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('5111', 'HPP', 0, 0, 'Aktifivas Operasi', 0);
INSERT INTO `akuns` VALUES ('5111-01', 'HPP', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('111', 'Kas dan Setara Kas', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('112', 'Piutang Usaha', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('113', 'Persediaan', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('115', 'Biaya Dibayar di Muka', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('114', 'Piutang Pendapatan', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('116', 'Piutang Karyawan', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('121', 'Aset Tetap', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('211', 'Hutang Usaha', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('216', 'Hutang Pajak', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('219', 'Hutang Lancar Lainnya', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('221', 'Hutang Bank', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('311', 'Modal', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('312', 'Saldo Laba', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('411', 'Penjualan', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('419', 'Pendapatan Usaha Lainnya', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('421', 'Pendapatan Luar Usaha', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('511', 'HPP', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('611', 'Biaya Umum & Administrasi', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('11', 'Aset Lancar', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('12', 'Aset Tidak Lancar', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('21', 'Hutang Lancar', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('22', 'Hutang Tidak Lancar', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('31', 'Ekuitas', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('41', 'Pendapatan Usaha', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('42', 'Pendapatan Luar Usaha', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('51', 'Harga Pokok Penjualan (HPP)', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('52', 'Biaya Proses & Pajak', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('61', 'Beban Usaha', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('62', 'Beban Luar Usaha', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('1', 'Aset', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('2', 'Liabilitas', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('3', 'Ekuitas', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('4', 'Pendapatan', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('5', 'Harga Pokok Penjualan', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6', 'Beban Umum dan Admin', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('1111', 'Kas', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('1112', 'Bank', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('4111', 'Penjualan', 0, 0, 'Aktifivas Operasi', 0);
INSERT INTO `akuns` VALUES ('3111', 'Modal Disetor', 0, 0, 'Aktivitas Pendanaan', 0);
INSERT INTO `akuns` VALUES ('3120', 'Saldo Laba Ditahan', 0, 0, 'Aktifivas Operasi', 0);
INSERT INTO `akuns` VALUES ('2211', 'Hutang Bank', 0, 0, 'Aktifivas Operasi', 0);
INSERT INTO `akuns` VALUES ('6111-10', 'Beban Promosi dan Iklan', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-11', 'Beban Workshop/Seminar/Training', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-12', 'Beban Website', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('4111-02', 'Donasi Restricted', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('4111-03', 'Donasi Un-Restricted', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-13', 'Beban Donasi', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-14', 'Beban Sewa Tempat Acara', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-15', 'Beban Zoom', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-16', 'Fee Profesional', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-17', 'Beban Publikasi', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-18', 'Beban Pengiriman', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-19', 'Beban Perlengkapan Kantor', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-20', 'Beban Meeting/Konferensi', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('6111-21', 'Beban Komunikasi', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('1161-02', 'Uang Muka -Usman', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('1151-02', 'Talangan Gaji Karyawan', 0, 0, '', 0);
INSERT INTO `akuns` VALUES ('1161-03', 'Uang Muka - Nabila', 0, 0, '', 0);

-- ----------------------------
-- Table structure for arus kas
-- ----------------------------
DROP TABLE IF EXISTS `arus kas`;
CREATE TABLE `arus kas`  (
  `ArusKas` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `AkunNama` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Mutasi` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Urutan` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of arus kas
-- ----------------------------

-- ----------------------------
-- Table structure for bukubesars
-- ----------------------------
DROP TABLE IF EXISTS `bukubesars`;
CREATE TABLE `bukubesars`  (
  `JurnalTgl` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `JurnalAkunNo` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NoJurnal` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `AkunNama` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `JurnalKet` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Debit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Kredit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NoUrut` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NoUrutData` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bukubesars
-- ----------------------------

-- ----------------------------
-- Table structure for cashopname_temps
-- ----------------------------
DROP TABLE IF EXISTS `cashopname_temps`;
CREATE TABLE `cashopname_temps`  (
  `ID` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NomorUrut` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Tanggal` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Tempat` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SumberDana` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Keterangan` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TTd1Nama` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TTd1Jabatan` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TTd2Nama` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TTd2Jabatan` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TTd3Nama` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TTd3Jabatan` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `100rb` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `50rb` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `20rb` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `10rb` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `5rb` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `2rb` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `1rb` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `500` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `200` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `100` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `50` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Total` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `PJDana` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DihitungOleh` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaksiCO` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cashopname_temps
-- ----------------------------

-- ----------------------------
-- Table structure for cashopnames
-- ----------------------------
DROP TABLE IF EXISTS `cashopnames`;
CREATE TABLE `cashopnames`  (
  `ID` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NomorUrut` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Tanggal` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Tempat` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SumberDana` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Keterangan` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TTd1Nama` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TTd1Jabatan` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TTd2Nama` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TTd2Jabatan` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TTd3Nama` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TTd3Jabatan` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `100rb` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `50rb` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `20rb` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `10rb` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `5rb` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `2rb` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `1rb` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `500` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `200` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `100` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `50` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Total` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `PJDana` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `DihitungOleh` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaksiCO` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cashopnames
-- ----------------------------

-- ----------------------------
-- Table structure for daftarjurnals
-- ----------------------------
DROP TABLE IF EXISTS `daftarjurnals`;
CREATE TABLE `daftarjurnals`  (
  `TransNo` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Date` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Keterangan` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SumOfDebit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SumOfCredit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `JV` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `PV` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `RV` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of daftarjurnals
-- ----------------------------

-- ----------------------------
-- Table structure for jurnal_detail_temp_quicks
-- ----------------------------
DROP TABLE IF EXISTS `jurnal_detail_temp_quicks`;
CREATE TABLE `jurnal_detail_temp_quicks`  (
  `ID` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Account Code` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Debit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Credit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ID2` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Acc2` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TransDesc` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Acc2Desc` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jurnal_detail_temp_quicks
-- ----------------------------

-- ----------------------------
-- Table structure for jurnal_detail_temp_quicks2
-- ----------------------------
DROP TABLE IF EXISTS `jurnal_detail_temp_quicks2`;
CREATE TABLE `jurnal_detail_temp_quicks2`  (
  `ID` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Account Code` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Debit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Credit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ID2` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Acc2` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TransDesc` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Acc2Desc` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jurnal_detail_temp_quicks2
-- ----------------------------

-- ----------------------------
-- Table structure for jurnal_detail_temps
-- ----------------------------
DROP TABLE IF EXISTS `jurnal_detail_temps`;
CREATE TABLE `jurnal_detail_temps`  (
  `ID` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Account Code` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Debit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Credit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ID2` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Acc2` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TransDesc` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Acc2Desc` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jurnal_detail_temps
-- ----------------------------

-- ----------------------------
-- Table structure for jurnal_details
-- ----------------------------
DROP TABLE IF EXISTS `jurnal_details`;
CREATE TABLE `jurnal_details`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jurnal_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `jurnal_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `jurnal_akun` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `debit` decimal(11, 2) NULL DEFAULT NULL,
  `credit` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jurnal_details
-- ----------------------------
INSERT INTO `jurnal_details` VALUES ('17a85b0e-ca80-11ee-afd6-00ffa95a19d5', '17a76f46-ca80-11ee-9907-00ffa95a19d5', 'PV-1', '6111-10', 1750000.00, '0');
INSERT INTO `jurnal_details` VALUES ('17a85cc6-ca80-11ee-8420-00ffa95a19d5', '17a76f46-ca80-11ee-9907-00ffa95a19d5', 'PV-1', '1112-01', 0.00, '2900');

-- ----------------------------
-- Table structure for jurnal_details2
-- ----------------------------
DROP TABLE IF EXISTS `jurnal_details2`;
CREATE TABLE `jurnal_details2`  (
  `ID` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Account Code` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Debit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Credit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Uraian` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jurnal_details2
-- ----------------------------

-- ----------------------------
-- Table structure for jurnal_header_temps
-- ----------------------------
DROP TABLE IF EXISTS `jurnal_header_temps`;
CREATE TABLE `jurnal_header_temps`  (
  `TransNo` smallint NULL DEFAULT NULL,
  `Date` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Voucher` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NoVoucher` tinyint NULL DEFAULT NULL,
  `Keterangan` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Page` tinyint NULL DEFAULT NULL,
  `Attachment` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ID` smallint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jurnal_header_temps
-- ----------------------------
INSERT INTO `jurnal_header_temps` VALUES (348, '2024-01-20 00:00:00', '', 0, '', 0, '', 443);

-- ----------------------------
-- Table structure for jurnal_headers
-- ----------------------------
DROP TABLE IF EXISTS `jurnal_headers`;
CREATE TABLE `jurnal_headers`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trans_no` int NULL DEFAULT NULL,
  `jurnal_tgl` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `voucher` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `keterangan` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `attachment` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `updated_at` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jurnal_headers
-- ----------------------------
INSERT INTO `jurnal_headers` VALUES ('17a76f46-ca80-11ee-9907-00ffa95a19d5', 1, '2024-02-13 14:56:39', 'PV', 'Desain Bulletin SJV', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for jurnal_template_details
-- ----------------------------
DROP TABLE IF EXISTS `jurnal_template_details`;
CREATE TABLE `jurnal_template_details`  (
  `ID` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Account Code` smallint NULL DEFAULT NULL,
  `Debit` mediumint NULL DEFAULT NULL,
  `Credit` mediumint NULL DEFAULT NULL,
  `Acc2` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TransDesc` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Acc2Desc` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jurnal_template_details
-- ----------------------------
INSERT INTO `jurnal_template_details` VALUES ('', 1112, 100000, 0, '1112-01', 'Donasi Irawan Suhud', 'Bank Mandiri No. Rek. 1030007709617');
INSERT INTO `jurnal_template_details` VALUES ('', 4111, 0, 100000, '4111-03', 'Donasi Irawan Suhud', 'Donasi Un-Restricted');
INSERT INTO `jurnal_template_details` VALUES ('1', 1112, 100000, 0, '1112-01', 'Donasi Irawan Suhud', 'Bank Mandiri No. Rek. 1030007709617');
INSERT INTO `jurnal_template_details` VALUES ('1', 4111, 0, 100000, '4111-03', 'Donasi Irawan Suhud', 'Donasi Un-Restricted');
INSERT INTO `jurnal_template_details` VALUES ('2', 6111, 0, 0, '6111-01', '', 'Beban Gaji');
INSERT INTO `jurnal_template_details` VALUES ('2', 1112, 0, 0, '1112-01', '', 'Bank Mandiri No. Rek. 1030007709617');
INSERT INTO `jurnal_template_details` VALUES ('3', 6111, 2900, 0, '6111-07', 'Admin Bank', 'Beban Biaya Bank');
INSERT INTO `jurnal_template_details` VALUES ('3', 1112, 0, 2900, '1112-01', 'Admin Bank', 'Bank Mandiri No. Rek. 1030007709617');
INSERT INTO `jurnal_template_details` VALUES ('4', 1112, 0, 0, '1112-01', 'Pendapatan Jasa Giro', 'Bank Mandiri No. Rek. 1030007709617');
INSERT INTO `jurnal_template_details` VALUES ('4', 4211, 0, 0, '4211-01', 'Pendapatan Jasa Giro', 'Pendapatan Jasa Giro');
INSERT INTO `jurnal_template_details` VALUES ('5', 6112, 0, 0, '6112-01', 'Pajak Jasa Giro', 'Beban Pajak Jasa Giro');
INSERT INTO `jurnal_template_details` VALUES ('5', 1112, 0, 0, '1112-01', 'Pajak Jasa Giro', 'Bank Mandiri No. Rek. 1030007709617');
INSERT INTO `jurnal_template_details` VALUES ('6', 6111, 0, 0, '6111-13', 'Biaya Donasi', 'Beban Donasi');
INSERT INTO `jurnal_template_details` VALUES ('6', 1112, 0, 0, '1112-01', 'Biaya Donasi', 'Bank Mandiri No. Rek. 1030007709617');
INSERT INTO `jurnal_template_details` VALUES ('7', 6111, 0, 0, '6111-16', '', 'Fee Profesional');
INSERT INTO `jurnal_template_details` VALUES ('7', 1112, 0, 0, '1112-01', '', 'Bank Mandiri No. Rek. 1030007709617');
INSERT INTO `jurnal_template_details` VALUES ('8', 6111, 0, 0, '6111-13', '', 'Beban Donasi');
INSERT INTO `jurnal_template_details` VALUES ('8', 1112, 0, 0, '1112-01', '', 'Bank Mandiri No. Rek. 1030007709617');
INSERT INTO `jurnal_template_details` VALUES ('9', 1161, 0, 0, '1161-03', '', 'Uang Muka - Nabila');
INSERT INTO `jurnal_template_details` VALUES ('9', 1112, 0, 0, '1112-01', '', 'Bank Mandiri No. Rek. 1030007709617');

-- ----------------------------
-- Table structure for jurnal_templates
-- ----------------------------
DROP TABLE IF EXISTS `jurnal_templates`;
CREATE TABLE `jurnal_templates`  (
  `ID` tinyint NULL DEFAULT NULL,
  `NamaTemplate` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jurnal_templates
-- ----------------------------
INSERT INTO `jurnal_templates` VALUES (1, 'Donasi Irawan Suhud');
INSERT INTO `jurnal_templates` VALUES (2, 'Gaji');
INSERT INTO `jurnal_templates` VALUES (3, 'Admin Bank');
INSERT INTO `jurnal_templates` VALUES (4, 'Pendapatan Jasa Giro');
INSERT INTO `jurnal_templates` VALUES (5, 'Pajak Jasa Giro');
INSERT INTO `jurnal_templates` VALUES (6, 'Biaya Donasi');
INSERT INTO `jurnal_templates` VALUES (7, 'Fee Profesional');
INSERT INTO `jurnal_templates` VALUES (8, 'Reimburse');
INSERT INTO `jurnal_templates` VALUES (9, 'Uang Muka');

-- ----------------------------
-- Table structure for jurnals
-- ----------------------------
DROP TABLE IF EXISTS `jurnals`;
CREATE TABLE `jurnals`  (
  `ID2` mediumint NULL DEFAULT NULL,
  `JurnalTgl` varchar(19) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `JurnalNo` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `JurnalAkunNo` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `JurnalKet` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Debit` decimal(11, 2) NULL DEFAULT NULL,
  `Kredit` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ID` smallint NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jurnals
-- ----------------------------
INSERT INTO `jurnals` VALUES (18021, '2022-01-03 00:00:00', 'PV-1', '6111-10', 'Desain Bulletin SJV', 1750000.00, '0', 1);
INSERT INTO `jurnals` VALUES (18022, '2022-01-03 00:00:00', 'PV-1', '1112-01', 'Desain Bulletin SJV', 0.00, '1750000', 1);
INSERT INTO `jurnals` VALUES (18023, '2022-01-03 00:00:00', 'PV-2', '6111-07', ' Admin Bank Desain Bulletin SJV', 2900.00, '0', 2);
INSERT INTO `jurnals` VALUES (18024, '2022-01-03 00:00:00', 'PV-2', '1112-01', ' Admin Bank Desain Bulletin SJV', 0.00, '2900', 2);
INSERT INTO `jurnals` VALUES (18025, '2022-01-04 00:00:00', 'PV-3', '6111-11', 'Honor Peserta FGD', 800000.00, '0', 3);
INSERT INTO `jurnals` VALUES (18026, '2022-01-04 00:00:00', 'PV-3', '1112-01', 'Honor Peserta FGD', 0.00, '800000', 3);
INSERT INTO `jurnals` VALUES (18027, '2022-01-04 00:00:00', 'PV-4', '6111-16', 'Honor Narsum FGD', 1500000.00, '0', 4);
INSERT INTO `jurnals` VALUES (18028, '2022-01-04 00:00:00', 'PV-4', '1112-01', 'Honor Narsum FGD', 0.00, '1500000', 4);
INSERT INTO `jurnals` VALUES (18029, '2022-01-04 00:00:00', 'PV-5', '6111-11', 'Admin Bank Honor Narsum FGD', 2900.00, '0', 5);
INSERT INTO `jurnals` VALUES (18030, '2022-01-04 00:00:00', 'PV-5', '1112-01', 'Admin Bank Honor Narsum FGD', 0.00, '2900', 5);
INSERT INTO `jurnals` VALUES (18031, '2022-01-04 00:00:00', 'PV-6', '6111-11', 'Honor Peserta FGD', 800000.00, '0', 6);
INSERT INTO `jurnals` VALUES (18032, '2022-01-04 00:00:00', 'PV-6', '1112-01', 'Honor Peserta FGD', 0.00, '800000', 6);
INSERT INTO `jurnals` VALUES (18033, '2022-01-04 00:00:00', 'PV-7', '6111-07', 'Admin Bank Honor Peserta FGD', 2900.00, '0', 7);
INSERT INTO `jurnals` VALUES (18034, '2022-01-04 00:00:00', 'PV-7', '1112-01', 'Admin Bank Honor Peserta FGD', 0.00, '2900', 7);
INSERT INTO `jurnals` VALUES (18035, '2022-01-04 00:00:00', 'PV-8', '6111-11', 'Honor Peserta FGD', 800000.00, '0', 8);
INSERT INTO `jurnals` VALUES (18036, '2022-01-04 00:00:00', 'PV-8', '1112-01', 'Honor Peserta FGD', 0.00, '800000', 8);
INSERT INTO `jurnals` VALUES (18037, '2022-01-04 00:00:00', 'PV-9', '6111-07', 'Admin Bank Honor Peserta FGD', 2900.00, '0', 9);
INSERT INTO `jurnals` VALUES (18038, '2022-01-04 00:00:00', 'PV-9', '1112-01', 'Admin Bank Honor Peserta FGD', 0.00, '2900', 9);
INSERT INTO `jurnals` VALUES (18039, '2022-01-05 00:00:00', 'PV-10', '1112-01', 'Retur Honor Peserta FGD', 800000.00, '', 10);
INSERT INTO `jurnals` VALUES (18040, '2022-01-05 00:00:00', 'PV-10', '6111-11', 'Retur Honor Peserta FGD', 0.00, '800000', 10);
INSERT INTO `jurnals` VALUES (18041, '2022-01-05 00:00:00', 'PV-11', '1112-01', 'Retur Honor Peserta FGD', 800000.00, '', 11);
INSERT INTO `jurnals` VALUES (18042, '2022-01-05 00:00:00', 'PV-11', '6111-11', 'Retur Honor Peserta FGD', 0.00, '800000', 11);
INSERT INTO `jurnals` VALUES (18043, '2022-01-05 00:00:00', 'PV-12', '1112-01', 'Retur Honor Narsum FGD', 1500000.00, '0', 12);
INSERT INTO `jurnals` VALUES (18044, '2022-01-05 00:00:00', 'PV-12', '6111-16', 'Retur Honor Narsum FGD', 0.00, '1500000', 12);
INSERT INTO `jurnals` VALUES (18045, '2022-01-07 00:00:00', 'RV-1', '1112-01', 'Donasi  FLIPTECH', 1000000.00, '0', 13);
INSERT INTO `jurnals` VALUES (18046, '2022-01-07 00:00:00', 'RV-1', '4111-03', 'Donasi  FLIPTECH', 0.00, '1000000', 13);
INSERT INTO `jurnals` VALUES (18047, '2022-01-07 00:00:00', 'RV-2', '1112-01', 'Donasi Rico Wicaksono', 500000.00, '0', 14);
INSERT INTO `jurnals` VALUES (18048, '2022-01-07 00:00:00', 'RV-2', '4111-03', 'Donasi Rico Wicaksono', 0.00, '500000', 14);
INSERT INTO `jurnals` VALUES (18049, '2022-01-07 00:00:00', 'RV-3', '1112-01', 'Donasi Irawan Suhud', 100000.00, '0', 15);
INSERT INTO `jurnals` VALUES (18050, '2022-01-07 00:00:00', 'RV-3', '4111-03', 'Donasi Irawan Suhud', 0.00, '100000', 15);
INSERT INTO `jurnals` VALUES (18051, '2022-01-14 00:00:00', 'RV-4', '1112-01', 'Donasi Irawan Suhud', 100000.00, '0', 16);
INSERT INTO `jurnals` VALUES (18052, '2022-01-14 00:00:00', 'RV-4', '4111-03', 'Donasi Irawan Suhud', 0.00, '100000', 16);
INSERT INTO `jurnals` VALUES (18053, '2022-01-21 00:00:00', 'RV-5', '1112-01', 'Donasi Irawan Suhud', 100000.00, '0', 17);
INSERT INTO `jurnals` VALUES (18054, '2022-01-21 00:00:00', 'RV-5', '4111-03', 'Donasi Irawan Suhud', 0.00, '100000', 17);
INSERT INTO `jurnals` VALUES (18055, '2022-01-23 00:00:00', 'PV-13', '6111-07', 'Admin Bank Bulanan', 5000.00, '0', 18);
INSERT INTO `jurnals` VALUES (18056, '2022-01-23 00:00:00', 'PV-13', '1112-01', 'Admin Bank  Bulanan', 0.00, '5000', 18);
INSERT INTO `jurnals` VALUES (18057, '2022-01-24 00:00:00', 'RV-6', '1112-01', 'Donasi', 40060000.00, '0', 19);
INSERT INTO `jurnals` VALUES (18058, '2022-01-24 00:00:00', 'RV-6', '4111-03', 'Donasi', 0.00, '40060000', 19);
INSERT INTO `jurnals` VALUES (18059, '2022-01-28 00:00:00', 'RV-7', '1112-01', 'Donasi', 500000.00, '0', 20);
INSERT INTO `jurnals` VALUES (18060, '2022-01-28 00:00:00', 'RV-7', '4111-03', 'Donasi', 0.00, '500000', 20);
INSERT INTO `jurnals` VALUES (18061, '2022-01-31 00:00:00', 'PV-14', '6111-01', '', 1100000.00, '0', 21);
INSERT INTO `jurnals` VALUES (18062, '2022-01-31 00:00:00', 'PV-14', '1112-01', '', 0.00, '1100000', 21);
INSERT INTO `jurnals` VALUES (18063, '2022-01-31 00:00:00', 'PV-15', '6111-07', 'Admin Bank', 2900.00, '0', 22);
INSERT INTO `jurnals` VALUES (18064, '2022-01-31 00:00:00', 'PV-15', '1112-01', 'Admin Bank', 0.00, '2900', 22);
INSERT INTO `jurnals` VALUES (18065, '2022-01-31 00:00:00', 'PV-16', '6111-01', '', 9000000.00, '0', 23);
INSERT INTO `jurnals` VALUES (18066, '2022-01-31 00:00:00', 'PV-16', '1112-01', '', 0.00, '9000000', 23);
INSERT INTO `jurnals` VALUES (18067, '2022-01-31 00:00:00', 'PV-17', '6111-01', '', 7000000.00, '0', 24);
INSERT INTO `jurnals` VALUES (18068, '2022-01-31 00:00:00', 'PV-17', '1112-01', '', 0.00, '7000000', 24);
INSERT INTO `jurnals` VALUES (18069, '2022-01-31 00:00:00', 'PV-18', '6111-07', 'Admin Bank', 2900.00, '0', 25);
INSERT INTO `jurnals` VALUES (18070, '2022-01-31 00:00:00', 'PV-18', '1112-01', 'Admin Bank', 0.00, '2900', 25);
INSERT INTO `jurnals` VALUES (18071, '2022-01-31 00:00:00', 'PV-19', '6111-01', '', 5000000.00, '0', 26);
INSERT INTO `jurnals` VALUES (18072, '2022-01-31 00:00:00', 'PV-19', '1112-01', '', 0.00, '5000000', 26);
INSERT INTO `jurnals` VALUES (18073, '2022-01-31 00:00:00', 'PV-20', '6111-01', '', 2000000.00, '0', 27);
INSERT INTO `jurnals` VALUES (18074, '2022-01-31 00:00:00', 'PV-20', '1112-01', '', 0.00, '2000000', 27);
INSERT INTO `jurnals` VALUES (18075, '2022-01-31 00:00:00', 'PV-21', '6111-01', '', 2500000.00, '0', 28);
INSERT INTO `jurnals` VALUES (18076, '2022-01-31 00:00:00', 'PV-21', '1112-01', '', 0.00, '2500000', 28);
INSERT INTO `jurnals` VALUES (18077, '2022-01-31 00:00:00', 'PV-22', '6111-12', 'Jasa Pengelolaan Web', 30000000.00, '0', 29);
INSERT INTO `jurnals` VALUES (18078, '2022-01-31 00:00:00', 'PV-22', '1112-01', 'Jasa Pengelolaan Web', 0.00, '30000000', 29);
INSERT INTO `jurnals` VALUES (18079, '2022-01-31 00:00:00', 'PV-23', '6111-07', 'Admin Bank', 2900.00, '0', 30);
INSERT INTO `jurnals` VALUES (18080, '2022-01-31 00:00:00', 'PV-23', '1112-01', 'Admin Bank', 0.00, '2900', 30);
INSERT INTO `jurnals` VALUES (18081, '2022-01-31 00:00:00', 'PV-24', '6111-07', 'Admin Bank', 12500.00, '0', 31);
INSERT INTO `jurnals` VALUES (18082, '2022-01-31 00:00:00', 'PV-24', '1112-01', 'Admin Bank', 0.00, '12500', 31);
INSERT INTO `jurnals` VALUES (18083, '2022-01-31 00:00:00', 'RV-8', '1112-01', 'Pendapatan Jasa Giro', 80624.22, '0', 32);
INSERT INTO `jurnals` VALUES (18084, '2022-01-31 00:00:00', 'RV-8', '4211-01', 'Pendapatan Jasa Giro', 0.00, '80624.22', 32);
INSERT INTO `jurnals` VALUES (18085, '2022-01-31 00:00:00', 'PV-25', '6112-01', 'Pajak Jasa Giro', 16124.84, '0', 33);
INSERT INTO `jurnals` VALUES (18086, '2022-01-31 00:00:00', 'PV-25', '1112-01', 'Pajak Jasa Giro', 0.00, '16124.84', 33);
INSERT INTO `jurnals` VALUES (18087, '2022-02-18 00:00:00', 'RV-9', '1112-01', 'Donasi Irawan Suhud', 100000.00, '0', 34);
INSERT INTO `jurnals` VALUES (18088, '2022-02-18 00:00:00', 'RV-9', '4111-03', 'Donasi Irawan Suhud', 0.00, '100000', 34);
INSERT INTO `jurnals` VALUES (18089, '2022-02-18 00:00:00', 'PV-26', '6111-10', 'Desain Bulletin', 1400000.00, '0', 35);
INSERT INTO `jurnals` VALUES (18090, '2022-02-18 00:00:00', 'PV-26', '1112-01', 'Desain Bulletin', 0.00, '1400000', 35);
INSERT INTO `jurnals` VALUES (18091, '2022-02-18 00:00:00', 'PV-27', '6111-07', 'Admin Bank', 2900.00, '0', 36);
INSERT INTO `jurnals` VALUES (18092, '2022-02-18 00:00:00', 'PV-27', '1112-01', 'Admin Bank', 0.00, '2900', 36);
INSERT INTO `jurnals` VALUES (18093, '2022-02-18 00:00:00', 'PV-28', '6111-10', 'Desain Bulletin SJV', 700000.00, '0', 37);
INSERT INTO `jurnals` VALUES (18094, '2022-02-18 00:00:00', 'PV-28', '1112-01', 'Desain Bulletin SJV', 0.00, '700000', 37);
INSERT INTO `jurnals` VALUES (18095, '2022-02-18 00:00:00', 'PV-29', '6111-07', 'Admin Bank', 2900.00, '0', 38);
INSERT INTO `jurnals` VALUES (18096, '2022-02-18 00:00:00', 'PV-29', '1112-01', 'Admin Bank', 0.00, '2900', 38);
INSERT INTO `jurnals` VALUES (18097, '2022-02-23 00:00:00', 'RV-10', '1112-01', 'Donasi Agus Pratama Sari', 1500000.00, '0', 39);
INSERT INTO `jurnals` VALUES (18098, '2022-02-23 00:00:00', 'RV-10', '4111-03', 'Donasi Agus Pratama Sari', 0.00, '1500000', 39);
INSERT INTO `jurnals` VALUES (18099, '2022-02-23 00:00:00', 'RV-11', '1112-01', 'Penerimaan Donasi', 50000.00, '0', 40);
INSERT INTO `jurnals` VALUES (18100, '2022-02-23 00:00:00', 'RV-11', '4111-03', 'Penerimaan Donasi', 0.00, '50000', 40);
INSERT INTO `jurnals` VALUES (18101, '2022-02-23 00:00:00', 'RV-12', '1112-01', 'Donasi Andrey Sujatmoko', 200000.00, '0', 41);
INSERT INTO `jurnals` VALUES (18102, '2022-02-23 00:00:00', 'RV-12', '4111-03', 'Donasi Andrey Sujatmoko', 0.00, '200000', 41);
INSERT INTO `jurnals` VALUES (18103, '2022-02-23 00:00:00', 'PV-30', '6111-07', 'Admin Bank', 5000.00, '0', 42);
INSERT INTO `jurnals` VALUES (18104, '2022-02-23 00:00:00', 'PV-30', '1112-01', 'Admin Bank', 0.00, '5000', 42);
INSERT INTO `jurnals` VALUES (18105, '2022-02-24 00:00:00', 'RV-13', '1112-01', 'Donasi Nasution SH', 3000000.00, '0', 43);
INSERT INTO `jurnals` VALUES (18106, '2022-02-24 00:00:00', 'RV-13', '4111-03', 'Donasi Nasution SH', 0.00, '3000000', 43);
INSERT INTO `jurnals` VALUES (18107, '2022-02-28 00:00:00', 'PV-31', '6111-01', '', 9000000.00, '0', 44);
INSERT INTO `jurnals` VALUES (18108, '2022-02-28 00:00:00', 'PV-31', '1112-01', '', 0.00, '9000000', 44);
INSERT INTO `jurnals` VALUES (18109, '2022-02-28 00:00:00', 'RV-14', '1112-01', 'Pendapatan Jasa Giro', 61566.06, '0', 45);
INSERT INTO `jurnals` VALUES (18110, '2022-02-28 00:00:00', 'RV-14', '4211-01', 'Pendapatan Jasa Giro', 0.00, '61566.06', 45);
INSERT INTO `jurnals` VALUES (18111, '2022-02-28 00:00:00', 'PV-32', '6112-01', 'Pajak Jasa Giro', 12313.21, '0', 46);
INSERT INTO `jurnals` VALUES (18112, '2022-02-28 00:00:00', 'PV-32', '1112-01', 'Pajak Jasa Giro', 0.00, '12313.21', 46);
INSERT INTO `jurnals` VALUES (18113, '2022-02-28 00:00:00', 'PV-33', '6111-07', 'Admin Bank', 12500.00, '0', 47);
INSERT INTO `jurnals` VALUES (18114, '2022-02-28 00:00:00', 'PV-33', '1112-01', 'Admin Bank', 0.00, '12500', 47);
INSERT INTO `jurnals` VALUES (18115, '2022-03-01 00:00:00', 'RV-15', '1112-01', 'Donasi Wied Wiwoho', 4100000.00, '0', 48);
INSERT INTO `jurnals` VALUES (18116, '2022-03-01 00:00:00', 'RV-15', '4111-03', 'Donasi Wied Wiwoho', 0.00, '4100000', 48);
INSERT INTO `jurnals` VALUES (18117, '2022-03-02 00:00:00', 'PV-34', '6111-01', '', 7000000.00, '0', 49);
INSERT INTO `jurnals` VALUES (18118, '2022-03-02 00:00:00', 'PV-34', '1112-01', '', 0.00, '7000000', 49);
INSERT INTO `jurnals` VALUES (18119, '2022-03-02 00:00:00', 'PV-35', '6111-07', 'Admin Bank', 2900.00, '0', 50);
INSERT INTO `jurnals` VALUES (18120, '2022-03-02 00:00:00', 'PV-35', '1112-01', 'Admin Bank', 0.00, '2900', 50);

-- ----------------------------
-- Table structure for kwitansi_temps
-- ----------------------------
DROP TABLE IF EXISTS `kwitansi_temps`;
CREATE TABLE `kwitansi_temps`  (
  `NomorKwitansi` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Terima Dari` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `UangSejumlah` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `UntukPembayaran` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Penerima` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Jabatan` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TglKwitansi` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kwitansi_temps
-- ----------------------------

-- ----------------------------
-- Table structure for kwitansis
-- ----------------------------
DROP TABLE IF EXISTS `kwitansis`;
CREATE TABLE `kwitansis`  (
  `NomorKwitansi` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TglKwitansi` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Terima Dari` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `UangSejumlah` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `UntukPembayaran` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Penerima` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Jabatan` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of kwitansis
-- ----------------------------

-- ----------------------------
-- Table structure for laba_rugis
-- ----------------------------
DROP TABLE IF EXISTS `laba_rugis`;
CREATE TABLE `laba_rugis`  (
  `NoAkun1` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NamaAkun1` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NoAkun2` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NamaAkun2` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NoAkun3` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NamaAkun3` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NoAkun4` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NamaAkun4` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaldoAwalDebit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaldoAwalKredit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `MutasiDebit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `MutasiKredit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaldoAkhirDebit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaldoAkhirKredit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Laporan` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `AkunDebitKredit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaldoAwal` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaldoAkhir` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaldoAwalGabung` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaldoAkhirGabung` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `LaporanLabaRugi` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of laba_rugis
-- ----------------------------

-- ----------------------------
-- Table structure for neracas
-- ----------------------------
DROP TABLE IF EXISTS `neracas`;
CREATE TABLE `neracas`  (
  `NoAkun1` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NamaAkun1` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NoAkun2` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NamaAkun2` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NoAkun3` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NamaAkun3` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NoAkun4` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NamaAkun4` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaldoAwalDebit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaldoAwalKredit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaldoAkhirDebit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaldoAkhirKredit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Laporan` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `AkunDebitKredit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaldoAwal` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaldoAkhir` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of neracas
-- ----------------------------

-- ----------------------------
-- Table structure for neracasaldos
-- ----------------------------
DROP TABLE IF EXISTS `neracasaldos`;
CREATE TABLE `neracasaldos`  (
  `AkunNo` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `AkunNama` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaldoAwalDebit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaldoAwalKredit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `MutasiDebit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `MutasiKredit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `AkunDebitKredit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of neracasaldos
-- ----------------------------

-- ----------------------------
-- Table structure for options
-- ----------------------------
DROP TABLE IF EXISTS `options`;
CREATE TABLE `options`  (
  `Jurnals` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `JurnalKet` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Uraian Jurnal` varchar(37) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NamaPengurus` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Jabatan` varchar(17) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `LampiranJurnal` varchar(33) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of options
-- ----------------------------
INSERT INTO `options` VALUES ('', '', 'Pengembalian Uang Muka', '', '', '');
INSERT INTO `options` VALUES ('', '', '', 'Ali Gojali', 'Ketua Umum', '');
INSERT INTO `options` VALUES ('', '', '', 'Ahmad Baejuri', 'Bendahara Umum', '');
INSERT INTO `options` VALUES ('RV', 'Jurnal Kas Masuk', '', '', 'Direktur', '');
INSERT INTO `options` VALUES ('PV', 'Jurnal Kas Keluar', '', '', 'Direktur Utama', '');
INSERT INTO `options` VALUES ('JV', 'Jurnal Umum', '', '', 'Manajer', '');
INSERT INTO `options` VALUES ('', '', '', '', 'Manajer Keuangan', 'Berita Acara Penghitungan Kas No.');
INSERT INTO `options` VALUES ('', '', 'Penerimaan Donasi', '', 'Partner', '');
INSERT INTO `options` VALUES ('', '', 'Pembayaran Beban', '', 'General Manager', '');
INSERT INTO `options` VALUES ('', '', 'Uang Muka kepada', '', 'Managing Partner', '');
INSERT INTO `options` VALUES ('', '', 'Laporan Uang Muka', '', 'Managing Director', '');
INSERT INTO `options` VALUES ('', '', 'Pembayaran kepada … untuk ….', '', 'Director', '');
INSERT INTO `options` VALUES ('', '', '', '', 'Direktur Keuangan', 'Kwitansi No …. Tanggal …');
INSERT INTO `options` VALUES ('', '', '', '', 'Finance Manager', 'Nota No …. Tanggal …');
INSERT INTO `options` VALUES ('', '', '', '', 'Bendahara', 'Struk No. … Tanggal …');
INSERT INTO `options` VALUES ('', '', '', '', '', 'Permohonan Uang Muka');
INSERT INTO `options` VALUES ('', '', '', '', '', 'Permohonan Transfer Bank');
INSERT INTO `options` VALUES ('', '', '', '', '', 'Permohonan Penarikan Kas');
INSERT INTO `options` VALUES ('', '', '', '', '', 'Rekening Bank');
INSERT INTO `options` VALUES ('', '', 'Penerimaan Kas Kotak Amal Harian Tgl.', '', '', '');
INSERT INTO `options` VALUES ('', '', 'Laporan Kas Kecil', '', '', '');
INSERT INTO `options` VALUES ('', '', 'Pembelian Alat Kebersihan', '', '', '');
INSERT INTO `options` VALUES ('', '', '', '', '', 'Surat Perjanjian Kerja');
INSERT INTO `options` VALUES ('', '', 'Penerimaan SPP', '', '', '');
INSERT INTO `options` VALUES ('', '', 'Donasi Irawan Suhud', '', '', '');
INSERT INTO `options` VALUES ('', '', 'Gaji', '', '', '');
INSERT INTO `options` VALUES ('', '', 'Admin Bank Gaji', '', '', '');
INSERT INTO `options` VALUES ('', '', 'Admin Bank Bulanan', '', '', '');
INSERT INTO `options` VALUES ('', '', 'Pajak Jasa Giro', '', '', '');
INSERT INTO `options` VALUES ('', '', 'Pendapatan Jasa Giro', '', '', '');

-- ----------------------------
-- Table structure for tbdatefroms
-- ----------------------------
DROP TABLE IF EXISTS `tbdatefroms`;
CREATE TABLE `tbdatefroms`  (
  `Acc1` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Acc2` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Debit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Credit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `SaldoAwal` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `AccGrup` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbdatefroms
-- ----------------------------

-- ----------------------------
-- Table structure for view_ledgers
-- ----------------------------
DROP TABLE IF EXISTS `view_ledgers`;
CREATE TABLE `view_ledgers`  (
  `Date` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TransNo` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Voucher` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NoVoucher` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `AccountNo` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `AccountDesc` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Keterangan` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Debit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Credit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Saldo` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of view_ledgers
-- ----------------------------

-- ----------------------------
-- Table structure for view_subledgers
-- ----------------------------
DROP TABLE IF EXISTS `view_subledgers`;
CREATE TABLE `view_subledgers`  (
  `Account Code` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `TransNo` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Date` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `AccountDesc` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Voucher` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `NoVoucher` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Uraian` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Debit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Credit` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Keterangan` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Saldo` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ID` varchar(0) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of view_subledgers
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
