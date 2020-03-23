-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 19, 2020 at 12:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbKepegawaian`
--

-- --------------------------------------------------------

--
-- Table structure for table `diklat`
--

CREATE TABLE `diklat` (
  `id` int(11) NOT NULL,
  `materi_id` int(11) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `diklat`
--

INSERT INTO `diklat` (`id`, `materi_id`, `pegawai_id`, `keterangan`) VALUES
(2, 6, 6, 'Hadir'),
(3, 6, 8, 'Izin'),
(4, 6, 9, 'Hadir'),
(5, 7, 4, 'Hadir'),
(6, 7, 5, 'Hadir'),
(7, 7, 12, 'Izin'),
(8, 8, 1, 'Hadir'),
(9, 8, 7, 'Hadir'),
(10, 8, 10, 'Hadir'),
(11, 9, 6, 'Hadir'),
(12, 9, 8, 'Hadir'),
(13, 10, 6, 'Hadir');

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id`, `nama`) VALUES
(1, 'Produk'),
(2, 'Pemasaran'),
(3, 'Personalia'),
(4, 'Keuangan'),
(5, 'Umum');

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id` int(11) NOT NULL,
  `gapok` double NOT NULL,
  `tunjab` double NOT NULL,
  `lain2` double DEFAULT NULL,
  `pegawai_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`id`, `gapok`, `tunjab`, `lain2`, `pegawai_id`) VALUES
(1, 10500000, 1000000, NULL, 1),
(2, 12500000, 1300000, NULL, 2),
(3, 13000000, 1300000, NULL, 3),
(4, 6500000, 500000, NULL, 4),
(5, 8000000, 500000, NULL, 5),
(6, 6500000, 300000, NULL, 6),
(7, 10500000, 1000000, NULL, 7),
(8, 5500000, 300000, NULL, 8),
(9, 6200000, 300000, NULL, 9),
(10, 10200000, 1000000, NULL, 10),
(11, 12500000, 1300000, NULL, 11),
(12, 7500000, 500000, NULL, 12);

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id`, `nama`) VALUES
(5, 'Asisten Manajer'),
(3, 'HRD'),
(1, 'Manager'),
(4, 'SPV'),
(2, 'Staff');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date NOT NULL,
  `tempat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `nama`, `tgl_mulai`, `tgl_akhir`, `tempat`) VALUES
(1, 'Orientasi', '2020-03-21', '2020-04-04', 'Gedung A Lt.1'),
(2, 'Onboarding', '2020-04-06', '2020-04-10', 'Gedung A Lt.2'),
(3, 'Kemampuan Teknis', '2020-04-13', '2020-04-15', 'Gedung B Lt.1'),
(4, 'Soft Skill', '2020-04-18', '2020-04-19', 'Gedung Sate Bandung'),
(5, 'Produk dan Jasa', '2020-04-24', '2020-04-25', 'Gedung A Lt.1'),
(6, 'Orientasi', '2020-03-21', '2020-04-04', 'Gedung A Lt.1'),
(7, 'Onboarding', '2020-04-06', '2020-04-10', 'Gedung A Lt.2'),
(8, 'Kemampuan Teknis', '2020-04-13', '2020-04-15', 'Gedung B Lt.1'),
(9, 'Soft Skill', '2020-04-18', '2020-04-19', 'Gedung Sate Bandung'),
(10, 'Produk dan Jasa', '2020-04-24', '2020-04-25', 'Gedung A Lt.1');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `alamat` text NOT NULL,
  `foto` varchar(30) DEFAULT NULL,
  `divisi_id` int(11) NOT NULL,
  `jabatan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `gender`, `alamat`, `foto`, `divisi_id`, `jabatan_id`) VALUES
(1, '2020001', 'Salamah Nur Aqidah', 'P', 'Jatimulya, Bekasi Timur', NULL, 2, 5),
(2, '2020002', 'Anas Al-Amin', 'L', 'Sesetan, Denpasar Selatan', NULL, 1, 1),
(3, '2020003', 'Umul Qirom', 'P', 'Mustika Jaya, Bekasi', NULL, 4, 1),
(4, '2020004', 'Nur Habibah', 'P', 'Tegal Lega, Bandung', NULL, 5, 3),
(5, '2020005', 'Husnul Rofiqoh', 'P', 'Summarecon, Bekasi', NULL, 4, 3),
(6, '2020006', 'Rizka Winda', 'P', 'Surabaya', NULL, 1, 2),
(7, '2020007', 'Feri Irawan', 'L', 'Tambun Selatan', NULL, 1, 5),
(8, '2020008', 'Fatih Al-Faruq', 'L', 'Sukabumi', NULL, 5, 2),
(9, '2020009', 'Syafiq Al-Faruq', 'L', 'Ciamis', NULL, 3, 2),
(10, '2020010', 'Jaka Purnama', 'L', 'Bandung Timur', NULL, 3, 5),
(11, '2020011', 'Endang Komarudin', 'L', 'Karawang', NULL, 2, 1),
(12, '2020012', 'Yayat Mulyati', 'P', 'Bekasi', NULL, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `role` varchar(45) NOT NULL,
  `pegawai_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `role`, `pegawai_id`) VALUES
(1, 'salnuraqidah', 'sal123', 'koordinasi', 1),
(2, 'anasal', 'anas123', 'koordinasi', 2),
(3, 'umul', 'umul123', 'koordinasi', 3),
(4, 'nhabibah', 'nur123', 'koordinasi', 4),
(5, 'husnulr', 'husnul123', 'koordinasi', 5),
(6, 'rizkawinda', 'rizka123', 'koordinasi', 6),
(7, 'feri', 'feri123', 'koordinasi', 7),
(8, 'fatihal', 'fatih123', 'koordinasi', 8),
(9, 'syafiqal', 'syafiq123', 'koordinasi', 9),
(10, 'jakapur', 'jaka123', 'koordinasi', 10),
(11, 'endang', 'endang123', 'koordinasi', 11),
(12, 'ymulyati', 'yayat123', 'koordinasi', 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diklat`
--
ALTER TABLE `diklat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_materi_has_pegawai_pegawai1_idx` (`pegawai_id`),
  ADD KEY `fk_materi_has_pegawai_materi1_idx` (`materi_id`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pegawai_id_UNIQUE` (`pegawai_id`),
  ADD KEY `fk_gaji_pegawai1_idx` (`pegawai_id`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama_UNIQUE` (`nama`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip_UNIQUE` (`nip`),
  ADD KEY `fk_pegawai_divisi_idx` (`divisi_id`),
  ADD KEY `fk_pegawai_jabatan1_idx` (`jabatan_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `password_UNIQUE` (`password`),
  ADD KEY `fk_user_pegawai1_idx` (`pegawai_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diklat`
--
ALTER TABLE `diklat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `gaji`
--
ALTER TABLE `gaji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diklat`
--
ALTER TABLE `diklat`
  ADD CONSTRAINT `fk_materi_has_pegawai_materi1` FOREIGN KEY (`materi_id`) REFERENCES `materi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_materi_has_pegawai_pegawai1` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `gaji`
--
ALTER TABLE `gaji`
  ADD CONSTRAINT `fk_gaji_pegawai1` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `fk_pegawai_divisi` FOREIGN KEY (`divisi_id`) REFERENCES `divisi` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pegawai_jabatan1` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_pegawai1` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
