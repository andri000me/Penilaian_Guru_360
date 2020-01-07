-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.6.26 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for dbpk
CREATE DATABASE IF NOT EXISTS `dbpk` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dbpk`;

-- Dumping structure for table dbpk.isi_kompetensi
CREATE TABLE IF NOT EXISTS `isi_kompetensi` (
  `id_isi` int(11) NOT NULL AUTO_INCREMENT,
  `id_kompetensi` int(11) DEFAULT NULL,
  `isi_kompetensi` text,
  `ket` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_isi`),
  KEY `id_kompetensi` (`id_kompetensi`),
  CONSTRAINT `FK_isi_kompetensi_jenis_kompetensi` FOREIGN KEY (`id_kompetensi`) REFERENCES `jenis_kompetensi` (`id_kompetensi`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Dumping data for table dbpk.isi_kompetensi: ~24 rows (approximately)
/*!40000 ALTER TABLE `isi_kompetensi` DISABLE KEYS */;
INSERT INTO `isi_kompetensi` (`id_isi`, `id_kompetensi`, `isi_kompetensi`, `ket`) VALUES
	(1, 1, 'Menguasai karakteristik peserta didik dari aspek fisik, moral, sosial, kultural, emosional, dan intelektual.', '1'),
	(2, 1, 'Menguasai teori belajar dan prinsip-prinsip pembelajaran yang mendidik.', '0,1'),
	(3, 1, 'Mengembangkan kurikulum yang terkait dengan mata pelajaran/bidang pengembangan yang diampu.', '0'),
	(4, 1, 'Menyelenggarakan pembelajaran yang mendidik.', '0'),
	(5, 1, 'Memanfaatkan teknologi informasi dan komunikasi untuk kepentingan pembelajaran.', '0'),
	(6, 1, 'Memfasilitasi pengembangan potensi peserta didik untuk mengaktualisasikan berbagai potensi yang dimiliki.', '0'),
	(7, 1, 'Berkomunikasi secara efektif, empatik, dan santun dengan peserta didik.', '0'),
	(8, 1, 'Menyelenggarakan penilaian dan evaluasi proses dan hasil belajar.', '0'),
	(9, 1, 'Memanfaatkan hasil penilaian dan evaluasi untuk kepentingan pembelajaran.', '0'),
	(10, 1, 'Melakukan tindakan reflektif untuk peningkatan kualitas pembelajaran.', '0'),
	(11, 3, 'Bertindak sesuai dengan norma agama, hukum, sosial, dan kebudayaan nasional Indonesia.', '0'),
	(12, 3, 'Menampilkan diri sebagai pribadi yang jujur, berakhlak mulia, dan teladan bagi peserta didik dan masyarakat.', '0'),
	(13, 3, 'Menampilkan diri sebagai pribadi yang mantap, stabil, dewasa, arif, dan berwibawa.', '0'),
	(14, 3, 'Menunjukkan etos kerja, tanggung jawab yang tinggi, rasa bangga menjadi guru, dan rasa percaya diri.', '0'),
	(15, 3, 'Menjunjung tinggi kode etik profesi guru.', '0'),
	(16, 4, 'Bersikap inklusif, bertindak objektif, serta tidak diskriminatif karena pertimbangan jenis kelamin, agama, ras, kondisi fisik, latar belakang keluarga, dan status sosial ekonomi.', '0'),
	(17, 4, 'Berkomunikasi secara efektif, empatik, dan santun dengan sesama pendidik, tenaga kependidikan, orang tua, dan masyarakat.', '0'),
	(18, 4, 'Beradaptasi di tempat bertugas di seluruh wilayah Republik Indonesia yang memiliki keragaman sosial budaya.', '0'),
	(19, 4, 'Berkomunikasi dengan komunitas profesi sendiri dan profesi lain secara lisan dan tulisan atau bentuk lain.', '0'),
	(20, 5, 'Menguasai materi, struktur, konsep, dan pola pikir keilmuan yang mendukung mata pelajaran yang diampu.', '0'),
	(21, 5, 'Menguasai standar kompetensi dan kompetensi dasar mata pelajaran/bidang pengembangan yang diampu.', '0'),
	(22, 5, 'Mengembangkan materi pembelajaran yang diampu secara kreatif.', '0'),
	(23, 5, 'Mengembangkan keprofesionalan secara berkelanjutan dengan melakukan tindakan reflektif.', '0'),
	(24, 5, 'Memanfaatkan teknologi informasi dan komunikasi untuk berkomunikasi dan mengembangkan diri.', '0');
/*!40000 ALTER TABLE `isi_kompetensi` ENABLE KEYS */;

-- Dumping structure for table dbpk.jenis_kompetensi
CREATE TABLE IF NOT EXISTS `jenis_kompetensi` (
  `id_kompetensi` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kompetensi` varchar(50) DEFAULT '0',
  `bobot_kompetensi` int(11) DEFAULT '0',
  PRIMARY KEY (`id_kompetensi`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table dbpk.jenis_kompetensi: ~4 rows (approximately)
/*!40000 ALTER TABLE `jenis_kompetensi` DISABLE KEYS */;
INSERT INTO `jenis_kompetensi` (`id_kompetensi`, `nama_kompetensi`, `bobot_kompetensi`) VALUES
	(1, 'Pedagogik', 40),
	(3, 'Kepribadian', 20),
	(4, 'Sosial', 20),
	(5, 'Profesional', 20);
/*!40000 ALTER TABLE `jenis_kompetensi` ENABLE KEYS */;

-- Dumping structure for table dbpk.jenis_user
CREATE TABLE IF NOT EXISTS `jenis_user` (
  `id_jenis_user` int(10) NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_jenis_user`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table dbpk.jenis_user: ~4 rows (approximately)
/*!40000 ALTER TABLE `jenis_user` DISABLE KEYS */;
INSERT INTO `jenis_user` (`id_jenis_user`, `jabatan`, `level`) VALUES
	(4, 'Wakil Kepala Sekolah', 2),
	(5, 'Kepala Sekolah', 3),
	(6, 'Guru', 1),
	(7, 'Tata Usaha', 0);
/*!40000 ALTER TABLE `jenis_user` ENABLE KEYS */;

-- Dumping structure for table dbpk.penilai
CREATE TABLE IF NOT EXISTS `penilai` (
  `id_penilai` int(11) NOT NULL AUTO_INCREMENT,
  `nip` char(18) DEFAULT NULL,
  `id_periode` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_penilai`),
  KEY `nip` (`nip`),
  KEY `id_periode` (`id_periode`),
  CONSTRAINT `FK_penilai_periode` FOREIGN KEY (`id_periode`) REFERENCES `periode` (`id_periode`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_penilai_user` FOREIGN KEY (`nip`) REFERENCES `user` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- Dumping data for table dbpk.penilai: ~4 rows (approximately)
/*!40000 ALTER TABLE `penilai` DISABLE KEYS */;
INSERT INTO `penilai` (`id_penilai`, `nip`, `id_periode`) VALUES
	(16, '2012091200113504', 3),
	(17, '2012091200113505', 3),
	(18, '2012091200113506', 3),
	(19, '2012091200113503', 3);
/*!40000 ALTER TABLE `penilai` ENABLE KEYS */;

-- Dumping structure for table dbpk.penilaian
CREATE TABLE IF NOT EXISTS `penilaian` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_penilai_detail` int(11) DEFAULT NULL,
  `id_isi` int(11) DEFAULT NULL,
  `hasil_nilai` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_nilai`),
  KEY `id_isi` (`id_isi`),
  KEY `id_penilai_detail` (`id_penilai_detail`),
  CONSTRAINT `FK_penilaian_isi_kompetensi` FOREIGN KEY (`id_isi`) REFERENCES `isi_kompetensi` (`id_isi`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_penilaian_penilai_detail` FOREIGN KEY (`id_penilai_detail`) REFERENCES `penilai_detail` (`id_penilai_detail`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=457 DEFAULT CHARSET=latin1;

-- Dumping data for table dbpk.penilaian: ~308 rows (approximately)
/*!40000 ALTER TABLE `penilaian` DISABLE KEYS */;
INSERT INTO `penilaian` (`id_nilai`, `id_penilai_detail`, `id_isi`, `hasil_nilai`) VALUES
	(25, 33, 1, 2),
	(26, 33, 2, 3),
	(27, 33, 3, 2),
	(28, 33, 4, 3),
	(29, 33, 5, 2),
	(30, 33, 6, 3),
	(31, 33, 7, 3),
	(32, 33, 8, 3),
	(33, 33, 9, 3),
	(34, 33, 10, 4),
	(35, 33, 11, 3),
	(36, 33, 12, 3),
	(37, 33, 13, 3),
	(38, 33, 14, 3),
	(39, 33, 15, 4),
	(40, 33, 16, 2),
	(41, 33, 17, 3),
	(42, 33, 18, 3),
	(43, 33, 19, 3),
	(44, 33, 20, 4),
	(45, 33, 21, 4),
	(46, 33, 22, 3),
	(47, 33, 23, 3),
	(48, 33, 24, 3),
	(73, 35, 1, 1),
	(74, 35, 2, 2),
	(75, 35, 3, 2),
	(76, 35, 4, 2),
	(77, 35, 5, 2),
	(78, 35, 6, 3),
	(79, 35, 7, 2),
	(80, 35, 8, 4),
	(81, 35, 9, 4),
	(82, 35, 10, 4),
	(83, 35, 11, 1),
	(84, 35, 12, 1),
	(85, 35, 13, 2),
	(86, 35, 14, 3),
	(87, 35, 15, 4),
	(88, 35, 16, 2),
	(89, 35, 17, 2),
	(90, 35, 18, 3),
	(91, 35, 19, 4),
	(92, 35, 20, 3),
	(93, 35, 21, 2),
	(94, 35, 22, 2),
	(95, 35, 23, 3),
	(96, 35, 24, 4),
	(97, 32, 1, 1),
	(98, 32, 2, 2),
	(99, 32, 3, 3),
	(100, 32, 4, 2),
	(101, 32, 5, 3),
	(102, 32, 6, 3),
	(103, 32, 7, 2),
	(104, 32, 8, 3),
	(105, 32, 9, 2),
	(106, 32, 10, 3),
	(107, 32, 11, 2),
	(108, 32, 12, 2),
	(109, 32, 13, 3),
	(110, 32, 14, 2),
	(111, 32, 15, 4),
	(112, 32, 16, 2),
	(113, 32, 17, 2),
	(114, 32, 18, 3),
	(115, 32, 19, 2),
	(116, 32, 20, 3),
	(117, 32, 21, 2),
	(118, 32, 22, 3),
	(119, 32, 23, 4),
	(120, 32, 24, 3),
	(145, 29, 1, 1),
	(146, 29, 2, 2),
	(147, 29, 3, 2),
	(148, 29, 4, 2),
	(149, 29, 5, 3),
	(150, 29, 6, 2),
	(151, 29, 7, 3),
	(152, 29, 8, 2),
	(153, 29, 9, 3),
	(154, 29, 10, 4),
	(155, 29, 11, 2),
	(156, 29, 12, 3),
	(157, 29, 13, 3),
	(158, 29, 14, 3),
	(159, 29, 15, 2),
	(160, 29, 16, 2),
	(161, 29, 17, 3),
	(162, 29, 18, 2),
	(163, 29, 19, 3),
	(164, 29, 20, 2),
	(165, 29, 21, 2),
	(166, 29, 22, 3),
	(167, 29, 23, 4),
	(168, 29, 24, 4),
	(169, 30, 1, 1),
	(170, 30, 2, 1),
	(171, 30, 3, 2),
	(172, 30, 4, 3),
	(173, 30, 5, 3),
	(174, 30, 6, 4),
	(175, 30, 7, 3),
	(176, 30, 8, 2),
	(177, 30, 9, 3),
	(178, 30, 10, 4),
	(179, 30, 11, 1),
	(180, 30, 12, 2),
	(181, 30, 13, 3),
	(182, 30, 14, 2),
	(183, 30, 15, 4),
	(184, 30, 16, 4),
	(185, 30, 17, 4),
	(186, 30, 18, 4),
	(187, 30, 19, 4),
	(188, 30, 20, 3),
	(189, 30, 21, 2),
	(190, 30, 22, 3),
	(191, 30, 23, 2),
	(192, 30, 24, 3),
	(193, 38, 1, 1),
	(194, 38, 2, 2),
	(195, 38, 3, 1),
	(196, 38, 4, 2),
	(197, 38, 5, 3),
	(198, 38, 6, 2),
	(199, 38, 7, 3),
	(200, 38, 8, 2),
	(201, 38, 9, 3),
	(202, 38, 10, 2),
	(203, 38, 11, 3),
	(204, 38, 12, 2),
	(205, 38, 13, 3),
	(206, 38, 14, 2),
	(207, 38, 15, 3),
	(208, 38, 16, 4),
	(209, 38, 17, 4),
	(210, 38, 18, 4),
	(211, 38, 19, 4),
	(212, 38, 20, 1),
	(213, 38, 21, 2),
	(214, 38, 22, 3),
	(215, 38, 23, 4),
	(216, 38, 24, 2),
	(217, 31, 1, 1),
	(218, 31, 2, 2),
	(219, 31, 3, 3),
	(220, 31, 4, 4),
	(221, 31, 5, 3),
	(222, 31, 6, 2),
	(223, 31, 7, 1),
	(224, 31, 8, 2),
	(225, 31, 9, 3),
	(226, 31, 10, 4),
	(227, 31, 11, 1),
	(228, 31, 12, 2),
	(229, 31, 13, 2),
	(230, 31, 14, 3),
	(231, 31, 15, 4),
	(232, 31, 16, 1),
	(233, 31, 17, 2),
	(234, 31, 18, 2),
	(235, 31, 19, 3),
	(236, 31, 20, 2),
	(237, 31, 21, 2),
	(238, 31, 22, 3),
	(239, 31, 23, 2),
	(240, 31, 24, 3),
	(241, 37, 1, 2),
	(242, 37, 2, 1),
	(243, 37, 3, 2),
	(244, 37, 4, 3),
	(245, 37, 5, 4),
	(246, 37, 6, 3),
	(247, 37, 7, 3),
	(248, 37, 8, 2),
	(249, 37, 9, 3),
	(250, 37, 10, 3),
	(251, 37, 11, 1),
	(252, 37, 12, 2),
	(253, 37, 13, 3),
	(254, 37, 14, 3),
	(255, 37, 15, 4),
	(256, 37, 16, 1),
	(257, 37, 17, 2),
	(258, 37, 18, 3),
	(259, 37, 19, 3),
	(260, 37, 20, 1),
	(261, 37, 21, 2),
	(262, 37, 22, 3),
	(263, 37, 23, 3),
	(264, 37, 24, 2),
	(265, 34, 1, 2),
	(266, 34, 2, 1),
	(267, 34, 3, 2),
	(268, 34, 4, 2),
	(269, 34, 5, 2),
	(270, 34, 6, 2),
	(271, 34, 7, 3),
	(272, 34, 8, 2),
	(273, 34, 9, 3),
	(274, 34, 10, 2),
	(275, 34, 11, 1),
	(276, 34, 12, 1),
	(277, 34, 13, 2),
	(278, 34, 14, 3),
	(279, 34, 15, 3),
	(280, 34, 16, 2),
	(281, 34, 17, 2),
	(282, 34, 18, 3),
	(283, 34, 19, 4),
	(284, 34, 20, 2),
	(285, 34, 21, 2),
	(286, 34, 22, 2),
	(287, 34, 23, 3),
	(288, 34, 24, 4),
	(289, 39, 1, 1),
	(290, 39, 2, 1),
	(291, 39, 3, 1),
	(292, 39, 4, 2),
	(293, 39, 5, 1),
	(294, 39, 6, 2),
	(295, 39, 7, 1),
	(296, 39, 8, 2),
	(297, 39, 9, 3),
	(298, 39, 10, 4),
	(299, 39, 11, 1),
	(300, 39, 12, 2),
	(301, 39, 13, 3),
	(302, 39, 14, 2),
	(303, 39, 15, 3),
	(304, 39, 16, 2),
	(305, 39, 17, 2),
	(306, 39, 18, 3),
	(307, 39, 19, 2),
	(308, 39, 20, 3),
	(309, 39, 21, 2),
	(310, 39, 22, 2),
	(311, 39, 23, 3),
	(312, 39, 24, 3),
	(313, 36, 1, 1),
	(314, 36, 2, 1),
	(315, 36, 3, 2),
	(316, 36, 4, 2),
	(317, 36, 5, 2),
	(318, 36, 6, 3),
	(319, 36, 7, 3),
	(320, 36, 8, 2),
	(321, 36, 9, 3),
	(322, 36, 10, 2),
	(323, 36, 11, 1),
	(324, 36, 12, 1),
	(325, 36, 13, 2),
	(326, 36, 14, 3),
	(327, 36, 15, 3),
	(328, 36, 16, 1),
	(329, 36, 17, 2),
	(330, 36, 18, 3),
	(331, 36, 19, 4),
	(332, 36, 20, 1),
	(333, 36, 21, 2),
	(334, 36, 22, 3),
	(335, 36, 23, 4),
	(336, 36, 24, 2),
	(385, 28, 1, 1),
	(386, 28, 2, 2),
	(387, 28, 3, 2),
	(388, 28, 4, 2),
	(389, 28, 5, 3),
	(390, 28, 6, 3),
	(391, 28, 7, 3),
	(392, 28, 8, 4),
	(393, 28, 9, 3),
	(394, 28, 10, 4),
	(395, 28, 11, 2),
	(396, 28, 12, 2),
	(397, 28, 13, 2),
	(398, 28, 14, 2),
	(399, 28, 15, 3),
	(400, 28, 16, 2),
	(401, 28, 17, 2),
	(402, 28, 18, 3),
	(403, 28, 19, 4),
	(404, 28, 20, 3),
	(405, 28, 21, 2),
	(406, 28, 22, 2),
	(407, 28, 23, 3),
	(408, 28, 24, 4),
	(409, 43, 1, 4),
	(410, 43, 2, 3),
	(411, 43, 3, 4),
	(412, 43, 4, 3),
	(413, 43, 5, 4),
	(414, 43, 6, 3),
	(415, 43, 7, 4),
	(416, 43, 8, 4),
	(417, 43, 9, 4),
	(418, 43, 10, 4),
	(419, 43, 11, 2),
	(420, 43, 12, 2),
	(421, 43, 13, 3),
	(422, 43, 14, 3),
	(423, 43, 15, 4),
	(424, 43, 16, 3),
	(425, 43, 17, 3),
	(426, 43, 18, 4),
	(427, 43, 19, 4),
	(428, 43, 20, 4),
	(429, 43, 21, 4),
	(430, 43, 22, 4),
	(431, 43, 23, 3),
	(432, 43, 24, 3),
	(433, 44, 1, 4),
	(434, 44, 2, 4),
	(435, 44, 3, 4),
	(436, 44, 4, 4),
	(437, 44, 5, 4),
	(438, 44, 6, 4),
	(439, 44, 7, 3),
	(440, 44, 8, 3),
	(441, 44, 9, 3),
	(442, 44, 10, 4),
	(443, 44, 11, 2),
	(444, 44, 12, 3),
	(445, 44, 13, 4),
	(446, 44, 14, 3),
	(447, 44, 15, 4),
	(448, 44, 16, 3),
	(449, 44, 17, 3),
	(450, 44, 18, 4),
	(451, 44, 19, 4),
	(452, 44, 20, 4),
	(453, 44, 21, 3),
	(454, 44, 22, 4),
	(455, 44, 23, 4),
	(456, 44, 24, 4);
/*!40000 ALTER TABLE `penilaian` ENABLE KEYS */;

-- Dumping structure for table dbpk.penilai_detail
CREATE TABLE IF NOT EXISTS `penilai_detail` (
  `id_penilai_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_penilai` int(11) NOT NULL,
  `nip` char(16) NOT NULL,
  PRIMARY KEY (`id_penilai_detail`),
  KEY `id_penilai` (`id_penilai`),
  KEY `nip` (`nip`),
  CONSTRAINT `FK_penilai_detail_penilai` FOREIGN KEY (`id_penilai`) REFERENCES `penilai` (`id_penilai`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_penilai_detail_user` FOREIGN KEY (`nip`) REFERENCES `user` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

-- Dumping data for table dbpk.penilai_detail: ~24 rows (approximately)
/*!40000 ALTER TABLE `penilai_detail` DISABLE KEYS */;
INSERT INTO `penilai_detail` (`id_penilai_detail`, `id_penilai`, `nip`) VALUES
	(28, 16, '2012091200113505'),
	(29, 16, '2012091200113506'),
	(30, 16, '2012091200113507'),
	(31, 16, '2012091200113500'),
	(32, 16, '2012091200113501'),
	(33, 16, '2012091200113504'),
	(34, 17, '2012091200113503'),
	(35, 17, '2012091200113504'),
	(36, 17, '2012091200113506'),
	(37, 17, '2012091200113500'),
	(38, 17, '2012091200113501'),
	(39, 17, '2012091200113505'),
	(40, 18, '2012091200113507'),
	(41, 18, '2012091200113508'),
	(42, 18, '2012091200113510'),
	(43, 18, '2012091200113500'),
	(44, 18, '2012091200113501'),
	(45, 18, '2012091200113506'),
	(46, 19, '2012091200113504'),
	(47, 19, '2012091200113505'),
	(48, 19, '2012091200113509'),
	(49, 19, '2012091200113500'),
	(50, 19, '2012091200113501'),
	(51, 19, '2012091200113503');
/*!40000 ALTER TABLE `penilai_detail` ENABLE KEYS */;

-- Dumping structure for table dbpk.periode
CREATE TABLE IF NOT EXISTS `periode` (
  `id_periode` int(11) NOT NULL AUTO_INCREMENT,
  `tahun_ajar` varchar(50) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `status_periode` int(11) NOT NULL,
  `setting` varchar(50) NOT NULL,
  PRIMARY KEY (`id_periode`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table dbpk.periode: ~3 rows (approximately)
/*!40000 ALTER TABLE `periode` DISABLE KEYS */;
INSERT INTO `periode` (`id_periode`, `tahun_ajar`, `semester`, `status_periode`, `setting`) VALUES
	(1, '2018', 'Ganjil', 0, '50;25;25'),
	(2, '2018', 'Genap', 0, '50;30;20'),
	(3, '2019', 'Ganjil', 1, '50;30;20');
/*!40000 ALTER TABLE `periode` ENABLE KEYS */;

-- Dumping structure for table dbpk.user
CREATE TABLE IF NOT EXISTS `user` (
  `nip` char(18) NOT NULL,
  `id_jenis_user` int(11) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `nama_guru` varchar(100) DEFAULT NULL,
  `status_guru` varchar(100) DEFAULT NULL,
  `alamat` text,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `status_nikah` char(1) DEFAULT NULL,
  `no_telp` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`nip`),
  KEY `id_jenis_user` (`id_jenis_user`),
  CONSTRAINT `FK_user_jenis_user` FOREIGN KEY (`id_jenis_user`) REFERENCES `jenis_user` (`id_jenis_user`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table dbpk.user: ~11 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`nip`, `id_jenis_user`, `password`, `nama_guru`, `status_guru`, `alamat`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `status_nikah`, `no_telp`) VALUES
	('2012091200113500', 5, 'ferdy', 'Ferdy Budi Setiawan', 'Tetap', 'Kediri Bos', 'Kediri', '1996-03-21', 'L', 'N', '0819283746378'),
	('2012091200113501', 4, 'agum', 'Agum Gumelar', 'Tetap', 'Surabaya', 'Surabaya', '1996-12-21', 'L', 'B', '0819283776666'),
	('2012091200113502', 7, 'joko', 'Joko Susilo Achmodiardjo', 'Tetap', 'jalan raya kedung baruk no 98', 'Surabaya', '1990-08-31', 'L', 'B', '088776656676'),
	('2012091200113503', 6, 'wicak', 'Wicaksono Sri Army', 'Tetap', 'Surabaya', 'Surabaya', '1990-06-12', 'L', 'B', '088887876767'),
	('2012091200113504', 6, 'dinos', 'Ditya Warman', 'Tetap', 'Pondok Candra', 'Surabaya', '1987-03-11', 'L', 'B', '081228394859'),
	('2012091200113505', 6, 'dahna', 'Dachna Micha El Rachim', 'Tetap', 'Magersari', 'Surabaya', '1985-11-21', 'L', 'N', '085223542854'),
	('2012091200113506', 6, 'dini', 'Anita Diningrum', 'Tetap', 'Manukan', 'Surabaya', '1989-12-21', 'P', 'B', '081876765239'),
	('2012091200113507', 6, 'citra', 'Citra Widya Tama', 'Tetap', 'Rewin', 'Surabaya', '1985-04-26', 'P', 'N', '089878764812'),
	('2012091200113508', 6, 'diki', 'Diki Eka Putra', 'Tetap', 'Kebraon', 'Surabaya', '1982-05-07', 'L', 'B', '089232375545'),
	('2012091200113509', 6, 'gita', 'Nadya Gita Safitri', 'Tetap', 'Embong Malang', 'Surabaya', '1989-01-23', 'P', 'B', '081220094323'),
	('2012091200113510', 6, 'hari', 'Hari Sulistio', 'Tetap', 'Keputih', 'Surabaya', '1982-08-12', 'L', 'N', '083454594859'),
	('2012091200113511', 6, 'andri', 'Andriasyah Putra', 'Tetap', 'Kupang Panjaan', 'Surabaya', '1987-10-02', 'L', 'B', '088999876765');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;