-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 15, 2019 at 10:00 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kmproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `appgroup`
--

CREATE TABLE `appgroup` (
  `groupid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insertdate` datetime NOT NULL,
  `insertuser` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime DEFAULT NULL,
  `updateuser` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appgroup`
--

INSERT INTO `appgroup` (`groupid`, `groupname`, `description`, `status`, `insertdate`, `insertuser`, `updatedate`, `updateuser`) VALUES
('100', 'member', 'สมาชิก', 'U', '2019-04-22 00:00:00', 'piti', NULL, NULL),
('200', 'admin', 'ผู้ดูแลการอัพเดทข้อมูล', 'U', '2019-04-23 00:00:00', 'piti', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appgroupprivilege`
--

CREATE TABLE `appgroupprivilege` (
  `groupid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `progid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insertdate` datetime DEFAULT NULL,
  `insertuser` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `updateuer` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appgroupprivilege`
--

INSERT INTO `appgroupprivilege` (`groupid`, `progid`, `insertdate`, `insertuser`, `updatedate`, `updateuer`) VALUES
('100', '001', NULL, NULL, NULL, NULL),
('100', '002', NULL, NULL, NULL, NULL),
('100', '003', NULL, NULL, NULL, NULL),
('100', '005', NULL, NULL, NULL, NULL),
('100', '006', NULL, NULL, NULL, NULL),
('100', '10', NULL, NULL, NULL, NULL),
('100', '20', NULL, NULL, NULL, NULL),
('200', '001', NULL, NULL, NULL, NULL),
('200', '002', NULL, NULL, NULL, NULL),
('200', '003', NULL, NULL, NULL, NULL),
('200', '004', NULL, NULL, NULL, NULL),
('200', '005', NULL, NULL, NULL, NULL),
('200', '006', NULL, NULL, NULL, NULL),
('200', '007', NULL, NULL, NULL, NULL),
('200', '10', NULL, NULL, NULL, NULL),
('200', '20', NULL, NULL, NULL, NULL),
('200', '30', NULL, NULL, NULL, NULL),
('200', '40', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appgroupuser`
--

CREATE TABLE `appgroupuser` (
  `agid` int(10) UNSIGNED NOT NULL,
  `groupid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL,
  `insertdate` datetime DEFAULT NULL,
  `insertuser` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `updateuser` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appgroupuser`
--

INSERT INTO `appgroupuser` (`agid`, `groupid`, `userid`, `insertdate`, `insertuser`, `updatedate`, `updateuser`) VALUES
(29, '200', 6, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appprogram`
--

CREATE TABLE `appprogram` (
  `progid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `progname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insertdate` datetime NOT NULL,
  `insertuser` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime DEFAULT NULL,
  `updateuser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appprogram`
--

INSERT INTO `appprogram` (`progid`, `progname`, `description`, `status`, `insertdate`, `insertuser`, `updatedate`, `updateuser`) VALUES
('001', 'ประวิติพนักงาน', 'ประวิติพนักงาน', 'U', '2019-04-22 00:00:00', 'piti', NULL, NULL),
('002', 'ประวิติการทำงาน', 'ประวิติการทำงาน', 'U', '2019-04-22 00:00:00', 'piti', NULL, NULL),
('003', 'หน้าหลัก', 'หน้าหลัก', 'U', '2019-04-22 00:00:00', 'piti', NULL, NULL),
('004', 'สร้างกลุ่มความรู้', 'สร้างกลุ่มความรู้', 'U', '2019-04-22 00:00:00', 'piti', NULL, NULL),
('005', 'สร้างเนื้อหาความรู้', 'สร้างเนื้อหาความรู้', 'U', '2019-04-22 00:00:00', 'piti', NULL, NULL),
('006', 'ค้นหาความรู้', 'ค้นหาความรู้', 'U', '2019-04-22 00:00:00', 'piti', NULL, NULL),
('007', 'Report', 'Report', 'U', '2019-04-22 00:00:00', 'piti', NULL, NULL),
('10', 'บุคลากร', 'บุคลากร', 'U', '2019-04-22 00:00:00', 'piti', NULL, NULL),
('20', 'องค์ความรู้ภายในองค์กรณ์', 'องค์ความรู้ภายในองค์กรณ์', 'U', '2019-04-22 00:00:00', 'piti', NULL, NULL),
('30', 'Update', 'อัพเดทข้อมูลเพื่อทำการแนะนำบทความ', '', '0000-00-00 00:00:00', '', NULL, NULL),
('40', 'จัดการผู้ดูแลระบบ', 'จัดการผู้ดูแลระบบ', 'U', '2019-05-05 00:00:00', 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `appuser`
--

CREATE TABLE `appuser` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employeecode` int(11) DEFAULT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remark` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registerdate` datetime DEFAULT NULL,
  `registeruser` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insertdate` datetime DEFAULT NULL,
  `insertuser` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updatedate` datetime DEFAULT NULL,
  `updateuser` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appuser`
--

INSERT INTO `appuser` (`id`, `userid`, `password`, `employeecode`, `status`, `remark`, `registerdate`, `registeruser`, `insertdate`, `insertuser`, `updatedate`, `updateuser`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'admin', '$2y$10$8MEqHt7vYqcCZ5HpKuKfu.PqPX06sGwCTUfIW9DK2BI2mIIcFfNRu', NULL, '200', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'E5xY56n7XW7NnroqL7d3FxN7TxjpNMEy6mvXAo85juUfdpOI6cvETRYRiTpk', '2019-04-23 01:58:43', '2019-04-23 01:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `hcode` int(10) UNSIGNED NOT NULL,
  `groupcode` int(10) UNSIGNED NOT NULL,
  `subjcode` int(10) UNSIGNED NOT NULL,
  `usercode` int(10) UNSIGNED NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kmcomment`
--

CREATE TABLE `kmcomment` (
  `commentcode` int(10) UNSIGNED NOT NULL,
  `subjcode` int(10) UNSIGNED NOT NULL,
  `sort` int(10) UNSIGNED DEFAULT NULL,
  `commentuserid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentcontent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `insertdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insertuser` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` timestamp NULL DEFAULT NULL,
  `updateuser` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kmcontent`
--

CREATE TABLE `kmcontent` (
  `contentcode` int(10) UNSIGNED NOT NULL,
  `subjcode` int(10) UNSIGNED NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `contentname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `contentimage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagecaption` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `insertdate` datetime DEFAULT NULL,
  `insertuser` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateuser` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kmgroup`
--

CREATE TABLE `kmgroup` (
  `groupcode` int(10) UNSIGNED NOT NULL,
  `groupname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `status` enum('Active','Disable') COLLATE utf8mb4_unicode_ci NOT NULL,
  `insertdate` datetime NOT NULL,
  `insertuser` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` datetime DEFAULT NULL,
  `updateuser` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kmsubject`
--

CREATE TABLE `kmsubject` (
  `subjcode` int(10) UNSIGNED NOT NULL,
  `subjtype` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjuserid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjectname` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subjectkey` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `groupcode` int(10) UNSIGNED NOT NULL,
  `upvotecount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `downvotecount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `commentcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `viewcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `searchcount` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publishdate` datetime DEFAULT NULL,
  `insertdate` datetime NOT NULL,
  `insertuser` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updateuser` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kmvote`
--

CREATE TABLE `kmvote` (
  `votecode` int(10) UNSIGNED NOT NULL,
  `subjcode` int(10) UNSIGNED NOT NULL,
  `votetype` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `voteuserid` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `insertdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `insertuser` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updatedate` timestamp NULL DEFAULT NULL,
  `updateuser` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_appuser_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_10_25_044417_kmgroup', 1),
(4, '2018_11_01_031901_appprogram', 1),
(5, '2018_11_01_033654_appgroup', 1),
(6, '2018_11_01_034444_appgroupprivilege', 1),
(7, '2018_11_01_034851_appgroupuser', 1),
(8, '2018_11_02_041127_kmsubject', 1),
(9, '2018_11_05_030552_kmcontent', 1),
(10, '2018_11_12_090024_kmcomment', 1),
(11, '2018_11_12_090910_kmvote', 1),
(12, '2019_04_22_104836_history', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `update`
--

CREATE TABLE `update` (
  `id` int(11) NOT NULL,
  `antecedent` int(10) UNSIGNED NOT NULL,
  `consequent` int(11) UNSIGNED NOT NULL,
  `support` float NOT NULL,
  `confidence` float NOT NULL,
  `insertdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `groupcode` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appgroup`
--
ALTER TABLE `appgroup`
  ADD PRIMARY KEY (`groupid`);

--
-- Indexes for table `appgroupprivilege`
--
ALTER TABLE `appgroupprivilege`
  ADD PRIMARY KEY (`groupid`,`progid`),
  ADD KEY `progid` (`progid`);

--
-- Indexes for table `appgroupuser`
--
ALTER TABLE `appgroupuser`
  ADD PRIMARY KEY (`agid`),
  ADD KEY `appgroupuser_groupid_foreign` (`groupid`),
  ADD KEY `appgroupuser_userid_foreign` (`userid`);

--
-- Indexes for table `appprogram`
--
ALTER TABLE `appprogram`
  ADD PRIMARY KEY (`progid`);

--
-- Indexes for table `appuser`
--
ALTER TABLE `appuser`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`hcode`),
  ADD KEY `groupcode` (`groupcode`),
  ADD KEY `subjcode` (`subjcode`),
  ADD KEY `usercode` (`usercode`);

--
-- Indexes for table `kmcomment`
--
ALTER TABLE `kmcomment`
  ADD PRIMARY KEY (`commentcode`);

--
-- Indexes for table `kmcontent`
--
ALTER TABLE `kmcontent`
  ADD PRIMARY KEY (`contentcode`),
  ADD KEY `kmcontent_subjcode_foreign` (`subjcode`);

--
-- Indexes for table `kmgroup`
--
ALTER TABLE `kmgroup`
  ADD PRIMARY KEY (`groupcode`);

--
-- Indexes for table `kmsubject`
--
ALTER TABLE `kmsubject`
  ADD PRIMARY KEY (`subjcode`),
  ADD KEY `kmsubject_groupcode_foreign` (`groupcode`);

--
-- Indexes for table `kmvote`
--
ALTER TABLE `kmvote`
  ADD PRIMARY KEY (`votecode`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `update`
--
ALTER TABLE `update`
  ADD PRIMARY KEY (`id`),
  ADD KEY `antecedent` (`antecedent`),
  ADD KEY `groupcode` (`groupcode`),
  ADD KEY `consequent` (`consequent`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appgroupuser`
--
ALTER TABLE `appgroupuser`
  MODIFY `agid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `appuser`
--
ALTER TABLE `appuser`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `kmcomment`
--
ALTER TABLE `kmcomment`
  MODIFY `commentcode` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kmcontent`
--
ALTER TABLE `kmcontent`
  MODIFY `contentcode` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kmgroup`
--
ALTER TABLE `kmgroup`
  MODIFY `groupcode` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kmsubject`
--
ALTER TABLE `kmsubject`
  MODIFY `subjcode` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `kmvote`
--
ALTER TABLE `kmvote`
  MODIFY `votecode` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `update`
--
ALTER TABLE `update`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appgroupprivilege`
--
ALTER TABLE `appgroupprivilege`
  ADD CONSTRAINT `appgroupprivilege_ibfk_1` FOREIGN KEY (`groupid`) REFERENCES `appgroup` (`groupid`),
  ADD CONSTRAINT `appgroupprivilege_ibfk_2` FOREIGN KEY (`progid`) REFERENCES `appprogram` (`progid`);

--
-- Constraints for table `appgroupuser`
--
ALTER TABLE `appgroupuser`
  ADD CONSTRAINT `appgroupuser_groupid_foreign` FOREIGN KEY (`groupid`) REFERENCES `appgroup` (`groupid`),
  ADD CONSTRAINT `appgroupuser_userid_foreign` FOREIGN KEY (`userid`) REFERENCES `appuser` (`id`);

--
-- Constraints for table `appuser`
--
ALTER TABLE `appuser`
  ADD CONSTRAINT `appuser_ibfk_1` FOREIGN KEY (`status`) REFERENCES `appgroup` (`groupid`);

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`groupcode`) REFERENCES `kmgroup` (`groupcode`),
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`subjcode`) REFERENCES `kmsubject` (`subjcode`),
  ADD CONSTRAINT `history_ibfk_3` FOREIGN KEY (`usercode`) REFERENCES `appuser` (`id`);

--
-- Constraints for table `kmcontent`
--
ALTER TABLE `kmcontent`
  ADD CONSTRAINT `kmcontent_subjcode_foreign` FOREIGN KEY (`subjcode`) REFERENCES `kmsubject` (`subjcode`);

--
-- Constraints for table `kmsubject`
--
ALTER TABLE `kmsubject`
  ADD CONSTRAINT `kmsubject_groupcode_foreign` FOREIGN KEY (`groupcode`) REFERENCES `kmgroup` (`groupcode`);

--
-- Constraints for table `update`
--
ALTER TABLE `update`
  ADD CONSTRAINT `update_ibfk_1` FOREIGN KEY (`antecedent`) REFERENCES `kmsubject` (`subjcode`),
  ADD CONSTRAINT `update_ibfk_2` FOREIGN KEY (`groupcode`) REFERENCES `kmgroup` (`groupcode`),
  ADD CONSTRAINT `update_ibfk_3` FOREIGN KEY (`consequent`) REFERENCES `kmsubject` (`subjcode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
