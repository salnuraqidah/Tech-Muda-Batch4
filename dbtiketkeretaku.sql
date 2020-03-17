-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Mar 2020 pada 00.45
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbtiketkeretaku`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `checkout`
--

CREATE TABLE `checkout` (
  `idcheckout` int(11) NOT NULL,
  `pembayaran_idpembayaran` int(11) NOT NULL,
  `pesanan_idpesanan` int(11) NOT NULL,
  `kodeBooking` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `checkout`
--

INSERT INTO `checkout` (`idcheckout`, `pembayaran_idpembayaran`, `pesanan_idpesanan`, `kodeBooking`) VALUES
(1, 1, 1, '001asd'),
(2, 2, 2, '002asdw'),
(3, 3, 3, '003asde'),
(4, 4, 4, '004asdr'),
(5, 5, 5, '005asdt'),
(6, 6, 6, '006asdy'),
(7, 7, 7, '007asdu'),
(8, 8, 8, '008asdi'),
(9, 9, 9, '009asdo'),
(10, 10, 10, '0010asdp');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `idcustomer` int(11) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `nomorHp` varchar(13) NOT NULL,
  `email` text,
  `alamat` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`idcustomer`, `nama`, `nomorHp`, `email`, `alamat`) VALUES
(1, 'Salamah Nur Aqidah', '082112369475', 'salamah@gmail.com', 'Jalan Melati No 3, Jakarta Barat'),
(2, 'Afifah Nafis', '0815674652781', 'afifah14@gmail.com', 'jl.seruling, Bekasi'),
(3, 'Azizah Emma', '081267546798', 'azizah45@gmail.com', 'jl.pangandaran, Pangandaran'),
(4, 'Lestari', '088987675432', 'lestari32@gmail.com', 'jl.sukabumi, Bekasi'),
(5, 'Citra Puspita', '085643547689', 'citra03@gmail.com', 'jl.gamelan, Jakarta Selatan'),
(6, 'Budi', '08134536782', 'budi65@gmail.com', 'Jakarta Pusat'),
(7, 'Ani', '08574365782', 'ani76@gmail.com', 'Palembang'),
(8, 'Caca', '0832876954', 'caca12@gmail.com', 'Sukabumi'),
(9, 'Dodi', '08657854652', 'dodi37@gmail.com', 'Padang'),
(10, 'Siti', '08787665985', 'siti56@gmail.com', 'Bali');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `idpembayaran` int(11) NOT NULL,
  `totalHarga` double NOT NULL,
  `metodePembayaran` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`idpembayaran`, `totalHarga`, `metodePembayaran`) VALUES
(1, 250000, 'transfer'),
(2, 350000, 'transfer'),
(3, 350000, 'virtual account'),
(4, 500000, 'transfer'),
(5, 450000, 'virtual account'),
(6, 750000, 'transfer'),
(7, 550000, 'virtual account'),
(8, 200000, 'transfer'),
(9, 320000, 'virtual account'),
(10, 250000, 'transfer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesanan`
--

CREATE TABLE `pesanan` (
  `idpesanan` int(11) NOT NULL,
  `tanggalPesan` datetime NOT NULL,
  `tanggalKeberangkatan` datetime NOT NULL,
  `asalKeberangkatan` varchar(16) NOT NULL,
  `tanggalTiba` datetime NOT NULL,
  `kotaTujuan` varchar(16) NOT NULL,
  `jumlahPenumpang` int(11) NOT NULL,
  `customer_idcustomer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesanan`
--

INSERT INTO `pesanan` (`idpesanan`, `tanggalPesan`, `tanggalKeberangkatan`, `asalKeberangkatan`, `tanggalTiba`, `kotaTujuan`, `jumlahPenumpang`, `customer_idcustomer`) VALUES
(1, '2020-01-01 19:05:00', '2020-01-08 20:05:00', 'Jakarta', '2020-01-09 09:05:00', 'Surabaya', 2, 1),
(2, '2020-02-02 20:15:00', '2020-02-20 08:20:00', 'Bekasi', '2020-02-09 13:05:00', 'Bandung', 4, 2),
(3, '2020-03-13 10:15:00', '2020-03-15 06:30:00', 'Senen', '2020-03-15 21:10:00', 'Yogyakarta', 3, 3),
(4, '2020-02-12 18:30:00', '2020-02-14 07:20:00', 'Sidareja', '2020-02-14 13:05:00', 'Kebumen', 2, 4),
(5, '2020-01-03 08:10:00', '2020-01-05 09:00:00', 'Banjar', '2020-01-05 18:50:00', 'Balapan', 1, 5),
(6, '2020-03-05 09:45:00', '2020-03-12 11:45:00', 'Gandrungmangu', '2020-03-12 20:50:00', 'Ngawi', 2, 6),
(7, '2020-03-02 20:35:00', '2020-03-07 12:51:00', 'Gambir', '2020-03-07 18:45:00', 'Cilacap', 2, 7),
(8, '2020-03-05 09:15:00', '2020-03-10 08:20:00', 'Kutajaya', '2020-03-10 13:05:00', 'Semarang', 1, 8),
(9, '2020-03-14 10:15:00', '2020-03-16 09:20:00', 'Bandung', '2020-03-16 13:05:00', 'Bekasi', 4, 9),
(10, '2020-01-03 08:10:00', '2020-01-05 09:00:00', 'Banjar', '2020-01-05 18:50:00', 'Balapan', 1, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transfer`
--

CREATE TABLE `transfer` (
  `idtransfer` int(11) NOT NULL,
  `namaBank` varchar(45) NOT NULL,
  `pembayaran_idpembayaran` int(11) NOT NULL,
  `noRekening` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transfer`
--

INSERT INTO `transfer` (`idtransfer`, `namaBank`, `pembayaran_idpembayaran`, `noRekening`) VALUES
(1, 'BNI', 1, 1234567891),
(2, 'BNI', 2, 2147483647),
(4, 'BRI', 4, 1234567875),
(6, 'Mandiri', 6, 2147483647),
(8, 'Mandiri', 8, 2147483647),
(10, 'BCA', 10, 2147483647),
(11, 'BNI', 1, 1234567891),
(12, 'BNI', 2, 2147483647),
(14, 'BRI', 4, 1234567875),
(16, 'Mandiri', 6, 2147483647),
(18, 'Mandiri', 8, 2147483647),
(20, 'BCA', 10, 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `virtualaccount`
--

CREATE TABLE `virtualaccount` (
  `idvirtualAccount` int(11) NOT NULL,
  `nomorPembayaran` varchar(45) NOT NULL,
  `pembayaran_idpembayaran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `virtualaccount`
--

INSERT INTO `virtualaccount` (`idvirtualAccount`, `nomorPembayaran`, `pembayaran_idpembayaran`) VALUES
(1, '2334679123', 3),
(2, '345679173', 5),
(3, '234537123', 7),
(4, '654798123', 9);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`idcheckout`),
  ADD UNIQUE KEY `idcheckout_UNIQUE` (`idcheckout`),
  ADD UNIQUE KEY `kodeBooking_UNIQUE` (`kodeBooking`),
  ADD KEY `fk_pembayaran_has_pesanan_pembayaran1` (`pembayaran_idpembayaran`),
  ADD KEY `fk_pembayaran_has_pesanan_pesanan1` (`pesanan_idpesanan`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`idcustomer`),
  ADD UNIQUE KEY `idcustomer_UNIQUE` (`idcustomer`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`idpembayaran`),
  ADD UNIQUE KEY `idcustomer_UNIQUE` (`idpembayaran`);

--
-- Indeks untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`idpesanan`),
  ADD UNIQUE KEY `idcustomer_UNIQUE` (`idpesanan`),
  ADD KEY `fk_pesanan_customer` (`customer_idcustomer`);

--
-- Indeks untuk tabel `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`idtransfer`),
  ADD KEY `fk_transfer_pembayaran1` (`pembayaran_idpembayaran`);

--
-- Indeks untuk tabel `virtualaccount`
--
ALTER TABLE `virtualaccount`
  ADD PRIMARY KEY (`idvirtualAccount`),
  ADD UNIQUE KEY `idvirtualAccount_UNIQUE` (`idvirtualAccount`),
  ADD KEY `fk_virtualAccount_pembayaran1` (`pembayaran_idpembayaran`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `checkout`
--
ALTER TABLE `checkout`
  MODIFY `idcheckout` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `idcustomer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `idpembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `idpesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transfer`
--
ALTER TABLE `transfer`
  MODIFY `idtransfer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `virtualaccount`
--
ALTER TABLE `virtualaccount`
  MODIFY `idvirtualAccount` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `checkout`
--
ALTER TABLE `checkout`
  ADD CONSTRAINT `fk_pembayaran_has_pesanan_pembayaran1` FOREIGN KEY (`pembayaran_idpembayaran`) REFERENCES `pembayaran` (`idpembayaran`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pembayaran_has_pesanan_pesanan1` FOREIGN KEY (`pesanan_idpesanan`) REFERENCES `pesanan` (`idpesanan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `fk_pesanan_customer` FOREIGN KEY (`customer_idcustomer`) REFERENCES `customer` (`idcustomer`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `transfer`
--
ALTER TABLE `transfer`
  ADD CONSTRAINT `fk_transfer_pembayaran1` FOREIGN KEY (`pembayaran_idpembayaran`) REFERENCES `pembayaran` (`idpembayaran`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `virtualaccount`
--
ALTER TABLE `virtualaccount`
  ADD CONSTRAINT `fk_virtualAccount_pembayaran1` FOREIGN KEY (`pembayaran_idpembayaran`) REFERENCES `pembayaran` (`idpembayaran`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
