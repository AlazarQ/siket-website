-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2024 at 03:48 AM
-- Server version: 10.6.19-MariaDB-cll-lve
-- PHP Version: 8.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siketban_siketbank`
--
CREATE DATABASE IF NOT EXISTS `siketban_siketbank` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `siketban_siketbank`;

-- --------------------------------------------------------

--
-- Table structure for table `annual`
--

CREATE TABLE `annual` (
  `id` int(11) NOT NULL,
  `report_name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text NOT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'en',
  `parent_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `annual`
--

INSERT INTO `annual` (`id`, `report_name`, `file`, `language`, `parent_id`, `date_created`, `status`) VALUES
(2, 'Annual Report', '/files/24-07-02-06-53-certificates-.pdf', 'en', NULL, '2024-07-02', 'Suspended'),
(3, 'Annula report 1', 'https://admin.siketbank.com/files/24-07-10-08-25-my request passport.pdf', 'en', NULL, '2024-07-10', 'Suspended'),
(4, 'Baget', 'https://admin.siketbank.com/files/24-07-19-08-12-new passport request.pdf', 'en', NULL, '2024-07-19', 'Suspended');

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

CREATE TABLE `atm` (
  `id` bigint(20) NOT NULL,
  `location` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_lat` varchar(100) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'en',
  `parent_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `atm`
--

INSERT INTO `atm` (`id`, `location`, `lang_lat`, `name`, `language`, `parent_id`, `date_created`, `status`) VALUES
(4, 'Dembel city', '1.34344546,38.121212235', 'Getu commercial', 'en', NULL, '2024-07-04', 'Suspend'),
(5, 'Bole atlas AREA', '1.34345,38.344545', 'Bole Atlas', 'en', NULL, '2024-07-10', 'Suspend'),
(6, 'Around dembel city', '1.234454333,38.3452323', 'Dembel ATM', 'en', NULL, '2024-07-19', 'Suspend'),
(7, 'adwa musium area', '9.005401,  38.763611', 'adwa branch', 'en', NULL, '2024-08-16', 'Suspend');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `link` text DEFAULT NULL,
  `file` text DEFAULT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'en',
  `parent_id` int(11) DEFAULT NULL,
  `redirect_link` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `title`, `link`, `file`, `language`, `parent_id`, `redirect_link`, `date_created`, `status`) VALUES
(4, 'The basis of your success', NULL, 'https://admin.siketbank.com/files/24-07-05-09-33-banner2.jpg', 'en', NULL, NULL, '2024-07-05', 'Suspend'),
(5, 'Siket bank\'s Adawa memorial branch', NULL, 'https://admin.siketbank.com/files/24-07-05-09-34-banner.jpg', 'en', NULL, NULL, '2024-07-05', 'Suspend'),
(6, 'Damee Adwaa Muuziyeemii', NULL, 'https://admin.siketbank.com/files/24-07-05-09-34-banner.jpg', 'om', 5, NULL, '2024-07-05', 'Suspend'),
(7, 'Micro Loan', NULL, 'https://admin.siketbank.com/files/24-07-19-08-26-borana.jpg', 'en', NULL, NULL, '2024-07-19', 'Suspend'),
(8, 'Siket Bank recorded a profit of 1.6 billion birr in the fiscal year 2023/24', NULL, 'https://admin.siketbank.com/files/24-08-15-13-19-HN1A1796_1_optimized_150.jpg', 'en', NULL, NULL, '2024-08-15', 'Suspend'),
(9, 'Siket Bank recorded a profit of 1.6 billion birr in the fiscal year 2023/24', NULL, 'https://admin.siketbank.com/files/24-09-06-09-09-HN1A1790.JPG', 'en', NULL, NULL, '2024-08-22', 'Active'),
(10, 'Siket Bank donated 2 million Birr support to our people who were affected by the land slide in Gofa Zone', NULL, 'https://admin.siketbank.com/files/24-09-06-09-11-HN1A1693.JPG', 'en', NULL, NULL, '2024-09-06', 'Active'),
(11, 'Siket Bank donated 1.5 million birr to support Wubanchi charity organization.', NULL, 'https://admin.siketbank.com/files/24-09-13-18-17-photo_2024-09-09_14-05-31.jpg', 'en', NULL, NULL, '2024-09-14', 'Active'),
(12, 'Siket Bank donated more than 2 million birr to various sections of the society.', NULL, 'https://admin.siketbank.com/files/24-09-17-07-24-photo_2024-09-09_17-30-19.jpg', 'en', NULL, NULL, '2024-09-14', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `board_director`
--

CREATE TABLE `board_director` (
  `id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `edu_level` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text DEFAULT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'en',
  `parent_id` int(11) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL,
  `cheif_id` bigint(20) DEFAULT NULL,
  `order_cheif` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `board_director`
--

INSERT INTO `board_director` (`id`, `name`, `edu_level`, `experience`, `position`, `file`, `language`, `parent_id`, `type`, `date_created`, `status`, `cheif_id`, `order_cheif`) VALUES
(11, 'DAMTEW ALEMAYEHU', 'Master degree', '20 Years', 'President', 'https://admin.siketbank.com/files/24-09-17-08-56-Updated_1_optimized_300.jpg', 'en', NULL, 'president', '2024-07-01', 'Active', NULL, NULL),
(12, 'BERHANU URGESSA', 'Master in Business Administrator', '13 Years', 'A/VP - Credit Banking', 'https://admin.siketbank.com/files/24-08-20-08-46-VP Credit.JPG', 'en', NULL, 'excutive', '2024-07-01', 'Active', NULL, 4),
(13, 'MEAZA WONDIMU', 'Master in marketing', '13 Years', 'Vice President - Corporate Strategy & Marketing', 'https://admin.siketbank.com/files/24-08-20-08-50-VP Strategy.JPG', 'en', NULL, 'excutive', '2024-07-01', 'Active', NULL, 2),
(14, 'MESERET TSEGAYE', 'Master in finance', '15 Years', 'Vice President - Finance & Facility Management', 'https://admin.siketbank.com/files/24-08-20-09-04-VP Finance.JPG', 'en', NULL, 'excutive', '2024-07-01', 'Active', NULL, 3),
(15, 'WEGENIE BEKELE', 'Master in Banking Operation', '16 Years', 'Vice President - Banking Operation', 'https://admin.siketbank.com/files/24-08-20-09-09-VP Banking.JPG', 'en', NULL, 'excutive', '2024-07-01', 'Active', NULL, 1),
(16, 'TILAHUN WORKU', 'Masters in leadership', '13 Years', 'Chair Person', 'https://admin.siketbank.com/files/24-09-02-11-33-logggg_deep_2_1_optimized_300.png', 'en', NULL, 'chairman', '2024-07-10', 'Active', NULL, NULL),
(17, 'Samuel T', 'Degree in computerscience', '21 Years', 'Director', 'https://admin.siketbank.com/files/24-07-19-08-05-siket-login.jpg', 'en', NULL, 'director', '2024-07-19', 'Suspend', NULL, NULL),
(18, 'Worku T', 'Degree in accounting', '6 years', 'Chief', 'https://admin.siketbank.com/files/24-07-19-08-08-siket-login.jpg', 'en', NULL, 'excutive', '2024-07-19', 'Suspend', NULL, 10),
(20, 'BIKILA  MULUNA', 'Masters In Computer Science', '8', 'Director - Core Systems and Data Analytics', 'https://admin.siketbank.com/files/24-08-18-15-20-HN1A8688-min.JPG', 'en', NULL, 'director', '2024-08-15', 'Suspend', 25, NULL),
(21, 'HABTAMU SHIFERAW', 'Masters', '25', 'Chief - Risk and Compliance Management', 'https://admin.siketbank.com/files/24-08-20-09-12-Chief, Risk.JPG', 'en', NULL, 'excutive', '2024-08-15', 'Active', NULL, 6),
(22, 'FEYERA JALETA', 'Masters in MBA', '15', 'Chief - Human Resource Management', 'https://admin.siketbank.com/files/24-09-16-08-09-Feyera 2.jpg', 'en', NULL, 'excutive', '2024-08-15', 'Active', NULL, 7),
(23, 'TOKKUMMA JEBESSA', 'Masters', '20', 'Chief - Internal Audit Service', 'https://admin.siketbank.com/files/24-09-13-16-30-Tokuma_2_1_optimized.jpg', 'en', NULL, 'excutive', '2024-08-15', 'Active', NULL, 8),
(24, 'ANAOL FERID', 'Masters in Law', '20', 'Chief - Legal Services', 'https://admin.siketbank.com/files/24-08-20-09-32-Chief, Legal.JPG', 'en', NULL, 'excutive', '2024-08-15', 'Active', NULL, 9),
(25, 'YONAS WORKU', 'Masters In Computer Science', '18', 'Chief - Information System Officer', 'https://admin.siketbank.com/files/24-08-20-09-34-Chief, IT.JPG', 'en', NULL, 'excutive', '2024-08-15', 'Active', NULL, 5),
(26, 'AYESHA SHIFA', 'Masters', '21', 'Executive Assistant', 'https://admin.siketbank.com/files/24-08-20-09-39-Chief, President Advisor.JPG', 'en', NULL, 'excutive', '2024-08-15', 'Active', NULL, 12),
(27, 'Dr. MESKEREM MITIKU', 'PhD in Management', '25 years', 'Deputy Chair Person', 'https://admin.siketbank.com/files/24-09-28-09-07-Web.png', 'en', NULL, 'board', '2024-08-15', 'Active', NULL, 1),
(28, 'HULAGERISH TAZEZ', 'Masters in Management', '20 year', 'Member', 'https://admin.siketbank.com/files/24-09-28-09-07-Web.png', 'en', NULL, 'board', '2024-08-15', 'Active', NULL, 8),
(29, 'GETU BUSA', 'Masters in Management', '20 years', 'Member', 'https://admin.siketbank.com/files/24-09-28-09-07-Web.png', 'en', NULL, 'board', '2024-08-15', 'Active', NULL, 4),
(30, 'GEZAHEGN GEBREMARIAM', 'Masters in Management', '20 years', 'Member', 'https://admin.siketbank.com/files/24-09-28-09-07-Web.png', 'en', NULL, 'board', '2024-08-15', 'Active', NULL, 7),
(31, 'TILAHUN TADESSE', 'Masters in Management', '23 years', 'Member', 'https://admin.siketbank.com/files/24-09-28-09-06-Web.png', 'en', NULL, 'board', '2024-08-15', 'Active', NULL, 6),
(32, 'HIKMA KEYREDIN', 'Masters in Management', '20 years', 'Member', 'https://admin.siketbank.com/files/24-09-02-11-42-logggg_deep_2_1_optimized_300.png', 'en', NULL, 'board', '2024-08-15', 'Active', NULL, 2),
(33, 'MIKIAS MULUGETA', 'Masters in Management', '20 years', 'Member', 'https://admin.siketbank.com/files/24-09-02-11-43-logggg_deep_2_1_optimized_300.png', 'en', NULL, 'board', '2024-08-15', 'Active', NULL, 5),
(34, 'TSIGEREDA ASHENAFI', 'Masters', '22', 'Chief - International Banking', 'https://admin.siketbank.com/files/24-09-16-08-09-Tsigereda 2.jpg', 'en', NULL, 'excutive', '2024-08-19', 'Active', NULL, 11),
(35, 'TSIGEREDA ASHENAFI', 'Masters', '22', 'Chief - International Banking', 'https://admin.siketbank.com/files/24-08-18-15-08-download.png', 'en', NULL, 'excutive', '2024-08-19', 'Suspend', NULL, 11),
(36, 'TOLESA TAFESSE', 'Masters In Computer Science', '10', 'Director - IT Infrastructure & Service Management', 'https://admin.siketbank.com/files/24-08-19-08-17-HN1A8697.JPG', 'en', NULL, 'director', '2024-08-19', 'Suspend', 25, NULL),
(37, 'TOLESA TAFESSE', 'Masters In Computer Science', '10', 'Director - IT Infrastructure & Service Management', 'https://admin.siketbank.com/files/24-08-19-08-14-download.png', 'en', NULL, 'director', '2024-08-19', 'Suspend', 25, NULL),
(38, 'YOHANNES CHALI', 'Masters In Computer Science', '10', 'Director - IS security', 'https://admin.siketbank.com/files/24-08-19-08-22-HN1A8681.JPG', 'en', NULL, 'director', '2024-08-19', 'Suspend', 25, NULL),
(39, 'DANIEL TEKA', 'MBA', '15', 'Directory - Digital Banking', 'https://admin.siketbank.com/files/24-08-19-08-43-HN1A8680.JPG', 'en', NULL, 'director', '2024-08-19', 'Suspend', 15, NULL),
(40, 'Melese Tirfessa', 'Masters in Management', '15 years', 'Director, Marketing & Corporate Communication', 'https://admin.siketbank.com/files/24-08-20-09-48-Director, Marketing.JPG', 'en', NULL, 'director', '2024-08-19', 'Suspend', 13, NULL),
(41, 'Dr. Michael Senbeta', 'PhD in Management', '23 years', 'Director, Research  & Development', 'https://admin.siketbank.com/files/24-08-20-09-49-Director, Research.JPG', 'en', NULL, 'director', '2024-08-19', 'Suspend', 13, NULL),
(42, 'Fitsum Arega', 'Masters in Management', '23 years', 'Director, Corporate Strategy', 'https://admin.siketbank.com/files/24-08-20-09-52-Director, Strategy.JPG', 'en', NULL, 'director', '2024-08-19', 'Suspend', 13, NULL),
(43, 'Wesenu Dereje', 'Masters in Management', '20 years', 'Director, Corporate Banking', 'https://admin.siketbank.com/files/24-08-20-09-55-Director, Corporate Banking.JPG', 'en', NULL, 'director', '2024-08-19', 'Suspend', 12, NULL),
(44, 'Addisu Erana', 'Masters in Management', '23 years', 'Director, Business Banking', 'https://admin.siketbank.com/files/24-08-20-09-55-Director, Business Banking.JPG', 'en', NULL, 'director', '2024-08-19', 'Suspend', 12, NULL),
(45, 'Lulie Chanyalew', 'Masters in Management', '23 years', 'Director, Asset & Consumer Loan', 'https://admin.siketbank.com/files/24-08-20-13-15-Director_Consumer_Loan.jpg', 'en', NULL, 'director', '2024-08-20', 'Suspend', 12, NULL),
(46, 'Biruk Mekonnen', 'Masters in Management', '25 years', 'Director, Credit Analysis and Portfolio Management', 'https://admin.siketbank.com/files/24-08-20-13-24-Director_Credit_Analysis.jpg', 'en', NULL, 'director', '2024-08-20', 'Suspend', 12, NULL),
(47, 'Daniel Teka', 'Masters in Management', '23 years', 'Director, Digital Banking', 'https://admin.siketbank.com/files/24-08-20-18-06-Director_Digital_Banking.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 15, NULL),
(48, 'Tinsae Abera', 'MBA', '15 years', 'Director, Operation Support', 'https://admin.siketbank.com/files/24-08-20-18-17-Director_Operation_Support.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 15, NULL),
(49, 'Selamawit Tesfaye', 'MBA', '25 years', 'Director, Customer Experience', 'https://admin.siketbank.com/files/24-08-20-18-18-Director_Customer_Exp.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 15, NULL),
(50, 'Desalegn Tsegaye', 'Masters in Management', '20 years', 'Director, Microfinance Banking', 'https://admin.siketbank.com/files/24-08-20-18-24-Director_Microfinance.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 15, NULL),
(51, 'Mohammednur Awel', 'MBA', '15 years', 'Director, Interest Free Banking', 'https://admin.siketbank.com/files/24-08-20-18-32-Director_Interest_Free_Banking.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 15, NULL),
(52, 'Mulu Abera', 'MBA', '23 years', 'Director, Arada District', 'https://admin.siketbank.com/files/24-08-20-18-39-Director_Arada.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 15, NULL),
(53, 'Henok Tsegaye', 'Masters in Management', '20 years', 'Director, Mercato District', 'https://admin.siketbank.com/files/24-08-20-18-45-Director_Mercato.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 15, NULL),
(54, 'Habtemariyam Legesse', 'MBA', '23 years', 'Director, South West District', 'https://admin.siketbank.com/files/24-08-20-18-55-Director_South_West.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 15, NULL),
(55, 'Tarekegn Tadele', 'Masters in Management', '20 years', 'Director, North District', 'https://admin.siketbank.com/files/24-08-20-18-59-Director_North.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 15, NULL),
(56, 'Legese Mengistu', 'Masters in Management', '20 years', 'Director, North East District', 'https://admin.siketbank.com/files/24-08-21-05-49-Director_North_East.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 15, NULL),
(57, 'Asefa Mersa', 'Masters in Management', '20 years', 'Director, East Director', 'https://admin.siketbank.com/files/24-08-21-05-55-Director_East_District.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 15, NULL),
(58, 'Gudisa Debeli', 'Masters in Management', '20 years', 'Director, West District', 'https://admin.siketbank.com/files/24-08-21-06-02-Director_West_District.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 15, NULL),
(59, 'Getnet Demissie', 'MBA', '23 years', 'Director, Finance and Treasury', 'https://admin.siketbank.com/files/24-08-21-06-06-Director_Finance__Treasury.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 14, NULL),
(60, 'Mesfin Fituma', 'MBA', '20 years', 'Director, Investment and Third Party Fund Management', 'https://admin.siketbank.com/files/24-08-21-06-19-Director_Finance_Investment.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 14, NULL),
(61, 'Mulugeta Melkamu', 'MBA', '23 years', 'Director, Procurement & Contract Administration', 'https://admin.siketbank.com/files/24-08-21-06-24-Director_Finance_Procurement.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 14, NULL),
(62, 'Bekele Belay', 'MBA', '25 years', 'Director, Property & Project Administration', 'https://admin.siketbank.com/files/24-08-21-06-27-Director_Finance_Property.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 14, NULL),
(63, 'Bikila Muluna', 'Computer Science', '20 years', 'Director, Core Systems & Data Analytics', 'https://admin.siketbank.com/files/24-08-21-06-36-Director_Core_System.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 25, NULL),
(64, 'Tolesa Tafesse', 'Computer Science', '13 years', 'Director, IT Infrastructure & Service Management', 'https://admin.siketbank.com/files/24-08-21-06-41-Director_Infrastructure.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 25, NULL),
(65, 'Yohannis Chali', 'Computer Science', '20 years', 'Director, IS Security', 'https://admin.siketbank.com/files/24-08-21-06-47-Director_IS_Security.jpg', 'en', NULL, 'director', '2024-08-21', 'Suspend', 25, NULL),
(66, 'MESKEREM KINFEGEBRIEL', 'Masters in Management', '23 years', 'Member', 'https://admin.siketbank.com/files/24-09-02-16-37-logggg_deep_2_1_optimized_300.png', 'en', NULL, 'board', '2024-09-03', 'Active', NULL, 3);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` bigint(20) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_id` bigint(20) NOT NULL,
  `location` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_lat` varchar(100) DEFAULT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'en',
  `parent_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `name`, `district_id`, `location`, `lang_lat`, `language`, `parent_id`, `date_created`, `status`) VALUES
(1, 'Aba Koran ', 11, 'Aba Koran ', '', 'en', 0, '2024-10-21', 'Active'),
(2, 'Adwa Victory Memorial', 11, 'Adwa Victory Memorial', '', 'en', 0, '2024-10-21', 'Active'),
(3, 'African Hibret ', 11, 'African Hibret ', '', 'en', 0, '2024-10-21', 'Active'),
(4, 'Andinet Park ', 11, 'Andinet Park ', '', 'en', 0, '2024-10-21', 'Active'),
(5, 'Arada ', 11, 'Arada ', '', 'en', 0, '2024-10-21', 'Active'),
(6, 'Arat Kilo ', 11, 'Arat Kilo ', '', 'en', 0, '2024-10-21', 'Active'),
(7, 'Beherawi Theater', 11, 'Beherawi Theater', '', 'en', 0, '2024-10-21', 'Active'),
(8, 'Bole Olompia ', 11, 'Bole Olompia ', '', 'en', 0, '2024-10-21', 'Active'),
(9, 'Bulgaria ', 11, 'Bulgaria ', '', 'en', 0, '2024-10-21', 'Active'),
(10, 'Churchil ', 11, 'Churchil ', '', 'en', 0, '2024-10-21', 'Active'),
(11, 'Dembel ', 11, 'Dembel ', '', 'en', 0, '2024-10-21', 'Active'),
(12, 'Genet Hotel Akababi', 11, 'Genet Hotel Akababi', '', 'en', 0, '2024-10-21', 'Active'),
(13, 'Kazanchis ', 11, 'Kazanchis ', '', 'en', 0, '2024-10-21', 'Active'),
(14, 'Kazanchis Total ', 11, 'Kazanchis Total ', '', 'en', 0, '2024-10-21', 'Active'),
(15, 'Lancha ', 11, 'Lancha ', '', 'en', 0, '2024-10-21', 'Active'),
(16, 'Mesqel Flower ', 11, 'Mesqel Flower ', '', 'en', 0, '2024-10-21', 'Active'),
(17, 'Piassa Amper ', 11, 'Piassa Amper ', '', 'en', 0, '2024-10-21', 'Active'),
(18, 'Piassa ', 11, 'Piassa ', '', 'en', 0, '2024-10-21', 'Active'),
(19, 'Piassa Gedam Sefer', 11, 'Piassa Gedam Sefer', '', 'en', 0, '2024-10-21', 'Active'),
(20, 'Ras Desta ', 11, 'Ras Desta ', '', 'en', 0, '2024-10-21', 'Active'),
(21, 'Richie ', 11, 'Richie ', '', 'en', 0, '2024-10-21', 'Active'),
(22, 'Sanford ', 11, 'Sanford ', '', 'en', 0, '2024-10-21', 'Active'),
(23, 'Semen Mazegaja ', 11, 'Semen Mazegaja ', '', 'en', 0, '2024-10-21', 'Active'),
(24, 'Sidist Kilo ', 11, 'Sidist Kilo ', '', 'en', 0, '2024-10-21', 'Active'),
(25, 'Washington Adebabay', 11, 'Washington Adebabay', '', 'en', 0, '2024-10-21', 'Active'),
(26, 'Adama ', 9, 'Adama ', '', 'en', 0, '2024-10-21', 'Active'),
(27, 'Adey Ababa ', 9, 'Adey Ababa ', '', 'en', 0, '2024-10-21', 'Active'),
(28, 'Akaki Alem Bank ', 9, 'Akaki Alem Bank ', '', 'en', 0, '2024-10-21', 'Active'),
(29, 'Akaki Gebeya ', 9, 'Akaki Gebeya ', '', 'en', 0, '2024-10-21', 'Active'),
(30, 'Akaki Maseltegna', 9, 'Akaki Maseltegna', '', 'en', 0, '2024-10-21', 'Active'),
(31, 'Amiche ', 9, 'Amiche ', '', 'en', 0, '2024-10-21', 'Active'),
(32, 'Angatu ', 9, 'Angatu ', '', 'en', 0, '2024-10-21', 'Active'),
(33, 'Beseka ', 9, 'Beseka ', '', 'en', 0, '2024-10-21', 'Active'),
(34, 'Bishoftu ', 9, 'Bishoftu ', '', 'en', 0, '2024-10-21', 'Active'),
(35, 'Bole 24 ', 9, 'Bole 24 ', '', 'en', 0, '2024-10-21', 'Active'),
(36, 'Bole 93 Mazoriya', 9, 'Bole 93 Mazoriya', '', 'en', 0, '2024-10-21', 'Active'),
(37, 'Bole Bulbula ', 9, 'Bole Bulbula ', '', 'en', 0, '2024-10-21', 'Active'),
(38, 'Bole Michael ', 9, 'Bole Michael ', '', 'en', 0, '2024-10-21', 'Active'),
(39, 'Bole Rwanda ', 9, 'Bole Rwanda ', '', 'en', 0, '2024-10-21', 'Active'),
(40, 'Bole Shala ', 9, 'Bole Shala ', '', 'en', 0, '2024-10-21', 'Active'),
(41, 'Dukem ', 9, 'Dukem ', '', 'en', 0, '2024-10-21', 'Active'),
(42, 'Emperiyal ', 9, 'Emperiyal ', '', 'en', 0, '2024-10-21', 'Active'),
(43, 'Gara Duba ', 9, 'Gara Duba ', '', 'en', 0, '2024-10-21', 'Active'),
(44, 'Gelan Condominium', 9, 'Gelan Condominium', '', 'en', 0, '2024-10-21', 'Active'),
(45, 'Gerji ', 9, 'Gerji ', '', 'en', 0, '2024-10-21', 'Active'),
(46, 'Gurd Shola ', 9, 'Gurd Shola ', '', 'en', 0, '2024-10-21', 'Active'),
(47, 'Jati ', 9, 'Jati ', '', 'en', 0, '2024-10-21', 'Active'),
(48, 'Kaliti ', 9, 'Kaliti ', '', 'en', 0, '2024-10-21', 'Active'),
(49, 'Kaliti Gebriel ', 9, 'Kaliti Gebriel ', '', 'en', 0, '2024-10-21', 'Active'),
(50, 'Kaliti Total ', 9, 'Kaliti Total ', '', 'en', 0, '2024-10-21', 'Active'),
(51, 'Kilinto ', 9, 'Kilinto ', '', 'en', 0, '2024-10-21', 'Active'),
(52, 'Korea Hospital ', 9, 'Korea Hospital ', '', 'en', 0, '2024-10-21', 'Active'),
(53, 'Summit ', 9, 'Summit ', '', 'en', 0, '2024-10-21', 'Active'),
(54, 'Urael ', 9, 'Urael ', '', 'en', 0, '2024-10-21', 'Active'),
(55, 'Abebe Bikila ', 8, 'Abebe Bikila ', '', 'en', 0, '2024-10-21', 'Active'),
(56, 'Abenet ', 8, 'Abenet ', '', 'en', 0, '2024-10-21', 'Active'),
(57, 'Addis Ketema ', 8, 'Addis Ketema ', '', 'en', 0, '2024-10-21', 'Active'),
(58, 'Addisu Michael ', 8, 'Addisu Michael ', '', 'en', 0, '2024-10-21', 'Active'),
(59, 'Adot ', 8, 'Adot ', '', 'en', 0, '2024-10-21', 'Active'),
(60, 'Amanuel ', 8, 'Amanuel ', '', 'en', 0, '2024-10-21', 'Active'),
(61, 'Asko ', 8, 'Asko ', '', 'en', 0, '2024-10-21', 'Active'),
(62, 'Atena Tera ', 8, 'Atena Tera ', '', 'en', 0, '2024-10-21', 'Active'),
(63, 'Autobis Tera ', 8, 'Autobis Tera ', '', 'en', 0, '2024-10-21', 'Active'),
(64, 'Balcha ', 8, 'Balcha ', '', 'en', 0, '2024-10-21', 'Active'),
(65, 'Berbere Berenda ', 8, 'Berbere Berenda ', '', 'en', 0, '2024-10-21', 'Active'),
(66, 'Bisrate Gebriel ', 8, 'Bisrate Gebriel ', '', 'en', 0, '2024-10-21', 'Active'),
(67, 'Efoyita ', 8, 'Efoyita ', '', 'en', 0, '2024-10-21', 'Active'),
(68, 'Gola ', 8, 'Gola ', '', 'en', 0, '2024-10-21', 'Active'),
(69, 'Holland Embassy ', 8, 'Holland Embassy ', '', 'en', 0, '2024-10-21', 'Active'),
(70, 'Kidist Lideta ', 8, 'Kidist Lideta ', '', 'en', 0, '2024-10-21', 'Active'),
(71, 'Kolfe ', 8, 'Kolfe ', '', 'en', 0, '2024-10-21', 'Active'),
(72, 'Kuas Meda ', 8, 'Kuas Meda ', '', 'en', 0, '2024-10-21', 'Active'),
(73, 'Lideta ', 8, 'Lideta ', '', 'en', 0, '2024-10-21', 'Active'),
(74, 'Lideta Firdbet ', 8, 'Lideta Firdbet ', '', 'en', 0, '2024-10-21', 'Active'),
(75, 'Merkato ', 8, 'Merkato ', '', 'en', 0, '2024-10-21', 'Active'),
(76, 'Mexico ', 8, 'Mexico ', '', 'en', 0, '2024-10-21', 'Active'),
(77, 'Mola Maru ', 8, 'Mola Maru ', '', 'en', 0, '2024-10-21', 'Active'),
(78, 'Philiphose ', 8, 'Philiphose ', '', 'en', 0, '2024-10-21', 'Active'),
(79, 'Sarbet ', 8, 'Sarbet ', '', 'en', 0, '2024-10-21', 'Active'),
(80, 'Sebategna ', 8, 'Sebategna ', '', 'en', 0, '2024-10-21', 'Active'),
(81, 'Sefere Selam ', 8, 'Sefere Selam ', '', 'en', 0, '2024-10-21', 'Active'),
(82, 'Tero ', 8, 'Tero ', '', 'en', 0, '2024-10-21', 'Active'),
(83, 'Abadina ', 7, 'Abadina ', '', 'en', 0, '2024-10-21', 'Active'),
(84, 'Addisu Gebeya ', 7, 'Addisu Gebeya ', '', 'en', 0, '2024-10-21', 'Active'),
(85, 'Asko Chareta ', 7, 'Asko Chareta ', '', 'en', 0, '2024-10-21', 'Active'),
(86, 'Chilot Adebabay ', 7, 'Chilot Adebabay ', '', 'en', 0, '2024-10-21', 'Active'),
(87, 'Gulele 23 ', 7, 'Gulele 23 ', '', 'en', 0, '2024-10-21', 'Active'),
(88, 'Gulele Hamle 19 ', 7, 'Gulele Hamle 19 ', '', 'en', 0, '2024-10-21', 'Active'),
(89, 'Kechene ', 7, 'Kechene ', '', 'en', 0, '2024-10-21', 'Active'),
(90, 'Menen ', 7, 'Menen ', '', 'en', 0, '2024-10-21', 'Active'),
(91, 'Sheger Menafesha', 7, 'Sheger Menafesha', '', 'en', 0, '2024-10-21', 'Active'),
(92, 'Shegole ', 7, 'Shegole ', '', 'en', 0, '2024-10-21', 'Active'),
(93, 'Shiromeda ', 7, 'Shiromeda ', '', 'en', 0, '2024-10-21', 'Active'),
(94, 'Shiromeda Selase', 7, 'Shiromeda Selase', '', 'en', 0, '2024-10-21', 'Active'),
(95, 'Sululta ', 7, 'Sululta ', '', 'en', 0, '2024-10-21', 'Active'),
(96, 'Tufa Muna ', 7, 'Tufa Muna ', '', 'en', 0, '2024-10-21', 'Active'),
(97, 'Abado ', 12, 'Abado ', '', 'en', 0, '2024-10-21', 'Active'),
(98, 'Anqorcha ', 12, 'Anqorcha ', '', 'en', 0, '2024-10-21', 'Active'),
(99, 'Aware ', 12, 'Aware ', '', 'en', 0, '2024-10-21', 'Active'),
(100, 'Bella ', 12, 'Bella ', '', 'en', 0, '2024-10-21', 'Active'),
(101, 'Bole Arabsa ', 12, 'Bole Arabsa ', '', 'en', 0, '2024-10-21', 'Active'),
(102, 'Derartu Adebabay', 12, 'Derartu Adebabay', '', 'en', 0, '2024-10-21', 'Active'),
(103, 'Diaspora Adebabay', 12, 'Diaspora Adebabay', '', 'en', 0, '2024-10-21', 'Active'),
(104, 'Ferensay Kela ', 12, 'Ferensay Kela ', '', 'en', 0, '2024-10-21', 'Active'),
(105, 'Figa ', 12, 'Figa ', '', 'en', 0, '2024-10-21', 'Active'),
(106, 'Goro ', 12, 'Goro ', '', 'en', 0, '2024-10-21', 'Active'),
(107, 'Gurara ', 12, 'Gurara ', '', 'en', 0, '2024-10-21', 'Active'),
(108, 'Hayahulet ', 12, 'Hayahulet ', '', 'en', 0, '2024-10-21', 'Active'),
(109, 'Hayat ', 12, 'Hayat ', '', 'en', 0, '2024-10-21', 'Active'),
(110, 'Kara Sunshine ', 12, 'Kara Sunshine ', '', 'en', 0, '2024-10-21', 'Active'),
(111, 'Korea Sefer ', 12, 'Korea Sefer ', '', 'en', 0, '2024-10-21', 'Active'),
(112, 'Kotebe 02 ', 12, 'Kotebe 02 ', '', 'en', 0, '2024-10-21', 'Active'),
(113, 'Kotebe Wondirad ', 12, 'Kotebe Wondirad ', '', 'en', 0, '2024-10-21', 'Active'),
(114, 'Megenagna ', 12, 'Megenagna ', '', 'en', 0, '2024-10-21', 'Active'),
(115, 'Meri ', 12, 'Meri ', '', 'en', 0, '2024-10-21', 'Active'),
(116, 'Sealitemehret ', 12, 'Sealitemehret ', '', 'en', 0, '2024-10-21', 'Active'),
(117, 'Sendafa ', 12, 'Sendafa ', '', 'en', 0, '2024-10-21', 'Active'),
(118, 'Shola Gebeya ', 12, 'Shola Gebeya ', '', 'en', 0, '2024-10-21', 'Active'),
(119, 'Signal ', 12, 'Signal ', '', 'en', 0, '2024-10-21', 'Active'),
(120, 'Yetebaberut ', 12, 'Yetebaberut ', '', 'en', 0, '2024-10-21', 'Active'),
(121, 'Alem-gena ', 13, 'Alem-gena ', '', 'en', 0, '2024-10-21', 'Active'),
(122, 'Almazye Meda ', 13, 'Almazye Meda ', '', 'en', 0, '2024-10-21', 'Active'),
(123, 'Bekanisa ', 13, 'Bekanisa ', '', 'en', 0, '2024-10-21', 'Active'),
(124, 'Gofa ', 13, 'Gofa ', '', 'en', 0, '2024-10-21', 'Active'),
(125, 'Gotera ', 13, 'Gotera ', '', 'en', 0, '2024-10-21', 'Active'),
(126, 'Hana Mariyam ', 13, 'Hana Mariyam ', '', 'en', 0, '2024-10-21', 'Active'),
(127, 'Jemo ', 13, 'Jemo ', '', 'en', 0, '2024-10-21', 'Active'),
(128, 'Jemo Michael ', 13, 'Jemo Michael ', '', 'en', 0, '2024-10-21', 'Active'),
(129, 'Kadisco ', 13, 'Kadisco ', '', 'en', 0, '2024-10-21', 'Active'),
(130, 'Kera ', 13, 'Kera ', '', 'en', 0, '2024-10-21', 'Active'),
(131, 'Kore ', 13, 'Kore ', '', 'en', 0, '2024-10-21', 'Active'),
(132, 'Lafto ', 13, 'Lafto ', '', 'en', 0, '2024-10-21', 'Active'),
(133, 'Lebu ', 13, 'Lebu ', '', 'en', 0, '2024-10-21', 'Active'),
(134, 'Saris Addis Sefer', 13, 'Saris Addis Sefer', '', 'en', 0, '2024-10-21', 'Active'),
(135, 'Saris ', 13, 'Saris ', '', 'en', 0, '2024-10-21', 'Active'),
(136, 'Sebeta ', 13, 'Sebeta ', '', 'en', 0, '2024-10-21', 'Active'),
(137, 'Alem Bank ', 14, 'Alem Bank ', '', 'en', 0, '2024-10-21', 'Active'),
(138, 'Ayer-tena ', 14, 'Ayer-tena ', '', 'en', 0, '2024-10-21', 'Active'),
(139, 'Bethel ', 14, 'Bethel ', '', 'en', 0, '2024-10-21', 'Active'),
(140, 'Bethel Esat Adega', 14, 'Bethel Esat Adega', '', 'en', 0, '2024-10-21', 'Active'),
(141, 'Bethel Mikael ', 14, 'Bethel Mikael ', '', 'en', 0, '2024-10-21', 'Active'),
(142, 'Burayu ', 14, 'Burayu ', '', 'en', 0, '2024-10-21', 'Active'),
(143, 'Holeta ', 14, 'Holeta ', '', 'en', 0, '2024-10-21', 'Active'),
(144, 'Kara Kore ', 14, 'Kara Kore ', '', 'en', 0, '2024-10-21', 'Active'),
(145, 'Kolfe 18 Mazoriya', 14, 'Kolfe 18 Mazoriya', '', 'en', 0, '2024-10-21', 'Active'),
(146, 'Melka Nono ', 14, 'Melka Nono ', '', 'en', 0, '2024-10-21', 'Active'),
(147, 'Repi ', 14, 'Repi ', '', 'en', 0, '2024-10-21', 'Active'),
(148, 'Tor Hayiloch ', 14, 'Tor Hayiloch ', '', 'en', 0, '2024-10-21', 'Active'),
(149, 'Yeshi Debele ', 14, 'Yeshi Debele ', '', 'en', 0, '2024-10-21', 'Active'),
(150, 'Zenebe Work ', 14, 'Zenebe Work ', '', 'en', 0, '2024-10-21', 'Active'),
(151, 'Alert ', 14, 'Alert ', '', 'en', 0, '2024-10-21', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `bulk_audit`
--

CREATE TABLE `bulk_audit` (
  `id` int(11) NOT NULL,
  `maker` varchar(500) NOT NULL,
  `checker` varchar(500) DEFAULT NULL,
  `user_action` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `link_page` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bulk_audit`
--

INSERT INTO `bulk_audit` (`id`, `maker`, `checker`, `user_action`, `date_created`, `link_page`) VALUES
(1, 'admin', 'admin', 'Photo is updated with the name, ', '2024-06-26', '/update_translate_management'),
(2, 'admin', 'admin', 'Management is translated with the name, Biqilaa Mulunaa', '2024-06-26', '/store_translate_management'),
(3, 'admin', 'admin', 'Management is translated with the name, Roba Boruu Bulii', '2024-06-26', '/store_translate_management'),
(4, 'admin', 'admin', 'Photo is updated with the name, ', '2024-06-26', '/update_translate_management'),
(5, 'admin', 'admin', 'Photo is updated with the name, ', '2024-06-26', '/update_translate_management'),
(6, 'admin', 'admin', 'Photo is updated with the name, /files/24-06-26-14-03-suzuki.jpg', '2024-06-26', '/update_photo_management'),
(7, 'admin', 'admin', 'Photo is updated with the name, /files/24-06-26-14-05-suzuki.jpg', '2024-06-26', '/update_photo_management'),
(8, 'admin', 'admin', 'Photo is updated with the name, /files/24-06-26-14-06-siket-login.jpg', '2024-06-26', '/update_photo_management'),
(9, 'admin', 'admin', 'Annual report is updated with the name, Annual reports', '2024-06-29', '/update_annual'),
(10, 'admin', 'admin', 'Header subtype is translated with the name, sagdfsagf', '2024-06-29', '/translate_headersubtype'),
(11, 'admin', 'admin', 'Distirct is translated with the name, dfsdfdsf', '2024-06-29', '/store_translate_distirct'),
(12, 'admin', 'admin', 'Region is translated with the name, sadsdasd', '2024-06-29', '/store_translate_region'),
(13, 'admin', 'admin', 'Photo is updated with the name, /files/24-07-01-12-55-logo-siket.png', '2024-07-01', '/update_photo_management'),
(14, 'admin', 'admin', 'Header subtype is added with the name, Saving Accounts', '2024-07-01', '/store_headersubtype'),
(15, 'admin', 'admin', 'Header subtype is added with the name, Special Accounts', '2024-07-01', '/store_headersubtype'),
(16, 'admin', 'admin', 'Header subtype is added with the name, Business Accounts', '2024-07-01', '/store_headersubtype'),
(17, 'admin', 'admin', 'Header subtype is added with the name, Interest free banking', '2024-07-01', '/store_headersubtype'),
(18, 'admin', 'admin', 'Header subtype is added with the name, Loan and advance', '2024-07-01', '/store_headersubtype'),
(19, 'admin', 'admin', 'Mega header is added with the title, Saving Account', '2024-07-01', '/store_mega_header'),
(20, 'admin', 'admin', 'Mega header is added with the title, Fixed Time Account', '2024-07-01', '/store_mega_header'),
(21, 'admin', 'admin', 'Mega header is added with the title, Current Account', '2024-07-01', '/store_mega_header'),
(22, 'admin', 'admin', 'Mega header is added with the title, Diaspora Account', '2024-07-01', '/store_mega_header'),
(23, 'admin', 'admin', 'Mega header is added with the title, Women Saving Account', '2024-07-01', '/store_mega_header'),
(24, 'admin', 'admin', 'Mega header is added with the title, Salary Account', '2024-07-01', '/store_mega_header'),
(25, 'admin', 'admin', 'Mega header is added with the title, Investment Account', '2024-07-01', '/store_mega_header'),
(26, 'admin', 'admin', 'Mega header is added with the title, IFB Saving', '2024-07-01', '/store_mega_header'),
(27, 'admin', 'admin', 'Mega header is added with the title, IFB Current', '2024-07-01', '/store_mega_header'),
(28, 'admin', 'admin', 'Mega header is added with the title, Loans', '2024-07-01', '/store_mega_header'),
(29, 'admin', 'admin', 'Mega header is added with the title, Overdraft', '2024-07-01', '/store_mega_header'),
(30, 'admin', 'admin', 'Mega header is added with the title, Mobile Banking', '2024-07-01', '/store_mega_header'),
(31, 'admin', 'admin', 'Mega header is added with the title, Agency Banking', '2024-07-01', '/store_mega_header'),
(32, 'admin', 'admin', 'Mega header is added with the title, Who we are', '2024-07-01', '/store_mega_header'),
(33, 'admin', 'admin', 'Mega header is updated with the title, Who we are', '2024-07-01', '/update_translate_mega_header'),
(34, 'admin', 'admin', 'Management is added with the name, DAMTEW ALEMAYEHU', '2024-07-01', '/store_management'),
(35, 'admin', 'admin', 'Management is added with the name, BERHANU URGESSA', '2024-07-01', '/store_management'),
(36, 'admin', 'admin', 'Management is updated with the name, DAMTEW ALEMAYEHU', '2024-07-01', '/update_translate_management'),
(37, 'admin', 'admin', 'Management is added with the name, MEAZA WONDIMU', '2024-07-01', '/store_management'),
(38, 'admin', 'admin', 'Management is added with the name, MESERET TSEGAYE', '2024-07-01', '/store_management'),
(39, 'admin', 'admin', 'Management is added with the name, WEGENIE BEKELE', '2024-07-01', '/store_management'),
(40, 'admin', 'admin', 'News is added with the title, Siket Bank 10-Month Performance Report and Evaluation were held at the Grand Eliana Hotel', '2024-07-01', '/store_news'),
(41, 'admin', 'admin', 'News is added with the title, An introductory program was held for the Board of Directors of Siket Bank and the management of the bank.', '2024-07-01', '/store_news'),
(42, 'admin', 'admin', 'News is added with the title, Siket Bank participated in the conference and exhibition organized by the National Bank of Ethiopia and the World Bank at the Sheraton Addis Hotel.', '2024-07-01', '/store_news'),
(43, 'admin', 'admin', 'Photo is updated with the name, /files/24-07-01-19-17-h1 (1).jpg', '2024-07-01', '/update_photo_management'),
(44, 'admin', 'admin', 'Annual report is added with the name, Annual Report', '2024-07-02', '/store_annual'),
(45, 'admin', 'admin', 'Distirct is added with the name, South Addis Ababa', '2024-07-02', '/store_district'),
(46, 'admin', 'admin', 'Branch is added with the name, Bole Branch', '2024-07-02', '/store_branch'),
(47, 'admin', 'admin', 'Branch is translated with the name, Damee Boolee', '2024-07-02', '/store_translate_branch'),
(48, 'admin', 'admin', 'Media is added with the title, Basis siket bank', '2024-07-02', '/store_media'),
(49, 'admin', 'admin', 'Mega header is translated with the title, Qusannaa yeroo dheeraa', '2024-07-03', '/store_translate_mega_header'),
(50, 'admin', 'admin', 'Branch is added with the name, Sululta Branch', '2024-07-04', '/store_branch'),
(51, 'admin', 'admin', 'ATM is added with the name, Getu commercial', '2024-07-04', '/store_atm'),
(52, 'admin', 'admin', 'Media is added with the title, New product ceremony', '2024-07-04', '/store_media'),
(53, 'admin', 'admin', 'Vacancy is added with the vacancy position, Senior software engineer', '2024-07-04', '/store_vacancy'),
(54, 'admin', 'admin', 'Other linkage is added with the name, Internet Banking', '2024-07-04', '/store_linkage'),
(55, 'admin', 'admin', 'csr is added with the title, Supporting natural disaster', '2024-07-05', '/store_csr'),
(56, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-07-05-07-45-president.jpg', '2024-07-05', '/update_photo_management'),
(57, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-07-05-09-12-president.jpg', '2024-07-05', '/update_photo_management'),
(58, 'admin', 'admin', 'Banner is added with the title, The basis of your success', '2024-07-05', '/store_banner'),
(59, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-07-05-09-20-siket-login.jpg', '2024-07-05', '/update_photo_management'),
(60, 'admin', 'admin', 'Banner is added with the title, Siket bank\'s Adawa museum branch', '2024-07-05', '/store_banner'),
(61, 'admin', 'admin', 'Photo is updated with the name, ', '2024-07-05', '/update_photo_management'),
(62, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-07-05-09-33-banner2.jpg', '2024-07-05', '/update_photo_management'),
(63, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-07-05-09-34-banner.jpg', '2024-07-05', '/update_photo_management'),
(64, 'admin', 'admin', 'Banner is translated with the title, Damee Adwaa Muuziyeemii', '2024-07-05', '/store_translate_banner'),
(65, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-07-05-10-39-news1.jpg', '2024-07-05', '/update_photo_management'),
(66, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-07-05-10-40-news2.png', '2024-07-05', '/update_photo_management'),
(67, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-07-05-10-41-news3.png', '2024-07-05', '/update_photo_management'),
(68, 'admin', 'admin', 'Rate is updated with the currency, AED', '2024-07-05', '/update_rate'),
(69, 'admin', 'admin', 'Rate is updated with the currency, AED', '2024-07-05', '/update_rate'),
(70, 'admin', 'admin', 'Rate is updated with the currency, EUR', '2024-07-05', '/update_rate'),
(71, 'admin', 'admin', 'Rate is updated with the currency, USSD', '2024-07-05', '/update_rate'),
(72, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-07-05-10-47-siket-login.jpg', '2024-07-05', '/update_photo_management'),
(73, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-07-05-10-47-siket-login.jpg', '2024-07-05', '/update_photo_management'),
(74, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-07-05-10-47-siket-login.jpg', '2024-07-05', '/update_photo_management'),
(75, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-07-05-10-47-siket-login.jpg', '2024-07-05', '/update_photo_management'),
(76, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-07-05-10-53-borana.jpg', '2024-07-05', '/update_photo_management'),
(77, 'admin', 'admin', 'csr is added with the title, Rehabilitation of heavy rain damage in Amhara Region Br. 1.7 Million.', '2024-07-05', '/store_csr'),
(78, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-07-05-11-15-news3.png', '2024-07-05', '/update_photo_management'),
(79, 'admin', 'admin', 'Language is updated with the language, somaliya', '2024-07-05', '/update_language'),
(80, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-07-06-05-32-siket-bnk.png', '2024-07-06', '/update_photo_management'),
(81, 'admin', 'admin', 'Mega header is added with the title, POS', '2024-07-10', '/store_mega_header'),
(82, 'admin', 'admin', 'Mega header is added with the title, Siket Bank Master Card', '2024-07-10', '/store_mega_header'),
(83, 'admin', 'admin', 'Mega header is translated with the title, Bankii sikett Master Kaardii', '2024-07-10', '/store_translate_mega_header'),
(84, 'admin', 'admin', 'Distirct is added with the name, North', '2024-07-10', '/store_district'),
(85, 'admin', 'admin', 'Branch is added with the name, Addisu Gebay Branch', '2024-07-10', '/store_branch'),
(86, 'admin', 'admin', 'ATM is added with the name, Bole Atlas', '2024-07-10', '/store_atm'),
(87, 'admin', 'admin', 'ATM is updated with the name, Bole Atlas', '2024-07-10', '/update_translate_atm'),
(88, 'admin', 'admin', 'Media is added with the title, Bank\'s product cermoney', '2024-07-10', '/store_media'),
(89, 'admin', 'admin', 'Vacancy is added with the vacancy position, Senior Account', '2024-07-10', '/store_vacancy'),
(90, 'admin', 'admin', 'Management is added with the name, Tilahun Worku', '2024-07-10', '/store_management'),
(91, 'admin', 'admin', 'Annual report is added with the name, Annula report 1', '2024-07-10', '/store_annual'),
(92, 'admin', 'admin', 'Banner is updated with the title, Siket bank\'s Adawa memorial branch', '2024-07-10', '/update_translate_banner'),
(93, 'admin', 'admin', 'Rate is updated with the currency, AED', '2024-07-10', '/update_rate'),
(94, 'admin', 'admin', 'Quantitative data is updated with the title, Employees', '2024-07-10', '/update_quantity'),
(95, 'dawitmulun', 'dawitmulun', 'Branch is added with the name, Churichil Branch', '2024-07-12', '/store_branch'),
(96, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-07-15-13-52-siket-login.jpg', '2024-07-15', '/update_photo_management'),
(97, 'admin', 'admin', 'Mega header is added with the title, Savings', '2024-07-19', '/store_mega_header'),
(98, 'admin', 'admin', 'Mega header is translated with the title, Qusanna', '2024-07-19', '/store_translate_mega_header'),
(99, 'admin', 'admin', 'Mega header is updated with the title, Qusanna', '2024-07-19', '/update_translate_mega_header'),
(100, 'admin', 'admin', 'Photo is updated with the name, ', '2024-07-19', '/update_photo_management'),
(101, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-07-19-07-15-logo-siket.png', '2024-07-19', '/update_photo_management'),
(102, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-07-19-07-16-siket-login.jpg', '2024-07-19', '/update_photo_management'),
(103, 'admin', 'admin', 'Rate is updated with the currency, EUR', '2024-07-19', '/update_rate'),
(104, 'admin', 'admin', 'Distirct is added with the name, East', '2024-07-19', '/store_district'),
(105, 'admin', 'admin', 'Distirct is translated with the name, Lixa', '2024-07-19', '/store_translate_distirct'),
(106, 'admin', 'admin', 'Branch is added with the name, Sheger', '2024-07-19', '/store_branch'),
(107, 'admin', 'admin', 'Quantitative data is updated with the title, Employees', '2024-07-19', '/update_quantity'),
(108, 'admin', 'admin', 'ATM is added with the name, Dembel ATM', '2024-07-19', '/store_atm'),
(109, 'admin', 'admin', 'ATM is updated with the name, Dembel ATM', '2024-07-19', '/update_translate_atm'),
(110, 'admin', 'admin', 'Media is added with the title, One product developed', '2024-07-19', '/store_media'),
(111, 'admin', 'admin', 'Management is added with the name, Samuel T', '2024-07-19', '/store_management'),
(112, 'admin', 'admin', 'Management is added with the name, Worku T', '2024-07-19', '/store_management'),
(113, 'admin', 'admin', 'Management is added with the name, Sefu W.', '2024-07-19', '/store_management'),
(114, 'admin', 'admin', 'Annual report is added with the name, Baget', '2024-07-19', '/store_annual'),
(115, 'admin', 'admin', 'csr is added with the title, Disaster', '2024-07-19', '/store_csr'),
(116, 'admin', 'admin', 'News is added with the title, Breaking news', '2024-07-19', '/store_news'),
(117, 'admin', 'admin', 'Search is added with the title, Siket bank POS', '2024-07-19', '/store_search'),
(118, 'admin', 'admin', 'Banner is added with the title, Micro Loan', '2024-07-19', '/store_banner'),
(119, 'admin', 'admin', 'Vacancy is added with the vacancy position, Senior Database', '2024-07-19', '/store_vacancy'),
(120, 'admin', 'admin', 'Mega header is updated with the title, Who we are', '2024-07-27', '/update_translate_mega_header'),
(121, 'admin', 'admin', 'Mega header is updated with the title, Who we are', '2024-07-27', '/update_translate_mega_header'),
(122, 'admin', 'admin', 'Language is added with the name, Tigrigna', '2024-07-27', '/store_language'),
(123, 'admin', 'admin', 'Language is updated with the language, Tigrigna', '2024-07-27', '/update_language'),
(124, 'admin', 'admin', 'Header subtype is added with the name, Advance saving for loan', '2024-08-03', '/store_headersubtype'),
(125, 'admin', 'admin', 'Header subtype is updated with the name, Saving Accounts', '2024-08-03', '/update_translate_headersubtype'),
(126, 'admin', 'admin', 'Mega header is added with the title, Advance saving for business loan', '2024-08-03', '/store_mega_header'),
(127, 'admin', 'admin', 'Mega header is updated with the title, Savings', '2024-08-03', '/update_translate_mega_header'),
(128, 'admin', 'admin', 'Mega header is added with the title, Advance saving for business loan', '2024-08-03', '/store_mega_header'),
(129, 'admin', 'admin', 'Mega header is updated with the title, Advance saving for business loan', '2024-08-03', '/update_translate_mega_header'),
(130, 'admin', 'admin', 'Header type is added with the name, Home', '2024-08-03', '/store_header'),
(131, 'admin', 'admin', 'Mega header is updated with the title, Advance saving for business loan', '2024-08-05', '/update_translate_mega_header'),
(132, 'admin', 'admin', 'Header subtype is updated with the name, Loan and advance', '2024-08-05', '/update_translate_headersubtype'),
(133, 'admin', 'admin', 'Header subtype is added with the name, Saving Services', '2024-08-06', '/store_headersubtype'),
(134, 'admin', 'admin', 'Mega header is added with the title, Advance saving for business loan', '2024-08-06', '/store_mega_header'),
(135, 'admin', 'admin', 'Mega header is added with the title, Who We are', '2024-08-07', '/store_mega_header'),
(136, 'admin', 'admin', 'Header subtype is added with the name, Loan Services', '2024-08-13', '/store_headersubtype'),
(137, 'admin', 'admin', 'Header subtype is added with the name, Small Insurance Service', '2024-08-13', '/store_headersubtype'),
(138, 'admin', 'admin', 'Header subtype is added with the name, Counseling Services', '2024-08-13', '/store_headersubtype'),
(139, 'admin', 'admin', 'Header subtype is added with the name, Domestic Money Transfer Service', '2024-08-13', '/store_headersubtype'),
(140, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-08-13', '/update_translate_mega_header'),
(141, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-08-13', '/update_translate_mega_header'),
(142, 'admin', 'admin', 'Mega header is added with the title, Savings with Loan Repayment', '2024-08-13', '/store_mega_header'),
(143, 'admin', 'admin', 'Mega header is updated with the title, Savings with Loan Repayment', '2024-08-13', '/update_translate_mega_header'),
(144, 'admin', 'admin', 'Mega header is added with the title, Voluntary Saving', '2024-08-13', '/store_mega_header'),
(145, 'admin', 'admin', 'Mega header is updated with the title, Voluntary Saving', '2024-08-13', '/update_translate_mega_header'),
(146, 'admin', 'admin', 'Mega header is added with the title, Group Loan', '2024-08-13', '/store_mega_header'),
(147, 'admin', 'admin', 'Mega header is added with the title, Micro, Small and Medium Enterprise Loans', '2024-08-13', '/store_mega_header'),
(148, 'admin', 'admin', 'Mega header is updated with the title, MSME Loans', '2024-08-13', '/update_translate_mega_header'),
(149, 'admin', 'admin', 'Mega header is updated with the title, MSME Loans', '2024-08-13', '/update_translate_mega_header'),
(150, 'admin', 'admin', 'Mega header is added with the title, Business Loan', '2024-08-13', '/store_mega_header'),
(151, 'admin', 'admin', 'Mega header is updated with the title, Business Loan', '2024-08-13', '/update_translate_mega_header'),
(152, 'admin', 'admin', 'Mega header is updated with the title, MSME Loans', '2024-08-13', '/update_translate_mega_header'),
(153, 'admin', 'admin', 'Mega header is updated with the title, Business Loan', '2024-08-13', '/update_translate_mega_header'),
(154, 'admin', 'admin', 'Mega header is updated with the title, MSME Loans', '2024-08-13', '/update_translate_mega_header'),
(155, 'admin', 'admin', 'Mega header is updated with the title, MSME Loans', '2024-08-13', '/update_translate_mega_header'),
(156, 'admin', 'admin', 'Mega header is updated with the title, Group Loan', '2024-08-13', '/update_translate_mega_header'),
(157, 'admin', 'admin', 'Mega header is added with the title, Personal Loan', '2024-08-13', '/store_mega_header'),
(158, 'admin', 'admin', 'Mega header is added with the title, Vehicle Loan', '2024-08-13', '/store_mega_header'),
(159, 'admin', 'admin', 'Mega header is added with the title, Housing Loan', '2024-08-13', '/store_mega_header'),
(160, 'admin', 'admin', 'Mega header is added with the title, Consumer Cooperatives Loans', '2024-08-13', '/store_mega_header'),
(161, 'admin', 'admin', 'Mega header is added with the title, Cooperative Edire Loan Service', '2024-08-13', '/store_mega_header'),
(162, 'admin', 'admin', 'Mega header is added with the title, Entrepreneur Women\'s Loan', '2024-08-14', '/store_mega_header'),
(163, 'admin', 'admin', 'Mega header is added with the title, Entrepreneur Youth Loan (YEDP)', '2024-08-14', '/store_mega_header'),
(164, 'admin', 'admin', 'Mega header is added with the title, Psychometric Scoring Based Loan', '2024-08-14', '/store_mega_header'),
(165, 'admin', 'admin', 'Mega header is added with the title, Special Fund Loan', '2024-08-14', '/store_mega_header'),
(166, 'admin', 'admin', 'Mega header is added with the title, Life Insurance', '2024-08-14', '/store_mega_header'),
(167, 'admin', 'admin', 'Mega header is added with the title, Credit business insurance', '2024-08-14', '/store_mega_header'),
(168, 'admin', 'admin', 'Mega header is added with the title, Property and Life Insurance', '2024-08-14', '/store_mega_header'),
(169, 'admin', 'admin', 'Mega header is added with the title, Counseling Service', '2024-08-14', '/store_mega_header'),
(170, 'admin', 'admin', 'Mega header is added with the title, Domestic Hawala Service', '2024-08-14', '/store_mega_header'),
(171, 'admin', 'admin', 'Branch is updated with the name, Addisu Gebay Branch', '2024-08-14', '/update_translate_branch'),
(172, 'admin', 'admin', 'Branch is updated with the name, Bole Branch', '2024-08-14', '/update_translate_branch'),
(173, 'admin', 'admin', 'Branch is updated with the name, Churichil Branch', '2024-08-14', '/update_translate_branch'),
(174, 'admin', 'admin', 'Branch is updated with the name, Sheger', '2024-08-14', '/update_translate_branch'),
(175, 'admin', 'admin', 'Branch is updated with the name, Sululta Branch', '2024-08-14', '/update_translate_branch'),
(176, 'admin', 'admin', 'Distirct is updated with the name, Lixa', '2024-08-14', '/update_translate_district'),
(177, 'admin', 'admin', 'Distirct is updated with the name, East', '2024-08-14', '/update_translate_district'),
(178, 'admin', 'admin', 'Mega header is updated with the title, Property and Life Insurance', '2024-08-14', '/update_translate_mega_header'),
(179, 'admin', 'admin', 'Mega header is updated with the title, Property and Life Insurance', '2024-08-14', '/update_translate_mega_header'),
(180, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-08-15', '/update_translate_mega_header'),
(181, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-07-00-Screenshot 2024-08-08 154237.png', '2024-08-15', '/update_photo_management'),
(182, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-07-01-Screenshot 2024-06-30 143653.png', '2024-08-15', '/update_photo_management'),
(183, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-07-02-Screenshot 2024-08-08 154237.png', '2024-08-15', '/update_photo_management'),
(184, 'admin', 'admin', 'Management is updated with the name, WEGENIE BEKELE', '2024-08-15', '/update_translate_management'),
(185, 'admin', 'admin', 'Management is added with the name, Bikila Muluna', '2024-08-15', '/store_management'),
(186, 'admin', 'admin', 'Management is updated with the name, Bikila Muluna Gejea', '2024-08-15', '/update_translate_management'),
(187, 'admin', 'admin', 'Management is updated with the name, Bikila Muluna Gejea', '2024-08-15', '/update_translate_management'),
(188, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-08-17-HN1A8538-min.JPG', '2024-08-15', '/update_photo_management'),
(189, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-08-19-HN1A8669a.jpg', '2024-08-15', '/update_photo_management'),
(190, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-08-21-HN1A8421-min.JPG', '2024-08-15', '/update_photo_management'),
(191, 'admin', 'admin', 'Management is updated with the name, WEGENIE BEKELE', '2024-08-15', '/update_translate_management'),
(192, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-08-22-HN1A8645-min.JPG', '2024-08-15', '/update_photo_management'),
(193, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-08-24-HN1A8602-min.JPG', '2024-08-15', '/update_photo_management'),
(194, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-08-25-HN1A8669a-min.jpg', '2024-08-15', '/update_photo_management'),
(195, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-08-28-photo_2024-08-15_11-21-26.jpg', '2024-08-15', '/update_photo_management'),
(196, 'admin', 'admin', 'Management is added with the name, HABTAMU SHIFERAW', '2024-08-15', '/store_management'),
(197, 'admin', 'admin', 'Management is updated with the name, Bikila Muluna Gejea', '2024-08-15', '/update_translate_management'),
(198, 'admin', 'admin', 'Management is updated with the name, Worku T', '2024-08-15', '/update_translate_management'),
(199, 'admin', 'admin', 'Management is added with the name, FEYERA JALETA', '2024-08-15', '/store_management'),
(200, 'admin', 'admin', 'Management is added with the name, TOKKUMMA JEBESSA', '2024-08-15', '/store_management'),
(201, 'admin', 'admin', 'Management is updated with the name, DAMTEW ALEMAYEHU', '2024-08-15', '/update_translate_management'),
(202, 'admin', 'admin', 'Management is added with the name, ANAOL FERID', '2024-08-15', '/store_management'),
(203, 'admin', 'admin', 'Management is added with the name, YONAS WORKU', '2024-08-15', '/store_management'),
(204, 'admin', 'admin', 'Management is added with the name, AYESHA SHIFA', '2024-08-15', '/store_management'),
(205, 'admin', 'admin', 'Management is updated with the name, WEGENIE BEKELE', '2024-08-15', '/update_translate_management'),
(206, 'admin', 'admin', 'Management is updated with the name, BERHANU URGESSA', '2024-08-15', '/update_translate_management'),
(207, 'admin', 'admin', 'Management is updated with the name, MEAZA WONDIMU', '2024-08-15', '/update_translate_management'),
(208, 'admin', 'admin', 'Management is updated with the name, MESERET TSEGAYE', '2024-08-15', '/update_translate_management'),
(209, 'admin', 'admin', 'Management is updated with the name, WEGENIE BEKELE', '2024-08-15', '/update_translate_management'),
(210, 'admin', 'admin', 'News is added with the title, Siket Bank recorded a profit of 1.6 billion birr in the fiscal year 2023/24', '2024-08-15', '/store_news'),
(211, 'admin', 'admin', 'Photo is updated with the name, ', '2024-08-15', '/update_photo_management'),
(212, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-09-27-photo_2024-08-15_12-17-22.jpg', '2024-08-15', '/update_photo_management'),
(213, 'admin', 'admin', 'News is updated with the title, Siket Bank recorded a profit of 1.6 billion birr in the fiscal year 2023/24', '2024-08-15', '/update_translate_news'),
(214, 'admin', 'admin', 'News is updated with the title, Disaster', '2024-08-15', '/update_translate_news'),
(215, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-09-38-photo_2024-08-10_13-29-45.jpg', '2024-08-15', '/update_photo_management'),
(216, 'admin', 'admin', 'News is updated with the title, Siket Bank donated 2 million Birr support to our people who were affected by the land slide in Gofa Zone', '2024-08-15', '/update_translate_news'),
(217, 'admin', 'admin', 'csr is added with the title, Siket Bank donated 2 million Birr support to our people who were affected by the land slide in Gofa Zone', '2024-08-15', '/store_csr'),
(218, 'admin', 'admin', 'News is updated with the title, Siket Bank donated 2 million Birr support to our people who were affected by the land slide in Gofa Zone', '2024-08-15', '/update_translate_news'),
(219, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-11-34-Screenshot 2024-03-26 211850.png', '2024-08-15', '/update_photo_management'),
(220, 'bedilug', 'bedilug', 'Management is added with the name, DR. MESKEREM MITIKU', '2024-08-15', '/store_management'),
(221, 'bedilug', 'bedilug', 'Management is updated with the name, Sefu W.', '2024-08-15', '/update_translate_management'),
(222, 'bedilug', 'bedilug', 'Management is updated with the name, DR. MESKEREM MITIKU', '2024-08-15', '/update_translate_management'),
(223, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-12-30-359842165_105664992600550_8702845144280917084_n.jpg', '2024-08-15', '/update_photo_management'),
(224, 'bedilug', 'bedilug', 'Management is added with the name, HULAGERESH TAZEZE', '2024-08-15', '/store_management'),
(225, 'bedilug', 'bedilug', 'Management is updated with the name, Tilahun Worku', '2024-08-15', '/update_translate_management'),
(226, 'bedilug', 'bedilug', 'Management is added with the name, Getu Busa', '2024-08-15', '/store_management'),
(227, 'bedilug', 'bedilug', 'Management is updated with the name, GETU BUSA', '2024-08-15', '/update_translate_management'),
(228, 'bedilug', 'bedilug', 'Management is added with the name, GEZAHNGE G/MARIAME', '2024-08-15', '/store_management'),
(229, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-12-42-HN1A1328.JPG', '2024-08-15', '/update_photo_management'),
(230, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-12-43-HN1A1328.JPG', '2024-08-15', '/update_photo_management'),
(231, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-12-44-HN1A1328.JPG', '2024-08-15', '/update_photo_management'),
(232, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-12-45-HN1A1328.JPG', '2024-08-15', '/update_photo_management'),
(233, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-12-47-11.JPG', '2024-08-15', '/update_photo_management'),
(234, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-12-48-11.JPG', '2024-08-15', '/update_photo_management'),
(235, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-15-12-49-11.JPG', '2024-08-15', '/update_photo_management'),
(236, 'bedilug', 'bedilug', 'Management is added with the name, TILAHUN TADESSE', '2024-08-15', '/store_management'),
(237, 'bedilug', 'bedilug', 'Management is added with the name, HIKMA KEYREDIN', '2024-08-15', '/store_management'),
(238, 'bedilug', 'bedilug', 'Management is added with the name, MIKIYAS MULUGETA', '2024-08-15', '/store_management'),
(239, 'bedilug', 'bedilug', 'Banner is added with the title, Siket Bank recorded a profit of 1.6 billion birr in the fiscal year 2023/24', '2024-08-15', '/store_banner'),
(240, 'bedilug', 'bedilug', 'Banner is updated with the title, Siket Bank recorded a profit of 1.6 billion birr in the fiscal year 2023/24', '2024-08-15', '/update_translate_banner'),
(241, 'bedilug', 'bedilug', 'Banner is updated with the title, Damee Adwaa Muuziyeemii', '2024-08-15', '/update_translate_banner'),
(242, 'bedilug', 'bedilug', 'Banner is updated with the title, Siket bank\'s Adawa memorial branch', '2024-08-15', '/update_translate_banner'),
(243, 'admin', 'admin', 'Mega header is updated with the title, Who We are', '2024-08-16', '/update_translate_mega_header'),
(244, 'admin', 'admin', 'Mega header is updated with the title, Who We are', '2024-08-16', '/update_translate_mega_header'),
(245, 'admin', 'admin', 'Mega header is updated with the title, Who We are', '2024-08-16', '/update_translate_mega_header'),
(246, 'bedilug', 'bedilug', 'Management is updated with the name, DR. MESKEREM MITIKU', '2024-08-16', '/update_translate_management'),
(247, 'bedilug', 'bedilug', 'Management is updated with the name, Tilahun Worku', '2024-08-16', '/update_translate_management'),
(248, 'bedilug', 'bedilug', 'Management is updated with the name, MIKIYAS MULUGETA', '2024-08-16', '/update_translate_management'),
(249, 'bedilug', 'bedilug', 'Management is updated with the name, HIKMA KEYREDIN', '2024-08-16', '/update_translate_management'),
(250, 'bedilug', 'bedilug', 'Management is updated with the name, TILAHUN TADESSE', '2024-08-16', '/update_translate_management'),
(251, 'bedilug', 'bedilug', 'Management is updated with the name, GEZAHNGE G/MARIAME', '2024-08-16', '/update_translate_management'),
(252, 'bedilug', 'bedilug', 'Management is updated with the name, GETU BUSA', '2024-08-16', '/update_translate_management'),
(253, 'bedilug', 'bedilug', 'Management is updated with the name, HULAGERESH TAZEZE', '2024-08-16', '/update_translate_management'),
(254, 'admin', 'admin', 'News is updated with the title, Breaking news', '2024-08-16', '/update_translate_news'),
(255, 'admin', 'admin', 'News is updated with the title, Siket Bank participated in the conference and exhibition organized by the National Bank of Ethiopia and the World Bank at the Sheraton Addis Hotel.', '2024-08-16', '/update_translate_news'),
(256, 'admin', 'admin', 'News is updated with the title, Siket Bank donated 2 million Birr support to our people who were affected by the land slide in Gofa Zone', '2024-08-16', '/update_translate_news'),
(257, 'admin', 'admin', 'News is updated with the title, Siket Bank participated in the conference and exhibition organized by the National Bank of Ethiopia and the World Bank at the Sheraton Addis Hotel.', '2024-08-16', '/update_translate_news'),
(258, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-08-16', '/update_translate_mega_header'),
(259, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-08-16', '/update_translate_mega_header'),
(260, 'admin', 'admin', 'Branch is updated with the name, Addisu Gebay BranchH', '2024-08-16', '/update_translate_branch'),
(261, 'admin', 'admin', 'Branch is updated with the name, Addisu Gebay BranchH', '2024-08-16', '/update_translate_branch'),
(262, 'admin', 'admin', 'ATM is updated with the name, Bole Atlas', '2024-08-16', '/update_translate_atm'),
(263, 'admin', 'admin', 'Branch is updated with the name, Addisu Gebay BranchH', '2024-08-16', '/update_translate_branch'),
(264, 'admin', 'admin', 'Branch is added with the name, adwa branch', '2024-08-16', '/store_branch'),
(265, 'admin', 'admin', 'Branch is updated with the name, Addisu Gebay BranchH', '2024-08-16', '/update_translate_branch'),
(266, 'admin', 'admin', 'Mega header is added with the title, ATM LOCATOR', '2024-08-16', '/store_mega_header'),
(267, 'admin', 'admin', 'Mega header is updated with the title, ATM LOCATOR', '2024-08-16', '/update_translate_mega_header'),
(268, 'admin', 'admin', 'ATM is added with the name, adwa branch', '2024-08-16', '/store_atm'),
(269, 'admin', 'admin', 'ATM is updated with the name, adwa branch', '2024-08-16', '/update_translate_atm'),
(270, 'admin', 'admin', 'Branch is updated with the name, adwa branch', '2024-08-16', '/update_translate_branch'),
(271, 'admin', 'admin', 'Branch is updated with the name, Addisu Gebay BranchH', '2024-08-16', '/update_translate_branch'),
(272, 'admin', 'admin', 'Media is added with the title, Siket galary', '2024-08-16', '/store_media'),
(273, 'admin', 'admin', 'Vacancy is added with the vacancy position, software developer officer', '2024-08-16', '/store_vacancy'),
(274, 'admin', 'admin', 'Rate is updated with the currency, USSD', '2024-08-16', '/update_rate'),
(275, 'admin', 'admin', 'Rate is added with the currency, SEK', '2024-08-16', '/store_rate'),
(276, 'admin', 'admin', 'Rate is updated with the currency, SEK', '2024-08-16', '/update_rate'),
(277, 'admin', 'admin', 'Header type is added with the name, home', '2024-08-17', '/store_header'),
(278, 'admin', 'admin', 'Header type is added with the name, E- comerice', '2024-08-17', '/store_header'),
(279, 'admin', 'admin', 'Distirct is added with the name, central addis', '2024-08-17', '/store_district'),
(280, 'admin', 'admin', 'Management is updated with the name, Bikila Muluna Gejea', '2024-08-17', '/update_translate_management'),
(281, 'admin', 'admin', 'Header subtype is updated with the name, Loan Services', '2024-08-17', '/update_translate_headersubtype'),
(282, 'admin', 'admin', 'Header subtype is updated with the name, Loan Services', '2024-08-17', '/update_translate_headersubtype'),
(283, 'admin', 'admin', 'Header subtype is updated with the name, Loan Services', '2024-08-17', '/update_translate_headersubtype'),
(284, 'admin', 'admin', 'Header subtype is updated with the name, Loan Services', '2024-08-17', '/update_translate_headersubtype'),
(285, 'admin', 'admin', 'csr is updated with the title, Disaster', '2024-08-17', '/update_translate_csr'),
(286, 'admin', 'admin', 'csr is updated with the title, Disaster', '2024-08-17', '/update_translate_csr'),
(287, 'admin', 'admin', 'News is updated with the title, Siket Bank participated in the conference and exhibition organized by the National Bank of Ethiopia and the World Bank at the Sheraton Addis Hotel.', '2024-08-17', '/update_translate_news'),
(288, 'admin', 'admin', 'News is updated with the title, Siket Bank participated in the conference and exhibition organized by the National Bank of Ethiopia and the World Bank at the Sheraton Addis Hotel.', '2024-08-17', '/update_translate_news'),
(289, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-17-09-12-siket-login.jpg', '2024-08-17', '/update_photo_management'),
(290, 'admin', 'admin', 'Management is updated with the name, YONAS WORKU', '2024-08-19', '/update_translate_management'),
(291, 'admin', 'admin', 'Management is updated with the name, ANAOL FERID', '2024-08-19', '/update_translate_management'),
(292, 'admin', 'admin', 'Management is updated with the name, ANAOL FERID', '2024-08-19', '/update_translate_management'),
(293, 'admin', 'admin', 'Management is updated with the name, TOKKUMMA JEBESSA', '2024-08-19', '/update_translate_management'),
(294, 'admin', 'admin', 'Management is updated with the name, FEYERA JALETA', '2024-08-19', '/update_translate_management'),
(295, 'admin', 'admin', 'Management is updated with the name, HABTAMU SHIFERAW', '2024-08-19', '/update_translate_management'),
(296, 'admin', 'admin', 'Management is updated with the name, FEYERA JALETA', '2024-08-19', '/update_translate_management'),
(297, 'admin', 'admin', 'Management is updated with the name, FEYERA JALETA', '2024-08-19', '/update_translate_management'),
(298, 'admin', 'admin', 'Management is added with the name, TSIGEREDA ASHENAFI', '2024-08-19', '/store_management'),
(299, 'admin', 'admin', 'Management is added with the name, TSIGEREDA ASHENAFI', '2024-08-19', '/store_management'),
(300, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-18-15-09-HN1A9126.JPG', '2024-08-19', '/update_photo_management'),
(301, 'admin', 'admin', 'Management is updated with the name, TSIGEREDA ASHENAFI', '2024-08-19', '/update_translate_management'),
(302, 'admin', 'admin', 'Management is updated with the name, ANAOL FERID', '2024-08-19', '/update_translate_management'),
(303, 'admin', 'admin', 'Management is updated with the name, TOKKUMMA JEBESSA', '2024-08-19', '/update_translate_management'),
(304, 'admin', 'admin', 'Management is updated with the name, HABTAMU SHIFERAW', '2024-08-19', '/update_translate_management'),
(305, 'admin', 'admin', 'Management is updated with the name, Bikila Muluna', '2024-08-19', '/update_translate_management'),
(306, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-18-15-20-HN1A8688-min.JPG', '2024-08-19', '/update_photo_management'),
(307, 'admin', 'admin', 'Management is updated with the name, Bikila Muluna', '2024-08-19', '/update_translate_management'),
(308, 'admin', 'admin', 'Branch is updated with the name, adwa branch', '2024-08-19', '/update_translate_branch'),
(309, 'admin', 'admin', 'Banner is updated with the title, Siket Bank recorded a profit of 1.6 billion birr in the fiscal year 2023/24', '2024-08-19', '/update_translate_banner'),
(310, 'admin', 'admin', 'Banner is updated with the title, The basis of your success', '2024-08-19', '/update_translate_banner'),
(311, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-18-16-00-download.png', '2024-08-19', '/update_photo_management'),
(312, 'admin', 'admin', 'Rate is updated with the currency, USD', '2024-08-19', '/update_rate'),
(313, 'admin', 'admin', 'ATM is updated with the name, adwa branch', '2024-08-19', '/update_translate_atm'),
(314, 'admin', 'admin', 'csr is updated with the title, Disaster', '2024-08-19', '/update_translate_csr'),
(315, 'admin', 'admin', 'csr is updated with the title, Disaster', '2024-08-19', '/update_translate_csr'),
(316, 'admin', 'admin', 'News is updated with the title, Breaking news', '2024-08-19', '/update_translate_news'),
(317, 'admin', 'admin', 'Photo is updated with the name, ', '2024-08-19', '/update_photo_management'),
(318, 'admin', 'admin', 'Management is added with the name, TOLESA TAFESSE', '2024-08-19', '/store_management'),
(319, 'admin', 'admin', 'Management is added with the name, TOLESA TAFESSE', '2024-08-19', '/store_management'),
(320, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-19-08-17-HN1A8697.JPG', '2024-08-19', '/update_photo_management'),
(321, 'admin', 'admin', 'Management is updated with the name, TOLESA TAFESSE', '2024-08-19', '/update_translate_management'),
(322, 'admin', 'admin', 'Management is added with the name, YOHANNES CHAII', '2024-08-19', '/store_management'),
(323, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-19-08-22-HN1A8681.JPG', '2024-08-19', '/update_photo_management'),
(324, 'admin', 'admin', 'Management is updated with the name, BIKILA  MULUNA', '2024-08-19', '/update_translate_management'),
(325, 'admin', 'admin', 'FAQ is added with the question, what is short code of siket bank', '2024-08-19', '/store_faq'),
(326, 'admin', 'admin', 'FAQ is translated with the question, what is short code of siket bank', '2024-08-19', '/update_translate_faq'),
(327, 'admin', 'admin', 'Management is updated with the name, YOHANNES CHALI', '2024-08-19', '/update_translate_management'),
(328, 'admin', 'admin', 'Vacancy is updated with the vacancy position, Senior Account', '2024-08-19', '/update_translate_vacancy'),
(329, 'admin', 'admin', 'Vacancy is updated with the vacancy position, software developer officer', '2024-08-19', '/update_translate_vacancy'),
(330, 'admin', 'admin', 'Branch is updated with the name, Bole Branch', '2024-08-19', '/update_translate_branch'),
(331, 'admin', 'admin', 'Branch is updated with the name, Sheger', '2024-08-19', '/update_translate_branch'),
(332, 'admin', 'admin', 'Branch is updated with the name, Bole Branch', '2024-08-19', '/update_translate_branch'),
(333, 'admin', 'admin', 'Management is added with the name, DANIEL TEKA', '2024-08-19', '/store_management'),
(334, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-19-08-43-HN1A8680.JPG', '2024-08-19', '/update_photo_management'),
(335, 'bedilug', 'bedilug', 'Management is added with the name, Melese Tirfessa', '2024-08-19', '/store_management'),
(336, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-19-10-06-HN1A8391.jpg', '2024-08-19', '/update_photo_management'),
(337, 'bedilug', 'bedilug', 'Management is added with the name, Dr. Micheal Senbeta', '2024-08-19', '/store_management'),
(338, 'admin', 'admin', 'Mega header is updated with the title, Who We are', '2024-08-19', '/update_translate_mega_header'),
(339, 'admin', 'admin', 'Mega header is updated with the title, Who We are', '2024-08-19', '/update_translate_mega_header'),
(340, 'admin', 'admin', 'Mega header is updated with the title, Who We are', '2024-08-19', '/update_translate_mega_header'),
(341, 'admin', 'admin', 'Photo is updated with the name, ', '2024-08-19', '/update_photo_management'),
(342, 'admin', 'admin', 'Mega header is updated with the title, Who We are', '2024-08-19', '/update_translate_mega_header'),
(343, 'bedilug', 'bedilug', 'Management is added with the name, Fitsum Arega', '2024-08-19', '/store_management'),
(344, 'bedilug', 'bedilug', 'Management is added with the name, Wesenu Dereje', '2024-08-19', '/store_management'),
(345, 'bedilug', 'bedilug', 'Management is added with the name, Addisu Erana', '2024-08-19', '/store_management'),
(346, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-19-12-18-New.JPG', '2024-08-19', '/update_photo_management'),
(347, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-08-41-loggg.png', '2024-08-20', '/update_photo_management'),
(348, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-08-42-logggg_deep-removebg-preview.png', '2024-08-20', '/update_photo_management'),
(349, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-08-46-VP Credit.JPG', '2024-08-20', '/update_photo_management'),
(350, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-08-48-VP Strategy.JPG', '2024-08-20', '/update_photo_management'),
(351, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-08-50-VP Strategy.JPG', '2024-08-20', '/update_photo_management'),
(352, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-08-55-VP Finance.JPG', '2024-08-20', '/update_photo_management'),
(353, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-08-56-VP Finance.JPG', '2024-08-20', '/update_photo_management'),
(354, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-09-00-VP Finance.JPG', '2024-08-20', '/update_photo_management'),
(355, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-09-01-VP Finance.JPG', '2024-08-20', '/update_photo_management'),
(356, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-09-04-VP Finance.JPG', '2024-08-20', '/update_photo_management'),
(357, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-09-09-VP Banking.JPG', '2024-08-20', '/update_photo_management'),
(358, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-09-12-Chief, Risk.JPG', '2024-08-20', '/update_photo_management'),
(359, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-09-26-Chief, HRM.JPG', '2024-08-20', '/update_photo_management'),
(360, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-09-29-Chief, Audit.JPG', '2024-08-20', '/update_photo_management'),
(361, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-09-32-Chief, Legal.JPG', '2024-08-20', '/update_photo_management'),
(362, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-09-34-Chief, IT.JPG', '2024-08-20', '/update_photo_management'),
(363, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-09-37-Chief, International.JPG', '2024-08-20', '/update_photo_management'),
(364, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-09-39-Chief, President Advisor.JPG', '2024-08-20', '/update_photo_management'),
(365, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-09-48-Director, Marketing.JPG', '2024-08-20', '/update_photo_management'),
(366, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-09-49-Director, Research.JPG', '2024-08-20', '/update_photo_management'),
(367, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-09-52-Director, Strategy.JPG', '2024-08-20', '/update_photo_management'),
(368, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-09-55-Director, Business Banking.JPG', '2024-08-20', '/update_photo_management'),
(369, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-09-55-Director, Corporate Banking.JPG', '2024-08-20', '/update_photo_management'),
(370, 'bedilug', 'bedilug', 'Management is updated with the name, Dr. Michael Senbeta', '2024-08-20', '/update_translate_management'),
(371, 'bedilug', 'bedilug', 'Management is added with the name, Lulie Chanyalew', '2024-08-20', '/store_management'),
(372, 'bedilug', 'bedilug', 'Management is added with the name, Biruk Mekonnen', '2024-08-20', '/store_management'),
(373, 'bedilug', 'bedilug', 'Banner is updated with the title, Siket Bank recorded a profit of 1.6 billion birr in the fiscal year 2023/24', '2024-08-20', '/update_translate_banner'),
(374, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-20-13-29-New_Logo-removebg-preview (1).png', '2024-08-20', '/update_photo_management'),
(375, 'admin', 'admin', 'Header subtype is added with the name, Interest Free Banking', '2024-08-20', '/store_headersubtype'),
(376, 'admin', 'admin', 'Mega header is added with the title, Interest Free Banking', '2024-08-20', '/store_mega_header'),
(377, 'bedilug', 'bedilug', 'Management is added with the name, Daniel Teka', '2024-08-21', '/store_management'),
(378, 'bedilug', 'bedilug', 'Management is updated with the name, DANIEL TEKA', '2024-08-21', '/update_translate_management'),
(379, 'bedilug', 'bedilug', 'Management is added with the name, Tinsae Abera', '2024-08-21', '/store_management'),
(380, 'bedilug', 'bedilug', 'Management is added with the name, Selamawit Tesfaye', '2024-08-21', '/store_management'),
(381, 'bedilug', 'bedilug', 'Management is added with the name, Desalegn Tsegaye', '2024-08-21', '/store_management');
INSERT INTO `bulk_audit` (`id`, `maker`, `checker`, `user_action`, `date_created`, `link_page`) VALUES
(382, 'bedilug', 'bedilug', 'Management is added with the name, Mohammednur Awel', '2024-08-21', '/store_management'),
(383, 'bedilug', 'bedilug', 'Management is added with the name, Mulu Abera', '2024-08-21', '/store_management'),
(384, 'bedilug', 'bedilug', 'Management is added with the name, Henok Tsegaye', '2024-08-21', '/store_management'),
(385, 'bedilug', 'bedilug', 'Management is added with the name, Habtemariyam Legesse', '2024-08-21', '/store_management'),
(386, 'bedilug', 'bedilug', 'Management is added with the name, Tarekegn Tadele', '2024-08-21', '/store_management'),
(387, 'bedilug', 'bedilug', 'Management is added with the name, Legese Mengistu', '2024-08-21', '/store_management'),
(388, 'bedilug', 'bedilug', 'Management is added with the name, Asefa Mersa', '2024-08-21', '/store_management'),
(389, 'bedilug', 'bedilug', 'Management is added with the name, Gudisa Debeli', '2024-08-21', '/store_management'),
(390, 'bedilug', 'bedilug', 'Management is added with the name, Getnet Demissie', '2024-08-21', '/store_management'),
(391, 'bedilug', 'bedilug', 'Management is added with the name, Mesfin Fituma', '2024-08-21', '/store_management'),
(392, 'bedilug', 'bedilug', 'Management is added with the name, Mulugeta Melkamu', '2024-08-21', '/store_management'),
(393, 'bedilug', 'bedilug', 'Management is added with the name, Bekele Belay', '2024-08-21', '/store_management'),
(394, 'bedilug', 'bedilug', 'Management is updated with the name, TOLESA TAFESSE', '2024-08-21', '/update_translate_management'),
(395, 'bedilug', 'bedilug', 'Management is updated with the name, YOHANNES CHALI', '2024-08-21', '/update_translate_management'),
(396, 'bedilug', 'bedilug', 'Management is added with the name, Bikila Muluna', '2024-08-21', '/store_management'),
(397, 'bedilug', 'bedilug', 'Management is added with the name, Tolesa Tafesse', '2024-08-21', '/store_management'),
(398, 'bedilug', 'bedilug', 'Management is added with the name, Yohannis Chali', '2024-08-21', '/store_management'),
(399, 'bedilug', 'bedilug', 'Management is updated with the name, Yohannis Chali', '2024-08-22', '/update_translate_management'),
(400, 'bedilug', 'bedilug', 'Management is updated with the name, Tolesa Tafesse', '2024-08-22', '/update_translate_management'),
(401, 'bedilug', 'bedilug', 'Management is updated with the name, Bikila Muluna', '2024-08-22', '/update_translate_management'),
(402, 'bedilug', 'bedilug', 'Management is updated with the name, Bekele Belay', '2024-08-22', '/update_translate_management'),
(403, 'bedilug', 'bedilug', 'Management is updated with the name, Mulugeta Melkamu', '2024-08-22', '/update_translate_management'),
(404, 'bedilug', 'bedilug', 'Management is updated with the name, Mesfin Fituma', '2024-08-22', '/update_translate_management'),
(405, 'bedilug', 'bedilug', 'Management is updated with the name, Getnet Demissie', '2024-08-22', '/update_translate_management'),
(406, 'bedilug', 'bedilug', 'Management is updated with the name, Gudisa Debeli', '2024-08-22', '/update_translate_management'),
(407, 'bedilug', 'bedilug', 'Management is updated with the name, Asefa Mersa', '2024-08-22', '/update_translate_management'),
(408, 'bedilug', 'bedilug', 'Management is updated with the name, Legese Mengistu', '2024-08-22', '/update_translate_management'),
(409, 'bedilug', 'bedilug', 'Management is updated with the name, Tarekegn Tadele', '2024-08-22', '/update_translate_management'),
(410, 'bedilug', 'bedilug', 'Management is updated with the name, Habtemariyam Legesse', '2024-08-22', '/update_translate_management'),
(411, 'bedilug', 'bedilug', 'Management is updated with the name, Henok Tsegaye', '2024-08-22', '/update_translate_management'),
(412, 'bedilug', 'bedilug', 'Management is updated with the name, Mulu Abera', '2024-08-22', '/update_translate_management'),
(413, 'bedilug', 'bedilug', 'Management is updated with the name, Mohammednur Awel', '2024-08-22', '/update_translate_management'),
(414, 'bedilug', 'bedilug', 'Management is updated with the name, Desalegn Tsegaye', '2024-08-22', '/update_translate_management'),
(415, 'bedilug', 'bedilug', 'Management is updated with the name, Selamawit Tesfaye', '2024-08-22', '/update_translate_management'),
(416, 'bedilug', 'bedilug', 'Management is updated with the name, Tinsae Abera', '2024-08-22', '/update_translate_management'),
(417, 'bedilug', 'bedilug', 'Management is updated with the name, Daniel Teka', '2024-08-22', '/update_translate_management'),
(418, 'bedilug', 'bedilug', 'Management is updated with the name, Biruk Mekonnen', '2024-08-22', '/update_translate_management'),
(419, 'bedilug', 'bedilug', 'Management is updated with the name, Lulie Chanyalew', '2024-08-22', '/update_translate_management'),
(420, 'bedilug', 'bedilug', 'Management is updated with the name, Addisu Erana', '2024-08-22', '/update_translate_management'),
(421, 'bedilug', 'bedilug', 'Management is updated with the name, Wesenu Dereje', '2024-08-22', '/update_translate_management'),
(422, 'bedilug', 'bedilug', 'Management is updated with the name, Fitsum Arega', '2024-08-22', '/update_translate_management'),
(423, 'bedilug', 'bedilug', 'Management is updated with the name, Melese Tirfessa', '2024-08-22', '/update_translate_management'),
(424, 'bedilug', 'bedilug', 'Management is updated with the name, Dr. Michael Senbeta', '2024-08-22', '/update_translate_management'),
(425, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-21-18-00-logggg deep.png', '2024-08-22', '/update_photo_management'),
(426, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-21-18-04-photo_2024-08-10_18-18-44.jpg', '2024-08-22', '/update_photo_management'),
(427, 'bedilug', 'bedilug', 'Banner is added with the title, Siket Bank recorded a profit of 1.6 billion birr in the fiscal year 2023/24', '2024-08-22', '/store_banner'),
(428, 'admin', 'admin', 'Management is updated with the name, BIKILA  MULUNA', '2024-08-22', '/update_translate_management'),
(429, 'admin', 'admin', 'Management is updated with the name, BIKILA  MULUNA', '2024-08-22', '/update_translate_management'),
(430, 'admin', 'admin', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-08-22-12-50-drought.jpg', '2024-08-22', '/store_morephotomedia'),
(431, 'admin', 'admin', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-08-22-12-51-news2.png', '2024-08-22', '/store_morephotomedia'),
(432, 'admin', 'admin', 'User is Suspended', '2024-08-22', '/active_suspend'),
(433, 'admin', 'admin', 'Management is updated with the name, Yohannis Chali', '2024-08-22', '/update_translate_management'),
(434, 'admin', 'admin', 'Management is updated with the name, Tolesa Tafesse', '2024-08-22', '/update_translate_management'),
(435, 'admin', 'admin', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-08-24-07-27-photo_2024-08-23_12-13-06.jpg', '2024-08-24', '/store_morephotomedia'),
(436, 'admin', 'admin', 'News is added with the title, የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '2024-08-24', '/store_news'),
(437, 'admin', 'admin', 'csr is added with the title, የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '2024-08-24', '/store_csr'),
(438, 'admin', 'admin', 'Header type is added with the name, Interest Free Banking', '2024-08-24', '/store_header'),
(439, 'admin', 'admin', 'Branch is updated with the name, Addisu Gebay BranchH', '2024-08-24', '/update_translate_branch'),
(440, 'admin', 'admin', 'Branch is updated with the name, Addisu Gebay BranchH', '2024-08-24', '/update_translate_branch'),
(441, 'admin', 'admin', 'Branch is updated with the name, Bole Branch', '2024-08-24', '/update_translate_branch'),
(442, 'admin', 'admin', 'csr is updated with the title, የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '2024-08-24', '/update_translate_csr'),
(443, 'admin', 'admin', 'csr is updated with the title, የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '2024-08-24', '/update_translate_csr'),
(444, 'admin', 'admin', 'News is updated with the title, የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '2024-08-24', '/update_translate_news'),
(445, 'admin', 'admin', 'News is updated with the title, የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '2024-08-24', '/update_translate_news'),
(446, 'admin', 'admin', 'News is updated with the title, የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '2024-08-24', '/update_translate_news'),
(447, 'admin', 'admin', 'News is updated with the title, የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '2024-08-24', '/update_translate_news'),
(448, 'admin', 'admin', 'News is updated with the title, የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '2024-08-24', '/update_translate_news'),
(449, 'admin', 'admin', 'News is updated with the title, የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '2024-08-24', '/update_translate_news'),
(450, 'admin', 'admin', 'Branch is updated with the name, Addisu Gebay BranchH', '2024-08-24', '/update_translate_branch'),
(451, 'admin', 'admin', 'Branch is added with the name, Arat kilo branch', '2024-08-24', '/store_branch'),
(452, 'admin', 'admin', 'Region is added with the name, Addis Ababa', '2024-08-24', '/store_region'),
(453, 'admin', 'admin', 'Region is added with the name, Oromia', '2024-08-24', '/store_region'),
(454, 'admin', 'admin', 'User is Suspended', '2024-08-24', '/active_suspend'),
(455, 'admin', 'admin', 'User is Active', '2024-08-24', '/active_suspend'),
(456, 'admin', 'admin', 'Management is updated with the name, Bikila Muluna', '2024-08-24', '/update_translate_management'),
(457, 'admin', 'admin', 'Header subtype is added with the name, Foreign Currency Accounts', '2024-08-24', '/store_headersubtype'),
(458, 'admin', 'admin', 'Header subtype is updated with the name, Counseling Services', '2024-08-24', '/update_translate_headersubtype'),
(459, 'admin', 'admin', 'Header subtype is updated with the name, Counseling Services', '2024-08-24', '/update_translate_headersubtype'),
(460, 'admin', 'admin', 'Header subtype is updated with the name, Counseling Services', '2024-08-24', '/update_translate_headersubtype'),
(461, 'admin', 'admin', 'Header subtype is updated with the name, Foreign Currency Accounts', '2024-08-24', '/update_translate_headersubtype'),
(462, 'admin', 'admin', 'Header subtype is updated with the name, Foreign Currency Accounts', '2024-08-24', '/update_translate_headersubtype'),
(463, 'admin', 'admin', 'Header subtype is updated with the name, Counseling Services', '2024-08-24', '/update_translate_headersubtype'),
(464, 'admin', 'admin', 'Header subtype is added with the name, Interest Free Banking', '2024-08-24', '/store_headersubtype'),
(465, 'admin', 'admin', 'Mega header is updated with the title, ATM LOCATOR', '2024-08-24', '/update_translate_mega_header'),
(466, 'admin', 'admin', 'Mega header is updated with the title, ATM LOCATOR', '2024-08-24', '/update_translate_mega_header'),
(467, 'admin', 'admin', 'News is updated with the title, የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '2024-08-24', '/update_translate_news'),
(468, 'admin', 'admin', 'Header subtype is updated with the name, Foreign Currency Account', '2024-08-26', '/update_translate_headersubtype'),
(469, 'admin', 'admin', 'Header subtype is updated with the name, Interest Free Banking', '2024-08-26', '/update_translate_headersubtype'),
(470, 'admin', 'admin', 'Mega header is updated with the title, Interest Free Banking', '2024-08-26', '/update_translate_mega_header'),
(471, 'admin', 'admin', 'Mega header is added with the title, Foreign', '2024-08-26', '/store_mega_header'),
(472, 'admin', 'admin', 'Mega header is updated with the title, Foreign', '2024-08-26', '/update_translate_mega_header'),
(473, 'admin', 'admin', 'Header subtype is added with the name, test stafloan', '2024-08-26', '/store_headersubtype'),
(474, 'admin', 'admin', 'Header subtype is updated with the name, Interest Free Banking', '2024-08-26', '/update_translate_headersubtype'),
(475, 'admin', 'admin', 'Mega header is updated with the title, Interest Free Banking', '2024-08-26', '/update_translate_mega_header'),
(476, 'admin', 'admin', 'Mega header is added with the title, Foreign Currency Account', '2024-08-26', '/store_mega_header'),
(477, 'admin', 'admin', 'News is updated with the title, የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '2024-08-26', '/update_translate_news'),
(478, 'admin', 'admin', 'Header subtype is updated with the name, test stafloan', '2024-08-26', '/update_translate_headersubtype'),
(479, 'admin', 'admin', 'Mega header is updated with the title, Who We are', '2024-08-28', '/update_translate_mega_header'),
(480, 'bedilug', 'bedilug', 'Management is updated with the name, Yohannis Chali', '2024-08-29', '/update_translate_management'),
(481, 'bedilug', 'bedilug', 'Management is updated with the name, Tolesa Tafesse', '2024-08-29', '/update_translate_management'),
(482, 'bedilug', 'bedilug', 'Management is updated with the name, Bikila Muluna', '2024-08-29', '/update_translate_management'),
(483, 'bedilug', 'bedilug', 'Management is updated with the name, AYESHA SHIFA', '2024-08-29', '/update_translate_management'),
(484, 'bedilug', 'bedilug', 'Management is updated with the name, DR. MESKEREM MITIKU', '2024-08-29', '/update_translate_management'),
(485, 'bedilug', 'bedilug', 'Management is updated with the name, HULAGERESH TAZEZE', '2024-08-29', '/update_translate_management'),
(486, 'bedilug', 'bedilug', 'Management is updated with the name, GETU BUSA', '2024-08-29', '/update_translate_management'),
(487, 'bedilug', 'bedilug', 'Management is updated with the name, GEZAHNGE G/MARIAME', '2024-08-29', '/update_translate_management'),
(488, 'bedilug', 'bedilug', 'Management is updated with the name, TILAHUN TADESSE', '2024-08-29', '/update_translate_management'),
(489, 'bedilug', 'bedilug', 'Management is updated with the name, HIKMA KEYREDIN', '2024-08-29', '/update_translate_management'),
(490, 'bedilug', 'bedilug', 'Management is updated with the name, MIKIYAS MULUGETA', '2024-08-29', '/update_translate_management'),
(491, 'bedilug', 'bedilug', 'Management is updated with the name, TSIGEREDA ASHENAFI', '2024-08-29', '/update_translate_management'),
(492, 'bedilug', 'bedilug', 'Management is updated with the name, YONAS WORKU', '2024-08-29', '/update_translate_management'),
(493, 'bedilug', 'bedilug', 'Management is updated with the name, ANAOL FERID', '2024-08-29', '/update_translate_management'),
(494, 'bedilug', 'bedilug', 'Management is updated with the name, TOKKUMMA JEBESSA', '2024-08-29', '/update_translate_management'),
(495, 'bedilug', 'bedilug', 'Management is updated with the name, FEYERA JALETA', '2024-08-29', '/update_translate_management'),
(496, 'bedilug', 'bedilug', 'Management is updated with the name, HABTAMU SHIFERAW', '2024-08-29', '/update_translate_management'),
(497, 'bedilug', 'bedilug', 'Management is updated with the name, WEGENIE BEKELE', '2024-08-29', '/update_translate_management'),
(498, 'bedilug', 'bedilug', 'Management is updated with the name, MESERET TSEGAYE', '2024-08-29', '/update_translate_management'),
(499, 'bedilug', 'bedilug', 'Management is updated with the name, MEAZA WONDIMU', '2024-08-29', '/update_translate_management'),
(500, 'bedilug', 'bedilug', 'Management is updated with the name, BERHANU URGESSA', '2024-08-29', '/update_translate_management'),
(501, 'bedilug', 'bedilug', 'Management is updated with the name, DAMTEW ALEMAYEHU', '2024-08-29', '/update_translate_management'),
(502, 'bedilug', 'bedilug', 'Management is updated with the name, Samuel T', '2024-08-29', '/update_translate_management'),
(503, 'bedilug', 'bedilug', 'Management is updated with the name, Tilahun Worku', '2024-08-29', '/update_translate_management'),
(504, 'admin', 'admin', 'Mega header is updated with the title, Who We are', '2024-08-29', '/update_translate_mega_header'),
(505, 'admin', 'admin', 'Mega header is updated with the title, Who We are', '2024-08-29', '/update_translate_mega_header'),
(506, 'admin', 'admin', 'News is updated with the title, የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '2024-08-29', '/update_translate_news'),
(507, 'admin', 'admin', 'News is updated with the title, የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '2024-08-29', '/update_translate_news'),
(508, 'admin', 'admin', 'News is updated with the title, Breaking news', '2024-08-29', '/update_translate_news'),
(509, 'admin', 'admin', 'News is updated with the title, Siket Bank participated in the conference and exhibition organized by the National Bank of Ethiopia and the World Bank at the Sheraton Addis Hotel.', '2024-08-29', '/update_translate_news'),
(510, 'admin', 'admin', 'News is updated with the title, Siket Bank donated 2 million Birr support to our people who were affected by the land slide in Gofa Zone', '2024-08-29', '/update_translate_news'),
(511, 'admin', 'admin', 'Rate is updated with the currency, SEK', '2024-08-29', '/update_rate'),
(512, 'admin', 'admin', 'Rate is updated with the currency, AED', '2024-08-29', '/update_rate'),
(513, 'admin', 'admin', 'Rate is updated with the currency, EUR', '2024-08-29', '/update_rate'),
(514, 'admin', 'admin', 'Rate is updated with the currency, USD', '2024-08-29', '/update_rate'),
(515, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-08-31-06-52-siket-bnk.png', '2024-08-31', '/update_photo_management'),
(516, 'bedilug', 'bedilug', 'Banner is updated with the title, Micro Loan', '2024-08-31', '/update_translate_banner'),
(517, 'bedilug', 'bedilug', 'Management is updated with the name, WEGENIE BEKELE', '2024-08-31', '/update_translate_management'),
(518, 'bedilug', 'bedilug', 'Management is updated with the name, MESERET TSEGAYE', '2024-08-31', '/update_translate_management'),
(519, 'bedilug', 'bedilug', 'Management is updated with the name, MEAZA WONDIMU', '2024-08-31', '/update_translate_management'),
(520, 'bedilug', 'bedilug', 'Management is updated with the name, DAMTEW ALEMAYEHU', '2024-08-31', '/update_translate_management'),
(521, 'bedilug', 'bedilug', 'Management is updated with the name, TSIGEREDA ASHENAFI', '2024-09-01', '/update_translate_management'),
(522, 'bedilug', 'bedilug', 'Management is updated with the name, TOKKUMMA JEBESSA', '2024-09-01', '/update_translate_management'),
(523, 'bedilug', 'bedilug', 'Management is updated with the name, FEYERA JALETA', '2024-09-01', '/update_translate_management'),
(524, 'bedilug', 'bedilug', 'Management is updated with the name, HABTAMU SHIFERAW', '2024-09-01', '/update_translate_management'),
(525, 'bedilug', 'bedilug', 'Management is updated with the name, ANAOL FERID', '2024-09-01', '/update_translate_management'),
(526, 'bedilug', 'bedilug', 'Management is updated with the name, YONAS WORKU', '2024-09-01', '/update_translate_management'),
(527, 'bedilug', 'bedilug', 'Management is updated with the name, AYESHA SHIFA', '2024-09-01', '/update_translate_management'),
(528, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-02-11-27-logggg deep.png', '2024-09-02', '/update_photo_management'),
(529, 'bedilug', 'bedilug', 'Management is updated with the name, Tilahun Worku', '2024-09-02', '/update_translate_management'),
(530, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-02-11-33-logggg_deep_2_1_optimized_300.png', '2024-09-02', '/update_photo_management'),
(531, 'bedilug', 'bedilug', 'Management is updated with the name, AYESHA SHIFA', '2024-09-02', '/update_translate_management'),
(532, 'bedilug', 'bedilug', 'Management is updated with the name, Dr. Meskerem Mitiku', '2024-09-02', '/update_translate_management'),
(533, 'bedilug', 'bedilug', 'Management is updated with the name, Dr. Meskerem Mitiku', '2024-09-02', '/update_translate_management'),
(534, 'bedilug', 'bedilug', 'Management is updated with the name, TILAHUN WORKU', '2024-09-02', '/update_translate_management'),
(535, 'bedilug', 'bedilug', 'Management is updated with the name, Dr. MESKEREM MITIKU', '2024-09-02', '/update_translate_management'),
(536, 'bedilug', 'bedilug', 'Management is updated with the name, TILAHUN TADESSE', '2024-09-02', '/update_translate_management'),
(537, 'bedilug', 'bedilug', 'Management is updated with the name, GEZAHNGE G/MARIAME', '2024-09-02', '/update_translate_management'),
(538, 'bedilug', 'bedilug', 'Management is updated with the name, GETU BUSA', '2024-09-02', '/update_translate_management'),
(539, 'bedilug', 'bedilug', 'Management is updated with the name, HULAGERESH TAZEZE', '2024-09-02', '/update_translate_management'),
(540, 'bedilug', 'bedilug', 'Management is updated with the name, HIKMA KEYREDIN', '2024-09-02', '/update_translate_management'),
(541, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-02-11-42-logggg_deep_2_1_optimized_300.png', '2024-09-02', '/update_photo_management'),
(542, 'bedilug', 'bedilug', 'Management is updated with the name, MIKIYAS MULUGETA', '2024-09-02', '/update_translate_management'),
(543, 'bedilug', 'bedilug', 'Management is updated with the name, AYESHA SHIFA', '2024-09-02', '/update_translate_management'),
(544, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-02-11-43-logggg_deep_2_1_optimized_300.png', '2024-09-02', '/update_photo_management'),
(545, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-02-12-18-logggg deep (2).png', '2024-09-02', '/update_photo_management'),
(546, 'admin', 'admin', 'Branch is updated with the name, Addisu Gebay Branch', '2024-09-02', '/update_translate_branch'),
(547, 'bedilug', 'bedilug', 'Management is updated with the name, GEZAHENG GEBREMARIAM', '2024-09-02', '/update_translate_management'),
(548, 'admin', 'admin', 'Branch is added with the name, Arada Branch', '2024-09-02', '/store_branch'),
(549, 'admin', 'admin', 'Branch is added with the name, Dukem Branch', '2024-09-02', '/store_branch'),
(550, 'admin', 'admin', 'Branch is updated with the name, Sululta Branch', '2024-09-02', '/update_translate_branch'),
(551, 'admin', 'admin', 'Branch is updated with the name, Churichil Branch', '2024-09-02', '/update_translate_branch'),
(552, 'bedilug', 'bedilug', 'Management is added with the name, MESKEREM KINFEGEBRIEL', '2024-09-03', '/store_management'),
(553, 'bedilug', 'bedilug', 'Annual report is updated with the name, Baget', '2024-09-03', '/update_annual'),
(554, 'bedilug', 'bedilug', 'Annual report is updated with the name, Annula report 1', '2024-09-03', '/update_annual'),
(555, 'bedilug', 'bedilug', 'Annual report is updated with the name, Annual Report', '2024-09-03', '/update_annual'),
(556, 'bedilug', 'bedilug', 'Media is updated with the title, 2023/23 Annual Performance Review Meeting', '2024-09-03', '/update_translate_media'),
(557, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-02-16-48-photo_2024-08-10_15-24-36.jpg', '2024-09-03', '/update_photo_management'),
(558, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-02-17-08-photo_2024-08-10_15-13-31.jpg', '2024-09-03', '/store_morephotomedia'),
(559, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-02-17-09-photo_2024-08-10_15-24-36.jpg', '2024-09-03', '/store_morephotomedia'),
(560, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-02-17-57-HN1A1539_1_optimized_300.jpg', '2024-09-03', '/store_morephotomedia'),
(561, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-02-18-01-HN1A1796.jpg', '2024-09-03', '/store_morephotomedia'),
(562, 'bedilug', 'bedilug', 'Media is updated with the title, 2023/24 Annual Performance Review Meeting', '2024-09-03', '/update_translate_media'),
(563, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-02-18-07-photo_2024-08-23_12-15-16 (2).jpg', '2024-09-03', '/update_photo_management'),
(564, 'bedilug', 'bedilug', 'Media is updated with the title, 2024 Green Legacy Campaign', '2024-09-03', '/update_translate_media'),
(565, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-02-18-08-photo_2024-08-23_12-15-15.jpg', '2024-09-03', '/store_morephotomedia'),
(566, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-02-18-08-photo_2024-08-23_12-15-16.jpg', '2024-09-03', '/store_morephotomedia'),
(567, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-02-18-08-photo_2024-08-23_12-19-49.jpg', '2024-09-03', '/store_morephotomedia'),
(568, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-02-18-09-photo_2024-08-23_12-15-16 (2).jpg', '2024-09-03', '/store_morephotomedia'),
(569, 'bedilug', 'bedilug', 'Media is updated with the title, Transformational Leadership Training for Management', '2024-09-03', '/update_translate_media'),
(570, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-02-18-13-photo_2024-08-17_15-23-18.jpg', '2024-09-03', '/update_photo_management'),
(571, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-02-18-15-photo_2024-08-17_15-23-18.jpg', '2024-09-03', '/store_morephotomedia'),
(572, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-02-18-15-photo_2024-08-17_15-12-02.jpg', '2024-09-03', '/store_morephotomedia'),
(573, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-02-18-15-new mesi.jpg', '2024-09-03', '/store_morephotomedia'),
(574, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-02-18-15-photo_2024-08-17_15-04-44.jpg', '2024-09-03', '/store_morephotomedia'),
(575, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-02-18-16-photo_2024-08-17_15-04-44.jpg', '2024-09-03', '/store_morephotomedia'),
(576, 'bedilug', 'bedilug', 'Media is updated with the title, New product ceremony', '2024-09-03', '/update_translate_media'),
(577, 'bedilug', 'bedilug', 'Media is updated with the title, Basis siket bank', '2024-09-03', '/update_translate_media'),
(578, 'bedilug', 'bedilug', 'Management is updated with the name, HULAGERISH TAZEZ', '2024-09-03', '/update_translate_management'),
(579, 'bedilug', 'bedilug', 'Management is updated with the name, MIKIAS MULUGETA', '2024-09-03', '/update_translate_management'),
(580, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-03-08-57-HN1A1687_1_optimized_300.jpg', '2024-09-03', '/update_photo_management'),
(581, 'bedilug', 'bedilug', 'News is updated with the title, Siket Bank donated 2 million Birr support to our people who were affected by the land slide in Gofa Zone', '2024-09-03', '/update_translate_news'),
(582, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-09-03', '/update_translate_mega_header'),
(583, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-09-03', '/update_translate_mega_header'),
(584, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-09-03', '/update_translate_mega_header'),
(585, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-09-03', '/update_translate_mega_header'),
(586, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-09-03', '/update_translate_mega_header'),
(587, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-09-03', '/update_translate_mega_header'),
(588, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-09-03', '/update_translate_mega_header'),
(589, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-09-03', '/update_translate_mega_header'),
(590, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-09-03', '/update_translate_mega_header'),
(591, 'admin', 'admin', 'User is Suspended', '2024-09-04', '/active_suspend'),
(592, 'admin', 'admin', 'User is Suspended', '2024-09-04', '/active_suspend'),
(593, 'admin', 'admin', 'User is Suspended', '2024-09-04', '/active_suspend'),
(594, 'admin', 'admin', 'User is Suspended', '2024-09-04', '/active_suspend'),
(595, 'admin', 'admin', 'User is Suspended', '2024-09-04', '/active_suspend'),
(596, 'admin', 'admin', 'Banner is updated with the title, Siket bank\'s Adawa memorial branch', '2024-09-04', '/update_translate_banner'),
(597, 'admin', 'admin', 'Banner is updated with the title, Damee Adwaa Muuziyeemii', '2024-09-04', '/update_translate_banner'),
(598, 'admin', 'admin', 'Banner is updated with the title, The basis of your success', '2024-09-04', '/update_translate_banner'),
(599, 'admin', 'admin', 'Banner is updated with the title, The basis of your success', '2024-09-04', '/update_translate_banner'),
(600, 'admin', 'admin', 'Management is updated with the name, Tolesa Tafesse', '2024-09-06', '/update_translate_management'),
(601, 'admin', 'admin', 'Management is updated with the name, Tolesa Tafesse', '2024-09-06', '/update_translate_management'),
(602, 'admin', 'admin', 'ATM is updated with the name, adwa branch', '2024-09-06', '/update_translate_atm'),
(603, 'admin', 'admin', 'ATM is updated with the name, Bole Atlas', '2024-09-06', '/update_translate_atm'),
(604, 'admin', 'admin', 'ATM is updated with the name, Getu commercial', '2024-09-06', '/update_translate_atm'),
(605, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-06-09-08-HN1A1801.JPG', '2024-09-06', '/update_photo_management'),
(606, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-06-09-09-HN1A1790.JPG', '2024-09-06', '/update_photo_management'),
(607, 'bedilug', 'bedilug', 'Banner is updated with the title, Damee Adwaa Muuziyeemii', '2024-09-06', '/update_translate_banner'),
(608, 'bedilug', 'bedilug', 'Banner is updated with the title, Siket bank\'s Adawa memorial branch', '2024-09-06', '/update_translate_banner'),
(609, 'bedilug', 'bedilug', 'Banner is added with the title, Siket Bank donated 2 million Birr support to our people who were affected by the land slide in Gofa Zone', '2024-09-06', '/store_banner'),
(610, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-06-09-11-HN1A1693.JPG', '2024-09-06', '/update_photo_management'),
(611, 'admin', 'admin', 'csr is updated with the title, Supporting natural disaster', '2024-09-06', '/update_translate_csr'),
(612, 'admin', 'admin', 'Mega header is updated with the title, Foreign Currency Account', '2024-09-06', '/update_translate_mega_header'),
(613, 'admin', 'admin', 'Mega header is updated with the title, Interest Free Banking', '2024-09-06', '/update_translate_mega_header'),
(614, 'admin', 'admin', 'csr is updated with the title, የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '2024-09-06', '/update_translate_csr'),
(615, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-09-06', '/update_translate_mega_header'),
(616, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-06-13-21-logo.jpg', '2024-09-06', '/update_photo_management'),
(617, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-06-14-29-logo.jpg', '2024-09-07', '/update_photo_management'),
(618, 'admin', 'admin', 'Media is added with the title, ENKUAN ADERS', '2024-09-07', '/store_media'),
(619, 'admin', 'admin', 'Media is updated with the title, ENKUAN ADERS', '2024-09-07', '/update_translate_media'),
(620, 'admin', 'admin', 'Media is updated with the title, ENKUAN ADERS', '2024-09-07', '/update_translate_media'),
(621, 'admin', 'admin', 'News is updated with the title, የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '2024-09-07', '/update_translate_news'),
(622, 'bedilug', 'bedilug', 'csr is updated with the title, Rehabilitation of heavy rain damage in Amhara Region Br. 1.7 Million.', '2024-09-08', '/update_translate_csr'),
(623, 'admin', 'admin', 'Management is updated with the name, BERHANU URGESSA', '2024-09-09', '/update_translate_management'),
(624, 'admin', 'admin', 'Header subtype is added with the name, Digital Banking Services', '2024-09-10', '/store_headersubtype'),
(625, 'admin', 'admin', 'Mega header is added with the title, Digital Banking Services', '2024-09-10', '/store_mega_header'),
(626, 'admin', 'admin', 'Mega header is updated with the title, Digital Banking Services', '2024-09-10', '/update_translate_mega_header'),
(627, 'admin', 'admin', 'Mega header is updated with the title, Digital Banking Services', '2024-09-10', '/update_translate_mega_header'),
(628, 'admin', 'admin', 'Mega header is updated with the title, Digital Banking Services', '2024-09-10', '/update_translate_mega_header'),
(629, 'admin', 'admin', 'Other linkage is added with the name, MBLINK', '2024-09-10', '/store_linkage'),
(630, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-43-logo.png', '2024-09-12', '/update_photo_management'),
(631, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-44-logo.png', '2024-09-12', '/update_photo_management'),
(632, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-45-logo.png', '2024-09-12', '/update_photo_management'),
(633, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-45-logo.png', '2024-09-12', '/update_photo_management'),
(634, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-45-logo.png', '2024-09-12', '/update_photo_management'),
(635, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-46-logo.png', '2024-09-12', '/update_photo_management'),
(636, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-46-logo.png', '2024-09-12', '/update_photo_management'),
(637, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-46-logo.png', '2024-09-12', '/update_photo_management'),
(638, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-46-logo.png', '2024-09-12', '/update_photo_management'),
(639, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-47-logo.png', '2024-09-12', '/update_photo_management'),
(640, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-47-logo.png', '2024-09-12', '/update_photo_management'),
(641, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-47-logo.png', '2024-09-12', '/update_photo_management'),
(642, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-48-logo.png', '2024-09-12', '/update_photo_management'),
(643, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-48-logo.png', '2024-09-12', '/update_photo_management'),
(644, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-48-logo.png', '2024-09-12', '/update_photo_management'),
(645, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-48-logo.png', '2024-09-12', '/update_photo_management'),
(646, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-49-logo.png', '2024-09-12', '/update_photo_management'),
(647, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-49-logo.png', '2024-09-12', '/update_photo_management'),
(648, 'admin', 'admin', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-12-04-49-logo.png', '2024-09-12', '/update_photo_management'),
(649, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-09-12', '/update_translate_mega_header'),
(650, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-09-12', '/update_translate_mega_header'),
(651, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-09-12', '/update_translate_mega_header'),
(652, 'admin', 'admin', 'Mega header is updated with the title, Advance Saving for Loan', '2024-09-12', '/update_translate_mega_header'),
(653, 'admin', 'admin', 'Management is updated with the name, GEZAHEGN GEBREMARIAM', '2024-09-12', '/update_translate_management'),
(654, 'admin', 'admin', 'csr is updated with the title, Siket Bank donated 2 million Birr support to our people who were affected by the land slide in Gofa Zone', '2024-09-12', '/update_translate_csr'),
(655, 'admin', 'admin', 'csr is updated with the title, የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '2024-09-12', '/update_translate_csr'),
(656, 'admin', 'admin', 'csr is updated with the title, የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '2024-09-12', '/update_translate_csr'),
(657, 'bedilug', 'bedilug', 'Management is updated with the name, Melese Tirfessa', '2024-09-13', '/update_translate_management'),
(658, 'bedilug', 'bedilug', 'Management is updated with the name, Melese Tirfessa', '2024-09-13', '/update_translate_management'),
(659, 'bedilug', 'bedilug', 'Mega header is updated with the title, Voluntary Saving', '2024-09-13', '/update_translate_mega_header'),
(660, 'bedilug', 'bedilug', 'Mega header is updated with the title, Voluntary Saving', '2024-09-13', '/update_translate_mega_header'),
(661, 'bedilug', 'bedilug', 'Mega header is updated with the title, Voluntary Saving', '2024-09-13', '/update_translate_mega_header'),
(662, 'bedilug', 'bedilug', 'Mega header is updated with the title, Voluntary Saving', '2024-09-13', '/update_translate_mega_header'),
(663, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-13-16-23-Tokuma_2_1_optimized.jpg', '2024-09-14', '/update_photo_management'),
(664, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-13-16-30-Tokuma_2_1_optimized.jpg', '2024-09-14', '/update_photo_management'),
(665, 'bedilug', 'bedilug', 'Banner is added with the title, Success Bank provided financial support of 1.5 million Birr to Wubanchi charity organization.', '2024-09-14', '/store_banner'),
(666, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-13-17-59-photo_2024-09-09_14-05-31.jpg', '2024-09-14', '/update_photo_management'),
(667, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-13-18-10-photo_2024-09-09_14-05-31.jpg', '2024-09-14', '/update_photo_management'),
(668, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-13-18-11-photo_2024-09-09_14-05-31.jpg', '2024-09-14', '/update_photo_management'),
(669, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-13-18-17-photo_2024-09-09_14-05-31.jpg', '2024-09-14', '/update_photo_management'),
(670, 'bedilug', 'bedilug', 'Banner is updated with the title, Siket Bank provided financial support of 1.5 million Birr to Wubanchi charity organization.', '2024-09-14', '/update_translate_banner'),
(671, 'bedilug', 'bedilug', 'Banner is added with the title, In celebration of the 2017 New Year, Siket Bank provided support of more than 2 million birr to various sections of the society.', '2024-09-14', '/store_banner'),
(672, 'bedilug', 'bedilug', 'csr is added with the title, In celebration of the 2017 New Year, Siket Bank provided support of more than 2 million birr to various sections of the society.', '2024-09-14', '/store_csr'),
(673, 'bedilug', 'bedilug', 'csr is updated with the title, Siket Bank provided support of more than 2 million birr to various sections of the society.', '2024-09-14', '/update_translate_csr'),
(674, 'bedilug', 'bedilug', 'csr is added with the title, Siket Bank donated 1.5 million birr to the Wubanchi charity organization.', '2024-09-14', '/store_csr'),
(675, 'bedilug', 'bedilug', 'Media is added with the title, Siket Bank donated 3.5 million birr to support Wubanchi charity organizations and different society classes.', '2024-09-14', '/store_media'),
(676, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-14-05-51-HN1A3918.JPG', '2024-09-14', '/store_morephotomedia'),
(677, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-14-05-54-photo_2024-09-09_12-13-27 (2).jpg', '2024-09-14', '/store_morephotomedia'),
(678, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-14-05-55-photo_2024-09-09_12-33-04.jpg', '2024-09-14', '/store_morephotomedia'),
(679, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-14-05-55-photo_2024-09-09_17-30-19.jpg', '2024-09-14', '/store_morephotomedia'),
(680, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-14-05-55-photo_2024-09-09_14-05-31.jpg', '2024-09-14', '/store_morephotomedia'),
(681, 'bedilug', 'bedilug', 'Media photo/vedio is added with the file name, https://admin.siketbank.com/files/24-09-14-05-56-photo_2024-09-09_17-30-19 (2).jpg', '2024-09-14', '/store_morephotomedia'),
(682, 'bedilug', 'bedilug', 'Media is updated with the title, Siket Bank donated 3.5 million birr to support Wubanchi charity organization and different society classes.', '2024-09-14', '/update_translate_media'),
(683, 'bedilug', 'bedilug', 'Media is updated with the title, Siket Bank donated 3.5 million birr to support Wubanchi charity organization and different section of the society.', '2024-09-14', '/update_translate_media'),
(684, 'bedilug', 'bedilug', 'Banner is updated with the title, Siket Bank provided donated more than 2 million birr to various sections of the society.', '2024-09-14', '/update_translate_banner'),
(685, 'bedilug', 'bedilug', 'Banner is updated with the title, Siket Bank donated 1.5 million Birr to support Wubanchi charity organization.', '2024-09-14', '/update_translate_banner'),
(686, 'bedilug', 'bedilug', 'Banner is updated with the title, Siket Bank donated 1.5 million birr to support Wubanchi charity organization.', '2024-09-14', '/update_translate_banner'),
(687, 'bedilug', 'bedilug', 'Photo is updated with the name, ', '2024-09-14', '/update_photo_management'),
(688, 'bedilug', 'bedilug', 'Mega header is updated with the title, Voluntary Saving', '2024-09-14', '/update_translate_mega_header'),
(689, 'bedilug', 'bedilug', 'News is added with the title, Siket Bank donated 1.5 million birr to the Wubanchi charity organization.', '2024-09-16', '/store_news'),
(690, 'bedilug', 'bedilug', 'News is added with the title, Siket Bank provided support of more than 2 million birr to various sections of the society.', '2024-09-16', '/store_news'),
(691, 'bedilug', 'bedilug', 'Distirct is updated with the name, Arada', '2024-09-16', '/update_translate_district'),
(692, 'bedilug', 'bedilug', 'Distirct is updated with the name, Arada District', '2024-09-16', '/update_translate_district'),
(693, 'bedilug', 'bedilug', 'Distirct is updated with the name, East District', '2024-09-16', '/update_translate_district'),
(694, 'bedilug', 'bedilug', 'Distirct is updated with the name, Mercato District', '2024-09-16', '/update_translate_district'),
(695, 'bedilug', 'bedilug', 'Distirct is updated with the name, North District', '2024-09-16', '/update_translate_district'),
(696, 'bedilug', 'bedilug', 'Distirct is added with the name, North East District', '2024-09-16', '/store_district'),
(697, 'bedilug', 'bedilug', 'Distirct is added with the name, South West District', '2024-09-16', '/store_district'),
(698, 'bedilug', 'bedilug', 'Distirct is added with the name, West District', '2024-09-16', '/store_district'),
(699, 'bedilug', 'bedilug', 'Distirct is updated with the name, Arada', '2024-09-16', '/update_translate_district'),
(700, 'bedilug', 'bedilug', 'Distirct is updated with the name, East', '2024-09-16', '/update_translate_district'),
(701, 'bedilug', 'bedilug', 'Distirct is updated with the name, Mercato', '2024-09-16', '/update_translate_district'),
(702, 'bedilug', 'bedilug', 'Distirct is updated with the name, North', '2024-09-16', '/update_translate_district'),
(703, 'bedilug', 'bedilug', 'Distirct is updated with the name, North', '2024-09-16', '/update_translate_district'),
(704, 'bedilug', 'bedilug', 'Distirct is updated with the name, South West', '2024-09-16', '/update_translate_district'),
(705, 'bedilug', 'bedilug', 'Distirct is updated with the name, West', '2024-09-16', '/update_translate_district'),
(706, 'bedilug', 'bedilug', 'Branch is updated with the name, Addisu Gebeya', '2024-09-16', '/update_translate_branch'),
(707, 'bedilug', 'bedilug', 'Branch is updated with the name, Arada', '2024-09-16', '/update_translate_branch'),
(708, 'bedilug', 'bedilug', 'Branch is updated with the name, Arat Kilo', '2024-09-16', '/update_translate_branch'),
(709, 'bedilug', 'bedilug', 'Branch is updated with the name, Churchill', '2024-09-16', '/update_translate_branch'),
(710, 'bedilug', 'bedilug', 'Branch is updated with the name, Dukam', '2024-09-16', '/update_translate_branch'),
(711, 'bedilug', 'bedilug', 'Branch is updated with the name, Sululta', '2024-09-16', '/update_translate_branch'),
(712, 'bedilug', 'bedilug', 'Branch is updated with the name, Adwa', '2024-09-16', '/update_translate_branch'),
(713, 'bedilug', 'bedilug', 'Branch is updated with the name, Bole', '2024-09-16', '/update_translate_branch'),
(714, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-16-08-09-Feyera 2.jpg', '2024-09-16', '/update_photo_management'),
(715, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-16-08-09-Tsigereda 2.jpg', '2024-09-16', '/update_photo_management'),
(716, 'admin', 'admin', 'Other linkage is updated with the name, MBLINK', '2024-09-16', '/update_translate_linkage'),
(717, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-17-07-12-photo_2024-09-09_17-30-19 (2).jpg', '2024-09-17', '/update_photo_management'),
(718, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-17-07-13-photo_2024-09-09_17-30-19.jpg', '2024-09-17', '/update_photo_management'),
(719, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-17-07-13-photo_2024-09-09_17-30-19 (2).jpg', '2024-09-17', '/update_photo_management'),
(720, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-17-07-15-photo_2024-09-09_17-30-19_2_1_optimized.jpg', '2024-09-17', '/update_photo_management'),
(721, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-17-07-16-photo_2024-09-09_17-30-19.jpg', '2024-09-17', '/update_photo_management'),
(722, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-17-07-20-HN1A3913.JPG', '2024-09-17', '/update_photo_management'),
(723, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-17-07-24-photo_2024-09-09_17-30-19.jpg', '2024-09-17', '/update_photo_management'),
(724, 'bedilug', 'bedilug', 'Management is updated with the name, AYESHA SHIFA', '2024-09-17', '/update_translate_management'),
(725, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-17-08-56-Updated_1_optimized_300.jpg', '2024-09-17', '/update_photo_management'),
(726, 'admin', 'admin', 'Banner is updated with the title, Siket Bank donated more than 2 million birr to various sections of the society.', '2024-09-17', '/update_translate_banner'),
(727, 'admin', 'admin', 'Header subtype is added with the name, Sharia Advisory Committee', '2024-09-17', '/store_headersubtype'),
(728, 'admin', 'admin', 'Mega header is added with the title, Sharia Advisory Committee', '2024-09-17', '/store_mega_header'),
(729, 'admin', 'admin', 'Mega header is updated with the title, Sharia Advisory Committee', '2024-09-17', '/update_translate_mega_header'),
(730, 'bedilug', 'bedilug', 'Branch is updated with the name, Churchill', '2024-09-17', '/update_translate_branch'),
(731, 'bedilug', 'bedilug', 'Mega header is updated with the title, Who We are', '2024-09-17', '/update_translate_mega_header'),
(732, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-17-13-27-photo_2024-09-09_17-30-19.jpg', '2024-09-17', '/update_photo_management'),
(733, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-17-13-27-photo_2024-09-09_17-30-19.jpg', '2024-09-17', '/update_photo_management'),
(734, 'bedilug', 'bedilug', 'Media is added with the title, 2017 New Year', '2024-09-17', '/store_media'),
(735, 'admin', 'admin', 'Search is added with the title, loan', '2024-09-21', '/store_search'),
(736, 'bedilug', 'bedilug', 'Header subtype is updated with the name, International Services', '2024-09-25', '/update_translate_headersubtype'),
(737, 'bedilug', 'bedilug', 'Mega header is added with the title, Diaspora Account', '2024-09-25', '/store_mega_header'),
(738, 'bedilug', 'bedilug', 'Mega header is added with the title, Import', '2024-09-25', '/store_mega_header');
INSERT INTO `bulk_audit` (`id`, `maker`, `checker`, `user_action`, `date_created`, `link_page`) VALUES
(739, 'bedilug', 'bedilug', 'Mega header is added with the title, Export', '2024-09-25', '/store_mega_header'),
(740, 'bedilug', 'bedilug', 'Mega header is added with the title, Remittance', '2024-09-25', '/store_mega_header'),
(741, 'bedilug', 'bedilug', 'Mega header is updated with the title, Domestic Hawala Service', '2024-09-25', '/update_translate_mega_header'),
(742, 'bedilug', 'bedilug', 'Header subtype is added with the name, Guarantee', '2024-09-25', '/store_headersubtype'),
(743, 'bedilug', 'bedilug', 'Mega header is added with the title, Sharia Advisory Committee', '2024-09-25', '/store_mega_header'),
(744, 'bedilug', 'bedilug', 'Branch is added with the name, Aba Koran Branch', '2024-09-25', '/store_branch'),
(745, 'bedilug', 'bedilug', 'Branch is added with the name, Ras Desta', '2024-09-25', '/store_branch'),
(746, 'bedilug', 'bedilug', 'Branch is updated with the name, Aba Koran', '2024-09-25', '/update_translate_branch'),
(747, 'bedilug', 'bedilug', 'Branch is added with the name, Semen Mazegaja', '2024-09-25', '/store_branch'),
(748, 'bedilug', 'bedilug', 'Mega header is updated with the title, Who We are', '2024-09-25', '/update_translate_mega_header'),
(749, 'bedilug', 'bedilug', 'Mega header is updated with the title, Who We are', '2024-09-25', '/update_translate_mega_header'),
(750, 'bedilug', 'bedilug', 'Branch is added with the name, Piassa Gedam Sefer', '2024-09-25', '/store_branch'),
(751, 'bedilug', 'bedilug', 'Branch is added with the name, Sidist Kilo', '2024-09-25', '/store_branch'),
(752, 'bedilug', 'bedilug', 'Branch is added with the name, Sanford', '2024-09-25', '/store_branch'),
(753, 'bedilug', 'bedilug', 'Branch is added with the name, Unity Park', '2024-09-25', '/store_branch'),
(754, 'bedilug', 'bedilug', 'Branch is added with the name, Arat Kilo', '2024-09-25', '/store_branch'),
(755, 'bedilug', 'bedilug', 'Branch is added with the name, Piassa Amper', '2024-09-25', '/store_branch'),
(756, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-28-09-06-Web.png', '2024-09-28', '/update_photo_management'),
(757, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-28-09-07-Web.png', '2024-09-28', '/update_photo_management'),
(758, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-28-09-07-Web.png', '2024-09-28', '/update_photo_management'),
(759, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-28-09-07-Web.png', '2024-09-28', '/update_photo_management'),
(760, 'bedilug', 'bedilug', 'Photo is updated with the name, https://admin.siketbank.com/files/24-09-28-09-07-Web.png', '2024-09-28', '/update_photo_management'),
(761, 'bedilug', 'bedilug', 'Branch is updated with the name, Arat Kilo', '2024-09-28', '/update_translate_branch'),
(762, 'bedilug', 'bedilug', 'Branch is added with the name, Gofa', '2024-10-10', '/store_branch'),
(763, 'bedilug', 'bedilug', 'Branch is added with the name, Churchill', '2024-10-10', '/store_branch'),
(764, 'bedilug', 'bedilug', 'Branch is added with the name, Arada', '2024-10-10', '/store_branch'),
(765, 'bedilug', 'bedilug', 'Branch is added with the name, Sheger Menafesha', '2024-10-10', '/store_branch'),
(766, 'bedilug', 'bedilug', 'Branch is added with the name, Emperiyal', '2024-10-10', '/store_branch'),
(767, 'bedilug', 'bedilug', 'Branch is updated with the name, Addisu Gebeya', '2024-10-10', '/update_translate_branch'),
(768, 'bedilug', 'bedilug', 'Branch is added with the name, Adisu Gebeya', '2024-10-10', '/store_branch'),
(769, 'bedilug', 'bedilug', 'Distirct is updated with the name, North', '2024-10-10', '/update_translate_district'),
(770, 'bedilug', 'bedilug', 'Distirct is updated with the name, North', '2024-10-10', '/update_translate_district'),
(771, 'bedilug', 'bedilug', 'Distirct is updated with the name, North East', '2024-10-10', '/update_translate_district'),
(772, 'bedilug', 'bedilug', 'Branch is added with the name, Ayat', '2024-10-10', '/store_branch'),
(773, 'bedilug', 'bedilug', 'Branch is added with the name, Betel Micheal', '2024-10-10', '/store_branch'),
(774, 'bedilug', 'bedilug', 'Branch is updated with the name, Betel Micheal', '2024-10-10', '/update_translate_branch'),
(775, 'bedilug', 'bedilug', 'Branch is added with the name, Betel Micheal', '2024-10-10', '/store_branch'),
(776, 'bedilug', 'bedilug', 'Branch is added with the name, Kasancheze Hilton', '2024-10-10', '/store_branch'),
(777, 'admin', 'admin', 'Mega header is updated with the title, Property and Life Insurance', '2024-10-22', '/update_translate_mega_header'),
(778, 'admin', 'admin', 'Mega header is updated with the title, Credit business insurance', '2024-10-22', '/update_translate_mega_header'),
(779, 'admin', 'admin', 'Mega header is updated with the title, Life Insurance', '2024-10-22', '/update_translate_mega_header'),
(780, 'admin', 'admin', 'Header subtype is added with the name, Guarantee', '2024-10-22', '/store_headersubtype'),
(781, 'admin', 'admin', 'Mega header is added with the title, Foreign', '2024-10-22', '/store_mega_header'),
(782, 'admin', 'admin', 'Mega header is added with the title, Local', '2024-10-22', '/store_mega_header'),
(783, 'admin', 'admin', 'Mega header is added with the title, Interest Free Banking (IFB)', '2024-10-22', '/store_mega_header');

-- --------------------------------------------------------

--
-- Table structure for table `csr`
--

CREATE TABLE `csr` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text DEFAULT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'en',
  `parent_id` int(11) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `csr`
--

INSERT INTO `csr` (`id`, `title`, `description`, `file`, `language`, `parent_id`, `date_created`, `status`) VALUES
(3, 'Supporting natural disaster', '<p>Supporting natural disaster&nbsp;............</p>', 'https://admin.siketbank.com/files/24-07-05-10-53-borana.jpg', 'en', NULL, '2024-07-05', 'Suspend'),
(4, 'Rehabilitation of heavy rain damage in Amhara Region Br. 1.7 Million.', '<p>Rehabilitation of heavy rain damage in Amhara Region Br. 1.7 Million.</p>', 'https://admin.siketbank.com/files/24-07-05-11-00-drought.jpg', 'en', NULL, '2024-07-05', 'Suspend'),
(5, 'Disaster', '<p>Disaster ...........test</p>', 'https://admin.siketbank.com/files/24-08-15-09-38-photo_2024-08-10_13-29-45.jpg', 'en', NULL, '2024-07-19', 'Suspend'),
(6, 'Siket Bank donated 2 million Birr support to our people who were affected by the land slide in Gofa Zone', '<p class=\"ql-align-justify\">Siket Bank donated 2 million Birr support to our people who were affected by the land slide in Gofa Zone, Geze Gofa Woreda, Kencho Shacha Gozdi Kebele.</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">Siket Bank has been known for fulfilling its social responsibilities at various times and it is remembered that it has been doing its part by helping the low-income sections of our society and participating in national development projects.</p>', 'https://admin.siketbank.com/files/24-08-15-09-44-photo_2024-08-10_13-29-45.jpg', 'en', NULL, '2024-08-15', 'Active'),
(7, 'የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '<p class=\"ql-align-justify\">\"የምትተክል ሀገር የሚያፀና ትውልድ\" በሚል መሪ ቃል በተካሄደው 6ኛው የአረንጓዴ አሻራ መርሐ ግብር ላይ የስኬት ባንክ ፕሬዝዳንት አቶ ዳምጠው አለማየሁ፣ የስራ አመራሮች እና ሰራተኞች የአረንጓዴ አሻራ ማኖር የችግኝ ተከላ መርሃ ግብር ነሐሴ 17 ቀን 2016 ዓ.ም. በአዲስ አበባ ከተማ በእንጦጦ ፓርክ አካሂደዋል፡፡</p><p class=\"ql-align-justify\">ባንካችን ከዚህ ቀደምም ተመሳሳይ የችግኝ ተከላ መርሀ ግብሮችን ያካሄደ ሲሆን ይህም ማህበራዊ ሃላፊነቱን በመወጣት ረገድ እያበረከተ የሚገኘው አስተዋፅኦ አካል ነው፡፡</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-center\">ስኬት ባንክ</p><p class=\"ql-align-center\">የስኬትዎ መሰረት!</p>', 'https://admin.siketbank.com/files/24-08-24-07-34-photo_2024-08-23_12-13-06.jpg', 'en', NULL, '2024-08-24', 'Active'),
(8, 'Siket Bank provided support of more than 2 million birr to various sections of the society.', '<p><strong class=\"ql-font-monospace\">Siket Bank</strong><span class=\"ql-font-monospace\"> provided financial, flour, and oil support to 125 different sections of society by coordinating its employees. On the donation program, the Vice President of Success Bank Corporate Strategy and Marketing, Mrs. Maza Wondimu, said that our main objective in organizing this event is to strengthen the connection with our society by supporting the low-level societies and also with the intention of developing the spirit of solidarity and commitment among the families of Siket Bank.</span></p>', 'https://admin.siketbank.com/files/24-09-17-13-27-photo_2024-09-09_17-30-19.jpg', 'en', NULL, '2024-09-14', 'Active'),
(9, 'Siket Bank donated 1.5 million birr to the Wubanchi charity organization.', '<p>On the occasion of the 2017 New Year\'s Day, our bank provided financial assistance of 1.5 million birr to the wubanchi charity organization, which is making a great contribution in terms of fulfilling its social responsibility.</p><p>On the donation program, the director of the Wubanchi charity organization, Mrs. Tsedey Tefera, thanked the Siket bank for the financial support given to the organization and expressed that it will motivate them for further activities.</p>', 'https://admin.siketbank.com/files/24-09-14-05-45-photo_2024-09-09_14-05-31.jpg', 'en', NULL, '2024-09-14', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'en',
  `parent_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`id`, `name`, `code`, `language`, `parent_id`, `date_created`, `status`) VALUES
(7, 'North', 'South', 'en', NULL, '2024-07-02', 'Active'),
(8, 'Mercato', 'North', 'en', NULL, '2024-07-10', 'Active'),
(9, 'East', 'East', 'en', NULL, '2024-07-19', 'Active'),
(10, 'Lixa', 'East', 'om', 9, '2024-07-19', 'Suspend'),
(11, 'Arada', 'centr', 'en', NULL, '2024-08-17', 'Active'),
(12, 'North East', 'North', 'en', NULL, '2024-09-16', 'Active'),
(13, 'South West', 'South', 'en', NULL, '2024-09-16', 'Active'),
(14, 'West', 'West ', 'en', NULL, '2024-09-16', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` bigint(20) NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'en',
  `parent_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `faq`
--

INSERT INTO `faq` (`id`, `question`, `answer`, `language`, `parent_id`, `date_created`, `status`) VALUES
(1, 'What types of services does Siket Bank have?', '<p>Answer: </p><p>•&nbsp;Saving Services</p><p>•&nbsp;Loan Services</p><p>•&nbsp;Micro Insurance Services </p><p>•&nbsp;Mobile &amp; Agent Banking services</p><p>•&nbsp;Third Part fund administration</p>', 'en', NULL, '2024-06-14', 'Active'),
(2, 'Where is Siket Bank\'s head office located?', '<p>Answer:</p><p>•&nbsp;Churchill Road, Infront of Haron Tower, Addis Ababa, Ethiopia</p>', 'en', NULL, '2024-06-14', 'Active'),
(3, 'How many branches does Siket Bank have currently?', '<p>Answer:</p><p>•&nbsp;152</p>', 'en', NULL, '2024-06-14', 'Active'),
(4, 'What is the Siket Bank contact center number?', '<p>Answer:</p><p>•&nbsp;8342</p>', 'en', NULL, '2024-06-14', 'Active'),
(5, 'Baankiin siikeet damee meeqa qaba?', '<ul><li>152</li></ul>', 'om', 3, '2024-06-16', 'Active'),
(6, 'what is short code of siket bank', '<p>test *test#</p>', 'en', NULL, '2024-08-19', 'Suspend');

-- --------------------------------------------------------

--
-- Table structure for table `header_subtype`
--

CREATE TABLE `header_subtype` (
  `id` int(11) NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'en',
  `parent_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `header_subtype`
--

INSERT INTO `header_subtype` (`id`, `code`, `name`, `language`, `parent_id`, `date_created`, `status`) VALUES
(19, 'Savin', 'Saving Services', 'en', NULL, '2024-08-06', 'Active'),
(20, 'Loan ', 'Loan Services', 'en', NULL, '2024-08-13', 'Active'),
(21, 'Small', 'Small Insurance Service', 'en', NULL, '2024-08-13', 'Active'),
(22, 'Couns', 'Counseling Services', 'en', NULL, '2024-08-13', 'Active'),
(23, 'Domes', 'International Services', 'en', NULL, '2024-08-13', 'Active'),
(24, 'Inter', 'Interest Free Banking', 'en', NULL, '2024-08-20', 'Active'),
(25, 'Forei', 'Foreign Currency Account', 'en', NULL, '2024-08-24', 'Active'),
(26, 'Inter', 'Interest Free Banking', 'en', NULL, '2024-08-24', 'Active'),
(27, 'test ', 'test stafloan', 'en', NULL, '2024-08-26', 'Suspend'),
(28, 'Digit', 'Digital Banking Services', 'en', NULL, '2024-09-10', 'Active'),
(29, 'Shari', 'Sharia Advisory Committee', 'en', NULL, '2024-09-17', 'Active'),
(30, 'Guara', 'Guarantee', 'en', NULL, '2024-09-25', 'Active'),
(31, 'Guara', 'Guarantee', 'en', NULL, '2024-10-22', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `header_type`
--

CREATE TABLE `header_type` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(500) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `header_type`
--

INSERT INTO `header_type` (`id`, `code`, `name`, `date_created`, `status`) VALUES
(1, 'Produ', 'Product & Services', '2024-05-26', 'Active'),
(2, 'Infor', 'Information', '2024-05-26', 'Active'),
(4, 'About', 'About US', '2024-06-09', 'Active'),
(5, 'Digit', 'Digital Banking', '2024-06-09', 'Active'),
(6, 'Home', 'Home', '2024-08-03', 'Active'),
(7, 'home', 'home', '2024-08-17', 'Active'),
(8, 'E- co', 'E- comerice', '2024-08-17', 'Active'),
(9, 'Inter', 'Interest Free Banking', '2024-08-24', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `code` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `name`, `code`, `date_created`, `status`) VALUES
(1, 'English', 'en', '2024-05-26', 'Active'),
(2, 'Afaan Oromoo', 'om', '2024-05-26', 'Active'),
(3, 'Amharic', 'am', '2024-05-26', 'Active'),
(4, 'somaliya', 'ayila', '2024-06-07', 'Suspended'),
(5, 'Tigrigna', 'ti', '2024-07-27', 'Suspended');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) NOT NULL,
  `title` text NOT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text NOT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'en',
  `parent_id` bigint(50) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL,
  `more_photo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `title`, `type`, `description`, `file`, `language`, `parent_id`, `date_created`, `status`, `more_photo`) VALUES
(5, 'Basis siket bank', 'gallery', '<p>Here is the basis of the siket bank.</p>', 'https://admin.siketbank.com/files/24-07-06-05-32-siket-bnk.png', 'en', NULL, '2024-07-02', 'Suspend', NULL),
(6, 'New product ceremony', 'gallery', '<p>New product ceremony&nbsp;is ...</p>', 'https://admin.siketbank.com/files/24-07-05-11-15-news3.png', 'en', NULL, '2024-07-04', 'Suspend', NULL),
(7, 'Transformational Leadership Training for Management', 'gallery', '<p><br></p>', 'https://admin.siketbank.com/files/24-09-02-18-13-photo_2024-08-17_15-23-18.jpg', 'en', NULL, '2024-07-10', 'Active', 'https://admin.siketbank.com/files/24-09-02-18-15-photo_2024-08-17_15-12-02.jpg{**}https://admin.siketbank.com/files/24-09-02-18-15-new mesi.jpg{**}https://admin.siketbank.com/files/24-09-02-18-15-photo_2024-08-17_15-04-44.jpg{**}https://admin.siketbank.com/files/24-09-02-18-16-photo_2024-08-17_15-04-44.jpg'),
(8, '2024 Green Legacy Campaign', 'gallery', '<p><br></p>', 'https://admin.siketbank.com/files/24-09-02-18-07-photo_2024-08-23_12-15-16 (2).jpg', 'en', NULL, '2024-07-19', 'Active', 'https://admin.siketbank.com/files/24-08-22-12-50-drought.jpg{**}https://admin.siketbank.com/files/24-08-22-12-51-news2.png{**}https://admin.siketbank.com/files/24-08-24-07-27-photo_2024-08-23_12-13-06.jpg{**}https://admin.siketbank.com/files/24-09-02-18-08-photo_2024-08-23_12-15-15.jpg{**}https://admin.siketbank.com/files/24-09-02-18-08-photo_2024-08-23_12-15-16.jpg{**}https://admin.siketbank.com/files/24-09-02-18-08-photo_2024-08-23_12-19-49.jpg{**}https://admin.siketbank.com/files/24-09-02-18-09-photo_2024-08-23_12-15-16 (2).jpg'),
(9, '2023/24 Annual Performance Review Meeting', 'gallery', '<p><br></p>', 'https://admin.siketbank.com/files/24-09-02-16-48-photo_2024-08-10_15-24-36.jpg', 'en', NULL, '2024-08-16', 'Active', 'https://admin.siketbank.com/files/24-09-02-17-08-photo_2024-08-10_15-13-31.jpg{**}https://admin.siketbank.com/files/24-09-02-17-09-photo_2024-08-10_15-24-36.jpg{**}https://admin.siketbank.com/files/24-09-02-17-57-HN1A1539_1_optimized_300.jpg{**}https://admin.siketbank.com/files/24-09-02-18-01-HN1A1796.jpg{**}https://admin.siketbank.com/files/24-09-02-18-15-photo_2024-08-17_15-23-18.jpg'),
(10, 'ENKUAN ADERS', 'gallery', '<p>IGGY</p>', 'https://admin.siketbank.com/files/24-09-07-07-45-FF.mp4', 'en', NULL, '2024-09-07', 'Suspend', NULL),
(11, 'Siket Bank donated 3.5 million birr to support Wubanchi charity organization and different section of the society.', 'gallery', '<p><br></p>', 'https://admin.siketbank.com/files/24-09-14-05-51-photo_2024-09-09_14-05-31.jpg', 'en', NULL, '2024-09-14', 'Active', 'https://admin.siketbank.com/files/24-09-14-05-51-HN1A3918.JPG{**}https://admin.siketbank.com/files/24-09-14-05-54-photo_2024-09-09_12-13-27 (2).jpg{**}https://admin.siketbank.com/files/24-09-14-05-55-photo_2024-09-09_12-33-04.jpg{**}https://admin.siketbank.com/files/24-09-14-05-55-photo_2024-09-09_17-30-19.jpg{**}https://admin.siketbank.com/files/24-09-14-05-55-photo_2024-09-09_14-05-31.jpg{**}https://admin.siketbank.com/files/24-09-14-05-56-photo_2024-09-09_17-30-19 (2).jpg'),
(12, '2017 New Year', 'video', '<p>2017 Happy New Year&nbsp;Production </p>', 'https://admin.siketbank.com/files/24-09-17-13-39-TVC Amharic.mp4', 'en', NULL, '2024-09-17', 'Active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mega_header`
--

CREATE TABLE `mega_header` (
  `id` int(11) NOT NULL,
  `header_type_code` varchar(100) NOT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header_subtype_id` bigint(20) DEFAULT NULL,
  `file` text DEFAULT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'en',
  `parent_id` int(11) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mega_header`
--

INSERT INTO `mega_header` (`id`, `header_type_code`, `title`, `description`, `header_subtype_id`, `file`, `language`, `parent_id`, `date_created`, `status`) VALUES
(42, 'Produ', 'Advance Saving for Loan', '<p class=\"ql-align-justify\"><strong>Advance saving for business loan</strong></p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong><span class=\"ql-cursor\">﻿</span></strong>Our loan customers with a repayment period of one year or less are required to save 5% of the loan as a pre-loan deposit. For more than one year, business loan applicants need to save up to 20% of the loan in order to benefit from the loan service.</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>Advance saving for housing loan</strong></p><p class=\"ql-align-justify\">We provide this service for loan customers who want to benefit from house loan services, including construction and renovation, must save 20 percent of the loan amount for 3 months in advance.</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>Advance saving for personal loan</strong></p><p class=\"ql-align-justify\">Our personal advance savings are divided into two categories:</p><ol><li class=\"ql-align-justify ql-indent-2\"><strong>Pre-loan savings for government employees</strong>: We offer personal loan service for government employees, and they need to save 10% of the loan amount for at least 2 consecutive months to get a loan that can be used for personal purposes such as education, social and economic issues, etc.</li><li class=\"ql-align-justify ql-indent-2\"><strong>Pre-loan savings for non-government employees</strong>: We offer personal loan service for non-government employees &amp; they need to save 20% of the loan for at least 2 consecutive months before availing of the loan service.</li></ol><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>Advance saving for vehicle loan</strong></p><p class=\"ql-align-justify\">For this type of savings, our customers who want to borrow a loan from our bank for the purchase of a car should save 20% to 30% of the loan amount for 3 months in advance.</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>Advance saving for Cooperatives and Edir associations</strong></p><p class=\"ql-align-justify\">We provide this saving service for legally recognized cooperatives and edit associations, and they need to save 20% of the required loan amount when they want to borrow money from our bank for their association or members.</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>Women Entrepreneur Advance Loan Savings (WEDP)</strong></p><p class=\"ql-align-justify\">We provide this service for women entrepreneur &amp; must save 20% of the loan amount to qualify for the loan.</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>Micro, small and medium enterprise pre-loan savings</strong></p><p class=\"ql-align-justify\">We offer this saving service for those organized through job creation and enterprise development and want loan service from our bank. They should save 10% in pre-loan savings.</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>Youth Entrepreneur Advance Loan Savings (YEDP)</strong></p><p class=\"ql-align-justify\">We provide an advance loan saving service for youth entrepreneurs, and they must save 10% of the loan amount to qualify for the loan.</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>Advance saving for a special support loan</strong></p><p class=\"ql-align-justify\">We provide an advance savings service for our customers who need special assistance with any type of loan, and they must save 10% of the loan as a pre-loan deposit.</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>Advance saving for group loan</strong></p><p class=\"ql-align-justify\">We offer this type of savings for group borrowers, and they must save 5% of the loan amount to qualify for the loan.</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><strong>Advance saving for special fund loan</strong></p><p class=\"ql-align-justify\">Beneficiaries of special fund loans are subject to agreements with institutions providing the funds.</p><p><br></p>', 19, 'https://admin.siketbank.com/files/24-08-18-16-00-download.png', 'en', NULL, '2024-08-06', 'Active'),
(43, 'About', 'Who We are', '<p class=\"ql-align-justify\">Welcome to Siket Bank, where your financial goals meet our commitment to operational excellence.</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">Addis Ababa Job Creation Project Office established in 1996 G.C in Addis Ababa City Administration to provide financial services to the poor people who cannot access financial services from formal banks in the city. The project office was established as microfinance institution by the name of Addis Credit and Saving Institution S.C in 2000 G.C by six shareholders with 517,000 paid up capital &amp; subscribed capital of birr 1,017,000 based on National Bank of Ethiopia proclamation No. 40/96 which laid the legal basis for the establishment of microfinance institutions. Addis Credit and Saving institution S.C began its operation with 5 branch offices and 85 employees. During its first operation year the institution reached 1,521 customers with outstanding loan of 1,799,513 birr.</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">Currently, based on the national bank of Ethiopia’s directive Addis Credit and Saving Institution transformed itself to the bank by the name called SIKET BANK S.C and acquired a banking business license. The bank has been showing continued growth as evidenced by its number of customers, capital growth, assets, outstanding loans, employees, number of branches, etc. Today, the bank has 7.9 billion birr in capital, the total assets of the bank reach 15.8 billion birr, the number of customers has reached more than 537 thousand, the number of employees has increased to more than 1289 and the number of branch offices has reached 151.</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">At Siket Bank, we believe in Operational Excellence as the strategic approach to optimize their internal processes, technologies, and organizational culture to achieve higher efficiency, better customer service, risk management, employee development, quality assurance and improved financial performance. It focuses on creating a seamless, efficient, and effective operation that consistently delivers value and meets or exceeds customer expectations and stakeholders</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\"><br></p><h4 class=\"ql-align-justify\">Our Vision</h4><ul><li class=\"ql-align-justify\">To be the preferred bank in Ethiopia.</li></ul><p class=\"ql-align-justify\"><br></p><h4 class=\"ql-align-justify\">Our Mission</h4><ul><li class=\"ql-align-justify\">To provide integrated financial services using advanced technology and skilled employees with the aim to create value for stakeholders.</li></ul>', NULL, 'https://admin.siketbank.com/files/24-09-02-12-18-logggg deep (2).png', 'en', NULL, '2024-08-07', 'Active'),
(44, 'Produ', 'Savings with Loan Repayment', '<h2><strong>Savings with Loan Repayment</strong></h2><p><br></p><p class=\"ql-align-justify\">In addition to the pre-loan savings, our customers who avail of the loan must regularly save 0.2% of the loan they have taken as a compulsory savings with their loan repayments during their repayment period with the bank.</p>', 19, 'https://admin.siketbank.com/files/24-09-12-04-49-logo.png', 'en', NULL, '2024-08-13', 'Active'),
(45, 'Produ', 'Voluntary Saving', '<ul><li class=\"ql-align-justify\"><strong>Passbook Saving</strong></li></ul><p class=\"ql-align-justify\">By maximizing revenue and reducing expenses, all our customers can save their money at our bank. It is a type of savings that our customers can save and withdraw whenever they want; starting at 30 ETB, with interest calculated every month.</p><ul><li class=\"ql-align-justify\"><strong>Fixed Time Deposit</strong></li></ul><p class=\"ql-align-justify\">It is a type of savings that our customers keep with our bank for a period determined in advance by the agreement of the bank and the customer. This type of savings pays better interest than bank savings.</p><p class=\"ql-align-justify\">Types of Time Limit Savings:</p><ul><li class=\"ql-align-justify ql-indent-1\">Savings for a period of 6 months</li><li class=\"ql-align-justify ql-indent-1\">One-year time limit savings</li></ul><p class=\"ql-align-justify\"><br></p><ul><li class=\"ql-align-justify\"><strong>Box saving</strong></li></ul><p class=\"ql-align-justify\">It is a type of saving that allows our customers to save from their place of work without wasting their working time, creates a comfortable environment for customers to realize that it is possible to save starting from cents, and develops their savings culture.</p><p class=\"ql-align-justify\">&nbsp;</p><ul><li class=\"ql-align-justify\"><strong>Children\'s savings</strong></li></ul><p class=\"ql-align-justify\">This type of savings can be used by the family or guardian of the teenagers to help teenagers under the age of 18 practices the culture of saving.</p><ul><li class=\"ql-align-justify\"><strong>Student savings</strong></li></ul><p class=\"ql-align-justify\">It is a savings service that focuses on students who are on the academic so that they have a sufficient understanding of savings during their education and to enable them to develop a savings culture by saving money they have and to be ready for loan advance savings.</p><ul><li class=\"ql-align-justify\"><strong>Enterprises savings</strong></li></ul><p class=\"ql-align-justify\">This type of savings is aimed at helping our enterprise customers save from the income they get through market linkage by participating in various programs and developing their capital capacity in the process to move to growth-oriented sectors or to a higher level.</p><ul><li class=\"ql-align-justify\"><strong>Vacation savings</strong></li></ul><p class=\"ql-align-justify\">This type of savings allows our customers to save for sightseeing, entertainment, and similar programs.</p><ul><li class=\"ql-align-justify\"><strong>Interest-free savings</strong></li></ul><p class=\"ql-align-justify\">This type of savings account is interest-free and can be accessed by our customers by opening a savings account at their convenience.</p><ul><li class=\"ql-align-justify\"><strong>Current account savings</strong></li></ul><p class=\"ql-align-justify\">This type of savings is non-interest-bearing, and our customers can move their account via check or current account at any time according to the procedure set up.</p><ul><li class=\"ql-align-justify\"><strong>Elders Saving</strong></li></ul><p class=\"ql-align-justify\">It is a type of savings that is designed for our customers to use during retirement, and it is considered a better interest rate.</p><ul><li class=\"ql-align-justify\"><strong>Women\'s savings</strong></li></ul><p class=\"ql-align-justify\">It is a type of savings where better interest is considered to develop women\'s savings culture.</p><p><br></p>', 19, '', 'en', NULL, '2024-08-13', 'Active'),
(46, 'Produ', 'Group Loan', '<h2 class=\"ql-align-justify\">Group Loan﻿</h2><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">We provide this type of loan for the group formed with 5 to 7 members &amp; those engaged in the same or different fields of work and organized as a group and are ready to borrow.</p><p><br></p>', 20, 'https://admin.siketbank.com/files/24-09-12-04-49-logo.png', 'en', NULL, '2024-08-13', 'Active'),
(47, 'Produ', 'MSME Loans', '<h2 class=\"ql-align-justify\">Micro, Small and Medium Enterprise (MSME) Loans</h2><p class=\"ql-align-justify\"><strong><span class=\"ql-cursor\">﻿</span></strong></p><p class=\"ql-align-justify\">This type of loan is given to our enterprise customers organized by a limited liability company in the manufacturing, construction, urban agriculture, and tourism sectors. The amount of the loan will be up to the viability of the business sector, the offered guaranteed option, and the loan ceiling allowed by the National Bank.</p><ul><li class=\"ql-align-justify\"><strong>Small and Medium Enterprise (SME) Fund Project Loan</strong></li></ul><p class=\"ql-align-justify\">Under the Small and Medium Enterprise (SME) Fund project, the enterprises that will benefit from the loan will be given operating loans.</p><ul><li class=\"ql-align-justify\">Engaged in manufacturing, construction, the agro-industry and the tourism sector</li></ul><p><br></p>', 20, 'https://admin.siketbank.com/files/24-09-12-04-48-logo.png', 'en', NULL, '2024-08-13', 'Active'),
(48, 'Produ', 'Business Loan', '<h2>Business Loan</h2><p class=\"ql-align-justify\"><br></p><ul><li class=\"ql-align-justify\"><strong>Long-term loan</strong></li></ul><p class=\"ql-align-justify\">It is a type of loan that is given up to the credit limit allowed by the National Bank based on the feasibility of the business sector, the collateral option offered, and the business sector in which our customers are engaged.</p><p class=\"ql-align-justify\"><br></p><ul><li class=\"ql-align-justify\"><strong>Short-term loan</strong></li></ul><p class=\"ql-align-justify\">It is a type of loan that will be paid in more than one year to overcome the current lack of working capital faced by the bank\'s new or existing customers in their work. It is a type of loan that can be given up to 1,000,000 ETB based on the collateral option and the type of work our customers are engaged in.</p><p><br></p>', 20, 'https://admin.siketbank.com/files/24-09-12-04-48-logo.png', 'en', NULL, '2024-08-13', 'Active'),
(49, 'Produ', 'Personal Loan', '<h2 class=\"ql-align-justify\">Personal Loan</h2><p class=\"ql-align-justify\"><br></p><ul><li class=\"ql-align-justify\"><strong>Loans for government employees</strong></li></ul><p class=\"ql-align-justify\">We provide personal loans i.e. loan for education, social and economic issues, etc. for employees of government and government development organizations</p><p class=\"ql-align-justify\"><br></p><ul><li class=\"ql-align-justify\"><strong>Loans for non-government employees</strong></li></ul><p class=\"ql-align-justify\">We provide personal loans i.e. loan for education, social and economic issues, etc. for employees of non-government organizations.</p><p><br></p>', 20, 'https://admin.siketbank.com/files/24-09-12-04-48-logo.png', 'en', NULL, '2024-08-13', 'Active'),
(50, 'Produ', 'Vehicle Loan', '<h2 class=\"ql-align-justify\">Vehicle Loan</h2><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">We provide a practical solution for financing the purchase of a vehicle, making it easier for our customers to afford transportation and enjoy the benefits of vehicle ownership without financial strain.</p><p><br></p>', 20, 'https://admin.siketbank.com/files/24-09-12-04-48-logo.png', 'en', NULL, '2024-08-13', 'Active'),
(51, 'Produ', 'Housing Loan', '<h2 class=\"ql-align-justify\">Housing Loan (House Purchase, Construction, and Renovation Loan)</h2><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">We designed this type of loan for making home ownership accessible and affordable, allowing our customers to invest in their future and create a stable living environment.</p><p><br></p>', 20, 'https://admin.siketbank.com/files/24-09-12-04-47-logo.png', 'en', NULL, '2024-08-13', 'Active'),
(52, 'Produ', 'Consumer Cooperatives Loans', '<h2 class=\"ql-align-justify\">Consumer Cooperatives Loans</h2><p class=\"ql-align-justify\"><strong><span class=\"ql-cursor\">﻿</span></strong></p><p class=\"ql-align-justify\">In support of the Addis Ababa city administration\'s efforts to stabilize the inflation in the city, we design this type of loan that is only given to consumer cooperatives. The work will be done according to the amount of money required and the instructions of the National Bank.</p><p><br></p>', 20, 'https://admin.siketbank.com/files/24-09-12-04-47-logo.png', 'en', NULL, '2024-08-13', 'Active'),
(53, 'Produ', 'Cooperative Edire Loan Service', '<h2 class=\"ql-align-justify\">Cooperative Edire Loan Service</h2><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">Edirs those have recognition from cooperatives &amp; concerned body can take this type loan for their associations and members for different purposes. The loan amount is based on guaranteed option, market condition, amount of money needed and the national bank.</p><p><br></p>', 20, 'https://admin.siketbank.com/files/24-09-12-04-47-logo.png', 'en', NULL, '2024-08-13', 'Active'),
(54, 'Produ', 'Entrepreneur Women\'s Loan', '<h2>Entrepreneur Women\'s Loan (WEDP)</h2><p><br></p><p>In order to encourage women\'s entrepreneurship, we provide loan service for entrepreneur women\'s, considering the loan agreement made with other stakeholders, the feasibility of the work, and the guaranteed option.</p>', 20, 'https://admin.siketbank.com/files/24-09-12-04-46-logo.png', 'en', NULL, '2024-08-14', 'Active'),
(55, 'Produ', 'Entrepreneur Youth Loan (YEDP)', '<h2>Entrepreneur Youth Loan (YEDP)</h2><p><br></p><p class=\"ql-align-justify\">In order to encourage youth entrepreneurship, we provide loan service to young people who start a new business by working with other stakeholders based on the feasibility of the business sector, the offered guaranteed option, and the business sector they are engaged in.</p><p><br></p><p><br></p>', 20, 'https://admin.siketbank.com/files/24-09-12-04-46-logo.png', 'en', NULL, '2024-08-14', 'Active'),
(56, 'Produ', 'Psychometric Scoring Based Loan', '<h2>Psychometric Scoring Based Loan</h2><p><br></p><p class=\"ql-align-justify\">This loan service is a type of loan that is given only to women who have the ability to work and want to expand their business by following the modern technology assessment system and verifying that they are eligible for the loan.</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">The psychometrics assessment system is a service in which female WEDP loan seekers can receive guaranteed incentives by measuring their eligibility for loans and their willingness to pay with psychological assessment criteria using software installed on mobile phones based on their characteristics, attitudes, skills, abilities, and interests.</p><p><br></p>', 20, 'https://admin.siketbank.com/files/24-09-12-04-46-logo.png', 'en', NULL, '2024-08-14', 'Active'),
(57, 'Produ', 'Special Fund Loan', '<h2>Special Fund Loan</h2><p><br></p><ul><li><strong>Federal Youth Revolving Fund Loan</strong></li></ul><p>We provide federal youth revolving fund loan to start-ups &amp; new enterprises to ensure the benefit of youth, to develop their participation, and to expand access to finance service.</p><p><br></p><ul><li><strong>Addis Ababa Youth Revolving Fund Loan</strong></li></ul><p class=\"ql-align-justify\">In order to solve the economic problems of the unemployed youth in Addis Ababa and to increase the benefits of the youth, the Addis Ababa city administration has allocated the indirect loan fund. It is a type of loan that is given to start-ups, newly employed, and existing enterprises based on the responsibility taken by the bank to manage the loan.</p><p class=\"ql-align-justify\"><strong>&nbsp;</strong></p><ul><li class=\"ql-align-justify\"><strong>Other special fund loan services</strong></li></ul><p class=\"ql-align-justify\">We provide other special fund loan as per a memorandum of understanding with the organizations providing the fund.</p><p><br></p>', 20, 'https://admin.siketbank.com/files/24-09-12-04-46-logo.png', 'en', NULL, '2024-08-14', 'Active'),
(58, 'Produ', 'Life Insurance', '<p>Life insurance</p><p class=\"ql-align-justify\"><strong>﻿</strong></p><p class=\"ql-align-justify\">This type of insurance is an insurance service that is provided to our customers who have gained credit services from our bank either individually or as a group.</p><p><br></p>', 21, 'https://admin.siketbank.com/files/24-09-12-04-45-logo.png', 'en', NULL, '2024-08-14', 'Suspend'),
(59, 'Produ', 'Credit business insurance', '<p>Credit business insurance</p><p><strong>﻿</strong></p><p class=\"ql-align-justify\">This type of insurance is used for the type of loan granted to a legal entity, association, or other type of partnership (PLC, partnership, Share Company, association, cooperatives). According to this, the company that takes the loan should cover the company\'s insured to cancel the remaining debt due to the risk of moveable asset.</p><p><br></p>', 21, 'https://admin.siketbank.com/files/24-09-12-04-45-logo.png', 'en', NULL, '2024-08-14', 'Suspend'),
(60, 'Produ', 'Property and Life Insurance', '<p class=\"ql-align-justify\">Property and Life InsuranceThis insurance service is used by our customers who have taken a personal loan for the renovation of a house, and in the event of death or a serious accident to the house they have taken a loan from, only the remaining loan will be canceled.</p><p><br></p>', 21, 'https://admin.siketbank.com/files/24-09-12-04-45-logo.png', 'en', NULL, '2024-08-14', 'Suspend'),
(61, 'Produ', 'Counseling Service', '<h2>Counseling Service</h2><p><br></p><p class=\"ql-align-justify\">We provide counseling services for new and existing customers who come to get our bank services to have a sufficient understanding of the bank\'s procedures, rules, and guidelines. In addition, we will give advice on saving, credit, and financial information management before and after the loan.</p><p><br></p>', 22, 'https://admin.siketbank.com/files/24-09-12-04-44-logo.png', 'en', NULL, '2024-08-14', 'Active'),
(62, 'Produ', 'Domestic Hawala Service', '<p>Domestic Hawala Service</p><p><br></p><p>It\'s one of our bank services, which provides efficient services to reduce the risk of cash movement and save our customers\' time.</p>', 23, 'https://admin.siketbank.com/files/24-09-12-04-43-logo.png', 'en', NULL, '2024-08-14', 'Suspend'),
(63, 'About', 'ATM LOCATOR', '<p>g</p>', 25, '', 'en', NULL, '2024-08-16', 'Active'),
(64, 'Produ', 'Interest Free Banking', '<p><br></p>', 26, NULL, 'en', NULL, '2024-08-20', 'Suspend'),
(65, 'Produ', 'Foreign', '<p>test</p>', 19, NULL, 'en', NULL, '2024-08-26', 'Suspend'),
(66, 'Produ', 'Foreign Currency Account', '<p><br></p>', 25, NULL, 'en', NULL, '2024-08-26', 'Suspend'),
(67, 'Digit', 'Digital Banking Services', '<h1><em style=\"color: rgb(0, 55, 0);\">Coming Soon!</em></h1>', 28, NULL, 'en', NULL, '2024-09-10', 'Active'),
(68, 'About', 'Sharia Advisory Committee', '<p><strong>Sharia Advisory Committee</strong></p>', 29, NULL, 'en', NULL, '2024-09-17', 'Active'),
(69, 'Produ', 'Diaspora Account', '<h1><em>Coming Soon!</em></h1><p><br></p><p><br></p>', 23, NULL, 'en', NULL, '2024-09-25', 'Active'),
(70, 'Produ', 'Import', '<h1><em>Coming Soon!</em></h1>', 23, NULL, 'en', NULL, '2024-09-25', 'Active'),
(71, 'Produ', 'Export', '<h1><em>Coming Soon!</em></h1>', 23, NULL, 'en', NULL, '2024-09-25', 'Active'),
(72, 'Produ', 'Remittance', '<h1><em>Coming Soon!</em></h1>', 23, NULL, 'en', NULL, '2024-09-25', 'Active'),
(73, 'About', 'Sharia Advisory Committee', '<p><br></p>', 29, NULL, 'en', NULL, '2024-09-25', 'Active'),
(74, 'Produ', 'Foreign', '<p><br></p>', 31, NULL, 'en', NULL, '2024-10-22', 'Active'),
(75, 'Produ', 'Local', '<p><br></p>', 31, NULL, 'en', NULL, '2024-10-22', 'Active'),
(76, 'Produ', 'Interest Free Banking (IFB)', '<p><br></p>', 31, NULL, 'en', NULL, '2024-10-22', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` text DEFAULT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'en',
  `parent_id` int(11) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `file`, `language`, `parent_id`, `type`, `date_created`, `status`) VALUES
(5, 'Siket Bank donated 2 million Birr support to our people who were affected by the land slide in Gofa Zone', '<p>Siket Bank donated 2 million Birr support to our people who were affected by the land slide in Gofa Zone, Geze Gofa Woreda, Kencho Shacha Gozdi Kebele.</p><p><br></p><p>Siket Bank has been known for fulfilling its social responsibilities at various times and it is remembered that it has been doing its part by helping the low-income sections of our society and participating in national development projects.</p>', 'https://admin.siketbank.com/files/24-07-05-10-39-news1.jpg', 'en', NULL, 'news', '2024-07-01', 'Suspend'),
(6, 'Siket Bank donated 2 million Birr support to our people who were affected by the land slide in Gofa Zone', '<p class=\"ql-align-justify\">Siket Bank donated 2 million Birr support to our people who were affected by the land slide in Gofa Zone, Geze Gofa Woreda, Kencho Shacha Gozdi Kebele.</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-justify\">Siket Bank has been known for fulfilling its social responsibilities at various times and it is remembered that it has been doing its part by helping the low-income sections of our society and participating in national development projects.</p>', 'https://admin.siketbank.com/files/24-09-03-08-57-HN1A1687_1_optimized_300.jpg', 'en', NULL, 'news', '2024-07-01', 'Active'),
(7, 'Siket Bank participated in the conference and exhibition organized by the National Bank of Ethiopia and the World Bank at the Sheraton Addis Hotel.', '<p class=\"ql-align-justify\">Siket Bank SA participated in the conference and exhibition organized by the National Bank of Ethiopia and the World Bank at the Sheraton Addis Hotel under the theme \"Making the financial sector work for women\" in the presence of the vice president of our bank, Mr. Birhanu Urgesa.</p><p class=\"ql-align-justify\">At the conference, various foreign and domestic experiences and practices were discussed, and the work of promoting our bank\'s products and services was done at the exhibition.</p><p class=\"ql-align-justify\">Promotion of our bank\'s products and services was done extensively at the conference. Separately, the women entrepreneurs development program (Women Entrepreneurs Development Program) was explained to the participants about the loan service provided based on psychometric scoring-based lending using modern technology.</p><p class=\"ql-align-justify\">Siket Bank has currently provided loans to more than 62,000 women, which accounts for 46% of its total loans. It works to benefit women by providing a wide range of products and services centered on women\'s inclusiveness.</p>', 'https://admin.siketbank.com/files/24-07-05-10-41-news3.png', 'en', NULL, 'news', '2024-07-01', 'Active'),
(8, 'Breaking news', '<p>About news......</p>', 'https://admin.siketbank.com/files/24-07-19-08-18-banner2.jpg', 'en', NULL, 'news', '2024-07-19', 'Suspend'),
(9, 'Siket Bank recorded a profit of 1.6 billion birr in the fiscal year 2023/24', '<p class=\"ql-align-justify\">Siket Bank completed its 2023/24 fiscal year performance review today. The 2023/24 fiscal year report of Siket Bank was presented by the president of our bank, Ato Damtew Alemayehu, and our bank has been providing inclusive financial services in the past years. He stated that he is moving to provide comprehensive and integrated banking services using modern technology and professionals with advanced skills.</p><p class=\"ql-align-justify\">In the fiscal year, the bank earned 2.3 billion birr. This is a 42 percent increase compared to the same year last year. Our bank made a total profit of 1.6 billion birr in the fiscal year, showing a growth of 49 percent compared to the same period last year.</p><p class=\"ql-align-justify\">Speaking on behalf of the members of the Board of Directors at the meeting of the day, Dr. Meskerem Mitiku stated that our bank is working to fulfill its mission of providing financial services to its customers, shareholders, employees, and the entire society. Although it had an impact on our bank, they expressed their gratitude for being able to achieve excellent results in the fiscal year without succumbing to all these challenges.</p><p class=\"ql-align-justify\">Finally, trophies and certificates were given to the districts and branch offices that achieved outstanding performance in the financial year, and various awards were presented to the employees who performed well in various projects of the bank.</p><p class=\"ql-align-center\"><strong>August 10, 2024</strong></p><p class=\"ql-align-center\"><strong>Siket Bank</strong></p><p class=\"ql-align-center\"><strong>The Basis of Your Success!</strong></p>', 'https://admin.siketbank.com/files/24-08-21-18-04-photo_2024-08-10_18-18-44.jpg', 'en', NULL, 'news', '2024-08-15', 'Active'),
(10, 'የስኬት ባንክ የስራ አመራሮች እና ሰራተኞች አረንጓዴ አሻራቸውን አኖሩ!', '<p class=\"ql-align-justify\"><strong>\"የምትተክል ሀገር የሚያፀና ትውልድ\"</strong> በሚል መሪ ቃል በተካሄደው 6ኛው የአረንጓዴ አሻራ መርሐ ግብር ላይ የስኬት ባንክ ፕሬዝዳንት አቶ ዳምጠው አለማየሁ፣ የስራ አመራሮች እና ሰራተኞች የአረንጓዴ አሻራ ማኖር የችግኝ ተከላ መርሃ ግብር ነሐሴ 17 ቀን 2016 ዓ.ም. በአዲስ አበባ ከተማ በእንጦጦ ፓርክ አካሂደዋል፡፡ ባንካችን ከዚህ ቀደምም ተመሳሳይ የችግኝ ተከላ መርሀ ግብሮችን ያካሄደ ሲሆን ይህም ማህበራዊ ሃላፊነቱን በመወጣት ረገድ እያበረከተ የሚገኘው አስተዋፅኦ አካል ነው፡፡</p><p class=\"ql-align-justify\"><br></p><p class=\"ql-align-right\">ስኬት ባንክ</p><p class=\"ql-align-right\">የስኬትዎ መሰረት!</p>', 'https://admin.siketbank.com/files/24-08-24-07-32-photo_2024-08-23_12-13-06.jpg', 'en', NULL, 'news', '2024-08-24', 'Active'),
(11, 'Siket Bank donated 1.5 million birr to the Wubanchi charity organization.', '<p><span style=\"color: rgb(68, 68, 68);\" class=\"ql-font-monospace\">On the occasion of the 2017 New Year\'s Day, our bank provided financial assistance of 1.5 million birr to the wubanchi charity organization, which is making </span><strong class=\"ql-font-monospace\" style=\"color: rgb(68, 68, 68);\"><span class=\"ql-cursor\">﻿</span></strong><span style=\"color: rgb(68, 68, 68);\" class=\"ql-font-monospace\">a great contribution in terms of fulfilling its social responsibility.</span></p><p><span style=\"color: rgb(68, 68, 68);\" class=\"ql-font-monospace\">On the donation program, the director of the Wubanchi charity organization, Mrs. Tsedey Tefera, thanked the Siket bank for the financial support given to the organization and expressed that it will motivate them for further activities.</span></p>', 'https://admin.siketbank.com/files/24-09-16-05-28-photo_2024-09-09_14-05-31.jpg', 'en', NULL, 'news', '2024-09-16', 'Active'),
(12, 'Siket Bank provided support of more than 2 million birr to various sections of the society.', '<p><strong class=\"ql-font-monospace\" style=\"color: rgb(33, 37, 41);\">Siket Bank</strong><span class=\"ql-font-monospace\" style=\"color: rgb(33, 37, 41);\"> provided financial, flour, and oil support to 125 different sections of society by coordinating its employees. On the donation program, the Vice President of Success Bank Corporate Strategy and Marketing, Mrs. Maza Wondimu, said that our main objective in organizing this event is to strengthen the connection with our society by supporting the low-level societies and also with the intention of developing the spirit of solidarity and commitment among the families of Siket Bank.</span></p>', 'https://admin.siketbank.com/files/24-09-17-13-27-photo_2024-09-09_17-30-19.jpg', 'en', NULL, 'news', '2024-09-16', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `other_linkage`
--

CREATE TABLE `other_linkage` (
  `id` int(11) NOT NULL,
  `link_name` varchar(500) NOT NULL,
  `link_url` text NOT NULL,
  `status` varchar(100) NOT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'en',
  `parent_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `code` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `other_linkage`
--

INSERT INTO `other_linkage` (`id`, `link_name`, `link_url`, `status`, `language`, `parent_id`, `date_created`, `code`) VALUES
(5, 'Internet Banking', 'https://admin.siketbank.com/linkage', 'Active', 'en', NULL, '2024-07-04', 'gnikn'),
(6, 'MBLINK', 'http://172.24.97.86:9097/SBAPP/servlet/BrowserServlet', 'Suspend', 'en', NULL, '2024-09-10', 'KNILB');

-- --------------------------------------------------------

--
-- Table structure for table `quantity`
--

CREATE TABLE `quantity` (
  `id` int(11) NOT NULL,
  `title` varchar(500) NOT NULL,
  `quantity` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quantity`
--

INSERT INTO `quantity` (`id`, `title`, `quantity`, `code`, `date_created`, `status`) VALUES
(1, 'Employees', 1289, 'seeyo', '2024-06-24', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `rate`
--

CREATE TABLE `rate` (
  `id` int(11) NOT NULL,
  `currency` varchar(100) NOT NULL,
  `file` text NOT NULL,
  `buying` varchar(500) NOT NULL,
  `selling` varchar(500) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rate`
--

INSERT INTO `rate` (`id`, `currency`, `file`, `buying`, `selling`, `date_created`, `status`) VALUES
(1, 'USD', 'https://admin.siketbank.com/files/24-07-05-10-45-ussd.png', '101.50', '112.17', '2024-08-29', 'Suspended'),
(2, 'EUR', 'https://admin.siketbank.com/files/24-07-05-10-45-EUR.png', '70.98', '71.70', '2024-08-29', 'Suspended'),
(3, 'AED', '/files/24-06-07-07-26-suzuki.jpg', '13.7', '14.8', '2024-07-05', 'Suspended'),
(4, 'AED', 'https://admin.siketbank.com/files/24-07-05-10-44-AED.jpg', '13.54', '14.78', '2024-08-29', 'Suspended'),
(5, 'SEK', 'https://admin.siketbank.com/files/24-08-16-13-57-logo.jpg', '8.86', '9.04', '2024-08-29', 'Suspended');

-- --------------------------------------------------------

--
-- Table structure for table `region`
--

CREATE TABLE `region` (
  `id` int(11) NOT NULL,
  `name` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(100) DEFAULT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'en',
  `parent_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `region`
--

INSERT INTO `region` (`id`, `name`, `code`, `language`, `parent_id`, `date_created`, `status`) VALUES
(7, 'Addis Ababa', 'Addis', 'en', NULL, '2024-08-24', 'Active'),
(8, 'Oromia', 'Oromi', 'en', NULL, '2024-08-24', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `search`
--

CREATE TABLE `search` (
  `id` bigint(20) NOT NULL,
  `title` varchar(500) NOT NULL,
  `content` text NOT NULL,
  `file` text NOT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'en',
  `status` varchar(100) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `search`
--

INSERT INTO `search` (`id`, `title`, `content`, `file`, `parent_id`, `language`, `status`, `date_created`) VALUES
(1, 'Internet banking', '<p>Internet banking is about the online banking or se</p>', 'https://admin.siketbank.com/files/24-07-15-13-52-siket-login.jpg', NULL, 'en', 'Active', '2024-07-09'),
(2, 'Bankii Interneetaa', '<p>Baankiin Interneeta jechuun....</p>', 'https://admin.siketbank.com/files/24-07-15-13-52-siket-login.jpg', 1, 'om', 'Active', '2024-07-09'),
(3, 'Siket bank POS', '<p>About the pos of siket bank...</p>', 'https://admin.siketbank.com/files/24-07-19-08-20-siket-login.jpg', NULL, 'en', 'Active', '2024-07-19'),
(4, 'loan', '<p>loan</p>', 'https://admin.siketbank.com/files/24-09-21-08-47-core values.jpg', NULL, 'en', 'Active', '2024-09-21');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0bQedUIjRLu8rbrTUqKTUJQFJ1rbn8le5Q4qEpuF', NULL, '134.209.25.199', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVzQ3MzI1NU44eEc1cFp2b2M0SUs2QzBSdzM1dUoxdENIcUJQaXA5RiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjM6Imh0dHBzOi8vd3d3LndlYi5zaWtldGJhbmsuY29tLz9yZXN0X3JvdXRlPSUyRndwJTJGdjIlMkZ1c2VycyUyRiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729930686),
('0E4QHCLAmtUUDrz0aO2NdT5vIREdrdnxVcAKHmVy', NULL, '47.128.99.122', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidVBYMUhVQVhadEE5NmV5MUwyTmxkdmVKQ0VPeHpnUG93MVFyMVAzRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20vZGlyZWN0b3JzLzEzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729945075),
('0SNNLuVgIX1666F08jbzxyX8zrY6E6M1BKgPs7xp', NULL, '134.209.25.199', 'Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA444460) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2732.98 Mobile Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVG00UzZENmx5V25mUDY5NjZYb2xuV0N5NVZHWFhuVWlGM1RKTkE4cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd3d3LndlYi5zaWtldGJhbmsuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729930679),
('11Hay9RE1r5vIUefhPrteuBF6dytndy3v70a1JLw', NULL, '196.189.144.88', 'Mozilla/5.0 (Linux; Android 14; TECNO CK9n Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/128.0.6613.95 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/479.0.0.48.89;] FBNV/5', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHNUVDVMelE4ak5OR202aVVjQUJYWHlYNjZOOGIxM2k0RlR6TlpzTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTM0OiJodHRwczovL3Npa2V0YmFuay5jb20vP2ZiY2xpZD1Jd1pYaDBiZ05oWlcwQ01URUFBUjN2bTFQbElaeDhRbTZVcnU4NXVFZWpqZlVZSGhsbWdQT0FwTndsZURpaGRsLXRCTzVyZEVWS0ZaTV9hZW1fcVFvdF9GZTZGaVVqMHF6WnlHQl9nZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729950314),
('1BJzDY4JmvmjwzPFUFLAlwpiWoW4QE8A7JlHp4e0', NULL, '193.186.4.77', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiRG9aNzZudGx2dFZPMjJxYkNZenFWcjM4dGZodVNEQnI3SXlBbFB4UiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729925742),
('1CM0Ubp7oikyMaLbvi9JK6Wn5tkvn494n9MlHjb4', NULL, '205.210.31.27', 'Expanse, a Palo Alto Networks company, searches across the global IPv4 space multiple times per day to identify customers&#39; presences on the Internet. If you would like to be excluded from our scans, please send IP addresses/domains to: scaninfo@paloaltonetworks.com', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOHF5YzhDeDd6OW1oMDl5d0tVU29kMWxRakZzU3JqRGRCVlB5eTlzQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vbWFpbC5zaWtldGJhbmsuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729938987),
('1iiCr6zAtaUxCMNB2Q8iW8ewXFWA3dvmjOUIpU6T', NULL, '157.55.39.197', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibmNoYklWbThoWDM4aUZmUjdoVThmc0N0QWNac1d2SDRjU2MxV1BEVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9leGVjdXRpdmUtbWFuYWdlbWVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729937500),
('1qSNseO0EtJ5KAx1BT1wLiGKfjgBY4yWFZtnJ8LK', NULL, '72.14.201.77', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWEx1TVhWeHp5NkpEWVZNc3dKSEpDTGFRZ0V6NnpmMnU1UkM5NEtTaCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729925891),
('2XJGzw7YmZhl4pz7vbSyIIOYq0c6nYofWCdLAfH1', NULL, '52.167.144.138', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYzZJNXV6WVROWVRKdW92Zmd2Qmdrc1lCWTJJTTVxd1BSeVk3bTBWcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTA2OiJodHRwczovL3dlYi5zaWtldGJhbmsuY29tL25ld3Mvc2lrZXQtYmFuay1yZWNvcmRlZC1hLXByb2ZpdC1vZi0xNi1iaWxsaW9uLWJpcnItaW4tdGhlLWZpc2NhbC15ZWFyLTIwMjMyNC05Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729951675),
('4oYgv1dBALaD5mv1ihErlWk9IOXkpMVIRJQsOZJy', NULL, '40.77.167.65', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVpXVlV2bE81QWhTS0xTZW9Ra0I2UDRDT0tEU2RlWGdZUEFmTWlnMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9hYm91dC11cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729933737),
('4qMg94Pnyt4bhFCinw0pfcGcXzUwvJS72hKwHoRM', NULL, '47.128.118.9', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjhyT1pBRmg1c01IbkhHaW1JeGhQMndhdmM2eXFoc2NETUR3TzB6cyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729949414),
('6A8VQW6b0iAYXbxvPiov8zxrw2LsNk0PM8pqmeRv', NULL, '207.46.13.141', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieHY5cTdWQ3lHcjlzMFZzOFR6Rkh1bmZsZWFNUzZNNm85NnIwN0tRcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vYnJhbmNoZXM/cGFnZT0zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729924322),
('6MdSZF4EeZcQYCltwyc2ZrNAqIvMJmvEoHEcFKYa', NULL, '47.128.112.70', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZEZoV3lrZzJrODlJMklKYmk4b3BkZEZJQWs3TEVBYTNNemtRSm9xZCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vZ2FsbGVyeS8xMiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729938663),
('7q39jcvHUwTjafhKXn9QTKHI9CDIcmTuC9MsHVgr', NULL, '40.77.167.243', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWTJIRW1yTlZYNDlaZDVoNXlvU2R1Rk5yYUxDUTRac3laUFpnaDVCeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vYnJhbmNoZXM/cGFnZT0yIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729924322),
('7zP8V3B8AvueLboOZNVFQgW0XhFLwkdWn5GYCv2C', NULL, '196.188.181.88', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjJRSlBlWDBkeWM5cFZCSTRReklGeEs0Ym9JazlRd2czNGNVcUNhdyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9hYm91dC11cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729942987),
('8DaTaK7Zeq1HPRyVx40VFsTRiLvcwGrJBxeVhozc', NULL, '47.128.48.147', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibXRMNUNyVzZYU21rUjhkaUpIakdueWFQTTJkUWVQaXBROGdIY0ZxVCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vYWJvdXQtdXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729957783),
('8hRTXR79bPxvHzqvn7R8ygJ2S4zH3zV3ZlHkADum', NULL, '170.106.180.246', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidm9rV1RaSFNFUWROckJ3SVRrczBQbWRwT1AxV1A4Rm10bU1ZeWt1QyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729949575),
('a7ILrFGF92j1wtNsYworQiHmryqZogKIhF9DV6it', NULL, '47.128.20.68', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ1ptTG9kbEhWYmVWekdGaVBxSURoVHlpVFQ2eFJVVmZNQ2k0cWxPNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTMxOiJodHRwczovL3dlYi5zaWtldGJhbmsuY29tL2NvcnBvcmF0ZS1zb2NpYWwtcmVzcG9uc2liaWxpdHkvc2lrZXQtYmFuay1kb25hdGVkLTE1LW1pbGxpb24tYmlyci10by10aGUtd3ViYW5jaGktY2hhcml0eS1vcmdhbml6YXRpb24tOSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729931021),
('a9dLYixruKdp9iSGmhrBsel3xHDoI7R4DeFbHfaR', NULL, '47.128.56.104', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRG01TnUxa2FvZjdBWFd2RGpVUDNRYW82eG94ZDlTNFB6ZmhMcVZYcyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTc5OiJodHRwczovL3dlYi5zaWtldGJhbmsuY29tL25ld3Mvc2lrZXQtYmFuay1wYXJ0aWNpcGF0ZWQtaW4tdGhlLWNvbmZlcmVuY2UtYW5kLWV4aGliaXRpb24tb3JnYW5pemVkLWJ5LXRoZS1uYXRpb25hbC1iYW5rLW9mLWV0aGlvcGlhLWFuZC10aGUtd29ybGQtYmFuay1hdC10aGUtc2hlcmF0b24tYWRkaXMtaG90ZWwtNyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729924436),
('AA35YQtbPQEnxhZOdplAvZ7hhoFogNXS5BHAyEIk', NULL, '66.249.66.43', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.6723.69 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidUNBblhDSnFTZkUyVjhua1NJRlhva3lVT3JFNTJKYlJyMnp4VFZxUCI7czo2OiJsb2NhbGUiO3M6MjoiYW0iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI1OiJodHRwczovL3dlYi5zaWtldGJhbmsuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729954720),
('abSJN0qKQZHSp0GfECD5f7F7C2LVSjVYvt4dKRko', NULL, '72.14.201.85', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiVm9vWHpCeG1UUm5NU25LbXpqczBnM0ExdzAyb0Q3RG9LVGFQZDZPWSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729945594),
('aeovQGNLjLaIjJ76av6HsMBapEBrVkm98AbQxblB', NULL, '196.189.44.153', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiajZBTnEyckx4QUROSEdxNU9HUHJMamdOYUtXYVQwSDVjNDlDdUJZOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729960529),
('ao0KZL9Bw3fW3K1aLn1jAH7jZPYhNhuInLhBS3Lp', NULL, '47.128.16.137', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzBDRlBFVjQxV2pYeVJqdHhXVDFacGVmdFF5WEx5SVgxbGJkWmhvMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20vZGlyZWN0b3JzLzIyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729940746),
('aprKlHimT7S4hT1YXfWjMuZZUZ52SHMRoFHP7o9i', NULL, '193.186.4.85', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiUFdjR29iQXVPcE9zR2tWVmpYdFA2OGNsT3ExU1VLRUU4THJnZkthdyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729947393),
('aryMwutOFhIFa8QMfD7wFi5vmv1G7kMNQzqIscZb', NULL, '66.249.66.193', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.6723.69 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib29taHEwTkdUOUFicTN6RFhWckN3SzdSZFpXaTBRMlZDVG9PN092cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729930015),
('bkCReWDKraaTWfJ7khjYcShPVlHtPAmbCxJxjbIU', NULL, '196.189.144.88', 'Mozilla/5.0 (Linux; Android 14; TECNO CK9n Build/UP1A.231005.007; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/128.0.6613.95 Mobile Safari/537.36 [FB_IAB/FB4A;FBAV/479.0.0.48.89;]', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnNod1hkcGJETlg5MXlZajRnN0Qza0x3d0dUNzZ5TlR1cUJrUXNDUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTM0OiJodHRwczovL3Npa2V0YmFuay5jb20vP2ZiY2xpZD1Jd1pYaDBiZ05oWlcwQ01URUFBUjFXMnBYM2kxeUpFWTFGQm5FbUNZMjQ1LUN3S05EOGZRbktHSktvWDkxb3doazRWMjB4U3Naci1xa19hZW1fNEtyaUpfck5BYUpSaHd3cmFBS0VYZyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729950314),
('bozpUl28qkuOEjeNKI0fB4TtdpkaON7eBxTz0i37', NULL, '196.189.44.156', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:131.0) Gecko/20100101 Firefox/131.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiek13MmlLUFp6QWZaNHl5MTJxUUJTUWJjSDlia0Mxek1DNHZ2MUFXeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9vcmctc3RydWN0dXJlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729929864),
('bQX9S1hLoT8F3mH446xaHS5Ac4ca3PLjbFXWEft6', NULL, '47.128.28.48', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzJXNkdFS2RaQzJxWjh6MEhKM21HNzdDbWw4QVFpekVLVXB1NUhVeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20vYXRtIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729938641),
('cFZUWwEPLVhzYnWS9CuX3r0GWqttLII0SQQw6oqT', NULL, '207.46.13.31', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ2JTb1N3OUFSWjNya1BkbGYybm55djdKTEVsdk5IbUxEMEhaOHh5eSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9icmFuY2hlcz9wYWdlPTEwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729925923),
('cm3i9489X3gQYMh18H4vSoYYDOqglX1hTQeNgVK7', NULL, '110.224.80.209', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_5_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Mobile/15E148 [LinkedInApp]/9.30.3422', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2s4MjI4dnhROHRHVnNldjR6R0JTYTVGOG5Xa3pHNjJjZjh1MTJYQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729957072),
('DfIJB1UuT8qK94EnjjhPBIP28ZFdYGB4zLqK77Je', NULL, '196.189.144.32', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjJNOFJrR1RTbG5Nb0lzSDVUWTA0V3A1a1BUbXRZcHlOOGtQYlJSYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9leGVjdXRpdmUtbWFuYWdlbWVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729950072),
('DXnPAVfBN0IZar6tXna6MAxN5fwyQyyRqb8cLhOv', NULL, '62.146.226.43', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZXdZalJ4VGI5NndmRlphek9hM2Y2VTNKOE9pdWJrS0swbEF6Z1RxdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729956412),
('elGn6kM8KE8uf74vRkTQbDTviuC57eOC1ghN4qVO', NULL, '103.149.26.244', 'Mozilla/5.0 (Linux; Android 11; vivo 1906; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/87.0.4280.141 Mobile Safari/537.36 VivoBrowser/8.9.0.0 uni-app Html5Plus/1.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSk90NzZ1UDQxbW9HVVdOcGtCMnV4T2FRRzd5U1E5eklPbHZEN2xoRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729939501),
('Enyez6yLYZWVKQUTc1fpbCldyUD7ZS5tNL5XTSNB', NULL, '47.128.57.166', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUxkeEVxdEVDNm92Z01TU2VLM2tnWGszNzF4SXpVbWdpTzdvNGxhbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vcHJvZHVjdC1zZXJ2aWNlL3ZlaGljbGUtbG9hbi01MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729945095),
('ErT6txAGH3HYqn8J76Slxlt3qINAIRoYjg68qV47', NULL, '72.14.201.77', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiQVl6b1pUV3F3QklBUm5FNDY0dnpSQW96VktFcWh2SmlIY2RtTnIyRiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729948796),
('etXghdPJxqg8KLC5R5ODHxDRRG6Kw1LquzKEBRnc', NULL, '196.191.60.52', 'Mozilla/5.0 (Linux; Android 13; TECNO BG6 Build/TP1A.220624.014) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.6668.100 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOW1uTk5zcjNnY3c2alA0b0h2SzJFT0ptMDRZMzdnT3B0cDlXdXVYZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9hYm91dC11cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729940418),
('f9RUqk1BxVbB3cqZdpyz8fyXMlEamnfR0N1IkzPq', NULL, '52.167.144.219', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTE42dXlDaEFjZkpyZnRpdVRxMVNWNFVBMngxTE9nSmphU25qclVrbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20vYWJvdXQtdXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729955921),
('FaCgJcmXbhjmWWW7eLiG0JfviGiiwGg1nnwX0w3c', NULL, '157.55.39.63', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiclB1UGVKV0c0b0R1NkN1T3hTODRJbk41T3BBUlJZSUJjalg0UjZZRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20vbmV3cy8tMTAiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729946859),
('gBNrylAUlZHWD2jZmrMD1PqzuD0VFbNJiNl6xmxg', NULL, '31.220.97.163', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicld6am1vYmxuQzFQRUZyeXdOZGFCTU54S3lqRzZUN2xTbW51S1hwTCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729933288),
('gfSJLCGgBuW7jwaL8UBcfgyOkqRMienvq4ESn1f4', NULL, '31.220.97.173', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZmF6azduTGpETHNRSm9zNFZHbGdmTjBSS2pSU21xamhNQ0R6Y1BWOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729945677),
('gHTJc4GTk0KKi6o2sIVNFTxgPMoEjXKXADwup78n', NULL, '31.220.98.151', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoickdPVHo1WTJ1MHJiWlp2dkdoTmZwbTU0amJCd0dBNE10Y0toNVFSRCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729936888),
('gNVNcQbQ4wiKPBWAONAknavZ3aCbxTW3Rk36MadK', NULL, '207.46.13.87', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiamRNQ1NvY3phN0tnMmI0eFpTVkppYlNFT09IS2Y4eGJ4MFVQWnFvRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vYnJhbmNoZXM/cGFnZT02Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729924318),
('H3hEje6zliLKIMgR68qyRLKEr2bqasbBCj7YDwPz', NULL, '157.55.39.197', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWU51dWc2ekU2aWtrOWdIVlhUSGdWM3lsTXEySTJUbHFZekkzTThIQiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9ib2FyZC1vZi1kaXJlY3RvciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729937449),
('HGoPfbqql2w0snCH38M1Vl5z0liQ4ypbMA491DiI', NULL, '52.167.144.186', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSjNyNFNRYjM1a0pPQ3lmd1JHOVVBR1gyc1hmbFhVblhxTEd6VTdkRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vZGlyZWN0b3JzLzI1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729932939),
('HjNXhClWR1SGWuMyLfJwbZz9JRZpkEPPdczrLE7w', NULL, '62.146.226.39', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWENWU2JkcTZvcldsQ0Z0VjVPWFVsUUQ0ZlRtU3NvQ1NIaG9UVnJUMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729960038),
('HpbQbzULTgdo5vUy3wbsNR9HYpRP5RQ1THzVk0vt', NULL, '62.146.226.43', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTW1BbFIycHhwOUxyaWZRdzlNOG5HTTNaSjJVbUZqUFUwS0JDQVdTMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729949204),
('HzFYOU0BEIxvOLBDo84pQFF5pLODVI0kjY0NDJ9G', NULL, '52.225.75.210', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko); compatible; ChatGPT-User/1.0; +https://openai.com/bot', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTEZidkNRclYwVUlTUnNLYmZCbGpRVUlTZGkzcDlLem5kQ2N1aktEaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDg6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9mcmVxdWVudGx5LWFza2VkLXF1ZXN0aW9ucyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729945661),
('ih1asAIzfAxSJZECNLucJ9mxnpbkYdG0uMJV8a7E', NULL, '47.128.52.216', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZHRiWk8zc205UTRvR0RhaFEyRzVVbkFlZ29hUUgwSzcxbUFaQzFKYiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTI6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vZnJlcXVlbnRseS1hc2tlZC1xdWVzdGlvbnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729934221),
('Ild8uE8HEcVpJoBC2Le4mDGWDhoo93M2YoiQ3J0m', NULL, '52.225.75.211', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko); compatible; ChatGPT-User/1.0; +https://openai.com/bot', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicjF6MDk3YXlkQVFvVDVPSnBUVTJ4UnZUYmk2cEVlbW9EcXZZdVhrSCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vYnJhbmNoZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729945660),
('IOGpRiEkS7cxBUMqdlLpjeNKDOnPRCiDqZP8ELjR', NULL, '31.220.97.173', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSXBabXpxVHVBSWtTQzJ2cDZYUkxmek42dTJMWk5IRkZMMlpUczFZOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729940488),
('iqIEy0dd908TYaxZOJjYc5rhGX7kzD5A0I2MC7tV', NULL, '196.189.144.199', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQ2RmOG81blR2dDU2a2ZGSThFSW83YzgyUEgxcklrQmNlUVJybGg4cSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9jb250YWN0LXVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729926326),
('IqL0CI4cQdJpcUzMq3ejPB399F2Zd8RkPVV2SWIh', NULL, '102.213.69.135', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia3ZPanZ5aEdMM1Rha0tiV2hEak81T01uVzlFZno2NTBmVXNMMGR5YyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9hYm91dC11cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729938477),
('ivKtSMJx6WPkYzHbNXq3YII9Qn9KqI01qeo0Gr5R', NULL, '66.249.66.42', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.6723.69 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoic0NUQUlBTWZYaE5mRVg5UHVMWWI5T3VhcGhteEtTdEgwNHVHSzRoWCI7czo2OiJsb2NhbGUiO3M6Mjoib20iO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI1OiJodHRwczovL3dlYi5zaWtldGJhbmsuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729955357),
('J9kmD6jvQsVdwvhOgmJQcijpv2NB3Q0UzQcVFWT2', NULL, '52.167.144.180', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaWJuQXNNRDFORXJsR3NrbnR6cG16R25remtucDIyN0xmUmdiT2lFeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729946499),
('JaG9F0KVSRQHBVOew2NmAGnt5Fbp3WxfrribozDA', NULL, '196.190.60.200', 'Mozilla/5.0 (iPhone; CPU iPhone OS 17_6 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/326.0.653331328 Mobile/15E148 Safari/604.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNDNOQ09HV05EanczSWNTeVJUa2U0ZVVnYjlUVWF0YVQ1VnBtUnAwdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9ib2FyZC1vZi1kaXJlY3RvciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729931131),
('jgteEtS2Vgxp8jEHHc3zqPwMkHqu6nPYVBP2zcmm', NULL, '47.128.62.110', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibnFCVnJEMHNmeTduNFFHb2dEeHZYRm85M1Jyd2lYNVp2a0JJT0xWSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9icmFuY2hlcz9wYWdlPTIiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729957807),
('JI7IagFXO1K3IDatCcMjwjwT2NjyNwLq5e5OUl0r', NULL, '207.46.13.124', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWHpWMTNqMGhXbFc5RjF5Q1p5cnczdW11VjRSemVFWkxDR3hyT0V1VSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9hbm5vdW5jZW1lbnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729931774),
('jODD25jhmad20aOd8Zm09BewK347jkFFe7X1vHoR', NULL, '102.213.68.223', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZXpQRjFpRVRYd3RKb1docGVUWTNaVFlkakZVUXdOYWZxSlJzRFh2VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9wcm9kdWN0LXNlcnZpY2UvY291bnNlbGluZy1zZXJ2aWNlLTYxIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729935999),
('jojY3auddaAxr3YCT5XxRQAY8lcJfO2MGCBp4rGI', NULL, '31.220.97.163', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmVrMmNTamwzeXFTd3lhYXBBZzhUMktFR1lySWVFdU9KQ3RPekRYbCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729929690),
('jvaOo9x4C1a0OWWgj47l1cR4WwmiDK4jH0hWr8CF', NULL, '47.128.18.131', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSzFuN29vOHFTcFpKWjF0UVlRUktjWmRVT1oyOEZSdVY3SUJ3SU9uMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTU6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vcHJvZHVjdC1zZXJ2aWNlL21zbWUtbG9hbnMtNDciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729924412),
('JWeN1VWK0avXvp56th1kxOyYYL2DjWzKDbs0z68V', NULL, '47.128.19.251', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiV2ltdm1lUno2YXVCRWNKbm1BelFtNzFtTEpHYUg2WnRtWDI0c1Q1QSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzM6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vcHJvZHVjdC1zZXJ2aWNlL2VudHJlcHJlbmV1ci15b3V0aC1sb2FuLXllZHAtNTUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729949434),
('k0v2oUb94pRzurlD4vvZX7wt1x0y9AwYOjOQggVg', NULL, '47.128.98.16', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVJtZWZ0dVRtTldvYkdlU2NxZzV4bW1YZnpYeTBXcEpFTnhvdWJqRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20vYW5ub3VuY2VtZW50Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729957759),
('ki7Jqc0SytOxL8OEgHJNtDuoZjO0c1kDKTThNncU', NULL, '196.190.62.117', 'Mozilla/5.0 (Linux; Android 13; SM-G770F Build/TP1A.220624.014; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/129.0.6668.100 Mobile Safari/537.36 [LinkedInApp]/1.75.155', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSHE4dVJiZlk3ak9TMDVreTkzeUVWVTdVREx6MmJPcmNHSVpLVG9xUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9leGVjdXRpdmUtbWFuYWdlbWVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729943502),
('KQCvtYC5QOdSElBEifgwXD22TwYXHMOa0R5uFQMK', NULL, '47.128.97.53', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidE1wUzREbXo1TTJCa2NSNzJYQlo1Y3Rpd21hRENsUG9TeVI1MXNvSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTY6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9jb3Jwb3JhdGUtc29jaWFsLXJlc3BvbnNpYmlsaXR5Ly03Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729957735),
('llfbnMf47lhGPuZf72UAHfuOHRT5Zuh4HZf9b6rj', NULL, '52.225.75.217', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko); compatible; ChatGPT-User/1.0; +https://openai.com/bot', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoienplM0M0VGJvM1U3YkdUcFE5SGZSdFh3NzJsVXRDTWREMEFLa0cxQSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729945660),
('lPgYvNhpi5fdU3tEXJZoK1S6bVLyzUDG6hzTfBAw', NULL, '134.209.25.199', '', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMW9KQlAwYnlnZzZVbHBGaXVUWm0zQXZiVW9TcjVuVXdZck5haUg4YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vd3d3LndlYi5zaWtldGJhbmsuY29tIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729930676),
('m7fPPYqcTby46ipDQhOGqsXc2Sa9m79FZmHUvwz0', NULL, '157.55.39.51', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSld0bzRQSXk1N3VLUTFGUFphWG9DVmtWVW91bVJtR2JhcnBzMHJKMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vZXhlY3V0aXZlLW1hbmFnZW1lbnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729947767),
('MbIcWXynwzCkAP20QPIRo6I3gA23J1f5foVvWVml', NULL, '66.249.66.208', 'Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.6723.69 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaVRRUEdDY0hoSjRXT1dPQm5ENEhVUk1jcm5rajBxUVU3dWRmY2NaaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9leGNoYW5nZS1yYXRlIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729939203),
('MetR3RJELXd8KjubYplwnTCYTkEKTVPkVkp2rAb7', NULL, '207.46.13.83', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVmYyOUJqdzBiRDMzWnVQdjJzNGVkMEl4Tm9JaWpiSXkxUmJ5UE9CYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NjA6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20vY29ycG9yYXRlLXNvY2lhbC1yZXNwb25zaWJpbGl0eS8tNyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729951072),
('MRqDhv3UryXARGcsFXaAHrAZSuCBNnrhgmOzUinv', NULL, '47.128.20.36', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNmM3TkxrR0hxV0cwRjdxUmkxUlNISUZTbzJiUUdtbTNVc0NUTmFybSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vcHJvZHVjdC1zZXJ2aWNlL2hvdXNpbmctbG9hbi01MSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729927273),
('mxyBR9iDBf1Z9YUCEoXX2B9IR7RAEISndh9Oc3jY', NULL, '157.55.39.204', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTXZuZE9wU1p1cDY1Nmc0Y0xodVBhc2c1aFExR0NYTGFEMU0zRnA5cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20vcHJvZHVjdC1zZXJ2aWNlL2xpZmUtaW5zdXJhbmNlLTU4Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729936776),
('MymSziWQ0yb6FdTEWeOBUm5IYG3AC5WxueMOmFMR', NULL, '40.77.167.26', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGtHeVZjcDI4NlA3UU4wc0k5TzVHTmJCSDRIeFlaUXNaRjhNOEZHciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzY6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vcHJvZHVjdC1zZXJ2aWNlL3BzeWNob21ldHJpYy1zY29yaW5nLWJhc2VkLWxvYW4tNTYiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729961209),
('N7YJ574G2bGz5UTYrlRU6yikOjW8VTzzKKNJHtR9', NULL, '164.90.228.79', 'Go-http-client/1.1', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMDB0c0lncW9Lc2RsU1dPZk96ZDdkOFpHV3dZSjFwYjQ5bEJLWDlURiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTk6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20vP3Jlc3Rfcm91dGU9JTJGd3AlMkZ2MiUyRnVzZXJzJTJGIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729926537),
('N82Cr0TjEu93mAC4mLu7illzXBSpge2yQiHRYWod', NULL, '196.191.221.179', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkdZYVU0VTZYVngwNm9EMUFHU3draGx1eXk5elFrSDZTTGtVQko2VyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9hYm91dC11cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729953964),
('Nc26JNArtgF6c89Obw6MFos7dIaW8VJOMJ7v9u1S', NULL, '40.77.167.25', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVjQwdmhPOFRMZjhiV2Z6OTM4ZDN0VGh5OGZ6bDhtdlBZMUVCV1kzZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9jb250YWN0LXVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729958681),
('NdhftQkMlO9nS29AjIUFDZwHIkToVQAZSKSfmN53', NULL, '47.128.39.153', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQVFZNXk5d0pLbG42QjR4NGYzazV4WjI5MUpJMWtSN3BKdDQ0M1J0bCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzU6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vcHJvZHVjdC1zZXJ2aWNlL2Nvb3BlcmF0aXZlLWVkaXJlLWxvYW4tc2VydmljZS01MyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729940770),
('niWnNqTJ2MdgLZT9oVWtWgOc3QoeJ6315pgBbCSA', NULL, '47.128.22.113', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia0tKUE8yMGRoOFRQbVRpVnJDV2JVWDVkeHFldnZGdEpmRmxBZU9HTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Njg6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vcHJvZHVjdC1zZXJ2aWNlL2FkdmFuY2Utc2F2aW5nLWZvci1sb2FuLTQyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729949457),
('NmUf8HmlTPq7jaA3yqnJwrSGmO43VSlFTZbYLgQs', NULL, '47.128.35.8', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVXlkUTd5dVE5YXdZbjdwOXdaSlR6S3FWWW10TExhRlQwdEVkSnc1NCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9kaXJlY3RvcnMvMTUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729934149),
('NuoOmVMnx0XpT9Pr1ITwBmExCvwXwmylHXvuj9Hd', NULL, '52.225.75.218', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko); compatible; ChatGPT-User/1.0; +https://openai.com/bot', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicG1RRDNqTFJpRE5NMkRnWVV6THltcGJWaXJUWWx5WEhzUDZhbGUxZSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vbmV3cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729945660),
('O0HCfW8gfCeohD5ezlxoX4J3u3zf3ioGjaVcfj1q', NULL, '72.14.201.85', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiNEM1V0k0NXJ4TmM3Q2dYRlhnUlMxbnV3V3owM3ZSemp6Q2M2SDR5NiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729945628),
('O1hYOoKxIJC167VVee8vOwpy86pPE469hye604rW', NULL, '47.128.51.23', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNkVCTkVUd3hkY1RjeFVvSFhZWXhTbHBaVjJZVjhReEdHd3NqYnB3WiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729927250),
('O6NlVAk1m0m5gOjeFFsq9ad6JV9PisT1l45Ovkqf', NULL, '31.220.97.173', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSE9icmVIS2gyMjcydHlIUFhSNjBoRzBRVVVKWjcxQVVUaEp2NllUUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729927650),
('OAVoGfdbFEDqILmTMRNeiMCHopYkjPIysXrBhXCN', NULL, '207.46.13.87', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlprdUVwQ0NqZzl3MW94Uk5NTDFLYm5mY2p3YmdyQ1B5emowZmR5SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vYnJhbmNoZXMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729924318),
('oGkXSOaPW95jQN75d5qQIpjH9TE4UhIkI7y8B3Ew', NULL, '157.55.39.10', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNExURjZDbEljb1Z5RVZUcmN4Qk84enN5aGFqQTNKc3dHdXdCdEJ1aSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTM6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9jb3Jwb3JhdGUtc29jaWFsLXJlc3BvbnNpYmlsaXR5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729941583),
('OM5zDQE09aefY6t1CjzDw4irTttDxggEg1uGg4n3', NULL, '52.167.144.22', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicTZBaWJpMmN6b1JoM0pMZHhLejRFUUQ4aEtXcFVpQW5WSU1XMlNHeCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vcHJvZHVjdC1zZXJ2aWNlL3BlcnNvbmFsLWxvYW4tNDkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729940667),
('OW4w8Rx3n70guyCOmInspXT4tvhGajWbuYtVi2Jn', NULL, '47.128.18.165', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTFNRXRiME1hRUZqaEo5VVpWVUFXSEZKR2cwV2dwVEFENWowSDVLNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20vZGlyZWN0b3JzLzI1Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729924388),
('P4Qe5yKkHM6RhTq3dmTkZ9DWEQakknSIwQKlOAQT', NULL, '47.128.120.85', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiakl3S2NnNzM0bzVqZ3gxUkRrQVNjRkhOaVE0ZzFocTNqRWdFaTVRMyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTUwOiJodHRwczovL3dlYi5zaWtldGJhbmsuY29tL2NvcnBvcmF0ZS1zb2NpYWwtcmVzcG9uc2liaWxpdHkvc2lrZXQtYmFuay1wcm92aWRlZC1zdXBwb3J0LW9mLW1vcmUtdGhhbi0yLW1pbGxpb24tYmlyci10by12YXJpb3VzLXNlY3Rpb25zLW9mLXRoZS1zb2NpZXR5LTgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729940794),
('pAasYDvvGzQgx0kH8CM0CZrHp5khbDyXKe7uNPa2', NULL, '47.128.110.139', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib1JxRTRhRm1zUnlqbGlIeElwbkM5V0hDSVQ1endmZjdEQlVxOUZBUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI0OiJodHRwczovL3d3dy5zaWtldGJhbmsuY29tL25ld3Mvc2lrZXQtYmFuay1wcm92aWRlZC1zdXBwb3J0LW9mLW1vcmUtdGhhbi0yLW1pbGxpb24tYmlyci10by12YXJpb3VzLXNlY3Rpb25zLW9mLXRoZS1zb2NpZXR5LTEyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729927297),
('pAUZdfvOn5LsJeDDB8y9LrFjQx9umt665EgetIVv', NULL, '47.128.16.55', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibUVrcHNSQjBEbzRxN29IVXpYUHB1Z2FhNGtPemd1anVoUXNSSUJlRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzA6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20vcHJvZHVjdC1zZXJ2aWNlL2NyZWRpdC1idXNpbmVzcy1pbnN1cmFuY2UtNTkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729938687),
('PAwknGxM2nqxfgcd4ITq9DtQvoBcSWJsQjYMU1rw', NULL, '193.186.4.77', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiT2JQd3ZhaXhFOWNJdEZEYWNHZmEyTTl1SHAxODVvVjRWM1Vqd09KUSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729923745),
('pEyGIlNtyI19X5Ls0VPuvopzrAd6scqVR3hSUJXT', NULL, '47.128.17.113', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSTRRZmVQWUoyZnBGazZzbVFtVGpHM0VCUkxTc29jaVFJb2E5UUFDcCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzI6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vcHJvZHVjdC1zZXJ2aWNlL3NhdmluZ3Mtd2l0aC1sb2FuLXJlcGF5bWVudC00NCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729934174),
('pJMX0AvahoQrmBrs0nCYqXM0d2yYUPMrFyo3a393', NULL, '52.167.144.238', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQThIVHh1UEhvbkFzb0ZYY1ZZZ282WTR5cndnZDl5WG9GYzN5WXhiRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729959697),
('PUKfppW5AeXi9oeoEAIqwzBHkVpvEoFBU1xIxlGP', NULL, '31.13.103.8', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY282SlRPZ081VmsxcWlHUUZZWGJqdWJibzZEYXI1OW5tVk12ejhISiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729950314),
('PvmsJ8R6umKYonEow0YSdWvYr7FXdOTHa9qsPx0v', NULL, '52.167.144.236', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidW15SE83OXBZbkwzN1lPYjZaTVkzbWZydXRteG5RY3g0T2dnYmZSdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vbmV3cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729950437),
('PxKdxqIhqUQRcgg8CIFmjNnGa0pOVu6EUhlrKAvt', NULL, '77.74.177.118', 'Mozilla/5.0 (Linux; arm_64; Android 12; CPH2205) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 YaBrowser/23.3.3.86.00 SA/3 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQUxFYkphb3BvY2VLZ0hMdkFQVnJzOFhZdThZOTEyaTZtMkdoYmRzUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729959981),
('q3ByrtjjOS2SglXvEPUOQAYpQ5aNLFb7iZd7KQxb', NULL, '51.8.102.6', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko); compatible; OAI-SearchBot/1.0; +https://openai.com/searchbot', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMmEwSW9STzFYZ1d2SDN6aXRlRmJiWmRSN1I0TmxSelRPSjBEWmhoUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9hdG0iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729946421),
('qFe5L4lXzokQCuqnCu3kQZznWrYHEpNvWouqWsvY', NULL, '52.225.75.208', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko); compatible; ChatGPT-User/1.0; +https://openai.com/bot', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidldHb2VEN3Nhc2gzT2huQWNHWnAyVFNvN1VYYk1yQ2ZuMWkwMHR6VCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9jb250YWN0LXVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729945662),
('QhjOk9y7d4TdJESRyLcB8ulfOqZ95dLokrKFylNp', NULL, '157.55.39.201', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWVBvUVd1ZjRxazFlRzNRSHV3d3pOUFMxSnI0RUtjRVljT0hrTjRoaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20vcHJvZHVjdC1zZXJ2aWNlL3ZlaGljbGUtbG9hbi01MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729956685),
('QmOeVEnS7iUHRMIE09kV2PEvgvP4pWgpgIUUAydW', NULL, '196.189.44.153', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidW5QMGdWOFJsSWtUd2lzZURLM2dLUHd5ejllNDVwTFB3dktOMVI3SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9jb250YWN0LXVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729931631),
('qwZA0V7zmOSE2ITigDyFHhXdiBuwHVkTxuhI4WwW', NULL, '52.225.75.216', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko); compatible; ChatGPT-User/1.0; +https://openai.com/bot', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVHhLM0xqbkphOHZENElFMERHNTQ0YVNGMGhHT1V6SVNGUUdMamJkdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9hYm91dC11cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729945661),
('R97Ti4ntH7L4mvjtoJHu9nOjAp9x9E2Xm1wChYlK', NULL, '196.188.161.131', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidTNUTXpobDNVVWNBQjhxeXNLSHdsQWVjTjFMYlhEZlV1cnNXN1lzSyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vY29udGFjdC11cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NjoibG9jYWxlIjtzOjI6ImFtIjt9', 1729923955),
('RjVe6Y431sgTYrdUJ0ETH1NkLYBKrWZ3hTKX1KhN', NULL, '193.186.4.77', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid3JLaWFPano4UHVNcnN0S3FoRnB0NUJzMjNQRTJuWmR4NWI2VnhzVSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729925740),
('RLLs7nrRjUws8Xnq7Ge1gl8F3vARYkYuK7MmebmV', NULL, '193.186.4.77', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoiWmsxSkw5UVhYOXYxdkFqVGV3REdEaElYN0hDREg4UkszYm1ZNER2ayI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729949630);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('RMrLXITmOgvr9zHApPcSpnAB73gF68dkL3LbKe8Z', NULL, '47.128.115.79', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0xwMmVQczJLcHJJUWp2Uk95SzRiUzRvOWZCdE5HYVJzTEdsRlU0NyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTc6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20vcHJvZHVjdC1zZXJ2aWNlL3ZlaGljbGUtbG9hbi01MCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729953075),
('rNdRDjC6NHbUgTz8v2g6qefv1bI92Z3w7HQFjiUH', NULL, '47.128.20.7', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWjdNZnhWUGxXQnhvVko2bmhXNEpBeFQ3cTlyUmE5RW9XVUc2VDl2cCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzQ6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9kaXJlY3RvcnMvMTQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729945047),
('s0kVtizSQvfUej2Lf8ObUZKXMCgFFMoPM1Q5orKZ', NULL, '72.14.201.77', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoidXYzTGpYbE5BVHNaR2E0QjFaMjloZVZrZnRsbG1QUFNKWmlsWkRZYSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729948796),
('sCY5KMuL09xYO4uLDOPv6RoDpI80CNtvRSCBguZp', NULL, '164.90.228.79', 'Mozilla/5.0 (Linux; Android 6.0; HTC One M9 Build/MRA444460) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2732.98 Mobile Safari/537.3', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidjV1eThmR0l2akQxYmh5dHBXZjdXUTlwN3I4TFQyQXd2UzBxRVhpbiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729926529),
('t2pJ5yH35orUnzUF60wTuaqVXCu02InkY1hqf1mP', NULL, '157.55.39.200', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTjJrVlRnclE3ZjJPR3pyNUpNS1FNbTJHenZFN083UmN0eXowampyYyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NTg6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20vcHJvZHVjdC1zZXJ2aWNlL3BlcnNvbmFsLWxvYW4tNDkiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729942091),
('t5Fjhw2K3mdSV4lfH7Qo9X8IXJRXPtIYoMwP2Hsw', NULL, '196.188.33.53', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMXRjYjdkdEU4MlA4eVZaMjNzaWhYTXJuTnVjazNlZmV1ZWl6Z3BDTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9icmFuY2hlcz9wYWdlPTciO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729947222),
('t9dqfiy3P20PGMdLGyaKFDYR2EU8PWo7Ho9BXRgy', NULL, '207.46.13.141', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieWZjOU82ekYzRUoxRURxb3VrMUNSNW1UTVlGWVVxZjQ4b2FFUGY5YSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDE6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vYnJhbmNoZXM/cGFnZT00Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729924332),
('Tc98Yc8svz5SlAJRJUCMq5uCEbO0nqLcYk2iFKXt', NULL, '52.225.75.216', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko); compatible; ChatGPT-User/1.0; +https://openai.com/bot', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiczdRVzJrS0pQblg0MEtFS1NFdUZYYTZtQzlLMFVhNGFSdTZyUk1KUCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9leGVjdXRpdmUtbWFuYWdlbWVudCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729945661),
('Tdg69UfVskKU0rlydYV5ba3yUuVMBciggYzD9e2Y', NULL, '157.55.39.201', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZXlkT0gyQlQybVdvR1JhVG9KM1BrOUxZdGdzZHNReWx6T0dyV0NoRSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDY6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20vZXhlY3V0aXZlLW1hbmFnZW1lbnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729928991),
('u77DBk2WMno983yHDrshr2Zz36FOBdgoAg6etWtH', NULL, '47.128.49.38', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiUzg3RDBqaGx0bEdjVUM2eHd2WnpmV1lUeE5wN3VWOTJmWnA1RTIwaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9nYWxsZXJ5LzgiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729934197),
('U9HCltI69GzwSPgVVSy6DpFoEjx7qqYyjhr8IUQD', NULL, '47.128.59.195', 'Mozilla/5.0 (Linux; Android 5.0) AppleWebKit/537.36 (KHTML, like Gecko) Mobile Safari/537.36 (compatible; Bytespider; spider-feedback@bytedance.com)', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGRlREdVUEpSbGViMlQwUnB3QzFkS1V4V3pOWlk5M2huVGlrdEdUUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vd2ViLnNpa2V0YmFuay5jb20vY29udGFjdC11cyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729930998),
('Ubf7B1t2RFEyJPJ7V9VPhs7st2nfBEIiMLOMIsl7', NULL, '196.191.221.179', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZURzeFA2UXVXMHhodWtRTlJydGxWdEFCY284YXpkTDBZNzlvVXUwcSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzA6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9hYm91dC11cyI7fX0=', 1729956162),
('uWk6eTlx7AnbQzc14BzWkpi1pa7VSjSjiBCGwYUT', NULL, '143.244.164.124', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRkVRaTlwY2tNSlp5ckROVVFkbm9mRG5tU0xtQnR5aHpVRTc1WFBGTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729928747),
('V1tJXTi4UilPoHRjBZtfdIfWsa2vloaHGdN2tGrl', NULL, '193.186.4.77', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Mobile Safari/537.36', 'YToyOntzOjY6Il90b2tlbiI7czo0MDoid0t3bUU5QWlLeEtPbFoxMHhoUEtVcDdZMDNMNDZCMkNpS1ExcGljZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729925889),
('vB3gGAg2MWiGUtLzTgveHoGWcRVi3v9Xh4U8Lm12', NULL, '207.46.13.160', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieDNXNERkcU1zRng4b3U1YmJpRlBuUTlSYnNiOFlMOUxPV25RU0lPYSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9icmFuY2hlcz9wYWdlPTEwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729947826),
('VGtv3h9lEhS1DGaQrMJqVyTb6OKq4Mf5m16Sakjt', NULL, '157.55.39.14', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWEZBMzVLZkZqMll2S3NWVGZDaWNNSEEweWw3SVZrdGlwUmVYV2lVdCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzk6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vYW5udWFsLXJlcG9ydCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729939472),
('vHg0RhT4DmRwX7tfFcjVxHBemH7S1Eu8KK5QZshN', NULL, '196.189.44.153', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNWxRd29lU29GTmV6ajNvNjh3bFVXZ0hUSW04VmxWVmE0UGxhTlRBRSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9nYWxsZXJ5Ijt9czo2OiJsb2NhbGUiO3M6MjoiZW4iO30=', 1729931668),
('vYQ8nFD66kkUO6H4TY94E3Xf0eaGh9G6TGp9GDlr', NULL, '40.77.167.42', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVlppYkRLQzllY2ZpNDh4QkhEZVVVZDNqdnUyQ215V0JET2MyeHNZaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS92YWNhbmN5Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729929871),
('wb3jONn9tSF73DIdaTWLfIDM8ncr26bIwNCKP3Uq', NULL, '197.156.81.7', 'Mozilla/5.0 (Linux; Android 10; K) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Mobile Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNnhFWDltNUVxdjFNckJJdlZQWlBvbXJSMHlLUDdrVDUyS2dwSktpOCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9sb2FuLWNhbGN1bGF0b3IiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729949149),
('wFMFV9gDZ9ySuYubvwQDUAXgBQOMXYJKqAn9XRhk', NULL, '196.189.44.153', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36 Edg/130.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibDlyeEJmelM4MmJCM1lsUVBjd3IwdGRSc2dLQUtjNGZaZXNMZ3ZhSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzI6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbS9jb250YWN0LXVzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729961018),
('xbAB8GE6kVkEOjfB5jCqWmdzUqVOkJ4WlKD4P3Vs', NULL, '47.128.113.62', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWFpNQjRVcXFsT3JXOENWTjZNb3ptdUhaeHA4dzA0dG95bTIyb1g0ayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTI3OiJodHRwczovL3Npa2V0YmFuay5jb20vY29ycG9yYXRlLXNvY2lhbC1yZXNwb25zaWJpbGl0eS9zaWtldC1iYW5rLWRvbmF0ZWQtMTUtbWlsbGlvbi1iaXJyLXRvLXRoZS13dWJhbmNoaS1jaGFyaXR5LW9yZ2FuaXphdGlvbi05Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729953051),
('XyCFdgPKXIo1GpXqQW3yPsuCjv5jsJj1l6CPRLAi', NULL, '47.128.40.183', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRm4zbHdUd3hNN0dkTEFaVG16UzJ1NURxZ2tOd1FzclpUQ0VpNGFOdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzg6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vZGlyZWN0b3JzLzEyIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729953100),
('ybgHA9mQa6qNHQOEKIFs1QBzq044dSVXjujO07vR', NULL, '31.220.97.173', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWnBUMVBoR1lHWmtaZExFVkNNZms4TE5MZUhjWXc5RHU0SWlsRFpYSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729924036),
('yCy6NdOipb7KWix01MgOc3nCo3lXpAPVvrFiiHzI', NULL, '47.128.120.39', 'Mozilla/5.0 (compatible; Bytespider; spider-feedback@bytedance.com) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVDd3cHJyUmJvU3RZcWhsSjN3TEtzWkk4SDE1T0F0cm9kb3ZEZkdrMCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTA2OiJodHRwczovL3dlYi5zaWtldGJhbmsuY29tL25ld3Mvc2lrZXQtYmFuay1yZWNvcmRlZC1hLXByb2ZpdC1vZi0xNi1iaWxsaW9uLWJpcnItaW4tdGhlLWZpc2NhbC15ZWFyLTIwMjMyNC05Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1729930974),
('Yn9k3cTe3A8q5HhQjknbdl2fgh12dqUyFOtGZJbl', NULL, '31.220.98.151', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/93.0.4577.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoia242a05DbnNNWjBvOFhtYjUwcmtoYkZFaXlPOElhbk9uQlk1NnlrQyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vc2lrZXRiYW5rLmNvbSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729952785),
('YRLCDcbmadQPmfYgCBsUbQl8wgbnalUTWITSUqBF', NULL, '207.46.13.154', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibzBYbHVOTVdJbW1qME9sNUhmZlY5dVI0eUVNOTJVWHhhTm1vaGRZSiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NzU6Imh0dHBzOi8vd3d3LnNpa2V0YmFuay5jb20vcHJvZHVjdC1zZXJ2aWNlL2Nvb3BlcmF0aXZlLWVkaXJlLWxvYW4tc2VydmljZS01MyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1729936208),
('zsFvcASuNOg93cCIGLu5i2vzjZPNUEqIuWsHEO6Y', NULL, '52.167.144.222', 'Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/116.0.1938.76 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMGt6QUJnMHFIY2Q4RXZLOTRYZ0xKTzExdWVxaExpendmelpGNTY4WSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTA1OiJodHRwczovL3dlYi5zaWtldGJhbmsuY29tL25ld3Mvc2lrZXQtYmFuay1kb25hdGVkLTE1LW1pbGxpb24tYmlyci10by10aGUtd3ViYW5jaGktY2hhcml0eS1vcmdhbml6YXRpb24tMTEiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1729948209);

-- --------------------------------------------------------

--
-- Table structure for table `setting_role`
--

CREATE TABLE `setting_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(500) NOT NULL,
  `role_description` varchar(500) DEFAULT NULL,
  `role_details` text NOT NULL,
  `role_reg_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting_role`
--

INSERT INTO `setting_role` (`role_id`, `role_name`, `role_description`, `role_details`, `role_reg_date`) VALUES
(1, 'Admin', 'Root admin', '[\"dashboard\",\"asset\"]', '2024-05-24'),
(2, 'Finance', 'finance management', '[\"dashboard\",\"asset\",\"finance\",\"customer\",\"report\",\"userandrole\",\"setting\"]', '2024-05-24'),
(3, 'Super root', 'The root of the admin in website', '[\"dashboard\",\"branch\",\"atm\",\"media\",\"mega_header\",\"vacancy\",\"user_contact\",\"management\",\"annual_report\",\"news\",\"banner\",\"exchange_rate\",\"language\",\"header_type\",\"subtype\",\"distirct\",\"gov_region\",\"subscriber\",\"faq\",\"csr\",\"chat\",\"linkage\",\"quant\",\"role\",\"user\"]', '2024-06-12'),
(4, 'DASHBOARD ONLY', 'dashboard only', '[\"dashboard\"]', '2024-07-04'),
(5, 'Branch management', 'only branch', '[\"dashboard\",\"branch\",\"atm\",\"media\",\"mega_header\",\"vacancy\",\"user_contact\",\"management\",\"annual_report\",\"news\",\"banner\",\"exchange_rate\",\"language\",\"header_type\",\"subtype\",\"distirct\",\"gov_region\",\"subscriber\",\"faq\",\"csr\",\"chat\",\"linkage\",\"quant\",\"role\",\"user\"]', '2024-07-10'),
(6, 'Vacancy', 'It holds only vacancy', '[\"branch\",\"vacancy\",\"management\"]', '2024-07-19'),
(7, 'Communication Manager', 'Communication Manager', '[\"branch\",\"atm\",\"media\",\"mega_header\",\"management\",\"annual_report\",\"news\",\"banner\",\"language\",\"header_type\",\"subtype\",\"distirct\",\"gov_region\",\"subscriber\",\"faq\",\"csr\",\"chat\",\"linkage\",\"quant\"]', '2024-08-15');

-- --------------------------------------------------------

--
-- Table structure for table `subscriber`
--

CREATE TABLE `subscriber` (
  `id` bigint(20) NOT NULL,
  `email` varchar(500) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscriber`
--

INSERT INTO `subscriber` (`id`, `email`, `date_created`) VALUES
(1, 'dechasaadeba@gmail.com', '2024-07-05'),
(2, 'tobin29@banglemail.com', '2024-07-05'),
(3, 'coy.rogahn@banglemail.com', '2024-07-05'),
(4, 'blake1@moneysquad.org', '2024-07-06'),
(5, 'hugolehmann92@outlook.com', '2024-07-06'),
(6, 'daron.larson6@gmail.com', '2024-07-06'),
(7, 'chelsie2@moneysquad.org', '2024-07-06'),
(8, 'dawitmulugeta@siketbank.com', '2024-07-10'),
(9, 'mulualemkumera.skb@gmail.com', '2024-07-15'),
(10, 'yoni171707@gmail.com', '2024-07-17'),
(11, 'sambook.aastu@gamil.com', '2024-07-19'),
(12, 'sambook.aastu@gmail.com', '2024-07-19'),
(13, 'yoni1@gmail.com', '2024-08-19'),
(14, 'kenbonlata09@gmail.com', '2024-08-21'),
(15, 'admin@adcsi.et', '2024-09-02'),
(16, 'tamoobaayisaa@gmail.com', '2024-09-02'),
(17, 'Gemechutirfe@gmail.com', '2024-09-02'),
(18, 'lieltmelka@gmail.com', '2024-09-02'),
(19, 'tokkummajabessa@yahoo.com', '2024-09-10'),
(20, 'eljsszejbuz@dont-reply.me', '2024-09-11'),
(21, 'geilt2200@gmail.com', '2024-09-12'),
(22, 'dawitsh88@gmail.com', '2024-09-13'),
(23, 'oliveragosaye@gmail.com', '2024-09-15'),
(24, 'tinsezeb@gmail.com', '2024-09-18'),
(25, 'kirubelwerkiye@gmail.com', '2024-09-18'),
(26, 'kirubelwerkiye1@gmail.com', '2024-09-18'),
(27, 'bsahlemihretu21@gmail.com', '2024-09-21'),
(28, 'dawitalemayo254@gmail.com', '2024-09-22'),
(29, 'danitujubaken@gmail.com', '2024-09-23'),
(30, 'zenaatikilt@gmail.com', '2024-09-24'),
(31, 'feyera4u@gmail.com', '2024-09-24'),
(32, 'kidistzerihun@gmail.com', '2024-09-24'),
(33, 'eoforvkimy@gmail.com', '2024-09-25'),
(34, 'danielkulessa@gmail.com', '2024-09-28'),
(35, 'crackllc373@gmail.com', '2024-09-30'),
(36, 'kelilemuse4914@gmail.com', '2024-10-01'),
(37, 'afityzola@gmail.com', '2024-10-02'),
(38, 'ZBwh_generic_b18a5b28_siketbank.com@serviseantilogin.com', '2024-10-04'),
(39, 'negus.asab@gmail.com', '2024-10-04'),
(40, 'bentsiontarekegn@gmail.com', '2024-10-07'),
(41, 'bayudabare@gmail.com', '2024-10-07'),
(42, 'bethelephraim10@gmail.com', '2024-10-07'),
(43, 'wendwosentegegn83@gamil.com', '2024-10-08'),
(44, 'haweragirma95@gmail.com', '2024-10-08'),
(45, 'getanehgucho@gmail.com', '2024-10-09'),
(46, 'tesfahun23desta23@gmail.com', '2024-10-09'),
(47, 'moyibonhindarge@gmail.com', '2024-10-09'),
(48, '16muluken@gmail.com', '2024-10-10'),
(49, 'sebahmusa07@gmail.com', '2024-10-12'),
(50, 'gadtom6@gmail.com', '2024-10-12'),
(51, 'g3Q8_generic_b18a5b28_siketbank.com@serviseantilogin.com', '2024-10-12'),
(52, 'tegenudiriba@gmail.com', '2024-10-13'),
(53, 'bahrua99@gmail.com', '2024-10-13'),
(54, 'iriizejbzuz@dont-reply.me', '2024-10-14'),
(55, 'kidistmulugeta@siketbank.com', '2024-10-15'),
(56, 'ashenafi2takele@gmail.com', '2024-10-16'),
(57, 'kibeseifu@gmail.com', '2024-10-17'),
(58, 'kollinshannon@gmail.com', '2024-10-19'),
(59, 'mulunachala@gmail.com', '2024-10-21'),
(60, 'Yomifbilisumma@gmail.com', '2024-10-21'),
(61, 'zjjijermlsuz@dont-reply.me', '2024-10-23'),
(62, 'kenomiyo@gmail.com', '2024-10-23');

-- --------------------------------------------------------

--
-- Table structure for table `total_employees`
--

CREATE TABLE `total_employees` (
  `id` int(11) NOT NULL,
  `total` bigint(20) NOT NULL,
  `description` text NOT NULL,
  `status` varchar(100) NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_fullname` varchar(500) NOT NULL,
  `user_username` varchar(500) NOT NULL,
  `user_password` varchar(500) NOT NULL,
  `expire_date` datetime NOT NULL DEFAULT current_timestamp(),
  `role_id` bigint(20) NOT NULL,
  `user_status` varchar(50) NOT NULL,
  `user_reg_date` datetime NOT NULL DEFAULT current_timestamp(),
  `expired_date` date DEFAULT NULL,
  `user_phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_fullname`, `user_username`, `user_password`, `expire_date`, `role_id`, `user_status`, `user_reg_date`, `expired_date`, `user_phone`) VALUES
(1, 'Biqila Biqila', 'biqila@gmail.com', '$2y$12$pg9dGGppQPzF2MzOEckeeOU4ROZ.I1F2UsJIOP6yuRqOV.0wFrpzW', '2024-06-24', 1, 'Suspended', '2024-05-24', NULL, '0922088220'),
(2, 'Dawit Dawit', 'dawit@siketbank.com', '$2y$12$3lLIAhf05EuUWA00IK1/Je9CtSNVnMAkBOpUxH6ogZ9e6UUtdPJW6', '2024-06-24', 2, 'Suspended', '2024-06-07', NULL, '0922088330'),
(3, 'Dechasa Dechasa', 'admin', '$2y$12$w0Ar/oSGgOKuvs24.Ozb0.9QQP0im.b4zsnx0HkW9kexLh6k/sIhq', '2024-11-16', 3, 'Active', '2024-06-26', NULL, '0922088229'),
(4, 'Bulloo Bulloo', 'bulloo12347999123', '$2y$12$v124lWfQuslWBbnwI.BgUuSmUIBOcIV1nnn/IhPkYlRQxHNOwmnxK', '2024-07-30', 1, 'Suspended', '2024-06-30', NULL, '0913456780'),
(5, 'Sefu Sefu', 'sefugirma', '$2y$12$lKc8KWyva4bM63grlkWH9eA2GOjZ4fjaqxzWr/rBsyJupadJMtayC', '2024-08-03', 1, 'Suspended', '2024-07-04', NULL, '0945678920'),
(6, 'Dawit Dawit', 'dawitmulun', '$2y$12$C4qOsH0a61sVcWTy080pvug1qr7LFmnOykFY2Sj6Msy8hRnqncy6W', '2024-08-09', 5, 'Active', '2024-07-10', NULL, '0912345678'),
(7, 'Samuel Samuel', 'sambook', '$2y$12$DQgEVVJ7IfU0bN9zz1Oiiubzbhiu63rhZiTsGipdU/ruyercVKYta', '2024-08-18', 6, 'Suspended', '2024-07-19', NULL, '0912345129'),
(8, 'Bedilu Bedilu', 'bedilug', '$2y$12$aMi6sFZFJ.IxVhs6WKVSbeCRSJs.Kn4FshJjurgHc/VcqGsjmmJTy', '2024-11-02', 7, 'Active', '2024-08-15', NULL, '0911023661'),
(9, 'Dawit Dawit', 'dawitmw', '$2y$12$ie0eTA0yz.KPshaY4DJMvuNDeOBMARl.pN6gJR8WpHCZTpdq7ooE.', '2024-10-10', 5, 'Active', '2024-09-10', NULL, '0911127648');

-- --------------------------------------------------------

--
-- Table structure for table `vacancy`
--

CREATE TABLE `vacancy` (
  `id` int(11) NOT NULL,
  `vacancy_position` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `vacancy_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_icelandic_ci NOT NULL,
  `deadline` varchar(200) NOT NULL,
  `application_link` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(100) NOT NULL,
  `language` varchar(100) NOT NULL DEFAULT 'en',
  `parent_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vacancy`
--

INSERT INTO `vacancy` (`id`, `vacancy_position`, `vacancy_description`, `deadline`, `application_link`, `date_created`, `status`, `language`, `parent_id`) VALUES
(3, 'Senior software engineer', '<p><span class=\"ql-size-large\">Qualification: </span></p><p><span class=\"ql-size-large\">Job position: </span></p>', '2024-07-31', 'https://admin.siketbank.com/vacancy', '2024-07-04', 'Active', 'en', NULL),
(4, 'Senior Account', '<p><strong>Qualification: Account masters</strong></p><p><strong>Job description:</strong></p>', '2024-07-30', 'https://siketbank.com/vacancy', '2024-07-10', 'Active', 'en', NULL),
(5, 'Senior Database', '<h2><strong>Qualification:</strong></h2><h2><strong>Job position:</strong></h2>', '2024-07-31', 'https://web.siketbank.com/', '2024-07-19', 'Active', 'en', NULL),
(6, 'software developer officer', '<p>come and join with us</p>', '2024-08-23', 'https://web.siketbank.com/gallery', '2024-08-16', 'Suspend', 'en', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `annual`
--
ALTER TABLE `annual`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `atm`
--
ALTER TABLE `atm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `board_director`
--
ALTER TABLE `board_director`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulk_audit`
--
ALTER TABLE `bulk_audit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `csr`
--
ALTER TABLE `csr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_subtype`
--
ALTER TABLE `header_subtype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_type`
--
ALTER TABLE `header_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mega_header`
--
ALTER TABLE `mega_header`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_linkage`
--
ALTER TABLE `other_linkage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quantity`
--
ALTER TABLE `quantity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate`
--
ALTER TABLE `rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search`
--
ALTER TABLE `search`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `setting_role`
--
ALTER TABLE `setting_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `subscriber`
--
ALTER TABLE `subscriber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `total_employees`
--
ALTER TABLE `total_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `vacancy`
--
ALTER TABLE `vacancy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `annual`
--
ALTER TABLE `annual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `atm`
--
ALTER TABLE `atm`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `board_director`
--
ALTER TABLE `board_director`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `bulk_audit`
--
ALTER TABLE `bulk_audit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=784;

--
-- AUTO_INCREMENT for table `csr`
--
ALTER TABLE `csr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `district`
--
ALTER TABLE `district`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `header_subtype`
--
ALTER TABLE `header_subtype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `header_type`
--
ALTER TABLE `header_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `mega_header`
--
ALTER TABLE `mega_header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `other_linkage`
--
ALTER TABLE `other_linkage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `quantity`
--
ALTER TABLE `quantity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rate`
--
ALTER TABLE `rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `search`
--
ALTER TABLE `search`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `setting_role`
--
ALTER TABLE `setting_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `subscriber`
--
ALTER TABLE `subscriber`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `total_employees`
--
ALTER TABLE `total_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vacancy`
--
ALTER TABLE `vacancy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `siketban_wp6`
--
CREATE DATABASE IF NOT EXISTS `siketban_wp6` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `siketban_wp6`;

-- --------------------------------------------------------

--
-- Table structure for table `wp9d_commentmeta`
--

CREATE TABLE `wp9d_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp9d_comments`
--

CREATE TABLE `wp9d_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp9d_comments`
--

INSERT INTO `wp9d_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2023-11-22 13:55:07', '2023-11-22 13:55:07', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp9d_links`
--

CREATE TABLE `wp9d_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp9d_loginizer_logs`
--

CREATE TABLE `wp9d_loginizer_logs` (
  `username` varchar(255) NOT NULL DEFAULT '',
  `time` int(10) NOT NULL DEFAULT 0,
  `count` int(10) NOT NULL DEFAULT 0,
  `lockout` int(10) NOT NULL DEFAULT 0,
  `ip` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp9d_options`
--

CREATE TABLE `wp9d_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp9d_options`
--

INSERT INTO `wp9d_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://siketbank.com/wp', 'yes'),
(2, 'home', 'https://siketbank.com/wp', 'yes'),
(3, 'blogname', 'My Blog', 'yes'),
(4, 'blogdescription', 'My WordPress Blog', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@siketbank.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:94:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:21:\"backuply/backuply.php\";i:1;s:23:\"loginizer/loginizer.php\";i:2;s:17:\"gosmtp/gosmtp.php\";i:3;s:31:\"fileorganizer/fileorganizer.php\";i:4;s:35:\"speedycache-pro/speedycache-pro.php\";i:5;s:27:\"speedycache/speedycache.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwentyfour', 'yes'),
(41, 'stylesheet', 'twentytwentyfour', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '57155', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:0:{}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:2:{s:21:\"backuply/backuply.php\";s:21:\"backuply_deactivation\";s:23:\"loginizer/loginizer.php\";s:22:\"loginizer_deactivation\";}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1716213307', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'wp_attachment_pages_enabled', '0', 'yes'),
(100, 'initial_db_version', '56657', 'yes'),
(101, 'wp9d_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(102, 'fresh_site', '1', 'yes'),
(103, 'user_count', '2', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:6:{i:1716850512;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1716861307;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1716904507;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1717077307;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1717204106;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(121, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentyfour', 'a:1:{s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(123, 'backuply_version', '1.2.2', 'yes'),
(124, 'backuply_config_keys', 'a:2:{s:12:\"BACKUPLY_KEY\";s:64:\"08f59c9bbc61e43a78daea823154593f72dab0c83bf6a28a42193a31134745da\";s:11:\"RESTORE_KEY\";s:64:\"3ab34ff49a8d175614cbfcff9f4eb8e8fddd194871911cbd84de907bbf0b5cab\";}', 'yes'),
(125, 'backuply_backup_nag', '1700142912', 'yes'),
(126, 'loginizer_version', '1.8.2', 'yes'),
(127, 'loginizer_options', 'a:0:{}', 'yes'),
(128, 'loginizer_last_reset', '1716848609', 'yes'),
(129, 'loginizer_whitelist', 'a:0:{}', 'yes'),
(130, 'loginizer_blacklist', 'a:0:{}', 'yes'),
(131, 'loginizer_2fa_whitelist', 'a:0:{}', 'yes'),
(132, 'loginizer_ins_time', '1700661312', 'yes'),
(133, 'loginizer_promo_time', '1700661312', 'yes'),
(134, 'loginizer_backuply_promo_time', '1700661312', 'yes'),
(135, 'loginizer_csrf_promo_time', '1700661312', 'yes'),
(136, 'gosmtp_version', '1.0.4', 'yes'),
(137, 'fileorganizer_version', '1.0.4', 'yes'),
(138, 'speedycache_options', 'a:8:{s:11:\"minify_html\";b:1;s:9:\"minify_js\";b:1;s:15:\"render_blocking\";b:1;s:3:\"lbc\";b:1;s:10:\"minify_css\";b:1;s:4:\"gzip\";b:1;s:15:\"automatic_cache\";b:1;s:6:\"status\";b:1;}', 'yes'),
(139, 'speedycache_pro_version', '1.1.2', 'yes'),
(140, 'speedycache_version', '1.1.2', 'yes'),
(141, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.5.3\";s:5:\"files\";a:500:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:20:\"block/editor-rtl.css\";i:29;s:24:\"block/editor-rtl.min.css\";i:30;s:16:\"block/editor.css\";i:31;s:20:\"block/editor.min.css\";i:32;s:21:\"button/editor-rtl.css\";i:33;s:25:\"button/editor-rtl.min.css\";i:34;s:17:\"button/editor.css\";i:35;s:21:\"button/editor.min.css\";i:36;s:20:\"button/style-rtl.css\";i:37;s:24:\"button/style-rtl.min.css\";i:38;s:16:\"button/style.css\";i:39;s:20:\"button/style.min.css\";i:40;s:22:\"buttons/editor-rtl.css\";i:41;s:26:\"buttons/editor-rtl.min.css\";i:42;s:18:\"buttons/editor.css\";i:43;s:22:\"buttons/editor.min.css\";i:44;s:21:\"buttons/style-rtl.css\";i:45;s:25:\"buttons/style-rtl.min.css\";i:46;s:17:\"buttons/style.css\";i:47;s:21:\"buttons/style.min.css\";i:48;s:22:\"calendar/style-rtl.css\";i:49;s:26:\"calendar/style-rtl.min.css\";i:50;s:18:\"calendar/style.css\";i:51;s:22:\"calendar/style.min.css\";i:52;s:25:\"categories/editor-rtl.css\";i:53;s:29:\"categories/editor-rtl.min.css\";i:54;s:21:\"categories/editor.css\";i:55;s:25:\"categories/editor.min.css\";i:56;s:24:\"categories/style-rtl.css\";i:57;s:28:\"categories/style-rtl.min.css\";i:58;s:20:\"categories/style.css\";i:59;s:24:\"categories/style.min.css\";i:60;s:19:\"code/editor-rtl.css\";i:61;s:23:\"code/editor-rtl.min.css\";i:62;s:15:\"code/editor.css\";i:63;s:19:\"code/editor.min.css\";i:64;s:18:\"code/style-rtl.css\";i:65;s:22:\"code/style-rtl.min.css\";i:66;s:14:\"code/style.css\";i:67;s:18:\"code/style.min.css\";i:68;s:18:\"code/theme-rtl.css\";i:69;s:22:\"code/theme-rtl.min.css\";i:70;s:14:\"code/theme.css\";i:71;s:18:\"code/theme.min.css\";i:72;s:22:\"columns/editor-rtl.css\";i:73;s:26:\"columns/editor-rtl.min.css\";i:74;s:18:\"columns/editor.css\";i:75;s:22:\"columns/editor.min.css\";i:76;s:21:\"columns/style-rtl.css\";i:77;s:25:\"columns/style-rtl.min.css\";i:78;s:17:\"columns/style.css\";i:79;s:21:\"columns/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:30:\"comment-template/style-rtl.css\";i:85;s:34:\"comment-template/style-rtl.min.css\";i:86;s:26:\"comment-template/style.css\";i:87;s:30:\"comment-template/style.min.css\";i:88;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:89;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:90;s:38:\"comments-pagination-numbers/editor.css\";i:91;s:42:\"comments-pagination-numbers/editor.min.css\";i:92;s:34:\"comments-pagination/editor-rtl.css\";i:93;s:38:\"comments-pagination/editor-rtl.min.css\";i:94;s:30:\"comments-pagination/editor.css\";i:95;s:34:\"comments-pagination/editor.min.css\";i:96;s:33:\"comments-pagination/style-rtl.css\";i:97;s:37:\"comments-pagination/style-rtl.min.css\";i:98;s:29:\"comments-pagination/style.css\";i:99;s:33:\"comments-pagination/style.min.css\";i:100;s:29:\"comments-title/editor-rtl.css\";i:101;s:33:\"comments-title/editor-rtl.min.css\";i:102;s:25:\"comments-title/editor.css\";i:103;s:29:\"comments-title/editor.min.css\";i:104;s:23:\"comments/editor-rtl.css\";i:105;s:27:\"comments/editor-rtl.min.css\";i:106;s:19:\"comments/editor.css\";i:107;s:23:\"comments/editor.min.css\";i:108;s:22:\"comments/style-rtl.css\";i:109;s:26:\"comments/style-rtl.min.css\";i:110;s:18:\"comments/style.css\";i:111;s:22:\"comments/style.min.css\";i:112;s:20:\"cover/editor-rtl.css\";i:113;s:24:\"cover/editor-rtl.min.css\";i:114;s:16:\"cover/editor.css\";i:115;s:20:\"cover/editor.min.css\";i:116;s:19:\"cover/style-rtl.css\";i:117;s:23:\"cover/style-rtl.min.css\";i:118;s:15:\"cover/style.css\";i:119;s:19:\"cover/style.min.css\";i:120;s:22:\"details/editor-rtl.css\";i:121;s:26:\"details/editor-rtl.min.css\";i:122;s:18:\"details/editor.css\";i:123;s:22:\"details/editor.min.css\";i:124;s:21:\"details/style-rtl.css\";i:125;s:25:\"details/style-rtl.min.css\";i:126;s:17:\"details/style.css\";i:127;s:21:\"details/style.min.css\";i:128;s:20:\"embed/editor-rtl.css\";i:129;s:24:\"embed/editor-rtl.min.css\";i:130;s:16:\"embed/editor.css\";i:131;s:20:\"embed/editor.min.css\";i:132;s:19:\"embed/style-rtl.css\";i:133;s:23:\"embed/style-rtl.min.css\";i:134;s:15:\"embed/style.css\";i:135;s:19:\"embed/style.min.css\";i:136;s:19:\"embed/theme-rtl.css\";i:137;s:23:\"embed/theme-rtl.min.css\";i:138;s:15:\"embed/theme.css\";i:139;s:19:\"embed/theme.min.css\";i:140;s:19:\"file/editor-rtl.css\";i:141;s:23:\"file/editor-rtl.min.css\";i:142;s:15:\"file/editor.css\";i:143;s:19:\"file/editor.min.css\";i:144;s:18:\"file/style-rtl.css\";i:145;s:22:\"file/style-rtl.min.css\";i:146;s:14:\"file/style.css\";i:147;s:18:\"file/style.min.css\";i:148;s:23:\"footnotes/style-rtl.css\";i:149;s:27:\"footnotes/style-rtl.min.css\";i:150;s:19:\"footnotes/style.css\";i:151;s:23:\"footnotes/style.min.css\";i:152;s:23:\"freeform/editor-rtl.css\";i:153;s:27:\"freeform/editor-rtl.min.css\";i:154;s:19:\"freeform/editor.css\";i:155;s:23:\"freeform/editor.min.css\";i:156;s:22:\"gallery/editor-rtl.css\";i:157;s:26:\"gallery/editor-rtl.min.css\";i:158;s:18:\"gallery/editor.css\";i:159;s:22:\"gallery/editor.min.css\";i:160;s:21:\"gallery/style-rtl.css\";i:161;s:25:\"gallery/style-rtl.min.css\";i:162;s:17:\"gallery/style.css\";i:163;s:21:\"gallery/style.min.css\";i:164;s:21:\"gallery/theme-rtl.css\";i:165;s:25:\"gallery/theme-rtl.min.css\";i:166;s:17:\"gallery/theme.css\";i:167;s:21:\"gallery/theme.min.css\";i:168;s:20:\"group/editor-rtl.css\";i:169;s:24:\"group/editor-rtl.min.css\";i:170;s:16:\"group/editor.css\";i:171;s:20:\"group/editor.min.css\";i:172;s:19:\"group/style-rtl.css\";i:173;s:23:\"group/style-rtl.min.css\";i:174;s:15:\"group/style.css\";i:175;s:19:\"group/style.min.css\";i:176;s:19:\"group/theme-rtl.css\";i:177;s:23:\"group/theme-rtl.min.css\";i:178;s:15:\"group/theme.css\";i:179;s:19:\"group/theme.min.css\";i:180;s:21:\"heading/style-rtl.css\";i:181;s:25:\"heading/style-rtl.min.css\";i:182;s:17:\"heading/style.css\";i:183;s:21:\"heading/style.min.css\";i:184;s:19:\"html/editor-rtl.css\";i:185;s:23:\"html/editor-rtl.min.css\";i:186;s:15:\"html/editor.css\";i:187;s:19:\"html/editor.min.css\";i:188;s:20:\"image/editor-rtl.css\";i:189;s:24:\"image/editor-rtl.min.css\";i:190;s:16:\"image/editor.css\";i:191;s:20:\"image/editor.min.css\";i:192;s:19:\"image/style-rtl.css\";i:193;s:23:\"image/style-rtl.min.css\";i:194;s:15:\"image/style.css\";i:195;s:19:\"image/style.min.css\";i:196;s:19:\"image/theme-rtl.css\";i:197;s:23:\"image/theme-rtl.min.css\";i:198;s:15:\"image/theme.css\";i:199;s:19:\"image/theme.min.css\";i:200;s:29:\"latest-comments/style-rtl.css\";i:201;s:33:\"latest-comments/style-rtl.min.css\";i:202;s:25:\"latest-comments/style.css\";i:203;s:29:\"latest-comments/style.min.css\";i:204;s:27:\"latest-posts/editor-rtl.css\";i:205;s:31:\"latest-posts/editor-rtl.min.css\";i:206;s:23:\"latest-posts/editor.css\";i:207;s:27:\"latest-posts/editor.min.css\";i:208;s:26:\"latest-posts/style-rtl.css\";i:209;s:30:\"latest-posts/style-rtl.min.css\";i:210;s:22:\"latest-posts/style.css\";i:211;s:26:\"latest-posts/style.min.css\";i:212;s:18:\"list/style-rtl.css\";i:213;s:22:\"list/style-rtl.min.css\";i:214;s:14:\"list/style.css\";i:215;s:18:\"list/style.min.css\";i:216;s:25:\"media-text/editor-rtl.css\";i:217;s:29:\"media-text/editor-rtl.min.css\";i:218;s:21:\"media-text/editor.css\";i:219;s:25:\"media-text/editor.min.css\";i:220;s:24:\"media-text/style-rtl.css\";i:221;s:28:\"media-text/style-rtl.min.css\";i:222;s:20:\"media-text/style.css\";i:223;s:24:\"media-text/style.min.css\";i:224;s:19:\"more/editor-rtl.css\";i:225;s:23:\"more/editor-rtl.min.css\";i:226;s:15:\"more/editor.css\";i:227;s:19:\"more/editor.min.css\";i:228;s:30:\"navigation-link/editor-rtl.css\";i:229;s:34:\"navigation-link/editor-rtl.min.css\";i:230;s:26:\"navigation-link/editor.css\";i:231;s:30:\"navigation-link/editor.min.css\";i:232;s:29:\"navigation-link/style-rtl.css\";i:233;s:33:\"navigation-link/style-rtl.min.css\";i:234;s:25:\"navigation-link/style.css\";i:235;s:29:\"navigation-link/style.min.css\";i:236;s:33:\"navigation-submenu/editor-rtl.css\";i:237;s:37:\"navigation-submenu/editor-rtl.min.css\";i:238;s:29:\"navigation-submenu/editor.css\";i:239;s:33:\"navigation-submenu/editor.min.css\";i:240;s:25:\"navigation/editor-rtl.css\";i:241;s:29:\"navigation/editor-rtl.min.css\";i:242;s:21:\"navigation/editor.css\";i:243;s:25:\"navigation/editor.min.css\";i:244;s:24:\"navigation/style-rtl.css\";i:245;s:28:\"navigation/style-rtl.min.css\";i:246;s:20:\"navigation/style.css\";i:247;s:24:\"navigation/style.min.css\";i:248;s:23:\"nextpage/editor-rtl.css\";i:249;s:27:\"nextpage/editor-rtl.min.css\";i:250;s:19:\"nextpage/editor.css\";i:251;s:23:\"nextpage/editor.min.css\";i:252;s:24:\"page-list/editor-rtl.css\";i:253;s:28:\"page-list/editor-rtl.min.css\";i:254;s:20:\"page-list/editor.css\";i:255;s:24:\"page-list/editor.min.css\";i:256;s:23:\"page-list/style-rtl.css\";i:257;s:27:\"page-list/style-rtl.min.css\";i:258;s:19:\"page-list/style.css\";i:259;s:23:\"page-list/style.min.css\";i:260;s:24:\"paragraph/editor-rtl.css\";i:261;s:28:\"paragraph/editor-rtl.min.css\";i:262;s:20:\"paragraph/editor.css\";i:263;s:24:\"paragraph/editor.min.css\";i:264;s:23:\"paragraph/style-rtl.css\";i:265;s:27:\"paragraph/style-rtl.min.css\";i:266;s:19:\"paragraph/style.css\";i:267;s:23:\"paragraph/style.min.css\";i:268;s:25:\"post-author/style-rtl.css\";i:269;s:29:\"post-author/style-rtl.min.css\";i:270;s:21:\"post-author/style.css\";i:271;s:25:\"post-author/style.min.css\";i:272;s:33:\"post-comments-form/editor-rtl.css\";i:273;s:37:\"post-comments-form/editor-rtl.min.css\";i:274;s:29:\"post-comments-form/editor.css\";i:275;s:33:\"post-comments-form/editor.min.css\";i:276;s:32:\"post-comments-form/style-rtl.css\";i:277;s:36:\"post-comments-form/style-rtl.min.css\";i:278;s:28:\"post-comments-form/style.css\";i:279;s:32:\"post-comments-form/style.min.css\";i:280;s:27:\"post-content/editor-rtl.css\";i:281;s:31:\"post-content/editor-rtl.min.css\";i:282;s:23:\"post-content/editor.css\";i:283;s:27:\"post-content/editor.min.css\";i:284;s:23:\"post-date/style-rtl.css\";i:285;s:27:\"post-date/style-rtl.min.css\";i:286;s:19:\"post-date/style.css\";i:287;s:23:\"post-date/style.min.css\";i:288;s:27:\"post-excerpt/editor-rtl.css\";i:289;s:31:\"post-excerpt/editor-rtl.min.css\";i:290;s:23:\"post-excerpt/editor.css\";i:291;s:27:\"post-excerpt/editor.min.css\";i:292;s:26:\"post-excerpt/style-rtl.css\";i:293;s:30:\"post-excerpt/style-rtl.min.css\";i:294;s:22:\"post-excerpt/style.css\";i:295;s:26:\"post-excerpt/style.min.css\";i:296;s:34:\"post-featured-image/editor-rtl.css\";i:297;s:38:\"post-featured-image/editor-rtl.min.css\";i:298;s:30:\"post-featured-image/editor.css\";i:299;s:34:\"post-featured-image/editor.min.css\";i:300;s:33:\"post-featured-image/style-rtl.css\";i:301;s:37:\"post-featured-image/style-rtl.min.css\";i:302;s:29:\"post-featured-image/style.css\";i:303;s:33:\"post-featured-image/style.min.css\";i:304;s:34:\"post-navigation-link/style-rtl.css\";i:305;s:38:\"post-navigation-link/style-rtl.min.css\";i:306;s:30:\"post-navigation-link/style.css\";i:307;s:34:\"post-navigation-link/style.min.css\";i:308;s:28:\"post-template/editor-rtl.css\";i:309;s:32:\"post-template/editor-rtl.min.css\";i:310;s:24:\"post-template/editor.css\";i:311;s:28:\"post-template/editor.min.css\";i:312;s:27:\"post-template/style-rtl.css\";i:313;s:31:\"post-template/style-rtl.min.css\";i:314;s:23:\"post-template/style.css\";i:315;s:27:\"post-template/style.min.css\";i:316;s:24:\"post-terms/style-rtl.css\";i:317;s:28:\"post-terms/style-rtl.min.css\";i:318;s:20:\"post-terms/style.css\";i:319;s:24:\"post-terms/style.min.css\";i:320;s:24:\"post-title/style-rtl.css\";i:321;s:28:\"post-title/style-rtl.min.css\";i:322;s:20:\"post-title/style.css\";i:323;s:24:\"post-title/style.min.css\";i:324;s:26:\"preformatted/style-rtl.css\";i:325;s:30:\"preformatted/style-rtl.min.css\";i:326;s:22:\"preformatted/style.css\";i:327;s:26:\"preformatted/style.min.css\";i:328;s:24:\"pullquote/editor-rtl.css\";i:329;s:28:\"pullquote/editor-rtl.min.css\";i:330;s:20:\"pullquote/editor.css\";i:331;s:24:\"pullquote/editor.min.css\";i:332;s:23:\"pullquote/style-rtl.css\";i:333;s:27:\"pullquote/style-rtl.min.css\";i:334;s:19:\"pullquote/style.css\";i:335;s:23:\"pullquote/style.min.css\";i:336;s:23:\"pullquote/theme-rtl.css\";i:337;s:27:\"pullquote/theme-rtl.min.css\";i:338;s:19:\"pullquote/theme.css\";i:339;s:23:\"pullquote/theme.min.css\";i:340;s:39:\"query-pagination-numbers/editor-rtl.css\";i:341;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:342;s:35:\"query-pagination-numbers/editor.css\";i:343;s:39:\"query-pagination-numbers/editor.min.css\";i:344;s:31:\"query-pagination/editor-rtl.css\";i:345;s:35:\"query-pagination/editor-rtl.min.css\";i:346;s:27:\"query-pagination/editor.css\";i:347;s:31:\"query-pagination/editor.min.css\";i:348;s:30:\"query-pagination/style-rtl.css\";i:349;s:34:\"query-pagination/style-rtl.min.css\";i:350;s:26:\"query-pagination/style.css\";i:351;s:30:\"query-pagination/style.min.css\";i:352;s:25:\"query-title/style-rtl.css\";i:353;s:29:\"query-title/style-rtl.min.css\";i:354;s:21:\"query-title/style.css\";i:355;s:25:\"query-title/style.min.css\";i:356;s:20:\"query/editor-rtl.css\";i:357;s:24:\"query/editor-rtl.min.css\";i:358;s:16:\"query/editor.css\";i:359;s:20:\"query/editor.min.css\";i:360;s:19:\"quote/style-rtl.css\";i:361;s:23:\"quote/style-rtl.min.css\";i:362;s:15:\"quote/style.css\";i:363;s:19:\"quote/style.min.css\";i:364;s:19:\"quote/theme-rtl.css\";i:365;s:23:\"quote/theme-rtl.min.css\";i:366;s:15:\"quote/theme.css\";i:367;s:19:\"quote/theme.min.css\";i:368;s:23:\"read-more/style-rtl.css\";i:369;s:27:\"read-more/style-rtl.min.css\";i:370;s:19:\"read-more/style.css\";i:371;s:23:\"read-more/style.min.css\";i:372;s:18:\"rss/editor-rtl.css\";i:373;s:22:\"rss/editor-rtl.min.css\";i:374;s:14:\"rss/editor.css\";i:375;s:18:\"rss/editor.min.css\";i:376;s:17:\"rss/style-rtl.css\";i:377;s:21:\"rss/style-rtl.min.css\";i:378;s:13:\"rss/style.css\";i:379;s:17:\"rss/style.min.css\";i:380;s:21:\"search/editor-rtl.css\";i:381;s:25:\"search/editor-rtl.min.css\";i:382;s:17:\"search/editor.css\";i:383;s:21:\"search/editor.min.css\";i:384;s:20:\"search/style-rtl.css\";i:385;s:24:\"search/style-rtl.min.css\";i:386;s:16:\"search/style.css\";i:387;s:20:\"search/style.min.css\";i:388;s:20:\"search/theme-rtl.css\";i:389;s:24:\"search/theme-rtl.min.css\";i:390;s:16:\"search/theme.css\";i:391;s:20:\"search/theme.min.css\";i:392;s:24:\"separator/editor-rtl.css\";i:393;s:28:\"separator/editor-rtl.min.css\";i:394;s:20:\"separator/editor.css\";i:395;s:24:\"separator/editor.min.css\";i:396;s:23:\"separator/style-rtl.css\";i:397;s:27:\"separator/style-rtl.min.css\";i:398;s:19:\"separator/style.css\";i:399;s:23:\"separator/style.min.css\";i:400;s:23:\"separator/theme-rtl.css\";i:401;s:27:\"separator/theme-rtl.min.css\";i:402;s:19:\"separator/theme.css\";i:403;s:23:\"separator/theme.min.css\";i:404;s:24:\"shortcode/editor-rtl.css\";i:405;s:28:\"shortcode/editor-rtl.min.css\";i:406;s:20:\"shortcode/editor.css\";i:407;s:24:\"shortcode/editor.min.css\";i:408;s:24:\"site-logo/editor-rtl.css\";i:409;s:28:\"site-logo/editor-rtl.min.css\";i:410;s:20:\"site-logo/editor.css\";i:411;s:24:\"site-logo/editor.min.css\";i:412;s:23:\"site-logo/style-rtl.css\";i:413;s:27:\"site-logo/style-rtl.min.css\";i:414;s:19:\"site-logo/style.css\";i:415;s:23:\"site-logo/style.min.css\";i:416;s:27:\"site-tagline/editor-rtl.css\";i:417;s:31:\"site-tagline/editor-rtl.min.css\";i:418;s:23:\"site-tagline/editor.css\";i:419;s:27:\"site-tagline/editor.min.css\";i:420;s:25:\"site-title/editor-rtl.css\";i:421;s:29:\"site-title/editor-rtl.min.css\";i:422;s:21:\"site-title/editor.css\";i:423;s:25:\"site-title/editor.min.css\";i:424;s:24:\"site-title/style-rtl.css\";i:425;s:28:\"site-title/style-rtl.min.css\";i:426;s:20:\"site-title/style.css\";i:427;s:24:\"site-title/style.min.css\";i:428;s:26:\"social-link/editor-rtl.css\";i:429;s:30:\"social-link/editor-rtl.min.css\";i:430;s:22:\"social-link/editor.css\";i:431;s:26:\"social-link/editor.min.css\";i:432;s:27:\"social-links/editor-rtl.css\";i:433;s:31:\"social-links/editor-rtl.min.css\";i:434;s:23:\"social-links/editor.css\";i:435;s:27:\"social-links/editor.min.css\";i:436;s:26:\"social-links/style-rtl.css\";i:437;s:30:\"social-links/style-rtl.min.css\";i:438;s:22:\"social-links/style.css\";i:439;s:26:\"social-links/style.min.css\";i:440;s:21:\"spacer/editor-rtl.css\";i:441;s:25:\"spacer/editor-rtl.min.css\";i:442;s:17:\"spacer/editor.css\";i:443;s:21:\"spacer/editor.min.css\";i:444;s:20:\"spacer/style-rtl.css\";i:445;s:24:\"spacer/style-rtl.min.css\";i:446;s:16:\"spacer/style.css\";i:447;s:20:\"spacer/style.min.css\";i:448;s:20:\"table/editor-rtl.css\";i:449;s:24:\"table/editor-rtl.min.css\";i:450;s:16:\"table/editor.css\";i:451;s:20:\"table/editor.min.css\";i:452;s:19:\"table/style-rtl.css\";i:453;s:23:\"table/style-rtl.min.css\";i:454;s:15:\"table/style.css\";i:455;s:19:\"table/style.min.css\";i:456;s:19:\"table/theme-rtl.css\";i:457;s:23:\"table/theme-rtl.min.css\";i:458;s:15:\"table/theme.css\";i:459;s:19:\"table/theme.min.css\";i:460;s:23:\"tag-cloud/style-rtl.css\";i:461;s:27:\"tag-cloud/style-rtl.min.css\";i:462;s:19:\"tag-cloud/style.css\";i:463;s:23:\"tag-cloud/style.min.css\";i:464;s:28:\"template-part/editor-rtl.css\";i:465;s:32:\"template-part/editor-rtl.min.css\";i:466;s:24:\"template-part/editor.css\";i:467;s:28:\"template-part/editor.min.css\";i:468;s:27:\"template-part/theme-rtl.css\";i:469;s:31:\"template-part/theme-rtl.min.css\";i:470;s:23:\"template-part/theme.css\";i:471;s:27:\"template-part/theme.min.css\";i:472;s:30:\"term-description/style-rtl.css\";i:473;s:34:\"term-description/style-rtl.min.css\";i:474;s:26:\"term-description/style.css\";i:475;s:30:\"term-description/style.min.css\";i:476;s:27:\"text-columns/editor-rtl.css\";i:477;s:31:\"text-columns/editor-rtl.min.css\";i:478;s:23:\"text-columns/editor.css\";i:479;s:27:\"text-columns/editor.min.css\";i:480;s:26:\"text-columns/style-rtl.css\";i:481;s:30:\"text-columns/style-rtl.min.css\";i:482;s:22:\"text-columns/style.css\";i:483;s:26:\"text-columns/style.min.css\";i:484;s:19:\"verse/style-rtl.css\";i:485;s:23:\"verse/style-rtl.min.css\";i:486;s:15:\"verse/style.css\";i:487;s:19:\"verse/style.min.css\";i:488;s:20:\"video/editor-rtl.css\";i:489;s:24:\"video/editor-rtl.min.css\";i:490;s:16:\"video/editor.css\";i:491;s:20:\"video/editor.min.css\";i:492;s:19:\"video/style-rtl.css\";i:493;s:23:\"video/style-rtl.min.css\";i:494;s:15:\"video/style.css\";i:495;s:19:\"video/style.min.css\";i:496;s:19:\"video/theme-rtl.css\";i:497;s:23:\"video/theme-rtl.min.css\";i:498;s:15:\"video/theme.css\";i:499;s:19:\"video/theme.min.css\";}}', 'yes'),
(155, '_transient_health-check-site-status-result', '{\"good\":19,\"recommended\":4,\"critical\":0}', 'yes'),
(156, 'speedycache_html', '1', 'yes'),
(157, 'speedycache_html.gz', '3', 'yes'),
(159, 'speedycache_html_size', '81017', 'yes'),
(160, 'speedycache_html.gz_size', '41065', 'yes'),
(195, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:19:\"admin@siketbank.com\";s:7:\"version\";s:5:\"6.5.3\";s:9:\"timestamp\";i:1715558337;}', 'no'),
(358, 'db_upgraded', '1', 'yes'),
(432, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.5.3\";s:7:\"version\";s:5:\"6.5.3\";s:11:\"php_version\";s:5:\"7.0.0\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1716848614;s:15:\"version_checked\";s:5:\"6.5.3\";s:12:\"translations\";a:0:{}}', 'no'),
(447, '_site_transient_timeout_php_check_990bfacb848fa087bcfc06850f5e4447', '1716559532', 'no'),
(448, '_site_transient_php_check_990bfacb848fa087bcfc06850f5e4447', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:3:\"7.0\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(484, '_site_transient_timeout_theme_roots', '1716850416', 'no'),
(485, '_site_transient_theme_roots', 'a:3:{s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(486, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1716848616;s:7:\"checked\";a:3:{s:16:\"twentytwentyfour\";s:3:\"1.0\";s:17:\"twentytwentythree\";s:3:\"1.3\";s:15:\"twentytwentytwo\";s:3:\"1.6\";}s:8:\"response\";a:3:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.1.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.4.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.7.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no');
INSERT INTO `wp9d_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(487, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1716848616;s:8:\"response\";a:6:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"5.3.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.5.3.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/akismet/assets/banner-1544x500.png?rev=2900731\";s:2:\"1x\";s:62:\"https://ps.w.org/akismet/assets/banner-772x250.png?rev=2900731\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.8\";s:6:\"tested\";s:5:\"6.4.4\";s:12:\"requires_php\";s:6:\"5.6.20\";s:16:\"requires_plugins\";a:0:{}}s:21:\"backuply/backuply.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:22:\"w.org/plugins/backuply\";s:4:\"slug\";s:8:\"backuply\";s:6:\"plugin\";s:21:\"backuply/backuply.php\";s:11:\"new_version\";s:5:\"1.3.1\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/backuply/\";s:7:\"package\";s:51:\"https://downloads.wordpress.org/plugin/backuply.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/backuply/assets/icon-128x128.png?rev=2760139\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/backuply/assets/banner-1544x500.png?rev=2760332\";s:2:\"1x\";s:63:\"https://ps.w.org/backuply/assets/banner-772x250.png?rev=2760332\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:5:\"6.5.3\";s:12:\"requires_php\";s:3:\"5.5\";s:16:\"requires_plugins\";a:0:{}}s:31:\"fileorganizer/fileorganizer.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:27:\"w.org/plugins/fileorganizer\";s:4:\"slug\";s:13:\"fileorganizer\";s:6:\"plugin\";s:31:\"fileorganizer/fileorganizer.php\";s:11:\"new_version\";s:5:\"1.0.7\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/fileorganizer/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/fileorganizer.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/fileorganizer/assets/icon-256x256.png?rev=2881868\";s:2:\"1x\";s:66:\"https://ps.w.org/fileorganizer/assets/icon-128x128.png?rev=2881868\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/fileorganizer/assets/banner-1544x500.png?rev=2879801\";s:2:\"1x\";s:68:\"https://ps.w.org/fileorganizer/assets/banner-772x250.png?rev=2879801\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";s:6:\"tested\";s:5:\"6.4.4\";s:12:\"requires_php\";s:3:\"5.5\";s:16:\"requires_plugins\";a:0:{}}s:17:\"gosmtp/gosmtp.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:20:\"w.org/plugins/gosmtp\";s:4:\"slug\";s:6:\"gosmtp\";s:6:\"plugin\";s:17:\"gosmtp/gosmtp.php\";s:11:\"new_version\";s:5:\"1.0.6\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/gosmtp/\";s:7:\"package\";s:49:\"https://downloads.wordpress.org/plugin/gosmtp.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/gosmtp/assets/icon-256x256.png?rev=2869163\";s:2:\"1x\";s:59:\"https://ps.w.org/gosmtp/assets/icon-128x128.png?rev=2869163\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/gosmtp/assets/banner-1544x500.png?rev=2868206\";s:2:\"1x\";s:61:\"https://ps.w.org/gosmtp/assets/banner-772x250.png?rev=2868206\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.5\";s:6:\"tested\";s:5:\"6.5.3\";s:12:\"requires_php\";s:3:\"5.5\";s:16:\"requires_plugins\";a:0:{}}s:23:\"loginizer/loginizer.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:23:\"w.org/plugins/loginizer\";s:4:\"slug\";s:9:\"loginizer\";s:6:\"plugin\";s:23:\"loginizer/loginizer.php\";s:11:\"new_version\";s:5:\"1.8.4\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/loginizer/\";s:7:\"package\";s:52:\"https://downloads.wordpress.org/plugin/loginizer.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/loginizer/assets/icon-256x256.png?rev=1381093\";s:2:\"1x\";s:62:\"https://ps.w.org/loginizer/assets/icon-128x128.png?rev=1381093\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/loginizer/assets/banner-1544x500.jpg?rev=2668035\";s:2:\"1x\";s:64:\"https://ps.w.org/loginizer/assets/banner-772x250.jpg?rev=2668037\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.0\";s:6:\"tested\";s:5:\"6.5.3\";s:12:\"requires_php\";s:3:\"5.5\";s:16:\"requires_plugins\";a:0:{}}s:27:\"speedycache/speedycache.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:25:\"w.org/plugins/speedycache\";s:4:\"slug\";s:11:\"speedycache\";s:6:\"plugin\";s:27:\"speedycache/speedycache.php\";s:11:\"new_version\";s:5:\"1.1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/speedycache/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/speedycache.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/speedycache/assets/icon-256x256.png?rev=2858418\";s:2:\"1x\";s:64:\"https://ps.w.org/speedycache/assets/icon-128x128.png?rev=2858418\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/speedycache/assets/banner-772x250.png?rev=2858418\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:5:\"6.5.3\";s:12:\"requires_php\";s:3:\"7.3\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:8:{s:19:\"akismet/akismet.php\";s:3:\"5.3\";s:21:\"backuply/backuply.php\";s:5:\"1.2.2\";s:31:\"fileorganizer/fileorganizer.php\";s:5:\"1.0.4\";s:17:\"gosmtp/gosmtp.php\";s:5:\"1.0.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:23:\"loginizer/loginizer.php\";s:5:\"1.8.2\";s:27:\"speedycache/speedycache.php\";s:5:\"1.1.2\";s:35:\"speedycache-pro/speedycache-pro.php\";s:5:\"1.1.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp9d_postmeta`
--

CREATE TABLE `wp9d_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp9d_postmeta`
--

INSERT INTO `wp9d_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `wp9d_posts`
--

CREATE TABLE `wp9d_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp9d_posts`
--

INSERT INTO `wp9d_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-11-22 13:55:07', '2023-11-22 13:55:07', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2023-11-22 13:55:07', '2023-11-22 13:55:07', '', 0, 'https://siketbank.com/wp/?p=1', 0, 'post', '', 1),
(2, 1, '2023-11-22 13:55:07', '2023-11-22 13:55:07', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://siketbank.com/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2023-11-22 13:55:07', '2023-11-22 13:55:07', '', 0, 'https://siketbank.com/wp/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-11-22 13:55:07', '2023-11-22 13:55:07', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://siketbank.com/wp.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2023-11-22 13:55:07', '2023-11-22 13:55:07', '', 0, 'https://siketbank.com/wp/?page_id=3', 0, 'page', '', 0),
(4, 0, '2023-11-22 13:55:13', '2023-11-22 13:55:13', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2023-11-22 13:55:13', '2023-11-22 13:55:13', '', 0, 'https://siketbank.com/wp/2023/11/22/navigation/', 0, 'wp_navigation', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp9d_termmeta`
--

CREATE TABLE `wp9d_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp9d_terms`
--

CREATE TABLE `wp9d_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp9d_terms`
--

INSERT INTO `wp9d_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp9d_term_relationships`
--

CREATE TABLE `wp9d_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp9d_term_relationships`
--

INSERT INTO `wp9d_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp9d_term_taxonomy`
--

CREATE TABLE `wp9d_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp9d_term_taxonomy`
--

INSERT INTO `wp9d_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp9d_usermeta`
--

CREATE TABLE `wp9d_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp9d_usermeta`
--

INSERT INTO `wp9d_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp9d_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp9d_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 2, 'nickname', 'Tolesa'),
(17, 2, 'first_name', 'Tolesa'),
(18, 2, 'last_name', 'Tafesse'),
(19, 2, 'description', ''),
(20, 2, 'rich_editing', 'true'),
(21, 2, 'syntax_highlighting', 'true'),
(22, 2, 'comment_shortcuts', 'false'),
(23, 2, 'admin_color', 'fresh'),
(24, 2, 'use_ssl', '0'),
(25, 2, 'show_admin_bar_front', 'true'),
(26, 2, 'locale', ''),
(27, 2, 'wp9d_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(28, 2, 'wp9d_user_level', '10');

-- --------------------------------------------------------

--
-- Table structure for table `wp9d_users`
--

CREATE TABLE `wp9d_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp9d_users`
--

INSERT INTO `wp9d_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '977387e26fefbfcc49144b0a2637fab8', 'admin', 'admin@siketbank.com', 'https://siketbank.com/wp', '2023-11-22 13:55:07', '', 0, 'admin'),
(2, 'Tolesa', '$P$BbN9QYNPVxZPmnStxQA84lbOFZI1ay1', 'tolesa', 'tolesa.tafesse@siketbank.com', '', '2024-02-01 11:46:28', '', 0, 'Tolesa Tafesse');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp9d_commentmeta`
--
ALTER TABLE `wp9d_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp9d_comments`
--
ALTER TABLE `wp9d_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp9d_links`
--
ALTER TABLE `wp9d_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp9d_loginizer_logs`
--
ALTER TABLE `wp9d_loginizer_logs`
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `wp9d_options`
--
ALTER TABLE `wp9d_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp9d_postmeta`
--
ALTER TABLE `wp9d_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp9d_posts`
--
ALTER TABLE `wp9d_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp9d_termmeta`
--
ALTER TABLE `wp9d_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp9d_terms`
--
ALTER TABLE `wp9d_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp9d_term_relationships`
--
ALTER TABLE `wp9d_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp9d_term_taxonomy`
--
ALTER TABLE `wp9d_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp9d_usermeta`
--
ALTER TABLE `wp9d_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp9d_users`
--
ALTER TABLE `wp9d_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp9d_commentmeta`
--
ALTER TABLE `wp9d_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp9d_comments`
--
ALTER TABLE `wp9d_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp9d_links`
--
ALTER TABLE `wp9d_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp9d_options`
--
ALTER TABLE `wp9d_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=488;

--
-- AUTO_INCREMENT for table `wp9d_postmeta`
--
ALTER TABLE `wp9d_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp9d_posts`
--
ALTER TABLE `wp9d_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp9d_termmeta`
--
ALTER TABLE `wp9d_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp9d_terms`
--
ALTER TABLE `wp9d_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp9d_term_taxonomy`
--
ALTER TABLE `wp9d_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp9d_usermeta`
--
ALTER TABLE `wp9d_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `wp9d_users`
--
ALTER TABLE `wp9d_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
