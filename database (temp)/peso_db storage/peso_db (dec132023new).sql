-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2023 at 03:50 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peso_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `access_account`
--

CREATE TABLE `access_account` (
  `access_id` int(11) NOT NULL,
  `peso_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `date_added_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `access_account`
--

INSERT INTO `access_account` (`access_id`, `peso_id`, `name`, `email`, `type`, `password`, `date_added_at`, `status`) VALUES
(6, 11, 'sample', 'sample@gmail.com', 'Applicant', 'sample', '2023-12-13 12:23:30', 'Approved'),
(8, 11, 'sample', 'sample@gmail.com', 'Company', 'sample', '2023-12-13 13:42:46', 'Rejected'),
(10, 11, 'sample', 'sample@gmail.com', 'Applicant', 'sample', '2023-12-13 12:22:29', 'Approved'),
(12, 11, 'sample', 'sample123@yahoo.com', '', 'Just_password123', '2023-12-13 12:22:29', 'Pending'),
(13, 11, 'juan', 'juan@yahoo.com', 'Training', 'Just_password123', '2023-12-13 12:22:29', 'Pending'),
(14, 11, 'Rebo Manguerra', 'rebomanguerra@gmail.com', 'Training', 'Just_password123', '2023-12-13 12:22:31', 'Pending'),
(15, 11, 'Juan Dela Cruz', 'Juan@gmail.com', 'Training', 'Just_password123', '2023-12-13 12:22:29', 'Pending'),
(16, 11, 'paaccess sa company', 'company@gmail.com', 'Company', 'sample', '2023-12-13 12:22:29', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `middlename` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `lastname`, `firstname`, `middlename`, `email`, `password`) VALUES
(1, 'Manguerra', 'Rebo', 'Barrameda', 'pesoadmin@gmail.com', 'peso_Admin2023');

-- --------------------------------------------------------

--
-- Table structure for table `applicant_notif`
--

CREATE TABLE `applicant_notif` (
  `notifications_id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `date_added_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applicant_profile`
--

CREATE TABLE `applicant_profile` (
  `applicant_profile_id` int(11) NOT NULL,
  `applicant_id` int(11) DEFAULT NULL,
  `peso_id` int(11) DEFAULT NULL,
  `ap_info_id` int(11) NOT NULL,
  `ap_educ_id` int(11) NOT NULL,
  `ap_prefer_id` int(11) NOT NULL,
  `ap_tvo_id` int(11) NOT NULL,
  `ap_elig_id` int(11) NOT NULL,
  `ap_exp_id` int(11) NOT NULL,
  `ap_skills_id` int(11) NOT NULL,
  `ap_auth_id` int(11) NOT NULL,
  `date_created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applicant_roles`
--

CREATE TABLE `applicant_roles` (
  `applicant_roles_id` int(11) NOT NULL,
  `role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applicant_roles`
--

INSERT INTO `applicant_roles` (`applicant_roles_id`, `role`) VALUES
(1, 'First Time Jobseeker'),
(2, 'Jobseeker'),
(3, 'OFW');

-- --------------------------------------------------------

--
-- Table structure for table `application_log`
--

CREATE TABLE `application_log` (
  `application_log_id` int(11) NOT NULL,
  `c_jobpost_id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `date_requested` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(50) NOT NULL,
  `answerNo1` varchar(20) NOT NULL,
  `answerNo2` varchar(20) NOT NULL,
  `answerNo3` varchar(20) NOT NULL,
  `answerNo4` varchar(20) NOT NULL,
  `answerNo5` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `application_log`
--

INSERT INTO `application_log` (`application_log_id`, `c_jobpost_id`, `applicant_id`, `date_requested`, `status`, `answerNo1`, `answerNo2`, `answerNo3`, `answerNo4`, `answerNo5`) VALUES
(1, 19, 2, '2023-09-20 15:47:25', 'Pending', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes'),
(2, 20, 2, '2023-09-22 08:52:28', 'Pending', 'Yes', 'Yes', 'No', 'Yes', 'Yes'),
(3, 20, 2, '2023-09-22 10:39:32', 'Pending', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes'),
(4, 20, 2, '2023-09-22 10:58:15', 'Pending', 'No', 'Yes', 'Yes', 'Yes', 'Yes'),
(5, 20, 2, '2023-09-22 10:59:20', 'Pending', 'Yes', 'Yes', 'No', 'Yes', 'Yes'),
(6, 20, 2, '2023-09-22 11:01:23', 'Pending', 'Yes', 'No', 'No', 'No', 'No'),
(7, 20, 2, '2023-09-22 11:02:47', 'Pending', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes'),
(8, 20, 2, '2023-09-22 11:04:04', 'Pending', 'Yes', 'Yes', 'Yes', 'Yes', 'No'),
(9, 20, 2, '2023-09-22 11:04:26', 'Pending', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes'),
(10, 20, 2, '2023-09-22 11:14:52', 'Pending', 'Yes', 'Yes', 'Yes', 'Yes', 'No'),
(11, 21, 2, '2023-11-07 02:54:13', 'Pending', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes'),
(12, 20, 2, '2023-11-07 02:55:43', 'Pending', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes'),
(13, 21, 2, '2023-11-07 02:56:08', 'Pending', 'Yes', 'Yes', 'No', 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `ap_auth`
--

CREATE TABLE `ap_auth` (
  `a_profile8_id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `sign_img` varchar(255) NOT NULL,
  `date_submitted_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ap_auth`
--

INSERT INTO `ap_auth` (`a_profile8_id`, `applicant_id`, `sign_img`, `date_submitted_at`) VALUES
(1, 2, '../assets/img/applicant/signature_img/', '0000-00-00'),
(2, 3, '../assets/img/applicant/signature_img/P18.png', '0000-00-00'),
(3, 3, '../assets/img/applicant/signature_img/P18.png', '0000-00-00'),
(4, 3, '../assets/img/applicant/signature_img/P18.png', '0000-00-00'),
(5, 3, '../assets/img/applicant/signature_img/notifsc.png', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `ap_educ`
--

CREATE TABLE `ap_educ` (
  `a_profile2_id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `schoolStatus` varchar(50) NOT NULL,
  `educLevel` varchar(50) NOT NULL,
  `gradYear` varchar(50) NOT NULL,
  `school` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `award` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ap_educ`
--

INSERT INTO `ap_educ` (`a_profile2_id`, `applicant_id`, `schoolStatus`, `educLevel`, `gradYear`, `school`, `course`, `award`) VALUES
(1, 2, '', '', '', '', '', ''),
(2, 3, 'yes', 'ELEMENTARY LEVEL', '2000-01-01', 'dasd', 'asda', 'sdasd'),
(3, 3, 'yes', 'ELEMENTARY LEVEL', '2000-01-01', 'dasd', 'asda', 'sdasd'),
(4, 3, 'yes', 'ELEMENTARY LEVEL', '2000-01-01', 'dasd', 'asda', 'sdasd'),
(5, 3, 'yes', 'ELEMENTARY LEVEL', '2000-01-01', 'dasd', 'asda', 'sdasd'),
(6, 3, 'yes', 'ELEMENTARY LEVEL', '0001-01-01', 'DASD', 'ASDA', 'SDASD'),
(7, 3, 'yes', 'HIGH SCHOOL GRADUATE', '0001-01-01', 'dasd', 'asda', 'sdasd'),
(8, 3, 'yes', 'ELEMENTARY LEVEL', '2842-01-01', 'asdas', 'dasd', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `ap_elig`
--

CREATE TABLE `ap_elig` (
  `a_profile5_id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `careerServ1` varchar(50) NOT NULL,
  `licenceNum1` varchar(50) NOT NULL,
  `expiryDate1` varchar(50) NOT NULL,
  `careerServ2` varchar(50) NOT NULL,
  `licenceNum2` varchar(50) NOT NULL,
  `expiryDate2` varchar(50) NOT NULL,
  `careerServ3` varchar(50) NOT NULL,
  `licenceNum3` varchar(50) NOT NULL,
  `expiryDate3` varchar(50) NOT NULL,
  `validDate` varchar(50) NOT NULL,
  `languageCertifications` varchar(50) NOT NULL,
  `otherCertification` varchar(50) NOT NULL,
  `dialectsSpoken` varchar(50) NOT NULL,
  `otherDialect` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ap_elig`
--

INSERT INTO `ap_elig` (`a_profile5_id`, `applicant_id`, `careerServ1`, `licenceNum1`, `expiryDate1`, `careerServ2`, `licenceNum2`, `expiryDate2`, `careerServ3`, `licenceNum3`, `expiryDate3`, `validDate`, `languageCertifications`, `otherCertification`, `dialectsSpoken`, `otherDialect`) VALUES
(1, 2, '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 3, 'sample', 'sample', 'sample', '', '', '', '', '', '', 'sample', '', '', 'tagalog', ''),
(3, 3, 'ASDAS', 'DASD', 'DSADA', '', '', '', '', '', '', 'ASDASDASDASD', 'TOEFL', '', 'tagalog', ''),
(4, 3, 'asdas', 'dasdas', 'dasdasdasd', '', '', '', '', '', '', 'dasdasd', 'TOCFL', '', 'tagalog', ''),
(5, 3, 'asdasd', 'asd', 'asdasd', '', '', '', '', '', '', 'dasd', 'TOEFL', '', 'ilocano', '');

-- --------------------------------------------------------

--
-- Table structure for table `ap_exp`
--

CREATE TABLE `ap_exp` (
  `a_profile6_id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `company` varchar(255) NOT NULL,
  `cpAddress` varchar(255) NOT NULL,
  `position` varchar(50) NOT NULL,
  `startincluDate` date NOT NULL,
  `endincluDate` date NOT NULL,
  `appointStat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ap_exp`
--

INSERT INTO `ap_exp` (`a_profile6_id`, `applicant_id`, `company`, `cpAddress`, `position`, `startincluDate`, `endincluDate`, `appointStat`) VALUES
(2, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'contractual'),
(3, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'contractual'),
(4, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'contractual'),
(5, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'contractual'),
(6, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'contractual'),
(7, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'contractual'),
(8, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'contractual'),
(9, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'contractual'),
(10, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'contractual'),
(11, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'contractual'),
(12, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'contractual'),
(13, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'contractual'),
(14, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'contractual'),
(15, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(16, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(17, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(18, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(19, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(20, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(21, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(22, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(23, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(24, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(25, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(26, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(27, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(28, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(29, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(30, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(31, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(32, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(33, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(34, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(35, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(36, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(37, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(38, 3, 'sample', 'sample', 'sample', '0001-01-01', '0001-01-01', 'part_time'),
(39, 3, 'ASDAS', 'DASD', 'ASDAS', '0001-01-01', '0001-01-01', 'permanent'),
(40, 3, 'ASDAS', 'DASD', 'ASDAS', '0001-01-01', '0001-01-01', 'permanent'),
(41, 3, 'ASDAS', 'DASD', 'ASDAS', '0001-01-01', '0001-01-01', 'permanent'),
(42, 3, 'dasd', 'asdas', 'asdas', '0001-01-01', '0001-01-01', 'contractual'),
(43, 3, 'dasd', 'asdas', 'asdas', '0001-01-01', '0001-01-01', 'contractual'),
(44, 3, 'dasd', 'asdas', 'asdas', '0001-01-01', '0001-01-01', 'contractual'),
(45, 3, 'asdas', 'das', 'dasdasd', '0001-01-01', '0001-01-01', 'contractual'),
(46, 3, 'asdas', 'das', 'dasdasd', '0001-01-01', '0001-01-01', 'contractual'),
(47, 3, 'asdas', 'das', 'dasdasd', '0001-01-01', '0001-01-01', 'contractual');

-- --------------------------------------------------------

--
-- Table structure for table `ap_info`
--

CREATE TABLE `ap_info` (
  `a_profile1_id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `midName` varchar(50) NOT NULL,
  `suffix` varchar(50) NOT NULL,
  `jobseekerType` varchar(50) NOT NULL,
  `birthplace` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `civilStatus` varchar(50) NOT NULL,
  `citizenship` varchar(50) NOT NULL,
  `housenumPresent` varchar(50) NOT NULL,
  `subdPresent` varchar(50) NOT NULL,
  `brgyPresent` varchar(50) NOT NULL,
  `cityPresent` varchar(50) NOT NULL,
  `provincePresent` varchar(50) NOT NULL,
  `housenumPermanent` varchar(50) DEFAULT NULL,
  `subdPermanent` varchar(50) NOT NULL,
  `brgyPermanent` varchar(50) NOT NULL,
  `cityPermanent` varchar(50) NOT NULL,
  `provincePermanent` varchar(50) NOT NULL,
  `height` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `mobilePnum` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `disability` varchar(50) NOT NULL,
  `employmentStatus` varchar(50) NOT NULL,
  `activelyLooking` varchar(50) NOT NULL,
  `willinglyWork` varchar(50) NOT NULL,
  `fourPsBeneficiary` varchar(50) NOT NULL,
  `ofw` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ap_info`
--

INSERT INTO `ap_info` (`a_profile1_id`, `applicant_id`, `lastName`, `firstName`, `midName`, `suffix`, `jobseekerType`, `birthplace`, `birthday`, `age`, `sex`, `civilStatus`, `citizenship`, `housenumPresent`, `subdPresent`, `brgyPresent`, `cityPresent`, `provincePresent`, `housenumPermanent`, `subdPermanent`, `brgyPermanent`, `cityPermanent`, `provincePermanent`, `height`, `weight`, `mobilePnum`, `email`, `disability`, `employmentStatus`, `activelyLooking`, `willinglyWork`, `fourPsBeneficiary`, `ofw`) VALUES
(1, 2, 'Manguerra', 'Rebo', '', '', '', '', '0000-00-00', 22, '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 2147483647, 'rebrebmanguerra@gmail.com', 'None', '', '', '', '', ''),
(2, 3, 'check', 'sample', 'asdas', 'dasd', 'ofw', 'asdasd', '2000-01-01', 23, 'Male', 'Married', 'dasdas', 'das', 'das', 'dasd', 'das', 'd', 'dasd', 'asd', 'asd', 'asd', 'asdas', 234, 234, 912, 'sample@gmail.com', 'None', 'fresh_grad', 'no', 'no', 'yes', 'yes'),
(8, 3, 'Silvanna', 'sample', 'asdas', 'asdas', 'ofw', 'asdasdas', '2000-01-01', 23, 'Male', 'Married', 'asdas', 'das', 'das', 'das', 'dasd', 'asd', 'dasd', 'asdasd', 'asdas', 'dasd', 'asdas', 234, 234, 912, 'sample@gmail.com', 'None', 'self_employed', 'no', 'yes', 'yes', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `ap_prefer`
--

CREATE TABLE `ap_prefer` (
  `a_profile3_id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `occupation1` varchar(50) NOT NULL,
  `industry1` varchar(50) NOT NULL,
  `occupation2` varchar(50) NOT NULL,
  `industry2` varchar(50) NOT NULL,
  `occupation3` varchar(50) NOT NULL,
  `industry3` varchar(50) NOT NULL,
  `employment_status` varchar(50) NOT NULL,
  `location1` varchar(50) NOT NULL,
  `location2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ap_prefer`
--

INSERT INTO `ap_prefer` (`a_profile3_id`, `applicant_id`, `occupation1`, `industry1`, `occupation2`, `industry2`, `occupation3`, `industry3`, `employment_status`, `location1`, `location2`) VALUES
(1, 2, '', '', '', '', '', '', 'none', '', ''),
(2, 3, 'asd', 'asdas', 'das', 'das', 'dasd', 'asdas', 'none', '', ''),
(3, 3, 'asd', 'asdas', 'das', 'das', 'dasd', 'asdas', 'none', '', ''),
(4, 3, 'asd', 'asdas', 'das', 'das', 'dasd', 'asdas', 'none', '', ''),
(5, 3, 'asd', 'asdas', 'das', 'das', 'dasd', 'asdas', 'none', '', ''),
(6, 3, 'ASD', 'ASDAS', 'DAS', 'DAS', 'DASD', 'ASDAS', 'none', '', ''),
(7, 3, 'asd', 'asd', 'asda', 'sdas', 'das', 'dasd', 'none', '', ''),
(8, 3, 'dasd', 'asd', 'asd', 'asd', 'asd', 'asdas', 'none', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ap_skills`
--

CREATE TABLE `ap_skills` (
  `a_profile7_id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `skill` varchar(50) NOT NULL,
  `techSkill` varchar(50) NOT NULL,
  `otherTechskill` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ap_skills`
--

INSERT INTO `ap_skills` (`a_profile7_id`, `applicant_id`, `skill`, `techSkill`, `otherTechskill`) VALUES
(1, 2, '', '', ''),
(2, 3, 'Problem Solving, Decision Making, Social Perceptiv', 'Masonry, Welding, Driving, Hairdressing', ''),
(3, 3, 'Problem Solving, Decision Making, Planning and Org', '', ''),
(4, 3, 'Problem Solving, Planning and Organizing, English ', 'Gardening, Photograph', ''),
(5, 3, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ap_tvo`
--

CREATE TABLE `ap_tvo` (
  `a_profile4_id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `trainingStatus` varchar(50) NOT NULL,
  `training1` varchar(50) NOT NULL,
  `startDuration1` date NOT NULL,
  `endDuration1` date NOT NULL,
  `training2` varchar(50) NOT NULL,
  `startDuration2` date NOT NULL,
  `endDuration2` date NOT NULL,
  `training3` varchar(50) NOT NULL,
  `startDuration3` date NOT NULL,
  `endDuration3` date NOT NULL,
  `institution1` varchar(50) NOT NULL,
  `certificate1` varchar(50) NOT NULL,
  `completion1` varchar(50) NOT NULL,
  `institution2` varchar(50) NOT NULL,
  `certificate2` varchar(50) NOT NULL,
  `completion2` varchar(50) NOT NULL,
  `institution3` varchar(50) NOT NULL,
  `certificate3` varchar(50) NOT NULL,
  `completion3` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ap_tvo`
--

INSERT INTO `ap_tvo` (`a_profile4_id`, `applicant_id`, `trainingStatus`, `training1`, `startDuration1`, `endDuration1`, `training2`, `startDuration2`, `endDuration2`, `training3`, `startDuration3`, `endDuration3`, `institution1`, `certificate1`, `completion1`, `institution2`, `certificate2`, `completion2`, `institution3`, `certificate3`, `completion3`) VALUES
(1, 2, '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '', '', ''),
(2, 3, '', 'asdas', '2000-01-01', '2000-01-01', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', 'dasdas', 'asdsad', 'yes', '', '', '', '', '', ''),
(3, 3, '', 'asdas', '2000-01-01', '2000-01-01', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', 'dasdas', 'asdsad', 'yes', '', '', '', '', '', ''),
(4, 3, '', 'asdas', '2000-01-01', '2000-01-01', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', 'dasdas', 'asdsad', 'yes', '', '', '', '', '', ''),
(5, 3, '', 'asdas', '2000-01-01', '2000-01-01', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', 'dasdas', 'asdsad', 'yes', '', '', '', '', '', ''),
(6, 3, '', 'ASD', '0001-01-01', '0001-01-01', 'ASDASD', '0001-01-01', '0001-01-01', 'ASDAS', '0001-01-01', '0001-01-01', 'ASDAS', 'ASDASD', 'yes', 'ASDASDAS', 'ASDASD', 'yes', 'DASD', 'ASDAS', 'yes'),
(7, 3, '', 'asdas', '0001-01-01', '0001-01-01', 'jhljkhkj', '0001-01-01', '0001-01-01', 'kjhkjh', '0001-01-01', '0001-01-01', 'dasd', 'jhj', 'no', 'hjkhkjhk', 'khkjhk', 'yes', 'jk', 'kjhkjhk', 'yes'),
(8, 3, '', 'asdasd', '0001-01-01', '0001-01-01', 'dasdasdas', '0001-01-01', '0001-01-01', 'dasdas', '0001-01-01', '0001-01-01', 'asd', 'sdadas', 'yes', 'das', 'dasdas', 'yes', 'adsda', 'dasda', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `a_accounttb`
--

CREATE TABLE `a_accounttb` (
  `applicant_id` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `age` int(90) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `Pnum` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `profile_img` text NOT NULL,
  `email_verified` tinyint(1) DEFAULT 0,
  `code` text NOT NULL,
  `code_created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `a_accounttb`
--

INSERT INTO `a_accounttb` (`applicant_id`, `lastname`, `firstname`, `middlename`, `age`, `sex`, `Pnum`, `email`, `password`, `profile_img`, `email_verified`, `code`, `code_created_at`) VALUES
(1, 'Crown', 'Kreston', '', 23, 'Male', '9123456789', 'kreston52@gmail.com', 'KresTon_52', '', 0, '', '2023-09-14 13:55:56'),
(2, 'Manguerra', 'Rebo', '', 22, 'Male', '9011231234', 'rebrebmanguerra@gmail.com', 'sample', '', 0, '', '2023-11-07 02:29:52'),
(3, 'Silvanna', 'sample', 'sample', 21, 'Male', '9123456789', 'sample@gmail.com', 'sample', '', 0, '', '2023-12-08 07:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `company_profile`
--

CREATE TABLE `company_profile` (
  `c_profile_id` int(11) NOT NULL,
  `companyPname` varchar(50) NOT NULL,
  `industry` varchar(50) NOT NULL,
  `companyRegnum` int(20) NOT NULL,
  `contactNum` int(11) NOT NULL,
  `contactPerson` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `companyAddress` varchar(255) NOT NULL,
  `companyWeb` varchar(255) NOT NULL,
  `companySize` int(11) NOT NULL,
  `workHour` int(11) NOT NULL,
  `dresscode` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `benefits` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `c_accounttb`
--

CREATE TABLE `c_accounttb` (
  `company_id` int(11) NOT NULL,
  `companyName` varchar(50) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `contactPerson` varchar(50) NOT NULL,
  `contactNum` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `companyType` varchar(255) NOT NULL,
  `date_added_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `profile_img` text DEFAULT NULL,
  `bspermit_img` text DEFAULT NULL,
  `dolepermit_img` text DEFAULT NULL,
  `listclients_img` text DEFAULT NULL,
  `dolepermitcase_img` text DEFAULT NULL,
  `poeapermit_img` text DEFAULT NULL,
  `joborder_img` text DEFAULT NULL,
  `jobopening_img` text NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `c_accounttb`
--

INSERT INTO `c_accounttb` (`company_id`, `companyName`, `industry`, `contactPerson`, `contactNum`, `email`, `type`, `password`, `companyType`, `date_added_at`, `profile_img`, `bspermit_img`, `dolepermit_img`, `listclients_img`, `dolepermitcase_img`, `poeapermit_img`, `joborder_img`, `jobopening_img`, `status`) VALUES
(1, ' Juan Dela Cruz', 'head', '', 0, 'juandelacruz123@gmail.com', 'admin', 'JuanDelaCruz_123', '', '2023-12-13 13:10:46', '', NULL, '', '', NULL, NULL, NULL, 'requirement_storage/cityhall.png', 'Approved'),
(4, 'Jeremy', 'Ruta', '', 0, 'jeremyruta@isda.com', 'user', 'jeremy', '', '2023-12-13 13:38:12', '', NULL, '', '', NULL, NULL, NULL, '', 'Rejected'),
(5, 'super', 'admin', '', 0, 'superadmin@gmail.com', 'user', 'SuperAdmin', '', '2023-12-13 12:50:06', '', NULL, '', '', NULL, NULL, NULL, '', ''),
(6, 'sample', 'staff', 'sample', 0, 'sample@gmail.com', 'user', 'sample', '', '2023-12-13 12:50:06', '', NULL, '', '', NULL, NULL, NULL, '', ''),
(7, 'sampletwo', 'staff', 'sampletwo', 912, 'sampletwo@gmail.com', 'user', 'sampletwo', '', '2023-12-13 12:50:06', '', NULL, '', '', NULL, NULL, NULL, '', ''),
(8, 'samplethree', 'staff', 'samplethree', 912, 'samplethree@gmail.com', 'user', 'samplethree', '', '2023-12-13 12:50:06', '', NULL, '', '', NULL, NULL, NULL, '', ''),
(9, 'dummy', 'staff', 'dummy', 912, 'dummy@gmail.com', 'user', 'dummy', '', '2023-12-13 12:50:06', '', NULL, '', '', NULL, NULL, NULL, '', ''),
(10, 'dummytwo', 'IT', 'dummytwo', 912, 'dummytwo@gmail.com', 'user', 'dummytwo', '', '2023-12-13 12:50:06', '', NULL, '', '', NULL, NULL, NULL, '', ''),
(11, 'Company Three', 'IT', 'Company Three', 912, 'companythree3@gmail.com', 'user', 'CompanyThree_3', '', '2023-12-13 12:50:06', '', NULL, '', '', NULL, NULL, NULL, '', ''),
(12, 'asd', 'asdas', 'dsa', 0, 'asd', '', 'qwe', '', '2023-12-13 12:50:06', '', NULL, NULL, NULL, NULL, NULL, NULL, '', ''),
(13, 'asd', 'as', 'dasd', 0, 'das', '', 'asd', '', '2023-12-13 12:50:06', 'requirement_storage/cityhall.png', NULL, 'requirement_storage/cityhall.png', 'requirement_storage/cityhall.png', NULL, NULL, NULL, 'requirement_storage/cityhall.png', ''),
(14, 'asdas', 'dasdas', 'dasd', 0, 'asd', '', 'asd', '', '2023-12-13 12:50:06', 'requirement_storage/burger-menu.jpg', NULL, NULL, NULL, NULL, 'requirement_storage/burger-menu.jpg', 'requirement_storage/burger-menu.jpg', 'requirement_storage/burger-menu.jpg', ''),
(15, 'asd', 'asd', 'asd', 0, 'asd', '', 'asd', '', '2023-12-13 12:50:06', 'requirement_storage/cityhall.png', NULL, 'requirement_storage/cityhall.png', 'requirement_storage/cityhall.png', 'requirement_storage/cityhall.png', NULL, NULL, 'requirement_storage/cityhall.png', ''),
(16, 'dasd', 'asd', 'asdasd', 0, 'asd', '', 'asd', '', '2023-12-13 12:50:06', 'requirement_storage/cityhall.png', NULL, NULL, NULL, NULL, 'requirement_storage/cityhall.png', 'requirement_storage/cityhall.png', 'requirement_storage/cityhall.png', ''),
(17, 'asd', 'asd', 'asd', 0, 'asd', '', 'asd', '', '2023-12-13 12:50:06', 'requirement_storage/cityhall.png', NULL, NULL, NULL, NULL, 'requirement_storage/cityhall.png', 'requirement_storage/cityhall.png', 'requirement_storage/cityhall.png', ''),
(18, 'asd', 'asd', 'asd', 0, 'asd', '', 'asd', '', '2023-12-13 13:17:11', 'requirement_storage/cityhall.png', NULL, NULL, NULL, NULL, 'requirement_storage/cityhall.png', 'requirement_storage/cityhall.png', 'requirement_storage/cityhall.png', 'Rejected'),
(19, 'sad', 'sad', 'asd', 0, 'd', '', 'asd', '', '2023-12-13 13:17:00', 'requirement_storage/cityhall.png', NULL, NULL, NULL, NULL, 'requirement_storage/cityhall.png', 'requirement_storage/cityhall.png', 'requirement_storage/cityhall.png', 'Approved'),
(20, 'asd', 'asd', 'as', 0, 'asd', '', 'asd', '', '2023-12-13 12:50:06', 'requirement_storage/cityhall.png', NULL, NULL, NULL, NULL, 'requirement_storage/cityhall.png', 'requirement_storage/cityhall.png', 'requirement_storage/cityhall.png', ''),
(21, 'sdf', 'sdf', 'sdf', 0, 'sdfsd', '', 'asd', '', '2023-12-13 12:50:06', 'requirement_storage/cityhall.png', NULL, NULL, NULL, NULL, 'requirement_storage/cityhall.png', 'requirement_storage/cityhall.png', 'requirement_storage/cityhall.png', ''),
(22, 'asd', 'asd', 'asd', 0, 'asd', '', 'asd', '', '2023-12-13 12:50:06', 'requirement_storage/cityhall.png', NULL, NULL, NULL, NULL, 'requirement_storage/cityhall.png', 'requirement_storage/cityhall.png', 'requirement_storage/cityhall.png', ''),
(23, 'as', 'dasd', 'asd', 0, 'asd', '', 'asd', '', '2023-12-13 12:50:06', 'requirement_storage/cityhall.png', NULL, 'requirement_storage/cityhall.png', NULL, NULL, NULL, NULL, 'requirement_storage/cityhall.png', ''),
(24, 'sample', 'sample', 'sample', 912, 'sample@yahoo.com', '', 'Just_password123', '', '2023-12-13 12:50:06', 'requirement_storage/cityhall.png', NULL, 'requirement_storage/cityhall.png', NULL, NULL, NULL, NULL, 'requirement_storage/cityhall.png', ''),
(25, 'sample', 'sample', 'smaple', 912, 'sample@gmail.com', '', 'Just_password123', '', '2023-12-13 12:50:06', 'requirement_storage/modaltrainingsc.png', NULL, 'requirement_storage/darkmodesc.png', NULL, NULL, NULL, NULL, 'requirement_storage/accessaccountsc.png', ''),
(26, 'sample', 'sample', 'Rebo Barrameda Manguerra', 901, 'sample@gmail.com', '', 'Just_password123', '', '2023-12-13 13:53:46', 'requirement_storage/accessaccountsc.png', NULL, 'requirement_storage/accessaccountsc.png', NULL, NULL, NULL, NULL, 'requirement_storage/accessaccountsc.png', 'Pending'),
(27, 'sample', 'dasd', 'kjdhaskjhd daksjdhak asdas', 901, 'sample@gmail.com', 'Direct', 'Just_password123', '', '2023-12-13 14:21:07', 'requirement_storage/accessaccountsc.png', NULL, 'requirement_storage/accessaccountsc.png', NULL, NULL, NULL, NULL, 'requirement_storage/accessaccountsc.png', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `c_jobpost`
--

CREATE TABLE `c_jobpost` (
  `c_jobpost_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `educBg` varchar(255) NOT NULL,
  `yrsExperience` varchar(255) NOT NULL,
  `workLocation` varchar(255) NOT NULL,
  `jobTitle` varchar(255) NOT NULL,
  `slot` int(11) NOT NULL,
  `salary` varchar(50) NOT NULL,
  `skills` varchar(255) NOT NULL,
  `typeofHiring` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `questionNo1` varchar(225) NOT NULL,
  `questionNo2` varchar(225) NOT NULL,
  `questionNo3` varchar(225) NOT NULL,
  `questionNo4` varchar(225) NOT NULL,
  `questionNo5` varchar(225) NOT NULL,
  `answerNo1` varchar(225) NOT NULL,
  `answerNo2` varchar(225) NOT NULL,
  `answerNo3` varchar(225) NOT NULL,
  `answerNo4` varchar(225) NOT NULL,
  `answerNo5` varchar(225) NOT NULL,
  `img` text NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `c_jobpost`
--

INSERT INTO `c_jobpost` (`c_jobpost_id`, `company_id`, `companyName`, `industry`, `position`, `educBg`, `yrsExperience`, `workLocation`, `jobTitle`, `slot`, `salary`, `skills`, `typeofHiring`, `description`, `questionNo1`, `questionNo2`, `questionNo3`, `questionNo4`, `questionNo5`, `answerNo1`, `answerNo2`, `answerNo3`, `answerNo4`, `answerNo5`, `img`, `date_added`) VALUES
(17, 6, 'Mitsubishi Motors Philippines Corporation', 'Manufacturing / Production', 'Supervisor', 'Supervisor/5 Years & Up Experienced Employee', '3 Years', 'Laguna (Sta. Rosa City)', 'Supervisor IT Application', 1, '12,000', 'Computer/Information Technology, IT-Software', '', 'Mitsubishi Motors Philippines Corporation (MMPC) (formerly Philippine Automotive Manufacturing Corporation) is the Philippine operation of Mitsubishi Motors Corporation (MMC), where it is the second-biggest seller of automobiles. MMPC is one of MMC\'s four manufacturing facilities outside Japan, and currently produces the Mitsubishi Mirage, Mirage G4, and the L300. From 1987 to 2018, MMPC was the distributor of Mitsubishi Fuso commercial vehicles in the Philippines until Sojitz Fuso Philippines Corporation was established in September 2018. The company\'s slogan is \"Drive your Ambition\", which has been part of Mitsubishi Motors\' global rebranding since 2018.', 'Do you manage conflict well?', 'Do you manage pressure well?', 'Are you a goal-oriented employee?', 'Are you a team player?', 'Have you done anything to enhance your skillset?', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '../jobpost_img/mitsubishi.png', '2023-11-07 02:40:56'),
(18, 7, 'Nestle Philippines, Inc.', 'Consumer Products / FMCG', 'Analyst II - Microbiology', 'Fresh Graduates', '1-2 Years', 'Cabuyao Factory', 'NQAC analyst II - Microbiology', 2, '15,000-18,000', 'Sciences, Science & Technology', '', 'Nestlé is the world’s largest food and beverage company. We have more than 2000 brands ranging from global icons to local favourites, and we are present in 191 countries around the world. We are driven by the purpose of enhancing the quality of life and contributing to a healthier future. Our values are rooted in respect: respect for ourselves, respect for others, respect for diversity and respect for our future. We believe our people are our most important asset, so we\'ll offer you a dynamic inclusive international working environment with many opportunities across different businesses, functions and geographies, working with diverse teams and cultures.', 'Are you ready to put this company before your own personal interests?', 'Are you okay with the amount of travel required for this position?', 'Do you have experience in business-to-business sales?', 'Are you able to work variable shifts?', 'Can you operate a cash register?', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '../jobpost_img/nestle.png', '2023-11-07 02:40:48'),
(19, 8, 'Shakey’s Pizza Asia Ventures Inc. (SPAVI)', 'Food & Beverage / Catering / Restaurant', 'Restaurant Manager', 'Bachelor\'s/College Degree', '2-3 Years', 'Laguna (Sta. Rosa City)', 'Restaurant Managers - SM Sta. Rosa & Nuvali', 1, '30,000-50,000', 'Hotel/Restaurant, Food/Beverage/Restaurant', '', 'Shakey\'s Pizza Asia Ventures, Inc. (PIZZA) was incorporated and registered with the Securities and Exchange Commission on February 14, 1974, originally as International Family Food Services, Inc. The Company\'s primary purpose is to operate and maintain food parlors under the \"Shakey\'s\" brand or other foreign or local restaurant and food brands.', 'Do you know how to use or operate a restuarant', 'Have you ever been fired from a job?', 'Are you able to work variable shifts?', 'Can you operate a cash register?', 'Do you manage pressure well?', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '../jobpost_img/shakeys.jpg', '2023-11-07 02:40:40'),
(20, 9, 'Monde Nissin Corporation', 'Manufacturing / Production', 'Network Engineer', 'Bachelor\'s/College Degree', '4 Years', 'Laguna (Sta. Rosa City)', 'Network Engineer', 2, '25,000-26,000', 'Computer/Information Technology, IT-Network/Sys/DB Admin', '', 'Monde Nissin Corporation is a Philippine food and beverage company with a portfolio of brands across instant noodles, biscuits, baked goods, culinary aids and alternative meat products categories, including Lucky Me!, SkyFlakes, Fita, M.Y. San Grahams and Nissin.', 'Do you like giving presentations?', 'Do you ever take work home with you?', 'Do you manage pressure well?', 'Are you ready to put this company before your own personal interests?', 'Have you ever worked in a different industry?', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '../jobpost_img/monde_nissin.png', '2023-11-07 02:41:00'),
(21, 10, 'Toyota Motor Philippines Corporation', 'Manufacturing / Production', 'Safety Officer', 'Bachelor\'s/College Degree', '2-3 Years', 'Laguna (Sta. Rosa City)', 'Safety Officer', 3, '20,000-25,000', 'Engineering, Environmental', '', 'Toyota Motor Philippines Corporation (TMP) is the largest automotive company in the country, with the widest vehicle line-up of 24 Toyota models. It has over 70 dealers nationwide, including Lexus Manila, Inc., for its sales distribution and service centers.  TMP was incorporated on August 3, 1988 as a joint venture of GT Capital Holdings, Inc., Toyota Motor Corporation, and Mitsui & Co., Ltd.', 'Have you ever worked in a different industry?', 'You know a lot about team building, don\'t you?', 'I bet you\'re good at setting long-term goals. Right?', 'Is this the job that interests you most?', 'Do you ever talk to yourself?', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '../jobpost_img/toyota.jpg', '2023-11-07 02:41:05');

-- --------------------------------------------------------

--
-- Table structure for table `c_requests`
--

CREATE TABLE `c_requests` (
  `company_id` int(11) NOT NULL,
  `companyName` varchar(50) NOT NULL,
  `industry` varchar(50) NOT NULL,
  `contactPerson` varchar(255) NOT NULL,
  `contactNum` varchar(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `message` text NOT NULL,
  `companyType` varchar(255) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `c_requests`
--

INSERT INTO `c_requests` (`company_id`, `companyName`, `industry`, `contactPerson`, `contactNum`, `email`, `password`, `message`, `companyType`, `date`) VALUES
(12, 'Capstone Company', 'IT', 'Juan Dela Cruz', '0912-345-67', 'juandelacruz123@gmail.com', 'JuanDelaCruz_123', 'Our Capstone Company would like to request an account.', '', '2023-09-08 16:19:39'),
(15, '', 'IT', 'Company Two', '0912-345-67', 'companytwo2@gmail.com', 'CompanyTwo_2', 'Company Two would like to request an account.', '', '2023-09-13 10:30:57'),
(17, 'Company Four', 'Technology', 'Company Four', '0912-345-67', 'companyfour4@gmail.com', 'CompanyFour_4', 'Company Four would like to request an account.', 'Direct Company', '2023-09-15 20:27:56');

-- --------------------------------------------------------

--
-- Table structure for table `file`
--

CREATE TABLE `file` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `file` varchar(100) NOT NULL,
  `file2` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `size` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `game_id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `score` int(50) NOT NULL,
  `date_added_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_post_roles`
--

CREATE TABLE `job_post_roles` (
  `job_post_roles_id` int(11) NOT NULL,
  `roles` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_post_roles`
--

INSERT INTO `job_post_roles` (`job_post_roles_id`, `roles`) VALUES
(1, 'Company'),
(2, 'Peso');

-- --------------------------------------------------------

--
-- Table structure for table `p_accounttb`
--

CREATE TABLE `p_accounttb` (
  `peso_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `position` varchar(255) NOT NULL,
  `contactNum` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `date_added_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `p_accounttb`
--

INSERT INTO `p_accounttb` (`peso_id`, `name`, `position`, `contactNum`, `email`, `password`, `date_added_at`, `status`) VALUES
(11, 'sample', 'staff', '1', 'sample@gmail.com', 'sample', '2023-12-13 12:40:47', 'Rejected'),
(13, 'admin', 'admin', '912', 'sample@gmail.com', 'Just_password123', '2023-12-04 16:00:00', 'Approved'),
(14, 'Sample Three', 'head', '912', 'samplethree3@gmail.com', 'SampleThree_3', '2023-12-13 12:40:43', 'Approved'),
(18, 'Sample Lang', 'staff', '0912-345-67', 'samplelang@gmail.com', 'Just_password123', '2023-12-12 16:00:00', 'Approved'),
(19, 'spam sample', 'staff', '0912-345-68', 'spamsample@gmail.com', 'Just_password123', '2023-12-12 16:00:00', 'Pending'),
(20, 'spam sample', 'staff', '0912-345-69', 'spamsample@gmail.com', 'Just_password123', '2023-12-12 16:00:00', 'Pending'),
(21, 'sample', 'staff', '1', 'sample@gmail.com', 'sample', '2023-12-12 16:00:00', 'Approved'),
(22, 'admin', 'admin', '912', 'sample@gmail.com', 'Just_password123', '2023-12-04 16:00:00', 'Approved'),
(23, 'Sample Three', 'head', '912', 'samplethree3@gmail.com', 'SampleThree_3', '2023-12-12 16:00:00', 'Approved'),
(24, 'Sample Lang', 'staff', '0912-345-67', 'samplelang@gmail.com', 'Just_password123', '2023-12-12 16:00:00', 'Approved'),
(25, 'spam sample', 'staff', '0912-345-67', 'spamsample@gmail.com', 'Just_password123', '2023-12-12 16:00:00', 'Rejected'),
(26, 'spam sample', 'staff', '0912-345-67', 'spamsample@gmail.com', 'Just_password123', '2023-12-12 16:00:00', 'Approved'),
(27, 'sample', 'staff', '1', 'sample@gmail.com', 'sample', '2023-12-12 16:00:00', 'Approved'),
(28, 'admin', 'admin', '912', 'sample@gmail.com', 'Just_password123', '2023-12-04 16:00:00', 'Approved'),
(29, 'Sample Three', 'head', '912', 'samplethree3@gmail.com', 'SampleThree_3', '2023-12-12 16:00:00', 'Approved'),
(30, 'Sample Lang', 'staff', '0912-345-67', 'samplelang@gmail.com', 'Just_password123', '2023-12-12 16:00:00', 'Approved'),
(31, 'spam sample', 'staff', '0912-345-68', 'spamsample@gmail.com', 'Just_password123', '2023-12-12 16:00:00', 'Approved'),
(32, 'spam sample', 'staff', '0912-345-69', 'spamsample@gmail.com', 'Just_password123', '2023-12-12 16:00:00', 'Pending'),
(33, 'sample', 'staff', '1', 'sample@gmail.com', 'sample', '2023-12-12 16:00:00', 'Approved'),
(34, 'admin', 'admin', '912', 'sample@gmail.com', 'Just_password123', '2023-12-04 16:00:00', 'Approved'),
(35, 'Sample Three', 'head', '912', 'samplethree3@gmail.com', 'SampleThree_3', '2023-12-12 16:00:00', 'Approved'),
(36, 'Sample Lang', 'staff', '0912-345-67', 'samplelang@gmail.com', 'Just_password123', '2023-12-12 16:00:00', 'Approved'),
(37, 'spam sample', 'staff', '0912-345-67', 'spamsample@gmail.com', 'Just_password123', '2023-12-12 16:00:00', 'Pending'),
(38, 'spam sample', 'staff', '0912-345-67', 'spamsample@gmail.com', 'Just_password123', '2023-12-12 16:00:00', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `p_jobpost`
--

CREATE TABLE `p_jobpost` (
  `p_jobpost_id` int(11) NOT NULL,
  `peso_id` int(11) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `educBg` varchar(255) NOT NULL,
  `yrsExperience` varchar(255) NOT NULL,
  `workLocation` varchar(255) NOT NULL,
  `jobTitle` varchar(255) NOT NULL,
  `slot` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  `skills` varchar(255) NOT NULL,
  `typeofHiring` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `questionNo1` varchar(225) NOT NULL,
  `questionNo2` varchar(225) NOT NULL,
  `questionNo3` varchar(225) NOT NULL,
  `questionNo4` varchar(225) NOT NULL,
  `questionNo5` varchar(225) NOT NULL,
  `answerNo1` varchar(10) NOT NULL,
  `answerNo2` varchar(10) NOT NULL,
  `answerNo3` varchar(10) NOT NULL,
  `answerNo4` varchar(10) NOT NULL,
  `answerNo5` varchar(10) NOT NULL,
  `img` text NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `status_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`status_id`, `name`) VALUES
(1, 'Approved'),
(2, 'Rejected'),
(3, 'Pending'),
(4, 'In Review');

-- --------------------------------------------------------

--
-- Table structure for table `walkin_applicant`
--

CREATE TABLE `walkin_applicant` (
  `W_applicant_id` int(11) NOT NULL,
  `W_lastName` varchar(50) NOT NULL,
  `W_firstName` varchar(50) NOT NULL,
  `W_midName` varchar(50) NOT NULL,
  `W_suffix` varchar(50) NOT NULL,
  `W_jobseekerType` varchar(50) NOT NULL,
  `W_birthplace` varchar(50) NOT NULL,
  `W_birthday` date NOT NULL,
  `W_age` int(11) NOT NULL,
  `W_sex` varchar(50) NOT NULL,
  `W_civilStatus` varchar(50) NOT NULL,
  `W_citizenship` varchar(50) NOT NULL,
  `W_housenumPresent` varchar(50) NOT NULL,
  `W_brgyPresent` varchar(50) NOT NULL,
  `W_cityPresent` varchar(50) NOT NULL,
  `W_provincePresent` varchar(50) NOT NULL,
  `W_housenumPermanent` varchar(50) DEFAULT NULL,
  `W_brgyPermanent` varchar(50) NOT NULL,
  `W_cityPermanent` varchar(50) NOT NULL,
  `W_provincePermanent` varchar(50) NOT NULL,
  `W_height` int(11) NOT NULL,
  `W_weight` int(11) NOT NULL,
  `W_landlineNum` int(11) NOT NULL,
  `W_mobilePnum` int(11) NOT NULL,
  `W_mobileSnum` int(11) NOT NULL,
  `W_email` varchar(50) NOT NULL,
  `W_disability` varchar(50) NOT NULL,
  `W_employmentStatus` varchar(50) NOT NULL,
  `W_educLevel` varchar(50) NOT NULL,
  `W_gradYear` int(4) NOT NULL,
  `W_school` varchar(50) NOT NULL,
  `W_course` varchar(50) NOT NULL,
  `W_preferIndustry` varchar(50) NOT NULL,
  `W_activelyLooking` varchar(50) NOT NULL,
  `W_willinglyWork` varchar(50) NOT NULL,
  `W_fourPsBeneficiary` varchar(50) NOT NULL,
  `W_ofw` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `walkin_applicant`
--

INSERT INTO `walkin_applicant` (`W_applicant_id`, `W_lastName`, `W_firstName`, `W_midName`, `W_suffix`, `W_jobseekerType`, `W_birthplace`, `W_birthday`, `W_age`, `W_sex`, `W_civilStatus`, `W_citizenship`, `W_housenumPresent`, `W_brgyPresent`, `W_cityPresent`, `W_provincePresent`, `W_housenumPermanent`, `W_brgyPermanent`, `W_cityPermanent`, `W_provincePermanent`, `W_height`, `W_weight`, `W_landlineNum`, `W_mobilePnum`, `W_mobileSnum`, `W_email`, `W_disability`, `W_employmentStatus`, `W_educLevel`, `W_gradYear`, `W_school`, `W_course`, `W_preferIndustry`, `W_activelyLooking`, `W_willinglyWork`, `W_fourPsBeneficiary`, `W_ofw`) VALUES
(6, 'b', 'a', 'a', 'a', 'jobseeker', 'a', '2000-10-10', 13, 'Female', 'Single', 'c', 'c', 'c', 'c', 'c', 'cc', 'c', 'c', 'c', 13, 13, 12, 123, 0, 'c', 'none', 'wage_employed', 'a', 123, 'a', 'a', 'a', 'yes', 'yes', 'yes', ''),
(7, 'a', 'a', 'a', 'a', 'first_time', 'a', '0000-00-00', 0, 'a', 'a', 'a', '', '', '', '', NULL, '', '', '', 0, 0, 0, 0, 0, 'a', '', '', '', 0, '', '', '', '', '', '', ''),
(8, 'm', 'm', 'm', 'm', 'first_time', 'm', '1999-08-25', 25, 'm', 'm', 'm', '', '', '', '', NULL, '', '', '', 0, 0, 0, 0, 0, 'm', '', '', '', 0, '', '', '', '', '', '', ''),
(9, 'r', 't', 't', 't', 'first_time', 't', '2000-02-12', 36, 'Female', 'Single', 't', 't', 't', 't', 't', 't', 't', 't', 't', 123, 123, 123, 123, 0, 'tt', 'none', 'wage_employed', 't', 2023, 't', 't', 't', 'yes', 'yes', 'yes', '');

-- --------------------------------------------------------

--
-- Table structure for table `walkin_company`
--

CREATE TABLE `walkin_company` (
  `Wcompany_id` int(11) NOT NULL,
  `WcompanyName` varchar(255) NOT NULL,
  `Windustry` varchar(255) NOT NULL,
  `WcontactPerson` varchar(255) NOT NULL,
  `WcontactNum` int(11) NOT NULL,
  `Wemail` varchar(255) NOT NULL,
  `Wlocation` varchar(255) NOT NULL,
  `WregNum` varchar(255) NOT NULL,
  `WcompanyWeb` varchar(255) NOT NULL,
  `WcompanySize` int(11) NOT NULL,
  `WworkingHrs` int(11) NOT NULL,
  `WdressCode` varchar(255) NOT NULL,
  `WspokenLanguage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `walkin_company`
--

INSERT INTO `walkin_company` (`Wcompany_id`, `WcompanyName`, `Windustry`, `WcontactPerson`, `WcontactNum`, `Wemail`, `Wlocation`, `WregNum`, `WcompanyWeb`, `WcompanySize`, `WworkingHrs`, `WdressCode`, `WspokenLanguage`) VALUES
(1, 'Capstone Company', 'IT', 'Juan Dela Cruz', 2147483647, 'juandelacruz123@gmail.com', 'Santa Rosa, Laguna', '0123456789', '', 0, 0, '', ''),
(2, 'Senior Finance Associate', 'Computer / Information Technology (Software)', '', 2147483647, 'sample@gmail.com', 'Calamba, Laguna', '14235235', 'www.companywebsite.com', 200, 4, '2', '2'),
(3, 'Philippine Allied Enterprises Corporation', 'General & Wholesale Trading', '', 2147483647, 'juandelacruz@gmail.com', 'Santa Rosa, Laguna', '4235261514', 'www.paec.com', 500, 8, '2', 'Tagalog');

-- --------------------------------------------------------

--
-- Table structure for table `wap_educ`
--

CREATE TABLE `wap_educ` (
  `Wa_profile2_id` int(11) NOT NULL,
  `peso_id` int(11) NOT NULL,
  `schoolStatus` varchar(50) NOT NULL,
  `educLevel` varchar(50) NOT NULL,
  `gradYear` varchar(50) NOT NULL,
  `school` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `award` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wap_educ`
--

INSERT INTO `wap_educ` (`Wa_profile2_id`, `peso_id`, `schoolStatus`, `educLevel`, `gradYear`, `school`, `course`, `award`) VALUES
(7, 11, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wap_elig`
--

CREATE TABLE `wap_elig` (
  `Wa_profile5_id` int(11) NOT NULL,
  `peso_id` int(11) NOT NULL,
  `careerServ1` varchar(50) NOT NULL,
  `licenceNum1` varchar(50) NOT NULL,
  `expiryDate1` varchar(50) NOT NULL,
  `careerServ2` varchar(50) NOT NULL,
  `licenceNum2` varchar(50) NOT NULL,
  `expiryDate2` varchar(50) NOT NULL,
  `careerServ3` varchar(50) NOT NULL,
  `licenceNum3` varchar(50) NOT NULL,
  `expiryDate3` varchar(50) NOT NULL,
  `validDate` varchar(50) NOT NULL,
  `languageCertifications` varchar(50) NOT NULL,
  `otherCertification` varchar(50) NOT NULL,
  `dialectsSpoken` varchar(50) NOT NULL,
  `otherDialect` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wap_elig`
--

INSERT INTO `wap_elig` (`Wa_profile5_id`, `peso_id`, `careerServ1`, `licenceNum1`, `expiryDate1`, `careerServ2`, `licenceNum2`, `expiryDate2`, `careerServ3`, `licenceNum3`, `expiryDate3`, `validDate`, `languageCertifications`, `otherCertification`, `dialectsSpoken`, `otherDialect`) VALUES
(6, 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wap_exp`
--

CREATE TABLE `wap_exp` (
  `Wa_profile6_id` int(11) NOT NULL,
  `peso_id` int(11) NOT NULL,
  `incluEDate1` varchar(50) NOT NULL,
  `incluEDate2` varchar(50) NOT NULL,
  `incluEDate3` varchar(50) NOT NULL,
  `incluEDate4` varchar(50) NOT NULL,
  `company1` varchar(255) NOT NULL,
  `cpAddress1` varchar(255) NOT NULL,
  `company2` varchar(255) NOT NULL,
  `cpAddress2` varchar(255) NOT NULL,
  `company3` varchar(255) NOT NULL,
  `cpAddress3` varchar(255) NOT NULL,
  `company4` varchar(255) NOT NULL,
  `cpAddress4` varchar(255) NOT NULL,
  `position1` varchar(50) NOT NULL,
  `incluSDate1` varchar(50) NOT NULL,
  `appointStat1` varchar(50) NOT NULL,
  `position2` varchar(50) NOT NULL,
  `incluSDate2` varchar(50) NOT NULL,
  `appointStat2` varchar(50) NOT NULL,
  `position3` varchar(50) NOT NULL,
  `incluSDate3` varchar(50) NOT NULL,
  `appointStat3` varchar(50) NOT NULL,
  `position4` varchar(50) NOT NULL,
  `incluSDate4` varchar(50) NOT NULL,
  `appointStat4` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wap_exp`
--

INSERT INTO `wap_exp` (`Wa_profile6_id`, `peso_id`, `incluEDate1`, `incluEDate2`, `incluEDate3`, `incluEDate4`, `company1`, `cpAddress1`, `company2`, `cpAddress2`, `company3`, `cpAddress3`, `company4`, `cpAddress4`, `position1`, `incluSDate1`, `appointStat1`, `position2`, `incluSDate2`, `appointStat2`, `position3`, `incluSDate3`, `appointStat3`, `position4`, `incluSDate4`, `appointStat4`) VALUES
(5, 11, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wap_info`
--

CREATE TABLE `wap_info` (
  `Wa_profile1_id` int(11) NOT NULL,
  `peso_id` int(11) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `midName` varchar(50) NOT NULL,
  `suffix` varchar(50) NOT NULL,
  `jobseekerType` varchar(50) NOT NULL,
  `birthplace` varchar(50) NOT NULL,
  `birthday` date NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(50) NOT NULL,
  `civilStatus` varchar(50) NOT NULL,
  `citizenship` varchar(50) NOT NULL,
  `housenumPresent` varchar(50) NOT NULL,
  `brgyPresent` varchar(50) NOT NULL,
  `cityPresent` varchar(50) NOT NULL,
  `provincePresent` varchar(50) NOT NULL,
  `housenumPermanent` varchar(50) DEFAULT NULL,
  `brgyPermanent` varchar(50) NOT NULL,
  `cityPermanent` varchar(50) NOT NULL,
  `provincePermanent` varchar(50) NOT NULL,
  `height` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `landlineNum` int(11) NOT NULL,
  `mobilePnum` int(11) NOT NULL,
  `mobileSnum` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `disability` varchar(50) NOT NULL,
  `employmentStatus` varchar(50) NOT NULL,
  `activelyLooking` varchar(50) NOT NULL,
  `willinglyWork` varchar(50) NOT NULL,
  `fourPsBeneficiary` varchar(50) NOT NULL,
  `ofw` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wap_info`
--

INSERT INTO `wap_info` (`Wa_profile1_id`, `peso_id`, `lastName`, `firstName`, `midName`, `suffix`, `jobseekerType`, `birthplace`, `birthday`, `age`, `sex`, `civilStatus`, `citizenship`, `housenumPresent`, `brgyPresent`, `cityPresent`, `provincePresent`, `housenumPermanent`, `brgyPermanent`, `cityPermanent`, `provincePermanent`, `height`, `weight`, `landlineNum`, `mobilePnum`, `mobileSnum`, `email`, `disability`, `employmentStatus`, `activelyLooking`, `willinglyWork`, `fourPsBeneficiary`, `ofw`) VALUES
(12, 11, 'Dela Cruz', 'Juan', 'Rizal', '', 'first_time', 'Brgy. Sinalhan, Santa Rosa, Laguna', '2003-02-23', 20, 'Male', 'Married', 'Filipino', '234', 'Sinalhan', 'Santa Rosa', 'Laguna', '234', 'Sinalhan', 'Santa Rosa', 'Laguna', 170, 55, 2147483647, 2147483647, 0, 'sample@gmail.com', 'None', 'fresh_grad', 'yes', 'yes', 'yes', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wap_prefer`
--

CREATE TABLE `wap_prefer` (
  `Wa_profile3_id` int(11) NOT NULL,
  `peso_id` int(11) NOT NULL,
  `occupation1` varchar(50) NOT NULL,
  `industry1` varchar(50) NOT NULL,
  `occupation2` varchar(50) NOT NULL,
  `industry2` varchar(50) NOT NULL,
  `occupation3` varchar(50) NOT NULL,
  `industry3` varchar(50) NOT NULL,
  `locationType` varchar(50) NOT NULL,
  `location1` varchar(50) NOT NULL,
  `location2` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wap_prefer`
--

INSERT INTO `wap_prefer` (`Wa_profile3_id`, `peso_id`, `occupation1`, `industry1`, `occupation2`, `industry2`, `occupation3`, `industry3`, `locationType`, `location1`, `location2`) VALUES
(6, 11, '', '', '', '', '', '', 'none', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wap_skills`
--

CREATE TABLE `wap_skills` (
  `Wa_profile7_id` int(11) NOT NULL,
  `peso_id` int(11) NOT NULL,
  `skill` varchar(50) NOT NULL,
  `techSkill` varchar(50) NOT NULL,
  `otherTechskill` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wap_skills`
--

INSERT INTO `wap_skills` (`Wa_profile7_id`, `peso_id`, `skill`, `techSkill`, `otherTechskill`) VALUES
(8, 11, '', '', ''),
(9, 11, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wap_tvo`
--

CREATE TABLE `wap_tvo` (
  `Wa_profile4_id` int(11) NOT NULL,
  `peso_id` int(11) NOT NULL,
  `trainingStatus` varchar(50) NOT NULL,
  `training1` varchar(50) NOT NULL,
  `startDuration1` date NOT NULL,
  `endDuration1` date NOT NULL,
  `training2` varchar(50) NOT NULL,
  `startDuration2` date NOT NULL,
  `endDuration2` date NOT NULL,
  `training3` varchar(50) NOT NULL,
  `startDuration3` date NOT NULL,
  `endDuration3` date NOT NULL,
  `institution1` varchar(50) NOT NULL,
  `certificate1` varchar(50) NOT NULL,
  `completion1` varchar(50) NOT NULL,
  `institution2` varchar(50) NOT NULL,
  `certificate2` varchar(50) NOT NULL,
  `completion2` varchar(50) NOT NULL,
  `institution3` varchar(50) NOT NULL,
  `certificate3` varchar(50) NOT NULL,
  `completion3` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wap_tvo`
--

INSERT INTO `wap_tvo` (`Wa_profile4_id`, `peso_id`, `trainingStatus`, `training1`, `startDuration1`, `endDuration1`, `training2`, `startDuration2`, `endDuration2`, `training3`, `startDuration3`, `endDuration3`, `institution1`, `certificate1`, `completion1`, `institution2`, `certificate2`, `completion2`, `institution3`, `certificate3`, `completion3`) VALUES
(6, 11, '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wcompany`
--

CREATE TABLE `wcompany` (
  `id` int(11) NOT NULL,
  `companyName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `profileName` varchar(255) NOT NULL,
  `companyWeb` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `companyType` varchar(255) NOT NULL,
  `regNum` varchar(255) NOT NULL,
  `workingHrs` int(11) NOT NULL,
  `contactNum` int(11) NOT NULL,
  `dressCode` varchar(255) NOT NULL,
  `contactPerson` varchar(255) NOT NULL,
  `companySize` int(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `spokenLanguage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wcompany`
--

INSERT INTO `wcompany` (`id`, `companyName`, `email`, `profileName`, `companyWeb`, `industry`, `companyType`, `regNum`, `workingHrs`, `contactNum`, `dressCode`, `contactPerson`, `companySize`, `address`, `spokenLanguage`) VALUES
(1, 'Capstone Company', 'IT', 'Juan Dela Cruz', '2147483647', 'juandelacruz123@gmail.com', 'Santa Rosa, Laguna', '0123456789', 0, 0, '0', '', 0, '', ''),
(2, 'a', 'a', '', '0', 'a', '', '', 0, 0, '0', '', 0, '', ''),
(7, 'Monde Corporation', 'juandelacruz123@gmail.com', 'Monde', 'www.monde.com', 'Food', 'Direct', '012345', 8, 912, 'uniform', 'Juan Dela Cruz', 5000, 'Santa Rosa, Laguna', 'Taglish');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `access_account`
--
ALTER TABLE `access_account`
  ADD PRIMARY KEY (`access_id`),
  ADD KEY `access_pk` (`peso_id`);

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `applicant_notif`
--
ALTER TABLE `applicant_notif`
  ADD PRIMARY KEY (`notifications_id`);

--
-- Indexes for table `applicant_profile`
--
ALTER TABLE `applicant_profile`
  ADD PRIMARY KEY (`applicant_profile_id`),
  ADD KEY `applicant_id_pk` (`applicant_id`),
  ADD KEY `ap_info_id_pk` (`ap_info_id`),
  ADD KEY `ap_educ_id_pk` (`ap_educ_id`),
  ADD KEY `ap_prefer_id_pk` (`ap_prefer_id`),
  ADD KEY `ap_tvo_id_pk` (`ap_tvo_id`),
  ADD KEY `ap_elig_id_pk` (`ap_elig_id`),
  ADD KEY `ap_exp_id_pk` (`ap_exp_id`),
  ADD KEY `ap_skills_id_pk` (`ap_skills_id`),
  ADD KEY `peso_id_pkk` (`peso_id`),
  ADD KEY `ap_auth_id_pk` (`ap_auth_id`);

--
-- Indexes for table `applicant_roles`
--
ALTER TABLE `applicant_roles`
  ADD PRIMARY KEY (`applicant_roles_id`);

--
-- Indexes for table `application_log`
--
ALTER TABLE `application_log`
  ADD PRIMARY KEY (`application_log_id`),
  ADD KEY `applicant_id_apply_pk` (`applicant_id`),
  ADD KEY `c_jobpost_apply_pk` (`c_jobpost_id`);

--
-- Indexes for table `ap_auth`
--
ALTER TABLE `ap_auth`
  ADD PRIMARY KEY (`a_profile8_id`),
  ADD KEY `a_profile8_pkk` (`applicant_id`);

--
-- Indexes for table `ap_educ`
--
ALTER TABLE `ap_educ`
  ADD PRIMARY KEY (`a_profile2_id`),
  ADD KEY `a_profile2_pk` (`applicant_id`);

--
-- Indexes for table `ap_elig`
--
ALTER TABLE `ap_elig`
  ADD PRIMARY KEY (`a_profile5_id`),
  ADD KEY `a_profile5_pk` (`applicant_id`);

--
-- Indexes for table `ap_exp`
--
ALTER TABLE `ap_exp`
  ADD PRIMARY KEY (`a_profile6_id`),
  ADD KEY `a_profile6_pk` (`applicant_id`);

--
-- Indexes for table `ap_info`
--
ALTER TABLE `ap_info`
  ADD PRIMARY KEY (`a_profile1_id`),
  ADD KEY `a_profile1_pk` (`applicant_id`);

--
-- Indexes for table `ap_prefer`
--
ALTER TABLE `ap_prefer`
  ADD PRIMARY KEY (`a_profile3_id`),
  ADD KEY `a_profile3_pk` (`applicant_id`);

--
-- Indexes for table `ap_skills`
--
ALTER TABLE `ap_skills`
  ADD PRIMARY KEY (`a_profile7_id`),
  ADD KEY `a_profile7_pk` (`applicant_id`);

--
-- Indexes for table `ap_tvo`
--
ALTER TABLE `ap_tvo`
  ADD PRIMARY KEY (`a_profile4_id`),
  ADD KEY `a_profile4_pk` (`applicant_id`);

--
-- Indexes for table `a_accounttb`
--
ALTER TABLE `a_accounttb`
  ADD PRIMARY KEY (`applicant_id`);

--
-- Indexes for table `company_profile`
--
ALTER TABLE `company_profile`
  ADD PRIMARY KEY (`c_profile_id`);

--
-- Indexes for table `c_accounttb`
--
ALTER TABLE `c_accounttb`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `c_jobpost`
--
ALTER TABLE `c_jobpost`
  ADD PRIMARY KEY (`c_jobpost_id`),
  ADD KEY `c_jobpost_pk` (`company_id`);

--
-- Indexes for table `c_requests`
--
ALTER TABLE `c_requests`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `file`
--
ALTER TABLE `file`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requirement_pk` (`company_id`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`game_id`);

--
-- Indexes for table `job_post_roles`
--
ALTER TABLE `job_post_roles`
  ADD PRIMARY KEY (`job_post_roles_id`);

--
-- Indexes for table `p_accounttb`
--
ALTER TABLE `p_accounttb`
  ADD PRIMARY KEY (`peso_id`);

--
-- Indexes for table `p_jobpost`
--
ALTER TABLE `p_jobpost`
  ADD PRIMARY KEY (`p_jobpost_id`),
  ADD KEY `p_jobpost_pk` (`peso_id`);

--
-- Indexes for table `walkin_applicant`
--
ALTER TABLE `walkin_applicant`
  ADD PRIMARY KEY (`W_applicant_id`);

--
-- Indexes for table `walkin_company`
--
ALTER TABLE `walkin_company`
  ADD PRIMARY KEY (`Wcompany_id`);

--
-- Indexes for table `wap_educ`
--
ALTER TABLE `wap_educ`
  ADD PRIMARY KEY (`Wa_profile2_id`),
  ADD KEY `Wa_profile2_pk` (`peso_id`);

--
-- Indexes for table `wap_elig`
--
ALTER TABLE `wap_elig`
  ADD PRIMARY KEY (`Wa_profile5_id`),
  ADD KEY `Wa_profile5_pk` (`peso_id`);

--
-- Indexes for table `wap_exp`
--
ALTER TABLE `wap_exp`
  ADD PRIMARY KEY (`Wa_profile6_id`),
  ADD KEY `Wa_profile6_pk` (`peso_id`);

--
-- Indexes for table `wap_info`
--
ALTER TABLE `wap_info`
  ADD PRIMARY KEY (`Wa_profile1_id`),
  ADD KEY `Wa_profile1_pk` (`peso_id`);

--
-- Indexes for table `wap_prefer`
--
ALTER TABLE `wap_prefer`
  ADD PRIMARY KEY (`Wa_profile3_id`),
  ADD KEY `Wa_profile3_pk` (`peso_id`);

--
-- Indexes for table `wap_skills`
--
ALTER TABLE `wap_skills`
  ADD PRIMARY KEY (`Wa_profile7_id`),
  ADD KEY `Wa_profile7_pk` (`peso_id`);

--
-- Indexes for table `wap_tvo`
--
ALTER TABLE `wap_tvo`
  ADD PRIMARY KEY (`Wa_profile4_id`),
  ADD KEY `Wa_profile4_pk` (`peso_id`);

--
-- Indexes for table `wcompany`
--
ALTER TABLE `wcompany`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `access_account`
--
ALTER TABLE `access_account`
  MODIFY `access_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `applicant_notif`
--
ALTER TABLE `applicant_notif`
  MODIFY `notifications_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `applicant_profile`
--
ALTER TABLE `applicant_profile`
  MODIFY `applicant_profile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `applicant_roles`
--
ALTER TABLE `applicant_roles`
  MODIFY `applicant_roles_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `application_log`
--
ALTER TABLE `application_log`
  MODIFY `application_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `ap_auth`
--
ALTER TABLE `ap_auth`
  MODIFY `a_profile8_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ap_educ`
--
ALTER TABLE `ap_educ`
  MODIFY `a_profile2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ap_elig`
--
ALTER TABLE `ap_elig`
  MODIFY `a_profile5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ap_exp`
--
ALTER TABLE `ap_exp`
  MODIFY `a_profile6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `ap_info`
--
ALTER TABLE `ap_info`
  MODIFY `a_profile1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ap_prefer`
--
ALTER TABLE `ap_prefer`
  MODIFY `a_profile3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ap_skills`
--
ALTER TABLE `ap_skills`
  MODIFY `a_profile7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ap_tvo`
--
ALTER TABLE `ap_tvo`
  MODIFY `a_profile4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `a_accounttb`
--
ALTER TABLE `a_accounttb`
  MODIFY `applicant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company_profile`
--
ALTER TABLE `company_profile`
  MODIFY `c_profile_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `c_accounttb`
--
ALTER TABLE `c_accounttb`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `c_jobpost`
--
ALTER TABLE `c_jobpost`
  MODIFY `c_jobpost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `c_requests`
--
ALTER TABLE `c_requests`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `file`
--
ALTER TABLE `file`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `game_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_post_roles`
--
ALTER TABLE `job_post_roles`
  MODIFY `job_post_roles_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `p_accounttb`
--
ALTER TABLE `p_accounttb`
  MODIFY `peso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `p_jobpost`
--
ALTER TABLE `p_jobpost`
  MODIFY `p_jobpost_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `walkin_applicant`
--
ALTER TABLE `walkin_applicant`
  MODIFY `W_applicant_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `walkin_company`
--
ALTER TABLE `walkin_company`
  MODIFY `Wcompany_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wap_educ`
--
ALTER TABLE `wap_educ`
  MODIFY `Wa_profile2_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wap_elig`
--
ALTER TABLE `wap_elig`
  MODIFY `Wa_profile5_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wap_exp`
--
ALTER TABLE `wap_exp`
  MODIFY `Wa_profile6_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wap_info`
--
ALTER TABLE `wap_info`
  MODIFY `Wa_profile1_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wap_prefer`
--
ALTER TABLE `wap_prefer`
  MODIFY `Wa_profile3_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wap_skills`
--
ALTER TABLE `wap_skills`
  MODIFY `Wa_profile7_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wap_tvo`
--
ALTER TABLE `wap_tvo`
  MODIFY `Wa_profile4_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wcompany`
--
ALTER TABLE `wcompany`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `access_account`
--
ALTER TABLE `access_account`
  ADD CONSTRAINT `access_pk` FOREIGN KEY (`peso_id`) REFERENCES `p_accounttb` (`peso_id`);

--
-- Constraints for table `applicant_profile`
--
ALTER TABLE `applicant_profile`
  ADD CONSTRAINT `ap_auth_id_pk` FOREIGN KEY (`ap_auth_id`) REFERENCES `ap_auth` (`a_profile8_id`),
  ADD CONSTRAINT `ap_educ_id_pk` FOREIGN KEY (`ap_educ_id`) REFERENCES `ap_educ` (`a_profile2_id`),
  ADD CONSTRAINT `ap_elig_id_pk` FOREIGN KEY (`ap_elig_id`) REFERENCES `ap_elig` (`a_profile5_id`),
  ADD CONSTRAINT `ap_exp_id_pk` FOREIGN KEY (`ap_exp_id`) REFERENCES `ap_exp` (`a_profile6_id`),
  ADD CONSTRAINT `ap_info_id_pk` FOREIGN KEY (`ap_info_id`) REFERENCES `ap_info` (`a_profile1_id`),
  ADD CONSTRAINT `ap_prefer_id_pk` FOREIGN KEY (`ap_prefer_id`) REFERENCES `ap_prefer` (`a_profile3_id`),
  ADD CONSTRAINT `ap_skills_id_pk` FOREIGN KEY (`ap_skills_id`) REFERENCES `ap_skills` (`a_profile7_id`),
  ADD CONSTRAINT `ap_tvo_id_pk` FOREIGN KEY (`ap_tvo_id`) REFERENCES `ap_tvo` (`a_profile4_id`),
  ADD CONSTRAINT `applicant_id_pk` FOREIGN KEY (`applicant_id`) REFERENCES `a_accounttb` (`applicant_id`),
  ADD CONSTRAINT `peso_id_pkk` FOREIGN KEY (`peso_id`) REFERENCES `p_accounttb` (`peso_id`);

--
-- Constraints for table `application_log`
--
ALTER TABLE `application_log`
  ADD CONSTRAINT `applicant_id_apply_pk` FOREIGN KEY (`applicant_id`) REFERENCES `a_accounttb` (`applicant_id`),
  ADD CONSTRAINT `c_jobpost_apply_pk` FOREIGN KEY (`c_jobpost_id`) REFERENCES `c_jobpost` (`c_jobpost_id`);

--
-- Constraints for table `ap_auth`
--
ALTER TABLE `ap_auth`
  ADD CONSTRAINT `a_profile8_pkk` FOREIGN KEY (`applicant_id`) REFERENCES `a_accounttb` (`applicant_id`);

--
-- Constraints for table `ap_educ`
--
ALTER TABLE `ap_educ`
  ADD CONSTRAINT `a_profile2_pk` FOREIGN KEY (`applicant_id`) REFERENCES `a_accounttb` (`applicant_id`);

--
-- Constraints for table `ap_elig`
--
ALTER TABLE `ap_elig`
  ADD CONSTRAINT `a_profile5_pk` FOREIGN KEY (`applicant_id`) REFERENCES `a_accounttb` (`applicant_id`);

--
-- Constraints for table `ap_exp`
--
ALTER TABLE `ap_exp`
  ADD CONSTRAINT `a_profile6_pk` FOREIGN KEY (`applicant_id`) REFERENCES `a_accounttb` (`applicant_id`);

--
-- Constraints for table `ap_info`
--
ALTER TABLE `ap_info`
  ADD CONSTRAINT `a_profile1_pk` FOREIGN KEY (`applicant_id`) REFERENCES `a_accounttb` (`applicant_id`);

--
-- Constraints for table `ap_prefer`
--
ALTER TABLE `ap_prefer`
  ADD CONSTRAINT `a_profile3_pk` FOREIGN KEY (`applicant_id`) REFERENCES `a_accounttb` (`applicant_id`);

--
-- Constraints for table `ap_skills`
--
ALTER TABLE `ap_skills`
  ADD CONSTRAINT `a_profile7_pk` FOREIGN KEY (`applicant_id`) REFERENCES `a_accounttb` (`applicant_id`);

--
-- Constraints for table `ap_tvo`
--
ALTER TABLE `ap_tvo`
  ADD CONSTRAINT `a_profile4_pk` FOREIGN KEY (`applicant_id`) REFERENCES `a_accounttb` (`applicant_id`);

--
-- Constraints for table `c_jobpost`
--
ALTER TABLE `c_jobpost`
  ADD CONSTRAINT `c_jobpost_pk` FOREIGN KEY (`company_id`) REFERENCES `c_accounttb` (`company_id`);

--
-- Constraints for table `file`
--
ALTER TABLE `file`
  ADD CONSTRAINT `requirement_pk` FOREIGN KEY (`company_id`) REFERENCES `c_requests` (`company_id`);

--
-- Constraints for table `p_jobpost`
--
ALTER TABLE `p_jobpost`
  ADD CONSTRAINT `p_jobpost_pk` FOREIGN KEY (`peso_id`) REFERENCES `p_accounttb` (`peso_id`);

--
-- Constraints for table `wap_educ`
--
ALTER TABLE `wap_educ`
  ADD CONSTRAINT `Wa_profile2_pk` FOREIGN KEY (`peso_id`) REFERENCES `p_accounttb` (`peso_id`);

--
-- Constraints for table `wap_elig`
--
ALTER TABLE `wap_elig`
  ADD CONSTRAINT `Wa_profile5_pk` FOREIGN KEY (`peso_id`) REFERENCES `p_accounttb` (`peso_id`);

--
-- Constraints for table `wap_exp`
--
ALTER TABLE `wap_exp`
  ADD CONSTRAINT `Wa_profile6_pk` FOREIGN KEY (`peso_id`) REFERENCES `p_accounttb` (`peso_id`);

--
-- Constraints for table `wap_info`
--
ALTER TABLE `wap_info`
  ADD CONSTRAINT `Wa_profile1_pk` FOREIGN KEY (`peso_id`) REFERENCES `p_accounttb` (`peso_id`);

--
-- Constraints for table `wap_prefer`
--
ALTER TABLE `wap_prefer`
  ADD CONSTRAINT `Wa_profile3_pk` FOREIGN KEY (`peso_id`) REFERENCES `p_accounttb` (`peso_id`);

--
-- Constraints for table `wap_skills`
--
ALTER TABLE `wap_skills`
  ADD CONSTRAINT `Wa_profile7_pk` FOREIGN KEY (`peso_id`) REFERENCES `p_accounttb` (`peso_id`);

--
-- Constraints for table `wap_tvo`
--
ALTER TABLE `wap_tvo`
  ADD CONSTRAINT `Wa_profile4_pk` FOREIGN KEY (`peso_id`) REFERENCES `p_accounttb` (`peso_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
