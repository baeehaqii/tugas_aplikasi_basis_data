-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 14 Jun 2023 pada 06.18
-- Versi server: 5.7.36
-- Versi PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!DATABASE CREATE BY MUHAMAD IMAM BAEHAQI FROM UNIVERSITAS BINA SARANA INFORMATIKA (12220341) */;

--
-- Database: `db_review`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dokter`
--

DROP TABLE IF EXISTS `dokter`;
CREATE TABLE IF NOT EXISTS `dokter` (
  `id_dokter` int(3) NOT NULL,
  `nama` varchar(45) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `No_telp` varchar(20) DEFAULT NULL,
  `Biaya_konsultasi` double DEFAULT NULL,
  PRIMARY KEY (`id_dokter`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama`, `Alamat`, `No_telp`, `Biaya_konsultasi`) VALUES
(1, 'Sri Putri', 'BSD', '0217775555', 50000),
(2, 'Ade Wijaya', 'Cimone', '0217776666', 100000),
(3, 'Hermawan', 'Tanggerang', '0217778888', 50000),
(4, 'Susanti', 'Cengkareng', '0217779999', 75000),
(5, 'Ernes', 'Ciledug', '0217770000', 100000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pasien`
--

DROP TABLE IF EXISTS `pasien`;
CREATE TABLE IF NOT EXISTS `pasien` (
  `id_pasien` int(3) NOT NULL,
  `Nama` varchar(35) DEFAULT NULL,
  `Alamat` varchar(50) DEFAULT NULL,
  `No_telp` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_pasien`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `Nama`, `Alamat`, `No_telp`) VALUES
(1, 'Abdul Majid', 'Tanggerang', '0314442222'),
(2, 'Adewijaya', 'Tanggerang', '0314443333'),
(3, 'Hermawan', 'Tanggerang', '0314445555'),
(4, 'Susanti', 'Tanggerang Selatan', '0314446666'),
(5, 'Ernes', 'Tanggerang Selatan', '0314447777');

-- --------------------------------------------------------

--
-- Struktur dari tabel `periksa`
--

DROP TABLE IF EXISTS `periksa`;
CREATE TABLE IF NOT EXISTS `periksa` (
  `Noperiksa` int(3) NOT NULL,
  `Tgl_periksa` date DEFAULT NULL,
  `id_pasien` int(3) DEFAULT NULL,
  `id_dokter` int(3) DEFAULT NULL,
  `Biaya` double DEFAULT NULL,
  PRIMARY KEY (`Noperiksa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `periksa`
--

INSERT INTO `periksa` (`Noperiksa`, `Tgl_periksa`, `id_pasien`, `id_dokter`, `Biaya`) VALUES
(1, '2017-11-24', 1, 3, 30000),
(2, '2017-11-24', 3, 1, 30000),
(3, '2017-11-26', 2, 3, 30000),
(4, '2017-11-28', 4, 2, 30000);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
