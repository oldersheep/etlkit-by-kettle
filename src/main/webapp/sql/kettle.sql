/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50718
Source Host           : localhost:3306
Source Database       : kettle

Target Server Type    : MYSQL
Target Server Version : 50718
File Encoding         : 65001

Date: 2018-02-01 16:30:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for m_database_attribute
-- ----------------------------
DROP TABLE IF EXISTS `m_database_attribute`;
CREATE TABLE `m_database_attribute` (
  `ID` bigint(20) NOT NULL COMMENT '系统标识',
  `ID_DATABASE_TYPE` int(11) DEFAULT NULL COMMENT '数据库类型ID',
  `CODE` varchar(255) DEFAULT NULL COMMENT '属性代码',
  `VALUE_STR` mediumtext COMMENT '属性值',
  `CODE_EXPLAIN` mediumtext COMMENT '属性代码介绍'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_database_attribute
-- ----------------------------
INSERT INTO `m_database_attribute` VALUES ('1', '4', 'USE_POOLING', 'N', '使用连接池，默认N');
INSERT INTO `m_database_attribute` VALUES ('2', '4', 'PRESERVE_RESERVED_WORD_CASE', 'Y', '高级里面最后一个，默认Y');
INSERT INTO `m_database_attribute` VALUES ('3', '4', 'IS_CLUSTERED', 'Y', '是否集群，默认Y');
INSERT INTO `m_database_attribute` VALUES ('4', '4', 'SUPPORTS_TIMESTAMP_DATA_TYPE', 'Y', '支持时间戳数据类型，默认Y');
INSERT INTO `m_database_attribute` VALUES ('5', '4', 'SUPPORTS_BOOLEAN_DATA_TYPE', 'Y', '支持布尔数据类型，默认Y');
INSERT INTO `m_database_attribute` VALUES ('6', '4', 'PORT_NUMBER', '1521', '端口号，从r_database中取');
INSERT INTO `m_database_attribute` VALUES ('7', '4', 'FORCE_IDENTIFIERS_TO_UPPERCASE', 'N', '强制标识符使用大写，默认N');
INSERT INTO `m_database_attribute` VALUES ('8', '4', 'FORCE_IDENTIFIERS_TO_LOWERCASE', 'N', '强制标识符使用小写，默认N');
INSERT INTO `m_database_attribute` VALUES ('9', '4', 'PREFERRED_SCHEMA_NAME', '', '默认模式名称');
INSERT INTO `m_database_attribute` VALUES ('10', '4', 'SQL_CONNECT', '', '连接成功后执行的sql语句');
INSERT INTO `m_database_attribute` VALUES ('11', '4', 'QUOTE_ALL_FIELDS', 'N', '标识符使用引号扩起来');
INSERT INTO `m_database_attribute` VALUES ('12', '39', 'EXTRA_OPTION_MYSQL.useCursorFetch', 'true', 'MySQL的额外选项：使用游标');
INSERT INTO `m_database_attribute` VALUES ('13', '39', 'USE_POOLING', 'N', '使用连接池，默认N');
INSERT INTO `m_database_attribute` VALUES ('14', '39', 'PRESERVE_RESERVED_WORD_CASE', 'Y', '高级里面最后一个，默认Y');
INSERT INTO `m_database_attribute` VALUES ('15', '39', 'IS_CLUSTERED', 'N', '是否集群，默认N');
INSERT INTO `m_database_attribute` VALUES ('16', '39', 'SUPPORTS_TIMESTAMP_DATA_TYPE', 'Y', '支持时间戳数据类型，默认Y');
INSERT INTO `m_database_attribute` VALUES ('17', '39', 'SUPPORTS_BOOLEAN_DATA_TYPE', 'Y', '支持布尔数据类型，默认Y');
INSERT INTO `m_database_attribute` VALUES ('18', '39', 'STREAM_RESULTS', 'Y', '结果流，默认Y');
INSERT INTO `m_database_attribute` VALUES ('19', '39', 'EXTRA_OPTION_MYSQL.defaultFetchSize', '500', 'MySQL额外选项：默认抓取大小');
INSERT INTO `m_database_attribute` VALUES ('20', '39', 'FORCE_IDENTIFIERS_TO_UPPERCASE', 'N', '强制标识符使用大写，默认N');
INSERT INTO `m_database_attribute` VALUES ('21', '39', 'PORT_NUMBER', '3306', '端口号，从r_database中取');
INSERT INTO `m_database_attribute` VALUES ('22', '39', 'PREFERRED_SCHEMA_NAME', '', '默认模式名称');
INSERT INTO `m_database_attribute` VALUES ('23', '39', 'FORCE_IDENTIFIERS_TO_LOWERCASE', 'N', '强制标识符使用小写，默认N');
INSERT INTO `m_database_attribute` VALUES ('24', '39', 'SQL_CONNECT', '', '连接成功后执行的sql语句');
INSERT INTO `m_database_attribute` VALUES ('25', '39', 'QUOTE_ALL_FIELDS', 'N', '标识符使用引号扩起来');
INSERT INTO `m_database_attribute` VALUES ('26', '16', 'MSSQL_DOUBLE_DECIMAL_SEPARATOR', 'N', 'MSSQL');
INSERT INTO `m_database_attribute` VALUES ('27', '16', 'USE_POOLING', 'N', '使用连接池，默认N');
INSERT INTO `m_database_attribute` VALUES ('28', '16', 'PRESERVE_RESERVED_WORD_CASE', 'Y', '高级里面最后一个，默认Y');
INSERT INTO `m_database_attribute` VALUES ('29', '16', 'IS_CLUSTERED', 'N', '是否集群，默认N');
INSERT INTO `m_database_attribute` VALUES ('30', '16', 'SUPPORTS_TIMESTAMP_DATA_TYPE', 'Y', '支持时间戳数据类型，默认Y');
INSERT INTO `m_database_attribute` VALUES ('31', '16', 'SUPPORTS_BOOLEAN_DATA_TYPE', 'Y', '支持布尔数据类型，默认Y');
INSERT INTO `m_database_attribute` VALUES ('32', '16', 'EXTRA_OPTION_MSSQL.instance', '', 'MSSQL额外选项，实例');
INSERT INTO `m_database_attribute` VALUES ('33', '16', 'PORT_NUMBER', '1433', '端口号，从r_database中取');
INSERT INTO `m_database_attribute` VALUES ('34', '16', 'FORCE_IDENTIFIERS_TO_UPPERCASE', 'N', '强制标识符使用大写，默认N');
INSERT INTO `m_database_attribute` VALUES ('35', '16', 'PREFERRED_SCHEMA_NAME', '', '默认模式名称');
INSERT INTO `m_database_attribute` VALUES ('36', '16', 'FORCE_IDENTIFIERS_TO_LOWERCASE', 'N', '强制标识符使用小写，默认N');
INSERT INTO `m_database_attribute` VALUES ('37', '16', 'SQL_CONNECT', '', '连接成功后执行的sql语句');
INSERT INTO `m_database_attribute` VALUES ('38', '16', 'QUOTE_ALL_FIELDS', 'N', '标识符使用引号扩起来');

-- ----------------------------
-- Table structure for m_flow_node_type
-- ----------------------------
DROP TABLE IF EXISTS `m_flow_node_type`;
CREATE TABLE `m_flow_node_type` (
  `ID_JOBENTRY_TYPE` int(11) DEFAULT NULL,
  `CODE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_flow_node_type
-- ----------------------------
INSERT INTO `m_flow_node_type` VALUES ('5', 'start');
INSERT INTO `m_flow_node_type` VALUES ('50', 'trans');
INSERT INTO `m_flow_node_type` VALUES ('71', 'success');
INSERT INTO `m_flow_node_type` VALUES ('21', 'job');
INSERT INTO `m_flow_node_type` VALUES ('24', 'abort');
INSERT INTO `m_flow_node_type` VALUES ('9', 'other');
INSERT INTO `m_flow_node_type` VALUES ('23', 'script');
INSERT INTO `m_flow_node_type` VALUES ('52', 'setVariables');
INSERT INTO `m_flow_node_type` VALUES ('39', 'SEV');

-- ----------------------------
-- Table structure for m_job_flow
-- ----------------------------
DROP TABLE IF EXISTS `m_job_flow`;
CREATE TABLE `m_job_flow` (
  `ID` int(11) NOT NULL COMMENT 'ID',
  `STEP_ID` int(11) DEFAULT NULL COMMENT '步骤ID',
  `STEP_NAME` varchar(255) DEFAULT NULL COMMENT '步骤名称',
  `STATUS` int(11) DEFAULT NULL COMMENT '状态，是否可用，1-可用  0-不可用',
  `INPUT_DATE` varchar(10) DEFAULT NULL COMMENT '插入日期',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_job_flow
-- ----------------------------
INSERT INTO `m_job_flow` VALUES ('1', '1', 'ERP地区表', '1', '20160426');

-- ----------------------------
-- Table structure for m_one_entryandcopy
-- ----------------------------
DROP TABLE IF EXISTS `m_one_entryandcopy`;
CREATE TABLE `m_one_entryandcopy` (
  `ID` bigint(20) NOT NULL COMMENT '系统标识',
  `ID_JOBENTRY_TYPE` int(11) DEFAULT NULL COMMENT '作业实体类型',
  `NAME` varchar(255) DEFAULT NULL COMMENT '实体名',
  `DESCRIPTION` mediumtext COMMENT '解释',
  `NR` int(11) NOT NULL DEFAULT '0' COMMENT '不知道是啥',
  `GUI_LOCATION_X` int(11) DEFAULT NULL COMMENT 'X轴的坐标',
  `GUI_LOCATION_Y` int(11) DEFAULT NULL COMMENT 'Y轴的坐标',
  `GUI_DRAW` tinyint(4) DEFAULT '1' COMMENT '不知道是啥,1为默认的',
  `PARALLEL` tinyint(4) DEFAULT '0' COMMENT '并行，为1的时候代表两个作业做完才可以进行下一步'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_one_entryandcopy
-- ----------------------------
INSERT INTO `m_one_entryandcopy` VALUES ('1', '5', 'START', '开始', '0', '150', '150', '1', '0');
INSERT INTO `m_one_entryandcopy` VALUES ('2', '49', '获取作业名', '得到当前作业名', '0', '300', '150', '1', '0');
INSERT INTO `m_one_entryandcopy` VALUES ('3', '61', '判断是否首次执行', '判断当前作业当天是否是第一次执行', '0', '450', '150', '1', '0');
INSERT INTO `m_one_entryandcopy` VALUES ('4', '47', '转换', '用户配置的映射关系', '0', '600', '150', '1', '0');
INSERT INTO `m_one_entryandcopy` VALUES ('5', '31', '更新为已执行', '将此作业在配置表中的插入日期更新数据日期', '0', '750', '150', '1', '0');
INSERT INTO `m_one_entryandcopy` VALUES ('6', '70', '执行成功', '成功执行此作业中的转换', '0', '900', '150', '1', '0');
INSERT INTO `m_one_entryandcopy` VALUES ('7', '70', '跳过', '跳过执行此作业的转换', '0', '900', '300', '1', '0');

-- ----------------------------
-- Table structure for m_schedule_result
-- ----------------------------
DROP TABLE IF EXISTS `m_schedule_result`;
CREATE TABLE `m_schedule_result` (
  `resul_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) DEFAULT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `id_job` int(11) DEFAULT NULL,
  `start_time` varchar(10) DEFAULT NULL,
  `end_time` varchar(10) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `excute_message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resul_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_schedule_result
-- ----------------------------

-- ----------------------------
-- Table structure for m_schedule_task
-- ----------------------------
DROP TABLE IF EXISTS `m_schedule_task`;
CREATE TABLE `m_schedule_task` (
  `task_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `dayofmonth` varchar(255) DEFAULT NULL,
  `dayofweek` varchar(255) DEFAULT NULL,
  `hour` varchar(255) DEFAULT NULL,
  `minute` varchar(255) DEFAULT NULL,
  `current_state` varchar(255) DEFAULT NULL,
  `id_job` int(11) DEFAULT NULL,
  `job_name` varchar(255) DEFAULT NULL,
  `dir_name` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `extrainfo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_schedule_task
-- ----------------------------

-- ----------------------------
-- Table structure for m_step_attribute
-- ----------------------------
DROP TABLE IF EXISTS `m_step_attribute`;
CREATE TABLE `m_step_attribute` (
  `ID` bigint(20) NOT NULL COMMENT '系统标识',
  `ID_STEP_TYPE` int(11) DEFAULT NULL COMMENT '步骤类型ID',
  `STEP_DESCRIPTION` mediumtext COMMENT '步骤解释',
  `NR` int(11) NOT NULL DEFAULT '0' COMMENT '不知道是啥',
  `CODE` varchar(255) DEFAULT NULL COMMENT '属性代码',
  `VALUE_NUM` bigint(20) DEFAULT NULL COMMENT '属性值',
  `VALUE_STR` mediumtext COMMENT '属性串',
  `CODE_EXPLAIN` mediumtext COMMENT '属性代码介绍',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_step_attribute
-- ----------------------------
INSERT INTO `m_step_attribute` VALUES ('1', '138', '表输入', '0', 'id_connection', '1', '', '数据库的ID');
INSERT INTO `m_step_attribute` VALUES ('2', '138', '表输入', '0', 'sql', '0', 'SELECT ID, ID_JOBENTRY_TYPE, NAME, DESCRIPTION, NR, GUI_LOCATION_X, GUI_LOCATION_Y, GUI_DRAW, PARALLEL FROM m_one_entryandcopy ', 'SQL语句，具体表输入时要执行的语句，此字段的内容需程序填充');
INSERT INTO `m_step_attribute` VALUES ('3', '138', '表输入', '0', 'variables_active', '0', 'N', '替换变量');
INSERT INTO `m_step_attribute` VALUES ('4', '10', '表输出', '0', 'id_connection', '2', '', '数据库的ID');
INSERT INTO `m_step_attribute` VALUES ('5', '10', '表输出', '0', 'schema', '0', '', 'Oracle时的用户名');
INSERT INTO `m_step_attribute` VALUES ('6', '10', '表输出', '0', 'table', '0', 'm_database_attribute', '');
INSERT INTO `m_step_attribute` VALUES ('7', '10', '表输出', '0', 'commit', '0', '1000', '提交记录数量');
INSERT INTO `m_step_attribute` VALUES ('8', '10', '表输出', '0', 'truncate', '0', 'Y', '是否清空表');
INSERT INTO `m_step_attribute` VALUES ('9', '10', '表输出', '0', 'use_batch', '0', 'Y', '使用批量插入');
INSERT INTO `m_step_attribute` VALUES ('10', '10', '表输出', '0', 'specify_fields', '0', 'Y', '指定数据库字段');
INSERT INTO `m_step_attribute` VALUES ('11', '10', '表输出', '0', 'column_name', '0', 'ID', '表字段');
INSERT INTO `m_step_attribute` VALUES ('12', '10', '表输出', '0', 'stream_name', '0', 'ID', '流字段');
INSERT INTO `m_step_attribute` VALUES ('13', '10', '表输出', '1', 'column_name', '0', 'ID_DATABASE_TYPE', '');
INSERT INTO `m_step_attribute` VALUES ('14', '10', '表输出', '1', 'stream_name', '0', 'ID_DATABASE_TYPE', '');
INSERT INTO `m_step_attribute` VALUES ('15', '10', '表输出', '2', 'column_name', '0', 'CODE', '');
INSERT INTO `m_step_attribute` VALUES ('16', '10', '表输出', '2', 'stream_name', '0', 'CODE', '');
INSERT INTO `m_step_attribute` VALUES ('17', '10', '表输出', '3', 'column_name', '0', 'VALUE_STR', '');
INSERT INTO `m_step_attribute` VALUES ('18', '10', '表输出', '3', 'stream_name', '0', 'VALUE_STR', '');
INSERT INTO `m_step_attribute` VALUES ('19', '10', '表输出', '4', 'column_name', '0', 'CODE_EXPLAIN', '');
INSERT INTO `m_step_attribute` VALUES ('20', '10', '表输出', '4', 'stream_name', '0', 'CODE_EXPLAIN', '');
INSERT INTO `m_step_attribute` VALUES ('21', '97', '插入 / 更新', '0', 'id_connection', '3', '', '数据库的ID');
INSERT INTO `m_step_attribute` VALUES ('22', '97', '插入 / 更新', '0', 'commit', '0', '100', '提交数据量');
INSERT INTO `m_step_attribute` VALUES ('23', '97', '插入 / 更新', '0', 'schema', '0', '', '目标模式，针对oracle');
INSERT INTO `m_step_attribute` VALUES ('24', '97', '插入 / 更新', '0', 'table', '0', 'm_database_attribute', '表名');
INSERT INTO `m_step_attribute` VALUES ('25', '97', '插入 / 更新', '0', 'update_bypassed', '0', 'N', '不执行任何更新');
INSERT INTO `m_step_attribute` VALUES ('26', '97', '插入 / 更新', '0', 'key_name', '0', 'ID', '表字段');
INSERT INTO `m_step_attribute` VALUES ('27', '97', '插入 / 更新', '0', 'key_field', '0', 'ID', '流字段');
INSERT INTO `m_step_attribute` VALUES ('28', '97', '插入 / 更新', '0', 'key_condition', '0', '=', '比较符');
INSERT INTO `m_step_attribute` VALUES ('29', '97', '插入 / 更新', '0', 'value_name', '0', 'ID_DATABASE_TYPE', '更新表字段');
INSERT INTO `m_step_attribute` VALUES ('30', '97', '插入 / 更新', '0', 'value_rename', '0', 'ID_DATABASE_TYPE', '更新流字段');
INSERT INTO `m_step_attribute` VALUES ('31', '97', '插入 / 更新', '0', 'value_update', '0', 'Y', '是否更新');
INSERT INTO `m_step_attribute` VALUES ('32', '97', '插入 / 更新', '1', 'value_name', '0', 'CODE', '更新表字段');
INSERT INTO `m_step_attribute` VALUES ('33', '97', '插入 / 更新', '1', 'value_rename', '0', 'CODE', '更新流字段');
INSERT INTO `m_step_attribute` VALUES ('34', '97', '插入 / 更新', '1', 'value_update', '0', 'Y', '是否更新');
INSERT INTO `m_step_attribute` VALUES ('35', '97', '插入 / 更新', '2', 'value_name', '0', 'VALUE_STR', '更新表字段');
INSERT INTO `m_step_attribute` VALUES ('36', '97', '插入 / 更新', '2', 'value_rename', '0', 'VALUE_STR', '更新流字段');
INSERT INTO `m_step_attribute` VALUES ('37', '97', '插入 / 更新', '2', 'value_update', '0', 'Y', '是否更新');
INSERT INTO `m_step_attribute` VALUES ('38', '97', '插入 / 更新', '3', 'value_name', '0', 'CODE_EXPLAIN', '更新表字段');
INSERT INTO `m_step_attribute` VALUES ('39', '97', '插入 / 更新', '3', 'value_rename', '0', 'CODE_EXPLAIN', '更新流字段');
INSERT INTO `m_step_attribute` VALUES ('40', '97', '插入 / 更新', '3', 'value_update', '0', 'Y', '是否更新');
INSERT INTO `m_step_attribute` VALUES ('41', '117', '调用DB存储过程', '0', 'id_connection', '4', '', '数据库的ID');
INSERT INTO `m_step_attribute` VALUES ('42', '117', '调用DB存储过程', '0', 'procedure', '0', 'PROC_TEST', '存储过程名');
INSERT INTO `m_step_attribute` VALUES ('43', '117', '调用DB存储过程', '0', 'arg_name', '0', 'ret', '参数名');
INSERT INTO `m_step_attribute` VALUES ('44', '117', '调用DB存储过程', '0', 'arg_direction', '0', 'OUT', '方向');
INSERT INTO `m_step_attribute` VALUES ('45', '117', '调用DB存储过程', '0', 'arg_type', '0', 'Number', '参数类型');
INSERT INTO `m_step_attribute` VALUES ('46', '117', '调用DB存储过程', '0', 'auto_commit', '0', 'Y', '启用自动提交');

-- ----------------------------
-- Table structure for m_step_log
-- ----------------------------
DROP TABLE IF EXISTS `m_step_log`;
CREATE TABLE `m_step_log` (
  `ID_BATCH` int(11) DEFAULT NULL,
  `CHANNEL_ID` varchar(255) DEFAULT NULL,
  `LOG_DATE` datetime DEFAULT NULL,
  `TRANSNAME` varchar(255) DEFAULT NULL,
  `STEPNAME` varchar(255) DEFAULT NULL,
  `STEP_COPY` int(11) DEFAULT NULL,
  `LINES_READ` bigint(20) DEFAULT NULL,
  `LINES_WRITTEN` bigint(20) DEFAULT NULL,
  `LINES_UPDATED` bigint(20) DEFAULT NULL,
  `LINES_INPUT` bigint(20) DEFAULT NULL,
  `LINES_OUTPUT` bigint(20) DEFAULT NULL,
  `LINES_REJECTED` bigint(20) DEFAULT NULL,
  `ERRORS` bigint(20) DEFAULT NULL,
  `LOG_FIELD` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_step_log
-- ----------------------------
INSERT INTO `m_step_log` VALUES ('0', '911cb27c-1f51-477a-8c6f-18400faec0d8', '2017-10-30 11:07:01', 'get_etl_date', '获取昨天0点', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '60344b1c-8bd6-4e14-b55d-546649ad8c9e', '2017-10-30 11:07:01', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '12626d85-f25b-445a-bd48-9ae70fb35f76', '2017-10-30 11:07:03', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '1', null);
INSERT INTO `m_step_log` VALUES ('0', '3e1aa72e-8a70-457a-a6a2-26fa5ac1af2d', '2017-10-30 11:07:03', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '80db3e36-91d7-4742-ae21-5b142d659a26', '2017-10-30 11:12:30', 'cbs4orders', 'orders-表输入', '0', '0', '428', '0', '428', '0', '0', '0', '2017/10/30 08:56:02 - cfgbuilder - Warning: The configuration parameter [org] is not supported by the default configuration builder for scheme: sftp\r\n2017/10/30 09:06:17 - RepositoriesMeta - Reading repositories XML file: C:\\Users\\Administrator\\.kettle\\repositories.xml\r\n2017/10/30 09:06:23 - Spoon - Connected to metastore : 依赖库, added to delegating metastore\r\n2017/10/30 10:58:58 - org.pentaho.di.trans.steps.tableoutput.TableOutputMeta@7e5b449c - ERROR (version 6.1.0.1-196, build 1 from 2016-04-07 12.08.49 by buildguy) : 因为一个错误无法从以前的步骤里获取字段\r\n2017/10/30 10:59:37 - org.pentaho.di.trans.steps.tableoutput.TableOutputMeta@7e5b449c - ERROR (version 6.1.0.1-196, build 1 from 2016-04-07 12.08.49 by buildguy) : 因为一个错误无法从以前的步骤里获取字段\r\n2017/10/30 11:04:50 - Spoon - Spoon\r\n2017/10/30 11:05:55 - Spoon - Spoon\r\n2017/10/30 11:06:26 - Spoon - Spoon\r\n2017/10/30 11:06:59 - Spoon - 正在开始任务...\r\n2017/10/30 11:07:03 - Spoon - 任务已经结束.\r\n2017/10/30 11:07:05 - Spoon - Spoon\r\n2017/10/30 11:12:28 - Spoon - 转换已经打开.\r\n2017/10/30 11:12:28 - Spoon - 正在打开转换 [cbs4orders]...\r\n2017/10/30 11:12:29 - Spoon - 开始执行转换.\r\n2017/10/30 11:12:30 - orders-表输入.0 - Finished reading query, closing connection.\r\n2017/10/30 11:12:30 - orders-表输入.0 - 完成处理 (I=428, O=0, R=0, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', '767f8660-1d78-4a47-90d8-594a5740ff46', '2017-10-30 11:12:30', 'cbs4orders', 'orders-表输出', '0', '428', '428', '0', '0', '428', '0', '0', '2017/10/30 08:56:02 - cfgbuilder - Warning: The configuration parameter [org] is not supported by the default configuration builder for scheme: sftp\r\n2017/10/30 09:06:17 - RepositoriesMeta - Reading repositories XML file: C:\\Users\\Administrator\\.kettle\\repositories.xml\r\n2017/10/30 09:06:23 - Spoon - Connected to metastore : 依赖库, added to delegating metastore\r\n2017/10/30 10:58:58 - org.pentaho.di.trans.steps.tableoutput.TableOutputMeta@7e5b449c - ERROR (version 6.1.0.1-196, build 1 from 2016-04-07 12.08.49 by buildguy) : 因为一个错误无法从以前的步骤里获取字段\r\n2017/10/30 10:59:37 - org.pentaho.di.trans.steps.tableoutput.TableOutputMeta@7e5b449c - ERROR (version 6.1.0.1-196, build 1 from 2016-04-07 12.08.49 by buildguy) : 因为一个错误无法从以前的步骤里获取字段\r\n2017/10/30 11:04:50 - Spoon - Spoon\r\n2017/10/30 11:05:55 - Spoon - Spoon\r\n2017/10/30 11:06:26 - Spoon - Spoon\r\n2017/10/30 11:06:59 - Spoon - 正在开始任务...\r\n2017/10/30 11:07:03 - Spoon - 任务已经结束.\r\n2017/10/30 11:07:05 - Spoon - Spoon\r\n2017/10/30 11:12:28 - Spoon - 转换已经打开.\r\n2017/10/30 11:12:28 - Spoon - 正在打开转换 [cbs4orders]...\r\n2017/10/30 11:12:29 - Spoon - 开始执行转换.\r\n2017/10/30 11:12:29 - orders-表输出.0 - Connected to database [rps] (commit=1000)\r\n2017/10/30 11:12:30 - orders-表输出.0 - 完成处理 (I=0, O=428, R=428, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', 'eeff1594-05db-45bd-be72-8f2e9d23d8a3', '2017-10-30 11:12:59', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '1', null);
INSERT INTO `m_step_log` VALUES ('0', '96def5b7-a706-45b5-8c1f-64eb6920ca6f', '2017-10-30 11:12:59', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'dd62bf8a-9d4d-4c21-9463-d2be6c84c081', '2017-10-30 11:13:41', 'get_etl_date', '获取昨天0点', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'de18ac28-485b-48ec-b0f1-8faaa5416121', '2017-10-30 11:13:41', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '9e4c53e5-ee14-48b7-ade8-798c1fa9d746', '2017-10-30 11:13:43', 'cbs4orders', 'orders-表输入', '0', '0', '428', '0', '428', '0', '0', '0', '2017/10/30 11:13:39 - Spoon - 正在开始任务...\r\n2017/10/30 11:13:43 - orders-表输入.0 - Finished reading query, closing connection.\r\n2017/10/30 11:13:43 - orders-表输入.0 - 完成处理 (I=428, O=0, R=0, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', 'bb6099a0-d17a-4ea9-9753-b0c71fcbf3c4', '2017-10-30 11:13:43', 'cbs4orders', 'orders-表输出', '0', '428', '428', '0', '0', '428', '0', '0', '2017/10/30 11:13:39 - Spoon - 正在开始任务...\r\n2017/10/30 11:13:42 - orders-表输出.0 - Connected to database [rps] (commit=1000)\r\n2017/10/30 11:13:43 - orders-表输出.0 - 完成处理 (I=0, O=428, R=428, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', 'dc2e9cca-8b83-45bd-abcd-cc19771f53c2', '2017-10-30 11:13:44', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '138c451d-dff5-4fa4-ac03-203861bf880e', '2017-10-30 11:13:44', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '1', null);
INSERT INTO `m_step_log` VALUES ('0', '776b93c6-d0fd-4015-8c73-2eaa1d86f928', '2017-10-30 11:13:44', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '1331d8ca-fb75-4e2d-90a2-0e39ecae5de8', '2017-10-30 11:16:46', 'get_etl_date', '获取昨天0点', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '569fdd57-47f0-4c31-bc46-a7c84e4d152d', '2017-10-30 11:16:46', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '75d784c0-5c6b-4601-87d7-9346e9f69b7a', '2017-10-30 11:16:49', 'cbs4orders', 'orders-表输入', '0', '0', '428', '0', '428', '0', '0', '0', '2017/10/30 11:16:45 - Spoon - 正在开始任务...\r\n2017/10/30 11:16:49 - orders-表输入.0 - Finished reading query, closing connection.\r\n2017/10/30 11:16:49 - orders-表输入.0 - 完成处理 (I=428, O=0, R=0, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', '09c73686-2551-44e6-9f10-cdcd6341af77', '2017-10-30 11:16:49', 'cbs4orders', 'orders-表输出', '0', '428', '428', '0', '0', '428', '0', '0', '2017/10/30 11:16:45 - Spoon - 正在开始任务...\r\n2017/10/30 11:16:48 - orders-表输出.0 - Connected to database [rps] (commit=1000)\r\n2017/10/30 11:16:49 - orders-表输出.0 - 完成处理 (I=0, O=428, R=428, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', '4d6a7109-c297-4358-a36d-46014fef7993', '2017-10-30 11:16:50', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'dc48909e-d990-407d-b987-af57d1de2dd4', '2017-10-30 11:16:50', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '1', null);
INSERT INTO `m_step_log` VALUES ('0', 'af6dce05-a84c-403b-bf91-241fd1665168', '2017-10-30 11:16:50', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '29e9ae68-0338-4103-befd-cb3c3579aa4f', '2017-10-30 11:18:01', 'get_etl_date', '获取昨天0点', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '1140cfe9-105b-4a15-a97a-11170720a523', '2017-10-30 11:18:01', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '5ac6ae9c-8155-4fbf-a3ba-cdafca262419', '2017-10-30 11:18:03', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'a62930f7-43de-4791-a0a4-2ce894fa6a70', '2017-10-30 11:18:03', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '1', null);
INSERT INTO `m_step_log` VALUES ('0', 'fa5a8328-f1ab-4376-9498-2d94151ad982', '2017-10-30 11:18:03', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '6e2d6e68-55e5-46f3-852c-0daaf8192a21', '2017-10-30 11:19:17', 'get_etl_date', '获取昨天0点', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '789b13dc-082f-43d0-8441-1cf7943fe658', '2017-10-30 11:19:17', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'a3192ac2-53d2-47dc-87cc-a707ad9ef027', '2017-10-30 11:19:19', 'cbs4orders', 'orders-表输入', '0', '0', '428', '0', '428', '0', '0', '0', '2017/10/30 11:19:15 - Spoon - 正在开始任务...\r\n2017/10/30 11:19:19 - orders-表输入.0 - Finished reading query, closing connection.\r\n2017/10/30 11:19:19 - orders-表输入.0 - 完成处理 (I=428, O=0, R=0, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', '3460f0fd-5547-4473-9d67-9f1eb4016cd8', '2017-10-30 11:19:19', 'cbs4orders', 'orders-表输出', '0', '428', '428', '0', '0', '428', '0', '0', '2017/10/30 11:19:15 - Spoon - 正在开始任务...\r\n2017/10/30 11:19:19 - orders-表输出.0 - Connected to database [rps] (commit=1000)\r\n2017/10/30 11:19:19 - orders-表输出.0 - 完成处理 (I=0, O=428, R=428, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', '046fc9db-6a2a-42e4-b68c-88e47858c09e', '2017-10-30 11:19:20', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '631d5333-b1ed-4887-ba5c-caec041a11a5', '2017-10-30 11:19:20', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '1', null);
INSERT INTO `m_step_log` VALUES ('0', 'cdfe2bbb-6383-4d8f-b10d-7e57f33dad02', '2017-10-30 11:19:20', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'b627547a-d799-42f9-b21b-5c5000252327', '2017-10-30 11:21:38', 'get_etl_date', '获取昨天0点', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'ae911075-e01a-4d1b-8707-5e782b563b7e', '2017-10-30 11:21:38', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '59224025-3b53-49dc-ac7a-1f4d9829b492', '2017-10-30 11:23:35', 'get_etl_date', '获取昨天0点', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'e796ef48-74d9-4c11-b26e-cf0b28bb1e44', '2017-10-30 11:23:35', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '25bdda17-57d6-449d-9098-282c29e1f338', '2017-10-30 11:30:52', 'get_etl_date', '获取昨天0点', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'eaa62a46-9e77-4604-aa6a-d92aa604e26f', '2017-10-30 11:30:52', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '6d9128d7-0b65-4735-add8-6f2b3f371c03', '2017-10-30 11:30:54', 'cbs4orders', 'orders-表输入', '0', '0', '428', '0', '428', '0', '0', '0', '2017/10/30 11:30:50 - Spoon - 正在开始任务...\r\n2017/10/30 11:30:54 - orders-表输入.0 - Finished reading query, closing connection.\r\n2017/10/30 11:30:54 - orders-表输入.0 - 完成处理 (I=428, O=0, R=0, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', '5d511a85-32b5-42c5-9b50-090605daf534', '2017-10-30 11:30:54', 'cbs4orders', 'orders-表输出', '0', '428', '428', '0', '0', '428', '0', '0', '2017/10/30 11:30:50 - Spoon - 正在开始任务...\r\n2017/10/30 11:30:54 - orders-表输出.0 - Connected to database [rps] (commit=1000)\r\n2017/10/30 11:30:54 - orders-表输出.0 - 完成处理 (I=0, O=428, R=428, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', 'fa0f5779-00b3-4bfd-9fa8-de6279a1c3ce', '2017-10-30 11:32:37', 'get_etl_date', '获取昨天0点', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '164c36f1-d2ae-4922-8cc5-c72dcb54e631', '2017-10-30 11:32:37', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '9350daa1-9f71-4e2e-b2bd-1c202d8d0b18', '2017-10-30 11:32:38', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '2f2f1e11-7f8b-46f1-951b-60afd0d3585e', '2017-10-30 11:32:38', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '225ed718-e216-496f-aa17-5ebbd45e0272', '2017-10-30 11:32:38', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '88c92084-6461-4fcf-9c04-3256177f758d', '2017-10-30 11:33:11', 'get_etl_date', '获取昨天0点', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'd5b82887-be80-493a-88af-016afcbeb824', '2017-10-30 11:33:11', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '1d765e14-4bbd-48d4-8006-711dbc2018b2', '2017-10-30 11:33:13', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'e0ce2cc5-e3a2-4149-9b70-f61f3c6904da', '2017-10-30 11:33:13', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'cbc41f6c-91ca-4940-8838-5a133dd8df45', '2017-10-30 11:33:13', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '08be6c6d-2079-49f7-af6c-03f7d1ec4c4e', '2017-10-30 11:33:44', 'cbs4orders', 'orders-表输入', '0', '0', '428', '0', '428', '0', '0', '0', '2017/10/30 11:33:44 - Spoon - 转换已经打开.\r\n2017/10/30 11:33:44 - Spoon - 正在打开转换 [cbs4orders]...\r\n2017/10/30 11:33:44 - Spoon - 开始执行转换.\r\n2017/10/30 11:33:44 - orders-表输入.0 - Finished reading query, closing connection.\r\n2017/10/30 11:33:44 - orders-表输入.0 - 完成处理 (I=428, O=0, R=0, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', '80a2a7f1-d5f8-4872-b6ed-0de61b63eec4', '2017-10-30 11:33:44', 'cbs4orders', 'orders-表输出', '0', '428', '428', '0', '0', '428', '0', '0', '2017/10/30 11:33:44 - Spoon - 转换已经打开.\r\n2017/10/30 11:33:44 - Spoon - 正在打开转换 [cbs4orders]...\r\n2017/10/30 11:33:44 - Spoon - 开始执行转换.\r\n2017/10/30 11:33:44 - orders-表输出.0 - Connected to database [rps] (commit=1000)\r\n2017/10/30 11:33:44 - orders-表输出.0 - 完成处理 (I=0, O=428, R=428, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', '49559a1c-98a2-4fff-94c1-8dd6587d3788', '2017-10-30 11:33:54', 'get_etl_date', '获取昨天0点', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '129324f2-bd53-4985-8516-f4760d715f26', '2017-10-30 11:33:54', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '0805f7b5-b603-42b6-9e90-97a42a3063d7', '2017-10-30 11:34:01', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'b07b493d-d841-4773-b903-4da8dbb1aa68', '2017-10-30 11:34:01', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '3e511a8b-b987-4155-8dd4-0c10225361cd', '2017-10-30 11:34:01', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '22725260-a6ae-4fd2-81a6-c571ab71b28e', '2017-10-30 11:35:54', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'c8c02e9b-6219-49bb-a859-7a107f007bbe', '2017-10-30 11:35:54', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '01047c4c-e10c-487f-877a-76b1464430f5', '2017-10-30 11:35:54', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '018c68f6-0c53-429b-9c0c-9c75121c52dd', '2017-10-30 11:37:21', 'get_etl_date', '获取昨天0点', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '689f8f1c-eade-4922-bc43-e3ddd9793c54', '2017-10-30 11:37:21', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '9997e4ca-6dcf-45df-96f6-abc369f8519c', '2017-10-30 11:37:23', 'cbs4orders', 'orders-表输入', '0', '0', '428', '0', '428', '0', '0', '0', '2017/10/30 11:37:19 - Spoon - 正在开始任务...\r\n2017/10/30 11:37:23 - orders-表输入.0 - Finished reading query, closing connection.\r\n2017/10/30 11:37:23 - orders-表输入.0 - 完成处理 (I=428, O=0, R=0, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', 'a067c5bb-1530-4bb2-8696-a153e564c4fc', '2017-10-30 11:37:23', 'cbs4orders', 'orders-表输出', '0', '428', '428', '0', '0', '428', '0', '0', '2017/10/30 11:37:19 - Spoon - 正在开始任务...\r\n2017/10/30 11:37:22 - orders-表输出.0 - Connected to database [rps] (commit=1000)\r\n2017/10/30 11:37:23 - orders-表输出.0 - 完成处理 (I=0, O=428, R=428, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', 'b0e49e7b-d109-4f8b-8563-d2f7f0b4f280', '2017-10-30 11:37:24', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '9cb4d2aa-ed31-460e-9547-cb11fdbb4f79', '2017-10-30 11:37:24', 'cms4video', 'video表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'e959507b-6a1f-4d8a-987d-ea9abf81a6dc', '2017-10-30 11:37:24', 'cms4video', 'video表输出', '0', '1', '0', '0', '0', '0', '0', '1', null);
INSERT INTO `m_step_log` VALUES ('0', 'c77ff07c-8c3b-4e71-aaf4-7c06d20b73ca', '2017-10-30 11:48:19', 'get_etl_date', '表输入', '0', '0', '1', '0', '1', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '548fcbc6-b72c-4237-89cf-976ac13b8901', '2017-10-30 11:48:19', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '84f31a71-bb16-41c0-bebf-297b808ee554', '2017-10-30 11:49:11', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'f8e2f03c-2485-47e0-adc0-d42e1c7f22db', '2017-10-30 11:49:11', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'b95467d2-c7bd-4ad5-b235-48c477b63d95', '2017-10-30 11:49:11', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'e4e54f63-1bc7-4dfa-aaee-fd94c220d493', '2017-10-30 11:50:40', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'd42c33f7-4eae-46de-839e-9608b4b6cb16', '2017-10-30 11:50:40', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '1', null);
INSERT INTO `m_step_log` VALUES ('0', '80a75d40-2580-4198-aad4-5a1b4a44e3d6', '2017-10-30 11:50:40', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '35acd754-22dd-45bf-b105-58fac147d3a4', '2017-10-30 11:51:17', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '18b00c93-02d3-4f5b-a829-4bba10294f72', '2017-10-30 11:51:17', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '1', null);
INSERT INTO `m_step_log` VALUES ('0', 'f7e1a500-9678-4e13-9c03-551c00a0738c', '2017-10-30 11:51:17', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '41b2ab25-94d8-4c91-a58d-1df56d64a7d6', '2017-10-30 11:51:52', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'c5455f0e-d824-4e4e-a2f4-22ae820f8f35', '2017-10-30 11:51:52', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '1', null);
INSERT INTO `m_step_log` VALUES ('0', 'a98501ed-6654-4451-ba69-7772670d1fb7', '2017-10-30 11:51:52', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '4b960972-5252-4d0b-abcf-0d9dd653720a', '2017-10-30 11:52:57', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '0a38a5a2-b5e1-406e-937c-7f87eca07215', '2017-10-30 11:52:57', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '1', null);
INSERT INTO `m_step_log` VALUES ('0', '4dbf094a-3b67-42ee-a62e-6596492021b0', '2017-10-30 11:52:57', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'c3c63d20-b265-455d-9272-75a0150e9513', '2017-10-30 11:54:48', 'get_etl_date', '表输入', '0', '0', '1', '0', '1', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'eedfe5c0-70a1-4dc4-b4a2-b265230dc9bf', '2017-10-30 11:54:48', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'c6084e51-4816-43a4-8d63-781d25b47aaf', '2017-10-30 11:54:50', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '987244ce-3c90-4603-92b8-7047aeab2b89', '2017-10-30 11:54:50', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '1', null);
INSERT INTO `m_step_log` VALUES ('0', '2191ece0-1869-4a47-98df-cbeafbea5af1', '2017-10-30 11:54:50', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '4f71cece-5923-45f6-873f-4378834dc680', '2017-10-30 11:55:52', 'cbs4orders', 'orders-表输入', '0', '0', '428', '0', '428', '0', '0', '0', '2017/10/30 11:53:40 - cfgbuilder - Warning: The configuration parameter [org] is not supported by the default configuration builder for scheme: sftp\r\n2017/10/30 11:54:23 - RepositoriesMeta - Reading repositories XML file: C:\\Users\\Administrator\\.kettle\\repositories.xml\r\n2017/10/30 11:54:29 - Spoon - Connected to metastore : 依赖库, added to delegating metastore\r\n2017/10/30 11:54:45 - Spoon - 正在开始任务...\r\n2017/10/30 11:54:50 - Spoon - 任务已经结束.\r\n2017/10/30 11:55:51 - Spoon - 转换已经打开.\r\n2017/10/30 11:55:51 - Spoon - 正在打开转换 [cbs4orders]...\r\n2017/10/30 11:55:51 - Spoon - 开始执行转换.\r\n2017/10/30 11:55:51 - orders-表输入.0 - Finished reading query, closing connection.\r\n2017/10/30 11:55:51 - orders-表输入.0 - 完成处理 (I=428, O=0, R=0, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', '60acf2e0-d83d-4e2b-bda6-2697ef8c130e', '2017-10-30 11:55:52', 'cbs4orders', 'orders-表输出', '0', '428', '428', '0', '0', '428', '0', '0', '2017/10/30 11:53:40 - cfgbuilder - Warning: The configuration parameter [org] is not supported by the default configuration builder for scheme: sftp\r\n2017/10/30 11:54:23 - RepositoriesMeta - Reading repositories XML file: C:\\Users\\Administrator\\.kettle\\repositories.xml\r\n2017/10/30 11:54:29 - Spoon - Connected to metastore : 依赖库, added to delegating metastore\r\n2017/10/30 11:54:45 - Spoon - 正在开始任务...\r\n2017/10/30 11:54:50 - Spoon - 任务已经结束.\r\n2017/10/30 11:55:51 - Spoon - 转换已经打开.\r\n2017/10/30 11:55:51 - Spoon - 正在打开转换 [cbs4orders]...\r\n2017/10/30 11:55:51 - Spoon - 开始执行转换.\r\n2017/10/30 11:55:51 - orders-表输出.0 - Connected to database [rps] (commit=1000)\r\n2017/10/30 11:55:52 - orders-表输出.0 - 完成处理 (I=0, O=428, R=428, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', '4fdae762-ca2c-4975-9cd0-1382ab76deb8', '2017-10-30 11:56:01', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '5a6f90b1-9097-4b90-a69c-19569a949945', '2017-10-30 11:56:01', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '1', null);
INSERT INTO `m_step_log` VALUES ('0', '4147b597-f069-4a21-ad6c-b34e163980c3', '2017-10-30 11:56:01', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'e48a23bb-bb08-4715-b01c-27428944f5d6', '2017-10-30 11:57:27', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'b368cf78-1b0e-4559-b2cb-0f9169fa7a4f', '2017-10-30 11:57:27', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '3fee3ff5-e8a9-4d60-883b-91ced8f21541', '2017-10-30 11:57:27', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '55ee919b-4392-4b6a-9065-39429450dc8b', '2017-10-30 11:58:04', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '1af74ae4-455d-4dbf-8a67-5c6177c74d50', '2017-10-30 11:58:04', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '1', null);
INSERT INTO `m_step_log` VALUES ('0', 'f35ab1f3-bea2-4c03-85fe-ef2b5ee522db', '2017-10-30 11:58:04', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '54874730-a962-415a-95e0-f6266d6611ba', '2017-10-30 11:59:22', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '32cd327f-1003-4290-a555-15bdf763e52a', '2017-10-30 11:59:22', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '1', null);
INSERT INTO `m_step_log` VALUES ('0', '31f256ec-a964-4288-889c-9dc5f6d8ee1d', '2017-10-30 11:59:22', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'ef6814e3-7471-4b24-b380-61f6923698ff', '2017-10-30 11:59:48', 'get_etl_date', '表输入', '0', '0', '1', '0', '1', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '263a42f2-f3b0-4216-b935-96d11b291913', '2017-10-30 11:59:48', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '68cea6dc-a491-413f-8d5b-748fd006a565', '2017-10-30 11:59:50', 'cbs4orders', 'orders-表输入', '0', '0', '428', '0', '428', '0', '0', '0', '2017/10/30 11:59:47 - Spoon - 正在开始任务...\r\n2017/10/30 11:59:50 - orders-表输入.0 - Finished reading query, closing connection.\r\n2017/10/30 11:59:50 - orders-表输入.0 - 完成处理 (I=428, O=0, R=0, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', '78ab8855-48a4-43de-9f53-23427332be0f', '2017-10-30 11:59:50', 'cbs4orders', 'orders-表输出', '0', '428', '428', '0', '0', '428', '0', '0', '2017/10/30 11:59:47 - Spoon - 正在开始任务...\r\n2017/10/30 11:59:50 - orders-表输出.0 - Connected to database [rps] (commit=1000)\r\n2017/10/30 11:59:50 - orders-表输出.0 - 完成处理 (I=0, O=428, R=428, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', 'db6d73b8-05fa-4b0b-95c5-50f4b4987e84', '2017-10-30 12:11:12', 'cbs4orders', 'orders-表输入', '0', '0', '428', '0', '428', '0', '0', '0', '2017/10/30 12:11:11 - Spoon - 转换已经打开.\r\n2017/10/30 12:11:11 - Spoon - 正在打开转换 [cbs4orders]...\r\n2017/10/30 12:11:11 - Spoon - 开始执行转换.\r\n2017/10/30 12:11:12 - orders-表输入.0 - Finished reading query, closing connection.\r\n2017/10/30 12:11:12 - orders-表输入.0 - 完成处理 (I=428, O=0, R=0, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', '9bd95f25-0093-4f7c-a1a6-00b603819208', '2017-10-30 12:11:12', 'cbs4orders', 'orders-表输出', '0', '428', '428', '0', '0', '428', '0', '0', '2017/10/30 12:11:11 - Spoon - 转换已经打开.\r\n2017/10/30 12:11:11 - Spoon - 正在打开转换 [cbs4orders]...\r\n2017/10/30 12:11:11 - Spoon - 开始执行转换.\r\n2017/10/30 12:11:11 - orders-表输出.0 - Connected to database [rps] (commit=1000)\r\n2017/10/30 12:11:12 - orders-表输出.0 - 完成处理 (I=0, O=428, R=428, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', '87b15061-6fc0-4625-9a51-126f4bb7e003', '2017-10-30 12:11:19', 'get_etl_date', '表输入', '0', '0', '1', '0', '1', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '93c26f14-63b1-4982-bd98-576116c503fa', '2017-10-30 12:11:19', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '05d04c66-889a-4e23-ada3-9671b2a16ee4', '2017-10-30 12:11:25', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '3e89bf81-17e4-4e60-8497-517580cae98f', '2017-10-30 12:11:25', 'cms4video', 'video表输入', '0', '0', '0', '0', '0', '0', '0', '1', null);
INSERT INTO `m_step_log` VALUES ('0', '190288a2-497a-4fe4-b371-1baa5c7c1cc8', '2017-10-30 12:11:25', 'cms4video', 'video表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '46894fdd-0af9-4138-a788-965d8412f44a', '2017-10-30 12:12:28', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '7a969b80-6d8c-4f84-a6fa-327208705b5e', '2017-10-30 12:12:28', 'cms4video', 'video表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'f698fa9e-a524-4638-ba13-9f1d5da9db97', '2017-10-30 12:12:28', 'cms4video', 'video表输出', '0', '3', '3', '0', '0', '3', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '08bba967-35f7-4589-8487-0ef48aa45637', '2017-10-30 16:01:04', 'merge', '目标表输入', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '16f01d8e-8e9b-40c6-b347-affad3372153', '2017-10-30 16:01:04', 'merge', '源表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '94a62ba5-c8cd-4658-820d-0f2458157707', '2017-10-30 16:01:04', 'merge', '合并记录', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '3b791812-fffc-42f2-b945-b7031565b998', '2017-10-30 16:01:04', 'merge', '值映射', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '9f217100-921b-477c-9598-8fc42d668da4', '2017-10-30 16:01:04', 'merge', '过滤记录', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '58b40a25-0919-4c59-b9b5-de20e8e4611c', '2017-10-30 16:01:04', 'merge', 'add', '0', '3', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '8c95e14b-7d3c-4b73-8e07-10877b482b11', '2017-10-30 16:01:04', 'merge', 'mod/del', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '1d969484-9563-4d66-a36b-0bcc1decfc3d', '2017-10-30 16:01:04', 'merge', 'delete-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '7cd01aff-6f6a-4c44-89d3-b1a59bb2f1af', '2017-10-30 16:01:04', 'merge', 'update-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'ccdaf1d0-59b9-4ef6-b1b5-cc264c7fa612', '2017-10-30 16:01:04', 'merge', 'add-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '503425d3-74d2-4347-921b-0035e18cd5bc', '2017-10-30 16:01:04', 'merge', '插入 / 更新', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '77f22758-269c-46ee-943f-0ccc16bf20b9', '2017-10-30 16:01:04', 'merge', '空操作 (什么也不做)', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '30426df0-bccd-4c20-99ca-6fc846d79342', '2017-10-30 16:01:04', 'merge', '删除', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'a5b337bb-c186-46fa-86b3-f98f5a881f90', '2017-10-30 16:01:04', 'merge', '表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '674c2769-efa3-4da8-ae40-10cdb12271c2', '2017-10-30 16:02:04', 'merge', '源表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'f495b09a-1936-4a81-bcd8-ec8ea5b102f7', '2017-10-30 16:02:04', 'merge', '合并记录', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'd448e19e-81c2-4b60-9417-0acdf6dc9cf9', '2017-10-30 16:02:04', 'merge', '目标表输入', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'fba35844-5054-42c2-b228-e4e432df837e', '2017-10-30 16:02:04', 'merge', '值映射', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'a6d6e9f6-48ba-427f-9921-655e45c90945', '2017-10-30 16:02:04', 'merge', '过滤记录', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '8a96c4d0-fae3-4ffa-87c4-597818d9dc0c', '2017-10-30 16:02:04', 'merge', '空操作 (什么也不做)', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'cc8dccda-9a0e-4b21-be6a-ee2ee6351ae8', '2017-10-30 16:02:04', 'merge', 'add', '0', '3', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'cf3d2395-a4ea-4b51-80de-34541d67d559', '2017-10-30 16:02:04', 'merge', 'add-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'fc073ab5-74b1-472b-bfbf-1c250ab549c5', '2017-10-30 16:02:04', 'merge', '表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '2d0d7a5f-4138-44e1-822b-d93e5ae8c150', '2017-10-30 16:02:04', 'merge', 'mod/del', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '6c813a51-a31e-4608-9d3c-3bc752c67ebe', '2017-10-30 16:02:04', 'merge', 'update-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'b207200d-2f2b-474f-aa37-64b645e2e4ab', '2017-10-30 16:02:04', 'merge', 'delete-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'f296705d-16d1-457d-85ae-c19cff491dbe', '2017-10-30 16:02:04', 'merge', '插入 / 更新', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'ee22f6c9-8fa9-4655-a9e2-770da81c49a6', '2017-10-30 16:02:04', 'merge', '删除', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '0ea1bc98-fc47-4985-a4e6-ec83f120767b', '2017-10-30 16:02:34', 'merge', '源表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'd72aee72-c383-4a5c-b642-50d2f2b448a2', '2017-10-30 16:02:34', 'merge', '合并记录', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '7435f3fa-09e1-4e15-9654-4816a021eaaf', '2017-10-30 16:02:34', 'merge', '目标表输入', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'ee7d63ef-403a-4d6d-b261-288914bef2e3', '2017-10-30 16:02:34', 'merge', '值映射', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'a9614225-6904-43a3-bf4d-d6095835332d', '2017-10-30 16:02:34', 'merge', '过滤记录', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '4cc0ec3c-d3e5-4d61-9d26-f8b0800cf900', '2017-10-30 16:02:34', 'merge', '空操作 (什么也不做)', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '99249ccd-a118-4d4a-b5c2-96fd8d4c890a', '2017-10-30 16:02:34', 'merge', 'add', '0', '3', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '83990a73-e9e3-4286-9782-797da993a97b', '2017-10-30 16:02:34', 'merge', 'add-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '71c74db8-d5b5-4b1b-bbd8-cd5e61357a17', '2017-10-30 16:02:34', 'merge', '表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '40e27578-3736-4546-a65a-675990859a4e', '2017-10-30 16:02:34', 'merge', 'mod/del', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'b29d4780-f4b8-4d17-9525-01b76e0e93e5', '2017-10-30 16:02:34', 'merge', 'update-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '11c91572-c3fb-49e7-b1af-9d75406e80f9', '2017-10-30 16:02:34', 'merge', 'delete-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '225216c1-db32-487a-952c-5072fdcda0b0', '2017-10-30 16:02:34', 'merge', '插入 / 更新', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '499d1aee-08e3-4baf-9437-c4ead3e71b07', '2017-10-30 16:02:34', 'merge', '删除', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '08dfe4bc-1f88-456c-9019-1db708f2ba5d', '2017-10-30 16:04:30', 'merge', '目标表输入', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'b83066d2-00dd-4abc-a62e-af13cdbb507b', '2017-10-30 16:04:30', 'merge', '源表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '6a50066c-6bef-41c9-be8c-dd8434fc9f49', '2017-10-30 16:04:30', 'merge', '合并记录', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'f2af73fd-eb68-4151-b273-9c50c38df8b5', '2017-10-30 16:04:30', 'merge', '值映射', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '76c8b07e-a180-440a-b891-58ed0ef36021', '2017-10-30 16:04:30', 'merge', '过滤记录', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'bc49d45e-87ca-4044-98e4-c6f5d232442d', '2017-10-30 16:04:30', 'merge', 'add', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '22bf13b3-7889-4d95-b401-ae53b90952e7', '2017-10-30 16:04:30', 'merge', '空操作 (什么也不做)', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'ebc5a266-470a-4669-8a88-14d5d3598ffe', '2017-10-30 16:04:30', 'merge', 'mod/del', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'f289387f-b0ea-45c7-af01-a10dd3a13df4', '2017-10-30 16:04:30', 'merge', 'delete-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'fbe34946-59ab-473e-aafa-ad5b1fa4a5ea', '2017-10-30 16:04:30', 'merge', 'add-字段选择', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'a0f80265-a565-4dfe-be28-60df0f0b9430', '2017-10-30 16:04:30', 'merge', '删除', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '63701365-308b-4043-a4f5-8e72f2eb3d8d', '2017-10-30 16:04:30', 'merge', 'update-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '0dff8bc9-0a0a-4c05-a987-e1bbf18d211b', '2017-10-30 16:04:30', 'merge', '插入 / 更新', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'd2e2257d-9d25-4b94-a427-938d1bc637b8', '2017-10-30 16:04:45', 'merge', '目标表输入', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '06aea28b-5843-42e5-bfde-fca919c199fb', '2017-10-30 16:04:45', 'merge', '源表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '7e3bf125-0fba-4069-9a18-5752f20a6d85', '2017-10-30 16:04:45', 'merge', '合并记录', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'c0d6c04d-90b8-4bc1-b10c-4effaebc3910', '2017-10-30 16:04:45', 'merge', '值映射', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '70ffc6ca-a30b-4d55-a739-23bb699ea788', '2017-10-30 16:04:45', 'merge', '过滤记录', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'd10e522c-733a-49cd-9c90-9ece32e2561d', '2017-10-30 16:04:45', 'merge', 'add', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '92cc845a-5284-431b-b46d-9ae519d318fe', '2017-10-30 16:04:45', 'merge', 'mod/del', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '66b824f0-7378-4975-91e3-e8038c537d83', '2017-10-30 16:04:45', 'merge', 'delete-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'c289efa0-aebf-46e7-9769-e694cf4e82dc', '2017-10-30 16:04:45', 'merge', 'update-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'de736fe5-6096-4714-8b44-16d062ba5c8d', '2017-10-30 16:04:45', 'merge', 'add-字段选择', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '5ac60abd-3e6a-4255-8a9a-7f32f76a6611', '2017-10-30 16:04:45', 'merge', '插入 / 更新', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '342a5671-4395-4467-930d-af7160a7b1d5', '2017-10-30 16:04:45', 'merge', '空操作 (什么也不做)', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '9af07e2b-de3e-44bf-8b07-f8b599e1311a', '2017-10-30 16:04:45', 'merge', '删除', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '6008bebf-3c63-4890-aaee-a9df5515e6c5', '2017-10-30 16:04:45', 'merge', '表输出', '0', '3', '0', '0', '0', '0', '0', '1', null);
INSERT INTO `m_step_log` VALUES ('0', 'adc40a7e-31d8-45b4-97e4-5ca5ca7ad5f1', '2017-10-30 16:05:47', 'merge', '目标表输入', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'b2b8f70c-1479-4f4c-b8a8-97e6a7fc1510', '2017-10-30 16:05:47', 'merge', '源表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '9ccac785-00fb-444a-8969-e9afacaee52a', '2017-10-30 16:05:47', 'merge', '合并记录', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '3261b6a5-f4d3-455a-ba86-0cfc4d66c96f', '2017-10-30 16:05:47', 'merge', '值映射', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '491cbc2a-7ead-4776-aa12-6537b27f304f', '2017-10-30 16:05:47', 'merge', '过滤记录', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '8ced8860-27f7-48f8-a615-b335da0ceee1', '2017-10-30 16:05:47', 'merge', 'add', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'e8740d19-ff0a-4b4f-8640-b5a50573befe', '2017-10-30 16:05:47', 'merge', 'mod/del', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '4e0268df-5a7c-4b54-8a8a-55b91acf3283', '2017-10-30 16:05:47', 'merge', 'delete-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '795af9d3-d971-4c09-970a-b29196f5ef95', '2017-10-30 16:05:47', 'merge', 'update-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'cd0f202a-4f30-41c7-9566-eba00eea2d6d', '2017-10-30 16:05:47', 'merge', 'add-字段选择', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'e99a410f-ff92-448c-a416-aa1d1eae54e1', '2017-10-30 16:05:47', 'merge', '插入 / 更新', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'fc588924-7bcb-4fc4-a06f-1d6284450f6b', '2017-10-30 16:05:47', 'merge', '空操作 (什么也不做)', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '508df04b-8757-4a9c-9477-b95eacac7e26', '2017-10-30 16:05:47', 'merge', '删除', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '2cc8fab2-604e-471d-8e52-640e9a272320', '2017-10-30 16:05:47', 'merge', '表输出', '0', '3', '3', '0', '0', '3', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'ac00133c-c26b-4fc7-99d6-8261ff5b8ab3', '2017-10-30 16:08:43', 'get_etl_date', '表输入', '0', '0', '1', '0', '1', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '2c5a1633-ea1f-4d3a-98c7-4546770dcaab', '2017-10-30 16:08:43', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '7d5b2bbe-779f-43cb-bb95-03ce30ffe2cd', '2017-10-30 16:08:45', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '3fcca5df-d702-460e-8e06-454ef8d2d3d2', '2017-10-30 16:08:45', 'cms4video', 'video表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '9ca7135e-5f33-44ee-875e-45395f21b607', '2017-10-30 16:08:45', 'cms4video', 'video表输出', '0', '3', '3', '0', '0', '3', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '5aa5ce9c-a5de-4dd3-9a52-095dec204a0d', '2017-10-30 16:09:23', 'get_etl_date', '表输入', '0', '0', '1', '0', '1', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '28ec7f71-f18f-43ab-8f44-e7786afc9196', '2017-10-30 16:09:23', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '301b22b6-6fab-4f2d-9292-c6de3cd333ab', '2017-10-30 16:09:25', 'merge', '源表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '92e697fc-7f79-4f9f-9760-eae600536427', '2017-10-30 16:09:25', 'merge', '合并记录', '0', '6', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'e980f68e-626a-46cd-b6b2-854d2aeeac2a', '2017-10-30 16:09:25', 'merge', '目标表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '3a87f085-08aa-4c15-aa3b-d91aa803e63e', '2017-10-30 16:09:25', 'merge', '值映射', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '04ab40a3-792a-433c-8b75-63c003b62d1f', '2017-10-30 16:09:25', 'merge', '过滤记录', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'b3093b50-0785-4dc0-bec6-53f2dd50ac61', '2017-10-30 16:09:25', 'merge', '空操作 (什么也不做)', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '1b76af16-c0ba-4405-b705-1996b66b37e8', '2017-10-30 16:09:25', 'merge', 'add', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '4a7ce3b6-fc14-4a9e-a177-8c94a24d5593', '2017-10-30 16:09:25', 'merge', 'add-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '54d12b6f-77b1-47a5-a7b9-b3bdd229f352', '2017-10-30 16:09:25', 'merge', '表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '409c9401-2d62-4750-91f1-385901f59077', '2017-10-30 16:09:25', 'merge', 'mod/del', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'ecbd6eed-e1a0-4405-9c7f-99e671683b4a', '2017-10-30 16:09:25', 'merge', 'update-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'b8cfe2b3-7e34-44d6-a0a7-5799fd901a6f', '2017-10-30 16:09:25', 'merge', 'delete-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '3b4700fa-b8cc-4461-b0ff-d30b382fc942', '2017-10-30 16:09:25', 'merge', '插入 / 更新', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '71f66e7b-d2f6-468c-b628-7d6e2726537b', '2017-10-30 16:09:25', 'merge', '删除', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '21dfa55d-35a9-4c9d-9c5d-64b5cf787bba', '2017-10-30 16:09:34', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '3d5609e5-061a-4068-92b2-5f2d4a9e6829', '2017-10-30 16:09:34', 'cms4video', 'video表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '6abb4d96-9f5e-4ba4-b112-436ef6dd9798', '2017-10-30 16:09:34', 'cms4video', 'video表输出', '0', '3', '3', '0', '0', '3', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'e21e22fa-671d-4002-861e-268c98a01cef', '2017-10-30 16:09:42', 'cbs4orders', 'orders-表输入', '0', '0', '428', '0', '428', '0', '0', '0', '2017/10/30 16:09:41 - Spoon - 转换已经打开.\r\n2017/10/30 16:09:41 - Spoon - 正在打开转换 [cbs4orders]...\r\n2017/10/30 16:09:41 - Spoon - 开始执行转换.\r\n2017/10/30 16:09:42 - orders-表输入.0 - Finished reading query, closing connection.\r\n2017/10/30 16:09:42 - orders-表输入.0 - 完成处理 (I=428, O=0, R=0, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', '339bccd5-6a01-48de-8cb5-9ab56284b75b', '2017-10-30 16:09:42', 'cbs4orders', 'orders-表输出', '0', '428', '428', '0', '0', '428', '0', '0', '2017/10/30 16:09:41 - Spoon - 转换已经打开.\r\n2017/10/30 16:09:41 - Spoon - 正在打开转换 [cbs4orders]...\r\n2017/10/30 16:09:41 - Spoon - 开始执行转换.\r\n2017/10/30 16:09:41 - orders-表输出.0 - Connected to database [rps] (commit=1000)\r\n2017/10/30 16:09:42 - orders-表输出.0 - 完成处理 (I=0, O=428, R=428, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', 'b0f9a3d5-dfa8-4089-9bd1-a7253cef9faa', '2017-10-30 16:09:55', 'get_etl_date', '表输入', '0', '0', '1', '0', '1', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'c262006a-96d6-44d6-808a-093e33b57d06', '2017-10-30 16:09:55', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '5c0a8e4a-4699-4e07-a9c6-9d03dda4fa44', '2017-10-30 16:09:57', 'merge', '源表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '4e96bd84-a568-4a88-88cc-e255a7a6344a', '2017-10-30 16:09:57', 'merge', '合并记录', '0', '6', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'cbba7534-dac4-4fcc-acf5-764a1bec29c2', '2017-10-30 16:09:57', 'merge', '目标表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '07aedcd6-ed13-40e7-9383-9a51583a2f76', '2017-10-30 16:09:57', 'merge', '值映射', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'd1ab7dfe-23b4-4ec1-86e7-caeadf2cfe48', '2017-10-30 16:09:57', 'merge', '过滤记录', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '857f6ed3-c8df-4f91-9e5d-8de119cdfd75', '2017-10-30 16:09:57', 'merge', '空操作 (什么也不做)', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '7a21f972-9098-4f78-bbfc-b7f21a5a451e', '2017-10-30 16:09:57', 'merge', 'add', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '79247a6d-5522-4c45-ab1b-73a2e7fc7718', '2017-10-30 16:09:57', 'merge', 'add-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '982d3bd4-8a3f-4be4-a73b-7c863f3c09d4', '2017-10-30 16:09:57', 'merge', '表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'df675c72-8b3a-4591-a4c9-03fbe5fa4271', '2017-10-30 16:09:57', 'merge', 'mod/del', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'f6dec26f-d72e-47f3-8d86-170a75ce8f3f', '2017-10-30 16:09:57', 'merge', 'update-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '748e3f6e-30cb-4f33-91f9-593e0b682de1', '2017-10-30 16:09:57', 'merge', 'delete-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '570f7226-65fb-4d30-b454-9f00716fd9aa', '2017-10-30 16:09:57', 'merge', '插入 / 更新', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '5e1a175d-6012-4c1e-94a5-c2ca32aea0c5', '2017-10-30 16:09:57', 'merge', '删除', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '508494cd-c178-4d0a-9e83-a8cc848eeebd', '2017-10-30 16:31:50', 'get_etl_date', '表输入', '0', '0', '1', '0', '1', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '28d13140-8154-4d6a-9f74-9a250beb735b', '2017-10-30 16:31:50', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'b5482233-1891-4b3f-9952-b2cb5d896563', '2017-10-30 16:31:53', 'merge', '源表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '3d5c84e5-dfb4-4cd3-9a55-08da5ba0810f', '2017-10-30 16:31:53', 'merge', '合并记录', '0', '6', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '940b6a9b-ff19-405d-833b-2f2dc8572950', '2017-10-30 16:31:53', 'merge', '目标表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '517a6fbf-c38f-4dfc-a7c9-e85cedbf2824', '2017-10-30 16:31:53', 'merge', '值映射', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '4d1a108f-22ae-4142-afb4-4de2783bdc3e', '2017-10-30 16:31:53', 'merge', '过滤记录', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '35e68297-2afc-4bda-a981-c05c6891171f', '2017-10-30 16:31:53', 'merge', '空操作 (什么也不做)', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '0bb00f90-f591-47e4-ac7f-f2b6da6fab82', '2017-10-30 16:31:53', 'merge', 'add', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '663dac8a-0bf7-4e8c-bc4d-b6dd66e47c8b', '2017-10-30 16:31:53', 'merge', 'add-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'c62cf12f-836e-4dfb-b6d3-d533c033112d', '2017-10-30 16:31:53', 'merge', '表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'dbf52867-8bf8-4f4d-8d0d-1e158b7818cd', '2017-10-30 16:31:53', 'merge', 'mod/del', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '7b398a21-9245-478a-b511-1b108afe86e2', '2017-10-30 16:31:53', 'merge', 'update-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '1d1175d8-06a8-4625-a0b9-279595378a8f', '2017-10-30 16:31:53', 'merge', 'delete-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '23055c84-7de7-43ed-be35-1e7433dac9b6', '2017-10-30 16:31:53', 'merge', '插入 / 更新', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '7d088fba-c2f5-495d-a991-62ab7e70a118', '2017-10-30 16:31:53', 'merge', '删除', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'a511968b-dba9-4ae9-9658-194df1084836', '2017-10-30 16:34:31', 'get_etl_date', '表输入', '0', '0', '1', '0', '1', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '2b345e2e-1456-4e68-89eb-a37ebb46562a', '2017-10-30 16:34:31', 'get_etl_date', '设置变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '94243471-99ca-4b58-99c1-c07f4c33ddd9', '2017-10-30 16:34:32', 'cms4video', '获取变量', '0', '1', '1', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '5c5fe390-ab50-4bac-99c0-c5e594621698', '2017-10-30 16:34:32', 'cms4video', 'video表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'ae652b22-65e8-4ac5-bb8c-6e02391fc277', '2017-10-30 16:34:32', 'cms4video', 'video表输出', '0', '3', '3', '0', '0', '3', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '57269a2e-5166-468a-926c-23484c2e3c51', '2017-10-30 16:34:34', 'cbs4orders', 'orders-表输入', '0', '0', '428', '0', '428', '0', '0', '0', '2017/10/30 16:34:29 - Spoon - 正在开始任务...\r\n2017/10/30 16:34:34 - orders-表输入.0 - 分散被激活\r\n2017/10/30 16:34:34 - orders-表输入.0 - Starting allocation of buffers & new threads...\r\n2017/10/30 16:34:34 - orders-表输入.0 - 步骤信息: 输入数量=0 输出数量=1\r\n2017/10/30 16:34:34 - orders-表输入.0 - output rel. is  1:1\r\n2017/10/30 16:34:34 - orders-表输入.0 - 发现输出 rowset [orders-表输入.0 - orders-表输出.0]\r\n2017/10/30 16:34:34 - orders-表输入.0 - 完成分发\r\n2017/10/30 16:34:34 - orders-表输入.0 - Released server socket on port 0\r\n2017/10/30 16:34:34 - cbs - New database connection defined\r\n2017/10/30 16:34:34 - orders-表输入.0 - Connected to database...\r\n2017/10/30 16:34:34 - orders-表输入.0 - 开始运行...\r\n2017/10/30 16:34:34 - orders-表输入.0 - SQL query : select orderid, \r\n2017/10/30 16:34:34 - orders-表输入.0 - loginname, \r\n2017/10/30 16:34:34 - orders-表输入.0 - ordertime, \r\n2017/10/30 16:34:34 - orders-表输入.0 - orderrename, \r\n2017/10/30 16:34:34 - orders-表输入.0 - orderreaddress, \r\n2017/10/30 16:34:34 - orders-表输入.0 - orderpaymaonye, \r\n2017/10/30 16:34:34 - orders-表输入.0 - ordertotalprice, \r\n2017/10/30 16:34:34 - orders-表输入.0 - ordertype, \r\n2017/10/30 16:34:34 - orders-表输入.0 - qmoney, \r\n2017/10/30 16:34:34 - orders-表输入.0 - orderrepostcode, \r\n2017/10/30 16:34:34 - orders-表输入.0 - payinfoid\r\n2017/10/30 16:34:34 - orders-表输入.0 - from orders\r\n2017/10/30 16:34:34 - orders-表输入.0 - Finished reading query, closing connection.\r\n2017/10/30 16:34:34 - cbs - Connection to database closed!\r\n2017/10/30 16:34:34 - orders-表输入.0 - 完成处理 (I=428, O=0, R=0, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', 'cefd822a-2bcc-4dbe-a88c-c9573a861960', '2017-10-30 16:34:34', 'cbs4orders', 'orders-表输出', '0', '428', '428', '0', '0', '428', '0', '0', '2017/10/30 16:34:29 - Spoon - 正在开始任务...\r\n2017/10/30 16:34:34 - orders-表输出.0 - 分散被激活\r\n2017/10/30 16:34:34 - orders-表输出.0 - Starting allocation of buffers & new threads...\r\n2017/10/30 16:34:34 - orders-表输出.0 - 步骤信息: 输入数量=1 输出数量=0\r\n2017/10/30 16:34:34 - orders-表输出.0 - 获取来自前一步骤 [orders-表输出] #0 --> orders-表输入\r\n2017/10/30 16:34:34 - orders-表输出.0 - input rel is 1:1\r\n2017/10/30 16:34:34 - orders-表输出.0 - 发现输入记录集合 [orders-表输入.0 - orders-表输出.0]\r\n2017/10/30 16:34:34 - orders-表输出.0 - 完成分发\r\n2017/10/30 16:34:34 - orders-表输出.0 - Released server socket on port 0\r\n2017/10/30 16:34:34 - rps - New database connection defined\r\n2017/10/30 16:34:34 - orders-表输出.0 - Connected to database [rps] (commit=1000)\r\n2017/10/30 16:34:34 - rps - Auto commit off\r\n2017/10/30 16:34:34 - orders-表输出.0 - 开始运行...\r\n2017/10/30 16:34:34 - orders-表输出.0 - Prepared statement : INSERT INTO o_cbs_orders (orderid, loginname, ordertime, orderrename, orderreaddress, orderpaymaonye, ordertotalprice, ordertype, qmoney, orderrepostcode, payinfoid) VALUES ( ?,  ?,  ?,  ?,  ?,  ?,  ?,  ?,  ?,  ?,  ?)\r\n2017/10/30 16:34:34 - rps - Connection to database closed!\r\n2017/10/30 16:34:34 - orders-表输出.0 - 完成处理 (I=0, O=428, R=428, W=428, U=0, E=0)\r\n\r\nSTART\r\n');
INSERT INTO `m_step_log` VALUES ('0', 'eb41c649-56a6-4dca-bf52-b9113e3a6f9d', '2017-10-30 16:34:36', 'merge', '源表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'b4f07572-3698-4461-8384-3a2a487c67d0', '2017-10-30 16:34:36', 'merge', '合并记录', '0', '6', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '039ee918-bf1a-451a-b6f3-8268f44f8e74', '2017-10-30 16:34:36', 'merge', '目标表输入', '0', '0', '3', '0', '3', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'ba27a770-afca-4dc0-9e4b-9ea33c3f3380', '2017-10-30 16:34:36', 'merge', '值映射', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '8dd12475-de2b-4197-8be3-ad267d8b7690', '2017-10-30 16:34:36', 'merge', '过滤记录', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '6c04e39f-8959-47aa-83e2-796960e6c4fb', '2017-10-30 16:34:36', 'merge', '空操作 (什么也不做)', '0', '3', '3', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '64cce61d-9b38-4d52-afdd-1b6c989ab0c3', '2017-10-30 16:34:36', 'merge', 'add', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '2b436d72-e541-4d4a-8d93-7cd698d82202', '2017-10-30 16:34:36', 'merge', 'add-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'b13bbc1a-6fec-48dc-b1e7-c1b0c3badca4', '2017-10-30 16:34:36', 'merge', '表输出', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '873d9004-3ac6-463e-b26b-26801b97d473', '2017-10-30 16:34:36', 'merge', 'mod/del', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'a14e41f3-64e8-4225-bd1f-87760696d949', '2017-10-30 16:34:36', 'merge', 'update-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '84989507-d002-4332-8b5e-577a410d912e', '2017-10-30 16:34:36', 'merge', 'delete-字段选择', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', 'b8a0a1aa-5156-41b1-a30a-40eef0236e2c', '2017-10-30 16:34:36', 'merge', '插入 / 更新', '0', '0', '0', '0', '0', '0', '0', '0', null);
INSERT INTO `m_step_log` VALUES ('0', '00541b10-6c7f-4d9b-b280-d1d787291056', '2017-10-30 16:34:36', 'merge', '删除', '0', '0', '0', '0', '0', '0', '0', '0', null);

-- ----------------------------
-- Table structure for m_work_date
-- ----------------------------
DROP TABLE IF EXISTS `m_work_date`;
CREATE TABLE `m_work_date` (
  `SYS_CODE` varchar(10) NOT NULL COMMENT '系统标识',
  `SYS_DATE` varchar(10) DEFAULT NULL COMMENT '系统时间，格式YYYYMMDD',
  `LOAD_DATE` varchar(10) DEFAULT NULL COMMENT '加载时间，格式YYYYMMDD',
  `IS_INC` int(11) DEFAULT NULL COMMENT '是否增量,0-全量  1-增量',
  PRIMARY KEY (`SYS_CODE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of m_work_date
-- ----------------------------
INSERT INTO `m_work_date` VALUES ('rps', '20160426', '20160426', '1');

-- ----------------------------
-- Table structure for r_cluster
-- ----------------------------
DROP TABLE IF EXISTS `r_cluster`;
CREATE TABLE `r_cluster` (
  `ID_CLUSTER` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `BASE_PORT` varchar(255) DEFAULT NULL,
  `SOCKETS_BUFFER_SIZE` varchar(255) DEFAULT NULL,
  `SOCKETS_FLUSH_INTERVAL` varchar(255) DEFAULT NULL,
  `SOCKETS_COMPRESSED` tinyint(1) DEFAULT NULL,
  `DYNAMIC_CLUSTER` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_CLUSTER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_cluster
-- ----------------------------

-- ----------------------------
-- Table structure for r_cluster_slave
-- ----------------------------
DROP TABLE IF EXISTS `r_cluster_slave`;
CREATE TABLE `r_cluster_slave` (
  `ID_CLUSTER_SLAVE` bigint(20) NOT NULL,
  `ID_CLUSTER` int(11) DEFAULT NULL,
  `ID_SLAVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_CLUSTER_SLAVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_cluster_slave
-- ----------------------------

-- ----------------------------
-- Table structure for r_condition
-- ----------------------------
DROP TABLE IF EXISTS `r_condition`;
CREATE TABLE `r_condition` (
  `ID_CONDITION` bigint(20) NOT NULL,
  `ID_CONDITION_PARENT` int(11) DEFAULT NULL,
  `NEGATED` tinyint(1) DEFAULT NULL,
  `OPERATOR` varchar(255) DEFAULT NULL,
  `LEFT_NAME` varchar(255) DEFAULT NULL,
  `CONDITION_FUNCTION` varchar(255) DEFAULT NULL,
  `RIGHT_NAME` varchar(255) DEFAULT NULL,
  `ID_VALUE_RIGHT` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_CONDITION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_condition
-- ----------------------------

-- ----------------------------
-- Table structure for r_database
-- ----------------------------
DROP TABLE IF EXISTS `r_database`;
CREATE TABLE `r_database` (
  `ID_DATABASE` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  `ID_DATABASE_TYPE` int(11) DEFAULT NULL,
  `ID_DATABASE_CONTYPE` int(11) DEFAULT NULL,
  `HOST_NAME` varchar(255) DEFAULT NULL,
  `DATABASE_NAME` mediumtext,
  `PORT` int(11) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `SERVERNAME` varchar(255) DEFAULT NULL,
  `DATA_TBS` varchar(255) DEFAULT NULL,
  `INDEX_TBS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_DATABASE`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_database
-- ----------------------------
INSERT INTO `r_database` VALUES ('4', 'dependency', '39', '1', 'localhost', 'kettle', '3306', 'root', 'Encrypted 2be98afc86aa7f2e4cb79ce10cc9da0ce', null, null, null);

-- ----------------------------
-- Table structure for r_database_attribute
-- ----------------------------
DROP TABLE IF EXISTS `r_database_attribute`;
CREATE TABLE `r_database_attribute` (
  `ID_DATABASE_ATTRIBUTE` bigint(20) NOT NULL AUTO_INCREMENT,
  `ID_DATABASE` int(11) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `VALUE_STR` mediumtext,
  PRIMARY KEY (`ID_DATABASE_ATTRIBUTE`),
  UNIQUE KEY `IDX_RDAT` (`ID_DATABASE`,`CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_database_attribute
-- ----------------------------
INSERT INTO `r_database_attribute` VALUES ('39', '4', 'EXTRA_OPTION_MYSQL.useCursorFetch', 'true');
INSERT INTO `r_database_attribute` VALUES ('40', '4', 'USE_POOLING', 'N');
INSERT INTO `r_database_attribute` VALUES ('41', '4', 'PRESERVE_RESERVED_WORD_CASE', 'Y');
INSERT INTO `r_database_attribute` VALUES ('42', '4', 'IS_CLUSTERED', 'N');
INSERT INTO `r_database_attribute` VALUES ('43', '4', 'SUPPORTS_TIMESTAMP_DATA_TYPE', 'Y');
INSERT INTO `r_database_attribute` VALUES ('44', '4', 'SUPPORTS_BOOLEAN_DATA_TYPE', 'Y');
INSERT INTO `r_database_attribute` VALUES ('45', '4', 'STREAM_RESULTS', 'Y');
INSERT INTO `r_database_attribute` VALUES ('46', '4', 'EXTRA_OPTION_MYSQL.defaultFetchSize', '500');
INSERT INTO `r_database_attribute` VALUES ('47', '4', 'FORCE_IDENTIFIERS_TO_UPPERCASE', 'N');
INSERT INTO `r_database_attribute` VALUES ('48', '4', 'PORT_NUMBER', '3306');
INSERT INTO `r_database_attribute` VALUES ('49', '4', 'PREFERRED_SCHEMA_NAME', null);
INSERT INTO `r_database_attribute` VALUES ('50', '4', 'FORCE_IDENTIFIERS_TO_LOWERCASE', 'N');
INSERT INTO `r_database_attribute` VALUES ('51', '4', 'SQL_CONNECT', null);
INSERT INTO `r_database_attribute` VALUES ('52', '4', 'QUOTE_ALL_FIELDS', 'N');

-- ----------------------------
-- Table structure for r_database_contype
-- ----------------------------
DROP TABLE IF EXISTS `r_database_contype`;
CREATE TABLE `r_database_contype` (
  `ID_DATABASE_CONTYPE` bigint(20) NOT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_DATABASE_CONTYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_database_contype
-- ----------------------------
INSERT INTO `r_database_contype` VALUES ('1', 'Native', 'Native (JDBC)');
INSERT INTO `r_database_contype` VALUES ('2', 'ODBC', 'ODBC');
INSERT INTO `r_database_contype` VALUES ('3', 'OCI', 'OCI');
INSERT INTO `r_database_contype` VALUES ('4', 'Plugin', 'Plugin specific access method');
INSERT INTO `r_database_contype` VALUES ('5', 'JNDI', 'JNDI');
INSERT INTO `r_database_contype` VALUES ('6', ',', 'Custom');

-- ----------------------------
-- Table structure for r_database_type
-- ----------------------------
DROP TABLE IF EXISTS `r_database_type`;
CREATE TABLE `r_database_type` (
  `ID_DATABASE_TYPE` bigint(20) NOT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_DATABASE_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_database_type
-- ----------------------------
INSERT INTO `r_database_type` VALUES ('1', 'INGRES', 'Ingres');
INSERT INTO `r_database_type` VALUES ('2', 'INTERBASE', 'Borland Interbase');
INSERT INTO `r_database_type` VALUES ('3', 'INFOBRIGHT', 'Infobright');
INSERT INTO `r_database_type` VALUES ('4', 'ORACLE', 'Oracle');
INSERT INTO `r_database_type` VALUES ('5', 'EXTENDB', 'ExtenDB');
INSERT INTO `r_database_type` VALUES ('6', 'MSACCESS', 'MS Access');
INSERT INTO `r_database_type` VALUES ('7', 'SYBASE', 'Sybase');
INSERT INTO `r_database_type` VALUES ('8', 'PALO', 'Palo MOLAP Server');
INSERT INTO `r_database_type` VALUES ('9', 'KettleThin', 'Pentaho Data Services');
INSERT INTO `r_database_type` VALUES ('10', 'INFORMIX', 'Informix');
INSERT INTO `r_database_type` VALUES ('11', 'LucidDB', 'LucidDB');
INSERT INTO `r_database_type` VALUES ('12', 'TERADATA', 'Teradata');
INSERT INTO `r_database_type` VALUES ('13', 'UNIVERSE', 'UniVerse database');
INSERT INTO `r_database_type` VALUES ('14', 'MONETDB', 'MonetDB');
INSERT INTO `r_database_type` VALUES ('15', 'CACHE', 'Intersystems Cache');
INSERT INTO `r_database_type` VALUES ('16', 'MSSQL', 'MS SQL Server');
INSERT INTO `r_database_type` VALUES ('17', 'GREENPLUM', 'Greenplum');
INSERT INTO `r_database_type` VALUES ('18', 'GENERIC', 'Generic database');
INSERT INTO `r_database_type` VALUES ('19', 'SQLITE', 'SQLite');
INSERT INTO `r_database_type` VALUES ('20', 'REMEDY-AR-SYSTEM', 'Remedy Action Request System');
INSERT INTO `r_database_type` VALUES ('21', 'MONDRIAN', 'Native Mondrian');
INSERT INTO `r_database_type` VALUES ('22', 'NETEZZA', 'Netezza');
INSERT INTO `r_database_type` VALUES ('23', 'VERTICA5', 'Vertica 5+');
INSERT INTO `r_database_type` VALUES ('24', 'IMPALA', 'Impala');
INSERT INTO `r_database_type` VALUES ('25', 'POSTGRESQL', 'PostgreSQL');
INSERT INTO `r_database_type` VALUES ('26', 'EXASOL4', 'Exasol 4');
INSERT INTO `r_database_type` VALUES ('27', 'HYPERSONIC', 'Hypersonic');
INSERT INTO `r_database_type` VALUES ('28', 'AS/400', 'AS/400');
INSERT INTO `r_database_type` VALUES ('29', 'ORACLERDB', 'Oracle RDB');
INSERT INTO `r_database_type` VALUES ('30', 'DBASE', 'dBase III, IV or 5');
INSERT INTO `r_database_type` VALUES ('31', 'KINGBASEES', 'KingbaseES');
INSERT INTO `r_database_type` VALUES ('32', 'HIVE', 'Hadoop Hive');
INSERT INTO `r_database_type` VALUES ('33', 'SAPR3', 'SAP ERP System');
INSERT INTO `r_database_type` VALUES ('34', 'SQLBASE', 'Gupta SQL Base');
INSERT INTO `r_database_type` VALUES ('35', 'DERBY', 'Apache Derby');
INSERT INTO `r_database_type` VALUES ('36', 'VERTICA', 'Vertica');
INSERT INTO `r_database_type` VALUES ('37', 'INFINIDB', 'Calpont InfiniDB');
INSERT INTO `r_database_type` VALUES ('38', 'HIVE2', 'Hadoop Hive 2');
INSERT INTO `r_database_type` VALUES ('39', 'MYSQL', 'MySQL');
INSERT INTO `r_database_type` VALUES ('40', 'MSSQLNATIVE', 'MS SQL Server (Native)');
INSERT INTO `r_database_type` VALUES ('41', 'H2', 'H2');
INSERT INTO `r_database_type` VALUES ('42', 'SAPDB', 'MaxDB (SAP DB)');
INSERT INTO `r_database_type` VALUES ('43', 'VECTORWISE', 'Ingres VectorWise');
INSERT INTO `r_database_type` VALUES ('44', 'DB2', 'IBM DB2');
INSERT INTO `r_database_type` VALUES ('45', 'NEOVIEW', 'Neoview');
INSERT INTO `r_database_type` VALUES ('46', 'IMPALASIMBA', 'Cloudera Impala');
INSERT INTO `r_database_type` VALUES ('47', 'SYBASEIQ', 'SybaseIQ');
INSERT INTO `r_database_type` VALUES ('48', 'REDSHIFT', 'Redshift');
INSERT INTO `r_database_type` VALUES ('49', 'FIREBIRD', 'Firebird SQL');
INSERT INTO `r_database_type` VALUES ('50', 'OpenERPDatabaseMeta', 'OpenERP Server');

-- ----------------------------
-- Table structure for r_dependency
-- ----------------------------
DROP TABLE IF EXISTS `r_dependency`;
CREATE TABLE `r_dependency` (
  `ID_DEPENDENCY` bigint(20) NOT NULL,
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_DATABASE` int(11) DEFAULT NULL,
  `TABLE_NAME` varchar(255) DEFAULT NULL,
  `FIELD_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_DEPENDENCY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_dependency
-- ----------------------------

-- ----------------------------
-- Table structure for r_directory
-- ----------------------------
DROP TABLE IF EXISTS `r_directory`;
CREATE TABLE `r_directory` (
  `ID_DIRECTORY` bigint(20) NOT NULL,
  `ID_DIRECTORY_PARENT` int(11) DEFAULT NULL,
  `DIRECTORY_NAME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_DIRECTORY`),
  UNIQUE KEY `IDX_RDIR` (`ID_DIRECTORY_PARENT`,`DIRECTORY_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_directory
-- ----------------------------

-- ----------------------------
-- Table structure for r_element
-- ----------------------------
DROP TABLE IF EXISTS `r_element`;
CREATE TABLE `r_element` (
  `ID_ELEMENT` bigint(20) NOT NULL,
  `ID_ELEMENT_TYPE` int(11) DEFAULT NULL,
  `NAME` mediumtext,
  PRIMARY KEY (`ID_ELEMENT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_element
-- ----------------------------

-- ----------------------------
-- Table structure for r_element_attribute
-- ----------------------------
DROP TABLE IF EXISTS `r_element_attribute`;
CREATE TABLE `r_element_attribute` (
  `ID_ELEMENT_ATTRIBUTE` bigint(20) NOT NULL,
  `ID_ELEMENT` int(11) DEFAULT NULL,
  `ID_ELEMENT_ATTRIBUTE_PARENT` int(11) DEFAULT NULL,
  `ATTR_KEY` varchar(255) DEFAULT NULL,
  `ATTR_VALUE` mediumtext,
  PRIMARY KEY (`ID_ELEMENT_ATTRIBUTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_element_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for r_element_type
-- ----------------------------
DROP TABLE IF EXISTS `r_element_type`;
CREATE TABLE `r_element_type` (
  `ID_ELEMENT_TYPE` bigint(20) NOT NULL,
  `ID_NAMESPACE` int(11) DEFAULT NULL,
  `NAME` mediumtext,
  `DESCRIPTION` mediumtext,
  PRIMARY KEY (`ID_ELEMENT_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_element_type
-- ----------------------------

-- ----------------------------
-- Table structure for r_job
-- ----------------------------
DROP TABLE IF EXISTS `r_job`;
CREATE TABLE `r_job` (
  `ID_JOB` bigint(20) NOT NULL,
  `ID_DIRECTORY` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` mediumtext,
  `EXTENDED_DESCRIPTION` mediumtext,
  `JOB_VERSION` varchar(255) DEFAULT NULL,
  `JOB_STATUS` int(11) DEFAULT NULL,
  `ID_DATABASE_LOG` int(11) DEFAULT NULL,
  `TABLE_NAME_LOG` varchar(255) DEFAULT NULL,
  `CREATED_USER` varchar(255) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `MODIFIED_USER` varchar(255) DEFAULT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL,
  `USE_BATCH_ID` tinyint(1) DEFAULT NULL,
  `PASS_BATCH_ID` tinyint(1) DEFAULT NULL,
  `USE_LOGFIELD` tinyint(1) DEFAULT NULL,
  `SHARED_FILE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_JOB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_job
-- ----------------------------
INSERT INTO `r_job` VALUES ('1', '0', 'job-demo', null, null, null, '1', '-1', null, '-', '2017-10-30 11:02:43', 'admin', '2018-02-01 16:27:45', '1', '0', '1', null);

-- ----------------------------
-- Table structure for r_jobentry
-- ----------------------------
DROP TABLE IF EXISTS `r_jobentry`;
CREATE TABLE `r_jobentry` (
  `ID_JOBENTRY` bigint(20) NOT NULL,
  `ID_JOB` int(11) DEFAULT NULL,
  `ID_JOBENTRY_TYPE` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` mediumtext,
  PRIMARY KEY (`ID_JOBENTRY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_jobentry
-- ----------------------------
INSERT INTO `r_jobentry` VALUES ('1', '1', '5', 'START', null);
INSERT INTO `r_jobentry` VALUES ('2', '1', '50', '??????', null);
INSERT INTO `r_jobentry` VALUES ('3', '1', '50', 'cbs4orders', null);
INSERT INTO `r_jobentry` VALUES ('4', '1', '50', 'cms4video', null);
INSERT INTO `r_jobentry` VALUES ('5', '1', '71', '??', null);
INSERT INTO `r_jobentry` VALUES ('6', '1', '50', 'merge', null);

-- ----------------------------
-- Table structure for r_jobentry_attribute
-- ----------------------------
DROP TABLE IF EXISTS `r_jobentry_attribute`;
CREATE TABLE `r_jobentry_attribute` (
  `ID_JOBENTRY_ATTRIBUTE` bigint(20) NOT NULL,
  `ID_JOB` int(11) DEFAULT NULL,
  `ID_JOBENTRY` int(11) DEFAULT NULL,
  `NR` int(11) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `VALUE_NUM` double DEFAULT NULL,
  `VALUE_STR` mediumtext,
  PRIMARY KEY (`ID_JOBENTRY_ATTRIBUTE`),
  UNIQUE KEY `IDX_RJEA` (`ID_JOBENTRY_ATTRIBUTE`,`CODE`,`NR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_jobentry_attribute
-- ----------------------------
INSERT INTO `r_jobentry_attribute` VALUES ('1', '1', '1', '0', 'start', '0', 'Y');
INSERT INTO `r_jobentry_attribute` VALUES ('2', '1', '1', '0', 'dummy', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('3', '1', '1', '0', 'repeat', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('4', '1', '1', '0', 'schedulerType', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('5', '1', '1', '0', 'intervalSeconds', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('6', '1', '1', '0', 'intervalMinutes', '60', null);
INSERT INTO `r_jobentry_attribute` VALUES ('7', '1', '1', '0', 'hour', '12', null);
INSERT INTO `r_jobentry_attribute` VALUES ('8', '1', '1', '0', 'minutes', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('9', '1', '1', '0', 'weekDay', '1', null);
INSERT INTO `r_jobentry_attribute` VALUES ('10', '1', '1', '0', 'dayOfMonth', '1', null);
INSERT INTO `r_jobentry_attribute` VALUES ('11', '1', '2', '0', 'specification_method', '0', 'rep_ref');
INSERT INTO `r_jobentry_attribute` VALUES ('12', '1', '2', '0', 'trans_object_id', '0', '2');
INSERT INTO `r_jobentry_attribute` VALUES ('13', '1', '2', '0', 'name', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('14', '1', '2', '0', 'dir_path', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('15', '1', '2', '0', 'file_name', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('16', '1', '2', '0', 'arg_from_previous', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('17', '1', '2', '0', 'params_from_previous', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('18', '1', '2', '0', 'exec_per_row', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('19', '1', '2', '0', 'clear_rows', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('20', '1', '2', '0', 'clear_files', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('21', '1', '2', '0', 'set_logfile', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('22', '1', '2', '0', 'add_date', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('23', '1', '2', '0', 'add_time', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('24', '1', '2', '0', 'logfile', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('25', '1', '2', '0', 'logext', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('26', '1', '2', '0', 'loglevel', '0', 'Basic');
INSERT INTO `r_jobentry_attribute` VALUES ('27', '1', '2', '0', 'cluster', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('28', '1', '2', '0', 'slave_server_name', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('29', '1', '2', '0', 'set_append_logfile', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('30', '1', '2', '0', 'wait_until_finished', '0', 'Y');
INSERT INTO `r_jobentry_attribute` VALUES ('31', '1', '2', '0', 'follow_abort_remote', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('32', '1', '2', '0', 'create_parent_folder', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('33', '1', '2', '0', 'logging_remote_work', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('34', '1', '2', '0', 'pass_all_parameters', '0', 'Y');
INSERT INTO `r_jobentry_attribute` VALUES ('35', '1', '3', '0', 'specification_method', '0', 'rep_name');
INSERT INTO `r_jobentry_attribute` VALUES ('36', '1', '3', '0', 'trans_object_id', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('37', '1', '3', '0', 'name', '0', 'cbs4orders');
INSERT INTO `r_jobentry_attribute` VALUES ('38', '1', '3', '0', 'dir_path', '0', '/cbs/????');
INSERT INTO `r_jobentry_attribute` VALUES ('39', '1', '3', '0', 'file_name', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('40', '1', '3', '0', 'arg_from_previous', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('41', '1', '3', '0', 'params_from_previous', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('42', '1', '3', '0', 'exec_per_row', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('43', '1', '3', '0', 'clear_rows', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('44', '1', '3', '0', 'clear_files', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('45', '1', '3', '0', 'set_logfile', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('46', '1', '3', '0', 'add_date', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('47', '1', '3', '0', 'add_time', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('48', '1', '3', '0', 'logfile', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('49', '1', '3', '0', 'logext', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('50', '1', '3', '0', 'loglevel', '0', 'Basic');
INSERT INTO `r_jobentry_attribute` VALUES ('51', '1', '3', '0', 'cluster', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('52', '1', '3', '0', 'slave_server_name', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('53', '1', '3', '0', 'set_append_logfile', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('54', '1', '3', '0', 'wait_until_finished', '0', 'Y');
INSERT INTO `r_jobentry_attribute` VALUES ('55', '1', '3', '0', 'follow_abort_remote', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('56', '1', '3', '0', 'create_parent_folder', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('57', '1', '3', '0', 'logging_remote_work', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('58', '1', '3', '0', 'pass_all_parameters', '0', 'Y');
INSERT INTO `r_jobentry_attribute` VALUES ('59', '1', '4', '0', 'specification_method', '0', 'rep_name');
INSERT INTO `r_jobentry_attribute` VALUES ('60', '1', '4', '0', 'trans_object_id', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('61', '1', '4', '0', 'name', '0', 'cms4video');
INSERT INTO `r_jobentry_attribute` VALUES ('62', '1', '4', '0', 'dir_path', '0', '/cms/??????');
INSERT INTO `r_jobentry_attribute` VALUES ('63', '1', '4', '0', 'file_name', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('64', '1', '4', '0', 'arg_from_previous', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('65', '1', '4', '0', 'params_from_previous', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('66', '1', '4', '0', 'exec_per_row', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('67', '1', '4', '0', 'clear_rows', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('68', '1', '4', '0', 'clear_files', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('69', '1', '4', '0', 'set_logfile', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('70', '1', '4', '0', 'add_date', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('71', '1', '4', '0', 'add_time', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('72', '1', '4', '0', 'logfile', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('73', '1', '4', '0', 'logext', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('74', '1', '4', '0', 'loglevel', '0', 'Basic');
INSERT INTO `r_jobentry_attribute` VALUES ('75', '1', '4', '0', 'cluster', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('76', '1', '4', '0', 'slave_server_name', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('77', '1', '4', '0', 'set_append_logfile', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('78', '1', '4', '0', 'wait_until_finished', '0', 'Y');
INSERT INTO `r_jobentry_attribute` VALUES ('79', '1', '4', '0', 'follow_abort_remote', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('80', '1', '4', '0', 'create_parent_folder', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('81', '1', '4', '0', 'logging_remote_work', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('82', '1', '4', '0', 'pass_all_parameters', '0', 'Y');
INSERT INTO `r_jobentry_attribute` VALUES ('83', '1', '6', '0', 'specification_method', '0', 'rep_name');
INSERT INTO `r_jobentry_attribute` VALUES ('84', '1', '6', '0', 'trans_object_id', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('85', '1', '6', '0', 'name', '0', 'merge');
INSERT INTO `r_jobentry_attribute` VALUES ('86', '1', '6', '0', 'dir_path', '0', '/cms/??????');
INSERT INTO `r_jobentry_attribute` VALUES ('87', '1', '6', '0', 'file_name', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('88', '1', '6', '0', 'arg_from_previous', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('89', '1', '6', '0', 'params_from_previous', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('90', '1', '6', '0', 'exec_per_row', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('91', '1', '6', '0', 'clear_rows', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('92', '1', '6', '0', 'clear_files', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('93', '1', '6', '0', 'set_logfile', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('94', '1', '6', '0', 'add_date', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('95', '1', '6', '0', 'add_time', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('96', '1', '6', '0', 'logfile', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('97', '1', '6', '0', 'logext', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('98', '1', '6', '0', 'loglevel', '0', 'Basic');
INSERT INTO `r_jobentry_attribute` VALUES ('99', '1', '6', '0', 'cluster', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('100', '1', '6', '0', 'slave_server_name', '0', null);
INSERT INTO `r_jobentry_attribute` VALUES ('101', '1', '6', '0', 'set_append_logfile', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('102', '1', '6', '0', 'wait_until_finished', '0', 'Y');
INSERT INTO `r_jobentry_attribute` VALUES ('103', '1', '6', '0', 'follow_abort_remote', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('104', '1', '6', '0', 'create_parent_folder', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('105', '1', '6', '0', 'logging_remote_work', '0', 'N');
INSERT INTO `r_jobentry_attribute` VALUES ('106', '1', '6', '0', 'pass_all_parameters', '0', 'Y');

-- ----------------------------
-- Table structure for r_jobentry_copy
-- ----------------------------
DROP TABLE IF EXISTS `r_jobentry_copy`;
CREATE TABLE `r_jobentry_copy` (
  `ID_JOBENTRY_COPY` bigint(20) NOT NULL,
  `ID_JOBENTRY` int(11) DEFAULT NULL,
  `ID_JOB` int(11) DEFAULT NULL,
  `ID_JOBENTRY_TYPE` int(11) DEFAULT NULL,
  `NR` int(11) DEFAULT NULL,
  `GUI_LOCATION_X` int(11) DEFAULT NULL,
  `GUI_LOCATION_Y` int(11) DEFAULT NULL,
  `GUI_DRAW` tinyint(1) DEFAULT NULL,
  `PARALLEL` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_JOBENTRY_COPY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_jobentry_copy
-- ----------------------------
INSERT INTO `r_jobentry_copy` VALUES ('1', '1', '1', '5', '0', '96', '144', '1', '0');
INSERT INTO `r_jobentry_copy` VALUES ('2', '2', '1', '50', '0', '240', '144', '1', '1');
INSERT INTO `r_jobentry_copy` VALUES ('3', '3', '1', '50', '0', '512', '64', '1', '0');
INSERT INTO `r_jobentry_copy` VALUES ('4', '4', '1', '50', '0', '512', '176', '1', '0');
INSERT INTO `r_jobentry_copy` VALUES ('5', '5', '1', '71', '0', '800', '160', '1', '0');
INSERT INTO `r_jobentry_copy` VALUES ('6', '6', '1', '50', '0', '512', '272', '1', '0');

-- ----------------------------
-- Table structure for r_jobentry_database
-- ----------------------------
DROP TABLE IF EXISTS `r_jobentry_database`;
CREATE TABLE `r_jobentry_database` (
  `ID_JOB` int(11) DEFAULT NULL,
  `ID_JOBENTRY` int(11) DEFAULT NULL,
  `ID_DATABASE` int(11) DEFAULT NULL,
  KEY `IDX_RJD1` (`ID_JOB`),
  KEY `IDX_RJD2` (`ID_DATABASE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_jobentry_database
-- ----------------------------

-- ----------------------------
-- Table structure for r_jobentry_type
-- ----------------------------
DROP TABLE IF EXISTS `r_jobentry_type`;
CREATE TABLE `r_jobentry_type` (
  `ID_JOBENTRY_TYPE` bigint(20) NOT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_JOBENTRY_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_jobentry_type
-- ----------------------------
INSERT INTO `r_jobentry_type` VALUES ('1', 'WEBSERVICE_AVAILABLE', '检查web服务是否可用');
INSERT INTO `r_jobentry_type` VALUES ('2', 'MYSQL_BULK_FILE', '从 Mysql 批量导出到文件');
INSERT INTO `r_jobentry_type` VALUES ('3', 'COPY_MOVE_RESULT_FILENAMES', '复制/移动结果文件');
INSERT INTO `r_jobentry_type` VALUES ('4', 'XSD_VALIDATOR', 'XSD Validator');
INSERT INTO `r_jobentry_type` VALUES ('5', 'SPECIAL', '特殊作业项');
INSERT INTO `r_jobentry_type` VALUES ('6', 'FILE_COMPARE', '比较文件');
INSERT INTO `r_jobentry_type` VALUES ('7', 'CREATE_FOLDER', '创建一个目录');
INSERT INTO `r_jobentry_type` VALUES ('8', 'MAIL_VALIDATOR', '邮件验证');
INSERT INTO `r_jobentry_type` VALUES ('9', 'PALO_CUBE_DELETE', 'Palo Cube Delete');
INSERT INTO `r_jobentry_type` VALUES ('10', 'MAIL', '发送邮件');
INSERT INTO `r_jobentry_type` VALUES ('11', 'DATASOURCE_PUBLISH', 'Publish Model');
INSERT INTO `r_jobentry_type` VALUES ('12', 'TRUNCATE_TABLES', '清空表');
INSERT INTO `r_jobentry_type` VALUES ('13', 'MSGBOX_INFO', '显示消息对话框');
INSERT INTO `r_jobentry_type` VALUES ('14', 'WAIT_FOR_SQL', '等待SQL');
INSERT INTO `r_jobentry_type` VALUES ('15', 'FTPS_GET', 'FTPS 下载');
INSERT INTO `r_jobentry_type` VALUES ('16', 'FTP_DELETE', 'FTP 删除');
INSERT INTO `r_jobentry_type` VALUES ('17', 'DataRefineryBuildModel', 'Build Model');
INSERT INTO `r_jobentry_type` VALUES ('18', 'COLUMNS_EXIST', '检查列是否存在');
INSERT INTO `r_jobentry_type` VALUES ('19', 'CHECK_FILES_LOCKED', '检查文件是否被锁');
INSERT INTO `r_jobentry_type` VALUES ('20', 'UNZIP', '解压缩文件');
INSERT INTO `r_jobentry_type` VALUES ('21', 'JOB', '作业');
INSERT INTO `r_jobentry_type` VALUES ('22', 'DELETE_FILE', '删除一个文件');
INSERT INTO `r_jobentry_type` VALUES ('23', 'SHELL', 'Shell');
INSERT INTO `r_jobentry_type` VALUES ('24', 'ABORT', '中止作业');
INSERT INTO `r_jobentry_type` VALUES ('25', 'HiveJobExecutorPlugin', 'Amazon Hive Job Executor');
INSERT INTO `r_jobentry_type` VALUES ('26', 'XML_WELL_FORMED', 'Check if XML file is well formed');
INSERT INTO `r_jobentry_type` VALUES ('27', 'SFTP', 'SFTP 下载');
INSERT INTO `r_jobentry_type` VALUES ('28', 'HTTP', 'HTTP');
INSERT INTO `r_jobentry_type` VALUES ('29', 'HadoopJobExecutorPlugin', 'Hadoop Job Executor ');
INSERT INTO `r_jobentry_type` VALUES ('30', 'FTP_PUT', 'FTP 上传');
INSERT INTO `r_jobentry_type` VALUES ('31', 'HadoopPigScriptExecutorPlugin', 'Pig Script Executor');
INSERT INTO `r_jobentry_type` VALUES ('32', 'SQL', 'SQL');
INSERT INTO `r_jobentry_type` VALUES ('33', 'WRITE_TO_FILE', '写入文件');
INSERT INTO `r_jobentry_type` VALUES ('34', 'PGP_VERIFY_FILES', '用PGP验证文件签名');
INSERT INTO `r_jobentry_type` VALUES ('35', 'DOS_UNIX_CONVERTER', 'DOS和UNIX之间的文本转换');
INSERT INTO `r_jobentry_type` VALUES ('36', 'PGP_DECRYPT_FILES', '用PGP解密文件');
INSERT INTO `r_jobentry_type` VALUES ('37', 'SqoopImport', 'Sqoop Import');
INSERT INTO `r_jobentry_type` VALUES ('38', 'TALEND_JOB_EXEC', 'Talend 作业执行');
INSERT INTO `r_jobentry_type` VALUES ('39', 'EVAL', '使用 JavaScript 脚本验证');
INSERT INTO `r_jobentry_type` VALUES ('40', 'DELAY', '等待');
INSERT INTO `r_jobentry_type` VALUES ('41', 'HL7MLLPAcknowledge', 'HL7 MLLP Acknowledge');
INSERT INTO `r_jobentry_type` VALUES ('42', 'PALO_CUBE_CREATE', 'Palo Cube Create');
INSERT INTO `r_jobentry_type` VALUES ('43', 'SparkSubmit', 'Spark Submit');
INSERT INTO `r_jobentry_type` VALUES ('44', 'FTP', 'FTP 下载');
INSERT INTO `r_jobentry_type` VALUES ('45', 'HadoopCopyFilesPlugin', 'Hadoop Copy Files');
INSERT INTO `r_jobentry_type` VALUES ('46', 'SqoopExport', 'Sqoop Export');
INSERT INTO `r_jobentry_type` VALUES ('47', 'FOLDERS_COMPARE', '比较目录');
INSERT INTO `r_jobentry_type` VALUES ('48', 'ZIP_FILE', 'Zip 压缩文件');
INSERT INTO `r_jobentry_type` VALUES ('49', 'GET_POP', 'POP 收信');
INSERT INTO `r_jobentry_type` VALUES ('50', 'TRANS', '转换');
INSERT INTO `r_jobentry_type` VALUES ('51', 'SEND_NAGIOS_PASSIVE_CHECK', '发送Nagios 被动检查');
INSERT INTO `r_jobentry_type` VALUES ('52', 'SET_VARIABLES', '设置变量');
INSERT INTO `r_jobentry_type` VALUES ('53', 'MS_ACCESS_BULK_LOAD', 'MS Access Bulk Load');
INSERT INTO `r_jobentry_type` VALUES ('54', 'DummyJob', 'Example Job');
INSERT INTO `r_jobentry_type` VALUES ('55', 'COPY_FILES', '复制文件');
INSERT INTO `r_jobentry_type` VALUES ('56', 'EVAL_FILES_METRICS', '计算文件大小或个数');
INSERT INTO `r_jobentry_type` VALUES ('57', 'PING', 'Ping 一台主机');
INSERT INTO `r_jobentry_type` VALUES ('58', 'ADD_RESULT_FILENAMES', '添加文件到结果文件中');
INSERT INTO `r_jobentry_type` VALUES ('59', 'DELETE_FOLDERS', '删除目录');
INSERT INTO `r_jobentry_type` VALUES ('60', 'CHECK_DB_CONNECTIONS', '检查数据库连接');
INSERT INTO `r_jobentry_type` VALUES ('61', 'FILE_EXISTS', '检查一个文件是否存在');
INSERT INTO `r_jobentry_type` VALUES ('62', 'EVAL_TABLE_CONTENT', '计算表中的记录数');
INSERT INTO `r_jobentry_type` VALUES ('63', 'FILES_EXIST', '检查多个文件是否存在');
INSERT INTO `r_jobentry_type` VALUES ('64', 'SFTPPUT', 'SFTP 上传');
INSERT INTO `r_jobentry_type` VALUES ('65', 'FTPS_PUT', 'FTPS 上传');
INSERT INTO `r_jobentry_type` VALUES ('66', 'HadoopTransJobExecutorPlugin', 'Pentaho MapReduce');
INSERT INTO `r_jobentry_type` VALUES ('67', 'DELETE_RESULT_FILENAMES', '从结果文件中删除文件');
INSERT INTO `r_jobentry_type` VALUES ('68', 'DELETE_FILES', '删除多个文件');
INSERT INTO `r_jobentry_type` VALUES ('69', 'PGP_ENCRYPT_FILES', '用PGP加密文件');
INSERT INTO `r_jobentry_type` VALUES ('70', 'WRITE_TO_LOG', '写日志');
INSERT INTO `r_jobentry_type` VALUES ('71', 'SUCCESS', '成功');
INSERT INTO `r_jobentry_type` VALUES ('72', 'WAIT_FOR_FILE', '等待文件');
INSERT INTO `r_jobentry_type` VALUES ('73', 'MSSQL_BULK_LOAD', 'SQLServer 批量加载');
INSERT INTO `r_jobentry_type` VALUES ('74', 'TELNET', '远程登录一台主机');
INSERT INTO `r_jobentry_type` VALUES ('75', 'MOVE_FILES', '移动文件');
INSERT INTO `r_jobentry_type` VALUES ('76', 'XSLT', 'XSL Transformation');
INSERT INTO `r_jobentry_type` VALUES ('77', 'EMRJobExecutorPlugin', 'Amazon EMR Job Executor');
INSERT INTO `r_jobentry_type` VALUES ('78', 'DTD_VALIDATOR', 'DTD Validator');
INSERT INTO `r_jobentry_type` VALUES ('79', 'OozieJobExecutor', 'Oozie Job Executor');
INSERT INTO `r_jobentry_type` VALUES ('80', 'HL7MLLPInput', 'HL7 MLLP Input');
INSERT INTO `r_jobentry_type` VALUES ('81', 'FOLDER_IS_EMPTY', '检查目录是否为空');
INSERT INTO `r_jobentry_type` VALUES ('82', 'SIMPLE_EVAL', '检验字段的值');
INSERT INTO `r_jobentry_type` VALUES ('83', 'EXPORT_REPOSITORY', '导出资源库到XML文件');
INSERT INTO `r_jobentry_type` VALUES ('84', 'TABLE_EXISTS', '检查表是否存在');
INSERT INTO `r_jobentry_type` VALUES ('85', 'SYSLOG', '用 Syslog 发送信息');
INSERT INTO `r_jobentry_type` VALUES ('86', 'MYSQL_BULK_LOAD', 'Mysql 批量加载');
INSERT INTO `r_jobentry_type` VALUES ('87', 'CREATE_FILE', '创建文件');
INSERT INTO `r_jobentry_type` VALUES ('88', 'SNMP_TRAP', '发送 SNMP 自陷');
INSERT INTO `r_jobentry_type` VALUES ('89', 'CONNECTED_TO_REPOSITORY', '检查是否连接到资源库');

-- ----------------------------
-- Table structure for r_job_attribute
-- ----------------------------
DROP TABLE IF EXISTS `r_job_attribute`;
CREATE TABLE `r_job_attribute` (
  `ID_JOB_ATTRIBUTE` bigint(20) NOT NULL,
  `ID_JOB` int(11) DEFAULT NULL,
  `NR` int(11) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `VALUE_NUM` bigint(20) DEFAULT NULL,
  `VALUE_STR` mediumtext,
  PRIMARY KEY (`ID_JOB_ATTRIBUTE`),
  UNIQUE KEY `IDX_JATT` (`ID_JOB`,`CODE`,`NR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_job_attribute
-- ----------------------------
INSERT INTO `r_job_attribute` VALUES ('1', '1', '0', 'LOG_SIZE_LIMIT', '0', null);
INSERT INTO `r_job_attribute` VALUES ('2', '1', '0', 'JOB_LOG_TABLE_CONNECTION_NAME', '0', null);
INSERT INTO `r_job_attribute` VALUES ('3', '1', '0', 'JOB_LOG_TABLE_SCHEMA_NAME', '0', null);
INSERT INTO `r_job_attribute` VALUES ('4', '1', '0', 'JOB_LOG_TABLE_TABLE_NAME', '0', null);
INSERT INTO `r_job_attribute` VALUES ('5', '1', '0', 'JOB_LOG_TABLE_TIMEOUT_IN_DAYS', '0', null);
INSERT INTO `r_job_attribute` VALUES ('6', '1', '0', 'JOB_LOG_TABLE_FIELD_ID0', '0', 'ID_JOB');
INSERT INTO `r_job_attribute` VALUES ('7', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME0', '0', 'ID_JOB');
INSERT INTO `r_job_attribute` VALUES ('8', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED0', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('9', '1', '0', 'JOB_LOG_TABLE_FIELD_ID1', '0', 'CHANNEL_ID');
INSERT INTO `r_job_attribute` VALUES ('10', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME1', '0', 'CHANNEL_ID');
INSERT INTO `r_job_attribute` VALUES ('11', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED1', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('12', '1', '0', 'JOB_LOG_TABLE_FIELD_ID2', '0', 'JOBNAME');
INSERT INTO `r_job_attribute` VALUES ('13', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME2', '0', 'JOBNAME');
INSERT INTO `r_job_attribute` VALUES ('14', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED2', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('15', '1', '0', 'JOB_LOG_TABLE_FIELD_ID3', '0', 'STATUS');
INSERT INTO `r_job_attribute` VALUES ('16', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME3', '0', 'STATUS');
INSERT INTO `r_job_attribute` VALUES ('17', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED3', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('18', '1', '0', 'JOB_LOG_TABLE_FIELD_ID4', '0', 'LINES_READ');
INSERT INTO `r_job_attribute` VALUES ('19', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME4', '0', 'LINES_READ');
INSERT INTO `r_job_attribute` VALUES ('20', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED4', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('21', '1', '0', 'JOB_LOG_TABLE_FIELD_ID5', '0', 'LINES_WRITTEN');
INSERT INTO `r_job_attribute` VALUES ('22', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME5', '0', 'LINES_WRITTEN');
INSERT INTO `r_job_attribute` VALUES ('23', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED5', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('24', '1', '0', 'JOB_LOG_TABLE_FIELD_ID6', '0', 'LINES_UPDATED');
INSERT INTO `r_job_attribute` VALUES ('25', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME6', '0', 'LINES_UPDATED');
INSERT INTO `r_job_attribute` VALUES ('26', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED6', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('27', '1', '0', 'JOB_LOG_TABLE_FIELD_ID7', '0', 'LINES_INPUT');
INSERT INTO `r_job_attribute` VALUES ('28', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME7', '0', 'LINES_INPUT');
INSERT INTO `r_job_attribute` VALUES ('29', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED7', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('30', '1', '0', 'JOB_LOG_TABLE_FIELD_ID8', '0', 'LINES_OUTPUT');
INSERT INTO `r_job_attribute` VALUES ('31', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME8', '0', 'LINES_OUTPUT');
INSERT INTO `r_job_attribute` VALUES ('32', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED8', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('33', '1', '0', 'JOB_LOG_TABLE_FIELD_ID9', '0', 'LINES_REJECTED');
INSERT INTO `r_job_attribute` VALUES ('34', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME9', '0', 'LINES_REJECTED');
INSERT INTO `r_job_attribute` VALUES ('35', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED9', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('36', '1', '0', 'JOB_LOG_TABLE_FIELD_ID10', '0', 'ERRORS');
INSERT INTO `r_job_attribute` VALUES ('37', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME10', '0', 'ERRORS');
INSERT INTO `r_job_attribute` VALUES ('38', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED10', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('39', '1', '0', 'JOB_LOG_TABLE_FIELD_ID11', '0', 'STARTDATE');
INSERT INTO `r_job_attribute` VALUES ('40', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME11', '0', 'STARTDATE');
INSERT INTO `r_job_attribute` VALUES ('41', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED11', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('42', '1', '0', 'JOB_LOG_TABLE_FIELD_ID12', '0', 'ENDDATE');
INSERT INTO `r_job_attribute` VALUES ('43', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME12', '0', 'ENDDATE');
INSERT INTO `r_job_attribute` VALUES ('44', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED12', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('45', '1', '0', 'JOB_LOG_TABLE_FIELD_ID13', '0', 'LOGDATE');
INSERT INTO `r_job_attribute` VALUES ('46', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME13', '0', 'LOGDATE');
INSERT INTO `r_job_attribute` VALUES ('47', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED13', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('48', '1', '0', 'JOB_LOG_TABLE_FIELD_ID14', '0', 'DEPDATE');
INSERT INTO `r_job_attribute` VALUES ('49', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME14', '0', 'DEPDATE');
INSERT INTO `r_job_attribute` VALUES ('50', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED14', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('51', '1', '0', 'JOB_LOG_TABLE_FIELD_ID15', '0', 'REPLAYDATE');
INSERT INTO `r_job_attribute` VALUES ('52', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME15', '0', 'REPLAYDATE');
INSERT INTO `r_job_attribute` VALUES ('53', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED15', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('54', '1', '0', 'JOB_LOG_TABLE_FIELD_ID16', '0', 'LOG_FIELD');
INSERT INTO `r_job_attribute` VALUES ('55', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME16', '0', 'LOG_FIELD');
INSERT INTO `r_job_attribute` VALUES ('56', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED16', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('57', '1', '0', 'JOB_LOG_TABLE_FIELD_ID17', '0', 'EXECUTING_SERVER');
INSERT INTO `r_job_attribute` VALUES ('58', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME17', '0', 'EXECUTING_SERVER');
INSERT INTO `r_job_attribute` VALUES ('59', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED17', '0', 'N');
INSERT INTO `r_job_attribute` VALUES ('60', '1', '0', 'JOB_LOG_TABLE_FIELD_ID18', '0', 'EXECUTING_USER');
INSERT INTO `r_job_attribute` VALUES ('61', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME18', '0', 'EXECUTING_USER');
INSERT INTO `r_job_attribute` VALUES ('62', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED18', '0', 'N');
INSERT INTO `r_job_attribute` VALUES ('63', '1', '0', 'JOB_LOG_TABLE_FIELD_ID19', '0', 'START_JOB_ENTRY');
INSERT INTO `r_job_attribute` VALUES ('64', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME19', '0', 'START_JOB_ENTRY');
INSERT INTO `r_job_attribute` VALUES ('65', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED19', '0', 'N');
INSERT INTO `r_job_attribute` VALUES ('66', '1', '0', 'JOB_LOG_TABLE_FIELD_ID20', '0', 'CLIENT');
INSERT INTO `r_job_attribute` VALUES ('67', '1', '0', 'JOB_LOG_TABLE_FIELD_NAME20', '0', 'CLIENT');
INSERT INTO `r_job_attribute` VALUES ('68', '1', '0', 'JOB_LOG_TABLE_FIELD_ENABLED20', '0', 'N');
INSERT INTO `r_job_attribute` VALUES ('69', '1', '0', 'JOBLOG_TABLE_INTERVAL', '0', null);
INSERT INTO `r_job_attribute` VALUES ('70', '1', '0', 'JOBLOG_TABLE_SIZE_LIMIT', '0', null);
INSERT INTO `r_job_attribute` VALUES ('71', '1', '0', 'JOB_ENTRY_LOG_TABLE_CONNECTION_NAME', '0', null);
INSERT INTO `r_job_attribute` VALUES ('72', '1', '0', 'JOB_ENTRY_LOG_TABLE_SCHEMA_NAME', '0', null);
INSERT INTO `r_job_attribute` VALUES ('73', '1', '0', 'JOB_ENTRY_LOG_TABLE_TABLE_NAME', '0', null);
INSERT INTO `r_job_attribute` VALUES ('74', '1', '0', 'JOB_ENTRY_LOG_TABLE_TIMEOUT_IN_DAYS', '0', null);
INSERT INTO `r_job_attribute` VALUES ('75', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ID0', '0', 'ID_BATCH');
INSERT INTO `r_job_attribute` VALUES ('76', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_NAME0', '0', 'ID_BATCH');
INSERT INTO `r_job_attribute` VALUES ('77', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED0', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('78', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ID1', '0', 'CHANNEL_ID');
INSERT INTO `r_job_attribute` VALUES ('79', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_NAME1', '0', 'CHANNEL_ID');
INSERT INTO `r_job_attribute` VALUES ('80', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED1', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('81', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ID2', '0', 'LOG_DATE');
INSERT INTO `r_job_attribute` VALUES ('82', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_NAME2', '0', 'LOG_DATE');
INSERT INTO `r_job_attribute` VALUES ('83', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED2', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('84', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ID3', '0', 'JOBNAME');
INSERT INTO `r_job_attribute` VALUES ('85', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_NAME3', '0', 'TRANSNAME');
INSERT INTO `r_job_attribute` VALUES ('86', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED3', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('87', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ID4', '0', 'JOBENTRYNAME');
INSERT INTO `r_job_attribute` VALUES ('88', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_NAME4', '0', 'STEPNAME');
INSERT INTO `r_job_attribute` VALUES ('89', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED4', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('90', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ID5', '0', 'LINES_READ');
INSERT INTO `r_job_attribute` VALUES ('91', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_NAME5', '0', 'LINES_READ');
INSERT INTO `r_job_attribute` VALUES ('92', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED5', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('93', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ID6', '0', 'LINES_WRITTEN');
INSERT INTO `r_job_attribute` VALUES ('94', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_NAME6', '0', 'LINES_WRITTEN');
INSERT INTO `r_job_attribute` VALUES ('95', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED6', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('96', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ID7', '0', 'LINES_UPDATED');
INSERT INTO `r_job_attribute` VALUES ('97', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_NAME7', '0', 'LINES_UPDATED');
INSERT INTO `r_job_attribute` VALUES ('98', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED7', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('99', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ID8', '0', 'LINES_INPUT');
INSERT INTO `r_job_attribute` VALUES ('100', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_NAME8', '0', 'LINES_INPUT');
INSERT INTO `r_job_attribute` VALUES ('101', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED8', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('102', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ID9', '0', 'LINES_OUTPUT');
INSERT INTO `r_job_attribute` VALUES ('103', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_NAME9', '0', 'LINES_OUTPUT');
INSERT INTO `r_job_attribute` VALUES ('104', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED9', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('105', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ID10', '0', 'LINES_REJECTED');
INSERT INTO `r_job_attribute` VALUES ('106', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_NAME10', '0', 'LINES_REJECTED');
INSERT INTO `r_job_attribute` VALUES ('107', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED10', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('108', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ID11', '0', 'ERRORS');
INSERT INTO `r_job_attribute` VALUES ('109', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_NAME11', '0', 'ERRORS');
INSERT INTO `r_job_attribute` VALUES ('110', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED11', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('111', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ID12', '0', 'RESULT');
INSERT INTO `r_job_attribute` VALUES ('112', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_NAME12', '0', 'RESULT');
INSERT INTO `r_job_attribute` VALUES ('113', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED12', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('114', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ID13', '0', 'NR_RESULT_ROWS');
INSERT INTO `r_job_attribute` VALUES ('115', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_NAME13', '0', 'NR_RESULT_ROWS');
INSERT INTO `r_job_attribute` VALUES ('116', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED13', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('117', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ID14', '0', 'NR_RESULT_FILES');
INSERT INTO `r_job_attribute` VALUES ('118', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_NAME14', '0', 'NR_RESULT_FILES');
INSERT INTO `r_job_attribute` VALUES ('119', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED14', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('120', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ID15', '0', 'LOG_FIELD');
INSERT INTO `r_job_attribute` VALUES ('121', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_NAME15', '0', 'LOG_FIELD');
INSERT INTO `r_job_attribute` VALUES ('122', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED15', '0', 'N');
INSERT INTO `r_job_attribute` VALUES ('123', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ID16', '0', 'COPY_NR');
INSERT INTO `r_job_attribute` VALUES ('124', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_NAME16', '0', 'COPY_NR');
INSERT INTO `r_job_attribute` VALUES ('125', '1', '0', 'JOB_ENTRY_LOG_TABLE_FIELD_ENABLED16', '0', 'N');
INSERT INTO `r_job_attribute` VALUES ('126', '1', '0', 'CHANNEL_LOG_TABLE_CONNECTION_NAME', '0', null);
INSERT INTO `r_job_attribute` VALUES ('127', '1', '0', 'CHANNEL_LOG_TABLE_SCHEMA_NAME', '0', null);
INSERT INTO `r_job_attribute` VALUES ('128', '1', '0', 'CHANNEL_LOG_TABLE_TABLE_NAME', '0', null);
INSERT INTO `r_job_attribute` VALUES ('129', '1', '0', 'CHANNEL_LOG_TABLE_TIMEOUT_IN_DAYS', '0', null);
INSERT INTO `r_job_attribute` VALUES ('130', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ID0', '0', 'ID_BATCH');
INSERT INTO `r_job_attribute` VALUES ('131', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_NAME0', '0', 'ID_BATCH');
INSERT INTO `r_job_attribute` VALUES ('132', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ENABLED0', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('133', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ID1', '0', 'CHANNEL_ID');
INSERT INTO `r_job_attribute` VALUES ('134', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_NAME1', '0', 'CHANNEL_ID');
INSERT INTO `r_job_attribute` VALUES ('135', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ENABLED1', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('136', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ID2', '0', 'LOG_DATE');
INSERT INTO `r_job_attribute` VALUES ('137', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_NAME2', '0', 'LOG_DATE');
INSERT INTO `r_job_attribute` VALUES ('138', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ENABLED2', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('139', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ID3', '0', 'LOGGING_OBJECT_TYPE');
INSERT INTO `r_job_attribute` VALUES ('140', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_NAME3', '0', 'LOGGING_OBJECT_TYPE');
INSERT INTO `r_job_attribute` VALUES ('141', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ENABLED3', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('142', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ID4', '0', 'OBJECT_NAME');
INSERT INTO `r_job_attribute` VALUES ('143', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_NAME4', '0', 'OBJECT_NAME');
INSERT INTO `r_job_attribute` VALUES ('144', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ENABLED4', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('145', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ID5', '0', 'OBJECT_COPY');
INSERT INTO `r_job_attribute` VALUES ('146', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_NAME5', '0', 'OBJECT_COPY');
INSERT INTO `r_job_attribute` VALUES ('147', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ENABLED5', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('148', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ID6', '0', 'REPOSITORY_DIRECTORY');
INSERT INTO `r_job_attribute` VALUES ('149', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_NAME6', '0', 'REPOSITORY_DIRECTORY');
INSERT INTO `r_job_attribute` VALUES ('150', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ENABLED6', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('151', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ID7', '0', 'FILENAME');
INSERT INTO `r_job_attribute` VALUES ('152', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_NAME7', '0', 'FILENAME');
INSERT INTO `r_job_attribute` VALUES ('153', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ENABLED7', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('154', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ID8', '0', 'OBJECT_ID');
INSERT INTO `r_job_attribute` VALUES ('155', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_NAME8', '0', 'OBJECT_ID');
INSERT INTO `r_job_attribute` VALUES ('156', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ENABLED8', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('157', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ID9', '0', 'OBJECT_REVISION');
INSERT INTO `r_job_attribute` VALUES ('158', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_NAME9', '0', 'OBJECT_REVISION');
INSERT INTO `r_job_attribute` VALUES ('159', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ENABLED9', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('160', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ID10', '0', 'PARENT_CHANNEL_ID');
INSERT INTO `r_job_attribute` VALUES ('161', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_NAME10', '0', 'PARENT_CHANNEL_ID');
INSERT INTO `r_job_attribute` VALUES ('162', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ENABLED10', '0', 'Y');
INSERT INTO `r_job_attribute` VALUES ('163', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ID11', '0', 'ROOT_CHANNEL_ID');
INSERT INTO `r_job_attribute` VALUES ('164', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_NAME11', '0', 'ROOT_CHANNEL_ID');
INSERT INTO `r_job_attribute` VALUES ('165', '1', '0', 'CHANNEL_LOG_TABLE_FIELD_ENABLED11', '0', 'Y');

-- ----------------------------
-- Table structure for r_job_hop
-- ----------------------------
DROP TABLE IF EXISTS `r_job_hop`;
CREATE TABLE `r_job_hop` (
  `ID_JOB_HOP` bigint(20) NOT NULL,
  `ID_JOB` int(11) DEFAULT NULL,
  `ID_JOBENTRY_COPY_FROM` int(11) DEFAULT NULL,
  `ID_JOBENTRY_COPY_TO` int(11) DEFAULT NULL,
  `ENABLED` tinyint(1) DEFAULT NULL,
  `EVALUATION` tinyint(1) DEFAULT NULL,
  `UNCONDITIONAL` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_JOB_HOP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_job_hop
-- ----------------------------
INSERT INTO `r_job_hop` VALUES ('1', '1', '1', '2', '1', '1', '1');
INSERT INTO `r_job_hop` VALUES ('2', '1', '2', '3', '1', '1', '0');
INSERT INTO `r_job_hop` VALUES ('3', '1', '2', '4', '1', '1', '0');
INSERT INTO `r_job_hop` VALUES ('4', '1', '3', '5', '1', '1', '0');
INSERT INTO `r_job_hop` VALUES ('5', '1', '4', '5', '1', '1', '0');
INSERT INTO `r_job_hop` VALUES ('6', '1', '2', '6', '1', '1', '0');
INSERT INTO `r_job_hop` VALUES ('7', '1', '6', '5', '1', '1', '0');

-- ----------------------------
-- Table structure for r_job_lock
-- ----------------------------
DROP TABLE IF EXISTS `r_job_lock`;
CREATE TABLE `r_job_lock` (
  `ID_JOB_LOCK` bigint(20) NOT NULL,
  `ID_JOB` int(11) DEFAULT NULL,
  `ID_USER` int(11) DEFAULT NULL,
  `LOCK_MESSAGE` mediumtext,
  `LOCK_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_JOB_LOCK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_job_lock
-- ----------------------------

-- ----------------------------
-- Table structure for r_job_note
-- ----------------------------
DROP TABLE IF EXISTS `r_job_note`;
CREATE TABLE `r_job_note` (
  `ID_JOB` int(11) DEFAULT NULL,
  `ID_NOTE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_job_note
-- ----------------------------

-- ----------------------------
-- Table structure for r_log
-- ----------------------------
DROP TABLE IF EXISTS `r_log`;
CREATE TABLE `r_log` (
  `ID_LOG` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `ID_LOGLEVEL` int(11) DEFAULT NULL,
  `LOGTYPE` varchar(255) DEFAULT NULL,
  `FILENAME` varchar(255) DEFAULT NULL,
  `FILEEXTENTION` varchar(255) DEFAULT NULL,
  `ADD_DATE` tinyint(1) DEFAULT NULL,
  `ADD_TIME` tinyint(1) DEFAULT NULL,
  `ID_DATABASE_LOG` int(11) DEFAULT NULL,
  `TABLE_NAME_LOG` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_LOG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_log
-- ----------------------------

-- ----------------------------
-- Table structure for r_loglevel
-- ----------------------------
DROP TABLE IF EXISTS `r_loglevel`;
CREATE TABLE `r_loglevel` (
  `ID_LOGLEVEL` bigint(20) NOT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_LOGLEVEL`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_loglevel
-- ----------------------------
INSERT INTO `r_loglevel` VALUES ('1', 'Error', '错误日志');
INSERT INTO `r_loglevel` VALUES ('2', 'Minimal', '最小日志');
INSERT INTO `r_loglevel` VALUES ('3', 'Basic', '基本日志');
INSERT INTO `r_loglevel` VALUES ('4', 'Detailed', '详细日志');
INSERT INTO `r_loglevel` VALUES ('5', 'Debug', '调试');
INSERT INTO `r_loglevel` VALUES ('6', 'Rowlevel', '行级日志(非常详细)');

-- ----------------------------
-- Table structure for r_namespace
-- ----------------------------
DROP TABLE IF EXISTS `r_namespace`;
CREATE TABLE `r_namespace` (
  `ID_NAMESPACE` bigint(20) NOT NULL,
  `NAME` mediumtext,
  PRIMARY KEY (`ID_NAMESPACE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_namespace
-- ----------------------------

-- ----------------------------
-- Table structure for r_note
-- ----------------------------
DROP TABLE IF EXISTS `r_note`;
CREATE TABLE `r_note` (
  `ID_NOTE` bigint(20) NOT NULL,
  `VALUE_STR` mediumtext,
  `GUI_LOCATION_X` int(11) DEFAULT NULL,
  `GUI_LOCATION_Y` int(11) DEFAULT NULL,
  `GUI_LOCATION_WIDTH` int(11) DEFAULT NULL,
  `GUI_LOCATION_HEIGHT` int(11) DEFAULT NULL,
  `FONT_NAME` mediumtext,
  `FONT_SIZE` int(11) DEFAULT NULL,
  `FONT_BOLD` tinyint(1) DEFAULT NULL,
  `FONT_ITALIC` tinyint(1) DEFAULT NULL,
  `FONT_COLOR_RED` int(11) DEFAULT NULL,
  `FONT_COLOR_GREEN` int(11) DEFAULT NULL,
  `FONT_COLOR_BLUE` int(11) DEFAULT NULL,
  `FONT_BACK_GROUND_COLOR_RED` int(11) DEFAULT NULL,
  `FONT_BACK_GROUND_COLOR_GREEN` int(11) DEFAULT NULL,
  `FONT_BACK_GROUND_COLOR_BLUE` int(11) DEFAULT NULL,
  `FONT_BORDER_COLOR_RED` int(11) DEFAULT NULL,
  `FONT_BORDER_COLOR_GREEN` int(11) DEFAULT NULL,
  `FONT_BORDER_COLOR_BLUE` int(11) DEFAULT NULL,
  `DRAW_SHADOW` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_NOTE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_note
-- ----------------------------

-- ----------------------------
-- Table structure for r_partition
-- ----------------------------
DROP TABLE IF EXISTS `r_partition`;
CREATE TABLE `r_partition` (
  `ID_PARTITION` bigint(20) NOT NULL,
  `ID_PARTITION_SCHEMA` int(11) DEFAULT NULL,
  `PARTITION_ID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_PARTITION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_partition
-- ----------------------------

-- ----------------------------
-- Table structure for r_partition_schema
-- ----------------------------
DROP TABLE IF EXISTS `r_partition_schema`;
CREATE TABLE `r_partition_schema` (
  `ID_PARTITION_SCHEMA` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DYNAMIC_DEFINITION` tinyint(1) DEFAULT NULL,
  `PARTITIONS_PER_SLAVE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_PARTITION_SCHEMA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_partition_schema
-- ----------------------------

-- ----------------------------
-- Table structure for r_repository_log
-- ----------------------------
DROP TABLE IF EXISTS `r_repository_log`;
CREATE TABLE `r_repository_log` (
  `ID_REPOSITORY_LOG` bigint(20) NOT NULL,
  `REP_VERSION` varchar(255) DEFAULT NULL,
  `LOG_DATE` datetime DEFAULT NULL,
  `LOG_USER` varchar(255) DEFAULT NULL,
  `OPERATION_DESC` mediumtext,
  PRIMARY KEY (`ID_REPOSITORY_LOG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_repository_log
-- ----------------------------
INSERT INTO `r_repository_log` VALUES ('1', '5.0', '2017-05-10 15:49:19', 'admin', 'Creation of the Kettle repository');
INSERT INTO `r_repository_log` VALUES ('2', '5.0', '2017-10-27 18:48:05', 'admin', 'Creation of initial version');
INSERT INTO `r_repository_log` VALUES ('3', '5.0', '2017-10-27 18:49:47', 'admin', 'Creation of initial version');
INSERT INTO `r_repository_log` VALUES ('4', '5.0', '2017-10-27 18:50:07', 'admin', 'Save database : Modification by user');
INSERT INTO `r_repository_log` VALUES ('5', '5.0', '2017-10-27 18:50:07', 'admin', 'Modification by user');
INSERT INTO `r_repository_log` VALUES ('6', '5.0', '2017-10-27 19:01:30', 'admin', 'Creation of initial version');
INSERT INTO `r_repository_log` VALUES ('7', '5.0', '2017-10-30 09:42:42', 'admin', 'save transformation \'cbs4orders\'');
INSERT INTO `r_repository_log` VALUES ('8', '5.0', '2017-10-30 10:05:19', 'admin', 'Creation of initial version');
INSERT INTO `r_repository_log` VALUES ('9', '5.0', '2017-10-30 10:06:32', 'admin', 'save transformation \'cbs4orders\'');
INSERT INTO `r_repository_log` VALUES ('10', '5.0', '2017-10-30 10:06:33', 'admin', 'save transformation \'cbs4orders\'');
INSERT INTO `r_repository_log` VALUES ('11', '5.0', '2017-10-30 10:31:30', 'admin', 'save transformation \'get_etl_date\'');
INSERT INTO `r_repository_log` VALUES ('12', '5.0', '2017-10-30 10:41:21', 'admin', 'save transformation \'get_etl_date\'');
INSERT INTO `r_repository_log` VALUES ('13', '5.0', '2017-10-30 10:41:30', 'admin', 'save transformation \'get_etl_date\'');
INSERT INTO `r_repository_log` VALUES ('14', '5.0', '2017-10-30 10:41:36', 'admin', 'save transformation \'get_etl_date\'');
INSERT INTO `r_repository_log` VALUES ('15', '5.0', '2017-10-30 10:41:58', 'admin', 'save transformation \'get_etl_date\'');
INSERT INTO `r_repository_log` VALUES ('16', '5.0', '2017-10-30 11:02:29', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('17', '5.0', '2017-10-30 11:05:52', 'admin', 'save job \'job-demo\'');
INSERT INTO `r_repository_log` VALUES ('18', '5.0', '2017-10-30 11:06:51', 'admin', 'save job \'job-demo\'');
INSERT INTO `r_repository_log` VALUES ('19', '5.0', '2017-10-30 11:13:32', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('20', '5.0', '2017-10-30 11:16:23', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('21', '5.0', '2017-10-30 11:16:39', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('22', '5.0', '2017-10-30 11:16:39', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('23', '5.0', '2017-10-30 11:16:39', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('24', '5.0', '2017-10-30 11:16:40', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('25', '5.0', '2017-10-30 11:17:48', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('26', '5.0', '2017-10-30 11:17:52', 'admin', 'save job \'job-demo\'');
INSERT INTO `r_repository_log` VALUES ('27', '5.0', '2017-10-30 11:19:52', 'admin', 'save transformation \'get_etl_date\'');
INSERT INTO `r_repository_log` VALUES ('28', '5.0', '2017-10-30 11:21:18', 'admin', 'save transformation \'get_etl_date\'');
INSERT INTO `r_repository_log` VALUES ('29', '5.0', '2017-10-30 11:21:33', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('30', '5.0', '2017-10-30 11:23:20', 'admin', 'save transformation \'get_etl_date\'');
INSERT INTO `r_repository_log` VALUES ('31', '5.0', '2017-10-30 11:28:35', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('32', '5.0', '2017-10-30 11:30:41', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('33', '5.0', '2017-10-30 11:33:04', 'admin', 'save job \'job-demo\'');
INSERT INTO `r_repository_log` VALUES ('34', '5.0', '2017-10-30 11:35:45', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('35', '5.0', '2017-10-30 11:37:15', 'admin', 'save job \'job-demo\'');
INSERT INTO `r_repository_log` VALUES ('36', '5.0', '2017-10-30 11:39:01', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('37', '5.0', '2017-10-30 11:46:37', 'admin', 'save transformation \'get_etl_date\'');
INSERT INTO `r_repository_log` VALUES ('38', '5.0', '2017-10-30 11:47:51', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('39', '5.0', '2017-10-30 11:48:10', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('40', '5.0', '2017-10-30 11:50:35', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('41', '5.0', '2017-10-30 11:52:49', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('42', '5.0', '2017-10-30 11:57:22', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('43', '5.0', '2017-10-30 11:57:54', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('44', '5.0', '2017-10-30 11:59:05', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('45', '5.0', '2017-10-30 11:59:15', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('46', '5.0', '2017-10-30 12:10:50', 'admin', 'save transformation \'get_etl_date\'');
INSERT INTO `r_repository_log` VALUES ('47', '5.0', '2017-10-30 12:11:03', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('48', '5.0', '2017-10-30 12:12:23', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('49', '5.0', '2017-10-30 15:02:06', 'admin', 'Creation of initial version');
INSERT INTO `r_repository_log` VALUES ('50', '5.0', '2017-10-30 15:16:17', 'admin', 'save transformation \'cms4video\'');
INSERT INTO `r_repository_log` VALUES ('51', '5.0', '2017-10-30 15:58:33', 'admin', 'save transformation \'merge\'');
INSERT INTO `r_repository_log` VALUES ('52', '5.0', '2017-10-30 15:58:53', 'admin', 'save transformation \'merge\'');
INSERT INTO `r_repository_log` VALUES ('53', '5.0', '2017-10-30 16:00:58', 'admin', 'save transformation \'merge\'');
INSERT INTO `r_repository_log` VALUES ('54', '5.0', '2017-10-30 16:04:19', 'admin', 'save transformation \'merge\'');
INSERT INTO `r_repository_log` VALUES ('55', '5.0', '2017-10-30 16:04:40', 'admin', 'save transformation \'merge\'');
INSERT INTO `r_repository_log` VALUES ('56', '5.0', '2017-10-30 16:05:42', 'admin', 'save transformation \'merge\'');
INSERT INTO `r_repository_log` VALUES ('57', '5.0', '2017-10-30 16:08:27', 'admin', 'save job \'job-demo\'');
INSERT INTO `r_repository_log` VALUES ('58', '5.0', '2017-10-30 16:33:41', 'admin', 'save job \'job-demo\'');
INSERT INTO `r_repository_log` VALUES ('59', '5.0', '2017-10-30 16:34:19', 'admin', 'save job \'job-demo\'');
INSERT INTO `r_repository_log` VALUES ('60', '5.0', '2017-10-30 17:50:56', 'admin', 'save job \'job-demo\'');
INSERT INTO `r_repository_log` VALUES ('61', '5.0', '2018-01-18 17:10:39', 'admin', 'Creation of initial version');
INSERT INTO `r_repository_log` VALUES ('62', '5.0', '2018-01-18 17:15:09', 'admin', 'save transformation \'啊啊啊\'');
INSERT INTO `r_repository_log` VALUES ('63', '5.0', '2018-01-18 17:18:09', 'admin', 'save transformation \'啊啊啊\'');
INSERT INTO `r_repository_log` VALUES ('64', '5.0', '2018-01-18 17:23:37', 'admin', 'save transformation \'aaaa\'');
INSERT INTO `r_repository_log` VALUES ('65', '5.0', '2018-01-18 17:24:27', 'admin', 'Creation of initial version');
INSERT INTO `r_repository_log` VALUES ('66', '5.0', '2018-01-18 17:27:59', 'admin', 'save transformation \'aaaa\'');
INSERT INTO `r_repository_log` VALUES ('67', '5.0', '2018-01-18 17:28:13', 'admin', 'save transformation \'aaaa\'');
INSERT INTO `r_repository_log` VALUES ('68', '5.0', '2018-01-18 17:30:05', 'admin', 'save transformation \'aaaa\'');
INSERT INTO `r_repository_log` VALUES ('69', '5.0', '2018-01-18 17:32:17', 'admin', 'save transformation \'aaaa\'');
INSERT INTO `r_repository_log` VALUES ('70', '5.0', '2018-01-18 17:32:17', 'admin', 'save transformation \'aaaa\'');
INSERT INTO `r_repository_log` VALUES ('71', '5.0', '2018-01-18 17:32:51', 'admin', 'save transformation \'aaaa\'');
INSERT INTO `r_repository_log` VALUES ('72', '5.0', '2018-01-18 17:33:47', 'admin', 'save transformation \'aaaa\'');
INSERT INTO `r_repository_log` VALUES ('73', '5.0', '2018-01-18 17:34:35', 'admin', 'save transformation \'aaaa\'');
INSERT INTO `r_repository_log` VALUES ('74', '5.0', '2018-02-01 16:27:45', 'admin', 'save job \'job-demo\'');

-- ----------------------------
-- Table structure for r_slave
-- ----------------------------
DROP TABLE IF EXISTS `r_slave`;
CREATE TABLE `r_slave` (
  `ID_SLAVE` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `HOST_NAME` varchar(255) DEFAULT NULL,
  `PORT` varchar(255) DEFAULT NULL,
  `WEB_APP_NAME` varchar(255) DEFAULT NULL,
  `USERNAME` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `PROXY_HOST_NAME` varchar(255) DEFAULT NULL,
  `PROXY_PORT` varchar(255) DEFAULT NULL,
  `NON_PROXY_HOSTS` varchar(255) DEFAULT NULL,
  `MASTER` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_SLAVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_slave
-- ----------------------------

-- ----------------------------
-- Table structure for r_step
-- ----------------------------
DROP TABLE IF EXISTS `r_step`;
CREATE TABLE `r_step` (
  `ID_STEP` bigint(20) NOT NULL,
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` mediumtext,
  `ID_STEP_TYPE` int(11) DEFAULT NULL,
  `DISTRIBUTE` tinyint(1) DEFAULT NULL,
  `COPIES` int(11) DEFAULT NULL,
  `GUI_LOCATION_X` int(11) DEFAULT NULL,
  `GUI_LOCATION_Y` int(11) DEFAULT NULL,
  `GUI_DRAW` tinyint(1) DEFAULT NULL,
  `COPIES_STRING` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_STEP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_step
-- ----------------------------

-- ----------------------------
-- Table structure for r_step_attribute
-- ----------------------------
DROP TABLE IF EXISTS `r_step_attribute`;
CREATE TABLE `r_step_attribute` (
  `ID_STEP_ATTRIBUTE` bigint(20) NOT NULL,
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_STEP` int(11) DEFAULT NULL,
  `NR` int(11) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `VALUE_NUM` bigint(20) DEFAULT NULL,
  `VALUE_STR` mediumtext,
  PRIMARY KEY (`ID_STEP_ATTRIBUTE`),
  UNIQUE KEY `IDX_RSAT` (`ID_STEP`,`CODE`,`NR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_step_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for r_step_database
-- ----------------------------
DROP TABLE IF EXISTS `r_step_database`;
CREATE TABLE `r_step_database` (
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_STEP` int(11) DEFAULT NULL,
  `ID_DATABASE` int(11) DEFAULT NULL,
  KEY `IDX_RSD1` (`ID_TRANSFORMATION`),
  KEY `IDX_RSD2` (`ID_DATABASE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_step_database
-- ----------------------------

-- ----------------------------
-- Table structure for r_step_type
-- ----------------------------
DROP TABLE IF EXISTS `r_step_type`;
CREATE TABLE `r_step_type` (
  `ID_STEP_TYPE` bigint(20) NOT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `HELPTEXT` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID_STEP_TYPE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_step_type
-- ----------------------------
INSERT INTO `r_step_type` VALUES ('1', 'Delete', '删除', '基于关键字删除记录');
INSERT INTO `r_step_type` VALUES ('2', 'WriteToLog', '写日志', 'Write data to log');
INSERT INTO `r_step_type` VALUES ('3', 'SyslogMessage', '发送信息至Syslog', 'Send message to Syslog server');
INSERT INTO `r_step_type` VALUES ('4', 'TextFileOutput', '文本文件输出', '写记录到一个文本文件.');
INSERT INTO `r_step_type` VALUES ('5', 'MultiwayMergeJoin', 'Multiway Merge Join', 'Multiway Merge Join');
INSERT INTO `r_step_type` VALUES ('6', 'LDAPOutput', 'LDAP 输出', 'Perform Insert, upsert, update, add or delete operations on records based on their DN (Distinguished  Name).');
INSERT INTO `r_step_type` VALUES ('7', 'AccessInput', 'Access 输入', 'Read data from a Microsoft Access file');
INSERT INTO `r_step_type` VALUES ('8', 'JoinRows', '记录关联 (笛卡尔输出)', '这个步骤的输出是输入流的笛卡尔的结果.{0} 输出结果的记录数是输入流记录之间的乘积.');
INSERT INTO `r_step_type` VALUES ('9', 'JsonInput', 'JSON Input', 'Extract relevant portions out of JSON structures (file or incoming field) and output rows');
INSERT INTO `r_step_type` VALUES ('10', 'TableOutput', '表输出', '写信息到一个数据库表');
INSERT INTO `r_step_type` VALUES ('11', 'MySQLBulkLoader', 'MySQL 批量加载', 'MySQL bulk loader step, loading data over a named pipe (not available on MS Windows)');
INSERT INTO `r_step_type` VALUES ('12', 'SingleThreader', 'Single Threader', 'Executes a transformation snippet in a single thread.  You need a standard mapping or a transformation with an Injector step where data from the parent transformation will arive in blocks.');
INSERT INTO `r_step_type` VALUES ('13', 'HL7Input', 'HL7 Input', 'Reads and parses HL7 messages and outputs a series of values from the messages');
INSERT INTO `r_step_type` VALUES ('14', 'RandomCCNumberGenerator', '生成随机的信用卡号', 'Generate random valide (luhn check) credit card numbers');
INSERT INTO `r_step_type` VALUES ('15', 'RegexEval', '正则表达式', 'Regular expression Evaluation\nThis step uses a regular expression to evaluate a field. It can also extract new fields out of an existing field with capturing groups.');
INSERT INTO `r_step_type` VALUES ('16', 'PaloDimOutput', 'Palo Dim Output', 'Writes data to defined Palo Dimension');
INSERT INTO `r_step_type` VALUES ('17', 'S3FileOutputPlugin', 'S3 File Output', 'Create files in an S3 location');
INSERT INTO `r_step_type` VALUES ('18', 'IfNull', '替换NULL值', 'Sets a field value to a constant if it is null.');
INSERT INTO `r_step_type` VALUES ('19', 'ColumnExists', '检查表里的列是否存在', 'Check if a column exists in a table on a specified connection.');
INSERT INTO `r_step_type` VALUES ('20', 'FileLocked', '检查文件是否已被锁定', 'Check if a file is locked by another process');
INSERT INTO `r_step_type` VALUES ('21', 'SocketWriter', 'Socket 写', 'Socket writer.  A socket server that can send rows of data to a socket reader.');
INSERT INTO `r_step_type` VALUES ('22', 'ExcelInput', 'Excel输入', '从一个微软的Excel文件里读取数据. 兼容Excel 95, 97 and 2000.');
INSERT INTO `r_step_type` VALUES ('23', 'HadoopEnterPlugin', 'MapReduce Input', 'Enter a Hadoop Mapper or Reducer transformation');
INSERT INTO `r_step_type` VALUES ('24', 'TeraFast', 'Teradata Fastload 批量加载', 'The Teradata Fastload Bulk loader');
INSERT INTO `r_step_type` VALUES ('25', 'DataGrid', '自定义常量数据', 'Enter rows of static data in a grid, usually for testing, reference or demo purpose');
INSERT INTO `r_step_type` VALUES ('26', 'MongoDbInput', 'MongoDB Input', 'Reads from a Mongo DB collection');
INSERT INTO `r_step_type` VALUES ('27', 'DetectLastRow', '识别流的最后一行', 'Last row will be marked');
INSERT INTO `r_step_type` VALUES ('28', 'TypeExitEdi2XmlStep', 'Edi to XML', 'Converts Edi text to generic XML');
INSERT INTO `r_step_type` VALUES ('29', 'SortRows', '排序记录', '基于字段值把记录排序(升序或降序)');
INSERT INTO `r_step_type` VALUES ('30', 'FieldsChangeSequence', '根据字段值来改变序列', 'Add sequence depending of fields value change.\nEach time value of at least one field change, PDI will reset sequence. ');
INSERT INTO `r_step_type` VALUES ('31', 'RowsFromResult', '从结果获取记录', '这个允许你从同一个任务的前一个条目里读取记录.');
INSERT INTO `r_step_type` VALUES ('32', 'JobExecutor', '执行作业', 'This step executes a Pentaho Data Integration job, sets parameters and passes rows.');
INSERT INTO `r_step_type` VALUES ('33', 'BlockUntilStepsFinish', '阻塞数据直到步骤都完成', 'Block this step until selected steps finish.');
INSERT INTO `r_step_type` VALUES ('34', 'AutoDoc', '自动文档输出', 'This step automatically generates documentation based on input in the form of a list of transformations and jobs');
INSERT INTO `r_step_type` VALUES ('35', 'SFTPPut', 'SFTP Put', 'Upload a file or a stream file to remote host via SFTP');
INSERT INTO `r_step_type` VALUES ('36', 'ProcessFiles', '处理文件', 'Process one file per row (copy or move or delete).\nThis step only accept filename in input.');
INSERT INTO `r_step_type` VALUES ('37', 'RuleAccumulator', 'Rules Accumulator', 'Rules Accumulator Step');
INSERT INTO `r_step_type` VALUES ('38', 'DimensionLookup', '维度查询/更新', '在一个数据仓库里更新一个渐变维 {0} 或者在这个维里查询信息.');
INSERT INTO `r_step_type` VALUES ('39', 'TypeExitGoogleAnalyticsInputStep', 'Google Analytics', 'Fetches data from google analytics account');
INSERT INTO `r_step_type` VALUES ('40', 'HBaseRowDecoder', 'HBase Row Decoder', 'Decodes an incoming key and HBase result object according to a mapping ');
INSERT INTO `r_step_type` VALUES ('41', 'PaloCellInput', 'Palo Cell Input', 'Reads data from a defined Palo Cube ');
INSERT INTO `r_step_type` VALUES ('42', 'Append', '追加流', 'Append 2 streams in an ordered way');
INSERT INTO `r_step_type` VALUES ('43', 'ZipFile', 'Zip 文件', 'Zip a file.\nFilename will be extracted from incoming stream.');
INSERT INTO `r_step_type` VALUES ('44', 'StringCut', '剪切字符串', 'Strings cut (substring).');
INSERT INTO `r_step_type` VALUES ('45', 'MergeRows', '合并记录', '合并两个数据流, 并根据某个关键字排序.  这两个数据流被比较，以标识相等的、变更的、删除的和新建的记录.');
INSERT INTO `r_step_type` VALUES ('46', 'Validator', '数据检验', 'Validates passing data based on a set of rules');
INSERT INTO `r_step_type` VALUES ('47', 'SSTableOutput', 'SSTable Output', 'Writes to a filesystem directory as a Cassandra SSTable');
INSERT INTO `r_step_type` VALUES ('48', 'MemoryGroupBy', '在内存中分组', 'Builds aggregates in a group by fashion.\nThis step doesn\'t require sorted input.');
INSERT INTO `r_step_type` VALUES ('49', 'SystemInfo', '获取系统信息', '获取系统信息，例如时间、日期.');
INSERT INTO `r_step_type` VALUES ('50', 'Denormaliser', '列转行', 'Denormalises rows by looking up key-value pairs and by assigning them to new fields in the输出 rows.{0}This method aggregates and needs the输入 rows to be sorted on the grouping fields');
INSERT INTO `r_step_type` VALUES ('51', 'ExcelOutput', 'Excel输出', 'Stores records into an Excel (XLS) document with formatting information.');
INSERT INTO `r_step_type` VALUES ('52', 'OlapInput', 'OLAP 输入', 'Execute and retrieve data using an MDX query against any XML/A OLAP datasource using olap4j');
INSERT INTO `r_step_type` VALUES ('53', 'Delay', '延迟行', 'Output each input row after a delay');
INSERT INTO `r_step_type` VALUES ('54', 'NullIf', '设置值为NULL', '如果一个字段值等于某个固定值，那么把这个字段值设置成null');
INSERT INTO `r_step_type` VALUES ('55', 'SalesforceInput', 'Salesforce Input', 'Extract data from Salesforce');
INSERT INTO `r_step_type` VALUES ('56', 'CallEndpointStep', 'Call endpoint', 'Call an endpoint of the BA Server.');
INSERT INTO `r_step_type` VALUES ('57', 'SocketReader', 'Socket 读', 'Socket reader.  A socket client that connects to a server (Socket Writer step).');
INSERT INTO `r_step_type` VALUES ('58', 'CombinationLookup', '联合查询/更新', '更新数据仓库里的一个junk维 {0} 可选的, 科研查询维里的信息.{1}junk维的主键是所有的字段.');
INSERT INTO `r_step_type` VALUES ('59', 'FilesToResult', '复制文件到结果', 'This step allows you to set filenames in the result of this transformation.\nSubsequent job entries can then use this information.');
INSERT INTO `r_step_type` VALUES ('60', 'GPBulkLoader', 'Greenplum Bulk Loader', 'Greenplum Bulk Loader');
INSERT INTO `r_step_type` VALUES ('61', 'VerticaBulkLoader', 'Vertica Bulk Loader', 'Bulk load data into a Vertica database table');
INSERT INTO `r_step_type` VALUES ('62', 'SalesforceDelete', 'Salesforce Delete', 'Delete records in Salesforce module.');
INSERT INTO `r_step_type` VALUES ('63', 'HTTP', 'HTTP client', 'Call a web service over HTTP by supplying a base URL by allowing parameters to be set dynamically');
INSERT INTO `r_step_type` VALUES ('64', 'XSDValidator', 'XSD Validator', 'Validate XML source (files or streams) against XML Schema Definition.');
INSERT INTO `r_step_type` VALUES ('65', 'SetValueConstant', '将字段值设置为常量', 'Set value of a field to a constant');
INSERT INTO `r_step_type` VALUES ('66', 'ScriptValueMod', 'JavaScript代码', 'This is a modified plugin for the Scripting Values with improved interface and performance.\nWritten & donated to open source by Martin Lange, Proconis : http://www.proconis.de');
INSERT INTO `r_step_type` VALUES ('67', 'CassandraInput', 'Cassandra Input', 'Reads data from a Cassandra table');
INSERT INTO `r_step_type` VALUES ('68', 'SwitchCase', 'Switch / Case', 'Switch a row to a certain target step based on the case value in a field.');
INSERT INTO `r_step_type` VALUES ('69', 'DBLookup', '数据库查询', '使用字段值在数据库里查询值');
INSERT INTO `r_step_type` VALUES ('70', 'FuzzyMatch', '模糊匹配', 'Finding approximate matches to a string using matching algorithms.\nRead a field from a main stream and output approximative value from lookup stream.');
INSERT INTO `r_step_type` VALUES ('71', 'TeraDataBulkLoader', 'Teradata TPT Bulk Loader', 'Teradata TPT bulkloader, using tbuild command');
INSERT INTO `r_step_type` VALUES ('72', 'TextFileInput', '文本文件输入', '从一个文本文件（几种格式）里读取数据{0}这些数据可以被传递到下一个步骤里...');
INSERT INTO `r_step_type` VALUES ('73', 'SalesforceInsert', 'Salesforce Insert', 'Insert records in Salesforce module.');
INSERT INTO `r_step_type` VALUES ('74', 'CouchDbInput', 'CouchDb Input', 'Reads from a Couch DB view');
INSERT INTO `r_step_type` VALUES ('75', 'ShapeFileReader', 'ESRI Shapefile Reader', 'Reads shape file data from an ESRI shape file and linked DBF file');
INSERT INTO `r_step_type` VALUES ('76', 'RssInput', 'RSS 输入', 'Read RSS feeds');
INSERT INTO `r_step_type` VALUES ('77', 'Unique', '去除重复记录', '去除重复的记录行，保持记录唯一{0}这个仅仅基于一个已经排好序的输入.{1}如果输入没有排序, 仅仅两个连续的记录行被正确处理.');
INSERT INTO `r_step_type` VALUES ('78', 'InfobrightOutput', 'Infobright 批量加载', 'Load data to an Infobright database table');
INSERT INTO `r_step_type` VALUES ('79', 'UserDefinedJavaClass', 'Java 代码', 'This step allows you to program a step using Java code');
INSERT INTO `r_step_type` VALUES ('80', 'OraBulkLoader', 'Oracle 批量加载', 'Use Oracle Bulk Loader to load data');
INSERT INTO `r_step_type` VALUES ('81', 'StepsMetrics', '转换步骤信息统计', 'Return metrics for one or several steps');
INSERT INTO `r_step_type` VALUES ('82', 'AvroInput', 'Avro Input', 'Reads data from an Avro file');
INSERT INTO `r_step_type` VALUES ('83', 'GetTableNames', '获取表名', 'Get table names from database connection and send them to the next step');
INSERT INTO `r_step_type` VALUES ('84', 'SetSessionVariableStep', 'Set session variables', 'Set session variables in the current user session.');
INSERT INTO `r_step_type` VALUES ('85', 'MappingInput', '映射输入规范', '指定一个映射的字段输入');
INSERT INTO `r_step_type` VALUES ('86', 'Abort', '中止', 'Abort a transformation');
INSERT INTO `r_step_type` VALUES ('87', 'PropertyOutput', '配置文件输出', 'Write data to properties file');
INSERT INTO `r_step_type` VALUES ('88', 'JsonOutput', 'JSON Output', 'Create JSON block and output it in a field or a file.');
INSERT INTO `r_step_type` VALUES ('89', 'TableExists', '检查表是否存在', 'Check if a table exists on a specified connection');
INSERT INTO `r_step_type` VALUES ('90', 'DetectEmptyStream', '检测空流', 'This step will output one empty row if input stream is empty\n(ie when input stream does not contain any row)');
INSERT INTO `r_step_type` VALUES ('91', 'GPLoad', 'Greenplum Load', 'Greenplum Load');
INSERT INTO `r_step_type` VALUES ('92', 'PaloDimInput', 'Palo Dim Input', 'Reads data from a defined Palo Dimension');
INSERT INTO `r_step_type` VALUES ('93', 'Normaliser', '行转列', 'De-normalised information can be normalised using this step type.');
INSERT INTO `r_step_type` VALUES ('94', 'SelectValues', '字段选择', '选择或移除记录里的字。{0}此外，可以设置字段的元数据: 类型, 长度和精度.');
INSERT INTO `r_step_type` VALUES ('95', 'XMLInputStream', 'XML Input Stream (StAX)', 'This step is capable of processing very large and complex XML files very fast.');
INSERT INTO `r_step_type` VALUES ('96', 'Flattener', '行扁平化', 'Flattens consequetive rows based on the order in which they appear in the输入 stream');
INSERT INTO `r_step_type` VALUES ('97', 'InsertUpdate', '插入 / 更新', '基于关键字更新或插入记录到数据库.');
INSERT INTO `r_step_type` VALUES ('98', 'MondrianInput', 'Mondrian 输入', 'Execute and retrieve data using an MDX query against a Pentaho Analyses OLAP server (Mondrian)');
INSERT INTO `r_step_type` VALUES ('99', 'SQLFileOutput', 'SQL 文件输出', 'Output SQL INSERT statements to file');
INSERT INTO `r_step_type` VALUES ('100', 'ReplaceString', '字符串替换', 'Replace all occurences a word in a string with another word.');
INSERT INTO `r_step_type` VALUES ('101', 'CubeInput', 'Cube 文件输入', '从一个cube读取记录.');
INSERT INTO `r_step_type` VALUES ('102', 'WebServiceLookup', 'Web 服务查询', '使用 Web 服务查询信息');
INSERT INTO `r_step_type` VALUES ('103', 'TableCompare', '比较表', 'Compares 2 tables and gives back a list of differences');
INSERT INTO `r_step_type` VALUES ('104', 'MailValidator', '检验邮件地址', 'Check if an email address is valid.');
INSERT INTO `r_step_type` VALUES ('105', 'OpenERPObjectOutputImport', 'OpenERP Object Output', 'Writes data into OpenERP objects using the object import procedure');
INSERT INTO `r_step_type` VALUES ('106', 'HadoopFileInputPlugin', 'Hadoop File Input', 'Process files from an HDFS location');
INSERT INTO `r_step_type` VALUES ('107', 'RowGenerator', '生成记录', '产生一些空记录或相等的行.');
INSERT INTO `r_step_type` VALUES ('108', 'DBJoin', '数据库连接', '使用数据流里的值作为参数执行一个数据库查询');
INSERT INTO `r_step_type` VALUES ('109', 'RuleExecutor', 'Rules Executor', 'Rules Executor Step');
INSERT INTO `r_step_type` VALUES ('110', 'MergeJoin', '记录集连接', 'Joins two streams on a given key and outputs a joined set. The input streams must be sorted on the join key');
INSERT INTO `r_step_type` VALUES ('111', 'HadoopFileOutputPlugin', 'Hadoop File Output', 'Create files in an HDFS location ');
INSERT INTO `r_step_type` VALUES ('112', 'OpenERPObjectInput', 'OpenERP Object Input', 'Reads data from OpenERP objects');
INSERT INTO `r_step_type` VALUES ('113', 'SalesforceUpdate', 'Salesforce Update', 'Update records in Salesforce module.');
INSERT INTO `r_step_type` VALUES ('114', 'XMLJoin', 'XML Join', 'Joins a stream of XML-Tags into a target XML string');
INSERT INTO `r_step_type` VALUES ('115', 'GetVariable', '获取变量', 'Determine the values of certain (environment or Kettle) variables and put them in field values.');
INSERT INTO `r_step_type` VALUES ('116', 'FieldMetadataAnnotation', 'Annotate Stream', 'Add more details to describe data for published models used by the Streamlined Data Refinery.');
INSERT INTO `r_step_type` VALUES ('117', 'DBProc', '调用DB存储过程', '通过调用数据库存储过程获得返回值.');
INSERT INTO `r_step_type` VALUES ('118', 'RssOutput', 'RSS 输出', 'Read RSS stream.');
INSERT INTO `r_step_type` VALUES ('119', 'S3CSVINPUT', 'S3 CSV Input', 'Is capable of reading CSV data stored on Amazon S3 in parallel');
INSERT INTO `r_step_type` VALUES ('120', 'SimpleMapping', 'Simple Mapping (sub-transformation)', 'Run a mapping (sub-transformation), use MappingInput and MappingOutput to specify the fields interface.  This is the simplified version only allowing one input and one output data set.');
INSERT INTO `r_step_type` VALUES ('121', 'OpenERPObjectDelete', 'OpenERP Object Delete', 'Deletes OpenERP objects');
INSERT INTO `r_step_type` VALUES ('122', 'LDAPInput', 'LDAP 输入', 'Read data from LDAP host');
INSERT INTO `r_step_type` VALUES ('123', 'XBaseInput', 'XBase输入', '从一个XBase类型的文件(DBF)读取记录');
INSERT INTO `r_step_type` VALUES ('124', 'MongoDbOutput', 'MongoDB Output', 'Writes to a Mongo DB collection');
INSERT INTO `r_step_type` VALUES ('125', 'CheckSum', '增加校验列', 'Add a checksum column for each input row');
INSERT INTO `r_step_type` VALUES ('126', 'MetaInject', 'ETL元数据注入', 'This step allows you to inject metadata into an existing transformation prior to execution.  This allows for the creation of dynamic and highly flexible data integration solutions.');
INSERT INTO `r_step_type` VALUES ('127', 'ParallelGzipCsvInput', 'GZIP CSV Input', 'Parallel GZIP CSV file input reader');
INSERT INTO `r_step_type` VALUES ('128', 'SortedMerge', '排序合并', 'Sorted Merge');
INSERT INTO `r_step_type` VALUES ('129', 'ChangeFileEncoding', '改变文件编码', 'Change file encoding and create a new file');
INSERT INTO `r_step_type` VALUES ('130', 'LoadFileInput', '文件内容加载至内存', 'Load file content in memory');
INSERT INTO `r_step_type` VALUES ('131', 'Janino', '利用Janino计算Java表达式', 'Calculate the result of a Java Expression using Janino');
INSERT INTO `r_step_type` VALUES ('132', 'getXMLData', 'Get data from XML', 'Get data from XML file by using XPath.\n This step also allows you to parse XML defined in a previous field.');
INSERT INTO `r_step_type` VALUES ('133', 'LDIFInput', 'LDIF 输入', 'Read data from LDIF files');
INSERT INTO `r_step_type` VALUES ('134', 'PGBulkLoader', 'PostgreSQL 批量加载', 'PostgreSQL Bulk Loader');
INSERT INTO `r_step_type` VALUES ('135', 'CubeOutput', 'Cube输出', '把数据写入一个cube');
INSERT INTO `r_step_type` VALUES ('136', 'SymmetricCryptoTrans', '对称加密', 'Encrypt or decrypt a string using symmetric encryption.\nAvailable algorithms are DES, AES, TripleDES.');
INSERT INTO `r_step_type` VALUES ('137', 'AddXML', 'Add XML', 'Encode several fields into an XML fragment');
INSERT INTO `r_step_type` VALUES ('138', 'TableInput', '表输入', '从数据库表里读取信息.');
INSERT INTO `r_step_type` VALUES ('139', 'SASInput', 'SAS 输入', 'This step reads files in sas7bdat (SAS) native format');
INSERT INTO `r_step_type` VALUES ('140', 'AccessOutput', 'Access 输出', 'Stores records into an MS-Access database table.');
INSERT INTO `r_step_type` VALUES ('141', 'ElasticSearchBulk', 'ElasticSearch Bulk Insert', 'Performs bulk inserts into ElasticSearch');
INSERT INTO `r_step_type` VALUES ('142', 'GetFileNames', '获取文件名', 'Get file names from the operating system and send them to the next step.');
INSERT INTO `r_step_type` VALUES ('143', 'StringOperations', '字符串操作', 'Apply certain operations like trimming, padding and others to string value.');
INSERT INTO `r_step_type` VALUES ('144', 'SetVariable', '设置变量', 'Set environment variables based on a single input row.');
INSERT INTO `r_step_type` VALUES ('145', 'RandomValue', '生成随机数', 'Generate random value');
INSERT INTO `r_step_type` VALUES ('146', 'GetSessionVariableStep', 'Get session variables', 'Get session variables from the current user session.');
INSERT INTO `r_step_type` VALUES ('147', 'FieldSplitter', '拆分字段', '当你想把一个字段拆分成多个时，使用这个类型.');
INSERT INTO `r_step_type` VALUES ('148', 'BlockingStep', '阻塞数据', 'This step blocks until all incoming rows have been processed.  Subsequent steps only recieve the last input row to this step.');
INSERT INTO `r_step_type` VALUES ('149', 'CsvInput', 'CSV文件输入', 'Simple CSV file input');
INSERT INTO `r_step_type` VALUES ('150', 'PropertyInput', '配置文件输入', 'Read data (key, value) from properties files.');
INSERT INTO `r_step_type` VALUES ('151', 'SynchronizeAfterMerge', '数据同步', 'This step perform insert/update/delete in one go based on the value of a field. ');
INSERT INTO `r_step_type` VALUES ('152', 'HBaseInput', 'HBase Input', 'Reads data from a HBase table according to a mapping ');
INSERT INTO `r_step_type` VALUES ('153', 'StreamLookup', '流查询', '从转换中的其它流里查询值.');
INSERT INTO `r_step_type` VALUES ('154', 'Dummy', '空操作 (什么也不做)', '这个步骤类型什么都不作.{0} 当你想测试或拆分数据流的时候有用.');
INSERT INTO `r_step_type` VALUES ('155', 'PGPEncryptStream', 'PGP Encrypt stream', 'Encrypt data stream with PGP');
INSERT INTO `r_step_type` VALUES ('156', 'GetFilesRowsCount', '获取文件行数', 'Returns rows count for text files.');
INSERT INTO `r_step_type` VALUES ('157', 'SetValueField', '设置字段值', 'Set value of a field with another value field');
INSERT INTO `r_step_type` VALUES ('158', 'PGPDecryptStream', 'PGP Decrypt stream', 'Decrypt data stream with PGP');
INSERT INTO `r_step_type` VALUES ('159', 'Mapping', '映射 (子转换)', '运行一个映射 (子转换), 使用MappingInput和MappingOutput来指定接口的字段');
INSERT INTO `r_step_type` VALUES ('160', 'DynamicSQLRow', '执行Dynamic SQL', 'Execute dynamic SQL statement build in a previous field');
INSERT INTO `r_step_type` VALUES ('161', 'Update', '更新', '基于关键字更新记录到数据库');
INSERT INTO `r_step_type` VALUES ('162', 'UniqueRowsByHashSet', '唯一行 (哈希值)', 'Remove double rows and leave only unique occurrences by using a HashSet.');
INSERT INTO `r_step_type` VALUES ('163', 'Formula', '公式', '使用 Pentaho 的公式库来计算公式');
INSERT INTO `r_step_type` VALUES ('164', 'WebServiceAvailable', '检查web服务是否可用', 'Check if a webservice is available');
INSERT INTO `r_step_type` VALUES ('165', 'ExecProcess', '启动一个进程', 'Execute a process and return the result');
INSERT INTO `r_step_type` VALUES ('166', 'Injector', '记录注射', 'Injector step to allow to inject rows into the transformation through the java API');
INSERT INTO `r_step_type` VALUES ('167', 'SampleRows', '样本行', 'Filter rows based on the line number.');
INSERT INTO `r_step_type` VALUES ('168', 'DummyStep', 'Example Step', 'This is a plugin example step');
INSERT INTO `r_step_type` VALUES ('169', 'GetSlaveSequence', 'Get ID from slave server', 'Retrieves unique IDs in blocks from a slave server.  The referenced sequence needs to be configured on the slave server in the XML configuration file.');
INSERT INTO `r_step_type` VALUES ('170', 'MappingOutput', '映射输出规范', '指定一个映射的字段输出');
INSERT INTO `r_step_type` VALUES ('171', 'FileExists', '检查文件是否存在', 'Check if a file exists');
INSERT INTO `r_step_type` VALUES ('172', 'Script', 'Script', 'Calculate values by scripting in Ruby, Python, Groovy, JavaScript, ... (JSR-223)');
INSERT INTO `r_step_type` VALUES ('173', 'GroupBy', '分组', '以分组的形式创建聚合.{0}这个仅仅在一个已经排好序的输入有效.{1}如果输入没有排序, 仅仅两个连续的记录行被正确处理.');
INSERT INTO `r_step_type` VALUES ('174', 'GetRepositoryNames', '获取资源库配置', 'Lists detailed information about transformations and/or jobs in a repository');
INSERT INTO `r_step_type` VALUES ('175', 'PaloCellOutput', 'Palo Cell Output', 'Writes data to a defined Palo Cube');
INSERT INTO `r_step_type` VALUES ('176', 'ClosureGenerator', 'Closure Generator', 'This step allows you to generates a closure table using parent-child relationships.');
INSERT INTO `r_step_type` VALUES ('177', 'Sequence', '增加序列', '从序列获取下一个值');
INSERT INTO `r_step_type` VALUES ('178', 'HBaseOutput', 'HBase Output', 'Writes data to an HBase table according to a mapping');
INSERT INTO `r_step_type` VALUES ('179', 'FilterRows', '过滤记录', '使用简单的相等来过滤记录');
INSERT INTO `r_step_type` VALUES ('180', 'VectorWiseBulkLoader', 'Ingres VectorWise 批量加载', 'This step interfaces with the Ingres VectorWise Bulk Loader \"COPY TABLE\" command.');
INSERT INTO `r_step_type` VALUES ('181', 'ConcatFields', 'Concat Fields', 'Concat fields together into a new field (similar to the Text File Output step)');
INSERT INTO `r_step_type` VALUES ('182', 'TypeExitExcelWriterStep', 'Microsoft Excel 输出', 'Writes or appends data to an Excel file');
INSERT INTO `r_step_type` VALUES ('183', 'OldTextFileInput', 'Old Text file input', '从一个文本文件（几种格式）里读取数据{0}这些数据可以被传递到下一个步骤里...');
INSERT INTO `r_step_type` VALUES ('184', 'AnalyticQuery', '分析查询', 'Execute analytic queries over a sorted dataset (LEAD/LAG/FIRST/LAST)');
INSERT INTO `r_step_type` VALUES ('185', 'FixedInput', '固定宽度文件输入', 'Fixed file input');
INSERT INTO `r_step_type` VALUES ('186', 'HadoopExitPlugin', 'MapReduce Output', 'Exit a Hadoop Mapper or Reducer transformation ');
INSERT INTO `r_step_type` VALUES ('187', 'SapInput', 'SAP 输入', 'Read data from SAP ERP, optionally with parameters');
INSERT INTO `r_step_type` VALUES ('188', 'PrioritizeStreams', '数据流优先级排序', 'Prioritize streams in an order way.');
INSERT INTO `r_step_type` VALUES ('189', 'CassandraOutput', 'Cassandra Output', 'Writes to a Cassandra table');
INSERT INTO `r_step_type` VALUES ('190', 'ValueMapper', '值映射', 'Maps values of a certain field from one value to another');
INSERT INTO `r_step_type` VALUES ('191', 'Constant', '增加常量', '给记录增加一到多个常量');
INSERT INTO `r_step_type` VALUES ('192', 'ExecSQLRow', '执行SQL脚本(字段流替换)', 'Execute SQL script extracted from a field\ncreated in a previous step.');
INSERT INTO `r_step_type` VALUES ('193', 'JavaFilter', '根据Java代码过滤记录', 'Filter rows using java code');
INSERT INTO `r_step_type` VALUES ('194', 'XMLOutput', 'XML Output', 'Write data to an XML file');
INSERT INTO `r_step_type` VALUES ('195', 'ReservoirSampling', '数据采样', '[Transform] Samples a fixed number of rows from the incoming stream');
INSERT INTO `r_step_type` VALUES ('196', 'SalesforceUpsert', 'Salesforce Upsert', 'Insert or update records in Salesforce module.');
INSERT INTO `r_step_type` VALUES ('197', 'RowsToResult', '复制记录到结果', '使用这个步骤把记录写到正在执行的任务.{0}信息将会被传递给同一个任务里的下一个条目.');
INSERT INTO `r_step_type` VALUES ('198', 'MonetDBAgileMart', 'MonetDB Agile Mart', 'Load data into MonetDB for Agile BI use cases');
INSERT INTO `r_step_type` VALUES ('199', 'ExecSQL', '执行SQL脚本', '执行一个SQL脚本, 另外，可以使用输入的记录作为参数');
INSERT INTO `r_step_type` VALUES ('200', 'Rest', 'REST Client', 'Consume RESTfull services.\nREpresentational State Transfer (REST) is a key design idiom that embraces a stateless client-server\narchitecture in which the web services are viewed as resources and can be identified by their URLs');
INSERT INTO `r_step_type` VALUES ('201', 'LucidDBStreamingLoader', 'LucidDB Streaming Loader', 'Load data into LucidDB by using Remote Rows UDX.');
INSERT INTO `r_step_type` VALUES ('202', 'TransExecutor', 'Transformation Executor', 'This step executes a Pentaho Data Integration transformation, sets parameters and passes rows.');
INSERT INTO `r_step_type` VALUES ('203', 'StepMetastructure', '流的元数据', 'This is a step to read the metadata of the incoming stream.');
INSERT INTO `r_step_type` VALUES ('204', 'Calculator', '计算器', '通过执行简单的计算创建一个新字段');
INSERT INTO `r_step_type` VALUES ('205', 'SplitFieldToRows3', '列拆分为多行', 'Splits a single string field by delimiter and creates a new row for each split term');
INSERT INTO `r_step_type` VALUES ('206', 'YamlInput', 'Yaml 输入', 'Read YAML source (file or stream) parse them and convert them to rows and writes these to one or more output. ');
INSERT INTO `r_step_type` VALUES ('207', 'FilesFromResult', '从结果获取文件', 'This step allows you to read filenames used or generated in a previous entry in a job.');
INSERT INTO `r_step_type` VALUES ('208', 'UnivariateStats', '单变量统计', 'This step computes some simple stats based on a single input field');
INSERT INTO `r_step_type` VALUES ('209', 'SSH', '运行SSH命令', 'Run SSH commands and returns result.');
INSERT INTO `r_step_type` VALUES ('210', 'XSLT', 'XSL Transformation', 'Make an XSL Transformation');
INSERT INTO `r_step_type` VALUES ('211', 'MailInput', '邮件信息输入', 'Read POP3/IMAP server and retrieve messages');
INSERT INTO `r_step_type` VALUES ('212', 'CloneRow', '克隆行', 'Clone a row as many times as needed');
INSERT INTO `r_step_type` VALUES ('213', 'HTTPPOST', 'HTTP Post', 'Call a web service request over HTTP by supplying a base URL by allowing parameters to be set dynamically');
INSERT INTO `r_step_type` VALUES ('214', 'TableAgileMart', 'Table Agile Mart', 'Load data into a table for Agile BI use cases');
INSERT INTO `r_step_type` VALUES ('215', 'GetSubFolders', '获取子目录名', 'Read a parent folder and return all subfolders');
INSERT INTO `r_step_type` VALUES ('216', 'NumberRange', '数值范围', 'Create ranges based on numeric field');
INSERT INTO `r_step_type` VALUES ('217', 'CreditCardValidator', '检验信用卡号码是否有效', 'The Credit card validator step will help you tell:\n(1) if a credit card number is valid (uses LUHN10 (MOD-10) algorithm)\n(2) which credit card vendor handles that number\n(VISA, MasterCard, Diners Club, EnRoute, American Express (AMEX),...)');
INSERT INTO `r_step_type` VALUES ('218', 'MonetDBBulkLoader', 'MonetDB 批量加载', 'Load data into MonetDB by using their bulk load command in streaming mode.');
INSERT INTO `r_step_type` VALUES ('219', 'Mail', '发送邮件', 'Send eMail.');
INSERT INTO `r_step_type` VALUES ('220', 'SecretKeyGenerator', '生成密钥', 'Generate secret key for algorithms such as DES, AES, TripleDES.');
INSERT INTO `r_step_type` VALUES ('221', 'PentahoReportingOutput', 'Pentaho 报表输出', 'Executes an existing report (PRPT)');
INSERT INTO `r_step_type` VALUES ('222', 'CreateSharedDimensions', 'Shared Dimension', 'Create shared dimensions for use with Streamlined Data Refinery.');

-- ----------------------------
-- Table structure for r_transformation
-- ----------------------------
DROP TABLE IF EXISTS `r_transformation`;
CREATE TABLE `r_transformation` (
  `ID_TRANSFORMATION` bigint(20) NOT NULL,
  `ID_DIRECTORY` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` mediumtext,
  `EXTENDED_DESCRIPTION` mediumtext,
  `TRANS_VERSION` varchar(255) DEFAULT NULL,
  `TRANS_STATUS` int(11) DEFAULT NULL,
  `ID_STEP_READ` int(11) DEFAULT NULL,
  `ID_STEP_WRITE` int(11) DEFAULT NULL,
  `ID_STEP_INPUT` int(11) DEFAULT NULL,
  `ID_STEP_OUTPUT` int(11) DEFAULT NULL,
  `ID_STEP_UPDATE` int(11) DEFAULT NULL,
  `ID_DATABASE_LOG` int(11) DEFAULT NULL,
  `TABLE_NAME_LOG` varchar(255) DEFAULT NULL,
  `USE_BATCHID` tinyint(1) DEFAULT NULL,
  `USE_LOGFIELD` tinyint(1) DEFAULT NULL,
  `ID_DATABASE_MAXDATE` int(11) DEFAULT NULL,
  `TABLE_NAME_MAXDATE` varchar(255) DEFAULT NULL,
  `FIELD_NAME_MAXDATE` varchar(255) DEFAULT NULL,
  `OFFSET_MAXDATE` double DEFAULT NULL,
  `DIFF_MAXDATE` double DEFAULT NULL,
  `CREATED_USER` varchar(255) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `MODIFIED_USER` varchar(255) DEFAULT NULL,
  `MODIFIED_DATE` datetime DEFAULT NULL,
  `SIZE_ROWSET` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_TRANSFORMATION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_transformation
-- ----------------------------

-- ----------------------------
-- Table structure for r_trans_attribute
-- ----------------------------
DROP TABLE IF EXISTS `r_trans_attribute`;
CREATE TABLE `r_trans_attribute` (
  `ID_TRANS_ATTRIBUTE` bigint(20) NOT NULL,
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `NR` int(11) DEFAULT NULL,
  `CODE` varchar(255) DEFAULT NULL,
  `VALUE_NUM` bigint(20) DEFAULT NULL,
  `VALUE_STR` mediumtext,
  PRIMARY KEY (`ID_TRANS_ATTRIBUTE`),
  UNIQUE KEY `IDX_TATT` (`ID_TRANSFORMATION`,`CODE`,`NR`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_trans_attribute
-- ----------------------------

-- ----------------------------
-- Table structure for r_trans_cluster
-- ----------------------------
DROP TABLE IF EXISTS `r_trans_cluster`;
CREATE TABLE `r_trans_cluster` (
  `ID_TRANS_CLUSTER` bigint(20) NOT NULL,
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_CLUSTER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_TRANS_CLUSTER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_trans_cluster
-- ----------------------------

-- ----------------------------
-- Table structure for r_trans_hop
-- ----------------------------
DROP TABLE IF EXISTS `r_trans_hop`;
CREATE TABLE `r_trans_hop` (
  `ID_TRANS_HOP` bigint(20) NOT NULL,
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_STEP_FROM` int(11) DEFAULT NULL,
  `ID_STEP_TO` int(11) DEFAULT NULL,
  `ENABLED` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_TRANS_HOP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_trans_hop
-- ----------------------------

-- ----------------------------
-- Table structure for r_trans_lock
-- ----------------------------
DROP TABLE IF EXISTS `r_trans_lock`;
CREATE TABLE `r_trans_lock` (
  `ID_TRANS_LOCK` bigint(20) NOT NULL,
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_USER` int(11) DEFAULT NULL,
  `LOCK_MESSAGE` mediumtext,
  `LOCK_DATE` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_TRANS_LOCK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_trans_lock
-- ----------------------------

-- ----------------------------
-- Table structure for r_trans_note
-- ----------------------------
DROP TABLE IF EXISTS `r_trans_note`;
CREATE TABLE `r_trans_note` (
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_NOTE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_trans_note
-- ----------------------------

-- ----------------------------
-- Table structure for r_trans_partition_schema
-- ----------------------------
DROP TABLE IF EXISTS `r_trans_partition_schema`;
CREATE TABLE `r_trans_partition_schema` (
  `ID_TRANS_PARTITION_SCHEMA` bigint(20) NOT NULL,
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_PARTITION_SCHEMA` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_TRANS_PARTITION_SCHEMA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_trans_partition_schema
-- ----------------------------

-- ----------------------------
-- Table structure for r_trans_slave
-- ----------------------------
DROP TABLE IF EXISTS `r_trans_slave`;
CREATE TABLE `r_trans_slave` (
  `ID_TRANS_SLAVE` bigint(20) NOT NULL,
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_SLAVE` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_TRANS_SLAVE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_trans_slave
-- ----------------------------

-- ----------------------------
-- Table structure for r_trans_step_condition
-- ----------------------------
DROP TABLE IF EXISTS `r_trans_step_condition`;
CREATE TABLE `r_trans_step_condition` (
  `ID_TRANSFORMATION` int(11) DEFAULT NULL,
  `ID_STEP` int(11) DEFAULT NULL,
  `ID_CONDITION` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_trans_step_condition
-- ----------------------------

-- ----------------------------
-- Table structure for r_user
-- ----------------------------
DROP TABLE IF EXISTS `r_user`;
CREATE TABLE `r_user` (
  `ID_USER` bigint(20) NOT NULL,
  `LOGIN` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `DESCRIPTION` varchar(255) DEFAULT NULL,
  `ENABLED` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_user
-- ----------------------------
INSERT INTO `r_user` VALUES ('1', 'admin', '2be98afc86aa7f2e4cb79ce71da9fa6d4', 'Administrator', 'User manager', '1');
INSERT INTO `r_user` VALUES ('2', 'guest', '2be98afc86aa7f2e4cb79ce77cb97bcce', 'Guest account', 'Read-only guest account', '1');

-- ----------------------------
-- Table structure for r_value
-- ----------------------------
DROP TABLE IF EXISTS `r_value`;
CREATE TABLE `r_value` (
  `ID_VALUE` bigint(20) NOT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `VALUE_TYPE` varchar(255) DEFAULT NULL,
  `VALUE_STR` varchar(255) DEFAULT NULL,
  `IS_NULL` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_VALUE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_value
-- ----------------------------
INSERT INTO `r_value` VALUES ('1', 'constant', 'String', 'mod_rec', '0');
INSERT INTO `r_value` VALUES ('2', 'constant', 'String', 'add_rec', '0');

-- ----------------------------
-- Table structure for r_version
-- ----------------------------
DROP TABLE IF EXISTS `r_version`;
CREATE TABLE `r_version` (
  `ID_VERSION` bigint(20) NOT NULL,
  `MAJOR_VERSION` int(11) DEFAULT NULL,
  `MINOR_VERSION` int(11) DEFAULT NULL,
  `UPGRADE_DATE` datetime DEFAULT NULL,
  `IS_UPGRADE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_VERSION`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of r_version
-- ----------------------------
INSERT INTO `r_version` VALUES ('1', '5', '0', '2017-05-10 15:49:19', '0');
