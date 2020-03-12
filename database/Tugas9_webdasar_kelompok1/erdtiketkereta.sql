-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 12 Mar 2020 pada 09.41
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erdtiketkereta`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `checkout`
--

CREATE TABLE `checkout` (
  `idCheckOut` int(11) NOT NULL,
  `payment_idpayment` int(11) NOT NULL,
  `order_idorder` int(11) NOT NULL,
  `codeBooking` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `idcustomer` int(11) NOT NULL,
  `phoneNumber` int(11) NOT NULL,
  `address` text NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `order`
--

CREATE TABLE `order` (
  `idorder` int(11) NOT NULL,
  `dateOrder` datetime NOT NULL,
  `dateDeparture` datetime NOT NULL,
  `dateArrival` datetime NOT NULL,
  `amountPassenger` int(11) NOT NULL,
  `departure` varchar(15) NOT NULL,
  `arrival` varchar(45) NOT NULL,
  `customer_idcustomer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `payment`
--

CREATE TABLE `payment` (
  `idpayment` int(11) NOT NULL,
  `total` double NOT NULL,
  `method` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transfer`
--

CREATE TABLE `transfer` (
  `idtransfer` int(11) NOT NULL,
  `bank` varchar(45) NOT NULL,
  `payment_idpayment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `virtualaccount`
--

CREATE TABLE `virtualaccount` (
  `idvirtualAccount` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `payment_idpayment` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `checkout`
--
ALTER TABLE `checkout`
  ADD PRIMARY KEY (`idCheckOut`),
  ADD UNIQUE KEY `idCheckOut_UNIQUE` (`idCheckOut`),
  ADD KEY `fk_payment_has_order_payment1` (`payment_idpayment`),
  ADD KEY `fk_payment_has_order_order1` (`order_idorder`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`idcustomer`),
  ADD UNIQUE KEY `idcustomer_UNIQUE` (`idcustomer`);

--
-- Indeks untuk tabel `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`idorder`),
  ADD UNIQUE KEY `idorder_UNIQUE` (`idorder`),
  ADD KEY `fk_order_customer` (`customer_idcustomer`);

--
-- Indeks untuk tabel `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`idpayment`);

--
-- Indeks untuk tabel `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`idtransfer`),
  ADD KEY `fk_transfer_payment1` (`payment_idpayment`);

--
-- Indeks untuk tabel `virtualaccount`
--
ALTER TABLE `virtualaccount`
  ADD PRIMARY KEY (`idvirtualAccount`),
  ADD UNIQUE KEY `idvirtualAccaount_UNIQUE` (`idvirtualAccount`),
  ADD UNIQUE KEY `nomor_UNIQUE` (`number`),
  ADD KEY `fk_virtualAccaount_payment1` (`payment_idpayment`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `checkout`
--
ALTER TABLE `checkout`
  MODIFY `idCheckOut` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `idcustomer` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `order`
--
ALTER TABLE `order`
  MODIFY `idorder` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `payment`
--
ALTER TABLE `payment`
  MODIFY `idpayment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transfer`
--
ALTER TABLE `transfer`
  MODIFY `idtransfer` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `virtualaccount`
--
ALTER TABLE `virtualaccount`
  MODIFY `idvirtualAccount` int(11) NOT NULL AUTO_INCREMENT;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `checkout`
--
ALTER TABLE `checkout`
  ADD CONSTRAINT `fk_payment_has_order_order1` FOREIGN KEY (`order_idorder`) REFERENCES `order` (`idorder`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_payment_has_order_payment1` FOREIGN KEY (`payment_idpayment`) REFERENCES `payment` (`idpayment`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `fk_order_customer` FOREIGN KEY (`customer_idcustomer`) REFERENCES `customer` (`idcustomer`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `transfer`
--
ALTER TABLE `transfer`
  ADD CONSTRAINT `fk_transfer_payment1` FOREIGN KEY (`payment_idpayment`) REFERENCES `payment` (`idpayment`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `virtualaccount`
--
ALTER TABLE `virtualaccount`
  ADD CONSTRAINT `fk_virtualAccaount_payment1` FOREIGN KEY (`payment_idpayment`) REFERENCES `payment` (`idpayment`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
