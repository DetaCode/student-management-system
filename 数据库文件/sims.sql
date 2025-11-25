/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50743 (5.7.43-log)
 Source Host           : localhost:3306
 Source Schema         : sims

 Target Server Type    : MySQL
 Target Server Version : 50743 (5.7.43-log)
 File Encoding         : 65001

 Date: 30/03/2025 17:23:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `age` int(11) NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 31 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES (1, '张三', 10, '男');
INSERT INTO `student` VALUES (2, '李四', 19, '男');
INSERT INTO `student` VALUES (3, '王五', 20, '女');
INSERT INTO `student` VALUES (4, '刘二', 14, '女');
INSERT INTO `student` VALUES (5, '陈小明', 14, '男');
INSERT INTO `student` VALUES (6, '王五', 19, '男');
INSERT INTO `student` VALUES (7, '赵六', 20, '女');
INSERT INTO `student` VALUES (8, '钱七', 21, '男');
INSERT INTO `student` VALUES (9, '孙八', 22, '女');
INSERT INTO `student` VALUES (10, '周九', 19, '男');
INSERT INTO `student` VALUES (11, '吴十', 20, '女');
INSERT INTO `student` VALUES (12, '郑十一', 21, '男');
INSERT INTO `student` VALUES (13, '王十二', 22, '女');
INSERT INTO `student` VALUES (14, '冯十三', 19, '男');
INSERT INTO `student` VALUES (15, '陈十四', 20, '女');
INSERT INTO `student` VALUES (16, '褚十五', 21, '男');
INSERT INTO `student` VALUES (17, '卫十六', 22, '女');
INSERT INTO `student` VALUES (18, '蒋十七', 19, '男');
INSERT INTO `student` VALUES (19, '沈十八', 20, '女');
INSERT INTO `student` VALUES (20, '韩十九', 21, '男');
INSERT INTO `student` VALUES (21, '杨二十', 22, '女');
INSERT INTO `student` VALUES (22, '朱二一', 19, '男');
INSERT INTO `student` VALUES (23, '秦二二', 20, '女');
INSERT INTO `student` VALUES (24, '尤二三', 21, '男');
INSERT INTO `student` VALUES (25, '许二四', 22, '女');
INSERT INTO `student` VALUES (26, '何二五', 19, '男');
INSERT INTO `student` VALUES (27, '吕二六', 20, '女');
INSERT INTO `student` VALUES (28, '张小明', 21, '男');
INSERT INTO `student` VALUES (29, '李小红', 22, '女');
INSERT INTO `student` VALUES (30, '刘小刚', 19, '男');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '123');
INSERT INTO `user` VALUES (2, 'zhangsan', '123');

SET FOREIGN_KEY_CHECKS = 1;
