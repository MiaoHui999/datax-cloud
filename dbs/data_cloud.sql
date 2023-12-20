/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50741
 Source Host           : localhost:3306
 Source Schema         : data_cloud

 Target Server Type    : MySQL
 Target Server Version : 50741
 File Encoding         : 65001

 Date: 19/12/2023 13:37:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键ID',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态（0不启用，1启用）',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表名称',
  `table_comment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '表描述',
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '实体类名称',
  `package_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `column_json` json NULL COMMENT '表字段',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '代码生成信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of gen_table
-- ----------------------------

-- ----------------------------
-- Table structure for hibernate_sequence
-- ----------------------------
DROP TABLE IF EXISTS `hibernate_sequence`;
CREATE TABLE `hibernate_sequence`  (
  `next_val` bigint(20) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hibernate_sequence
-- ----------------------------
INSERT INTO `hibernate_sequence` VALUES (1);
INSERT INTO `hibernate_sequence` VALUES (1);
INSERT INTO `hibernate_sequence` VALUES (1);

-- ----------------------------
-- Table structure for metadata_authorize
-- ----------------------------
DROP TABLE IF EXISTS `metadata_authorize`;
CREATE TABLE `metadata_authorize`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `object_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `object_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of metadata_authorize
-- ----------------------------

-- ----------------------------
-- Table structure for metadata_change_record
-- ----------------------------
DROP TABLE IF EXISTS `metadata_change_record`;
CREATE TABLE `metadata_change_record`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime(6) NULL DEFAULT NULL,
  `create_dept` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `field_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `field_new_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `field_old_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `object_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `object_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `source_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `source_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `table_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `version` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of metadata_change_record
-- ----------------------------

-- ----------------------------
-- Table structure for metadata_column
-- ----------------------------
DROP TABLE IF EXISTS `metadata_column`;
CREATE TABLE `metadata_column`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `column_comment` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `column_key` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `column_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `column_nullable` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `column_position` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data_default` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data_length` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data_precision` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data_scale` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `data_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `source_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `source_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `table_comment` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `table_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of metadata_column
-- ----------------------------

-- ----------------------------
-- Table structure for metadata_source
-- ----------------------------
DROP TABLE IF EXISTS `metadata_source`;
CREATE TABLE `metadata_source`  (
  `id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `create_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `create_time` datetime(6) NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `update_time` datetime(6) NULL DEFAULT NULL,
  `create_dept` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `db_schema` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `db_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_sync` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `source_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of metadata_source
-- ----------------------------

-- ----------------------------
-- Table structure for metadata_table
-- ----------------------------
DROP TABLE IF EXISTS `metadata_table`;
CREATE TABLE `metadata_table`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `source_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `source_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `table_comment` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `table_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of metadata_table
-- ----------------------------

-- ----------------------------
-- Table structure for oauth_client_details
-- ----------------------------
DROP TABLE IF EXISTS `oauth_client_details`;
CREATE TABLE `oauth_client_details`  (
  `client_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `resource_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `client_secret` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `scope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `authorized_grant_types` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `web_server_redirect_uri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `authorities` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `access_token_validity` int(11) NULL DEFAULT NULL,
  `refresh_token_validity` int(11) NULL DEFAULT NULL,
  `additional_information` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `autoapprove` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`client_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '终端信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of oauth_client_details
-- ----------------------------
INSERT INTO `oauth_client_details` VALUES ('datax', NULL, '$2a$10$3rV8TA7XlfVkZrP0kA0t7OqKoQa93Mw/VZii6nP62pqiD.AjKSUja', 'all', 'password,refresh_token,client_credentials,authorization_code', 'http://baidu.com', NULL, 86400, 604800, NULL, 'true');

-- ----------------------------
-- Table structure for qrtz_job
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job`;
CREATE TABLE `qrtz_job`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键ID',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态（0不启用，1启用）',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `create_dept` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人所属部门',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `job_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `bean_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'Spring Bean名称',
  `method_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '方法名称',
  `method_params` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '方法参数',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT 'cron表达式',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_job
-- ----------------------------
INSERT INTO `qrtz_job` VALUES ('1291206900121325569', 0, '1214835832967581698', '2020-08-06 10:58:09', '1197789917762031617', '1214835832967581698', '2020-08-06 10:58:09', NULL, '测试无参数任务', 'quartzTask', 'withoutParams', NULL, '30 * * * * ?');
INSERT INTO `qrtz_job` VALUES ('1291207185065562113', 0, '1214835832967581698', '2020-08-06 10:59:17', '1197789917762031617', '1214835832967581698', '2020-08-06 10:59:17', NULL, '测试有参数任务', 'quartzTask', 'withParams', '我是参数', '45 * * * * ?');

-- ----------------------------
-- Table structure for qrtz_job_log
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_log`;
CREATE TABLE `qrtz_job_log`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '数据源主键ID',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态（0不启用，1启用）',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `job_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '任务ID',
  `msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '信息记录',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '定时任务日志信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of qrtz_job_log
-- ----------------------------
INSERT INTO `qrtz_job_log` VALUES ('1291206988457562114', 1, '2020-08-06 10:58:30', '1291206900121325569', '【测试无参数任务】任务执行结束，总共耗时：1毫秒');
INSERT INTO `qrtz_job_log` VALUES ('1291207239725731841', 1, '2020-08-06 10:59:30', '1291206900121325569', '【测试无参数任务】任务执行结束，总共耗时：0毫秒');
INSERT INTO `qrtz_job_log` VALUES ('1291207302669651969', 1, '2020-08-06 10:59:45', '1291207185065562113', '【测试有参数任务】任务执行结束，总共耗时：0毫秒');
INSERT INTO `qrtz_job_log` VALUES ('1291207491547549698', 1, '2020-08-06 11:00:30', '1291206900121325569', '【测试无参数任务】任务执行结束，总共耗时：0毫秒');
INSERT INTO `qrtz_job_log` VALUES ('1291207554516635649', 1, '2020-08-06 11:00:45', '1291207185065562113', '【测试有参数任务】任务执行结束，总共耗时：0毫秒');
INSERT INTO `qrtz_job_log` VALUES ('1291207806330064898', 1, '2020-08-06 11:01:45', '1291207185065562113', '【测试有参数任务】任务执行结束，总共耗时：0毫秒');
INSERT INTO `qrtz_job_log` VALUES ('1291207994734006274', 1, '2020-08-06 11:02:30', '1291206900121325569', '【测试无参数任务】任务执行结束，总共耗时：0毫秒');
INSERT INTO `qrtz_job_log` VALUES ('1294468070324154369', 1, '2020-08-15 10:56:53', '1291206900121325569', '【测试无参数任务】任务执行结束，总共耗时：3毫秒');
INSERT INTO `qrtz_job_log` VALUES ('1295228235444965378', 1, '2020-08-17 13:17:30', '1291206900121325569', '【测试无参数任务】任务执行结束，总共耗时：21毫秒');
INSERT INTO `qrtz_job_log` VALUES ('1323523681314091010', 1, '2020-11-03 15:13:30', '1291206900121325569', '【测试无参数任务】任务执行结束，总共耗时：2毫秒');
INSERT INTO `qrtz_job_log` VALUES ('1323523763027521538', 1, '2020-11-03 15:13:50', '1291206900121325569', '【测试无参数任务】任务执行结束，总共耗时：0毫秒');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键ID',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态（0不启用，1启用）',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `config_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参数名称',
  `config_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参数键名',
  `config_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '参数键值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '系统参数配置信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1265635179754459137', 1, '1214835832967581698', '2020-05-27 21:25:16', '1214835832967581698', '2020-07-06 10:47:20', '', '初始化密码', 'sys.user.password', '123456');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键ID',
  `parent_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父部门ID',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门名称',
  `dept_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门编码（数据权限）',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态（0不启用，1启用）',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES ('1197789917762031617', '0', 'xx科技', '10', 1, '1', '2019-11-22 16:12:25', '1', '2019-11-22 16:12:25', NULL);
INSERT INTO `sys_dept` VALUES ('1197790192543469570', '1197789917762031617', '研发部门', '10001', 1, '1', '2019-11-22 16:13:30', '1', '2019-11-22 16:13:30', NULL);
INSERT INTO `sys_dept` VALUES ('1197790560782389250', '1197789917762031617', '市场部门', '10002', 1, '1', '2019-11-22 16:14:58', '1', '2019-11-22 16:14:58', NULL);

-- ----------------------------
-- Table structure for sys_dept_relation
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept_relation`;
CREATE TABLE `sys_dept_relation`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门关系主键ID',
  `ancestor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '祖先节点',
  `descendant` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '后代节点',
  PRIMARY KEY (`id`, `ancestor`, `descendant`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '部门关系表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dept_relation
-- ----------------------------
INSERT INTO `sys_dept_relation` VALUES ('1197789918374400001', '1197789917762031617', '1197789917762031617');
INSERT INTO `sys_dept_relation` VALUES ('1197789918374400001', '1197789917762031617', '1197790192543469570');
INSERT INTO `sys_dept_relation` VALUES ('1197789918374400001', '1197789917762031617', '1197790560782389250');
INSERT INTO `sys_dept_relation` VALUES ('1197789918374400001', '1197789917762031617', '1197790722489585666');
INSERT INTO `sys_dept_relation` VALUES ('1197790192677687298', '1197790192543469570', '1197790192543469570');
INSERT INTO `sys_dept_relation` VALUES ('1197790560828526593', '1197790560782389250', '1197790560782389250');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键ID',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态（0不启用，1启用）',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `dict_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典名称',
  `dict_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典编码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典编码信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES ('1254701165563764738', 1, '1214835832967581698', '2020-04-27 17:17:24', '1214835832967581698', '2020-04-27 17:17:24', NULL, '菜单类型', 'sys_menu_type');
INSERT INTO `sys_dict` VALUES ('1254701402755850241', 1, '1214835832967581698', '2020-04-27 17:18:20', '1214835832967581698', '2020-04-27 17:18:20', NULL, '数据状态', 'sys_common_status');
INSERT INTO `sys_dict` VALUES ('1255033722255945729', 1, '1214835832967581698', '2020-04-28 15:18:51', '1214835832967581698', '2020-04-28 15:18:51', NULL, '数据范围', 'sys_data_scope');
INSERT INTO `sys_dict` VALUES ('1255037349741703169', 1, '1214835832967581698', '2020-04-28 15:33:16', '1214835832967581698', '2020-04-28 15:33:16', NULL, '数据库类型', 'data_db_type');
INSERT INTO `sys_dict` VALUES ('1255047550985297922', 1, '1214835832967581698', '2020-04-28 16:13:48', '1214835832967581698', '2020-04-28 16:13:48', NULL, '是否', 'sys_yes_no');
INSERT INTO `sys_dict` VALUES ('1255047909942222850', 1, '1214835832967581698', '2020-04-28 16:15:14', '1214835832967581698', '2020-04-28 16:15:14', NULL, '请求方式', 'data_req_method');
INSERT INTO `sys_dict` VALUES ('1255048146102509569', 1, '1214835832967581698', '2020-04-28 16:16:10', '1214835832967581698', '2020-04-28 16:16:10', NULL, '返回格式', 'data_res_type');
INSERT INTO `sys_dict` VALUES ('1255049472299491329', 1, '1214835832967581698', '2020-04-28 16:21:27', '1214835832967581698', '2020-04-28 16:21:27', NULL, '配置方式', 'data_config_type');
INSERT INTO `sys_dict` VALUES ('1255049868610887682', 1, '1214835832967581698', '2020-04-28 16:23:01', '1214835832967581698', '2020-04-28 16:23:01', NULL, 'SQL操作符', 'data_where_type');
INSERT INTO `sys_dict` VALUES ('1255050897825980418', 1, '1214835832967581698', '2020-04-28 16:27:06', '1214835832967581698', '2020-04-28 16:27:06', NULL, '参数类型', 'data_param_type');
INSERT INTO `sys_dict` VALUES ('1255052030422278145', 1, '1214835832967581698', '2020-04-28 16:31:36', '1214835832967581698', '2020-04-28 16:31:36', NULL, '脱敏类型', 'data_cipher_type');
INSERT INTO `sys_dict` VALUES ('1255054338933645314', 1, '1214835832967581698', '2020-04-28 16:40:47', '1214835832967581698', '2020-04-28 16:40:47', NULL, '正则规则类型', 'data_regex_crypto');
INSERT INTO `sys_dict` VALUES ('1255054468176928770', 1, '1214835832967581698', '2020-04-28 16:41:18', '1214835832967581698', '2020-04-28 16:41:18', NULL, '加密规则类型', 'data_algorithm_crypto');
INSERT INTO `sys_dict` VALUES ('1275048574979174401', 1, '1214835832967581698', '2020-06-22 20:50:44', '1214835832967581698', '2020-06-22 20:50:44', NULL, '任务状态', 'sys_job_status');
INSERT INTO `sys_dict` VALUES ('1275054601837506561', 1, '1214835832967581698', '2020-06-22 21:14:41', '1214835832967581698', '2020-06-22 21:14:41', NULL, '系统状态', 'sys_normal_status');
INSERT INTO `sys_dict` VALUES ('1280793187027292161', 1, '1214835832967581698', '2020-07-08 17:17:46', '1214835832967581698', '2020-07-08 17:17:46', NULL, 'API状态', 'data_api_status');
INSERT INTO `sys_dict` VALUES ('1285923703451848705', 1, '1214835832967581698', '2020-07-22 21:04:37', '1214835832967581698', '2020-07-22 21:04:37', NULL, '聚合函数', 'data_aggregate_type');
INSERT INTO `sys_dict` VALUES ('1296680107225706498', 1, '1296680107225706498', '2020-08-21 21:04:37', '1214835832967581698', '2020-08-21 21:04:37', NULL, '服务类型', 'data_service_type');
INSERT INTO `sys_dict` VALUES ('1300344099387244546', 1, '1296680107225706498', '2020-08-21 21:04:37', '1214835832967581698', '2020-08-21 21:04:37', NULL, '查询方式', 'data_query_type');
INSERT INTO `sys_dict` VALUES ('1300344451876577281', 1, '1296680107225706498', '2020-08-21 21:04:37', '1214835832967581698', '2020-08-21 21:04:37', NULL, '显示类型', 'data_html_type');
INSERT INTO `sys_dict` VALUES ('1300708138781016066', 1, '1296680107225706498', '2020-08-21 21:04:37', '1214835832967581698', '2020-08-21 21:04:37', NULL, 'ORACLE数据类型', 'data_type_oracle');
INSERT INTO `sys_dict` VALUES ('1301041843055632386', 1, '1296680107225706498', '2020-08-21 21:04:37', '1214835832967581698', '2020-08-21 21:04:37', NULL, 'MYSQL数据类型', 'data_type_mysql');
INSERT INTO `sys_dict` VALUES ('1309001146932670465', 1, '1296680107225706498', '2020-08-21 21:04:37', '1214835832967581698', '2020-08-21 21:04:37', NULL, '流程状态', 'sys_flow_status');
INSERT INTO `sys_dict` VALUES ('1310494826919211009', 1, '1296680107225706498', '2020-08-21 21:04:37', '1214835832967581698', '2020-08-21 21:04:37', NULL, '字典对照状态', 'data_contrast_status');

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键ID',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态（0不启用，1启用）',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `dict_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典id',
  `item_text` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典项文本',
  `item_value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '字典项值',
  `item_sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '字典项信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_dict_item
-- ----------------------------
INSERT INTO `sys_dict_item` VALUES ('1254702149128052737', 1, '1214835832967581698', '2020-04-27 17:21:18', '1214835832967581698', '2020-04-27 17:21:18', NULL, '1254701165563764738', '0', '模块', 1);
INSERT INTO `sys_dict_item` VALUES ('1254702177166974977', 1, '1214835832967581698', '2020-04-27 17:21:25', '1214835832967581698', '2020-04-27 17:21:25', NULL, '1254701165563764738', '1', '菜单', 2);
INSERT INTO `sys_dict_item` VALUES ('1254702210272616449', 1, '1214835832967581698', '2020-04-27 17:21:33', '1214835832967581698', '2020-04-27 17:21:33', NULL, '1254701165563764738', '2', '按钮', 3);
INSERT INTO `sys_dict_item` VALUES ('1254702351834570753', 1, '1214835832967581698', '2020-04-27 17:22:07', '1214835832967581698', '2020-04-27 17:22:07', NULL, '1254701402755850241', '0', '禁用', 1);
INSERT INTO `sys_dict_item` VALUES ('1254702385279950850', 1, '1214835832967581698', '2020-04-27 17:22:15', '1214835832967581698', '2020-04-27 17:22:15', NULL, '1254701402755850241', '1', '启用', 2);
INSERT INTO `sys_dict_item` VALUES ('1255034071784075266', 1, '1214835832967581698', '2020-04-28 15:20:15', '1214835832967581698', '2020-04-28 15:20:15', NULL, '1255033722255945729', '1', '全部数据权限', 1);
INSERT INTO `sys_dict_item` VALUES ('1255034118043054082', 1, '1214835832967581698', '2020-04-28 15:20:26', '1214835832967581698', '2020-04-28 15:20:26', NULL, '1255033722255945729', '2', '自定义数据权限', 2);
INSERT INTO `sys_dict_item` VALUES ('1255034148703416321', 1, '1214835832967581698', '2020-04-28 15:20:33', '1214835832967581698', '2020-04-28 15:20:33', NULL, '1255033722255945729', '3', '本部门数据权限', 3);
INSERT INTO `sys_dict_item` VALUES ('1255034178491363329', 1, '1214835832967581698', '2020-04-28 15:20:40', '1214835832967581698', '2020-04-28 15:20:40', NULL, '1255033722255945729', '4', '本部门及以下数据权限', 4);
INSERT INTO `sys_dict_item` VALUES ('1255034207415283713', 1, '1214835832967581698', '2020-04-28 15:20:47', '1214835832967581698', '2020-04-28 15:20:47', NULL, '1255033722255945729', '5', '仅本人数据权限', 5);
INSERT INTO `sys_dict_item` VALUES ('1255037454632857602', 1, '1214835832967581698', '2020-04-28 15:33:41', '1214835832967581698', '2020-04-28 15:33:41', NULL, '1255037349741703169', '1', 'MySql数据库', 1);
INSERT INTO `sys_dict_item` VALUES ('1255037499587407874', 1, '1214835832967581698', '2020-04-28 15:33:52', '1214835832967581698', '2020-04-28 15:33:52', NULL, '1255037349741703169', '2', 'MariaDB数据库', 2);
INSERT INTO `sys_dict_item` VALUES ('1255037543732457474', 1, '1214835832967581698', '2020-04-28 15:34:03', '1214835832967581698', '2020-04-28 15:34:03', NULL, '1255037349741703169', '3', 'Oracle11g及以下数据库', 3);
INSERT INTO `sys_dict_item` VALUES ('1255037611558547458', 1, '1214835832967581698', '2020-04-28 15:34:19', '1214835832967581698', '2020-04-28 15:34:19', NULL, '1255037349741703169', '4', 'Oracle12c+数据库', 4);
INSERT INTO `sys_dict_item` VALUES ('1255037682886881282', 1, '1214835832967581698', '2020-04-28 15:34:36', '1214835832967581698', '2020-04-28 15:34:36', NULL, '1255037349741703169', '5', 'PostgreSql数据库', 5);
INSERT INTO `sys_dict_item` VALUES ('1255037722741157890', 1, '1214835832967581698', '2020-04-28 15:34:45', '1214835832967581698', '2020-04-28 15:34:45', NULL, '1255037349741703169', '6', 'SQLServer2008及以下数据库', 6);
INSERT INTO `sys_dict_item` VALUES ('1255037772984725506', 1, '1214835832967581698', '2020-04-28 15:34:57', '1214835832967581698', '2020-04-28 15:34:57', NULL, '1255037349741703169', '7', 'SQLServer2012+数据库', 7);
INSERT INTO `sys_dict_item` VALUES ('1255037816378994690', 1, '1214835832967581698', '2020-04-28 15:35:08', '1214835832967581698', '2020-04-28 15:35:08', NULL, '1255037349741703169', '8', '其他数据库', 8);
INSERT INTO `sys_dict_item` VALUES ('1255047584040607746', 1, '1214835832967581698', '2020-04-28 16:13:56', '1214835832967581698', '2020-04-28 16:13:56', NULL, '1255047550985297922', '0', '否', 1);
INSERT INTO `sys_dict_item` VALUES ('1255047616940728322', 1, '1214835832967581698', '2020-04-28 16:14:04', '1214835832967581698', '2020-04-28 16:14:04', NULL, '1255047550985297922', '1', '是', 2);
INSERT INTO `sys_dict_item` VALUES ('1255048026803920898', 1, '1214835832967581698', '2020-04-28 16:15:42', '1214835832967581698', '2020-04-28 16:15:42', NULL, '1255047909942222850', 'GET', 'GET', 1);
INSERT INTO `sys_dict_item` VALUES ('1255048059242668033', 1, '1214835832967581698', '2020-04-28 16:15:50', '1214835832967581698', '2020-04-28 16:15:50', NULL, '1255047909942222850', 'POST', 'POST', 2);
INSERT INTO `sys_dict_item` VALUES ('1255048227744636929', 1, '1214835832967581698', '2020-04-28 16:16:30', '1214835832967581698', '2020-04-28 16:16:30', NULL, '1255048146102509569', 'JSON', 'JSON', 1);
INSERT INTO `sys_dict_item` VALUES ('1255049535197274113', 1, '1214835832967581698', '2020-04-28 16:21:42', '1214835832967581698', '2020-04-28 16:21:42', NULL, '1255049472299491329', '1', '表引导模式', 1);
INSERT INTO `sys_dict_item` VALUES ('1255049562602856449', 1, '1214835832967581698', '2020-04-28 16:21:48', '1214835832967581698', '2020-04-28 16:21:48', NULL, '1255049472299491329', '2', '脚本模式', 2);
INSERT INTO `sys_dict_item` VALUES ('1255049937749794817', 1, '1214835832967581698', '2020-04-28 16:23:18', '1214835832967581698', '2020-04-28 16:23:18', NULL, '1255049868610887682', '1', '等于', 1);
INSERT INTO `sys_dict_item` VALUES ('1255049969106411521', 1, '1214835832967581698', '2020-04-28 16:23:25', '1214835832967581698', '2020-04-28 16:23:25', NULL, '1255049868610887682', '2', '不等于', 2);
INSERT INTO `sys_dict_item` VALUES ('1255049996876898306', 1, '1214835832967581698', '2020-04-28 16:23:32', '1214835832967581698', '2020-04-28 16:23:32', NULL, '1255049868610887682', '3', '全模糊查询', 3);
INSERT INTO `sys_dict_item` VALUES ('1255050281636585473', 1, '1214835832967581698', '2020-04-28 16:24:40', '1214835832967581698', '2020-04-28 16:24:40', NULL, '1255049868610887682', '4', '左模糊查询', 4);
INSERT INTO `sys_dict_item` VALUES ('1255050325618057217', 1, '1214835832967581698', '2020-04-28 16:24:50', '1214835832967581698', '2020-04-28 16:24:50', NULL, '1255049868610887682', '5', '右模糊查询', 5);
INSERT INTO `sys_dict_item` VALUES ('1255050357075337217', 1, '1214835832967581698', '2020-04-28 16:24:57', '1214835832967581698', '2020-04-28 16:24:57', NULL, '1255049868610887682', '6', '大于', 6);
INSERT INTO `sys_dict_item` VALUES ('1255050386712289281', 1, '1214835832967581698', '2020-04-28 16:25:05', '1214835832967581698', '2020-04-28 16:25:05', NULL, '1255049868610887682', '7', '大于等于', 7);
INSERT INTO `sys_dict_item` VALUES ('1255050425413132290', 1, '1214835832967581698', '2020-04-28 16:25:14', '1214835832967581698', '2020-04-28 16:25:14', NULL, '1255049868610887682', '8', '小于', 8);
INSERT INTO `sys_dict_item` VALUES ('1255050459407966210', 1, '1214835832967581698', '2020-04-28 16:25:22', '1214835832967581698', '2020-04-28 16:25:22', NULL, '1255049868610887682', '9', '小于等于', 9);
INSERT INTO `sys_dict_item` VALUES ('1255050508485517313', 1, '1214835832967581698', '2020-04-28 16:25:34', '1214835832967581698', '2020-04-28 16:25:34', NULL, '1255049868610887682', '10', '是否为空', 10);
INSERT INTO `sys_dict_item` VALUES ('1255050549505810433', 1, '1214835832967581698', '2020-04-28 16:25:43', '1214835832967581698', '2020-04-28 16:25:43', NULL, '1255049868610887682', '11', '是否不为空', 11);
INSERT INTO `sys_dict_item` VALUES ('1255050756901560321', 1, '1214835832967581698', '2020-04-28 16:26:33', '1214835832967581698', '2020-04-28 16:26:33', NULL, '1255049868610887682', '12', 'IN', 12);
INSERT INTO `sys_dict_item` VALUES ('1255051004805898241', 1, '1214835832967581698', '2020-04-28 16:27:32', '1214835832967581698', '2020-04-28 16:27:32', NULL, '1255050897825980418', '1', '字符串', 1);
INSERT INTO `sys_dict_item` VALUES ('1255051030818971649', 1, '1214835832967581698', '2020-04-28 16:27:38', '1214835832967581698', '2020-04-28 16:27:38', NULL, '1255050897825980418', '2', '整型', 2);
INSERT INTO `sys_dict_item` VALUES ('1255051062423052289', 1, '1214835832967581698', '2020-04-28 16:27:46', '1214835832967581698', '2020-04-28 16:27:46', NULL, '1255050897825980418', '3', '浮点型', 3);
INSERT INTO `sys_dict_item` VALUES ('1255051089870577665', 1, '1214835832967581698', '2020-04-28 16:27:52', '1214835832967581698', '2020-04-28 16:27:52', NULL, '1255050897825980418', '4', '时间', 4);
INSERT INTO `sys_dict_item` VALUES ('1255051121646624770', 1, '1214835832967581698', '2020-04-28 16:28:00', '1214835832967581698', '2020-04-28 16:28:00', NULL, '1255050897825980418', '5', '集合', 5);
INSERT INTO `sys_dict_item` VALUES ('1255052103847763970', 1, '1214835832967581698', '2020-04-28 16:31:54', '1214835832967581698', '2020-04-28 16:31:54', NULL, '1255052030422278145', '1', '正则替换', 1);
INSERT INTO `sys_dict_item` VALUES ('1255052128799678465', 1, '1214835832967581698', '2020-04-28 16:32:00', '1214835832967581698', '2020-04-28 16:32:00', NULL, '1255052030422278145', '2', '加密算法', 2);
INSERT INTO `sys_dict_item` VALUES ('1255054729293324290', 1, '1214835832967581698', '2020-04-28 16:42:20', '1214835832967581698', '2020-04-28 16:42:20', NULL, '1255054338933645314', '1', '中文姓名', 1);
INSERT INTO `sys_dict_item` VALUES ('1255054769277624322', 1, '1214835832967581698', '2020-04-28 16:42:29', '1214835832967581698', '2020-04-28 16:42:29', NULL, '1255054338933645314', '2', '身份证号', 2);
INSERT INTO `sys_dict_item` VALUES ('1255054810838982657', 1, '1214835832967581698', '2020-04-28 16:42:39', '1214835832967581698', '2020-04-28 16:42:39', NULL, '1255054338933645314', '3', '固定电话', 3);
INSERT INTO `sys_dict_item` VALUES ('1255054840111030274', 1, '1214835832967581698', '2020-04-28 16:42:46', '1214835832967581698', '2020-04-28 16:42:46', NULL, '1255054338933645314', '4', '手机号码', 4);
INSERT INTO `sys_dict_item` VALUES ('1255054878862204929', 1, '1214835832967581698', '2020-04-28 16:42:56', '1214835832967581698', '2020-04-28 16:42:56', NULL, '1255054338933645314', '5', '地址', 5);
INSERT INTO `sys_dict_item` VALUES ('1255054911183511553', 1, '1214835832967581698', '2020-04-28 16:43:03', '1214835832967581698', '2020-04-28 16:43:03', NULL, '1255054338933645314', '6', '电子邮箱', 6);
INSERT INTO `sys_dict_item` VALUES ('1255054941030178817', 1, '1214835832967581698', '2020-04-28 16:43:10', '1214835832967581698', '2020-04-28 16:43:10', NULL, '1255054338933645314', '7', '银行卡号', 7);
INSERT INTO `sys_dict_item` VALUES ('1255054975704489986', 1, '1214835832967581698', '2020-04-28 16:43:19', '1214835832967581698', '2020-04-28 16:43:19', NULL, '1255054338933645314', '8', '公司开户银行联号', 8);
INSERT INTO `sys_dict_item` VALUES ('1255055043568328706', 1, '1214835832967581698', '2020-04-28 16:43:35', '1214835832967581698', '2020-04-28 16:43:35', NULL, '1255054468176928770', '1', 'BASE64加密', 1);
INSERT INTO `sys_dict_item` VALUES ('1255055072123150338', 1, '1214835832967581698', '2020-04-28 16:43:42', '1214835832967581698', '2020-04-28 16:43:42', NULL, '1255054468176928770', '2', 'MD5加密', 2);
INSERT INTO `sys_dict_item` VALUES ('1255055103777562626', 1, '1214835832967581698', '2020-04-28 16:43:49', '1214835832967581698', '2020-04-28 16:43:49', NULL, '1255054468176928770', '3', 'SHA_1加密', 3);
INSERT INTO `sys_dict_item` VALUES ('1255055137550098434', 1, '1214835832967581698', '2020-04-28 16:43:57', '1214835832967581698', '2020-04-28 16:43:57', NULL, '1255054468176928770', '4', 'SHA_256加密', 4);
INSERT INTO `sys_dict_item` VALUES ('1255055168852189186', 1, '1214835832967581698', '2020-04-28 16:44:05', '1214835832967581698', '2020-04-28 16:44:05', NULL, '1255054468176928770', '5', 'AES加密', 5);
INSERT INTO `sys_dict_item` VALUES ('1255055201391599617', 1, '1214835832967581698', '2020-04-28 16:44:12', '1214835832967581698', '2020-04-28 16:44:12', NULL, '1255054468176928770', '6', 'DES加密', 6);
INSERT INTO `sys_dict_item` VALUES ('1275048742365458434', 1, '1214835832967581698', '2020-06-22 20:51:24', '1214835832967581698', '2020-06-22 20:51:24', NULL, '1275048574979174401', '0', '暂停', 1);
INSERT INTO `sys_dict_item` VALUES ('1275048809193304065', 1, '1214835832967581698', '2020-06-22 20:51:40', '1214835832967581698', '2020-06-22 20:51:40', NULL, '1275048574979174401', '1', '运行', 2);
INSERT INTO `sys_dict_item` VALUES ('1275054736508219394', 1, '1214835832967581698', '2020-06-22 21:15:13', '1214835832967581698', '2020-06-22 21:15:13', NULL, '1275054601837506561', '0', '失败', 1);
INSERT INTO `sys_dict_item` VALUES ('1275054803906490370', 1, '1214835832967581698', '2020-06-22 21:15:29', '1214835832967581698', '2020-06-22 21:15:29', NULL, '1275054601837506561', '1', '成功', 2);
INSERT INTO `sys_dict_item` VALUES ('1280793322234875905', 1, '1214835832967581698', '2020-07-08 17:18:19', '1214835832967581698', '2020-07-08 17:18:19', NULL, '1280793187027292161', '1', '待发布', 1);
INSERT INTO `sys_dict_item` VALUES ('1280793374244245505', 1, '1214835832967581698', '2020-07-08 17:18:31', '1214835832967581698', '2020-07-08 17:18:31', NULL, '1280793187027292161', '2', '已发布', 2);
INSERT INTO `sys_dict_item` VALUES ('1280793418611593218', 1, '1214835832967581698', '2020-07-08 17:18:42', '1214835832967581698', '2020-07-08 17:18:42', NULL, '1280793187027292161', '3', '已下线', 3);
INSERT INTO `sys_dict_item` VALUES ('1285924274212737026', 1, '1214835832967581698', '2020-07-22 21:06:53', '1214835832967581698', '2020-07-22 21:06:53', NULL, '1285923703451848705', 'AVG', '平均值', 1);
INSERT INTO `sys_dict_item` VALUES ('1285924403900616706', 1, '1214835832967581698', '2020-07-22 21:07:24', '1214835832967581698', '2020-07-22 21:07:24', NULL, '1285923703451848705', 'COUNT', '计数', 2);
INSERT INTO `sys_dict_item` VALUES ('1285924488742998018', 1, '1214835832967581698', '2020-07-22 21:07:44', '1214835832967581698', '2020-07-22 21:07:44', NULL, '1285923703451848705', 'MAX', '最大值', 3);
INSERT INTO `sys_dict_item` VALUES ('1285924564915752961', 1, '1214835832967581698', '2020-07-22 21:08:02', '1214835832967581698', '2020-07-22 21:08:02', NULL, '1285923703451848705', 'MIN', '最小值', 4);
INSERT INTO `sys_dict_item` VALUES ('1285924644037103617', 1, '1214835832967581698', '2020-07-22 21:08:21', '1214835832967581698', '2020-07-22 21:08:21', NULL, '1285923703451848705', 'SUM', '求和', 5);
INSERT INTO `sys_dict_item` VALUES ('1296680479872815106', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1296680107225706498', '1', 'http接口', 1);
INSERT INTO `sys_dict_item` VALUES ('1296680800095338497', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1296680107225706498', '2', 'webservice接口', 2);
INSERT INTO `sys_dict_item` VALUES ('1300344676871569410', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300344099387244546', 'eq', '=', 1);
INSERT INTO `sys_dict_item` VALUES ('1300344719984926721', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300344099387244546', 'ne', '!=', 2);
INSERT INTO `sys_dict_item` VALUES ('1300344887987683330', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300344099387244546', 'gt', '>', 3);
INSERT INTO `sys_dict_item` VALUES ('1300344940169011202', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300344099387244546', 'ge', '>=', 4);
INSERT INTO `sys_dict_item` VALUES ('1300344991276687361', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300344099387244546', 'lt', '<', 5);
INSERT INTO `sys_dict_item` VALUES ('1300345039674744833', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300344099387244546', 'le', '<=', 6);
INSERT INTO `sys_dict_item` VALUES ('1300345083937226754', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300344099387244546', 'like', 'like', 7);
INSERT INTO `sys_dict_item` VALUES ('1300345183094763522', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300344099387244546', 'between', 'between', 8);
INSERT INTO `sys_dict_item` VALUES ('1300345958537633794', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300344451876577281', 'input', '文本框', 1);
INSERT INTO `sys_dict_item` VALUES ('1300345964648734722', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300344451876577281', 'textarea', '文本域', 2);
INSERT INTO `sys_dict_item` VALUES ('1300345968855621633', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300344451876577281', 'select', '下拉框', 3);
INSERT INTO `sys_dict_item` VALUES ('1300345973049925633', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300344451876577281', 'radio', '单选框', 4);
INSERT INTO `sys_dict_item` VALUES ('1300345977248423937', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300344451876577281', 'checkbox', '复选框', 5);
INSERT INTO `sys_dict_item` VALUES ('1300345981438533633', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300344451876577281', 'datetime', '日期控件', 6);
INSERT INTO `sys_dict_item` VALUES ('1300708143558328322', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300708138781016066', 'char', '字符串', 1);
INSERT INTO `sys_dict_item` VALUES ('1300708156141240321', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300708138781016066', 'number', '数值', 2);
INSERT INTO `sys_dict_item` VALUES ('1300708160343932930', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300708138781016066', 'date', '日期', 3);
INSERT INTO `sys_dict_item` VALUES ('1300708164542431234', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300708138781016066', 'clob', '长文本', 4);
INSERT INTO `sys_dict_item` VALUES ('1301041851154833410', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1301041843055632386', 'tinyint', 'tinyint整型', 1);
INSERT INTO `sys_dict_item` VALUES ('1301041854644494338', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1301041843055632386', 'int', 'int整型', 2);
INSERT INTO `sys_dict_item` VALUES ('1301041857957994497', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1301041843055632386', 'bigint', 'bigint整型', 3);
INSERT INTO `sys_dict_item` VALUES ('1301041860990476290', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1301041843055632386', 'float', '单精度', 4);
INSERT INTO `sys_dict_item` VALUES ('1301041864538857474', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1301041843055632386', 'double', '双精度', 5);
INSERT INTO `sys_dict_item` VALUES ('1301041867428732929', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1301041843055632386', 'decimal', '定点数', 6);
INSERT INTO `sys_dict_item` VALUES ('1301041870465409025', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1301041843055632386', 'char', '定长字符串', 7);
INSERT INTO `sys_dict_item` VALUES ('1301041873263009793', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1301041843055632386', 'varchar', '变长字符串', 8);
INSERT INTO `sys_dict_item` VALUES ('1301041875733454849', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1301041843055632386', 'text', '长文本', 9);
INSERT INTO `sys_dict_item` VALUES ('1301041878837239810', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1301041843055632386', 'date', 'date日期', 10);
INSERT INTO `sys_dict_item` VALUES ('1301041882624696322', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1301041843055632386', 'time', 'time日期', 11);
INSERT INTO `sys_dict_item` VALUES ('1301041884780568578', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1301041843055632386', 'year', 'year日期', 12);
INSERT INTO `sys_dict_item` VALUES ('1301041887540420609', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1301041843055632386', 'datetime', 'datetime日期', 13);
INSERT INTO `sys_dict_item` VALUES ('1302079329039069185', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1300344451876577281', 'number', '数字值', 7);
INSERT INTO `sys_dict_item` VALUES ('1309001150548160514', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1309001146932670465', '1', '待提交', 1);
INSERT INTO `sys_dict_item` VALUES ('1309001154742464514', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1309001146932670465', '2', '已退回', 2);
INSERT INTO `sys_dict_item` VALUES ('1309001158517338114', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1309001146932670465', '3', '审核中', 3);
INSERT INTO `sys_dict_item` VALUES ('1309001162443206658', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1309001146932670465', '4', '通过', 4);
INSERT INTO `sys_dict_item` VALUES ('1309001165593128962', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1309001146932670465', '5', '不通过', 5);
INSERT INTO `sys_dict_item` VALUES ('1309001167749001218', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1309001146932670465', '6', '已撤销', 6);
INSERT INTO `sys_dict_item` VALUES ('1310494837983784962', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1310494826919211009', '0', '未对照', 1);
INSERT INTO `sys_dict_item` VALUES ('1310494841284702210', 1, '1296680107225706498', '2020-08-21 21:04:37', '1296680107225706498', '2020-08-21 21:04:37', NULL, '1310494826919211009', '1', '已对照', 2);

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '日志主键ID',
  `module` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '所属模块',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '日志标题',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名称',
  `remote_addr` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求IP',
  `request_uri` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求URI',
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '方法类名',
  `method_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '方法名称',
  `params` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求参数',
  `time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '请求耗时',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '浏览器名称',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  `ex_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '错误类型',
  `ex_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '错误信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '日志信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES ('1265261406136143873', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '15', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 20:40:01');
INSERT INTO `sys_log` VALUES ('1265261962695118849', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '16', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 20:42:14');
INSERT INTO `sys_log` VALUES ('1265263362518913026', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '32', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 20:47:48');
INSERT INTO `sys_log` VALUES ('1265263766308753410', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '11', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 20:49:24');
INSERT INTO `sys_log` VALUES ('1265263890720198657', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '15', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 20:49:54');
INSERT INTO `sys_log` VALUES ('1265265416712851457', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '14', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 20:55:57');
INSERT INTO `sys_log` VALUES ('1265265809526198274', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '20', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 20:57:31');
INSERT INTO `sys_log` VALUES ('1265267017112457218', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '20', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 21:02:19');
INSERT INTO `sys_log` VALUES ('1265267219084972034', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '28', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 21:03:07');
INSERT INTO `sys_log` VALUES ('1265267267982168065', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '19', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 21:03:19');
INSERT INTO `sys_log` VALUES ('1265267809718472706', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '12', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 21:05:28');
INSERT INTO `sys_log` VALUES ('1265268643084734465', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '21', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 21:08:47');
INSERT INTO `sys_log` VALUES ('1265270421033422849', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '15', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 21:15:51');
INSERT INTO `sys_log` VALUES ('1265272879650541569', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '18', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 21:25:37');
INSERT INTO `sys_log` VALUES ('1265273650702028802', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '22', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 21:28:41');
INSERT INTO `sys_log` VALUES ('1265273816318316546', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '15', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 21:29:20');
INSERT INTO `sys_log` VALUES ('1265274458134908929', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '19', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 21:31:53');
INSERT INTO `sys_log` VALUES ('1265274502791663618', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '31', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 21:32:04');
INSERT INTO `sys_log` VALUES ('1265274557405696002', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '8', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 21:32:17');
INSERT INTO `sys_log` VALUES ('1265274576221343745', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '13', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 21:32:21');
INSERT INTO `sys_log` VALUES ('1265274629749051393', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '97', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 21:32:34');
INSERT INTO `sys_log` VALUES ('1265274945081020418', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1265274861165580290', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '17', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-26 21:33:49');
INSERT INTO `sys_log` VALUES ('1265627232303353857', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '14', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-27 20:53:41');
INSERT INTO `sys_log` VALUES ('1265632019614830594', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '17', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-27 21:12:42');
INSERT INTO `sys_log` VALUES ('1265637282912702465', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '26', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-27 21:33:37');
INSERT INTO `sys_log` VALUES ('1265640522375008258', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '19', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-27 21:46:30');
INSERT INTO `sys_log` VALUES ('1265976846751682562', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1265274861165580290', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '15', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-28 20:02:56');
INSERT INTO `sys_log` VALUES ('1265978978921926658', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1265274861165580290', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '16', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-28 20:11:24');
INSERT INTO `sys_log` VALUES ('1265979289124261890', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '18', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-28 20:12:38');
INSERT INTO `sys_log` VALUES ('1265979380824330242', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '24', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-28 20:13:00');
INSERT INTO `sys_log` VALUES ('1265980102571773954', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '19', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-28 20:15:52');
INSERT INTO `sys_log` VALUES ('1265980125481062402', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '31', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-28 20:15:57');
INSERT INTO `sys_log` VALUES ('1265980311502639105', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '29', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-28 20:16:42');
INSERT INTO `sys_log` VALUES ('1265980577702531074', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '21', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-28 20:17:45');
INSERT INTO `sys_log` VALUES ('1265981370732171265', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '14', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-28 20:20:54');
INSERT INTO `sys_log` VALUES ('1265981831040258049', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '13', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-28 20:22:44');
INSERT INTO `sys_log` VALUES ('1265981907770855426', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1265274861165580290', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '23', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-28 20:23:02');
INSERT INTO `sys_log` VALUES ('1265982263682715650', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1265274861165580290', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '19', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-28 20:24:27');
INSERT INTO `sys_log` VALUES ('1265982404875571202', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1265274861165580290', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '18', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-28 20:25:01');
INSERT INTO `sys_log` VALUES ('1265982486152794113', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1265274861165580290', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '34', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-28 20:25:20');
INSERT INTO `sys_log` VALUES ('1265982592616812545', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1265274861165580290', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '19', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-28 20:25:46');
INSERT INTO `sys_log` VALUES ('1266361799507185665', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '14', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-29 21:32:36');
INSERT INTO `sys_log` VALUES ('1267085228254515202', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '23', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-05-31 21:27:14');
INSERT INTO `sys_log` VALUES ('1272863883182260226', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '14', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-06-16 20:09:33');
INSERT INTO `sys_log` VALUES ('1272863961049513985', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '20', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-06-16 20:09:52');
INSERT INTO `sys_log` VALUES ('1273599081343668226', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '', '15', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-06-18 20:50:58');
INSERT INTO `sys_log` VALUES ('1278163103812476930', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '{\"id\":\"1214835832967581698\"}', '14', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-07-01 11:06:46');
INSERT INTO `sys_log` VALUES ('1278516062761086977', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '{\"id\":\"1214835832967581698\"}', '16', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-07-02 10:29:18');
INSERT INTO `sys_log` VALUES ('1278520069550338050', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.0.107', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '{\"id\":\"1214835832967581698\"}', '16', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-07-02 10:45:13');
INSERT INTO `sys_log` VALUES ('1319093199947554818', 'datax-service-system', '根据id获取用户详细信息', '1319084968579817473', 'ls', '192.168.2.187', '/users/1319084615276814337', 'cn.datax.service.system.controller.UserController', 'getUserById', '{\"id\":\"1319084615276814337\"}', '30', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-10-22 09:48:21');
INSERT INTO `sys_log` VALUES ('1321736221868789762', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.2.187', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '{\"id\":\"1214835832967581698\"}', '81', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-10-29 16:50:47');
INSERT INTO `sys_log` VALUES ('1321736248678780929', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.2.187', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '{\"id\":\"1214835832967581698\"}', '31', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-10-29 16:50:53');
INSERT INTO `sys_log` VALUES ('1321736734307880961', 'datax-service-system', '根据id获取用户详细信息', '1214835832967581698', 'admin', '192.168.2.187', '/users/1214835832967581698', 'cn.datax.service.system.controller.UserController', 'getUserById', '{\"id\":\"1214835832967581698\"}', '34', 'Chrome', 'Windows 10 or Windows Server 2016', NULL, NULL, '2020-10-29 16:52:49');

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键ID',
  `op_os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '操作系统',
  `op_browser` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '浏览器类型',
  `op_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录IP地址',
  `op_date` datetime NULL DEFAULT NULL COMMENT '登录时间',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录用户ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '登录用户名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '登录日志信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES ('1333965944708091905', 'Windows 10', 'Chrome 8', '192.168.30.11', '2020-12-02 10:47:20', '1214835832967581698', 'admin');
INSERT INTO `sys_login_log` VALUES ('1334323040892895234', 'Windows 10', 'Chrome 8', '192.168.30.11', '2020-12-03 10:26:18', '1214835832967581698', 'admin');
INSERT INTO `sys_login_log` VALUES ('1334328405051195394', 'Windows 10', 'Chrome 8', '192.168.30.11', '2020-12-03 10:47:37', '1214835832967581698', 'admin');
INSERT INTO `sys_login_log` VALUES ('1334373233361305601', 'Windows 10', 'Chrome 8', '192.168.30.11', '2020-12-03 13:45:45', '1214835832967581698', 'admin');
INSERT INTO `sys_login_log` VALUES ('1334394923231412226', 'Windows 10', 'Chrome 8', '192.168.30.11', '2020-12-03 15:11:56', '1214835832967581698', 'admin');
INSERT INTO `sys_login_log` VALUES ('1334410359226470401', 'Windows 10', 'Chrome 8', '192.168.30.11', '2020-12-03 16:13:16', '1214835832967581698', 'admin');
INSERT INTO `sys_login_log` VALUES ('1334410876128301057', 'Windows 10', 'Chrome 8', '192.168.30.11', '2020-12-03 16:15:20', '1319084615276814337', 'zs');
INSERT INTO `sys_login_log` VALUES ('1334410921833631745', 'Windows 10', 'Chrome 8', '192.168.30.11', '2020-12-03 16:15:31', '1214835832967581698', 'admin');
INSERT INTO `sys_login_log` VALUES ('1734962135400058882', 'Windows 10', 'Chrome 11', '127.0.0.1', '2023-12-13 23:43:02', '1214835832967581698', 'admin');
INSERT INTO `sys_login_log` VALUES ('1735333851645218817', 'Windows 10', 'Chrome 11', '127.0.0.1', '2023-12-15 00:20:06', '1214835832967581698', 'admin');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键ID',
  `parent_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '父资源ID',
  `menu_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源名称',
  `menu_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对应路由path',
  `menu_component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对应路由组件component',
  `menu_redirect` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '对应路由默认跳转地址redirect',
  `menu_perms` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `menu_icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '图标',
  `menu_type` tinyint(4) NULL DEFAULT NULL COMMENT '类型（0模块，1菜单，2按钮）',
  `menu_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '资源编码',
  `menu_hidden` tinyint(4) NULL DEFAULT NULL COMMENT '资源隐藏（0否，1是）',
  `menu_sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态（0不启用，1启用）',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '资源权限信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1323439314692685825', '0', '平台基础设置', '/basic', 'Layout', '/basic/index', NULL, 'form', 0, '10', 0, 1, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439318413033473', '1323439314692685825', '??', 'index', '/basic/index', NULL, NULL, 'form', 1, NULL, 0, 1, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2023-12-15 00:43:26', NULL);
INSERT INTO `sys_menu` VALUES ('1323439321634258945', '1323439314692685825', '系统管理', 'system', '/basic/system/index', '/basic/system/post', NULL, 'form', 0, '1010', 0, 2, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439323769159681', '1323439321634258945', '岗位管理', 'post', '/basic/system/post/index', NULL, NULL, 'form', 1, '1011', 0, 1, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439327296569346', '1323439323769159681', '岗位新增', NULL, NULL, NULL, 'system:post:add', NULL, 2, NULL, 0, 1, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439329708294145', '1323439323769159681', '岗位修改', NULL, NULL, NULL, 'system:post:edit', NULL, 2, NULL, 0, 2, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439332476534786', '1323439323769159681', '岗位详情', NULL, NULL, NULL, 'system:post:detail', NULL, 2, NULL, 0, 3, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439336071053314', '1323439323769159681', '岗位删除', NULL, NULL, NULL, 'system:post:remove', NULL, 2, NULL, 0, 4, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439338231119873', '1323439321634258945', '部门管理', 'dept', '/basic/system/dept/index', NULL, NULL, 'form', 1, '1012', 0, 2, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439341569785858', '1323439338231119873', '部门新增', NULL, NULL, NULL, 'system:dept:add', NULL, 2, NULL, 0, 1, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439344791011329', '1323439338231119873', '部门修改', NULL, NULL, NULL, 'system:dept:edit', NULL, 2, NULL, 0, 2, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439348771405826', '1323439338231119873', '部门详情', NULL, NULL, NULL, 'system:dept:detail', NULL, 2, NULL, 0, 3, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439351912939522', '1323439338231119873', '部门删除', NULL, NULL, NULL, 'system:dept:remove', NULL, 2, NULL, 0, 4, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439355318714370', '1323439321634258945', '菜单管理', 'menu', '/basic/system/menu/index', NULL, NULL, 'form', 1, '1013', 0, 3, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439359127142401', '1323439355318714370', '菜单新增', NULL, NULL, NULL, 'system:menu:add', NULL, 2, NULL, 0, 1, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439362759409666', '1323439355318714370', '菜单修改', NULL, NULL, NULL, 'system:menu:edit', NULL, 2, NULL, 0, 2, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439365372461057', '1323439355318714370', '菜单详情', NULL, NULL, NULL, 'system:menu:detail', NULL, 2, NULL, 0, 3, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439367612219394', '1323439355318714370', '菜单删除', NULL, NULL, NULL, 'system:menu:remove', NULL, 2, NULL, 0, 4, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439371785551873', '1323439321634258945', '角色管理', 'role', '/basic/system/role/index', NULL, NULL, 'form', 1, '1014', 0, 4, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439375539453953', '1323439371785551873', '角色新增', NULL, NULL, NULL, 'system:role:add', NULL, 2, NULL, 0, 1, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439378580324354', '1323439371785551873', '角色修改', NULL, NULL, NULL, 'system:role:edit', NULL, 2, NULL, 0, 2, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439381906407425', '1323439371785551873', '角色详情', NULL, NULL, NULL, 'system:role:detail', NULL, 2, NULL, 0, 3, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439384934694913', '1323439371785551873', '角色删除', NULL, NULL, NULL, 'system:role:remove', NULL, 2, NULL, 0, 4, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439387669381121', '1323439321634258945', '用户管理', 'user', '/basic/system/user/index', NULL, NULL, 'form', 1, '1015', 0, 5, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439390789943298', '1323439387669381121', '用户新增', NULL, NULL, NULL, 'system:user:add', NULL, 2, NULL, 0, 1, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439393298137089', '1323439387669381121', '用户修改', NULL, NULL, NULL, 'system:user:edit', NULL, 2, NULL, 0, 2, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439396758437890', '1323439387669381121', '用户详情', NULL, NULL, NULL, 'system:user:detail', NULL, 2, NULL, 0, 3, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439399979663361', '1323439387669381121', '用户删除', NULL, NULL, NULL, 'system:user:remove', NULL, 2, NULL, 0, 4, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439402764681218', '1323439387669381121', '重置密码', NULL, NULL, NULL, 'system:user:reset:password', NULL, 2, NULL, 0, 5, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439406451474434', '1323439321634258945', '参数管理', 'config', '/basic/system/config/index', NULL, NULL, 'form', 1, '1016', 0, 6, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439408812867585', '1323439406451474434', '参数新增', NULL, NULL, NULL, 'system:config:add', NULL, 2, NULL, 0, 1, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439412055064578', '1323439406451474434', '参数修改', NULL, NULL, NULL, 'system:config:edit', NULL, 2, NULL, 0, 2, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439415838326785', '1323439406451474434', '参数详情', NULL, NULL, NULL, 'system:config:detail', NULL, 2, NULL, 0, 3, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439419256684545', '1323439406451474434', '参数删除', NULL, NULL, NULL, 'system:config:remove', NULL, 2, NULL, 0, 4, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439423211913218', '1323439406451474434', '刷新缓存', NULL, NULL, NULL, 'system:config:refresh', NULL, 2, NULL, 0, 5, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439426693185537', '1323439321634258945', '字典管理', 'dict', '/basic/system/dict/index', NULL, NULL, 'form', 1, '1017', 0, 7, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439428819697665', '1323439426693185537', '字典新增', NULL, NULL, NULL, 'system:dict:add', NULL, 2, NULL, 0, 1, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439431755710465', '1323439426693185537', '字典修改', NULL, NULL, NULL, 'system:dict:edit', NULL, 2, NULL, 0, 2, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439434893049857', '1323439426693185537', '字典详情', NULL, NULL, NULL, 'system:dict:detail', NULL, 2, NULL, 0, 3, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439437258637313', '1323439426693185537', '字典删除', NULL, NULL, NULL, 'system:dict:remove', NULL, 2, NULL, 0, 4, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439440840572930', '1323439426693185537', '刷新缓存', NULL, NULL, NULL, 'system:dict:refresh', NULL, 2, NULL, 0, 5, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439444309262337', '1323439314692685825', '系统监控', 'monitor', '/basic/monitor/index', '/basic/monitor/loginlog', NULL, 'form', 0, '1020', 0, 3, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439447442407426', '1323439444309262337', '登录日志', 'loginlog', '/basic/monitor/loginlog/index', NULL, NULL, 'form', 1, '1021', 0, 1, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439450667827202', '1323439447442407426', '日志详情', NULL, NULL, NULL, 'monitor:loginlog:detail', NULL, 2, NULL, 0, 1, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439454547558402', '1323439447442407426', '日志删除', NULL, NULL, NULL, 'monitor:loginlog:remove', NULL, 2, NULL, 0, 2, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439457684897793', '1323439444309262337', '操作日志', 'operlog', '/basic/monitor/operlog/index', NULL, NULL, 'form', 1, '1022', 0, 2, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439461132615682', '1323439457684897793', '日志详情', NULL, NULL, NULL, 'monitor:operlog:detail', NULL, 2, NULL, 0, 1, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323439463754055682', '1323439457684897793', '日志删除', NULL, NULL, NULL, 'monitor:operlog:remove', NULL, 2, NULL, 0, 2, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323446715848216577', '1323439314692685825', '任务调度', 'scheduler', '/basic/scheduler/index', '/basic/scheduler/job', NULL, 'form', 0, '1030', 0, 4, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323446719488872450', '1323446715848216577', '任务管理', 'taskjob', '/basic/scheduler/taskjob/index', NULL, NULL, 'form', 1, '1031', 0, 1, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323446723389575170', '1323446719488872450', '任务新增', NULL, NULL, NULL, 'scheduler:job:add', NULL, 2, NULL, 0, 1, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323446727512576001', '1323446719488872450', '任务修改', NULL, NULL, NULL, 'scheduler:job:edit', NULL, 2, NULL, 0, 2, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323446731551690753', '1323446719488872450', '任务详情', NULL, NULL, NULL, 'scheduler:job:detail', NULL, 2, NULL, 0, 3, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323446733736923137', '1323446719488872450', '任务删除', NULL, NULL, NULL, 'scheduler:job:remove', NULL, 2, NULL, 0, 4, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323446737285304322', '1323446719488872450', '任务暂停', NULL, NULL, NULL, 'scheduler:job:pause', NULL, 2, NULL, 0, 5, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323446741144064001', '1323446719488872450', '任务恢复', NULL, NULL, NULL, 'scheduler:job:resume', NULL, 2, NULL, 0, 6, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323446745309007873', '1323446719488872450', '立即执行', NULL, NULL, NULL, 'scheduler:job:run', NULL, 2, NULL, 0, 7, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323446748291158018', '1323446715848216577', '日志管理', 'tasklog', '/basic/scheduler/tasklog/index', NULL, NULL, 'form', 1, '1032', 0, 2, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323446755090124802', '1323446748291158018', '日志详情', NULL, NULL, NULL, 'scheduler:log:detail', NULL, 2, NULL, 0, 1, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1323446758726586370', '1323446748291158018', '日志删除', NULL, NULL, NULL, 'scheduler:log:remove', NULL, 2, NULL, 0, 2, 1, '1214835832967581698', '2020-11-03 13:32:40', '1214835832967581698', '2020-11-03 13:32:40', NULL);
INSERT INTO `sys_menu` VALUES ('1735342298847723522', '0', '?????', 'metadata', '/metadata/index', '/metadata/datamap', NULL, 'form', 0, '1012', 0, 4, 1, '1214835832967581698', '2023-12-15 00:53:40', '1214835832967581698', '2023-12-15 00:53:40', NULL);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键ID',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '岗位名称',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态（0不启用，1启用）',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '岗位信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES ('1214825605782228993', '项目经理', 1, '1', '2020-01-08 16:26:09', '1', '2020-01-08 16:26:09', NULL);
INSERT INTO `sys_post` VALUES ('1214825677672599554', '普通员工', 1, '1', '2020-01-08 16:26:27', '1', '2020-01-08 16:26:27', NULL);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键ID',
  `role_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `role_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色编码',
  `data_scope` tinyint(4) NULL DEFAULT NULL COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限 5：仅本人数据权限）',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态（0不启用，1启用）',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES ('1214826565321543682', '管理员', 'admin', 1, 1, '1214835832967581698', '2020-01-08 16:29:58', '1214835832967581698', '2020-12-03 16:13:43', NULL);
INSERT INTO `sys_role` VALUES ('1319084037507244034', '普通用户', 'simple', 1, 1, '1214835832967581698', '2020-10-22 09:11:57', '1214835832967581698', '2020-12-03 16:14:44', NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色部门主键ID',
  `role_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色ID',
  `dept_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`, `role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色菜单主键ID',
  `role_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '角色ID',
  `menu_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '角色和资源关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES ('1334410472162299906', '1214826565321543682', '1323439314692685825');
INSERT INTO `sys_role_menu` VALUES ('1334410472162299907', '1214826565321543682', '1323439318413033473');
INSERT INTO `sys_role_menu` VALUES ('1334410472162299908', '1214826565321543682', '1323439321634258945');
INSERT INTO `sys_role_menu` VALUES ('1334410472162299909', '1214826565321543682', '1323439323769159681');
INSERT INTO `sys_role_menu` VALUES ('1334410472162299910', '1214826565321543682', '1323439327296569346');
INSERT INTO `sys_role_menu` VALUES ('1334410472162299911', '1214826565321543682', '1323439329708294145');
INSERT INTO `sys_role_menu` VALUES ('1334410472162299912', '1214826565321543682', '1323439332476534786');
INSERT INTO `sys_role_menu` VALUES ('1334410472162299913', '1214826565321543682', '1323439336071053314');
INSERT INTO `sys_role_menu` VALUES ('1334410472162299914', '1214826565321543682', '1323439338231119873');
INSERT INTO `sys_role_menu` VALUES ('1334410472162299915', '1214826565321543682', '1323439341569785858');
INSERT INTO `sys_role_menu` VALUES ('1334410472162299916', '1214826565321543682', '1323439344791011329');
INSERT INTO `sys_role_menu` VALUES ('1334410472162299917', '1214826565321543682', '1323439348771405826');
INSERT INTO `sys_role_menu` VALUES ('1334410472162299918', '1214826565321543682', '1323439351912939522');
INSERT INTO `sys_role_menu` VALUES ('1334410472162299919', '1214826565321543682', '1323439355318714370');
INSERT INTO `sys_role_menu` VALUES ('1334410472162299920', '1214826565321543682', '1323439359127142401');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882817', '1214826565321543682', '1323439362759409666');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882818', '1214826565321543682', '1323439365372461057');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882819', '1214826565321543682', '1323439367612219394');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882820', '1214826565321543682', '1323439371785551873');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882821', '1214826565321543682', '1323439375539453953');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882822', '1214826565321543682', '1323439378580324354');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882823', '1214826565321543682', '1323439381906407425');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882824', '1214826565321543682', '1323439384934694913');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882825', '1214826565321543682', '1323439387669381121');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882826', '1214826565321543682', '1323439390789943298');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882827', '1214826565321543682', '1323439393298137089');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882828', '1214826565321543682', '1323439396758437890');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882829', '1214826565321543682', '1323439399979663361');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882830', '1214826565321543682', '1323439402764681218');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882831', '1214826565321543682', '1323439406451474434');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882832', '1214826565321543682', '1323439408812867585');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882833', '1214826565321543682', '1323439412055064578');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882834', '1214826565321543682', '1323439415838326785');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882835', '1214826565321543682', '1323439419256684545');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882836', '1214826565321543682', '1323439423211913218');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882837', '1214826565321543682', '1323439426693185537');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882838', '1214826565321543682', '1323439428819697665');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882839', '1214826565321543682', '1323439431755710465');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882840', '1214826565321543682', '1323439434893049857');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882841', '1214826565321543682', '1323439437258637313');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882842', '1214826565321543682', '1323439440840572930');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882843', '1214826565321543682', '1323439444309262337');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882844', '1214826565321543682', '1323439447442407426');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882845', '1214826565321543682', '1323439450667827202');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882846', '1214826565321543682', '1323439454547558402');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882847', '1214826565321543682', '1323439457684897793');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882848', '1214826565321543682', '1323439461132615682');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882849', '1214826565321543682', '1323439463754055682');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882850', '1214826565321543682', '1323446715848216577');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882851', '1214826565321543682', '1323446719488872450');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882852', '1214826565321543682', '1323446723389575170');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882853', '1214826565321543682', '1323446727512576001');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882854', '1214826565321543682', '1323446731551690753');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882855', '1214826565321543682', '1323446733736923137');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882856', '1214826565321543682', '1323446737285304322');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882857', '1214826565321543682', '1323446741144064001');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882858', '1214826565321543682', '1323446745309007873');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882859', '1214826565321543682', '1323446748291158018');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882860', '1214826565321543682', '1323446755090124802');
INSERT INTO `sys_role_menu` VALUES ('1334410472174882861', '1214826565321543682', '1323446758726586370');
INSERT INTO `sys_role_menu` VALUES ('1334410724986556418', '1319084037507244034', '1323439318413033473');
INSERT INTO `sys_role_menu` VALUES ('1334410724986556419', '1319084037507244034', '1323439314692685825');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键ID',
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `nickname` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '密码',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '电子邮件',
  `phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `birthday` date NULL DEFAULT NULL COMMENT '出生日期',
  `dept_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '部门',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态（0不启用，1启用）',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1214835832967581698', 'admin', '管理员', '$2a$10$TmZTXiXLdS9Y1OOFHeAt4uVIMwh0B.zyqOcGBDYOz5QL6o6qa2YTa', 'xxx@qq.com', '136xxx', '1992-12-03', '1197789917762031617', 1, '1214835832967581698', '2020-01-08 17:06:48', '1214835832967581698', '2020-01-08 17:06:48', NULL);
INSERT INTO `sys_user` VALUES ('1319084615276814337', 'zs', '张三', '$2a$10$lsPhICj3H/tspyXXwgFfcO.wbasZZp8eGBZKGfxxxmeAGOvzrhjaK', 'xxx@qq.com', '136xxx', '1995-09-30', '1197790192543469570', 1, '1214835832967581698', '2020-10-22 09:14:14', '1214835832967581698', '2020-10-22 09:14:14', NULL);
INSERT INTO `sys_user` VALUES ('1319084968579817473', 'ls', '李四', '$2a$10$/OdCjDYY/.gHNNHNQDmD0.8eY14hnG5OOhwfxKKNHbDml7Wzn2c6a', 'xxx@qq.com', '136xxx', '1993-06-11', '1197790560782389250', 1, '1214835832967581698', '2020-10-22 09:15:39', '1214835832967581698', '2020-10-22 09:15:39', NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户岗位主键ID',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户ID',
  `post_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`id`, `user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和岗位关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES ('1214835833017913346', '1214835832967581698', '1214825605782228993');
INSERT INTO `sys_user_post` VALUES ('1319084615348117505', '1319084615276814337', '1214825677672599554');
INSERT INTO `sys_user_post` VALUES ('1319084968676286466', '1319084968579817473', '1214825677672599554');

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户角色主键ID',
  `user_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户ID',
  `role_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`, `user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES ('1214835832975970305', '1214835832967581698', '1214826565321543682');
INSERT INTO `sys_user_role` VALUES ('1319084615310368770', '1319084615276814337', '1319084037507244034');
INSERT INTO `sys_user_role` VALUES ('1319084968609177601', '1319084968579817473', '1319084037507244034');

-- ----------------------------
-- Table structure for tbl_email
-- ----------------------------
DROP TABLE IF EXISTS `tbl_email`;
CREATE TABLE `tbl_email`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键ID',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态（0不启用，1启用）',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `create_dept` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人所属部门',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '标题',
  `text` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '内容',
  `tos` json NULL COMMENT '接收人',
  `ccs` json NULL COMMENT '抄送人',
  `bccs` json NULL COMMENT '密送人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_email
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_file
-- ----------------------------
DROP TABLE IF EXISTS `tbl_file`;
CREATE TABLE `tbl_file`  (
  `id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键ID',
  `original_filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件原始名称',
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `file_size` int(11) NULL DEFAULT NULL COMMENT '文件大小',
  `file_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '访问路径',
  `content_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件类型',
  `file_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '文件来源',
  `status` tinyint(4) NULL DEFAULT NULL COMMENT '状态（0不启用，1启用）',
  `create_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建日期',
  `update_by` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '更新人',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新日期',
  `remark` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '文件信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_file
-- ----------------------------
INSERT INTO `tbl_file` VALUES ('1255424740805484545', '20200420.pdf', '20200429171237.pdf', 72757, 'F:\\uploadfile\\20200429171237.pdf', 'application/pdf', 'local', 1, '1214835832967581698', '2020-04-29 17:12:38', '1214835832967581698', '2020-04-29 17:12:38', NULL);

SET FOREIGN_KEY_CHECKS = 1;
