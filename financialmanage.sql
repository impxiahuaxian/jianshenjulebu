/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : financialmanage

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 29/05/2020 18:25:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `adminname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456');
INSERT INTO `admin` VALUES (2, 'kk', 'lk123');

-- ----------------------------
-- Table structure for budget
-- ----------------------------
DROP TABLE IF EXISTS `budget`;
CREATE TABLE `budget`  (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `wtime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wnum` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`wid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of budget
-- ----------------------------
INSERT INTO `budget` VALUES (1, '2018-06', 800, 1);
INSERT INTO `budget` VALUES (2, '2020-03', 5000, 1);
INSERT INTO `budget` VALUES (4, '2020-03', 5000, 2);
INSERT INTO `budget` VALUES (5, '2020-04', 3500, 2);
INSERT INTO `budget` VALUES (7, '2020-04', 1200, 1);
INSERT INTO `budget` VALUES (8, '2020-05', 2000, 2);
INSERT INTO `budget` VALUES (9, '2020-05', 2000, 1);

-- ----------------------------
-- Table structure for memorandum
-- ----------------------------
DROP TABLE IF EXISTS `memorandum`;
CREATE TABLE `memorandum`  (
  `mid` int(11) NOT NULL AUTO_INCREMENT,
  `recordTime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `thingPath` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `topFont` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`mid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of memorandum
-- ----------------------------
INSERT INTO `memorandum` VALUES (4, '2020-03-19', 'd:/upload/0/12/5f418b45-9add-4069-b87d-dccc77e0f230.txt', '记得每月6号还信用卡哟！！！！！加油\r\n', 2);
INSERT INTO `memorandum` VALUES (10, '2020-03-19', 'd:/upload/14/11/45c9272f-0f7b-456f-b2a2-0771a62e051b.txt', '沙发发发发DVD发发现12号还信用卡呀！！！!!!!!!!!!!!!!!!!!!!!!!!!!!12213214242325212gfdghrehfd颂德歌功多', 1);
INSERT INTO `memorandum` VALUES (11, '2020-03-24', 'd:/upload/3/7/57319a85-dc08-4441-9016-40a445c4adf6.txt', '加油KK\r\n', 2);
INSERT INTO `memorandum` VALUES (13, '2020-03-29', 'd:/upload/12/15/2959b90c-6cdb-4d64-a25b-4c7b1825eb34.txt', '四月一号记得出货100件。\r\n', 1);
INSERT INTO `memorandum` VALUES (14, '2020-04-27', 'd:/upload/13/2/87942f58-a8b5-4fee-9418-5b8d472a677a.txt', '要时刻把毕业设计放在第一位！！！！2020-04-2 16:02:19\r\n\r\n', 2);
INSERT INTO `memorandum` VALUES (15, '2020-04-27', 'd:/upload/15/10/17c75daf-cd04-4795-8163-d98825d61d66.txt', '务必全身心投入到毕业设计中去。\r\n', 2);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `nid` int(11) NOT NULL AUTO_INCREMENT,
  `nTitle` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `visitCount` int(11) NULL DEFAULT NULL,
  `recordTime` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `nContent` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`nid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, '房价上涨！', 'author', '房价', 0, '2020-03-19', 'd:/upload/news/11/4/3205f560-2139-4cd1-a736-e4c6ca73de03.txt');
INSERT INTO `news` VALUES (9, '人民币升值啦！！！', 'kk', '人民币', 0, '2020-03-24', 'd:/upload/news/4/2/1869a401-6378-481b-ada4-a7b03f85473a.txt');
INSERT INTO `news` VALUES (16, '股市熔断', 'auther', '股市', 0, '2020-03-27', 'd:/upload/news/2/1/43677899-cb6d-4b11-b63b-13b55976d0c2.txt');
INSERT INTO `news` VALUES (17, '油价下跌', 'kk', '油', 0, '2020-03-27', 'd:/upload/news/13/3/ac8043ea-db05-4d72-b32e-9db4b01c923a.txt');
INSERT INTO `news` VALUES (18, '粮食价格上涨', 'kk', '粮', 0, '2020-04-23', 'd:/upload/news/5/3/d29f65f9-ddb4-448b-bf01-fd122d585985.txt');

-- ----------------------------
-- Table structure for shouzhi_category
-- ----------------------------
DROP TABLE IF EXISTS `shouzhi_category`;
CREATE TABLE `shouzhi_category`  (
  `szcid` int(11) NOT NULL AUTO_INCREMENT,
  `parent_category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `son_category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`szcid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shouzhi_category
-- ----------------------------
INSERT INTO `shouzhi_category` VALUES (1, '收入', '工资收入');
INSERT INTO `shouzhi_category` VALUES (2, '收入', '兼职收入');
INSERT INTO `shouzhi_category` VALUES (3, '支出', '房租支出');
INSERT INTO `shouzhi_category` VALUES (4, '支出', '水电支出');
INSERT INTO `shouzhi_category` VALUES (5, '收入', '粮食收入');
INSERT INTO `shouzhi_category` VALUES (6, '支出', '日常支出');
INSERT INTO `shouzhi_category` VALUES (7, '支出', '游玩支出');
INSERT INTO `shouzhi_category` VALUES (8, '支出', '服饰支出');

-- ----------------------------
-- Table structure for shouzhi_record
-- ----------------------------
DROP TABLE IF EXISTS `shouzhi_record`;
CREATE TABLE `shouzhi_record`  (
  `szrid` int(11) NOT NULL AUTO_INCREMENT,
  `szr_num` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `szr_date` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `szr_comment` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shouzhiCategory` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `shouzhi_category_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`szrid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 51 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shouzhi_record
-- ----------------------------
INSERT INTO `shouzhi_record` VALUES (2, -200, 1, '2019-12-08', '兼职外卖收入', NULL, 2);
INSERT INTO `shouzhi_record` VALUES (3, -680, 1, '2019-06-01', '支付房租', NULL, 3);
INSERT INTO `shouzhi_record` VALUES (5, 5000, 1, '2020-03-14', '卖小麦', NULL, 5);
INSERT INTO `shouzhi_record` VALUES (6, 6000, 1, '2020-02-13', '资金增值', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (8, 2000, 1, '2020-03-10', '工资', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (9, 5000, 1, '2020-03-16', '兼职教学', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (10, -2000, 1, '2020-03-09', '游玩', NULL, 6);
INSERT INTO `shouzhi_record` VALUES (12, -1500, 2, '2020-03-18', '住房', NULL, 3);
INSERT INTO `shouzhi_record` VALUES (13, 8000, 2, '2020-03-15', '工资', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (14, -200, 2, '2020-03-19', '吃饭', NULL, 6);
INSERT INTO `shouzhi_record` VALUES (15, 3000, 1, '2020-03-29', '服装收入', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (16, 5000, 3, '2020-03-29', '卖小麦', NULL, 5);
INSERT INTO `shouzhi_record` VALUES (17, -200, 3, '2020-03-26', '买衣服', NULL, 6);
INSERT INTO `shouzhi_record` VALUES (18, 1000, 3, '2020-01-09', '111', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (19, 10000, 3, '2020-02-05', '2222', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (20, -1000, 2, '2020-04-10', '买衣服', NULL, 8);
INSERT INTO `shouzhi_record` VALUES (21, -1200, 1, '2020-02-06', '日常支出', NULL, 6);
INSERT INTO `shouzhi_record` VALUES (23, 8000, 1, '2020-02-15', '工资', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (24, 1000, 1, '2020-02-05', '兼职', NULL, 2);
INSERT INTO `shouzhi_record` VALUES (25, 8000, 1, '2020-04-01', '工资', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (26, -200, 1, '2020-03-11', '吃饭', NULL, 6);
INSERT INTO `shouzhi_record` VALUES (27, 200, 1, '2020-03-03', '银行利息', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (28, 6000, 1, '2020-02-03', '工资', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (29, 3000, 1, '2020-02-28', '粮食', NULL, 5);
INSERT INTO `shouzhi_record` VALUES (30, -1500, 1, '2020-04-07', '衣服', NULL, 8);
INSERT INTO `shouzhi_record` VALUES (31, 6000, 1, '2020-01-09', '工资', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (32, -200, 1, '2020-04-12', '吃饭', NULL, 6);
INSERT INTO `shouzhi_record` VALUES (34, -800, 2, '2020-04-19', '水电', NULL, 4);
INSERT INTO `shouzhi_record` VALUES (35, 2000, 2, '2020-04-03', '卖农家菜', NULL, 5);
INSERT INTO `shouzhi_record` VALUES (36, -1200, 2, '2020-04-01', '交房租', NULL, 3);
INSERT INTO `shouzhi_record` VALUES (37, 6000, 2, '2020-01-10', '工资', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (38, 8000, 2, '2020-02-10', '工资', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (39, -270, 2, '2020-01-15', '水电', NULL, 4);
INSERT INTO `shouzhi_record` VALUES (40, -1500, 2, '2020-02-25', '吃饭消费', NULL, 6);
INSERT INTO `shouzhi_record` VALUES (41, 8000, 2, '2019-04-11', '工资', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (42, 8000, 2, '2020-05-01', '工资', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (43, -1500, 2, '2020-05-02', '房租', NULL, 3);
INSERT INTO `shouzhi_record` VALUES (44, 2000, 2, '2020-05-05', '股票增值', NULL, 2);
INSERT INTO `shouzhi_record` VALUES (45, 5000, 2, '2020-04-02', '工资', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (46, 10000, 2, '2020-01-10', '奖金', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (48, -180, 1, '2020-05-04', '吃饭', NULL, 6);
INSERT INTO `shouzhi_record` VALUES (49, 6500, 1, '2020-05-08', '工资', NULL, 1);
INSERT INTO `shouzhi_record` VALUES (50, -10000, 1, '2020-04-06', '买股票', NULL, 6);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`uid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'likai', '123', '男', '211111119@qq.com', '13112347622');
INSERT INTO `user` VALUES (2, 'lk', '123456', '男', '123456777@qq.com', '18212341234');
INSERT INTO `user` VALUES (3, 'mm', '123456', '女', '1232222@qq.com', '13112345677');

-- ----------------------------
-- Table structure for wishlist
-- ----------------------------
DROP TABLE IF EXISTS `wishlist`;
CREATE TABLE `wishlist`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wid` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wish` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wnum` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `wdate` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `state` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wishlist
-- ----------------------------
INSERT INTO `wishlist` VALUES (1, '心愿单2020-03-19-02', '2020年 希望外快能挣得更多。', '5000', '2020-03-19', '未完成', 1);
INSERT INTO `wishlist` VALUES (2, '心愿单2020-03-15-01', '2020 我要加油呀', '100000', '2020-03-15', '未完成', 1);
INSERT INTO `wishlist` VALUES (3, '心愿单2020-03-19-01', '2020 要买房呀！！！！！', '660000', '2020-03-19', '未完成', 2);
INSERT INTO `wishlist` VALUES (4, '心愿单2020-03-25-01', '加油加油加油', '12323', '2020-03-25', '未完成', 1);
INSERT INTO `wishlist` VALUES (5, '心愿单2020-03-22-02', '第三个三四个', '232', '2020-03-22', '已完成', 1);
INSERT INTO `wishlist` VALUES (7, '心愿单2020-03-24-01', '年底买一台新电脑！', '10000', '2020-03-24', '未完成', 1);
INSERT INTO `wishlist` VALUES (8, '心愿单2020-04-02-01', '顺顺利利毕业呀！', '0', '2020-04-02', '未完成', 2);
INSERT INTO `wishlist` VALUES (9, '心愿单2020-04-03-01', '毕业毕业毕业我要毕业', '0', '2020-04-03', '未完成', 2);
INSERT INTO `wishlist` VALUES (10, '心愿单2020-05-01-01', '顺利毕业呀！', '0', '2020-05-01', '未完成', 1);
INSERT INTO `wishlist` VALUES (11, '心愿单2020-05-01-02', '好好做毕设！！', '0', '2020-05-01', '未完成', 1);

SET FOREIGN_KEY_CHECKS = 1;
