-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 20, 2022 at 01:49 PM
-- Server version: 10.8.3-MariaDB
-- PHP Version: 8.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myDatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `berkas `
--

CREATE TABLE `berkas` (
  `niu` varchar(15) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kd_istikharah` int(11) NOT NULL,
  `kd_calon` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `berkas`
--

INSERT INTO `berkas` (`niu`, `nama`, `kd_istikharah`, `kd_calon`, `password`) VALUES
('1234523456', 'Samsul A', 5, 55201, '8cb2237d0679ca88db6464eac60da96345513964'),
('2018023030', 'Yenie', 3, 59201, '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
('2022010001', 'Lukman Fakih L', 3, 59201, '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------

--
-- Table structure for table calon``
--
CREATE TABLE `calon` (
  `kd_calon` int(11) NOT NULL,
  `nama_calon` varchar(100) NOT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `calon`
--

INSERT INTO `calon` (`kd_calon`, `nama_calon`, `password`) VALUES
(55201, 'Ilmu Komputer', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(59201, 'Teknologi Informasi', '40bd001563085fc35165329ea1ff5c5ecbdbbeef');

-- --------------------------------------------------------
CREATE TABLE `users` (
  `iduser` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`iduser`, `username`, `password`, `level`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin');

--
-- Indexes for dumped tables
--
--
-- Table structure for table `semester`
--
CREATE TABLE `istikharah` (
  `kd_istikharah` int(11) NOT NULL,
  `k_istikharah` varchar(100) NOT NULL,
  `istikharah` enum('lulus','tidak lulus') NOT NULL,
  `kd_calon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `semester`
--

INSERT INTO `istikharah` (`kd_istikharah`, `k_istikharah`, `istikharah`, `kd_calon`) VALUES
(3, 'lulfch', 'lulus', 59201),
(4, 'gvjhbj', 'tidak lulus', 55201),


-- --------------------------------------------------------

--
-- Table structure for table `users`
--



--
-- Indexes for table `berkas`
--
ALTER TABLE `berkas`
  ADD PRIMARY KEY (`niu`) USING BTREE;

--
-- Indexes for table `calon`
--
ALTER TABLE `calon`
  ADD PRIMARY KEY (`kd_calon`) USING BTREE;

--
-- Indexes for table `istikharah`
--
ALTER TABLE `istikharah`
  ADD PRIMARY KEY (`kd_istikharah`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `istikharah`
--
ALTER TABLE `istikharah`
  MODIFY `kd_istikharah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
