/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100130
 Source Host           : localhost:3306
 Source Schema         : onlinesinav

 Target Server Type    : MySQL
 Target Server Version : 100130
 File Encoding         : 65001

 Date: 02/02/2018 00:30:57
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for oyuncular
-- ----------------------------
DROP TABLE IF EXISTS `oyuncular`;
CREATE TABLE `oyuncular`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oyuncu` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `puan` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `oyun_tarih` datetime(0) NULL DEFAULT NULL,
  `d_sayi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `y_sayi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `toplam_sayi` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of oyuncular
-- ----------------------------
INSERT INTO `oyuncular` VALUES (12, 'Ramazan', '3', '2018-02-02 00:27:03', '3', '0', '3');

-- ----------------------------
-- Table structure for secenekler
-- ----------------------------
DROP TABLE IF EXISTS `secenekler`;
CREATE TABLE `secenekler`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `soruid` varchar(10) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `secenenek` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `durum` varchar(2) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of secenekler
-- ----------------------------
INSERT INTO `secenekler` VALUES (11, '3', 'Ana kart', 'y');
INSERT INTO `secenekler` VALUES (12, '3', 'Ram', 'y');
INSERT INTO `secenekler` VALUES (13, '3', 'Ekran kartı', 'y');
INSERT INTO `secenekler` VALUES (14, '3', 'CD) Rom', 'd');
INSERT INTO `secenekler` VALUES (15, '4', 'Ram', 'y');
INSERT INTO `secenekler` VALUES (16, '4', 'Ana kart', 'y');
INSERT INTO `secenekler` VALUES (17, '4', 'Cpu', 'd');
INSERT INTO `secenekler` VALUES (18, '4', 'Harddisk', 'y');
INSERT INTO `secenekler` VALUES (19, '5', 'Rom', 'd');
INSERT INTO `secenekler` VALUES (20, '5', 'Ram', 'y');
INSERT INTO `secenekler` VALUES (21, '5', 'Base Ram', 'y');
INSERT INTO `secenekler` VALUES (22, '5', 'Hiçbiri', 'y');

-- ----------------------------
-- Table structure for sorular
-- ----------------------------
DROP TABLE IF EXISTS `sorular`;
CREATE TABLE `sorular`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `soru` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sorular
-- ----------------------------
INSERT INTO `sorular` VALUES (3, 'Aşağıdakilerden hangisi ana donanım birimi değildir?');
INSERT INTO `sorular` VALUES (4, 'Bilgisayarda aritmetiksel işlemleri yapan ve sonuçlandıran donanım birimi hangisidir?');
INSERT INTO `sorular` VALUES (5, 'Kullanıcının müdahale edemediği, silemediği bellek türü hangisidir?');

SET FOREIGN_KEY_CHECKS = 1;
