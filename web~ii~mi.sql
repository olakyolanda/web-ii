-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2018 at 05:44 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.1.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `web_ii_mi`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nik` varchar(10) NOT NULL,
  `nama_dosen` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `create_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nik`, `nama_dosen`, `alamat`, `create_at`) VALUES
('0123456789', 'Akbar Juliansyah ', 'jl. Merdeka, no 69, mataram, Nusa Tenggara Barat', '2018-12-15 10:13:08');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiwa`
--

CREATE TABLE `mahasiwa` (
  `nim` varchar(10) NOT NULL,
  `nama_mhs` varchar(255) NOT NULL,
  `program_study` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiwa`
--

INSERT INTO `mahasiwa` (`nim`, `nama_mhs`, `program_study`, `created_at`) VALUES
('1700310001', 'Agus Sofian', 'D3 MI', '2018-12-12 09:56:11'),
('1700310002', 'Gita Safitri', 'D3 MI', '2018-12-12 09:56:55'),
('1700310003', 'Mulyadi Bahtiar', 'D3 MI', '2018-12-12 09:59:06'),
('1700310004', 'Imam Muammar', 'D3 MI', '2018-12-12 11:14:02'),
('1700310005', 'qwe', 'D3 MI', '2018-12-12 11:21:10');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `Kd` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `isi` text NOT NULL,
  `penulis` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`Kd`, `judul`, `isi`, `penulis`, `created_at`) VALUES
(20, 'pengumuman 876uryfyt', '564Isi pengumuman 3kjhfgk', '67tgiut', '2018-11-07 12:23:53'),
(21, 'ghjjhgj', 'hdhjfhg', 'Sayaaaaaaa', '2018-11-26 16:45:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nik`);

--
-- Indexes for table `mahasiwa`
--
ALTER TABLE `mahasiwa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`Kd`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `Kd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
