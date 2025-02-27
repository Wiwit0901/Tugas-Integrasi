-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 27, 2025 at 02:07 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblokal`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_ampu`
--

CREATE TABLE `t_ampu` (
  `id` int(11) NOT NULL,
  `id_dosen` varchar(16) NOT NULL,
  `id_matakuliah` varchar(16) NOT NULL,
  `periode` varchar(9) DEFAULT NULL,
  `semester` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_ampu`
--

INSERT INTO `t_ampu` (`id`, `id_dosen`, `id_matakuliah`, `periode`, `semester`) VALUES
(1, 'DSN01', 'MK01', '2024/2025', 'PENDEK');

-- --------------------------------------------------------

--
-- Table structure for table `t_dosen`
--

CREATE TABLE `t_dosen` (
  `id_dosen` varchar(16) NOT NULL,
  `id_persons` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_dosen`
--

INSERT INTO `t_dosen` (`id_dosen`, `id_persons`) VALUES
('DSN01', 1),
('DSN02', 14),
('DSN03', 16),
('DSN88', 20);

-- --------------------------------------------------------

--
-- Table structure for table `t_krs`
--

CREATE TABLE `t_krs` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `nim` varchar(16) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_krs`
--

INSERT INTO `t_krs` (`id`, `tanggal`, `nim`, `semester`) VALUES
(1, '2024-07-27', 'MH01', 2),
(2, '2024-07-27', 'MH02', 2),
(3, '2024-07-27', 'MH03', 2),
(4, '2024-07-27', 'MH04', 2),
(5, '2024-07-27', 'MH05', 2);

-- --------------------------------------------------------

--
-- Table structure for table `t_krs_detail`
--

CREATE TABLE `t_krs_detail` (
  `id` int(11) NOT NULL,
  `id_krs` int(11) NOT NULL,
  `id_matakuliah` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_krs_detail`
--

INSERT INTO `t_krs_detail` (`id`, `id_krs`, `id_matakuliah`) VALUES
(1, 1, 'MK01'),
(2, 1, 'MK02'),
(3, 1, 'MK03'),
(4, 2, 'MK01'),
(5, 3, 'MK01'),
(6, 3, 'MK03'),
(7, 4, 'MK02'),
(8, 5, 'MK03');

-- --------------------------------------------------------

--
-- Table structure for table `t_log`
--

CREATE TABLE `t_log` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT current_timestamp(),
  `keterangan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_log`
--

INSERT INTO `t_log` (`id`, `tanggal`, `keterangan`) VALUES
(1, '2024-07-27', 'Fahrul Riyad menjadi Fahrul Riyadi'),
(2, '2024-08-10', 'test'),
(4, '2024-08-10', 'Test Dosen'),
(5, '2024-08-10', 'Test Dosen menjadi Ultramen'),
(6, '2024-08-24', 'test'),
(7, '2024-08-24', 'test'),
(8, '2024-08-24', 'test'),
(9, '2024-08-24', 'test'),
(10, '2024-08-27', 'test'),
(11, '2024-08-27', 'test menjadi test ubah'),
(12, '2024-08-27', 'test ubah menjadi test ubah 01'),
(13, '2024-08-27', 'test ubah 01 menjadi test ubah 01'),
(14, '2024-08-27', 'test ubah 01 menjadi test ubah 01'),
(15, '2024-08-27', 'test ubah 01 menjadi test ubah 01'),
(16, '2024-08-27', 'test'),
(17, '2024-08-27', 'test menjadi test ubah 01'),
(18, '2024-09-04', 'test'),
(19, '2024-09-04', 'test'),
(20, '2024-09-04', 'test'),
(21, '2024-09-04', 'test menjadi test VB'),
(22, '2024-09-04', 'M. Ramadhan menjadi M. Ramadhan'),
(23, '2024-09-04', 'Donni Setiawan menjadi Donni Setiawan'),
(24, '2024-09-04', 'Azni Hana Pratiwi menjadi Azni Hana Pratiwi'),
(25, '2024-09-04', 'Azni Hana Pratiwi menjadi Azni Hana Pratiwi'),
(26, '2024-09-04', 'Dinda Tarwiyah menjadi Dinda Tarwiyah'),
(27, '2024-09-04', 'Ahmad Umar menjadi Ahmad Umar'),
(28, '2024-09-04', 'Suci Aura Puspitasari menjadi Suci Aura Puspitasari'),
(29, '2024-09-04', 'Fahrul Riyadi menjadi Fahrul Riyadi'),
(30, '2024-09-04', 'test VB menjadi test VB kk'),
(31, '2024-09-04', 'test VB kk menjadi test VB kk'),
(32, '2024-09-04', 'test VB kk menjadi test VB kk'),
(33, '2024-09-04', 'test VB kk menjadi test VB kk'),
(34, '2024-09-04', 'test VB kk menjadi test VB kk'),
(35, '2024-09-04', 'test VB kk menjadi test VB kk'),
(36, '2024-09-05', 'test VB kk menjadi test VB kk'),
(37, '2024-09-05', 'test'),
(38, '2024-09-05', 'Mahasiswa 77'),
(39, '2024-09-05', 'Mahasiswa 77 menjadi Mahasiswa 77'),
(40, '2024-09-05', 'test menjadi Mahasiswa Test'),
(41, '2024-09-07', 'Mahasiswa 77 menjadi Mahasiswa 77'),
(42, '2024-09-07', 'Mahasiswa Test menjadi Mahasiswa Test'),
(43, '2024-09-07', 'Mahasiswa Test menjadi Mahasiswa Test'),
(44, '2024-09-07', 'Mahasiswa Test menjadi Mahasiswa Test'),
(45, '2025-01-30', 'test'),
(46, '2025-01-30', 'test menjadi EAI'),
(47, '2025-02-06', 'Budi Santoso'),
(48, '2025-02-06', 'Budi Santoso'),
(49, '2025-02-06', 'Budi Santoso'),
(50, '2025-02-06', 'Budi Santoso'),
(0, '2025-02-20', 'Mahasiswa Test menjadi '),
(0, '2025-02-20', ' menjadi '),
(0, '2025-02-20', ' menjadi nama'),
(0, '2025-02-20', 'indonesia'),
(0, '2025-02-20', 'Wiwit Thoyyibah'),
(0, '2025-02-20', 'Wiwit Thoyyibah'),
(0, '2025-02-20', 'Wiwit Thoyyibah'),
(0, '2025-02-20', 'Azni Hana Pratiwi menjadi Azni Hana Pratiwi'),
(0, '2025-02-20', 'Azni Hana Pratiwi menjadi Azni Hana Pratiwi'),
(0, '2025-02-20', 'Azni Hana Pratiwi menjadi Azni Hana Pratiwi'),
(0, '2025-02-20', 'Azni Hana Pratiwi menjadi Azni Hana Pratiwi');

-- --------------------------------------------------------

--
-- Table structure for table `t_matakuliah`
--

CREATE TABLE `t_matakuliah` (
  `id_matakuliah` varchar(16) NOT NULL,
  `nama_matakuliah` varchar(255) DEFAULT NULL,
  `sks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_matakuliah`
--

INSERT INTO `t_matakuliah` (`id_matakuliah`, `nama_matakuliah`, `sks`) VALUES
('MK01', 'Bahasa Pemrograman', 3),
('MK02', 'Keamanan', 3),
('MK03', 'Web Programing', 3);

-- --------------------------------------------------------

--
-- Table structure for table `t_mhs`
--

CREATE TABLE `t_mhs` (
  `nim` varchar(16) NOT NULL,
  `id_persons` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_mhs`
--

INSERT INTO `t_mhs` (`nim`, `id_persons`) VALUES
('MH05', 6),
('MH06', 7),
('MH07', 8),
('MH77', 27),
('MH88', 26);

-- --------------------------------------------------------

--
-- Table structure for table `t_persons`
--

CREATE TABLE `t_persons` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(1) DEFAULT NULL,
  `masuk` date DEFAULT NULL,
  `keluar` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `t_persons`
--

INSERT INTO `t_persons` (`id`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `masuk`, `keluar`) VALUES
(1, 'Farhan Zayid, ST., M.Kom.', 'Bekasi', '2024-06-01', 'L', '2024-05-01', NULL),
(6, 'Azni Hana Pratiwi', 'Sukabumi', '2024-07-26', 'P', '2024-05-01', '2025-02-20'),
(7, 'Donni Setiawan', 'Bogor', '2024-07-27', 'L', '2024-07-27', '0000-00-00'),
(8, 'M. Ramadhan', 'Sukabumi', '2024-07-27', 'L', '2024-07-27', '0000-00-00'),
(14, 'test', 'Bogor', '1980-01-27', 'L', '1980-01-27', '0000-00-00'),
(16, 'Ultramen', 'Test', '1980-01-27', 'L', '1980-01-27', '0000-00-00'),
(20, 'EAI', 'EAI', '2024-08-24', 'L', '2024-08-24', '0000-00-00'),
(21, 'test ubah 01', 'test', '2024-08-24', 'L', '2024-08-24', '0000-00-00'),
(22, 'test ubah 01', 'test', '2024-08-24', 'L', '2024-08-24', '0000-00-00'),
(23, 'test', 'test', '2024-08-24', 'L', '2024-08-24', '0000-00-00'),
(24, 'test', 'test', '2024-08-24', 'L', '2024-08-24', '0000-00-00'),
(25, 'test VB kk', 'Bekasi', '2024-08-24', 'L', '2024-08-24', '0000-00-00'),
(30, 'Budi Santoso', 'Jakarta', '0000-00-00', 'L', '2024-02-01', '2028-01-31'),
(31, 'Budi Santoso', 'Jakarta', '2000-05-15', 'L', '2024-02-01', '2028-01-31'),
(32, 'Budi Santoso', 'Jakarta', '2000-05-15', 'L', '2024-02-01', '2028-01-31'),
(12, 'indonesia', 'qas', '2025-02-20', 'P', '2025-02-20', '2025-02-20'),
(12, 'Wiwit Thoyyibah', 'Bogor', '2025-02-20', 'P', '2025-02-20', '2025-02-20'),
(11, 'Wiwit Thoyyibah', 'Sukabumii', '2025-02-11', 'P', '2025-02-07', '2025-02-14'),
(1, 'Wiwit Thoyyibah', 'Bogor', '2025-02-20', 'L', '2025-02-20', '2025-02-20');

--
-- Triggers `t_persons`
--
DELIMITER $$
CREATE TRIGGER `jikaInsert` AFTER INSERT ON `t_persons` FOR EACH ROW INSERT INTO t_log (keterangan) VALUES (new.nama)
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `jikaUpdate` AFTER UPDATE ON `t_persons` FOR EACH ROW INSERT INTO t_log (keterangan) VALUES ( CONCAT(old.nama, ' menjadi ', new.nama))
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_ampu`
-- (See below for the actual view)
--
CREATE TABLE `v_ampu` (
`id_ampu` int(11)
,`id_dosen` varchar(16)
,`masuk` date
,`keluar` date
,`nama` varchar(255)
,`jenis_kelamin` varchar(1)
,`tempat_lahir` varchar(255)
,`tanggal_lahir` date
,`id_matakuliah` varchar(16)
,`nama_matakuliah` varchar(255)
,`sks` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_dosen`
-- (See below for the actual view)
--
CREATE TABLE `v_dosen` (
`id_dosen` varchar(16)
,`id_persons` int(11)
,`id` int(11)
,`nama` varchar(255)
,`tempat_lahir` varchar(255)
,`tanggal_lahir` date
,`jenis_kelamin` varchar(1)
,`masuk` date
,`keluar` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_krs`
-- (See below for the actual view)
--
CREATE TABLE `v_krs` (
`id_krs` int(11)
,`nim` varchar(16)
,`semester` int(11)
,`tanggal` date
,`masuk` date
,`keluar` date
,`id_persons` int(11)
,`jenis_kelamin` varchar(1)
,`nama` varchar(255)
,`tempat_lahir` varchar(255)
,`tanggal_lahir` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_krs_detail`
-- (See below for the actual view)
--
CREATE TABLE `v_krs_detail` (
`id_detail` int(11)
,`id_krs` int(11)
,`id_matakuliah` varchar(16)
,`nama_matakuliah` varchar(255)
,`sks` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_mhs`
-- (See below for the actual view)
--
CREATE TABLE `v_mhs` (
`nim` varchar(16)
,`id_persons` int(11)
,`id` int(11)
,`nama` varchar(255)
,`tempat_lahir` varchar(255)
,`tanggal_lahir` date
,`jenis_kelamin` varchar(1)
,`masuk` date
,`keluar` date
);

-- --------------------------------------------------------

--
-- Structure for view `v_ampu`
--
DROP TABLE IF EXISTS `v_ampu`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_ampu`  AS SELECT `a`.`id` AS `id_ampu`, `a`.`id_dosen` AS `id_dosen`, `d`.`masuk` AS `masuk`, `d`.`keluar` AS `keluar`, `d`.`nama` AS `nama`, `d`.`jenis_kelamin` AS `jenis_kelamin`, `d`.`tempat_lahir` AS `tempat_lahir`, `d`.`tanggal_lahir` AS `tanggal_lahir`, `a`.`id_matakuliah` AS `id_matakuliah`, `mk`.`nama_matakuliah` AS `nama_matakuliah`, `mk`.`sks` AS `sks` FROM ((`t_ampu` `a` left join `t_matakuliah` `mk` on(`a`.`id_matakuliah` = `mk`.`id_matakuliah`)) left join `v_dosen` `d` on(`a`.`id_dosen` = `d`.`id_dosen`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_dosen`
--
DROP TABLE IF EXISTS `v_dosen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_dosen`  AS SELECT `d`.`id_dosen` AS `id_dosen`, `d`.`id_persons` AS `id_persons`, `p`.`id` AS `id`, `p`.`nama` AS `nama`, `p`.`tempat_lahir` AS `tempat_lahir`, `p`.`tanggal_lahir` AS `tanggal_lahir`, `p`.`jenis_kelamin` AS `jenis_kelamin`, `p`.`masuk` AS `masuk`, `p`.`keluar` AS `keluar` FROM (`t_dosen` `d` left join `t_persons` `p` on(`d`.`id_persons` = `p`.`id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_krs`
--
DROP TABLE IF EXISTS `v_krs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_krs`  AS SELECT `k`.`id` AS `id_krs`, `k`.`nim` AS `nim`, `k`.`semester` AS `semester`, `k`.`tanggal` AS `tanggal`, `m`.`masuk` AS `masuk`, `m`.`keluar` AS `keluar`, `m`.`id_persons` AS `id_persons`, `m`.`jenis_kelamin` AS `jenis_kelamin`, `m`.`nama` AS `nama`, `m`.`tempat_lahir` AS `tempat_lahir`, `m`.`tanggal_lahir` AS `tanggal_lahir` FROM (`t_krs` `k` left join `v_mhs` `m` on(`k`.`nim` = `m`.`nim`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_krs_detail`
--
DROP TABLE IF EXISTS `v_krs_detail`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_krs_detail`  AS SELECT `kd`.`id` AS `id_detail`, `kd`.`id_krs` AS `id_krs`, `kd`.`id_matakuliah` AS `id_matakuliah`, `mk`.`nama_matakuliah` AS `nama_matakuliah`, `mk`.`sks` AS `sks` FROM (`t_krs_detail` `kd` left join `t_matakuliah` `mk` on(`kd`.`id_matakuliah` = `mk`.`id_matakuliah`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_mhs`
--
DROP TABLE IF EXISTS `v_mhs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_mhs`  AS SELECT `m`.`nim` AS `nim`, `m`.`id_persons` AS `id_persons`, `p`.`id` AS `id`, `p`.`nama` AS `nama`, `p`.`tempat_lahir` AS `tempat_lahir`, `p`.`tanggal_lahir` AS `tanggal_lahir`, `p`.`jenis_kelamin` AS `jenis_kelamin`, `p`.`masuk` AS `masuk`, `p`.`keluar` AS `keluar` FROM (`t_mhs` `m` left join `t_persons` `p` on(`m`.`id_persons` = `p`.`id`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_ampu`
--
ALTER TABLE `t_ampu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `t_dosen`
--
ALTER TABLE `t_dosen`
  ADD PRIMARY KEY (`id_dosen`) USING BTREE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
