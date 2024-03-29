-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Des 2019 pada 12.33
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kelas`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inventori`
--

CREATE TABLE `tbl_inventori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `kondisi` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_inventori`
--

INSERT INTO `tbl_inventori` (`id`, `nama`, `jumlah`, `kondisi`) VALUES
(1, 'Meja', 38, 'Baik'),
(3, 'Kursi', 38, 'Baik'),
(4, 'Papan Tulis', 1, 'Baik'),
(5, 'Penghapus', 3, 'Baik'),
(6, 'Sapu', 6, 'Rusak Ringan'),
(7, 'Spidol', 3, 'Baik');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id` int(11) NOT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `wali_kelas` varchar(40) DEFAULT NULL,
  `sekolah` varchar(50) DEFAULT NULL,
  `alamat_sekolah` varchar(255) DEFAULT NULL,
  `tahun_ajaran` varchar(15) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id`, `kelas`, `wali_kelas`, `sekolah`, `alamat_sekolah`, `tahun_ajaran`, `semester`) VALUES
(1, 'XI Multimedia 2', 'Pak Bayu', 'SMK Negeri 1 Bendo', 'Jl. Raya Kec. Bendo, Kec. Bendo, Belotan, Magetan, Kabupaten Magetan, Jawa Timur 63384', '2019/2020', 'Semester 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mapel`
--

CREATE TABLE `tbl_mapel` (
  `id` int(11) NOT NULL,
  `mapel` varchar(50) DEFAULT NULL,
  `jumlah_jam` int(11) DEFAULT NULL,
  `guru_pengampu` varchar(100) DEFAULT NULL,
  `ruangan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_mapel`
--

INSERT INTO `tbl_mapel` (`id`, `mapel`, `jumlah_jam`, `guru_pengampu`, `ruangan`) VALUES
(1, 'Pendidikan Agama Islam', 3, 'Pak Mujtahid', 'Ruang 17'),
(2, 'Matematika', 4, 'Pak Bayu', 'Ruang 17'),
(3, 'Bahasa Indonesia', 4, 'Bu Ngarifah', 'Ruang 17'),
(4, 'PPKN', 2, 'Pak Rahmat', 'Lab TI 3'),
(5, 'PKK', 8, 'Bu Maslihah', 'Ruang 17'),
(6, 'Bahasa Inggris', 4, 'Pak Topik', 'Ruang 17'),
(7, 'MM Interaktif', 12, 'Pak Zubaidi', 'Lab TI 2'),
(8, 'Audio Video', 12, 'Pak Ilmiawan', 'Lab TI 4 & Lab TI 3'),
(9, 'Bimbingan Konseling', 1, 'Pak Supriono', 'Ruang 17');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id` int(11) NOT NULL,
  `nis` int(4) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tanggal_lahir` varchar(20) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id`, `nis`, `nama`, `agama`, `tempat_lahir`, `tanggal_lahir`, `alamat`) VALUES
(1, 1234, 'Nico Fandi Alfitroh', 'Islam', 'Magetan', '2002-07-15', 'Sidareja'),
(3, 1235, 'Muhammad Harits', 'Islam', 'Magetan', '2003-07-23', 'Barat'),
(4, 1236, 'Hizkia Enosa', 'Kristen', 'Magetan', '2003-01-07', 'Tulung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `nama`, `username`, `password`) VALUES
(15, 'Fakhrul Fanani Nugroho', 'nugrohoff', '$2y$10$eU7.6Xgd9IoxyK2radJVueCIJVGB1AAeU.h4P0HBAUYwyl09ce7.O'),
(17, 'Admin', 'admin123', '$2y$10$3r41FoRb1IUjSMv.edS/VulBObJ.7MaBtRd1agKzV8mRYxqb.knV2'),
(18, 'Muhammad Alif Nurfauzi', 'aliffauzi34', '$2y$10$cuxAa5kEpfTAjS7RLwgF8OPHb3jLbWZZmq0l0VRs0B8dxeLtMRiQi');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_inventori`
--
ALTER TABLE `tbl_inventori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_inventori`
--
ALTER TABLE `tbl_inventori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_mapel`
--
ALTER TABLE `tbl_mapel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
