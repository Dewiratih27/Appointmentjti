-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2020 at 03:49 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_appointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `title` varchar(126) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `color` varchar(24) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `create_at` datetime DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL,
  `modified_at` datetime DEFAULT NULL,
  `modified_by` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_event` datetime NOT NULL,
  `end_event` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `start_event`, `end_event`) VALUES
(7, 'Bimbingan TA', '2020-11-19 00:00:00', '2020-11-20 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_confirm`
--

CREATE TABLE `tb_confirm` (
  `id_confirm` int(11) NOT NULL,
  `nama_confirm` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_confirm`
--

INSERT INTO `tb_confirm` (`id_confirm`, `nama_confirm`) VALUES
(1, 'Accept'),
(2, 'Decline'),
(3, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `tb_event`
--

CREATE TABLE `tb_event` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `start_event` datetime NOT NULL,
  `end_event` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_prodi`
--

CREATE TABLE `tb_prodi` (
  `id_prodi` int(11) NOT NULL,
  `nama_prodi` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_prodi`
--

INSERT INTO `tb_prodi` (`id_prodi`, `nama_prodi`) VALUES
(1, 'MIF'),
(2, 'TIF'),
(3, 'TKK');

-- --------------------------------------------------------

--
-- Table structure for table `tb_role`
--

CREATE TABLE `tb_role` (
  `id_role` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_role`
--

INSERT INTO `tb_role` (`id_role`, `role`) VALUES
(1, 'Admin'),
(2, 'Dosen'),
(3, 'Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `tb_status`
--

CREATE TABLE `tb_status` (
  `id_status` int(11) NOT NULL,
  `nama_status` varchar(128) NOT NULL,
  `color` varchar(128) NOT NULL,
  `jam` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_status`
--

INSERT INTO `tb_status` (`id_status`, `nama_status`, `color`, `jam`) VALUES
(1, 'Open', '#1cc88a', 'Pagi-Sore'),
(2, 'Close', '#e74a3b', 'Closed'),
(3, 'Pagi', '#f6c23e', 'Pagi-Siang'),
(4, 'Sore', '#fd7e14', 'Siang-Sore');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `nip/nim` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(258) NOT NULL,
  `id_role` int(1) NOT NULL,
  `id_prodi` int(11) NOT NULL,
  `image` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `name`, `nip/nim`, `email`, `password`, `id_role`, `id_prodi`, `image`, `date_created`) VALUES
(1, 'Ekky Aulia Rahman', '0', 'ekkyrahmanx1@gmail.com', '123456', 1, 0, 'default.png', 1602140297),
(4, 'Syamsul Arifin, S.Kom, M.Cs', '19810615 200604 1 002', 'syamsularifin@gmail.com', '123456', 2, 1, 'facf73e44eb1bb418f99310752bd6ee8.png', 1602222965),
(5, 'Dewi Ratih', 'E31180222', 'dewiratih01@gmail.com', '123456', 3, 1, 'default.png', 1602223209),
(8, 'Yogiswara, ST, MT', '19700929 200312 1 001', 'yogiswara@gmail.com', '123456', 2, 3, 'default.png', 1602693159),
(9, 'Hendra Yufit Riskiawan, S.Kom, M.Cs', '19830203 200604 1 003', 'hendrayufit@gmail.com', '123456', 2, 1, 'default.png', 1602697890),
(11, 'Victor Phoa, S.Si, M.Cs', '19851031 201803 1 001', 'victor@gmail.com', '123456', 2, 3, 'default.png', 1602737890),
(14, 'Aji Seto Arifianto, S.ST., M.T.', '19851128 200812 1 002', 'ajiseto@gmail.com', '123456', 2, 2, 'default.png', 1602742596),
(18, 'M Aldo Rizkaya', 'E31170509', 'aldorizkaya@gmail.com', '123456', 3, 2, 'default.png', 1602747889),
(19, 'M Badar Pamungkas', 'E31180510', 'badarp@gmail.com', '123456', 3, 1, 'default.png', 1602747938),
(23, 'M Haris', 'E31160509', 'haris@gmail.com', '123456', 3, 3, 'default.png', 1602748138),
(25, 'Wiji', '00988812312143', 'wiji@gmail.com', '123456', 2, 2, 'default.png', 1605686221);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_confirm`
--
ALTER TABLE `tb_confirm`
  ADD PRIMARY KEY (`id_confirm`);

--
-- Indexes for table `tb_event`
--
ALTER TABLE `tb_event`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indexes for table `tb_role`
--
ALTER TABLE `tb_role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `tb_status`
--
ALTER TABLE `tb_status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb_confirm`
--
ALTER TABLE `tb_confirm`
  MODIFY `id_confirm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_event`
--
ALTER TABLE `tb_event`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_prodi`
--
ALTER TABLE `tb_prodi`
  MODIFY `id_prodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_role`
--
ALTER TABLE `tb_role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_status`
--
ALTER TABLE `tb_status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
