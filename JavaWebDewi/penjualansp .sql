-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2018 at 04:49 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualansp`
--

-- --------------------------------------------------------

--
-- Table structure for table `master`
--

CREATE TABLE `master` (
  `kd_brg` varchar(12) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `harga_jual` int(6) NOT NULL,
  `harga_beli` int(6) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `stok_brg` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master`
--

INSERT INTO `master` (`kd_brg`, `nama_brg`, `harga_jual`, `harga_beli`, `satuan`, `kategori`, `stok_brg`) VALUES
('A001', 'Spion', 37500, 30000, 'Pasang', 'Baru', 9),
('A002', 'Lampu Led', 62500, 50000, 'Unit', 'Baru', 12),
('A003', 'Jok Mio', 187500, 150000, 'Unit', 'Baru', 12),
('A004', 'Dasbor Honda', 312500, 250000, 'Unit', 'Baru', 12);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `tgl_faktur` date NOT NULL,
  `no_faktur` varchar(50) NOT NULL,
  `nama_konsumen` varchar(50) NOT NULL,
  `kd_brg` varchar(12) NOT NULL,
  `jumlah` int(6) NOT NULL,
  `harga_satuan` int(6) NOT NULL,
  `harga_total` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`tgl_faktur`, `no_faktur`, `nama_konsumen`, `kd_brg`, `jumlah`, `harga_satuan`, `harga_total`) VALUES
('2018-10-18', 'NF_002', 'Dewi', 'A002', 3, 62500, 187500),
('2018-10-18', 'NF_003', 'Safitri', 'A004', 2, 312500, 625000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master`
--
ALTER TABLE `master`
  ADD PRIMARY KEY (`kd_brg`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
