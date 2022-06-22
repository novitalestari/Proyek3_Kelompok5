-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2022 at 10:30 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spicyfoods`
--

-- --------------------------------------------------------

--
-- Table structure for table `conter`
--

CREATE TABLE `conter` (
  `Nama Conter` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `conter`
--

INSERT INTO `conter` (`Nama Conter`) VALUES
('Ramen Cemen'),
('Ramen Tambi'),
('Bunda Nayla'),
('Seblak Mba '),
('Seblak Mand'),
('Seblak Cint'),
('Seblak Aspe'),
('Seblak Bund'),
('Boci Juara'),
('Red Chicken'),
('Seblak Mba ');

-- --------------------------------------------------------

--
-- Table structure for table `favorite`
--

CREATE TABLE `favorite` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `idproduk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `favorite`
--

INSERT INTO `favorite` (`id`, `userid`, `idproduk`) VALUES
(1, 'seblak ', 1),
(2, 'baso aci', 2),
(3, 'fire wings 3 pcs', NULL),
(4, 'seblak ceker \r\n', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama`) VALUES
(1, 'Ramen'),
(2, 'Seblak'),
(3, 'Baso Aci'),
(4, 'Ayam Geprek'),
(5, 'Chicken Spicy');

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` int(11) NOT NULL,
  `tanggal` datetime DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `useridto` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `st` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `propinsi` varchar(255) DEFAULT NULL,
  `kodepos` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `userid`, `nama`, `alamat`, `kota`, `propinsi`, `kodepos`, `telp`, `email`) VALUES
(1, NULL, 'novita lestari', 'desa tukdana', 'indramayu', 'jawa barat', '12345', '081902435678', 'novitalestari0602@gmail.com'),
(2, NULL, 'syafira nour dillah', 'lemah abang', 'indramayu', 'jawa barat', '45212', '081901462076', 'syafirandh89@gmail.com'),
(3, NULL, 'silvia ika nurmayanti', 'desa teluk agung', 'indramayu', 'jawa barat', '34526', '078965325789', 'silviaikanurmayanti@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(11) NOT NULL,
  `nota` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `idproduk` int(11) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `harga` varchar(255) DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `idwarung` int(11) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `st` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `nota`, `tanggal`, `idproduk`, `judul`, `harga`, `thumbnail`, `jumlah`, `userid`, `idwarung`, `flag`, `st`) VALUES
(6, NULL, '19:06:2022', NULL, 'ramen', '10000', 'ramen_pedas', 1, NULL, NULL, NULL, NULL),
(7, NULL, '19:06:2022', NULL, 'seblak', '20000', 'seblak pedas', 1, NULL, NULL, NULL, NULL),
(8, NULL, '19:06:2022', NULL, 'seblak', '20000', 'seblak pedas', 1, NULL, NULL, NULL, NULL),
(9, NULL, '19:06:2022', NULL, 'ramen chiken', '20', 'ini thumbnail', 1, NULL, NULL, NULL, NULL),
(10, NULL, '19:06:2022', NULL, 'ramen curry chiken', '20', 'ini thumbnail', 1, NULL, NULL, NULL, NULL),
(11, NULL, '19:06:2022', NULL, 'baso aci komplit', '15', 'ini thumbnail', 1, NULL, NULL, NULL, NULL),
(12, NULL, '19:06:2022', NULL, 'seblak ceker', '11', 'ini thumbnail', 1, NULL, NULL, NULL, NULL),
(13, NULL, '19:06:2022', NULL, 'seblak ceker', '11', 'ini thumbnail', 1, NULL, NULL, NULL, NULL),
(14, NULL, '19:06:2022', NULL, 'baso aci komplit', '15', 'ini thumbnail', 1, NULL, NULL, NULL, NULL),
(15, NULL, '19:06:2022', NULL, 'baso aci biasa', '10', 'ini thumbnail', 1, NULL, NULL, NULL, NULL),
(23, NULL, '19:06:2022', NULL, 'ramen chiken', '20', 'ini thumbnail', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `idkategori` int(11) DEFAULT NULL,
  `idsubkategori` int(11) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `subkategori` varchar(255) DEFAULT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `deskripsi` text NOT NULL,
  `harga` double(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `idkategori`, `idsubkategori`, `kategori`, `subkategori`, `judul`, `deskripsi`, `harga`) VALUES
(1, NULL, NULL, 'ramen', 'ramen chiken', 'ramen chiken', 'ramen dengan kuah kaldu dan ayam dengan potongan ayam,sayur,dan dengan berbagai level 1-5', 20),
(2, NULL, NULL, 'ramen', 'ramen curry chiken', 'ramen curry chiken', 'mie ramen dengan kuah kari ayam dengan dada ayam fillet', 20),
(3, NULL, NULL, 'seblak', 'seblak ceker', 'seblak ceker', 'seblak krupuk kemplang dan topping ceker mulai level 1-5', 11),
(4, NULL, NULL, 'seblak', 'seblak komplit', 'seblak komplit', 'seblak kerupuk dengan toping bakso,sosis,telur puyuh,ceker,dan sayuran dengan level 1-10', 17),
(5, NULL, NULL, 'seblak ', 'seblak kerupuk', 'seblak kerupuk', 'seblak dengan berbagai kerupuk tanpa topping', 10),
(6, NULL, NULL, 'seblak', 'seblak bakso', 'seblak bakso', 'seblak kerupuk dengan toping bakso ayam/sapi', 10),
(7, NULL, NULL, 'baso aci', 'baso aci komplit', 'baso aci komplit', 'baso aci komplit dengan isian 3pcs baso tulang rangu,5pcs baso aci,pilus cikur,batagor lidah dan ceker', 15),
(8, NULL, NULL, 'baso aci', 'baso aci biasa', 'baso aci biasa', 'baso aci dengan isi 7pcs baso aci,telur,batagor lidah,dan cikur', 10),
(10, NULL, NULL, 'Ayam geprek', 'Ayam Geprek', 'Ayam Geprek', 'Ayam Geprek', 13),
(11, NULL, NULL, 'chiken spicy', 'fire wings 3pcs', 'fire wings 3 pcs', 'sayap ayam pedas level 1-5 3 pcs', 17),
(12, NULL, NULL, 'chiken spicy', 'fire wings 6 pcs', 'fire wings 6 pcs', 'sayap ayam pedas isi 6 pcs', 22),
(13, NULL, NULL, 'chiken spicy', 'chiken spicy drum stick', 'chiken spicy drum stick', 'potongan ayam (paha bawa)dengan level 1-5', 13),
(14, NULL, NULL, 'tomyum', 'tomyum special', 'tomyum special', 'sayur dengan kuah tomyum yang berisi dengan sosis seafood', 25),
(15, NULL, NULL, 'tomyum', 'tomyum biasa', 'tomyum biasa', 'tomyum dengan pedas sedang ', 20);

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE `signin` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stokwarung`
--

CREATE TABLE `stokwarung` (
  `id` int(11) NOT NULL,
  `idwarung` int(11) DEFAULT NULL,
  `idproduk` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stokwarung`
--

INSERT INTO `stokwarung` (`id`, `idwarung`, `idproduk`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subkategori`
--

CREATE TABLE `subkategori` (
  `id` int(11) NOT NULL,
  `idkategori` int(11) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subkategori`
--

INSERT INTO `subkategori` (`id`, `idkategori`, `nama`) VALUES
(17, NULL, 'seblak ceker'),
(18, NULL, 'seblak komplit'),
(19, NULL, 'seblak bakso'),
(20, NULL, 'ramen katsu chiken'),
(21, NULL, 'ramen curry chiken'),
(22, NULL, 'baso aci komplit'),
(23, NULL, 'baso aci biasa'),
(25, NULL, 'Ayam Geprek'),
(26, NULL, 'fire wings 3 pcs'),
(27, NULL, 'fire wings 6 pcs'),
(30, NULL, 'chiken spicy drum stick ');

-- --------------------------------------------------------

--
-- Table structure for table `warung`
--

CREATE TABLE `warung` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `kota` varchar(255) DEFAULT NULL,
  `propinsi` varchar(255) DEFAULT NULL,
  `kodepos` varchar(255) DEFAULT NULL,
  `telp` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `warung`
--

INSERT INTO `warung` (`id`, `userid`, `nama`, `alamat`, `kota`, `propinsi`, `kodepos`, `telp`, `email`) VALUES
(1, NULL, 'kedai bunda naila', 'jatibarang', 'indramayu', 'jawabarat', '12345', '08912345678', 'kedaibundanaila12@gmail.com'),
(2, NULL, 'seblak bunda', 'margadadi indramayu', 'indramayu', 'jawa barat', '23455', '089128374656', 'kedaiseblakbunda@gmai.com'),
(3, NULL, 'Seblak Bunda Nayla', 'Jalan Siliwangi\r\nJatibarang\r\nKabupaten Indramayu\r\nJawa Barat 45273\r\nIndonesia', 'Indamayu', 'Jawa Barat', '45273', '0895-8042-23138', '-'),
(4, NULL, 'Ramen Kiro', 'Jatibarang - Balongan, Tambi, Kec. Sliyeg, Kabupaten Indramayu, Jawa Barat 45281', 'Indramayu', 'Jawa Barat', '45281', '0899-1065-953', '-'),
(5, NULL, 'Seblak Mantul Mba Ega', 'Jl. Sindangkerta, Sindangkerta, Kec. Lohbener, Kabupaten Indramayu, Jawa Barat 45252', 'Indramayu', 'Jawa Barat', '45252', '0818-0410-8744', '-'),
(6, NULL, 'Baso Aci Juara', 'Jl. Jend. Sudirman No.60, Lemahabang, Kec. Indramayu, Kabupaten Indramayu, Jawa Barat 45212', 'Indamayu', 'Jawa Barat', '45212', '0877-4441-8222', '-'),
(7, NULL, 'Ayam Geprek Kedai Nyonya', 'Jl. Di Panjaitan No.79, Karanganyar, Kec. Indramayu, Kabupaten Indramayu, Jawa Barat 45213', 'Indramayu', 'Jawa Barat', '45213', '0812-2147-8521', '-'),
(8, NULL, 'Seblak Manda', 'Rembatan Kulon', 'Indramayu', 'Jawa Barat', '-', '-', '-'),
(9, NULL, 'Red Chicken', 'Jl. Yos Sudarso No.103, Paoman, Kec. Indramayu, Kabupaten Indramayu, Jawa Barat 45211', 'Indramayu', 'Jawa Barat', '45211', '0812-7000-0973', '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favorite`
--
ALTER TABLE `favorite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signin`
--
ALTER TABLE `signin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stokwarung`
--
ALTER TABLE `stokwarung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subkategori`
--
ALTER TABLE `subkategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warung`
--
ALTER TABLE `warung`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favorite`
--
ALTER TABLE `favorite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `signin`
--
ALTER TABLE `signin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stokwarung`
--
ALTER TABLE `stokwarung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subkategori`
--
ALTER TABLE `subkategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `warung`
--
ALTER TABLE `warung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
