/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
DROP DATABASE IF EXISTS `TRUONGHOC1`;
CREATE DATABASE IF NOT  EXISTS `TRUONGHOC1` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `TRUONGHOC1`;

--
-- Table structure for table `TRUONG`
--

DROP TABLE IF EXISTS `TRUONG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TRUONG` (
		`MATR` VARCHAR(20) NOT NULL,
		`TENTR` VARCHAR(100) NOT NULL,
		`DCHITR` VARCHAR(200) DEFAULT NULL,
        PRIMARY KEY (`MATR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `HS`
--

DROP TABLE IF EXISTS `HS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HS` (
		`MAHS` VARCHAR(20) NOT NULL,
        `HO` VARCHAR(20) DEFAULT NULL,
        `TEN` VARCHAR(20) DEFAULT NULL,
        `CCCD` VARCHAR(20) DEFAULT NULL,
        `NTNS` DATE DEFAULT NULL,
        `DCHI_HS` VARCHAR(200) DEFAULT NULL,
        PRIMARY KEY (`MAHS`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `HOC`
--

DROP TABLE IF EXISTS `HOC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HOC` (
		`MATR` VARCHAR(20) NOT NULL,
        `MAHS` VARCHAR(20) NOT NULL,
        `NAMHOC` INT NOT NULL,
        `DIEMTB` FLOAT NOT NULL,
        `XEPLOAI` VARCHAR(20) NOT NULL,
		`KQUA` VARCHAR(50) NOT NULL,
        PRIMARY KEY (`MATR`, `MAHS`, `NAMHOC`),
        CONSTRAINT `HOC-MATRG` FOREIGN KEY (`MATR`) REFERENCES `TRUONG` (`MATR`) ON DELETE NO ACTION ON UPDATE NO ACTION,
        CONSTRAINT `HOC-MAHS` FOREIGN KEY (`MAHS`) REFERENCES `HS` (`MAHS`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;





