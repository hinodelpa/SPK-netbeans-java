-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 27, 2018 at 02:04 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ss`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bobot`
--

CREATE TABLE `tbl_bobot` (
  `b1` float DEFAULT NULL,
  `b2` float DEFAULT NULL,
  `b3` float DEFAULT NULL,
  `b4` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bobot`
--

INSERT INTO `tbl_bobot` (`b1`, `b2`, `b3`, `b4`) VALUES
(0.25, 0.15, 0.3, 0.3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kriteria`
--

CREATE TABLE `tbl_kriteria` (
  `R` char(100) NOT NULL,
  `C1` float DEFAULT NULL,
  `C2` int(11) DEFAULT NULL,
  `C3` int(11) DEFAULT NULL,
  `C4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kriteria`
--

INSERT INTO `tbl_kriteria` (`R`, `C1`, `C2`, `C3`, `C4`) VALUES
('Jacob', 3, 99, 6, 125),
('Joni', 3.1, 88, 7, 144),
('Jumpi', 3, 94, 5, 111),
('Landi', 3.2, 80, 7, 145),
('Quik', 3.3, 89, 6, 121),
('Sila', 3.2, 96, 6, 135);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_peringkat`
--

CREATE TABLE `tbl_peringkat` (
  `Nama` varchar(100) NOT NULL,
  `nilai` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_peringkat`
--

INSERT INTO `tbl_peringkat` (`Nama`, `nilai`) VALUES
('Hilarius', 0.900491),
('Jacob', 0.893036),
('Joni', 0.966113),
('Jumpi', 0.813638),
('Landi', 0.963636),
('Quik', 0.892336),
('Sila', 0.924332);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `password`) VALUES
('admin', 'admin'),
('aga', 'aga'),
('hilarius', 'hilarius'),
('putri', 'putri');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_kriteria`
--
ALTER TABLE `tbl_kriteria`
  ADD PRIMARY KEY (`R`);

--
-- Indexes for table `tbl_peringkat`
--
ALTER TABLE `tbl_peringkat`
  ADD PRIMARY KEY (`Nama`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
