/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : oa_2020

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 19/02/2021 16:17:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bio_leave
-- ----------------------------
DROP TABLE IF EXISTS `bio_leave`;
CREATE TABLE `bio_leave`  (
  `LEAVE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '请假单ID',
  `LEAVE_NUMBER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请假人工号',
  `LEAVE_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请假人姓名',
  `LEAVE_DAY` int(11) NULL DEFAULT NULL COMMENT '请假天数',
  `LEAVE_REASON` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请假原因',
  `LEAVE_CLASSIFY` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请假类别',
  `LEAVE_TIME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请假时间范围',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建请假单时间',
  `LEAVE_APPROVED` int(11) NULL DEFAULT 0 COMMENT '请假结果',
  `LEAVE_RECEIPT` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请假回执',
  PRIMARY KEY (`LEAVE_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bio_leave
-- ----------------------------
INSERT INTO `bio_leave` VALUES (2, '100003', '露西', 8, '回家和纳兹结婚', NULL, '2020-03-19 ~ 2020-03-26', '2020-03-19 12:00:38', 0, NULL);
INSERT INTO `bio_leave` VALUES (3, '100003', '露西', 3, '有事回家，', NULL, '2020-03-19 ~ 2020-03-21', '2020-03-19 15:27:07', 0, NULL);
INSERT INTO `bio_leave` VALUES (4, '100003', '露西', 3, '回家', NULL, '2020-03-19 ~ 2020-03-21', '2020-03-19 15:45:10', 0, NULL);
INSERT INTO `bio_leave` VALUES (5, '100003', '露西', 3, '回家', NULL, '2020-03-19 ~ 2020-03-21', '2020-03-19 16:02:18', 0, NULL);
INSERT INTO `bio_leave` VALUES (6, '100003', '露西', 3, '有事请假3天', NULL, '2020-03-20 ~ 2020-03-22', '2020-03-20 00:39:29', 0, NULL);
INSERT INTO `bio_leave` VALUES (7, '100003', '露西', 3, '有事请假3天！', NULL, '2020-03-20 ~ 2020-03-22', '2020-03-20 00:47:20', NULL, '');
INSERT INTO `bio_leave` VALUES (8, '100003', '露西', 3, '有事请假3天！', NULL, '2020-03-20 ~ 2020-03-22', '2020-03-20 00:55:55', 2, '');
INSERT INTO `bio_leave` VALUES (9, '100003', '露西', 3, '有事请假3天！', NULL, '2020-03-20 ~ 2020-03-22', '2020-03-20 01:25:39', 2, '');
INSERT INTO `bio_leave` VALUES (10, '100003', '露西', 3, '有事请假3天！', NULL, '2020-03-20 ~ 2020-03-22', '2020-03-20 11:45:39', 1, '同意');
INSERT INTO `bio_leave` VALUES (11, '100003', '露西', 3, '有事请假3天！', NULL, '2020-03-20 ~ 2020-03-22', '2020-03-20 13:01:27', 1, NULL);
INSERT INTO `bio_leave` VALUES (12, '100003', '露西', 8, '生病请假8天！', NULL, '2020-03-20 ~ 2020-03-27', '2020-03-20 22:06:30', 1, NULL);
INSERT INTO `bio_leave` VALUES (13, '100003', '露西', 8, '生病请假8天！', NULL, '2020-03-20 ~ 2020-03-27', '2020-03-20 22:50:00', 2, NULL);
INSERT INTO `bio_leave` VALUES (14, '100003', '露西', 3, '手部受工伤，休息3天！', NULL, '2020-03-20 ~ 2020-03-22', '2020-03-20 23:33:31', 1, '同意');
INSERT INTO `bio_leave` VALUES (15, '100001', '小马哥', 3, '回家睡觉', '事假', '2021-03-01 ~ 2021-03-03', '2021-02-04 10:15:36', 1, '');

-- ----------------------------
-- Table structure for bio_punch
-- ----------------------------
DROP TABLE IF EXISTS `bio_punch`;
CREATE TABLE `bio_punch`  (
  `PUNCH_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '打卡ID',
  `PUNCH_CLASSIFY` int(11) NULL DEFAULT NULL COMMENT '打卡分类（1：上班，2：下班）',
  `PUNCH_STATUS` int(11) NULL DEFAULT NULL COMMENT '打卡状态（1打卡成功，2打卡失败）',
  `EMPLOYEE_ID` int(11) NULL DEFAULT NULL COMMENT '打卡人ID',
  `PUNCH_TIME` datetime NULL DEFAULT NULL COMMENT '打卡时间',
  `PUNCH_DAY` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '打卡日期',
  PRIMARY KEY (`PUNCH_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bio_punch
-- ----------------------------
INSERT INTO `bio_punch` VALUES (1, 1, 1, 3, '2020-03-22 20:41:13', NULL);
INSERT INTO `bio_punch` VALUES (2, 2, 1, 3, '2020-03-22 20:41:28', NULL);
INSERT INTO `bio_punch` VALUES (5, 1, 1, 1, '2020-03-23 22:22:27', NULL);
INSERT INTO `bio_punch` VALUES (23, 1, 1, 1, NULL, '2020-03-24');
INSERT INTO `bio_punch` VALUES (24, 2, 1, 1, NULL, '2020-03-24');
INSERT INTO `bio_punch` VALUES (25, 1, 1, 1, '2020-03-25 10:22:26', '2020-03-25');
INSERT INTO `bio_punch` VALUES (26, 2, 1, 1, '2020-03-25 20:49:30', '2020-03-25');
INSERT INTO `bio_punch` VALUES (27, 1, 1, 3, '2020-03-25 20:51:40', '2020-03-25');
INSERT INTO `bio_punch` VALUES (28, 2, 1, 3, '2020-03-25 20:51:42', '2020-03-25');
INSERT INTO `bio_punch` VALUES (29, 1, 1, 1, '2020-03-26 16:42:12', '2020-03-26');
INSERT INTO `bio_punch` VALUES (30, 2, 1, 1, '2020-03-26 17:46:39', '2020-03-26');
INSERT INTO `bio_punch` VALUES (31, 1, 1, 3, '2020-03-30 15:43:36', '2020-03-30');
INSERT INTO `bio_punch` VALUES (32, 1, 1, 5, '2020-04-02 17:03:56', '2020-04-02');
INSERT INTO `bio_punch` VALUES (33, 2, 1, 5, '2020-04-02 17:03:56', '2020-04-02');
INSERT INTO `bio_punch` VALUES (34, 1, 1, 1, '2020-04-03 19:04:19', '2020-04-03');
INSERT INTO `bio_punch` VALUES (35, 2, 1, 1, '2020-04-03 19:04:20', '2020-04-03');
INSERT INTO `bio_punch` VALUES (36, 1, 1, 1, '2020-04-04 10:39:49', '2020-04-04');
INSERT INTO `bio_punch` VALUES (37, 1, 1, 3, '2020-04-04 13:59:22', '2020-04-04');
INSERT INTO `bio_punch` VALUES (38, 1, 1, 1, '2020-04-05 12:31:26', '2020-04-05');
INSERT INTO `bio_punch` VALUES (39, 1, 1, 3, '2020-04-05 15:11:30', '2020-04-05');
INSERT INTO `bio_punch` VALUES (40, 2, 1, 1, '2020-04-05 19:29:01', '2020-04-05');
INSERT INTO `bio_punch` VALUES (41, 2, 1, 3, '2020-04-05 23:59:17', '2020-04-05');
INSERT INTO `bio_punch` VALUES (42, 1, 1, 1, '2020-04-06 10:34:22', '2020-04-06');
INSERT INTO `bio_punch` VALUES (43, 1, 1, 1, '2021-02-04 09:20:18', '2021-02-04');

-- ----------------------------
-- Table structure for bio_stationery
-- ----------------------------
DROP TABLE IF EXISTS `bio_stationery`;
CREATE TABLE `bio_stationery`  (
  `STATIONERY_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '办公用品ID',
  `STATIONERY_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '办公用品名称',
  `STATIONERY_EXPLAIN` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '办公用品说明',
  `STATIONERY_COUNT` int(11) NULL DEFAULT NULL COMMENT '办公用品数量',
  `STATIONERY_CLASSIFY` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '办公用品分类',
  `CREATION_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`STATIONERY_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bio_stationery
-- ----------------------------
INSERT INTO `bio_stationery` VALUES (1, '计算器', '全新20个计算器。', -48, '桌面办公文具', '2020-03-31 11:50:17');
INSERT INTO `bio_stationery` VALUES (2, '订书机', '全新10个订书机', 10, '桌面办公文具', '2020-03-31 11:57:26');
INSERT INTO `bio_stationery` VALUES (3, '文件夹', '全新文件夹100个', 100, '文件管理用品', '2020-03-31 11:58:44');
INSERT INTO `bio_stationery` VALUES (4, '档案盒', '档案盒', 500, '文件管理用品', '2020-03-31 11:59:14');
INSERT INTO `bio_stationery` VALUES (5, '文件袋', '文件袋', 500, '文件管理用品', '2020-03-31 11:59:42');
INSERT INTO `bio_stationery` VALUES (6, '复印纸', '复印纸20箱', 20, '纸制品', '2020-03-31 12:00:38');
INSERT INTO `bio_stationery` VALUES (7, '打印纸', '打印纸20箱', 20, '纸制品', '2020-03-31 12:01:30');
INSERT INTO `bio_stationery` VALUES (8, '记事本', '记事本50本', 50, '纸制品', '2020-03-31 12:02:00');
INSERT INTO `bio_stationery` VALUES (9, '电脑', '3台全新，2台旧', 207, '办公机械', '2020-03-31 12:02:51');
INSERT INTO `bio_stationery` VALUES (10, '打印机', '全新打印机1台', 2, '办公机械', '2020-03-31 12:03:29');
INSERT INTO `bio_stationery` VALUES (11, '垃圾桶', '垃圾桶', 6, '办公生活用品', '2020-03-31 12:04:25');
INSERT INTO `bio_stationery` VALUES (12, '洗手液', '洗手液10瓶', -41, '办公生活用品', '2020-03-31 12:04:50');

-- ----------------------------
-- Table structure for bio_stationery_add
-- ----------------------------
DROP TABLE IF EXISTS `bio_stationery_add`;
CREATE TABLE `bio_stationery_add`  (
  `STATIONERY_ADD_ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATIONERY_ID` int(11) NULL DEFAULT NULL,
  `STATIONERY_COUNT` int(11) NULL DEFAULT NULL,
  `STATIONERY_EXPLAIN` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `CREATION_TIME` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`STATIONERY_ADD_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bio_stationery_add
-- ----------------------------
INSERT INTO `bio_stationery_add` VALUES (1, 12, 20, '2020-3-31进购20瓶洗手液', '2020-03-31 20:26:55');
INSERT INTO `bio_stationery_add` VALUES (2, 10, 1, '2020-3-31进购打印机一台', '2020-03-31 20:32:55');
INSERT INTO `bio_stationery_add` VALUES (3, 9, 2, '2020-3-31进购全新电脑2台', '2020-03-31 20:34:14');
INSERT INTO `bio_stationery_add` VALUES (4, 13, 20, '入库啊', '2021-02-04 10:28:48');
INSERT INTO `bio_stationery_add` VALUES (6, 9, 200, '每个人都换新的', '2021-02-04 10:38:09');

-- ----------------------------
-- Table structure for bio_stationery_employee
-- ----------------------------
DROP TABLE IF EXISTS `bio_stationery_employee`;
CREATE TABLE `bio_stationery_employee`  (
  `STATIONERY_EMPLOYEE_REL_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '申请办公用品ID',
  `STATIONERY_ID` int(11) NULL DEFAULT NULL COMMENT '办公用品ID',
  `EMPLOYEE_ID` int(11) NULL DEFAULT NULL COMMENT '雇员ID',
  `STATIONERY_COUNT` int(11) NULL DEFAULT NULL COMMENT '办公用品数量',
  `CREATION_TIME` datetime NULL DEFAULT NULL COMMENT '申请时间',
  `APPROVE` int(11) NULL DEFAULT 0 COMMENT '是否批准：1批准，2不批准，0未审核',
  `RECEIPT` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请回执',
  `EXPLAIN` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '说明',
  `APPROVE_EMPLOYEE_Id` int(11) NULL DEFAULT NULL COMMENT '审批人ID',
  PRIMARY KEY (`STATIONERY_EMPLOYEE_REL_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of bio_stationery_employee
-- ----------------------------
INSERT INTO `bio_stationery_employee` VALUES (1, 12, 3, 1, '2020-04-02 13:06:49', 1, '同意', '1231231221', 5);
INSERT INTO `bio_stationery_employee` VALUES (2, 12, 3, 2, '2020-04-02 23:30:14', 1, '同意', '申请使用2瓶洗手液', 5);
INSERT INTO `bio_stationery_employee` VALUES (3, 11, 5, 2, '2020-04-03 09:59:53', 1, '同意', '申请使用2个垃圾桶', 5);
INSERT INTO `bio_stationery_employee` VALUES (4, 1, 1, 34, '2021-02-04 10:18:34', 1, '好的', NULL, 5);
INSERT INTO `bio_stationery_employee` VALUES (5, 1, 1, 34, '2021-02-04 10:18:34', 1, '', NULL, 5);
INSERT INTO `bio_stationery_employee` VALUES (6, 13, 1, 333, '2021-02-04 10:19:31', 1, '收到了', NULL, 5);
INSERT INTO `bio_stationery_employee` VALUES (7, 13, 1, 10, '2021-02-04 10:22:09', 1, '好的', NULL, 5);
INSERT INTO `bio_stationery_employee` VALUES (8, 13, 1, 10, '2021-02-04 10:22:44', 1, '', '这个是申请用品', 5);
INSERT INTO `bio_stationery_employee` VALUES (9, 12, 1, 20, '2021-02-04 10:35:28', 1, '收到了', '我要的', 5);
INSERT INTO `bio_stationery_employee` VALUES (10, 11, 1, 2, '2021-02-04 10:39:06', 0, NULL, '我们部门的没有了', 5);

-- ----------------------------
-- Table structure for msg_notice
-- ----------------------------
DROP TABLE IF EXISTS `msg_notice`;
CREATE TABLE `msg_notice`  (
  `NOTICE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `NOTICE_THEME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告主题',
  `NOTICE_CONTENT` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `NOTICE_EMPLOYEE_NUMBER` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布公告人',
  `NOTICE_TIME` datetime NULL DEFAULT NULL COMMENT '发布公告时间',
  PRIMARY KEY (`NOTICE_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of msg_notice
-- ----------------------------
INSERT INTO `msg_notice` VALUES (1, '系统更新', '于2020年03月28日晚上24：00至明天早上07：00点，OA办公管理系统将暂时关闭。有任何疑问请联系管理员：138XXXXXXXX', '100001', '2020-03-29 16:48:15');
INSERT INTO `msg_notice` VALUES (5, '清明节放假通知', '今年清明节不放假，2020年03月30日正常上班！', '100001', '2020-03-29 23:10:09');

-- ----------------------------
-- Table structure for msg_notice_employee
-- ----------------------------
DROP TABLE IF EXISTS `msg_notice_employee`;
CREATE TABLE `msg_notice_employee`  (
  `NOTICE_EMPLOYEE_REL_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '公告雇员关联ID',
  `NOTICE_ID` int(11) NULL DEFAULT NULL COMMENT '公告ID',
  `EMPLOYEE_ID` int(11) NULL DEFAULT NULL COMMENT '雇员ID',
  `FLAG` tinyint(1) NULL DEFAULT NULL COMMENT '是否已阅，1是，2否',
  `ISSUE_TIME` datetime NULL DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`NOTICE_EMPLOYEE_REL_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 44 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of msg_notice_employee
-- ----------------------------
INSERT INTO `msg_notice_employee` VALUES (23, 1, 1, 1, '2020-03-30 09:27:09');
INSERT INTO `msg_notice_employee` VALUES (24, 1, 6, 0, '2020-03-30 09:27:09');
INSERT INTO `msg_notice_employee` VALUES (25, 1, 5, 1, '2020-03-30 09:27:09');
INSERT INTO `msg_notice_employee` VALUES (26, 1, 2, 1, '2020-03-30 09:27:09');
INSERT INTO `msg_notice_employee` VALUES (27, 1, 3, 1, '2020-03-30 09:27:09');
INSERT INTO `msg_notice_employee` VALUES (28, 1, 4, 0, '2020-03-30 09:27:09');
INSERT INTO `msg_notice_employee` VALUES (29, 1, 7, 0, '2020-03-30 09:27:09');
INSERT INTO `msg_notice_employee` VALUES (30, 5, 1, 1, '2020-03-30 15:28:54');
INSERT INTO `msg_notice_employee` VALUES (31, 5, 6, 0, '2020-03-30 15:28:54');
INSERT INTO `msg_notice_employee` VALUES (32, 5, 5, 1, '2020-03-30 15:28:54');
INSERT INTO `msg_notice_employee` VALUES (33, 5, 2, 1, '2020-03-30 15:28:54');
INSERT INTO `msg_notice_employee` VALUES (34, 5, 3, 1, '2020-03-30 15:28:54');
INSERT INTO `msg_notice_employee` VALUES (35, 5, 4, 0, '2020-03-30 15:28:54');
INSERT INTO `msg_notice_employee` VALUES (36, 5, 7, 0, '2020-03-30 15:28:54');
INSERT INTO `msg_notice_employee` VALUES (37, 5, 1, 1, '2021-02-04 10:40:12');
INSERT INTO `msg_notice_employee` VALUES (38, 5, 6, 0, '2021-02-04 10:40:12');
INSERT INTO `msg_notice_employee` VALUES (39, 5, 5, 0, '2021-02-04 10:40:12');
INSERT INTO `msg_notice_employee` VALUES (40, 5, 2, 0, '2021-02-04 10:40:12');
INSERT INTO `msg_notice_employee` VALUES (41, 5, 3, 0, '2021-02-04 10:40:12');
INSERT INTO `msg_notice_employee` VALUES (42, 5, 4, 0, '2021-02-04 10:40:12');
INSERT INTO `msg_notice_employee` VALUES (43, 5, 7, 0, '2021-02-04 10:40:12');

-- ----------------------------
-- Table structure for sys_department
-- ----------------------------
DROP TABLE IF EXISTS `sys_department`;
CREATE TABLE `sys_department`  (
  `DEPARTMENT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '部门ID',
  `DEPARTMENT_TITLE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部门名称',
  `DEPARTMENT_DESC` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部门说明',
  `DEPARTMENT_START` tinyint(1) NOT NULL COMMENT '部门状态',
  `DEPARTMENT_HEAD_ID` int(11) NULL DEFAULT NULL COMMENT '部门负责人ID',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`DEPARTMENT_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_department
-- ----------------------------
INSERT INTO `sys_department` VALUES (1, '董事部', '管理员都在董事部', 1, 1, '2020-02-23 15:22:59', NULL);
INSERT INTO `sys_department` VALUES (2, '行政部', '出差申请、加班申请、请假申请、用车申请、各种办公用品申请、购买申请、日报周报等', 1, 5, '2020-02-23 15:23:36', NULL);
INSERT INTO `sys_department` VALUES (3, '技术部', '有普通员工和部门经理', 1, 2, '2020-02-23 15:24:00', NULL);
INSERT INTO `sys_department` VALUES (9, '人事部', '部门变更处理、员工档案信息管理', 1, 7, '2020-02-29 10:13:09', NULL);

-- ----------------------------
-- Table structure for sys_employee
-- ----------------------------
DROP TABLE IF EXISTS `sys_employee`;
CREATE TABLE `sys_employee`  (
  `EMPLOYEE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '雇员ID',
  `EMPLOYEE_NAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '雇员姓名',
  `EMPLOYEE_NUMBER` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '雇员工号',
  `EMPLOYEE_PASSWORD` varchar(108) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '雇员密码',
  `EMPLOYEE_SEX` tinyint(1) NULL DEFAULT NULL COMMENT '雇员性别',
  `EMPLOYEE_BIRTHDATE` datetime NULL DEFAULT NULL COMMENT '雇员出生日期',
  `EMPLOYEE_PHONE` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '雇员手机号',
  `EMPLOYEE_EMAIL` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '雇员邮箱',
  `EMPLOYEE_ADDRESS` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '雇员地址',
  `EMPLOYEE_START` tinyint(1) NOT NULL COMMENT '状态',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改信息时间',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `EMPLOYEE_DESC` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `ROLE_ID` int(11) NOT NULL COMMENT '角色ID',
  `DEPARTMENT_ID` int(11) NOT NULL COMMENT '部门ID',
  `EMPLOYEE_PHOTO` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '雇员头像',
  PRIMARY KEY (`EMPLOYEE_ID`) USING BTREE,
  INDEX `sys_employee_ibfk_1`(`ROLE_ID`) USING BTREE,
  INDEX `DEPARTMENT_ID`(`DEPARTMENT_ID`) USING BTREE,
  CONSTRAINT `sys_employee_ibfk_1` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`role_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `sys_employee_ibfk_2` FOREIGN KEY (`DEPARTMENT_ID`) REFERENCES `sys_department` (`department_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_employee
-- ----------------------------
INSERT INTO `sys_employee` VALUES (1, '小马哥', '100001', '9761e38963450c6ef81359dec84307cf', 0, '1995-05-17 22:32:21', '18775903003', 'sads@qq.com', '广西南宁市兴宁区东州路', 1, '2021-02-04 10:00:35', '2020-02-23 15:39:43', '管理员', 1, 1, 'src/main/webapp/WEB-INF/employee/100001/photo.png');
INSERT INTO `sys_employee` VALUES (2, '小红', '100002', 'ccbda63caebc6ef84972d4667865e89c', 0, NULL, '13888888888', NULL, NULL, 1, NULL, '2020-02-28 19:54:05', NULL, 2, 3, NULL);
INSERT INTO `sys_employee` VALUES (3, 'lusi', '100003', '615e3173dec0783fbe4eeb6b790c1a28', 0, '1995-05-17 00:00:00', '13488888888', '907684962@qq.com', '广西南宁', 1, '2020-04-05 23:52:51', '2020-03-14 21:47:52', '说到“幽鬼”呀…他们跟妖精尾巴是出了名的不合。其实我原本也很犹豫到底要加入哪一边——因为，他们似乎也跟这边一样乱来。不过…现在我倒是很庆幸加入了这一边。因为，妖精尾巴…最棒了！——露西·哈特菲利亚', 3, 3, 'src/main/webapp/WEB-INF/employee/100003/photo.png');
INSERT INTO `sys_employee` VALUES (4, '瑞兹', '100004', 'fddb1755eea05caa684be93d0b369729', 1, NULL, '13457896541', NULL, NULL, 1, NULL, '2020-03-16 20:03:50', NULL, 3, 3, NULL);
INSERT INTO `sys_employee` VALUES (5, '奥拉夫', '100005', 'b2a99211a66e5a5f5ff3c2b1205e094a', NULL, NULL, '13457896542', NULL, NULL, 1, '2020-04-02 17:03:36', '2020-03-16 20:06:43', '', 4, 2, NULL);
INSERT INTO `sys_employee` VALUES (6, '维鲁斯', '100006', '3f1013c63a6b9df74a02c8d4b77d5c65', 0, NULL, '13457896543', NULL, NULL, 1, NULL, '2020-03-16 20:09:25', NULL, 1, 1, NULL);
INSERT INTO `sys_employee` VALUES (7, '卡米尔', '100007', '29973ba97d9f8d72342c987595cfa2fa', 1, NULL, '13457896544', NULL, NULL, 1, NULL, '2020-03-16 20:10:13', NULL, 2, 9, NULL);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `MENU_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `MENU_PID` int(11) NULL DEFAULT NULL COMMENT '菜单PID',
  `MENU_TITLE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单名称',
  `MENU_COMMENT` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单描述',
  `MENU_HREF` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单URL',
  `MENU_ICON` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `MENU_START` tinyint(1) NULL DEFAULT NULL COMMENT '菜单状态',
  `CREATE_TIME` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `UPDATE_TIME` datetime NULL DEFAULT NULL COMMENT '修改时间',
  `MENU_SORT` int(11) NULL DEFAULT NULL COMMENT '菜单排序：1最大',
  PRIMARY KEY (`MENU_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (5, -1, '个人信息', NULL, '', 'layui-icon layui-icon-star', 1, '2020-02-23 22:51:30', NULL, 1);
INSERT INTO `sys_menu` VALUES (7, 5, '修改密码', NULL, '/OA_Manager/main/toPage?page=bio/personage/changePwd', 'layui-icon layui-icon-key', 1, '2020-02-23 22:51:57', NULL, NULL);
INSERT INTO `sys_menu` VALUES (16, 48, '菜单管理', '', '/OA_Manager/main/toPage?page=sys/menu/menu', 'layui-icon layui-icon-component', 1, '2020-02-24 17:20:20', '2020-02-28 10:35:50', NULL);
INSERT INTO `sys_menu` VALUES (17, 48, '雇员管理', '', '/OA_Manager/main/toPage?page=sys/employee/employee', 'layui-icon layui-icon-component', 1, '2020-02-24 19:09:33', '2020-02-28 10:35:40', NULL);
INSERT INTO `sys_menu` VALUES (22, 48, '角色管理', '', '/OA_Manager/main/toPage?page=sys/role/role', 'layui-icon layui-icon-component', 1, '2020-02-26 20:01:46', NULL, NULL);
INSERT INTO `sys_menu` VALUES (23, 48, '部门管理', '', '/OA_Manager/main/toPage?page=sys/department/department', 'layui-icon layui-icon-component', 1, '2020-02-28 17:11:46', NULL, NULL);
INSERT INTO `sys_menu` VALUES (24, 48, '权限管理', '', '/OA_Manager/main/toPage?page=sys/permissions/permissions', 'layui-icon layui-icon-component', 1, '2020-02-28 19:46:32', '2020-03-09 17:57:50', NULL);
INSERT INTO `sys_menu` VALUES (27, -1, '请假管理', '', '', 'layui-icon layui-icon-transfer', 1, '2020-03-02 13:48:44', '2020-03-14 16:50:18', 3);
INSERT INTO `sys_menu` VALUES (28, 27, '填写请假单', '', '/OA_Manager/main/toPage?page=bio/leave/addLeave', 'layui-icon layui-icon-edit', 1, '2020-03-02 13:51:52', '2020-03-02 14:04:51', NULL);
INSERT INTO `sys_menu` VALUES (29, 27, '查看请假结果', '', '/OA_Manager/main/toPage?page=bio/leave/leaveHistory', 'layui-icon layui-icon-log', 1, '2020-03-02 13:52:49', '2020-03-19 12:02:11', NULL);
INSERT INTO `sys_menu` VALUES (35, -1, '日常考勤', '', '', 'layui-icon layui-icon-date', 1, '2020-03-22 20:30:21', NULL, 2);
INSERT INTO `sys_menu` VALUES (36, 35, '考勤记录', '', '/OA_Manager/main/toPage?page=bio/punch/punchingCardRecord', 'layui-icon layui-icon-log', 1, '2020-03-22 20:30:44', '2020-03-22 20:35:16', NULL);
INSERT INTO `sys_menu` VALUES (37, 35, '上下班签到', '', '/OA_Manager/main/toPage?page=bio/punch/checkIn', 'layui-icon layui-icon-date', 1, '2020-03-22 21:56:09', '2020-03-22 22:11:01', NULL);
INSERT INTO `sys_menu` VALUES (38, 35, '雇员考勤记录', '', '/OA_Manager/main/toPage?page=bio/punch/employeeAttendanceRecord', 'layui-icon layui-icon-log', 1, '2020-03-22 21:57:11', '2020-03-22 22:11:16', NULL);
INSERT INTO `sys_menu` VALUES (39, -1, '系统公告', '', '/OA_Manager/main/toPage?page=bio/systemNotice', 'layui-icon layui-icon-notice', 1, '2020-03-26 17:05:13', '2020-04-05 19:28:44', 6);
INSERT INTO `sys_menu` VALUES (41, -1, '办公用品', '', '', 'layui-icon layui-icon-component', 1, '2020-03-30 20:26:10', NULL, 4);
INSERT INTO `sys_menu` VALUES (42, 41, '申请办公用品', '', '/OA_Manager/main/toPage?page=bio/stationery/stationery_application', 'layui-icon layui-icon-form', 1, '2020-03-30 20:26:44', '2020-04-02 11:39:35', NULL);
INSERT INTO `sys_menu` VALUES (43, 41, '申请记录', '', '/OA_Manager/main/toPage?page=bio/stationery/stationery_application_record', 'layui-icon layui-icon-cart', 1, '2020-03-30 20:26:57', '2020-04-02 11:40:04', NULL);
INSERT INTO `sys_menu` VALUES (44, 41, '仓库管理', '', '/OA_Manager/main/toPage?page=bio/stationery/stationery_warehouse_management', 'layui-icon layui-icon-component', 1, '2020-03-30 20:27:10', '2020-04-02 11:39:14', NULL);
INSERT INTO `sys_menu` VALUES (45, 41, '仓库入库', '', '/OA_Manager/main/toPage?page=bio/stationery/stationery_warehouse_add', 'layui-icon layui-icon-cart', 1, '2020-04-01 14:01:30', '2020-04-02 11:40:25', NULL);
INSERT INTO `sys_menu` VALUES (46, 41, '仓库入库记录', '', '/OA_Manager/main/toPage?page=bio/stationery/stationery_warehouse_add_record', 'layui-icon layui-icon-chat', 1, '2020-04-01 14:01:44', '2020-04-02 11:40:44', NULL);
INSERT INTO `sys_menu` VALUES (47, 41, '申请办公用品审批', '', '/OA_Manager/main/toPage?page=bio/stationery/stationery_application_approver', 'layui-icon layui-icon-survey', 1, '2020-04-02 17:02:13', '2020-04-02 18:15:48', NULL);
INSERT INTO `sys_menu` VALUES (48, -1, '系统管理', NULL, '', 'layui-icon layui-icon-set', 1, '2020-04-03 19:00:26', NULL, 99);
INSERT INTO `sys_menu` VALUES (49, 5, '个人资料', NULL, '/OA_Manager/main/toPage?page=bio/personage/employeeInfo', 'layui-icon layui-icon-tabs', 1, '2020-04-03 19:02:54', NULL, 16);
INSERT INTO `sys_menu` VALUES (51, 27, '请假单审批', '', '/OA_Manager/main/toPage?page=bio/leave/leave_form_approval', 'layui-icon layui-icon-survey', 1, '2020-04-05 16:32:59', '2020-04-05 16:32:59', 88);
INSERT INTO `sys_menu` VALUES (52, 39, '系统公告记录', '', '/OA_Manager/main/toPage?page=bio/notice/noticeHistory', 'layui-icon layui-icon-log', 1, '2020-04-05 23:03:55', '2020-04-05 23:03:55', 66);
INSERT INTO `sys_menu` VALUES (53, 39, '系统公告管理', '', '/OA_Manager/main/toPage?page=bio/notice/systemNotice', 'layui-icon layui-icon-component', 1, '2020-04-05 23:08:21', '2020-04-05 23:08:21', 67);

-- ----------------------------
-- Table structure for sys_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sys_permissions`;
CREATE TABLE `sys_permissions`  (
  `PERMISSIONS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PERMISSIONS_PID` int(11) NOT NULL,
  `PERMISSIONS_TITLE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PERMISSIONS_DESC` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PERMISSIONS_START` tinyint(1) NOT NULL,
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`PERMISSIONS_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_permissions
-- ----------------------------
INSERT INTO `sys_permissions` VALUES (27, -1, 'employee', '访问雇员页面', 1, '2020-03-09 22:36:02', '2020-04-04 13:05:39');
INSERT INTO `sys_permissions` VALUES (28, 27, 'employeeAdd', '添加雇员', 1, '2020-03-09 22:36:13', NULL);
INSERT INTO `sys_permissions` VALUES (29, 27, 'employeeUpdate', '修改雇员信息', 1, '2020-03-09 22:36:27', NULL);
INSERT INTO `sys_permissions` VALUES (30, 27, 'employeeDelete', '删除雇员', 1, '2020-03-09 22:36:38', NULL);
INSERT INTO `sys_permissions` VALUES (31, 27, 'employeeList', '雇员集合数据', 1, '2020-03-09 22:46:19', NULL);
INSERT INTO `sys_permissions` VALUES (32, -1, 'permissions', '权限页面', 1, '2020-03-10 01:16:25', NULL);
INSERT INTO `sys_permissions` VALUES (33, 32, 'permissionsList', '权限列表', 1, '2020-03-10 01:16:52', NULL);
INSERT INTO `sys_permissions` VALUES (34, 32, 'permissionsAdd', '添加权限', 1, '2020-03-10 01:17:14', NULL);
INSERT INTO `sys_permissions` VALUES (35, 32, 'permissionsUpdate', '修改权限信息', 1, '2020-03-10 01:17:29', NULL);
INSERT INTO `sys_permissions` VALUES (36, 32, 'permissionsDelete', '删除权限', 1, '2020-03-10 01:17:42', NULL);
INSERT INTO `sys_permissions` VALUES (37, -1, 'menu', '访问菜单页面', 1, '2020-03-10 13:53:32', NULL);
INSERT INTO `sys_permissions` VALUES (38, 37, 'menuList', '菜单表格数据', 1, '2020-03-10 13:54:12', NULL);
INSERT INTO `sys_permissions` VALUES (39, 37, 'menuAdd', '添加菜单', 1, '2020-03-10 13:54:27', NULL);
INSERT INTO `sys_permissions` VALUES (40, 37, 'menuUpdate', '修改菜单信息', 1, '2020-03-10 13:55:01', NULL);
INSERT INTO `sys_permissions` VALUES (41, 37, 'menuDelete', '删除菜单', 1, '2020-03-10 13:55:17', NULL);
INSERT INTO `sys_permissions` VALUES (42, -1, 'role', '访问角色页面', 1, '2020-03-10 13:56:02', NULL);
INSERT INTO `sys_permissions` VALUES (43, 42, 'roleList', '角色表格数据', 1, '2020-03-10 13:56:27', NULL);
INSERT INTO `sys_permissions` VALUES (44, 42, 'roleAdd', '添加角色', 1, '2020-03-10 13:56:39', NULL);
INSERT INTO `sys_permissions` VALUES (45, 42, 'roleUpdate', '修改角色信息', 1, '2020-03-10 13:56:53', NULL);
INSERT INTO `sys_permissions` VALUES (46, 42, 'roleDelete', '删除角色', 1, '2020-03-10 13:57:29', NULL);
INSERT INTO `sys_permissions` VALUES (47, -1, 'department', '访问部门页面', 1, '2020-03-10 13:58:04', NULL);
INSERT INTO `sys_permissions` VALUES (48, 47, 'departmentList', '部门表格数据', 1, '2020-03-10 13:59:19', NULL);
INSERT INTO `sys_permissions` VALUES (49, 47, 'departmentAdd', '添加部门', 1, '2020-03-10 13:59:34', NULL);
INSERT INTO `sys_permissions` VALUES (50, 47, 'departmentUpdate', '修改部门信息', 1, '2020-03-10 13:59:52', NULL);
INSERT INTO `sys_permissions` VALUES (51, 47, 'departmentDelete', '删除部门', 1, '2020-03-10 14:00:07', NULL);
INSERT INTO `sys_permissions` VALUES (52, 27, 'employeeUpdateRole', '雇员修改角色', 1, '2020-03-10 14:03:51', NULL);
INSERT INTO `sys_permissions` VALUES (53, 27, 'employeeUpdateDepartment', '雇员修改部门', 1, '2020-03-10 14:11:27', NULL);
INSERT INTO `sys_permissions` VALUES (54, 27, 'employeePasswordReset', '雇员密码重置', 1, '2020-03-10 14:11:59', NULL);
INSERT INTO `sys_permissions` VALUES (55, 37, 'menuAddSubmenu', '添加子菜单', 1, '2020-03-10 21:51:52', NULL);
INSERT INTO `sys_permissions` VALUES (56, 42, 'roleSetMenu', '角色设置菜单', 1, '2020-03-10 22:31:50', NULL);
INSERT INTO `sys_permissions` VALUES (57, 42, 'roleSetPermissions', '角色设置权限', 1, '2020-03-10 22:32:14', NULL);
INSERT INTO `sys_permissions` VALUES (58, -1, 'process', '流程管理', 1, '2020-03-12 18:48:27', NULL);
INSERT INTO `sys_permissions` VALUES (59, 58, 'processList', '流程表格集合', 1, '2020-03-12 18:49:10', NULL);
INSERT INTO `sys_permissions` VALUES (60, 58, 'historyProcessingTask', '查看历史处理任务', 1, '2020-03-18 20:09:17', NULL);
INSERT INTO `sys_permissions` VALUES (61, 58, 'currentTask', '查看现有任务', 1, '2020-03-18 20:09:28', NULL);
INSERT INTO `sys_permissions` VALUES (62, 58, 'viewDetails', '查看详情', 1, '2020-03-18 20:10:40', NULL);
INSERT INTO `sys_permissions` VALUES (63, 58, 'approve', '审批', 1, '2020-03-18 20:10:51', NULL);
INSERT INTO `sys_permissions` VALUES (64, 27, 'ceshi1', 'ceshi1', 1, '2020-04-04 12:38:58', NULL);
INSERT INTO `sys_permissions` VALUES (65, -1, 'employee1', '访问雇员页面', 1, '2020-04-04 12:44:18', NULL);

-- ----------------------------
-- Table structure for sys_process
-- ----------------------------
DROP TABLE IF EXISTS `sys_process`;
CREATE TABLE `sys_process`  (
  `PROCESS_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '流程ID',
  `PROCESS_TITLE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '流程名称',
  `PROCESS_CLASSIFY` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '流程分类',
  `PROCESS_CONTENT` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '流程内容',
  `PROCESS_START` tinyint(4) NOT NULL DEFAULT 0 COMMENT '流程处理状态',
  `CREATE_TIME` datetime NOT NULL COMMENT '创建流程时间',
  PRIMARY KEY (`PROCESS_ID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_process
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_TITLE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ROLE_DESC` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ROLE_START` tinyint(1) NOT NULL,
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`ROLE_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', '拥有最高系统权限，可以使用系统中全部功能；', 1, '2020-02-23 14:36:39', '2020-03-08 19:18:12');
INSERT INTO `sys_role` VALUES (2, '部门经理', '拥有部门经理权限，可以使用流程管理、雇员管理、会议管理等', 1, '2020-02-23 14:37:46', '2020-03-08 19:19:57');
INSERT INTO `sys_role` VALUES (3, '普通员工', '可以使用使用普通员工权限，考勤管理、办公用品申请，请假申请等功能；', 1, '2020-02-23 14:39:13', '2020-03-08 19:22:56');
INSERT INTO `sys_role` VALUES (4, '部门经理（行政部）', '', 1, '2020-04-02 17:02:46', NULL);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `ROLE_MENU_REL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_ID` int(11) NOT NULL,
  `MENU_ID` int(11) NOT NULL,
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`ROLE_MENU_REL_ID`) USING BTREE,
  INDEX `ROLE_ID`(`ROLE_ID`) USING BTREE,
  INDEX `MENU_ID`(`MENU_ID`) USING BTREE,
  CONSTRAINT `sys_role_menu_ibfk_1` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sys_role_menu_ibfk_2` FOREIGN KEY (`MENU_ID`) REFERENCES `sys_menu` (`menu_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 950 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (435, 2, 5, '2020-03-17 14:24:03', NULL);
INSERT INTO `sys_role_menu` VALUES (437, 2, 7, '2020-03-17 14:24:03', NULL);
INSERT INTO `sys_role_menu` VALUES (444, 2, 27, '2020-03-17 14:24:03', NULL);
INSERT INTO `sys_role_menu` VALUES (445, 2, 28, '2020-03-17 14:24:03', NULL);
INSERT INTO `sys_role_menu` VALUES (446, 2, 29, '2020-03-17 14:24:03', NULL);
INSERT INTO `sys_role_menu` VALUES (448, 2, 16, '2020-03-17 14:24:03', NULL);
INSERT INTO `sys_role_menu` VALUES (449, 2, 17, '2020-03-17 14:24:03', NULL);
INSERT INTO `sys_role_menu` VALUES (450, 2, 22, '2020-03-17 14:24:03', NULL);
INSERT INTO `sys_role_menu` VALUES (451, 2, 23, '2020-03-17 14:24:03', NULL);
INSERT INTO `sys_role_menu` VALUES (452, 2, 24, '2020-03-17 14:24:03', NULL);
INSERT INTO `sys_role_menu` VALUES (697, 4, 5, '2020-04-02 17:03:15', NULL);
INSERT INTO `sys_role_menu` VALUES (699, 4, 7, '2020-04-02 17:03:15', NULL);
INSERT INTO `sys_role_menu` VALUES (706, 4, 27, '2020-04-02 17:03:15', NULL);
INSERT INTO `sys_role_menu` VALUES (707, 4, 28, '2020-04-02 17:03:15', NULL);
INSERT INTO `sys_role_menu` VALUES (708, 4, 29, '2020-04-02 17:03:15', NULL);
INSERT INTO `sys_role_menu` VALUES (709, 4, 35, '2020-04-02 17:03:15', NULL);
INSERT INTO `sys_role_menu` VALUES (710, 4, 36, '2020-04-02 17:03:15', NULL);
INSERT INTO `sys_role_menu` VALUES (711, 4, 37, '2020-04-02 17:03:15', NULL);
INSERT INTO `sys_role_menu` VALUES (712, 4, 38, '2020-04-02 17:03:15', NULL);
INSERT INTO `sys_role_menu` VALUES (713, 4, 39, '2020-04-02 17:03:15', NULL);
INSERT INTO `sys_role_menu` VALUES (715, 4, 41, '2020-04-02 17:03:15', NULL);
INSERT INTO `sys_role_menu` VALUES (716, 4, 42, '2020-04-02 17:03:15', NULL);
INSERT INTO `sys_role_menu` VALUES (717, 4, 43, '2020-04-02 17:03:15', NULL);
INSERT INTO `sys_role_menu` VALUES (718, 4, 44, '2020-04-02 17:03:15', NULL);
INSERT INTO `sys_role_menu` VALUES (719, 4, 45, '2020-04-02 17:03:15', NULL);
INSERT INTO `sys_role_menu` VALUES (720, 4, 46, '2020-04-02 17:03:15', NULL);
INSERT INTO `sys_role_menu` VALUES (721, 4, 47, '2020-04-02 17:03:15', NULL);
INSERT INTO `sys_role_menu` VALUES (909, 1, 5, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (910, 1, 7, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (911, 1, 49, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (912, 1, 35, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (913, 1, 36, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (914, 1, 37, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (915, 1, 38, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (916, 1, 27, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (917, 1, 28, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (918, 1, 29, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (919, 1, 51, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (920, 1, 41, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (921, 1, 42, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (922, 1, 43, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (923, 1, 44, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (924, 1, 45, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (925, 1, 46, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (926, 1, 47, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (927, 1, 39, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (928, 1, 52, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (929, 1, 53, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (930, 1, 48, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (931, 1, 16, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (932, 1, 17, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (933, 1, 22, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (934, 1, 23, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (935, 1, 24, '2020-04-05 23:37:51', NULL);
INSERT INTO `sys_role_menu` VALUES (936, 3, 5, '2020-04-05 23:58:33', NULL);
INSERT INTO `sys_role_menu` VALUES (937, 3, 7, '2020-04-05 23:58:33', NULL);
INSERT INTO `sys_role_menu` VALUES (938, 3, 49, '2020-04-05 23:58:33', NULL);
INSERT INTO `sys_role_menu` VALUES (939, 3, 35, '2020-04-05 23:58:33', NULL);
INSERT INTO `sys_role_menu` VALUES (940, 3, 36, '2020-04-05 23:58:33', NULL);
INSERT INTO `sys_role_menu` VALUES (941, 3, 37, '2020-04-05 23:58:33', NULL);
INSERT INTO `sys_role_menu` VALUES (942, 3, 27, '2020-04-05 23:58:33', NULL);
INSERT INTO `sys_role_menu` VALUES (943, 3, 28, '2020-04-05 23:58:33', NULL);
INSERT INTO `sys_role_menu` VALUES (944, 3, 29, '2020-04-05 23:58:33', NULL);
INSERT INTO `sys_role_menu` VALUES (945, 3, 41, '2020-04-05 23:58:33', NULL);
INSERT INTO `sys_role_menu` VALUES (946, 3, 42, '2020-04-05 23:58:33', NULL);
INSERT INTO `sys_role_menu` VALUES (947, 3, 43, '2020-04-05 23:58:33', NULL);
INSERT INTO `sys_role_menu` VALUES (948, 3, 39, '2020-04-05 23:58:33', NULL);
INSERT INTO `sys_role_menu` VALUES (949, 3, 52, '2020-04-05 23:58:33', NULL);

-- ----------------------------
-- Table structure for sys_role_permissions
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permissions`;
CREATE TABLE `sys_role_permissions`  (
  `ROLE_PERMISSIONS_PEL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLE_ID` int(11) NOT NULL,
  `PERMISSIONS_ID` int(11) NOT NULL,
  `CREATE_TIME` datetime NULL DEFAULT NULL,
  `UPDATE_TIME` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`ROLE_PERMISSIONS_PEL_ID`) USING BTREE,
  INDEX `ROLE_ID`(`ROLE_ID`) USING BTREE,
  INDEX `PERMISSIONS_ID`(`PERMISSIONS_ID`) USING BTREE,
  CONSTRAINT `sys_role_permissions_ibfk_1` FOREIGN KEY (`ROLE_ID`) REFERENCES `sys_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sys_role_permissions_ibfk_2` FOREIGN KEY (`PERMISSIONS_ID`) REFERENCES `sys_permissions` (`permissions_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 446 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_permissions
-- ----------------------------
INSERT INTO `sys_role_permissions` VALUES (199, 2, 27, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (200, 2, 28, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (201, 2, 29, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (202, 2, 30, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (203, 2, 31, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (204, 2, 52, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (205, 2, 53, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (206, 2, 54, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (207, 2, 32, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (208, 2, 33, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (209, 2, 34, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (210, 2, 35, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (211, 2, 36, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (212, 2, 37, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (213, 2, 38, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (214, 2, 39, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (215, 2, 40, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (216, 2, 41, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (217, 2, 55, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (218, 2, 42, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (219, 2, 43, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (220, 2, 44, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (221, 2, 45, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (222, 2, 46, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (223, 2, 56, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (224, 2, 57, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (225, 2, 47, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (226, 2, 48, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (227, 2, 49, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (228, 2, 50, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (229, 2, 51, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (230, 2, 58, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (231, 2, 59, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (232, 2, 60, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (233, 2, 61, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (234, 2, 62, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (235, 2, 63, '2020-03-18 20:44:02', NULL);
INSERT INTO `sys_role_permissions` VALUES (236, 4, 27, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (237, 4, 28, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (238, 4, 29, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (239, 4, 30, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (240, 4, 31, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (241, 4, 52, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (242, 4, 53, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (243, 4, 54, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (244, 4, 32, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (245, 4, 33, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (246, 4, 34, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (247, 4, 35, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (248, 4, 36, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (249, 4, 37, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (250, 4, 38, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (251, 4, 39, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (252, 4, 40, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (253, 4, 41, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (254, 4, 55, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (255, 4, 42, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (256, 4, 43, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (257, 4, 44, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (258, 4, 45, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (259, 4, 46, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (260, 4, 56, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (261, 4, 57, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (262, 4, 47, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (263, 4, 48, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (264, 4, 49, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (265, 4, 50, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (266, 4, 51, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (267, 4, 58, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (268, 4, 59, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (269, 4, 60, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (270, 4, 61, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (271, 4, 62, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (272, 4, 63, '2020-04-02 17:03:24', NULL);
INSERT INTO `sys_role_permissions` VALUES (407, 1, 27, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (408, 1, 28, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (409, 1, 29, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (410, 1, 30, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (411, 1, 31, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (412, 1, 52, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (413, 1, 53, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (414, 1, 54, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (415, 1, 64, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (416, 1, 32, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (417, 1, 33, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (418, 1, 34, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (419, 1, 35, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (420, 1, 36, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (421, 1, 37, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (422, 1, 38, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (423, 1, 39, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (424, 1, 40, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (425, 1, 41, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (426, 1, 55, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (427, 1, 42, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (428, 1, 43, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (429, 1, 44, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (430, 1, 45, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (431, 1, 46, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (432, 1, 56, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (433, 1, 57, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (434, 1, 47, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (435, 1, 48, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (436, 1, 49, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (437, 1, 50, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (438, 1, 51, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (439, 1, 58, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (440, 1, 59, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (441, 1, 60, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (442, 1, 61, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (443, 1, 62, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (444, 1, 63, '2020-04-05 15:27:06', NULL);
INSERT INTO `sys_role_permissions` VALUES (445, 1, 65, '2020-04-05 15:27:06', NULL);

SET FOREIGN_KEY_CHECKS = 1;
