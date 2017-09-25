/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : red

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2017-03-20 19:04:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_novel`
-- ----------------------------
DROP TABLE IF EXISTS `tb_novel`;
CREATE TABLE `tb_novel` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `novelname` varchar(10) DEFAULT NULL,
  `writer` varchar(10) DEFAULT NULL,
  `click` varchar(10) DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `introduce` varchar(500) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `addtime` varchar(10) DEFAULT NULL,
  `updatetime` varchar(10) DEFAULT NULL,
  `vip` int(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `novelname` (`novelname`),
  KEY `type` (`type`),
  KEY `vip` (`vip`),
  CONSTRAINT `tb_novel_ibfk_2` FOREIGN KEY (`vip`) REFERENCES `tb_vip` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_novel
-- ----------------------------
INSERT INTO `tb_novel` VALUES ('1', '麦田里的守望者\r\n麦', '[美]塞林格\r\n', '100', 'image/maitian.jpg\r\n', null, '最新小说', null, null, '1');
INSERT INTO `tb_novel` VALUES ('2', '围城\r\n', '钱钟书\r\n', '200', 'image/weicheng.jpg\r\n', null, '短篇小说', null, null, '2');
INSERT INTO `tb_novel` VALUES ('3', '窗边的小豆豆\r\n', '[日]黑柳彻子\r\n', '300', 'image/window.jpg\r\n', null, '言情小说', null, null, '1');
INSERT INTO `tb_novel` VALUES ('4', '挪威的森林', ' [日]村上春树', '400', 'image/nuowei.jpg\r\n', null, '最新小说', null, null, '2');
INSERT INTO `tb_novel` VALUES ('5', '小王子', '[法]圣·德克旭贝里', '500', 'image/prince.jpg\r\n', null, '短篇小说', null, null, '1');
INSERT INTO `tb_novel` VALUES ('6', '张爱玲经典散文集\r\n', '张爱玲\r\n', '600', 'image/zhang.jpg\r\n', null, '最新小说', null, null, '2');
INSERT INTO `tb_novel` VALUES ('7', '悲惨世界', '[法]雨果', '455', 'image/7bei.jpg', null, '短篇小说', null, null, '2');
INSERT INTO `tb_novel` VALUES ('8', '德伯家的苔丝', '[英]托马斯·哈代', '100', 'image/8de.jpg', null, '最新小说', null, null, '1');
INSERT INTO `tb_novel` VALUES ('9', '摆脱危机者的调查书', '[日]大江健三郎', '122', 'image/9bai.jpg', null, '短篇小说', null, null, '2');
INSERT INTO `tb_novel` VALUES ('10', '生的定义', '[日]大江健三郎', '233', 'image/10sheng.jpg', null, '短篇小说', null, null, '1');
INSERT INTO `tb_novel` VALUES ('11', '日瓦戈医生', '[俄]帕斯捷尔纳克', '233', 'image/11ri.jpg', null, '短篇小说', null, null, '2');
INSERT INTO `tb_novel` VALUES ('12', '活着', '余华', '122', 'image/12huozhe.jpg', null, '最新小说', null, null, '1');
INSERT INTO `tb_novel` VALUES ('13', '13绿', '露西·M·蒙哥玛丽', '455', 'image/13lv.jpg', null, '最新小说', null, null, '1');
INSERT INTO `tb_novel` VALUES ('14', '14卢作孚', '张鲁/张湛昀', '111', 'image/14lu.jpg', null, '短篇小说', null, null, '1');
INSERT INTO `tb_novel` VALUES ('15', '15红与黑', '司汤达', '123', 'image/15红.jpg', null, '最新小说', null, null, '2');
INSERT INTO `tb_novel` VALUES ('16', '16清明上河图密码', '冶文彪', '345', 'image/16.jpg', null, '言情小说', null, null, '1');
INSERT INTO `tb_novel` VALUES ('17', '17文心雕龙', '刘勰', '456', 'image/17wen.jpg', null, '短篇小说', null, null, '2');
INSERT INTO `tb_novel` VALUES ('18', '18羊脂球', '居伊·德·莫泊桑', '567', 'image/18yang.jpg', null, '短篇小说', null, null, '2');
INSERT INTO `tb_novel` VALUES ('19', '格列佛游记', '斯威夫特', '234', 'image/19ge.jpg', null, '短篇小说', null, null, '2');
INSERT INTO `tb_novel` VALUES ('20', '谁动了我的奶酪', '斯宾塞·约翰逊', '678', 'image/20who.jpg', null, '言情小说', null, null, '1');
INSERT INTO `tb_novel` VALUES ('21', '21雾都孤儿', '吴无', '222', 'image/21wu.jpg', null, '最新小说', null, null, '1');
INSERT INTO `tb_novel` VALUES ('22', '雪国', '川端康成', '455', 'image/22hei.jpg', null, '最新小说', null, null, '2');
INSERT INTO `tb_novel` VALUES ('23', '记忆传授人', '[美] 洛伊丝·劳里', '4444', 'image/23ji.jpg', null, '最新小说', null, null, '1');
INSERT INTO `tb_novel` VALUES ('24', '少年Pi的奇幻漂流', '杨·马泰尔', '111', 'image/24shaopi.jpg', null, '最新小说', null, null, '2');
INSERT INTO `tb_novel` VALUES ('25', '假如给我三天光明', '海伦·凯勒', '111', 'image/25jiaru.jpg', null, '短篇小说', null, null, '2');
INSERT INTO `tb_novel` VALUES ('26', '廊桥遗梦', 'asd', '455', 'image/26lang.jpg', null, '最新小说', null, null, '1');
INSERT INTO `tb_novel` VALUES ('27', '肖申克的救赎', '[美]斯蒂芬·金', '566', 'image/27xiao.jpg', null, '短篇小说', null, null, '2');
INSERT INTO `tb_novel` VALUES ('28', '小酒店', '[法]左拉', '990', 'image/28hotal.jpg', null, '短篇小说', null, null, '1');
INSERT INTO `tb_novel` VALUES ('29', '苏菲的世界', '[挪威]乔斯坦·贾德', '677', 'image/29sufei.jpg', null, '短篇小说', null, null, '2');
INSERT INTO `tb_novel` VALUES ('30', '狂野的爱', '[法]罗斯', '788', 'image/30love.jpg', null, '短篇小说', null, null, '2');
