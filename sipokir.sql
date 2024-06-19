-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2024 at 10:50 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipokir`
--

-- --------------------------------------------------------

--
-- Table structure for table `pokir`
--

CREATE TABLE `pokir` (
  `id` int(30) NOT NULL,
  `id_usulan` varchar(50) DEFAULT NULL,
  `tanggal_usul` varchar(100) NOT NULL,
  `pengusul` varchar(100) NOT NULL,
  `usulan` varchar(300) NOT NULL,
  `masalah` varchar(1000) NOT NULL,
  `alamat_lokasi` varchar(200) NOT NULL,
  `usulan_ke` varchar(50) NOT NULL,
  `opd_tujuan_awal` varchar(50) NOT NULL,
  `opd_tujuan_akhir` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `catatan` varchar(100) NOT NULL,
  `rekomendasi_sekwan` varchar(200) NOT NULL,
  `rekomendasi_mitra` varchar(200) NOT NULL,
  `rekomendasi_skpd` varchar(200) NOT NULL,
  `rekomendasi_tapd` varchar(200) NOT NULL,
  `volume` varchar(50) NOT NULL,
  `satuan` varchar(300) NOT NULL,
  `anggaran` varchar(300) NOT NULL,
  `jenis_belanja` varchar(300) NOT NULL,
  `sub_kegiatan` varchar(300) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pokir`
--

INSERT INTO `pokir` (`id`, `id_usulan`, `tanggal_usul`, `pengusul`, `usulan`, `masalah`, `alamat_lokasi`, `usulan_ke`, `opd_tujuan_awal`, `opd_tujuan_akhir`, `status`, `catatan`, `rekomendasi_sekwan`, `rekomendasi_mitra`, `rekomendasi_skpd`, `rekomendasi_tapd`, `volume`, `satuan`, `anggaran`, `jenis_belanja`, `sub_kegiatan`, `createdAt`, `updatedAt`) VALUES
(120, '2', '2024-06-18', 'Kisbani', 'Rambu lalulintas/Marka Jalan', 'Warga Baron mengalami kesulitan jika keluar dari jalan/gang (Jalan Sri Narendra 2), Mohon di area pertigaan Jalan Dr. Radjiman diberi marka jalan sebagai penanda/garis aman.', 'Jalan Sri Narendra 2 / Pertigaan Dr. Radjiman (Timur Sabar Motor)', 'DPRD', 'dinas', 'dprd', 'aktif', 'terbaru', 'tindakan', 'ulang', 'ajukan', 'terbaru', '50', 'meter', 'Rp.100 jt', 'barang', 'penunjang', '2024-06-19 04:54:14', '2024-06-19 04:54:14'),
(121, '1', '2024-03-31', 'Totok', 'Pengaspalan jalan', 'Pembuatan aspal jalan baru/pengaspalan di Jl Blewah XIV Kal Karangasem', 'Jl Blewah XIV Kal Karangasem', 'DPRD', 'dinas', 'dprd', 'aktif', 'terbaru', 'tindakan', 'ulang', 'ajukan', 'terbaru', '-', '-', '-', 'barang', 'penunjang', '2024-06-19 04:54:14', '2024-06-19 07:28:21'),
(122, '2', '2024-03-31', 'Kisbani', 'Rambu lalulintas/Marka Jalan', 'Warga Baron mengalami kesulitan jika keluar dari jalan/gang (Jalan Sri Narendra 2), Mohon di area pertigaan Jalan Dr. Radjiman diberi marka jalan sebagai penanda/garis aman.', 'Jalan Sri Narendra 2 / Pertigaan Dr. Radjiman (Timur Sabar Motor)', 'DPRD', 'dinas', 'dprd', 'aktif', 'terbaru', 'tindakan', 'ulang', 'ajukan', 'terbaru', '50', 'meter', 'Rp.100 jt', 'barang', 'penunjang', '2024-06-19 04:54:14', '2024-06-19 07:28:56'),
(123, '3', '2024-03-31', 'Darji', 'Pusat Kuliner', 'Mohon difasilitasi pembentukan Pusat Kuliner Kampung Tegalsari, Kelurahan Bumi sebagai sentra kuliner di Kawasan Laweyan. Atau alternatif lain di sepanjang Jalan Markisa 3 atau sebelah RS. UNS Kota Surakarta.', 'sepanjang Jalan Markisa 3 atau sebelah RS. UNS Kota Surakarta', 'DPRD', 'dinas', 'dprd', 'aktif', 'terbaru', 'tindakan', 'ulang', 'ajukan', 'terbaru', '100', 'meter', 'Rp.300 jt', 'barang', 'penunjang', '2024-06-19 04:54:14', '2024-06-19 07:28:58'),
(124, '', '2024-03-31', 'Totok', 'Pengaspalan jalan', 'Pembuatan aspal jalan baru/pengaspalan di Jl Blewah XIV Kal Karangasem', 'Jl Blewah XIV Kal Karangasem', 'DPRD ', 'dinas', 'dprd', 'aktif', 'terbaru', 'tindakan', 'ulang', 'ajukan', 'terbaru', '', '', '', 'barang', 'penunjang', '2024-06-19 04:54:14', '2024-06-19 07:29:01'),
(125, '1', '2024-03-31', 'Kisbani', 'Rambu lalulintas/Marka Jalan', 'Warga Baron mengalami kesulitan jika keluar dari jalan/gang (Jalan Sri Narendra 2), Mohon di area pertigaan Jalan Dr. Radjiman diberi marka jalan sebagai penanda/garis aman.', 'Jalan Sri Narendra 2 / Pertigaan Dr. Radjiman (Timur Sabar Motor)', 'DPRD ', 'dinas', 'dprd', 'aktif', 'terbaru', 'tindakan', 'ulang', 'ajukan', 'terbaru', '50', 'meter', 'Rp.100 jt', 'barang', 'penunjang', '2024-06-19 04:54:14', '2024-06-19 07:29:03'),
(126, '', '2024-02-28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:33:57'),
(127, '', '2024-02-28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:33:59'),
(128, '', '2024-02-28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:34:01'),
(129, '', '2024-02-28', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:34:03'),
(130, '2', '2024-03-31', 'Darji', 'Pusat Kuliner', 'Mohon difasilitasi pembentukan Pusat Kuliner Kampung Tegalsari, Kelurahan Bumi sebagai sentra kuliner di Kawasan Laweyan. Atau alternatif lain di sepanjang Jalan Markisa 3 atau sebelah RS. UNS Kota Surakarta.', 'sepanjang Jalan Markisa 3 atau sebelah RS. UNS Kota Surakarta', 'DPRD ', 'dinas', 'dprd', 'aktif', 'terbaru', 'tindakan', 'ulang', 'ajukan', 'terbaru', '100', 'meter', 'Rp.300 jt', 'barang', 'penunjang', '2024-06-19 04:54:14', '2024-06-19 07:29:23'),
(131, '1', '2024-03-30', 'Bpk. Darmogan', 'Mohon agar dapat difasilitasi untuk pengembangan seni budaya khususnya warga RW V Semanggi', 'seni budaya kurang berkembang', 'RW V Semanggi', 'DPRD ', 'Dinas Kebudayaan', 'dprd', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:29:34'),
(132, '2', '2024-03-30', 'Bpk. Mo', 'Mohon perbaikan/penggantian lampu trotoar yang mati yang berada dijalan Kyai Mojo', 'lampu trotoar mati', 'RW V Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:29:37'),
(133, '3', '2024-03-30', 'Bpk. Sugeng', 'Mohon agar pengaspalan jalan Comal 6 dapat dilanjutkan kembali', 'Jalan Rusak', 'RW V Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:29:39'),
(134, '4', '2024-03-30', 'Ibu Tutik', 'Mohon perbaikan Saluran air di RW V (depan TK). Saluran airnya kecil, jika hujan agak deras, air masuk ke rumah warga', 'Banjir', 'RW V Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '70', 'meter', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:29:41'),
(135, '5', '2024-03-30', 'Bpk. Ashari', 'Mohon bantuan perbaikan Masjid As Saidah Fatimah yang sampai sekarang belum pernah mendapatkan bantuan', 'Perbaikan Tempat Ibadah', 'RW V Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:29:44'),
(136, '6', '2024-03-30', 'Ibu Nunuk', 'Mohon bantuan Gerobak untuk berdagang Susu Jahe Merah', 'Bantuan Modal', 'RW V Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:29:47'),
(137, '7', '2024-03-30', 'Bpk. Sabar', 'Mohon penataan pedagang yang berada di area Trotoar Mojo, membuat jalan terkesan tidak rapi', 'Penataan PKL', 'RW V Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:29:50'),
(138, '8', '2024-03-30', 'Bpk. Sabar', 'Mohon bantuan perlengkapan inventaris RT 02 RW V Semanggi', '', 'RT 02 RW V Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:29:55'),
(139, '9', '2024-03-30', 'Ibu Wiji', 'Warga sudah memiliki rumah tapi tidak memiliki tembok pembatas dan pintu, mohon agar diberikan bantuan RTLH', 'Bantuan RTLH', 'RT 02 RW V Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:29:57'),
(140, '10', '2024-03-30', 'Ibu Umi', 'Mohon agar Gang yang berada di RT 01 - RT 06 RW V Semanggi dapat di pavingisasi', 'Jalan Rusak', 'RW V Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:30:01'),
(141, '11', '2024-03-31', 'Suranto ', 'Mohon perbaikan Saluran Air di RT 05 RW 2 Mojo (Timur SMA Negeri 9), ada beberapa saluran air yang longsor dan air hujan masuk rumah', 'Saluran Air Rusak', 'RT 05 RW II Mojo', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:30:18'),
(142, '12', '2024-03-31', 'Suranto ', 'Bak kontrol saluran air jalan Sungai Serang Mojo terlalu dalam dibanding badan jalan, sehingga membahayakan pengguna jalan. Mohon segera diperbaiki', 'Perbaikan Jalan', 'RW II Mojo', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:30:20'),
(143, '13', '2024-03-31', 'Suranto ', 'Mohon perbaikan Gedung Pertemuan Warga RW II Mojo agar dapat di Rehab total dengan desain baru yang lebih baik', 'Perbaikan Gedung Pertemuan Warga', 'RW II Mojo', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:30:23'),
(144, '14', '2024-03-31', 'Marsudi', 'Tower yang ada di RT 02 RW II Mojo itu masa habis berlakunya sampai kapan? Jika sudah habis masa berlakunya, sebaiknya dirobohkan saja karena baut-bautnya terkadang jatuh mengenai rumah warga sekitarnya', '', 'RT 04 RW II Mojo', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:30:25'),
(145, '15', '2024-03-31', 'Marsudi', 'Mohon pembangunan drainase sepanjang jalan KH. Muzakir Mojo dapat dikawal sampai selesai', '', '', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:30:27'),
(146, '16', '2024-03-31', 'Ulin ', 'Sudah mengajukan Proposal perbaikan atap Langgar Selikuran Semanggi, mohon agar segera direalisasikan', '', 'RT 03 RW XI Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:30:29'),
(147, '17', '2024-03-31', 'Wargirawan ', 'Mohon agar dana stimulan dapat ditambah, khususnya untuk kegiatan kirab budaya', 'Kekurangan Dana Kegiatan', 'RT 02 RW XI Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:30:31'),
(148, '18', '2024-03-31', 'Wargirawan ', 'Mohon bantuan dibuatkan Pos Ronda di RT 05 RW XI Semanggi dengan lokasi di bekas Gudang inventaris RW XI', '', 'RT 05 RW XI Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:30:34'),
(149, '19', '2024-03-31', 'Wargirawan ', 'Mohon bantuan Alat Keroncong bagi RW XI Semanggi', '', 'RW XI Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:30:36'),
(150, '20', '2024-03-31', 'Joko Aryono', 'Rencana pembangunan IPAL Komunal di RW XI Semanggi sudah di tinjau oleh Dinas terkait pada akhir tahun 2023, namun sampai sekarang belum ada realisasinya. Mohon penjelasan', '', 'RW XI Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:30:38'),
(151, '1', '2024-03-31', 'Bpk. Darmogan', 'Mohon agar dapat difasilitasi untuk pengembangan seni budaya khususnya warga RW V Semanggi', 'seni budaya kurang berkembang', 'RW V Semanggi', 'DPRD ', 'Dinas Kebudayaan', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:30:41'),
(152, '2', '2024-03-30', 'Bpk. Mo', 'Mohon perbaikan/penggantian lampu trotoar yang mati yang berada di jalan Kyai Mojo', 'lampu trotoar mati', 'RW V Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:31:15'),
(153, '3', '2024-03-30', 'Bpk. Sugeng', 'Mohon agar pengaspalan jalan Comal 6 dapat dilanjutkan kembali', 'Jalan Rusak', 'RW V Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:30:52'),
(154, '4', '2024-03-30', 'Ibu Tutik', 'Mohon perbaikan Saluran air di RW V (depan TK). Saluran airnya kecil, jika hujan agak deras, air masuk ke rumah warga', 'Banjir', 'RW V Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '70', 'meter', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:30:54'),
(155, '5', '2024-03-30', 'Bpk. Ashari', 'Mohon bantuan perbaikan Masjid As Saidah Fatimah yang sampai sekarang belum pernah mendapatkan bantuan', 'Perbaikan Tempat Ibadah', 'RW V Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:30:56'),
(156, '6', '2024-03-30', 'Ibu Nunuk', 'Mohon bantuan Gerobak untuk berdagang Susu Jahe Merah', 'Bantuan Modal', 'RW V Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:30:59'),
(157, '7', '2024-03-30', 'Bpk. Sabar', 'Mohon penataan pedagang yang berada di area Trotoar Mojo, membuat jalan terkesan tidak rapi', 'Penataan PKL', 'RW V Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:31:02'),
(158, '8', '2024-03-30', 'Bpk. Sabar', 'Mohon bantuan perlengkapan inventaris RT 02 RW V Semanggi', '', 'RT 02 RW V Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:31:04'),
(159, '9', '2024-03-30', 'Ibu Wiji', 'Warga sudah memiliki rumah tapi tidak memiliki tembok pembatas dan pintu, mohon agar diberikan bantuan RTLH', 'Bantuan RTLH', 'RT 02 RW V Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:31:06'),
(160, '10', '2024-03-30', 'Ibu Umi', 'Mohon agar Gang yang berada di RT 01 - RT 06 RW V Semanggi dapat di pavingisasi', 'Jalan Rusak', 'RW V Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:31:09'),
(161, '11', '2024-03-31', 'Suranto', 'Mohon perbaikan Saluran Air di RT 05 RW 2 Mojo (Timur SMA Negeri 9), ada beberapa saluran air yang longsor dan air hujan masuk rumah', 'Saluran Air Rusak', 'RT 05 RW II Mojo', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:31:23'),
(162, '12', '2024-03-31', 'Suranto', 'Bak kontrol saluran air jalan Sungai Serang Mojo terlalu dalam dibanding badan jalan, sehingga membahayakan pengguna jalan. Mohon segera diperbaiki', 'Perbaikan Jalan', 'RW II Mojo', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:31:25'),
(163, '13', '2024-03-31', 'Suranto', 'Mohon perbaikan Gedung Pertemuan Warga RW II Mojo agar dapat di Rehab total dengan desain baru yang lebih baik', 'Perbaikan Gedung Pertemuan Warga', 'RW II Mojo', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:31:27'),
(164, '14', '2024-03-31', 'Marsudi', 'Tower yang ada di RT 02 RW II Mojo itu masa habis berlakunya sampai kapan? Jika sudah habis masa berlakunya, sebaiknya dirobohkan saja karena baut-bautnya terkadang jatuh mengenai rumah warga sekitarnya', '', 'RT 04 RW II Mojo', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:31:29'),
(165, '15', '2024-03-31', 'Marsudi', 'Mohon pembangunan drainase sepanjang jalan KH. Muzakir Mojo dapat dikawal sampai selesai', '', '', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:31:30'),
(166, '16', '2024-03-31', 'Ulin', 'Sudah mengajukan Proposal perbaikan atap Langgar Selikuran Semanggi, mohon agar segera direalisasikan', '', 'RT 03 RW XI Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:31:34'),
(167, '17', '2024-03-31', 'Wargirawan', 'Mohon agar dana stimulan dapat ditambah, khususnya untuk kegiatan kirab budaya', 'Kekurangan Dana Kegiatan', 'RT 02 RW XI Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:31:36'),
(168, '18', '2024-03-31', 'Wargirawan', 'Mohon bantuan dibuatkan Pos Ronda di RT 05 RW XI Semanggi dengan lokasi di bekas Gudang inventaris RW XI', '', 'RT 05 RW XI Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:31:38'),
(169, '19', '2024-03-31', 'Wargirawan', 'Mohon bantuan Alat Keroncong bagi RW XI Semanggi', '', 'RW XI Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:31:40'),
(170, '20', '2024-03-31', 'Joko Aryono', 'Rencana pembangunan IPAL Komunal di RW XI Semanggi sudah di tinjau oleh Dinas terkait pada akhir tahun 2023, namun sampai sekarang belum ada realisasinya. Mohon penjelasan', '', 'RW XI Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:31:43'),
(171, '21', '2024-03-31', 'Joko Aryono', 'Mohon pembangunan drainase sepanjang jalan Sampangan, Serayu dan Cempaka dapat dikawal sampai selesai', 'Pembangunan Drainase', 'RW XI Semanggi', 'DPRD ', '', '', '', '', '', '', '', '', '', '', '', '', '', '2024-06-19 04:54:14', '2024-06-19 07:31:45'),
(172, '6', '2024-04-14', 'Bpk, Agus Prasetyo\n', 'Pengaspalan Jalan Parang Kusumo IV', 'banyak jalan rusak', '\nRt 01 Rw 02 Sondakan\n', 'DPRD ', 'DPUPR', 'DPUPR', 'aktif', 'terbaru', 'tindakan', 'ulang', 'ajukan', 'terbaru', '400 x 3', 'meter', '150000000', 'konstruksi', 'Pemeliharaan / Rehabilitasi Sarana dan Prasarana ', '2024-06-19 04:54:14', '2024-06-19 07:32:01'),
(173, '8', '2024-04-14', 'Aries Yulianto ', 'Penutupan draenase, di rt 05', 'Keamanan pengguna jalan', 'Rt05/Rw10 sondakan,pajang', 'DPRD ', 'DPUPR', 'DPUPR', 'aktif', 'terbaru', 'tindakan', 'ulang', 'ajukan', 'terbaru', '300 m', 'meter', '25000000', 'konstruksi', 'Pemeliharaan / Rehabilitasi Sarana dan Prasarana ', '2024-06-19 04:54:14', '2024-06-19 07:32:03'),
(174, '7', '2024-04-14', 'Wawan Haryanto ', 'Pengaspalan Rt1 Rw3 sondakan ', 'banyak jalan rusak', 'Rt1 Rw3 sondakan, pajang', 'DPRD ', 'DPUPR', 'DPUPR', 'aktif', 'terbaru', 'tindakan', 'ulang', 'ajukan', 'terbaru', '100 x 3', 'buah', '100000000', 'konstruksi', 'Pemeliharaan / Rehabilitasi Sarana dan Prasarana ', '2024-06-19 04:54:14', '2024-06-19 07:32:05'),
(175, '6', '2024-04-14', 'Bpk Thohiroen Rt3 Rw4 Sondakan', 'Penerangan jalan di Jl parang klitik', 'kurang penerangan', ' Rt3 Rw4 Sondakan, pajang', 'DPRD ', 'DPUPR', 'DPUPR', 'aktif', 'terbaru', 'tindakan', 'ulang', 'ajukan', 'terbaru', '25', 'buah', '10000000', 'penerangan', 'Pemeliharaan / Rehabilitasi Sarana dan Prasarana ', '2024-06-19 04:54:14', '2024-06-19 07:32:07'),
(176, '1', '2024-04-14', 'Kisbani', 'Rambu lalulintas/Marka Jalan', 'Warga Baron mengalami kesulitan jika keluar dari jalan/gang (Jalan Sri Narendra 2), Mohon di area pertigaan Jalan Dr. Radjiman diberi marka jalan sebagai penanda/garis aman.', 'Jalan Sri Narendra 2 / Pertigaan Dr. Radjiman (Timur Sabar Motor)', 'DPRD ', 'dinas', 'dprd', 'aktif', 'terbaru', 'tindakan', 'ulang', 'ajukan', 'terbaru', '50', 'meter', 'Rp.100 jt', 'barang', 'penunjang', '2024-06-19 04:54:14', '2024-06-19 07:32:10'),
(177, '2', '2024-04-14', 'Darji', 'Pusat Kuliner', 'Mohon difasilitasi pembentukan Pusat Kuliner Kampung Tegalsari, Kelurahan Bumi sebagai sentra kuliner di Kawasan Laweyan. Atau alternatif lain di sepanjang Jalan Markisa 3 atau sebelah RS. UNS Kota Surakarta.', 'sepanjang Jalan Markisa 3 atau sebelah RS. UNS Kota Surakarta', 'DPRD ', 'dinas', 'dprd', 'aktif', 'terbaru', 'tindakan', 'ulang', 'ajukan', 'terbaru', '100', 'meter', 'Rp.300 jt', 'barang', 'penunjang', '2024-06-19 04:54:14', '2024-06-19 07:32:12'),
(178, '6', '2024-04-14', 'Bpk, Agus Prasetyo\n', 'Pengaspalan Jalan Parang Kusumo IV', 'banyak jalan rusak', '\nRt 01 Rw 02 Sondakan\n', 'DPRD ', 'DPUPR', 'DPUPR', 'aktif', 'terbaru', 'tindakan', 'ulang', 'ajukan', 'terbaru', '400 x 3', 'meter', '150000000', 'konstruksi', 'Pemeliharaan / Rehabilitasi Sarana dan Prasarana ', '2024-06-19 04:54:14', '2024-06-19 07:32:14'),
(179, '8', '2024-04-18', 'Aries Yulianto ', 'Penutupan draenase, di rt 05', 'Keamanan pengguna jalan', 'Rt05/Rw10 sondakan,pajang', 'DPRD ', 'DPUPR', 'DPUPR', 'aktif', 'terbaru', 'tindakan', 'ulang', 'ajukan', 'terbaru', '300 m', 'meter', '25000000', 'konstruksi', 'Pemeliharaan / Rehabilitasi Sarana dan Prasarana ', '2024-06-19 04:54:14', '2024-06-19 07:32:20'),
(180, '7', '2024-04-18', 'Wawan Haryanto ', 'Pengaspalan Rt1 Rw3 sondakan ', 'banyak jalan rusak', 'Rt1 Rw3 sondakan, pajang', 'DPRD ', 'DPUPR', 'DPUPR', 'aktif', 'terbaru', 'tindakan', 'ulang', 'ajukan', 'terbaru', '100 x 3', 'buah', '100000000', 'konstruksi', 'Pemeliharaan / Rehabilitasi Sarana dan Prasarana ', '2024-06-19 04:54:14', '2024-06-19 07:32:27'),
(181, '6', '2024-04-18', 'Bpk Thohiroen Rt3 Rw4 Sondakan', 'Penerangan jalan di Jl parang klitik', 'kurang penerangan', ' Rt3 Rw4 Sondakan, pajang', 'DPRD ', 'DPUPR', 'DPUPR', 'aktif', 'terbaru', 'tindakan', 'ulang', 'ajukan', 'terbaru', '25', 'buah', '10000000', 'penerangan', 'Pemeliharaan / Rehabilitasi Sarana dan Prasarana ', '2024-06-19 04:54:14', '2024-06-19 07:32:29'),
(184, '1', '2024-04-18', 'Joko Budiono', 'Jembatan Baru di Jalan Raya Desa Makmur', 'Rusak parah akibat banjir', 'Jalan Raya Desa Makmur', '1', 'Dinas Pekerjaan Umum', 'Dinas Pekerjaan Umum', 'Direncanakan', 'Butuh survei lebih lanjut', 'Diperlukan', 'Tidak ada rekomendasi', 'Tidak ada rekomendasi', 'Tidak ada rekomendasi', '1', 'unit', '5000000', 'Belanja Modal', 'Pembangunan Jembatan', '2024-06-19 04:54:14', '2024-06-19 07:32:31'),
(185, '2', '2024-04-18', 'Siti Rahayu', 'Pembangunan Taman Bermain Anak di Taman Kota', 'Potensi meningkatkan kegiatan positif anak muda', 'Taman Kota Bunga Indah', '1', 'Dinas Lingkungan Hidup', 'Dinas Lingkungan Hidup', 'Direncanakan', 'Perlu izin lingkungan', 'Diperlukan', 'Tidak ada rekomendasi', 'Tidak ada rekomendasi', 'Tidak ada rekomendasi', '1', 'unit', '3000000', 'Belanja Modal', 'Pembangunan Taman', '2024-06-19 04:54:14', '2024-06-19 07:32:34'),
(186, '3', '2024-04-18', 'Ahmad Kurniawan', 'Perbaikan Jalan Desa RT 03/RW 02', 'Jalan rusak berat mengganggu akses warga', 'Desa Maju Jaya', '1', 'Dinas Pekerjaan Umum', 'Dinas Pekerjaan Umum', 'Direncanakan', 'Membutuhkan pembebasan lahan', 'Diperlukan', 'Tidak ada rekomendasi', 'Tidak ada rekomendasi', 'Tidak ada rekomendasi', '5000', 'meter', '7500000', 'Belanja Modal', 'Perbaikan Infrastruktur', '2024-06-19 04:54:14', '2024-06-19 07:32:37'),
(304, '1', '2003-02-21', 'sri', 'Jembatan Baru di Jalan Raya Desa Makmur', 'Rusak parah akibat banjir', 'Jalan Raya Desa Makmur', '1', 'Dinas Pekerjaan Umum', 'Dinas Pekerjaan Umum', 'Direncanakan', 'Butuh survei lebih lanjut', 'Diperlukan', 'Tidak ada rekomendasi', 'Tidak ada rekomendasi', 'Tidak ada rekomendasi', '1', 'unit', '5000000', 'Belanja Modal', 'Pembangunan Jembatan', '2024-06-19 03:24:34', '2024-06-19 03:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'irfan', '$2y$10$aTbihPbmEjAoT4GvCKDYI.l5vDCnxd8xxDfoWR85AtwEkMImHID5O'),
(3, 'testing11', '$2y$10$HceucmDqrjO95xvFDy.ooeZh7z3etO/dUBek3PVyYSDyEHWZsCKCq'),
(5, 'admin', '$2y$10$uGjIgrzn1j/BpdIFWIBZlu/q.Nqea1d9W.Olb0ZrPNAt8f.eWMHxW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pokir`
--
ALTER TABLE `pokir`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pokir`
--
ALTER TABLE `pokir`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
