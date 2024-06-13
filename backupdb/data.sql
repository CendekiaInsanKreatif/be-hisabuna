-- MySQL dump 10.16  Distrib 10.1.48-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.48-MariaDB-0+deb9u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Akuns`
--

DROP TABLE IF EXISTS `Akuns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Akuns` (
  `AkunNo` varchar(7) DEFAULT NULL,
  `AkunNama` varchar(35) DEFAULT NULL,
  `SaldoAwalDebit` int(11) DEFAULT NULL,
  `SaldoAwalKredit` int(11) DEFAULT NULL,
  `ArusKas` varchar(19) DEFAULT NULL,
  `Anggaran` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Akuns`
--

LOCK TABLES `Akuns` WRITE;
/*!40000 ALTER TABLE `Akuns` DISABLE KEYS */;
INSERT INTO `Akuns` VALUES ('1111-01','Kas Kecil',0,0,'',0),('1112-01','Bank Mandiri No. Rek. 1030007709617',150726030,0,'',0),('1112-02','Bank Mandiri',0,0,'',0),('1112-08','Deposito',0,0,'',0),('3111-01','Modal',0,150726030,'',0),('1151','Biaya Dibayar di Muka',0,0,'Aktifivas Operasi',0),('1151-01','Sewa Dibayar di Muka',0,0,'',0),('6111','Biaya Umum & Administrasi',0,0,'Aktifivas Operasi',0),('6111-01','Beban Gaji',0,0,'',0),('6111-02','Beban Konsumsi',0,0,'',0),('6111-03','Beban Legal',0,0,'',0),('1161','Uang Muka Karyawan',0,0,'Aktifivas Operasi',0),('1161-01','Uang Muka - Hikari',0,0,'',0),('1211','Aset Tetap',0,0,'Aktifivas Operasi',0),('1211-01','Tanah',0,0,'',0),('1211-02','Bangunan',0,0,'',0),('1211-03','Peralatan',0,0,'',0),('2111','Hutang Usaha',0,0,'Aktifivas Operasi',0),('2111-01','Hutang Usaha',0,0,'',0),('4111-01','Penjualan',0,0,'',0),('1162','Pinjaman Karyawan',0,0,'Aktifivas Operasi',0),('1162-01','Pinjaman Karyawan',0,0,'',0),('6111-04','Beban Transportasi',0,0,'',0),('6111-05','Beban Alat Tulis Kantor',0,0,'',0),('6111-06','Beban Listrik',0,0,'',0),('6111-99','Beban Lainnya',0,0,'',0),('1121','Piutang Usaha',0,0,'Aktifivas Operasi',0),('1121-01','Piutang Usaha',0,0,'',0),('4211','Pendapatan Luar Usaha',0,0,'Aktifivas Operasi',0),('4211-01','Pendapatan Jasa Giro',0,0,'',0),('6112','Beban Luar Usaha',0,0,'Aktifivas Operasi',0),('6112-01','Beban Pajak Jasa Giro',0,0,'',0),('6111-07','Beban Biaya Bank',0,0,'',0),('6111-08','Beban Sewa Kantor',0,0,'',0),('6111-09','Beban Persediaan',0,0,'',0),('1131','Persediaan',0,0,'Aktifivas Operasi',0),('1131-01','Persediaan',0,0,'',0),('5111','HPP',0,0,'Aktifivas Operasi',0),('5111-01','HPP',0,0,'',0),('111','Kas dan Setara Kas',0,0,'',0),('112','Piutang Usaha',0,0,'',0),('113','Persediaan',0,0,'',0),('115','Biaya Dibayar di Muka',0,0,'',0),('114','Piutang Pendapatan',0,0,'',0),('116','Piutang Karyawan',0,0,'',0),('121','Aset Tetap',0,0,'',0),('211','Hutang Usaha',0,0,'',0),('216','Hutang Pajak',0,0,'',0),('219','Hutang Lancar Lainnya',0,0,'',0),('221','Hutang Bank',0,0,'',0),('311','Modal',0,0,'',0),('312','Saldo Laba',0,0,'',0),('411','Penjualan',0,0,'',0),('419','Pendapatan Usaha Lainnya',0,0,'',0),('421','Pendapatan Luar Usaha',0,0,'',0),('511','HPP',0,0,'',0),('611','Biaya Umum & Administrasi',0,0,'',0),('11','Aset Lancar',0,0,'',0),('12','Aset Tidak Lancar',0,0,'',0),('21','Hutang Lancar',0,0,'',0),('22','Hutang Tidak Lancar',0,0,'',0),('31','Ekuitas',0,0,'',0),('41','Pendapatan Usaha',0,0,'',0),('42','Pendapatan Luar Usaha',0,0,'',0),('51','Harga Pokok Penjualan (HPP)',0,0,'',0),('52','Biaya Proses & Pajak',0,0,'',0),('61','Beban Usaha',0,0,'',0),('62','Beban Luar Usaha',0,0,'',0),('1','Aset',0,0,'',0),('2','Liabilitas',0,0,'',0),('3','Ekuitas',0,0,'',0),('4','Pendapatan',0,0,'',0),('5','Harga Pokok Penjualan',0,0,'',0),('6','Beban Umum dan Admin',0,0,'',0),('1111','Kas',0,0,'',0),('1112','Bank',0,0,'',0),('4111','Penjualan',0,0,'Aktifivas Operasi',0),('3111','Modal Disetor',0,0,'Aktivitas Pendanaan',0),('3120','Saldo Laba Ditahan',0,0,'Aktifivas Operasi',0),('2211','Hutang Bank',0,0,'Aktifivas Operasi',0),('6111-10','Beban Promosi dan Iklan',0,0,'',0),('6111-11','Beban Workshop/Seminar/Training',0,0,'',0),('6111-12','Beban Website',0,0,'',0),('4111-02','Donasi Restricted',0,0,'',0),('4111-03','Donasi Un-Restricted',0,0,'',0),('6111-13','Beban Donasi',0,0,'',0),('6111-14','Beban Sewa Tempat Acara',0,0,'',0),('6111-15','Beban Zoom',0,0,'',0),('6111-16','Fee Profesional',0,0,'',0),('6111-17','Beban Publikasi',0,0,'',0),('6111-18','Beban Pengiriman',0,0,'',0),('6111-19','Beban Perlengkapan Kantor',0,0,'',0),('6111-20','Beban Meeting/Konferensi',0,0,'',0),('6111-21','Beban Komunikasi',0,0,'',0),('1161-02','Uang Muka -Usman',0,0,'',0),('1151-02','Talangan Gaji Karyawan',0,0,'',0),('1161-03','Uang Muka - Nabila',0,0,'',0);
/*!40000 ALTER TABLE `Akuns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Arus Kas`
--

DROP TABLE IF EXISTS `Arus Kas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Arus Kas` (
  `ArusKas` varchar(0) DEFAULT NULL,
  `AkunNama` varchar(0) DEFAULT NULL,
  `Mutasi` varchar(0) DEFAULT NULL,
  `Urutan` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Arus Kas`
--

LOCK TABLES `Arus Kas` WRITE;
/*!40000 ALTER TABLE `Arus Kas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Arus Kas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BukuBesars`
--

DROP TABLE IF EXISTS `BukuBesars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BukuBesars` (
  `JurnalTgl` varchar(0) DEFAULT NULL,
  `JurnalAkunNo` varchar(0) DEFAULT NULL,
  `NoJurnal` varchar(0) DEFAULT NULL,
  `AkunNama` varchar(0) DEFAULT NULL,
  `JurnalKet` varchar(0) DEFAULT NULL,
  `Debit` varchar(0) DEFAULT NULL,
  `Kredit` varchar(0) DEFAULT NULL,
  `NoUrut` varchar(0) DEFAULT NULL,
  `NoUrutData` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BukuBesars`
--

LOCK TABLES `BukuBesars` WRITE;
/*!40000 ALTER TABLE `BukuBesars` DISABLE KEYS */;
/*!40000 ALTER TABLE `BukuBesars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CashOpnames`
--

DROP TABLE IF EXISTS `CashOpnames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CashOpnames` (
  `ID` varchar(0) DEFAULT NULL,
  `NomorUrut` varchar(0) DEFAULT NULL,
  `Tanggal` varchar(0) DEFAULT NULL,
  `Tempat` varchar(0) DEFAULT NULL,
  `SumberDana` varchar(0) DEFAULT NULL,
  `Keterangan` varchar(0) DEFAULT NULL,
  `TTd1Nama` varchar(0) DEFAULT NULL,
  `TTd1Jabatan` varchar(0) DEFAULT NULL,
  `TTd2Nama` varchar(0) DEFAULT NULL,
  `TTd2Jabatan` varchar(0) DEFAULT NULL,
  `TTd3Nama` varchar(0) DEFAULT NULL,
  `TTd3Jabatan` varchar(0) DEFAULT NULL,
  `100rb` varchar(0) DEFAULT NULL,
  `50rb` varchar(0) DEFAULT NULL,
  `20rb` varchar(0) DEFAULT NULL,
  `10rb` varchar(0) DEFAULT NULL,
  `5rb` varchar(0) DEFAULT NULL,
  `2rb` varchar(0) DEFAULT NULL,
  `1rb` varchar(0) DEFAULT NULL,
  `500` varchar(0) DEFAULT NULL,
  `200` varchar(0) DEFAULT NULL,
  `100` varchar(0) DEFAULT NULL,
  `50` varchar(0) DEFAULT NULL,
  `Total` varchar(0) DEFAULT NULL,
  `PJDana` varchar(0) DEFAULT NULL,
  `DihitungOleh` varchar(0) DEFAULT NULL,
  `SaksiCO` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CashOpnames`
--

LOCK TABLES `CashOpnames` WRITE;
/*!40000 ALTER TABLE `CashOpnames` DISABLE KEYS */;
/*!40000 ALTER TABLE `CashOpnames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CashOpname_Temps`
--

DROP TABLE IF EXISTS `CashOpname_Temps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CashOpname_Temps` (
  `ID` varchar(0) DEFAULT NULL,
  `NomorUrut` varchar(0) DEFAULT NULL,
  `Tanggal` varchar(0) DEFAULT NULL,
  `Tempat` varchar(0) DEFAULT NULL,
  `SumberDana` varchar(0) DEFAULT NULL,
  `Keterangan` varchar(0) DEFAULT NULL,
  `TTd1Nama` varchar(0) DEFAULT NULL,
  `TTd1Jabatan` varchar(0) DEFAULT NULL,
  `TTd2Nama` varchar(0) DEFAULT NULL,
  `TTd2Jabatan` varchar(0) DEFAULT NULL,
  `TTd3Nama` varchar(0) DEFAULT NULL,
  `TTd3Jabatan` varchar(0) DEFAULT NULL,
  `100rb` varchar(0) DEFAULT NULL,
  `50rb` varchar(0) DEFAULT NULL,
  `20rb` varchar(0) DEFAULT NULL,
  `10rb` varchar(0) DEFAULT NULL,
  `5rb` varchar(0) DEFAULT NULL,
  `2rb` varchar(0) DEFAULT NULL,
  `1rb` varchar(0) DEFAULT NULL,
  `500` varchar(0) DEFAULT NULL,
  `200` varchar(0) DEFAULT NULL,
  `100` varchar(0) DEFAULT NULL,
  `50` varchar(0) DEFAULT NULL,
  `Total` varchar(0) DEFAULT NULL,
  `PJDana` varchar(0) DEFAULT NULL,
  `DihitungOleh` varchar(0) DEFAULT NULL,
  `SaksiCO` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CashOpname_Temps`
--

LOCK TABLES `CashOpname_Temps` WRITE;
/*!40000 ALTER TABLE `CashOpname_Temps` DISABLE KEYS */;
/*!40000 ALTER TABLE `CashOpname_Temps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DaftarJurnals`
--

DROP TABLE IF EXISTS `DaftarJurnals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DaftarJurnals` (
  `TransNo` varchar(0) DEFAULT NULL,
  `Date` varchar(0) DEFAULT NULL,
  `Keterangan` varchar(0) DEFAULT NULL,
  `SumOfDebit` varchar(0) DEFAULT NULL,
  `SumOfCredit` varchar(0) DEFAULT NULL,
  `JV` varchar(0) DEFAULT NULL,
  `PV` varchar(0) DEFAULT NULL,
  `RV` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DaftarJurnals`
--

LOCK TABLES `DaftarJurnals` WRITE;
/*!40000 ALTER TABLE `DaftarJurnals` DISABLE KEYS */;
/*!40000 ALTER TABLE `DaftarJurnals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jurnals`
--

DROP TABLE IF EXISTS `Jurnals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jurnals` (
  `ID2` mediumint(9) DEFAULT NULL,
  `JurnalTgl` varchar(19) DEFAULT NULL,
  `JurnalNo` varchar(6) DEFAULT NULL,
  `JurnalAkunNo` varchar(7) DEFAULT NULL,
  `JurnalKet` varchar(35) DEFAULT NULL,
  `Debit` decimal(11,2) DEFAULT NULL,
  `Kredit` varchar(9) DEFAULT NULL,
  `ID` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jurnals`
--

LOCK TABLES `Jurnals` WRITE;
/*!40000 ALTER TABLE `Jurnals` DISABLE KEYS */;
INSERT INTO `Jurnals` VALUES (18021,'2022-01-03 00:00:00','PV-1','6111-10','Desain Bulletin SJV',1750000.00,'0',1),(18022,'2022-01-03 00:00:00','PV-1','1112-01','Desain Bulletin SJV',0.00,'1750000',1),(18023,'2022-01-03 00:00:00','PV-2','6111-07',' Admin Bank Desain Bulletin SJV',2900.00,'0',2),(18024,'2022-01-03 00:00:00','PV-2','1112-01',' Admin Bank Desain Bulletin SJV',0.00,'2900',2),(18025,'2022-01-04 00:00:00','PV-3','6111-11','Honor Peserta FGD',800000.00,'0',3),(18026,'2022-01-04 00:00:00','PV-3','1112-01','Honor Peserta FGD',0.00,'800000',3),(18027,'2022-01-04 00:00:00','PV-4','6111-16','Honor Narsum FGD',1500000.00,'0',4),(18028,'2022-01-04 00:00:00','PV-4','1112-01','Honor Narsum FGD',0.00,'1500000',4),(18029,'2022-01-04 00:00:00','PV-5','6111-11','Admin Bank Honor Narsum FGD',2900.00,'0',5),(18030,'2022-01-04 00:00:00','PV-5','1112-01','Admin Bank Honor Narsum FGD',0.00,'2900',5),(18031,'2022-01-04 00:00:00','PV-6','6111-11','Honor Peserta FGD',800000.00,'0',6),(18032,'2022-01-04 00:00:00','PV-6','1112-01','Honor Peserta FGD',0.00,'800000',6),(18033,'2022-01-04 00:00:00','PV-7','6111-07','Admin Bank Honor Peserta FGD',2900.00,'0',7),(18034,'2022-01-04 00:00:00','PV-7','1112-01','Admin Bank Honor Peserta FGD',0.00,'2900',7),(18035,'2022-01-04 00:00:00','PV-8','6111-11','Honor Peserta FGD',800000.00,'0',8),(18036,'2022-01-04 00:00:00','PV-8','1112-01','Honor Peserta FGD',0.00,'800000',8),(18037,'2022-01-04 00:00:00','PV-9','6111-07','Admin Bank Honor Peserta FGD',2900.00,'0',9),(18038,'2022-01-04 00:00:00','PV-9','1112-01','Admin Bank Honor Peserta FGD',0.00,'2900',9),(18039,'2022-01-05 00:00:00','PV-10','1112-01','Retur Honor Peserta FGD',800000.00,'',10),(18040,'2022-01-05 00:00:00','PV-10','6111-11','Retur Honor Peserta FGD',0.00,'800000',10),(18041,'2022-01-05 00:00:00','PV-11','1112-01','Retur Honor Peserta FGD',800000.00,'',11),(18042,'2022-01-05 00:00:00','PV-11','6111-11','Retur Honor Peserta FGD',0.00,'800000',11),(18043,'2022-01-05 00:00:00','PV-12','1112-01','Retur Honor Narsum FGD',1500000.00,'0',12),(18044,'2022-01-05 00:00:00','PV-12','6111-16','Retur Honor Narsum FGD',0.00,'1500000',12),(18045,'2022-01-07 00:00:00','RV-1','1112-01','Donasi  FLIPTECH',1000000.00,'0',13),(18046,'2022-01-07 00:00:00','RV-1','4111-03','Donasi  FLIPTECH',0.00,'1000000',13),(18047,'2022-01-07 00:00:00','RV-2','1112-01','Donasi Rico Wicaksono',500000.00,'0',14),(18048,'2022-01-07 00:00:00','RV-2','4111-03','Donasi Rico Wicaksono',0.00,'500000',14),(18049,'2022-01-07 00:00:00','RV-3','1112-01','Donasi Irawan Suhud',100000.00,'0',15),(18050,'2022-01-07 00:00:00','RV-3','4111-03','Donasi Irawan Suhud',0.00,'100000',15),(18051,'2022-01-14 00:00:00','RV-4','1112-01','Donasi Irawan Suhud',100000.00,'0',16),(18052,'2022-01-14 00:00:00','RV-4','4111-03','Donasi Irawan Suhud',0.00,'100000',16),(18053,'2022-01-21 00:00:00','RV-5','1112-01','Donasi Irawan Suhud',100000.00,'0',17),(18054,'2022-01-21 00:00:00','RV-5','4111-03','Donasi Irawan Suhud',0.00,'100000',17),(18055,'2022-01-23 00:00:00','PV-13','6111-07','Admin Bank Bulanan',5000.00,'0',18),(18056,'2022-01-23 00:00:00','PV-13','1112-01','Admin Bank  Bulanan',0.00,'5000',18),(18057,'2022-01-24 00:00:00','RV-6','1112-01','Donasi',40060000.00,'0',19),(18058,'2022-01-24 00:00:00','RV-6','4111-03','Donasi',0.00,'40060000',19),(18059,'2022-01-28 00:00:00','RV-7','1112-01','Donasi',500000.00,'0',20),(18060,'2022-01-28 00:00:00','RV-7','4111-03','Donasi',0.00,'500000',20),(18061,'2022-01-31 00:00:00','PV-14','6111-01','',1100000.00,'0',21),(18062,'2022-01-31 00:00:00','PV-14','1112-01','',0.00,'1100000',21),(18063,'2022-01-31 00:00:00','PV-15','6111-07','Admin Bank',2900.00,'0',22),(18064,'2022-01-31 00:00:00','PV-15','1112-01','Admin Bank',0.00,'2900',22),(18065,'2022-01-31 00:00:00','PV-16','6111-01','',9000000.00,'0',23),(18066,'2022-01-31 00:00:00','PV-16','1112-01','',0.00,'9000000',23),(18067,'2022-01-31 00:00:00','PV-17','6111-01','',7000000.00,'0',24),(18068,'2022-01-31 00:00:00','PV-17','1112-01','',0.00,'7000000',24),(18069,'2022-01-31 00:00:00','PV-18','6111-07','Admin Bank',2900.00,'0',25),(18070,'2022-01-31 00:00:00','PV-18','1112-01','Admin Bank',0.00,'2900',25),(18071,'2022-01-31 00:00:00','PV-19','6111-01','',5000000.00,'0',26),(18072,'2022-01-31 00:00:00','PV-19','1112-01','',0.00,'5000000',26),(18073,'2022-01-31 00:00:00','PV-20','6111-01','',2000000.00,'0',27),(18074,'2022-01-31 00:00:00','PV-20','1112-01','',0.00,'2000000',27),(18075,'2022-01-31 00:00:00','PV-21','6111-01','',2500000.00,'0',28),(18076,'2022-01-31 00:00:00','PV-21','1112-01','',0.00,'2500000',28),(18077,'2022-01-31 00:00:00','PV-22','6111-12','Jasa Pengelolaan Web',30000000.00,'0',29),(18078,'2022-01-31 00:00:00','PV-22','1112-01','Jasa Pengelolaan Web',0.00,'30000000',29),(18079,'2022-01-31 00:00:00','PV-23','6111-07','Admin Bank',2900.00,'0',30),(18080,'2022-01-31 00:00:00','PV-23','1112-01','Admin Bank',0.00,'2900',30),(18081,'2022-01-31 00:00:00','PV-24','6111-07','Admin Bank',12500.00,'0',31),(18082,'2022-01-31 00:00:00','PV-24','1112-01','Admin Bank',0.00,'12500',31),(18083,'2022-01-31 00:00:00','RV-8','1112-01','Pendapatan Jasa Giro',80624.22,'0',32),(18084,'2022-01-31 00:00:00','RV-8','4211-01','Pendapatan Jasa Giro',0.00,'80624.22',32),(18085,'2022-01-31 00:00:00','PV-25','6112-01','Pajak Jasa Giro',16124.84,'0',33),(18086,'2022-01-31 00:00:00','PV-25','1112-01','Pajak Jasa Giro',0.00,'16124.84',33),(18087,'2022-02-18 00:00:00','RV-9','1112-01','Donasi Irawan Suhud',100000.00,'0',34),(18088,'2022-02-18 00:00:00','RV-9','4111-03','Donasi Irawan Suhud',0.00,'100000',34),(18089,'2022-02-18 00:00:00','PV-26','6111-10','Desain Bulletin',1400000.00,'0',35),(18090,'2022-02-18 00:00:00','PV-26','1112-01','Desain Bulletin',0.00,'1400000',35),(18091,'2022-02-18 00:00:00','PV-27','6111-07','Admin Bank',2900.00,'0',36),(18092,'2022-02-18 00:00:00','PV-27','1112-01','Admin Bank',0.00,'2900',36),(18093,'2022-02-18 00:00:00','PV-28','6111-10','Desain Bulletin SJV',700000.00,'0',37),(18094,'2022-02-18 00:00:00','PV-28','1112-01','Desain Bulletin SJV',0.00,'700000',37),(18095,'2022-02-18 00:00:00','PV-29','6111-07','Admin Bank',2900.00,'0',38),(18096,'2022-02-18 00:00:00','PV-29','1112-01','Admin Bank',0.00,'2900',38),(18097,'2022-02-23 00:00:00','RV-10','1112-01','Donasi Agus Pratama Sari',1500000.00,'0',39),(18098,'2022-02-23 00:00:00','RV-10','4111-03','Donasi Agus Pratama Sari',0.00,'1500000',39),(18099,'2022-02-23 00:00:00','RV-11','1112-01','Penerimaan Donasi',50000.00,'0',40),(18100,'2022-02-23 00:00:00','RV-11','4111-03','Penerimaan Donasi',0.00,'50000',40),(18101,'2022-02-23 00:00:00','RV-12','1112-01','Donasi Andrey Sujatmoko',200000.00,'0',41),(18102,'2022-02-23 00:00:00','RV-12','4111-03','Donasi Andrey Sujatmoko',0.00,'200000',41),(18103,'2022-02-23 00:00:00','PV-30','6111-07','Admin Bank',5000.00,'0',42),(18104,'2022-02-23 00:00:00','PV-30','1112-01','Admin Bank',0.00,'5000',42),(18105,'2022-02-24 00:00:00','RV-13','1112-01','Donasi Nasution SH',3000000.00,'0',43),(18106,'2022-02-24 00:00:00','RV-13','4111-03','Donasi Nasution SH',0.00,'3000000',43),(18107,'2022-02-28 00:00:00','PV-31','6111-01','',9000000.00,'0',44),(18108,'2022-02-28 00:00:00','PV-31','1112-01','',0.00,'9000000',44),(18109,'2022-02-28 00:00:00','RV-14','1112-01','Pendapatan Jasa Giro',61566.06,'0',45),(18110,'2022-02-28 00:00:00','RV-14','4211-01','Pendapatan Jasa Giro',0.00,'61566.06',45),(18111,'2022-02-28 00:00:00','PV-32','6112-01','Pajak Jasa Giro',12313.21,'0',46),(18112,'2022-02-28 00:00:00','PV-32','1112-01','Pajak Jasa Giro',0.00,'12313.21',46),(18113,'2022-02-28 00:00:00','PV-33','6111-07','Admin Bank',12500.00,'0',47),(18114,'2022-02-28 00:00:00','PV-33','1112-01','Admin Bank',0.00,'12500',47),(18115,'2022-03-01 00:00:00','RV-15','1112-01','Donasi Wied Wiwoho',4100000.00,'0',48),(18116,'2022-03-01 00:00:00','RV-15','4111-03','Donasi Wied Wiwoho',0.00,'4100000',48),(18117,'2022-03-02 00:00:00','PV-34','6111-01','',7000000.00,'0',49),(18118,'2022-03-02 00:00:00','PV-34','1112-01','',0.00,'7000000',49),(18119,'2022-03-02 00:00:00','PV-35','6111-07','Admin Bank',2900.00,'0',50),(18120,'2022-03-02 00:00:00','PV-35','1112-01','Admin Bank',0.00,'2900',50);
/*!40000 ALTER TABLE `Jurnals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jurnal_Details`
--

DROP TABLE IF EXISTS `Jurnal_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jurnal_Details` (
  `ID` smallint(6) DEFAULT NULL,
  `Account Code` smallint(6) DEFAULT NULL,
  `Debit` decimal(11,2) DEFAULT NULL,
  `Credit` varchar(9) DEFAULT NULL,
  `ID2` smallint(6) DEFAULT NULL,
  `Acc2` varchar(7) DEFAULT NULL,
  `TransDesc` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jurnal_Details`
--

LOCK TABLES `Jurnal_Details` WRITE;
/*!40000 ALTER TABLE `Jurnal_Details` DISABLE KEYS */;
INSERT INTO `Jurnal_Details` VALUES (1,6111,1750000.00,'0',1,'6111-10','Desain Bulletin SJV'),(1,1112,0.00,'1750000',2,'1112-01','Desain Bulletin SJV'),(2,6111,2900.00,'0',3,'6111-07',' Admin Bank Desain Bulletin SJV'),(2,1112,0.00,'2900',4,'1112-01',' Admin Bank Desain Bulletin SJV'),(3,6111,800000.00,'0',5,'6111-11','Honor Peserta FGD'),(3,1112,0.00,'800000',6,'1112-01','Honor Peserta FGD'),(4,6111,1500000.00,'0',7,'6111-16','Honor Narsum FGD'),(4,1112,0.00,'1500000',8,'1112-01','Honor Narsum FGD'),(5,6111,2900.00,'0',9,'6111-11','Admin Bank Honor Narsum FGD'),(5,1112,0.00,'2900',10,'1112-01','Admin Bank Honor Narsum FGD'),(6,6111,800000.00,'0',11,'6111-11','Honor Peserta FGD'),(6,1112,0.00,'800000',12,'1112-01','Honor Peserta FGD'),(7,6111,2900.00,'0',13,'6111-07','Admin Bank Honor Peserta FGD'),(7,1112,0.00,'2900',14,'1112-01','Admin Bank Honor Peserta FGD'),(8,6111,800000.00,'0',15,'6111-11','Honor Peserta FGD'),(8,1112,0.00,'800000',16,'1112-01','Honor Peserta FGD'),(9,6111,2900.00,'0',17,'6111-07','Admin Bank Honor Peserta FGD'),(9,1112,0.00,'2900',18,'1112-01','Admin Bank Honor Peserta FGD'),(10,1112,800000.00,'',19,'1112-01','Retur Honor Peserta FGD'),(10,6111,0.00,'800000',20,'6111-11','Retur Honor Peserta FGD'),(11,1112,800000.00,'',22,'1112-01','Retur Honor Peserta FGD'),(11,6111,0.00,'800000',23,'6111-11','Retur Honor Peserta FGD'),(12,1112,1500000.00,'0',24,'1112-01','Retur Honor Narsum FGD'),(12,6111,0.00,'1500000',25,'6111-16','Retur Honor Narsum FGD'),(13,1112,1000000.00,'0',27,'1112-01','Donasi  FLIPTECH'),(13,4111,0.00,'1000000',28,'4111-03','Donasi  FLIPTECH'),(14,1112,500000.00,'0',29,'1112-01','Donasi Rico Wicaksono'),(14,4111,0.00,'500000',30,'4111-03','Donasi Rico Wicaksono'),(15,1112,100000.00,'0',32,'1112-01','Donasi Irawan Suhud'),(15,4111,0.00,'100000',33,'4111-03','Donasi Irawan Suhud'),(16,1112,100000.00,'0',34,'1112-01','Donasi Irawan Suhud'),(16,4111,0.00,'100000',35,'4111-03','Donasi Irawan Suhud'),(17,1112,100000.00,'0',36,'1112-01','Donasi Irawan Suhud'),(17,4111,0.00,'100000',37,'4111-03','Donasi Irawan Suhud'),(18,6111,5000.00,'0',38,'6111-07','Admin Bank Bulanan'),(18,1112,0.00,'5000',40,'1112-01','Admin Bank  Bulanan'),(19,1112,40060000.00,'0',41,'1112-01','Donasi'),(19,4111,0.00,'40060000',42,'4111-03','Donasi'),(20,1112,500000.00,'0',43,'1112-01','Donasi'),(20,4111,0.00,'500000',44,'4111-03','Donasi'),(21,6111,1100000.00,'0',45,'6111-01',''),(21,1112,0.00,'1100000',46,'1112-01',''),(22,6111,2900.00,'0',47,'6111-07','Admin Bank'),(22,1112,0.00,'2900',48,'1112-01','Admin Bank'),(23,6111,9000000.00,'0',49,'6111-01',''),(23,1112,0.00,'9000000',50,'1112-01',''),(24,6111,7000000.00,'0',51,'6111-01',''),(24,1112,0.00,'7000000',52,'1112-01',''),(25,6111,2900.00,'0',53,'6111-07','Admin Bank'),(25,1112,0.00,'2900',54,'1112-01','Admin Bank'),(26,6111,5000000.00,'0',55,'6111-01',''),(26,1112,0.00,'5000000',56,'1112-01',''),(27,6111,2000000.00,'0',57,'6111-01',''),(27,1112,0.00,'2000000',58,'1112-01',''),(28,6111,2500000.00,'0',59,'6111-01',''),(28,1112,0.00,'2500000',60,'1112-01',''),(29,6111,30000000.00,'0',61,'6111-12','Jasa Pengelolaan Web'),(29,1112,0.00,'30000000',62,'1112-01','Jasa Pengelolaan Web'),(30,6111,2900.00,'0',63,'6111-07','Admin Bank'),(30,1112,0.00,'2900',64,'1112-01','Admin Bank'),(31,6111,12500.00,'0',65,'6111-07','Admin Bank'),(31,1112,0.00,'12500',66,'1112-01','Admin Bank'),(32,1112,80624.22,'0',67,'1112-01','Pendapatan Jasa Giro'),(32,4211,0.00,'80624.22',68,'4211-01','Pendapatan Jasa Giro'),(33,6112,16124.84,'0',71,'6112-01','Pajak Jasa Giro'),(33,1112,0.00,'16124.84',72,'1112-01','Pajak Jasa Giro'),(34,1112,100000.00,'0',73,'1112-01','Donasi Irawan Suhud'),(34,4111,0.00,'100000',74,'4111-03','Donasi Irawan Suhud'),(35,6111,1400000.00,'0',75,'6111-10','Desain Bulletin'),(35,1112,0.00,'1400000',76,'1112-01','Desain Bulletin'),(36,6111,2900.00,'0',77,'6111-07','Admin Bank'),(36,1112,0.00,'2900',78,'1112-01','Admin Bank'),(37,6111,700000.00,'0',79,'6111-10','Desain Bulletin SJV'),(37,1112,0.00,'700000',81,'1112-01','Desain Bulletin SJV'),(38,6111,2900.00,'0',82,'6111-07','Admin Bank'),(38,1112,0.00,'2900',83,'1112-01','Admin Bank'),(39,1112,1500000.00,'0',84,'1112-01','Donasi Agus Pratama Sari'),(39,4111,0.00,'1500000',85,'4111-03','Donasi Agus Pratama Sari'),(40,1112,50000.00,'0',86,'1112-01','Penerimaan Donasi'),(40,4111,0.00,'50000',87,'4111-03','Penerimaan Donasi'),(41,1112,200000.00,'0',89,'1112-01','Donasi Andrey Sujatmoko'),(41,4111,0.00,'200000',90,'4111-03','Donasi Andrey Sujatmoko'),(42,6111,5000.00,'0',91,'6111-07','Admin Bank'),(42,1112,0.00,'5000',92,'1112-01','Admin Bank'),(43,1112,3000000.00,'0',94,'1112-01','Donasi Nasution SH'),(43,4111,0.00,'3000000',95,'4111-03','Donasi Nasution SH'),(44,6111,9000000.00,'0',96,'6111-01',''),(44,1112,0.00,'9000000',97,'1112-01',''),(45,1112,61566.06,'0',98,'1112-01','Pendapatan Jasa Giro'),(45,4211,0.00,'61566.06',99,'4211-01','Pendapatan Jasa Giro'),(46,6112,12313.21,'0',100,'6112-01','Pajak Jasa Giro'),(46,1112,0.00,'12313.21',101,'1112-01','Pajak Jasa Giro'),(47,6111,12500.00,'0',102,'6111-07','Admin Bank'),(47,1112,0.00,'12500',103,'1112-01','Admin Bank'),(48,1112,4100000.00,'0',104,'1112-01','Donasi Wied Wiwoho'),(48,4111,0.00,'4100000',105,'4111-03','Donasi Wied Wiwoho'),(49,6111,7000000.00,'0',106,'6111-01',''),(49,1112,0.00,'7000000',107,'1112-01',''),(50,6111,2900.00,'0',109,'6111-07','Admin Bank'),(50,1112,0.00,'2900',110,'1112-01','Admin Bank');
/*!40000 ALTER TABLE `Jurnal_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jurnal_Detail_Temps`
--

DROP TABLE IF EXISTS `Jurnal_Detail_Temps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jurnal_Detail_Temps` (
  `ID` varchar(0) DEFAULT NULL,
  `Account Code` varchar(0) DEFAULT NULL,
  `Debit` varchar(0) DEFAULT NULL,
  `Credit` varchar(0) DEFAULT NULL,
  `ID2` varchar(0) DEFAULT NULL,
  `Acc2` varchar(0) DEFAULT NULL,
  `TransDesc` varchar(0) DEFAULT NULL,
  `Acc2Desc` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jurnal_Detail_Temps`
--

LOCK TABLES `Jurnal_Detail_Temps` WRITE;
/*!40000 ALTER TABLE `Jurnal_Detail_Temps` DISABLE KEYS */;
/*!40000 ALTER TABLE `Jurnal_Detail_Temps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jurnal_Detail_Temp_Quicks`
--

DROP TABLE IF EXISTS `Jurnal_Detail_Temp_Quicks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jurnal_Detail_Temp_Quicks` (
  `ID` varchar(0) DEFAULT NULL,
  `Account Code` varchar(0) DEFAULT NULL,
  `Debit` varchar(0) DEFAULT NULL,
  `Credit` varchar(0) DEFAULT NULL,
  `ID2` varchar(0) DEFAULT NULL,
  `Acc2` varchar(0) DEFAULT NULL,
  `TransDesc` varchar(0) DEFAULT NULL,
  `Acc2Desc` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jurnal_Detail_Temp_Quicks`
--

LOCK TABLES `Jurnal_Detail_Temp_Quicks` WRITE;
/*!40000 ALTER TABLE `Jurnal_Detail_Temp_Quicks` DISABLE KEYS */;
/*!40000 ALTER TABLE `Jurnal_Detail_Temp_Quicks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jurnal_Detail_Temp_Quicks2`
--

DROP TABLE IF EXISTS `Jurnal_Detail_Temp_Quicks2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jurnal_Detail_Temp_Quicks2` (
  `ID` varchar(0) DEFAULT NULL,
  `Account Code` varchar(0) DEFAULT NULL,
  `Debit` varchar(0) DEFAULT NULL,
  `Credit` varchar(0) DEFAULT NULL,
  `ID2` varchar(0) DEFAULT NULL,
  `Acc2` varchar(0) DEFAULT NULL,
  `TransDesc` varchar(0) DEFAULT NULL,
  `Acc2Desc` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jurnal_Detail_Temp_Quicks2`
--

LOCK TABLES `Jurnal_Detail_Temp_Quicks2` WRITE;
/*!40000 ALTER TABLE `Jurnal_Detail_Temp_Quicks2` DISABLE KEYS */;
/*!40000 ALTER TABLE `Jurnal_Detail_Temp_Quicks2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jurnal_Details2`
--

DROP TABLE IF EXISTS `Jurnal_Details2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jurnal_Details2` (
  `ID` varchar(0) DEFAULT NULL,
  `Account Code` varchar(0) DEFAULT NULL,
  `Debit` varchar(0) DEFAULT NULL,
  `Credit` varchar(0) DEFAULT NULL,
  `Uraian` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jurnal_Details2`
--

LOCK TABLES `Jurnal_Details2` WRITE;
/*!40000 ALTER TABLE `Jurnal_Details2` DISABLE KEYS */;
/*!40000 ALTER TABLE `Jurnal_Details2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jurnal_Headers`
--

DROP TABLE IF EXISTS `Jurnal_Headers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jurnal_Headers` (
  `TransNo` smallint(6) DEFAULT NULL,
  `Date` varchar(19) DEFAULT NULL,
  `Voucher` varchar(2) DEFAULT NULL,
  `NoVoucher` smallint(6) DEFAULT NULL,
  `Keterangan` varchar(39) DEFAULT NULL,
  `Attachment` varchar(0) DEFAULT NULL,
  `ID` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jurnal_Headers`
--

LOCK TABLES `Jurnal_Headers` WRITE;
/*!40000 ALTER TABLE `Jurnal_Headers` DISABLE KEYS */;
INSERT INTO `Jurnal_Headers` VALUES (1,'2022-01-03 00:00:00','PV',1,'Desain Bulletin SJV','',1),(2,'2022-01-03 00:00:00','PV',2,' Admin Bank Desain Bulletin SJV','',2),(3,'2022-01-04 00:00:00','PV',3,'Honor Peserta FGD','',3),(4,'2022-01-04 00:00:00','PV',4,'Honor Narsum FGD','',4),(5,'2022-01-04 00:00:00','PV',5,'Admin Bank Honor Narsum FGD','',5),(6,'2022-01-04 00:00:00','PV',6,'Honor Peserta FGD','',6),(7,'2022-01-04 00:00:00','PV',7,'Admin Bank Honor Peserta FGD','',7),(8,'2022-01-04 00:00:00','PV',8,'Honor Peserta FGD','',8),(9,'2022-01-04 00:00:00','PV',9,'Admin Bank Honor Peserta FGD','',9),(10,'2022-01-05 00:00:00','PV',10,'Retur Honor Peserta FGD','',10),(11,'2022-01-05 00:00:00','PV',11,'Retur Honor Peserta FGD','',11),(12,'2022-01-05 00:00:00','PV',12,'Retur Honor Narsum FGD','',12),(13,'2022-01-07 00:00:00','RV',1,'Donasi  FLIPTECH','',13),(14,'2022-01-07 00:00:00','RV',2,'Donasi Rico Wicaksono','',14),(15,'2022-01-07 00:00:00','RV',3,'Donasi Irawan Suhud','',15),(16,'2022-01-14 00:00:00','RV',4,'Donasi Irawan Suhud','',16),(17,'2022-01-21 00:00:00','RV',5,'Donasi Irawan Suhud','',17),(18,'2022-01-23 00:00:00','PV',13,'Admin Bank Bulanan','',18),(19,'2022-01-24 00:00:00','RV',6,'Penerimaan Donasi Prasanti Alam Lestari','',19),(20,'2022-01-28 00:00:00','RV',7,'Penerimaan Donasi','',20),(21,'2022-01-31 00:00:00','PV',14,'Gaji Desember','',21),(22,'2022-01-31 00:00:00','PV',15,'Admin Bank Gaji','',22),(23,'2022-01-31 00:00:00','PV',16,'Gaji Januari','',23),(24,'2022-01-31 00:00:00','PV',17,'Gaji Januari','',24),(25,'2022-01-31 00:00:00','PV',18,'Admin Bank Gaji','',25),(26,'2022-01-31 00:00:00','PV',19,'Gaji Januari','',26),(27,'2022-01-31 00:00:00','PV',20,'Gaji Januari','',27),(28,'2022-01-31 00:00:00','PV',21,'Gaji Januari','',28),(29,'2022-01-31 00:00:00','PV',22,'Jasa Pengelolaan Web','',29),(30,'2022-01-31 00:00:00','PV',23,'Admin Bank Gaji','',30),(31,'2022-01-31 00:00:00','PV',24,'Admin Bank Bulanan','',31),(32,'2022-01-31 00:00:00','RV',8,'Pendapatan Jasa Giro','',32),(33,'2022-01-31 00:00:00','PV',25,'Pajak Jasa Giro','',33),(34,'2022-02-18 00:00:00','RV',9,'Donasi Irawan Suhud','',34),(35,'2022-02-18 00:00:00','PV',26,'Desain Bulletin','',35),(36,'2022-02-18 00:00:00','PV',27,'Admin Bank','',36),(37,'2022-02-18 00:00:00','PV',28,'Desain Bulletin SJV','',37),(38,'2022-02-18 00:00:00','PV',29,'Admin Bank','',38),(39,'2022-02-23 00:00:00','RV',10,'Penerimaan Donasi','',39),(40,'2022-02-23 00:00:00','RV',11,'Penerimaan Donasi','',40),(41,'2022-02-23 00:00:00','RV',12,'Penerimaan Donasi','',41),(42,'2022-02-23 00:00:00','PV',30,'Admin Bank Bulanan','',42),(43,'2022-02-24 00:00:00','RV',13,'Penerimaan Donasi','',43),(44,'2022-02-28 00:00:00','PV',31,'Gaji Februari','',44),(45,'2022-02-28 00:00:00','RV',14,'Pendapatan Jasa Giro','',45),(46,'2022-02-28 00:00:00','PV',32,'Pajak Jasa Giro','',46),(47,'2022-02-28 00:00:00','PV',33,'Admin Bank Bulanan','',47),(48,'2022-03-01 00:00:00','RV',15,'Donasi Wied Wiwoho','',48),(49,'2022-03-02 00:00:00','PV',34,'Gaji Februari','',49),(50,'2022-03-02 00:00:00','PV',35,'Admin Bank Gaji','',50),(51,'2022-03-02 00:00:00','PV',36,'Gaji Februari','',51),(52,'2022-03-02 00:00:00','PV',37,'Gaji Februari','',52),(53,'2022-03-02 00:00:00','PV',38,'Admin Bank Gaji','',53),(54,'2022-03-11 00:00:00','RV',16,'Donasi Irawan Suhud','',54),(55,'2022-03-23 00:00:00','PV',39,'Admin Bank Bulanan','',55),(56,'2022-03-30 00:00:00','PV',40,'Gaji Maret','',56),(57,'2022-03-30 00:00:00','PV',41,'Admin Bank Gaji','',57),(58,'2022-03-30 00:00:00','PV',42,'Gaji Maret','',58),(59,'2022-03-30 00:00:00','PV',43,'Admin Bank Gaji','',59),(60,'2022-03-30 00:00:00','PV',44,'Gaji Maret','',60),(61,'2022-03-30 00:00:00','PV',45,'Gaji Maret','',61),(62,'2022-03-30 00:00:00','PV',46,'Admin Bank Gaji','',62),(63,'2022-03-30 00:00:00','PV',47,'Penambahan Gaji','',63),(64,'2022-03-30 00:00:00','PV',48,'Admin Bank Gaji','',64),(65,'2022-03-30 00:00:00','PV',49,'Penambahan Gaji','',65),(66,'2022-03-30 00:00:00','PV',50,'Admin Bank Gaji','',66),(67,'2022-03-30 00:00:00','PV',51,'Gaji Maret','',67),(68,'2022-03-30 00:00:00','PV',52,'Gaji Maret','',68),(69,'2022-03-30 00:00:00','PV',53,'Admin Bank Gaji','',69),(70,'2022-03-30 00:00:00','PV',54,'Reimburse ATK','',70),(71,'2022-03-30 00:00:00','PV',55,'Penambahan Gaji','',71),(72,'2022-03-30 00:00:00','PV',56,'Admin Bank Gaji','',72),(73,'2022-03-30 00:00:00','PV',57,'Reimburse Katering','',73),(74,'2022-03-30 00:00:00','PV',58,'Reimburs Sewa Tempat','',74),(75,'2022-03-30 00:00:00','PV',59,'Reimburse Wadas','',75),(76,'2022-03-30 00:00:00','PV',60,'Admin Bank','',76),(77,'2022-03-30 00:00:00','PV',61,'Reimburse Wadas','',77),(78,'2022-03-30 00:00:00','PV',62,'Admin Bank','',78),(79,'2022-03-30 00:00:00','PV',63,'Reimburse Wadas','',79),(80,'2022-03-30 00:00:00','PV',64,'Admin Bank','',80),(81,'2022-03-30 00:00:00','PV',65,'Zoom Kantor','',81),(82,'2022-03-30 00:00:00','PV',66,'Admin Bank','',82),(83,'2022-03-30 00:00:00','PV',67,'Fee Narasumber MedBrief','',83),(84,'2022-03-30 00:00:00','PV',68,'Admin Bank','',84),(85,'2022-03-30 00:00:00','PV',69,'Fee Narasumber MedBrief','',85),(86,'2022-03-30 00:00:00','PV',70,'Admin Bank','',86),(87,'2022-03-30 00:00:00','PV',71,'Admin Bank Bulanan','',87),(88,'2022-03-30 00:00:00','RV',17,'Pendapatan Jasa Giro','',88),(89,'2022-03-30 00:00:00','PV',72,'Pajak Jasa Giro','',89),(90,'2022-04-07 00:00:00','PV',73,'Gaji Maret','',90),(91,'2022-04-07 00:00:00','PV',74,'Maklumat Demokrasi','',91),(92,'2022-04-07 00:00:00','PV',75,'Admin Bank','',92),(93,'2022-04-07 00:00:00','PV',76,'Narsum MedBrief','',93),(94,'2022-04-08 00:00:00','PV',77,'Honor Teacher SJLP','',94),(95,'2022-04-08 00:00:00','PV',78,'Honor Teacher SJLP','',95),(96,'2022-04-08 00:00:00','PV',79,'Admin Bank','',96),(97,'2022-04-08 00:00:00','PV',80,'Honor Teacher SJLP','',97),(98,'2022-04-08 00:00:00','PV',81,'Jasa Layout Buletin','',98),(99,'2022-04-08 00:00:00','PV',82,'Fee Media Briefing','',99),(100,'2022-04-08 00:00:00','PV',83,'Pengiriman Buku','',100);
/*!40000 ALTER TABLE `Jurnal_Headers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jurnal_Header_Temps`
--

DROP TABLE IF EXISTS `Jurnal_Header_Temps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jurnal_Header_Temps` (
  `TransNo` smallint(6) DEFAULT NULL,
  `Date` varchar(19) DEFAULT NULL,
  `Voucher` varchar(0) DEFAULT NULL,
  `NoVoucher` tinyint(4) DEFAULT NULL,
  `Keterangan` varchar(0) DEFAULT NULL,
  `Page` tinyint(4) DEFAULT NULL,
  `Attachment` varchar(0) DEFAULT NULL,
  `ID` smallint(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jurnal_Header_Temps`
--

LOCK TABLES `Jurnal_Header_Temps` WRITE;
/*!40000 ALTER TABLE `Jurnal_Header_Temps` DISABLE KEYS */;
INSERT INTO `Jurnal_Header_Temps` VALUES (348,'2024-01-20 00:00:00','',0,'',0,'',443);
/*!40000 ALTER TABLE `Jurnal_Header_Temps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jurnal_Templates`
--

DROP TABLE IF EXISTS `Jurnal_Templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jurnal_Templates` (
  `ID` tinyint(4) DEFAULT NULL,
  `NamaTemplate` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jurnal_Templates`
--

LOCK TABLES `Jurnal_Templates` WRITE;
/*!40000 ALTER TABLE `Jurnal_Templates` DISABLE KEYS */;
INSERT INTO `Jurnal_Templates` VALUES (1,'Donasi Irawan Suhud'),(2,'Gaji'),(3,'Admin Bank'),(4,'Pendapatan Jasa Giro'),(5,'Pajak Jasa Giro'),(6,'Biaya Donasi'),(7,'Fee Profesional'),(8,'Reimburse'),(9,'Uang Muka');
/*!40000 ALTER TABLE `Jurnal_Templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jurnal_Template_Details`
--

DROP TABLE IF EXISTS `Jurnal_Template_Details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jurnal_Template_Details` (
  `ID` varchar(1) DEFAULT NULL,
  `Account Code` smallint(6) DEFAULT NULL,
  `Debit` mediumint(9) DEFAULT NULL,
  `Credit` mediumint(9) DEFAULT NULL,
  `Acc2` varchar(7) DEFAULT NULL,
  `TransDesc` varchar(20) DEFAULT NULL,
  `Acc2Desc` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jurnal_Template_Details`
--

LOCK TABLES `Jurnal_Template_Details` WRITE;
/*!40000 ALTER TABLE `Jurnal_Template_Details` DISABLE KEYS */;
INSERT INTO `Jurnal_Template_Details` VALUES ('',1112,100000,0,'1112-01','Donasi Irawan Suhud','Bank Mandiri No. Rek. 1030007709617'),('',4111,0,100000,'4111-03','Donasi Irawan Suhud','Donasi Un-Restricted'),('1',1112,100000,0,'1112-01','Donasi Irawan Suhud','Bank Mandiri No. Rek. 1030007709617'),('1',4111,0,100000,'4111-03','Donasi Irawan Suhud','Donasi Un-Restricted'),('2',6111,0,0,'6111-01','','Beban Gaji'),('2',1112,0,0,'1112-01','','Bank Mandiri No. Rek. 1030007709617'),('3',6111,2900,0,'6111-07','Admin Bank','Beban Biaya Bank'),('3',1112,0,2900,'1112-01','Admin Bank','Bank Mandiri No. Rek. 1030007709617'),('4',1112,0,0,'1112-01','Pendapatan Jasa Giro','Bank Mandiri No. Rek. 1030007709617'),('4',4211,0,0,'4211-01','Pendapatan Jasa Giro','Pendapatan Jasa Giro'),('5',6112,0,0,'6112-01','Pajak Jasa Giro','Beban Pajak Jasa Giro'),('5',1112,0,0,'1112-01','Pajak Jasa Giro','Bank Mandiri No. Rek. 1030007709617'),('6',6111,0,0,'6111-13','Biaya Donasi','Beban Donasi'),('6',1112,0,0,'1112-01','Biaya Donasi','Bank Mandiri No. Rek. 1030007709617'),('7',6111,0,0,'6111-16','','Fee Profesional'),('7',1112,0,0,'1112-01','','Bank Mandiri No. Rek. 1030007709617'),('8',6111,0,0,'6111-13','','Beban Donasi'),('8',1112,0,0,'1112-01','','Bank Mandiri No. Rek. 1030007709617'),('9',1161,0,0,'1161-03','','Uang Muka - Nabila'),('9',1112,0,0,'1112-01','','Bank Mandiri No. Rek. 1030007709617');
/*!40000 ALTER TABLE `Jurnal_Template_Details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Kwitansis`
--

DROP TABLE IF EXISTS `Kwitansis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kwitansis` (
  `NomorKwitansi` varchar(0) DEFAULT NULL,
  `TglKwitansi` varchar(0) DEFAULT NULL,
  `Terima Dari` varchar(0) DEFAULT NULL,
  `UangSejumlah` varchar(0) DEFAULT NULL,
  `UntukPembayaran` varchar(0) DEFAULT NULL,
  `Penerima` varchar(0) DEFAULT NULL,
  `Jabatan` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kwitansis`
--

LOCK TABLES `Kwitansis` WRITE;
/*!40000 ALTER TABLE `Kwitansis` DISABLE KEYS */;
/*!40000 ALTER TABLE `Kwitansis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Kwitansi_Temps`
--

DROP TABLE IF EXISTS `Kwitansi_Temps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Kwitansi_Temps` (
  `NomorKwitansi` varchar(0) DEFAULT NULL,
  `Terima Dari` varchar(0) DEFAULT NULL,
  `UangSejumlah` varchar(0) DEFAULT NULL,
  `UntukPembayaran` varchar(0) DEFAULT NULL,
  `Penerima` varchar(0) DEFAULT NULL,
  `Jabatan` varchar(0) DEFAULT NULL,
  `TglKwitansi` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Kwitansi_Temps`
--

LOCK TABLES `Kwitansi_Temps` WRITE;
/*!40000 ALTER TABLE `Kwitansi_Temps` DISABLE KEYS */;
/*!40000 ALTER TABLE `Kwitansi_Temps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Laba_Rugis`
--

DROP TABLE IF EXISTS `Laba_Rugis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Laba_Rugis` (
  `NoAkun1` varchar(0) DEFAULT NULL,
  `NamaAkun1` varchar(0) DEFAULT NULL,
  `NoAkun2` varchar(0) DEFAULT NULL,
  `NamaAkun2` varchar(0) DEFAULT NULL,
  `NoAkun3` varchar(0) DEFAULT NULL,
  `NamaAkun3` varchar(0) DEFAULT NULL,
  `NoAkun4` varchar(0) DEFAULT NULL,
  `NamaAkun4` varchar(0) DEFAULT NULL,
  `SaldoAwalDebit` varchar(0) DEFAULT NULL,
  `SaldoAwalKredit` varchar(0) DEFAULT NULL,
  `MutasiDebit` varchar(0) DEFAULT NULL,
  `MutasiKredit` varchar(0) DEFAULT NULL,
  `SaldoAkhirDebit` varchar(0) DEFAULT NULL,
  `SaldoAkhirKredit` varchar(0) DEFAULT NULL,
  `Laporan` varchar(0) DEFAULT NULL,
  `AkunDebitKredit` varchar(0) DEFAULT NULL,
  `SaldoAwal` varchar(0) DEFAULT NULL,
  `SaldoAkhir` varchar(0) DEFAULT NULL,
  `SaldoAwalGabung` varchar(0) DEFAULT NULL,
  `SaldoAkhirGabung` varchar(0) DEFAULT NULL,
  `LaporanLabaRugi` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Laba_Rugis`
--

LOCK TABLES `Laba_Rugis` WRITE;
/*!40000 ALTER TABLE `Laba_Rugis` DISABLE KEYS */;
/*!40000 ALTER TABLE `Laba_Rugis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Neracas`
--

DROP TABLE IF EXISTS `Neracas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Neracas` (
  `NoAkun1` varchar(0) DEFAULT NULL,
  `NamaAkun1` varchar(0) DEFAULT NULL,
  `NoAkun2` varchar(0) DEFAULT NULL,
  `NamaAkun2` varchar(0) DEFAULT NULL,
  `NoAkun3` varchar(0) DEFAULT NULL,
  `NamaAkun3` varchar(0) DEFAULT NULL,
  `NoAkun4` varchar(0) DEFAULT NULL,
  `NamaAkun4` varchar(0) DEFAULT NULL,
  `SaldoAwalDebit` varchar(0) DEFAULT NULL,
  `SaldoAwalKredit` varchar(0) DEFAULT NULL,
  `SaldoAkhirDebit` varchar(0) DEFAULT NULL,
  `SaldoAkhirKredit` varchar(0) DEFAULT NULL,
  `Laporan` varchar(0) DEFAULT NULL,
  `AkunDebitKredit` varchar(0) DEFAULT NULL,
  `SaldoAwal` varchar(0) DEFAULT NULL,
  `SaldoAkhir` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Neracas`
--

LOCK TABLES `Neracas` WRITE;
/*!40000 ALTER TABLE `Neracas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Neracas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NeracaSaldos`
--

DROP TABLE IF EXISTS `NeracaSaldos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NeracaSaldos` (
  `AkunNo` varchar(0) DEFAULT NULL,
  `AkunNama` varchar(0) DEFAULT NULL,
  `SaldoAwalDebit` varchar(0) DEFAULT NULL,
  `SaldoAwalKredit` varchar(0) DEFAULT NULL,
  `MutasiDebit` varchar(0) DEFAULT NULL,
  `MutasiKredit` varchar(0) DEFAULT NULL,
  `AkunDebitKredit` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NeracaSaldos`
--

LOCK TABLES `NeracaSaldos` WRITE;
/*!40000 ALTER TABLE `NeracaSaldos` DISABLE KEYS */;
/*!40000 ALTER TABLE `NeracaSaldos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Options`
--

DROP TABLE IF EXISTS `Options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Options` (
  `Jurnals` varchar(2) DEFAULT NULL,
  `JurnalKet` varchar(17) DEFAULT NULL,
  `Uraian Jurnal` varchar(37) DEFAULT NULL,
  `NamaPengurus` varchar(13) DEFAULT NULL,
  `Jabatan` varchar(17) DEFAULT NULL,
  `LampiranJurnal` varchar(33) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Options`
--

LOCK TABLES `Options` WRITE;
/*!40000 ALTER TABLE `Options` DISABLE KEYS */;
INSERT INTO `Options` VALUES ('','','Pengembalian Uang Muka','','',''),('','','','Ali Gojali','Ketua Umum',''),('','','','Ahmad Baejuri','Bendahara Umum',''),('RV','Jurnal Kas Masuk','','','Direktur',''),('PV','Jurnal Kas Keluar','','','Direktur Utama',''),('JV','Jurnal Umum','','','Manajer',''),('','','','','Manajer Keuangan','Berita Acara Penghitungan Kas No.'),('','','Penerimaan Donasi','','Partner',''),('','','Pembayaran Beban','','General Manager',''),('','','Uang Muka kepada','','Managing Partner',''),('','','Laporan Uang Muka','','Managing Director',''),('','','Pembayaran kepada … untuk ….','','Director',''),('','','','','Direktur Keuangan','Kwitansi No …. Tanggal …'),('','','','','Finance Manager','Nota No …. Tanggal …'),('','','','','Bendahara','Struk No. … Tanggal …'),('','','','','','Permohonan Uang Muka'),('','','','','','Permohonan Transfer Bank'),('','','','','','Permohonan Penarikan Kas'),('','','','','','Rekening Bank'),('','','Penerimaan Kas Kotak Amal Harian Tgl.','','',''),('','','Laporan Kas Kecil','','',''),('','','Pembelian Alat Kebersihan','','',''),('','','','','','Surat Perjanjian Kerja'),('','','Penerimaan SPP','','',''),('','','Donasi Irawan Suhud','','',''),('','','Gaji','','',''),('','','Admin Bank Gaji','','',''),('','','Admin Bank Bulanan','','',''),('','','Pajak Jasa Giro','','',''),('','','Pendapatan Jasa Giro','','','');
/*!40000 ALTER TABLE `Options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TBDateFroms`
--

DROP TABLE IF EXISTS `TBDateFroms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TBDateFroms` (
  `Acc1` varchar(0) DEFAULT NULL,
  `Acc2` varchar(0) DEFAULT NULL,
  `Debit` varchar(0) DEFAULT NULL,
  `Credit` varchar(0) DEFAULT NULL,
  `SaldoAwal` varchar(0) DEFAULT NULL,
  `AccGrup` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TBDateFroms`
--

LOCK TABLES `TBDateFroms` WRITE;
/*!40000 ALTER TABLE `TBDateFroms` DISABLE KEYS */;
/*!40000 ALTER TABLE `TBDateFroms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `View_Ledgers`
--

DROP TABLE IF EXISTS `View_Ledgers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `View_Ledgers` (
  `Date` varchar(0) DEFAULT NULL,
  `TransNo` varchar(0) DEFAULT NULL,
  `Voucher` varchar(0) DEFAULT NULL,
  `NoVoucher` varchar(0) DEFAULT NULL,
  `AccountNo` varchar(0) DEFAULT NULL,
  `AccountDesc` varchar(0) DEFAULT NULL,
  `Keterangan` varchar(0) DEFAULT NULL,
  `Debit` varchar(0) DEFAULT NULL,
  `Credit` varchar(0) DEFAULT NULL,
  `Saldo` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `View_Ledgers`
--

LOCK TABLES `View_Ledgers` WRITE;
/*!40000 ALTER TABLE `View_Ledgers` DISABLE KEYS */;
/*!40000 ALTER TABLE `View_Ledgers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `View_SubLedgers`
--

DROP TABLE IF EXISTS `View_SubLedgers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `View_SubLedgers` (
  `Account Code` varchar(0) DEFAULT NULL,
  `TransNo` varchar(0) DEFAULT NULL,
  `Date` varchar(0) DEFAULT NULL,
  `AccountDesc` varchar(0) DEFAULT NULL,
  `Voucher` varchar(0) DEFAULT NULL,
  `NoVoucher` varchar(0) DEFAULT NULL,
  `Uraian` varchar(0) DEFAULT NULL,
  `Debit` varchar(0) DEFAULT NULL,
  `Credit` varchar(0) DEFAULT NULL,
  `Keterangan` varchar(0) DEFAULT NULL,
  `Saldo` varchar(0) DEFAULT NULL,
  `ID` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `View_SubLedgers`
--

LOCK TABLES `View_SubLedgers` WRITE;
/*!40000 ALTER TABLE `View_SubLedgers` DISABLE KEYS */;
/*!40000 ALTER TABLE `View_SubLedgers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-18 10:46:38
