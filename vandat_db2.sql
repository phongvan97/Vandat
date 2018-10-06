/*
 Navicat Premium Data Transfer

 Source Server         : myconn
 Source Server Type    : MySQL
 Source Server Version : 100135
 Source Host           : localhost:3306
 Source Schema         : vandat_db2

 Target Server Type    : MySQL
 Target Server Version : 100135
 File Encoding         : 65001

 Date: 06/10/2018 12:21:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for days
-- ----------------------------
DROP TABLE IF EXISTS `days`;
CREATE TABLE `days`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `Month` int(50) NULL DEFAULT NULL,
  `DaysOfWeek` int(50) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `hh`(`DaysOfWeek`) USING BTREE,
  INDEX `rfrg`(`Month`) USING BTREE,
  CONSTRAINT `hh` FOREIGN KEY (`DaysOfWeek`) REFERENCES `daysofweek` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `rfrg` FOREIGN KEY (`Month`) REFERENCES `month` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for daysofweek
-- ----------------------------
DROP TABLE IF EXISTS `daysofweek`;
CREATE TABLE `daysofweek`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `NameDay` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for month
-- ----------------------------
DROP TABLE IF EXISTS `month`;
CREATE TABLE `month`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for shiff
-- ----------------------------
DROP TABLE IF EXISTS `shiff`;
CREATE TABLE `shiff`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for shiffdaystaff
-- ----------------------------
DROP TABLE IF EXISTS `shiffdaystaff`;
CREATE TABLE `shiffdaystaff`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Staff` int(255) NULL DEFAULT NULL,
  `DaysOfWeek` int(255) NULL DEFAULT NULL,
  `Shiff` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `ss`(`Staff`) USING BTREE,
  INDEX `sss`(`DaysOfWeek`) USING BTREE,
  INDEX `dd`(`Shiff`) USING BTREE,
  CONSTRAINT `dd` FOREIGN KEY (`Shiff`) REFERENCES `shiff` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ss` FOREIGN KEY (`Staff`) REFERENCES `staff` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `sss` FOREIGN KEY (`DaysOfWeek`) REFERENCES `daysofweek` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for shiffofday
-- ----------------------------
DROP TABLE IF EXISTS `shiffofday`;
CREATE TABLE `shiffofday`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Shiff` int(255) NULL DEFAULT NULL,
  `Day` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `aa`(`Shiff`) USING BTREE,
  INDEX `ád`(`Day`) USING BTREE,
  CONSTRAINT `aa` FOREIGN KEY (`Shiff`) REFERENCES `shiff` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `ád` FOREIGN KEY (`Day`) REFERENCES `days` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `StaffName` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for staffworkshiff
-- ----------------------------
DROP TABLE IF EXISTS `staffworkshiff`;
CREATE TABLE `staffworkshiff`  (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Staff` int(255) NULL DEFAULT NULL,
  `ShiffWorkIn` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`) USING BTREE,
  INDEX `sadd`(`Staff`) USING BTREE,
  INDEX `vdsv`(`ShiffWorkIn`) USING BTREE,
  CONSTRAINT `sadd` FOREIGN KEY (`Staff`) REFERENCES `staff` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `vdsv` FOREIGN KEY (`ShiffWorkIn`) REFERENCES `shiffofday` (`Id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
