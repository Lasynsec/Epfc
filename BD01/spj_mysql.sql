-- phpMyAdmin SQL Dump
-- version 4.0.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 12, 2013 at 11:38 AM
-- Server version: 5.5.33
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `fournisseurs`
--
CREATE DATABASE IF NOT EXISTS `fournisseurs` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `fournisseurs`;

-- --------------------------------------------------------

--
-- Table structure for table `J`
--

DROP TABLE IF EXISTS `J`;
CREATE TABLE IF NOT EXISTS `J` (
  `ID_J` char(4) NOT NULL,
  `JNAME` char(20) DEFAULT NULL,
  `CITY` char(10) DEFAULT NULL,
  PRIMARY KEY (`ID_J`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `J`
--

INSERT INTO `J` (`ID_J`, `JNAME`, `CITY`) VALUES
('J1', 'Sorter', 'Paris'),
('J2', 'Display', 'Rome'),
('J3', 'OCR', 'Athens'),
('J4', 'Console', 'Athens'),
('J5', 'RAID', 'London'),
('J6', 'EDS', 'Oslo'),
('J7', 'Tape', 'London');

-- --------------------------------------------------------

--
-- Table structure for table `P`
--

DROP TABLE IF EXISTS `P`;
CREATE TABLE IF NOT EXISTS `P` (
  `ID_P` char(4) NOT NULL,
  `PNAME` char(20) DEFAULT NULL,
  `COLOR` char(8) DEFAULT NULL,
  `WEIGHT` int(11) DEFAULT NULL,
  `CITY` char(10) DEFAULT NULL,
  PRIMARY KEY (`ID_P`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `P`
--

INSERT INTO `P` (`ID_P`, `PNAME`, `COLOR`, `WEIGHT`, `CITY`) VALUES
('P1', 'Nut', 'Red', 12, 'London'),
('P2', 'Bolt', 'Green', 17, 'Paris'),
('P3', 'Screw', 'Blue', 17, 'Rome'),
('P4', 'Screw', 'Red', 14, 'London'),
('P5', 'Cam', 'Blue', 12, 'Paris'),
('P6', 'Cog', 'Red', 19, 'London');

-- --------------------------------------------------------

--
-- Table structure for table `S`
--

DROP TABLE IF EXISTS `S`;
CREATE TABLE IF NOT EXISTS `S` (
  `ID_S` char(4) NOT NULL,
  `SNAME` char(20) DEFAULT NULL,
  `STATUS` char(2) DEFAULT NULL,
  `CITY` char(10) DEFAULT NULL,
  PRIMARY KEY (`ID_S`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `S`
--

INSERT INTO `S` (`ID_S`, `SNAME`, `STATUS`, `CITY`) VALUES
('S1', 'Smith', '20', 'London'),
('S2', 'Jones', '10', 'Paris'),
('S3', 'Blake', '30', 'Paris'),
('S4', 'Clark', '20', 'London'),
('S5', 'Adams', '30', 'Athens');

-- --------------------------------------------------------

--
-- Table structure for table `SPJ`
--

DROP TABLE IF EXISTS `SPJ`;
CREATE TABLE IF NOT EXISTS `SPJ` (
  `ID_S` char(4) NOT NULL,
  `ID_P` char(4) NOT NULL,
  `ID_J` char(4) NOT NULL,
  `QTY` int(11) DEFAULT NULL,
  `DATE_DERNIERE_LIVRAISON` date DEFAULT NULL,
  PRIMARY KEY (`ID_S`,`ID_P`,`ID_J`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `SPJ`
--

INSERT INTO `SPJ` (`ID_S`, `ID_P`, `ID_J`, `QTY`, `DATE_DERNIERE_LIVRAISON`) VALUES
('S1', 'P1', 'J1', 200, '2001-10-05'),
('S1', 'P1', 'J4', 700, '2001-05-10'),
('S2', 'P3', 'J1', 400, '2001-05-20'),
('S2', 'P3', 'J2', 200, '2000-07-30'),
('S2', 'P3', 'J3', 200, '2001-05-10'),
('S2', 'P3', 'J4', 500, '2001-10-03'),
('S2', 'P3', 'J5', 600, '2001-09-20'),
('S2', 'P3', 'J6', 400, '2000-05-12'),
('S2', 'P3', 'J7', 800, '2001-08-23'),
('S2', 'P5', 'J2', 100, '2000-06-23'),
('S3', 'P3', 'J1', 200, '2001-07-07'),
('S3', 'P4', 'J2', 500, '2001-05-18'),
('S4', 'P6', 'J3', 300, '2001-05-10'),
('S4', 'P6', 'J7', 300, '2001-09-16'),
('S5', 'P1', 'J4', 100, '2000-03-18'),
('S5', 'P2', 'J2', 200, '2001-11-10'),
('S5', 'P2', 'J4', 100, '2001-04-17'),
('S5', 'P3', 'J4', 200, '2001-05-19'),
('S5', 'P4', 'J4', 800, '2001-05-10'),
('S5', 'P5', 'J4', 400, '2001-12-16'),
('S5', 'P5', 'J5', 500, '2001-02-08'),
('S5', 'P5', 'J7', 100, '2001-06-25'),
('S5', 'P6', 'J2', 200, '2001-02-09'),
('S5', 'P6', 'J4', 500, '2001-10-10');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `SPJ`
--
ALTER TABLE `SPJ`
  ADD CONSTRAINT `pk_SPJ_S` FOREIGN KEY (`ID_S`) REFERENCES `S` (`ID_S`),
  ADD CONSTRAINT `pk_SPJ_P` FOREIGN KEY (`ID_P`) REFERENCES `P` (`ID_P`),
  ADD CONSTRAINT `pk_SPJ_J` FOREIGN KEY (`ID_J`) REFERENCES `J` (`ID_J`);
