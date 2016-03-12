/*
Navicat MySQL Data Transfer

Source Server         : DHDC 
Source Server Version : 50530
Source Host           : 192.168.1.10:7000
Source Database       : dhdc2

Target Server Type    : MYSQL
Target Server Version : 50530
File Encoding         : 65001

Date: 2016-03-09 10:13:26
*/
SET NAMES 'utf8' COLLATE 'utf8_general_ci';
SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cancer
-- ----------------------------
/*DROP TABLE IF EXISTS `cancer`;*/
CREATE TABLE IF NOT EXISTS `cancer` (
  `HOSPCODE` varchar(5) NOT NULL DEFAULT '',
  `PID` varchar(15) NOT NULL DEFAULT '',
  `DATE_DIAG` date DEFAULT NULL,
  `DIAG` varchar(1) DEFAULT NULL,
  `TOPOGRAPHY` varchar(4) NOT NULL DEFAULT '',
  `MORPHOLOGY` varchar(4) DEFAULT NULL,
  `GRADE` varchar(1) DEFAULT NULL,
  `STAGE` varchar(1) DEFAULT NULL,
  `DATE_DISCH` date DEFAULT NULL,
  `TYPEDISCH` varchar(2) DEFAULT NULL,
  `D_UPDATE` datetime DEFAULT NULL,
  `ID` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`TOPOGRAPHY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for data_delete
-- ----------------------------
/*DROP TABLE IF EXISTS `data_delete`;*/
CREATE TABLE IF NOT EXISTS `data_delete` (
  `HOSPCODE` varchar(5) NOT NULL,
  `TABLENAME` varchar(20) NOT NULL,
  `VALUES_PK` varchar(255) NOT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`TABLENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for dataupdate
-- ----------------------------
/*DROP TABLE IF EXISTS `dataupdate`;*/
CREATE TABLE IF NOT EXISTS `dataupdate` (
  `HOSPCODE` varchar(5) NOT NULL,
  `TABLENAME` varchar(15) NOT NULL,
  `VALUES_PK` varchar(16) DEFAULT NULL,
  `VALUES_SET` varchar(16) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`TABLENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for school
-- ----------------------------
/*DROP TABLE IF EXISTS `school`;*/
CREATE TABLE IF NOT EXISTS `school` (
  `HOSPCODE` varchar(5) NOT NULL DEFAULT '',
  `VID` varchar(8) NOT NULL DEFAULT '',
  `SCHOOLCODE` varchar(9) NOT NULL DEFAULT '',
  `SCHOOLID` varchar(15) DEFAULT NULL,
  `SCHOOLNAME` varchar(250) DEFAULT NULL,
  `SCHOOLOWNER` varchar(2) DEFAULT NULL,
  `SCHOOLTYPE` varchar(1) DEFAULT NULL,
  `CLOSEDDATE` date DEFAULT NULL,
  `D_UPDATE` datetime DEFAULT NULL,
  PRIMARY KEY (`HOSPCODE`,`VID`,`SCHOOLCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for student
-- ----------------------------
/*DROP TABLE IF EXISTS `student`;*/
CREATE TABLE IF NOT EXISTS `student` (
  `HOSPCODE` varchar(5) NOT NULL DEFAULT '',
  `PID` varchar(15) NOT NULL DEFAULT '',
  `SCHOOLCODE` varchar(9) NOT NULL DEFAULT '',
  `EDUCATIONYEAR` varchar(4) NOT NULL DEFAULT '',
  `CLASS` varchar(2) NOT NULL DEFAULT '',
  `D_UPDATE` datetime DEFAULT NULL,
  `GRUDATE_DATE` date DEFAULT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`SCHOOLCODE`,`EDUCATIONYEAR`,`CLASS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp_cancer
-- ----------------------------
/*DROP TABLE IF EXISTS `tmp_cancer`;*/
CREATE TABLE  IF NOT EXISTS `tmp_cancer` (
  `HOSPCODE` varchar(5) NOT NULL DEFAULT '',
  `PID` varchar(15) NOT NULL DEFAULT '',
  `DATE_DIAG` date DEFAULT NULL,
  `DIAG` varchar(1) DEFAULT NULL,
  `TOPOGRAPHY` varchar(4) NOT NULL DEFAULT '',
  `MORPHOLOGY` varchar(4) DEFAULT NULL,
  `GRADE` varchar(1) DEFAULT NULL,
  `STAGE` varchar(1) DEFAULT NULL,
  `DATE_DISCH` date DEFAULT NULL,
  `TYPEDISCH` varchar(2) DEFAULT NULL,
  `D_UPDATE` datetime DEFAULT NULL,
  `ID` varchar(21) DEFAULT NULL,
  `NOTE1` varchar(255) DEFAULT NULL,
  `NOTE2` varchar(255) DEFAULT NULL,
  `NOTE3` varchar(255) DEFAULT NULL,
  `NOTE4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`TOPOGRAPHY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp_data_delete
-- ----------------------------
/*DROP TABLE IF EXISTS `tmp_data_delete`;*/
CREATE TABLE IF NOT EXISTS `tmp_data_delete` (
  `HOSPCODE` varchar(5) NOT NULL,
  `TABLENAME` varchar(20) NOT NULL,
  `VALUES_PK` varchar(255) NOT NULL,
  `D_UPDATE` datetime NOT NULL,
  `NOTE1` varchar(255) DEFAULT NULL,
  `NOTE2` varchar(255) DEFAULT NULL,
  `NOTE3` varchar(255) DEFAULT NULL,
  `NOTE4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HOSPCODE`,`TABLENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp_dataupdate
-- ----------------------------
/*DROP TABLE IF EXISTS `tmp_dataupdate`;*/
CREATE TABLE IF NOT EXISTS `tmp_dataupdate` (
  `HOSPCODE` varchar(5) NOT NULL,
  `TABLENAME` varchar(15) NOT NULL,
  `VALUES_PK` varchar(16) DEFAULT NULL,
  `VALUES_SET` varchar(16) DEFAULT NULL,
  `D_UPDATE` datetime NOT NULL,
  `NOTE1` varchar(255) DEFAULT NULL,
  `NOTE2` varchar(255) DEFAULT NULL,
  `NOTE3` varchar(255) CHARACTER SET utf16 DEFAULT NULL,
  `NOTE4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HOSPCODE`,`TABLENAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp_school
-- ----------------------------
/*DROP TABLE IF EXISTS `tmp_school`;*/
CREATE TABLE  IF NOT EXISTS `tmp_school` (
  `HOSPCODE` varchar(5) NOT NULL DEFAULT '',
  `VID` varchar(8) NOT NULL DEFAULT '',
  `SCHOOLCODE` varchar(9) NOT NULL DEFAULT '',
  `SCHOOLID` varchar(15) DEFAULT NULL,
  `SCHOOLNAME` varchar(250) DEFAULT NULL,
  `SCHOOLOWNER` varchar(2) DEFAULT NULL,
  `SCHOOLTYPE` varchar(1) DEFAULT NULL,
  `CLOSEDDATE` date DEFAULT NULL,
  `D_UPDATE` datetime DEFAULT NULL,
  `NOTE1` varchar(255) DEFAULT NULL,
  `NOTE2` varchar(255) DEFAULT NULL,
  `NOTE3` varchar(255) DEFAULT NULL,
  `NOTE4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HOSPCODE`,`VID`,`SCHOOLCODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tmp_student
-- ----------------------------
/*DROP TABLE IF EXISTS `tmp_student`;*/
CREATE TABLE IF NOT EXISTS `tmp_student` (
  `HOSPCODE` varchar(5) NOT NULL DEFAULT '',
  `PID` varchar(15) NOT NULL DEFAULT '',
  `SCHOOLCODE` varchar(9) NOT NULL DEFAULT '',
  `EDUCATIONYEAR` varchar(4) NOT NULL DEFAULT '',
  `CLASS` varchar(2) NOT NULL DEFAULT '',
  `D_UPDATE` datetime DEFAULT NULL,
  `GRUDATE_DATE` date DEFAULT NULL,
  `id` int(11) NOT NULL,
  `NOTE1` varchar(255) DEFAULT NULL,
  `NOTE2` varchar(255) DEFAULT NULL,
  `NOTE3` varchar(255) DEFAULT NULL,
  `NOTE4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`HOSPCODE`,`PID`,`SCHOOLCODE`,`EDUCATIONYEAR`,`CLASS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
