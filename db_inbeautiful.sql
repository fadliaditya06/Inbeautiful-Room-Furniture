-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2023 at 12:56 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_inbeautiful`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `gambar_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `jumlah_produk` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_produk`, `gambar_produk`, `nama_produk`, `jumlah_produk`, `subtotal`) VALUES
(1, 1, 12, 'produk1702464476.jpg', 'asdasda', '1', '123123'),
(2, 2, 12, 'produk1702464476.jpg', 'asdasda', '1', '123123'),
(3, 3, 12, 'produk1702464476.jpg', 'asdasda', '1', '123123'),
(4, 4, 11, 'produk1702464098.jpg', 'asdasda', '1', '123'),
(5, 5, 11, 'produk1702464098.jpg', 'asdasda', '1', '123'),
(6, 6, 12, 'produk1702464476.jpg', 'asdasda', '1', '123123'),
(7, 7, 10, 'produk1702464088.jpg', 'asd', '1', '123'),
(9, 9, 12, 'produk1702464476.jpg', 'asdasda', '1', '123123'),
(10, 10, 12, 'produk1702464476.jpg', 'asdasda', '1', '123123'),
(11, 11, 12, 'produk1702464476.jpg', 'asdasda', '1', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `gambar_kategori` varchar(100) NOT NULL,
  `nama_kategori` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `gambar_kategori`, `nama_kategori`) VALUES
(1, 'kategori1702464072.png', 'Kursi'),
(2, 'kategori1702464063.png', 'Meja'),
(3, 'kategori1702464054.png', 'Lemari'),
(4, 'kategori1702464041.png', 'Tempat Tidur asdasd asdasd asadasdas asdasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah_produk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `id`, `id_produk`, `jumlah_produk`) VALUES
(54, 6, 8, '1');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `gambar_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `deskripsi_produk` varchar(9999) NOT NULL,
  `harga_produk` varchar(100) NOT NULL,
  `stok_produk` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `gambar_produk`, `nama_produk`, `deskripsi_produk`, `harga_produk`, `stok_produk`) VALUES
(8, 2, 'produk1701749960.jpg', 'asdf', '<p>1123</p>', '1234', '1'),
(9, 3, 'produk1701749970.jpg', 'asdasdas', '<p>asdasdas</p>', '12312312', '1231230'),
(10, 3, 'produk1702464088.jpg', 'asd', '<p>asd</p>', '123', '7460'),
(11, 4, 'produk1702464098.jpg', 'asdasda asd', '<p>asdas dasasdas asdas</p>', '123', '121'),
(12, 4, 'produk1702464476.jpg', 'asdasda', '<p>asdasdasaaaaa1 aaaaa</p>', '123123', '12312311'),
(13, 1, 'produk1702525428.jpg', 'Kursi Susun Uno Texas', '<p>12312312asdsaaaaaaaaaaaaaaaa</p><p>12312312asdsaaaaaaaaaaaaaaaa</p><p>12312312asdsaaaaaaaaaaaaaaaa</p><p>12312312asdsaaaaaaaaaaaaaaaa</p><p>12312312asdsaaaaaaaaaaaaaaaa</p><p>12312312asdsaaaaaaaaaaaaaaaa</p><p>12312312asdsaaaaaaaaaaaaaaaa</p><p>12312312asdsaaaaaaaaaaaaaaaa12312312asdsaaaaaaaaaaaaaaaa</p><p>12312312asdsaaaaaaaaaaaaaaaa</p><p>&nbsp;</p>', '1231231', '12312312');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL,
  `total_harga` varchar(100) NOT NULL,
  `pembayaran` enum('cod') NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `status` enum('Menunggu Konfirmasi','Dalam Proses','Selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id`, `tanggal_transaksi`, `total_harga`, `pembayaran`, `no_hp`, `alamat`, `status`) VALUES
(1, 2, '2023-12-14', '123123', 'cod', '0813-1234-5678', ' Batu aji, Batam, Indonesia ', 'Menunggu Konfirmasi'),
(2, 2, '2023-12-14', '123123', 'cod', '0813-1234-5678', ' Batu aji, Batam, Indonesia ', 'Menunggu Konfirmasi'),
(3, 2, '2023-12-14', '123123', 'cod', '0813-1234-5678', ' Batu aji, Batam, Indonesia ', 'Menunggu Konfirmasi'),
(4, 2, '2023-12-14', '123', 'cod', '0813-1234-5678', ' Batu aji, Batam, Indonesia ', 'Menunggu Konfirmasi'),
(5, 2, '2023-12-14', '123', 'cod', '0813-1234-5678', ' Batu aji, Batam, Indonesia ', 'Menunggu Konfirmasi'),
(6, 2, '2023-12-14', '123123', 'cod', '0813-1234-5678', ' Batu aji, Batam, Indonesia ', 'Menunggu Konfirmasi'),
(7, 2, '2023-12-14', '123', 'cod', '0813-1234-5678', ' Batu aji, Batam, Indonesia ', 'Dalam Proses'),
(9, 2, '2023-12-14', '123123', 'cod', '0813-1234-5678', ' Batu aji, Batam, Indonesia ', 'Dalam Proses'),
(10, 2, '2023-12-14', '123123', 'cod', '0813-1234-5678', ' Batu aji, Batam, Indonesia ', 'Selesai'),
(11, 2, '2023-12-14', '123123', 'cod', '0813-1234-5678', ' Batu aji, Batam, Indonesia ', 'Selesai');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `peran` enum('Penjual','Pembeli') NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `no_hp` varchar(100) NOT NULL,
  `alamat` varchar(9999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `peran`, `nama`, `username`, `password`, `email`, `no_hp`, `alamat`) VALUES
(1, 'Penjual', 'Lea antony', 'Lea', '$2y$10$ke0YCVqyxP6KwARQ9hg0Nuh24GibYKpjw9gC8MwmUd9x0SIm8UzHa', '', '', ''),
(2, 'Pembeli', 'Juan Jonathan N.', 'Juan', '$2y$10$6QzoqyWKWTegFHahpoOcde1KsEjavdXWvqj1x6JHU6JJZjqpza0l.', '', '0813-1234-5678', 'Batu aji, Batam, Indonesia'),
(3, 'Penjual', 'asd', 'asd', '$2y$10$b6sW91sN1d7hU8LREXK5Zu8UNpAlOJe.k1Xs/sBodK9e5ojOff/Tu', 'leaantony1707@gmail.com', '', ''),
(4, 'Penjual', 'zxc', 'zxc', '$2y$10$ZQpiC3d2IcXDQBwrJovP1uNXWzBRH9z8I6C1anUEfwxZJDjgFvJAe', 'tonimemangkeren76@gmail.com', '', ''),
(5, 'Pembeli', 'qwe', 'qwe', '$2y$10$AMdthsWs4h/fX30eI5lcd.CDE.1EVdGlspu37J26a4elG3CYzHmBm', 'tonimemangkeren76@gmail.com', '', ''),
(6, 'Pembeli', 'pembeli', 'pembeli', '$2y$10$/ST4EjJ1j0NMnQ5G6MCqbOY3H2ATRHUNu2fZ2nXx.5sVi09SecuTe', 'pembeli@pembeli.com', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
