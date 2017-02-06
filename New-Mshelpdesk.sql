-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2017 at 03:34 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mshelpdesk`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_case`
--

CREATE TABLE `table_case` (
  `caseId` int(11) NOT NULL,
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
  `fkUserId` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `table_casestatus`
--

CREATE TABLE `table_casestatus` (
  `caseStatusId` int(11) NOT NULL,
  `caseStatusCategory` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `table_category` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_category`
--

INSERT INTO `table_category` (`categoryId`, `categoryName`) VALUES
(27, 'Hardware'),
(28, 'Software'),
(29, 'Network');

-- --------------------------------------------------------

--
-- Table structure for table `table_clientsite`
--

CREATE TABLE `table_clientsite` (
  `clientSiteId` int(11) NOT NULL,
  `clientSiteName` varchar(100) NOT NULL,
  `fkSiteId2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_clientsite`
--

INSERT INTO `table_clientsite` (`clientSiteId`, `clientSiteName`, `fkSiteId2`) VALUES
(9, 'Aries', 17);

-- --------------------------------------------------------

--
-- Table structure for table `table_privilege`
--

CREATE TABLE `table_privilege` (
  `privilegeId` int(11) NOT NULL,
  `privilegeStatus` varchar(20) NOT NULL
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

CREATE TABLE `table_setting` (
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

CREATE TABLE `table_site` (
  `siteId` int(11) NOT NULL,
  `siteName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_site`
--

INSERT INTO `table_site` (`siteId`, `siteName`) VALUES
(17, 'Artha Telekomindo, PT.');

-- --------------------------------------------------------

--
-- Table structure for table `table_user`
--

CREATE TABLE `table_user` (
  `userId` varchar(30) NOT NULL,
  `userPassword` varchar(255) NOT NULL,
  `userName` varchar(30) NOT NULL,
  `userEmail` varchar(50) NOT NULL,
  `userTelp` varchar(30) NOT NULL,
  `userNoDesktop` varchar(100) DEFAULT NULL,
  `userTypeDesktop` varchar(20) DEFAULT NULL,
  `userCompany` varchar(50) NOT NULL,
  `fkPrivilegeId` int(11) NOT NULL,
  `userStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `table_user`
--

INSERT INTO `table_user` (`userId`, `userPassword`, `userName`, `userEmail`, `userTelp`, `userNoDesktop`, `userTypeDesktop`, `userCompany`, `fkPrivilegeId`, `userStatus`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'mis@arthatel.co.id', '2049', 'at-132', 'Lenovo', 'Artha Telekomindo, PT', 1, 1),
('ivan', '827ccb0eea8a706c4c34a16891f84e7b', 'Hasan Sulivan', 'hasan.sulivan@arthatel.co.id', '2062', 'at-', 'Lenovo', 'Artha Telekomindo, PT.', 2, 1),
('operator', '8b6bc5d8046c8466359d3ac43ce362ab', 'Operator Ganteng', 'operator@arthatel.co.id', '2234', '449/AT-FA/COM/III/09', 'Workstation', 'PT. Artha Telekomindo', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_case`
--
ALTER TABLE `table_case`
  ADD PRIMARY KEY (`caseId`),
  ADD KEY `fk_UserId` (`fkUserId`),
  ADD KEY `fk_CategoryId` (`fkCategoryId`),
  ADD KEY `fk_CaseStatusId` (`fkCaseStatusId`),
  ADD KEY `fk_SiteId` (`fkSiteId`);

--
-- Indexes for table `table_casestatus`
--
ALTER TABLE `table_casestatus`
  ADD PRIMARY KEY (`caseStatusId`);

--
-- Indexes for table `table_category`
--
ALTER TABLE `table_category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `table_clientsite`
--
ALTER TABLE `table_clientsite`
  ADD PRIMARY KEY (`clientSiteId`),
  ADD KEY `fk_SiteId2` (`fkSiteId2`);

--
-- Indexes for table `table_privilege`
--
ALTER TABLE `table_privilege`
  ADD PRIMARY KEY (`privilegeId`);

--
-- Indexes for table `table_site`
--
ALTER TABLE `table_site`
  ADD PRIMARY KEY (`siteId`);

--
-- Indexes for table `table_user`
--
ALTER TABLE `table_user`
  ADD PRIMARY KEY (`userId`),
  ADD KEY `fk_PrivilegeId` (`fkPrivilegeId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_case`
--
ALTER TABLE `table_case`
  MODIFY `caseId` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `table_casestatus`
--
ALTER TABLE `table_casestatus`
  MODIFY `caseStatusId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `table_category`
--
ALTER TABLE `table_category`
  MODIFY `categoryId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `table_clientsite`
--
ALTER TABLE `table_clientsite`
  MODIFY `clientSiteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `table_site`
--
ALTER TABLE `table_site`
  MODIFY `siteId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
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
