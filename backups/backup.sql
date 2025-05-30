#
# TABLE STRUCTURE FOR: api_setting
#

DROP TABLE IF EXISTS `api_setting`;

CREATE TABLE `api_setting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `auto_sync` int NOT NULL DEFAULT '0',
  `edit_profile_siswa` int NOT NULL DEFAULT '0',
  `edit_profile_guru` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

#
# TABLE STRUCTURE FOR: api_token
#

DROP TABLE IF EXISTS `api_token`;

CREATE TABLE `api_token` (
  `id_api` int NOT NULL AUTO_INCREMENT,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int NOT NULL,
  `address` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `agent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `device` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `token` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_api`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

#
# TABLE STRUCTURE FOR: buku_induk
#

DROP TABLE IF EXISTS `buku_induk`;

CREATE TABLE `buku_induk` (
  `id_siswa` int NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rombel_awal` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_panggilan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bahasa` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jml_saudara_kandung` int NOT NULL DEFAULT '0',
  `jml_saudara_tiri` int NOT NULL DEFAULT '0',
  `jml_saudara_angkat` int NOT NULL DEFAULT '0',
  `yatim` int NOT NULL DEFAULT '0' COMMENT '0=ada orang-tua, 1=yatim, 2=yatim piatu',
  `tinggal_bersama` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '1=orang-tua, 2=saudara, 3=wali, 4=asrama/pesantren, 5=kost, 6=lainnya',
  `jarak` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `gol_darah` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `penyakit` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `kelainan_fisik` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kegemaran` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `beasiswa` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `no_ijazah_sebelumnya` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tahun_lulus_sebelumnya` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pindahan_dari` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alasan_kepindahan` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agama_ayah` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tempat_lahir_ayah` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `wn_ayah` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `penghasilan_ayah` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hidup_meninggal_ayah` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agama_ibu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tempat_lahir_ibu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `wn_ibu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `penghasilan_ibu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hidup_meninggal_ibu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tempat_lahir_wali` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agama_wali` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `wn_wali` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `penghasilan_wali` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` int DEFAULT '1' COMMENT '1= aktif, 2=lulus, 3=pindah, 4=keluar',
  `tahun_lulus` int DEFAULT NULL,
  `no_ijazah` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kelas_akhir` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lanjut_ke` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pindah_ke` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alasan_pindah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_pindah` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `bekerja_di` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `catatan_penting` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id_siswa`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: bulan
#

DROP TABLE IF EXISTS `bulan`;

CREATE TABLE `bulan` (
  `id_bln` int NOT NULL AUTO_INCREMENT,
  `nama_bln` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_bln`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `bulan` (`id_bln`, `nama_bln`) VALUES (1, 'Januari');
INSERT INTO `bulan` (`id_bln`, `nama_bln`) VALUES (2, 'Februari');
INSERT INTO `bulan` (`id_bln`, `nama_bln`) VALUES (3, 'Maret');
INSERT INTO `bulan` (`id_bln`, `nama_bln`) VALUES (4, 'April');
INSERT INTO `bulan` (`id_bln`, `nama_bln`) VALUES (5, 'Mei');
INSERT INTO `bulan` (`id_bln`, `nama_bln`) VALUES (6, 'Juni');
INSERT INTO `bulan` (`id_bln`, `nama_bln`) VALUES (7, 'Juli');
INSERT INTO `bulan` (`id_bln`, `nama_bln`) VALUES (8, 'Agustus');
INSERT INTO `bulan` (`id_bln`, `nama_bln`) VALUES (9, 'September');
INSERT INTO `bulan` (`id_bln`, `nama_bln`) VALUES (10, 'Oktober');
INSERT INTO `bulan` (`id_bln`, `nama_bln`) VALUES (11, 'November');
INSERT INTO `bulan` (`id_bln`, `nama_bln`) VALUES (12, 'Desember');


#
# TABLE STRUCTURE FOR: cbt_bank_soal
#

DROP TABLE IF EXISTS `cbt_bank_soal`;

CREATE TABLE `cbt_bank_soal` (
  `id_bank` int NOT NULL AUTO_INCREMENT,
  `bank_jenis_id` int NOT NULL DEFAULT '0',
  `bank_kode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `bank_level` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bank_kelas` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bank_mapel_id` int DEFAULT NULL,
  `bank_jurusan_id` int NOT NULL DEFAULT '0',
  `bank_guru_id` int DEFAULT NULL,
  `bank_nama` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kkm` int DEFAULT '0',
  `jml_soal` int NOT NULL DEFAULT '0',
  `jml_esai` int NOT NULL DEFAULT '0',
  `tampil_pg` int NOT NULL DEFAULT '0',
  `tampil_esai` int NOT NULL DEFAULT '0',
  `bobot_pg` int NOT NULL DEFAULT '0',
  `bobot_esai` int NOT NULL DEFAULT '0',
  `opsi` int NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '0',
  `soal_agama` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `deskripsi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `jml_kompleks` int NOT NULL DEFAULT '0',
  `tampil_kompleks` int NOT NULL DEFAULT '0',
  `bobot_kompleks` int NOT NULL DEFAULT '0',
  `jml_jodohkan` int NOT NULL DEFAULT '0',
  `tampil_jodohkan` int NOT NULL DEFAULT '0',
  `bobot_jodohkan` int NOT NULL DEFAULT '0',
  `jml_isian` int NOT NULL DEFAULT '0',
  `tampil_isian` int NOT NULL DEFAULT '0',
  `bobot_isian` int NOT NULL DEFAULT '0',
  `status_soal` int NOT NULL DEFAULT '0' COMMENT '0=belum selesai, 1=sudah selesai',
  PRIMARY KEY (`id_bank`) USING BTREE,
  UNIQUE KEY `kode_bank_soal` (`bank_kode`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

#
# TABLE STRUCTURE FOR: cbt_durasi_siswa
#

DROP TABLE IF EXISTS `cbt_durasi_siswa`;

CREATE TABLE `cbt_durasi_siswa` (
  `id_durasi` int NOT NULL,
  `id_siswa` int DEFAULT NULL,
  `id_jadwal` int DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0' COMMENT '0=belum ujian, 1=sedang ujian, 2=sudah ujian',
  `lama_ujian` time DEFAULT NULL,
  `mulai` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `selesai` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `reset` int NOT NULL DEFAULT '0' COMMENT '0=tidak, 1=reset dari 0, 2=reset dari sisa waktu, 3=ulangi semua',
  `time_create` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_durasi`) USING BTREE,
  KEY `Cbt_index_id_durasi` (`id_durasi`) USING BTREE COMMENT 'id durasi',
  KEY `id_siswa` (`id_siswa`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: cbt_jadwal
#

DROP TABLE IF EXISTS `cbt_jadwal`;

CREATE TABLE `cbt_jadwal` (
  `id_jadwal` int NOT NULL AUTO_INCREMENT,
  `id_tp` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_smt` char(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_bank` int DEFAULT NULL,
  `id_jenis` int DEFAULT NULL,
  `tgl_mulai` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_selesai` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `durasi_ujian` int NOT NULL,
  `pengawas` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `acak_soal` int NOT NULL,
  `acak_opsi` int NOT NULL,
  `hasil_tampil` int NOT NULL,
  `token` int NOT NULL,
  `status` int NOT NULL,
  `ulang` int NOT NULL,
  `reset_login` int NOT NULL,
  `rekap` int NOT NULL DEFAULT '0',
  `jam_ke` int NOT NULL DEFAULT '0',
  `jarak` int NOT NULL DEFAULT '0',
  `time_create` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_jadwal`) USING BTREE,
  UNIQUE KEY `idjawal_relation` (`id_jadwal`) USING BTREE,
  UNIQUE KEY `id_bank_soal` (`id_bank`) USING BTREE,
  KEY `idx_jns_fc` (`id_jenis`) USING BTREE,
  CONSTRAINT `id_bank_soal` FOREIGN KEY (`id_bank`) REFERENCES `cbt_bank_soal` (`id_bank`),
  CONSTRAINT `id_jns_idx_ifc` FOREIGN KEY (`id_jenis`) REFERENCES `cbt_jenis` (`id_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

#
# TABLE STRUCTURE FOR: cbt_jenis
#

DROP TABLE IF EXISTS `cbt_jenis`;

CREATE TABLE `cbt_jenis` (
  `id_jenis` int NOT NULL AUTO_INCREMENT,
  `nama_jenis` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kode_jenis` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_jenis`) USING BTREE,
  UNIQUE KEY `idx_jns` (`id_jenis`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `cbt_jenis` (`id_jenis`, `nama_jenis`, `kode_jenis`) VALUES (1, 'Penilaian Harian', 'PH');
INSERT INTO `cbt_jenis` (`id_jenis`, `nama_jenis`, `kode_jenis`) VALUES (2, 'Penilaian Tengah Semester', 'PTS');
INSERT INTO `cbt_jenis` (`id_jenis`, `nama_jenis`, `kode_jenis`) VALUES (3, 'Penilaian Akhir Semester', 'PAS');
INSERT INTO `cbt_jenis` (`id_jenis`, `nama_jenis`, `kode_jenis`) VALUES (4, 'Penilaian Akhir Tahun', 'PAT');
INSERT INTO `cbt_jenis` (`id_jenis`, `nama_jenis`, `kode_jenis`) VALUES (5, 'Ujian Madrasah Berbasis Komputer', 'UMBK');
INSERT INTO `cbt_jenis` (`id_jenis`, `nama_jenis`, `kode_jenis`) VALUES (6, 'Try Out', 'TO');
INSERT INTO `cbt_jenis` (`id_jenis`, `nama_jenis`, `kode_jenis`) VALUES (7, 'Simulasi', 'SIML');


#
# TABLE STRUCTURE FOR: cbt_kelas_ruang
#

DROP TABLE IF EXISTS `cbt_kelas_ruang`;

CREATE TABLE `cbt_kelas_ruang` (
  `id_kelas_ruang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_kelas` int DEFAULT NULL,
  `id_ruang` int NOT NULL,
  `id_sesi` int NOT NULL DEFAULT '0',
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `set_siswa` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_kelas_ruang`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: cbt_kop_absensi
#

DROP TABLE IF EXISTS `cbt_kop_absensi`;

CREATE TABLE `cbt_kop_absensi` (
  `id_kop` int NOT NULL,
  `header_1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `header_2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `header_3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `header_4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `proktor` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pengawas_1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pengawas_2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_kop`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: cbt_kop_berita
#

DROP TABLE IF EXISTS `cbt_kop_berita`;

CREATE TABLE `cbt_kop_berita` (
  `id_kop` int NOT NULL,
  `header_1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `header_2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `header_3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `header_4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_kop`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: cbt_kop_kartu
#

DROP TABLE IF EXISTS `cbt_kop_kartu`;

CREATE TABLE `cbt_kop_kartu` (
  `id_set_kartu` int NOT NULL,
  `header_1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `header_2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `header_3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `header_4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_set_kartu`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: cbt_nilai
#

DROP TABLE IF EXISTS `cbt_nilai`;

CREATE TABLE `cbt_nilai` (
  `id_nilai` int NOT NULL,
  `pg_benar` int DEFAULT '0',
  `pg_nilai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `essai_nilai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `id_siswa` int DEFAULT NULL,
  `id_jadwal` int DEFAULT NULL,
  `kompleks_nilai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `jodohkan_nilai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `isian_nilai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  `dikoreksi` int NOT NULL DEFAULT '0',
  `time_create` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_nilai`) USING BTREE,
  UNIQUE KEY `id_nilai_idx` (`id_nilai`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: cbt_nomor_peserta
#

DROP TABLE IF EXISTS `cbt_nomor_peserta`;

CREATE TABLE `cbt_nomor_peserta` (
  `id_nomor` int NOT NULL,
  `id_siswa` int DEFAULT NULL,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL DEFAULT '1',
  `nomor_peserta` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_nomor`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: cbt_pengawas
#

DROP TABLE IF EXISTS `cbt_pengawas`;

CREATE TABLE `cbt_pengawas` (
  `id_pengawas` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_jadwal` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `id_ruang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_sesi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_guru` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_pengawas`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: cbt_rekap
#

DROP TABLE IF EXISTS `cbt_rekap`;

CREATE TABLE `cbt_rekap` (
  `id_rekap` int NOT NULL AUTO_INCREMENT,
  `id_tp` int NOT NULL,
  `tp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_smt` int NOT NULL,
  `smt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_jadwal` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_jenis` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kode_jenis` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_bank` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bank_kelas` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bank_kode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bank_level` int NOT NULL,
  `id_mapel` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_mapel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_mulai` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_selesai` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tampil_pg` int NOT NULL,
  `jawaban_pg` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tampil_esai` int NOT NULL,
  `jawaban_esai` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bobot_pg` int NOT NULL,
  `bobot_esai` int NOT NULL,
  `id_guru` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_guru` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_kelas` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `soal_kompleks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `soal_jodohkan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `soal_isian` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `soal_essai` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id_rekap`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: cbt_rekap_nilai
#

DROP TABLE IF EXISTS `cbt_rekap_nilai`;

CREATE TABLE `cbt_rekap_nilai` (
  `id_rekap_nilai` int NOT NULL AUTO_INCREMENT,
  `id_jadwal` int DEFAULT NULL,
  `id_tp` int NOT NULL,
  `tp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_smt` int NOT NULL,
  `smt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_jenis` int NOT NULL,
  `kode_jenis` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_bank` int DEFAULT NULL,
  `id_mapel` int DEFAULT NULL,
  `id_siswa` int DEFAULT NULL,
  `id_kelas` int DEFAULT '0',
  `kelas` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mulai` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `selesai` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `durasi` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bobot_pg` int NOT NULL,
  `jawaban_pg` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nilai_pg` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bobot_esai` int NOT NULL,
  `jawaban_esai` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nilai_esai` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_guru` int DEFAULT NULL,
  `nama_siswa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `no_peserta` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `soal_kompleks` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `soal_jodohkan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `soal_isian` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `soal_essai` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `time_create` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_rekap_nilai`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: cbt_ruang
#

DROP TABLE IF EXISTS `cbt_ruang`;

CREATE TABLE `cbt_ruang` (
  `id_ruang` int NOT NULL AUTO_INCREMENT,
  `nama_ruang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kode_ruang` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_ruang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `cbt_ruang` (`id_ruang`, `nama_ruang`, `kode_ruang`) VALUES (1, 'Ruang 1', 'LAB-KOM');
INSERT INTO `cbt_ruang` (`id_ruang`, `nama_ruang`, `kode_ruang`) VALUES (2, 'Ruang 2', 'R2');
INSERT INTO `cbt_ruang` (`id_ruang`, `nama_ruang`, `kode_ruang`) VALUES (3, 'Ruang 3', 'R3');
INSERT INTO `cbt_ruang` (`id_ruang`, `nama_ruang`, `kode_ruang`) VALUES (4, 'Ruang 4', 'R4');
INSERT INTO `cbt_ruang` (`id_ruang`, `nama_ruang`, `kode_ruang`) VALUES (5, 'Ruang 5', 'R5');
INSERT INTO `cbt_ruang` (`id_ruang`, `nama_ruang`, `kode_ruang`) VALUES (6, 'Ruang Daring', 'RDG');


#
# TABLE STRUCTURE FOR: cbt_sesi
#

DROP TABLE IF EXISTS `cbt_sesi`;

CREATE TABLE `cbt_sesi` (
  `id_sesi` int NOT NULL AUTO_INCREMENT,
  `nama_sesi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kode_sesi` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `waktu_mulai` time NOT NULL,
  `waktu_akhir` time NOT NULL,
  `aktif` int NOT NULL,
  PRIMARY KEY (`id_sesi`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `cbt_sesi` (`id_sesi`, `nama_sesi`, `kode_sesi`, `waktu_mulai`, `waktu_akhir`, `aktif`) VALUES (1, 'Sesi Pagi', 'SPG', '07:00:00', '12:00:00', 1);
INSERT INTO `cbt_sesi` (`id_sesi`, `nama_sesi`, `kode_sesi`, `waktu_mulai`, `waktu_akhir`, `aktif`) VALUES (2, 'Sesi Siang', 'SSG', '13:00:00', '15:00:00', 1);
INSERT INTO `cbt_sesi` (`id_sesi`, `nama_sesi`, `kode_sesi`, `waktu_mulai`, `waktu_akhir`, `aktif`) VALUES (3, 'Sesi Sore', 'SSE', '15:00:00', '17:00:00', 1);
INSERT INTO `cbt_sesi` (`id_sesi`, `nama_sesi`, `kode_sesi`, `waktu_mulai`, `waktu_akhir`, `aktif`) VALUES (4, 'Seharian', '1-D', '00:00:00', '23:59:00', 0);


#
# TABLE STRUCTURE FOR: cbt_sesi_siswa
#

DROP TABLE IF EXISTS `cbt_sesi_siswa`;

CREATE TABLE `cbt_sesi_siswa` (
  `siswa_id` int NOT NULL,
  `kelas_id` int DEFAULT NULL,
  `ruang_id` int NOT NULL,
  `sesi_id` int NOT NULL,
  `tp_id` int NOT NULL,
  `smt_id` int NOT NULL,
  PRIMARY KEY (`siswa_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: cbt_soal
#

DROP TABLE IF EXISTS `cbt_soal`;

CREATE TABLE `cbt_soal` (
  `id_soal` int NOT NULL AUTO_INCREMENT,
  `bank_id` int DEFAULT NULL,
  `mapel_id` int DEFAULT '0',
  `jenis` int NOT NULL COMMENT '1=ganda, 2=ganda kompleks, 3=menjodohkan, 4=isian singkat, 5=uraian',
  `nomor_soal` int DEFAULT '0',
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file1` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `tipe_file` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `soal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `opsi_a` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `opsi_b` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `opsi_c` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `opsi_d` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `opsi_e` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `file_a` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_b` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_d` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `file_e` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jawaban` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `created_on` int DEFAULT NULL,
  `updated_on` int DEFAULT NULL,
  `tampilkan` int NOT NULL DEFAULT '0',
  `deskripsi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kesulitan` int NOT NULL DEFAULT '1' COMMENT 'tingkat kesulitan 1-10',
  `timer` int NOT NULL DEFAULT '0' COMMENT '0=tidak, 1=ya',
  `timer_menit` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_soal`) USING BTREE,
  UNIQUE KEY `id_soal_idx` (`id_soal`) USING BTREE,
  KEY `id_bank_idx` (`bank_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: cbt_soal_siswa
#

DROP TABLE IF EXISTS `cbt_soal_siswa`;

CREATE TABLE `cbt_soal_siswa` (
  `id_soal_siswa` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_bank` int DEFAULT NULL,
  `id_jadwal` int DEFAULT NULL,
  `id_soal` int DEFAULT NULL,
  `id_siswa` int DEFAULT NULL,
  `jenis_soal` int NOT NULL,
  `no_soal_alias` int NOT NULL,
  `opsi_alias_a` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `opsi_alias_b` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `opsi_alias_c` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `opsi_alias_d` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `opsi_alias_e` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jawaban_alias` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `jawaban_siswa` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `jawaban_benar` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `point_essai` int DEFAULT '0',
  `soal_end` int NOT NULL DEFAULT '0',
  `point_soal` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `nilai_koreksi` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `nilai_otomatis` int NOT NULL DEFAULT '0' COMMENT '0=otomatis, 1=dari guru',
  `time_create` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_soal_siswa`) USING BTREE,
  UNIQUE KEY `is_soal_siswa` (`id_soal_siswa`) USING BTREE,
  KEY `id_siswa` (`id_siswa`) USING BTREE,
  KEY `id_jadwal` (`id_jadwal`) USING BTREE,
  KEY `id_soal_fc` (`id_soal`) USING BTREE,
  KEY `id_bank_fc` (`id_bank`) USING BTREE,
  CONSTRAINT `id_bank_fc` FOREIGN KEY (`id_bank`) REFERENCES `cbt_bank_soal` (`id_bank`),
  CONSTRAINT `id_jadwal_fc` FOREIGN KEY (`id_jadwal`) REFERENCES `cbt_jadwal` (`id_jadwal`),
  CONSTRAINT `Id_siswa_fc` FOREIGN KEY (`id_siswa`) REFERENCES `master_siswa` (`id_siswa`),
  CONSTRAINT `id_soal_fc` FOREIGN KEY (`id_soal`) REFERENCES `cbt_soal` (`id_soal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: cbt_token
#

DROP TABLE IF EXISTS `cbt_token`;

CREATE TABLE `cbt_token` (
  `token` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `auto` int NOT NULL,
  `id_token` int NOT NULL AUTO_INCREMENT,
  `jarak` int NOT NULL DEFAULT '0',
  `updated` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '',
  PRIMARY KEY (`id_token`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `cbt_token` (`token`, `auto`, `id_token`, `jarak`, `updated`) VALUES ('HILZCX', 0, 1, 0, '2022-03-25 08:05:15');


#
# TABLE STRUCTURE FOR: groups
#

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `groups` (`id`, `name`, `description`) VALUES (1, 'admin', 'Administrator');
INSERT INTO `groups` (`id`, `name`, `description`) VALUES (2, 'guru', 'Pembuat Soal dan ujian');
INSERT INTO `groups` (`id`, `name`, `description`) VALUES (3, 'siswa', 'Peserta Ujian');


#
# TABLE STRUCTURE FOR: hari
#

DROP TABLE IF EXISTS `hari`;

CREATE TABLE `hari` (
  `id_hri` int NOT NULL AUTO_INCREMENT,
  `nama_hri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_hri`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `hari` (`id_hri`, `nama_hri`) VALUES (1, 'Senin');
INSERT INTO `hari` (`id_hri`, `nama_hri`) VALUES (2, 'Selasa');
INSERT INTO `hari` (`id_hri`, `nama_hri`) VALUES (3, 'Rabu');
INSERT INTO `hari` (`id_hri`, `nama_hri`) VALUES (4, 'Kamis');
INSERT INTO `hari` (`id_hri`, `nama_hri`) VALUES (5, 'Jum\'at');
INSERT INTO `hari` (`id_hri`, `nama_hri`) VALUES (6, 'Sabtu');
INSERT INTO `hari` (`id_hri`, `nama_hri`) VALUES (7, 'Minggu');


#
# TABLE STRUCTURE FOR: jabatan_guru
#

DROP TABLE IF EXISTS `jabatan_guru`;

CREATE TABLE `jabatan_guru` (
  `id_jabatan_guru` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_guru` int DEFAULT NULL,
  `id_jabatan` int NOT NULL,
  `id_kelas` int DEFAULT '0',
  `mapel_kelas` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `ekstra_kelas` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  PRIMARY KEY (`id_jabatan_guru`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: kelas_catatan_mapel
#

DROP TABLE IF EXISTS `kelas_catatan_mapel`;

CREATE TABLE `kelas_catatan_mapel` (
  `id_catatan` int NOT NULL AUTO_INCREMENT,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `type` int NOT NULL,
  `id_siswa` int DEFAULT NULL,
  `id_mapel` int DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `id_guru` int DEFAULT NULL,
  `level` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `tgl` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `readed` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `reading` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT 'array id_siswa yang membaca',
  `jml` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_catatan`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: kelas_catatan_wali
#

DROP TABLE IF EXISTS `kelas_catatan_wali`;

CREATE TABLE `kelas_catatan_wali` (
  `id_catatan` int NOT NULL AUTO_INCREMENT,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `type` int NOT NULL COMMENT '1=semua siswa, 2=per siswa',
  `level` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '1=saran, 2=teguran, 3=peringatan, 4=sangsi',
  `tgl` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `id_siswa` int DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `text` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `readed` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `reading` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `jml` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_catatan`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: kelas_ekstra
#

DROP TABLE IF EXISTS `kelas_ekstra`;

CREATE TABLE `kelas_ekstra` (
  `id_kelas_ekstra` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `id_kelas` int DEFAULT NULL,
  `ekstra` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_kelas_ekstra`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: kelas_jadwal_kbm
#

DROP TABLE IF EXISTS `kelas_jadwal_kbm`;

CREATE TABLE `kelas_jadwal_kbm` (
  `id_kbm` int NOT NULL,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `id_kelas` int DEFAULT NULL,
  `kbm_jam_pel` int NOT NULL,
  `kbm_jam_mulai` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kbm_jml_mapel_hari` int NOT NULL,
  `istirahat` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_kbm`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: kelas_jadwal_mapel
#

DROP TABLE IF EXISTS `kelas_jadwal_mapel`;

CREATE TABLE `kelas_jadwal_mapel` (
  `id_jadwal` int NOT NULL,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `id_kelas` int DEFAULT NULL,
  `id_hari` int NOT NULL,
  `jam_ke` int NOT NULL,
  `id_mapel` int DEFAULT NULL,
  PRIMARY KEY (`id_jadwal`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: kelas_jadwal_materi
#

DROP TABLE IF EXISTS `kelas_jadwal_materi`;

CREATE TABLE `kelas_jadwal_materi` (
  `id_kjm` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `id_materi` int DEFAULT NULL,
  `id_mapel` int DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `jadwal_materi` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jenis` int DEFAULT NULL COMMENT '1=materi, 2=tugas',
  PRIMARY KEY (`id_kjm`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: kelas_materi
#

DROP TABLE IF EXISTS `kelas_materi`;

CREATE TABLE `kelas_materi` (
  `id_materi` int NOT NULL AUTO_INCREMENT,
  `id_tp` int NOT NULL DEFAULT '1',
  `id_smt` int NOT NULL DEFAULT '1',
  `kode_materi` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_guru` int DEFAULT NULL,
  `materi_kelas` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_mapel` int DEFAULT '0',
  `kode_mapel` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `judul_materi` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `isi_materi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `file` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `link_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_mulai` datetime DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` int DEFAULT NULL,
  `youtube` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jenis` int NOT NULL DEFAULT '1' COMMENT '1=materi, 2=tugas',
  PRIMARY KEY (`id_materi`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: kelas_siswa
#

DROP TABLE IF EXISTS `kelas_siswa`;

CREATE TABLE `kelas_siswa` (
  `id_kelas_siswa` int NOT NULL,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `id_siswa` int DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  PRIMARY KEY (`id_kelas_siswa`) USING BTREE,
  UNIQUE KEY `id_kelas_siswa_idx` (`id_kelas_siswa`) USING BTREE,
  KEY `id_siswa_idx` (`id_siswa`) USING BTREE,
  KEY `Id_kelas` (`id_kelas`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: kelas_struktur
#

DROP TABLE IF EXISTS `kelas_struktur`;

CREATE TABLE `kelas_struktur` (
  `id_kelas` int NOT NULL AUTO_INCREMENT,
  `ketua` int DEFAULT NULL,
  `wakil_ketua` int DEFAULT NULL,
  `sekretaris_1` int DEFAULT NULL,
  `sekretaris_2` int DEFAULT NULL,
  `bendahara_1` int DEFAULT NULL,
  `bendahara_2` int DEFAULT NULL,
  `sie_ekstrakurikuler` int DEFAULT NULL,
  `sie_upacara` int DEFAULT NULL,
  `sie_olahraga` int DEFAULT NULL,
  `sie_keagamaan` int DEFAULT NULL,
  `sie_keamanan` int DEFAULT NULL,
  `sie_ketertiban` int DEFAULT NULL,
  `sie_kebersihan` int DEFAULT NULL,
  `sie_keindahan` int DEFAULT NULL,
  `sie_kesehatan` int DEFAULT NULL,
  `sie_kekeluargaan` int DEFAULT NULL,
  `sie_humas` int DEFAULT NULL,
  PRIMARY KEY (`id_kelas`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: level_guru
#

DROP TABLE IF EXISTS `level_guru`;

CREATE TABLE `level_guru` (
  `id_level` int NOT NULL AUTO_INCREMENT,
  `level` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_level`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `level_guru` (`id_level`, `level`) VALUES (1, 'Kepala Sekolah');
INSERT INTO `level_guru` (`id_level`, `level`) VALUES (2, 'Wakil Kepala Sekolah');
INSERT INTO `level_guru` (`id_level`, `level`) VALUES (3, 'Bimbingan Konseling');
INSERT INTO `level_guru` (`id_level`, `level`) VALUES (4, 'Walikelas');
INSERT INTO `level_guru` (`id_level`, `level`) VALUES (5, 'Guru');


#
# TABLE STRUCTURE FOR: level_kelas
#

DROP TABLE IF EXISTS `level_kelas`;

CREATE TABLE `level_kelas` (
  `id_level` int NOT NULL,
  `level` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_level`) USING BTREE,
  KEY `index_id_level` (`id_level`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `level_kelas` (`id_level`, `level`) VALUES (1, '1');
INSERT INTO `level_kelas` (`id_level`, `level`) VALUES (2, '2');
INSERT INTO `level_kelas` (`id_level`, `level`) VALUES (3, '3');
INSERT INTO `level_kelas` (`id_level`, `level`) VALUES (4, '4');
INSERT INTO `level_kelas` (`id_level`, `level`) VALUES (5, '5');
INSERT INTO `level_kelas` (`id_level`, `level`) VALUES (6, '6');
INSERT INTO `level_kelas` (`id_level`, `level`) VALUES (7, '7');
INSERT INTO `level_kelas` (`id_level`, `level`) VALUES (8, '8');
INSERT INTO `level_kelas` (`id_level`, `level`) VALUES (9, '9');
INSERT INTO `level_kelas` (`id_level`, `level`) VALUES (10, '10');
INSERT INTO `level_kelas` (`id_level`, `level`) VALUES (11, '11');
INSERT INTO `level_kelas` (`id_level`, `level`) VALUES (12, '12');


#
# TABLE STRUCTURE FOR: log
#

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `log_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int NOT NULL,
  `id_group` int NOT NULL,
  `name_group` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `log_type` int NOT NULL,
  `log_desc` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `agent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `device` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_log`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `log` (`id_log`, `log_time`, `id_user`, `id_group`, `name_group`, `log_type`, `log_desc`, `address`, `agent`, `device`) VALUES (6, '2025-02-26 09:51:56', 1, 1, 'admin', 0, 'Login', '127.0.0.1', 'Chrome 133.0.0.0', 'Windows 10');


#
# TABLE STRUCTURE FOR: log_materi
#

DROP TABLE IF EXISTS `log_materi`;

CREATE TABLE `log_materi` (
  `id_log` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `log_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_siswa` int DEFAULT NULL,
  `jam_ke` int NOT NULL,
  `id_materi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_mapel` int DEFAULT NULL,
  `log_type` int NOT NULL,
  `log_desc` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `file` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `nilai` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `catatan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `address` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `agent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `device` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `finish_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_log`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: log_ujian
#

DROP TABLE IF EXISTS `log_ujian`;

CREATE TABLE `log_ujian` (
  `id_log` int NOT NULL AUTO_INCREMENT,
  `log_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_siswa` int DEFAULT NULL,
  `id_jadwal` int DEFAULT NULL,
  `log_type` int NOT NULL,
  `log_desc` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `agent` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `device` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `reset` int NOT NULL COMMENT '0=tidak reset, 1=reset',
  `finish_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_log`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: login_attempts
#

DROP TABLE IF EXISTS `login_attempts`;

CREATE TABLE `login_attempts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `login` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: master_ekstra
#

DROP TABLE IF EXISTS `master_ekstra`;

CREATE TABLE `master_ekstra` (
  `id_ekstra` int NOT NULL AUTO_INCREMENT,
  `nama_ekstra` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kode_ekstra` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_ekstra`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `master_ekstra` (`id_ekstra`, `nama_ekstra`, `kode_ekstra`) VALUES (1, 'Pramuka', 'PRAM');
INSERT INTO `master_ekstra` (`id_ekstra`, `nama_ekstra`, `kode_ekstra`) VALUES (2, 'Baca Tulis Al Quran', 'BTQ');
INSERT INTO `master_ekstra` (`id_ekstra`, `nama_ekstra`, `kode_ekstra`) VALUES (3, 'Tahfidz', 'TFZ');


#
# TABLE STRUCTURE FOR: master_guru
#

DROP TABLE IF EXISTS `master_guru`;

CREATE TABLE `master_guru` (
  `id_guru` int NOT NULL AUTO_INCREMENT,
  `id_user` int DEFAULT NULL,
  `nip` char(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_guru` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kode_guru` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `no_ktp` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tempat_lahir` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agama` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `no_hp` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat_jalan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rt_rw` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dusun` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kelurahan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kecamatan` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kabupaten` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provinsi` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kode_pos` int DEFAULT NULL,
  `kewarganegaraan` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nuptk` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jenis_ptk` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgs_tambahan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_pegawai` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_aktif` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status_nikah` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `keahlian_isyarat` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `npwp` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `foto` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id_guru`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: master_hari_efektif
#

DROP TABLE IF EXISTS `master_hari_efektif`;

CREATE TABLE `master_hari_efektif` (
  `id_hari_efektif` int NOT NULL AUTO_INCREMENT,
  `jml_hari_efektif` int NOT NULL,
  PRIMARY KEY (`id_hari_efektif`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: master_jurusan
#

DROP TABLE IF EXISTS `master_jurusan`;

CREATE TABLE `master_jurusan` (
  `id_jurusan` int NOT NULL AUTO_INCREMENT,
  `nama_jurusan` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kode_jurusan` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mapel_peminatan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `status` int NOT NULL DEFAULT '1',
  `deletable` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_jurusan`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `master_jurusan` (`id_jurusan`, `nama_jurusan`, `kode_jurusan`, `mapel_peminatan`, `status`, `deletable`) VALUES (1, 'IPA', 'IPA', NULL, 1, 0);
INSERT INTO `master_jurusan` (`id_jurusan`, `nama_jurusan`, `kode_jurusan`, `mapel_peminatan`, `status`, `deletable`) VALUES (2, 'IPS', 'IPS', NULL, 1, 0);
INSERT INTO `master_jurusan` (`id_jurusan`, `nama_jurusan`, `kode_jurusan`, `mapel_peminatan`, `status`, `deletable`) VALUES (3, 'BAHASA', 'BAHASA', NULL, 1, 0);
INSERT INTO `master_jurusan` (`id_jurusan`, `nama_jurusan`, `kode_jurusan`, `mapel_peminatan`, `status`, `deletable`) VALUES (4, 'KEAGAMAAN', 'AGAMA', NULL, 0, 1);
INSERT INTO `master_jurusan` (`id_jurusan`, `nama_jurusan`, `kode_jurusan`, `mapel_peminatan`, `status`, `deletable`) VALUES (5, 'NON JURUSAN', 'NON', NULL, 1, 0);
INSERT INTO `master_jurusan` (`id_jurusan`, `nama_jurusan`, `kode_jurusan`, `mapel_peminatan`, `status`, `deletable`) VALUES (6, 'PPLG/RPL', 'PPLG/RPL', '', 1, 1);
INSERT INTO `master_jurusan` (`id_jurusan`, `nama_jurusan`, `kode_jurusan`, `mapel_peminatan`, `status`, `deletable`) VALUES (7, 'TJKT/TKJ', 'TJKT/TKJ', '', 1, 1);


#
# TABLE STRUCTURE FOR: master_kelas
#

DROP TABLE IF EXISTS `master_kelas`;

CREATE TABLE `master_kelas` (
  `id_kelas` int NOT NULL AUTO_INCREMENT,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `nama_kelas` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kode_kelas` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jurusan_id` int DEFAULT NULL,
  `level_id` int NOT NULL,
  `guru_id` int DEFAULT NULL,
  `siswa_id` int DEFAULT NULL,
  `jumlah_siswa` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `set_siswa` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '0',
  PRIMARY KEY (`id_kelas`) USING BTREE,
  KEY `index_level_Id` (`level_id`) USING BTREE,
  CONSTRAINT `key_id_cek` FOREIGN KEY (`level_id`) REFERENCES `level_kelas` (`id_level`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `master_kelas` (`id_kelas`, `id_tp`, `id_smt`, `nama_kelas`, `kode_kelas`, `jurusan_id`, `level_id`, `guru_id`, `siswa_id`, `jumlah_siswa`, `set_siswa`) VALUES (1, 5, 1, 'SMK ARTANITA TASIKMALAYA', 'KLS-SAT', 7, 11, 0, 1, 'a:1:{i:0;a:1:{s:2:\"id\";s:1:\"1\";}}', '0');


#
# TABLE STRUCTURE FOR: master_kelompok_mapel
#

DROP TABLE IF EXISTS `master_kelompok_mapel`;

CREATE TABLE `master_kelompok_mapel` (
  `id_kel_mapel` int NOT NULL AUTO_INCREMENT,
  `kode_kel_mapel` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_kel_mapel` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kategori` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_parent` int DEFAULT NULL,
  PRIMARY KEY (`id_kel_mapel`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `master_kelompok_mapel` (`id_kel_mapel`, `kode_kel_mapel`, `nama_kel_mapel`, `kategori`, `id_parent`) VALUES (1, 'A', 'Kelompok A (Wajib)', 'WAJIB', 0);
INSERT INTO `master_kelompok_mapel` (`id_kel_mapel`, `kode_kel_mapel`, `nama_kel_mapel`, `kategori`, `id_parent`) VALUES (2, 'B', 'Kelompok B', 'WAJIB', 0);
INSERT INTO `master_kelompok_mapel` (`id_kel_mapel`, `kode_kel_mapel`, `nama_kel_mapel`, `kategori`, `id_parent`) VALUES (3, 'C', 'Kelompok C', 'PEMINATAN', 0);
INSERT INTO `master_kelompok_mapel` (`id_kel_mapel`, `kode_kel_mapel`, `nama_kel_mapel`, `kategori`, `id_parent`) VALUES (4, 'MULOK', 'Muatan Lokal', 'MULOK', 0);
INSERT INTO `master_kelompok_mapel` (`id_kel_mapel`, `kode_kel_mapel`, `nama_kel_mapel`, `kategori`, `id_parent`) VALUES (5, 'C1', 'Kelompok C1', 'PEMINATAN', 3);
INSERT INTO `master_kelompok_mapel` (`id_kel_mapel`, `kode_kel_mapel`, `nama_kel_mapel`, `kategori`, `id_parent`) VALUES (6, 'PAI', 'PAI', 'PAI (Kemenag)', 0);
INSERT INTO `master_kelompok_mapel` (`id_kel_mapel`, `kode_kel_mapel`, `nama_kel_mapel`, `kategori`, `id_parent`) VALUES (7, 'UTBK-TKAS', 'TKA SAINTEK', 'AKADEMIK KEJURUAN', 0);


#
# TABLE STRUCTURE FOR: master_mapel
#

DROP TABLE IF EXISTS `master_mapel`;

CREATE TABLE `master_mapel` (
  `id_mapel` int NOT NULL AUTO_INCREMENT,
  `nama_mapel` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kelompok` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '-',
  `bobot_p` int NOT NULL DEFAULT '0',
  `bobot_k` int NOT NULL DEFAULT '0',
  `jenjang` int NOT NULL DEFAULT '0',
  `urutan` int NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `deletable` int NOT NULL DEFAULT '1',
  `urutan_tampil` int DEFAULT NULL,
  PRIMARY KEY (`id_mapel`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (1, 'Al Quran-Hadis', 'QH', 'PAI', 0, 0, 1, 1, 1, 0, 1);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (2, 'Fiqih', 'FQH', 'PAI', 0, 0, 1, 1, 1, 0, 3);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (3, 'Akidah Akhlak', 'AA', 'PAI', 0, 0, 1, 1, 1, 0, 2);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (4, 'Sejarah Kebudayaan Islam', 'SKI', 'PAI', 0, 0, 1, 1, 1, 0, 4);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (5, 'Bahasa Arab', 'BAR', 'A', 0, 0, 1, 2, 1, 0, 3);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (6, 'Bahasa Indonesia', 'BIND', 'A', 0, 0, 1, 2, 1, 0, 2);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (7, 'Bahasa Inggris', 'BING', 'A', 0, 0, 1, 2, 1, 0, 7);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (8, 'Matematika', 'MTK', 'A', 0, 0, 1, 2, 1, 0, 4);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (9, 'Ilmu Pengetahuan Alam', 'IPA', 'A', 0, 0, 1, 2, 1, 0, 5);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (10, 'Ilmu Pengetahuan Sosial', 'IPS', 'A', 0, 0, 1, 2, 1, 0, 6);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (11, 'Pendidikan Pancasila dan Kewarganegaraan', 'PPKn', 'A', 0, 0, 1, 2, 1, 0, 1);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (12, 'Pendidikan Jasmani Olah Raga dan Kesehatan', 'PJOK', 'B', 0, 0, 1, 3, 1, 0, 2);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (13, 'Seni Budaya', 'SB', 'B', 0, 0, 2, 3, 1, 0, 1);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (14, 'Prakarya', 'PRA', 'B', 0, 0, 2, 3, 1, 0, 3);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (15, 'SBdP', 'SBDP', 'B', 0, 0, 0, 3, 0, 0, 1);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (16, 'Akhlak', 'AK', 'C', 0, 0, 3, 0, 0, 0, 19);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (17, 'Antropologi', 'ANT', 'C1', 0, 0, 3, 0, 1, 0, 4);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (18, 'Bahasa Arab (Peminatan)', 'BAR-P', 'C', 0, 0, 3, 0, 1, 0, 3);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (19, 'Bahasa dan Sastra Asing Lainnya', 'BSAL', 'C', 0, 0, 3, 0, 1, 0, 16);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (20, 'Bahasa dan Sastra Indonesia', 'BSIN', 'C', 0, 0, 3, 0, 1, 0, 15);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (21, 'Bahasa dan Sastra Inggris', 'BSING', 'C', 0, 0, 3, 0, 1, 0, 14);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (22, 'Bahasa Jepang', 'JPN', 'C', 0, 0, 3, 0, 1, 0, 18);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (23, 'Bahasa Jerman', 'JRM', 'C', 0, 0, 3, 0, 1, 0, 12);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (24, 'Biologi', 'BIO', 'C', 0, 0, 3, 0, 1, 0, 2);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (25, 'Ekonomi', 'EKN', 'C', 0, 0, 3, 0, 1, 0, 11);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (26, 'Fikih (Peminatan)', 'FQH-P', 'C', 0, 0, 3, 0, 1, 0, 4);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (27, 'Fikih - Ushul Fikih', 'UFQH', 'C', 0, 0, 3, 0, 1, 0, 5);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (28, 'Fisika', 'FIS', 'C1', 0, 0, 3, 0, 1, 0, 3);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (29, 'Geografi', 'GEO', 'C', 0, 0, 3, 0, 1, 0, 10);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (30, 'Hadis - Ilmu Hadis', 'HA', 'C', 0, 0, 3, 0, 1, 0, 6);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (31, 'Ilmu Kalam', 'IK', 'C', 0, 0, 3, 0, 1, 0, 7);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (32, 'Informatika', 'INF', 'C', 0, 0, 3, 0, 0, 0, 13);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (33, 'Keterampilan', 'KTR', 'C', 0, 0, 3, 0, 0, 0, 17);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (34, 'Kimia', 'KIM', 'C1', 0, 0, 3, 0, 1, 0, 2);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (35, 'Prakarya dan Kewirausahaan', 'PK', 'B', 0, 0, 3, 0, 0, 0, 3);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (36, 'Sejarah', 'SEJ', 'C', 0, 0, 3, 0, 1, 0, 8);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (37, 'Sejarah Indonesia', 'SJI', 'A', 0, 0, 3, 0, 1, 0, 5);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (38, 'Sosiologi', 'SOS', 'C', 0, 0, 3, 0, 1, 0, 9);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (39, 'Tafsir - Ilmu Tafsir', 'TT', 'C1', 0, 0, 3, 0, 1, 0, 1);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (40, 'Bahasa Sunda', 'BSUND', 'MULOK', 0, 0, 1, 0, 1, 1, 1);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (41, 'Pendidikan Agama dan Budi Pekerti', 'PABP', 'A', 0, 0, 1, 1, 1, 0, 1);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (42, 'Matematika (Peminatan)', 'MTK-P', 'C', 0, 0, 3, 0, 1, 1, 1);
INSERT INTO `master_mapel` (`id_mapel`, `nama_mapel`, `kode`, `kelompok`, `bobot_p`, `bobot_k`, `jenjang`, `urutan`, `status`, `deletable`, `urutan_tampil`) VALUES (43, 'Biologi', 'TSB', 'UTBK-', 0, 0, 3, 0, 1, 1, 1);


#
# TABLE STRUCTURE FOR: master_siswa
#

DROP TABLE IF EXISTS `master_siswa`;

CREATE TABLE `master_siswa` (
  `id_siswa` int NOT NULL AUTO_INCREMENT,
  `nisn` int(10) unsigned zerofill NOT NULL,
  `nis` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_kelamin` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `kelas_awal` int NOT NULL,
  `tahun_masuk` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sekolah_asal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tempat_lahir` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggal_lahir` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `agama` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `hp` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `foto` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'siswa.png',
  `anak_ke` int DEFAULT NULL,
  `status_keluarga` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `rt` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `rw` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kelurahan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kecamatan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kabupaten` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provinsi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kode_pos` int DEFAULT NULL,
  `nama_ayah` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_lahir_ayah` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pendidikan_ayah` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pekerjaan_ayah` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nohp_ayah` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat_ayah` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `nama_ibu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_lahir_ibu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pendidikan_ibu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pekerjaan_ibu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nohp_ibu` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat_ibu` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `nama_wali` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_lahir_wali` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pendidikan_wali` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `pekerjaan_wali` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nohp_wali` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `alamat_wali` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `nik` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `warga_negara` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_siswa`,`uid`,`nisn`,`nis`) USING BTREE,
  UNIQUE KEY `Id_siswa_idx` (`id_siswa`) USING BTREE,
  UNIQUE KEY `uid_idx` (`uid`) USING BTREE,
  UNIQUE KEY `nisn` (`nisn`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: master_smt
#

DROP TABLE IF EXISTS `master_smt`;

CREATE TABLE `master_smt` (
  `id_smt` int NOT NULL AUTO_INCREMENT,
  `smt` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nama_smt` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `active` int NOT NULL,
  PRIMARY KEY (`id_smt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `master_smt` (`id_smt`, `smt`, `nama_smt`, `active`) VALUES (1, 'Ganjil', 'I (satu)', 1);
INSERT INTO `master_smt` (`id_smt`, `smt`, `nama_smt`, `active`) VALUES (2, 'Genap', 'II (dua)', 0);


#
# TABLE STRUCTURE FOR: master_tp
#

DROP TABLE IF EXISTS `master_tp`;

CREATE TABLE `master_tp` (
  `id_tp` int NOT NULL AUTO_INCREMENT,
  `tahun` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `active` int NOT NULL,
  PRIMARY KEY (`id_tp`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `master_tp` (`id_tp`, `tahun`, `active`) VALUES (1, '2020/2021', 0);
INSERT INTO `master_tp` (`id_tp`, `tahun`, `active`) VALUES (2, '2021/2022', 0);
INSERT INTO `master_tp` (`id_tp`, `tahun`, `active`) VALUES (3, '2022/2023', 0);
INSERT INTO `master_tp` (`id_tp`, `tahun`, `active`) VALUES (4, '2023/2024', 0);
INSERT INTO `master_tp` (`id_tp`, `tahun`, `active`) VALUES (5, '2024/2025', 1);


#
# TABLE STRUCTURE FOR: post
#

DROP TABLE IF EXISTS `post`;

CREATE TABLE `post` (
  `id_post` int NOT NULL AUTO_INCREMENT,
  `dari` int DEFAULT NULL,
  `dari_group` int DEFAULT NULL,
  `kepada` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'group',
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_post`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: post_comments
#

DROP TABLE IF EXISTS `post_comments`;

CREATE TABLE `post_comments` (
  `id_comment` int NOT NULL AUTO_INCREMENT,
  `id_post` int DEFAULT NULL,
  `dari` int DEFAULT NULL,
  `dari_group` int DEFAULT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1' COMMENT '1:pengumuman, 2:materi, 3:tugas',
  PRIMARY KEY (`id_comment`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: post_reply
#

DROP TABLE IF EXISTS `post_reply`;

CREATE TABLE `post_reply` (
  `id_reply` int NOT NULL AUTO_INCREMENT,
  `id_comment` int DEFAULT NULL,
  `dari` int DEFAULT NULL,
  `dari_group` int DEFAULT NULL,
  `text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_reply`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: rapor_admin_setting
#

DROP TABLE IF EXISTS `rapor_admin_setting`;

CREATE TABLE `rapor_admin_setting` (
  `id_setting` int NOT NULL AUTO_INCREMENT,
  `id_tp` int NOT NULL DEFAULT '0',
  `id_smt` int NOT NULL DEFAULT '0',
  `kkm_tunggal` int NOT NULL DEFAULT '0',
  `kkm` int DEFAULT NULL,
  `bobot_ph` int DEFAULT NULL,
  `bobot_pts` int DEFAULT NULL,
  `bobot_pas` int DEFAULT NULL,
  `bobot_absen` int DEFAULT NULL,
  `tgl_rapor_akhir` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_rapor_kelas_akhir` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tgl_rapor_pts` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nip_kepsek` int DEFAULT '0',
  `nip_walikelas` int DEFAULT '0',
  PRIMARY KEY (`id_setting`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: rapor_catatan_wali
#

DROP TABLE IF EXISTS `rapor_catatan_wali`;

CREATE TABLE `rapor_catatan_wali` (
  `id_catatan_wali` int NOT NULL AUTO_INCREMENT,
  `id_tp` int NOT NULL DEFAULT '0',
  `id_smt` int NOT NULL DEFAULT '0',
  `id_kelas` int DEFAULT NULL,
  `id_siswa` int DEFAULT NULL,
  `nilai` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `deskripsi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id_catatan_wali`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: rapor_data_catatan
#

DROP TABLE IF EXISTS `rapor_data_catatan`;

CREATE TABLE `rapor_data_catatan` (
  `id_catatan` int NOT NULL AUTO_INCREMENT,
  `id_tp` int NOT NULL DEFAULT '0',
  `id_smt` int NOT NULL DEFAULT '0',
  `id_kelas` int DEFAULT NULL,
  `jenis` int NOT NULL COMMENT '1=desk absensi, 2=desk catatan, 3=desk ranking',
  `kode` int NOT NULL,
  `deskripsi` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `rank` varchar(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_catatan`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: rapor_data_fisik
#

DROP TABLE IF EXISTS `rapor_data_fisik`;

CREATE TABLE `rapor_data_fisik` (
  `id_fisik` int NOT NULL AUTO_INCREMENT,
  `id_tp` int NOT NULL DEFAULT '0',
  `id_smt` int NOT NULL DEFAULT '0',
  `id_kelas` int DEFAULT NULL,
  `jenis` int NOT NULL COMMENT '1=pendengaran, 2=penglihatan, 3=gigi, 4=lain-lain',
  `kode` int NOT NULL,
  `deskripsi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_fisik`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: rapor_data_sikap
#

DROP TABLE IF EXISTS `rapor_data_sikap`;

CREATE TABLE `rapor_data_sikap` (
  `id_sikap` int NOT NULL AUTO_INCREMENT,
  `id_tp` int NOT NULL DEFAULT '0',
  `id_smt` int NOT NULL DEFAULT '0',
  `id_kelas` int DEFAULT NULL,
  `jenis` int NOT NULL COMMENT '1=spiritual, 2=sosial',
  `kode` int NOT NULL,
  `sikap` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_sikap`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: rapor_fisik
#

DROP TABLE IF EXISTS `rapor_fisik`;

CREATE TABLE `rapor_fisik` (
  `id_fisik` int NOT NULL AUTO_INCREMENT,
  `id_kelas` int DEFAULT NULL,
  `id_siswa` int DEFAULT NULL,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `kondisi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tinggi` int NOT NULL,
  `berat` int NOT NULL,
  PRIMARY KEY (`id_fisik`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: rapor_kikd
#

DROP TABLE IF EXISTS `rapor_kikd`;

CREATE TABLE `rapor_kikd` (
  `id_kikd` int NOT NULL AUTO_INCREMENT,
  `id_mapel_kelas` int DEFAULT NULL,
  `aspek` int NOT NULL,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `materi_kikd` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_kikd`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: rapor_kkm
#

DROP TABLE IF EXISTS `rapor_kkm`;

CREATE TABLE `rapor_kkm` (
  `id_kkm` int NOT NULL AUTO_INCREMENT,
  `kkm` int DEFAULT '0',
  `bobot_ph` int DEFAULT '0',
  `bobot_pts` int DEFAULT '0',
  `bobot_pas` int DEFAULT '0',
  `bobot_absen` int DEFAULT '0',
  `beban_jam` int DEFAULT '0',
  `id_tp` int NOT NULL DEFAULT '0',
  `id_smt` int NOT NULL DEFAULT '0',
  `jenis` int NOT NULL,
  `id_kelas` int DEFAULT NULL,
  `id_mapel` int DEFAULT NULL,
  PRIMARY KEY (`id_kkm`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: rapor_naik
#

DROP TABLE IF EXISTS `rapor_naik`;

CREATE TABLE `rapor_naik` (
  `id_naik` int NOT NULL,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `id_siswa` int NOT NULL,
  `naik` int NOT NULL,
  PRIMARY KEY (`id_naik`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: rapor_nilai_akhir
#

DROP TABLE IF EXISTS `rapor_nilai_akhir`;

CREATE TABLE `rapor_nilai_akhir` (
  `id_nilai_akhir` int NOT NULL AUTO_INCREMENT,
  `id_mapel` int DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `id_siswa` int DEFAULT NULL,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `nilai` int DEFAULT '0',
  `akhir` int DEFAULT NULL,
  `predikat` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_nilai_akhir`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: rapor_nilai_ekstra
#

DROP TABLE IF EXISTS `rapor_nilai_ekstra`;

CREATE TABLE `rapor_nilai_ekstra` (
  `id_nilai_ekstra` int NOT NULL AUTO_INCREMENT,
  `id_ekstra` int DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `id_siswa` int DEFAULT NULL,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `nilai` int NOT NULL,
  `predikat` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `deskripsi` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id_nilai_ekstra`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: rapor_nilai_harian
#

DROP TABLE IF EXISTS `rapor_nilai_harian`;

CREATE TABLE `rapor_nilai_harian` (
  `id_nilai_harian` int NOT NULL AUTO_INCREMENT,
  `id_siswa` int DEFAULT NULL,
  `id_mapel` int DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `p1` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p2` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p3` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p4` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p5` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p6` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p7` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p8` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p_rata_rata` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p_predikat` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `p_deskripsi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `k1` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `k2` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `k3` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `k4` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `k5` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `k6` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `k7` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `k8` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `k_rata_rata` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `k_predikat` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `k_deskripsi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `jml` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_nilai_harian`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: rapor_nilai_pts
#

DROP TABLE IF EXISTS `rapor_nilai_pts`;

CREATE TABLE `rapor_nilai_pts` (
  `id_nilai_pts` int NOT NULL AUTO_INCREMENT,
  `id_mapel` int DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `id_siswa` int DEFAULT NULL,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `nilai` int DEFAULT '0',
  `predikat` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_nilai_pts`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: rapor_nilai_sikap
#

DROP TABLE IF EXISTS `rapor_nilai_sikap`;

CREATE TABLE `rapor_nilai_sikap` (
  `id_nilai_sikap` int NOT NULL AUTO_INCREMENT,
  `id_siswa` int DEFAULT NULL,
  `id_kelas` int DEFAULT NULL,
  `id_tp` int NOT NULL DEFAULT '0',
  `id_smt` int NOT NULL DEFAULT '0',
  `jenis` int DEFAULT NULL,
  `nilai` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id_nilai_sikap`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: rapor_prestasi
#

DROP TABLE IF EXISTS `rapor_prestasi`;

CREATE TABLE `rapor_prestasi` (
  `id_ranking` int NOT NULL AUTO_INCREMENT,
  `id_kelas` int DEFAULT NULL,
  `id_siswa` int DEFAULT NULL,
  `id_tp` int NOT NULL,
  `id_smt` int NOT NULL,
  `ranking` int NOT NULL,
  `deskripsi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `p1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `p1_desk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `p2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `p2_desk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `p3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `p3_desk` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_ranking`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: running_text
#

DROP TABLE IF EXISTS `running_text`;

CREATE TABLE `running_text` (
  `id_text` int NOT NULL AUTO_INCREMENT,
  `text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_text`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

#
# TABLE STRUCTURE FOR: setting
#

DROP TABLE IF EXISTS `setting`;

CREATE TABLE `setting` (
  `id_setting` int NOT NULL AUTO_INCREMENT,
  `kode_sekolah` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sekolah` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `npsn` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nss` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jenjang` int DEFAULT NULL,
  `kepsek` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nip` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanda_tangan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `alamat` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `desa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kecamatan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kota` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `provinsi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `kode_pos` int DEFAULT NULL,
  `telp` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `fax` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `web` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama_aplikasi` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `logo_kanan` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `logo_kiri` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `versi` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ip_server` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `waktu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `server` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_server` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `sekolah_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `db_versi` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `satuan_pendidikan` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_setting`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=COMPACT;

INSERT INTO `setting` (`id_setting`, `kode_sekolah`, `sekolah`, `npsn`, `nss`, `jenjang`, `kepsek`, `nip`, `tanda_tangan`, `alamat`, `desa`, `kecamatan`, `kota`, `provinsi`, `kode_pos`, `telp`, `fax`, `web`, `email`, `nama_aplikasi`, `logo_kanan`, `logo_kiri`, `versi`, `ip_server`, `waktu`, `server`, `id_server`, `sekolah_id`, `db_versi`, `satuan_pendidikan`) VALUES (1, NULL, 'PT. AKARA NATURA NUSANTARA', NULL, NULL, 3, 'Dewanto Rosian Adhy', NULL, NULL, 'Perumahan Buana Suites Sukarindik No. B6', 'Kelurahan Panyingkiran', 'Kecamatan Indihiang', 'Kota Tasikmalaya', 'Jawa Barat', NULL, NULL, NULL, NULL, NULL, 'ACEDEMY-CBT', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(254) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `activation_selector` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `activation_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `forgotten_password_selector` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `forgotten_password_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `forgotten_password_time` int unsigned DEFAULT NULL,
  `remember_selector` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `remember_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `created_on` int unsigned NOT NULL,
  `last_login` int unsigned DEFAULT NULL,
  `active` tinyint unsigned DEFAULT NULL,
  `first_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `company` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `id_user` (`id`) USING BTREE,
  UNIQUE KEY `username_idx` (`username`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES (1, '127.0.0.1', 'ACA_Nurjaman', '$2y$12$lLqUVlpoVAZIePBmdwLQPOZk./EN4bSZl2islQV3XzmcxY0a.Frl.', 'admincbtaktara@admin.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1740128323, 1740538316, 1, 'Admin CBT', 'AKTARA', NULL, NULL);


#
# TABLE STRUCTURE FOR: users_groups
#

DROP TABLE IF EXISTS `users_groups`;

CREATE TABLE `users_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `group_id` mediumint unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`) USING BTREE,
  KEY `fk_users_groups_users1_idx` (`user_id`) USING BTREE,
  KEY `fk_users_groups_groups1_idx` (`group_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES (1, 1, 1);


#
# TABLE STRUCTURE FOR: users_profile
#

DROP TABLE IF EXISTS `users_profile`;

CREATE TABLE `users_profile` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama_lengkap` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jabatan` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  `level_access` int NOT NULL DEFAULT '0',
  `foto` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `users_profile` (`id_user`, `nama_lengkap`, `jabatan`, `level_access`, `foto`) VALUES (1, 'Nurjaman', 'IT Specialists PT AKTARA', 0, 'uploads/profiles/foto_1.png');


