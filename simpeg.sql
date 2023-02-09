-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2023 at 03:46 AM
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
-- Database: `simpeg`
--

-- --------------------------------------------------------

--
-- Table structure for table `anak`
--

CREATE TABLE `anak` (
  `id` int(100) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat` text NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `status` varchar(50) NOT NULL,
  `ke` int(10) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `tunjangan` varchar(50) NOT NULL,
  `kawin` varchar(50) NOT NULL,
  `bekerja` varchar(50) NOT NULL,
  `sekolah` varchar(50) NOT NULL,
  `putusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `berkas`
--

CREATE TABLE `berkas` (
  `id` int(50) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `tgl` date NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tipe` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `detail_s_ijasah`
--

CREATE TABLE `detail_s_ijasah` (
  `id_detail_s_ijasah` bigint(100) NOT NULL,
  `nomor` varchar(100) NOT NULL,
  `tingkat` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gaji`
--

CREATE TABLE `gaji` (
  `id` int(100) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `gaji_pokok` int(10) NOT NULL,
  `tunj_istri` int(10) NOT NULL,
  `tunj_anak` int(10) NOT NULL,
  `tunj_hselon` int(10) NOT NULL,
  `tunj_fung_umum` int(10) NOT NULL,
  `tunj_fungsional` int(10) NOT NULL,
  `tunj_khusus` int(10) NOT NULL,
  `tunj_terpencil` int(10) NOT NULL,
  `tkd` int(10) NOT NULL,
  `tunj_beras` int(10) NOT NULL,
  `tunj_pajak` int(10) NOT NULL,
  `tunj_bpjs` int(10) NOT NULL,
  `tunj_jkk` int(10) NOT NULL,
  `tunj_jkm` int(10) NOT NULL,
  `pembulatan` int(10) NOT NULL,
  `pot_pajak` int(10) NOT NULL,
  `pot_bpjs` int(10) NOT NULL,
  `pot_iwp_21` int(10) NOT NULL,
  `pot_iwp_01` int(10) NOT NULL,
  `pot_tapebum` int(10) NOT NULL,
  `pot_jkk` int(10) NOT NULL,
  `pot_jkm` int(10) NOT NULL,
  `hutang` int(10) NOT NULL,
  `bulog` int(10) NOT NULL,
  `sewa_rumah` int(10) NOT NULL,
  `tgl_gaji` date NOT NULL,
  `gaji_bersih` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gaji`
--

INSERT INTO `gaji` (`id`, `nip`, `gaji_pokok`, `tunj_istri`, `tunj_anak`, `tunj_hselon`, `tunj_fung_umum`, `tunj_fungsional`, `tunj_khusus`, `tunj_terpencil`, `tkd`, `tunj_beras`, `tunj_pajak`, `tunj_bpjs`, `tunj_jkk`, `tunj_jkm`, `pembulatan`, `pot_pajak`, `pot_bpjs`, `pot_iwp_21`, `pot_iwp_01`, `pot_tapebum`, `pot_jkk`, `pot_jkm`, `hutang`, `bulog`, `sewa_rumah`, `tgl_gaji`, `gaji_bersih`) VALUES
(4, '19700926 199703 1 007', 4200000, 56456, 565565, 1200000, 400000, 350000, 350000, 0, 0, 250000, 120000, 0, 120000, 0, 0, 40000, 75000, 0, 50000, 0, 0, 40000, 0, 70000, 400000, '2020-09-01', 6937021),
(5, '198503052010011032', 2980800, 298080, 119232, 0, 180000, 0, 0, 0, 0, 289680, 0, 143124, 7154, 21462, 38, 0, 143124, 35781, 271849, 0, 7154, 21462, 0, 0, 0, '2023-02-01', 3560200),
(6, '19850625 200312 1 001', 4124234, 300000, 280200, 300500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2023-02-01', 5004934),
(7, '197109172007012018', 3704300, 370430, 148172, 0, 0, 540000, 0, 0, 0, 289680, 0, 190516, 8890, 26671, 79, 0, 190516, 47629, 337832, 0, 8890, 26671, 0, 0, 0, '2023-02-01', 4667200);

-- --------------------------------------------------------

--
-- Table structure for table `golongan`
--

CREATE TABLE `golongan` (
  `golongan` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `golongan`
--

INSERT INTO `golongan` (`golongan`, `keterangan`) VALUES
('GOL I A', 'SD'),
('GOL I B', 'SMP'),
('GOL II A', 'SMA'),
('Golongan III A', 'Sarjana S1'),
('Golongan III B', 'Sarjana S2');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `50` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis` enum('pangkat','jenis','status','jabatan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`50`, `nama`, `jenis`) VALUES
(1, 'Inspektur', 'jabatan'),
(2, 'Sektretaris', 'jabatan'),
(3, 'Pegawai Negeri Sipil', 'jenis'),
(4, 'Honorer', 'jenis'),
(5, 'Pengatur Muda / IIa', 'pangkat'),
(6, 'Pengatur Muda Tk I / IIb', 'pangkat'),
(7, 'Aktif', 'status'),
(8, 'Non Aktif', 'status'),
(9, 'Pengatur / IIc', 'pangkat'),
(10, 'Pengatur Tk I /IId', 'pangkat'),
(11, 'Penata Muda / IIIa', 'pangkat'),
(12, 'Penata Muda Tk I / IIIb', 'pangkat'),
(13, 'Penata / IIIc', 'pangkat'),
(14, 'Penata Tk I / IIId', 'pangkat'),
(15, 'Pembina / IVa', 'pangkat'),
(16, 'Pembina Tk I / IVb', 'pangkat'),
(17, 'Pembina Utama Muda / IVc', 'pangkat'),
(18, 'Pembina Utama Madya / IVd', 'pangkat'),
(20, 'Inspektur Pembantu I', 'jabatan'),
(21, 'Inspektur Pembantu II', 'jabatan'),
(22, 'Inspektur Pembantu III', 'jabatan'),
(23, 'Inspektur Pembantu IV', 'jabatan'),
(25, 'Kasubbag Umum dan Keuangan', 'jabatan'),
(26, 'Kasubbag Evaluasi dan Pelaporan', 'jabatan'),
(27, 'Kasubbag Perencanaan', 'jabatan'),
(28, 'Auditor Ahli Madya', 'jabatan'),
(29, 'Auditor Ahli Muda', 'jabatan'),
(30, 'Auditor Ahli Madya', 'jabatan'),
(31, 'PPUPD Pertama', 'jabatan'),
(32, 'PPUPD Muda', 'jabatan'),
(33, 'PPUPD Pertama', 'jabatan'),
(34, 'Analis Perencanaan Anggaran', 'jabatan'),
(35, 'Analis Monitoring, Evaluasi dan Pelaporan', 'jabatan'),
(37, 'Pengelola Kepegawaian', 'jabatan'),
(38, 'Pengelola Evalusai TLHP', 'jabatan'),
(39, 'Pengadministrasi Persuratan', 'jabatan'),
(40, 'Analis Jabatan', 'jabatan'),
(41, 'Bendahara Pengeluaran', 'jabatan'),
(42, 'Pengadministrasi Perencanaan dan Program', 'jabatan'),
(43, 'Pengadministrasi Kepegawaian', 'jabatan'),
(44, 'Pengadministrasi Umum', 'jabatan');

-- --------------------------------------------------------

--
-- Table structure for table `keluarga`
--

CREATE TABLE `keluarga` (
  `id` int(100) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `nik` int(50) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `tgl_nikah` date NOT NULL,
  `ke` int(10) NOT NULL,
  `penghasilan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mutasi`
--

CREATE TABLE `mutasi` (
  `nip` varchar(50) NOT NULL,
  `kenaikan_pangkat` varchar(100) NOT NULL,
  `tmt_kenaikan` date NOT NULL,
  `kenaikan_gaji` int(10) NOT NULL,
  `tmt_gaji` date NOT NULL,
  `pensiun` varchar(50) NOT NULL,
  `tmt_pensiun` date NOT NULL,
  `ijasah` varchar(50) NOT NULL,
  `tmt_ijasah` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mutasi`
--

INSERT INTO `mutasi` (`nip`, `kenaikan_pangkat`, `tmt_kenaikan`, `kenaikan_gaji`, `tmt_gaji`, `pensiun`, `tmt_pensiun`, `ijasah`, `tmt_ijasah`) VALUES
('197109172007012018', 'Penata Muda Tk I / IIIb', '2017-04-01', 3821000, '2025-02-01', '58', '2029-09-17', 'Golongan III B', '2017-04-01'),
('198503052010011032', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00'),
('19850625 200312 1 001', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00'),
('198506252003121001', '', '0000-00-00', 0, '0000-00-00', '', '0000-00-00', '', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(10) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `gender` enum('l','p') NOT NULL,
  `agama` varchar(50) NOT NULL,
  `kebangsaan` varchar(50) NOT NULL,
  `jumlah_keluarga` int(11) NOT NULL,
  `alamat` text NOT NULL,
  `sk_terakhir` varchar(100) NOT NULL,
  `pangkat` varchar(100) NOT NULL,
  `tmt_golongan` date NOT NULL,
  `jenis_pegawai` varchar(100) NOT NULL,
  `tmt_capeg` date NOT NULL,
  `status_pegawai` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `digaji_menurut` varchar(100) NOT NULL,
  `gaji_pokok` int(10) NOT NULL,
  `besarnya_penghasilan` int(10) NOT NULL,
  `masa_kerja_golongan` varchar(50) NOT NULL,
  `masa_kerja_keseluruhan` varchar(50) NOT NULL,
  `npwp` varchar(50) NOT NULL,
  `rt` varchar(20) NOT NULL,
  `rw` varchar(10) NOT NULL,
  `desa` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `wa` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip`, `nama`, `tempat_lahir`, `tgl_lahir`, `gender`, `agama`, `kebangsaan`, `jumlah_keluarga`, `alamat`, `sk_terakhir`, `pangkat`, `tmt_golongan`, `jenis_pegawai`, `tmt_capeg`, `status_pegawai`, `jabatan`, `digaji_menurut`, `gaji_pokok`, `besarnya_penghasilan`, `masa_kerja_golongan`, `masa_kerja_keseluruhan`, `npwp`, `rt`, `rw`, `desa`, `kecamatan`, `kabupaten`, `wa`) VALUES
(3, '197109172007012018', 'Johanah, SE., MM.', 'Kotabumi', '1971-09-17', 'p', 'Islam', 'WNI', 4, 'Jl, Pesantren No. 86 Kotabumi Udik', 'Kenaikan Pengkat', 'Penata / IIIc', '2021-04-01', 'Pegawai Negeri Sipil', '2007-01-01', 'Aktif', 'PPUPD Pertama', 'PP No 15 Tahun 2019', 3821000, 0, '20 tahun 0 bulan', '20 tahun 0 bulan', '146466081326', '06', '03', 'Persatuan', 'Kotabumi', 'Lampung Utara', '081272656017'),
(1, '198503052010011032', 'Maryadi', 'Kotabumi', '1985-03-05', 'l', 'Islam', 'WNI', 4, 'Jl. Kemuning No. 805', 'Kenaikan Pengkat', 'Pengatur Muda / IIa', '2021-04-01', 'Pegawai Negeri Sipil', '2021-04-01', 'Aktif', 'Bendahara Pengeluaran', 'PP No 30 Tahun 2015', 2980000, 3560200, '18 tahun', '18 tahun', '16293414536000', '05', '04', 'Sribasuki', 'Kotabumi', 'Lampung Utara', '081271333626');

-- --------------------------------------------------------

--
-- Table structure for table `pemberitahuan`
--

CREATE TABLE `pemberitahuan` (
  `nip` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `status_gaji` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int(1) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `instansi` text NOT NULL,
  `provinsi` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `logo` varchar(100) NOT NULL,
  `bg` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `ig` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `nama`, `instansi`, `provinsi`, `kota`, `alamat`, `logo`, `bg`, `fb`, `ig`) VALUES
(1, 'Inspektorat ', 'Inspektorat Kabupaten Lampung Utara', 'Lampung', 'Kotabumi', 'Jalan Soekarno Hatta No. 34 Kota Alam, Kec. Kotabumi Selatan, Kab. Lampung Utara', '2_ikon_481px-Lambang_Kabupaten_Lampung_Utara.png', '', 'Inspektorat Lampura', '@inspektoratlampura');

-- --------------------------------------------------------

--
-- Table structure for table `sk`
--

CREATE TABLE `sk` (
  `id` int(10) NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sk`
--

INSERT INTO `sk` (`id`, `keterangan`) VALUES
(1, 'Kenaikan Pengkat'),
(2, 'Kenaikan Gaji Berkala');

-- --------------------------------------------------------

--
-- Table structure for table `s_ijasah`
--

CREATE TABLE `s_ijasah` (
  `id_s_ijasah` bigint(100) NOT NULL,
  `tgl` date NOT NULL,
  `banyaknya` int(10) NOT NULL,
  `tipe` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `nomor_surat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `s_kenaikan`
--

CREATE TABLE `s_kenaikan` (
  `id_s_kenaikan` bigint(100) NOT NULL,
  `tgl` date NOT NULL,
  `d` bigint(100) NOT NULL,
  `m` bigint(20) NOT NULL,
  `y` int(5) NOT NULL,
  `banyaknya` int(10) NOT NULL,
  `tipe` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `nomor_surat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(20) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `password` varchar(225) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL,
  `gender` enum('l','p') NOT NULL,
  `foto` varchar(100) NOT NULL,
  `status` enum('Aktif','Tidak Aktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `nip`, `password`, `nama`, `level`, `gender`, `foto`, `status`) VALUES
('johanah1', '197109172007012018', '$2y$05$1CrCgRab9DjwHqACa74Itudx0vHZ2tPuDzZ5UFqTobiQUBc/xbPfC', 'Johanah, SE., MM.', 'user', '', '', 'Aktif'),
('maryadi123', '198503052010011032', '$2y$05$lwgKcF/1V1NOg.c.dmp5Rep8jRyHPpof.HBZWEw752hPS7SRrB1Tq', 'Maryadi', 'user', 'l', '', 'Aktif'),
('maya123', '198410292010012013', '$2y$05$7hmAzk1bW.OLvrq0Vd9GXuORXU/sIdiw5kt2VFt3C5EsH2lbPdboe', 'Ira Maya Sari, SH., MH.', 'admin', 'p', '', 'Aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anak`
--
ALTER TABLE `anak`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `berkas`
--
ALTER TABLE `berkas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `detail_s_ijasah`
--
ALTER TABLE `detail_s_ijasah`
  ADD PRIMARY KEY (`id_detail_s_ijasah`);

--
-- Indexes for table `gaji`
--
ALTER TABLE `gaji`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`golongan`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`50`);

--
-- Indexes for table `keluarga`
--
ALTER TABLE `keluarga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `pemberitahuan`
--
ALTER TABLE `pemberitahuan`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sk`
--
ALTER TABLE `sk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `s_ijasah`
--
ALTER TABLE `s_ijasah`
  ADD PRIMARY KEY (`id_s_ijasah`);

--
-- Indexes for table `s_kenaikan`
--
ALTER TABLE `s_kenaikan`
  ADD PRIMARY KEY (`id_s_kenaikan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_s_ijasah`
--
ALTER TABLE `detail_s_ijasah`
  MODIFY `id_detail_s_ijasah` bigint(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `50` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `sk`
--
ALTER TABLE `sk`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
