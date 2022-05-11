-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Bulan Mei 2022 pada 09.36
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apps_helpdesk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` varchar(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `level` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama`, `username`, `password`, `level`) VALUES
('ADM001', 'Hanif', 'hanif', '827ccb0eea8a706c4c34a16891f84e7b', 1),
('ADM002', 'M2V', 'm2v', '827ccb0eea8a706c4c34a16891f84e7b', 0),
('ADM003', 'yolantod', 'yolantod', '827ccb0eea8a706c4c34a16891f84e7b', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gender`
--

CREATE TABLE `tbl_gender` (
  `inisial` varchar(1) NOT NULL,
  `jenis_gender` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_gender`
--

INSERT INTO `tbl_gender` (`inisial`, `jenis_gender`) VALUES
('L', 'Laki-Laki'),
('P', 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jenis`
--

CREATE TABLE `tbl_jenis` (
  `id_jenis` int(11) NOT NULL,
  `jenis` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_jenis`
--

INSERT INTO `tbl_jenis` (`id_jenis`, `jenis`) VALUES
(1, 'Desktop'),
(2, 'AIO');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pc`
--

CREATE TABLE `tbl_pc` (
  `id_pc` varchar(11) NOT NULL,
  `nama_pc` varchar(50) NOT NULL,
  `tipe_pc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_pc`
--

INSERT INTO `tbl_pc` (`id_pc`, `nama_pc`, `tipe_pc`) VALUES
('PC001', 'PC satu', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_teknisi`
--

CREATE TABLE `tbl_teknisi` (
  `id_teknisi` varchar(11) NOT NULL,
  `nama_teknisi` varchar(50) NOT NULL,
  `gender_teknisi` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_teknisi`
--

INSERT INTO `tbl_teknisi` (`id_teknisi`, `nama_teknisi`, `gender_teknisi`) VALUES
('T001', 'M2V', 'L'),
('T002', 'Ammar', 'L'),
('T003', 'Rusman', 'L'),
('T004', '', ''),
('T005', '', ''),
('T006', '', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indeks untuk tabel `tbl_pc`
--
ALTER TABLE `tbl_pc`
  ADD PRIMARY KEY (`id_pc`);

--
-- Indeks untuk tabel `tbl_teknisi`
--
ALTER TABLE `tbl_teknisi`
  ADD PRIMARY KEY (`id_teknisi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
