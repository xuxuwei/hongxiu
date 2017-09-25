/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : red

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-03-20 19:04:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sex` varchar(1) NOT NULL,
  `age` varchar(10) NOT NULL,
  `username` varchar(10) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `password` varchar(10) NOT NULL,
  `readhistory` varchar(10) DEFAULT NULL,
  `email` varchar(10) NOT NULL,
  `vip` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tb_user_ibfk_2` (`readhistory`),
  KEY `username` (`username`),
  KEY `id` (`id`),
  KEY `vip` (`vip`),
  CONSTRAINT `tb_user_ibfk_2` FOREIGN KEY (`readhistory`) REFERENCES `tb_novel` (`novelname`),
  CONSTRAINT `tb_user_ibfk_3` FOREIGN KEY (`vip`) REFERENCES `tb_vip` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '女', '99', '吴青1111', '110119', null, '53412', '1');
INSERT INTO `tb_user` VALUES ('2', '不', '101', '潘鹃', '119', null, '451', '1');
INSERT INTO `tb_user` VALUES ('4', '女', '11', '王五1234', '123456', '麦田里的守望者\r\n麦', '56465', '1');
INSERT INTO `tb_user` VALUES ('5', '男', '21', '王五', '123456', null, '564132', '2');
