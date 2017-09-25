/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : red

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-03-20 19:04:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_message`
-- ----------------------------
DROP TABLE IF EXISTS `tb_message`;
CREATE TABLE `tb_message` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `words` varchar(200) NOT NULL,
  `date` varchar(20) DEFAULT NULL,
  `view` varchar(10) DEFAULT NULL,
  `userid` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  CONSTRAINT `tb_message_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `tb_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_message
-- ----------------------------
INSERT INTO `tb_message` VALUES ('1', '阿萨德计划', '阿苏噶教案课件阿萨德了会计师大会快乐撒', '2017-3-16', '41', '1');
INSERT INTO `tb_message` VALUES ('2', '阿萨德离开家', '王企鹅卡萨调取王嘉尔', '2017-2-18', '19', '2');
INSERT INTO `tb_message` VALUES ('3', '哈哈', '这本小说超级好看', null, null, '1');
