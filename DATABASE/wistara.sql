-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2020 at 05:32 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wistara`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE IF NOT EXISTS `ci_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('owner','admin') NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `username`, `nama_lengkap`, `password`, `level`) VALUES
(7, 'dhimas', 'dhimas winendra', '$2y$10$JaY3k3LTvRmTaX1eTlWdwOX2NW407m3cNvSuo1wx1H9tkvNl8/GgW', 'owner'),
(10, 'raden', 'dhimas winendra', '$2y$10$5sQtXeVExPs1Sov3kjim7.m0W5sLMm/yjgO3B4OnarMBtoduIUGjq', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_barang`
--

CREATE TABLE IF NOT EXISTS `tbl_barang` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `sub_1` varchar(20) NOT NULL,
  `sub_2` varchar(20) NOT NULL,
  `sub_3` varchar(20) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_barang`
--

INSERT INTO `tbl_barang` (`id`, `nama`, `kategori`, `sub_1`, `sub_2`, `sub_3`, `harga_beli`, `harga_jual`, `stok`) VALUES
(1, 'GM5Z-3B KIT', 'aki', '2W', 'ASPIRA', '', 20000, 100000, 16),
(2, 'GM7B-4B KIT', 'aki', '2W', 'GS', '', 50000, 100000, 8);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_pembelian`
--

CREATE TABLE IF NOT EXISTS `tbl_detail_pembelian` (
  `no` int(11) NOT NULL,
  `nonota` varchar(100) NOT NULL,
  `id_brg` varchar(100) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `jml_brg` varchar(100) NOT NULL,
  `harga_brg` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_pembelian`
--

INSERT INTO `tbl_detail_pembelian` (`no`, `nonota`, `id_brg`, `nama_brg`, `jml_brg`, `harga_brg`) VALUES
(1, '1000', '62', 'YTX9-BS MF', '1', '20000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_detail_penjualan`
--

CREATE TABLE IF NOT EXISTS `tbl_detail_penjualan` (
  `no` int(11) NOT NULL,
  `nonota` varchar(100) NOT NULL,
  `id_brg` varchar(100) NOT NULL,
  `nama_brg` varchar(100) NOT NULL,
  `jml_brg` varchar(100) NOT NULL,
  `harga_brg` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_detail_penjualan`
--

INSERT INTO `tbl_detail_penjualan` (`no`, `nonota`, `id_brg`, `nama_brg`, `jml_brg`, `harga_brg`) VALUES
(1, '1000', '1', 'GM5Z-3B KIT', '2', '100000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurnal_umum`
--

CREATE TABLE IF NOT EXISTS `tbl_jurnal_umum` (
  `no` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `nama_perkiraan` varchar(45) NOT NULL,
  `debet` int(11) NOT NULL,
  `kredit` int(11) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jurnal_umum`
--

INSERT INTO `tbl_jurnal_umum` (`no`, `tanggal`, `nama_perkiraan`, `debet`, `kredit`, `keterangan`) VALUES
(1, '2017-11-04', 'Kas', 300000, 0, 'Penjualan'),
(2, '2017-11-04', 'Penjualan', 0, 300000, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE IF NOT EXISTS `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `kategori` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `kategori`) VALUES
(1, 'aki'),
(2, 'oli'),
(3, 'ban');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE IF NOT EXISTS `tbl_pelanggan` (
  `no` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(12) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`no`, `nama`, `alamat`, `no_hp`) VALUES
(1, 'Taufik Adi', 'Jambi', '082377823390'),
(2, 'Wildan Ardana', 'Kalasan', '085381259322');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pembelian`
--

CREATE TABLE IF NOT EXISTS `tbl_pembelian` (
  `no` int(11) NOT NULL,
  `no_beli` varchar(100) NOT NULL,
  `total` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `keterangan` varchar(25) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pembelian`
--

INSERT INTO `tbl_pembelian` (`no`, `no_beli`, `total`, `tanggal`, `waktu`, `keterangan`) VALUES
(1, '1000', 20000, '2017-03-30', '2017-03-29 20:29:04', 'tukar tambah'),
(2, '1001', 20000, '2017-03-30', '2017-03-29 20:30:19', 'tukar tambah');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_penjualan`
--

CREATE TABLE IF NOT EXISTS `tbl_penjualan` (
  `no` int(11) NOT NULL,
  `nonota` varchar(100) NOT NULL,
  `kode_pel` varchar(16) NOT NULL,
  `diskon` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `garansi` varchar(25) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_penjualan`
--

INSERT INTO `tbl_penjualan` (`no`, `nonota`, `kode_pel`, `diskon`, `total`, `tanggal`, `waktu`, `garansi`) VALUES
(1, '1000', '1', 0, 200000, '2017-03-30', '2017-03-29 20:29:05', '-'),
(2, '1001', '1', 0, 100000, '2017-03-30', '2017-03-29 20:30:20', '-');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ref`
--

CREATE TABLE IF NOT EXISTS `tbl_ref` (
  `id` int(11) NOT NULL,
  `no_ref` int(11) NOT NULL,
  `nama_perkiraan` varchar(100) NOT NULL,
  `posisi` varchar(25) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ref`
--

INSERT INTO `tbl_ref` (`id`, `no_ref`, `nama_perkiraan`, `posisi`) VALUES
(1, 101, 'Kas', 'Aktiva Lancar'),
(2, 102, 'Piutang Pegawai', ''),
(3, 103, 'Piutang Dagang', 'Aktiva Lancar'),
(4, 104, 'Persediaan Barang', 'Aktiva Lancar'),
(5, 105, 'Sewa dibayar di muka ', 'Aktiva Lancar'),
(6, 106, 'Perlengkapan', 'Aktiva Lancar'),
(7, 107, 'Inventaris', 'Aktiva Tetap'),
(8, 108, 'Kendaraan', 'Aktiva Tetap'),
(9, 109, 'Akum.Peny.Inventaris', ''),
(10, 110, 'Akum.Peny.Kendaraan', ''),
(11, 201, 'Hutang Dagang', 'Pasiva'),
(12, 202, 'Hutang Bank', 'Pasiva'),
(13, 203, 'Hutang Gaji', 'Pasiva'),
(14, 301, 'Modal Owner', ''),
(15, 302, 'Prive Owner', ''),
(16, 501, 'Biaya Pembelian', 'Rugi-Laba'),
(17, 502, 'Biaya Servis Kendaraan', 'Rugi-Laba'),
(18, 503, 'Biaya Gaji', 'Rugi-Laba'),
(25, 504, 'Biaya Rek Air', 'Rugi-Laba'),
(20, 505, 'Biaya Peny.Inventaris', 'Rugi-Laba'),
(21, 506, 'Biaya Peny.Kendaraan', 'Rugi-Laba'),
(22, 507, 'Biaya Listrik & Telepon', 'Rugi-Laba'),
(23, 508, 'Biaya lain-lain', 'Rugi-Laba'),
(24, 401, 'Pembelian', ''),
(26, 402, 'Penjualan', ''),
(27, 509, 'Beban Persediaan', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_so`
--

CREATE TABLE IF NOT EXISTS `tbl_so` (
  `id` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(60) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `beli` int(11) NOT NULL,
  `jual` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=297 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_kategori`
--

CREATE TABLE IF NOT EXISTS `tbl_sub_kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `sub_kategori` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_kategori`
--

INSERT INTO `tbl_sub_kategori` (`id`, `kategori`, `sub_kategori`) VALUES
(1, 'aki', 'ASPIRA'),
(2, 'aki', 'G-FORCE'),
(3, 'aki', 'YUASA'),
(4, 'aki', 'BOSCH'),
(5, 'oli', 'AHM'),
(6, 'oli', 'FEDERAL OIL'),
(7, 'ban', 'ASPIRA'),
(8, 'ban', 'FDR'),
(9, 'ban', 'IRC');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_beli`
--

CREATE TABLE IF NOT EXISTS `tbl_temp_beli` (
  `no` int(11) NOT NULL,
  `sess_id` varchar(255) NOT NULL,
  `id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_temp_tt`
--

CREATE TABLE IF NOT EXISTS `tbl_temp_tt` (
  `no` int(11) NOT NULL,
  `id` varchar(15) NOT NULL,
  `sess_id` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `qty` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_detail_pembelian`
--
ALTER TABLE `tbl_detail_pembelian`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_detail_penjualan`
--
ALTER TABLE `tbl_detail_penjualan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_jurnal_umum`
--
ALTER TABLE `tbl_jurnal_umum`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_ref`
--
ALTER TABLE `tbl_ref`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_so`
--
ALTER TABLE `tbl_so`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sub_kategori`
--
ALTER TABLE `tbl_sub_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_temp_beli`
--
ALTER TABLE `tbl_temp_beli`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_temp_tt`
--
ALTER TABLE `tbl_temp_tt`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `tbl_detail_pembelian`
--
ALTER TABLE `tbl_detail_pembelian`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `tbl_detail_penjualan`
--
ALTER TABLE `tbl_detail_penjualan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tbl_jurnal_umum`
--
ALTER TABLE `tbl_jurnal_umum`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_pembelian`
--
ALTER TABLE `tbl_pembelian`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_penjualan`
--
ALTER TABLE `tbl_penjualan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `tbl_ref`
--
ALTER TABLE `tbl_ref`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tbl_so`
--
ALTER TABLE `tbl_so`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=297;
--
-- AUTO_INCREMENT for table `tbl_sub_kategori`
--
ALTER TABLE `tbl_sub_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `tbl_temp_beli`
--
ALTER TABLE `tbl_temp_beli`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_temp_tt`
--
ALTER TABLE `tbl_temp_tt`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
