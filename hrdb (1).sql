-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2016 at 05:08 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `alexbrotherprivilege`
--

CREATE TABLE `alexbrotherprivilege` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `req` char(1) COLLATE utf8_unicode_ci NOT NULL,
  `proc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `y` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `n` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `init` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `choice` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `choiceName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alexcoverfrm`
--

CREATE TABLE `alexcoverfrm` (
  `id` int(10) UNSIGNED NOT NULL,
  `atABBHH` text COLLATE utf8_unicode_ci NOT NULL,
  `atABBHHGroup` text COLLATE utf8_unicode_ci NOT NULL,
  `atABMC` text COLLATE utf8_unicode_ci NOT NULL,
  `atABMCGroup` text COLLATE utf8_unicode_ci NOT NULL,
  `atSAMC` text COLLATE utf8_unicode_ci NOT NULL,
  `atSAMCGroup` text COLLATE utf8_unicode_ci NOT NULL,
  `applicatSign` blob NOT NULL,
  `applicatDate` date NOT NULL,
  `applicatName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `agree` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `agreeSign` blob NOT NULL,
  `agreeDate` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alexstd`
--

CREATE TABLE `alexstd` (
  `id` int(10) UNSIGNED NOT NULL,
  `signager` blob NOT NULL,
  `printName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `nameofhealth` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `alexstd`
--

INSERT INTO `alexstd` (`id`, `signager`, `printName`, `nameofhealth`, `date`) VALUES
(314, 0x54, 'WissanukornC', 'Sriracha', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `alextrainingcer`
--

CREATE TABLE `alextrainingcer` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `specialty` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `officeAddress` text COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `signature` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appreleasefrm`
--

CREATE TABLE `appreleasefrm` (
  `id` int(10) UNSIGNED NOT NULL,
  `signager` blob NOT NULL,
  `signagerDate` date NOT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ssn` varchar(13) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `appreleasefrm`
--

INSERT INTO `appreleasefrm` (`id`, `signager`, `signagerDate`, `Name`, `ssn`) VALUES
(314, '', '2016-05-02', 'WissanukornC', '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `bloodsafety`
--

CREATE TABLE `bloodsafety` (
  `id` int(10) UNSIGNED NOT NULL,
  `signager` blob NOT NULL,
  `signagerDate` date NOT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `author` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `publisher` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `description`, `author`, `publisher`, `year`) VALUES
(314, 'AngularJs', 'AngularJs Description', 'Wissanukor', '2014', 2016);

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `code` char(2) NOT NULL,
  `name` char(52) NOT NULL,
  `population` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`code`, `name`, `population`) VALUES
('AU', 'Australia', 24016400),
('BR', 'Brazil', 205722000),
('CA', 'Canada', 35985751),
('CN', 'China', 1375210000),
('DE', 'Germany', 81459000),
('FR', 'France', 64513242),
('GB', 'United Kingdom', 65097000),
('IN', 'India', 1285400000),
('RU', 'Russia', 146519759),
('TH', 'Thailand', 874823906),
('US', 'United States', 322976000);

-- --------------------------------------------------------

--
-- Table structure for table `enrolling`
--

CREATE TABLE `enrolling` (
  `id` int(10) UNSIGNED NOT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `initial` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `dob` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ssn` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pretax15` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pretax12` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pretax9` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pretax6` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pretax3` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pretaxOther` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `investEzChoice1` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `investCZB` decimal(5,0) DEFAULT NULL,
  `investCZC` decimal(5,0) DEFAULT NULL,
  `investCZD` decimal(5,0) DEFAULT NULL,
  `investCZE` decimal(5,0) DEFAULT NULL,
  `investCZF` decimal(5,0) DEFAULT NULL,
  `investCZG` decimal(5,0) DEFAULT NULL,
  `investCZH` decimal(5,0) DEFAULT NULL,
  `investCZI` decimal(5,0) DEFAULT NULL,
  `investCZJ` decimal(5,0) DEFAULT NULL,
  `investCZK` decimal(5,0) DEFAULT NULL,
  `investMSV` decimal(5,0) DEFAULT NULL,
  `investBIF` decimal(5,0) DEFAULT NULL,
  `investCOR` decimal(5,0) DEFAULT NULL,
  `investTRN` decimal(5,0) DEFAULT NULL,
  `investIOB` decimal(5,0) DEFAULT NULL,
  `investWMI` decimal(5,0) DEFAULT NULL,
  `investPEI` decimal(5,0) DEFAULT NULL,
  `investFNI` decimal(5,0) DEFAULT NULL,
  `investICA` decimal(5,0) DEFAULT NULL,
  `investIND` decimal(5,0) DEFAULT NULL,
  `investVAL` decimal(5,0) DEFAULT NULL,
  `investANP` decimal(5,0) DEFAULT NULL,
  `investBCF` decimal(5,0) DEFAULT NULL,
  `investCGI` decimal(5,0) DEFAULT NULL,
  `investVLF` decimal(5,0) DEFAULT NULL,
  `investBBV` decimal(5,0) DEFAULT NULL,
  `investMCI` decimal(5,0) DEFAULT NULL,
  `investMSO` decimal(5,0) DEFAULT NULL,
  `investVTS` decimal(5,0) DEFAULT NULL,
  `investANW` decimal(5,0) DEFAULT NULL,
  `investDIV` decimal(5,0) DEFAULT NULL,
  `investEXP` decimal(5,0) DEFAULT NULL,
  `investSCI` decimal(5,0) DEFAULT NULL,
  `investMCS` decimal(5,0) DEFAULT NULL,
  `investSCP` decimal(5,0) DEFAULT NULL,
  `investIIF` decimal(5,0) DEFAULT NULL,
  `investVSG` decimal(5,0) DEFAULT NULL,
  `investAOM` decimal(5,0) DEFAULT NULL,
  `contractme` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callaround` int(5) DEFAULT NULL,
  `signager` blob,
  `signName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signdate` decimal(5,0) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `enrolling`
--

INSERT INTO `enrolling` (`id`, `firstName`, `lastName`, `initial`, `dob`, `ssn`, `pretax15`, `pretax12`, `pretax9`, `pretax6`, `pretax3`, `pretaxOther`, `investEzChoice1`, `investCZB`, `investCZC`, `investCZD`, `investCZE`, `investCZF`, `investCZG`, `investCZH`, `investCZI`, `investCZJ`, `investCZK`, `investMSV`, `investBIF`, `investCOR`, `investTRN`, `investIOB`, `investWMI`, `investPEI`, `investFNI`, `investICA`, `investIND`, `investVAL`, `investANP`, `investBCF`, `investCGI`, `investVLF`, `investBBV`, `investMCI`, `investMSO`, `investVTS`, `investANW`, `investDIV`, `investEXP`, `investSCI`, `investMCS`, `investSCP`, `investIIF`, `investVSG`, `investAOM`, `contractme`, `callaround`, `signager`, `signName`, `signdate`) VALUES
(314, 'Wissanukorn', 'chuha', 'MR', '2016-05-05 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1462276567),
('m130524_201442_init', 1462276572);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'wchuha', '56IWHqNfracXBQVH9-Ub6T_xI624HTZW', '$2y$13$i/Kg4Q7us665BWvNG9JFdOXAqv2HYRSsjOz/1DJK1h4enJdzyiQwe', 'xUw0_-5ES8T6jUjDqsGaDvMF5XSkkqFw_1462285494', 'wchuha@yahoo.com', 10, 1462285364, 1462285494);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alexbrotherprivilege`
--
ALTER TABLE `alexbrotherprivilege`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `alexcoverfrm`
--
ALTER TABLE `alexcoverfrm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `alexstd`
--
ALTER TABLE `alexstd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `alextrainingcer`
--
ALTER TABLE `alextrainingcer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `appreleasefrm`
--
ALTER TABLE `appreleasefrm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `bloodsafety`
--
ALTER TABLE `bloodsafety`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `enrolling`
--
ALTER TABLE `enrolling`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alexbrotherprivilege`
--
ALTER TABLE `alexbrotherprivilege`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;
--
-- AUTO_INCREMENT for table `alexcoverfrm`
--
ALTER TABLE `alexcoverfrm`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;
--
-- AUTO_INCREMENT for table `alexstd`
--
ALTER TABLE `alexstd`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;
--
-- AUTO_INCREMENT for table `alextrainingcer`
--
ALTER TABLE `alextrainingcer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;
--
-- AUTO_INCREMENT for table `appreleasefrm`
--
ALTER TABLE `appreleasefrm`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;
--
-- AUTO_INCREMENT for table `bloodsafety`
--
ALTER TABLE `bloodsafety`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=314;
--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;
--
-- AUTO_INCREMENT for table `enrolling`
--
ALTER TABLE `enrolling`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
