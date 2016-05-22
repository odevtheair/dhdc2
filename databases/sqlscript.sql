/*
Navicat MySQL Data Transfer

Source Server         : localhost3309
Source Server Version : 50542
Source Host           : localhost:3309
Source Database       : dhdc2_full_init

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2016-04-02 10:21:50
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sqlscript
-- ----------------------------
DROP TABLE IF EXISTS `sqlscript`;
CREATE TABLE `sqlscript` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(255) DEFAULT NULL,
  `sql_script` text,
  `user` varchar(255) DEFAULT NULL,
  `d_update` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sqlscript
-- ----------------------------
