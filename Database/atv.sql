/*
 Navicat MySQL Data Transfer

 Source Server         : Localhost
 Source Server Type    : MySQL
 Source Server Version : 50721
 Source Host           : localhost:3306
 Source Schema         : atv

 Target Server Type    : MySQL
 Target Server Version : 50721
 File Encoding         : 65001

 Date: 05/03/2018 23:19:35
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_booking
-- ----------------------------
DROP TABLE IF EXISTS `tb_booking`;
CREATE TABLE `tb_booking` (
  `id_booking` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_paket` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `booking_date` int(11) DEFAULT NULL,
  `adult` int(11) DEFAULT NULL,
  `children` int(11) DEFAULT NULL,
  `infant` int(11) DEFAULT NULL,
  `family` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_booking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_carousel
-- ----------------------------
DROP TABLE IF EXISTS `tb_carousel`;
CREATE TABLE `tb_carousel` (
  `id_carousel` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `path_img` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_carousel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_contact_us
-- ----------------------------
DROP TABLE IF EXISTS `tb_contact_us`;
CREATE TABLE `tb_contact_us` (
  `id_contact_us` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `message` text,
  PRIMARY KEY (`id_contact_us`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_faq
-- ----------------------------
DROP TABLE IF EXISTS `tb_faq`;
CREATE TABLE `tb_faq` (
  `id_faq` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question` int(11) DEFAULT NULL,
  `answer` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_faq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_package
-- ----------------------------
DROP TABLE IF EXISTS `tb_package`;
CREATE TABLE `tb_package` (
  `id_paket` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_services` int(11) DEFAULT NULL,
  `number_of_people` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `kind_of_package` int(11) DEFAULT NULL,
  `minimum_people` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_paket`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_popup
-- ----------------------------
DROP TABLE IF EXISTS `tb_popup`;
CREATE TABLE `tb_popup` (
  `id_popup` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `detail` varchar(255) DEFAULT NULL,
  `path_img` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_popup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_read
-- ----------------------------
DROP TABLE IF EXISTS `tb_read`;
CREATE TABLE `tb_read` (
  `id_read` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `detail` text,
  `path_img` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_read`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_schedule
-- ----------------------------
DROP TABLE IF EXISTS `tb_schedule`;
CREATE TABLE `tb_schedule` (
  `id_schedule` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_service` int(11) DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`id_schedule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_services
-- ----------------------------
DROP TABLE IF EXISTS `tb_services`;
CREATE TABLE `tb_services` (
  `id_services` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name_services` varchar(100) DEFAULT NULL,
  `path_img` varchar(255) DEFAULT NULL,
  `detail` text,
  `facility` text,
  `brg_personal` text,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_services`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for tb_socmed
-- ----------------------------
DROP TABLE IF EXISTS `tb_socmed`;
CREATE TABLE `tb_socmed` (
  `id_socmed` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `nama_socmed` int(11) DEFAULT NULL,
  `icon` int(11) DEFAULT NULL,
  `base_url` int(11) DEFAULT NULL,
  `username` int(11) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_socmed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

SET FOREIGN_KEY_CHECKS = 1;
