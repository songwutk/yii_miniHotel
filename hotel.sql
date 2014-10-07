-- phpMyAdmin SQL Dump
-- version 4.2.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 07, 2014 at 08:42 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
`idcust` int(11) NOT NULL COMMENT 'รหัสลูกค้า',
  `fullname` varchar(100) NOT NULL COMMENT 'ชื่อลูกค้า',
  `address` varchar(250) NOT NULL COMMENT 'ที่อยู่',
  `mobile` varchar(20) NOT NULL COMMENT 'มือถือ',
  `birth` date NOT NULL COMMENT 'วันเกิด',
  `member_type` varchar(60) NOT NULL COMMENT 'ประเภทสมาชิก',
  `status` varchar(30) NOT NULL COMMENT 'สมาชิกภาพ',
  `cardfile` varchar(50) DEFAULT NULL COMMENT 'ไฟล์เอกสาร'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='ลูกค้า' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`userid` int(11) NOT NULL COMMENT 'รหัส user',
  `username` varchar(30) NOT NULL COMMENT 'username',
  `password` varchar(30) NOT NULL COMMENT 'password',
  `Fullname` varchar(60) NOT NULL COMMENT 'ชื่อเต็ม',
  `mobile` varchar(20) DEFAULT NULL COMMENT 'เบอร์มือถือ',
  `group` varchar(40) DEFAULT NULL COMMENT 'ระดับสมาชิก'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='ทะเบียน user' AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `password`, `Fullname`, `mobile`, `group`) VALUES
(1, 'front', 'front', 'พนักงานหน้าฟรอนต์', '083-425-2354', 'front_operator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
 ADD PRIMARY KEY (`idcust`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
MODIFY `idcust` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัสลูกค้า';
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'รหัส user',AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
