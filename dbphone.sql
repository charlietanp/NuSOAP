-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2021 at 02:19 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbphone`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_hp`
--

CREATE TABLE `data_hp` (
  `kode_hp` int(10) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `tipe` varchar(225) NOT NULL,
  `spesifikasi` varchar(225) NOT NULL,
  `harga` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_hp`
--

INSERT INTO `data_hp` (`kode_hp`, `nama`, `tipe`, `spesifikasi`, `harga`) VALUES
(1134, 'OPPO', 'OPPO A31', 'Chipset: Mediatek MT6765V/CB Helio P35 (12nm)\r\nOS : Android 9.0 (Pie)\r\nRAM: 4GB.\r\nMemori internal: 64/128GB.\r\nUkuran HP: 163.9 x 75.5 x 8.3 mm.\r\nBerat HP: 180 gram.\r\nUkuran layar: HD Plus 1600 x 720 piksel, 6,5 inci.', 2000000),
(1135, 'OPPO', 'OPPO A5S', 'Layar: S-IPS LCD, 6.2 inch.\r\nResolusi layar: 720 x 1520 pixels, rasio 19:9 (~271 ppi density)\r\nChipset: Mediatek MT6765 Helio P35 (12nm)\r\nOS: Android 8.1 (Oreo); ColorOS 5.2.\r\nCPU: Octa-core (4x2.3 GHz Cortex-A53 & 4x1.8 GHz ', 2500000),
(1136, 'OPPO', 'OPPO RENO 4', 'Layar Super AMOLED 6,4 inci, resolusi 2.400 x 1.080 piksel, rasio layar 20:9, 409 ppi, dual punch-hole display\r\nDimensi dan bobot 160,3 x 73,9 x 7,7 mm 165 gram \r\nKamera belakang 48 MP, f/1.7, wide, PDAF 8 MP, f/2.2, ultrawid', 3500000),
(1137, 'XIOMI', 'Xiaomi Mi Mix Fold', 'Layar: AMOLED lipat, 8,1 inci 1860 x 2480 piksel\r\nChipset: Qualcomm Snapdragon 888 5G (5 nm)\r\nGPU: Adreno 660\r\nRAM: 12 GB, 16 GB\r\nMemori Internal: 256 GB, 512 GB\r\nMemori Eksternal: -\r\nKamera Belakang: 108 MP + 8 MP + 13 MP\r\nK', 6000000),
(1138, 'XIAOMI', 'Xiaomi Mi 11 Ultra', 'Layar: AMOLED 6,81 inci 1440 x 3200 piksel\r\nChipset: Qualcomm Snapdragon 888 5G (5 nm)\r\nGPU: Adreno 660\r\nRAM: 8 GB, 12 GB\r\nMemori Internal: 256 GB, 512 GB\r\nMemori Eksternal: -\r\nKamera Belakang: 50 MP + 48 MP + 48 MP\r\nKamera D', 5000000),
(1139, 'XIAOMI', 'Xiaomi Mi 11 Pro', 'Layar: AMOLED 6,81 inci 1440 x 3200 piksel\r\nChipset: Qualcomm Snapdragon 888 5G (5 nm)\r\nGPU: Adreno 660\r\nRAM: 8 GB, 12 GB\r\nMemori Internal: 128 GB, 256 GB\r\nMemori Eksternal: -\r\nKamera Belakang: 50 MP + 8 MP + 13 MP\r\nKamera De', 8500000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_hp`
--
ALTER TABLE `data_hp`
  ADD PRIMARY KEY (`kode_hp`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
