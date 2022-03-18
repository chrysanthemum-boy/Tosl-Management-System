/*
 Navicat Premium Data Transfer

 Source Server         : mydatabase
 Source Server Type    : MySQL
 Source Server Version : 50736
 Source Host           : localhost:3306
 Source Schema         : eladmin

 Target Server Type    : MySQL
 Target Server Version : 50736
 File Encoding         : 65001

 Date: 17/02/2022 21:17:13
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for code_column_config
-- ----------------------------
DROP TABLE IF EXISTS `code_column_config`;
CREATE TABLE `code_column_config`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `column_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `column_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `dict_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extra` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `form_show` bit(1) NULL DEFAULT NULL,
  `form_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `key_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `list_show` bit(1) NULL DEFAULT NULL,
  `not_null` bit(1) NULL DEFAULT NULL,
  `query_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date_annotation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`column_id`) USING BTREE,
  INDEX `idx_table_name`(`table_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成字段信息存储' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of code_column_config
-- ----------------------------
INSERT INTO `code_column_config` VALUES (1, 'mnt_deploy', 'deploy_id', 'bigint', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, 'ID', NULL);
INSERT INTO `code_column_config` VALUES (2, 'mnt_deploy', 'app_id', 'bigint', NULL, '', b'1', NULL, 'MUL', b'1', b'0', NULL, '应用编号', NULL);
INSERT INTO `code_column_config` VALUES (3, 'mnt_deploy', 'create_by', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '创建者', NULL);
INSERT INTO `code_column_config` VALUES (4, 'mnt_deploy', 'update_by', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '更新者', NULL);
INSERT INTO `code_column_config` VALUES (5, 'mnt_deploy', 'create_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '', NULL);
INSERT INTO `code_column_config` VALUES (6, 'mnt_deploy', 'update_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '更新时间', NULL);
INSERT INTO `code_column_config` VALUES (7, 'mnt_database', 'db_id', 'varchar', NULL, '', b'1', NULL, 'PRI', b'1', b'1', NULL, 'ID', NULL);
INSERT INTO `code_column_config` VALUES (8, 'mnt_database', 'name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '名称', NULL);
INSERT INTO `code_column_config` VALUES (9, 'mnt_database', 'jdbc_url', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, 'jdbc连接', NULL);
INSERT INTO `code_column_config` VALUES (10, 'mnt_database', 'user_name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '账号', NULL);
INSERT INTO `code_column_config` VALUES (11, 'mnt_database', 'pwd', 'varchar', NULL, '', b'1', NULL, '', b'1', b'1', NULL, '密码', NULL);
INSERT INTO `code_column_config` VALUES (12, 'mnt_database', 'create_by', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '创建者', NULL);
INSERT INTO `code_column_config` VALUES (13, 'mnt_database', 'update_by', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '更新者', NULL);
INSERT INTO `code_column_config` VALUES (14, 'mnt_database', 'create_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '创建时间', NULL);
INSERT INTO `code_column_config` VALUES (15, 'mnt_database', 'update_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '更新时间', NULL);
INSERT INTO `code_column_config` VALUES (16, 'mnt_app', 'app_id', 'bigint', NULL, 'auto_increment', b'1', NULL, 'PRI', b'1', b'0', NULL, 'ID', NULL);
INSERT INTO `code_column_config` VALUES (17, 'mnt_app', 'name', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '应用名称', NULL);
INSERT INTO `code_column_config` VALUES (18, 'mnt_app', 'upload_path', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '上传目录', NULL);
INSERT INTO `code_column_config` VALUES (19, 'mnt_app', 'deploy_path', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '部署路径', NULL);
INSERT INTO `code_column_config` VALUES (20, 'mnt_app', 'backup_path', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '备份路径', NULL);
INSERT INTO `code_column_config` VALUES (21, 'mnt_app', 'port', 'int', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '应用端口', NULL);
INSERT INTO `code_column_config` VALUES (22, 'mnt_app', 'start_script', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '启动脚本', NULL);
INSERT INTO `code_column_config` VALUES (23, 'mnt_app', 'deploy_script', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '部署脚本', NULL);
INSERT INTO `code_column_config` VALUES (24, 'mnt_app', 'create_by', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '创建者', NULL);
INSERT INTO `code_column_config` VALUES (25, 'mnt_app', 'update_by', 'varchar', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '更新者', NULL);
INSERT INTO `code_column_config` VALUES (26, 'mnt_app', 'create_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '创建日期', NULL);
INSERT INTO `code_column_config` VALUES (27, 'mnt_app', 'update_time', 'datetime', NULL, '', b'1', NULL, '', b'1', b'0', NULL, '更新时间', NULL);

-- ----------------------------
-- Table structure for code_gen_config
-- ----------------------------
DROP TABLE IF EXISTS `code_gen_config`;
CREATE TABLE `code_gen_config`  (
  `config_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `table_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表名',
  `author` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '作者',
  `cover` bit(1) NULL DEFAULT NULL COMMENT '是否覆盖',
  `module_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '模块名称',
  `pack` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '至于哪个包下',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端代码生成的路径',
  `api_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '前端Api文件路径',
  `prefix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表前缀',
  `api_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '接口名称',
  PRIMARY KEY (`config_id`) USING BTREE,
  INDEX `idx_table_name`(`table_name`(100)) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成器配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of code_gen_config
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_app
-- ----------------------------
DROP TABLE IF EXISTS `mnt_app`;
CREATE TABLE `mnt_app`  (
  `app_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用名称',
  `upload_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传目录',
  `deploy_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部署路径',
  `backup_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备份路径',
  `port` int(255) NULL DEFAULT NULL COMMENT '应用端口',
  `start_script` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '启动脚本',
  `deploy_script` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '部署脚本',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`app_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应用管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mnt_app
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_database
-- ----------------------------
DROP TABLE IF EXISTS `mnt_database`;
CREATE TABLE `mnt_database`  (
  `db_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `jdbc_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'jdbc连接',
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '账号',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`db_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据库管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mnt_database
-- ----------------------------
INSERT INTO `mnt_database` VALUES ('ef3e9d91e97441f2a46af22671ce9992', 'test', 'jdbc:mysql://localhost:3306/mysql?serverTimezone=Asia/Shanghai&characterEncoding=utf8&useSSL=false', 'root', '123456', 'admin', 'admin', '2022-02-16 20:29:15', '2022-02-16 20:29:44');

-- ----------------------------
-- Table structure for mnt_deploy
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy`;
CREATE TABLE `mnt_deploy`  (
  `deploy_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `app_id` bigint(20) NULL DEFAULT NULL COMMENT '应用编号',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`deploy_id`) USING BTREE,
  INDEX `FK6sy157pseoxx4fmcqr1vnvvhy`(`app_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部署管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mnt_deploy
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_deploy_history
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy_history`;
CREATE TABLE `mnt_deploy_history`  (
  `history_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ID',
  `app_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '应用名称',
  `deploy_date` datetime(0) NOT NULL COMMENT '部署日期',
  `deploy_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '部署用户',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '服务器IP',
  `deploy_id` bigint(20) NULL DEFAULT NULL COMMENT '部署编号',
  PRIMARY KEY (`history_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部署历史管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mnt_deploy_history
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_deploy_server
-- ----------------------------
DROP TABLE IF EXISTS `mnt_deploy_server`;
CREATE TABLE `mnt_deploy_server`  (
  `deploy_id` bigint(20) NOT NULL COMMENT '部署ID',
  `server_id` bigint(20) NOT NULL COMMENT '服务ID',
  PRIMARY KEY (`deploy_id`, `server_id`) USING BTREE,
  INDEX `FKeaaha7jew9a02b3bk9ghols53`(`server_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '应用与服务器关联' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mnt_deploy_server
-- ----------------------------

-- ----------------------------
-- Table structure for mnt_server
-- ----------------------------
DROP TABLE IF EXISTS `mnt_server`;
CREATE TABLE `mnt_server`  (
  `server_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `account` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `ip` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `port` int(11) NULL DEFAULT NULL COMMENT '端口',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`server_id`) USING BTREE,
  INDEX `idx_ip`(`ip`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '服务器管理' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of mnt_server
-- ----------------------------

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '上级部门',
  `sub_count` int(5) NULL DEFAULT 0 COMMENT '子部门数目',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `dept_sort` int(5) NULL DEFAULT 999 COMMENT '排序',
  `enabled` bit(1) NOT NULL COMMENT '状态',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE,
  INDEX `inx_pid`(`pid`) USING BTREE,
  INDEX `inx_enabled`(`enabled`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (2, 7, 0, '上海市', 3, b'1', 'admin', 'admin', '2019-03-25 09:15:32', '2022-02-16 17:58:08');
INSERT INTO `sys_dept` VALUES (5, 7, 1, '浙江', 4, b'1', 'admin', 'admin', '2019-03-25 09:20:44', '2022-02-16 17:55:23');
INSERT INTO `sys_dept` VALUES (6, 8, 0, '北京市', 6, b'1', 'admin', 'admin', '2019-03-25 09:52:18', '2022-02-16 17:58:14');
INSERT INTO `sys_dept` VALUES (7, NULL, 2, '华南分区', 0, b'1', 'admin', 'admin', '2019-03-25 11:04:50', '2022-02-16 19:20:17');
INSERT INTO `sys_dept` VALUES (8, NULL, 2, '华北分区', 1, b'1', 'admin', 'admin', '2019-03-25 11:04:53', '2022-02-16 17:54:41');
INSERT INTO `sys_dept` VALUES (15, 8, 0, '天津市', 7, b'1', 'admin', 'admin', '2020-05-13 22:56:53', '2022-02-16 17:58:23');
INSERT INTO `sys_dept` VALUES (18, 5, 0, '宁波市', 22, b'1', 'admin', 'admin', '2022-02-16 17:55:47', '2022-02-16 17:55:59');

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dict_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据字典' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict
-- ----------------------------
INSERT INTO `sys_dict` VALUES (1, 'user_status', '用户状态', NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict` VALUES (4, 'dept_status', '部门状态', NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict` VALUES (5, 'job_status', '岗位状态', NULL, NULL, '2019-10-27 20:31:36', NULL);

-- ----------------------------
-- Table structure for sys_dict_detail
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_detail`;
CREATE TABLE `sys_dict_detail`  (
  `detail_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dict_id` bigint(11) NULL DEFAULT NULL COMMENT '字典id',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典标签',
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典值',
  `dict_sort` int(5) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`detail_id`) USING BTREE,
  INDEX `FK5tpkputc6d9nboxojdbgnpmyb`(`dict_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '数据字典详情' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dict_detail
-- ----------------------------
INSERT INTO `sys_dict_detail` VALUES (1, 1, '激活', 'true', 1, NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict_detail` VALUES (2, 1, '禁用', 'false', 2, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_detail` VALUES (3, 4, '启用', 'true', 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_detail` VALUES (4, 4, '停用', 'false', 2, NULL, NULL, '2019-10-27 20:31:36', NULL);
INSERT INTO `sys_dict_detail` VALUES (5, 5, '启用', 'true', 1, NULL, NULL, NULL, NULL);
INSERT INTO `sys_dict_detail` VALUES (6, 5, '停用', 'false', 2, NULL, NULL, '2019-10-27 20:31:36', NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `enabled` bit(1) NOT NULL COMMENT '岗位状态',
  `job_sort` int(5) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`job_id`) USING BTREE,
  UNIQUE INDEX `uniq_name`(`name`) USING BTREE,
  INDEX `inx_enabled`(`enabled`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (13, '1级用户', b'1', 5, 'admin', 'admin', '2022-02-16 17:43:26', '2022-02-16 17:53:16');
INSERT INTO `sys_job` VALUES (14, '2级用户', b'1', 4, 'admin', 'admin', '2022-02-16 17:43:38', '2022-02-16 17:53:11');
INSERT INTO `sys_job` VALUES (15, '3级用户', b'1', 3, 'admin', 'admin', '2022-02-16 17:43:48', '2022-02-16 17:53:06');
INSERT INTO `sys_job` VALUES (16, '4级用户', b'1', 2, 'admin', 'admin', '2022-02-16 17:53:35', '2022-02-16 17:53:35');
INSERT INTO `sys_job` VALUES (17, '5级用户', b'1', 1, 'admin', 'admin', '2022-02-16 17:53:51', '2022-02-16 17:53:51');

-- ----------------------------
-- Table structure for sys_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_log`;
CREATE TABLE `sys_log`  (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `log_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `request_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` bigint(20) NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `browser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE,
  INDEX `log_create_time_index`(`create_time`) USING BTREE,
  INDEX `inx_log_type`(`log_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 89 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_log
-- ----------------------------
INSERT INTO `sys_log` VALUES (1, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"Steve-Jobs\",\"title\":\"系统管理\",\"type\":0,\"subCount\":7,\"path\":\"system\",\"createTime\":1545117089000,\"iFrame\":false,\"id\":1,\"menuSort\":1}', '192.168.0.108', 147, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-15 21:09:19');
INSERT INTO `sys_log` VALUES (2, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"system\",\"updateTime\":1644930559000,\"title\":\"系统管理\",\"type\":0,\"subCount\":7,\"path\":\"system\",\"updateBy\":\"admin\",\"createTime\":1545117089000,\"iFrame\":false,\"id\":1,\"menuSort\":1}', '192.168.0.108', 22, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-15 21:09:35');
INSERT INTO `sys_log` VALUES (3, '测试数据库链接', 'INFO', 'me.fann.modules.mnt.rest.DatabaseController.testConnect()', '{\"userName\":\"admin\",\"name\":\"eladmin\",\"jdbcUrl\":\"jdbc:mysql://\",\"pwd\":\"123456\"}', '192.168.0.108', 33, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-15 22:37:48');
INSERT INTO `sys_log` VALUES (4, '删除菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.deleteMenu()', '[21]', '192.168.0.108', 149, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-15 22:43:36');
INSERT INTO `sys_log` VALUES (5, '修改角色菜单', 'INFO', 'me.fann.modules.system.rest.RoleController.updateRoleMenu()', '{\"level\":3,\"dataScope\":\"本级\",\"id\":2,\"menus\":[{\"subCount\":0,\"id\":1,\"menuSort\":999},{\"subCount\":0,\"id\":2,\"menuSort\":999},{\"subCount\":0,\"id\":36,\"menuSort\":999},{\"subCount\":0,\"id\":6,\"menuSort\":999},{\"subCount\":0,\"id\":7,\"menuSort\":999},{\"subCount\":0,\"id\":9,\"menuSort\":999},{\"subCount\":0,\"id\":14,\"menuSort\":999},{\"subCount\":0,\"id\":80,\"menuSort\":999},{\"subCount\":0,\"id\":82,\"menuSort\":999},{\"subCount\":0,\"id\":19,\"menuSort\":999},{\"subCount\":0,\"id\":116,\"menuSort\":999},{\"subCount\":0,\"id\":30,\"menuSort\":999},{\"subCount\":0,\"id\":32,\"menuSort\":999}]}', '192.168.0.108', 76, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 15:00:32');
INSERT INTO `sys_log` VALUES (6, '新增菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.createMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"monitor\",\"updateTime\":1645003793257,\"title\":\"数据管理\",\"type\":0,\"subCount\":0,\"path\":\"data_monitor\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645003793254,\"iFrame\":false,\"id\":117,\"menuSort\":60}', '192.168.0.108', 110, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:29:53');
INSERT INTO `sys_log` VALUES (7, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"monitor\",\"updateTime\":1645003793000,\"title\":\"数据管理\",\"type\":2,\"subCount\":0,\"path\":\"data_monitor\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645003793000,\"iFrame\":false,\"id\":117,\"menuSort\":60}', '192.168.0.108', 8, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:30:11');
INSERT INTO `sys_log` VALUES (9, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"monitor\",\"updateTime\":1645003811000,\"title\":\"数据管理\",\"type\":2,\"subCount\":0,\"path\":\"data_monitor\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645003793000,\"iFrame\":false,\"id\":117,\"menuSort\":60}', '192.168.0.108', 4, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:30:40');
INSERT INTO `sys_log` VALUES (11, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"monitor\",\"updateTime\":1645003811000,\"title\":\"数据管理\",\"type\":0,\"subCount\":0,\"path\":\"data_monitor\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645003793000,\"iFrame\":false,\"id\":117,\"menuSort\":60}', '192.168.0.108', 8, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:31:02');
INSERT INTO `sys_log` VALUES (12, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"zujian\",\"updateTime\":1645003862000,\"title\":\"组件管理\",\"type\":0,\"subCount\":5,\"path\":\"components\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1545197896000,\"iFrame\":false,\"id\":10,\"menuSort\":50}', '192.168.0.108', 10, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:32:53');
INSERT INTO `sys_log` VALUES (13, '新增菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.createMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"message\",\"pid\":117,\"updateTime\":1645004020646,\"title\":\"消息记录\",\"type\":0,\"subCount\":0,\"path\":\"message\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645004020646,\"iFrame\":false,\"id\":118,\"menuSort\":999}', '192.168.0.108', 6, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:33:41');
INSERT INTO `sys_log` VALUES (14, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"message\",\"pid\":117,\"updateTime\":1645004021000,\"title\":\"消息记录\",\"type\":0,\"subCount\":0,\"path\":\"message\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645004021000,\"iFrame\":false,\"id\":118,\"menuSort\":61}', '192.168.0.108', 8, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:33:58');
INSERT INTO `sys_log` VALUES (15, '修改部门', 'INFO', 'me.fann.modules.system.rest.DeptController.updateDept()', '{\"updateTime\":1591589336000,\"enabled\":false,\"deptSort\":0,\"subCount\":2,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1553483090000,\"name\":\"华南分部\",\"id\":7}', '192.168.0.108', 18, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:39:33');
INSERT INTO `sys_log` VALUES (16, '修改部门', 'INFO', 'me.fann.modules.system.rest.DeptController.updateDept()', '{\"updateTime\":1589432040000,\"enabled\":false,\"deptSort\":1,\"subCount\":2,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1553483093000,\"name\":\"华北分部\",\"id\":8}', '192.168.0.108', 5, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:39:35');
INSERT INTO `sys_log` VALUES (17, '修改部门', 'INFO', 'me.fann.modules.system.rest.DeptController.updateDept()', '{\"updateTime\":1645004373000,\"enabled\":true,\"deptSort\":0,\"subCount\":2,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1553483090000,\"name\":\"华南分部\",\"id\":7}', '192.168.0.108', 4, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:39:48');
INSERT INTO `sys_log` VALUES (18, '修改部门', 'INFO', 'me.fann.modules.system.rest.DeptController.updateDept()', '{\"updateTime\":1645004375000,\"enabled\":true,\"deptSort\":1,\"subCount\":2,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1553483093000,\"name\":\"华北分部\",\"id\":8}', '192.168.0.108', 6, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:39:50');
INSERT INTO `sys_log` VALUES (19, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"dept\",\"permission\":\"dept:list\",\"pid\":1,\"title\":\"城市分区\",\"type\":1,\"subCount\":3,\"path\":\"dept\",\"component\":\"system/dept/index\",\"createTime\":1553478360000,\"iFrame\":false,\"id\":35,\"componentName\":\"Dept\",\"menuSort\":6}', '192.168.0.108', 16, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:41:45');
INSERT INTO `sys_log` VALUES (20, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"Steve-Jobs\",\"permission\":\"job:list\",\"pid\":1,\"title\":\"级别管理\",\"type\":1,\"subCount\":3,\"path\":\"job\",\"component\":\"system/job/index\",\"createTime\":1553838678000,\"iFrame\":false,\"id\":37,\"componentName\":\"Job\",\"menuSort\":7}', '192.168.0.108', 14, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:42:56');
INSERT INTO `sys_log` VALUES (21, '新增岗位', 'INFO', 'me.fann.modules.system.rest.JobController.createJob()', '{\"updateTime\":1645004605805,\"enabled\":true,\"jobSort\":999,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645004605805,\"name\":\"1级用户\",\"id\":13}', '192.168.0.108', 13, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:43:26');
INSERT INTO `sys_log` VALUES (22, '新增岗位', 'INFO', 'me.fann.modules.system.rest.JobController.createJob()', '{\"updateTime\":1645004618302,\"enabled\":true,\"jobSort\":999,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645004618302,\"name\":\"2级用户\",\"id\":14}', '192.168.0.108', 7, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:43:38');
INSERT INTO `sys_log` VALUES (23, '新增岗位', 'INFO', 'me.fann.modules.system.rest.JobController.createJob()', '{\"updateTime\":1645004628071,\"enabled\":true,\"jobSort\":999,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645004628071,\"name\":\"3级用户\",\"id\":15}', '192.168.0.108', 4, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:43:48');
INSERT INTO `sys_log` VALUES (25, '删除岗位', 'INFO', 'me.fann.modules.system.rest.JobController.deleteJob()', '[8]', '192.168.0.108', 6, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:43:59');
INSERT INTO `sys_log` VALUES (26, '删除岗位', 'INFO', 'me.fann.modules.system.rest.JobController.deleteJob()', '[10]', '192.168.0.108', 4, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:44:02');
INSERT INTO `sys_log` VALUES (28, '修改用户', 'INFO', 'me.fann.modules.system.rest.UserController.updateUser()', '{\"gender\":\"男\",\"nickName\":\"测试\",\"roles\":[],\"jobs\":[{\"updateTime\":1645004606000,\"enabled\":true,\"jobSort\":999,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645004606000,\"name\":\"1级用户\",\"id\":13}],\"updateTime\":1599273818000,\"dept\":{\"subCount\":0,\"name\":\"研发部\",\"id\":2},\"isAdmin\":false,\"enabled\":true,\"createBy\":\"admin\",\"phone\":\"19999999999\",\"updateBy\":\"admin\",\"createTime\":1588648549000,\"id\":2,\"email\":\"231@qq.com\",\"username\":\"test\"}', '192.168.0.108', 21, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:44:26');
INSERT INTO `sys_log` VALUES (29, '修改用户', 'INFO', 'me.fann.modules.system.rest.UserController.updateUser()', '{\"gender\":\"男\",\"nickName\":\"管理员\",\"roles\":[],\"jobs\":[{\"updateTime\":1645004628000,\"enabled\":true,\"jobSort\":999,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645004628000,\"name\":\"3级用户\",\"id\":15}],\"avatarPath\":\"C:\\\\eladmin\\\\avatar\\\\avatar-20220216040451227.png\",\"updateTime\":1644998691000,\"dept\":{\"subCount\":0,\"name\":\"上海\",\"id\":2},\"isAdmin\":false,\"enabled\":true,\"avatarName\":\"avatar-20220216040451227.png\",\"createBy\":\"admin\",\"phone\":\"18888888888\",\"pwdResetTime\":1588495111000,\"updateBy\":\"admin\",\"createTime\":1534986716000,\"id\":1,\"email\":\"201507802@qq.com\",\"username\":\"admin\"}', '192.168.0.108', 15, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:52:36');
INSERT INTO `sys_log` VALUES (30, '删除岗位', 'INFO', 'me.fann.modules.system.rest.JobController.deleteJob()', '[12]', '192.168.0.108', 4, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:52:51');
INSERT INTO `sys_log` VALUES (31, '删除岗位', 'INFO', 'me.fann.modules.system.rest.JobController.deleteJob()', '[11]', '192.168.0.108', 3, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:52:52');
INSERT INTO `sys_log` VALUES (32, '修改岗位', 'INFO', 'me.fann.modules.system.rest.JobController.updateJob()', '{\"updateTime\":1645004628000,\"enabled\":true,\"jobSort\":3,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645004628000,\"name\":\"3级用户\",\"id\":15}', '192.168.0.108', 9, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:53:06');
INSERT INTO `sys_log` VALUES (33, '修改岗位', 'INFO', 'me.fann.modules.system.rest.JobController.updateJob()', '{\"updateTime\":1645004618000,\"enabled\":true,\"jobSort\":4,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645004618000,\"name\":\"2级用户\",\"id\":14}', '192.168.0.108', 4, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:53:11');
INSERT INTO `sys_log` VALUES (34, '修改岗位', 'INFO', 'me.fann.modules.system.rest.JobController.updateJob()', '{\"updateTime\":1645004606000,\"enabled\":true,\"jobSort\":5,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645004606000,\"name\":\"1级用户\",\"id\":13}', '192.168.0.108', 4, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:53:16');
INSERT INTO `sys_log` VALUES (35, '新增岗位', 'INFO', 'me.fann.modules.system.rest.JobController.createJob()', '{\"updateTime\":1645005215401,\"enabled\":true,\"jobSort\":2,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645005215401,\"name\":\"4级用户\",\"id\":16}', '192.168.0.108', 3, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:53:35');
INSERT INTO `sys_log` VALUES (36, '新增岗位', 'INFO', 'me.fann.modules.system.rest.JobController.createJob()', '{\"updateTime\":1645005230752,\"enabled\":true,\"jobSort\":1,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645005230752,\"name\":\"5级用户\",\"id\":17}', '192.168.0.108', 3, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:53:51');
INSERT INTO `sys_log` VALUES (37, '修改用户', 'INFO', 'me.fann.modules.system.rest.UserController.updateUser()', '{\"gender\":\"男\",\"nickName\":\"管理员\",\"roles\":[],\"jobs\":[{\"updateTime\":1645005231000,\"enabled\":true,\"jobSort\":1,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645005231000,\"name\":\"5级用户\",\"id\":17}],\"avatarPath\":\"C:\\\\eladmin\\\\avatar\\\\avatar-20220216040451227.png\",\"updateTime\":1645005156000,\"dept\":{\"subCount\":0,\"name\":\"上海\",\"id\":2},\"isAdmin\":false,\"enabled\":true,\"avatarName\":\"avatar-20220216040451227.png\",\"createBy\":\"admin\",\"phone\":\"18888888888\",\"pwdResetTime\":1588495111000,\"updateBy\":\"admin\",\"createTime\":1534986716000,\"id\":1,\"email\":\"201507802@qq.com\",\"username\":\"admin\"}', '192.168.0.108', 14, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:54:15');
INSERT INTO `sys_log` VALUES (38, '修改部门', 'INFO', 'me.fann.modules.system.rest.DeptController.updateDept()', '{\"updateTime\":1645004388000,\"enabled\":true,\"deptSort\":0,\"subCount\":2,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1553483090000,\"name\":\"华南分区\",\"id\":7}', '192.168.0.108', 4, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:54:34');
INSERT INTO `sys_log` VALUES (39, '修改部门', 'INFO', 'me.fann.modules.system.rest.DeptController.updateDept()', '{\"updateTime\":1645004390000,\"enabled\":true,\"deptSort\":1,\"subCount\":2,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1553483093000,\"name\":\"华北分区\",\"id\":8}', '192.168.0.108', 4, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:54:41');
INSERT INTO `sys_log` VALUES (40, '修改部门', 'INFO', 'me.fann.modules.system.rest.DeptController.updateDept()', '{\"pid\":2,\"updateTime\":1596350947000,\"enabled\":true,\"deptSort\":999,\"subCount\":0,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1596350947000,\"name\":\"静安区\",\"id\":17}', '192.168.0.108', 8, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:54:58');
INSERT INTO `sys_log` VALUES (41, '修改部门', 'INFO', 'me.fann.modules.system.rest.DeptController.updateDept()', '{\"pid\":2,\"updateTime\":1645005298000,\"enabled\":true,\"deptSort\":13,\"subCount\":0,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1596350947000,\"name\":\"静安区\",\"id\":17}', '192.168.0.108', 7, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:55:06');
INSERT INTO `sys_log` VALUES (42, '修改部门', 'INFO', 'me.fann.modules.system.rest.DeptController.updateDept()', '{\"pid\":7,\"updateTime\":1589696847000,\"enabled\":true,\"deptSort\":4,\"subCount\":0,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1553476844000,\"name\":\"浙江\",\"id\":5}', '192.168.0.108', 7, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:55:23');
INSERT INTO `sys_log` VALUES (43, '新增部门', 'INFO', 'me.fann.modules.system.rest.DeptController.createDept()', '{\"pid\":5,\"updateTime\":1645005346765,\"enabled\":true,\"deptSort\":22,\"subCount\":0,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645005346765,\"name\":\"宁波\",\"id\":18}', '192.168.0.108', 4, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:55:47');
INSERT INTO `sys_log` VALUES (44, '修改部门', 'INFO', 'me.fann.modules.system.rest.DeptController.updateDept()', '{\"pid\":5,\"updateTime\":1645005347000,\"enabled\":true,\"deptSort\":22,\"subCount\":0,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645005347000,\"name\":\"宁波市\",\"id\":18}', '192.168.0.108', 6, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:55:59');
INSERT INTO `sys_log` VALUES (45, '修改部门', 'INFO', 'me.fann.modules.system.rest.DeptController.updateDept()', '{\"pid\":8,\"updateTime\":1591588761000,\"enabled\":true,\"deptSort\":6,\"subCount\":0,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1553478738000,\"name\":\"北京\",\"id\":6}', '192.168.0.108', 5, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:56:10');
INSERT INTO `sys_log` VALUES (46, '修改部门', 'INFO', 'me.fann.modules.system.rest.DeptController.updateDept()', '{\"pid\":8,\"updateTime\":1589432053000,\"enabled\":true,\"deptSort\":7,\"subCount\":0,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1589381813000,\"name\":\"天津\",\"id\":15}', '192.168.0.108', 6, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:56:36');
INSERT INTO `sys_log` VALUES (47, '修改用户', 'INFO', 'me.fann.modules.system.rest.UserController.updateUser()', '{\"gender\":\"男\",\"nickName\":\"测试\",\"roles\":[],\"jobs\":[{\"updateTime\":1645005196000,\"enabled\":true,\"jobSort\":5,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645004606000,\"name\":\"1级用户\",\"id\":13}],\"updateTime\":1645004666000,\"dept\":{\"subCount\":0,\"name\":\"上海\",\"id\":2},\"isAdmin\":false,\"enabled\":true,\"createBy\":\"admin\",\"phone\":\"19999999999\",\"updateBy\":\"admin\",\"createTime\":1588648549000,\"id\":2,\"email\":\"231@qq.com\",\"username\":\"test\"}', '192.168.0.108', 11, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:56:57');
INSERT INTO `sys_log` VALUES (48, '删除部门', 'INFO', 'me.fann.modules.system.rest.DeptController.deleteDept()', '[17]', '192.168.0.108', 7, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:57:15');
INSERT INTO `sys_log` VALUES (49, '修改用户', 'INFO', 'me.fann.modules.system.rest.UserController.updateUser()', '{\"gender\":\"男\",\"nickName\":\"管理员\",\"roles\":[],\"jobs\":[{\"updateTime\":1645005231000,\"enabled\":true,\"jobSort\":1,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645005231000,\"name\":\"5级用户\",\"id\":17}],\"avatarPath\":\"C:\\\\eladmin\\\\avatar\\\\avatar-20220216040451227.png\",\"updateTime\":1645005255000,\"dept\":{\"subCount\":0,\"name\":\"上海\",\"id\":18},\"isAdmin\":false,\"enabled\":true,\"avatarName\":\"avatar-20220216040451227.png\",\"phone\":\"18888888888\",\"pwdResetTime\":1588495111000,\"updateBy\":\"admin\",\"createTime\":1534986716000,\"id\":1,\"email\":\"201507802@qq.com\",\"username\":\"admin\"}', '192.168.0.108', 10, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:57:50');
INSERT INTO `sys_log` VALUES (50, '修改部门', 'INFO', 'me.fann.modules.system.rest.DeptController.updateDept()', '{\"pid\":7,\"updateTime\":1596350927000,\"enabled\":true,\"deptSort\":3,\"subCount\":0,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1553476532000,\"name\":\"上海市\",\"id\":2}', '192.168.0.108', 7, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:58:08');
INSERT INTO `sys_log` VALUES (51, '修改部门', 'INFO', 'me.fann.modules.system.rest.DeptController.updateDept()', '{\"pid\":8,\"updateTime\":1645005370000,\"enabled\":true,\"deptSort\":6,\"subCount\":0,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1553478738000,\"name\":\"北京市\",\"id\":6}', '192.168.0.108', 5, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:58:14');
INSERT INTO `sys_log` VALUES (52, '修改部门', 'INFO', 'me.fann.modules.system.rest.DeptController.updateDept()', '{\"pid\":8,\"updateTime\":1645005396000,\"enabled\":true,\"deptSort\":7,\"subCount\":0,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1589381813000,\"name\":\"天津市\",\"id\":15}', '192.168.0.108', 6, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 17:58:23');
INSERT INTO `sys_log` VALUES (53, '删除菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.deleteMenu()', '[39]', '192.168.0.108', 28, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 18:03:08');
INSERT INTO `sys_log` VALUES (54, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"people\",\"pid\":6,\"title\":\"在线用户\",\"type\":1,\"subCount\":0,\"path\":\"online\",\"component\":\"monitor/online/index\",\"createTime\":1572098923000,\"iFrame\":false,\"id\":41,\"componentName\":\"OnlineUser\",\"menuSort\":10}', '192.168.0.108', 10, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 18:03:40');
INSERT INTO `sys_log` VALUES (55, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"\",\"permission\":\"dept:add\",\"pid\":35,\"title\":\"城市新增\",\"type\":2,\"subCount\":0,\"path\":\"\",\"component\":\"\",\"createTime\":1572325029000,\"iFrame\":false,\"id\":56,\"menuSort\":2}', '192.168.0.108', 11, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 18:20:08');
INSERT INTO `sys_log` VALUES (56, '删除菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.deleteMenu()', '[28]', '192.168.0.108', 51, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 18:22:12');
INSERT INTO `sys_log` VALUES (58, '删除菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.deleteMenu()', '[117]', '192.168.0.108', 10, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 18:29:39');
INSERT INTO `sys_log` VALUES (59, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"codeConsole\",\"title\":\"数据管理\",\"type\":0,\"subCount\":5,\"path\":\"components\",\"createTime\":1545197896000,\"iFrame\":false,\"id\":10,\"menuSort\":50}', '192.168.0.108', 11, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 18:29:54');
INSERT INTO `sys_log` VALUES (60, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"codeConsole\",\"updateTime\":1645007394000,\"title\":\"数据管理\",\"type\":0,\"subCount\":5,\"path\":\"components\",\"updateBy\":\"admin\",\"createTime\":1545197896000,\"iFrame\":false,\"id\":10,\"menuSort\":40}', '192.168.0.108', 10, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 18:30:04');
INSERT INTO `sys_log` VALUES (61, '修改部门', 'INFO', 'me.fann.modules.system.rest.DeptController.updateDept()', '{\"updateTime\":1645005274000,\"enabled\":true,\"deptSort\":0,\"subCount\":2,\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1553483090000,\"name\":\"华南分区\",\"id\":7}', '192.168.0.108', 5, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 19:20:17');
INSERT INTO `sys_log` VALUES (62, '删除菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.deleteMenu()', '[33,34,15]', '192.168.0.108', 26, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 19:22:51');
INSERT INTO `sys_log` VALUES (63, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":true,\"hidden\":false,\"roles\":[],\"icon\":\"dev\",\"permission\":\"\",\"pid\":36,\"title\":\"生成配置\",\"type\":1,\"subCount\":0,\"path\":\"generator/config/:tableName\",\"component\":\"generator/config\",\"createTime\":1573992536000,\"iFrame\":false,\"id\":82,\"componentName\":\"GeneratorConfig\",\"menuSort\":33}', '192.168.0.108', 14, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 19:24:06');
INSERT INTO `sys_log` VALUES (64, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":true,\"roles\":[],\"icon\":\"sys-tools\",\"title\":\"系统工具\",\"type\":0,\"subCount\":7,\"path\":\"sys-tools\",\"component\":\"\",\"createTime\":1553828255000,\"iFrame\":false,\"id\":36,\"menuSort\":30}', '192.168.0.108', 12, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 19:27:38');
INSERT INTO `sys_log` VALUES (65, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":true,\"hidden\":false,\"roles\":[],\"icon\":\"message\",\"permission\":\"\",\"pid\":10,\"title\":\"消息管理\",\"type\":1,\"subCount\":0,\"path\":\"echarts\",\"component\":\"components/Echarts\",\"createTime\":1574298272000,\"iFrame\":false,\"id\":83,\"componentName\":\"Echarts\",\"menuSort\":50}', '192.168.0.108', 11, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 19:28:24');
INSERT INTO `sys_log` VALUES (66, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"source\",\"pid\":10,\"title\":\"表情管理\",\"type\":1,\"subCount\":0,\"path\":\"icon\",\"component\":\"components/icons/index\",\"createTime\":1545197929000,\"iFrame\":false,\"id\":11,\"componentName\":\"Icons\",\"menuSort\":51}', '192.168.0.108', 12, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 19:28:55');
INSERT INTO `sys_log` VALUES (67, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"theme\",\"pid\":10,\"updateTime\":1645010935000,\"title\":\"表情管理\",\"type\":1,\"subCount\":0,\"path\":\"icon\",\"component\":\"components/icons/index\",\"updateBy\":\"admin\",\"createTime\":1545197929000,\"iFrame\":false,\"id\":11,\"componentName\":\"Icons\",\"menuSort\":51}', '192.168.0.108', 13, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 19:29:31');
INSERT INTO `sys_log` VALUES (68, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":true,\"roles\":[],\"icon\":\"server\",\"permission\":\"serverDeploy:list\",\"pid\":90,\"title\":\"服务器\",\"type\":1,\"subCount\":3,\"path\":\"mnt/serverDeploy\",\"component\":\"mnt/server/index\",\"createTime\":1573352965000,\"iFrame\":false,\"id\":92,\"componentName\":\"ServerDeploy\",\"menuSort\":22}', '192.168.0.108', 11, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 19:30:02');
INSERT INTO `sys_log` VALUES (69, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":true,\"roles\":[],\"icon\":\"deploy\",\"permission\":\"deploy:list\",\"pid\":90,\"title\":\"部署管理\",\"type\":1,\"subCount\":3,\"path\":\"mnt/deploy\",\"component\":\"mnt/deploy/index\",\"createTime\":1573372615000,\"iFrame\":false,\"id\":94,\"componentName\":\"Deploy\",\"menuSort\":24}', '192.168.0.108', 13, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 19:30:19');
INSERT INTO `sys_log` VALUES (70, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":true,\"roles\":[],\"icon\":\"backup\",\"permission\":\"deployHistory:list\",\"pid\":90,\"title\":\"部署备份\",\"type\":1,\"subCount\":1,\"path\":\"mnt/deployHistory\",\"component\":\"mnt/deployHistory/index\",\"createTime\":1573375784000,\"iFrame\":false,\"id\":97,\"componentName\":\"DeployHistory\",\"menuSort\":25}', '192.168.0.108', 11, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 19:30:33');
INSERT INTO `sys_log` VALUES (71, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":true,\"hidden\":true,\"roles\":[],\"icon\":\"log\",\"pid\":6,\"updateTime\":1591420317000,\"title\":\"操作日志\",\"type\":1,\"subCount\":0,\"path\":\"logs\",\"component\":\"monitor/log/index\",\"updateBy\":\"admin\",\"createTime\":1545117506000,\"iFrame\":false,\"id\":7,\"componentName\":\"Log\",\"menuSort\":11}', '192.168.0.108', 15, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 19:31:07');
INSERT INTO `sys_log` VALUES (72, '测试数据库链接', 'INFO', 'me.fann.modules.mnt.rest.DatabaseController.testConnect()', '{\"userName\":\"root\",\"name\":\"test\",\"jdbcUrl\":\"jdbc:mysql://\",\"pwd\":\"123456\"}', '192.168.0.108', 21, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 20:25:54');
INSERT INTO `sys_log` VALUES (73, '测试数据库链接', 'INFO', 'me.fann.modules.mnt.rest.DatabaseController.testConnect()', '{\"userName\":\"root\",\"name\":\"test\",\"jdbcUrl\":\"jdbc:mysql://localhost:3306/eladmin?serverTimezone=Asia/Shanghai&characterEncoding=utf8&useSSL=false\",\"pwd\":\"123456\"}', '192.168.0.108', 10, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 20:29:13');
INSERT INTO `sys_log` VALUES (74, '新增数据库', 'INFO', 'me.fann.modules.mnt.rest.DatabaseController.createDatabase()', '{\"userName\":\"root\",\"name\":\"test\",\"jdbcUrl\":\"jdbc:mysql://localhost:3306/eladmin?serverTimezone=Asia/Shanghai&characterEncoding=utf8&useSSL=false\",\"id\":\"ef3e9d91e97441f2a46af22671ce9992\",\"pwd\":\"123456\"}', '192.168.0.108', 17, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 20:29:15');
INSERT INTO `sys_log` VALUES (75, '测试数据库链接', 'INFO', 'me.fann.modules.mnt.rest.DatabaseController.testConnect()', '{\"updateTime\":1645014555000,\"userName\":\"root\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645014555000,\"name\":\"test\",\"jdbcUrl\":\"jdbc:mysql://localhost:3306/mysql?serverTimezone=Asia/Shanghai&characterEncoding=utf8&useSSL=false\",\"id\":\"ef3e9d91e97441f2a46af22671ce9992\",\"pwd\":\"123456\"}', '192.168.0.108', 7, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 20:29:42');
INSERT INTO `sys_log` VALUES (76, '修改数据库', 'INFO', 'me.fann.modules.mnt.rest.DatabaseController.updateDatabase()', '{\"updateTime\":1645014555000,\"userName\":\"root\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"createTime\":1645014555000,\"name\":\"test\",\"jdbcUrl\":\"jdbc:mysql://localhost:3306/mysql?serverTimezone=Asia/Shanghai&characterEncoding=utf8&useSSL=false\",\"id\":\"ef3e9d91e97441f2a46af22671ce9992\",\"pwd\":\"123456\"}', '192.168.0.108', 8, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 20:29:44');
INSERT INTO `sys_log` VALUES (77, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":true,\"hidden\":false,\"roles\":[],\"icon\":\"message\",\"permission\":\"\",\"pid\":10,\"updateTime\":1645010904000,\"title\":\"消息管理\",\"type\":1,\"subCount\":0,\"path\":\"echarts\",\"component\":\"components/Echarts\",\"updateBy\":\"admin\",\"createTime\":1574298272000,\"iFrame\":false,\"id\":83,\"componentName\":\"Echarts\",\"menuSort\":41}', '192.168.0.108', 13, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 20:40:00');
INSERT INTO `sys_log` VALUES (78, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"theme\",\"pid\":10,\"updateTime\":1645010971000,\"title\":\"表情管理\",\"type\":1,\"subCount\":0,\"path\":\"icon\",\"component\":\"components/icons/index\",\"updateBy\":\"admin\",\"createTime\":1545197929000,\"iFrame\":false,\"id\":11,\"componentName\":\"Icons\",\"menuSort\":42}', '192.168.0.108', 12, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 20:40:10');
INSERT INTO `sys_log` VALUES (79, '修改用户：个人中心', 'INFO', 'me.fann.modules.system.rest.UserController.centerUser()', '{\"gender\":\"男\",\"nickName\":\"管理员\",\"isAdmin\":false,\"phone\":\"18888888888\",\"id\":1}', '192.168.0.108', 7, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 21:28:31');
INSERT INTO `sys_log` VALUES (83, '删除所有ERROR日志', 'INFO', 'me.fann.rest.LogController.delAllErrorLog()', '', '192.168.0.108', 7, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-16 22:15:44');
INSERT INTO `sys_log` VALUES (84, '删除级别', 'ERROR', 'me.fann.modules.system.rest.JobController.deleteJob()', '[17]', '192.168.0.108', 2, 'admin', '内网IP', 'Chrome 98.0.4758.102', 'me.fann.exception.BadRequestException: 所选的级别中存在用户关联，请解除关联再试！\r\n	at me.fann.modules.system.service.impl.JobServiceImpl.verification(JobServiceImpl.java:122)\r\n	at me.fann.modules.system.service.impl.JobServiceImpl$$FastClassBySpringCGLIB$$b4aead77.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:687)\r\n	at me.fann.modules.system.service.impl.JobServiceImpl$$EnhancerBySpringCGLIB$$9f731fbd.verification(<generated>)\r\n	at me.fann.modules.system.rest.JobController.deleteJob(JobController.java:90)\r\n	at me.fann.modules.system.rest.JobController$$FastClassBySpringCGLIB$$b35ff135.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:771)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at me.fann.aspect.LogAspect.logAround(LogAspect.java:68)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:95)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:691)\r\n	at me.fann.modules.system.rest.JobController$$EnhancerBySpringCGLIB$$4aa2250.deleteJob(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:190)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:138)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:105)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:878)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:792)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1040)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:943)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006)\r\n	at org.springframework.web.servlet.FrameworkServlet.doDelete(FrameworkServlet.java:931)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:658)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:733)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:113)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:124)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:126)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:90)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:118)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:158)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.fann.modules.security.security.TokenFilter.doFilter(TokenFilter.java:90)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:92)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doHeadersAfter(HeaderWriterFilter.java:92)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:77)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:358)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:271)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:202)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:97)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:541)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:143)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:78)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:374)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:65)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:868)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1590)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:750)\r\n', '2022-02-16 22:16:02');
INSERT INTO `sys_log` VALUES (85, '删除城市', 'ERROR', 'me.fann.modules.system.rest.DeptController.deleteDept()', '[7]', '192.168.0.108', 7, 'admin', '内网IP', 'Chrome 98.0.4758.102', 'me.fann.exception.BadRequestException: 所选城市存在用户关联，请解除后再试！\r\n	at me.fann.modules.system.service.impl.DeptServiceImpl.verification(DeptServiceImpl.java:242)\r\n	at me.fann.modules.system.service.impl.DeptServiceImpl$$FastClassBySpringCGLIB$$4d6d67d1.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:687)\r\n	at me.fann.modules.system.service.impl.DeptServiceImpl$$EnhancerBySpringCGLIB$$b661970b.verification(<generated>)\r\n	at me.fann.modules.system.rest.DeptController.deleteDept(DeptController.java:113)\r\n	at me.fann.modules.system.rest.DeptController$$FastClassBySpringCGLIB$$9f3dcd45.invoke(<generated>)\r\n	at org.springframework.cglib.proxy.MethodProxy.invoke(MethodProxy.java:218)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.invokeJoinpoint(CglibAopProxy.java:771)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:163)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.aspectj.AspectJAfterThrowingAdvice.invoke(AspectJAfterThrowingAdvice.java:62)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.aspectj.MethodInvocationProceedingJoinPoint.proceed(MethodInvocationProceedingJoinPoint.java:88)\r\n	at me.fann.aspect.LogAspect.logAround(LogAspect.java:68)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethodWithGivenArgs(AbstractAspectJAdvice.java:644)\r\n	at org.springframework.aop.aspectj.AbstractAspectJAdvice.invokeAdviceMethod(AbstractAspectJAdvice.java:633)\r\n	at org.springframework.aop.aspectj.AspectJAroundAdvice.invoke(AspectJAroundAdvice.java:70)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:175)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.security.access.intercept.aopalliance.MethodSecurityInterceptor.invoke(MethodSecurityInterceptor.java:69)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.interceptor.ExposeInvocationInterceptor.invoke(ExposeInvocationInterceptor.java:95)\r\n	at org.springframework.aop.framework.ReflectiveMethodInvocation.proceed(ReflectiveMethodInvocation.java:186)\r\n	at org.springframework.aop.framework.CglibAopProxy$CglibMethodInvocation.proceed(CglibAopProxy.java:749)\r\n	at org.springframework.aop.framework.CglibAopProxy$DynamicAdvisedInterceptor.intercept(CglibAopProxy.java:691)\r\n	at me.fann.modules.system.rest.DeptController$$EnhancerBySpringCGLIB$$7d85c080.deleteDept(<generated>)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)\r\n	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)\r\n	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)\r\n	at java.lang.reflect.Method.invoke(Method.java:498)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.doInvoke(InvocableHandlerMethod.java:190)\r\n	at org.springframework.web.method.support.InvocableHandlerMethod.invokeForRequest(InvocableHandlerMethod.java:138)\r\n	at org.springframework.web.servlet.mvc.method.annotation.ServletInvocableHandlerMethod.invokeAndHandle(ServletInvocableHandlerMethod.java:105)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.invokeHandlerMethod(RequestMappingHandlerAdapter.java:878)\r\n	at org.springframework.web.servlet.mvc.method.annotation.RequestMappingHandlerAdapter.handleInternal(RequestMappingHandlerAdapter.java:792)\r\n	at org.springframework.web.servlet.mvc.method.AbstractHandlerMethodAdapter.handle(AbstractHandlerMethodAdapter.java:87)\r\n	at org.springframework.web.servlet.DispatcherServlet.doDispatch(DispatcherServlet.java:1040)\r\n	at org.springframework.web.servlet.DispatcherServlet.doService(DispatcherServlet.java:943)\r\n	at org.springframework.web.servlet.FrameworkServlet.processRequest(FrameworkServlet.java:1006)\r\n	at org.springframework.web.servlet.FrameworkServlet.doDelete(FrameworkServlet.java:931)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:658)\r\n	at org.springframework.web.servlet.FrameworkServlet.service(FrameworkServlet.java:883)\r\n	at javax.servlet.http.HttpServlet.service(HttpServlet.java:733)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:231)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.tomcat.websocket.server.WsFilter.doFilter(WsFilter.java:53)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:113)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at com.alibaba.druid.support.http.WebStatFilter.doFilter(WebStatFilter.java:124)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:320)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.invoke(FilterSecurityInterceptor.java:126)\r\n	at org.springframework.security.web.access.intercept.FilterSecurityInterceptor.doFilter(FilterSecurityInterceptor.java:90)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.access.ExceptionTranslationFilter.doFilter(ExceptionTranslationFilter.java:118)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.session.SessionManagementFilter.doFilter(SessionManagementFilter.java:137)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.AnonymousAuthenticationFilter.doFilter(AnonymousAuthenticationFilter.java:111)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.servletapi.SecurityContextHolderAwareRequestFilter.doFilter(SecurityContextHolderAwareRequestFilter.java:158)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.savedrequest.RequestCacheAwareFilter.doFilter(RequestCacheAwareFilter.java:63)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at me.fann.modules.security.security.TokenFilter.doFilter(TokenFilter.java:90)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.web.filter.CorsFilter.doFilterInternal(CorsFilter.java:92)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.authentication.logout.LogoutFilter.doFilter(LogoutFilter.java:116)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doHeadersAfter(HeaderWriterFilter.java:92)\r\n	at org.springframework.security.web.header.HeaderWriterFilter.doFilterInternal(HeaderWriterFilter.java:77)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.SecurityContextPersistenceFilter.doFilter(SecurityContextPersistenceFilter.java:105)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.context.request.async.WebAsyncManagerIntegrationFilter.doFilterInternal(WebAsyncManagerIntegrationFilter.java:56)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.springframework.security.web.FilterChainProxy$VirtualFilterChain.doFilter(FilterChainProxy.java:334)\r\n	at org.springframework.security.web.FilterChainProxy.doFilterInternal(FilterChainProxy.java:215)\r\n	at org.springframework.security.web.FilterChainProxy.doFilter(FilterChainProxy.java:178)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.invokeDelegate(DelegatingFilterProxy.java:358)\r\n	at org.springframework.web.filter.DelegatingFilterProxy.doFilter(DelegatingFilterProxy.java:271)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.springframework.web.filter.CharacterEncodingFilter.doFilterInternal(CharacterEncodingFilter.java:201)\r\n	at org.springframework.web.filter.OncePerRequestFilter.doFilter(OncePerRequestFilter.java:119)\r\n	at org.apache.catalina.core.ApplicationFilterChain.internalDoFilter(ApplicationFilterChain.java:193)\r\n	at org.apache.catalina.core.ApplicationFilterChain.doFilter(ApplicationFilterChain.java:166)\r\n	at org.apache.catalina.core.StandardWrapperValve.invoke(StandardWrapperValve.java:202)\r\n	at org.apache.catalina.core.StandardContextValve.invoke(StandardContextValve.java:97)\r\n	at org.apache.catalina.authenticator.AuthenticatorBase.invoke(AuthenticatorBase.java:541)\r\n	at org.apache.catalina.core.StandardHostValve.invoke(StandardHostValve.java:143)\r\n	at org.apache.catalina.valves.ErrorReportValve.invoke(ErrorReportValve.java:92)\r\n	at org.apache.catalina.core.StandardEngineValve.invoke(StandardEngineValve.java:78)\r\n	at org.apache.catalina.connector.CoyoteAdapter.service(CoyoteAdapter.java:343)\r\n	at org.apache.coyote.http11.Http11Processor.service(Http11Processor.java:374)\r\n	at org.apache.coyote.AbstractProcessorLight.process(AbstractProcessorLight.java:65)\r\n	at org.apache.coyote.AbstractProtocol$ConnectionHandler.process(AbstractProtocol.java:868)\r\n	at org.apache.tomcat.util.net.NioEndpoint$SocketProcessor.doRun(NioEndpoint.java:1590)\r\n	at org.apache.tomcat.util.net.SocketProcessorBase.run(SocketProcessorBase.java:49)\r\n	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)\r\n	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)\r\n	at org.apache.tomcat.util.threads.TaskThread$WrappingRunnable.run(TaskThread.java:61)\r\n	at java.lang.Thread.run(Thread.java:750)\r\n', '2022-02-16 22:16:07');
INSERT INTO `sys_log` VALUES (86, '导出数据', 'INFO', 'me.fann.rest.LogController.exportLog()', '', '192.168.0.108', 838, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-17 18:04:43');
INSERT INTO `sys_log` VALUES (87, '导出数据', 'INFO', 'me.fann.rest.LogController.exportLog()', '', '192.168.0.108', 111, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-17 18:05:26');
INSERT INTO `sys_log` VALUES (88, '修改菜单', 'INFO', 'me.fann.modules.system.rest.MenuController.updateMenu()', '{\"cache\":false,\"hidden\":false,\"roles\":[],\"icon\":\"theme\",\"pid\":10,\"updateTime\":1645015210000,\"title\":\"图标管理\",\"type\":1,\"subCount\":0,\"path\":\"icon\",\"component\":\"components/icons/index\",\"updateBy\":\"admin\",\"createTime\":1545197929000,\"iFrame\":false,\"id\":11,\"componentName\":\"Icons\",\"menuSort\":42}', '192.168.0.108', 122, 'admin', '内网IP', 'Chrome 98.0.4758.102', NULL, '2022-02-17 20:12:50');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pid` bigint(20) NULL DEFAULT NULL COMMENT '上级菜单ID',
  `sub_count` int(5) NULL DEFAULT 0 COMMENT '子菜单数目',
  `type` int(11) NULL DEFAULT NULL COMMENT '菜单类型',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单标题',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件名称',
  `component` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组件',
  `menu_sort` int(5) NULL DEFAULT NULL COMMENT '排序',
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图标',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  `i_frame` bit(1) NULL DEFAULT NULL COMMENT '是否外链',
  `cache` bit(1) NULL DEFAULT b'0' COMMENT '缓存',
  `hidden` bit(1) NULL DEFAULT b'0' COMMENT '隐藏',
  `permission` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`menu_id`) USING BTREE,
  UNIQUE INDEX `uniq_title`(`title`) USING BTREE,
  UNIQUE INDEX `uniq_name`(`name`) USING BTREE,
  INDEX `inx_pid`(`pid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 119 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统菜单' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, NULL, 5, 0, '系统管理', NULL, NULL, 1, 'system', 'system', b'0', b'0', b'0', NULL, NULL, 'admin', '2018-12-18 15:11:29', '2022-02-15 21:09:35');
INSERT INTO `sys_menu` VALUES (2, 1, 3, 1, '用户管理', 'User', 'system/user/index', 2, 'peoples', 'user', b'0', b'0', b'0', 'user:list', NULL, NULL, '2018-12-18 15:14:44', NULL);
INSERT INTO `sys_menu` VALUES (3, 1, 3, 1, '角色管理', 'Role', 'system/role/index', 3, 'role', 'role', b'0', b'0', b'0', 'roles:list', NULL, NULL, '2018-12-18 15:16:07', NULL);
INSERT INTO `sys_menu` VALUES (5, 1, 3, 1, '菜单管理', 'Menu', 'system/menu/index', 5, 'menu', 'menu', b'0', b'0', b'0', 'menu:list', NULL, NULL, '2018-12-18 15:17:28', NULL);
INSERT INTO `sys_menu` VALUES (6, NULL, 5, 0, '系统监控', NULL, NULL, 10, 'monitor', 'monitor', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-18 15:17:48', NULL);
INSERT INTO `sys_menu` VALUES (7, 6, 0, 1, '操作日志', 'Log', 'monitor/log/index', 11, 'log', 'logs', b'0', b'1', b'1', NULL, NULL, 'admin', '2018-12-18 15:18:26', '2022-02-16 19:31:07');
INSERT INTO `sys_menu` VALUES (9, 6, 0, 1, 'SQL监控', 'Sql', 'monitor/sql/index', 18, 'sqlMonitor', 'druid', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-18 15:19:34', NULL);
INSERT INTO `sys_menu` VALUES (10, NULL, 2, 0, '数据管理', NULL, NULL, 40, 'codeConsole', 'components', b'0', b'0', b'0', NULL, NULL, 'admin', '2018-12-19 13:38:16', '2022-02-16 18:30:04');
INSERT INTO `sys_menu` VALUES (11, 10, 0, 1, '图标管理', 'Icons', 'components/icons/index', 42, 'theme', 'icon', b'0', b'0', b'0', NULL, NULL, 'admin', '2018-12-19 13:38:49', '2022-02-17 20:12:50');
INSERT INTO `sys_menu` VALUES (14, 36, 0, 1, '邮件工具', 'Email', 'tools/email/index', 35, 'email', 'email', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-27 10:13:09', NULL);
INSERT INTO `sys_menu` VALUES (18, 36, 3, 1, '存储管理', 'Storage', 'tools/storage/index', 34, 'qiniu', 'storage', b'0', b'0', b'0', 'storage:list', NULL, NULL, '2018-12-31 11:12:15', NULL);
INSERT INTO `sys_menu` VALUES (19, 36, 0, 1, '支付宝工具', 'AliPay', 'tools/aliPay/index', 37, 'alipay', 'aliPay', b'0', b'0', b'0', NULL, NULL, NULL, '2018-12-31 14:52:38', NULL);
INSERT INTO `sys_menu` VALUES (30, 36, 0, 1, '代码生成', 'GeneratorIndex', 'generator/index', 32, 'dev', 'generator', b'0', b'1', b'0', NULL, NULL, NULL, '2019-01-11 15:45:55', NULL);
INSERT INTO `sys_menu` VALUES (32, 6, 0, 1, '异常日志', 'ErrorLog', 'monitor/log/errorLog', 12, 'error', 'errorLog', b'0', b'0', b'0', NULL, NULL, NULL, '2019-01-13 13:49:03', NULL);
INSERT INTO `sys_menu` VALUES (35, 1, 3, 1, '城市分区', 'Dept', 'system/dept/index', 6, 'dept', 'dept', b'0', b'0', b'0', 'dept:list', NULL, 'admin', '2019-03-25 09:46:00', '2022-02-16 17:41:45');
INSERT INTO `sys_menu` VALUES (36, NULL, 7, 0, '系统工具', NULL, '', 30, 'sys-tools', 'sys-tools', b'0', b'0', b'1', NULL, NULL, 'admin', '2019-03-29 10:57:35', '2022-02-16 19:27:38');
INSERT INTO `sys_menu` VALUES (37, 1, 3, 1, '级别管理', 'Job', 'system/job/index', 7, 'Steve-Jobs', 'job', b'0', b'0', b'0', 'job:list', NULL, 'admin', '2019-03-29 13:51:18', '2022-02-16 17:42:56');
INSERT INTO `sys_menu` VALUES (38, 36, 0, 1, '接口文档', 'Swagger', 'tools/swagger/index', 36, 'swagger', 'swagger2', b'0', b'0', b'0', NULL, NULL, NULL, '2019-03-29 19:57:53', NULL);
INSERT INTO `sys_menu` VALUES (41, 6, 0, 1, '在线用户', 'OnlineUser', 'monitor/online/index', 10, 'people', 'online', b'0', b'0', b'0', NULL, NULL, 'admin', '2019-10-26 22:08:43', '2022-02-16 18:03:40');
INSERT INTO `sys_menu` VALUES (44, 2, 0, 2, '用户新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'user:add', NULL, NULL, '2019-10-29 10:59:46', NULL);
INSERT INTO `sys_menu` VALUES (45, 2, 0, 2, '用户编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'user:edit', NULL, NULL, '2019-10-29 11:00:08', NULL);
INSERT INTO `sys_menu` VALUES (46, 2, 0, 2, '用户删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'user:del', NULL, NULL, '2019-10-29 11:00:23', NULL);
INSERT INTO `sys_menu` VALUES (48, 3, 0, 2, '角色创建', NULL, '', 2, '', '', b'0', b'0', b'0', 'roles:add', NULL, NULL, '2019-10-29 12:45:34', NULL);
INSERT INTO `sys_menu` VALUES (49, 3, 0, 2, '角色修改', NULL, '', 3, '', '', b'0', b'0', b'0', 'roles:edit', NULL, NULL, '2019-10-29 12:46:16', NULL);
INSERT INTO `sys_menu` VALUES (50, 3, 0, 2, '角色删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'roles:del', NULL, NULL, '2019-10-29 12:46:51', NULL);
INSERT INTO `sys_menu` VALUES (52, 5, 0, 2, '菜单新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'menu:add', NULL, NULL, '2019-10-29 12:55:07', NULL);
INSERT INTO `sys_menu` VALUES (53, 5, 0, 2, '菜单编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'menu:edit', NULL, NULL, '2019-10-29 12:55:40', NULL);
INSERT INTO `sys_menu` VALUES (54, 5, 0, 2, '菜单删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'menu:del', NULL, NULL, '2019-10-29 12:56:00', NULL);
INSERT INTO `sys_menu` VALUES (56, 35, 0, 2, '城市新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'dept:add', NULL, 'admin', '2019-10-29 12:57:09', '2022-02-16 18:20:08');
INSERT INTO `sys_menu` VALUES (57, 35, 0, 2, '城市编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'dept:edit', NULL, NULL, '2019-10-29 12:57:27', NULL);
INSERT INTO `sys_menu` VALUES (58, 35, 0, 2, '城市删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'dept:del', NULL, NULL, '2019-10-29 12:57:41', NULL);
INSERT INTO `sys_menu` VALUES (60, 37, 0, 2, '级别新增', NULL, '', 2, '', '', b'0', b'0', b'0', 'job:add', NULL, NULL, '2019-10-29 12:58:27', NULL);
INSERT INTO `sys_menu` VALUES (61, 37, 0, 2, '级别编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'job:edit', NULL, NULL, '2019-10-29 12:58:45', NULL);
INSERT INTO `sys_menu` VALUES (62, 37, 0, 2, '级别删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'job:del', NULL, NULL, '2019-10-29 12:59:04', NULL);
INSERT INTO `sys_menu` VALUES (77, 18, 0, 2, '上传文件', NULL, '', 2, '', '', b'0', b'0', b'0', 'storage:add', NULL, NULL, '2019-10-29 13:09:09', NULL);
INSERT INTO `sys_menu` VALUES (78, 18, 0, 2, '文件编辑', NULL, '', 3, '', '', b'0', b'0', b'0', 'storage:edit', NULL, NULL, '2019-10-29 13:09:22', NULL);
INSERT INTO `sys_menu` VALUES (79, 18, 0, 2, '文件删除', NULL, '', 4, '', '', b'0', b'0', b'0', 'storage:del', NULL, NULL, '2019-10-29 13:09:34', NULL);
INSERT INTO `sys_menu` VALUES (80, 6, 0, 1, '服务监控', 'ServerMonitor', 'monitor/server/index', 14, 'codeConsole', 'server', b'0', b'0', b'0', 'monitor:list', NULL, 'admin', '2019-11-07 13:06:39', '2020-05-04 18:20:50');
INSERT INTO `sys_menu` VALUES (82, 36, 0, 1, '生成配置', 'GeneratorConfig', 'generator/config', 33, 'dev', 'generator/config/:tableName', b'0', b'1', b'0', '', NULL, 'admin', '2019-11-17 20:08:56', '2022-02-16 19:24:06');
INSERT INTO `sys_menu` VALUES (83, 10, 0, 1, '消息管理', 'Echarts', 'components/Echarts', 41, 'message', 'echarts', b'0', b'1', b'0', '', NULL, 'admin', '2019-11-21 09:04:32', '2022-02-16 20:40:00');
INSERT INTO `sys_menu` VALUES (90, NULL, 5, 1, '运维管理', 'Mnt', '', 20, 'mnt', 'mnt', b'0', b'0', b'0', NULL, NULL, NULL, '2019-11-09 10:31:08', NULL);
INSERT INTO `sys_menu` VALUES (92, 90, 3, 1, '服务器', 'ServerDeploy', 'mnt/server/index', 22, 'server', 'mnt/serverDeploy', b'0', b'0', b'1', 'serverDeploy:list', NULL, 'admin', '2019-11-10 10:29:25', '2022-02-16 19:30:02');
INSERT INTO `sys_menu` VALUES (93, 90, 3, 1, '应用管理', 'App', 'mnt/app/index', 23, 'app', 'mnt/app', b'0', b'0', b'0', 'app:list', NULL, NULL, '2019-11-10 11:05:16', NULL);
INSERT INTO `sys_menu` VALUES (94, 90, 3, 1, '部署管理', 'Deploy', 'mnt/deploy/index', 24, 'deploy', 'mnt/deploy', b'0', b'0', b'1', 'deploy:list', NULL, 'admin', '2019-11-10 15:56:55', '2022-02-16 19:30:19');
INSERT INTO `sys_menu` VALUES (97, 90, 1, 1, '部署备份', 'DeployHistory', 'mnt/deployHistory/index', 25, 'backup', 'mnt/deployHistory', b'0', b'0', b'1', 'deployHistory:list', NULL, 'admin', '2019-11-10 16:49:44', '2022-02-16 19:30:33');
INSERT INTO `sys_menu` VALUES (98, 90, 3, 1, '数据库管理', 'Database', 'mnt/database/index', 26, 'database', 'mnt/database', b'0', b'0', b'0', 'database:list', NULL, NULL, '2019-11-10 20:40:04', NULL);
INSERT INTO `sys_menu` VALUES (102, 97, 0, 2, '删除', NULL, '', 999, '', '', b'0', b'0', b'0', 'deployHistory:del', NULL, NULL, '2019-11-17 09:32:48', NULL);
INSERT INTO `sys_menu` VALUES (103, 92, 0, 2, '服务器新增', NULL, '', 999, '', '', b'0', b'0', b'0', 'serverDeploy:add', NULL, NULL, '2019-11-17 11:08:33', NULL);
INSERT INTO `sys_menu` VALUES (104, 92, 0, 2, '服务器编辑', NULL, '', 999, '', '', b'0', b'0', b'0', 'serverDeploy:edit', NULL, NULL, '2019-11-17 11:08:57', NULL);
INSERT INTO `sys_menu` VALUES (105, 92, 0, 2, '服务器删除', NULL, '', 999, '', '', b'0', b'0', b'0', 'serverDeploy:del', NULL, NULL, '2019-11-17 11:09:15', NULL);
INSERT INTO `sys_menu` VALUES (106, 93, 0, 2, '应用新增', NULL, '', 999, '', '', b'0', b'0', b'0', 'app:add', NULL, NULL, '2019-11-17 11:10:03', NULL);
INSERT INTO `sys_menu` VALUES (107, 93, 0, 2, '应用编辑', NULL, '', 999, '', '', b'0', b'0', b'0', 'app:edit', NULL, NULL, '2019-11-17 11:10:28', NULL);
INSERT INTO `sys_menu` VALUES (108, 93, 0, 2, '应用删除', NULL, '', 999, '', '', b'0', b'0', b'0', 'app:del', NULL, NULL, '2019-11-17 11:10:55', NULL);
INSERT INTO `sys_menu` VALUES (109, 94, 0, 2, '部署新增', NULL, '', 999, '', '', b'0', b'0', b'0', 'deploy:add', NULL, NULL, '2019-11-17 11:11:22', NULL);
INSERT INTO `sys_menu` VALUES (110, 94, 0, 2, '部署编辑', NULL, '', 999, '', '', b'0', b'0', b'0', 'deploy:edit', NULL, NULL, '2019-11-17 11:11:41', NULL);
INSERT INTO `sys_menu` VALUES (111, 94, 0, 2, '部署删除', NULL, '', 999, '', '', b'0', b'0', b'0', 'deploy:del', NULL, NULL, '2019-11-17 11:12:01', NULL);
INSERT INTO `sys_menu` VALUES (112, 98, 0, 2, '数据库新增', NULL, '', 999, '', '', b'0', b'0', b'0', 'database:add', NULL, NULL, '2019-11-17 11:12:43', NULL);
INSERT INTO `sys_menu` VALUES (113, 98, 0, 2, '数据库编辑', NULL, '', 999, '', '', b'0', b'0', b'0', 'database:edit', NULL, NULL, '2019-11-17 11:12:58', NULL);
INSERT INTO `sys_menu` VALUES (114, 98, 0, 2, '数据库删除', NULL, '', 999, '', '', b'0', b'0', b'0', 'database:del', NULL, NULL, '2019-11-17 11:13:14', NULL);
INSERT INTO `sys_menu` VALUES (116, 36, 0, 1, '生成预览', 'Preview', 'generator/preview', 999, 'java', 'generator/preview/:tableName', b'0', b'1', b'1', NULL, NULL, NULL, '2019-11-26 14:54:36', NULL);

-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_job`;
CREATE TABLE `sys_quartz_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Spring Bean名称',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'cron 表达式',
  `is_pause` bit(1) NULL DEFAULT NULL COMMENT '状态：1暂停、0启用',
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '任务名称',
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法名称',
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `person_in_charge` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报警邮箱',
  `sub_task` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子任务ID',
  `pause_after_failure` bit(1) NULL DEFAULT NULL COMMENT '任务失败后是否暂停',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`job_id`) USING BTREE,
  INDEX `inx_is_pause`(`is_pause`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_quartz_job
-- ----------------------------
INSERT INTO `sys_quartz_job` VALUES (2, 'testTask', '0/5 * * * * ?', b'1', '测试1', 'run1', 'test', '带参测试，多参使用json', '测试', NULL, NULL, NULL, NULL, 'admin', '2019-08-22 14:08:29', '2020-05-24 13:58:33');
INSERT INTO `sys_quartz_job` VALUES (3, 'testTask', '0/5 * * * * ?', b'1', '测试', 'run', '', '不带参测试', 'Zheng Jie', '', '5,6', b'1', NULL, 'admin', '2019-09-26 16:44:39', '2020-05-24 14:48:12');
INSERT INTO `sys_quartz_job` VALUES (5, 'Test', '0/5 * * * * ?', b'1', '任务告警测试', 'run', NULL, '测试', 'test', '', NULL, b'1', 'admin', 'admin', '2020-05-05 20:32:41', '2020-05-05 20:36:13');
INSERT INTO `sys_quartz_job` VALUES (6, 'testTask', '0/5 * * * * ?', b'1', '测试3', 'run2', NULL, '测试3', 'Zheng Jie', '', NULL, b'1', 'admin', 'admin', '2020-05-05 20:35:41', '2020-05-05 20:36:07');

-- ----------------------------
-- Table structure for sys_quartz_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_log`;
CREATE TABLE `sys_quartz_log`  (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bean_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `exception_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_success` bit(1) NULL DEFAULT NULL,
  `job_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `method_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `params` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` bigint(20) NULL DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务日志' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_quartz_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '名称',
  `level` int(255) NULL DEFAULT NULL COMMENT '角色级别',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `data_scope` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '数据权限',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`role_id`) USING BTREE,
  UNIQUE INDEX `uniq_name`(`name`) USING BTREE,
  INDEX `role_name_index`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 1, '-', '全部', NULL, 'admin', '2018-11-23 11:04:37', '2020-08-06 16:10:24');
INSERT INTO `sys_role` VALUES (2, '普通用户', 2, '-', '本级', NULL, 'admin', '2018-11-23 13:09:06', '2022-02-16 15:00:32');

-- ----------------------------
-- Table structure for sys_roles_depts
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_depts`;
CREATE TABLE `sys_roles_depts`  (
  `role_id` bigint(20) NOT NULL,
  `dept_id` bigint(20) NOT NULL,
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE,
  INDEX `FK7qg6itn5ajdoa9h9o78v9ksur`(`dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色部门关联' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_roles_depts
-- ----------------------------

-- ----------------------------
-- Table structure for sys_roles_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_roles_menus`;
CREATE TABLE `sys_roles_menus`  (
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`menu_id`, `role_id`) USING BTREE,
  INDEX `FKcngg2qadojhi3a651a5adkvbq`(`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色菜单关联' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_roles_menus
-- ----------------------------
INSERT INTO `sys_roles_menus` VALUES (1, 1);
INSERT INTO `sys_roles_menus` VALUES (2, 1);
INSERT INTO `sys_roles_menus` VALUES (3, 1);
INSERT INTO `sys_roles_menus` VALUES (5, 1);
INSERT INTO `sys_roles_menus` VALUES (6, 1);
INSERT INTO `sys_roles_menus` VALUES (7, 1);
INSERT INTO `sys_roles_menus` VALUES (9, 1);
INSERT INTO `sys_roles_menus` VALUES (10, 1);
INSERT INTO `sys_roles_menus` VALUES (11, 1);
INSERT INTO `sys_roles_menus` VALUES (14, 1);
INSERT INTO `sys_roles_menus` VALUES (18, 1);
INSERT INTO `sys_roles_menus` VALUES (19, 1);
INSERT INTO `sys_roles_menus` VALUES (30, 1);
INSERT INTO `sys_roles_menus` VALUES (32, 1);
INSERT INTO `sys_roles_menus` VALUES (35, 1);
INSERT INTO `sys_roles_menus` VALUES (36, 1);
INSERT INTO `sys_roles_menus` VALUES (37, 1);
INSERT INTO `sys_roles_menus` VALUES (38, 1);
INSERT INTO `sys_roles_menus` VALUES (41, 1);
INSERT INTO `sys_roles_menus` VALUES (44, 1);
INSERT INTO `sys_roles_menus` VALUES (45, 1);
INSERT INTO `sys_roles_menus` VALUES (46, 1);
INSERT INTO `sys_roles_menus` VALUES (48, 1);
INSERT INTO `sys_roles_menus` VALUES (49, 1);
INSERT INTO `sys_roles_menus` VALUES (50, 1);
INSERT INTO `sys_roles_menus` VALUES (52, 1);
INSERT INTO `sys_roles_menus` VALUES (53, 1);
INSERT INTO `sys_roles_menus` VALUES (54, 1);
INSERT INTO `sys_roles_menus` VALUES (56, 1);
INSERT INTO `sys_roles_menus` VALUES (57, 1);
INSERT INTO `sys_roles_menus` VALUES (58, 1);
INSERT INTO `sys_roles_menus` VALUES (60, 1);
INSERT INTO `sys_roles_menus` VALUES (61, 1);
INSERT INTO `sys_roles_menus` VALUES (62, 1);
INSERT INTO `sys_roles_menus` VALUES (77, 1);
INSERT INTO `sys_roles_menus` VALUES (78, 1);
INSERT INTO `sys_roles_menus` VALUES (79, 1);
INSERT INTO `sys_roles_menus` VALUES (80, 1);
INSERT INTO `sys_roles_menus` VALUES (82, 1);
INSERT INTO `sys_roles_menus` VALUES (83, 1);
INSERT INTO `sys_roles_menus` VALUES (90, 1);
INSERT INTO `sys_roles_menus` VALUES (92, 1);
INSERT INTO `sys_roles_menus` VALUES (93, 1);
INSERT INTO `sys_roles_menus` VALUES (94, 1);
INSERT INTO `sys_roles_menus` VALUES (97, 1);
INSERT INTO `sys_roles_menus` VALUES (98, 1);
INSERT INTO `sys_roles_menus` VALUES (102, 1);
INSERT INTO `sys_roles_menus` VALUES (103, 1);
INSERT INTO `sys_roles_menus` VALUES (104, 1);
INSERT INTO `sys_roles_menus` VALUES (105, 1);
INSERT INTO `sys_roles_menus` VALUES (106, 1);
INSERT INTO `sys_roles_menus` VALUES (107, 1);
INSERT INTO `sys_roles_menus` VALUES (108, 1);
INSERT INTO `sys_roles_menus` VALUES (109, 1);
INSERT INTO `sys_roles_menus` VALUES (110, 1);
INSERT INTO `sys_roles_menus` VALUES (111, 1);
INSERT INTO `sys_roles_menus` VALUES (112, 1);
INSERT INTO `sys_roles_menus` VALUES (113, 1);
INSERT INTO `sys_roles_menus` VALUES (114, 1);
INSERT INTO `sys_roles_menus` VALUES (116, 1);
INSERT INTO `sys_roles_menus` VALUES (120, 1);
INSERT INTO `sys_roles_menus` VALUES (1, 2);
INSERT INTO `sys_roles_menus` VALUES (2, 2);
INSERT INTO `sys_roles_menus` VALUES (6, 2);
INSERT INTO `sys_roles_menus` VALUES (7, 2);
INSERT INTO `sys_roles_menus` VALUES (9, 2);
INSERT INTO `sys_roles_menus` VALUES (14, 2);
INSERT INTO `sys_roles_menus` VALUES (19, 2);
INSERT INTO `sys_roles_menus` VALUES (30, 2);
INSERT INTO `sys_roles_menus` VALUES (32, 2);
INSERT INTO `sys_roles_menus` VALUES (36, 2);
INSERT INTO `sys_roles_menus` VALUES (80, 2);
INSERT INTO `sys_roles_menus` VALUES (82, 2);
INSERT INTO `sys_roles_menus` VALUES (116, 2);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门名称',
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `nick_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '昵称',
  `gender` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `avatar_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `avatar_path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像真实路径',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `is_admin` bit(1) NULL DEFAULT b'0' COMMENT '是否为admin账号',
  `enabled` bigint(20) NULL DEFAULT NULL COMMENT '状态：1启用、0禁用',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `pwd_reset_time` datetime(0) NULL DEFAULT NULL COMMENT '修改密码的时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `UK_kpubos9gc2cvtkb0thktkbkes`(`email`) USING BTREE,
  UNIQUE INDEX `username`(`username`) USING BTREE,
  UNIQUE INDEX `uniq_username`(`username`) USING BTREE,
  UNIQUE INDEX `uniq_email`(`email`) USING BTREE,
  INDEX `FK5rwmryny6jthaaxkogownknqp`(`dept_id`) USING BTREE,
  INDEX `FKpq2dhypk2qgt68nauh2by22jb`(`avatar_name`) USING BTREE,
  INDEX `inx_enabled`(`enabled`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统用户' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 18, 'admin', '管理员', '男', '18888888888', 'fannc@qq.com', 'avatar-20220216040451227.png', 'C:\\eladmin\\avatar\\avatar-20220216040451227.png', '$2a$10$Egp1/gvFlt7zhlXVfEFw4OfWQCGPw0ClmMcc6FjTnvXNRVf9zdMRa', b'1', 1, NULL, 'admin', '2020-05-03 16:38:31', '2018-08-23 09:11:56', '2022-02-16 17:57:50');
INSERT INTO `sys_user` VALUES (2, 2, 'test', '测试', '男', '19999999999', '231@qq.com', NULL, NULL, '$2a$10$4XcyudOYTSz6fue6KFNMHeUQnCX5jbBQypLEnGk1PmekXt5c95JcK', b'0', 1, 'admin', 'admin', NULL, '2020-05-05 11:15:49', '2022-02-16 17:56:57');

-- ----------------------------
-- Table structure for sys_user_message
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_message`;
CREATE TABLE `sys_user_message`  (
  `message_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `message` varchar(10000) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `send_to` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `update_time` timestamp(0) NULL DEFAULT NULL,
  `create_time` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`message_id`, `user_id`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_message
-- ----------------------------
INSERT INTO `sys_user_message` VALUES (0, 1, 'admin', '你好啊', 'test', 'admin', 'admin', NULL, '2022-02-17 19:44:14');
INSERT INTO `sys_user_message` VALUES (1, 1, 'admin', '好的我知道了', 'test', 'admin', 'admin', NULL, '2022-02-17 19:44:43');
INSERT INTO `sys_user_message` VALUES (2, 2, 'test', '今天去哪玩呢', 'admin', 'test', NULL, NULL, '2022-02-16 19:44:26');

-- ----------------------------
-- Table structure for sys_users_jobs
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_jobs`;
CREATE TABLE `sys_users_jobs`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `job_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `job_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_users_jobs
-- ----------------------------
INSERT INTO `sys_users_jobs` VALUES (1, 17);
INSERT INTO `sys_users_jobs` VALUES (2, 13);

-- ----------------------------
-- Table structure for sys_users_roles
-- ----------------------------
DROP TABLE IF EXISTS `sys_users_roles`;
CREATE TABLE `sys_users_roles`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE,
  INDEX `FKq4eq273l04bpu4efj0jd0jb98`(`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色关联' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_users_roles
-- ----------------------------
INSERT INTO `sys_users_roles` VALUES (1, 1);
INSERT INTO `sys_users_roles` VALUES (2, 2);

-- ----------------------------
-- Table structure for tool_alipay_config
-- ----------------------------
DROP TABLE IF EXISTS `tool_alipay_config`;
CREATE TABLE `tool_alipay_config`  (
  `config_id` bigint(20) NOT NULL COMMENT 'ID',
  `app_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '应用ID',
  `charset` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编码',
  `format` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型 固定格式json',
  `gateway_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网关地址',
  `notify_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异步回调',
  `private_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '私钥',
  `public_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公钥',
  `return_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '回调地址',
  `sign_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '签名方式',
  `sys_service_provider_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商户号',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '支付宝配置类' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tool_alipay_config
-- ----------------------------
INSERT INTO `tool_alipay_config` VALUES (1, '2016091700532697', 'utf-8', 'JSON', 'https://openapi.alipaydev.com/gateway.do', 'http://api.auauz.net/api/aliPay/notify', 'MIIEvAIBADANBgkqhkiG9w0BAQEFAASCBKYwggSiAgEAAoIBAQC5js8sInU10AJ0cAQ8UMMyXrQ+oHZEkVt5lBwsStmTJ7YikVYgbskx1YYEXTojRsWCb+SH/kDmDU4pK/u91SJ4KFCRMF2411piYuXU/jF96zKrADznYh/zAraqT6hvAIVtQAlMHN53nx16rLzZ/8jDEkaSwT7+HvHiS+7sxSojnu/3oV7BtgISoUNstmSe8WpWHOaWv19xyS+Mce9MY4BfseFhzTICUymUQdd/8hXA28/H6osUfAgsnxAKv7Wil3aJSgaJczWuflYOve0dJ3InZkhw5Cvr0atwpk8YKBQjy5CdkoHqvkOcIB+cYHXJKzOE5tqU7inSwVbHzOLQ3XbnAgMBAAECggEAVJp5eT0Ixg1eYSqFs9568WdetUNCSUchNxDBu6wxAbhUgfRUGZuJnnAll63OCTGGck+EGkFh48JjRcBpGoeoHLL88QXlZZbC/iLrea6gcDIhuvfzzOffe1RcZtDFEj9hlotg8dQj1tS0gy9pN9g4+EBH7zeu+fyv+qb2e/v1l6FkISXUjpkD7RLQr3ykjiiEw9BpeKb7j5s7Kdx1NNIzhkcQKNqlk8JrTGDNInbDM6inZfwwIO2R1DHinwdfKWkvOTODTYa2MoAvVMFT9Bec9FbLpoWp7ogv1JMV9svgrcF9XLzANZ/OQvkbe9TV9GWYvIbxN6qwQioKCWO4GPnCAQKBgQDgW5MgfhX8yjXqoaUy/d1VjI8dHeIyw8d+OBAYwaxRSlCfyQ+tieWcR2HdTzPca0T0GkWcKZm0ei5xRURgxt4DUDLXNh26HG0qObbtLJdu/AuBUuCqgOiLqJ2f1uIbrz6OZUHns+bT/jGW2Ws8+C13zTCZkZt9CaQsrp3QOGDx5wKBgQDTul39hp3ZPwGNFeZdkGoUoViOSd5Lhowd5wYMGAEXWRLlU8z+smT5v0POz9JnIbCRchIY2FAPKRdVTICzmPk2EPJFxYTcwaNbVqL6lN7J2IlXXMiit5QbiLauo55w7plwV6LQmKm9KV7JsZs5XwqF7CEovI7GevFzyD3w+uizAQKBgC3LY1eRhOlpWOIAhpjG6qOoohmeXOphvdmMlfSHq6WYFqbWwmV4rS5d/6LNpNdL6fItXqIGd8I34jzql49taCmi+A2nlR/E559j0mvM20gjGDIYeZUz5MOE8k+K6/IcrhcgofgqZ2ZED1ksHdB/E8DNWCswZl16V1FrfvjeWSNnAoGAMrBplCrIW5xz+J0Hm9rZKrs+AkK5D4fUv8vxbK/KgxZ2KaUYbNm0xv39c+PZUYuFRCz1HDGdaSPDTE6WeWjkMQd5mS6ikl9hhpqFRkyh0d0fdGToO9yLftQKOGE/q3XUEktI1XvXF0xyPwNgUCnq0QkpHyGVZPtGFxwXiDvpvgECgYA5PoB+nY8iDiRaJNko9w0hL4AeKogwf+4TbCw+KWVEn6jhuJa4LFTdSqp89PktQaoVpwv92el/AhYjWOl/jVCm122f9b7GyoelbjMNolToDwe5pF5RnSpEuDdLy9MfE8LnE3PlbE7E5BipQ3UjSebkgNboLHH/lNZA5qvEtvbfvQ==', 'MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAut9evKRuHJ/2QNfDlLwvN/S8l9hRAgPbb0u61bm4AtzaTGsLeMtScetxTWJnVvAVpMS9luhEJjt+Sbk5TNLArsgzzwARgaTKOLMT1TvWAK5EbHyI+eSrc3s7Awe1VYGwcubRFWDm16eQLv0k7iqiw+4mweHSz/wWyvBJVgwLoQ02btVtAQErCfSJCOmt0Q/oJQjj08YNRV4EKzB19+f5A+HQVAKy72dSybTzAK+3FPtTtNen/+b5wGeat7c32dhYHnGorPkPeXLtsqqUTp1su5fMfd4lElNdZaoCI7osZxWWUo17vBCZnyeXc9fk0qwD9mK6yRAxNbrY72Xx5VqIqwIDAQAB', 'http://api.auauz.net/api/aliPay/return', 'RSA2', '2088102176044281');

-- ----------------------------
-- Table structure for tool_email_config
-- ----------------------------
DROP TABLE IF EXISTS `tool_email_config`;
CREATE TABLE `tool_email_config`  (
  `config_id` bigint(20) NOT NULL COMMENT 'ID',
  `from_user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收件人',
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮件服务器SMTP地址',
  `pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `port` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '端口',
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发件者用户名',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '邮箱配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tool_email_config
-- ----------------------------

-- ----------------------------
-- Table structure for tool_local_storage
-- ----------------------------
DROP TABLE IF EXISTS `tool_local_storage`;
CREATE TABLE `tool_local_storage`  (
  `storage_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件真实的名称',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
  `suffix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '后缀',
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '路径',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `size` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '大小',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建日期',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`storage_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '本地存储' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tool_local_storage
-- ----------------------------
INSERT INTO `tool_local_storage` VALUES (1, 'background-20220216072317657.png', '背景', 'png', 'C:\\eladmin\\file\\图片\\background-20220216072317657.png', '图片', '2.07MB   ', 'admin', 'admin', '2022-02-16 19:23:18', '2022-02-16 19:23:18');

-- ----------------------------
-- Table structure for tool_qiniu_config
-- ----------------------------
DROP TABLE IF EXISTS `tool_qiniu_config`;
CREATE TABLE `tool_qiniu_config`  (
  `config_id` bigint(20) NOT NULL COMMENT 'ID',
  `access_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'accessKey',
  `bucket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Bucket 识别符',
  `host` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '外链域名',
  `secret_key` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'secretKey',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '空间类型',
  `zone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机房',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '七牛云配置' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tool_qiniu_config
-- ----------------------------

-- ----------------------------
-- Table structure for tool_qiniu_content
-- ----------------------------
DROP TABLE IF EXISTS `tool_qiniu_content`;
CREATE TABLE `tool_qiniu_content`  (
  `content_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `bucket` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'Bucket 识别符',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名称',
  `size` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件大小',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型：私有或公开',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件url',
  `suffix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件后缀',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '上传或同步的时间',
  PRIMARY KEY (`content_id`) USING BTREE,
  UNIQUE INDEX `uniq_name`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '七牛云文件存储' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tool_qiniu_content
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
