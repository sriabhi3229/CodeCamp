-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.10a-beta-nt


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema codecamp
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ codecamp;
USE codecamp;

--
-- Table structure for table `codecamp`.`files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `username` varchar(20) NOT NULL,
  `filename` varchar(20) NOT NULL,
  PRIMARY KEY  (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codecamp`.`files`
--

/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;


--
-- Table structure for table `codecamp`.`login`
--

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `encapdata` varchar(45) NOT NULL,
  KEY `email` (`username`,`email`),
  CONSTRAINT `email` FOREIGN KEY (`username`, `email`) REFERENCES `register` (`username`, `email`),
  CONSTRAINT `username` FOREIGN KEY (`username`, `email`) REFERENCES `register` (`username`, `email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codecamp`.`login`
--

/*!40000 ALTER TABLE `login` DISABLE KEYS */;
/*!40000 ALTER TABLE `login` ENABLE KEYS */;


--
-- Table structure for table `codecamp`.`register`
--

DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `username` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `college` varchar(20) NOT NULL,
  `gender` varchar(45) NOT NULL,
  PRIMARY KEY  (`username`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `codecamp`.`register`
--

/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` (`username`,`email`,`password`,`name`,`college`,`gender`) VALUES 
 ('arpita123','a192@gmail.com','arpi1234567','Arpita','BBDNITM','female'),
 ('namrta123','a@gmail.com','namrta12','namrta','BBDNITM','female');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
