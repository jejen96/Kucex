-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2017 at 01:44 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cdcol`
--

-- --------------------------------------------------------

--
-- Table structure for table `cds`
--

CREATE TABLE IF NOT EXISTS `cds` (
  `titel` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `interpret` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `jahr` int(11) DEFAULT NULL,
  `id` bigint(20) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `cds`
--

INSERT INTO `cds` (`titel`, `interpret`, `jahr`, `id`) VALUES
('Beauty', 'Ryuichi Sakamoto', 1990, 1),
('Goodbye Country (Hello Nightclub)', 'Groove Armada', 2001, 4),
('Glee', 'Bran Van 3000', 1997, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cds`
--
ALTER TABLE `cds`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;--
-- Database: `dj`
--

-- --------------------------------------------------------

--
-- Table structure for table `angkutan_umum`
--

CREATE TABLE IF NOT EXISTS `angkutan_umum` (
  `id` int(10) NOT NULL,
  `no_trayek` varchar(10) NOT NULL,
  `simpul` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `angkutan_umum`
--

INSERT INTO `angkutan_umum` (`id`, `no_trayek`, `simpul`) VALUES
(1, 'T01', ',0-1,1-3,3-1,1-0,'),
(2, 'T02', ',3-1,1-2,2-1,1-3,'),
(3, 'T03', ',2-1,1-0,0-1,1-2,');

-- --------------------------------------------------------

--
-- Table structure for table `graph`
--

CREATE TABLE IF NOT EXISTS `graph` (
  `id` int(10) NOT NULL,
  `simpul_awal` varchar(10) NOT NULL,
  `simpul_tujuan` varchar(10) NOT NULL,
  `jalur` text NOT NULL,
  `bobot` double NOT NULL,
  `temp` char(2) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `graph`
--

INSERT INTO `graph` (`id`, `simpul_awal`, `simpul_tujuan`, `jalur`, `bobot`, `temp`) VALUES
(1, '0', '1', '{"nodes": ["0-1"], "coordinates": [[-6.284415458371992, 106.91019058227539],[-6.284756717907417, 106.90710067749023],[-6.285097977218993, 106.90332412719727],[-6.285439236306698, 106.89971923828125],[-6.2874867861311605, 106.89783096313477],[-6.289193071493099, 106.89594268798828],[-6.290046212074101, 106.89302444458008],[-6.291069978922995, 106.88976287841797],[-6.291069978922995, 106.88735961914062],[-6.291069978922995, 106.88478469848633],[-6.290558095750607, 106.88186645507812],[-6.289022443208887, 106.8801498413086],[-6.289022443208887, 106.8779182434082],[-6.289022443208887, 106.87585830688477],[-6.288169300947852, 106.87345504760742],[-6.2871455283868585, 106.87105178833008]], "distance_metres": [4651.704589938576]}', 4651.7045899386, 'N'),
(2, '1', '0', '{"nodes": ["1-0"], "coordinates": [[-6.2871455283868585,106.87105178833008],[-6.288169300947852,106.87345504760742],[-6.289022443208887,106.87585830688477],[-6.289022443208887,106.8779182434082],[-6.289022443208887,106.8801498413086],[-6.290558095750607,106.88186645507812],[-6.291069978922995,106.88478469848633],[-6.291069978922995,106.88735961914062],[-6.291069978922995,106.88976287841797],[-6.290046212074101,106.89302444458008],[-6.289193071493099,106.89594268798828],[-6.2874867861311605,106.89783096313477],[-6.285439236306698,106.89971923828125],[-6.285097977218993,106.90332412719727],[-6.284756717907417,106.90710067749023],[-6.284415458371992,106.91019058227539]], "distance_metres": [4651.704589938576]}', 4651.7045899386, 'N'),
(3, '3', '1', '{"nodes": ["3-1"], "coordinates": [[-6.26359820388383, 106.86573028564453],[-6.266499018696627, 106.86624526977539],[-6.269058547786088, 106.86727523803711],[-6.271618064314864, 106.86761856079102],[-6.274348201428556, 106.86761856079102],[-6.27673705967021, 106.86864852905273],[-6.278955275371273, 106.8698501586914],[-6.280064379678578, 106.87079429626465],[-6.281344112481868, 106.87165260314941],[-6.282623842138954, 106.87173843383789],[-6.283562308554176, 106.87148094177246],[-6.2871455283868585, 106.87105178833008]], "distance_metres": [2781.623167119388]}', 2781.6231671194, 'N'),
(4, '1', '3', '{"nodes": ["1-3"], "coordinates": [[-6.2871455283868585,106.87105178833008],[-6.283562308554176,106.87148094177246],[-6.282623842138954,106.87173843383789],[-6.281344112481868,106.87165260314941],[-6.280064379678578,106.87079429626465],[-6.278955275371273,106.8698501586914],[-6.27673705967021,106.86864852905273],[-6.274348201428556,106.86761856079102],[-6.271618064314864,106.86761856079102],[-6.269058547786088,106.86727523803711],[-6.266499018696627,106.86624526977539],[-6.26359820388383,106.86573028564453]], "distance_metres": [2781.623167119388]}', 2781.6231671194, 'N'),
(5, '2', '1', '{"nodes": ["2-1"], "coordinates": [[-6.306426239477426, 106.86521530151367],[-6.303099088251034, 106.8669319152832],[-6.3017340969582945, 106.86847686767578],[-6.29994254043689, 106.86959266662598],[-6.298662853420736, 106.87070846557617],[-6.297127224837116, 106.87139511108398],[-6.295250339289435, 106.87191009521484],[-6.293629387221669, 106.87216758728027],[-6.292264371031179, 106.87199592590332],[-6.291069978922995, 106.87165260314941],[-6.289534327893514, 106.87130928039551],[-6.2883399295120554, 106.87079429626465],[-6.2871455283868585, 106.87105178833008]], "distance_metres": [2401.4994943255792]}', 2401.4994943256, 'N'),
(6, '1', '2', '{"nodes": ["1-2"], "coordinates": [[-6.2871455283868585,106.87105178833008],[-6.2883399295120554,106.87079429626465],[-6.289534327893514,106.87130928039551],[-6.291069978922995,106.87165260314941],[-6.292264371031179,106.87199592590332],[-6.293629387221669,106.87216758728027],[-6.295250339289435,106.87191009521484],[-6.297127224837116,106.87139511108398],[-6.298662853420736,106.87070846557617],[-6.29994254043689,106.86959266662598],[-6.3017340969582945,106.86847686767578],[-6.303099088251034,106.8669319152832],[-6.306426239477426,106.86521530151367]], "distance_metres": [2401.4994943255792]}', 2401.4994943256, 'N'),
(7, '0', '4', '{"nodes":["0-4"],"coordinates":[[-6.284415458372,106.91019058228],[-6.2847567179074,106.90710067749],[-6.285097977219,106.9033241272],[-6.2854392363067,106.89971923828]],"distance_metres":[1162.7377570524]}', 1162.7377570524, 'Y'),
(8, '4', '1', '{"nodes":["4-1"],"coordinates":[[-6.2854392363067,106.89971923828],[-6.2874867861312,106.89783096313],[-6.2891930714931,106.89594268799],[-6.2900462120741,106.89302444458],[-6.291069978923,106.88976287842],[-6.291069978923,106.88735961914],[-6.291069978923,106.88478469849],[-6.2905580957506,106.88186645508],[-6.2890224432089,106.88014984131],[-6.2890224432089,106.87791824341],[-6.2890224432089,106.87585830688],[-6.2881693009479,106.87345504761],[-6.2871455283869,106.87105178833]],"distance_metres":[3482.7615937113]}', 3482.7615937113, 'Y'),
(9, '1', '4', '{"nodes":["1-4"],"coordinates":[[-6.2871455283869,106.87105178833],[-6.2881693009479,106.87345504761],[-6.2890224432089,106.87585830688],[-6.2890224432089,106.87791824341],[-6.2890224432089,106.88014984131],[-6.2905580957506,106.88186645508],[-6.291069978923,106.88478469849],[-6.291069978923,106.88735961914],[-6.291069978923,106.88976287842],[-6.2900462120741,106.89302444458],[-6.2891930714931,106.89594268799],[-6.2874867861312,106.89783096313],[-6.2854392363067,106.89971923828]],"distance_metres":[3482.7615937113]}', 3482.7615937113, 'Y'),
(10, '4', '0', '{"nodes":["4-0"],"coordinates":[[-6.2854392363067,106.89971923828],[-6.285097977219,106.9033241272],[-6.2847567179074,106.90710067749],[-6.284415458372,106.91019058228]],"distance_metres":[1162.7377570524]}', 1162.7377570524, 'Y'),
(11, '4', '5', '{"nodes":["4-5"],"coordinates":[[-6.2854392363067,106.89971923828],[-6.2874867861312,106.89783096313]],"distance_metres":[308.79315011167]}', 308.79315011167, 'Y'),
(12, '5', '1', '{"nodes":["5-1"],"coordinates":[[-6.2874867861312,106.89783096313],[-6.2891930714931,106.89594268799],[-6.2900462120741,106.89302444458],[-6.291069978923,106.88976287842],[-6.291069978923,106.88735961914],[-6.291069978923,106.88478469849],[-6.2905580957506,106.88186645508],[-6.2890224432089,106.88014984131],[-6.2890224432089,106.87791824341],[-6.2890224432089,106.87585830688],[-6.2881693009479,106.87345504761],[-6.2871455283869,106.87105178833]],"distance_metres":[3173.9684435378]}', 3173.9684435378, 'Y'),
(13, '1', '5', '{"nodes":["1-5"],"coordinates":[[-6.2871455283869,106.87105178833],[-6.2881693009479,106.87345504761],[-6.2890224432089,106.87585830688],[-6.2890224432089,106.87791824341],[-6.2890224432089,106.88014984131],[-6.2905580957506,106.88186645508],[-6.291069978923,106.88478469849],[-6.291069978923,106.88735961914],[-6.291069978923,106.88976287842],[-6.2900462120741,106.89302444458],[-6.2891930714931,106.89594268799],[-6.2874867861312,106.89783096313]],"distance_metres":[3173.9684435378]}', 3173.9684435378, 'Y'),
(14, '5', '4', '{"nodes":["5-4"],"coordinates":[[-6.2874867861312,106.89783096313],[-6.2854392363067,106.89971923828]],"distance_metres":[308.79315011167]}', 308.79315011167, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE IF NOT EXISTS `sekolah` (
  `id` int(10) NOT NULL,
  `tujuan` varchar(50) NOT NULL,
  `koordinat` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`id`, `tujuan`, `koordinat`) VALUES
(1, 'SMK 123', '-6.290046212074101, 106.90074920654297'),
(2, 'SMK 456', '-6.272983134659221, 106.8581771850586'),
(3, 'SMP 555', '-6.291923116423261, 106.85474395751953');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `angkutan_umum`
--
ALTER TABLE `angkutan_umum`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `graph`
--
ALTER TABLE `graph`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `angkutan_umum`
--
ALTER TABLE `angkutan_umum`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `graph`
--
ALTER TABLE `graph`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `sekolah`
--
ALTER TABLE `sekolah`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;--
-- Database: `kucex`
--

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `Id_Order` int(20) NOT NULL,
  `Alamat_Order` varchar(100) NOT NULL,
  `Waktu_Order` varchar(50) NOT NULL,
  `Waktu_Selesai` varchar(50) NOT NULL,
  `Berat_Pakaian` varchar(20) NOT NULL,
  `Harga` varchar(50) NOT NULL,
  `Ongkir` varchar(50) NOT NULL,
  `Total` varchar(50) NOT NULL,
  `Durasi` varchar(50) NOT NULL,
  `Jarak` varchar(50) NOT NULL,
  `Status` varchar(50) NOT NULL,
  `Id_User` varchar(20) NOT NULL,
  `Id_Outlet` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`Id_Order`, `Alamat_Order`, `Waktu_Order`, `Waktu_Selesai`, `Berat_Pakaian`, `Harga`, `Ongkir`, `Total`, `Durasi`, `Jarak`, `Status`, `Id_User`, `Id_Outlet`) VALUES
(7, 'Jl. Riung Wangi III, Cisaranten kidul, gedebage', '2017-06-05 11:28 am Senin', '2017-06-06 11:28 am Selasa', '0', '0', '', '', '17 mins', '4.5', 'Order', 'Pelanggan0001', 'Outlet0003'),
(8, 'Jl. Cisaranten Kulon No.51,Cisaranten kulon,  arcamanik', '2017-06-08 01:55 pm Kamis', '2017-06-09 12:59 pm Jumat', '10 Kg', '70000', '15000', '85000', '6 mins', '1.7', 'Selesai', 'Pelanggan0001', 'Outlet0002'),
(9, 'Jl. Arcamanik Sindanglaya No.22, Pasir Impun, mandajati', '2017-06-05 11:29 am Senin', '2017-06-06 11:29 am Selasa', '0', '0', '', '', '6 mins', '1.9', 'Order', 'Pelanggan0001', 'Outlet0001'),
(10, 'Jl. Kawaluyaan Indah XIIA No.22 Jati sari, Buahbatu', '2017-06-05 12:27 pm Senin', '2017-06-06 09:24 am Selasa', '10 Kg', '70000', '15000', '85000', '16 mins', '4.6', 'Selesai', 'Pelanggan0001', 'Outlet0002'),
(11, 'Jl. Rancasawo No.10Margasari, Buahbatu', '2017-06-05 11:29 am Senin', '2017-06-06 11:29 am Selasa', '0', '0', '', '', '7 mins', '2.0', 'Order', 'Pelanggan0001', 'Outlet0003'),
(12, 'Jl. Banyuwangi Asri, Antapani kidul, Antapani', '2017-06-15 02:54 pm Kamis', '2017-06-16 02:54 pm Jumat', '5 kg', '35000', '1500', '36500', '11 mins', '3.2', 'Proses', 'Pelanggan0001', 'Outlet0002'),
(13, 'jl. batik jogja no 10 Sukaluyu cibeunying kaler bandung', '2017-06-05 11:49 am Senin', '2017-06-06 11:49 am Selasa', '0', '0', '', '', '22 mins', '7.4', 'Order', 'Pelanggan0001', 'Outlet0002'),
(15, 'jl. batik jogja no 10 Sukaluyu cibeunying kaler bandung', '2017-06-09 12:59 pm Jumat', '2017-06-10 12:59 pm Sabtu', '2 Kg', '14000', '3000', '17000', '22 mins', '7.4', 'Proses', 'Pelanggan0002', 'Outlet0002'),
(17, 'jl jakarta no 28 kebon waru', '2017-06-05 12:32 pm Senin', '2017-06-06 12:32 pm Selasa', '0', '0', '', '', '12 mins', '4.4', 'Order', 'Pelanggan0002', 'Outlet0002'),
(18, 'Jl. Riung Wangi III Cisaranten kidul, gedebage', '2017-06-07 07:07 am Rabu', '2017-06-08 07:07 am Kamis', '0', '0', '', '', '17 mins', '4.5', 'Proses', 'Pelanggan0002', 'Outlet0003'),
(20, 'Jl. Arcamanik Sindanglaya No.22, Pasir Impun, mandajati', '2017-06-08 01:00 pm Kamis', '2017-06-09 01:00 pm Jumat', '0', '0', '', '', '6 mins', '1.9', 'Order', 'Pelanggan0002', 'Outlet0001'),
(21, 'Jl. Arcamanik Sindanglaya No.22, Pasir Impun, mandajati', '2017-06-08 01:02 pm Kamis', '2017-06-09 01:02 pm Jumat', '0', '0', '', '', '9 mins', '3.2', 'Order', 'Pelanggan0001', 'Outlet0002'),
(22, 'jl. batik jogja no 10 Sukaluyu cibeunying kaler bandung', '2017-06-08 01:04 pm Kamis', '2017-06-09 01:04 pm Jumat', '0', '0', '', '', '24 mins', '7.7', 'Order', 'Pelanggan0002', 'Outlet0001'),
(23, 'Jl. Rumah Sakit No.13 Sukamulya Ujung Berung', '2017-06-15 02:10 pm Kamis', '2017-06-16 02:10 pm Jumat', '0', '0', '', '', '6 mins', '1.9', 'Order', 'Pelanggan0003', 'Outlet0001'),
(24, 'Jl.jakarta. no 48 kebonwaru bandung', '2017-06-15 02:58 pm Kamis', '2017-06-16 02:58 pm Jumat', '0', '0', '', '', '10 mins', '3.9', 'Order', 'Pelanggan0001', 'Outlet0002'),
(25, 'jl margahayu raya blook s2 no.5 bandung', '2017-06-15 03:10 pm Kamis', '2017-06-16 03:10 pm Jumat', '5 kg', '35000', '1500', '36500', '4 mins', '1.1', 'Proses', 'Pelanggan0004', 'Outlet0003'),
(26, 'Jl.jakarta. no 48 kebonwaru bandung', '2017-06-15 03:12 pm Kamis', '2017-06-16 03:12 pm Jumat', '5 Kg', '35000', '1500', '36500', '10 mins', '3.9', 'Proses', 'Pelanggan0004', 'Outlet0002'),
(27, 'jl. batik jogja no 10 Sukaluyu cibeunying kaler bandung', '2017-07-11 06:41 pm Selasa', '2017-07-11 06:44 pm Selasa', '10 Kg', '70000', '15000', '85000', '22 mins', '7.4', 'Selesai', 'Pelanggan0005', 'Outlet0002'),
(28, 'Jl. Adi Flora Raya No.7, Rancabolang, Gedebage', '2017-07-14 01:47 pm Jumat', '2017-07-15 01:47 pm Sabtu', '0', '0', '', '', '1 min', '', 'Order', 'Pelanggan0001', 'Outlet0004'),
(29, 'Jl. Riung Wangi III, Cisaranten kidul, gedebage', '2017-07-14 01:48 pm Jumat', '2017-07-15 01:48 pm Sabtu', '0', '0', '', '', '16 mins', '4.5', 'Order', 'Pelanggan0001', 'Outlet0003'),
(31, 'Jl. Cisaranten Kulon No.51,Cisaranten kulon,  arcamanik', '2017-07-15 08:56 am Sabtu', '2017-07-16 08:56 am Minggu', '0', '0', '', '', '12 mins', '3.6', 'Order', 'Pelanggan0001', 'Outlet0001'),
(32, 'Jl. Arcamanik Sindanglaya No.22, Pasir Impun, mandajati', '2017-07-15 08:59 am Sabtu', '2017-07-16 08:59 am Minggu', '0', '0', '', '', '9 mins', '3.2', 'Order', 'Pelanggan0001', 'Outlet0002'),
(33, 'Jl. Kawaluyaan Indah XIIA No.22 Jati sari, Buahbatu', '2017-07-15 09:02 am Sabtu', '2017-07-16 09:02 am Minggu', '0', '0', '', '', '18 mins', '7.6', 'Order', 'Pelanggan0001', 'Outlet0003'),
(34, 'Jl. Rancasawo No.10Margasari, Buahbatu', '2017-07-15 09:07 am Sabtu', '2017-07-16 09:07 am Minggu', '0', '0', '', '', '8 mins', '2.4', 'Order', 'Pelanggan0001', 'Outlet0004'),
(35, 'Jl. Banyuwangi Asri, Antapani kidul, Antapani', '2017-07-15 09:11 am Sabtu', '2017-07-16 09:11 am Minggu', '0', '0', '', '', '11 mins', '3.2', 'Order', 'Pelanggan0001', 'Outlet0002'),
(36, 'Jl. Banyuwangi Asri,Antapani kidul, Antapani', '2017-07-15 09:12 am Sabtu', '2017-07-16 09:12 am Minggu', '0', '0', '', '', '24 mins', '8.9', 'Order', 'Pelanggan0001', 'Outlet0003'),
(37, 'Jl. Banyuwangi Asri,Antapani kidul, Antapani', '2017-07-15 09:14 am Sabtu', '2017-07-16 09:14 am Minggu', '0', '0', '', '', '24 mins', '8.9', 'Order', 'Pelanggan0001', 'Outlet0003'),
(38, 'Jl. Banyuwangi Asri,Antapani kidul, Antapani', '2017-07-15 09:25 am Sabtu', '2017-07-16 09:25 am Minggu', '0', '0', '', '', '26 mins', '9.0', 'Order', 'Pelanggan0001', 'Outlet0004'),
(39, 'Jl. Riung Wangi III,Cisaranten kidul, gedebage', '2017-07-15 09:30 am Sabtu', '2017-07-16 09:30 am Minggu', '0', '0', '', '', '19 mins', '5.7', 'Order', 'Pelanggan0001', 'Outlet0004'),
(40, 'Jl. Cisokan, Sukamaju, Cibeunying Kidul', '2017-07-18 09:52 am Selasa', '2017-07-19 09:52 am Rabu', '0', '0', '', '', '16 mins', '5.6', 'Order', 'Pelanggan0001', 'Outlet0002'),
(41, 'Jl. Rancabolang, Margasari, Buahbatu', '2017-07-18 09:52 am Selasa', '2017-07-19 09:52 am Rabu', '0', '0', '', '', '5 mins', '1.7', 'Order', 'Pelanggan0001', 'Outlet0003'),
(42, 'Jl. Sukamulya, Sukagalih, Sukajadi', '2017-07-18 09:52 am Selasa', '2017-07-19 09:52 am Rabu', '0', '0', '', '', '13 mins', '3.4', 'Order', 'Pelanggan0001', 'Outlet0005'),
(43, 'Jl. A.H. Nasution, Sindang Jaya,Mandalajati', '2017-07-18 09:52 am Selasa', '2017-07-19 09:52 am Rabu', '0', '0', '', '', '4 mins', '1.4', 'Order', 'Pelanggan0001', 'Outlet0001'),
(44, 'Jl. Laswi, Cibangkong, Batununggal', '2017-07-18 09:53 am Selasa', '2017-07-19 09:53 am Rabu', '0', '0', '', '', '22 mins', '8.2', 'Order', 'Pelanggan0001', 'Outlet0002'),
(45, 'Jl. Rumah Sakit, Pakemitan, Cinambo', '2017-07-18 09:53 am Selasa', '2017-07-19 09:53 am Rabu', '0', '0', '', '', '9 mins', '2.8', 'Order', 'Pelanggan0001', 'Outlet0001'),
(46, 'Jl. PH.H. Mustofa, Pasirlayung, Cibeunying Kidul', '2017-07-18 09:53 am Selasa', '2017-07-19 09:53 am Rabu', '0', '0', '', '', '12 mins', '4.5', 'Order', 'Pelanggan0001', 'Outlet0002');

-- --------------------------------------------------------

--
-- Table structure for table `outlet`
--

CREATE TABLE IF NOT EXISTS `outlet` (
  `Id_Outlet` varchar(20) NOT NULL,
  `Nama_Outlet` varchar(50) NOT NULL,
  `Alamat_Outlet` varchar(100) NOT NULL,
  `Email_Outlet` varchar(50) NOT NULL,
  `Nomor_Tlp_Outlet` varchar(20) NOT NULL,
  `Flag` varchar(1) NOT NULL,
  `Id_User` varchar(20) NOT NULL,
  `Lat` varchar(50) NOT NULL,
  `Longt` varchar(50) NOT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outlet`
--

INSERT INTO `outlet` (`Id_Outlet`, `Nama_Outlet`, `Alamat_Outlet`, `Email_Outlet`, `Nomor_Tlp_Outlet`, `Flag`, `Id_User`, `Lat`, `Longt`, `Status`) VALUES
('Outlet0001', 'Zonasi kucex Cijambe', 'Jl. Cijambe No.45, Pasir Endah, Ujung Berung, Kota Bandung, Jawa Barat', 'zonasikucex@gmail.com', '085776747484', '1', 'Outlet0001', '-6.906181', '107.691090', 'Kosong'),
('Outlet0002', 'Zonasi Kucex Arcamanik Endah', 'Jl. Arcamanik Endah No.62, Sukamiskin, Arcamanik, Kota Bandung, Jawa Barat', 'zonasikucex@gmail.com', '085776747484', '1', 'Outlet0002', '-6.919661', '107.673046', 'Kosong'),
('Outlet0003', 'Zonasi Kucex Tata Surya', 'Jl. Tata Surya, Manjahlega, Rancasari, Kota Bandung, Jawa Bara', 'zonasikucex@gmail.com', '(022) 77877076', '1', 'Outlet0003', '-6.944692', '107.666848', 'Kosong'),
('Outlet0004', 'Zonasi kucex Adi Flora', 'Jl. Adi flora raya no.7, Rancabolang, Gedebage bandung', 'zonasikucex@gmail.com', '0812-2513-712', '1', 'Outlet0004', '-6.964174', '107.687654', 'Kosong'),
('Outlet0005', 'Zonasi kucex Sariasih', 'Jl. Sariasih Blok 3 No.24, Sarijadi, Sukasari, Kota Bandung, Jawa Barat', 'zonasikucex@gmail.com', '0895-3690-5400', '1', 'Outlet0005', '-6.874705', '107.575219', 'Kosong');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Id_User` varchar(20) NOT NULL,
  `Nama_Lengkap` varchar(50) NOT NULL,
  `Alamat_Lengkap` varchar(100) NOT NULL,
  `Email_User` varchar(50) NOT NULL,
  `Nomor_Tlp` varchar(20) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Level` varchar(50) NOT NULL,
  `Flag` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id_User`, `Nama_Lengkap`, `Alamat_Lengkap`, `Email_User`, `Nomor_Tlp`, `Username`, `Password`, `Level`, `Flag`) VALUES
('1', 'Admin Zonasi Kucex', 'zonasi Kucex', 'zonasikucex@gmail.com', '--', 'adminzonasi', 'zonasi13', 'Admin', '1'),
('2', 'Admin Zonasi Kucex', 'zonasi Kucex', 'zonasikucex@gmail.com', '--', 'adminkucex', 'kucex13', 'Admin', '1'),
('Outlet0001', 'Zonasi kucex Cijambe', 'Jl. Cijambe No.45, Pasir Endah, Ujung Berung, Kota Bandung, Jawa Barat', 'zonasikucex@gmail.com', '085776747484', 'Cijambe kucex', '13', 'Outlet', '1'),
('Outlet0002', 'Zonasi Kucex Arcamanik Endah', 'Jl. Arcamanik Endah No.62, Sukamiskin, Arcamanik, Kota Bandung, Jawa Barat', 'zonasikucex@gmail.com', '085776747484', 'Arcamanik endah kucex', '13', 'Outlet', '1'),
('Outlet0003', 'Zonasi Kucex Tata Surya', 'Jl. Tata Surya, Manjahlega, Rancasari, Kota Bandung, Jawa Bara', 'zonasikucex@gmail.com', '(022) 77877077', 'Tata surya kucex', '13', 'Outlet', '1'),
('Outlet0004', 'Zonasi kucex Adi Flora', 'Jl. Adi flora raya no.7, Rancabolang, Gedebage bandung', 'zonasikucex@gmail.com', '0812-2513-712', 'Adi flora kucex', '13', 'Outlet', '1'),
('Outlet0005', 'Zonasi kucex Sariasih', 'Jl. Sariasih Blok 3 No.24, Sarijadi, Sukasari, Kota Bandung, Jawa Barat', 'zonasikucex@gmail.com', '0895-3690-5400', 'Sariasih kucex', '13', 'Outlet', '1'),
('Pelanggan0001', 'Jejen Jaenudin', 'jl.batik jogja no 20 sukaluyu bandung', 'jejenjaenudin@gmail.com', '085776747484', 'jejen31', '31', 'Pelanggan', '1'),
('Pelanggan0002', 'cepy', 'jl. batik jogja no 10 Sukaluyu cibeunying kaler bandung', 'cepy@gmail.com', '098765', 'cepy', '13', 'Pelanggan', '1'),
('Pelanggan0003', 'khaerudin', 'jl. kiarancondong no.6 bandung', 'khaerudin@gmail.com', '098765', 'udin', 'udin13', 'Pelanggan', '1'),
('Pelanggan0004', 'bu lilis', 'jl jakarta no 28 kebon waru', 'Jejenjaenudin@gmail.com', '085776747485', 'bulilis', '13', 'Pelanggan', '1'),
('Pelanggan0005', 'didik', 'jl. batik jogja no 10 Sukaluyu cibeunying kaler bandung', 'didikjkhgv@yahoo.com', '08212207865', 'didiik', 'gelas', 'Pelanggan', '1');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_order_user_outlet`
--
CREATE TABLE IF NOT EXISTS `v_order_user_outlet` (
`Nama_Lengkap` varchar(50)
,`Id_User` varchar(20)
,`Alamat_Order` varchar(100)
,`Waktu_Order` varchar(50)
,`Waktu_Selesai` varchar(50)
,`Status` varchar(50)
,`Nama_Outlet` varchar(50)
,`Id_Outlet` varchar(20)
,`Id_Order` int(20)
,`Berat_Pakaian` varchar(20)
,`Harga` varchar(50)
,`Ongkir` varchar(50)
,`Total` varchar(50)
,`Nomor_Tlp` varchar(20)
,`Alamat_Outlet` varchar(100)
,`Email_Outlet` varchar(50)
,`Nomor_Tlp_Outlet` varchar(20)
,`Lat` varchar(50)
,`Longt` varchar(50)
,`Durasi` varchar(50)
,`Jarak` varchar(50)
);

-- --------------------------------------------------------

--
-- Structure for view `v_order_user_outlet`
--
DROP TABLE IF EXISTS `v_order_user_outlet`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_order_user_outlet` AS select `user`.`Nama_Lengkap` AS `Nama_Lengkap`,`user`.`Id_User` AS `Id_User`,`order`.`Alamat_Order` AS `Alamat_Order`,`order`.`Waktu_Order` AS `Waktu_Order`,`order`.`Waktu_Selesai` AS `Waktu_Selesai`,`order`.`Status` AS `Status`,`outlet`.`Nama_Outlet` AS `Nama_Outlet`,`outlet`.`Id_Outlet` AS `Id_Outlet`,`order`.`Id_Order` AS `Id_Order`,`order`.`Berat_Pakaian` AS `Berat_Pakaian`,`order`.`Harga` AS `Harga`,`order`.`Ongkir` AS `Ongkir`,`order`.`Total` AS `Total`,`user`.`Nomor_Tlp` AS `Nomor_Tlp`,`outlet`.`Alamat_Outlet` AS `Alamat_Outlet`,`outlet`.`Email_Outlet` AS `Email_Outlet`,`outlet`.`Nomor_Tlp_Outlet` AS `Nomor_Tlp_Outlet`,`outlet`.`Lat` AS `Lat`,`outlet`.`Longt` AS `Longt`,`order`.`Durasi` AS `Durasi`,`order`.`Jarak` AS `Jarak` from ((`outlet` join `order` on((`order`.`Id_Outlet` = `outlet`.`Id_Outlet`))) join `user` on((`order`.`Id_User` = `user`.`Id_User`)));

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`Id_Order`), ADD KEY `Id_User` (`Id_User`), ADD KEY `Id_Outlet` (`Id_Outlet`);

--
-- Indexes for table `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`Id_Outlet`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id_User`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `Id_Order` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`Id_User`) REFERENCES `user` (`Id_User`),
ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`Id_Outlet`) REFERENCES `outlet` (`Id_Outlet`);
--
-- Database: `lokasii`
--

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE IF NOT EXISTS `lokasi` (
  `idlokasi` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `lat` varchar(50) DEFAULT NULL,
  `lng` varchar(50) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`idlokasi`, `nama`, `lat`, `lng`) VALUES
(1, 'STMIK AKAKOM', '-7.794847518477426', '110.4063911166993'),
(2, 'Universitas Negeri Yogyakarta', '-7.776393949238045', '110.38742253454598'),
(3, 'Universitas Gajah Mada', '-7.772354465134464', '110.37733742864998'),
(4, 'Universitas Ahmad Dahlan', '-7.810239043860753', '110.38896748693855');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`idlokasi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `idlokasi` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;--
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE IF NOT EXISTS `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` char(8) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `fakultas` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `ipk` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `fakultas`, `jurusan`, `ipk`) VALUES
(1, '1442025', 'jejen', 'Kedokteran', 'dokter', '3.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;--
-- Database: `map`
--

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE IF NOT EXISTS `lokasi` (
  `lokasi_id` int(11) NOT NULL,
  `lat` varchar(20) NOT NULL DEFAULT '0',
  `long` varchar(20) NOT NULL DEFAULT '0',
  `alamat` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`lokasi_id`, `lat`, `long`, `alamat`) VALUES
(1, '-6.917464', '107.619123', 'Bandung'),
(2, '-6.225014', '106.900447', 'Jakarta'),
(3, '-6.402484', '106.794241', 'Depok'),
(1, '-6.917464', '107.619123', 'Bandung'),
(2, '-6.225014', '106.900447', 'Jakarta'),
(3, '-6.402484', '106.794241', 'Depok'),
(1, '-6.917464', '107.619123', 'Bandung'),
(2, '-6.225014', '106.900447', 'Jakarta'),
(3, '-6.402484', '106.794241', 'Depok');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD KEY `lokasi_id` (`lokasi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `lokasi_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;--
-- Database: `maps`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `level`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

CREATE TABLE IF NOT EXISTS `cabang` (
  `id` int(11) NOT NULL,
  `nama_cabang` varchar(150) NOT NULL,
  `kabkota` int(11) NOT NULL,
  `lat` varchar(255) NOT NULL,
  `long` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabang`
--

INSERT INTO `cabang` (`id`, `nama_cabang`, `kabkota`, `lat`, `long`) VALUES
(5, 'Cabang Bandung Sukarno Hatta', 4, '-6.948209763605053', '107.60371589746092'),
(4, 'Cabang Bogor Cilebut', 1, '-6.55072450153551', '106.79886065751953'),
(6, 'Cabang Garut Cireungit', 5, '-7.238009618261152', '107.87171443569332'),
(7, 'Cabang Purwakarta Veteran', 14, '-6.53036130231053', '107.4463749206543'),
(8, 'Cabang Purwakarta Ipik Gandamanah', 14, '-6.520298893320354', '107.46182444458009'),
(9, 'Cabang Purwakarta Ahmad Yani', 14, '-6.550485513115983', '107.4376201904297'),
(10, 'Cabang Bandung Lembang', 4, '-6.811358234473121', '107.6169338234863'),
(11, 'Cabang Bandung Soreang', 4, '-7.026587517898394', '107.51668357934568'),
(12, 'Cabang Cianjur Barus', 3, '-6.782664228504837', '107.1691015700195'),
(13, 'Cabang Cianjur Ciherang', 3, '-6.796471287942675', '107.2097853163574'),
(14, 'Cabang Sukabumi Pabuaran', 2, '-6.936281699525283', '106.89029212646483'),
(15, 'Cabang Purwakarta Ciganea', 14, '-6.565833942009622', '107.43315699462892'),
(16, 'Zonasi Kucex Adi flora', 20, '-6.964174', '107.687654');

-- --------------------------------------------------------

--
-- Table structure for table `index`
--

CREATE TABLE IF NOT EXISTS `index` (
  `id` int(5) NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `index`
--

INSERT INTO `index` (`id`, `isi`) VALUES
(1, '    <div align="center"><h1>Sistem Informasi Penyebaran Menara Telkomunikasi</h1><p>&nbsp;</p><p align="left">Sistem informasi ini bertujuan untuk melihat menara&nbsp; telkomunikasi yang berada di bandar lampung berdasarkan jenis provider, adapun pembuatan sistem informasi ini adalah sebagai syarat kelulusan sebagai mahasiswa Ilmu Komputer di Universitas Tercinta, di harapakan kedepannya pembuatan istem informasi ini dapat berguna untuk kedepannya bagi adik tingkat maupun dosen, di akhir kata penulis mengucapkan banyak terima kasih kepada pembimbing yang selama ini membantu dalam pembuatan</p><p align="left">&nbsp;</p><p align="left">Best Regards</p><p align="left">&nbsp;</p><p align="left">&nbsp;</p><p align="left">&nbsp;</p><p align="left">&nbsp;</p><p align="left">Bandar Lampung</p></div>     ');

-- --------------------------------------------------------

--
-- Table structure for table `kabkota`
--

CREATE TABLE IF NOT EXISTS `kabkota` (
  `idkabkota` int(11) NOT NULL,
  `nama_kabkota` varchar(45) NOT NULL,
  `lat` varchar(45) DEFAULT NULL,
  `long` varchar(45) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kabkota`
--

INSERT INTO `kabkota` (`idkabkota`, `nama_kabkota`, `lat`, `long`) VALUES
(1, 'Kab. Bogor', '-6.562491667', '106.8191167'),
(2, 'Kab. Sukabumi', '-6.8388', '106.9593'),
(3, 'Kab. Cianjur', '-6.811812', '107.1454123'),
(4, 'Kab. Bandung', '-6.982118274', '107.5192585'),
(5, 'Kab. Garut', '-7.2483974', '107.9096516'),
(6, 'Kab. Tasikmalaya', '-7.573861111', '108.1512028'),
(7, 'Kab. Ciamis', '-7.43165', '108.4922056'),
(8, 'Kab. Kuningan', '-7.012783333', '108.5575083'),
(9, 'Kab. Cirebon', '-6.709316', '108.476571'),
(10, 'Kab. Majalengka', '-6.8340124', '108.2276311'),
(11, 'Kab. Sumedang', '-6.81545', '107.9551583'),
(12, 'Kab. Indramayu', '-6.3926946', '108.2875448'),
(13, 'Kab. Subang', '-6.5712842', '107.7596912'),
(14, 'Kab. Purwakarta', '-6.5614', '107.4438'),
(15, 'Kab. Karawang', '-6.343258333', '107.2913361'),
(16, 'Kab. Bekasi', '-6.242402', '107.113788'),
(17, 'Kab. Bandung Barat', '-6.8218192', '107.6302219'),
(18, 'Kota Bogor', '-6.589166', '106.792999'),
(19, 'Kota Sukabumi', '-6.9196', '106.9272'),
(20, 'Kota Bandung', '-6.9147444', '107.6098111'),
(21, 'Kota Cirebon', '-6.7166667', '108.5666667'),
(22, 'Kota Bekasi', '-6.2333333', '107'),
(23, 'Kota Depok', '-6.39', '106.83'),
(24, 'Kota Cimahi', '-6.8879326', '107.5552421'),
(25, 'Kota Tasikmalaya', '-7.3333333', '108.2'),
(26, 'Kota Banjar', '-7.366741', '108.544896'),
(28, 'Pangandarang', '-7.674783021804229', '108.64757142535404');

-- --------------------------------------------------------

--
-- Table structure for table `tmenaradetail`
--

CREATE TABLE IF NOT EXISTS `tmenaradetail` (
  `id_detail` int(12) NOT NULL,
  `pemilik` varchar(50) NOT NULL,
  `pengguna` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `tinggi` int(5) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=313 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmenaradetail`
--

INSERT INTO `tmenaradetail` (`id_detail`, `pemilik`, `pengguna`, `alamat`, `tinggi`, `lat`, `lng`) VALUES
(292, 'TBG', ' INDOSAT , HCPT ', 'Jl. Satelindo, Kedaung, Kemiling ', 72, -5.408836, 105.210411),
(293, 'TBG', ' TELKOMSEL', 'Jl. H Agus Salim, Kaliawi, Tanjung Karang Pusat\r\n', 12, -5.411771, 105.250656),
(294, 'TBG', ' INDOSAT ', 'Jl. Pulau Tirtayasa Perum Bukit Emas Permai, Sukabumi\r\n', 62, -5.401698, 105.313225),
(288, 'TELKOMSEL', 'TELKOMSEL ', 'Jl. Insyinyur Sutami, Way Gubrak, Panjang  ', 72, -5.431290, 105.310997),
(291, 'TELKOMSEL', '  INDOSAT , ESIA ', 'Jl. Ratu Dibalau gg Slamet, Way Dadi, Sukarame\r\n', 52, -5.357856, 105.283020),
(286, 'TELKOMSEL', '  TELKOMSEL', 'Jl. Soekarno Hatta, Panjang Utara, Panjang', 62, -5.498430, 105.331001),
(287, 'TELKOMSEL', 'TELKOMSEL, ESIA ', 'Jl. Soekarni Hatta Tanjung Karang Timur, Way Gubrak, Tanjung Karang Timur, Way Gubrak, Tanjung Karang Timur ', 62, -5.414720, 105.300003),
(285, 'TELKOMSEL', 'TELKOMSEL, HCPT', 'Jl. Selat Malaka, Panjang\r\n', 52, -5.477670, 105.320999),
(284, 'TELKOMSEL', 'TELKOMSEL, HCPT', 'Jl. Yos Sudarso 14, Way Lunik, Teluk Betung Selatan \r\n', 42, -5.455700, 105.310997),
(283, 'TELKOMSEL', ' TELKOMSEL, SMARTFREN ', 'Jl.Yos Sudarso, Bumi Waras, Teluk Betung Selatan \r\n', 15, -5.445720, 105.277000),
(282, 'TELKOMSEL', 'TELKOMSEL', 'Jl. Dewi Sartika 08, Sumur Batu, Teluk Betung Utara \r\n', 2, -5.432730, 105.260002),
(281, 'TELKOMSEL', 'TELKOMSEL', 'Jl. Ikan Hiu, Bumi Waras, Teluk Betung Selatan \r\n', 2, -5.430120, 105.263000),
(280, 'TELKOMSEL', ' TELKOMSEL', 'Jl. WR Supratman Toko Sebelah Polda, Kupang Teba, Teluk Betung Utara ', 2, -5.445220, 105.264000),
(278, 'TELKOMSEL', 'TELKOMSEL', 'Jl. Diponegoro 120, Pahoman, Teluk Betung Utara ', 2, -5.435840, 105.264000),
(279, 'TELKOMSEL', 'TELKOMSEL', 'Jl. RW Mongosidi 69, Kupang Teba, Teluk Betung Utara \r\n', 2, -5.441670, 105.258003),
(277, 'TELKOMSEL', 'TELKOMSEL', 'Jl. Diponegoro no 28, Pahoman, Teluk Betung Utara  \r\n', 2, -5.434400, 105.263000),
(276, 'TELKOMSEL', 'TELKOMSEL', 'Jl. Teuku Umar, Surabaya, Kedaton  ', 62, -5.396680, 105.258018),
(274, 'TELKOMSEL', ' TELKOMSEL', 'Jl. Pemuda Chandra Supermarket, Tanjung Agung, Tanjung Karang Timur', 6, -5.411493, 105.260422),
(275, 'TELKOMSEL', 'TELKOMSEL', 'Jl. Teuku Umar, Surabaya, Kedaton  ', 62, -5.396680, 105.258018),
(273, 'TELKOMSEL', ' TELKOMSEL', 'Jl. RA Kartini, Enggal, Tanjung Karang Pusat  ', 6, -5.419918, 105.252281),
(272, 'TELKOMSEL', ' TELKOMSEL', 'Hotel Amalia, Tanjung Karang, Tanjung Karang Psuat \r\n', 6, -5.415798, 105.258919),
(271, 'TELKOMSEL', ' TELKOMSEL', 'Gedung Simpur Plaza, Tanjung Karang Pusat ', 6, -5.412576, 105.257217),
(269, 'TELKOMSEL', 'TELKOMSEL', 'Jl. Pkor, Sukabumi \r\n', 25, -5.377813, 105.275475),
(270, 'TELKOMSEL', 'TELKOMSEL', 'Jl. Sultan Agung Blok H 28, Way Halim ', 6, -5.383000, 105.280724),
(268, 'TELKOMSEL', ' TELKOMSEL', 'JL. MRyacudu, Campang Raya, Tanjung Karang Timur \r\n', 25, -5.407642, 105.295708),
(267, 'TELKOMSEL', 'TELKOMSEL, FLEXI', 'Jl. Soekarano Hatta, Kalibalau , Sukabumi   ', 42, -5.399118, 105.289352),
(266, 'TELKOMSEL', 'TELKOMSEL', 'Jl. Soekarano Hatta, Way Lunik, Teluk Betung Selatan  ', 20, -5.455233, 105.315407),
(265, 'TELKOMSEL', 'TELKOMSEL', 'Jl. RA Kartini, Gotong Royong, Tanjung Karang Pusat  \r\n', 6, -5.418313, 105.252769),
(264, 'TELKOMSEL', 'TELKOMSEL', ' Jl. MH Tahmrin, Rawa Laut  Tanjung Karang Timur    ', 6, -5.424702, 105.255600),
(263, 'TELKOMSEL', ' TELKOMSEL', 'Jl. Rahman, Batu Putuk, Teluk Betung Utara', 25, -5.436593, 105.223572),
(262, 'TELKOMSEL', ' TELKOMSEL, FLEXI', 'Jl. Wolter Mongonsidi, Gotong Royong, Tanjung Karang Pusat ', 62, -5.425798, 105.249832),
(260, 'TELKOMSEL', ' TELKOMSEL', 'Jl. Cendana Rawa Laut, Tanjung Karang Timur, ', 25, -5.427042, 105.264618),
(261, 'TELKOMSEL', 'TELKOMSEL', 'Jl. Cut Nya Dien, Enggal, Tanjung Karang Pusat ', 6, -5.418735, 105.247490),
(259, 'TELKOMSEL', ' TELKOMSEL', '\r\nJl. Gajah Mada no 9, Tanjung Agung, Tanjung Karang Timur ', 6, -5.418515, 105.268341),
(258, 'TELKOMSEL', ' TELKOMSEL ', 'Jl. Gajah Mada, Tanjung AGung,  Tanjung Karang Timur', 6, -5.416520, 105.268135),
(257, 'XL', 'TELKOMSEL, ESIA ', 'Jl. Merpati, Tanjung Agung, Tanjung Karnag TImur  ', 52, -5.408824, 105.267212),
(256, 'TELKOMSEL', ' TELKOMSEL ', 'jL. ZA Pagar Alam, Labuhan dalam, Tanjung Seneng\r\n', 6, -5.380388, 105.254929),
(255, 'TELKOMSEL', 'TELKOMSEL', 'jL. Kimaja no3 , Way Halim, Kedaton ', 2, -5.379950, 105.272011),
(254, 'XL', 'TELKOMSEL, HCPT', 'Jl. IR Sutami, Campang Raya, Tanjung Karang Timur ', 52, -5.432102, 105.326271),
(253, 'TELKOMSEL', 'TELKOMSEL', 'Jl. Tirtayasa, Campang Raya, Tanjung Karnag Timur', 52, -5.418360, 105.336060),
(252, 'TELKOMSEL', 'TELKOMSEL', 'Jl. Letjen Ryacudu, Sukabumi, Bumi Menanti ', 52, -5.407564, 105.318375),
(251, 'TELKOMSEL', 'TELKOMSEL, FLEXI', '\r\nJl. Tirtayasa, Sukarame ', 52, -5.397851, 105.306305),
(250, 'TELKOMSEL', 'TELKOMSEL, FLEXI ', 'Jl. Pulau Tegal, Way DADI, Sukarame  \r\n', 52, -5.384953, 105.292343),
(249, 'TELKOMSEL', 'TELKOMSEL, FLEXI', 'Jl. Pulau Damar, Way Dadi, Sukarame  \r\n', 52, -5.371352, 105.290054),
(248, 'TELKOMSEL', ' TELKOMSEL', 'Jl. Jend A Yani, Gotong Royong, Tanjung Karang Pusat \r\n', 6, -5.421791, 105.254623),
(247, 'TELKOMSEL', 'TELKOMSEL', 'Jl. Kartini, Tanjung Karang Pusat, Bandar Lampung ', 6, -5.408926, 105.256767),
(246, 'TELKOMSEL', 'TELKOMSEL ', 'Jl. Imam Bonjol, Tanjung Karang Pusat ', 6, -5.406515, 105.253563),
(245, 'TELKOMSEL', 'TELKOMSEL', 'Jl. H Agus Salim', 42, -5.413508, 105.243347),
(243, 'TELKOMSEL', 'TELKOMSEL, FLEXI', 'Jl. Sultan Haji, Way Halim, Sukarame ', 42, -5.368492, 105.267647),
(244, 'TELKOMSEL', ' TELKOMSEL, FLEXI', 'Jl. Pulau Buru, Way Halim Permai, Way Halim ', 42, -5.388682, 105.272400),
(236, 'XL', ' XL', 'Jl. Teuku Umar, Tanjung Karang, Tanjung Karang Pusat  \r\n', 6, -5.393907, 105.261665),
(234, 'XL', 'XL', 'Jl. Pkor Sukabumi  ', 6, -5.377699, 105.275871),
(235, 'XL', ' XL', 'Jl. Sultan Agung no 8, Sukabumi ', 2, -5.382717, 105.276833),
(233, 'XL', 'XL', 'Jl. Jendral Suprapto Tajung Karang, Tanjung Karang Pusat   \r\n', 62, -5.413837, 105.256622),
(232, 'XL', ' XL', 'Hotel Anugrah, Rawa laut, Tanjung Karang Timur ', 6, -5.420926, 105.257599),
(231, 'XL', 'XL', 'Jl. R A Kartini, Enggal, Tanjung Karang Pusat ', 6, -5.419617, 105.252335),
(230, 'XL', ' XL   ', 'Jl. R A Kartini, Enggal, Tanjung Karang Pusat ', 6, -5.416129, 105.253021),
(229, 'XL', 'XL ', 'Jl. Pemuda Chandra Supermarket, Tanjung Agung, Tanjung Karang Timur  ', 6, -5.411749, 105.260788),
(228, 'XL', '  XL ', 'Jl. Patimura no 49, Kupang Teba, Teluk Betung Utara ', 2, -5.440690, 105.264999),
(226, 'XL', ' XL', 'Jl. RW Mongosidi 69, Kupang Teba, Teluk Betung Utara ', 2, -5.441780, 105.258003),
(227, 'XL', ' XL', 'Jl  Dr Warsito, Sumur Batu, Teluk Betung Utara  ', 42, -5.439500, 105.255997),
(224, 'XL', ' XL', 'Jl. Yos Sudarso 92, Bumi Waras, Teluk Betung Selatan  \r\n', 2, -5.446100, 105.274002),
(223, 'XL', 'XL', 'Jl. Yos Sudarso 14, Bumi Waras, Teluk Betung Selatan   \r\n', 42, -5.455650, 105.310997),
(222, 'PROTELINDO', 'XL , CERIA ', 'Jl. Bahari Pasar Panjang Yos Sudarso, Panjang \r\n', 42, -5.473340, 105.320999),
(220, 'XL', 'XL', 'JL. Soekarno Hatta, Panjang Utara, Panjang ', 42, -5.498010, 105.332001),
(221, 'XL', ' XL', 'Jl. Yos Sudarso 40, Bumi Waras, Teluk Betung Selatan   ', 2, -5.481090, 105.324997),
(218, 'PROTELINDO', 'HCPT', 'Jl.KH agus Salim, Ketapang, Panjang  \r\n', 32, -5.439330, 105.296997),
(219, 'XL', '  XL , HCPT ', '\r\nJl. Soekarno Hatta Gn Balau, Way Gubrak, Tanjung Karang Timur', 42, -5.430640, 105.296997),
(217, 'PROTELINDO', 'HCPT  ', 'Jl. Insiyur SUtami, Way Gubrak, Tanjung Karang Timur  ', 42, -5.439370, 105.319000),
(216, 'PROTELINDO', ' HCPT , ESIA  ', 'Jl. Gatot Subroto, Garuntang, Teluk Betung Selatan ', 42, -5.442130, 105.291000),
(26, 'PROTELINDO', ' TELKOMSEL', 'Jl. Ikan Bawal 85, Bumi Waras, Teluk Betung Selatan', 2, -5.448300, 105.265999),
(27, 'PROTELINDO', 'Smartfren ', '\r\nJl. Rw Mongonsidi Sumur Batu, Teluk Betung Utara', 2, -5.435920, 105.254997),
(22, 'XL', 'ESIA , SMARTFREN ', 'Jl. Antasari Tanjung Baru, SukaBumi  ', 52, -5.398030, 105.286423),
(29, 'XL', 'SMARTFREN ', 'Jalan Pemancar Gunung Balau, Way Gubrak, Panjang', 92, -5.430470, 105.308998),
(31, 'HCPT', 'HCPT', 'Jl. Z.A Pagar Alam, Rajabasa HCPT   HCPT  ', 6, -5.369644, 105.231270),
(30, 'HCPT', ' HCPT', 'Jl. Z.A Pagar Alam Gedong Meneng, Rajabasa   ', 6, -5.376075, 105.246857),
(32, 'HCPT', 'HCPT', '\r\n\r\nJl. Imam Bonjol, Langkapura, Kemiling    ', 42, -5.390810, 105.227997),
(33, 'HCPT', 'HCPT', '\r\nJl. R.I Kesuma, Suka Jawa, Kemiling   ', 52, -5.405572, 105.221542),
(34, 'HCPT', ' HCPT', '\r\nJl. Z.A Pagar Alam, Sidorahayu, Kedaton     \r\n', 25, -5.383688, 105.258659),
(35, 'HCPT', 'HCPT', '\r\nHotel Grande, Enggal  Tanjung Karang Pusat \r\n', 6, -5.418999, 105.258926),
(36, 'HCPT', 'HCPT', '\r\n\r\nJl. ZA Pagar Alam, Kedaton  HCPT HCPT ', 1, -5.378690, 105.251961),
(37, 'HCPT', 'HCPT', '\r\n\r\nJl. Way Sekampung, Rawa Laut, Tanjung Karang Timur   HCPT HCPT', 25, -5.427162, 105.267502),
(38, 'HCPT', 'HCPT', '\r\nJl. Dr Susilo RS Bunda ASY-SYIFA, Pahoman, Tanjung Karang Pusat  ', 6, -5.430026, 105.271172),
(40, 'HCPT', 'HCPT', '\r\nJl. Ahmad Yani, Rawa Laut, Tanjung Karang Timur ', 6, -5.422025, 105.256691),
(39, 'HCPT', ' HCPT', '\r\nJl. Diponegoro No 31 H-1 Lungsir, Tanjung Karang Timur  ', 6, -5.427767, 105.260353),
(41, 'HCPT', ' HCPT', '\r\nJl. RA Kartini, Gotong Royong, Tanjung Karang Pusat ', 6, -5.418635, 105.252914),
(42, 'HCPT', 'HCPT', '\r\nJl. R.A Kartini, Enggal, Tanjung Karang Pusat  ', 6, -5.416499, 105.252739),
(44, 'HCPT', '  HCPT   ', '\r\nGedung Simpur Plaza, Tanjung Karang Pusat   ', 6, -5.412393, 105.257187),
(43, 'HCPT', 'HCPT ', '\r\nGedung Simpur Plaza, Tanjung Karang Pusat      ', 6, -5.412393, 105.257187),
(46, 'HCPT', 'HCPT ', '\r\nJl. Brigjen Katamso, Tanjung Karang Pusat ', 25, -5.413019, 105.256142),
(45, 'HCPT', ' HCPT', '\r\nJl. Brigjen Katamso, Tanjung Karang Pusat  ', 6, -5.413079, 105.258347),
(48, 'HCPT', ' HCPT ', '\r\nJl. Ikan Bawal, Bumi Waras, Teluk Betung Selatan  \r\n', 2, -5.445840, 105.264999),
(47, 'HCPT', 'HCPT', '\r\n\r\nJl. Pemuda Chandra Supermarket, Tanjung Agung, Tanjung Karang Timur  ', 6, -5.411513, 105.260452),
(49, 'HCPT', 'HCPT ', '\r\nJl. Insiyur Sutami, Way Gubrak, Panjang ', 32, -5.430850, 105.311996),
(51, 'XL', ' XL , CERIA ', 'Jl.Z.A Pagar Alam, Rajabasa \r\n', 72, -5.371808, 105.238220),
(52, 'XL', ' XL', '\r\nJl. Purnawirawan, Gunung Terang, Tanjung Karang Barat \r\n', 52, -5.382268, 105.233299),
(54, 'XL', ' XL', '\r\nJl. Bung Tomo, Gedong Air, Tanjung Karang Barat  \r\n', 42, -5.402147, 105.241295),
(53, 'XL', 'XL', '\r\nJl. Soekardi Hamdani, Labuhan Ratu, Kedaton     ', 42, -5.385012, 105.249573),
(55, 'XL', ' XL', 'Jl. P Mangkubumi, Segala Midertr, Langkapura   ', 52, -5.394439, 105.236221),
(56, 'XL', ' XL , HCPT ', 'Jl. R.I Kesuma, Sususnan Baru, Kemiling    ', 42, 0.000000, 105.219780),
(57, 'XL', 'XL', 'Jl. GG Jangsih, Rajabasa', 42, -5.360120, 105.000000),
(58, 'XL', 'XL', 'Jl. RA Basyid, Labuhan Dalam, Tanjung Senang  ', 42, -5.352118, 105.263580),
(59, 'XL', 'XL , TELKOMSEL', '\r\nJl. Untung Suropati, Labuhan Ratu, Kedaton', 42, -5.364095, 105.256241),
(60, 'XL', 'XL', 'Jl. Ratu Dibalau, Tanjung Senang,', 42, -5.364291, 105.276405),
(61, 'XL', ' XL', '\r\nJL. P. Polim gg Sawo, Segala Mider, Tanjung Karang Barat  \r\n\r\n', 72, -5.393873, 105.246613),
(64, 'XL', ' XL', 'Jl. Kartini, Tanjung Karang Pusat   ', 6, 0.000000, 105.256775),
(63, 'XL', ' XL , HCPT ', '\r\nJl. H Agus Salim, Papalap 3, Tanjung Karang Pusat  \r\n\r\n', 42, -5.411411, 105.240639),
(65, 'XL', 'XL', 'Jl. H Agus Salim, Kaliawi, Tanjung Karang Pusat \r\n\r\n', 6, -5.411823, 105.250725),
(66, 'XL', ' XL', 'Jl. Raden Intan, Enggal, Tanjung Karang Pusat ', 6, -5.412636, 105.258041),
(68, 'XL', 'XL', 'Jl. Jendral Sudirman, Enggal, Tanjung Karang Pusat  \r\n\r\n ', 12, -5.422527, 105.261070),
(67, 'XL', 'XL ', 'Jl. Kapten Achmad, Enggal, Tanjung Karang Pusat \r\n\r\n', 9, -5.417500, 105.260750),
(69, 'XL', ' XL', 'Jl. Satria Raya, Harapan Jaya, Sukarame   ', 62, 0.000000, 105.301216),
(70, 'XL', 'XL ', 'Jl. Satria Raya, Harapan Jaya, Sukarame ', 52, 0.000000, 105.300766),
(71, 'XL', ' XL , HCPT  ', 'Jl. Pulau Tegal, Way Dadi, Sukarame   ', 42, 0.000000, 105.287575),
(73, 'XL', ' XL', 'Jl. Pulau Tirtayasa, Sukabumi \r\n\r\n  \r\n', 42, -5.398057, 105.303123),
(72, 'XL', ' XL', '\r\nJl. Pulau Sabesi, Sukarame 1 \r\n\r\n\r\n', 52, -5.384883, 105.298195),
(74, 'XL', 'XL , HCPT', 'Jl. Soekarno Hatta, Kalibalau, sukabumi   ', 42, 0.000000, 105.291039),
(75, 'XL', ' XL', 'Jl. ZA Pagar Alam, Kedaton\r\n\r\n\r\n', 12, -5.377161, 105.249870),
(76, 'XL', '  XL', '\r\nJl. Urip Sumoharjo,Sukabumi Kalibalau kencana   \r\n\r\n ', 6, -5.391583, 105.276962),
(78, 'XL', ' XL ', 'Komplek Vila Citra, Pajajaran, Tanjung Karang Timur \r\n', 36, -5.401183, 105.274773),
(77, 'XL', ' XL', '\r\n\r\nJl. Pangeran Antasari, Tanjung Baru, Sukabumi ', 15, -5.405376, 105.277771),
(79, 'XL', 'XL ', '\r\nJl. Kamboja, Tanjung Karang Pusat    ', 6, -5.413085, 105.261314),
(80, 'XL', 'XL', 'Hotel Bukit Randu, Tanjung Agung, Tanjung Karang Timur \r\n\r\n', 6, -5.411974, 105.263725),
(81, 'XL', 'XL', 'Hotel Bukit Randu, Tanjung Agung, Tanjung Karang Timur \r\n\r\n', 25, -5.411810, 105.263565),
(82, 'XL', '  XL', 'Jl. Gajah Mada,Tanjung Karang Timur    ', 6, 0.000000, 105.267403),
(84, 'XL', ' XL , HCPT', 'Jl. H Umar, Duren Payung\r\n', 72, -5.423606, 105.242188),
(83, 'XL', 'XL', '\r\nJl. Muhamad Yamin, Rawa Laut, Tanjung Karang Timur \r\n', 62, -5.426453, 105.266693),
(85, 'XL', '', '\r\nJl. Chairil Anwar no. 56, Enggal, Tanjung Karang Timur  \r\n\r\n   ', 6, -5.417916, 105.246086),
(86, 'XL', 'XL', 'Jl. Ikan Tenggiri, Teluk Betung    ', 6, -5.449206, 105.261887),
(87, 'XL', 'XL , HCPT ', '\r\nJl. Cipto Mangunkusumo, Kupang Tuba, Teluk Betung Utara   \r\n\r\n', 36, -5.435345, 105.269829),
(88, 'SMARTFREN', '  SMARTFREN ,   TELKOMSEL ', 'Jl. KH A Dahlan Pocoh Raya, Teluk Betung Selatan \r\n', 52, -5.438000, 105.274292),
(89, 'XL', '   XL ', '\r\nJl. SParman, Pelita, Tanjung Karang Pusat    ', 25, -5.419516, 105.256828),
(90, 'XL', ' XL  ', '\r\n\r\nJl. Soekarno Hatta Hotel Sahid, Sukaraja, Bumi Waras  \r\n\r\n', 2, -5.445963, 105.296242),
(91, 'XL', 'XL', 'Jl. Merau, Tanjung Raya, Tanjung Karang Timur ', 30, -5.426222, 105.278549),
(92, 'XL', ' XL', 'Jl. H Hayam Wuruk, Kedamain, Tanjung Karang Timur \r\n\r\n', 25, -5.411333, 105.282166),
(93, 'XL', 'XL', 'Jl. R.A Kaartini, Tanjung Karang Pusat    \r\n', 6, 0.000000, 105.253044),
(241, 'TELKOMSEL', 'TELKOMSEL', 'Jl. RA Basyid, Labuhan Dalam, Tanjung Seneng ', 42, -5.356537, 105.254959),
(242, 'TELKOMSEL', ' SMARTFREN ', 'Jl.Prof Dr. Sumantri Bojonegoro, Labuhan Ratu, Kedaton ', 62, -5.370832, 105.241997),
(96, 'TELKOMSEL', ' TELKOMSEL,   FLEXI', 'Jl. Sultan Jamil, Gedong Meneng, Rajabasa, Bandar Lampung \r\n', 52, -5.377222, 105.242462),
(240, 'TELKOMSEL', ' TELKOMSEL', 'Jl. Soekardi Hamdani, Labuhan Ratu, Kedaton ', 52, -5.384876, 105.249062),
(239, 'TELKOMSEL', ' TELKOMSEL, FLEXI', '\r\nJl. Sultan Jamil, Gedong Meneng, Rajabasa, Bandar Lampung ', 52, -5.377222, 105.242462),
(238, 'TELKOMSEL', 'TELKOMSEL, HCPT', 'Jl. Purnawiraman gg. Purnawirawan, Gunung Terang, Tanjung Karang Barat  ', 52, -5.384468, 105.232430),
(101, 'TELKOMSEL', 'TELKOMSEL, FLEXI', '\r\nJl. Pulau Buru, Way Halim Permai, Way Halim ', 42, -5.388682, 105.272400),
(102, 'TELKOMSEL', 'TELKOMSEL', 'Jl. H Agus Salim', 42, -5.413508, 105.243347),
(237, 'TELKOMSEL', ' TELKOMSEL', 'Jl. Purnawarman, Langkapura, Langkapura', 62, -5.388957, 105.224792),
(104, 'TELKOMSEL', 'TELKOMSEL', '\r\nJl. Kartini, Tanjung Karang Pusat, Bandar Lampung  \r\n', 6, -5.408926, 105.256767),
(105, 'TELKOMSEL', ' TELKOMSEL', '\r\nJl. Jend A Yani, Gotong Royong, Tanjung Karang Pusat \r\n', 6, -5.421791, 105.254623),
(106, 'TBG', 'SMARTFREN , FLEXI', '\r\n\r\nJl. Z.A Pagar Alam, Gunung Terang, Langkapura ', 52, -5.392272, 105.233238),
(107, 'TBG', 'TELKOMSEL', '\r\n\r\nJl. Pramuka gg Mekar III, Ragon\r\n Dewi, Kemiling \r\n', 52, -5.383084, 105.220512),
(290, 'TBG', 'ESIA', 'Jl. Padat Karya gg Lensu, Kedaton  \r\n', 72, -5.351187, 105.249893),
(289, 'TBG', ' XL  ', 'Jl. Pramuka, Ragon Dewi, Rajabasa ', 72, -5.375830, 105.221680),
(111, 'SMARTFREN', 'SMARTFREN', '\r\nJl. Padat Karya, Kedaton  \r\n\r\n', 80, -5.352976, 105.239555),
(109, 'TBG', 'TELKOMSEL', '\r\nJl. ZA Pagar Alam, Labuhan Ratu, Rajabasa  ', 52, -5.369160, 105.238098),
(110, 'TBG', ' CERIA ', 'Jl Pemancar Gunung Balau, Way Gubrak, Panjang    ', 62, -5.432060, 105.310997),
(112, 'SMARTFREN', ' SMARTFREN', '\r\nJL. P. Polim gg Sawo, Segala Mider, Tanjung Karang Barat  \r\n ', 72, -5.392948, 105.246864),
(113, 'SMARTFREN', '  SMARTFREN', '\r\nJL. Arief Rahman, Kalibalau Kencana  \r\n', 72, -5.397182, 105.280457),
(114, 'SMARTFREN', 'SMARTFREN', '\r\nJl. Gajah Mada, Kota Baru, Tanjung Karang TImur ', 6, -5.418332, 105.268906),
(115, 'SMARTFREN', 'SMARTFREN  ', '\r\nJl. Dr Susilo,Pahoman, Tanjung Karang Pusat ', 73, 0.000000, 105.270432),
(116, 'SMARTFREN', 'SMARTFREN , XL', '\r\nJl.Pulau gg Sepakat, Pajajaran, Tanjung Karang Timur \r\n', 42, -5.400787, 105.264992),
(117, 'SMARTFREN', ' SMARTFREN', '\r\nJl. RA Kartini, Enggal, Tanjung Karang Pusat ', 6, -5.416134, 105.252930),
(118, 'SMARTFREN', ' SMARTFREN', '\r\n\r\n\r\nJl. Kartini DPN Bank BCA, kebon Jeruk, Tanjung Karang Pusat', 2, -5.445310, 105.265999),
(119, 'RADIO', 'SMARTFREN , ESIA ', '\r\n\r\nJl. Bung Tomo, Gedong Air, Tanjung Karang Timur ', 102, -5.400862, 105.241142),
(120, 'RADIO', ' Esia , HCPT', '\r\nJl. Hos Cokro Aminoto, Rawa Laut, Tanjung Karang Timur  \r\n\r\n', 72, -5.421221, 105.262817),
(121, 'RADIO', 'HOS TELKOMSEL', '\r\nJl. MR. Gele Haarun, Tanjung Raya, Tanjung Karang Timur \r\n RADIO HOS TELKOMSEL', 72, -5.420404, 105.264473),
(122, 'RADIO', 'TELKOMSEL', 'Jl. Letkol Sutarmin, Sukarame \r\n', 15, -5.382232, 105.299103),
(123, 'RADIO', '  ESIA ', '\r\nMandala FM Komplek Villa Citra, Pajajaran, Tanjung Karang \r\n\r\nTimur  ', 82, -5.405061, 105.272606),
(124, 'RADIO', ' FM ESIA ', '\r\nJl. Terusan Enim RADIO Rajaawali FM, Pahoman , Tanjung \r\n\r\nKarang Timur', 82, -5.428777, 105.268341),
(125, 'RADIO', ' SMARTFREN  , ESIA ', '\r\nJl.  Diponegoro, Pecoh Raya, Teluk Betung Raya  ', 62, -5.437280, 105.264999),
(127, 'PROTELINDO', 'HCPT  ', '\r\nJl. Pramuka, Rajabasa \r\n\r\n', 42, -5.370375, 105.230385),
(126, 'RADIO', ' FLEXI, XL  ', '\r\nJl. Gatot Subroto RADIO RRI, Tanjung Raya, Tanjung Karang  Timur', 52, -5.424680, 105.273003),
(128, 'PROTELINDO', ' HCPT  ', '\r\nJl. Purnawirawan, Langkapura  \r\n\r\n', 42, -5.386015, 105.223633),
(129, 'PROTELINDO', 'HCPT ', '\r\nJl. Purnawirawan,Gunung Terang, Tanjung Karang Pusat     ', 52, -5.378991, 105.237968),
(130, 'PROTELINDO', '  XL ', '\r\nJl. Purnawirawan,Gunung Terang, Tanjung Karang Barat  ', 42, -5.379263, 105.240570),
(131, 'PROTELINDO', 'HCPT  ', '\r\n\r\n\r\nJl.Sisingamagaraja, Gedong Air, Tanjung Karang Barat   ', 9, -5.403174, 105.242638),
(132, 'PROTELINDO', 'AXIS ', '\r\nJl. ZA Pagar Alama, Labuhan Ratu, Rajabasa  ', 62, -5.368475, 105.238159),
(133, 'PROTELINDO', 'TELKOMSEL, Indosat  ', 'Jl. Re Martadinata Laksamana, Gunung Mas, Teluk Betung Selatan   ', 42, -5.449320, 105.258003),
(134, 'MENARA', ' INDOSAT ', '\r\nJl. Perumka, Sukadanaham, Tanjung Karang Barat   ', 80, -5.419464, 105.228317),
(135, 'MENARA', 'Esia ', '\r\nJl. Perumka, Suadanam, Tanjung Karang Barat    ', 150, -5.419332, 105.227928),
(136, 'MENARA', 'Polda ', '\r\nJl. Dipenogoro Mesjid aGUNG AL-FUQRON, PAHOMAN, TELUK BETUNG UTARA \r\n', 72, -5.429100, 105.261002),
(139, 'PROTELINDO', ' HCPT', '\r\nJl. DS Giri Raya, Kemiling ', 42, -5.406694, 105.198303),
(138, 'HCPT', 'HCPT ', '\r\nStadion Sumpa Pemuda Way Halim, Sukarame  ', 32, -5.379464, 105.280144),
(137, 'TELKOMSEL', ' ESIA', '\r\nStadion Sumpa Pemuda Way Halim, Sukarame  ', 32, -5.378156, 105.280128),
(140, 'HCPT', 'HCPT , SMARTFREN  ', 'Jl. Raden Imba Kesuma, Susunan Baru, Kemiling    \r\n', 36, -5.403549, 105.211853),
(141, 'PROTELINDO', ' HCPT , TELKOMSEL', 'Jl. H Komarudin, Rajabasa  ', 42, -5.350998, 105.241051),
(142, 'PROTELINDO', 'HCPT  ', 'Jl. Padat Karya, Kedaton  \r\n', 36, -5.353018, 105.248657),
(143, 'PROTELINDO', ' HCPT  ', '\r\nJl. Ra Basyid, Labuhan Dalam Tanjung Senang  ', 15, -5.360353, 105.257401),
(144, 'PROTELINDO', ' HCPT ', 'Jl. Turi Raya, Tanjung Senang,  \r\n', 42, -5.364041, 105.266975),
(145, 'PROTELINDO', 'TELKOMSEL, HCPT  ', 'Jl. Pulau Damar gg Madrasah, Way Halim, Sukarame \r\n', 42, -5.358806, 105.293999),
(146, 'PROTELINDO', 'HCPT', 'Jl. ZA Pagar Alam, SukaMenanti, Kedaton ', 36, -5.386489, 105.239670),
(147, 'PROTELINDO', 'HCPT ', 'JL. Prof Dr. Sumatri Bojonegoro, Labuhan Ratu, Kedaton', 36, -5.370794, 105.242020),
(148, 'PROTELINDO', 'HCPT , TELKOMSEL', '\r\nJL. Frpkor, Wayhalim Permai, Sukarame  \r\n', 42, -5.386081, 105.277321),
(156, 'PROTELINDO', '  HCPT  , TELKOMSEL ', 'Jl. Ratu Dibalau gg Kenanga, Tanjung Seneng ', 32, -5.367425, 105.278114),
(151, 'PROTELINDO', 'HCPT , SMARTFREN ', 'Jl. Imam Bonjol, Gedong Air, Tanjung Karang Pusat  \r\n', 52, -5.398804, 105.246826),
(152, 'PROTELINDO', 'HCPT ', 'Jl. Tamim, SukaJawa, Tanjung Karang Barat ', 15, -5.408689, 105.248482),
(153, 'PROTELINDO', ' HCPT  ', 'Jl. Kartini, Tanjung Karang Pusat', 6, -5.410493, 105.256653),
(154, 'XL', ' XL', 'Jl. Jendral Sudirman, Tanjung Raya, Tanjung Karang Timur \r\n', 9, -5.422202, 105.264870),
(157, 'PROTELINDO', 'HCPT , TELKOMSEL', 'Jl. Pulau Karimun Jawa, Sukarame ', 36, -5.391387, 105.299995),
(155, 'PROTELINDO', ' HCPT  ', 'Jl. Z.A Pagar Alam, Gedong Meneng, Raja Basa \r\n', 6, -5.376075, 105.246857),
(158, 'PROTELINDO', 'HCPT ', '\r\nJl. Tirtayasa, Sukarame \r\n', 42, -5.400496, 105.307175),
(159, 'PROTELINDO', ' INDOSAT , SMARTFREN ', 'Jl. IR Sutami, Campang Raya, Tanjung Karang Timur ', 42, -5.423253, 105.332710),
(161, 'PROTELINDO', 'HCPT ', 'Jl. Urip SUMAHARJO, Gunung Sulah, Sukarame   \r\n', 6, -5.386238, 105.266922),
(160, 'PROTELINDO', 'HCPT ', '\r\nJl.Kimaja no 3, Way Halim, Kedaton   \r\n', 45, -5.379360, 105.272049),
(162, 'PROTELINDO', ' HCPT ', 'Jl. Arief Tahman no 7, Kali Balau, Sukabumi ', 6, -5.400117, 105.282188),
(163, 'PROTELINDO', 'HCPT ', 'Jl. Pangeran Antasari, Pajajaran, Tanjung Karang Timur ', 6, -5.407573, 105.273788),
(164, 'PROTELINDO', ' HCPT  ', 'Jl. Hayam Wuruk, Kebon Jeruk, Tanjung Karang Timur ', 6, -5.408447, 105.263412),
(165, 'PROTELINDO', 'HCPT', 'Hotel Bukit Randu, Tanjung Agung, Tanjung Karang Timur \r\n', 6, -5.411810, 105.263542),
(166, 'PROTELINDO', '  HCPT  , TELKOMSEL ', 'Jl. Ratu Dibalau gg Kenanga, Tanjung Seneng ', 32, -5.367425, 105.278114),
(167, 'PROTELINDO', 'HCPT , TELKOMSEL', 'Jl. Pulau Karimun Jawa, Sukarame ', 36, -5.391387, 105.299995),
(168, 'PROTELINDO', 'HCPT ', '\r\nJl. Tirtayasa, Sukarame \r\n', 42, -5.400496, 105.307175),
(169, 'PROTELINDO', ' INDOSAT , SMARTFREN ', 'Jl. IR Sutami, Campang Raya, Tanjung Karang Timur ', 42, -5.423253, 105.332710),
(170, 'PROTELINDO', 'HCPT ', '\r\nJl.Kimaja no 3, Way Halim, Kedaton   \r\n', 45, -5.379360, 105.272049),
(171, 'PROTELINDO', 'HCPT ', 'Jl. Urip SUMAHARJO, Gunung Sulah, Sukarame   \r\n', 6, -5.386238, 105.266922),
(172, 'PROTELINDO', ' HCPT ', 'Jl. Arief Tahman no 7, Kali Balau, Sukabumi ', 6, -5.400117, 105.282188),
(173, 'PROTELINDO', 'HCPT ', 'Jl. Pangeran Antasari, Pajajaran, Tanjung Karang Timur ', 6, -5.407573, 105.273788),
(174, 'PROTELINDO', ' HCPT  ', 'Jl. Hayam Wuruk, Kebon Jeruk, Tanjung Karang Timur ', 6, -5.408447, 105.263412),
(175, 'PROTELINDO', 'HCPT', 'Hotel Bukit Randu, Tanjung Agung, Tanjung Karang Timur \r\n', 6, -5.411810, 105.263542),
(176, 'PROTELINDO', '  HCPT  ', 'Jl. GajahMada, Tanjung Agung, Tanjung Karang Timur', 6, -5.412037, 105.267540),
(177, 'PROTELINDO', ' HCPT ', '\r\nJl. RA Kartini, Gotong Royong, Tanjung Karang Pusat', 2, -5.421361, 105.251984),
(178, 'PROTELINDO', ' HCPT  ', 'Jl. Rahman, Batu Putuk, Teluk Betung Utara  ', 42, -5.434431, 105.231705),
(179, 'TBG', ' TELKOMSEL ', 'Jl. Rahman, Kedaung, Tanjung Karang Pusat  ', 72, -5.429350, 105.200577),
(180, 'PROTELINDO', ' HCPT  , TELKOMSEL ', 'Jl. Rahman, Kedaung, Tanjung Karang Pusat   ', 42, -5.417074, 105.186188),
(181, 'PROTELINDO', ' HCPT  ', 'Jl. Rahman, Gunung Betung, Teluk Betung Selatan  ', 36, -5.390040, 105.198303),
(182, 'PROTELINDO', 'HCPT , SMARTFREN', 'Jl. Imam Bonjol gg Waluh, Kemiling \r\n', 36, -5.387952, 105.210777),
(183, 'PROTELINDO', ' HCPT , SMARTFREN', 'Jl. Imam Bonjol gg Waluh, Kemiling ', 36, -5.387952, 105.210777),
(184, 'PROTELINDO', ' HCPT  ', 'Jl. Lembah Duren, Sukadanam, Tanjung Karang Timur ', 36, -5.420810, 105.222595),
(185, 'PROTELINDO', ' HCPT  ', 'Jl. Laksamana Maharani, Bumi Waras, Teluk Betung Selatan ', 2, -5.447926, 105.268639),
(186, 'PROTELINDO', 'HCPT ', 'Jl. DR Susilo RS Bunda Asy-SYIFA,Pahoman, Tanjung Karang Pusat ', 6, -5.429785, 105.270882),
(187, 'PROTELINDO', 'XL ', 'Jl. M Ryacudu, Campang Raya, Tanjung Karang Timur ', 32, -5.406834, 105.304893),
(188, 'PROTELINDO', 'HCPT , XL', 'Jl. Hayam Wuruk, Kedamain, Tanjung Karang Timur  ', 36, -5.412156, 105.276505),
(189, 'PROTELINDO', ' HCPT  ', 'jl. Teuku Umar, Sidodai, Tanjung Karang Pusat ', 6, -5.394576, 105.261757),
(190, 'PROTELINDO', '  XL', 'Jl. Teuku Umar, Tanjung Karang, Tanjung Karang Pusat ', 25, -5.382903, 105.259270),
(191, 'PROTELINDO', ' HCPT  ', '\r\nJl. Teuku Umar, Gedong Meneng, Rajabasa ', 36, -5.364413, 105.228905),
(192, 'RADIO', 'SMARTFREN  , ESIA  ', '\r\nJl. Diponegoro, Pecoh Raya, Teluk Betung Utara  \r\n', 62, -5.437280, 105.264999),
(193, 'PROTELINDO', 'XL', 'Jl. Teluk Bone, Teluk Betung Barat    \r\n', 30, -5.453849, 105.262642),
(194, 'PROTELINDO', ' HCPT ', '\r\nJl. Diponegoro. Pahoman, Teluk Betung Utara  \r\n', 15, -5.435820, 105.264000),
(195, 'PROTELINDO', 'XL ', 'Jl. Salim Batu Bara gg Flamboyan, Pecoh Raya, Teluk Betung Utara \r\n', 15, -5.440600, 105.272003),
(196, 'PROTELINDO', ' HCPT ', '\r\nJl. Patimura B2, Kupang Teba ', 2, -5.440890, 105.264999),
(197, 'PROTELINDO', '  HCPT , TELKOMSEL ', '\r\nJl. Emir  Noor Pangeran, Gulak Galik, Teluk Betung Utara ', 42, -5.436200, 105.250999),
(198, 'PROTELINDO', ' XL  ', 'Jl. Dr Setiabudi, Gunung Mas, Teluk Betung Selatan', 42, -5.450910, 105.255997),
(199, 'PROTELINDO', 'HCPT , TELKOMSEL', 'Jl. Teluk Semangka No 1, Kangkung, Teluk Betung Utara   \r\n', 42, -5.451420, 105.262001),
(200, 'PROTELINDO', ' HCPT  ', 'Jl. Re Mardinata Sukamulya, Bakung, Teluk Betung Barat', 32, -5.468130, 105.245003),
(201, 'PROTELINDO', 'HCPT  ', 'Jl. Ps Cimeng Sidodadi, Karang, Teluk Betung Selatan', 42, -5.480860, 105.249001),
(202, 'PROTELINDO', 'HCPT ', 'Jl. Re Martadinata, Sukamaju, Teluk Betung Barat   ', 42, -5.498760, 105.250000),
(203, 'PROTELINDO', 'HCPT , TELKOMSEL ', 'Jl. Banten , Gedong Pakuon, Teluk Betung Utara', 32, -5.454150, 105.247002),
(204, 'PROTELINDO', 'XL ', 'jL. Banten, Talang, Teluk Betung Utara    \r\n', 32, -5.452570, 105.250999),
(205, 'PROTELINDO', 'HCPT , TELKOMSEL ', 'Jl. Amd Raja Kusuma Yudha, Talang, Teluk Betuk Utara', 32, -5.449320, 105.250000),
(206, 'PROTELINDO', 'HCPT', 'Jl. Yos Sudarso, Bumi Waras, Teluk Betung Selatan  ', 2, -5.445040, 105.303001),
(207, 'PROTELINDO', 'HCPT , XL  ', 'Jl. Yos Sudarso, Ketapang, Teluk Betung Selatan ', 42, -5.442720, 105.287003),
(208, 'PROTELINDO', ' HCPT  , SMARTFREN ', 'Jl. Hj Siti Fatimah Way Lunik, Teluk Betung Selatan  ', 42, -5.450430, 105.307999),
(209, 'PROTELINDO', ' SMARTFREN  , ESIA ', 'Jl. Yos Sudarso No 3, Panjang  \r\n', 15, -5.469380, 105.321999),
(212, 'PROTELINDO', 'HCPT', 'Jl. Soekarno Hatta, Panjang  ', 42, -5.491590, 105.327003),
(211, 'PROTELINDO', ' HCPT , INDOSAT', 'Jl. Soekarno Hatta, Panjang Utara, Panjang  \r\n', 42, -5.483920, 105.327003),
(210, 'PROTELINDO', 'HCPT ', 'Jl. Yos Sudarso no 11, Panjang\r\n', 15, -5.469310, 105.321999),
(214, 'PROTELINDO', 'HCPT , XL  ', 'Jl. Soekarno Hatta Tanjung Karang Timur, Way Gubrak, Tanjung Karang Timur    ', 42, -5.412770, 105.296997),
(213, 'PROTELINDO', 'HCPT ', 'Jl. Ka Anang Soekarno Hatta, Ketapang, Teluk Betung Selatan\r\n', 42, -5.440150, 105.304001),
(295, 'TBG', ' INDOSAT , HCPT ', 'Jl. Letjen Ryacudu, Sukabumi', 62, -5.407547, 105.318047),
(296, 'TBG', 'TELKOMSEL', 'Jl. Hendro Sumantri, Kalibalau Kencana, Sukabumi \r\n', 62, -5.390741, 105.288994),
(297, 'TBG', ' TELKOMSEL', '\r\nJl. Hayam Wuruk 221, Kebon Jeruk, Tanjung Karang Timur \r\n', 25, -5.408557, 105.262718),
(298, 'TBG', 'TELKOMSEL, XL', 'Jl. Gajah Mada no. 60, Tanjung Agung, Tanjung Karang Timur\r\n', 25, -5.415430, 105.267044),
(299, 'TBG', ' SMARTFREN ', 'Jl. Rahman, Batu Putuk, Teluk Betung Utara \r\n', 72, -5.430243, 105.203499),
(300, 'TBG', ' TELKOMSEL', 'Jl. Bukit Jati, Kemiling\r\n', 62, -5.377260, 105.209587),
(301, 'TBG', ' XL , ESIA ', 'Jl. H Said gg Masjid, Jaya Baya II, Sukabumi ', 62, -5.417082, 105.275215),
(302, 'TBG', ' TELKOMSEL', 'Jl. Sisingamangaraja, Tanjung Karang Pusat\r\n', 25, -5.406286, 105.240471),
(303, 'TBG', ' INDOSAT ', 'Jl. Panglima Polim, Surabaya, Kedaton ', 62, -5.388128, 105.256187),
(304, 'TBG', 'INDOSAT ', 'Jl. Raya Batu Putuk, Umbul Lapang, Teluk Betung Barat\r\n', 62, -5.453723, 105.197845),
(305, 'TBG', ' INDOSAT ', 'Jl. Ridwam Rais, Kedamain, Tanjung Karang Timur ', 62, -5.415833, 105.282776),
(306, 'TBG', 'TELKOMSEL', 'Jl. WR Supratman, Gedong Pakuon, Teluk Betung Selatan  ', 42, -5.444960, 105.253998),
(307, 'TBG', ' TELKOMSEL , HCPT ', 'Jl. Ikan Lumba-Lumba no 6, Teluk Betung Selatan \r\n', 42, -5.449290, 105.266998),
(308, 'TBG', ' SMARTFREN , HCPT ', 'Jl. Ikan Tenggiri, Pesawaran, Teluk Betung Utara ', 42, -5.455860, 105.257004),
(309, 'TBG', ' TELKOMSEL', 'Jl. Pantai Mutun, Sukamaju, Teluk Betung Barat   \r\n', 52, -5.414390, 105.260002),
(310, 'TBG', 'TELKOMSEL', 'Jl. Kunci Inpress, Desa Kunci, Teluk Betung barat ', 52, -5.469840, 105.226997),
(311, 'TBG', 'TELKOMSEL, HCPT', 'Jl. Insyinyur Sutami, Way Gubrak, Tanjung Karang Timur \r\n', 62, -5.441720, 105.313004),
(312, 'TBG', 'TELKOMSEL', 'Jl. KH Agus Anang, Ketapang, Panjang \r\n', 52, -5.440560, 105.296997);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`id`), ADD KEY `kabkota` (`kabkota`);

--
-- Indexes for table `index`
--
ALTER TABLE `index`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kabkota`
--
ALTER TABLE `kabkota`
  ADD PRIMARY KEY (`idkabkota`);

--
-- Indexes for table `tmenaradetail`
--
ALTER TABLE `tmenaradetail`
  ADD PRIMARY KEY (`id_detail`), ADD FULLTEXT KEY `pengguna` (`pengguna`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cabang`
--
ALTER TABLE `cabang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `index`
--
ALTER TABLE `index`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kabkota`
--
ALTER TABLE `kabkota`
  MODIFY `idkabkota` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tmenaradetail`
--
ALTER TABLE `tmenaradetail`
  MODIFY `id_detail` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=313;--
-- Database: `pakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `kode_admin` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text,
  `tlp` varchar(15) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(26) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`kode_admin`, `nama`, `alamat`, `tlp`, `jk`, `email`, `password`) VALUES
(2, 'Ferry', 'dhasjhdsk', '0897987896', 'L', 'fey22@gmail.com', 'gundul456'),
(3, 'gundul', 'hdkjhasjdksa', '7382163781', 'L', 'mamah@gmail.com', 'mamah456'),
(4, 'kepo', 'dhsakjhdsakj', '90789768', 'L', 'menikepo@gmail.com', 'kepo456'),
(5, 'gampang', 'hdjskah', '08236198', 'L', 'gampang@gmail.com', 'gampang'),
(6, 'rani', 'bandung', '0811111111', 'P', 'agustiyanirani@gmail.com', 'rarara23'),
(7, 'Rara', 'Lembang', '0808080809', 'P', 'agustiyanirani@gmail.com', 'rarara23'),
(8, 'Siska', 'Cibiru', '0899999', 'P', 'siska@gmail.com', '123456'),
(9, 'bohem', 'jl. batik', '02', 'L', 'jejenjaenudin480@yahoo.co.id', '13');

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa`
--

CREATE TABLE IF NOT EXISTS `diagnosa` (
  `kode_admin` int(11) NOT NULL,
  `kode_penyakit` varchar(15) NOT NULL,
  `nama_penyakit` varchar(15) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ttl` varchar(30) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagnosa`
--

INSERT INTO `diagnosa` (`kode_admin`, `kode_penyakit`, `nama_penyakit`, `nama`, `ttl`, `jk`, `alamat`) VALUES
(2, 'P01', 'Depresi Berat', 'gundul', 'bandung 11 feb 1999', 'L', 'mana aja'),
(2, 'P01', 'Depresi Berat', 'aduh lieur', 'mandmsanjsda 123124', 'L', 'hdsajdskjdbk'),
(2, 'P01', 'Depresi Berat', 'aduh lieur', 'mandmsanjsda 123124', 'L', 'hdsajdskjdbk'),
(2, 'p01', 'depresi ringan', 'wawan', '20 feb 199', 'L', 'mana aja lah'),
(3, 'P05', 'Mood Campuran', 'hdadsja nama <br>', 'badnsa 123678 ttl <br>', '', 'dsajgdashj alamat <br>'),
(3, 'P05', 'Mood Campuran', 'hdadsja', 'badnsa 123678', 'L', 'dsajgdashj'),
(3, 'P05', 'Mood Campuran', 'hdadsja', 'badnsa 123678', 'L', 'dsajgdashj'),
(2, 'P01', 'Depresi Berat', 'dhsaj', 'djhsakhda', 'L', 'dgada'),
(2, 'P01', 'Depresi Berat', 'dhsaj', 'djhsakhda', 'L', 'dgada'),
(2, 'P01', 'Depresi Berat', 'dsakjdhak', 'dhsjakdhak', 'L', 'hgjasgdja'),
(2, 'P01', 'Depresi Berat', 'dhsakjda', 'hdsakjhdka', 'L', 'dbgajda'),
(2, 'P01', 'Depresi Berat', 'wawawa', 'wawawa', 'L', 'awawawa'),
(2, 'P03', 'Mania Berat', 'zzzz', 'zzz', 'L', 'zzzz'),
(3, 'P03', 'Mania Berat', 'ggg', 'ggg', 'P', 'ggg'),
(3, 'P03', 'Mania Berat', 'aaa', 'aaaa', 'L', 'aaa'),
(3, 'P03', 'Mania Berat', 'lll', 'lll', 'L', 'llll'),
(3, 'P01', 'Depresi Berat', 'ds', 'ds', 'L', 'ds'),
(6, 'P04', 'Mania Ringan', 'rani', 'bandung', 'P', ''),
(6, 'P04', 'Mania Ringan', 'rani', 'bandung', 'P', ''),
(6, 'P02', 'Depresi Ringan', 'rani', 'bandung', 'P', ''),
(6, 'P01', 'Depresi Berat', 'rani', 'bandung', 'P', ''),
(6, 'P01', 'Depresi Berat', 'rani', 'bandung', 'P', ''),
(6, 'P01', 'Depresi Berat', 'rani', 'bandung', 'P', ''),
(6, 'P04', 'Mania Ringan', 'rani', 'bandung', 'P', ''),
(6, 'P03', 'Mania Berat', 'rani', 'bandung', 'P', ''),
(6, 'P01', 'Depresi Berat', 'rani', 'bandung', 'P', 'lembang'),
(6, 'P02', 'Depresi Ringan', 'rani', 'bandung', 'P', ''),
(6, 'P03', 'Mania Berat', 'jejen', 'bandung', 'L', ''),
(9, 'P01', 'Depresi Berat', 'jejen', 'karawang 31-05-1996', 'L', 'jl. batik'),
(9, 'P01', 'Depresi Berat', 'lilis lisna wati', 'bandung', 'P', 'cileunyi'),
(9, 'P01', 'Depresi Berat', 'Siska', 'cibiru', 'P', 'cibiru');

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE IF NOT EXISTS `gejala` (
  `id_gejala` int(11) NOT NULL,
  `kode_penyakit` varchar(15) NOT NULL,
  `kode_gejala` varchar(11) NOT NULL,
  `nama_gejala` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `kode_penyakit`, `kode_gejala`, `nama_gejala`) VALUES
(9, 'P01', 'G01', 'Mudah Tersinggung dan mudah marah'),
(10, 'P01', 'G02', 'Kehilangan kegembiraan dan minat untuk beraktifitas'),
(11, 'P01', 'G03', 'Mudah Lelah Dan Tak Bergairah'),
(12, 'P01', 'G04', 'Gelisah Dan Kurang TIdur'),
(15, 'P01', 'G07', 'Menghindari Komunikasi Dan Orang Lain'),
(16, 'P01', 'G08', 'Selalu Merasa Bersalah Dan Kurang Percaya Diri'),
(17, 'P01', 'G09', 'Pesimis Dan Mudah Putus Asa'),
(18, 'P01', 'G10', 'Pernah Mencoba Untuk Bunuh Diri'),
(27, 'P02', 'G01', 'Mudah Tersingung Dan Mudah Marah'),
(28, 'P02', 'G02', 'KEhilangan Kegembiraan Dan Minat Untuk Beraktivitas'),
(29, 'P02', 'G03', 'Mudah Lelah Dan Tak Beragairah'),
(30, 'P02', 'G04', 'Gelisah Dan Kurang Tidur'),
(31, 'P02', 'G05', 'Nafsu Makan Berkurang Dan Berat Badan Berkurang'),
(32, 'P02', 'G06', 'Sulit Berkonsentrasi Dan Perhatian Berkurang'),
(33, 'P02', 'G07', 'Menghindari Komunikasi Dari Orang lain'),
(34, 'P02', 'G08', 'Selalu Merasa Bersalah Dan Kurang Percaya Diri'),
(35, 'P03', 'G11', 'Terlihat Senang Atau Bahagia Berlebihan'),
(36, 'P03', 'G12', 'Merasa Dirinya Paling Hebat Optimistic'),
(37, 'P03', 'G13', 'Berbicara Cepat Dan Omong Kosong'),
(38, 'P03', 'G14', ' Banyak Ide dan Cepat Berpindah ide Dalam Beraktivitas'),
(39, 'P03', 'G15', 'Sangat aktif bergerak cepat dan tiba tiba'),
(40, 'P03', 'G16', 'Boros Dalam Keungan'),
(41, 'P03', 'G17', 'Senang Mengeritik Orang'),
(42, 'P03', 'G18', 'Perhatian Mudah Teralih Dan Pikiran Tajam'),
(43, 'P04', 'G11', 'Terlihat Senang Atau Gembira Berlebihan'),
(44, 'P04', 'G13', 'Berbicara Cepat Dan Omong Kosong'),
(45, 'P04', 'G14', 'Banyak ide dan cepat berpindah ide dalam beraktifitas'),
(46, 'P04', 'G15', 'Sangat Aktif Bergerak Dengan Cepat Dan Tiba Tiba Impulsif'),
(47, 'P04', 'G16', 'Boros Dalam Keuangan'),
(48, 'P04', 'G17', 'Senang Mengeritik Orang'),
(49, 'P04', 'G18', 'Perhatian Mudah Teralih Dan Pikiran Lebih Tajam'),
(50, 'P05', 'G01', 'Mudah Tersinggung Dan Mudah Marah'),
(51, 'P05', 'G04', 'Gelisah Dan Kurang Tidur'),
(52, 'P05', 'G09', 'Pesimis dan mudah putus asa'),
(53, 'P05', 'G10', 'Pernah Mencoba Untuk Bunuh Diri'),
(54, 'P05', 'G11', 'Terlihat Senang Atau Gembira Berlebihan'),
(55, 'P05', 'G12', 'Merasa Dirinya Paling Hebat Dan Optimistic'),
(56, 'P05', 'G16', 'Boros Dalam Keuangan'),
(57, 'P01', 'G20', 'Pusing');

-- --------------------------------------------------------

--
-- Table structure for table `pengelola`
--

CREATE TABLE IF NOT EXISTS `pengelola` (
  `kode` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jk` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `foto` text NOT NULL,
  `tlp` int(15) NOT NULL,
  `akses` enum('admin') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengelola`
--

INSERT INTO `pengelola` (`kode`, `email`, `password`, `nama`, `jk`, `alamat`, `foto`, `tlp`, `akses`) VALUES
(1, 'gunawan@gmail.com', 'gundul456', 'gundul', 'L', 'mana aja', '', 888969, 'admin'),
(4, 'gundul@gmail.com', 'gundul456', 'Ferry', 'L', 'dcvkjhkjjhdhjk', '20170321_150135.jpg', 87768578, 'admin'),
(5, 'admin@gmail.com', 'admin', 'lilo', 'P', 'mana aja dah', 'pic05.jpg', 2147483647, 'admin'),
(6, 'agustiyanirani@gmail.com', 'ranira', 'rani', 'P', 'Lembang', 'jadi.gif', 89888888, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE IF NOT EXISTS `penyakit` (
  `id_penyakit` int(11) NOT NULL,
  `kode_penyakit` varchar(50) NOT NULL,
  `nama_penyakit` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id_penyakit`, `kode_penyakit`, `nama_penyakit`) VALUES
(2, 'P01', 'Depresi Berat\r\n'),
(3, 'P02', 'Depresi Ringan'),
(4, 'P03', 'Mania Berat'),
(5, 'P04', 'Mania Ringan'),
(6, 'P05', 'Mood Campuran');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`kode_admin`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `pengelola`
--
ALTER TABLE `pengelola`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id_penyakit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `kode_admin` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `pengelola`
--
ALTER TABLE `pengelola`
  MODIFY `kode` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id_penyakit` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `pma_bookmark`
--

CREATE TABLE IF NOT EXISTS `pma_bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma_column_info`
--

CREATE TABLE IF NOT EXISTS `pma_column_info` (
  `id` int(5) unsigned NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_designer_coords`
--

CREATE TABLE IF NOT EXISTS `pma_designer_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `x` int(11) DEFAULT NULL,
  `y` int(11) DEFAULT NULL,
  `v` tinyint(4) DEFAULT NULL,
  `h` tinyint(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma_history`
--

CREATE TABLE IF NOT EXISTS `pma_history` (
  `id` bigint(20) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_navigationhiding`
--

CREATE TABLE IF NOT EXISTS `pma_navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma_pdf_pages`
--

CREATE TABLE IF NOT EXISTS `pma_pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_recent`
--

CREATE TABLE IF NOT EXISTS `pma_recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma_recent`
--

INSERT INTO `pma_recent` (`username`, `tables`) VALUES
('root', '[{"db":"kucex","table":"order"},{"db":"kucex","table":"v_order_user_outlet"},{"db":"kucex","table":"outlet"},{"db":"kucex","table":"user"},{"db":"pakar","table":"diagnosa"},{"db":"zonasikucex","table":"pelanggan"},{"db":"zonasikucex","table":"order"},{"db":"zonasikucex","table":"akun"},{"db":"lokasii","table":"lokasi"},{"db":"pizza","table":"user"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma_relation`
--

CREATE TABLE IF NOT EXISTS `pma_relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Dumping data for table `pma_relation`
--

INSERT INTO `pma_relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('zonasikucex', 'order', 'Id_Pelanggan', 'zonasikucex', 'pelanggan', 'Id_Pelanggan'),
('kucex', 'order', 'Id_User', 'kucex', 'user', 'Id_User'),
('kucex', 'outlet', 'Id_User', 'kucex', 'user', 'Id_User'),
('kucex', 'order', 'Id_Outlet', 'kucex', 'outlet', 'Id_Outlet');

-- --------------------------------------------------------

--
-- Table structure for table `pma_savedsearches`
--

CREATE TABLE IF NOT EXISTS `pma_savedsearches` (
  `id` int(5) unsigned NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_coords`
--

CREATE TABLE IF NOT EXISTS `pma_table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_info`
--

CREATE TABLE IF NOT EXISTS `pma_table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_table_uiprefs`
--

CREATE TABLE IF NOT EXISTS `pma_table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma_table_uiprefs`
--

INSERT INTO `pma_table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'zonasikucex', 'akun', '{"sorted_col":"`Username` ASC"}', '2017-04-02 11:39:28'),
('root', 'dj', 'sekolah', '{"sorted_col":"`sekolah`.`koordinat` DESC"}', '2017-03-22 14:16:58'),
('root', 'kucex', 'user', '{"sorted_col":"`Id_User` DESC"}', '2017-05-15 14:05:51'),
('root', 'kucex', 'order', '{"sorted_col":"`Id_Order` ASC"}', '2017-07-19 04:40:20'),
('root', 'kucex', 'outlet', '[]', '2017-05-27 07:13:13');

-- --------------------------------------------------------

--
-- Table structure for table `pma_tracking`
--

CREATE TABLE IF NOT EXISTS `pma_tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin ROW_FORMAT=COMPACT COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma_userconfig`
--

CREATE TABLE IF NOT EXISTS `pma_userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma_userconfig`
--

INSERT INTO `pma_userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-03-14 15:30:54', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma_usergroups`
--

CREATE TABLE IF NOT EXISTS `pma_usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma_users`
--

CREATE TABLE IF NOT EXISTS `pma_users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma_designer_coords`
--
ALTER TABLE `pma_designer_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_history`
--
ALTER TABLE `pma_history`
  ADD PRIMARY KEY (`id`), ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma_navigationhiding`
--
ALTER TABLE `pma_navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
  ADD PRIMARY KEY (`page_nr`), ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma_recent`
--
ALTER TABLE `pma_recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_relation`
--
ALTER TABLE `pma_relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`), ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma_table_coords`
--
ALTER TABLE `pma_table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma_table_info`
--
ALTER TABLE `pma_table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma_table_uiprefs`
--
ALTER TABLE `pma_table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma_tracking`
--
ALTER TABLE `pma_tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma_userconfig`
--
ALTER TABLE `pma_userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma_usergroups`
--
ALTER TABLE `pma_usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma_users`
--
ALTER TABLE `pma_users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma_bookmark`
--
ALTER TABLE `pma_bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_column_info`
--
ALTER TABLE `pma_column_info`
  MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_history`
--
ALTER TABLE `pma_history`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_pdf_pages`
--
ALTER TABLE `pma_pdf_pages`
  MODIFY `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma_savedsearches`
--
ALTER TABLE `pma_savedsearches`
  MODIFY `id` int(5) unsigned NOT NULL AUTO_INCREMENT;--
-- Database: `pizza`
--

-- --------------------------------------------------------

--
-- Table structure for table `jobdes`
--

CREATE TABLE IF NOT EXISTS `jobdes` (
  `id_pegwai` int(9) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `jabatan` varchar(25) NOT NULL,
  `keterangan` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobdes`
--

INSERT INTO `jobdes` (`id_pegwai`, `nama`, `jabatan`, `keterangan`) VALUES
(4, 'Asep', 'Mahasiswa', 'PM'),
(5, 'Dini', 'Mahasiswa', 'PMI');

-- --------------------------------------------------------

--
-- Table structure for table `pesan`
--

CREATE TABLE IF NOT EXISTS `pesan` (
  `id_pesan` int(9) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `nohp` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `pizza` varchar(25) NOT NULL,
  `minuman` varchar(25) NOT NULL,
  `pasta` varchar(25) NOT NULL,
  `toping` varchar(25) NOT NULL,
  `deliveryman` varchar(25) NOT NULL,
  `keterangan` text NOT NULL,
  `harga` int(9) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `nama`, `nohp`, `alamat`, `pizza`, `minuman`, `pasta`, `toping`, `deliveryman`, `keterangan`, `harga`) VALUES
(10, 'Dono', '0897875656', 'Jakarta', 'Bigbox', 'Blackcurrant', 'Spageti', 'Keju', 'G', 'Sudah', 100000),
(11, 'Fauzan', '08998867644', 'Jl.PanembakanCimahi', 'Bigbox', 'Orange Juice', 'Papcheese', 'Keju,Ham,Ayam,Sosis', 'D', 'Sudah', 176000),
(12, 'Dadang', '0878787', 'Bandung', 'Bigbox', 'Cappucino Jelly', 'Papcheese', 'Keju', 'D', 'Belum', 150000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `nama`, `level`) VALUES
('admin1', 'admin', 'admin', 'admin'),
('karyawan', 'user', 'karyawan 1', 'user'),
('nfg', 'nfg', 'nfg', 'admin'),
('ror', 'or', 'roro', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobdes`
--
ALTER TABLE `jobdes`
  ADD PRIMARY KEY (`id_pegwai`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobdes`
--
ALTER TABLE `jobdes`
  MODIFY `id_pegwai` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(9) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;--
-- Database: `test`
--
--
-- Database: `webauth`
--

-- --------------------------------------------------------

--
-- Table structure for table `user_pwd`
--

CREATE TABLE IF NOT EXISTS `user_pwd` (
  `name` char(30) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `pass` char(32) COLLATE latin1_general_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `user_pwd`
--

INSERT INTO `user_pwd` (`name`, `pass`) VALUES
('xampp', 'wampp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_pwd`
--
ALTER TABLE `user_pwd`
  ADD PRIMARY KEY (`name`);
--
-- Database: `zonasikucex`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE IF NOT EXISTS `akun` (
  `Id_Akun` varchar(20) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`Id_Akun`, `Nama`, `Username`, `Password`, `Level`) VALUES
('', 'Zonasi kucex Adi Flora', 'Adi flora kucex', '123321', 'Outlet'),
('', 'Admin1', 'Admin', 'Superadmin', 'Admin'),
('', 'Zonasi Kucex Arcamanik Endah', 'Arcamanik endah kucex', '12121', 'Outlet'),
('', 'Zonasi kucex Cijambe', 'Cijambe kucex', 'cijambe', 'Outlet'),
('P001', 'Jejen Jaenudin', 'Jejen31', 'karawang', 'Pelanggan'),
('', 'Zonasi kucex Sariasih ', 'Sariasih kucex', '12121', 'Outlet'),
('', 'Zonasi Kucex Tata Surya', 'Tata surya kucex', '12121', 'Outlet');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `Id_Order` varchar(50) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `Nomor` varchar(15) NOT NULL,
  `Level` varchar(10) NOT NULL,
  `Id_Pelanggan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `outlet`
--

CREATE TABLE IF NOT EXISTS `outlet` (
  `Id_Outlet` varchar(10) NOT NULL,
  `Nama_Outlet` varchar(50) NOT NULL,
  `Alamat_Outlet` text NOT NULL,
  `Nomor_Outlet` varchar(14) NOT NULL,
  `Email_Outlet` varchar(50) NOT NULL,
  `Id_Pelanggan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `outlet`
--

INSERT INTO `outlet` (`Id_Outlet`, `Nama_Outlet`, `Alamat_Outlet`, `Nomor_Outlet`, `Email_Outlet`, `Id_Pelanggan`) VALUES
('Outlet0001', 'Zonasi kucex Cijambe', 'Jl. Cijambe No.45, Pasir Endah, Ujung Berung, Kota Bandung, Jawa Barat ', '(022) 77877077', 'zonasikucex@gmail.com', ''),
('Outlet0002', 'Zonasi Kucex Arcamanik Endah', ' Jl. Arcamanik Endah No.62, Sukamiskin, Arcamanik, Kota Bandung, Jawa Barat', '0813-2013-1879', 'zonasikucex@gmail.com', 'P001'),
('Outlet0003', 'Zonasi Kucex Tata Surya', ' Jl. Tata Surya, Manjahlega, Rancasari, Kota Bandung, Jawa Bara', '(022) 77877077', 'zonasikucex@gmail.com', ''),
('Outlet0004', 'Zonasi kucex Adi Flora', 'Jl. Adi Flora Raya No.7, Rancabolang, Gedebage, Kota Bandung, Jawa Barat', '0812-2513-712', 'zonasikucex@gmail.com', ''),
('Outlet0005', 'Zonasi kucex Sariasih ', ' Jl. Sariasih Blok 3 No.24, Sarijadi, Sukasari, Kota Bandung, Jawa Barat', '0895-3690-5400', 'zonasikucex@gmail.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `Id_Pelanggan` varchar(20) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Tempat_Lahir` varchar(20) NOT NULL,
  `Tanggal_Lahir` varchar(10) NOT NULL,
  `Bulan_Lahir` varchar(20) NOT NULL,
  `Tahun_Lahir` varchar(10) NOT NULL,
  `Jenis_Kelamin` varchar(10) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Nomor` varchar(20) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`Id_Pelanggan`, `Nama`, `Tempat_Lahir`, `Tanggal_Lahir`, `Bulan_Lahir`, `Tahun_Lahir`, `Jenis_Kelamin`, `Alamat`, `Email`, `Nomor`, `Username`, `Password`, `Level`) VALUES
('Pelanggan0001', 'Jejen Jaenudin', 'Karawang', '31', 'Mei', '1996', 'Laki-Laki', 'Jl.batik Jogja no.20 Bandung', 'Jejenjaenudin@gmail.com', '085776747485', 'Jejen31', 'Karawang31', 'Pelanggan'),
('Pelanggan0002', 'Bohem', 'Karawang', '3', 'Februari', '2015', 'Laki-Laki', 'Jl.batik Jogja no.20 bandung', 'Jejenjaenudinmz@gmail.com', '085776747485', 'bohem', 'bohem123', 'Pelanggan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`Id_Order`);

--
-- Indexes for table `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`Id_Outlet`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`Id_Pelanggan`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
