-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Vært: localhost
-- Genereringstid: 27. 12 2013 kl. 23:09:56
-- Serverversion: 5.5.24-log
-- PHP-version: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Struktur-dump for tabellen `miner`
--

CREATE TABLE IF NOT EXISTS `miner` (
  `STATUS` char(30) NOT NULL,
  `When` char(30) NOT NULL,
  `Code` char(30) NOT NULL,
  `Msg` char(30) NOT NULL,
  `Description` char(30) NOT NULL,
  `Elapsed` char(30) NOT NULL,
  `MHS av` char(30) NOT NULL,
  `MHS 5s` char(30) NOT NULL,
  `Found Blocks` char(30) NOT NULL,
  `Getworks` char(30) NOT NULL,
  `Accepted` char(30) NOT NULL,
  `Rejected` char(30) NOT NULL,
  `Hardware Errors` char(30) NOT NULL,
  `Utility` char(30) NOT NULL,
  `Discarded` char(30) NOT NULL,
  `Stale` char(30) NOT NULL,
  `Get Failures` char(30) NOT NULL,
  `Local Work` char(30) NOT NULL,
  `Remote Failures` char(30) NOT NULL,
  `Network Blocks` char(30) NOT NULL,
  `Total MH` char(30) NOT NULL,
  `Work Utility` char(30) NOT NULL,
  `Difficulty Accepted` char(30) NOT NULL,
  `Difficulty Rejected` char(30) NOT NULL,
  `Difficulty Stale` char(30) NOT NULL,
  `Best Share` char(30) NOT NULL,
  `Device Hardware%` char(30) NOT NULL,
  `Device Rejected%` char(30) NOT NULL,
  `Pool Rejected%` char(30) NOT NULL,
  `Pool Stale%` char(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
