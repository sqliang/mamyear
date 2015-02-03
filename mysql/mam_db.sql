/*
Navicat MySQL Data Transfer

Source Server         : xiniu
Source Server Version : 50520
Source Host           : localhost:3306
Source Database       : mam_db

Target Server Type    : MYSQL
Target Server Version : 50520
File Encoding         : 65001

Date: 2015-02-03 15:26:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` varchar(40) NOT NULL,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------

-- ----------------------------
-- Table structure for `member`
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` varchar(40) NOT NULL COMMENT '普通会员ID',
  `name` varchar(16) NOT NULL COMMENT '会员姓名',
  `pwd` varchar(40) NOT NULL COMMENT '密码',
  `creattime` datetime NOT NULL COMMENT '注册时间',
  `role` int(11) DEFAULT NULL COMMENT '0-高校教师，1-在校学生，2-企业界人士',
  `phone` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `is_payed` int(1) NOT NULL COMMENT '0-未缴费，1-已缴费，默认为0',
  `fee` decimal(10,0) DEFAULT NULL,
  `rel_name` varchar(100) DEFAULT NULL,
  `is_info_complete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 代表信息不完善，1代表信息完善可以缴费',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------

-- ----------------------------
-- Table structure for `news`
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` varchar(40) NOT NULL,
  `title` varchar(40) NOT NULL,
  `text` longtext NOT NULL,
  `creattime` datetime NOT NULL,
  `reviews` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for `nianhui_info`
-- ----------------------------
DROP TABLE IF EXISTS `nianhui_info`;
CREATE TABLE `nianhui_info` (
  `id` varchar(200) NOT NULL,
  `lanmu_title` varchar(200) NOT NULL,
  `content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of nianhui_info
-- ----------------------------

-- ----------------------------
-- Table structure for `paper`
-- ----------------------------
DROP TABLE IF EXISTS `paper`;
CREATE TABLE `paper` (
  `id` varchar(40) NOT NULL,
  `title` varchar(200) NOT NULL,
  `link` varchar(500) NOT NULL,
  `member_id` varchar(40) NOT NULL,
  `creattime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of paper
-- ----------------------------

-- ----------------------------
-- Table structure for `prof`
-- ----------------------------
DROP TABLE IF EXISTS `prof`;
CREATE TABLE `prof` (
  `id` varchar(40) NOT NULL,
  `name` varchar(20) NOT NULL,
  `pwd` varchar(50) NOT NULL,
  `creattime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of prof
-- ----------------------------

-- ----------------------------
-- Table structure for `resource`
-- ----------------------------
DROP TABLE IF EXISTS `resource`;
CREATE TABLE `resource` (
  `id` varchar(40) NOT NULL,
  `title` varchar(200) NOT NULL,
  `createtime` datetime NOT NULL,
  `downloads` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of resource
-- ----------------------------
