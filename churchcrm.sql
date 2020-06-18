-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2020 at 05:30 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `churchcrm`
--
CREATE DATABASE IF NOT EXISTS `churchcrm` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `churchcrm`;

-- --------------------------------------------------------

--
-- Table structure for table `calendars`
--

DROP TABLE IF EXISTS `calendars`;
CREATE TABLE `calendars` (
  `calendar_id` int(11) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `accesstoken` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foregroundColor` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `backgroundColor` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calendars`
--

INSERT INTO `calendars` (`calendar_id`, `name`, `accesstoken`, `foregroundColor`, `backgroundColor`) VALUES
(1, 'Public Calendar', NULL, 'FFFFFF', '00AA00'),
(2, 'Private Calendar', NULL, 'FFFFFF', '0000AA');

-- --------------------------------------------------------

--
-- Table structure for table `calendar_events`
--

DROP TABLE IF EXISTS `calendar_events`;
CREATE TABLE `calendar_events` (
  `calendar_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `calendar_events`
--

INSERT INTO `calendar_events` (`calendar_id`, `event_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5);

-- --------------------------------------------------------

--
-- Table structure for table `canvassdata_can`
--

DROP TABLE IF EXISTS `canvassdata_can`;
CREATE TABLE `canvassdata_can` (
  `can_ID` mediumint(9) UNSIGNED NOT NULL,
  `can_famID` mediumint(9) NOT NULL DEFAULT 0,
  `can_Canvasser` mediumint(9) NOT NULL DEFAULT 0,
  `can_FYID` mediumint(9) DEFAULT NULL,
  `can_date` date DEFAULT NULL,
  `can_Positive` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `can_Critical` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `can_Insightful` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `can_Financial` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `can_Suggestion` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `can_NotInterested` tinyint(1) NOT NULL DEFAULT 0,
  `can_WhyNotInterested` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `church_location_person`
--

DROP TABLE IF EXISTS `church_location_person`;
CREATE TABLE `church_location_person` (
  `location_id` int(11) NOT NULL,
  `person_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `person_location_role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `church_location_role`
--

DROP TABLE IF EXISTS `church_location_role`;
CREATE TABLE `church_location_role` (
  `location_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `role_order` int(11) NOT NULL,
  `role_title` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `config_cfg`
--

DROP TABLE IF EXISTS `config_cfg`;
CREATE TABLE `config_cfg` (
  `cfg_id` int(11) NOT NULL DEFAULT 0,
  `cfg_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `config_cfg`
--

INSERT INTO `config_cfg` (`cfg_id`, `cfg_name`, `cfg_value`) VALUES
(21, 'sDefaultCity', 'King George'),
(22, 'sDefaultState', 'Virginia'),
(23, 'sDefaultCountry', 'United States'),
(28, 'bSMTPAuth', ''),
(45, 'iChurchLatitude', '38.24511'),
(46, 'iChurchLongitude', '-77.187585'),
(48, 'bHideFriendDate', ''),
(49, 'bHideFamilyNewsletter', ''),
(50, 'bHideWeddingDate', ''),
(51, 'bHideLatLon', ''),
(52, 'bUseDonationEnvelopes', ''),
(58, 'bUseScannedChecks', ''),
(67, 'bForceUppercaseZip', ''),
(72, 'bEnableNonDeductible', ''),
(80, 'bEnableSelfRegistration', ''),
(999, 'bRegistered', '1'),
(1003, 'sChurchName', 'Montague Baptist Church'),
(1004, 'sChurchAddress', '12186 MillBank Rd'),
(1005, 'sChurchCity', 'King George'),
(1006, 'sChurchState', 'Virginia'),
(1007, 'sChurchZip', '22485'),
(1010, 'sHomeAreaCode', '540'),
(1027, 'sPledgeSummary2', 'as of'),
(1028, 'sDirectoryDisclaimer1', 'Every effort was made to insure the accuracy of this directory.  If there are any errors or omissions, please contact the church office.This directory is for the use of the people of'),
(1035, 'bEnableGravatarPhotos', ''),
(1036, 'bEnableExternalBackupTarget', ''),
(1037, 'sExternalBackupType', 'WebDAV'),
(1046, 'sLastIntegrityCheckTimeStamp', '20200611-194818'),
(1047, 'sChurchCountry', 'United States'),
(2010, 'bAllowEmptyLastName', ''),
(2013, 'sChurchWebSite', 'MontagueBaptistChurch.org'),
(2017, 'bEnableExternalCalendarAPI', ''),
(2045, 'bPHPMailerAutoTLS', ''),
(2046, 'sPHPMailerSMTPSecure', ''),
(2050, 'bEnabledMenuLinks', '1'),
(2060, 'IncludeDataInNewPersonNotifications', ''),
(2061, 'bSearchIncludeFamilyCustomProperties', ''),
(2062, 'bBackupExtraneousImages', ''),
(2064, 'sLastSoftwareUpdateCheckTimeStamp', '20200617-112644'),
(2065, 'bAllowPrereleaseUpgrade', ''),
(2069, 'bRequire2FA', ''),
(2071, 'bSendUserDeletedEmail', ''),
(20142, 'bHSTSEnable', '');

-- --------------------------------------------------------

--
-- Table structure for table `deposit_dep`
--

DROP TABLE IF EXISTS `deposit_dep`;
CREATE TABLE `deposit_dep` (
  `dep_ID` mediumint(9) UNSIGNED NOT NULL,
  `dep_Date` date DEFAULT NULL,
  `dep_Comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `dep_EnteredBy` mediumint(9) UNSIGNED DEFAULT NULL,
  `dep_Closed` tinyint(1) NOT NULL DEFAULT 0,
  `dep_Type` enum('Bank','CreditCard','BankDraft','eGive') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Bank'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci PACK_KEYS=0;

--
-- Dumping data for table `deposit_dep`
--

INSERT INTO `deposit_dep` (`dep_ID`, `dep_Date`, `dep_Comment`, `dep_EnteredBy`, `dep_Closed`, `dep_Type`) VALUES
(1, '2020-05-29', '', NULL, 0, 'Bank'),
(2, '2020-05-29', 'test', NULL, 0, 'Bank');

-- --------------------------------------------------------

--
-- Table structure for table `donateditem_di`
--

DROP TABLE IF EXISTS `donateditem_di`;
CREATE TABLE `donateditem_di` (
  `di_ID` mediumint(9) UNSIGNED NOT NULL,
  `di_item` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `di_FR_ID` mediumint(9) UNSIGNED NOT NULL,
  `di_donor_ID` mediumint(9) NOT NULL DEFAULT 0,
  `di_buyer_ID` mediumint(9) NOT NULL DEFAULT 0,
  `di_multibuy` smallint(1) NOT NULL DEFAULT 0,
  `di_title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `di_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `di_sellprice` decimal(8,2) DEFAULT NULL,
  `di_estprice` decimal(8,2) DEFAULT NULL,
  `di_minimum` decimal(8,2) DEFAULT NULL,
  `di_materialvalue` decimal(8,2) DEFAULT NULL,
  `di_EnteredBy` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `di_EnteredDate` date NOT NULL,
  `di_picture` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `donationfund_fun`
--

DROP TABLE IF EXISTS `donationfund_fun`;
CREATE TABLE `donationfund_fun` (
  `fun_ID` tinyint(3) NOT NULL,
  `fun_Active` enum('true','false') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'true',
  `fun_Name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fun_Description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donationfund_fun`
--

INSERT INTO `donationfund_fun` (`fun_ID`, `fun_Active`, `fun_Name`, `fun_Description`) VALUES
(1, 'true', 'General Fund', 'Donations for the operating budget'),
(2, 'true', 'Building Fund', 'Donations for Building Improvement'),
(3, 'true', 'Mission Fund', 'Donations for Missions Outreach');

-- --------------------------------------------------------

--
-- Table structure for table `egive_egv`
--

DROP TABLE IF EXISTS `egive_egv`;
CREATE TABLE `egive_egv` (
  `egv_egiveID` varchar(16) CHARACTER SET utf8 NOT NULL,
  `egv_famID` int(11) NOT NULL,
  `egv_DateEntered` datetime NOT NULL,
  `egv_DateLastEdited` datetime NOT NULL,
  `egv_EnteredBy` smallint(6) NOT NULL DEFAULT 0,
  `egv_EditedBy` smallint(6) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `email_count`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `email_count`;
CREATE TABLE `email_count` (
`email` varchar(100)
,`total` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `email_list`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `email_list`;
CREATE TABLE `email_list` (
`email` varchar(100)
,`type` varchar(11)
,`id` mediumint(9) unsigned
);

-- --------------------------------------------------------

--
-- Table structure for table `email_message_pending_emp`
--

DROP TABLE IF EXISTS `email_message_pending_emp`;
CREATE TABLE `email_message_pending_emp` (
  `emp_usr_id` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `emp_to_send` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `emp_subject` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `emp_message` text COLLATE utf8_unicode_ci NOT NULL,
  `emp_attach_name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `emp_attach` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_recipient_pending_erp`
--

DROP TABLE IF EXISTS `email_recipient_pending_erp`;
CREATE TABLE `email_recipient_pending_erp` (
  `erp_id` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `erp_usr_id` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `erp_num_attempt` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `erp_failed_time` datetime DEFAULT NULL,
  `erp_email_address` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `eventcountnames_evctnm`
--

DROP TABLE IF EXISTS `eventcountnames_evctnm`;
CREATE TABLE `eventcountnames_evctnm` (
  `evctnm_countid` int(5) NOT NULL,
  `evctnm_eventtypeid` smallint(5) NOT NULL DEFAULT 0,
  `evctnm_countname` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `evctnm_notes` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `eventcountnames_evctnm`
--

INSERT INTO `eventcountnames_evctnm` (`evctnm_countid`, `evctnm_eventtypeid`, `evctnm_countname`, `evctnm_notes`) VALUES
(1, 1, 'Total', ''),
(2, 1, 'Members', ''),
(3, 1, 'Visitors', ''),
(4, 2, 'Total', ''),
(5, 2, 'Members', ''),
(6, 2, 'Visitors', ''),
(7, 3, 'Total', ''),
(8, 4, 'Total', '');

-- --------------------------------------------------------

--
-- Table structure for table `eventcounts_evtcnt`
--

DROP TABLE IF EXISTS `eventcounts_evtcnt`;
CREATE TABLE `eventcounts_evtcnt` (
  `evtcnt_eventid` int(5) NOT NULL DEFAULT 0,
  `evtcnt_countid` int(5) NOT NULL DEFAULT 0,
  `evtcnt_countname` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `evtcnt_countcount` int(6) DEFAULT NULL,
  `evtcnt_notes` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `eventcounts_evtcnt`
--

INSERT INTO `eventcounts_evtcnt` (`evtcnt_eventid`, `evtcnt_countid`, `evtcnt_countname`, `evtcnt_countcount`, `evtcnt_notes`) VALUES
(1, 4, 'Total', 0, ''),
(1, 5, 'Members', 0, ''),
(1, 6, 'Visitors', 0, ''),
(2, 7, 'Total', 5, ''),
(6, 4, 'Total', 0, ''),
(6, 5, 'Members', 0, ''),
(6, 6, 'Visitors', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `events_event`
--

DROP TABLE IF EXISTS `events_event`;
CREATE TABLE `events_event` (
  `event_id` int(11) NOT NULL,
  `event_type` int(11) NOT NULL DEFAULT 0,
  `event_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `event_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `event_start` datetime NOT NULL,
  `event_end` datetime NOT NULL,
  `inactive` int(1) NOT NULL DEFAULT 0,
  `event_typename` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `location_id` int(11) DEFAULT NULL,
  `primary_contact_person_id` int(11) DEFAULT NULL,
  `secondary_contact_person_id` int(11) DEFAULT NULL,
  `event_url` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events_event`
--

INSERT INTO `events_event` (`event_id`, `event_type`, `event_title`, `event_desc`, `event_text`, `event_start`, `event_end`, `inactive`, `event_typename`, `location_id`, `primary_contact_person_id`, `secondary_contact_person_id`, `event_url`) VALUES
(1, 2, 'Adult Sunday School ', 'Covid 19 Sunday School Meeting @ Rehkemper\'s', 'Union Gospel Press Messianic Prophecies\nThe Redeemer will Come\n Isaiah 59', '2020-05-24 10:00:00', '2020-05-24 11:00:00', 0, '', NULL, NULL, NULL, NULL),
(2, 3, 'Work Day 2020-05-29-', 'Patch Floor in Sanctuary after foundation inspection', '<p>NA</p>', '2020-05-29 09:00:00', '2020-05-29 10:00:00', 0, '', NULL, NULL, NULL, NULL),
(3, 2, 'Adult Sunday School', 'At Rehkempers Covid-19 small group', 'UGP  A Light for the Gentiles Isaiah 49', '2020-05-17 10:00:00', '2020-05-17 11:30:00', 0, '', NULL, NULL, NULL, NULL),
(5, 4, 'Deacons Meeting', 'Discussion on church procedures to reopen after Covid-19 pandemic', 'Covid-19 Deacons Meeting', '2020-05-30 09:00:00', '2020-05-30 11:00:00', 0, '', NULL, NULL, NULL, NULL),
(6, 2, '2020-06-07 Sunday School', 'Ehud defeats the Moabites judges 3:12-32', '', '2020-06-07 10:30:00', '2020-06-07 11:30:00', 0, '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_attend`
--

DROP TABLE IF EXISTS `event_attend`;
CREATE TABLE `event_attend` (
  `attend_id` int(11) NOT NULL,
  `event_id` int(11) NOT NULL DEFAULT 0,
  `person_id` int(11) NOT NULL DEFAULT 0,
  `checkin_date` datetime DEFAULT NULL,
  `checkin_id` int(11) DEFAULT NULL,
  `checkout_date` datetime DEFAULT NULL,
  `checkout_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event_attend`
--

INSERT INTO `event_attend` (`attend_id`, `event_id`, `person_id`, `checkin_date`, `checkin_id`, `checkout_date`, `checkout_id`) VALUES
(1, 1, 4, '2020-05-29 06:37:51', NULL, NULL, NULL),
(2, 1, 5, '2020-05-29 06:38:03', NULL, NULL, NULL),
(3, 1, 2, '2020-05-29 06:38:09', NULL, NULL, NULL),
(4, 1, 3, '2020-05-29 06:38:15', NULL, NULL, NULL),
(5, 1, 12, '2020-05-29 06:38:23', NULL, NULL, NULL),
(6, 1, 13, '2020-05-29 06:38:30', NULL, NULL, NULL),
(7, 1, 19, '2020-05-29 06:39:39', NULL, NULL, NULL),
(8, 2, 12, '2020-05-29 12:29:27', 13, '2020-05-29 12:30:49', NULL),
(9, 2, 2, '2020-05-29 12:29:40', NULL, NULL, NULL),
(10, 2, 3, '2020-05-29 12:30:06', NULL, NULL, NULL),
(11, 2, 4, '2020-05-29 12:30:26', NULL, NULL, NULL),
(12, 3, 4, '2020-05-29 12:58:08', NULL, NULL, NULL),
(13, 3, 5, '2020-05-29 12:58:14', NULL, NULL, NULL),
(14, 3, 3, '2020-05-29 12:58:19', NULL, NULL, NULL),
(15, 3, 2, '2020-05-29 12:58:26', NULL, NULL, NULL),
(16, 2, 5, '2020-05-29 19:14:31', NULL, NULL, NULL),
(17, 2, 6, '2020-05-29 19:14:41', NULL, NULL, NULL),
(18, 2, 7, '2020-05-29 19:14:50', NULL, NULL, NULL),
(19, 6, 12, '2020-06-11 20:16:19', NULL, NULL, NULL),
(20, 6, 13, '2020-06-11 20:16:34', NULL, NULL, NULL),
(21, 6, 28, '2020-06-11 20:16:45', NULL, NULL, NULL),
(22, 6, 4, '2020-06-11 20:16:55', NULL, NULL, NULL),
(23, 6, 5, '2020-06-11 20:17:03', NULL, NULL, NULL),
(24, 6, 2, '2020-06-11 20:17:10', NULL, NULL, NULL),
(25, 6, 3, '2020-06-11 20:17:18', NULL, NULL, NULL),
(26, 6, 26, '2020-06-11 20:17:30', NULL, NULL, NULL),
(27, 6, 27, '2020-06-11 20:17:39', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event_audience`
--

DROP TABLE IF EXISTS `event_audience`;
CREATE TABLE `event_audience` (
  `event_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_types`
--

DROP TABLE IF EXISTS `event_types`;
CREATE TABLE `event_types` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `type_defstarttime` time NOT NULL DEFAULT '00:00:00',
  `type_defrecurtype` enum('none','weekly','monthly','yearly') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'none',
  `type_defrecurDOW` enum('Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Sunday',
  `type_defrecurDOM` char(2) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `type_defrecurDOY` date NOT NULL DEFAULT '2000-01-01',
  `type_active` int(1) NOT NULL DEFAULT 1,
  `type_grpid` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event_types`
--

INSERT INTO `event_types` (`type_id`, `type_name`, `type_defstarttime`, `type_defrecurtype`, `type_defrecurDOW`, `type_defrecurDOM`, `type_defrecurDOY`, `type_active`, `type_grpid`) VALUES
(1, 'Church Service', '10:30:00', 'weekly', 'Sunday', '', '2016-01-01', 1, NULL),
(2, 'Sunday School', '09:30:00', 'weekly', 'Sunday', '', '2016-01-01', 1, NULL),
(3, 'Work Day', '09:00:00', 'none', 'Sunday', '0', '2000-01-01', 1, NULL),
(4, 'Organization Meeting', '07:00:00', 'none', 'Sunday', '0', '2000-01-01', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `family_custom`
--

DROP TABLE IF EXISTS `family_custom`;
CREATE TABLE `family_custom` (
  `fam_ID` mediumint(9) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `family_custom`
--

INSERT INTO `family_custom` (`fam_ID`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17);

-- --------------------------------------------------------

--
-- Table structure for table `family_custom_master`
--

DROP TABLE IF EXISTS `family_custom_master`;
CREATE TABLE `family_custom_master` (
  `fam_custom_Order` smallint(6) NOT NULL DEFAULT 0,
  `fam_custom_Field` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fam_custom_Name` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fam_custom_Special` mediumint(8) UNSIGNED DEFAULT NULL,
  `fam_custom_FieldSec` tinyint(4) NOT NULL DEFAULT 1,
  `type_ID` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `family_fam`
--

DROP TABLE IF EXISTS `family_fam`;
CREATE TABLE `family_fam` (
  `fam_ID` mediumint(9) UNSIGNED NOT NULL,
  `fam_Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_Address1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_Address2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_City` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_Zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_Country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_HomePhone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_WorkPhone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_CellPhone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_WeddingDate` date DEFAULT NULL,
  `fam_DateEntered` datetime NOT NULL,
  `fam_DateLastEdited` datetime DEFAULT NULL,
  `fam_EnteredBy` smallint(5) NOT NULL DEFAULT 0,
  `fam_EditedBy` smallint(5) UNSIGNED DEFAULT 0,
  `fam_scanCheck` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_scanCredit` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fam_SendNewsLetter` enum('FALSE','TRUE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'FALSE',
  `fam_DateDeactivated` date DEFAULT NULL,
  `fam_OkToCanvass` enum('FALSE','TRUE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'FALSE',
  `fam_Canvasser` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `fam_Latitude` double DEFAULT NULL,
  `fam_Longitude` double DEFAULT NULL,
  `fam_Envelope` mediumint(9) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `family_fam`
--

INSERT INTO `family_fam` (`fam_ID`, `fam_Name`, `fam_Address1`, `fam_Address2`, `fam_City`, `fam_State`, `fam_Zip`, `fam_Country`, `fam_HomePhone`, `fam_WorkPhone`, `fam_CellPhone`, `fam_Email`, `fam_WeddingDate`, `fam_DateEntered`, `fam_DateLastEdited`, `fam_EnteredBy`, `fam_EditedBy`, `fam_scanCheck`, `fam_scanCredit`, `fam_SendNewsLetter`, `fam_DateDeactivated`, `fam_OkToCanvass`, `fam_Canvasser`, `fam_Latitude`, `fam_Longitude`, `fam_Envelope`) VALUES
(1, 'Rehkemper', '13459 Spruce Dr', '', 'King George', 'VA', '22485', 'United States', '5406237356', '5402841170', '', 'robrehk@gmail.com', '1975-08-09', '2020-05-29 05:33:42', '2020-06-04 19:04:04', 1, 2, NULL, NULL, 'TRUE', NULL, 'TRUE', 0, 38.296713, -77.107693, 0),
(2, 'Minter, Joe', '14322 Millbank Rd', '', 'King George', 'VA', '22485', 'United States', '', '', '', '', '1996-11-09', '2020-05-29 05:46:26', '2020-06-04 19:48:41', 1, 2, NULL, NULL, 'TRUE', NULL, 'TRUE', 0, 38.212436, -77.186423, 0),
(3, 'Prince, John', '9357 Kings Highway', '', 'King George', 'VA', '22485', 'United States', '', '', '', '', NULL, '2020-05-29 05:48:03', '2020-06-04 19:17:26', 1, 2, NULL, NULL, 'TRUE', NULL, 'TRUE', 0, 38.268054, -77.182943, 0),
(4, 'Prince, Paul', '9068 St. Anthonys Road', '', 'King George', 'VA', '22485', 'United States', '', '', '', '', '2005-02-01', '2020-05-29 05:49:18', '2020-06-04 19:13:35', 1, 2, NULL, NULL, 'TRUE', NULL, 'TRUE', 0, 38.270164, -77.191578, 0),
(5, 'Harmon', '', '', 'Colonial Beach', 'VA', '22485', 'United States', '', '', '', '', NULL, '2020-05-29 06:32:48', NULL, 1, 0, NULL, NULL, 'TRUE', NULL, 'TRUE', 0, 0, 0, 0),
(6, 'Zucker', '', '', 'King George', 'VA', '22485', 'United States', '', '', '', '', NULL, '2020-05-29 06:34:05', NULL, 1, 0, NULL, NULL, 'TRUE', NULL, 'TRUE', 0, 0, 0, 0),
(7, 'Martin', '', '', 'King George', 'VA', '22485', 'United States', '', '', '', '', NULL, '2020-05-29 06:35:15', NULL, 1, 0, NULL, NULL, 'TRUE', NULL, 'TRUE', 0, 0, 0, 0),
(8, 'Peacock', '12400 Beaver Dr', '', 'King George', 'VA', '22485', 'United States', '', '', '', '', NULL, '2020-05-29 12:18:43', '2020-06-04 18:36:56', 2, 2, NULL, NULL, 'TRUE', NULL, 'TRUE', 0, 38, 77, 0),
(9, 'Prille', '12400 Beaver Dr', '', 'King George', 'VA', '22485', 'United States', '5402076085', '', '', '', NULL, '2020-05-29 12:21:04', '2020-06-04 19:08:24', 2, 2, NULL, NULL, 'TRUE', NULL, 'TRUE', 0, 38, 77, 0),
(10, 'Bohlmann', '9346 CanvasBack Rd', '', 'Port Royal', 'VA', '', 'United States', '8047425249', '', '8048673211', '', NULL, '2020-05-30 19:48:40', '2020-06-03 11:20:58', 2, 2, NULL, NULL, 'TRUE', NULL, 'TRUE', 0, 38.129926, -77.116645, 0),
(11, 'Minter, Forest', 'P.O. Box 5', '', 'Dogue', 'VA', '22451', 'United States', '', '', '', '', NULL, '2020-05-31 06:40:48', '2020-06-04 18:33:35', 2, 2, NULL, NULL, 'TRUE', NULL, 'TRUE', 0, 0, 0, 0),
(12, 'Cook', '9068 St Anthony Rd', '', 'King George', 'VA', '22485', 'United States', '5407755042', '', '', '', NULL, '2020-06-01 05:17:03', '2020-06-03 20:51:44', 2, 2, NULL, NULL, 'TRUE', NULL, 'TRUE', 0, 38.271019, -77.192922, 0),
(13, 'Loving, Carol', '8400 Willow Hill Rd', '', 'King George', 'VA', '22485', 'United States', '', '', '', '', '2017-10-10', '2020-06-01 14:00:10', '2020-06-04 18:27:09', 2, 2, NULL, NULL, 'TRUE', NULL, 'TRUE', 0, 38.273552, -77.196917, 0),
(14, 'Southall', '7402 McDaniel Rd', 'P.O.Box 570', 'King George', 'VA', '22485', 'United States', '', '', '', '', NULL, '2020-06-01 19:38:27', '2020-06-04 19:28:57', 2, 2, NULL, NULL, 'TRUE', NULL, 'TRUE', 0, 38.307273, -77.178399, 0),
(15, 'Green H', '7322 Muscoe Pl', '', 'King George', 'VA', '22485', 'United States', '', '', '', '', NULL, '2020-06-01 19:48:58', '2020-06-04 18:21:28', 2, 2, NULL, NULL, 'TRUE', NULL, 'TRUE', 0, 38.288997, -77.225705, 0),
(16, 'Hobbs', '', '', 'Essex County', 'VA', '', 'United States', '', '', '', '', NULL, '2020-06-03 11:31:20', NULL, 2, 0, NULL, NULL, 'TRUE', NULL, 'TRUE', 0, 0, 0, 0),
(17, 'Fincham', '9371 Kings Hwy', '', 'King George', 'VA', '22485', 'United States', '5407757589', '', '', '', NULL, '2020-06-04 18:16:39', NULL, 2, 0, NULL, NULL, 'TRUE', NULL, 'TRUE', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fundraiser_fr`
--

DROP TABLE IF EXISTS `fundraiser_fr`;
CREATE TABLE `fundraiser_fr` (
  `fr_ID` mediumint(9) UNSIGNED NOT NULL,
  `fr_date` date DEFAULT NULL,
  `fr_title` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `fr_description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fr_EnteredBy` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `fr_EnteredDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `fundraiser_fr`
--

INSERT INTO `fundraiser_fr` (`fr_ID`, `fr_date`, `fr_title`, `fr_description`, `fr_EnteredBy`, `fr_EnteredDate`) VALUES
(1, '2020-05-29', 'General Fund', 'Regular donations for Church', 1, '2020-05-29'),
(2, '2020-05-29', 'Building Fund', 'for the improvement and expansion of the building', 1, '2020-05-29');

-- --------------------------------------------------------

--
-- Table structure for table `groupprop_1`
--

DROP TABLE IF EXISTS `groupprop_1`;
CREATE TABLE `groupprop_1` (
  `per_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `groupprop_2`
--

DROP TABLE IF EXISTS `groupprop_2`;
CREATE TABLE `groupprop_2` (
  `per_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `groupprop_master`
--

DROP TABLE IF EXISTS `groupprop_master`;
CREATE TABLE `groupprop_master` (
  `grp_ID` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `prop_ID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `prop_Field` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `prop_Name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prop_Description` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_ID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `prop_Special` mediumint(9) UNSIGNED DEFAULT NULL,
  `prop_PersonDisplay` enum('false','true') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Group-specific properties order, name, description, type';

-- --------------------------------------------------------

--
-- Table structure for table `group_grp`
--

DROP TABLE IF EXISTS `group_grp`;
CREATE TABLE `group_grp` (
  `grp_ID` mediumint(8) UNSIGNED NOT NULL,
  `grp_Type` tinyint(4) NOT NULL DEFAULT 0,
  `grp_RoleListID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `grp_DefaultRole` mediumint(9) NOT NULL DEFAULT 0,
  `grp_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `grp_Description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `grp_hasSpecialProps` tinyint(1) NOT NULL DEFAULT 0,
  `grp_active` tinyint(1) NOT NULL DEFAULT 1,
  `grp_include_email_export` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `group_grp`
--

INSERT INTO `group_grp` (`grp_ID`, `grp_Type`, `grp_RoleListID`, `grp_DefaultRole`, `grp_Name`, `grp_Description`, `grp_hasSpecialProps`, `grp_active`, `grp_include_email_export`) VALUES
(1, 4, 13, 2, 'Adult Sunday School ', '', 1, 1, 1),
(2, 1, 14, 1, 'Deacon', '', 1, 1, 1),
(3, 1, 15, 1, 'Trustee', '', 0, 1, 1),
(4, 1, 16, 1, 'Pastor', '', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `istlookup_lu`
--

DROP TABLE IF EXISTS `istlookup_lu`;
CREATE TABLE `istlookup_lu` (
  `lu_fam_ID` mediumint(9) NOT NULL DEFAULT 0,
  `lu_LookupDateTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `lu_DeliveryLine1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_DeliveryLine2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_City` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_ZipAddon` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_Zip` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_Addon` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_LOTNumber` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_DPCCheckdigit` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_RecordType` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_LastLine` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_CarrierRoute` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_ReturnCodes` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_ErrorCodes` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lu_ErrorDesc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='US Address Verification Lookups From Intelligent Search Tech';

-- --------------------------------------------------------

--
-- Table structure for table `kioskassginment_kasm`
--

DROP TABLE IF EXISTS `kioskassginment_kasm`;
CREATE TABLE `kioskassginment_kasm` (
  `kasm_ID` mediumint(9) UNSIGNED NOT NULL,
  `kasm_kdevId` mediumint(9) DEFAULT NULL,
  `kasm_AssignmentType` mediumint(9) DEFAULT NULL,
  `kasm_EventId` mediumint(9) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kioskdevice_kdev`
--

DROP TABLE IF EXISTS `kioskdevice_kdev`;
CREATE TABLE `kioskdevice_kdev` (
  `kdev_ID` mediumint(9) UNSIGNED NOT NULL,
  `kdev_GUIDHash` char(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kdev_Name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kdev_deviceType` mediumint(9) NOT NULL DEFAULT 0,
  `kdev_lastHeartbeat` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `kdev_Accepted` tinyint(1) DEFAULT NULL,
  `kdev_PendingCommands` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `list_lst`
--

DROP TABLE IF EXISTS `list_lst`;
CREATE TABLE `list_lst` (
  `lst_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `lst_OptionID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `lst_OptionSequence` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lst_OptionName` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `list_lst`
--

INSERT INTO `list_lst` (`lst_ID`, `lst_OptionID`, `lst_OptionSequence`, `lst_OptionName`) VALUES
(1, 1, 1, 'Member'),
(1, 2, 2, 'Regular Attender'),
(1, 3, 3, 'Guest'),
(1, 5, 4, 'Non-Attender'),
(1, 4, 5, 'Non-Attender (staff)'),
(2, 1, 1, 'Head of Household'),
(2, 2, 2, 'Spouse'),
(2, 3, 3, 'Child'),
(2, 4, 4, 'Other Relative'),
(2, 5, 5, 'Non Relative'),
(3, 1, 1, 'Ministry'),
(3, 2, 2, 'Team'),
(3, 3, 3, 'Bible Study'),
(3, 4, 4, 'Sunday School Class'),
(4, 1, 1, 'True / False'),
(4, 2, 2, 'Date'),
(4, 3, 3, 'Text Field (50 char)'),
(4, 4, 4, 'Text Field (100 char)'),
(4, 5, 5, 'Text Field (Long)'),
(4, 6, 6, 'Year'),
(4, 7, 7, 'Season'),
(4, 8, 8, 'Number'),
(4, 9, 9, 'Person from Group'),
(4, 10, 10, 'Money'),
(4, 11, 11, 'Phone Number'),
(4, 12, 12, 'Custom Drop-Down List'),
(5, 1, 1, 'bAll'),
(5, 2, 2, 'bAdmin'),
(5, 3, 3, 'bAddRecords'),
(5, 4, 4, 'bEditRecords'),
(5, 5, 5, 'bDeleteRecords'),
(5, 7, 7, 'bManageGroups'),
(5, 8, 8, 'bFinance'),
(5, 9, 9, 'bNotes'),
(5, 11, 11, 'bCanvasser'),
(10, 1, 1, 'Teacher'),
(10, 2, 2, 'Student'),
(11, 1, 1, 'Member'),
(12, 1, 1, 'Teacher'),
(12, 2, 2, 'Student'),
(13, 1, 2, 'Teacher'),
(13, 2, 1, 'Student'),
(14, 1, 1, 'Member'),
(15, 1, 1, 'Member'),
(16, 1, 1, 'Member'),
(16, 2, 2, 'Pastor'),
(1, 6, 6, 'Missionary');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE `locations` (
  `location_id` int(11) NOT NULL,
  `location_typeId` int(11) NOT NULL,
  `location_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `location_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `location_city` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `location_state` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `location_zip` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `location_country` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `location_phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location_timzezone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_links`
--

DROP TABLE IF EXISTS `menu_links`;
CREATE TABLE `menu_links` (
  `linkId` mediumint(8) UNSIGNED NOT NULL,
  `linkName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkUri` text COLLATE utf8_unicode_ci NOT NULL,
  `linkOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `multibuy_mb`
--

DROP TABLE IF EXISTS `multibuy_mb`;
CREATE TABLE `multibuy_mb` (
  `mb_ID` mediumint(9) UNSIGNED NOT NULL,
  `mb_per_ID` mediumint(9) NOT NULL DEFAULT 0,
  `mb_item_ID` mediumint(9) NOT NULL DEFAULT 0,
  `mb_count` decimal(8,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `note_nte`
--

DROP TABLE IF EXISTS `note_nte`;
CREATE TABLE `note_nte` (
  `nte_ID` mediumint(8) UNSIGNED NOT NULL,
  `nte_per_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `nte_fam_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `nte_Private` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `nte_Text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `nte_DateEntered` datetime NOT NULL,
  `nte_DateLastEdited` datetime DEFAULT NULL,
  `nte_EnteredBy` mediumint(8) NOT NULL DEFAULT 0,
  `nte_EditedBy` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `nte_Type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `note_nte`
--

INSERT INTO `note_nte` (`nte_ID`, `nte_per_ID`, `nte_fam_ID`, `nte_Private`, `nte_Text`, `nte_DateEntered`, `nte_DateLastEdited`, `nte_EnteredBy`, `nte_EditedBy`, `nte_Type`) VALUES
(1, 1, 0, 0, 'system user changed password', '2020-05-29 05:27:18', NULL, 1, 0, 'user'),
(2, 2, 0, 0, 'Created via Family', '2020-05-29 05:33:42', NULL, 1, 0, 'create'),
(3, 3, 0, 0, 'Created via Family', '2020-05-29 05:33:42', NULL, 1, 0, 'create'),
(4, 0, 1, 0, 'Created', '2020-05-29 05:33:42', NULL, 1, 0, 'create'),
(5, 2, 0, 0, 'Updated via Family', '2020-05-29 05:34:57', NULL, 1, 0, 'edit'),
(6, 3, 0, 0, 'Updated via Family', '2020-05-29 05:34:57', NULL, 1, 0, 'edit'),
(7, 0, 1, 0, 'Updated', '2020-05-29 05:34:57', NULL, 1, 0, 'edit'),
(8, 4, 0, 0, 'Created via Family', '2020-05-29 05:46:26', NULL, 1, 0, 'create'),
(9, 5, 0, 0, 'Created via Family', '2020-05-29 05:46:26', NULL, 1, 0, 'create'),
(10, 0, 2, 0, 'Created', '2020-05-29 05:46:26', NULL, 1, 0, 'create'),
(11, 6, 0, 0, 'Created via Family', '2020-05-29 05:48:03', NULL, 1, 0, 'create'),
(12, 7, 0, 0, 'Created via Family', '2020-05-29 05:48:03', NULL, 1, 0, 'create'),
(13, 8, 0, 0, 'Created via Family', '2020-05-29 05:48:03', NULL, 1, 0, 'create'),
(14, 9, 0, 0, 'Created via Family', '2020-05-29 05:48:03', NULL, 1, 0, 'create'),
(15, 0, 3, 0, 'Created', '2020-05-29 05:48:03', NULL, 1, 0, 'create'),
(16, 10, 0, 0, 'Created via Family', '2020-05-29 05:49:18', NULL, 1, 0, 'create'),
(17, 11, 0, 0, 'Created via Family', '2020-05-29 05:49:18', NULL, 1, 0, 'create'),
(18, 0, 4, 0, 'Created', '2020-05-29 05:49:18', NULL, 1, 0, 'create'),
(19, 4, 0, 0, 'Added to group: Adult Sunday School ', '2020-05-29 05:55:24', NULL, 1, 0, 'group'),
(20, 5, 0, 0, 'Added to group: Adult Sunday School ', '2020-05-29 05:55:35', NULL, 1, 0, 'group'),
(21, 2, 0, 0, 'Added to group: Adult Sunday School ', '2020-05-29 05:55:49', NULL, 1, 0, 'group'),
(22, 3, 0, 0, 'Added to group: Adult Sunday School ', '2020-05-29 05:56:00', NULL, 1, 0, 'group'),
(23, 10, 0, 0, 'Updated via Family', '2020-05-29 06:30:17', NULL, 1, 0, 'edit'),
(24, 11, 0, 0, 'Updated via Family', '2020-05-29 06:30:17', NULL, 1, 0, 'edit'),
(25, 0, 4, 0, 'Updated', '2020-05-29 06:30:17', NULL, 1, 0, 'edit'),
(26, 6, 0, 0, 'Updated via Family', '2020-05-29 06:31:32', NULL, 1, 0, 'edit'),
(27, 7, 0, 0, 'Updated via Family', '2020-05-29 06:31:32', NULL, 1, 0, 'edit'),
(28, 8, 0, 0, 'Updated via Family', '2020-05-29 06:31:32', NULL, 1, 0, 'edit'),
(29, 9, 0, 0, 'Updated via Family', '2020-05-29 06:31:32', NULL, 1, 0, 'edit'),
(30, 0, 3, 0, 'Updated', '2020-05-29 06:31:32', NULL, 1, 0, 'edit'),
(31, 12, 0, 0, 'Created via Family', '2020-05-29 06:32:48', NULL, 1, 0, 'create'),
(32, 13, 0, 0, 'Created via Family', '2020-05-29 06:32:48', NULL, 1, 0, 'create'),
(33, 0, 5, 0, 'Created', '2020-05-29 06:32:48', NULL, 1, 0, 'create'),
(34, 14, 0, 0, 'Created via Family', '2020-05-29 06:34:05', NULL, 1, 0, 'create'),
(35, 15, 0, 0, 'Created via Family', '2020-05-29 06:34:05', NULL, 1, 0, 'create'),
(36, 16, 0, 0, 'Created via Family', '2020-05-29 06:34:05', NULL, 1, 0, 'create'),
(37, 17, 0, 0, 'Created via Family', '2020-05-29 06:34:05', NULL, 1, 0, 'create'),
(38, 0, 6, 0, 'Created', '2020-05-29 06:34:05', NULL, 1, 0, 'create'),
(39, 18, 0, 0, 'Created via Family', '2020-05-29 06:35:15', NULL, 1, 0, 'create'),
(40, 0, 7, 0, 'Created', '2020-05-29 06:35:15', NULL, 1, 0, 'create'),
(41, 19, 0, 0, 'Created', '2020-05-29 06:39:10', NULL, 1, 0, 'create'),
(42, 2, 0, 0, 'system user created', '2020-05-29 12:07:01', NULL, 1, 0, 'user'),
(43, 2, 0, 0, 'system user updated', '2020-05-29 12:08:00', NULL, 1, 0, 'user'),
(44, 2, 0, 0, 'system user password changed by admin', '2020-05-29 12:09:03', NULL, 1, 0, 'user'),
(45, 2, 0, 0, 'system user password changed by admin', '2020-05-29 12:10:27', NULL, 1, 0, 'user'),
(46, 2, 0, 0, NULL, '2020-05-29 12:10:53', NULL, 1, 0, 'user'),
(47, 20, 0, 0, 'Created via Family', '2020-05-29 12:18:43', NULL, 2, 0, 'create'),
(48, 21, 0, 0, 'Created via Family', '2020-05-29 12:18:43', NULL, 2, 0, 'create'),
(49, 22, 0, 0, 'Created via Family', '2020-05-29 12:18:43', NULL, 2, 0, 'create'),
(50, 23, 0, 0, 'Created via Family', '2020-05-29 12:18:43', NULL, 2, 0, 'create'),
(51, 0, 8, 0, 'Created', '2020-05-29 12:18:43', NULL, 2, 0, 'create'),
(52, 24, 0, 0, 'Created via Family', '2020-05-29 12:21:04', NULL, 2, 0, 'create'),
(53, 25, 0, 0, 'Created via Family', '2020-05-29 12:21:04', NULL, 2, 0, 'create'),
(54, 0, 9, 0, 'Created', '2020-05-29 12:21:04', NULL, 2, 0, 'create'),
(55, 24, 0, 0, 'Updated via Family', '2020-05-29 12:22:02', NULL, 2, 0, 'edit'),
(56, 25, 0, 0, 'Updated via Family', '2020-05-29 12:22:02', NULL, 2, 0, 'edit'),
(57, 0, 9, 0, 'Updated', '2020-05-29 12:22:02', NULL, 2, 0, 'edit'),
(58, 20, 0, 0, 'Added to group: Pastor', '2020-05-29 12:26:59', NULL, 2, 0, 'group'),
(59, 12, 0, 0, 'Added to group: Adult Sunday School ', '2020-05-29 13:02:25', NULL, 2, 0, 'group'),
(60, 12, 0, 0, 'Added to group: Deacon', '2020-05-29 13:02:36', NULL, 2, 0, 'group'),
(61, 2, 0, 0, 'Profile Image uploaded', '2020-05-29 19:24:03', NULL, 2, 0, 'photo'),
(62, 26, 0, 0, 'Created via Family', '2020-05-30 19:48:40', NULL, 2, 0, 'create'),
(63, 27, 0, 0, 'Created via Family', '2020-05-30 19:48:40', NULL, 2, 0, 'create'),
(64, 0, 10, 0, 'Created', '2020-05-30 19:48:40', NULL, 2, 0, 'create'),
(65, 28, 0, 0, 'Created', '2020-05-31 06:18:25', NULL, 2, 0, 'create'),
(66, 0, 11, 0, 'Created', '2020-05-31 06:40:48', NULL, 2, 0, 'create'),
(67, 28, 0, 0, 'Updated', '2020-05-31 06:41:53', NULL, 2, 0, 'edit'),
(68, 4, 0, 0, 'Updated via Family', '2020-05-31 06:42:44', NULL, 2, 0, 'edit'),
(69, 5, 0, 0, 'Updated via Family', '2020-05-31 06:42:44', NULL, 2, 0, 'edit'),
(70, 0, 2, 0, 'Updated', '2020-05-31 06:42:44', NULL, 2, 0, 'edit'),
(71, 29, 0, 0, 'Created via Family', '2020-06-01 05:17:03', NULL, 2, 0, 'create'),
(72, 30, 0, 0, 'Created via Family', '2020-06-01 05:17:03', NULL, 2, 0, 'create'),
(73, 0, 12, 0, 'Created', '2020-06-01 05:17:03', NULL, 2, 0, 'create'),
(74, 29, 0, 0, 'Updated via Family', '2020-06-01 05:18:22', NULL, 2, 0, 'edit'),
(75, 30, 0, 0, 'Updated via Family', '2020-06-01 05:18:22', NULL, 2, 0, 'edit'),
(76, 0, 12, 0, 'Updated', '2020-06-01 05:18:22', NULL, 2, 0, 'edit'),
(77, 29, 0, 0, 'Updated via Family', '2020-06-01 05:25:20', NULL, 2, 0, 'edit'),
(78, 30, 0, 0, 'Updated via Family', '2020-06-01 05:25:20', NULL, 2, 0, 'edit'),
(79, 0, 12, 0, 'Updated', '2020-06-01 05:25:20', NULL, 2, 0, 'edit'),
(80, 0, 13, 0, 'Created', '2020-06-01 14:00:10', NULL, 2, 0, 'create'),
(81, 31, 0, 0, 'Created', '2020-06-01 14:00:41', NULL, 2, 0, 'create'),
(82, 31, 0, 0, 'Updated via Family', '2020-06-01 14:01:24', NULL, 2, 0, 'edit'),
(83, 0, 13, 0, 'Updated', '2020-06-01 14:01:24', NULL, 2, 0, 'edit'),
(84, 32, 0, 0, 'Created', '2020-06-01 14:04:30', NULL, 2, 0, 'create'),
(85, 31, 0, 0, 'Updated via Family', '2020-06-01 14:05:02', NULL, 2, 0, 'edit'),
(86, 0, 13, 0, 'Updated', '2020-06-01 14:05:02', NULL, 2, 0, 'edit'),
(87, 33, 0, 0, 'Created via Family', '2020-06-01 19:38:27', NULL, 2, 0, 'create'),
(88, 34, 0, 0, 'Created via Family', '2020-06-01 19:38:27', NULL, 2, 0, 'create'),
(89, 0, 14, 0, 'Created', '2020-06-01 19:38:27', NULL, 2, 0, 'create'),
(90, 10, 0, 0, 'Updated via Family', '2020-06-01 19:43:12', NULL, 2, 0, 'edit'),
(91, 11, 0, 0, 'Updated via Family', '2020-06-01 19:43:12', NULL, 2, 0, 'edit'),
(92, 0, 4, 0, 'Updated', '2020-06-01 19:43:12', NULL, 2, 0, 'edit'),
(93, 6, 0, 0, 'Updated via Family', '2020-06-01 19:44:01', NULL, 2, 0, 'edit'),
(94, 7, 0, 0, 'Updated via Family', '2020-06-01 19:44:01', NULL, 2, 0, 'edit'),
(95, 8, 0, 0, 'Updated via Family', '2020-06-01 19:44:01', NULL, 2, 0, 'edit'),
(96, 9, 0, 0, 'Updated via Family', '2020-06-01 19:44:01', NULL, 2, 0, 'edit'),
(97, 0, 3, 0, 'Updated', '2020-06-01 19:44:01', NULL, 2, 0, 'edit'),
(98, 10, 0, 0, 'Updated via Family', '2020-06-01 19:46:03', NULL, 2, 0, 'edit'),
(99, 11, 0, 0, 'Updated via Family', '2020-06-01 19:46:03', NULL, 2, 0, 'edit'),
(100, 0, 4, 0, 'Updated', '2020-06-01 19:46:03', NULL, 2, 0, 'edit'),
(101, 0, 15, 0, 'Created', '2020-06-01 19:48:58', NULL, 2, 0, 'create'),
(102, 26, 0, 0, 'Updated via Family', '2020-06-03 11:20:58', NULL, 2, 0, 'edit'),
(103, 27, 0, 0, 'Updated via Family', '2020-06-03 11:20:58', NULL, 2, 0, 'edit'),
(104, 0, 10, 0, 'Updated', '2020-06-03 11:20:58', NULL, 2, 0, 'edit'),
(105, 0, 15, 0, 'Updated', '2020-06-03 11:21:44', NULL, 2, 0, 'edit'),
(106, 35, 0, 0, 'Created', '2020-06-03 11:22:38', NULL, 2, 0, 'create'),
(109, 33, 0, 0, 'Updated via Family', '2020-06-03 11:24:07', NULL, 2, 0, 'edit'),
(110, 34, 0, 0, 'Updated via Family', '2020-06-03 11:24:07', NULL, 2, 0, 'edit'),
(111, 0, 14, 0, 'Updated', '2020-06-03 11:24:07', NULL, 2, 0, 'edit'),
(112, 33, 0, 0, 'Updated via Family', '2020-06-03 11:24:47', NULL, 2, 0, 'edit'),
(113, 34, 0, 0, 'Updated via Family', '2020-06-03 11:24:47', NULL, 2, 0, 'edit'),
(114, 0, 14, 0, 'Updated', '2020-06-03 11:24:47', NULL, 2, 0, 'edit'),
(115, 14, 0, 0, 'Profile Image Deleted', '2020-06-03 11:25:26', NULL, 2, 0, 'photo'),
(116, 38, 0, 0, 'Created via Family', '2020-06-03 11:31:20', NULL, 2, 0, 'create'),
(117, 39, 0, 0, 'Created via Family', '2020-06-03 11:31:20', NULL, 2, 0, 'create'),
(118, 0, 16, 0, 'Created', '2020-06-03 11:31:20', NULL, 2, 0, 'create'),
(119, 2, 0, 0, 'Updated', '2020-06-03 11:33:19', NULL, 2, 0, 'edit'),
(120, 29, 0, 0, 'Updated via Family', '2020-06-03 20:51:44', NULL, 2, 0, 'edit'),
(121, 30, 0, 0, 'Updated via Family', '2020-06-03 20:51:44', NULL, 2, 0, 'edit'),
(122, 0, 12, 0, 'Updated', '2020-06-03 20:51:44', NULL, 2, 0, 'edit'),
(123, 40, 0, 0, 'Created', '2020-06-04 18:13:55', NULL, 2, 0, 'create'),
(124, 41, 0, 0, 'Created via Family', '2020-06-04 18:16:39', NULL, 2, 0, 'create'),
(125, 0, 17, 0, 'Created', '2020-06-04 18:16:39', NULL, 2, 0, 'create'),
(126, 35, 0, 0, 'Updated', '2020-06-04 18:18:28', NULL, 2, 0, 'edit'),
(129, 35, 0, 0, 'Updated via Family', '2020-06-04 18:21:28', NULL, 2, 0, 'edit'),
(130, 0, 15, 0, 'Updated', '2020-06-04 18:21:28', NULL, 2, 0, 'edit'),
(131, 13, 0, 0, 'Updated', '2020-06-04 18:22:50', NULL, 2, 0, 'edit'),
(132, 31, 0, 0, 'Updated', '2020-06-04 18:24:02', NULL, 2, 0, 'edit'),
(133, 31, 0, 0, 'Updated via Family', '2020-06-04 18:27:09', NULL, 2, 0, 'edit'),
(134, 32, 0, 0, 'Updated via Family', '2020-06-04 18:27:09', NULL, 2, 0, 'edit'),
(135, 0, 13, 0, 'Updated', '2020-06-04 18:27:09', NULL, 2, 0, 'edit'),
(136, 32, 0, 0, 'Updated', '2020-06-04 18:28:12', NULL, 2, 0, 'edit'),
(137, 31, 0, 0, 'Updated', '2020-06-04 18:29:05', NULL, 2, 0, 'edit'),
(138, 28, 0, 0, 'Updated', '2020-06-04 18:31:11', NULL, 2, 0, 'edit'),
(139, 28, 0, 0, 'Updated via Family', '2020-06-04 18:33:35', NULL, 2, 0, 'edit'),
(140, 0, 11, 0, 'Updated', '2020-06-04 18:33:35', NULL, 2, 0, 'edit'),
(141, 20, 0, 0, 'Updated', '2020-06-04 18:34:41', NULL, 2, 0, 'edit'),
(142, 21, 0, 0, 'Updated', '2020-06-04 18:35:30', NULL, 2, 0, 'edit'),
(143, 20, 0, 0, 'Updated', '2020-06-04 18:36:21', NULL, 2, 0, 'edit'),
(144, 20, 0, 0, 'Updated via Family', '2020-06-04 18:36:56', NULL, 2, 0, 'edit'),
(145, 21, 0, 0, 'Updated via Family', '2020-06-04 18:36:56', NULL, 2, 0, 'edit'),
(146, 22, 0, 0, 'Updated via Family', '2020-06-04 18:36:56', NULL, 2, 0, 'edit'),
(147, 23, 0, 0, 'Updated via Family', '2020-06-04 18:36:56', NULL, 2, 0, 'edit'),
(148, 0, 8, 0, 'Updated', '2020-06-04 18:36:56', NULL, 2, 0, 'edit'),
(149, 22, 0, 0, 'Updated', '2020-06-04 18:37:37', NULL, 2, 0, 'edit'),
(150, 5, 0, 0, 'Updated', '2020-06-04 19:01:00', NULL, 2, 0, 'edit'),
(151, 4, 0, 0, 'Updated', '2020-06-04 19:02:09', NULL, 2, 0, 'edit'),
(152, 4, 0, 0, 'Updated via Family', '2020-06-04 19:02:49', NULL, 2, 0, 'edit'),
(153, 5, 0, 0, 'Updated via Family', '2020-06-04 19:02:49', NULL, 2, 0, 'edit'),
(154, 0, 2, 0, 'Updated', '2020-06-04 19:02:49', NULL, 2, 0, 'edit'),
(155, 2, 0, 0, 'Updated via Family', '2020-06-04 19:04:04', NULL, 2, 0, 'edit'),
(156, 3, 0, 0, 'Updated via Family', '2020-06-04 19:04:04', NULL, 2, 0, 'edit'),
(157, 0, 1, 0, 'Updated', '2020-06-04 19:04:04', NULL, 2, 0, 'edit'),
(158, 24, 0, 0, 'Updated via Family', '2020-06-04 19:08:24', NULL, 2, 0, 'edit'),
(159, 25, 0, 0, 'Updated via Family', '2020-06-04 19:08:24', NULL, 2, 0, 'edit'),
(160, 0, 9, 0, 'Updated', '2020-06-04 19:08:24', NULL, 2, 0, 'edit'),
(161, 24, 0, 0, 'Updated', '2020-06-04 19:09:21', NULL, 2, 0, 'edit'),
(162, 25, 0, 0, 'Updated', '2020-06-04 19:10:11', NULL, 2, 0, 'edit'),
(163, 10, 0, 0, 'Updated', '2020-06-04 19:11:57', NULL, 2, 0, 'edit'),
(164, 11, 0, 0, 'Updated', '2020-06-04 19:13:04', NULL, 2, 0, 'edit'),
(165, 10, 0, 0, 'Updated via Family', '2020-06-04 19:13:35', NULL, 2, 0, 'edit'),
(166, 11, 0, 0, 'Updated via Family', '2020-06-04 19:13:35', NULL, 2, 0, 'edit'),
(167, 0, 4, 0, 'Updated', '2020-06-04 19:13:35', NULL, 2, 0, 'edit'),
(168, 6, 0, 0, 'Updated via Family', '2020-06-04 19:17:26', NULL, 2, 0, 'edit'),
(169, 7, 0, 0, 'Updated via Family', '2020-06-04 19:17:26', NULL, 2, 0, 'edit'),
(170, 8, 0, 0, 'Updated via Family', '2020-06-04 19:17:26', NULL, 2, 0, 'edit'),
(171, 9, 0, 0, 'Updated via Family', '2020-06-04 19:17:26', NULL, 2, 0, 'edit'),
(172, 0, 3, 0, 'Updated', '2020-06-04 19:17:26', NULL, 2, 0, 'edit'),
(173, 11, 0, 0, 'Updated', '2020-06-04 19:18:35', NULL, 2, 0, 'edit'),
(174, 7, 0, 0, 'Updated', '2020-06-04 19:20:17', NULL, 2, 0, 'edit'),
(175, 7, 0, 0, 'Updated', '2020-06-04 19:21:11', NULL, 2, 0, 'edit'),
(176, 8, 0, 0, 'Updated', '2020-06-04 19:24:33', NULL, 2, 0, 'edit'),
(177, 9, 0, 0, 'Updated', '2020-06-04 19:25:22', NULL, 2, 0, 'edit'),
(178, 42, 0, 0, 'Created', '2020-06-04 19:26:46', NULL, 2, 0, 'create'),
(179, 33, 0, 0, 'Updated via Family', '2020-06-04 19:28:57', NULL, 2, 0, 'edit'),
(180, 34, 0, 0, 'Updated via Family', '2020-06-04 19:28:57', NULL, 2, 0, 'edit'),
(181, 0, 14, 0, 'Updated', '2020-06-04 19:28:57', NULL, 2, 0, 'edit'),
(182, 33, 0, 0, 'Updated', '2020-06-04 19:30:20', NULL, 2, 0, 'edit'),
(183, 34, 0, 0, 'Updated', '2020-06-04 19:30:57', NULL, 2, 0, 'edit'),
(184, 4, 0, 0, 'Updated via Family', '2020-06-04 19:48:41', NULL, 2, 0, 'edit'),
(185, 5, 0, 0, 'Updated via Family', '2020-06-04 19:48:41', NULL, 2, 0, 'edit'),
(186, 0, 2, 0, 'Updated', '2020-06-04 19:48:41', NULL, 2, 0, 'edit'),
(187, 1, 0, 0, 'Updated', '2020-06-04 19:50:08', NULL, 2, 0, 'edit'),
(188, 40, 0, 0, 'Updated', '2020-06-04 19:51:18', NULL, 2, 0, 'edit'),
(189, 27, 0, 0, 'Added to group: Adult Sunday School ', '2020-06-11 20:19:49', NULL, 2, 0, 'group'),
(190, 26, 0, 0, 'Added to group: Adult Sunday School ', '2020-06-11 20:19:58', NULL, 2, 0, 'group'),
(191, 19, 0, 0, 'Added to group: Adult Sunday School ', '2020-06-11 20:20:08', NULL, 2, 0, 'group');

-- --------------------------------------------------------

--
-- Table structure for table `paddlenum_pn`
--

DROP TABLE IF EXISTS `paddlenum_pn`;
CREATE TABLE `paddlenum_pn` (
  `pn_ID` mediumint(9) UNSIGNED NOT NULL,
  `pn_fr_ID` mediumint(9) UNSIGNED DEFAULT NULL,
  `pn_Num` mediumint(9) UNSIGNED DEFAULT NULL,
  `pn_per_ID` mediumint(9) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person2group2role_p2g2r`
--

DROP TABLE IF EXISTS `person2group2role_p2g2r`;
CREATE TABLE `person2group2role_p2g2r` (
  `p2g2r_per_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `p2g2r_grp_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `p2g2r_rle_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `person2group2role_p2g2r`
--

INSERT INTO `person2group2role_p2g2r` (`p2g2r_per_ID`, `p2g2r_grp_ID`, `p2g2r_rle_ID`) VALUES
(2, 1, 1),
(3, 1, 2),
(4, 1, 2),
(5, 1, 2),
(12, 1, 2),
(12, 2, 1),
(19, 1, 2),
(20, 4, 2),
(26, 1, 2),
(27, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `person2volunteeropp_p2vo`
--

DROP TABLE IF EXISTS `person2volunteeropp_p2vo`;
CREATE TABLE `person2volunteeropp_p2vo` (
  `p2vo_ID` mediumint(9) NOT NULL,
  `p2vo_per_ID` mediumint(9) DEFAULT NULL,
  `p2vo_vol_ID` mediumint(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `person_custom`
--

DROP TABLE IF EXISTS `person_custom`;
CREATE TABLE `person_custom` (
  `per_ID` mediumint(9) NOT NULL DEFAULT 0,
  `c1` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `person_custom`
--

INSERT INTO `person_custom` (`per_ID`, `c1`) VALUES
(1, NULL),
(2, NULL),
(3, NULL),
(4, NULL),
(5, NULL),
(6, NULL),
(7, NULL),
(8, '2016-02-26'),
(9, '2016-02-27'),
(10, NULL),
(11, NULL),
(12, NULL),
(13, NULL),
(14, NULL),
(15, NULL),
(16, NULL),
(17, NULL),
(18, NULL),
(19, NULL),
(20, NULL),
(21, NULL),
(22, NULL),
(23, NULL),
(24, NULL),
(25, NULL),
(26, NULL),
(27, NULL),
(28, NULL),
(29, NULL),
(30, NULL),
(31, NULL),
(32, NULL),
(33, NULL),
(34, '2016-04-29'),
(35, NULL),
(38, NULL),
(39, NULL),
(40, NULL),
(41, NULL),
(42, '2016-02-07');

-- --------------------------------------------------------

--
-- Table structure for table `person_custom_master`
--

DROP TABLE IF EXISTS `person_custom_master`;
CREATE TABLE `person_custom_master` (
  `custom_Order` smallint(6) NOT NULL DEFAULT 0,
  `custom_Field` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_Name` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `custom_Special` mediumint(8) UNSIGNED DEFAULT NULL,
  `custom_FieldSec` tinyint(4) NOT NULL,
  `type_ID` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `person_custom_master`
--

INSERT INTO `person_custom_master` (`custom_Order`, `custom_Field`, `custom_Name`, `custom_Special`, `custom_FieldSec`, `type_ID`) VALUES
(1, 'c1', 'Baptismal DAte', NULL, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `person_per`
--

DROP TABLE IF EXISTS `person_per`;
CREATE TABLE `person_per` (
  `per_ID` mediumint(9) UNSIGNED NOT NULL,
  `per_Title` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_FirstName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_MiddleName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_LastName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_Suffix` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_Address1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_Address2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_City` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_State` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_Zip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_Country` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_HomePhone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_WorkPhone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_CellPhone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_Email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_WorkEmail` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_BirthMonth` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `per_BirthDay` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `per_BirthYear` year(4) DEFAULT NULL,
  `per_MembershipDate` date DEFAULT NULL,
  `per_Gender` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `per_fmr_ID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `per_cls_ID` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `per_fam_ID` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `per_Envelope` smallint(5) UNSIGNED DEFAULT NULL,
  `per_DateLastEdited` datetime DEFAULT NULL,
  `per_DateEntered` datetime NOT NULL,
  `per_EnteredBy` smallint(5) NOT NULL DEFAULT 0,
  `per_EditedBy` smallint(5) UNSIGNED DEFAULT 0,
  `per_FriendDate` date DEFAULT NULL,
  `per_Flags` mediumint(9) NOT NULL DEFAULT 0,
  `per_FacebookID` bigint(20) UNSIGNED DEFAULT NULL,
  `per_Twitter` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `per_LinkedIn` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `person_per`
--

INSERT INTO `person_per` (`per_ID`, `per_Title`, `per_FirstName`, `per_MiddleName`, `per_LastName`, `per_Suffix`, `per_Address1`, `per_Address2`, `per_City`, `per_State`, `per_Zip`, `per_Country`, `per_HomePhone`, `per_WorkPhone`, `per_CellPhone`, `per_Email`, `per_WorkEmail`, `per_BirthMonth`, `per_BirthDay`, `per_BirthYear`, `per_MembershipDate`, `per_Gender`, `per_fmr_ID`, `per_cls_ID`, `per_fam_ID`, `per_Envelope`, `per_DateLastEdited`, `per_DateEntered`, `per_EnteredBy`, `per_EditedBy`, `per_FriendDate`, `per_Flags`, `per_FacebookID`, `per_Twitter`, `per_LinkedIn`) VALUES
(1, '', 'Church', '', 'Admin', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, NULL, NULL, 0, 0, 4, 0, 0, '2020-06-04 19:50:08', '2004-08-25 18:00:00', 1, 2, NULL, 0, 0, '', ''),
(2, '', 'Robert', 'G', 'Rehkemper', '', '', '', '', '', '', '', '', '', '', 'robrehk@gmail.com', '', 7, 27, 1954, NULL, 1, 1, 1, 1, 0, '2020-06-03 11:33:19', '2020-05-29 05:33:42', 1, 2, NULL, 0, 0, '', ''),
(3, NULL, 'Beverley', 'H', 'Rehkemper', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 8, 1954, NULL, 2, 2, 1, 1, NULL, NULL, '2020-05-29 05:33:42', 1, 0, NULL, 0, NULL, NULL, NULL),
(4, '', 'Joe', 'Samuel', 'Minter', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, NULL, NULL, 1, 1, 1, 2, 0, '2020-06-04 19:02:09', '2020-05-29 05:46:26', 1, 2, NULL, 0, 0, '', ''),
(5, '', 'Carol', 'A', 'Minter', '', '', '', '', '', '', '', '5407754811', '', '', '', '', 5, 24, 1947, NULL, 2, 2, 1, 2, 0, '2020-06-04 19:01:00', '2020-05-29 05:46:26', 1, 2, NULL, 0, 0, '', ''),
(6, NULL, 'John', '', 'Prince', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, 1, 3, NULL, NULL, '2020-05-29 05:48:03', 1, 0, NULL, 0, NULL, NULL, NULL),
(7, '', 'Amanda', 'Leanne', 'Prince', '', '', '', '', '', '', '', '', '', '', '', '', 7, 3, 1979, '2016-03-02', 2, 2, 1, 3, 0, '2020-06-04 19:21:11', '2020-05-29 05:48:03', 1, 2, NULL, 0, 0, '', ''),
(8, '', 'Shawn', 'Antonio-Robert', 'Prince', 'Jr', '', '', '', '', '', '', '', '', '', '', '', 7, 11, 2006, NULL, 1, 3, 1, 3, 0, '2020-06-04 19:24:33', '2020-05-29 05:48:03', 1, 2, NULL, 0, 0, '', ''),
(9, '', 'Savannah', 'Riley', 'Prince', '', '', '', '', '', '', '', '', '', '', '', '', 1, 9, 2010, NULL, 2, 3, 1, 3, 0, '2020-06-04 19:25:22', '2020-05-29 05:48:03', 1, 2, NULL, 0, 0, '', ''),
(10, '', 'Nolan', 'Paul', 'Prince', 'Sr', '', '', '', '', '', '', '5407755042', '', '', '', '', 10, 23, 1947, NULL, 1, 1, 1, 4, 0, '2020-06-04 19:11:57', '2020-05-29 05:49:18', 1, 2, NULL, 0, 0, '', ''),
(11, '', 'Dorthy (Dotty)', 'Louise', 'Prince', '', '', '', '', '', '', '', '5407755042', '', '', '', '', 10, 26, 1948, NULL, 2, 2, 1, 4, 0, '2020-06-04 19:18:35', '2020-05-29 05:49:18', 1, 2, NULL, 0, 0, '', ''),
(12, NULL, 'Jake', '', 'Harmon', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, 1, 5, NULL, NULL, '2020-05-29 06:32:48', 1, 0, NULL, 0, NULL, NULL, NULL),
(13, '', 'Dawn', 'Minter', 'Harmon', '', '', '', '', '', '', '', '', '', '', '', '', 3, 7, 1975, NULL, 2, 2, 1, 5, 0, '2020-06-04 18:22:50', '2020-05-29 06:32:48', 1, 2, NULL, 0, 0, '', ''),
(14, NULL, 'Owen', '', 'Zucker', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, 1, 6, NULL, NULL, '2020-05-29 06:34:05', 1, 0, NULL, 0, NULL, NULL, NULL),
(15, NULL, 'Amanda', '', 'Zucker', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 2, 2, 1, 6, NULL, NULL, '2020-05-29 06:34:05', 1, 0, NULL, 0, NULL, NULL, NULL),
(16, NULL, 'Paige', '', 'Zucker', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 2, 3, 1, 6, NULL, NULL, '2020-05-29 06:34:05', 1, 0, NULL, 0, NULL, NULL, NULL),
(17, NULL, 'Will', '', 'Zucker', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 3, 1, 6, NULL, NULL, '2020-05-29 06:34:05', 1, 0, NULL, 0, NULL, NULL, NULL),
(18, NULL, 'Charlie', '', 'Martin', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, 2, 7, NULL, NULL, '2020-05-29 06:35:15', 1, 0, NULL, 0, NULL, NULL, NULL),
(19, '', 'Joyce', '', 'Rose', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, NULL, NULL, 2, 0, 2, 0, 0, NULL, '2020-05-29 06:39:10', 1, 0, '2020-05-29', 0, 0, '', ''),
(20, '', 'Dennis', '', 'Peacock', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, NULL, '2018-09-09', 1, 1, 1, 8, 0, '2020-06-04 18:36:21', '2020-05-29 12:18:43', 2, 2, NULL, 0, 0, '', ''),
(21, '', 'Debbie', '', 'Peacock', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, NULL, '2019-09-09', 2, 2, 1, 8, 0, '2020-06-04 18:35:30', '2020-05-29 12:18:43', 2, 2, NULL, 0, 0, '', ''),
(22, '', 'Rebecca', '', 'Peacock', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, NULL, '2018-09-09', 2, 3, 1, 8, 0, '2020-06-04 18:37:36', '2020-05-29 12:18:43', 2, 2, NULL, 0, 0, '', ''),
(23, NULL, 'Sharon', '', 'Peacock', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 2, 4, 1, 8, NULL, NULL, '2020-05-29 12:18:43', 2, 0, NULL, 0, NULL, NULL, NULL),
(24, '', 'Traci', 'Peacock', 'Prille', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, NULL, '2019-09-09', 2, 1, 1, 9, 0, '2020-06-04 19:09:21', '2020-05-29 12:21:04', 2, 2, NULL, 0, 0, '', ''),
(25, '', 'Anna', '', 'Prille', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, NULL, '2018-09-09', 2, 3, 1, 9, 0, '2020-06-04 19:10:11', '2020-05-29 12:21:04', 2, 2, NULL, 0, 0, '', ''),
(26, NULL, 'Sigfried', '', 'Bohlmann', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, 2, 10, NULL, NULL, '2020-05-30 19:48:40', 2, 0, NULL, 0, NULL, NULL, NULL),
(27, NULL, 'Mildred', '', 'Bohlmann', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 2, 2, 2, 10, NULL, NULL, '2020-05-30 19:48:40', 2, 0, NULL, 0, NULL, NULL, NULL),
(28, '', 'Forest (Bo)', 'Taylor', 'Minter', '', '', '', '', '', '', '', '', '', '', '', '', 8, 11, NULL, NULL, 1, 1, 1, 11, 0, '2020-06-04 18:31:11', '2020-05-31 06:18:25', 2, 2, '2020-05-31', 0, 0, '', ''),
(29, NULL, 'Derek', '', 'Cook', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, 1, 12, NULL, NULL, '2020-06-01 05:17:03', 2, 0, NULL, 0, NULL, NULL, NULL),
(30, NULL, 'Donna', '', 'Cook', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 13, 1962, NULL, 2, 2, 1, 12, NULL, NULL, '2020-06-01 05:17:03', 2, 0, NULL, 0, NULL, NULL, NULL),
(31, 'Mr', 'Carrol', 'Elias', 'Loving', '', '', '', '', '', '', 'Afghanistan (‫افغانستان‬‎)', '(540) 775-7681', '', '', '', '', 4, 1, 1938, NULL, 1, 1, 1, 13, 0, '2020-06-04 18:29:05', '2020-06-01 14:00:41', 2, 2, '2020-06-01', 0, 0, '', ''),
(32, '', 'Ruth ann', 'Rolland', 'Loving', '', '', '', '', '', '', 'Afghanistan (‫افغانستان‬‎)', '', '', '', '', '', 7, 12, 1938, NULL, 2, 2, 1, 13, 0, '2020-06-04 18:28:12', '2020-06-01 14:04:30', 2, 2, '2020-06-01', 0, 0, '', ''),
(33, '', 'Janet', 'Rice', 'Southall', '', '', '', '', '', '', '', '', '', '', '', '', 6, 6, 1948, NULL, 2, 1, 1, 14, 0, '2020-06-04 19:30:20', '2020-06-01 19:38:27', 2, 2, NULL, 0, 0, '', ''),
(34, '', 'Norma', 'Jean', 'Southall', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, NULL, NULL, 2, 3, 1, 14, 0, '2020-06-04 19:30:57', '2020-06-01 19:38:27', 2, 2, NULL, 0, 0, '', ''),
(35, '', 'Helen', 'Merryman', 'Green', '', '', '', '', '', '', 'Afghanistan (‫افغانستان‬‎)', '(540) 775-4416', '', '', '', '', 10, 27, 1935, NULL, 2, 1, 1, 15, 0, '2020-06-04 18:18:28', '2020-06-03 11:22:38', 2, 2, '2020-06-03', 0, 0, '', ''),
(38, NULL, 'Mark', '', 'Hobbs', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 1, 1, 2, 16, NULL, NULL, '2020-06-03 11:31:20', 2, 0, NULL, 0, NULL, NULL, NULL),
(39, NULL, 'Angela', '', 'Hobbs', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 2, 2, 2, 16, NULL, NULL, '2020-06-03 11:31:20', 2, 0, NULL, 0, NULL, NULL, NULL),
(40, '', 'Karolena', 'Louise', 'Cook', '', '', '', '', '', '', 'Afghanistan (‫افغانستان‬‎)', '', '', '', '', '', 0, 0, NULL, NULL, 2, 3, 2, 12, 0, '2020-06-04 19:51:18', '2020-06-04 18:13:55', 2, 2, '2020-06-04', 0, 0, '', ''),
(41, NULL, 'Betty', 'Ann', 'Fincham', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 10, 1967, NULL, 2, 1, 1, 17, NULL, NULL, '2020-06-04 18:16:39', 2, 0, NULL, 0, NULL, NULL, NULL),
(42, '', 'Bridget', 'Breton', 'Prince', '', '', '', 'King George', 'Virginia', '', 'United States', '', '', '', '', '', 4, 21, 1992, '2016-02-07', 2, 3, 1, 4, 0, NULL, '2020-06-04 19:26:46', 2, 0, '2020-06-04', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pledge_plg`
--

DROP TABLE IF EXISTS `pledge_plg`;
CREATE TABLE `pledge_plg` (
  `plg_plgID` mediumint(9) NOT NULL,
  `plg_FamID` mediumint(9) DEFAULT NULL,
  `plg_FYID` mediumint(9) DEFAULT NULL,
  `plg_date` date DEFAULT NULL,
  `plg_amount` decimal(8,2) DEFAULT NULL,
  `plg_schedule` enum('Weekly','Monthly','Quarterly','Once','Other') COLLATE utf8_unicode_ci DEFAULT NULL,
  `plg_method` enum('CREDITCARD','CHECK','CASH','BANKDRAFT','EGIVE') COLLATE utf8_unicode_ci DEFAULT NULL,
  `plg_comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `plg_DateLastEdited` date NOT NULL DEFAULT '2016-01-01',
  `plg_EditedBy` mediumint(9) NOT NULL DEFAULT 0,
  `plg_PledgeOrPayment` enum('Pledge','Payment') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pledge',
  `plg_fundID` tinyint(3) UNSIGNED DEFAULT NULL,
  `plg_depID` mediumint(9) UNSIGNED DEFAULT NULL,
  `plg_CheckNo` bigint(16) UNSIGNED DEFAULT NULL,
  `plg_Problem` tinyint(1) DEFAULT NULL,
  `plg_scanString` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `plg_aut_ID` mediumint(9) NOT NULL DEFAULT 0,
  `plg_aut_Cleared` tinyint(1) NOT NULL DEFAULT 0,
  `plg_aut_ResultID` mediumint(9) NOT NULL DEFAULT 0,
  `plg_NonDeductible` decimal(8,2) NOT NULL,
  `plg_GroupKey` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pledge_plg`
--

INSERT INTO `pledge_plg` (`plg_plgID`, `plg_FamID`, `plg_FYID`, `plg_date`, `plg_amount`, `plg_schedule`, `plg_method`, `plg_comment`, `plg_DateLastEdited`, `plg_EditedBy`, `plg_PledgeOrPayment`, `plg_fundID`, `plg_depID`, `plg_CheckNo`, `plg_Problem`, `plg_scanString`, `plg_aut_ID`, `plg_aut_Cleared`, `plg_aut_ResultID`, `plg_NonDeductible`, `plg_GroupKey`) VALUES
(1, 1, 24, '2020-05-24', '300.00', 'Once', 'CHECK', 'General Fund', '2020-05-29', 1, 'Payment', 1, 1, 1233, NULL, '', 0, 0, 0, '0.00', '1233|0|1|1|2020-05-24'),
(2, 1, 24, '2020-05-24', '300.00', 'Once', 'CHECK', '', '2020-05-29', 1, 'Payment', 1, 2, 1111, NULL, '', 0, 0, 0, '0.00', '1111|0|1|1|2020-05-24'),
(3, 1, 24, '2020-05-24', '100.00', 'Once', 'CHECK', '', '2020-05-29', 1, 'Payment', 2, 2, 1111, NULL, '', 0, 0, 0, '0.00', '1111|0|1|1|2020-05-24'),
(4, 1, 24, '2020-05-24', '100.00', 'Once', 'CHECK', '', '2020-05-29', 1, 'Payment', 3, 2, 1111, NULL, '', 0, 0, 0, '0.00', '1111|0|1|1|2020-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `propertytype_prt`
--

DROP TABLE IF EXISTS `propertytype_prt`;
CREATE TABLE `propertytype_prt` (
  `prt_ID` mediumint(9) NOT NULL,
  `prt_Class` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `prt_Name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `prt_Description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `propertytype_prt`
--

INSERT INTO `propertytype_prt` (`prt_ID`, `prt_Class`, `prt_Name`, `prt_Description`) VALUES
(1, 'p', 'General', 'General Person Properties'),
(2, 'f', 'General', 'General Family Properties'),
(3, 'g', 'General', 'General Group Properties'),
(4, 'p', 'Keys to Building', 'Key to unlock all exterior dors'),
(5, 'p', 'Pastors Office Key', 'Keys to Pastors Office');

-- --------------------------------------------------------

--
-- Table structure for table `property_pro`
--

DROP TABLE IF EXISTS `property_pro`;
CREATE TABLE `property_pro` (
  `pro_ID` mediumint(8) UNSIGNED NOT NULL,
  `pro_Class` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pro_prt_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `pro_Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `pro_Description` text COLLATE utf8_unicode_ci NOT NULL,
  `pro_Prompt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `property_pro`
--

INSERT INTO `property_pro` (`pro_ID`, `pro_Class`, `pro_prt_ID`, `pro_Name`, `pro_Description`, `pro_Prompt`) VALUES
(1, 'p', 1, 'Disabled', 'has a disability.', 'What is the nature of the disability?'),
(2, 'f', 2, 'Single Parent', 'is a single-parent household.', ''),
(3, 'g', 3, 'Youth', 'is youth-oriented.', '');

-- --------------------------------------------------------

--
-- Table structure for table `queryparameteroptions_qpo`
--

DROP TABLE IF EXISTS `queryparameteroptions_qpo`;
CREATE TABLE `queryparameteroptions_qpo` (
  `qpo_ID` smallint(5) UNSIGNED NOT NULL,
  `qpo_qrp_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `qpo_Display` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `qpo_Value` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `queryparameteroptions_qpo`
--

INSERT INTO `queryparameteroptions_qpo` (`qpo_ID`, `qpo_qrp_ID`, `qpo_Display`, `qpo_Value`) VALUES
(1, 4, 'Male', '1'),
(2, 4, 'Female', '2'),
(3, 6, 'Male', '1'),
(4, 6, 'Female', '2'),
(5, 15, 'Name', 'CONCAT(COALESCE(`per_FirstName`,\'\'),COALESCE(`per_MiddleName`,\'\'),COALESCE(`per_LastName`,\'\'))'),
(6, 15, 'Zip Code', 'fam_Zip'),
(7, 15, 'State', 'fam_State'),
(8, 15, 'City', 'fam_City'),
(9, 15, 'Home Phone', 'per_HomePhone'),
(10, 27, '2012/2013', '17'),
(11, 27, '2013/2014', '18'),
(12, 27, '2014/2015', '19'),
(13, 27, '2015/2016', '20'),
(14, 28, '2012/2013', '17'),
(15, 28, '2013/2014', '18'),
(16, 28, '2014/2015', '19'),
(17, 28, '2015/2016', '20'),
(18, 30, '2012/2013', '17'),
(19, 30, '2013/2014', '18'),
(20, 30, '2014/2015', '19'),
(21, 30, '2015/2016', '20'),
(22, 31, '2012/2013', '17'),
(23, 31, '2013/2014', '18'),
(24, 31, '2014/2015', '19'),
(25, 31, '2015/2016', '20'),
(26, 15, 'Email', 'per_Email'),
(27, 15, 'WorkEmail', 'per_WorkEmail'),
(28, 32, '2012/2013', '17'),
(29, 32, '2013/2014', '18'),
(30, 32, '2014/2015', '19'),
(31, 32, '2015/2016', '20'),
(32, 33, 'Member', '1'),
(33, 33, 'Regular Attender', '2'),
(34, 33, 'Guest', '3'),
(35, 33, 'Non-Attender', '4'),
(36, 33, 'Non-Attender (staff)', '5');

-- --------------------------------------------------------

--
-- Table structure for table `queryparameters_qrp`
--

DROP TABLE IF EXISTS `queryparameters_qrp`;
CREATE TABLE `queryparameters_qrp` (
  `qrp_ID` mediumint(8) UNSIGNED NOT NULL,
  `qrp_qry_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `qrp_Type` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `qrp_OptionSQL` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `qrp_Name` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qrp_Description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `qrp_Alias` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qrp_Default` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `qrp_Required` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `qrp_InputBoxSize` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `qrp_Validation` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `qrp_NumericMax` int(11) DEFAULT NULL,
  `qrp_NumericMin` int(11) DEFAULT NULL,
  `qrp_AlphaMinLength` int(11) DEFAULT NULL,
  `qrp_AlphaMaxLength` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `queryparameters_qrp`
--

INSERT INTO `queryparameters_qrp` (`qrp_ID`, `qrp_qry_ID`, `qrp_Type`, `qrp_OptionSQL`, `qrp_Name`, `qrp_Description`, `qrp_Alias`, `qrp_Default`, `qrp_Required`, `qrp_InputBoxSize`, `qrp_Validation`, `qrp_NumericMax`, `qrp_NumericMin`, `qrp_AlphaMinLength`, `qrp_AlphaMaxLength`) VALUES
(1, 4, 0, NULL, 'Minimum Age', 'The minimum age for which you want records returned.', 'min', '0', 0, 5, 'n', 120, 0, NULL, NULL),
(2, 4, 0, NULL, 'Maximum Age', 'The maximum age for which you want records returned.', 'max', '120', 1, 5, 'n', 120, 0, NULL, NULL),
(4, 6, 1, '', 'Gender', 'The desired gender to search the database for.', 'gender', '1', 1, 0, '', 0, 0, 0, 0),
(5, 7, 2, 'SELECT lst_OptionID as Value, lst_OptionName as Display FROM list_lst WHERE lst_ID=2 ORDER BY lst_OptionSequence', 'Family Role', 'Select the desired family role.', 'role', '1', 0, 0, '', 0, 0, 0, 0),
(6, 7, 1, '', 'Gender', 'The gender for which you would like records returned.', 'gender', '1', 1, 0, '', 0, 0, 0, 0),
(8, 9, 2, 'SELECT pro_ID AS Value, pro_Name as Display \r\nFROM property_pro\r\nWHERE pro_Class= \'p\' \r\nORDER BY pro_Name ', 'Property', 'The property for which you would like person records returned.', 'PropertyID', '0', 1, 0, '', 0, 0, 0, 0),
(9, 10, 2, 'SELECT distinct don_date as Value, don_date as Display FROM donations_don ORDER BY don_date ASC', 'Beginning Date', 'Please select the beginning date to calculate total contributions for each member (i.e. YYYY-MM-DD). NOTE: You can only choose dates that conatain donations.', 'startdate', '1', 1, 0, '0', 0, 0, 0, 0),
(10, 10, 2, 'SELECT distinct don_date as Value, don_date as Display FROM donations_don\r\nORDER BY don_date DESC', 'Ending Date', 'Please enter the last date to calculate total contributions for each member (i.e. YYYY-MM-DD).', 'enddate', '1', 1, 0, '', 0, 0, 0, 0),
(14, 15, 0, '', 'Search', 'Enter any part of the following: Name, City, State, Zip, Home Phone, Email, or Work Email.', 'searchstring', '', 1, 0, '', 0, 0, 0, 0),
(15, 15, 1, '', 'Field', 'Select field to search for.', 'searchwhat', '1', 1, 0, '', 0, 0, 0, 0),
(16, 11, 2, 'SELECT distinct don_date as Value, don_date as Display FROM donations_don ORDER BY don_date ASC', 'Beginning Date', 'Please select the beginning date to calculate total contributions for each member (i.e. YYYY-MM-DD). NOTE: You can only choose dates that conatain donations.', 'startdate', '1', 1, 0, '0', 0, 0, 0, 0),
(17, 11, 2, 'SELECT distinct don_date as Value, don_date as Display FROM donations_don\r\nORDER BY don_date DESC', 'Ending Date', 'Please enter the last date to calculate total contributions for each member (i.e. YYYY-MM-DD).', 'enddate', '1', 1, 0, '', 0, 0, 0, 0),
(18, 18, 0, '', 'Month', 'The birthday month for which you would like records returned.', 'birthmonth', '1', 1, 0, '', 12, 1, 1, 2),
(19, 19, 2, 'SELECT grp_ID AS Value, grp_Name AS Display FROM group_grp ORDER BY grp_Type', 'Class', 'The sunday school class for which you would like records returned.', 'group', '1', 1, 0, '', 12, 1, 1, 2),
(20, 20, 2, 'SELECT grp_ID AS Value, grp_Name AS Display FROM group_grp ORDER BY grp_Type', 'Class', 'The sunday school class for which you would like records returned.', 'group', '1', 1, 0, '', 12, 1, 1, 2),
(21, 21, 2, 'SELECT grp_ID AS Value, grp_Name AS Display FROM group_grp ORDER BY grp_Type', 'Registered students', 'Group of registered students', 'group', '1', 1, 0, '', 12, 1, 1, 2),
(22, 22, 0, '', 'Month', 'The membership anniversary month for which you would like records returned.', 'membermonth', '1', 1, 0, '', 12, 1, 1, 2),
(25, 25, 2, 'SELECT vol_ID AS Value, vol_Name AS Display FROM volunteeropportunity_vol ORDER BY vol_Name', 'Volunteer opportunities', 'Choose a volunteer opportunity', 'volopp', '1', 1, 0, '', 12, 1, 1, 2),
(26, 26, 0, '', 'Months', 'Number of months since becoming a friend', 'friendmonths', '1', 1, 0, '', 24, 1, 1, 2),
(27, 28, 1, '', 'First Fiscal Year', 'First fiscal year for comparison', 'fyid1', '9', 1, 0, '', 12, 9, 0, 0),
(28, 28, 1, '', 'Second Fiscal Year', 'Second fiscal year for comparison', 'fyid2', '9', 1, 0, '', 12, 9, 0, 0),
(30, 30, 1, '', 'First Fiscal Year', 'Pledged this year', 'fyid1', '9', 1, 0, '', 12, 9, 0, 0),
(31, 30, 1, '', 'Second Fiscal Year', 'but not this year', 'fyid2', '9', 1, 0, '', 12, 9, 0, 0),
(32, 32, 1, '', 'Fiscal Year', 'Fiscal Year.', 'fyid', '9', 1, 0, '', 12, 9, 0, 0),
(33, 18, 1, '', 'Classification', 'Member, Regular Attender, etc.', 'percls', '1', 1, 0, '', 12, 1, 1, 2),
(100, 100, 2, 'SELECT vol_ID AS Value, vol_Name AS Display FROM volunteeropportunity_vol ORDER BY vol_Name', 'Volunteer opportunities', 'First volunteer opportunity choice', 'volopp1', '1', 1, 0, '', 12, 1, 1, 2),
(101, 100, 2, 'SELECT vol_ID AS Value, vol_Name AS Display FROM volunteeropportunity_vol ORDER BY vol_Name', 'Volunteer opportunities', 'Second volunteer opportunity choice', 'volopp2', '1', 1, 0, '', 12, 1, 1, 2),
(200, 200, 2, 'SELECT custom_field as Value, custom_Name as Display FROM person_custom_master', 'Custom field', 'Choose customer person field', 'custom', '1', 0, 0, '', 0, 0, 0, 0),
(201, 200, 0, '', 'Field value', 'Match custom field to this value', 'value', '1', 0, 0, '', 0, 0, 0, 0),
(202, 201, 3, 'SELECT event_id as Value, event_title as Display FROM events_event ORDER BY event_start DESC', 'Event', 'Select the desired event', 'event', '', 1, 0, '', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `query_qry`
--

DROP TABLE IF EXISTS `query_qry`;
CREATE TABLE `query_qry` (
  `qry_ID` mediumint(8) UNSIGNED NOT NULL,
  `qry_SQL` text COLLATE utf8_unicode_ci NOT NULL,
  `qry_Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `qry_Description` text COLLATE utf8_unicode_ci NOT NULL,
  `qry_Count` tinyint(1) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `query_qry`
--

INSERT INTO `query_qry` (`qry_ID`, `qry_SQL`, `qry_Name`, `qry_Description`, `qry_Count`) VALUES
(3, 'SELECT CONCAT(\'<a href=FamilyView.php?FamilyID=\',fam_ID,\'>\',fam_Name,\'</a>\') AS \'Family Name\', COUNT(*) AS \'No.\'\nFROM person_per\nINNER JOIN family_fam\nON fam_ID = per_fam_ID\nGROUP BY per_fam_ID\nORDER BY \'No.\' DESC', 'Family Member Count', 'Returns each family and the total number of people assigned to them.', 0),
(4, 'SELECT per_ID as AddToCart,CONCAT(\'<a\r\nhref=PersonView.php?PersonID=\',per_ID,\'>\',per_FirstName,\'\r\n\',per_LastName,\'</a>\') AS Name,\r\nCONCAT(per_BirthMonth,\'/\',per_BirthDay,\'/\',per_BirthYear) AS \'Birth Date\',\r\nDATE_FORMAT(FROM_DAYS(TO_DAYS(NOW())-TO_DAYS(CONCAT(per_BirthYear,\'-\',per_BirthMonth,\'-\',per_BirthDay))),\'%Y\')+0 AS  \'Age\'\r\nFROM person_per\r\nWHERE\r\nDATE_ADD(CONCAT(per_BirthYear,\'-\',per_BirthMonth,\'-\',per_BirthDay),INTERVAL\r\n~min~ YEAR) <= CURDATE()\r\nAND\r\nDATE_ADD(CONCAT(per_BirthYear,\'-\',per_BirthMonth,\'-\',per_BirthDay),INTERVAL\r\n(~max~ + 1) YEAR) >= CURDATE()', 'Person by Age', 'Returns any person records with ages between two given ages.', 1),
(6, 'SELECT COUNT(per_ID) AS Total FROM person_per WHERE per_Gender = ~gender~', 'Total By Gender', 'Total of records matching a given gender.', 0),
(7, 'SELECT per_ID as AddToCart, CONCAT(per_FirstName,\' \',per_LastName) AS Name FROM person_per WHERE per_fmr_ID = ~role~ AND per_Gender = ~gender~', 'Person by Role and Gender', 'Selects person records with the family role and gender specified.', 1),
(9, 'SELECT \r\nper_ID as AddToCart, \r\nCONCAT(per_FirstName,\' \',per_LastName) AS Name, \r\nCONCAT(r2p_Value,\' \') AS Value\r\nFROM person_per,record2property_r2p\r\nWHERE per_ID = r2p_record_ID\r\nAND r2p_pro_ID = ~PropertyID~\r\nORDER BY per_LastName', 'Person by Property', 'Returns person records which are assigned the given property.', 1),
(15, 'SELECT per_ID as AddToCart, CONCAT(\'<a href=PersonView.php?PersonID=\',per_ID,\'>\',COALESCE(`per_FirstName`,\'\'),\' \',COALESCE(`per_MiddleName`,\'\'),\' \',COALESCE(`per_LastName`,\'\'),\'</a>\') AS Name, fam_City as City, fam_State as State, fam_Zip as ZIP, per_HomePhone as HomePhone, per_Email as Email, per_WorkEmail as WorkEmail FROM person_per RIGHT JOIN family_fam ON family_fam.fam_id = person_per.per_fam_id WHERE ~searchwhat~ LIKE \'%~searchstring~%\'', 'Advanced Search', 'Search by any part of Name, City, State, Zip, Home Phone, Email, or Work Email.', 1),
(18, 'SELECT per_ID as AddToCart, per_BirthDay as Day, CONCAT(per_FirstName,\' \',per_LastName) AS Name FROM person_per WHERE per_cls_ID=~percls~ AND per_BirthMonth=~birthmonth~ ORDER BY per_BirthDay', 'Birthdays', 'People with birthdays in a particular month', 0),
(21, 'SELECT per_ID as AddToCart, CONCAT(\'<a href=PersonView.php?PersonID=\',per_ID,\'>\',per_FirstName,\' \',per_LastName,\'</a>\') AS Name FROM person_per LEFT JOIN person2group2role_p2g2r ON per_id = p2g2r_per_ID WHERE p2g2r_grp_ID=~group~ ORDER BY per_LastName', 'Registered students', 'Find Registered students', 1),
(22, 'SELECT per_ID as AddToCart, DAYOFMONTH(per_MembershipDate) as Day, per_MembershipDate AS DATE, CONCAT(per_FirstName,\' \',per_LastName) AS Name FROM person_per WHERE per_cls_ID=1 AND MONTH(per_MembershipDate)=~membermonth~ ORDER BY per_MembershipDate', 'Membership anniversaries', 'Members who joined in a particular month', 0),
(23, 'SELECT usr_per_ID as AddToCart, CONCAT(a.per_FirstName,\' \',a.per_LastName) AS Name FROM user_usr LEFT JOIN person_per a ON per_ID=usr_per_ID ORDER BY per_LastName', 'Select database users', 'People who are registered as database users', 0),
(24, 'SELECT per_ID as AddToCart, CONCAT(\'<a href=PersonView.php?PersonID=\',per_ID,\'>\',per_FirstName,\' \',per_LastName,\'</a>\') AS Name FROM person_per WHERE per_cls_id =1', 'Select all members', 'People who are members', 0),
(25, 'SELECT per_ID as AddToCart, CONCAT(\'<a href=PersonView.php?PersonID=\',per_ID,\'>\',per_FirstName,\' \',per_LastName,\'</a>\') AS Name FROM person_per LEFT JOIN person2volunteeropp_p2vo ON per_id = p2vo_per_ID WHERE p2vo_vol_ID = ~volopp~ ORDER BY per_LastName', 'Volunteers', 'Find volunteers for a particular opportunity', 1),
(26, 'SELECT per_ID as AddToCart, CONCAT(per_FirstName,\' \',per_LastName) AS Name FROM person_per WHERE DATE_SUB(NOW(),INTERVAL ~friendmonths~ MONTH)<per_FriendDate ORDER BY per_MembershipDate', 'Recent friends', 'Friends who signed up in previous months', 0),
(27, 'SELECT per_ID as AddToCart, CONCAT(per_FirstName,\' \',per_LastName) AS Name FROM person_per inner join family_fam on per_fam_ID=fam_ID where per_fmr_ID<>3 AND fam_OkToCanvass=\"TRUE\" ORDER BY fam_Zip', 'Families to Canvass', 'People in families that are ok to canvass.', 0),
(28, 'SELECT fam_Name, a.plg_amount as PlgFY1, b.plg_amount as PlgFY2 from family_fam left join pledge_plg a on a.plg_famID = fam_ID and a.plg_FYID=~fyid1~ and a.plg_PledgeOrPayment=\'Pledge\' left join pledge_plg b on b.plg_famID = fam_ID and b.plg_FYID=~fyid2~ and b.plg_PledgeOrPayment=\'Pledge\' order by fam_Name', 'Pledge comparison', 'Compare pledges between two fiscal years', 1),
(30, 'SELECT per_ID as AddToCart, CONCAT(per_FirstName,\' \',per_LastName) AS Name, fam_address1, fam_city, fam_state, fam_zip FROM person_per join family_fam on per_fam_id=fam_id where per_fmr_id<>3 and per_fam_id in (select fam_id from family_fam inner join pledge_plg a on a.plg_famID=fam_ID and a.plg_FYID=~fyid1~ and a.plg_amount>0) and per_fam_id not in (select fam_id from family_fam inner join pledge_plg b on b.plg_famID=fam_ID and b.plg_FYID=~fyid2~ and b.plg_amount>0)', 'Missing pledges', 'Find people who pledged one year but not another', 1),
(32, 'SELECT fam_Name, fam_Envelope, b.fun_Name as Fund_Name, a.plg_amount as Pledge from family_fam left join pledge_plg a on a.plg_famID = fam_ID and a.plg_FYID=~fyid~ and a.plg_PledgeOrPayment=\'Pledge\' and a.plg_amount>0 join donationfund_fun b on b.fun_ID = a.plg_fundID order by fam_Name, a.plg_fundID', 'Family Pledge by Fiscal Year', 'Pledge summary by family name for each fund for the selected fiscal year', 1),
(100, 'SELECT a.per_ID as AddToCart, CONCAT(\'<a href=PersonView.php?PersonID=\',a.per_ID,\'>\',a.per_FirstName,\' \',a.per_LastName,\'</a>\') AS Name FROM person_per AS a LEFT JOIN person2volunteeropp_p2vo p2v1 ON (a.per_id = p2v1.p2vo_per_ID AND p2v1.p2vo_vol_ID = ~volopp1~) LEFT JOIN person2volunteeropp_p2vo p2v2 ON (a.per_id = p2v2.p2vo_per_ID AND p2v2.p2vo_vol_ID = ~volopp2~) WHERE p2v1.p2vo_per_ID=p2v2.p2vo_per_ID ORDER BY per_LastName', 'Volunteers', 'Find volunteers for who match two specific opportunity codes', 1),
(200, 'SELECT a.per_ID as AddToCart, CONCAT(\'<a href=PersonView.php?PersonID=\',a.per_ID,\'>\',a.per_FirstName,\' \',a.per_LastName,\'</a>\') AS Name FROM person_per AS a LEFT JOIN person_custom pc ON a.per_id = pc.per_ID WHERE pc.~custom~=\'~value~\' ORDER BY per_LastName', 'CustomSearch', 'Find people with a custom field value', 1),
(201, 'SELECT per_ID as AddToCart, CONCAT(\'<a href=PersonView.php?PersonID=\',per_ID,\'>\',per_FirstName,\',per_LastName,\'</a>\') AS Name, per_LastName AS Lastname FROM person_per LEFT OUTER JOIN (SELECT event_attend.attend_id, event_attend.person_id FROM event_attend WHERE event_attend.event_id IN (~event~)) a ON person_per.per_ID = a.person_id WHERE a.attend_id is NULL ORDER BY person_per.per_LastName, person_per.per_FirstName', 'Missing people', 'Find people who didn\'t attend an event', 1);

-- --------------------------------------------------------

--
-- Table structure for table `record2property_r2p`
--

DROP TABLE IF EXISTS `record2property_r2p`;
CREATE TABLE `record2property_r2p` (
  `r2p_pro_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `r2p_record_ID` mediumint(8) UNSIGNED NOT NULL DEFAULT 0,
  `r2p_Value` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `record2property_r2p`
--

INSERT INTO `record2property_r2p` (`r2p_pro_ID`, `r2p_record_ID`, `r2p_Value`) VALUES
(3, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `result_res`
--

DROP TABLE IF EXISTS `result_res`;
CREATE TABLE `result_res` (
  `res_ID` mediumint(9) NOT NULL,
  `res_echotype1` text COLLATE utf8_unicode_ci NOT NULL,
  `res_echotype2` text COLLATE utf8_unicode_ci NOT NULL,
  `res_echotype3` text COLLATE utf8_unicode_ci NOT NULL,
  `res_authorization` text COLLATE utf8_unicode_ci NOT NULL,
  `res_order_number` text COLLATE utf8_unicode_ci NOT NULL,
  `res_reference` text COLLATE utf8_unicode_ci NOT NULL,
  `res_status` text COLLATE utf8_unicode_ci NOT NULL,
  `res_avs_result` text COLLATE utf8_unicode_ci NOT NULL,
  `res_security_result` text COLLATE utf8_unicode_ci NOT NULL,
  `res_mac` text COLLATE utf8_unicode_ci NOT NULL,
  `res_decline_code` text COLLATE utf8_unicode_ci NOT NULL,
  `res_tran_date` text COLLATE utf8_unicode_ci NOT NULL,
  `res_merchant_name` text COLLATE utf8_unicode_ci NOT NULL,
  `res_version` text COLLATE utf8_unicode_ci NOT NULL,
  `res_EchoServer` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

DROP TABLE IF EXISTS `tokens`;
CREATE TABLE `tokens` (
  `token` varchar(99) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `reference_id` int(9) NOT NULL,
  `valid_until_date` datetime DEFAULT NULL,
  `remainingUses` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userconfig_ucfg`
--

DROP TABLE IF EXISTS `userconfig_ucfg`;
CREATE TABLE `userconfig_ucfg` (
  `ucfg_per_id` mediumint(9) UNSIGNED NOT NULL,
  `ucfg_id` int(11) NOT NULL DEFAULT 0,
  `ucfg_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ucfg_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ucfg_type` enum('text','number','date','boolean','textarea') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'text',
  `ucfg_tooltip` text COLLATE utf8_unicode_ci NOT NULL,
  `ucfg_permission` enum('FALSE','TRUE') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'FALSE',
  `ucfg_cat` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `userconfig_ucfg`
--

INSERT INTO `userconfig_ucfg` (`ucfg_per_id`, `ucfg_id`, `ucfg_name`, `ucfg_value`, `ucfg_type`, `ucfg_tooltip`, `ucfg_permission`, `ucfg_cat`) VALUES
(0, 0, 'bEmailMailto', '1', 'boolean', 'User permission to send email via mailto: links', 'TRUE', ''),
(0, 1, 'sMailtoDelimiter', ',', 'text', 'Delimiter to separate emails in mailto: links', 'TRUE', ''),
(0, 5, 'bCreateDirectory', '0', 'boolean', 'User permission to create directories', 'FALSE', 'SECURITY'),
(0, 6, 'bExportCSV', '0', 'boolean', 'User permission to export CSV files', 'FALSE', 'SECURITY'),
(0, 7, 'bUSAddressVerification', '0', 'boolean', 'User permission to use IST Address Verification', 'FALSE', ''),
(0, 10, 'bAddEvent', '0', 'boolean', 'Allow user to add new event', 'FALSE', 'SECURITY'),
(1, 0, 'bEmailMailto', '1', 'boolean', 'User permission to send email via mailto: links', 'TRUE', ''),
(1, 1, 'sMailtoDelimiter', ',', 'text', 'user permission to send email via mailto: links', 'TRUE', ''),
(1, 5, 'bCreateDirectory', '1', 'boolean', 'User permission to create directories', 'TRUE', ''),
(1, 6, 'bExportCSV', '1', 'boolean', 'User permission to export CSV files', 'TRUE', ''),
(1, 7, 'bUSAddressVerification', '1', 'boolean', 'User permission to use IST Address Verification', 'TRUE', ''),
(2, 0, 'bEmailMailto', '1', 'boolean', 'User permission to send email via mailto: links', 'TRUE', ''),
(2, 1, 'sMailtoDelimiter', ',', 'text', 'Delimiter to separate emails in mailto: links', 'TRUE', ''),
(2, 5, 'bCreateDirectory', '1', 'boolean', 'User permission to create directories', 'TRUE', 'SECURITY'),
(2, 6, 'bExportCSV', '1', 'boolean', 'User permission to export CSV files', 'TRUE', 'SECURITY'),
(2, 7, 'bUSAddressVerification', '1', 'boolean', 'User permission to use IST Address Verification', 'TRUE', ''),
(2, 10, 'bAddEvent', '1', 'boolean', 'Allow user to add new event', 'TRUE', 'SECURITY');

-- --------------------------------------------------------

--
-- Table structure for table `user_usr`
--

DROP TABLE IF EXISTS `user_usr`;
CREATE TABLE `user_usr` (
  `usr_per_ID` mediumint(9) UNSIGNED NOT NULL DEFAULT 0,
  `usr_Password` varchar(500) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `usr_NeedPasswordChange` tinyint(1) UNSIGNED NOT NULL DEFAULT 1,
  `usr_LastLogin` datetime NOT NULL DEFAULT '2000-01-01 00:00:00',
  `usr_LoginCount` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `usr_FailedLogins` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `usr_AddRecords` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `usr_EditRecords` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `usr_DeleteRecords` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `usr_MenuOptions` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `usr_ManageGroups` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `usr_Finance` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `usr_Notes` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `usr_Admin` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `usr_SearchLimit` tinyint(4) DEFAULT 10,
  `usr_Style` varchar(50) COLLATE utf8_unicode_ci DEFAULT 'Style.css',
  `usr_showPledges` tinyint(1) NOT NULL DEFAULT 0,
  `usr_showPayments` tinyint(1) NOT NULL DEFAULT 0,
  `usr_showSince` date NOT NULL DEFAULT '2016-01-01',
  `usr_defaultFY` mediumint(9) NOT NULL DEFAULT 10,
  `usr_currentDeposit` mediumint(9) NOT NULL DEFAULT 0,
  `usr_UserName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_apiKey` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_EditSelf` tinyint(1) UNSIGNED NOT NULL DEFAULT 0,
  `usr_CalStart` date DEFAULT NULL,
  `usr_CalEnd` date DEFAULT NULL,
  `usr_CalNoSchool1` date DEFAULT NULL,
  `usr_CalNoSchool2` date DEFAULT NULL,
  `usr_CalNoSchool3` date DEFAULT NULL,
  `usr_CalNoSchool4` date DEFAULT NULL,
  `usr_CalNoSchool5` date DEFAULT NULL,
  `usr_CalNoSchool6` date DEFAULT NULL,
  `usr_CalNoSchool7` date DEFAULT NULL,
  `usr_CalNoSchool8` date DEFAULT NULL,
  `usr_SearchFamily` tinyint(3) DEFAULT NULL,
  `usr_Canvasser` tinyint(1) NOT NULL DEFAULT 0,
  `usr_TwoFactorAuthSecret` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usr_TwoFactorAuthLastKeyTimestamp` int(11) DEFAULT NULL,
  `usr_TwoFactorAuthRecoveryCodes` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_usr`
--

INSERT INTO `user_usr` (`usr_per_ID`, `usr_Password`, `usr_NeedPasswordChange`, `usr_LastLogin`, `usr_LoginCount`, `usr_FailedLogins`, `usr_AddRecords`, `usr_EditRecords`, `usr_DeleteRecords`, `usr_MenuOptions`, `usr_ManageGroups`, `usr_Finance`, `usr_Notes`, `usr_Admin`, `usr_SearchLimit`, `usr_Style`, `usr_showPledges`, `usr_showPayments`, `usr_showSince`, `usr_defaultFY`, `usr_currentDeposit`, `usr_UserName`, `usr_apiKey`, `usr_EditSelf`, `usr_CalStart`, `usr_CalEnd`, `usr_CalNoSchool1`, `usr_CalNoSchool2`, `usr_CalNoSchool3`, `usr_CalNoSchool4`, `usr_CalNoSchool5`, `usr_CalNoSchool6`, `usr_CalNoSchool7`, `usr_CalNoSchool8`, `usr_SearchFamily`, `usr_Canvasser`, `usr_TwoFactorAuthSecret`, `usr_TwoFactorAuthLastKeyTimestamp`, `usr_TwoFactorAuthRecoveryCodes`) VALUES
(1, '7fe637964fee511a23516c0cf33f35cab96f49d267effcecdaa5b3b28befb74a', 0, '2020-05-29 12:09:59', 4, 0, 0, 0, 0, 0, 0, 0, 0, 1, 10, 'skin-red', 0, 0, '2016-01-01', 10, 2, 'Admin', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, NULL),
(2, 'a9cc58e487a89d7870fd574b839bcb7cd143d2386c003a61d0c625274972da6d', 0, '2020-06-17 11:26:31', 17, 0, 1, 1, 1, 1, 1, 1, 1, 1, 10, 'skin-black', 0, 0, '2016-01-01', 24, 0, 'robrehk', 'q7ZghZk8B9G4We25lXwUC4hd1rBbPe9AQ0oP4ByJX0yMCItit6', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `version_ver`
--

DROP TABLE IF EXISTS `version_ver`;
CREATE TABLE `version_ver` (
  `ver_ID` mediumint(9) UNSIGNED NOT NULL,
  `ver_version` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `ver_update_start` datetime DEFAULT NULL,
  `ver_update_end` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `version_ver`
--

INSERT INTO `version_ver` (`ver_ID`, `ver_version`, `ver_update_start`, `ver_update_end`) VALUES
(1, '4.0.4', '2020-05-29 11:24:48', '2020-05-29 11:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `volunteeropportunity_vol`
--

DROP TABLE IF EXISTS `volunteeropportunity_vol`;
CREATE TABLE `volunteeropportunity_vol` (
  `vol_ID` int(3) NOT NULL,
  `vol_Order` int(3) NOT NULL DEFAULT 0,
  `vol_Active` enum('true','false') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'true',
  `vol_Name` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vol_Description` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `volunteeropportunity_vol`
--

INSERT INTO `volunteeropportunity_vol` (`vol_ID`, `vol_Order`, `vol_Active`, `vol_Name`, `vol_Description`) VALUES
(1, 1, 'true', 'Lawn Care', 'Able to assist with Landscaping'),
(2, 2, 'true', 'Meal Assist', 'Helping prepare meals/cooking'),
(3, 3, 'true', 'Building Repairs', 'Carpentry/plumbing/electrical');

-- --------------------------------------------------------

--
-- Table structure for table `whycame_why`
--

DROP TABLE IF EXISTS `whycame_why`;
CREATE TABLE `whycame_why` (
  `why_ID` mediumint(9) NOT NULL,
  `why_per_ID` mediumint(9) NOT NULL DEFAULT 0,
  `why_join` text COLLATE utf8_unicode_ci NOT NULL,
  `why_come` text COLLATE utf8_unicode_ci NOT NULL,
  `why_suggest` text COLLATE utf8_unicode_ci NOT NULL,
  `why_hearOfUs` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `whycame_why`
--

INSERT INTO `whycame_why` (`why_ID`, `why_per_ID`, `why_join`, `why_come`, `why_suggest`, `why_hearOfUs`) VALUES
(1, 2, 'Looking for a small church in need of help, that had deacons and believed in Congregational rule.\r\nNeeded a bible preaching chruch', 'Great Fellowship, people trying to follow their constitution and Congregational administation', '', 'Asked to Preach when they were without a pastor.');

-- --------------------------------------------------------

--
-- Structure for view `email_count`
--
DROP TABLE IF EXISTS `email_count`;

DROP VIEW IF EXISTS `email_count`;
CREATE ALGORITHM=UNDEFINED DEFINER=`churchcrm`@`localhost` SQL SECURITY DEFINER VIEW `email_count`  AS  select `email_list`.`email` AS `email`,count(0) AS `total` from `email_list` group by `email_list`.`email` ;

-- --------------------------------------------------------

--
-- Structure for view `email_list`
--
DROP TABLE IF EXISTS `email_list`;

DROP VIEW IF EXISTS `email_list`;
CREATE ALGORITHM=UNDEFINED DEFINER=`churchcrm`@`localhost` SQL SECURITY DEFINER VIEW `email_list`  AS  select `family_fam`.`fam_Email` AS `email`,'family' AS `type`,`family_fam`.`fam_ID` AS `id` from `family_fam` where `family_fam`.`fam_Email` is not null and `family_fam`.`fam_Email` <> '' union select `person_per`.`per_Email` AS `email`,'person_home' AS `type`,`person_per`.`per_ID` AS `id` from `person_per` where `person_per`.`per_Email` is not null and `person_per`.`per_Email` <> '' union select `person_per`.`per_WorkEmail` AS `email`,'person_work' AS `type`,`person_per`.`per_ID` AS `id` from `person_per` where `person_per`.`per_WorkEmail` is not null and `person_per`.`per_WorkEmail` <> '' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`calendar_id`),
  ADD UNIQUE KEY `accesstoken` (`accesstoken`);

--
-- Indexes for table `calendar_events`
--
ALTER TABLE `calendar_events`
  ADD PRIMARY KEY (`calendar_id`,`event_id`);

--
-- Indexes for table `canvassdata_can`
--
ALTER TABLE `canvassdata_can`
  ADD PRIMARY KEY (`can_ID`),
  ADD UNIQUE KEY `can_ID` (`can_ID`);

--
-- Indexes for table `church_location_person`
--
ALTER TABLE `church_location_person`
  ADD PRIMARY KEY (`location_id`,`person_id`);

--
-- Indexes for table `church_location_role`
--
ALTER TABLE `church_location_role`
  ADD PRIMARY KEY (`location_id`,`role_id`);

--
-- Indexes for table `config_cfg`
--
ALTER TABLE `config_cfg`
  ADD PRIMARY KEY (`cfg_id`),
  ADD UNIQUE KEY `cfg_name` (`cfg_name`),
  ADD KEY `cfg_id` (`cfg_id`);

--
-- Indexes for table `deposit_dep`
--
ALTER TABLE `deposit_dep`
  ADD PRIMARY KEY (`dep_ID`);

--
-- Indexes for table `donateditem_di`
--
ALTER TABLE `donateditem_di`
  ADD PRIMARY KEY (`di_ID`),
  ADD UNIQUE KEY `di_ID` (`di_ID`);

--
-- Indexes for table `donationfund_fun`
--
ALTER TABLE `donationfund_fun`
  ADD PRIMARY KEY (`fun_ID`),
  ADD UNIQUE KEY `fun_ID` (`fun_ID`);

--
-- Indexes for table `eventcountnames_evctnm`
--
ALTER TABLE `eventcountnames_evctnm`
  ADD UNIQUE KEY `evctnm_countid` (`evctnm_countid`),
  ADD UNIQUE KEY `evctnm_eventtypeid` (`evctnm_eventtypeid`,`evctnm_countname`);

--
-- Indexes for table `eventcounts_evtcnt`
--
ALTER TABLE `eventcounts_evtcnt`
  ADD PRIMARY KEY (`evtcnt_eventid`,`evtcnt_countid`);

--
-- Indexes for table `events_event`
--
ALTER TABLE `events_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `event_attend`
--
ALTER TABLE `event_attend`
  ADD PRIMARY KEY (`attend_id`),
  ADD UNIQUE KEY `event_id` (`event_id`,`person_id`);

--
-- Indexes for table `event_audience`
--
ALTER TABLE `event_audience`
  ADD PRIMARY KEY (`event_id`,`group_id`);

--
-- Indexes for table `event_types`
--
ALTER TABLE `event_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `family_custom`
--
ALTER TABLE `family_custom`
  ADD PRIMARY KEY (`fam_ID`);

--
-- Indexes for table `family_fam`
--
ALTER TABLE `family_fam`
  ADD PRIMARY KEY (`fam_ID`),
  ADD KEY `fam_ID` (`fam_ID`);

--
-- Indexes for table `fundraiser_fr`
--
ALTER TABLE `fundraiser_fr`
  ADD PRIMARY KEY (`fr_ID`),
  ADD UNIQUE KEY `fr_ID` (`fr_ID`);

--
-- Indexes for table `groupprop_1`
--
ALTER TABLE `groupprop_1`
  ADD PRIMARY KEY (`per_ID`),
  ADD UNIQUE KEY `per_ID` (`per_ID`);

--
-- Indexes for table `groupprop_2`
--
ALTER TABLE `groupprop_2`
  ADD PRIMARY KEY (`per_ID`),
  ADD UNIQUE KEY `per_ID` (`per_ID`);

--
-- Indexes for table `group_grp`
--
ALTER TABLE `group_grp`
  ADD PRIMARY KEY (`grp_ID`),
  ADD UNIQUE KEY `grp_ID` (`grp_ID`),
  ADD KEY `grp_ID_2` (`grp_ID`);

--
-- Indexes for table `istlookup_lu`
--
ALTER TABLE `istlookup_lu`
  ADD PRIMARY KEY (`lu_fam_ID`);

--
-- Indexes for table `kioskassginment_kasm`
--
ALTER TABLE `kioskassginment_kasm`
  ADD PRIMARY KEY (`kasm_ID`),
  ADD UNIQUE KEY `kasm_ID` (`kasm_ID`);

--
-- Indexes for table `kioskdevice_kdev`
--
ALTER TABLE `kioskdevice_kdev`
  ADD PRIMARY KEY (`kdev_ID`),
  ADD UNIQUE KEY `kdev_ID` (`kdev_ID`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`location_id`);

--
-- Indexes for table `menu_links`
--
ALTER TABLE `menu_links`
  ADD PRIMARY KEY (`linkId`);

--
-- Indexes for table `multibuy_mb`
--
ALTER TABLE `multibuy_mb`
  ADD PRIMARY KEY (`mb_ID`),
  ADD UNIQUE KEY `mb_ID` (`mb_ID`);

--
-- Indexes for table `note_nte`
--
ALTER TABLE `note_nte`
  ADD PRIMARY KEY (`nte_ID`);

--
-- Indexes for table `paddlenum_pn`
--
ALTER TABLE `paddlenum_pn`
  ADD PRIMARY KEY (`pn_ID`),
  ADD UNIQUE KEY `pn_ID` (`pn_ID`);

--
-- Indexes for table `person2group2role_p2g2r`
--
ALTER TABLE `person2group2role_p2g2r`
  ADD PRIMARY KEY (`p2g2r_per_ID`,`p2g2r_grp_ID`),
  ADD KEY `p2g2r_per_ID` (`p2g2r_per_ID`,`p2g2r_grp_ID`,`p2g2r_rle_ID`);

--
-- Indexes for table `person2volunteeropp_p2vo`
--
ALTER TABLE `person2volunteeropp_p2vo`
  ADD PRIMARY KEY (`p2vo_ID`),
  ADD UNIQUE KEY `p2vo_ID` (`p2vo_ID`);

--
-- Indexes for table `person_custom`
--
ALTER TABLE `person_custom`
  ADD PRIMARY KEY (`per_ID`);

--
-- Indexes for table `person_custom_master`
--
ALTER TABLE `person_custom_master`
  ADD PRIMARY KEY (`custom_Field`);

--
-- Indexes for table `person_per`
--
ALTER TABLE `person_per`
  ADD PRIMARY KEY (`per_ID`),
  ADD KEY `per_ID` (`per_ID`);

--
-- Indexes for table `pledge_plg`
--
ALTER TABLE `pledge_plg`
  ADD PRIMARY KEY (`plg_plgID`);

--
-- Indexes for table `propertytype_prt`
--
ALTER TABLE `propertytype_prt`
  ADD PRIMARY KEY (`prt_ID`),
  ADD UNIQUE KEY `prt_ID` (`prt_ID`),
  ADD KEY `prt_ID_2` (`prt_ID`);

--
-- Indexes for table `property_pro`
--
ALTER TABLE `property_pro`
  ADD PRIMARY KEY (`pro_ID`),
  ADD UNIQUE KEY `pro_ID` (`pro_ID`),
  ADD KEY `pro_ID_2` (`pro_ID`);

--
-- Indexes for table `queryparameteroptions_qpo`
--
ALTER TABLE `queryparameteroptions_qpo`
  ADD PRIMARY KEY (`qpo_ID`),
  ADD UNIQUE KEY `qpo_ID` (`qpo_ID`);

--
-- Indexes for table `queryparameters_qrp`
--
ALTER TABLE `queryparameters_qrp`
  ADD PRIMARY KEY (`qrp_ID`),
  ADD UNIQUE KEY `qrp_ID` (`qrp_ID`),
  ADD KEY `qrp_ID_2` (`qrp_ID`),
  ADD KEY `qrp_qry_ID` (`qrp_qry_ID`);

--
-- Indexes for table `query_qry`
--
ALTER TABLE `query_qry`
  ADD PRIMARY KEY (`qry_ID`),
  ADD UNIQUE KEY `qry_ID` (`qry_ID`),
  ADD KEY `qry_ID_2` (`qry_ID`);

--
-- Indexes for table `result_res`
--
ALTER TABLE `result_res`
  ADD PRIMARY KEY (`res_ID`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`token`);

--
-- Indexes for table `userconfig_ucfg`
--
ALTER TABLE `userconfig_ucfg`
  ADD PRIMARY KEY (`ucfg_per_id`,`ucfg_id`);

--
-- Indexes for table `user_usr`
--
ALTER TABLE `user_usr`
  ADD PRIMARY KEY (`usr_per_ID`),
  ADD UNIQUE KEY `usr_UserName` (`usr_UserName`),
  ADD UNIQUE KEY `usr_apiKey` (`usr_apiKey`),
  ADD KEY `usr_per_ID` (`usr_per_ID`);

--
-- Indexes for table `version_ver`
--
ALTER TABLE `version_ver`
  ADD PRIMARY KEY (`ver_ID`),
  ADD UNIQUE KEY `ver_version` (`ver_version`);

--
-- Indexes for table `volunteeropportunity_vol`
--
ALTER TABLE `volunteeropportunity_vol`
  ADD PRIMARY KEY (`vol_ID`),
  ADD UNIQUE KEY `vol_ID` (`vol_ID`);

--
-- Indexes for table `whycame_why`
--
ALTER TABLE `whycame_why`
  ADD PRIMARY KEY (`why_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendars`
--
ALTER TABLE `calendars`
  MODIFY `calendar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `canvassdata_can`
--
ALTER TABLE `canvassdata_can`
  MODIFY `can_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposit_dep`
--
ALTER TABLE `deposit_dep`
  MODIFY `dep_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donateditem_di`
--
ALTER TABLE `donateditem_di`
  MODIFY `di_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donationfund_fun`
--
ALTER TABLE `donationfund_fun`
  MODIFY `fun_ID` tinyint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `eventcountnames_evctnm`
--
ALTER TABLE `eventcountnames_evctnm`
  MODIFY `evctnm_countid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `events_event`
--
ALTER TABLE `events_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `event_attend`
--
ALTER TABLE `event_attend`
  MODIFY `attend_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `event_types`
--
ALTER TABLE `event_types`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `family_fam`
--
ALTER TABLE `family_fam`
  MODIFY `fam_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `fundraiser_fr`
--
ALTER TABLE `fundraiser_fr`
  MODIFY `fr_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `group_grp`
--
ALTER TABLE `group_grp`
  MODIFY `grp_ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kioskassginment_kasm`
--
ALTER TABLE `kioskassginment_kasm`
  MODIFY `kasm_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kioskdevice_kdev`
--
ALTER TABLE `kioskdevice_kdev`
  MODIFY `kdev_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_links`
--
ALTER TABLE `menu_links`
  MODIFY `linkId` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `multibuy_mb`
--
ALTER TABLE `multibuy_mb`
  MODIFY `mb_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `note_nte`
--
ALTER TABLE `note_nte`
  MODIFY `nte_ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `paddlenum_pn`
--
ALTER TABLE `paddlenum_pn`
  MODIFY `pn_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person2volunteeropp_p2vo`
--
ALTER TABLE `person2volunteeropp_p2vo`
  MODIFY `p2vo_ID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `person_per`
--
ALTER TABLE `person_per`
  MODIFY `per_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `pledge_plg`
--
ALTER TABLE `pledge_plg`
  MODIFY `plg_plgID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `propertytype_prt`
--
ALTER TABLE `propertytype_prt`
  MODIFY `prt_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `property_pro`
--
ALTER TABLE `property_pro`
  MODIFY `pro_ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `queryparameteroptions_qpo`
--
ALTER TABLE `queryparameteroptions_qpo`
  MODIFY `qpo_ID` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `queryparameters_qrp`
--
ALTER TABLE `queryparameters_qrp`
  MODIFY `qrp_ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `query_qry`
--
ALTER TABLE `query_qry`
  MODIFY `qry_ID` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `result_res`
--
ALTER TABLE `result_res`
  MODIFY `res_ID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `version_ver`
--
ALTER TABLE `version_ver`
  MODIFY `ver_ID` mediumint(9) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `volunteeropportunity_vol`
--
ALTER TABLE `volunteeropportunity_vol`
  MODIFY `vol_ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `whycame_why`
--
ALTER TABLE `whycame_why`
  MODIFY `why_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
