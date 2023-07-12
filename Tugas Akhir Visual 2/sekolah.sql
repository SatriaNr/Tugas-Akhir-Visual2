-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2023 at 05:18 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `hubungan`
--

CREATE TABLE `hubungan` (
  `id` int(11) NOT NULL,
  `siswa_id` int(11) NOT NULL,
  `ortu_id` int(11) NOT NULL,
  `status_hub_anak` enum('Kandung','Bukan') NOT NULL,
  `keterangan` varchar(20) NOT NULL,
  `status_ortu` enum('Hidup','Meninggal') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hubungan`
--

INSERT INTO `hubungan` (`id`, `siswa_id`, `ortu_id`, `status_hub_anak`, `keterangan`, `status_ortu`) VALUES
(1, 1, 1, 'Kandung', 'Ibu', 'Hidup'),
(4, 2, 2, 'Kandung', 'Ibu', 'Hidup');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(10) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `jurusan` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama`, `jurusan`) VALUES
(1, 'Satria', 'TI'),
(2, 'Str', 'SI');

-- --------------------------------------------------------

--
-- Table structure for table `ortu`
--

CREATE TABLE `ortu` (
  `id` int(10) NOT NULL,
  `nik` char(16) NOT NULL,
  `nama` char(60) NOT NULL,
  `pendidikan` char(60) NOT NULL,
  `pekerjaan` char(60) NOT NULL,
  `telp` char(16) NOT NULL,
  `alamat` text NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `agama` char(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ortu`
--

INSERT INTO `ortu` (`id`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `jenis_kelamin`, `agama`) VALUES
(1, '12345', 'Murlianingsih', 'D3', 'Wiraswasta', '081333333', 'Sungai Baru', 'P', 'Islam'),
(2, '6543', 'Ningsih', 'D4', 'wiraswasta', '0899999', 'Sungai Baru', 'P', 'islam');

-- --------------------------------------------------------

--
-- Table structure for table `poin`
--

CREATE TABLE `poin` (
  `id` int(10) NOT NULL,
  `nama_poin` varchar(150) NOT NULL,
  `bobot` varchar(50) NOT NULL,
  `jenis` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poin`
--

INSERT INTO `poin` (`id`, `nama_poin`, `bobot`, `jenis`, `status`) VALUES
(1, 'Kerajinan', '10', 'Baik', 'Aktif'),
(2, 'Keburukan', '-10', 'Buruk', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(10) NOT NULL,
  `siswa_id` int(10) NOT NULL,
  `poin_id` int(10) NOT NULL,
  `wali_id` int(10) NOT NULL,
  `ortu_id` int(10) NOT NULL,
  `kelas_id` int(10) NOT NULL,
  `tanggal` date NOT NULL,
  `semester` enum('1','2') NOT NULL,
  `status` varchar(10) NOT NULL,
  `tingkat_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `siswa_id`, `poin_id`, `wali_id`, `ortu_id`, `kelas_id`, `tanggal`, `semester`, `status`, `tingkat_kelas`) VALUES
(1, 1, 1, 1, 1, 1, '2023-07-10', '1', 'Aktif', 'XII');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(10) NOT NULL,
  `nis` char(20) NOT NULL,
  `nisn` char(20) NOT NULL,
  `nama_siswa` varchar(60) NOT NULL,
  `nik` char(20) NOT NULL,
  `tempat_Lahir` varchar(150) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` enum('Laki-Laki','Perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `telp` char(16) NOT NULL,
  `hp` char(16) NOT NULL,
  `status` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nisn`, `nama_siswa`, `nik`, `tempat_Lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `telp`, `hp`, `status`) VALUES
(1, '12345678', '23456789', 'Satria', '123', 'Banjarmasin', '2003-09-13', 'Laki-Laki', 'Sungai Baru', '089677026601', '089677026601', 'Aktif'),
(2, '4567', '8765', 'Nuryan', '111', 'Banjarmasin', '2023-07-04', 'Laki-Laki', 'Sungai Baru', '0896111', '0896111', 'AKTIF');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(60) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id` int(10) NOT NULL,
  `nik/nip` char(20) NOT NULL,
  `nama` char(60) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `pendidikan` char(60) NOT NULL,
  `telp` char(16) NOT NULL,
  `matpel` char(30) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `status` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`id`, `nik/nip`, `nama`, `jenis_kelamin`, `pendidikan`, `telp`, `matpel`, `alamat`, `status`) VALUES
(1, '564', 'Satria', 'L', 'S1', '0813456', 'Visual', 'Sungai Baru', 'Aktif'),
(2, '543', 'Nuryan', 'L', 'S1', '08765', 'Delphi', 'Sungai', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hubungan`
--
ALTER TABLE `hubungan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswa_id` (`siswa_id`),
  ADD UNIQUE KEY `ortu_id` (`ortu_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ortu`
--
ALTER TABLE `ortu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poin`
--
ALTER TABLE `poin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `siswa_id` (`siswa_id`),
  ADD UNIQUE KEY `poin_id` (`poin_id`),
  ADD UNIQUE KEY `wali_id` (`wali_id`),
  ADD UNIQUE KEY `ortu_id` (`ortu_id`),
  ADD UNIQUE KEY `kelas_id` (`kelas_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hubungan`
--
ALTER TABLE `hubungan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ortu`
--
ALTER TABLE `ortu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `poin`
--
ALTER TABLE `poin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hubungan`
--
ALTER TABLE `hubungan`
  ADD CONSTRAINT `ortu_id` FOREIGN KEY (`ortu_id`) REFERENCES `ortu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_id` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `semester`
--
ALTER TABLE `semester`
  ADD CONSTRAINT `kelas_id2` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ortu_id2` FOREIGN KEY (`ortu_id`) REFERENCES `ortu` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `poin_id2` FOREIGN KEY (`poin_id`) REFERENCES `poin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_id2` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `wali_id2` FOREIGN KEY (`wali_id`) REFERENCES `wali_kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
