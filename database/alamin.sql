-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2018 at 06:58 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alamin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID_ADMIN` varchar(6) NOT NULL,
  `NAMA_ADMIN` varchar(100) DEFAULT NULL,
  `JENIS_KELAMIN` varchar(100) DEFAULT NULL,
  `NO_TELP` decimal(13,0) DEFAULT NULL,
  `STATUS` varchar(100) DEFAULT NULL,
  `USERNAME_ADMIN` varchar(100) DEFAULT NULL,
  `PASSWORD_ADMIN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID_ADMIN`, `NAMA_ADMIN`, `JENIS_KELAMIN`, `NO_TELP`, `STATUS`, `USERNAME_ADMIN`, `PASSWORD_ADMIN`) VALUES
('970613', 'Crhistoper Nanda Jhonatan', 'Laki - Laki', '89671283212', 'Direktur', 'direktur', 'nathan'),
('981208', 'Bahrul Arif', 'Laki - Laki', '85746035053', 'Sekretaris1', 'bahrul', 'soudeska'),
('990502', 'Lita Harsanti', 'Wanita', '85746053045', 'Sekretaris2', 'lita', 'sukisuki');

-- --------------------------------------------------------

--
-- Table structure for table `ciri_khas_anak`
--

CREATE TABLE `ciri_khas_anak` (
  `ID_CIRIKHAS_ANAK` varchar(6) NOT NULL,
  `ID_SISWA` varchar(9) DEFAULT NULL,
  `CIRI_FISIK_YANG_MENONJOL` varchar(100) DEFAULT NULL,
  `CIRI_KEPRIBADIAN_YANG_MENONJOL` varchar(100) DEFAULT NULL,
  `BAKAT_KHUSUS_YANG_MENONJOL` varchar(100) DEFAULT NULL,
  `PRESTASI_YANG_PERNAH_DIRAIH` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_tempat_tinggal`
--

CREATE TABLE `data_tempat_tinggal` (
  `ID_DATA_TEMPAT_TINGGAL` varchar(9) NOT NULL,
  `ID_SISWA` varchar(9) DEFAULT NULL,
  `STATUS_TEMPAT_TINGGAL` varchar(12) DEFAULT NULL,
  `JARAK_RUMAH_KE_SEKOLAH` varchar(6) DEFAULT NULL,
  `LUAS_BANGUNAN_RUMAH` varchar(6) DEFAULT NULL,
  `JUMLAH_KAMAR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `ID_GAMBAR` varchar(9) NOT NULL,
  `ID_PEMBAYARAN` varchar(9) DEFAULT NULL,
  `GAMBAR` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hasil`
--

CREATE TABLE `hasil` (
  `ID_HASIL` varchar(9) NOT NULL,
  `ID_SISWA` varchar(9) DEFAULT NULL,
  `STATUS_TERIMA` varchar(100) DEFAULT NULL,
  `TOTAL_NILAI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `input`
--

CREATE TABLE `input` (
  `ID_ADMIN` varchar(6) NOT NULL,
  `ID_NILAI_PSIKOTEST` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `input2`
--

CREATE TABLE `input2` (
  `ID_ADMIN` varchar(6) NOT NULL,
  `ID_NILAI_TEST` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `jenjang`
--

CREATE TABLE `jenjang` (
  `ID_JENJANG` varchar(9) NOT NULL,
  `ID_USER` varchar(6) DEFAULT NULL,
  `NAMA_JENJANG` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenjang`
--

INSERT INTO `jenjang` (`ID_JENJANG`, `ID_USER`, `NAMA_JENJANG`) VALUES
('46123', '1234', 'SD');

-- --------------------------------------------------------

--
-- Table structure for table `kelahiran_anak`
--

CREATE TABLE `kelahiran_anak` (
  `ID_KELAHIRAN_ANAK` varchar(9) NOT NULL,
  `ID_SISWA` varchar(9) DEFAULT NULL,
  `LAMA_DLM_KANDUNGAN` varchar(100) DEFAULT NULL,
  `KEADAAN_DLM_KANDUNGAN` varchar(100) DEFAULT NULL,
  `KEADAAN_LAHIR` varchar(100) DEFAULT NULL,
  `PROSES_KELAHIRAN` varchar(100) DEFAULT NULL,
  `YG_MEMBANTU_KELAHIRAN` varchar(100) DEFAULT NULL,
  `BERAT_PANJANG_KETIKA_LAHIR` varchar(100) DEFAULT NULL,
  `APGOR_SCORE` varchar(100) DEFAULT NULL,
  `USIA_IBU_KETIKA_LAHIR` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `keluarga`
--

CREATE TABLE `keluarga` (
  `ID_KELUARGA` varchar(9) NOT NULL,
  `ID_SISWA` varchar(9) DEFAULT NULL,
  `NAMA_AYAH` varchar(100) DEFAULT NULL,
  `NAMA_IBU` varchar(100) DEFAULT NULL,
  `AGAMA_AYAH` varchar(100) DEFAULT NULL,
  `AGAMA_IBU` varchar(100) DEFAULT NULL,
  `TGL_LAHIR_AYAH` varchar(100) DEFAULT NULL,
  `TGL_LAHIR_IBU` varchar(100) DEFAULT NULL,
  `KEWARGANEGARAAN_AYAH` varchar(100) DEFAULT NULL,
  `KEWARGANEGARAAN_IBU` varchar(100) DEFAULT NULL,
  `PEND_TERAKHIR_AYAH` varchar(100) DEFAULT NULL,
  `PEND_AKHIR_IBU` varchar(100) DEFAULT NULL,
  `JUR_YG_DIAMBIL_AYAH` varchar(100) DEFAULT NULL,
  `JUR_YG_DIAMBIL_IBU` varchar(100) DEFAULT NULL,
  `NAMA_INSTANSI_AYAH_BEKERJA` varchar(100) DEFAULT NULL,
  `NAMA_INSTANSI_IBU_BEKERJA` varchar(100) DEFAULT NULL,
  `PANGKAT_GOL_AYAH` varchar(100) DEFAULT NULL,
  `PANGKAT_GOL_IBU` varchar(100) DEFAULT NULL,
  `LAMA_KERJA_AYAH_PERHARI` varchar(100) DEFAULT NULL,
  `LAMA_KERJA_IBU_PERHARI` varchar(100) DEFAULT NULL,
  `PENGHASILAN_PERBULAN_AYAH` float(12,0) DEFAULT NULL,
  `PENGHASILAN_PERBULAN_IBU` float(12,0) DEFAULT NULL,
  `JUMLAH_TANGGUNGAN_AYAH` varchar(100) DEFAULT NULL,
  `JUMLAH_TANGGUNGAN_IBU` varchar(100) DEFAULT NULL,
  `ALAMAT_RMH_AYAH` varchar(100) DEFAULT NULL,
  `ALAMAT_RMH_IBU` varchar(100) DEFAULT NULL,
  `ALAMAT_KANTOR_AYAH` varchar(100) DEFAULT NULL,
  `ALAMAT_KANTOR_IBU` varchar(100) DEFAULT NULL,
  `TLP_RMH_HP_AYAH` varchar(100) DEFAULT NULL,
  `TLP_RMH_HP_IBU` varchar(100) DEFAULT NULL,
  `TLP_KANTOR_AYAH` varchar(100) DEFAULT NULL,
  `TLP_KANTOR_IBU` varchar(100) DEFAULT NULL,
  `KESEMPATAN_BERKOMUNIKASI_DG_AYAH` varchar(100) DEFAULT NULL,
  `KESEMPATAN_BERKOMUNIKASI_DG_IBU` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kemampuan_anak`
--

CREATE TABLE `kemampuan_anak` (
  `ID_KEMAMPUAN_ANAK` varchar(9) NOT NULL,
  `ID_SISWA` varchar(9) DEFAULT NULL,
  `AKTIVITAS` varchar(100) DEFAULT NULL,
  `KETERANGAN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kesehatan_anak`
--

CREATE TABLE `kesehatan_anak` (
  `ID_KESEHATAN_ANAK` varchar(9) NOT NULL,
  `ID_SISWA` varchar(9) DEFAULT NULL,
  `BB_TB` varchar(100) DEFAULT NULL,
  `GOLDAR` varchar(100) DEFAULT NULL,
  `MINUM_ASI_SELAMA` varchar(100) DEFAULT NULL,
  `PERKEMBANGAN_DLM_2BLN` varchar(100) DEFAULT NULL,
  `KELAINAN_DLM_TUBUH` varchar(100) DEFAULT NULL,
  `MAKANAN_TAMBAHAN_KURANG_DARI_4BLN` varchar(100) DEFAULT NULL,
  `IMUNISASI_YG_DIBERIKAN` varchar(100) DEFAULT NULL,
  `ALERGI_MAKANAN_DAN_OBAT` varchar(100) DEFAULT NULL,
  `PENGLIHATAN` varchar(100) DEFAULT NULL,
  `PENDENGARAN` varchar(100) DEFAULT NULL,
  `PENAMPILAN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kondisi_keluarga`
--

CREATE TABLE `kondisi_keluarga` (
  `ID_KONDISI_KELUARGA` varchar(6) NOT NULL,
  `ID_SISWA` varchar(9) DEFAULT NULL,
  `PERTANYAAN_KONDISI` text,
  `JAWABAN_KONDISI` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kuisinoner`
--

CREATE TABLE `kuisinoner` (
  `ID_KUISINONER` varchar(9) NOT NULL,
  `ID_SISWA` varchar(9) DEFAULT NULL,
  `PERTANYAAN` varchar(100) DEFAULT NULL,
  `JAWABAN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `ID_MAPEL` varchar(9) NOT NULL,
  `ID_NILAI_PSIKOTEST` varchar(9) DEFAULT NULL,
  `ID_NILAI_TEST` varchar(9) DEFAULT NULL,
  `NAMA_MAPEL` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menentukan`
--

CREATE TABLE `menentukan` (
  `ID_ADMIN` varchar(6) NOT NULL,
  `ID_HASIL` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_psikotest`
--

CREATE TABLE `nilai_psikotest` (
  `ID_NILAI_PSIKOTEST` varchar(9) NOT NULL,
  `ID_MAPEL` varchar(9) DEFAULT NULL,
  `ID_SISWA` varchar(9) DEFAULT NULL,
  `NILAI_PSIKOTEST` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_test`
--

CREATE TABLE `nilai_test` (
  `ID_NILAI_TEST` varchar(9) NOT NULL,
  `ID_SISWA` varchar(9) DEFAULT NULL,
  `ID_MAPEL` varchar(9) DEFAULT NULL,
  `NILAI_TEST` int(11) DEFAULT NULL,
  `JUMLAH_NILAI_TEST` int(11) DEFAULT NULL,
  `RATA_RATA_NILAI_TEST` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id_notif` varchar(25) NOT NULL,
  `jenis_notif` varchar(30) NOT NULL,
  `judul_notif` varchar(30) NOT NULL,
  `isi_notif` varchar(30) NOT NULL,
  `status_notif` varchar(30) NOT NULL,
  `id` varchar(25) NOT NULL,
  `ID_USER` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id_notif`, `jenis_notif`, `judul_notif`, `isi_notif`, `status_notif`, `id`, `ID_USER`) VALUES
('123', 'DaftarUlang', 'welcomn', 'well', 'Belum', '12', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `ID_PEMBAYARAN` varchar(9) NOT NULL,
  `ID_ADMIN` varchar(6) DEFAULT NULL,
  `ID_SISWA` varchar(9) DEFAULT NULL,
  `STATUS_PEMBAYARAN` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`ID_PEMBAYARAN`, `ID_ADMIN`, `ID_SISWA`, `STATUS_PEMBAYARAN`) VALUES
('12345', '981208', '1234', 'konfirmasi');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_sekolah`
--

CREATE TABLE `riwayat_sekolah` (
  `ID_RIWAYATSEKOLAH` varchar(6) NOT NULL,
  `ID_SISWA` varchar(9) DEFAULT NULL,
  `NAMA_SEKOLAH` varchar(100) DEFAULT NULL,
  `MASUK_TAHUN` int(11) DEFAULT NULL,
  `TAMAT_TAHUN` int(11) DEFAULT NULL,
  `ALAMAT_SEKOLAH` varchar(100) DEFAULT NULL,
  `KESULITANYANGDIALAMISAATSEKOLAH` text,
  `AKTIFITASYANGDISUKAI` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `saudara_kandung_anak`
--

CREATE TABLE `saudara_kandung_anak` (
  `ID_SAUDARA_KANDUNG` varchar(9) NOT NULL,
  `ID_SISWA` varchar(9) DEFAULT NULL,
  `NAMA_SAUDARA_KANDUNG` varchar(100) DEFAULT NULL,
  `JK_ADMIN` varchar(100) DEFAULT NULL,
  `PENDIDIKAN` varchar(100) DEFAULT NULL,
  `KELAS` varchar(100) DEFAULT NULL,
  `NO_INDUK` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `ID_SISWA` varchar(9) NOT NULL,
  `ID_KELUARGA` varchar(9) DEFAULT NULL,
  `ID_KELAHIRAN_ANAK` varchar(9) DEFAULT NULL,
  `ID_KONDISI_KELUARGA` varchar(6) DEFAULT NULL,
  `ID_NILAI_TEST` varchar(9) DEFAULT NULL,
  `ID_KESEHATAN_ANAK` varchar(9) DEFAULT NULL,
  `ID_NILAI_PSIKOTEST` varchar(9) DEFAULT NULL,
  `ID_USER` varchar(6) DEFAULT NULL,
  `ID_HASIL` varchar(9) DEFAULT NULL,
  `ID_PEMBAYARAN` varchar(9) DEFAULT NULL,
  `NAMA_SISWA` varchar(100) DEFAULT NULL,
  `NAMA_PANGGILAN` varchar(100) DEFAULT NULL,
  `TTL_SISWA` varchar(100) DEFAULT NULL,
  `USIA_1JULI` int(11) DEFAULT NULL,
  `JK_SISWA` varchar(100) DEFAULT NULL,
  `AGAMA_SISWA` varchar(100) DEFAULT NULL,
  `KEWARGANEGARAAN` varchar(100) DEFAULT NULL,
  `TINGGAL_BERSAMA` varchar(100) DEFAULT NULL,
  `ANAK_KE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`ID_SISWA`, `ID_KELUARGA`, `ID_KELAHIRAN_ANAK`, `ID_KONDISI_KELUARGA`, `ID_NILAI_TEST`, `ID_KESEHATAN_ANAK`, `ID_NILAI_PSIKOTEST`, `ID_USER`, `ID_HASIL`, `ID_PEMBAYARAN`, `NAMA_SISWA`, `NAMA_PANGGILAN`, `TTL_SISWA`, `USIA_1JULI`, `JK_SISWA`, `AGAMA_SISWA`, `KEWARGANEGARAAN`, `TINGGAL_BERSAMA`, `ANAK_KE`) VALUES
('1234', NULL, NULL, NULL, NULL, NULL, NULL, '1234', NULL, '12345', 'panjul', 'kokoko', '141kqhsa2313', 12, 'P', 'Ateis', 'aselo', 'jomblo', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID_USER` varchar(6) NOT NULL,
  `ID_JENJANG` varchar(9) DEFAULT NULL,
  `ID_SISWA` varchar(9) DEFAULT NULL,
  `NAMA_USER` varchar(100) DEFAULT NULL,
  `EMAIL_USER` varchar(100) DEFAULT NULL,
  `PASSWORD_USER` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID_USER`, `ID_JENJANG`, `ID_SISWA`, `NAMA_USER`, `EMAIL_USER`, `PASSWORD_USER`) VALUES
('1234', '46123', '1234', 'bahrul', 'jasdjlna@hahs.com', 'qwerty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_ADMIN`);

--
-- Indexes for table `ciri_khas_anak`
--
ALTER TABLE `ciri_khas_anak`
  ADD PRIMARY KEY (`ID_CIRIKHAS_ANAK`),
  ADD KEY `FK_MEMILIKI7` (`ID_SISWA`);

--
-- Indexes for table `data_tempat_tinggal`
--
ALTER TABLE `data_tempat_tinggal`
  ADD PRIMARY KEY (`ID_DATA_TEMPAT_TINGGAL`),
  ADD KEY `FK_MEMILIKI4` (`ID_SISWA`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`ID_GAMBAR`),
  ADD KEY `FK_SCAN` (`ID_PEMBAYARAN`);

--
-- Indexes for table `hasil`
--
ALTER TABLE `hasil`
  ADD PRIMARY KEY (`ID_HASIL`),
  ADD KEY `FK_MEMILIKI24` (`ID_SISWA`);

--
-- Indexes for table `input`
--
ALTER TABLE `input`
  ADD PRIMARY KEY (`ID_ADMIN`,`ID_NILAI_PSIKOTEST`),
  ADD KEY `FK_INPUT2` (`ID_NILAI_PSIKOTEST`);

--
-- Indexes for table `input2`
--
ALTER TABLE `input2`
  ADD PRIMARY KEY (`ID_ADMIN`,`ID_NILAI_TEST`),
  ADD KEY `FK_INPUT4` (`ID_NILAI_TEST`);

--
-- Indexes for table `jenjang`
--
ALTER TABLE `jenjang`
  ADD PRIMARY KEY (`ID_JENJANG`),
  ADD KEY `FK_MEMILIH2` (`ID_USER`);

--
-- Indexes for table `kelahiran_anak`
--
ALTER TABLE `kelahiran_anak`
  ADD PRIMARY KEY (`ID_KELAHIRAN_ANAK`),
  ADD KEY `FK_MEMILIKI_DATA2` (`ID_SISWA`);

--
-- Indexes for table `keluarga`
--
ALTER TABLE `keluarga`
  ADD PRIMARY KEY (`ID_KELUARGA`),
  ADD KEY `FK_MEMPUNYAI2` (`ID_SISWA`);

--
-- Indexes for table `kemampuan_anak`
--
ALTER TABLE `kemampuan_anak`
  ADD PRIMARY KEY (`ID_KEMAMPUAN_ANAK`),
  ADD KEY `FK_MEMILIKI6` (`ID_SISWA`);

--
-- Indexes for table `kesehatan_anak`
--
ALTER TABLE `kesehatan_anak`
  ADD PRIMARY KEY (`ID_KESEHATAN_ANAK`),
  ADD KEY `FK_MEMILIKI15` (`ID_SISWA`);

--
-- Indexes for table `kondisi_keluarga`
--
ALTER TABLE `kondisi_keluarga`
  ADD PRIMARY KEY (`ID_KONDISI_KELUARGA`),
  ADD KEY `FK_MEMILIKI18` (`ID_SISWA`);

--
-- Indexes for table `kuisinoner`
--
ALTER TABLE `kuisinoner`
  ADD PRIMARY KEY (`ID_KUISINONER`),
  ADD KEY `FK_MEMILIKI16` (`ID_SISWA`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`ID_MAPEL`),
  ADD KEY `FK_MEMILIKI11` (`ID_NILAI_TEST`),
  ADD KEY `FK_MEMILIKI13` (`ID_NILAI_PSIKOTEST`);

--
-- Indexes for table `menentukan`
--
ALTER TABLE `menentukan`
  ADD PRIMARY KEY (`ID_ADMIN`,`ID_HASIL`),
  ADD KEY `FK_MENENTUKAN2` (`ID_HASIL`);

--
-- Indexes for table `nilai_psikotest`
--
ALTER TABLE `nilai_psikotest`
  ADD PRIMARY KEY (`ID_NILAI_PSIKOTEST`),
  ADD KEY `FK_MEMILIKI12` (`ID_MAPEL`),
  ADD KEY `FK_MEMILIKI22` (`ID_SISWA`);

--
-- Indexes for table `nilai_test`
--
ALTER TABLE `nilai_test`
  ADD PRIMARY KEY (`ID_NILAI_TEST`),
  ADD KEY `FK_MEMILIKI10` (`ID_MAPEL`),
  ADD KEY `FK_MEMILIKI20` (`ID_SISWA`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id_notif`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`ID_PEMBAYARAN`),
  ADD KEY `FK_MELAKUKAN2` (`ID_SISWA`),
  ADD KEY `FK_VERIFIKASI` (`ID_ADMIN`);

--
-- Indexes for table `riwayat_sekolah`
--
ALTER TABLE `riwayat_sekolah`
  ADD PRIMARY KEY (`ID_RIWAYATSEKOLAH`),
  ADD KEY `FK_MEMILIKI3` (`ID_SISWA`);

--
-- Indexes for table `saudara_kandung_anak`
--
ALTER TABLE `saudara_kandung_anak`
  ADD PRIMARY KEY (`ID_SAUDARA_KANDUNG`),
  ADD KEY `FK_MEMILIKI5` (`ID_SISWA`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`ID_SISWA`),
  ADD KEY `FK_MELAKUKAN` (`ID_PEMBAYARAN`),
  ADD KEY `FK_MEMILIKI` (`ID_USER`),
  ADD KEY `FK_MEMILIKI14` (`ID_KESEHATAN_ANAK`),
  ADD KEY `FK_MEMILIKI17` (`ID_KONDISI_KELUARGA`),
  ADD KEY `FK_MEMILIKI19` (`ID_NILAI_TEST`),
  ADD KEY `FK_MEMILIKI21` (`ID_NILAI_PSIKOTEST`),
  ADD KEY `FK_MEMILIKI23` (`ID_HASIL`),
  ADD KEY `FK_MEMILIKI_DATA` (`ID_KELAHIRAN_ANAK`),
  ADD KEY `FK_MEMPUNYAI` (`ID_KELUARGA`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID_USER`),
  ADD KEY `FK_MEMILIH` (`ID_JENJANG`),
  ADD KEY `FK_MEMILIKI2` (`ID_SISWA`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ciri_khas_anak`
--
ALTER TABLE `ciri_khas_anak`
  ADD CONSTRAINT `FK_MEMILIKI7` FOREIGN KEY (`ID_SISWA`) REFERENCES `siswa` (`ID_SISWA`);

--
-- Constraints for table `data_tempat_tinggal`
--
ALTER TABLE `data_tempat_tinggal`
  ADD CONSTRAINT `FK_MEMILIKI4` FOREIGN KEY (`ID_SISWA`) REFERENCES `siswa` (`ID_SISWA`);

--
-- Constraints for table `gambar`
--
ALTER TABLE `gambar`
  ADD CONSTRAINT `FK_SCAN` FOREIGN KEY (`ID_PEMBAYARAN`) REFERENCES `pembayaran` (`ID_PEMBAYARAN`);

--
-- Constraints for table `hasil`
--
ALTER TABLE `hasil`
  ADD CONSTRAINT `FK_MEMILIKI24` FOREIGN KEY (`ID_SISWA`) REFERENCES `siswa` (`ID_SISWA`);

--
-- Constraints for table `input`
--
ALTER TABLE `input`
  ADD CONSTRAINT `FK_INPUT` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`),
  ADD CONSTRAINT `FK_INPUT2` FOREIGN KEY (`ID_NILAI_PSIKOTEST`) REFERENCES `nilai_psikotest` (`ID_NILAI_PSIKOTEST`);

--
-- Constraints for table `input2`
--
ALTER TABLE `input2`
  ADD CONSTRAINT `FK_INPUT3` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`),
  ADD CONSTRAINT `FK_INPUT4` FOREIGN KEY (`ID_NILAI_TEST`) REFERENCES `nilai_test` (`ID_NILAI_TEST`);

--
-- Constraints for table `jenjang`
--
ALTER TABLE `jenjang`
  ADD CONSTRAINT `FK_MEMILIH2` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID_USER`);

--
-- Constraints for table `kelahiran_anak`
--
ALTER TABLE `kelahiran_anak`
  ADD CONSTRAINT `FK_MEMILIKI_DATA2` FOREIGN KEY (`ID_SISWA`) REFERENCES `siswa` (`ID_SISWA`);

--
-- Constraints for table `keluarga`
--
ALTER TABLE `keluarga`
  ADD CONSTRAINT `FK_MEMPUNYAI2` FOREIGN KEY (`ID_SISWA`) REFERENCES `siswa` (`ID_SISWA`);

--
-- Constraints for table `kemampuan_anak`
--
ALTER TABLE `kemampuan_anak`
  ADD CONSTRAINT `FK_MEMILIKI6` FOREIGN KEY (`ID_SISWA`) REFERENCES `siswa` (`ID_SISWA`);

--
-- Constraints for table `kesehatan_anak`
--
ALTER TABLE `kesehatan_anak`
  ADD CONSTRAINT `FK_MEMILIKI15` FOREIGN KEY (`ID_SISWA`) REFERENCES `siswa` (`ID_SISWA`);

--
-- Constraints for table `kondisi_keluarga`
--
ALTER TABLE `kondisi_keluarga`
  ADD CONSTRAINT `FK_MEMILIKI18` FOREIGN KEY (`ID_SISWA`) REFERENCES `siswa` (`ID_SISWA`);

--
-- Constraints for table `kuisinoner`
--
ALTER TABLE `kuisinoner`
  ADD CONSTRAINT `FK_MEMILIKI16` FOREIGN KEY (`ID_SISWA`) REFERENCES `siswa` (`ID_SISWA`);

--
-- Constraints for table `mapel`
--
ALTER TABLE `mapel`
  ADD CONSTRAINT `FK_MEMILIKI11` FOREIGN KEY (`ID_NILAI_TEST`) REFERENCES `nilai_test` (`ID_NILAI_TEST`),
  ADD CONSTRAINT `FK_MEMILIKI13` FOREIGN KEY (`ID_NILAI_PSIKOTEST`) REFERENCES `nilai_psikotest` (`ID_NILAI_PSIKOTEST`);

--
-- Constraints for table `menentukan`
--
ALTER TABLE `menentukan`
  ADD CONSTRAINT `FK_MENENTUKAN` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`),
  ADD CONSTRAINT `FK_MENENTUKAN2` FOREIGN KEY (`ID_HASIL`) REFERENCES `hasil` (`ID_HASIL`);

--
-- Constraints for table `nilai_psikotest`
--
ALTER TABLE `nilai_psikotest`
  ADD CONSTRAINT `FK_MEMILIKI12` FOREIGN KEY (`ID_MAPEL`) REFERENCES `mapel` (`ID_MAPEL`),
  ADD CONSTRAINT `FK_MEMILIKI22` FOREIGN KEY (`ID_SISWA`) REFERENCES `siswa` (`ID_SISWA`);

--
-- Constraints for table `nilai_test`
--
ALTER TABLE `nilai_test`
  ADD CONSTRAINT `FK_MEMILIKI10` FOREIGN KEY (`ID_MAPEL`) REFERENCES `mapel` (`ID_MAPEL`),
  ADD CONSTRAINT `FK_MEMILIKI20` FOREIGN KEY (`ID_SISWA`) REFERENCES `siswa` (`ID_SISWA`);

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID_USER`);

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `FK_MELAKUKAN2` FOREIGN KEY (`ID_SISWA`) REFERENCES `siswa` (`ID_SISWA`),
  ADD CONSTRAINT `FK_VERIFIKASI` FOREIGN KEY (`ID_ADMIN`) REFERENCES `admin` (`ID_ADMIN`);

--
-- Constraints for table `riwayat_sekolah`
--
ALTER TABLE `riwayat_sekolah`
  ADD CONSTRAINT `FK_MEMILIKI3` FOREIGN KEY (`ID_SISWA`) REFERENCES `siswa` (`ID_SISWA`);

--
-- Constraints for table `saudara_kandung_anak`
--
ALTER TABLE `saudara_kandung_anak`
  ADD CONSTRAINT `FK_MEMILIKI5` FOREIGN KEY (`ID_SISWA`) REFERENCES `siswa` (`ID_SISWA`);

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `FK_MELAKUKAN` FOREIGN KEY (`ID_PEMBAYARAN`) REFERENCES `pembayaran` (`ID_PEMBAYARAN`),
  ADD CONSTRAINT `FK_MEMILIKI` FOREIGN KEY (`ID_USER`) REFERENCES `user` (`ID_USER`),
  ADD CONSTRAINT `FK_MEMILIKI14` FOREIGN KEY (`ID_KESEHATAN_ANAK`) REFERENCES `kesehatan_anak` (`ID_KESEHATAN_ANAK`),
  ADD CONSTRAINT `FK_MEMILIKI17` FOREIGN KEY (`ID_KONDISI_KELUARGA`) REFERENCES `kondisi_keluarga` (`ID_KONDISI_KELUARGA`),
  ADD CONSTRAINT `FK_MEMILIKI19` FOREIGN KEY (`ID_NILAI_TEST`) REFERENCES `nilai_test` (`ID_NILAI_TEST`),
  ADD CONSTRAINT `FK_MEMILIKI21` FOREIGN KEY (`ID_NILAI_PSIKOTEST`) REFERENCES `nilai_psikotest` (`ID_NILAI_PSIKOTEST`),
  ADD CONSTRAINT `FK_MEMILIKI23` FOREIGN KEY (`ID_HASIL`) REFERENCES `hasil` (`ID_HASIL`),
  ADD CONSTRAINT `FK_MEMILIKI_DATA` FOREIGN KEY (`ID_KELAHIRAN_ANAK`) REFERENCES `kelahiran_anak` (`ID_KELAHIRAN_ANAK`),
  ADD CONSTRAINT `FK_MEMPUNYAI` FOREIGN KEY (`ID_KELUARGA`) REFERENCES `keluarga` (`ID_KELUARGA`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `FK_MEMILIH` FOREIGN KEY (`ID_JENJANG`) REFERENCES `jenjang` (`ID_JENJANG`),
  ADD CONSTRAINT `FK_MEMILIKI2` FOREIGN KEY (`ID_SISWA`) REFERENCES `siswa` (`ID_SISWA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
