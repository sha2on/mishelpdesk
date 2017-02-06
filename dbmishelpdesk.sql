-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 31, 2017 at 03:44 PM
-- Server version: 5.5.46-0ubuntu0.14.04.2
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mishelpdesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_case`
--

CREATE TABLE IF NOT EXISTS `table_case` (
  `caseId` int(11) NOT NULL AUTO_INCREMENT,
  `caseDateOpened` varchar(255) NOT NULL,
  `caseTimeOpened` varchar(255) NOT NULL,
  `caseAnalyst` varchar(30) DEFAULT NULL,
  `caseDetail` varchar(255) NOT NULL,
  `caseResolution` varchar(255) DEFAULT NULL,
  `caseDateClosed` varchar(255) DEFAULT NULL,
  `caseTimeClosed` varchar(255) DEFAULT NULL,
  `caseUpdatedBy` varchar(30) DEFAULT NULL,
  `fkSiteId` int(11) NOT NULL,
  `fkCategoryId` int(11) NOT NULL,
  `fkCaseStatusId` int(11) NOT NULL,
  `fkUserId` varchar(30) NOT NULL,
  PRIMARY KEY (`caseId`),
  KEY `fk_UserId` (`fkUserId`),
  KEY `fk_CategoryId` (`fkCategoryId`),
  KEY `fk_CaseStatusId` (`fkCaseStatusId`),
  KEY `fk_SiteId` (`fkSiteId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=367 ;

--
-- Dumping data for table `table_case`
--

INSERT INTO `table_case` (`caseId`, `caseDateOpened`, `caseTimeOpened`, `caseAnalyst`, `caseDetail`, `caseResolution`, `caseDateClosed`, `caseTimeClosed`, `caseUpdatedBy`, `fkSiteId`, `fkCategoryId`, `fkCaseStatusId`, `fkUserId`) VALUES
(10, '01/19/2016', '11:58:58 AM', 'Bayu', 'forward email rollies_en@arthatel.co.id ke aan@arthatel.co.id serta Upgrade Temporary Email Quota atas nama rollies_en@arthatel.co.id dari 19 Jan 2016 s/d 01 Feb 2016', 'Melakukan sesuai dengan Permintaan pada email yaitu membuat forwarder dan menambah quota email.', '01/19/2016', '12:08:23 PM', 'bayu', 549, 36, 4, 'bayu'),
(11, '01/19/2016', '01:38:04 PM', 'Bayu', 're install notebook', 'Install Application Standard', '01/19/2016', '01:40:31 PM', 'danny', 444, 39, 4, 'danny'),
(12, '01/19/2016', '01:44:12 PM', 'Bayu', 'test', '345', '01/19/2016', '01:45:27 PM', 'danny', 9, 28, 4, 'danny'),
(13, '01/19/2016', '02:10:09 PM', 'Bayu', 'peminjaman projektor untuk ruang meeting CB lt 2', 'peminjaman projektor untuk ruang meeting CB lt 2', '01/19/2016', '02:10:53 PM', 'ivan', 570, 39, 4, 'ivan'),
(14, '01/19/2016', '02:15:36 PM', 'Ivan', 'install software scanner', 'install software abby fine reader untuk aplikasi scan', '01/19/2016', '02:17:06 PM', 'ivan', 569, 28, 4, 'ivan'),
(15, '01/19/2016', '02:59:43 PM', 'Ivan', 'Penggantian tinta Printer HP office jet pro 8100 tinta biru 951XL', 'mengganti tinta Printer HP office jet pro 8100 tinta biru 951XL, dan cartridge lama ditarik kembali untuk kepentingan pendataan', '01/19/2016', '03:00:58 PM', 'ivan', 553, 40, 4, 'ivan'),
(16, '01/20/2016', '10:47:19 AM', 'Bayu', 'Cell pada excel tersembunyi', 'Block dari Cell A hingga cell terakhir lalu klik kanan pada mouse dan pilih sub menu unhide untuk menampilkan cell yang tersembunyi', '01/20/2016', '10:53:21 AM', 'bayu', 575, 44, 4, 'bayu'),
(17, '01/20/2016', '10:48:35 AM', 'Bayu', 'Printer tidak dapat mencetak', 'Error Printer, diperlukan menekan tombol insert paper untuk melanjutkan print', '01/20/2016', '10:53:25 AM', 'bayu', 504, 40, 4, 'bayu'),
(18, '01/20/2016', '10:48:44 AM', 'Ivan', 'hasil print kepotong dibagian akhir halaman', 'settingan paragrap berubah', '01/20/2016', '10:49:39 AM', 'ivan', 567, 44, 4, 'ivan'),
(19, '01/20/2016', '10:55:02 AM', 'Bayu', 'rollback awal pekerjaan untuk NO CRMS 0073/MKT-AF/I/16 karena belum input biaya bulanan', 'Lakukan Rollback ke awal pekerjaan', '01/20/2016', '10:55:22 AM', 'bayu', 10, 49, 4, 'bayu'),
(20, '01/20/2016', '10:56:41 AM', 'Bayu', 'Membuat ID CRMS telkom dan Indosat untuk keperluan Billing serta memasangkan aplikasi pada PC desktop William', 'Membuat ID CRMS dan telkom serta Indosat berdasarkan Email UAF yang ada, lalu melakukan remoting PC Desktop william untuk pemasangan aplikasi tersebut.', '01/20/2016', '10:58:00 AM', 'bayu', 571, 52, 4, 'bayu'),
(21, '01/20/2016', '11:16:34 AM', 'Bayu', 'Pembuatan email dan CRMS atas nama Anwar dari bagian Network', 'Pembuatan Email serta ID CRMS', '01/20/2016', '11:24:22 AM', 'bayu', 443, 52, 4, 'bayu'),
(22, '01/20/2016', '04:31:24 PM', 'Ivan', 'dessy komalasary upgrade ms office', 'ada masalah pada saat uninstall office 2010, error code 1402 : resolve dengan repair regedit (SubInAcl). upgrade to/install office 2013 done', '01/21/2016', '02:19:36 PM', 'bayu', 461, 44, 4, 'ivan'),
(23, '01/20/2016', '05:08:53 PM', 'Ivan', 'CRMS 0435/CC-UPG/XI/15 a.n Iroo Boutique (PT. Premium Metropolis) di delete karena pelanggan tersebut meminta putus layanan', 'Sudah Selesai', '01/20/2016', '05:14:31 PM', 'ivan', 10, 49, 4, 'ivan'),
(24, '01/20/2016', '05:09:33 PM', 'Ivan', 'Crms nomor 0316/CC-UPG/XI/15 dan 0317/CC-UPG/XI/15 a.n PT. Mega Best Propertindo di delete karena pelanggan tersebut meminta putus layanan.', 'Sudah selesai', '01/20/2016', '05:15:41 PM', 'ivan', 10, 49, 4, 'ivan'),
(25, '01/20/2016', '05:12:47 PM', 'Ivan', 'CRMS 0060/KEU-TM/I/16 (Inti  pemutusan, karena CRMS tersebut akan kami buatkan sekalian dengan Trial nya', 'Sudah selesai', '01/20/2016', '05:13:23 PM', 'ivan', 474, 49, 4, 'ivan'),
(26, '01/20/2016', '05:34:07 PM', 'Ivan', 'Crms nomor 0449/CC-UPG/XI/15 dan 0450/CC-UPG/XI/15 a.n Chiropractic/PT. Sehat Utama Abadi di delete karena pelanggan tersebut meminta putus layanan.', 'Sudah selesai.', '01/20/2016', '05:35:35 PM', 'ivan', 10, 49, 4, 'ivan'),
(27, '01/21/2016', '02:59:39 PM', 'Bayu', 'Error pada  email sales_tsm@arthatel.co.id', 'Hasil analisa :\nDisebabkan oleh forwarder yang looping antara sales_tsm@arthatel.co.id to shekti@scbd.net.id dengan shekti@scbd.net.id to sales_tsm@arthatel.co.id (atas permintaan user ke NOC hari ini), \nsehingga terjadi error (bounce back).\n\nWorkaround  ', '01/21/2016', '03:01:42 PM', 'bayu', 537, 55, 4, 'bayu'),
(28, '01/22/2016', '10:58:22 AM', 'Bayu', 'dokumen pada word tidak sesuai dengan print preview yang tersedia', 'ada error pada margin dokumen dan tidak dapat diubah kecuali dimulai lagi dari awal\n\nsolusi : menggunakan dokumen yang sama melalui dokumen yang dipunya oleh Pak Ervan', '01/22/2016', '10:59:28 AM', 'bayu', 499, 44, 4, 'bayu'),
(29, '01/22/2016', '11:01:28 AM', 'Bayu', 'email yang diajukan oleh tim tidak sesuai standard yang ada sehingga perlu membuat ulang UAF dan membuat email sesuai standard yaitu firstname.lastname@arthatel.co.id', 'Membuat email berdasarkan UAF baru atas nama anwar.iskandar@arthatel.co.id yang sebelumnya tidak sesuai standard yaitu anwar.anwar@arthatel.co.id', '01/22/2016', '11:02:40 AM', 'bayu', 443, 52, 4, 'bayu'),
(30, '01/22/2016', '11:03:29 AM', 'Febby Bayu', 'Membuat email atas nama Yeni dan Shekti di domain @arthatel.co.id', 'membuat Email berdasarkan UAF yang diberikan atas nama yeni.carolina@arthatel.co.id dan shekti.dewi@arthatel.co.id. untuk akun shekti.dewi@arthatel.co.id akan di koordinasikan dengan NOC untuk membuat auto responds perihal migrasi dari email shekti@scbd.n', '02/12/2016', '04:14:12 PM', 'bayu', 469, 52, 4, 'bayu'),
(31, '01/22/2016', '03:49:40 PM', 'Ivan', 'Crms nomor 0063/CC-UPG/I/16 dan 0064/CC-UPG/I/16 a.n Bpk Yusman Leo Kartia di delete karena crms upgrade sudah pernah dibuatkan sebelumnya.', 'Sudah selesai', '01/22/2016', '04:13:46 PM', 'danny', 10, 49, 4, 'danny'),
(32, '01/22/2016', '04:14:07 PM', 'Ivan', 'Crms nomor 0681/CC-UPG/XII/2015 a.n Daniel Widjaja di delete karena pelanggan tersebut meminta putus layanan.', 'Sudah selesai', '01/22/2016', '04:14:30 PM', 'danny', 10, 49, 4, 'danny'),
(33, '01/22/2016', '04:15:42 PM', 'Ivan', 'Crms nomor 0669/CC-UPG/XII/15 a.n Masatoshi Sasaki di delete karena pelanggan tersebut meminta putus layanan', 'Sudah Selesai', '01/22/2016', '04:16:04 PM', 'danny', 10, 49, 4, 'danny'),
(34, '01/25/2016', '11:12:25 AM', 'Bayu', 'penambahan dari 300MB menjadi 450MB sampai tanggal 1 Februari 2016, dan nanti nya per tanggal 2 Februari akan kembali normal menjadi 1000MB, sesuai dengan Quota untuk Level Manajer.', 'Standard sesuai quota email tiap kategori, dan hapus forward dari pa rollies ke pa aan', '02/05/2016', '10:22:44 AM', 'bayu', 549, 36, 4, 'bayu'),
(35, '01/25/2016', '11:47:59 AM', 'Bayu', 'Outlook error dengan code 0x8004010F', 'Problem :\nAccount network@scbd.net.id error.\n\nresolusi :\nRemove account network@scbd.net.id lalu setting ulang account network@scbd.net.id dengan memakai file .pst yang sudah ada', '01/25/2016', '11:49:45 AM', 'bayu', 580, 32, 4, 'bayu'),
(36, '01/26/2016', '09:28:34 AM', 'Bayu', 'instalasi koneksi jaringan office dimeja pak ibnu', 'kabel sudah di pakai barrel untuk disambungkan ke pc', '01/26/2016', '10:29:51 AM', 'bayu', 11, 50, 4, 'ivan'),
(37, '01/26/2016', '09:34:14 AM', 'Bayu', 'crms nomor 0102/CC-UPG/I/16 a.n Aida Ghozali (Rafizi Mohd. Ismail) di delete karena kesalahan input source produk', 'sudah selesai', '01/26/2016', '09:35:41 AM', 'ivan', 10, 49, 4, 'ivan'),
(38, '01/26/2016', '09:41:10 AM', 'ivan', 'delete crms 0369 a.n Dhanamakmur Cemerlang', 'Sudah selesi didelete', '01/26/2016', '09:42:17 AM', 'ivan', 553, 49, 4, 'ivan'),
(39, '01/26/2016', '11:04:08 AM', 'Bayu', 'crms nomor 0398/CC-UPG/XI/15 a.n Lois dan 0122/CC-UPG/I/16 a.n Hendrik Tee delete CRMS karena CRMS sebelumnya telah ada', 'Delete CRMS dengan nomor terlampir', '01/26/2016', '11:07:08 AM', 'bayu', 10, 49, 4, 'bayu'),
(40, '01/26/2016', '12:11:59 PM', 'Bayu', 'crms no. 0434 rollback ke awal pekerjaan by santi', 'dilakukan rollback ke awal pekerjaan', '01/26/2016', '12:12:31 PM', 'bayu', 553, 49, 4, 'bayu'),
(41, '01/26/2016', '05:37:04 PM', 'Bayu', 'crms nomor 0784/CC-UPG/XII/15 delete karena putus layanan', 'crms nomor 0784/CC-UPG/XII/15 delete karena putus layanan, dan sudah delete', '01/27/2016', '10:04:07 AM', 'bayu', 10, 49, 4, 'bayu'),
(42, '01/27/2016', '09:05:35 AM', 'ivan', 'pemasangan printer baru', 'printer belum ada tarikan jaringan kabel, user menggunakan sharing printer ke 192.10.11.98 (isfah)', '01/27/2016', '11:22:52 AM', 'ivan', 555, 40, 4, 'ivan'),
(43, '01/27/2016', '10:03:33 AM', 'Bayu', 'Delete CRMS 0086/KEU-TM/I/16 pemilihan produk tidak lengkap – limewi\n', 'Delete CRMS 0086/KEU-TM/I/16 karena pemilihan produk tidak lengkap – limewi', '01/27/2016', '10:04:00 AM', 'bayu', 13, 49, 4, 'bayu'),
(44, '01/27/2016', '10:17:21 AM', 'Bayu', 'PC pak Harso tidak dapat akses internet', 'memasukan ip 192.11.11.96 untuk PC Pak Harso', '01/27/2016', '10:17:39 AM', 'bayu', 507, 51, 4, 'bayu'),
(45, '01/27/2016', '02:13:09 PM', 'Bayu', 'CRMS Dengan nomor 033 atas nama Jaya Konstruksi di rollback ke awal pekerjaan', 'CRMS Dengan nomor 033 atas nama Jaya Konstruksi telah di rollback ke awal pekerjaan', '01/27/2016', '02:13:32 PM', 'bayu', 553, 49, 4, 'bayu'),
(46, '01/27/2016', '04:49:36 PM', 'Bayu', 'delete CRMS: 0759/CC-UPG/XII/15 an. Felix Huray', 'delete CRMS: 0759/CC-UPG/XII/15 an. Felix Huray telah dilakukan penghapusan (batalkan pekerjaan)', '01/27/2016', '04:50:19 PM', 'bayu', 579, 49, 4, 'bayu'),
(47, '01/28/2016', '09:50:39 AM', 'ivan', 'outlook not responding ketika buka email baru', 'data pst hampir mencapai 50gb (49,8GB), membuat pst baru untuk user bagus di local storage', '01/28/2016', '09:53:10 AM', 'ivan', 465, 55, 4, 'ivan'),
(48, '01/28/2016', '09:56:59 AM', 'Bayu', 'email error tidak dapat membuka text', 'Lakukan repair office melalui menu program dan feature dan repair', '01/28/2016', '09:57:47 AM', 'bayu', 488, 55, 4, 'bayu'),
(50, '01/28/2016', '03:13:07 PM', 'Bayu', 'Delete 0097/KEU-TM/I/16 crms sudah ada - Yoppie', 'Sudah Delete 0097/KEU-TM/I/16\n\nKeterangan :\ncrms sudah ada - Yoppie', '01/28/2016', '03:13:49 PM', 'bayu', 577, 49, 4, 'bayu'),
(51, '01/28/2016', '04:51:43 PM', 'Bayu', 'Rollback CRMS 0040 untuk PT. Jaya Real Property (unit Pengelola Graha Raya) salah input data', 'CRMS 0040 untuk PT. Jaya Real Property (unit Pengelola Graha Raya) karena salah input data. telah di rollback\n\n', '01/28/2016', '04:54:43 PM', 'ivan', 543, 49, 4, 'bayu'),
(53, '01/29/2016', '09:40:59 AM', 'ivan', 'salah produk seharusnya kabel pair', 'crms sudah dibatalkan', '01/29/2016', '10:07:53 AM', 'ivan', 12, 49, 4, 'ivan'),
(54, '01/29/2016', '10:07:10 AM', 'Bayu', 'delete CRMS No.0004/RELOC/I/16 a.n Takenaka karena salah input lokasi.', 'CRMS dengan nomor tersebut telah di batalkan pekerjaan (delete)', '01/29/2016', '10:07:53 AM', 'bayu', 537, 49, 4, 'bayu'),
(55, '01/29/2016', '04:27:43 PM', 'Bayu', 'Email Lupa Password', 'Reset password dengan akun ibnu@arthatel.co.id pada cpanel', '01/29/2016', '05:21:17 PM', 'bayu', 11, 55, 4, 'bayu'),
(56, '01/30/2016', '11:02:18 AM', 'danny', 'Reinstall OS & Standard application', 'Pekerjaan selesai', '01/30/2016', '11:45:09 AM', 'danny', 471, 28, 4, 'danny'),
(57, '02/01/2016', '09:03:52 AM', 'danny', 'Generate laporan pemakaian PABX komersil Januari 2016', 'Sudah selesai', '02/01/2016', '03:17:45 PM', 'danny', 458, 44, 4, 'danny'),
(58, '02/01/2016', '11:12:10 AM', 'Danny', 'Install Microsoft Project', 'Sudah dibuatkan CD Installer', '02/02/2016', '05:06:24 PM', 'danny', 520, 44, 4, 'danny'),
(59, '02/01/2016', '01:56:49 PM', 'danny', 'Pemindahan Scanner + Printer dari tempat pak Sumadi ke Ruangan HRD di lt.2', 'Sudah dipindahkan', '02/01/2016', '02:38:04 PM', 'danny', 498, 41, 4, 'danny'),
(60, '02/01/2016', '02:39:45 PM', 'ivan', 'crms nomor 0149/MKT-AF/II/16 a.n Han Il Hyun di rollback karena ada kesalahan input alamat\n\n', 'crms sudah di rollback ke awal', '02/01/2016', '02:42:04 PM', 'ivan', 10, 49, 4, 'ivan'),
(61, '02/01/2016', '02:40:38 PM', 'ivan', 'crms nomor 0560/CC-UPG/XII/15 a.n Mr. Nathan Heckenberg di delete karena pelanggan meminta upgrade ke produk lain', 'crms sudah di delete', '02/01/2016', '02:42:54 PM', 'ivan', 10, 49, 4, 'ivan'),
(62, '02/01/2016', '04:09:53 PM', 'ivan', 'Delete CRMS Relokasi 0006/RELOC/I/16, karena tidak bisa di close dengan nominal harga “0”.', 'sudah selesai', '02/01/2016', '04:11:48 PM', 'danny', 13, 49, 4, 'danny'),
(63, '02/02/2016', '01:16:21 PM', 'Ivan', 'Delete CRMS no. 0137/CC-UPG/II/16, 0138, 0139, 0140, 0142, 0143, 0144, 0145, 0146, 0147, 0130/CC-UPG/I/16, 0131, 0132, 0133. Karena pelanggan tersebut akan di purpose dedicated', 'Sudah selesai', '02/02/2016', '01:31:36 PM', 'danny', 579, 49, 4, 'danny'),
(64, '02/02/2016', '05:04:43 PM', 'Ivan', 'Delete CRMS: 0152/CC-UPG/II/16 a.n Badan Arbitase Pasar Modal Indonesia (BAPMI). Karena dobel CRMS.', 'Sudah Selesai', '02/02/2016', '05:06:35 PM', 'danny', 579, 49, 4, 'danny'),
(65, '02/03/2016', '09:05:46 AM', 'Ivan', 'Setting Outlook', 'Sudah selesai', '02/03/2016', '09:15:31 AM', 'danny', 516, 55, 4, 'danny'),
(66, '02/03/2016', '10:32:55 AM', 'Ivan', 'Delete CRMS: 0501/MKT-AF/VII/15 a.n Indonesia Comnet Plus 10 Mbps karena CRMS aktivasi yang dipakai 0653/MKT-AF/IX/15a', 'Sudah selesai', '02/03/2016', '10:38:07 AM', 'danny', 579, 49, 4, 'danny'),
(67, '02/03/2016', '10:35:56 AM', 'Ivan', 'Delete CRMS 0530/CC-UPG/XII/15 a.n Jaya Kencana dan crms nomor 0591/CC-UPG/XII/15 a.n Eka Kusuma di delete karena layanan kedua pelanggan tersebut akan diisolir.', 'Sudah selesai', '02/03/2016', '10:38:13 AM', 'danny', 10, 49, 4, 'danny'),
(68, '02/03/2016', '05:27:17 PM', 'ivan', 'crms nomor 0153/MKT-AF/II/16 a.n Mitra Cita Rasa  karena salah input nomor cantik ', 'crms sudah di rollback', '02/03/2016', '05:27:53 PM', 'ivan', 575, 49, 4, 'ivan'),
(69, '02/04/2016', '09:49:02 AM', 'ivan', 'aktivasi finger lantai 4 absen 1610 chyntia', 'sudah di daftarkan', '02/04/2016', '09:49:35 AM', 'ivan', 16, 33, 4, 'ivan'),
(70, '02/04/2016', '09:56:20 AM', 'Ivan', 'install ulang komputer tsm lantai 2 at-86', 'Install ulang OS dan Office.', '02/04/2016', '02:38:33 PM', 'danny', 551, 39, 4, 'ivan'),
(72, '02/04/2016', '02:48:10 PM', 'Ivan', 'Delete CRMS 0116/KEU-IS/I/16 karena Data akan di update terlebih dahulu, (info CPM)', 'Sudah selesai', '02/04/2016', '02:50:12 PM', 'danny', 577, 49, 4, 'danny'),
(73, '02/05/2016', '09:46:35 AM', 'ivan', 'tidak bisa print ke hp 8100', 'add ulang printer hp 8100', '02/05/2016', '10:24:07 AM', 'ivan', 445, 40, 4, 'ivan'),
(74, '02/09/2016', '10:09:20 AM', 'Danny Restda', 'Design Summary & Detail Billing Indosat', 'Sudah selesai', '02/09/2016', '02:01:15 PM', 'danny', 458, 48, 4, 'danny'),
(75, '02/09/2016', '10:58:30 AM', 'Hasan Sulivan', 'Rollback CRMS No. 0158/MKT-AF/II/16 a.n BANK ANDARA karena seharusnya tanpa menunggu pembayaran.', 'Sudah selesai', '02/09/2016', '11:01:23 AM', 'ivan', 537, 49, 4, 'ivan'),
(76, '02/09/2016', '11:05:07 AM', 'Ivan', 'Tidak mau menyala', 'Penggantian Power Supply', '02/09/2016', '11:43:23 AM', 'bayu', 582, 39, 4, 'bayu'),
(77, '02/09/2016', '11:18:19 AM', 'Hasan Sulivan', 'PC monitoring helpdesk tidak menyala', 'penggantian dengan tipe pc yg sama(pc stock MIS), tetapi menggunakan harddisk yang lama.', '02/09/2016', '11:21:50 AM', 'ivan', 511, 39, 4, 'ivan'),
(78, '02/09/2016', '01:59:38 PM', 'Hasan Sulivan', 'Delete CRMS 0118/KEU-IS/II/16,  Pelanggan sudah lakukan pembayaran.', 'Sudah selesai', '02/09/2016', '02:00:40 PM', 'ivan', 577, 49, 4, 'ivan'),
(79, '02/09/2016', '02:15:37 PM', 'Febby Bayu', 'Printer error', 'Restart print spooler', '02/09/2016', '02:29:08 PM', 'bayu', 499, 40, 4, 'danny'),
(80, '02/09/2016', '03:09:12 PM', 'Hasan Sulivan', 'setting printer yg ada di purchasing hp laserjet M201n', 'connect melalui IP 192.10.11.98', '02/09/2016', '03:10:04 PM', 'ivan', 538, 40, 4, 'ivan'),
(81, '02/09/2016', '03:11:23 PM', 'Hasan Sulivan', 'setting printer ke UTILITAS canon IX6500', 'connect melalui PC at-116a', '02/09/2016', '03:12:00 PM', 'ivan', 526, 40, 4, 'ivan'),
(82, '02/09/2016', '04:14:21 PM', 'Febby Bayu', 'Notebook tidak menyala setelah sleep', 'hard Restart laptop', '02/09/2016', '04:26:07 PM', 'ivan', 469, 39, 4, 'bayu'),
(83, '02/09/2016', '04:40:45 PM', 'Hasan Sulivan', 'penggantian tinta kuning hp 8100 sales', 'sudah di ganti', '02/09/2016', '04:57:20 PM', 'ivan', 553, 40, 4, 'ivan'),
(84, '02/09/2016', '05:01:53 PM', 'Hasan Sulivan', 'pendelete-an WO dengan nomer Wo 0127/KEU-TM/II/16 a.n EAGLE CAPITAL', 'WO sudah di delete', '02/09/2016', '05:02:14 PM', 'ivan', 458, 49, 4, 'ivan'),
(85, '02/09/2016', '05:32:37 PM', 'Hasan Sulivan', 'crms nomor 0117/CC-UPG/I/6 dan 0120/CC-UPG/I/16 a.n Bapak Hahijary Paul Anton di delete ', 'sudah di delete', '02/09/2016', '05:32:58 PM', 'ivan', 10, 49, 4, 'ivan'),
(86, '02/10/2016', '01:24:12 PM', 'Hasan Sulivan', 'Delete Isolir dengan CRMS : 0139/KEU-IS/II/16', 'Sudah didelete', '02/10/2016', '01:24:36 PM', 'ivan', 500, 49, 4, 'ivan'),
(87, '02/10/2016', '02:00:41 PM', 'Febby Bayu', 'Pembuatan ID domain, email, serta CRMS untuk karyawan baru Eka Perdana', 'Pembuatan ID domain, email, serta CRMS untuk karyawan baru Eka Perdana', '02/12/2016', '04:14:03 PM', 'bayu', 461, 52, 4, 'bayu'),
(88, '02/10/2016', '02:22:46 PM', 'Febby Bayu', 'Crms double Isolir. harus delete', 'Crms double Isolir. harus delete dengan nomor CRMS 0125/KEU-IS/II/16', '02/10/2016', '02:23:40 PM', 'bayu', 577, 49, 4, 'bayu'),
(89, '02/10/2016', '05:08:00 PM', 'Danny Restda', 'Instalasi aplikasi Efiling RCv1.0.12.0, path C:Program FilesEfilingRCv10120', 'Sudah selesai', '02/10/2016', '05:30:53 PM', 'danny', 545, 44, 4, 'danny'),
(90, '02/11/2016', '11:13:22 AM', 'Hasan Sulivan', 'tidah bisa buka file sharing dari pc pak salam', 'restart pc pak salam', '02/11/2016', '11:13:54 AM', 'ivan', 566, 44, 4, 'ivan'),
(92, '02/12/2016', '04:13:38 PM', 'Febby Bayu', 'delete CRMS: 0739/CC-UPG/XII/15 a/n Teddy Jo', 'delete CRMS: 0739/CC-UPG/XII/15 a/n Teddy Jo karena pelanggan telah putus', '02/12/2016', '04:14:19 PM', 'bayu', 579, 49, 4, 'bayu'),
(93, '02/12/2016', '04:14:49 PM', 'Febby Bayu', 'delete CRMS: 0173/CC-UPG/II/16 a/n The Executive Centre', 'delete CRMS: 0173/CC-UPG/II/16 a/n The Executive Centre dikarenakan double CRMS', '02/15/2016', '09:36:47 AM', 'bayu', 575, 49, 4, 'bayu'),
(94, '02/15/2016', '11:13:49 AM', 'Hasan Sulivan', 'delete CRMS: 0011/RELOC/II/16 a/n Indosat TBK', 'sudah di delete', '02/15/2016', '11:14:07 AM', 'ivan', 579, 49, 4, 'ivan'),
(95, '02/15/2016', '11:40:27 AM', 'Febby Bayu', 'Delete CRMS dengan crms nomor 0613/CC-UPG/XII/15 a/n Maya Kartika', 'crms nomor 0613/CC-UPG/XII/15 a/n Maya Kartika telah di delete', '02/15/2016', '03:31:27 PM', 'bayu', 10, 49, 4, 'bayu'),
(96, '02/15/2016', '11:43:32 AM', 'Hasan Sulivan', 'aplikasi CMS monitoring lot 18 lantai 2 tidak bisa muncul', 'login ulang aplikasi CMS monitoring', '02/15/2016', '05:19:28 PM', 'ivan', 583, 42, 4, 'ivan'),
(97, '02/15/2016', '01:51:24 PM', 'Hasan Sulivan', 'reset password admin local', 'reset password admin dan membuat user baru untuk andi rahman', '02/15/2016', '05:19:22 PM', 'ivan', 453, 39, 4, 'ivan'),
(98, '02/15/2016', '03:33:21 PM', 'Febby Bayu', 'membuat user domain, AR, GL, CRMS, Billing Telkom, Serta Billing Indosat untuk karyawan baru Yaitu Zulfa Noor Zakiah serta setting PC nya untuk email billing pada outlook nya', 'lakukan sesuai UAF yang di minta', '02/16/2016', '03:52:38 PM', 'bayu', 569, 52, 4, 'bayu'),
(99, '02/16/2016', '09:32:51 AM', 'Hasan Sulivan', 'crms nomor 0740/CC-UPG/XII/15 a.n Rita Amalia di delete karena crms upgrade sudah di buatkan sebelumnya', 'crms sudah didelete', '02/16/2016', '09:35:35 AM', 'ivan', 10, 49, 4, 'ivan'),
(100, '02/16/2016', '02:17:20 PM', 'Hasan Sulivan', 'DVR tidak dapat di akses', 'DVR AG rusak, penggantian sementara dengan DVR ex senayan', '02/16/2016', '02:18:24 PM', 'ivan', 582, 42, 4, 'ivan'),
(101, '02/16/2016', '02:36:17 PM', 'Febby Bayu', 'delete CRMS: 0175/CC-UPG/II/16 a.n XL Axiata karena sudah dibuatkan CRMS sebelumnya', 'delete CRMS: 0179/CC-UPG/II/16 a.n XL Axiata Karena Double CRMS, dan bukan 0175', '02/16/2016', '03:52:43 PM', 'bayu', 579, 49, 4, 'ivan'),
(102, '02/16/2016', '03:07:57 PM', 'Hasan Sulivan', 'aktifasi finger pintu lantai 4 & 2, dody & marudin network', '', '02/16/2016', '03:34:34 PM', 'bayu', 443, 33, 4, 'ivan'),
(103, '02/17/2016', '09:38:06 AM', 'Hasan Sulivan', 'aplikasi billing run time error', 'change format region date time', '02/17/2016', '09:39:18 AM', 'ivan', 482, 44, 4, 'ivan'),
(104, '02/17/2016', '09:40:02 AM', 'Hasan Sulivan', 'tidak bisa print ke 8100', 'restart print spooler', '02/17/2016', '09:40:29 AM', 'ivan', 10, 40, 4, 'ivan'),
(105, '02/17/2016', '09:53:11 AM', 'Hasan Sulivan', 'tidak bisa print ke hp 8100', 'restart print spooler', '02/17/2016', '09:53:28 AM', 'ivan', 585, 40, 4, 'ivan'),
(106, '02/17/2016', '11:40:13 AM', 'Hasan Sulivan', 'Delete WO dengan nomer CRMS 0150/KEU-IS/II/16 atas nama TITAN PROPERTY', 'WO sudah didelete', '02/17/2016', '11:41:03 AM', 'ivan', 458, 49, 4, 'ivan'),
(107, '02/17/2016', '02:15:48 PM', 'Hasan Sulivan', 'crms nomor 0576/MKT-AF/VIII/15 a.n Mr. James Mortimer di rollback karena ada perubahan pada produk yang akan dipasang', 'sudah di rollback', '02/17/2016', '05:36:23 PM', 'ivan', 10, 49, 4, 'ivan'),
(108, '02/18/2016', '10:54:31 AM', 'Febby Bayu', 'Email telah sent tetapi belum sampai ke tujuan', '', '02/22/2016', '02:37:19 PM', 'ivan', 504, 55, 4, 'bayu'),
(109, '02/18/2016', '11:35:29 AM', 'Hasan Sulivan', 'Crms nomor 0176/MKT-AF/II/16 a.n PT. Hanjaya Mandala Sampurna/Paul Adalia di rollback karena seharusnya pemasangan tidak menunggu pembayaran', 'Sudah Selesai', '02/18/2016', '11:36:56 AM', 'ivan', 10, 49, 4, 'ivan'),
(110, '02/18/2016', '04:11:49 PM', 'Hasan Sulivan', 'Delete CRMS 0091/KEU-IS/I/16 a.n. MS. COLLETTE A HEMMINGS karena pekerjaan tidak jadi di isolir.', 'Sudah Didelete', '02/18/2016', '04:12:14 PM', 'ivan', 513, 49, 4, 'ivan'),
(111, '02/18/2016', '05:12:21 PM', 'Hasan Sulivan', 'Crms nomor 0195/MKT-AF/II/16 a.n Mr. No Seng Han di rollback karena seharusnya pemasangan menunggu pembayaran.', 'Sudah selesai', '02/18/2016', '05:12:46 PM', 'ivan', 10, 49, 4, 'ivan'),
(112, '02/23/2016', '10:34:54 AM', 'Danny Restda', 'Crms nomor 0463/CC-UPG/XI/15 a.n PT. Enzo Jakarta Singapore di delete karena kesalahan input source produk.', 'Selesai', '02/23/2016', '10:36:08 AM', 'danny', 10, 49, 4, 'danny'),
(113, '02/23/2016', '02:08:20 PM', 'Hasan Sulivan', 'setting email hrd di outlook', 'setting email HRD di outlook (atas permintaan bu evaline)', '02/23/2016', '02:09:25 PM', 'ivan', 586, 55, 4, 'ivan'),
(114, '02/24/2016', '10:59:01 AM', 'Hasan Sulivan', 'crms nomor 0191/MKT-AF/II/16 a.n Mr. Iguchi/Ibu Ellen Tedja di delete', 'seharusnya crms nomor 0191/CC-UPG/II/16 bukan 0191/MKT-AT/II/16 - sudah didelete', '02/24/2016', '11:01:04 AM', 'ivan', 10, 49, 4, 'ivan'),
(115, '02/25/2016', '11:02:58 AM', 'Hasan Sulivan', 'delete crms a.n Dharma Putera Wahana (crms 0453)', 'sudah didelete', '02/25/2016', '11:03:25 AM', 'ivan', 553, 49, 4, 'ivan'),
(117, '02/26/2016', '01:56:17 PM', 'Hasan Sulivan', 'Printer dikeluhkan error', 'paper jam dan tarik kembali kertas yang tersangkut', '02/26/2016', '02:07:20 PM', 'bayu', 567, 40, 4, 'bayu'),
(118, '03/01/2016', '09:22:22 AM', 'Hasan Sulivan', 'aktifasi finger lantai 4 dan 2 1510', 'sudah didaftarkan', '03/01/2016', '09:35:31 AM', 'ivan', 587, 33, 4, 'ivan'),
(119, '03/02/2016', '09:32:06 AM', 'Danny Restda', 'Delete CRMS: 0214/MKT-AF/II/16a a.n Nap Info karena akan digantikan CRMS pasang baru LC Ethernet.', 'Selesai', '03/02/2016', '09:43:04 AM', 'danny', 579, 49, 4, 'danny'),
(120, '03/02/2016', '09:34:12 AM', 'Danny Restda', 'Delete CRMS nomor 0193/MKT-AT/II/16 a/n Kencana Gemilang dikarenakan salah input seharusnya Upgrade bukan pasang baru', 'Sudah selesai', '03/02/2016', '09:43:00 AM', 'danny', 459, 49, 4, 'danny'),
(122, '03/04/2016', '03:48:57 PM', 'Hasan Sulivan', 'install laptop baru', '', '03/10/2016', '10:30:49 AM', 'danny', 507, 28, 4, 'ivan'),
(123, '03/08/2016', '02:29:56 PM', 'Hasan Sulivan', 'wo Delete Isolir dan Putus untuk tenant sebagai Berikut  :\n1.	William Gray                                       : 0173/KEU-TM/III/16\n2.	PT. Meranti Maritime                            : 0166/KEU-IS/III/16\n3.	PT. Mitra Lovina Karya Persada            : 01', 'Delete done', '03/08/2016', '02:36:43 PM', 'ivan', 500, 49, 4, 'ivan'),
(124, '03/08/2016', '03:46:51 PM', 'Danny Retsda', 'MS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', 'MS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', '03/10/2016', '08:59:39 AM', 'bayu', 507, 28, 4, 'bayu'),
(125, '03/10/2016', '10:30:24 AM', 'Danny Restda', 'Delete CRMS dengan 0180/KEU-IS/III/16 a.n BORNEO TRANS PASIFIC, pelanggan sudah melunasi semua tagihannya.', 'Sudah selesai', '03/10/2016', '10:30:41 AM', 'danny', 458, 49, 4, 'danny'),
(126, '03/11/2016', '10:40:13 AM', 'Danny Restda', 'Crms nomor 0218/MKT-AF/III/16 a.n HUSKY  ANUGERAH LIMITED di ROLL BACK  karena produk harus dipisah CRMS nya.', 'Sudah selesai', '03/11/2016', '10:40:33 AM', 'danny', 575, 49, 4, 'danny'),
(127, '03/11/2016', '04:18:41 PM', 'Danny Restda', 'Delete CRMS: 0107/CC-UPG/I/16 a/n Sae Teguh Cahyadi karena sudah dibuatkan CRMS barunya: 0190/CC-UPG/II/16', 'Sudah selesai', '03/11/2016', '04:20:00 PM', 'danny', 579, 49, 4, 'danny'),
(128, '03/11/2016', '04:48:17 PM', 'Hasan Sulivan', 'at- 277 - 005/JKT/III/2016 \nMS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', 'at-277 - 005/JKT/III/2016 MS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', '03/11/2016', '04:56:21 PM', 'ivan', 443, 28, 4, 'ivan'),
(129, '03/11/2016', '04:49:04 PM', 'Hasan Sulivan', 'at- 278 - 006/JKT/III/2016 \nMS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', 'at-278 - 006/JKT/III/2016 MS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', '03/11/2016', '04:56:48 PM', 'ivan', 443, 28, 4, 'ivan'),
(130, '03/11/2016', '04:49:37 PM', 'Hasan Sulivan', 'at- 279 - 007/JKT/III/2016 \nMS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', 'at-279 - 007/JKT/III/2016 MS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', '03/11/2016', '04:57:08 PM', 'ivan', 443, 28, 4, 'ivan'),
(131, '03/11/2016', '04:50:19 PM', 'Hasan Sulivan', 'at- 280 - 008/JKT/III/2016 \nMS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', 'at-280 - 008/JKT/III/2016 MS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', '03/11/2016', '04:57:30 PM', 'ivan', 443, 28, 4, 'ivan'),
(132, '03/11/2016', '04:50:52 PM', 'Hasan Sulivan', 'at- 281 - 009/JKT/III/2016 \nMS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', 'at-281 - 009/JKT/III/2016 MS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', '03/11/2016', '04:57:51 PM', 'ivan', 443, 28, 4, 'ivan'),
(133, '03/11/2016', '04:51:33 PM', 'Hasan Sulivan', 'at- 282 - 010/JKT/III/2016 \nMS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', 'at-282 - 010/JKT/III/2016 MS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', '03/11/2016', '04:58:10 PM', 'ivan', 443, 28, 4, 'ivan'),
(134, '03/11/2016', '04:52:34 PM', 'Hasan Sulivan', 'at- 283 - 011/JKT/III/2016 \nMS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', 'at-283 - 011/JKT/III/2016 MS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', '03/11/2016', '04:58:39 PM', 'ivan', 443, 28, 4, 'ivan'),
(135, '03/11/2016', '04:53:06 PM', 'Hasan Sulivan', 'at- 284 - 012/JKT/III/2016 \nMS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', 'at-284 - 012/JKT/III/2016 MS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', '03/11/2016', '04:59:00 PM', 'ivan', 443, 28, 4, 'ivan'),
(136, '03/11/2016', '04:59:37 PM', 'Hasan Sulivan', 'at-285 - 001/JKT/III/2016 \nMS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', 'at-285 - 001/JKT/III/2016 MS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', '03/14/2016', '05:11:16 PM', 'ivan', 443, 28, 4, 'ivan'),
(137, '03/11/2016', '05:00:14 PM', 'Hasan Sulivan', 'at-286 - 002/JKT/III/2016 \nMS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', 'at-286 - 002/JKT/III/2016 MS Office PK : 6NT4R-8R8XQ-9VTYH-46C3V-XXXXX', '03/14/2016', '05:11:21 PM', 'ivan', 443, 28, 4, 'ivan'),
(138, '03/11/2016', '05:36:50 PM', 'Danny Restda', 'Delete CRMS Isolir :  0182/KEU-IS/III/16, 0184/KEU-IS/III/16 karena pelanggan sudah melunasi tunggakan ', 'Sudah selesai', '03/11/2016', '05:37:11 PM', 'danny', 458, 49, 4, 'danny'),
(139, '03/15/2016', '01:23:09 PM', 'Febby Bayu', 'Akses masuk pintu Lantai 2 1161', 'aktivasi finger akses pintu lantai 2 1161 - irwan', '03/15/2016', '01:27:13 PM', 'bayu', 514, 33, 4, 'bayu'),
(140, '03/16/2016', '02:12:30 PM', 'Hasan Sulivan', 'CRMS No. 0255/MKT-AF/III/16 a.n ARTHA GRAHA YUSTISIA karena ada revisi bandwidth layanan internet.', 'Sudah selesai.', '03/16/2016', '02:15:38 PM', 'ivan', 537, 49, 4, 'ivan'),
(141, '03/17/2016', '09:33:10 AM', 'Hasan Sulivan', 'Delete CRMS No. 0223/CC-UPG/III/16 a.n EMIRATES.\nKarena double produk\n', 'Sudah selesai', '03/17/2016', '09:33:25 AM', 'ivan', 575, 49, 4, 'ivan'),
(142, '03/18/2016', '10:50:49 AM', 'Hasan Sulivan', 'crms nomor 0162/MKT-AF/II/16 a.n Bank Artha Graha di rollback karena ada kesalahan input produk', 'sudah dirollback', '03/18/2016', '10:51:13 AM', 'ivan', 10, 49, 4, 'ivan'),
(143, '03/29/2016', '10:14:25 AM', 'Febby Bayu', 'Create auto Response  for medical leave up to 4th of april, then re chek again if the auto stop working', 'Create auto Response for medical leave up to 4th of april, then re chek again if the auto stop working', '05/09/2016', '09:43:50 AM', 'bayu', 510, 55, 4, 'bayu'),
(144, '03/31/2016', '03:20:03 PM', 'Sumarno', 'blue screen', 'restart pc desktop', '03/31/2016', '03:21:50 PM', 'marno', 563, 39, 4, 'marno'),
(145, '04/01/2016', '02:02:35 PM', 'Sumarno', 'tidak bisa konek ke data bersama team network', 'ganti settingan DNS', '04/01/2016', '02:04:09 PM', 'marno', 566, 39, 4, 'marno'),
(146, '04/06/2016', '05:26:26 PM', 'Sumarno', 'instal ulang pc william & billing ', 'instal ulang karena os eror', '04/06/2016', '05:27:33 PM', 'marno', 571, 43, 4, 'marno'),
(147, '04/11/2016', '05:23:30 PM', 'Sumarno', 'paperjam ', 'mengambil kertas yang paperjam di printer', '04/11/2016', '05:24:51 PM', 'marno', 567, 40, 4, 'marno'),
(148, '04/12/2016', '09:55:17 AM', 'Hasan Sulivan', 'crms nomor 0097/CC-UPG/I/16 a.n Mr. Mintai Lee di delete', 'karena crms upgrade sudah dibuatkan sebelumnya', '04/12/2016', '10:22:38 AM', 'ivan', 10, 49, 4, 'ivan'),
(149, '04/12/2016', '02:45:22 PM', 'Sumarno', 'tidak bisa ngeprint', 'cabut pasang kabel power print server', '04/12/2016', '02:51:46 PM', 'marno', 576, 40, 4, 'marno'),
(150, '04/12/2016', '02:49:48 PM', 'Sumarno', 'blue screen ', 'cabut pasang ram,restart pc desktop', '04/12/2016', '02:51:55 PM', 'marno', 516, 39, 4, 'marno'),
(151, '04/12/2016', '02:53:41 PM', 'Sumarno', 'penggantian tinta sales warna hitam 950xl', 'ganti tinta dengan yang baru', '04/12/2016', '02:54:11 PM', 'marno', 553, 40, 4, 'marno'),
(152, '04/12/2016', '02:56:44 PM', 'Sumarno', 'penggantian tinta printer legal', 'ganti tinta yang baru', '04/12/2016', '02:57:25 PM', 'marno', 496, 40, 4, 'marno'),
(153, '04/13/2016', '02:01:58 PM', 'Sumarno', 'installasi pc billing untuk mengganti pc desktop yang lama', 'installasi pc desktop ', '04/13/2016', '02:03:05 PM', 'marno', 441, 39, 4, 'marno'),
(154, '04/13/2016', '02:05:06 PM', 'Sumarno', 'penggantian tinta untuk utilitas', 'ganti tinta yang lama dengan tinta yang baru', '04/13/2016', '02:05:59 PM', 'marno', 583, 40, 4, 'marno'),
(155, '04/14/2016', '02:51:03 PM', 'Sumarno', 'printer belum ke instal pada pc desktop', 'add device printer', '04/14/2016', '02:51:53 PM', 'marno', 557, 40, 4, 'marno'),
(156, '04/15/2016', '10:14:04 AM', 'Sumarno', 'pc tidak masuk ke windows ', 'penggantian hardisk karena tidak mau masuk ke windows dan install ulang pc desktop', '04/15/2016', '10:15:42 AM', 'marno', 440, 39, 4, 'marno'),
(157, '04/15/2016', '10:24:25 AM', 'Hasan Sulivan', 'delete CRMS No.0258/MKT-AT/IV/16 a.n PPPSRS The Capital Residences', 'crms sudah didelete', '04/15/2016', '10:28:33 AM', 'ivan', 537, 49, 4, 'ivan'),
(158, '04/18/2016', '10:45:45 AM', 'Hasan Sulivan', 'rollback CRMS: 0365/MKT-AF/IV/16 a.n PT. Sakalaguna Semesta', 'dirollback karena lokasi pasang baru akan di edit', '04/18/2016', '10:47:24 AM', 'ivan', 579, 49, 4, 'ivan'),
(159, '04/18/2016', '01:24:55 PM', 'Hasan Sulivan', 'pemindahan pc scanner di ruang CC/HD ', 'pc dipindah ke samping meja novi alamsyah', '04/18/2016', '03:35:03 PM', 'ivan', 557, 39, 4, 'ivan'),
(160, '04/19/2016', '03:54:12 PM', 'Hasan Sulivan', 'delete crms 0325/KEU-IS/IV/16', 'crms 0325/KEU-IS/IV/16 Pelanggan Bayar Jan 2016, Feb 2016, dan Maret 2016 sudah didelete\n', '04/19/2016', '03:55:01 PM', 'ivan', 458, 49, 4, 'ivan'),
(161, '04/19/2016', '03:56:29 PM', 'Hasan Sulivan', 'aktifasi finger pintu lantai 2 untuk sidik 1138', 'sudah didaftarkan', '04/19/2016', '03:56:50 PM', 'ivan', 583, 32, 4, 'ivan'),
(162, '04/26/2016', '02:08:18 PM', 'Sumarno', 'penggantian tinta printer canon 6500 warna kuning', 'ganti dengan tinta printer yang baru', '04/26/2016', '02:08:55 PM', 'marno', 488, 40, 4, 'marno'),
(163, '04/26/2016', '02:12:54 PM', 'Sumarno', 'pc tidak bisa masuk ke tampilan windows', 'cabut pasang memory terus di restart pc nya', '04/26/2016', '02:14:14 PM', 'marno', 474, 39, 4, 'marno'),
(164, '04/27/2016', '04:33:39 PM', 'Hasan Sulivan', 'Delete WO putus 0348 , dan akan di buat ulang untuk pemutusan tenant tersebut.\nDi karenakan Hosting tidak diputus namun terlanjur di ceklist juga\n', 'CRMS WO sudah didelete', '04/27/2016', '04:34:04 PM', 'ivan', 480, 49, 4, 'ivan'),
(165, '05/02/2016', '02:03:37 PM', 'Danny Restda', 'Rollback CRMS PT. Nusantara Sejahtera Raya nomor : 0089, 0106, 0126, 0138, 0142, 0108, 0167, 0191. Karena pelanggan cancel berlangganan, outlet milik Lippogroup yang akan dibuat Cinemaxx.', 'Sudah selesai', '05/02/2016', '03:08:18 PM', 'danny', 559, 49, 4, 'danny'),
(166, '05/04/2016', '11:54:29 AM', 'Hasan Sulivan', 'perpindahan PC', 'PC dipindahkan dari lobby cb ke lot 18 lantai 2 ruang CC & HD disaping meja novi alamsyah', '05/04/2016', '11:55:45 AM', 'ivan', 526, 39, 4, 'ivan'),
(167, '05/11/2016', '04:10:15 PM', 'Hasan Sulivan', 'delete CRMS putus dengan No. 0398/KEU-TM/V/16 a/n PT. Kresna Securities.\nKarena ada salah satu produck yang tidak harus di putus', 'crms sudah ddelete', '05/11/2016', '04:10:38 PM', 'ivan', 474, 49, 4, 'ivan'),
(168, '05/12/2016', '09:32:14 AM', 'Hasan Sulivan', 'delete CRMS 0359/KEU-IS/V/16', 'crms sudah didelete', '05/12/2016', '09:32:38 AM', 'ivan', 571, 49, 4, 'ivan'),
(169, '05/12/2016', '09:36:48 AM', 'Sumarno', 'unceklist automatic reconec wifi', 'unceklist reconect wifi', '05/12/2016', '10:19:11 AM', 'marno', 445, 39, 4, 'marno'),
(170, '05/12/2016', '10:17:57 AM', 'Sumarno', 'perpindahan pc helpdesk dan scaner ke meja sebelah ', 'perpindahan pc helpdesk dan scaner', '05/12/2016', '10:19:04 AM', 'marno', 531, 39, 4, 'marno'),
(171, '05/16/2016', '04:27:39 PM', 'Sumarno', 'tidak bisa ngeprint', 'seting ulang device printer', '05/16/2016', '04:29:44 PM', 'marno', 9, 40, 4, 'marno'),
(172, '05/16/2016', '04:31:12 PM', 'Sumarno', 'pengantian pemasangan  tinta colour & black', 'ganti tinta lama dengan yang baru', '05/16/2016', '04:32:20 PM', 'marno', 527, 40, 4, 'marno'),
(173, '05/16/2016', '05:28:47 PM', 'Sumarno', 'penggantian tinta printer 810 & 811 ', 'pengantian tinta 810 & 811 yang baru', '05/16/2016', '05:30:32 PM', 'marno', 563, 40, 4, 'marno'),
(174, '05/17/2016', '09:15:07 AM', 'Danny Restda', '0390/KEU-TM/V/16 an. Bakmi Gajah Mada', 'Selesai', '05/17/2016', '09:16:18 AM', 'danny', 495, 49, 4, 'danny'),
(175, '05/17/2016', '11:14:12 AM', 'Hasan Sulivan', 'ingin ngeprinter diprinter Network (wiwid)', 'add printer melalui PC wiwit(192.11.11.50 printer hp 1510)', '05/17/2016', '11:22:37 AM', 'ivan', 505, 40, 4, 'ivan'),
(176, '05/17/2016', '11:14:45 AM', 'Hasan Sulivan', 'add printer Network', 'add printer di PC anwar(192.11.11.104 xerox PE220) dan PC wiwit(192.11.11.50 HP 1510)', '05/17/2016', '11:22:24 AM', 'ivan', 476, 40, 4, 'ivan'),
(177, '05/19/2016', '02:29:27 PM', 'Hasan Sulivan', 'support pak junus', 'restart app gmail di ipad', '05/19/2016', '04:09:34 PM', 'ivan', 526, 39, 4, 'ivan'),
(178, '05/19/2016', '05:30:01 PM', 'Sumarno', 'tidak bisa ngeprint', 'add ulang device printer, ', '05/19/2016', '05:32:09 PM', 'marno', 543, 40, 4, 'marno'),
(179, '05/20/2016', '09:07:01 AM', 'Sumarno', 'printer error', 'printer paperjam ', '05/20/2016', '09:32:22 AM', 'marno', 567, 40, 4, 'ivan'),
(180, '05/20/2016', '09:35:05 AM', 'Sumarno', 'request ip untuk laptop', 'setting ip 192.11.11.115 ', '05/20/2016', '09:36:25 AM', 'marno', 506, 50, 4, 'marno'),
(181, '05/20/2016', '03:03:54 PM', 'Sumarno', 'tidak bisa ngeprint', 'add ulang device printer', '05/20/2016', '03:09:49 PM', 'marno', 504, 40, 4, 'marno'),
(182, '05/23/2016', '01:49:22 PM', 'Hasan Sulivan', 'setting email di Blackberry', 'setup email arthatel.co.id dan gmail.com', '05/24/2016', '11:51:00 AM', 'ivan', 479, 55, 4, 'ivan'),
(183, '05/25/2016', '09:29:29 AM', 'Hasan Sulivan', 'koneksi keserver lambat', 'penggantian ip 192.11.11.253 ke 192.10.11.160', '05/25/2016', '10:20:47 AM', 'ivan', 549, 51, 4, 'ivan'),
(184, '05/27/2016', '09:23:45 AM', 'Danny Restda', 'Delete CRMS 0435/KEU-IS/V/16, Pelanggan sudah melakukan pembayarannya pada hari itu juga tanggal 25 Mei 2016.', 'Selesai', '05/27/2016', '09:24:41 AM', 'danny', 458, 49, 4, 'danny'),
(185, '05/27/2016', '01:59:14 PM', 'Danny Restda', 'CRMS nomor 0040/RELOC/V/16 a.n PT. Circlecom Nusantara Indonesia di delete karena ada revisi produk yang akan direlokasi', 'Selesai', '05/27/2016', '02:00:13 PM', 'danny', 10, 49, 4, 'danny'),
(186, '05/30/2016', '02:01:51 PM', 'Danny Restda', 'Delete CRMS 0394/KEU-IS/V/16, Pelanggan sudah melakukan pembayarannya tanggal 26 Mei 2016.', 'Selesai.', '05/30/2016', '02:07:43 PM', 'danny', 500, 49, 4, 'danny'),
(187, '05/31/2016', '04:34:29 PM', 'Danny Restda', 'Delete CRMS 0441/KEU-IS/V/16, 0440/KEU-IS/V/16. Pelanggan sudah bayar.', 'Sudah Selesai', '05/31/2016', '04:37:12 PM', 'danny', 588, 49, 4, 'danny'),
(188, '05/31/2016', '04:36:51 PM', 'Danny Restda', 'CRMS Putus 0485/KEU-TM/V/16 dan Buka Isolir 0320/KEU-AC/V/16 di delete, karena salah penginputan produck di CRMS', 'Sudah Selesai', '05/31/2016', '05:01:28 PM', 'danny', 474, 49, 4, 'danny'),
(189, '05/31/2016', '05:02:44 PM', 'Danny Restda', 'Delete CRMS nomor 0283/CC-UPG/V/16  a.n YKK Zipper, pembatalan pelanggan.', 'Sudah selesai', '05/31/2016', '05:03:52 PM', 'danny', 553, 49, 4, 'danny'),
(190, '06/01/2016', '03:21:49 PM', 'Danny Restda', 'Delete CRMS 0442/KEU-IS/VI-16, Karena salah buat CRMS', 'Sudah selesai', '06/01/2016', '03:22:08 PM', 'danny', 588, 49, 4, 'danny'),
(191, '06/01/2016', '04:04:47 PM', 'Sumarno', 'pc desktop di equity layar blank', 'penggantian pc untuk mdf equity', '06/01/2016', '04:05:56 PM', 'marno', 589, 39, 4, 'marno'),
(192, '06/02/2016', '04:07:03 PM', 'Hasan Sulivan', 'penambahan produk telkom direct', 'porduk sudah ditambahkan dengan ID product : 27881,27882,27883', '06/02/2016', '04:08:31 PM', 'ivan', 465, 44, 4, 'ivan'),
(193, '06/07/2016', '08:42:15 AM', 'Danny Restda', 'Delete CRMS 0475/KEU-IS/VI/16, pelanggan sudah bayar.', 'Sudah selesai.', '06/07/2016', '08:50:00 AM', 'danny', 571, 49, 4, 'danny'),
(194, '06/07/2016', '08:42:52 AM', 'Danny Restda', 'Delete CRMS 0469/KEU-IS/VI/16, pelanggan sudah bayar.', 'Sudah selesai.', '06/07/2016', '08:50:08 AM', 'danny', 571, 49, 4, 'danny'),
(195, '06/07/2016', '01:11:45 PM', 'Hasan Sulivan', 'crms nomor 0512/MKT-AF/VI/16 a.n PT. Saka Mas Tunggal di rollback karena ada revisi produk', 'sudah dirollback ke awal pekerjaan', '06/07/2016', '01:12:34 PM', 'ivan', 10, 49, 4, 'ivan'),
(196, '06/08/2016', '09:07:09 AM', 'Febby Bayu', 'Membuat Forward Email dari shekti.dewi@arthatel.co.id menuju sales_tsm@arthatel.co.id', 'Membuat Forward Email dari shekti.dewi@arthatel.co.id menuju sales_tsm@arthatel.co.id pada Zimbra Admin melalui fitur forwarding pada akun yang ada', '06/08/2016', '09:07:40 AM', 'bayu', 10, 36, 4, 'bayu'),
(197, '06/09/2016', '02:01:33 PM', 'Danny Restda', 'Delete CRMS 0478/KEU-TM/V/16, pelanggan masih ingin berlanjut berlangganan.', 'Sudah selesai', '06/09/2016', '02:02:35 PM', 'danny', 584, 49, 4, 'danny'),
(198, '06/09/2016', '02:18:50 PM', 'Hasan Sulivan', 'aplikasi tidak support OS 64bit', 'install ulang Windows 32 bit', '06/09/2016', '02:19:58 PM', 'ivan', 477, 43, 4, 'ivan'),
(199, '06/10/2016', '08:26:18 AM', 'Hasan Sulivan', 'desktop tidak muncul', 'menambahkan server pada file host', '06/10/2016', '08:52:08 AM', 'ivan', 567, 39, 4, 'ivan'),
(200, '06/10/2016', '08:26:39 AM', 'Hasan Sulivan', 'desktop tidak muncul', 'menambahkan server pada file host', '06/10/2016', '08:52:05 AM', 'ivan', 573, 39, 4, 'ivan'),
(201, '06/10/2016', '08:27:00 AM', 'Hasan Sulivan', 'desktop tidak muncul', 'menambahkan server pada file host', '06/10/2016', '08:52:01 AM', 'ivan', 15, 39, 4, 'ivan'),
(202, '06/10/2016', '08:52:44 AM', 'Hasan Sulivan', 'desktop tidak muncul', 'menambahkan server pada file host', '06/10/2016', '08:53:20 AM', 'ivan', 557, 39, 4, 'ivan'),
(203, '06/10/2016', '09:45:27 AM', 'Hasan Sulivan', 'monitor blank', 'VGA external rusak switch ke VGA onboard', '06/10/2016', '09:49:00 AM', 'ivan', 561, 46, 4, 'ivan'),
(204, '06/10/2016', '09:45:56 AM', 'Hasan Sulivan', 'desktop tidak muncul', 'menambahkan server pada file host', '06/10/2016', '09:49:03 AM', 'ivan', 498, 39, 4, 'ivan'),
(205, '06/10/2016', '09:46:33 AM', 'Hasan Sulivan', 'desktop tidak muncul', 'menambahkan server pada file host', '06/10/2016', '09:49:05 AM', 'ivan', 465, 39, 4, 'ivan'),
(206, '06/10/2016', '09:47:08 AM', 'Hasan Sulivan', 'desktop tidak muncul', 'menambahkan server pada file host', '06/10/2016', '09:49:07 AM', 'ivan', 495, 39, 4, 'ivan'),
(207, '06/10/2016', '09:48:44 AM', 'Hasan Sulivan', 'desktop tidak muncul', 'menambahkan server pada file host', '06/10/2016', '09:49:10 AM', 'ivan', 476, 39, 4, 'ivan'),
(208, '06/13/2016', '10:36:19 AM', 'Hasan Sulivan', 'crms nomor 0296/CC-UPG/VI/16 a.n PT. Krakatau Bandar Samudera di delete karena double crms dengan nomor 0297', 'crms sudah didelete', '06/13/2016', '10:36:38 AM', 'ivan', 10, 49, 4, 'ivan'),
(209, '06/16/2016', '03:15:10 PM', 'Danny Restda', 'Delete crms nomor 0476/CC-UPG/XI/15 a.n Astrid karena double crms dengan nomor 0519/CC-UPG/XII/15', 'Sudah selesai', '06/16/2016', '03:16:04 PM', 'danny', 10, 49, 4, 'danny'),
(210, '06/21/2016', '08:21:10 AM', 'Hasan Sulivan', 'monitoring SNMP tidak mengirim report, ip 172.10.10.xxx no internet connection', 'cek cat 215 port 14 15 oleh oki', '06/23/2016', '08:58:30 AM', 'ivan', 583, 51, 4, 'ivan'),
(211, '06/21/2016', '11:37:29 AM', 'Hasan Sulivan', 'tidak bisa masuk windows..', 'install ulang', '06/21/2016', '01:24:26 PM', 'ivan', 499, 43, 4, 'ivan'),
(212, '06/21/2016', '01:18:46 PM', 'Danny Restda', 'Rollback 0539/MKT-AF/VI/16 a.n PT. Dhanamakmur Cemerlang karena ada revisi alokasi nomor.', 'Sudah Selesai', '06/21/2016', '01:20:42 PM', 'danny', 10, 49, 4, 'danny'),
(213, '06/21/2016', '03:13:51 PM', 'Danny Restda', 'Delete CRMS 0499/KEU-TM/VI/16, dan 0500/KEU-TM/VI/16, karena Pelanggan melunasi tunggakannya', 'Sudah selesai', '06/21/2016', '03:15:26 PM', 'danny', 458, 49, 4, 'danny'),
(214, '06/22/2016', '03:09:04 PM', 'Danny Restda', 'Rollback CRMS 0472/MKT-AT/VI/16  karena ada kesalahan product yang seharusnya TRIAL disana diinput internet Corporate, 0473/MKT-AT/VI/16 karena ada kesalahan nilai tagihan.\n', 'Selesai', '06/22/2016', '03:12:51 PM', 'danny', 590, 49, 4, 'danny'),
(215, '06/23/2016', '01:49:30 PM', 'Febby Bayu', 'Tidak Dapat tersambung ke internet', 'Ganti Gateway dari 221 ke 10, karena 221 sedang ada miss konfig', '06/23/2016', '01:50:00 PM', 'bayu', 574, 43, 4, 'bayu'),
(216, '06/23/2016', '01:50:32 PM', 'Febby Bayu', 'PC Terasa lama dalam proses', 'adanya proses yang menghambat dalam sistem, close dan mulai ulang pc', '06/23/2016', '01:51:21 PM', 'bayu', 476, 44, 4, 'bayu'),
(217, '06/24/2016', '08:44:25 AM', 'Hasan Sulivan', 'crms nomor 0307/MKT-AF/IV/16 a.n MOIE di delete karena kesalahan id pelanggan', 'sudah didelete', '06/24/2016', '08:46:12 AM', 'ivan', 10, 49, 4, 'ivan'),
(218, '06/28/2016', '09:10:32 AM', 'Febby Bayu', 'Look back Email dari akun lely adhakusuma', 'Aktifkan PC ibu lely dan beri akses melihat email', '06/28/2016', '09:11:02 AM', 'bayu', 545, 55, 4, 'bayu'),
(219, '07/12/2016', '11:20:25 AM', 'Hasan Sulivan', 'daftar finger pintu lantai 4', 'no FP 1201', '07/12/2016', '11:22:21 AM', 'ivan', 573, 33, 4, 'ivan'),
(220, '07/13/2016', '02:56:19 PM', 'Danny Restda', 'Delete CRMS 0541/KEU-IS/VII/16, karena tenant mau melakukan pembayaran.', 'Selesai', '07/13/2016', '02:57:50 PM', 'danny', 571, 49, 4, 'danny'),
(222, '07/18/2016', '11:38:52 AM', 'Sumarno', 'paperjam printer sales fuji xerox', 'cabut kertas yang paperjam\n', '07/18/2016', '11:40:12 AM', 'marno', 553, 40, 4, 'marno'),
(223, '07/18/2016', '03:14:53 PM', 'Sumarno', 'deskstop blank', 'tampilan desktop tidak muncul,solusi nya ganti IP ke segment 10', '07/18/2016', '03:28:34 PM', 'marno', 494, 39, 4, 'marno'),
(224, '07/25/2016', '11:38:21 AM', 'Sumarno', 'instalasi printer ', 'setting default printer', '08/15/2016', '11:41:32 AM', 'marno', 486, 39, 4, 'marno'),
(225, '07/29/2016', '10:31:25 AM', 'Danny Restda', 'CRMS nomor 0630 & 0631/MKT-AF/VII/16 a.n Bank Artha Graha di rollback karena pemasangan seharusnya tanpa menunggu pembayaran.', 'Sudah selesai', '07/29/2016', '10:31:45 AM', 'danny', 10, 49, 4, 'danny'),
(226, '08/02/2016', '11:01:25 AM', 'Danny Restda', 'crms nomor 0635/MKT-AF/VII/16 a.n PT. Sentra Surya Ekajaya di rollback karena ada revisi pada produk TV Cable', 'Sudah selesai', '08/02/2016', '11:01:44 AM', 'danny', 10, 49, 4, 'danny'),
(227, '08/02/2016', '02:04:59 PM', 'Danny Restda', 'Delete 0590 / KEU-IS / VIII /16, karena Salah ID CRMS', 'Sudah selesai', '08/02/2016', '02:05:42 PM', 'danny', 500, 49, 4, 'danny'),
(228, '08/04/2016', '12:57:50 PM', 'Danny Restda', 'CRMS 0338/CC-UPG/VIII/16 a.n PT. Trimegah Securities di dalate karena kesalahan fitur', 'Sudah selesai', '08/04/2016', '12:58:03 PM', 'danny', 542, 49, 4, 'danny'),
(229, '08/08/2016', '01:28:26 PM', 'Danny Restda', 'rollback crms relokasi 0061 PT Jaya Real Propery, belum input biaya relokasinya', 'Sudah selesai', '08/08/2016', '01:28:45 PM', 'danny', 553, 49, 4, 'danny'),
(230, '08/09/2016', '10:19:41 AM', 'Danny Restda', 'Rollback WO CRMS: 0307/MKT-AT/VII/15 a/n: Yudi Wirawan karena salah tanggal pemutusan disisi NOC', 'Sudah selesai', '08/09/2016', '10:22:11 AM', 'danny', 557, 49, 4, 'danny'),
(231, '08/09/2016', '10:25:01 AM', 'Danny Restda', 'Delete CRMS  :  0683/KEU-TM/VIII/16, Salah ambil produk', 'Sudah selesai', '08/09/2016', '10:25:16 AM', 'danny', 13, 49, 4, 'danny'),
(232, '08/09/2016', '02:31:56 PM', 'Danny Restda', 'Delete crms 0342/CC-UPG/VIII/16, karena salah input kecepatan akses.', 'Sudah selesai.', '08/09/2016', '02:32:31 PM', 'danny', 553, 49, 4, 'danny'),
(233, '08/10/2016', '09:37:13 AM', 'Danny Restda', 'Delete CRMS 0632/KEU-IS/VIII/16, karena pelanggan melunasi tunggakannya.', 'Sudah selesai', '08/10/2016', '09:38:26 AM', 'danny', 458, 49, 4, 'danny'),
(234, '08/11/2016', '02:45:23 PM', 'Danny Restda', 'Delete CRMS 0699/KEU-TM/VIII/16, dikarenakan adanya kesalahan dalam pengambilan produk untuk diputus.', 'Sudah selesai.', '08/11/2016', '02:46:25 PM', 'danny', 588, 49, 4, 'danny'),
(235, '08/11/2016', '03:50:35 PM', 'Danny Restda', 'CRMS 0347/CC-UPG/VIII/16 a.n Jhonlin Group didelete karena kesalahan produk.', 'Sudah selesai.', '08/11/2016', '03:51:32 PM', 'danny', 542, 49, 4, 'danny'),
(236, '08/12/2016', '04:05:49 PM', 'Danny Restda', 'Rollback CRMS 0502-0505 PT Dayacipta  Kemasindo, seharusnya tidak menunggu pembayaran.', 'Sudah selesai.', '08/12/2016', '04:19:22 PM', 'danny', 553, 49, 4, 'danny'),
(237, '08/12/2016', '04:19:59 PM', 'Danny Restda', 'Rollback WO CRMS: 0422/MKT-AT/X/15 a/n: PT. Pertamina Trans Kontinental karena salah kesalahan closed CRMS', 'Sudah selesai', '08/12/2016', '04:20:23 PM', 'danny', 557, 49, 4, 'danny'),
(238, '08/15/2016', '11:39:11 AM', 'Sumarno', 'tidak bisa ngeprint', 'seting default printer\n', '08/15/2016', '11:41:17 AM', 'marno', 486, 40, 4, 'marno'),
(239, '08/15/2016', '11:42:24 AM', 'Sumarno', 'tidak bisa ngeprint', 'seting default printer', '08/15/2016', '11:43:04 AM', 'marno', 570, 40, 4, 'marno'),
(240, '08/15/2016', '12:54:02 PM', 'Febby Bayu', 'Reset passwrd Billing telkom karena salah tiga kali', 'reset melalui app billing telkom', '08/18/2016', '12:30:09 PM', 'danny', 465, 44, 4, 'bayu'),
(241, '08/16/2016', '09:48:33 AM', 'Danny Restda', 'Delete 0624/KEU-IS/VIII/16, Belum dijalankan pengisolirannya (karena Hold)', 'Sudah selesai.', '08/16/2016', '09:49:21 AM', 'danny', 458, 49, 4, 'danny'),
(242, '08/16/2016', '03:26:50 PM', 'Sumarno', 'install ulang pc ibu yeni (sales)', 'instal ulang pc (sukses)', '08/16/2016', '03:28:04 PM', 'marno', 575, 39, 4, 'marno'),
(243, '08/18/2016', '12:28:30 PM', 'Danny Restda', 'Delete 0675/KEU-IS/VIII/16, karena sudah dibayar.', 'Sudah selesai.', '08/18/2016', '12:29:10 PM', 'danny', 500, 49, 4, 'danny'),
(244, '08/23/2016', '11:11:46 AM', 'Danny Restda', 'Rollback ke awal 0516/MKT-AT/VIII/16, revisi subjek.', 'Sudah selesai', '08/23/2016', '02:30:54 PM', 'danny', 553, 49, 4, 'danny'),
(245, '08/23/2016', '02:32:49 PM', 'Danny Restda', 'Delete CRMS 0370, 0371, 0372, 0373, 0374, 0375, 0376, 0377, 0378/CC-UPG/VII/16. Karena revisi fitur.', 'Sudah selesai', '08/23/2016', '02:36:32 PM', 'danny', 559, 49, 4, 'danny'),
(246, '08/23/2016', '02:37:23 PM', 'Danny Restda', 'Crms nomor 0380/CC-UPG/VIII/16 a.n PT. Kharisma Arya Paksi di delete karena double crms dengan nomor 0365/CC-UPG/VIII/16', 'Sudah selesai', '08/23/2016', '02:38:46 PM', 'danny', 542, 49, 4, 'danny'),
(247, '08/24/2016', '10:44:07 AM', 'Danny Restda', 'Delete CRMS : 0383/CC-UPG/VII/16, dimana terdapat kesalahan kecepatan Akses dari 3 Mbps menjadi 4 Mbps (IX) (Plaza Semanggi)', 'Sudah selesai', '08/24/2016', '10:44:22 AM', 'danny', 559, 49, 4, 'danny');
INSERT INTO `table_case` (`caseId`, `caseDateOpened`, `caseTimeOpened`, `caseAnalyst`, `caseDetail`, `caseResolution`, `caseDateClosed`, `caseTimeClosed`, `caseUpdatedBy`, `fkSiteId`, `fkCategoryId`, `fkCaseStatusId`, `fkUserId`) VALUES
(248, '08/26/2016', '05:35:16 PM', 'Danny Restda', 'Crms nomor 0644/MKT-AF/VIII/16a a.n PT. Pandu Nusantara Sakti di rollback karena kesalahan input produk.', 'Sudah selesai', '08/26/2016', '05:36:25 PM', 'danny', 591, 49, 4, 'danny'),
(249, '08/29/2016', '01:51:23 PM', 'Danny Restda', 'Rollback CRMS 0405 milik Synergy Worldwide karena kesalahan belum menghapus biaya instalasi nya.', 'CRMS Upgrade / Downgrade dibatalkan.', '08/29/2016', '01:53:34 PM', 'danny', 572, 49, 4, 'danny'),
(250, '08/29/2016', '02:45:04 PM', 'Sumarno', 'setting email pribadi arthatel', 'setting di outlook', '08/29/2016', '02:45:38 PM', 'marno', 540, 55, 4, 'marno'),
(251, '08/30/2016', '01:21:26 PM', 'Danny Restda', 'CRMS nomor 0653/MKT-AF/VIII/16 a.n PT. Circlecom Nusantara Indonesia di delete karena instalasi dibatalkan oleh pelanggan', 'Sudah selesai', '08/30/2016', '01:22:28 PM', 'danny', 10, 49, 4, 'danny'),
(252, '08/30/2016', '01:28:02 PM', 'Danny Restda', 'Crms : 0704/keu/is/viii/16, karena akan diputus langsung', 'Sudah selesai', '08/30/2016', '01:29:22 PM', 'danny', 574, 49, 4, 'danny'),
(253, '08/30/2016', '02:45:48 PM', 'Danny Restda', 'Setup email account ebilling@arthatel.co.id on Finance billing & collection. Add rule email from ebilling@arthatel.co.id move to Ebilling folder on billing@arthatel.co.id', 'User : Danu, Zulfa, Yahya, Angga, Fauzan, Isfah, Limewi, Budi, Imron (Done).', '08/30/2016', '04:16:34 PM', 'danny', 534, 55, 4, 'danny'),
(254, '08/31/2016', '06:19:36 PM', 'Danny Restda', 'crms nomor 0705/MKT-AF/VIII/16 a.n PT. Pandu Nusantara Sakti di delete karena double crms dengan nomor 0644/MKT-AF/VIII/16', 'Sudah selesai', '08/31/2016', '06:21:28 PM', 'danny', 10, 49, 4, 'danny'),
(255, '09/01/2016', '02:58:15 PM', 'Danny Restda', 'CRMS nomor 0718/MKT-AF/VIII/16 a.n PT. Kharisma Bestari di delete karena Salah Prodak', 'Sudah selesai', '09/01/2016', '02:59:36 PM', 'danny', 542, 49, 4, 'danny'),
(256, '09/07/2016', '10:31:00 AM', 'Danny Restda', 'CRMS nomor 0713/MKT-AF/VIII/16 a.n PT. Virtue Dragon di rollback karena ada revisi produk.', 'Sudah selesai', '09/07/2016', '10:32:19 AM', 'danny', 10, 49, 4, 'danny'),
(257, '09/07/2016', '05:36:10 PM', 'Danny Restda', 'Crms nomor 0732/MKT-AF/IX/16 a.n PT. Danayasa Arthatama/AGP di rollback karena kesalahan input produk.', 'Sudah selesai', '09/07/2016', '05:36:52 PM', 'danny', 10, 49, 4, 'danny'),
(258, '09/07/2016', '05:38:45 PM', 'Danny Restda', 'Mohon dapat delete untuk CRMS ISOLIR a.n :\n1.	0766/KEU-IS/IX/16 A.N PT. SAMSUNG ELECTRONICS INDONESIA\n2.	0754/KEU-IS/IX/16 A.N PT. MULTI NITROTAMA KIMIA\n', 'Sudah selesai', '09/07/2016', '05:39:48 PM', 'danny', 588, 49, 4, 'danny'),
(259, '09/07/2016', '05:42:00 PM', 'Danny Restda', 'Install Office Std 2013 : 6NT4R-8R8XQ-9VTYH-46C3V-xxxxx and supporting application.', 'Sudah selesai', '09/07/2016', '05:46:33 PM', 'danny', 505, 28, 4, 'danny'),
(260, '09/08/2016', '11:09:00 AM', 'Hasan Sulivan', 'outlook tidak bisa dibuka', 'upgrade office standart 2007 to office standart 2013', '09/08/2016', '11:09:56 AM', 'ivan', 531, 44, 4, 'ivan'),
(261, '09/08/2016', '02:49:52 PM', 'Danny Restda', 'Delete CRMS ISOLIR a.n BUANALINTAS no. CRMS 0757/KEU-IS/IX/16, karena tenant sudah melakukan pembayaran.', 'Sudah selesai', '09/08/2016', '02:50:01 PM', 'danny', 588, 49, 4, 'danny'),
(262, '09/09/2016', '01:21:15 PM', 'Danny Restda', 'CRMS ISOLIR 0708/KEU-IS/VIII/16 a.n EMIRATE AIRLINES karena tenant sudah melunasi tunggakan.', 'Sudah selesai', '09/09/2016', '01:23:04 PM', 'danny', 588, 49, 4, 'danny'),
(263, '09/09/2016', '02:43:32 PM', 'Danny Restda', 'CRMS nomor 0723/MKT-AF/VIII/16 a.n PT. Buanagraha Arthaprima di rollback karena instalasi seharusnya tanpa menunggu pembayaran', 'Sudah selesai', '09/09/2016', '02:44:16 PM', 'danny', 10, 49, 4, 'danny'),
(264, '09/14/2016', '09:25:38 AM', 'Hasan Sulivan', 'delete crms graha mas powerindo/ tirta kencana persada, crms  0538', 'crms sudah didelete', '09/14/2016', '09:26:03 AM', 'ivan', 553, 49, 4, 'ivan'),
(265, '09/14/2016', '09:28:52 AM', 'Sumarno', 'installasi laptop baru', 'installasi standart application 5 laptop baru', '09/14/2016', '09:32:29 AM', 'marno', 505, 28, 4, 'marno'),
(266, '09/19/2016', '09:11:32 AM', 'Sumarno', 'tidak bisa ngeprint', 'setting ulang default printer ', '09/19/2016', '09:12:42 AM', 'marno', 473, 40, 4, 'marno'),
(267, '09/27/2016', '02:38:32 PM', 'Hasan Sulivan', 'Lan card rusak..', 'contact dell support.. penggantian mainboard tgl 27/9/2016 dengan case dell support 936463328 ', '09/27/2016', '02:41:18 PM', 'ivan', 481, 46, 4, 'ivan'),
(268, '09/27/2016', '02:43:38 PM', 'Hasan Sulivan', 'wifi adapter indentifying..', 'sudah diganti wireless adapter oleh dell support tetap identifiying, install ulang OS..', '10/04/2016', '03:20:48 PM', 'ivan', 509, 46, 4, 'ivan'),
(269, '09/28/2016', '03:08:24 PM', 'Danny Restda', 'Delete CRMS 0827/KEU-TM/IX/16, Karena tenant sudah putus layanan.', 'Sudah selesai', '09/28/2016', '03:08:54 PM', 'danny', 588, 49, 4, 'danny'),
(270, '09/28/2016', '03:10:20 PM', 'Danny Restda', 'Rollback crms nomor 0788/MKT-AF/IX/16 a.n Harijanto Koesdjojo di PPJ Residence di rollback karena kesalahan input alamat', 'Sudah selesai', '09/28/2016', '03:11:54 PM', 'danny', 591, 49, 4, 'danny'),
(271, '09/29/2016', '10:24:10 AM', 'Danny Restda', 'crms nomor 0788/MKT-AF/IX/16 a.n Harijanto Koesdjojo di PPJ Residence di rollback karena kesalahan input alamat penagihan', 'Sudah selesai', '09/29/2016', '10:25:43 AM', 'danny', 591, 49, 4, 'danny'),
(272, '09/30/2016', '06:02:24 PM', 'Danny Restda', 'Pembatalan CRMS no 0714/KEU-TM/VIII/16, karena pelanggan tidak jadi pindah kantor.', 'Sudah selesai', '09/30/2016', '06:02:42 PM', 'danny', 516, 49, 4, 'danny'),
(273, '09/30/2016', '06:05:50 PM', 'Danny Restda', 'Pembatalan CRMS 0508, karena dobel CRMS.', 'Sudah selesai', '09/30/2016', '06:06:02 PM', 'danny', 591, 49, 4, 'danny'),
(274, '10/03/2016', '02:28:22 PM', 'Danny Restda', 'crms nomor 0509/CC-UPG/IX/16 a.n PT. Schroders di BEJ di delete karena kesalahan input harga.', 'Sudah selesai', '10/03/2016', '02:30:42 PM', 'danny', 591, 49, 4, 'danny'),
(275, '10/03/2016', '02:29:42 PM', 'Danny Restda', 'CRMS nomor 0506/CC-UPG/IX/16 a.n CNOOC di delete karena kesalahan input harga', 'Sudah selesai', '10/03/2016', '02:30:46 PM', 'danny', 10, 49, 4, 'danny'),
(276, '10/03/2016', '02:30:14 PM', 'Danny Restda', 'Rollback crms Dayacipta Kemasindo, crms 0524. Mau ditambahkan produk', 'Sudah selesai', '10/03/2016', '02:30:49 PM', 'danny', 553, 49, 4, 'danny'),
(277, '10/03/2016', '04:28:57 PM', 'Danny Restda', 'CRMS nomor 0495/CC-UPG/IX/16  a.n PT. Syailendra Capital s di BEJ di delete karena kesalahan input prodak', 'Sudah selesai', '10/03/2016', '04:29:19 PM', 'danny', 542, 49, 4, 'danny'),
(278, '10/04/2016', '10:38:55 AM', 'Danny Restda', 'Delete crms PT Hindo, no. crms 0573, 0574, 0575, 0577 dan 0578. Penambahan perangkat tidak membutuhkan crms, akan diganti dengan memo intern.', 'Sudah selesai', '10/04/2016', '11:20:13 AM', 'danny', 553, 49, 4, 'danny'),
(279, '10/05/2016', '01:45:24 PM', 'Danny Restda', 'CRMS : 0559 atas nama Ismaya Group, dimana terdapat perubahan alamat instalasi', 'Sudah selesai', '10/05/2016', '01:45:37 PM', 'danny', 559, 49, 4, 'danny'),
(280, '10/06/2016', '02:23:42 PM', 'Danny Restda', 'Delete CRMS Isolir a.n Bret Matthew dengan no. CRMS 0821/KEU-IS/X/16, karena tenant sudah bayar tunggakan.', 'Sudah selesai.', '10/06/2016', '02:24:42 PM', 'danny', 588, 49, 4, 'danny'),
(281, '10/06/2016', '03:01:24 PM', 'Danny Restda', 'Pembatalan CRMS 0864/KEU-TM/X/16, karena salah produk.', 'Sudah selesai', '10/06/2016', '03:02:48 PM', 'danny', 574, 49, 4, 'danny'),
(282, '10/06/2016', '03:02:27 PM', 'Danny Restda', 'Pembatalan CRMS 0816/KEU-IS/X/16, karena tenant sudah bayar.', 'Sudah selesai', '10/06/2016', '03:02:52 PM', 'danny', 574, 49, 4, 'danny'),
(283, '10/07/2016', '11:26:13 AM', 'Danny Restda', 'Delete CRMS : 0803/KEU-IS/X/16, karena double dengan 0804/KEU-IS/X/16', 'Sudah selesai', '10/07/2016', '11:26:32 AM', 'danny', 574, 49, 4, 'danny'),
(284, '10/13/2016', '03:06:37 PM', 'Danny Restda', 'Rollback crms 0589 an. Federal Karyatama, seharusnya tidak menunggu pembayaran', 'Sudah selesai', '10/13/2016', '03:07:27 PM', 'danny', 553, 49, 4, 'danny'),
(285, '10/13/2016', '05:00:06 PM', 'Danny Restda', 'Rollback CRMS 0817/MKT-AF/X/16  Nusantara Infrastruktur karena ada perubahan nama perusahaan', 'Sudah selesai', '10/13/2016', '05:00:29 PM', 'danny', 575, 49, 4, 'danny'),
(286, '10/18/2016', '11:38:16 AM', 'Danny Restda', 'CRMS Putus dengan nomor 0899/KEU-TM/X/16 a/n THE CLINIC AESTHETIC & DENTAL CENTRE dapat di delete, karena produck akan di split oleh team CPM', 'Sudah Selesai', '10/18/2016', '11:39:33 AM', 'danny', 474, 49, 4, 'danny'),
(287, '10/19/2016', '03:32:18 PM', 'Danny Restda', 'CRMS nomor 0854/MKT-AF/X/16 a.n Lembaga Penjamin Simpanan di Equity Tower di rollback karena kesalahan input alamat penagihan', 'Sudah Selesai', '10/19/2016', '03:38:00 PM', 'danny', 591, 49, 4, 'danny'),
(288, '10/19/2016', '03:32:46 PM', 'Danny Restda', 'CRMS nomor 0817/MKT-AF/X/16 a.n Nusantara Infrastructure di delete karena kesalahan ID Pelanggan', 'Sudah Selesai', '10/19/2016', '03:38:04 PM', 'danny', 10, 49, 4, 'danny'),
(289, '10/19/2016', '03:34:05 PM', 'Danny Restda', 'Delete CRMS 0842/KEU-IS/X/16, Pelanggan sudah memberikan tanggal jadwal pembayaran semua tunggakannya', 'Sudah Selesai', '10/19/2016', '03:38:07 PM', 'danny', 458, 49, 4, 'danny'),
(290, '10/19/2016', '05:32:48 PM', 'Danny Restda', 'CRMS nomor 0582/CC-UPG/X/16 a.n Dian Bahari di delete karena kesalahan input harga', 'Sudah selesai', '10/19/2016', '05:34:00 PM', 'danny', 591, 49, 4, 'danny'),
(291, '10/20/2016', '02:11:44 PM', 'Danny Restda', '- 0630, revisi pada alamat instalasi produk managed services\n- 0631, revisi pada produk seharusnya hanya produk managed services\n', 'Sudah selesai', '10/20/2016', '02:13:25 PM', 'danny', 553, 49, 4, 'danny'),
(292, '10/21/2016', '10:27:18 AM', 'Danny Restda', 'crms nomor 0643/MKT-AT/X/16a a.n Bank Artha Graha di delete karena kesalahan ID Pelanggan', 'Sudah selesai', '10/21/2016', '10:28:27 AM', 'danny', 10, 49, 4, 'danny'),
(293, '10/21/2016', '03:35:48 PM', 'Danny Restda', ' delete crms 0924/KEU-TM/X/16 dikarenakan ada kesalahan putus tenant PT NUBIKA JAYA', 'Sudah selesai', '10/21/2016', '03:39:19 PM', 'danny', 513, 49, 4, 'danny'),
(294, '10/25/2016', '02:15:46 PM', 'Danny Restda', 'CRMS nomor 0861/MKT-AF/X/16 a.n PT. Harum Rahayu Citra (Hard Rock) di delete karena batal', 'Sudah selesai', '10/25/2016', '02:15:59 PM', 'danny', 591, 49, 4, 'danny'),
(295, '10/25/2016', '02:16:36 PM', 'Danny Restda', 'CRMS 0947/KEU-TM/X/16 a.n Aida Gozali, dibatalkan karena salah klik product\n', 'Sudah selesai', '10/25/2016', '02:17:16 PM', 'danny', 519, 49, 4, 'danny'),
(296, '10/25/2016', '02:48:20 PM', 'Danny Restda', 'Delete crms upgrade dkph no.0596, kecepatan akses belum di update', 'Sudah selesai', '10/25/2016', '02:49:06 PM', 'danny', 553, 49, 4, 'danny'),
(297, '10/26/2016', '10:28:12 AM', 'Hasan Sulivan', 'lemote dan office minta aktifasi ulang terus', 'install ulang PC at-13', '10/26/2016', '10:28:43 AM', 'ivan', 511, 28, 4, 'ivan'),
(298, '10/26/2016', '10:29:23 AM', 'Hasan Sulivan', 'wifi dan NIC error connection', 'install ulang laptop at-298', '10/26/2016', '04:21:31 PM', 'ivan', 566, 28, 4, 'ivan'),
(299, '10/26/2016', '04:22:47 PM', 'Hasan Sulivan', 'always reboot after update windows 10', 'install ulang win 7 pro 64bit', '10/28/2016', '05:02:17 PM', 'ivan', 451, 28, 4, 'ivan'),
(300, '10/26/2016', '05:44:26 PM', 'Danny Restda', 'Delete CRMS : 0861/KEU-IS/X/16, akan ditukar dengan ID CRMS yang baru', 'Sudah selesai', '10/26/2016', '05:45:49 PM', 'danny', 574, 49, 4, 'danny'),
(301, '10/28/2016', '09:56:26 AM', 'Danny Restda', 'rollback crms dayacipta kemasindo, no crms 0655 – 0657, seharusnya ada 2 produk dalam 1 crms', 'Sudah selesai', '10/28/2016', '09:59:59 AM', 'danny', 553, 49, 4, 'danny'),
(302, '10/28/2016', '04:48:30 PM', 'Danny Restda', 'CRMS nomor 0607/CC-UPG/X/16 a.n Moonlay Technologies di delete karena salah input produk', 'Sudah selesai', '10/28/2016', '04:49:23 PM', 'danny', 591, 49, 4, 'danny'),
(303, '10/31/2016', '10:47:39 AM', 'Danny Restda', 'Mohon untuk dibatal CRMS :0863/KEU-IS/X/16,0864/KEU-IS/X/16,0865/KEU-IS/X/16,0866/KEU-IS/X/16,0867/KEU-IS/X/16,0958/KEU-TM/X/16,0959/KEU-TM/X/16. Karena batal isolir.\n', 'Sudah selesai', '10/31/2016', '10:52:10 AM', 'danny', 574, 49, 4, 'danny'),
(304, '11/01/2016', '10:10:30 AM', 'Danny Restda', 'CRMS nomor 0094/RELOC/X/16 a.n Mandiri Securities di delete karena produk tersebut akan dilakukan upgrade secara admin terlebih dahulu', 'Sudah selesai', '11/01/2016', '10:11:35 AM', 'danny', 10, 49, 4, 'danny'),
(305, '11/02/2016', '05:14:06 PM', 'Danny Restda', 'Mesin Absen POP Bali, system crash, tidak bisa read finger print', 'Pengecekan Asset Management', '01/31/2017', '12:13:22 PM', 'danny', 532, 47, 3, 'danny'),
(306, '11/03/2016', '04:20:13 PM', 'Danny Restda', 'CRMS nomor 0884/MKT-AF/XI/16 a.n Paul & Shark di rollback karena ada kesalahan input pada kuantitas produk', 'Sudah selesai', '11/03/2016', '04:21:27 PM', 'danny', 10, 49, 4, 'danny'),
(307, '11/03/2016', '05:09:40 PM', 'Danny Restda', 'Mohon untuk dibatalkan CRMS : 0895/KEU-IS/XI/16.Karena tenant sudah datang bayar.\n', 'Sudah selesai', '11/03/2016', '05:10:37 PM', 'danny', 574, 49, 4, 'danny'),
(308, '11/07/2016', '03:20:38 PM', 'Hasan Sulivan', '0893/MKT-AF/X/16 a.n Harita Jayaraya di Equity Tower di rollback ', 'sudah dirollback', '11/07/2016', '03:21:09 PM', 'ivan', 591, 49, 4, 'ivan'),
(309, '11/09/2016', '06:18:34 PM', 'Danny Restda', 'Cancel WO Putus telepon dengan nomor WO 0982 a.n Satrijadi Budiman.\nDikarenakan masih belum melunasi tunggakan secara penuh.\n', 'Sudah selesai', '11/09/2016', '06:19:15 PM', 'danny', 519, 49, 4, 'danny'),
(310, '11/10/2016', '03:11:45 PM', 'Danny Restda', 'CRMS nomor 0900/MKT-AF/X/16 a.n Sumber Petrindo di Equity Tower di rollback karena kesalahan input jumlah koneksi', 'Sudah selesai', '11/10/2016', '03:13:12 PM', 'danny', 575, 49, 4, 'danny'),
(311, '11/11/2016', '05:55:28 PM', 'Danny Restda', 'CRMS nomor 0645/CC-UPG/XI/16 a.n HM Sampoerna di delete karena salah input produk', 'Sudah selesai', '11/11/2016', '05:56:40 PM', 'danny', 591, 49, 4, 'danny'),
(312, '11/14/2016', '01:39:24 PM', 'Hasan Sulivan', 'rollback WO CRMS: 0753/KEU-TM/VIII/16  a/n: Haworth', 'crms sudah dirollback', '11/14/2016', '01:40:31 PM', 'ivan', 465, 49, 4, 'ivan'),
(313, '11/14/2016', '01:39:52 PM', 'Hasan Sulivan', 'crms nomor 0650/CC-UPG/XI/16 a.n Menteng Medika di PPJ Mall Di delete ', 'crms sudah didelete', '11/14/2016', '01:40:36 PM', 'ivan', 542, 49, 4, 'ivan'),
(314, '11/14/2016', '03:37:23 PM', 'Hasan Sulivan', 'rollback CRMS 0908/MKT-AF/XI/16 an Jhonlin Group', 'crms sudah dirollback', '11/14/2016', '03:37:50 PM', 'ivan', 575, 49, 4, 'ivan'),
(315, '11/15/2016', '01:35:14 PM', 'Hasan Sulivan', 'didelete CRMS a/n PT. Indonesia Comnet Plus (CRMS: 0572/MKT-AF/VI/16) ', 'crms sudah didelete', '11/15/2016', '01:35:41 PM', 'ivan', 579, 49, 4, 'ivan'),
(316, '11/15/2016', '02:12:20 PM', 'Hasan Sulivan', 'CRMS nomor 0791/MKT-AF/IX/16 a.n PT. Pacific Place Jakarta di delete', 'crms sudah didelete', '11/15/2016', '02:14:23 PM', 'ivan', 10, 49, 4, 'ivan'),
(317, '11/16/2016', '11:05:55 AM', 'Danny Restda', 'Delete crms Darma Putera Wahana, no. 0599 dan 0601, karena kesalahan event sources dan sudah ada crms pengganti.', 'Sudah selesai', '11/16/2016', '11:07:15 AM', 'danny', 553, 49, 4, 'danny'),
(318, '11/16/2016', '03:08:55 PM', 'Danny Restda', 'Rollback CRMS 0907/MKT-AF/XI/16 an TWBI, karena salah input', 'Sudah selesai.', '11/16/2016', '03:19:27 PM', 'danny', 591, 49, 4, 'danny'),
(319, '11/16/2016', '03:40:18 PM', 'Danny Restda', 'Rollback CRMS 0914/MKT-AF/XI/16 an Mrs. Janice ku, karena salah input biaya', 'Sudah selesai', '11/16/2016', '03:43:37 PM', 'danny', 542, 32, 4, 'danny'),
(320, '11/17/2016', '03:19:57 PM', 'Danny Restda', 'Rollback CRMS 0922/MKT-AF/XI/16 an Ritz Carlton, karena salah input produk', 'Sudah selesai', '11/17/2016', '03:21:09 PM', 'danny', 591, 49, 4, 'danny'),
(321, '11/21/2016', '04:32:02 PM', 'Danny Restda', 'Rollback CRMS No. 0931 atas nama PT Hyundai Mobil Indonesia, revisi bandwidth menjadi 2 mbps.\n', 'Sudah selesai', '11/21/2016', '04:32:19 PM', 'danny', 544, 49, 4, 'danny'),
(322, '11/21/2016', '05:18:50 PM', 'Danny Restda', 'Delete crms PT Changhong Electric Indonesia, no. 0678. Sudah ada crms pengganti dan sedang trial, yaitu crms no. 0673', 'Sudah selesai', '11/21/2016', '05:20:07 PM', 'danny', 553, 49, 4, 'danny'),
(323, '11/22/2016', '10:40:58 AM', 'Danny Restda', 'Rollback WO CRMS: 0986/KEU-TM/XI/16  a/n: Multi Sarana Investama karena MDF salah tanggal pemutusan telepon', 'Sudah selesai', '11/22/2016', '10:41:12 AM', 'danny', 465, 49, 4, 'danny'),
(324, '11/22/2016', '10:43:30 AM', 'Danny Restda', 'Rollback CRMS 0933/MKT-AF/XI/16 an Terasys Virtual, karena salah input alamat instalasi', 'Sudah selesai', '11/22/2016', '10:43:47 AM', 'danny', 542, 49, 4, 'danny'),
(325, '11/22/2016', '01:41:27 PM', 'Danny Restda', 'CRMS PT Netmark (nofmas chemicals), no 0693. Karena sudah ada crms aktivasi sebelum nya yaitu no. 0691', 'Sudah selesai', '11/22/2016', '01:43:16 PM', 'danny', 553, 49, 4, 'danny'),
(326, '11/23/2016', '10:00:33 AM', 'Danny Restda', 'Rollback CRMS dg no 0684, dikarenakan kesalahan spesifikasi untuk produk.', 'Sudah selesai', '11/23/2016', '10:00:49 AM', 'danny', 497, 49, 4, 'danny'),
(327, '11/23/2016', '10:07:07 AM', 'Danny Restda', 'CRMS nomor 0938/MKT-AF/XI/16 a.n PT. Artha Telekomindo di rollback karena kesalahan input produk.', 'Sudah selesai', '11/23/2016', '10:09:15 AM', 'danny', 10, 49, 4, 'danny'),
(328, '11/23/2016', '10:47:51 AM', 'Danny Restda', 'Rollback 0934/MKT-AF/XI/16 a.n Ritz Carlton di rollback karena kesalahan input produk.', 'Sudah selesai', '11/23/2016', '10:48:51 AM', 'danny', 591, 49, 4, 'danny'),
(329, '11/23/2016', '02:06:20 PM', 'Danny Restda', 'CRMS nomor 0658/CC-UPG/XI/16 a.n Nubika Jaya di delete karena sudah pernah dibuat', 'Sudah selesai', '11/23/2016', '02:07:17 PM', 'danny', 591, 49, 4, 'danny'),
(330, '11/23/2016', '05:10:04 PM', 'Danny Restda', 'Delete crms 1014/KEU-TM/XI/16 dikarenakan kesalahan mengambil event source.', 'Sudah selesai.', '11/23/2016', '05:10:46 PM', 'danny', 512, 49, 4, 'danny'),
(331, '11/28/2016', '04:28:11 PM', 'Danny Restda', 'Rollback PT. Inixindo (0703/MKT-AT/XI/16) atas nama PT. Inixindo, seharusnya tidak menunggu pembayaran.', 'Sudah selesai', '11/28/2016', '04:29:28 PM', 'danny', 543, 49, 4, 'danny'),
(332, '12/01/2016', '10:05:34 AM', 'Danny Restda', 'Dibatalkan CRMS : 0975/KEU-IS/XI/16. Tenant akan bayar', 'Sudah selesai', '12/01/2016', '10:05:47 AM', 'danny', 574, 49, 4, 'danny'),
(333, '12/01/2016', '10:58:51 AM', 'Danny Restda', 'CRMS Nomor 0956/MKT-AF/XI/16 a.n Jewels of Eden di rollback karena kesalahan input alamat', 'Sudah selesai', '12/01/2016', '10:59:04 AM', 'danny', 10, 49, 4, 'danny'),
(334, '12/05/2016', '03:51:02 PM', 'Danny Restda', 'Rollback CRMS PT. Kaya Hayat Rezeki dikarenakan ada kesalahan penginputan perangkat yang dipinjamkan', 'Sudah selesai.', '12/05/2016', '03:51:22 PM', 'danny', 470, 49, 4, 'danny'),
(335, '12/06/2016', '10:42:57 AM', 'Danny Restda', 'CRMS 0881/MKT-AF/XI/16 a.n Nimas Wulan di Delete karena kesalahan input produk.', 'Sudah selesai', '12/06/2016', '10:43:46 AM', 'danny', 542, 49, 4, 'danny'),
(336, '12/07/2016', '11:27:50 AM', 'Danny Restda', 'Delete nomor CRMS : 0990/KEU-IS/XII/16, karena tenant baru saja melakukan pembayaran.', 'Sudah selesai', '12/07/2016', '11:28:10 AM', 'danny', 574, 49, 4, 'danny'),
(337, '12/07/2016', '04:31:47 PM', 'Danny Restda', 'Delete nomor crms 1009/KEU-TM/XI/16 . karena kesalahan mengambil event source', 'Sudah selesai', '12/07/2016', '04:32:02 PM', 'danny', 513, 49, 4, 'danny'),
(338, '12/08/2016', '09:08:20 AM', 'Hasan Sulivan', 'daftar finger pintu lantai 4 1390 : gispa', 'sudah terdaftar', '12/08/2016', '09:08:39 AM', 'ivan', 509, 33, 4, 'ivan'),
(339, '12/08/2016', '11:32:44 AM', 'Danny Restda', 'Rollback crms ismaya dwp, no. 0714, ada perubahan pada kapasitas BW yaitu menjadi 270 mbps', 'Sudah selesai', '12/08/2016', '11:33:08 AM', 'danny', 553, 49, 4, 'danny'),
(340, '12/14/2016', '10:38:31 AM', 'Danny Restda', 'CRMS nomor 0949/MKT-AF/XI/16 a.n PT. Danayasa Arthatama di rollback karena revisi pada jumlah produk.', 'Sudah selesai', '12/14/2016', '10:39:59 AM', 'danny', 10, 49, 4, 'danny'),
(341, '12/15/2016', '11:16:50 AM', 'Danny Restda', 'Rollback CRMS 0716 PT. Kaya Hayat Rezeki, karena revisi keterangan bandwith.', 'Sudah selesai', '12/15/2016', '11:17:04 AM', 'danny', 470, 49, 4, 'danny'),
(342, '12/19/2016', '05:45:41 PM', 'Danny Restda', ' CRMS nomor 1012/MKT-AF/XII/16 a.n Monalisa di rollback ke awal salah input produk', 'Sudah selesai', '12/19/2016', '05:48:51 PM', 'danny', 591, 49, 4, 'danny'),
(343, '12/21/2016', '11:39:50 AM', 'Hasan Sulivan', 'test submit', 'test', '12/21/2016', '11:43:39 AM', 'ivan', 501, 42, 4, 'ivan'),
(344, '12/22/2016', '09:32:25 AM', 'Danny Restda', 'Rollback CRMS 0754, MNK. Seharusnya tanpa menunggu pembayaran.', 'Sudah Selesai', '12/22/2016', '09:35:12 AM', 'danny', 553, 49, 4, 'danny'),
(345, '12/22/2016', '10:01:42 AM', 'Danny Restda', 'Delete CRMS Solusindo bintang pratama, crms 0107, seharusnya tidak ada biaya relokasi', 'Sudah selesai', '12/22/2016', '10:03:26 AM', 'danny', 553, 49, 4, 'danny'),
(346, '12/22/2016', '01:49:56 PM', 'Danny Restda', 'Delete CRMS 1052/KEU-IS/XII/16, karena salah ambil produk.', 'Sudah selesai', '12/22/2016', '01:50:16 PM', 'danny', 458, 49, 4, 'danny'),
(347, '12/22/2016', '03:53:08 PM', 'Danny Restda', 'Delete CRMS 1011/KEU-TM/XI/16 karena tenant tidak jadi putus dan layanan akan digunakan kembali', 'Sudah selesai', '12/22/2016', '03:53:24 PM', 'danny', 513, 49, 4, 'danny'),
(348, '01/03/2017', '11:29:01 AM', 'Danny Restda', 'Delete CRMS 1069/KEU-IS/XII/16, Pelanggan sudah melunasi tunggakan Okt 2016 dan Nov 2016.', 'Sudah selesai', '01/03/2017', '11:29:45 AM', 'danny', 458, 49, 4, 'danny'),
(349, '01/03/2017', '11:30:38 AM', 'Danny Restda', 'Delete CRMS 1070/KEU-IS/XII/16, Pelanggan sudah melunasi tunggakan Okt 2016 dan Nov 2016.', 'Sudah selesai', '01/03/2017', '11:31:21 AM', 'danny', 458, 49, 4, 'danny'),
(350, '01/03/2017', '04:32:54 PM', 'Danny Restda', 'Rollback CRMS 0001/MKT-AT/VI/16, revisi biaya instalasi.', 'Sudah selesai', '01/03/2017', '04:33:11 PM', 'danny', 553, 49, 4, 'danny'),
(351, '01/04/2017', '10:57:51 AM', 'Danny Restda', 'Rollback ke CC, CRMS Upgrade 0006/KEU-TM/I/17. Dikarenakan salah mendistribusikan CRMS harusnya ke BEJ.\n', 'Sudah selesai', '01/04/2017', '11:00:08 AM', 'danny', 531, 49, 4, 'danny'),
(352, '01/05/2017', '04:09:17 PM', 'Danny Restda', 'Delete CRMS 0006/KEU-IS/I/17 & 0025/KEU-IS/I/17, tenant sudah bayar.\n', 'Sudah selesai', '01/05/2017', '04:09:32 PM', 'danny', 574, 49, 4, 'danny'),
(353, '01/09/2017', '01:43:47 PM', 'Danny Restda', 'Delete CRMS 0041/CC-UPG/I/17 a.n Roy Christianto, karena kesalahan harga.', 'Sudah selesai', '01/09/2017', '01:44:28 PM', 'danny', 542, 49, 4, 'danny'),
(354, '01/09/2017', '06:12:40 PM', 'Danny Restda', 'CRMS nomor 0042/MKT-AF/1/17 a.n Infinite  di rollback ke awal karena revisi alamat instalasi & penagihan', 'Sudah selesai', '01/09/2017', '06:13:00 PM', 'danny', 542, 49, 4, 'danny'),
(355, '01/17/2017', '05:55:30 PM', 'Danny Restda', 'CRMS nomor 1014/MKT-AF/XII/16 a.n Bank Artha Graha di rollback karena revisi jumlah produk.', 'Sudah selesai', '01/17/2017', '05:57:26 PM', 'danny', 10, 49, 4, 'danny'),
(356, '01/19/2017', '09:50:24 AM', 'Danny Restda', 'CRMS nomor 0019/MKT-AF/I/17 a.n Perta Samtan Gas di delete karena akan dibuatkan CRMS upgrade saja', 'Sudah selesai', '01/19/2017', '09:51:27 AM', 'danny', 591, 49, 4, 'danny'),
(357, '01/19/2017', '11:54:46 AM', 'Danny Restda', 'CRMS nomor 0076/MKT-AF/I/17 a.n Nagita Slavina/Takashi Maruyama di delete karena pelanggan batal pasang.', 'Sudah selesai', '01/19/2017', '11:55:04 AM', 'danny', 10, 49, 4, 'danny'),
(358, '01/20/2017', '10:27:37 AM', 'Danny Restda', 'rollback crms sinosteel no. 0031, seharus nya jumlah kuantitas ada 2 titik iptv', 'Sudah selesai', '01/20/2017', '10:27:51 AM', 'danny', 553, 49, 4, 'danny'),
(359, '01/20/2017', '11:03:54 AM', 'Danny Restda', 'CRMS nomor 0079/CC-UPG/I/17 a.n Mr. Juan Cortes di delete karena revisi produk.', 'Sudah selesai', '01/20/2017', '11:04:55 AM', 'danny', 10, 49, 4, 'danny'),
(360, '01/26/2017', '02:18:37 PM', 'Danny Restda', 'Belum input harga.', 'Sudah selesai', '01/26/2017', '02:19:14 PM', 'danny', 553, 49, 4, 'danny'),
(361, '01/27/2017', '11:37:04 AM', 'Danny Restda', 'Delete CRMS : 0194/KEU-TM/1/17 a/n ALEXANDER SUTANTO karena salah ID.', 'Sudah selesai', '01/27/2017', '11:37:52 AM', 'danny', 592, 49, 4, 'danny'),
(363, '01/31/2017', '10:58:06 AM', 'Danny Restda', 'CRMS nomor 0135/CC-UPG/I/17 a.n Tanadi Santoso di delete karena crms upgrade sudah dibuatkan sebelumnya', 'Sudah selesai', '01/31/2017', '11:28:50 AM', 'danny', 10, 49, 4, 'danny'),
(364, '01/31/2017', '11:05:30 AM', 'Danny Restda', 'Delete CRMS 0105/KEU-IS/I/17,  Karena tenant telah menyerahkan form migrasi.', 'Sudah selesai.', '01/31/2017', '11:28:45 AM', 'danny', 588, 49, 4, 'danny'),
(365, '01/31/2017', '11:26:29 AM', 'Danny Restda', 'Rollback 0102/MKT-AF/I/17 a/n. Pacific Place Jakarta, PT, karena sudah di putus oleh PPJ sebelum tanggal pemutusan', 'Sudah selesai.', '01/31/2017', '11:28:38 AM', 'danny', 465, 49, 4, 'danny'),
(366, '01/31/2017', '11:46:37 AM', 'Danny Restda', 'Delete crms Herbalife Tangerang, no.0125/cc-upg/I/17 karena sudah ada crms pengganti yaitu no.0131.', 'Sudah Selesai', '01/31/2017', '11:46:58 AM', 'danny', 553, 49, 4, 'danny');

-- --------------------------------------------------------

--
-- Table structure for table `table_casestatus`
--

CREATE TABLE IF NOT EXISTS `table_casestatus` (
  `caseStatusId` int(11) NOT NULL AUTO_INCREMENT,
  `caseStatusCategory` varchar(30) NOT NULL,
  PRIMARY KEY (`caseStatusId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `table_casestatus`
--

INSERT INTO `table_casestatus` (`caseStatusId`, `caseStatusCategory`) VALUES
(1, 'Open'),
(2, 'Queued'),
(3, 'Process'),
(4, 'Closed');

-- --------------------------------------------------------

--
-- Table structure for table `table_category`
--

CREATE TABLE IF NOT EXISTS `table_category` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(40) NOT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `table_category`
--

INSERT INTO `table_category` (`categoryId`, `categoryName`) VALUES
(27, 'SM - OS Server Installation'),
(28, 'DM - OS & Standard Application'),
(29, 'DM - Desktop New Requisiton'),
(30, 'SM - Server New Requisiton'),
(31, 'OE - Office Equipment New Requisiton'),
(32, 'AM - Access Card Activation'),
(33, 'AM - Finger Scan Activation'),
(34, 'FD - File Recovery'),
(35, 'FD - Database Maintenance'),
(36, 'CE - Maibox Maintenance'),
(37, 'CE - Email Spam Checking'),
(38, 'TS - Server Maintenance'),
(39, 'TS - Desktop Maintenance'),
(40, 'TS - Printer Maintenance'),
(41, 'TS - Scanner Maintenance'),
(42, 'TS - CCTV Maintenance'),
(43, 'TS - OS Maintenance'),
(44, 'TS - Application Maintenance'),
(45, 'TS - Server Broken Requisiton'),
(46, 'TS - Desktop Broken Requisiton'),
(47, 'TS - Office Equipment Broken Requsition'),
(48, 'TS - Form Design'),
(49, 'TS - CRMS Roll Back'),
(50, 'NI - Network Installation'),
(51, 'NI - Network Maintenance'),
(52, 'IA - User Application Form Requsition'),
(53, 'IA - Exit Clearance Form Requisition'),
(54, 'TV - System Recovery from Threat'),
(55, 'TS - Email Account');

-- --------------------------------------------------------

--
-- Table structure for table `table_clientsite`
--

CREATE TABLE IF NOT EXISTS `table_clientsite` (
  `clientSiteId` int(11) NOT NULL AUTO_INCREMENT,
  `clientSiteName` varchar(100) NOT NULL,
  `fkSiteId2` int(11) NOT NULL,
  PRIMARY KEY (`clientSiteId`),
  KEY `fk_SiteId2` (`fkSiteId2`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=593 ;

--
-- Dumping data for table `table_clientsite`
--

INSERT INTO `table_clientsite` (`clientSiteId`, `clientSiteName`, `fkSiteId2`) VALUES
(9, 'Aries Widiyanto', 17),
(10, 'Kartika', 17),
(11, 'Suibnu Akhir', 17),
(12, 'Imron', 17),
(13, 'Limewi Sinurat', 17),
(14, 'Adi Gunawan', 17),
(15, 'Dessy Komalasari', 17),
(16, 'Chyntia Chaterina', 17),
(440, 'Aan Susanto', 17),
(441, 'Abdul Malik', 17),
(442, 'Abdul Rahman', 17),
(443, 'Abdul Salam Zaelani', 17),
(444, 'Abdullah anwar', 17),
(445, 'Ade Kurniawati', 17),
(446, 'Ade Ramdani', 17),
(447, 'Adhy Prayitno', 17),
(448, 'Afriandi Zulfikar', 17),
(449, 'Agest Gerry', 17),
(450, 'Ajie Pratama', 17),
(451, 'Amy Saiful Milah', 17),
(452, 'Andhika Widyatmoko', 17),
(453, 'Andi Rahman', 17),
(454, 'Andri Aulia', 17),
(455, 'Andrianus', 17),
(456, 'Andy Elfasa', 17),
(457, 'Angga Randy', 17),
(458, 'Angga Vastuvidyawan', 17),
(459, 'Anggie Pudji', 17),
(460, 'Ardhi Juniardhi', 17),
(461, 'Arie Halim', 17),
(462, 'Aris Widiyanto', 17),
(463, 'Atriyadi Wibowo', 17),
(464, 'Azkaufa Zulfi Abadi', 17),
(465, 'Bagus Kurniawan', 17),
(466, 'Bambang Herlambang H', 17),
(467, 'Bella Djuarta', 17),
(468, 'Bella Roseliani', 17),
(469, 'Benny Kristianto', 17),
(470, 'Benny Yudianto', 17),
(471, 'Bernard Nainggolan', 17),
(472, 'Bigman Nggobe', 17),
(473, 'Boggy Hendrawan', 17),
(474, 'Budi Haryadi', 17),
(475, 'Budi Setiawan', 17),
(476, 'Cindy Semet', 17),
(477, 'Clara Rondonuwu', 17),
(478, 'Daniel Suryo', 17),
(479, 'Danny Restda Adhitya', 17),
(480, 'Danu Umbara', 17),
(481, 'Defis Alfrado', 17),
(482, 'Dessy Fatmawati', 17),
(483, 'Destianto Dwi Nugroho', 17),
(484, 'Dharma S. Heru', 17),
(485, 'Dian Savitri', 17),
(486, 'Ddidin', 17),
(487, 'Djati Suwantoro', 17),
(488, 'Dony Syaferial', 17),
(489, 'Eben Ezer', 17),
(490, 'Edward Johannes', 17),
(491, 'Eka Wahyuni', 17),
(492, 'Eko Hartanto', 17),
(493, 'Eni Nursobah', 17),
(494, 'Erick Vernanda', 17),
(495, 'Erik Murdiyanto', 17),
(496, 'Ervan Fauzi', 17),
(497, 'Erwin Sofyan', 17),
(498, 'Evaline Simorangkir', 17),
(499, 'Fariz Harahap', 17),
(500, 'Fauzan Alfiqri', 17),
(501, 'Febby Bayu', 17),
(502, 'Fery Sanjaya', 17),
(503, 'Hakiki Widiyanto', 17),
(504, 'Hanny Dwi Rahayu', 17),
(505, 'Hari Siswanto', 17),
(506, 'Hari Wibowo', 17),
(507, 'Harso Bangun', 17),
(508, 'Haryadi', 17),
(509, 'Hasan Sulivan', 17),
(510, 'Hendro Prabowo', 17),
(511, 'Heru Pratekna', 17),
(512, 'Indra Maulana', 17),
(513, 'Indra Pratama', 17),
(514, 'Irwan Rustam', 17),
(515, 'Isabella Djuarta', 17),
(516, 'Isfah', 17),
(517, 'Jendrie', 17),
(518, 'Jovansyah Arifin', 17),
(519, 'Khalik Azis', 17),
(520, 'Lukito Hermawan', 17),
(521, 'Madani', 17),
(522, 'Marsa Hadi Broto', 17),
(523, 'Mehdy Montazeri', 17),
(524, 'Michel Siwalette', 17),
(525, 'Mukhsin', 17),
(526, 'Murtini', 17),
(527, 'Nada', 17),
(528, 'Nia Aniati', 17),
(529, 'Nindya Indriani', 17),
(530, 'Noertattu Supanery', 17),
(531, 'Novi Alamsyah', 17),
(532, 'Novita Febru Aryanti', 17),
(533, 'Nur Ikhsan Pambudi', 17),
(534, 'Nurulia Mardiyanti', 17),
(535, 'Oki Saputra', 17),
(536, 'Padjri', 17),
(537, 'Prasita Alferina', 17),
(538, 'Prisilia Cahyadi', 17),
(539, 'Puput Septiawati', 17),
(540, 'Puspita Rini', 17),
(541, 'Putri Anggraeni', 17),
(542, 'Putri Annisa', 17),
(543, 'Ratna Juwita', 17),
(544, 'Ratnawati', 17),
(545, 'Rini Tan', 17),
(546, 'Risang Maha Ayuningtyas', 17),
(547, 'Risha Casandra', 17),
(548, 'Rizka Fahmi', 17),
(549, 'Rollies Eko Nurbudi', 17),
(550, 'Rommy Hadiyunanto', 17),
(551, 'Rudy Susetya', 17),
(552, 'Sandra Prastiwi', 17),
(553, 'Santi', 17),
(554, 'Serra Fionalita', 17),
(555, 'Setiadi Leman', 17),
(556, 'Shekti Dewi', 17),
(557, 'Sigit Pamungkas', 17),
(558, 'Sony Sanjaya', 17),
(559, 'Stephanus Prasetya', 17),
(560, 'Sulifah', 17),
(561, 'Sumadi', 17),
(562, 'sumarno', 17),
(563, 'Susanti Taidy', 17),
(564, 'Sutrisno', 17),
(565, 'Syamsul Ridwan', 17),
(566, 'Syefrendy', 17),
(567, 'Syehan Dino', 17),
(568, 'Wayan Wisnarta', 17),
(569, 'Wendy Liang', 17),
(570, 'Wildan Purnawan', 17),
(571, 'William Atalie', 17),
(572, 'Wina Anggasari', 17),
(573, 'Witjannarko', 17),
(574, 'Yakub Febiyanto', 17),
(575, 'Yeni Carolina', 17),
(576, 'Yolanda Rachmat', 17),
(577, 'Yoppi Susanto', 17),
(578, 'Yudi Setiawan', 17),
(579, 'Zulika', 17),
(580, 'Anwar Network', 17),
(582, 'Sukur Mujiono', 17),
(583, 'Ali Akbar', 17),
(584, 'Zulfa Noor Zakiah', 17),
(585, 'Eka Perdana', 17),
(586, 'Robert Runcie', 17),
(587, 'Raffanda', 17),
(588, 'Yahya Syuhada', 17),
(589, 'Ikhwan', 17),
(590, 'Maurits Triono', 17),
(591, 'Mutiarani', 17),
(592, 'Laura Malau', 17);

-- --------------------------------------------------------

--
-- Table structure for table `table_privilege`
--

CREATE TABLE IF NOT EXISTS `table_privilege` (
  `privilegeId` int(11) NOT NULL,
  `privilegeStatus` varchar(20) NOT NULL,
  PRIMARY KEY (`privilegeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_privilege`
--

INSERT INTO `table_privilege` (`privilegeId`, `privilegeStatus`) VALUES
(1, 'Administrator'),
(2, 'Operator');

-- --------------------------------------------------------

--
-- Table structure for table `table_setting`
--

CREATE TABLE IF NOT EXISTS `table_setting` (
  `settingTitle` varchar(1000) DEFAULT NULL,
  `settingSlogan` varchar(1000) DEFAULT NULL,
  `settingContact` varchar(1000) DEFAULT NULL,
  `settingAddress1` varchar(1000) DEFAULT NULL,
  `settingAddress2` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_setting`
--

INSERT INTO `table_setting` (`settingTitle`, `settingSlogan`, `settingContact`, `settingAddress1`, `settingAddress2`) VALUES
('MIS Helpdesk', 'PT. Artha Telekomindo', 'Email : mis@arthatel.co.id | Phone : (021)5150000 ext.2062/2168/2092/2049', 'Sudirman Central Business District, Park 18, 4th Floor', 'Jl. Jend. Sudirman kav.52-53 Jakarta Selatan');

-- --------------------------------------------------------

--
-- Table structure for table `table_site`
--

CREATE TABLE IF NOT EXISTS `table_site` (
  `siteId` int(11) NOT NULL AUTO_INCREMENT,
  `siteName` varchar(100) NOT NULL,
  PRIMARY KEY (`siteId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `table_site`
--

INSERT INTO `table_site` (`siteId`, `siteName`) VALUES
(17, 'Artha Telekomindo, PT.');

-- --------------------------------------------------------

--
-- Table structure for table `table_user`
--

CREATE TABLE IF NOT EXISTS `table_user` (
  `userId` varchar(30) NOT NULL,
  `userPassword` varchar(255) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(50) NOT NULL,
  `userTelp` varchar(30) NOT NULL,
  `userNoDesktop` varchar(100) DEFAULT NULL,
  `userTypeDesktop` varchar(20) DEFAULT NULL,
  `userCompany` varchar(50) NOT NULL,
  `fkPrivilegeId` int(11) NOT NULL,
  `userStatus` int(11) NOT NULL,
  PRIMARY KEY (`userId`),
  KEY `fk_PrivilegeId` (`fkPrivilegeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_user`
--

INSERT INTO `table_user` (`userId`, `userPassword`, `userName`, `userEmail`, `userTelp`, `userNoDesktop`, `userTypeDesktop`, `userCompany`, `fkPrivilegeId`, `userStatus`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'mis@arthatel.co.id', '2049', 'at-132', 'Lenovo', 'Artha Telekomindo, PT', 1, 1),
('bayu', '16535f6ed4ec1b10c2cf65446c3abb56', 'Febby Bayu', 'febby.bayu@arthatel.co.id', '2168', '', '', '', 2, 1),
('daniel', '34f85ca80ec353d3052b8a2d3973a0c5', 'Daniel Suryo', 'daniel.suryo@arthatel.co.id', '', '', '', '', 2, 1),
('danny', '827ccb0eea8a706c4c34a16891f84e7b', 'Danny Restda', '', '', '', '', '', 2, 1),
('ivan', '827ccb0eea8a706c4c34a16891f84e7b', 'Hasan Sulivan', 'hasan.sulivan@arthatel.co.id', '2062', '', '', '', 2, 1),
('marno', '827ccb0eea8a706c4c34a16891f84e7b', 'Sumarno', '', '', '', '', '', 2, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_case`
--
ALTER TABLE `table_case`
  ADD CONSTRAINT `fk_CaseStatusId` FOREIGN KEY (`fkCaseStatusId`) REFERENCES `table_casestatus` (`caseStatusId`),
  ADD CONSTRAINT `fk_CategoryId` FOREIGN KEY (`fkCategoryId`) REFERENCES `table_category` (`categoryId`),
  ADD CONSTRAINT `fk_SiteId` FOREIGN KEY (`fkSiteId`) REFERENCES `table_clientsite` (`clientSiteId`),
  ADD CONSTRAINT `fk_UserId` FOREIGN KEY (`fkUserId`) REFERENCES `table_user` (`userId`);

--
-- Constraints for table `table_clientsite`
--
ALTER TABLE `table_clientsite`
  ADD CONSTRAINT `fk_SiteId2` FOREIGN KEY (`fkSiteId2`) REFERENCES `table_site` (`siteId`);

--
-- Constraints for table `table_user`
--
ALTER TABLE `table_user`
  ADD CONSTRAINT `fk_PrivilegeId` FOREIGN KEY (`fkPrivilegeId`) REFERENCES `table_privilege` (`privilegeId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
