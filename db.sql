-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16 Jul 2014 pada 16.25
-- Versi Server: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `arthates`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_case`
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data untuk tabel `table_case`
--

INSERT INTO `table_case` (`caseId`, `caseDateOpened`, `caseTimeOpened`, `caseAnalyst`, `caseDetail`, `caseResolution`, `caseDateClosed`, `caseTimeClosed`, `caseUpdatedBy`, `fkSiteId`, `fkCategoryId`, `fkCaseStatusId`, `fkUserId`) VALUES
(21, '07/16/2014', '02:51:57 PM', NULL, 'Tettsts', NULL, NULL, NULL, 'operator', 4, 14, 2, 'operator'),
(22, '07/16/2014', '02:52:14 PM', NULL, 'dadadada', NULL, NULL, NULL, 'operator', 3, 14, 1, 'operator'),
(23, '07/16/2014', '02:52:22 PM', NULL, 'adadadada', NULL, NULL, NULL, 'operator', 3, 14, 1, 'operator'),
(24, '09/16/2014', '02:52:31 PM', NULL, 'adafafdadfad', NULL, NULL, NULL, 'operator', 4, 14, 1, 'operator'),
(25, '08/16/2014', '02:52:43 PM', NULL, 'adaggfwfwfq', NULL, NULL, NULL, 'operator', 2, 14, 1, 'operator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_casestatus`
--

CREATE TABLE IF NOT EXISTS `table_casestatus` (
  `caseStatusId` int(11) NOT NULL AUTO_INCREMENT,
  `caseStatusCategory` varchar(30) NOT NULL,
  PRIMARY KEY (`caseStatusId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data untuk tabel `table_casestatus`
--

INSERT INTO `table_casestatus` (`caseStatusId`, `caseStatusCategory`) VALUES
(1, 'Open'),
(2, 'Queued'),
(3, 'Process'),
(4, 'Closed');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_category`
--

CREATE TABLE IF NOT EXISTS `table_category` (
  `categoryId` int(11) NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(30) NOT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data untuk tabel `table_category`
--

INSERT INTO `table_category` (`categoryId`, `categoryName`) VALUES
(14, 'Information');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_clientsite`
--

CREATE TABLE IF NOT EXISTS `table_clientsite` (
  `clientSiteId` int(11) NOT NULL AUTO_INCREMENT,
  `clientSiteName` varchar(100) NOT NULL,
  `fkSiteId2` int(11) NOT NULL,
  PRIMARY KEY (`clientSiteId`),
  KEY `fk_SiteId2` (`fkSiteId2`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `table_clientsite`
--

INSERT INTO `table_clientsite` (`clientSiteId`, `clientSiteName`, `fkSiteId2`) VALUES
(1, 'Kamar 501', 1),
(2, 'Ahmad Musa', 2),
(3, 'Sujiwa Nugraha', 10),
(4, 'Pak Darmono', 11),
(5, 'Kamar 502', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_privilege`
--

CREATE TABLE IF NOT EXISTS `table_privilege` (
  `privilegeId` int(11) NOT NULL,
  `privilegeStatus` varchar(20) NOT NULL,
  PRIMARY KEY (`privilegeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `table_privilege`
--

INSERT INTO `table_privilege` (`privilegeId`, `privilegeStatus`) VALUES
(1, 'Administrator'),
(2, 'Operator');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_site`
--

CREATE TABLE IF NOT EXISTS `table_site` (
  `siteId` int(11) NOT NULL AUTO_INCREMENT,
  `siteName` varchar(100) NOT NULL,
  PRIMARY KEY (`siteId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data untuk tabel `table_site`
--

INSERT INTO `table_site` (`siteId`, `siteName`) VALUES
(1, 'Hotel Borobudur'),
(2, 'PT. Stereoland Group Indonesia'),
(3, 'Artha Graha Bank'),
(10, 'Bank National Indonesia'),
(11, 'Eksplorasi Nusa Jaya, PT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_user`
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
-- Dumping data untuk tabel `table_user`
--

INSERT INTO `table_user` (`userId`, `userPassword`, `userName`, `userEmail`, `userTelp`, `userNoDesktop`, `userTypeDesktop`, `userCompany`, `fkPrivilegeId`, `userStatus`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Administrator', 'admin@arthatel.co.id', '021345678', '-', '-', 'PT. Artha Telekomindo', 1, 1),
('admin1', '827ccb0eea8a706c4c34a16891f84e7b', 'Muhamad Rohman', 'rmuhamad@live.com', '9876', '9890/AII/JJA/2001', 'Server', 'Artha Telekomindo, PT', 1, 1),
('operator', '4b583376b2767b923c3e1da60d10de59', 'Operator Ganteng', 'operator@arthatel.co.id', '2234', '449/AT-FA/COM/III/09', 'Workstation', 'PT. Artha Telekomindo', 2, 1),
('rohmanmuhamd', '827ccb0eea8a706c4c34a16891f84e7b', 'Rohman Muhamad', 'rmuhamad@live.com', '0897', '449/AT-FA/COM/III/09', 'DELL', 'Artha Telekomindo, PT', 2, 1);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `table_case`
--
ALTER TABLE `table_case`
  ADD CONSTRAINT `fk_CaseStatusId` FOREIGN KEY (`fkCaseStatusId`) REFERENCES `table_casestatus` (`caseStatusId`),
  ADD CONSTRAINT `fk_CategoryId` FOREIGN KEY (`fkCategoryId`) REFERENCES `table_category` (`categoryId`),
  ADD CONSTRAINT `fk_SiteId` FOREIGN KEY (`fkSiteId`) REFERENCES `table_clientsite` (`clientSiteId`),
  ADD CONSTRAINT `fk_UserId` FOREIGN KEY (`fkUserId`) REFERENCES `table_user` (`userId`);

--
-- Ketidakleluasaan untuk tabel `table_clientsite`
--
ALTER TABLE `table_clientsite`
  ADD CONSTRAINT `fk_SiteId2` FOREIGN KEY (`fkSiteId2`) REFERENCES `table_site` (`siteId`);

--
-- Ketidakleluasaan untuk tabel `table_user`
--
ALTER TABLE `table_user`
  ADD CONSTRAINT `fk_PrivilegeId` FOREIGN KEY (`fkPrivilegeId`) REFERENCES `table_privilege` (`privilegeId`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
