-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 28, 2021 at 04:31 AM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;



DROP TABLE IF EXISTS `Doctor`;
CREATE TABLE IF NOT EXISTS `Doctor` (
  `Doc_ID` INTEGER UNSIGNED AUTO_INCREMENT NOT NULL COMMENT 'TRIAL',
  `first_name` varchar(100) DEFAULT NULL COMMENT 'TRIAL',
  `last_name` varchar(100) DEFAULT NULL COMMENT 'TRIAL',
  `Speciality` varchar(100) DEFAULT NULL COMMENT 'TRIAL',
  `Rating` varchar(100) DEFAULT NULL COMMENT 'TRIAL',
  `Experience` varchar(100) DEFAULT NULL COMMENT 'TRIAL',
  `Phone_no` INTEGER NOT NULL COMMENT 'TRIAL',
   PRIMARY KEY (`Doc_ID`,`Phone_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='TRIAL';


--
-- Dumping data for table `Doctor`
--

INSERT INTO `Doctor` (`Doc_ID`, `first_name`,`last_name`,`Speciality`,`Rating`,`Experience`,`Phone_no`) VALUES
('01','Syed','Kashif','Cardiologist','9','03459876522'),
('02','Atif','Munir','Dermatologist','8','02459273512'),
('03','Asif','Ali','Surgeon','7','02459273512'),
('04','Bilal','Mughal',Orthologist','8','03081273410')
('05','Zohaib','Siddiqui','So','8','02459273512')


-- --------------------------------------------------------

--
-- Table structure for table `Patient`
--


DROP TABLE IF EXISTS `Patient`;
CREATE TABLE IF NOT EXISTS `Patient` (
  `Patient_ID` INTEGER UNSIGNED AUTO_INCREMENT NOT NULL COMMENT 'TRIAL',
  `first_name` varchar(100) NOT NULL COMMENT 'TRIAL',
  `last_name` varchar(100) NOT NULL COMMENT 'TRIAL',
  `Gender` varchar(100) NOT NULL COMMENT 'TRIAL',
  `Date_Of_Birth` varchar(100) NOT NULL COMMENT 'TRIAL',
  `Age` INTEGER NOT NULL COMMENT 'TRIAL',
  `Phone_No` INTEGER NOT NULL COMMENT 'TRIAL',
  `House_No` varchar(100) NOT NULL NULL COMMENT 'TRIAL',
  `Street_No` varchar(100) NOT NULL NULL COMMENT 'TRIAL',
  `City` varchar(100) NOT NULL COMMENT 'TRIAL',
  `Country` varchar(100) NOT NULL COMMENT 'TRIAL',
  `Major_Diseases` varchar(300) DEFAULT NULL COMMENT 'TRIAL',
  `Surgeries` varchar(300) DEFAULT NULL COMMENT 'TRIAL',
  `Allergies` varchar(300) DEFAULT NULL COMMENT 'TRIAL',
  `Medications` varchar(300) DEFAULT NULL COMMENT 'TRIAL',
  PRIMARY KEY(`Patient_ID`),
  FOREIGN KEY (`Doc_ID`) REFERENCES `Doctor`
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='TRIAL';

--
Dumping data for table `Patient`
INSERT INTO `Patient`(`Patient_ID`,`Doc_ID`,`first_name`,`last_name`,`Gender`,`Date_Of_Birth`,`Age`,`Phone_No`,`House_No`,`Street_No`,`City`,`Country`,`Major_Diseases`,`Surgeries`,`Allergies`,`Medications`,) VALUES
('01','03','Shayan','Janjua','Male','9-6-1995','27','0314-6278129','2','13','Lahore','Pakistan','Weak heart and water allergy','appendix','NULL','Ziagen')
('02','02','Ali','Qumail','Male','15-3-2000','22','0333-1351422','6','111','Lahore','Pakistan','Mad Cow Disease','Kidney transplant','Cat Allergy','Yonsa')

('03','01','Zohaib','Iqbal','Male','30-5-1970','52','0313-5643949','867','1','Karachi','Pakistan','Weak eyesight and aerophobia','appendix','NULL','Panadol')

('04','03','Shayan','Janjua','Male','1-12-1980','42','0314-8159219','112','1314','Islamabad','Pakistan','Alzheimer's Disease','appendix','Dog allergy','Fabior')

('05','02','Iftikhar','Khan','Male','17-8-2001','21','0301-1231129','888','13','Islamabad','Pakistan','Influenza and flu','Coronary Artery Bypass and cataract surgery','Dust allergy','Keflex')





-- --------------------------------------------------------


--
-- Table structure for table `Availability`
--


DROP TABLE IF EXISTS `Availability`;
CREATE TABLE IF NOT EXISTS `Availability` (
  `Doc_ID` INTEGER NOT NULL COMMENT 'TRIAL',
  `Date_of_availability` varchar (100) NOT NULL COMMENT 'TRIAL',
  `Working_hours` varchar (100) NOT NULL COMMENT 'TRIAL',
   FOREIGN KEY(`Doc_ID`)REFERENCES `Availability`
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='TRIAL';


--
-- Dumping data for table `Availability`
--

INSERT INTO `Availability` (`Doc_ID`, `Date_of_availability`,`Working_hours`) VALUES
('01','14','9AM-5PM'),
('02','12','6PM-12AM'),
('03','11','3PM-9PM'),
('04','10','9AM-10PM'),
('05','04','12AM-8AM'),
('06','09','2PM-11PM'),
('07','08','8AM-12PM'),
('08','07','1PM-9PM'),
('09','06','9PM-3AM'),
('10','05','3AM-9AM');


-- --------------------------------------------------------

--
-- Table structure for table `FeedBack`
--


DROP TABLE IF EXISTS `FeedBack`;
CREATE TABLE IF NOT EXISTS `FeedBack` (
  `Doc_ID` varchar(100) NOT NULL COMMENT 'TRIAL',
  `FeedBack` varchar(500) NOT NULL COMMENT 'TRIAL',
   FOREIGN KEY (`Doc_ID`) REFERENCES `Doctor`
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='TRIAL';


--
-- Dumping data for table `FeedBack`
--

INSERT INTO `FeedBack`(`Doc_ID`, `FeedBack`) VALUES
('01','Django'),
('02','Ok.'),
('03','Nice'),
('04','Excellent'),
('05','Good');


-- --------------------------------------------------------


--
-- Table structure for table `Visit_Review`
--

DROP TABLE IF EXISTS `Visit_Review`;
CREATE TABLE IF NOT EXISTS `Visit_Review` (
  `Doc_ID` INTEGER NOT NULL COMMENT 'TRIAL',
  `Patient_ID` INTEGER NOT NULL COMMENT 'TRIAL',
  `Review_of_visit` varchar(500) DEFAULT NULL COMMENT 'TRIAL',
  FOREIGN KEY(`Doc_ID`) REFERENCES `Doctor`,
  FOREIGN KEY(`Patient_ID`) REFERENCES `Patient`
  
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='TRIAL';


--
-- Dumping data for table `Visit_Review`
--

INSERT INTO `Person` (`Doc_ID`,`Patient_ID`,`Review_of_visit`) VALUES
('01','01','The patient was ok')
('02','05','The patient was not ok')
('04','03','The patient showed signs of mood swings and symptoms of schizophrenia')
('03','04','The patient showed svere signs of alzheimer's disease');
-- --------------------------------------------------------

--
-- Table structure for table `Clinic`
--


DROP TABLE IF EXISTS `Clinic`;
CREATE TABLE IF NOT EXISTS `Clinic` (
  `Clinic_ID` INTEGER NOT NULL COMMENT 'TRIAL',
  `Name` varchar(100) NOT NULL,
  `Phone_No` INTEGER NOT NULL,
  `House_No` varchar(100) DEFAULT NULL COMMENT 'TRIAL',
  `Street_No` varchar(100) DEFAULT NULL COMMENT 'TRIAL',
  `City` varchar(100) DEFAULT NULL COMMENT 'TRIAL',
  `Country` varchar(100) DEFAULT NULL COMMENT 'TRIAL',
  `price` double (8,0) NOT NULL COMMENT 'TRIAL',
  `Doc_ID` INTEGER NOT NULL COMMENT 'TRIAL',
  `Patient_ID` INTEGER NOT NULL COMMENT 'TRIAL',
   PRIMARY KEY(`Clinic_ID`),
   FOREIGN KEY (`Doc_ID`) REFERENCES `Doctor`,
   FOREIGN KEY (`Patient_ID`) REFERENCES `Patient`
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='TRIAL';


--
-- Dumping data for table `Clinic`
--

INSERT INTO `Clinic`(`Clinic_ID`,`Name`, `Phone_No`,`House_No`,`Street_No`,`City`,`Country`,`price`,`Doc_ID`,`Patient_ID`) VALUES
('01','Valley Clinic','123056783','10','0','Islamabad','2500','01','02'),
('02','Miracle Clinic','223156780','1123','3','Lahore',`7000Rs.`,`02`,`03`),
('03','Hope Clinic','323256781','1372','5123','Karachi',`3500Rs.`03`,`05`),
('04','CareforYou Clinic','423356783','729','732','Faisalabad',`5500Rs.`,`04`,`01`),
('05','The Calming Clinic','523456784','77','45','Quetta',`2000Rs.`,`05`,`04`)




--
-- Table structure for table `Doc_ID`
--

DROP TABLE IF EXISTS `Visit_Review`;
CREATE TABLE IF NOT EXISTS `Doc_ID` (
  `Clinic_ID` INTEGER NOT NULL COMMENT 'TRIAL',
  `Doc_ID` INTEGER NOT NULL COMMENT 'TRIAL',
  FOREIGN KEY(`Doc_ID`) REFERENCES `Doctor`,
  FOREIGN KEY(`Clinic_ID`) REFERENCES `Clinic`
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='TRIAL';


--
-- Dumping data for table `Visit_Review`
--

INSERT INTO `Person` (`Clinic_ID`,`Doc_ID`) VALUES
('01','01')
('01','02')
('01','03')
('02','05')
('04','03')
('04','05')
('03','04');
-- --------------------------------------------------------

--
-- Table structure for table `Patient_ID`
--

DROP TABLE IF EXISTS `Visit_Review`
CREATE TABLE IF NOT EXISTS `Doc_ID` (
  `Clinic_ID` INTEGER NOT NULL COMMENT 'TRIAL',
  `Patient_ID` INTEGER NOT NULL COMMENT 'TRIAL',
  FOREIGN KEY(`Patient_ID`),
  FOREIGN KEY(`Clinic_ID`) REFERENCES `Clinic`
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='TRIAL';


--
-- Dumping data for table `Visit_Review`
--

INSERT INTO `Person` (`Clinic_ID`,`Patient_ID`) VALUES
('01','01')
('01','02')
('01','03')
('02','05')
('04','03')
('04','05')
('03','04');