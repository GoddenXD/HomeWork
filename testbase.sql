/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 80300
Source Host           : localhost:3306
Source Database       : testbase

Target Server Type    : MYSQL
Target Server Version : 80300
File Encoding         : 65001

Date: 2024-05-11 11:29:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_cart
-- ----------------------------
DROP TABLE IF EXISTS `t_cart`;
CREATE TABLE `t_cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `productId` int NOT NULL,
  `userId` int NOT NULL,
  `quantity` int NOT NULL,
  `selected` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- ----------------------------
-- Records of t_cart
-- ----------------------------
INSERT INTO `t_cart` VALUES ('1', '1', '1', '2', '1');
INSERT INTO `t_cart` VALUES ('2', '4', '1', '1', '1');

-- ----------------------------
-- Table structure for t_goods
-- ----------------------------
DROP TABLE IF EXISTS `t_goods`;
CREATE TABLE `t_goods` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `content` text,
  `imagePath` varchar(200) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of t_goods
-- ----------------------------
INSERT INTO `t_goods` VALUES ('2', 'Xiaomi/小米 Redmi K20 Pro 全面屏骁龙855超广角AI三摄9手机官方旗舰店正品cc红米k20', 'Redmi K20 Pro搭载高通骁龙855处理器。后置三摄，采用索尼4800万主摄，800万人像镜头，1300万防畸变超广角，智能识别场景；前置2000万弹出相机，大广角全景合影；手持超级夜景，960帧慢动作等功能。机身容量有64GB、128GB、256GB三种。华为P30，是华为公司旗下一款手机。手机搭载海思Kirin 980处理器，屏幕为6.1英寸，分辨率2340*1080像素。 摄像头最大30倍数码变焦。玻璃机身，直板，6+128G内存，机身颜色：亮黑色，珠光贝母，天空之境，赤茶橘，极光色。出厂系统内核：Android 9.0', './images/02.png', '2799');
INSERT INTO `t_goods` VALUES ('3', 'Huawei/华为 Mate 20 全面屏超大广角徕卡三镜头麒麟980人工智能芯片手机         \r\r\n', null, './images/03.png', '3299');
INSERT INTO `t_goods` VALUES ('4', '【6+128G直降100】Huawei/华为 nova 4 自拍极点全面屏超广角三摄正品智能易烊', null, './images/04.png', '2599');

-- ----------------------------
-- Table structure for t_member
-- ----------------------------
DROP TABLE IF EXISTS `t_member`;
CREATE TABLE `t_member` (
  `id` int NOT NULL AUTO_INCREMENT,
  `memberPhone` varchar(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of t_member
-- ----------------------------
INSERT INTO `t_member` VALUES ('1', '13712345678', '1145141919', '李明', 'liming@163.com');

-- ----------------------------
-- Table structure for t_travel_destination
-- ----------------------------
DROP TABLE IF EXISTS `t_travel_destination`;
CREATE TABLE `t_travel_destination` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `imagePath` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of t_travel_destination
-- ----------------------------
INSERT INTO `t_travel_destination` VALUES ('1', '宏村', '诗情画意', './images/01.jpeg');
INSERT INTO `t_travel_destination` VALUES ('2', '霞浦', '诗情画意', './images/02.jpeg');
INSERT INTO `t_travel_destination` VALUES ('3', '武功山', '诗情画意', './images/03.jpeg');
INSERT INTO `t_travel_destination` VALUES ('4', '千岛湖', '诗情画意', './images/04.jpeg');
INSERT INTO `t_travel_destination` VALUES ('5', '婺源', '一朝花枝俏', './images/05.jpeg');
INSERT INTO `t_travel_destination` VALUES ('6', '武汉', '一朝花枝俏', './images/06.jpeg');
INSERT INTO `t_travel_destination` VALUES ('7', '千夏', '一朝花枝俏', './images/06.jpeg');
