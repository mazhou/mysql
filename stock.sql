# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.7.18)
# Database: winners
# Generation Time: 2017-09-06 01:44:53 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table tb_capital_conf
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_capital_conf`;

CREATE TABLE `tb_capital_conf` (
  `ACCOUNTID` varchar(64) NOT NULL COMMENT '券商的登录帐号,如:平安帐号。表的主键',
  `USERID` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID,是tb_user_basic的外键.',
  `MAXBUY` float NOT NULL DEFAULT '0' COMMENT '最大可买金额,单位:RMB,元.取float最大值',
  `BUYCOUNT` int(11) DEFAULT '0' COMMENT '买入次数,默认不限制',
  `BUYAMOUNT` float DEFAULT '0' COMMENT '取最大值，同上',
  `PERCENT` float NOT NULL DEFAULT '0.5' COMMENT '一次买入的比例，默认为0.5',
  `SPLITCOUNT` int(11) DEFAULT '1' COMMENT '拆成多少个单提交，默认为1',
  `ISTEST` smallint(6) DEFAULT '0' COMMENT '是否测试帐号,不交易',
  `ADDTIME` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间,添加之后不要修改',
  `MODTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '信息最后修改时间',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ACCOUNTID`),
  KEY `userid` (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_dict_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_dict_group`;

CREATE TABLE `tb_dict_group` (
  `ID` int(11) NOT NULL COMMENT '分组ID值,主键',
  `NAME` varchar(64) DEFAULT NULL COMMENT '组名称,主要为策略使用分配',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_dict_policygid
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_dict_policygid`;

CREATE TABLE `tb_dict_policygid` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NAME` varchar(256) DEFAULT NULL,
  `REMARK` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_dict_status
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_dict_status`;

CREATE TABLE `tb_dict_status` (
  `STATUS` int(11) NOT NULL COMMENT '主键',
  `NAME` varchar(64) DEFAULT NULL COMMENT '组名称,主要为策略使用分配',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`STATUS`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_dict_trade
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_dict_trade`;

CREATE TABLE `tb_dict_trade` (
  `ID` int(11) NOT NULL COMMENT '券商公司ID，主键',
  `NAME` varchar(64) DEFAULT NULL COMMENT '券商中文名称，用于页面展示下拉列表',
  `YYBID` int(11) DEFAULT '0' COMMENT '营业部代码,普通交易0,信用交易3,平安融资融券为1088',
  `BORROW` smallint(6) DEFAULT '0' COMMENT '是否支持融资融券',
  `STATUS` smallint(6) DEFAULT '1' COMMENT '0:不可用,1:正常可用,2:需通信密码',
  `ENDPOINT` varchar(8192) NOT NULL COMMENT '服务器IP:port:stats状态列表,可使用的服务器列表',
  `VERSION` varchar(32) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_log_login
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_log_login`;

CREATE TABLE `tb_log_login` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增，主键',
  `USERID` int(11) DEFAULT '0' COMMENT '用户ID',
  `LOGIN` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '登录时间',
  `LOGOUT` datetime DEFAULT NULL COMMENT '退出系统时间',
  `IPADDRESS` varchar(32) DEFAULT NULL COMMENT '登录IP地址',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  UNIQUE KEY `ROWID` (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_order_id
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_order_id`;

CREATE TABLE `tb_order_id` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `SEQUENCE` int(11) NOT NULL DEFAULT '0',
  `ORDERID` int(11) NOT NULL DEFAULT '0',
  `USERID` int(11) DEFAULT '0',
  `PGROUPID` int(11) DEFAULT '0' COMMENT '用户所在的组ID',
  `ACCOUNTID` varchar(64) NOT NULL DEFAULT '0',
  `TRADEID` int(11) DEFAULT '0',
  `POLICYID` int(11) NOT NULL DEFAULT '0' COMMENT '策略ID',
  `PNAME` varchar(64) DEFAULT NULL COMMENT '策略名称',
  `POLICYPARAM` varchar(10240) DEFAULT NULL COMMENT '策略使用的参数',
  `DIRTYPE` smallint(6) NOT NULL DEFAULT '1' COMMENT '0买入|1卖出|9撤单',
  `STOCKSET` text COMMENT '策略生效于哪些股票代码',
  `DEALSTOCK` varchar(1024) DEFAULT NULL COMMENT '已成交股票',
  `STARTTIME` int(11) DEFAULT '0' COMMENT '生效开始时间',
  `ENDTIME` int(11) DEFAULT '0' COMMENT '生效结束时间',
  `ISTEST` smallint(6) DEFAULT '1' COMMENT '是否测试单子',
  `BUYCOUNT` int(11) DEFAULT '0' COMMENT '买入多少股',
  `BUYAMOUNT` int(11) DEFAULT '0' COMMENT '买入多少钱，金额',
  `PERCENT` float DEFAULT '0' COMMENT '买入比例',
  `STATUS` smallint(11) NOT NULL DEFAULT '0' COMMENT '0:等待中,1:已读取,2:等待交易,3:部分成交,4:全部完成',
  `FLAG_SYSTEM` smallint(6) NOT NULL DEFAULT '1' COMMENT '账户是否可用,管理员可从后台禁用帐号',
  `FLAG_USER` smallint(6) NOT NULL DEFAULT '1' COMMENT '用户从页面来管理帐号是否启用,1启用 0禁用',
  `VISIBLE` smallint(6) DEFAULT '1' COMMENT '页面删除，0删除，1显示',
  `ADDTIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `MODTIME` datetime DEFAULT NULL,
  `FROMID` int(11) DEFAULT '0' COMMENT '1.周期单;2.盘中单;3.隔日单',
  `LABLE` varchar(64) DEFAULT NULL COMMENT '用户自定义标签',
  `REMARK` varchar(255) DEFAULT NULL,
  `CHECKED` smallint(6) DEFAULT NULL COMMENT '是否勾选下拉框',
  PRIMARY KEY (`ROWID`),
  UNIQUE KEY `uniqkey` (`ORDERID`,`ACCOUNTID`,`POLICYID`,`DIRTYPE`,`SEQUENCE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_order_id_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_order_id_history`;

CREATE TABLE `tb_order_id_history` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `SEQUENCE` int(11) NOT NULL DEFAULT '0',
  `ORDERID` int(11) NOT NULL DEFAULT '0',
  `USERID` int(11) DEFAULT '0',
  `PGROUPID` int(11) DEFAULT '0' COMMENT '用户所在的组ID',
  `ACCOUNTID` varchar(64) NOT NULL DEFAULT '0',
  `TRADEID` int(11) DEFAULT '0',
  `POLICYID` int(11) NOT NULL DEFAULT '0' COMMENT '策略ID',
  `PNAME` varchar(64) DEFAULT NULL COMMENT '策略名称',
  `POLICYPARAM` varchar(8192) DEFAULT NULL COMMENT '策略使用的参数',
  `DIRTYPE` smallint(6) NOT NULL DEFAULT '1' COMMENT '0买入|1卖出|9撤单',
  `STOCKSET` varchar(1024) DEFAULT NULL COMMENT '策略生效于哪些股票代码',
  `DEALSTOCK` varchar(1024) DEFAULT NULL COMMENT '已成交股票',
  `STARTTIME` int(11) DEFAULT '0' COMMENT '生效开始时间',
  `ENDTIME` int(11) DEFAULT '0' COMMENT '生效结束时间',
  `ISTEST` smallint(6) DEFAULT '1',
  `BUYCOUNT` int(11) DEFAULT '0' COMMENT '买入多少股',
  `BUYAMOUNT` float DEFAULT '0' COMMENT '买入多少钱，金额',
  `PERCENT` float DEFAULT '0' COMMENT '买入比例',
  `STATUS` smallint(11) NOT NULL DEFAULT '0' COMMENT '0:等待中,1:已读取,2:等待交易,3:部分成交,4:全部完成',
  `FLAG_SYSTEM` smallint(6) NOT NULL DEFAULT '1' COMMENT '账户是否可用,管理员可从后台禁用帐号',
  `FLAG_USER` smallint(6) NOT NULL DEFAULT '1' COMMENT '用户从页面来管理帐号是否启用',
  `VISIBLE` smallint(6) DEFAULT '1' COMMENT '页面删除，0删除，1显示',
  `ADDTIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `MODTIME` datetime DEFAULT NULL,
  `FROMID` int(11) DEFAULT '0' COMMENT '从哪种渠道插入的数据',
  `LABLE` varchar(64) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_order_id_period
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_order_id_period`;

CREATE TABLE `tb_order_id_period` (
  `ROWID` int(11) NOT NULL AUTO_INCREMENT,
  `SEQUENCE` int(11) NOT NULL DEFAULT '0' COMMENT 'sequence',
  `ORDERID` int(11) NOT NULL DEFAULT '0',
  `USERID` int(11) DEFAULT '0',
  `PGROUPID` int(11) DEFAULT '0' COMMENT '用户所在的组ID',
  `ACCOUNTID` varchar(64) NOT NULL DEFAULT '0',
  `TRADEID` int(11) DEFAULT '0',
  `POLICYID` int(11) NOT NULL DEFAULT '0' COMMENT '策略ID',
  `PNAME` varchar(64) DEFAULT NULL COMMENT '策略名称',
  `POLICYPARAM` varchar(8192) DEFAULT NULL COMMENT '策略使用的参数',
  `DIRTYPE` smallint(6) NOT NULL DEFAULT '1' COMMENT '0买入|1卖出|9撤单',
  `STOCKSET` text COMMENT '策略生效于哪些股票代码',
  `DEALSTOCK` varchar(1024) DEFAULT NULL COMMENT '已成交股票',
  `STARTTIME` int(11) DEFAULT NULL COMMENT '生效开始时间',
  `ENDTIME` int(11) DEFAULT NULL COMMENT '生效结束时间',
  `ISTEST` smallint(6) DEFAULT '1',
  `BUYCOUNT` int(11) DEFAULT '0' COMMENT '买入多少股',
  `BUYAMOUNT` int(11) DEFAULT '0' COMMENT '买入多少钱，金额',
  `PERCENT` float DEFAULT '0' COMMENT '买入比例',
  `STATUS` smallint(11) NOT NULL DEFAULT '0' COMMENT '0:等待中,1:已读取,2:等待交易,3:部分成交,4:全部完成',
  `FLAG_SYSTEM` smallint(6) NOT NULL DEFAULT '1' COMMENT '账户是否可用,管理员可从后台禁用帐号',
  `FLAG_USER` smallint(6) NOT NULL DEFAULT '1' COMMENT '用户从页面来管理帐号是否启用,0禁用，1启用',
  `VISIBLE` smallint(6) DEFAULT '1' COMMENT '页面删除，0删除，1显示',
  `ADDTIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `MODTIME` datetime DEFAULT NULL,
  `PRDSTART` date DEFAULT '2017-01-01',
  `PRDEND` date DEFAULT '2020-01-01',
  `FROMID` int(11) DEFAULT '1' COMMENT '1.周期单;2.盘中单;3.隔日单',
  `LABLE` varchar(64) DEFAULT NULL,
  `REMARK` varchar(255) DEFAULT NULL,
  `CHECKED` smallint(6) DEFAULT NULL COMMENT '是否勾选下拉框',
  PRIMARY KEY (`ROWID`),
  UNIQUE KEY `uniqkey` (`ORDERID`,`ACCOUNTID`,`POLICYID`,`DIRTYPE`,`SEQUENCE`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_policy_define
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_policy_define`;

CREATE TABLE `tb_policy_define` (
  `POLICYID` int(11) NOT NULL DEFAULT '0' COMMENT '策略ID,主键',
  `PGROUPID` int(11) DEFAULT '0' COMMENT '策略组ID,打板，低吸',
  `PNAME` varchar(255) NOT NULL COMMENT '策略名称,对策略的简要描述',
  `DIRTYPE` int(11) NOT NULL DEFAULT '0' COMMENT '策略类型:0买入/1卖出',
  `USERID` int(11) NOT NULL COMMENT '创建策略的用户ID',
  `USETYPE` varchar(255) NOT NULL COMMENT '可被免费，付费，包月使用？',
  `POLICYPARAM` varchar(8192) DEFAULT NULL COMMENT '策略使用的参数',
  `STARTTIME` int(11) DEFAULT NULL COMMENT '策略可生效的开始时间',
  `ENDTIME` int(11) DEFAULT NULL COMMENT '策略可生效的终止时间',
  `STOCKSET` text COMMENT '策略生效于哪些股票代码',
  `PERCENT` float DEFAULT '0.3' COMMENT '策略买入比例',
  `ISTEST` smallint(6) DEFAULT '1' COMMENT '是否是测试策略',
  `PRICES` int(11) NOT NULL DEFAULT '1000' COMMENT '策略的价值定义,原始策略价值',
  `ADDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '策略创建时间',
  `MODTIME` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '最后修改时间',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  `FLAG` smallint(6) DEFAULT NULL COMMENT '策略是否启用,可临时关闭策略,而不删除DB记录',
  PRIMARY KEY (`POLICYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_policy_usage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_policy_usage`;

CREATE TABLE `tb_policy_usage` (
  `USERID` int(11) NOT NULL DEFAULT '0' COMMENT '券商的帐号ID',
  `PNAME` varchar(256) DEFAULT NULL COMMENT '策略名称,对策略的简要描述',
  `PGROUPID` int(11) DEFAULT NULL COMMENT '策略组ID,打板，低吸',
  `POLICYID` int(11) NOT NULL DEFAULT '0' COMMENT '策略ID',
  `POLICYPARAM` varchar(8192) DEFAULT NULL COMMENT '策略使用的参数',
  `DIRTYPE` smallint(6) DEFAULT '1' COMMENT '0买入|1卖出|9撤单',
  `STARTTIME` int(11) DEFAULT NULL COMMENT '策略可生效的开始时间',
  `ENDTIME` int(11) DEFAULT NULL COMMENT '策略可生效的终止时间',
  `STOCKSET` text COMMENT '策略生效于哪些股票代码',
  `ISTEST` smallint(6) DEFAULT '1',
  `STATUS` smallint(6) DEFAULT '0' COMMENT '0:等待中,1:已读取,2:等待交易,3:部分成交,4:全部完成',
  `FLAG` smallint(6) DEFAULT '0' COMMENT '策略是否启用,可临时关闭策略,而不删除DB记录',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  `SUBSCRBLE` tinyint(1) DEFAULT NULL COMMENT '是否订阅，1订阅，0退订',
  `PERCENT` float DEFAULT '0.3' COMMENT '策略买入比例',
  `PRICES` int(11) DEFAULT '1000' COMMENT '策略的价值定义,原始策略价值',
  `ADDTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '策略创建时间',
  `MODTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '策略创建时间',
  PRIMARY KEY (`USERID`,`POLICYID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_snap_cancel_order
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_snap_cancel_order`;

CREATE TABLE `tb_snap_cancel_order` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增字段，主键',
  `ACCOUNTID` varchar(32) NOT NULL DEFAULT '0' COMMENT '证券代码',
  `LOGTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '获取数据时间',
  `ORDERTIME` varchar(32) DEFAULT '0' COMMENT '委托时间',
  `GDDM` varchar(32) DEFAULT NULL COMMENT '股东代码',
  `KIND` smallint(6) DEFAULT '0' COMMENT '帐号类别',
  `STOCKID` varchar(64) NOT NULL COMMENT '股票代码',
  `STOCKNAME` varchar(64) DEFAULT NULL COMMENT '股票名称',
  `ORDER_PRICE` float DEFAULT '0' COMMENT '委托价格',
  `ORDER_QUANTITY` int(11) DEFAULT '0' COMMENT '委托数量',
  `ORDER_AMOUNT` float DEFAULT '0' COMMENT '委托金额',
  `DEAL_PRICE` float DEFAULT '0' COMMENT '成交价格',
  `DEAL_QUANTITY` int(11) DEFAULT '0' COMMENT '成交数量',
  `CANCEL_QUANTITY` int(11) DEFAULT '0' COMMENT '已撤数量',
  `WEITUOID` varchar(32) DEFAULT '0' COMMENT '委托编号',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_snap_capital
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_snap_capital`;

CREATE TABLE `tb_snap_capital` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增字段，主键',
  `ACCOUNTID` varchar(32) NOT NULL DEFAULT '0' COMMENT '券商的帐号ID',
  `LOGTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '获取数据时间',
  `REMAINING` float DEFAULT '0' COMMENT '资金余额',
  `USEAVAIL` float DEFAULT '0' COMMENT '可用资金',
  `WITHDROW` float DEFAULT '0' COMMENT '可取资金',
  `FLIGHT` float DEFAULT '0' COMMENT '在途资金',
  `FREEZE` float DEFAULT '0' COMMENT '冻结资金',
  `STOCKVALUE` float DEFAULT '0' COMMENT '最新市值',
  `SUMASSERTS` float DEFAULT '0' COMMENT '总资产',
  `FLAG` int(11) DEFAULT '0' COMMENT '标志位',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_snap_hisorder
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_snap_hisorder`;

CREATE TABLE `tb_snap_hisorder` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增字段，主键',
  `ACCOUNTID` int(11) DEFAULT '0' COMMENT '券商的帐号ID',
  `LOGTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '获取数据时间',
  `STOCKID` int(11) DEFAULT '0' COMMENT '股票代码',
  `DIRTYPE` int(11) DEFAULT '0' COMMENT '交易类型：0买入 1卖出',
  `AMOUNT` float DEFAULT NULL COMMENT '交易金额',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_snap_position
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_snap_position`;

CREATE TABLE `tb_snap_position` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增字段，主键',
  `ACCOUNTID` varchar(32) NOT NULL DEFAULT '0' COMMENT '券商的帐号ID',
  `LOGTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '获取数据时间',
  `STOCKID` varchar(64) NOT NULL COMMENT '股票代码',
  `STOCKNAME` varchar(64) DEFAULT NULL COMMENT '股票名称',
  `REMAIN` int(11) DEFAULT '0' COMMENT '股份余额',
  `SELL` int(11) DEFAULT '0' COMMENT '可用股份',
  `COST` float DEFAULT '0' COMMENT '成本价',
  `PRICE` float DEFAULT '0' COMMENT '当前价',
  `NEWVALUE` float DEFAULT '0' COMMENT '最新市值',
  `PROFIT` float DEFAULT '0' COMMENT '浮动盈亏',
  `PROFITRATIO` float DEFAULT '0' COMMENT '盈亏比例',
  `FREESE` int(11) DEFAULT '0' COMMENT '冻结数量',
  `UNUFREESE` int(11) DEFAULT '0' COMMENT '异常冻结',
  `FLIGHT` int(11) DEFAULT '0' COMMENT '在途股份',
  `OWN` int(11) DEFAULT '0' COMMENT '当前拥股',
  `GDDM` varchar(32) DEFAULT NULL COMMENT '股东代码',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_trade_detail
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_trade_detail`;

CREATE TABLE `tb_trade_detail` (
  `ROWID` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '自增字段，主键',
  `LOGTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '系统时间',
  `SEQUENCE` int(11) DEFAULT '0',
  `ORDERID` varchar(64) DEFAULT NULL COMMENT 'orderid',
  `POLICYID` int(11) DEFAULT NULL COMMENT '策略ID',
  `PNAME` varchar(64) DEFAULT NULL COMMENT '策略名称',
  `TRADEID` int(11) DEFAULT NULL COMMENT '券商ID',
  `STOCKID` varchar(64) NOT NULL COMMENT '股票代码',
  `DIRTYPE` smallint(6) DEFAULT '9' COMMENT '0买入,1卖出,9撤单',
  `PRICETYPE` smallint(6) DEFAULT '0' COMMENT '委托方式',
  `ISTEST` smallint(6) DEFAULT '0' COMMENT '是否测试',
  `PRICE` float DEFAULT '0' COMMENT '买卖价格',
  `FACTOR` float DEFAULT '1' COMMENT '放大系数',
  `BUYTIMES` int(11) DEFAULT '10',
  `QUANTITY` int(11) DEFAULT '0' COMMENT '买卖数量',
  `CAPUSE` float DEFAULT '0' COMMENT '可用余额',
  `STATUS` int(11) DEFAULT '0' COMMENT '订单的状态',
  `USERID` int(11) DEFAULT '0' COMMENT '用户ID',
  `ACCOUNTID` varchar(32) NOT NULL DEFAULT '0' COMMENT '券商的帐号ID',
  `GDDM` varchar(32) DEFAULT NULL COMMENT '股东代码',
  `EXCHGID` int(11) DEFAULT '0' COMMENT '交易所ID， 上海1,深圳0(招商证券普通账户深圳是2)',
  `WEITUOID` varchar(32) DEFAULT NULL COMMENT '委托编号',
  `DETAIL` varchar(256) DEFAULT NULL COMMENT '券商返回-结果信息',
  `ERRORINFO` varchar(256) DEFAULT '0' COMMENT '券商返回-错误信息',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`ROWID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_user_account
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_user_account`;

CREATE TABLE `tb_user_account` (
  `USERID` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID,是tb_user_basic的外键.',
  `TRADEID` int(11) NOT NULL DEFAULT '0' COMMENT '券商ID,对应中文含义参考字典表.tb_dict_trade',
  `ACCOUNTID` varchar(64) NOT NULL COMMENT '券商的登录帐号,如:平安帐号。表的主键',
  `PASSWORD` varchar(64) NOT NULL COMMENT '券商的登录密码',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  `TXPASSWD` varchar(64) DEFAULT NULL COMMENT '通信密码,大部分券商不需要',
  `CANAME` varchar(64) DEFAULT NULL COMMENT '帐户中文名称',
  `EXCHGID_SH` varchar(32) DEFAULT NULL COMMENT '上交所交易ID,创建用户自动查询获取',
  `EXCHGID_SZ` varchar(32) DEFAULT NULL COMMENT '深交所交易ID,创建用户自动查询获取',
  `FLAG_SYSTEM` smallint(6) NOT NULL DEFAULT '1' COMMENT '账户是否可用,管理员可从后台禁用帐号',
  `FLAG_USER` smallint(6) NOT NULL DEFAULT '1' COMMENT '用户从页面来管理帐号是否启用',
  `VISIBLE` smallint(6) DEFAULT '1' COMMENT '是否页面可见,是否从页面展示给用户',
  `ADDTIME` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '添加时间,添加之后不要修改',
  `MODTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '信息最后修改时间',
  PRIMARY KEY (`ACCOUNTID`),
  KEY `userid` (`USERID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table tb_user_basic
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tb_user_basic`;

CREATE TABLE `tb_user_basic` (
  `USERID` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户ID,可登录使用',
  `GROUPID` int(11) DEFAULT '0' COMMENT '用户组ID,策略按分组控制.含义如:免费,vip1,vip2,vip3',
  `UENAME` varchar(64) NOT NULL COMMENT '英文名,可登录使用',
  `UCNAME` varchar(64) NOT NULL COMMENT '中文名,姓名',
  `PHONENUMBER` varchar(16) NOT NULL COMMENT '手机号,可登录使用',
  `PASSWORD` varchar(64) NOT NULL COMMENT '登录密码',
  `ADDRESS` varchar(255) NOT NULL COMMENT '通信地址',
  `ZIPCODE` varchar(16) DEFAULT NULL COMMENT '邮编',
  `TYPEID` int(11) NOT NULL DEFAULT '0' COMMENT '类型:0测试，1免费 2包月 3包年 9终身',
  `STATUS` int(11) NOT NULL DEFAULT '0' COMMENT '禁用状态: 0正常 1管理员禁用 2测试到期 3付费过期',
  `LASTLOGIN` varchar(256) DEFAULT NULL COMMENT '用户最后访问',
  `SESSIONID` varchar(256) DEFAULT NULL,
  `ONLINE` smallint(6) NOT NULL DEFAULT '0' COMMENT '登陆状态，0表示非登陆，1表示已登陆',
  `ADDTIME` datetime NOT NULL DEFAULT '1970-01-02 00:00:00' COMMENT '首次添加时间,一经创建不要修改',
  `MODTIME` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `REMARK` varchar(255) DEFAULT NULL COMMENT '备注',
  `EMAIL` varchar(256) DEFAULT NULL COMMENT '邮箱',
  `VRFYCODE` int(6) DEFAULT NULL COMMENT '校验码',
  `INVOKE` varchar(256) DEFAULT NULL COMMENT '激活邮箱的临时地址',
  PRIMARY KEY (`USERID`),
  UNIQUE KEY `username` (`UENAME`),
  UNIQUE KEY `phonenumber` (`PHONENUMBER`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table view_orderid_period
# ------------------------------------------------------------

DROP VIEW IF EXISTS `view_orderid_period`;

CREATE TABLE `view_orderid_period` (
   `ROWID` INT(11) NOT NULL DEFAULT '0',
   `SEQUENCE` INT(11) NOT NULL DEFAULT '0',
   `ORDERID` INT(11) NOT NULL DEFAULT '0',
   `USERID` INT(11) NULL DEFAULT '0',
   `PGROUPID` INT(11) NULL DEFAULT '0',
   `ACCOUNTID` VARCHAR(64) NOT NULL DEFAULT '0',
   `TRADEID` INT(11) NULL DEFAULT '0',
   `POLICYID` INT(11) NOT NULL DEFAULT '0',
   `PNAME` VARCHAR(64) NULL DEFAULT NULL,
   `POLICYPARAM` VARCHAR(8192) NULL DEFAULT NULL,
   `DIRTYPE` SMALLINT(6) NOT NULL DEFAULT '1',
   `STOCKSET` TEXT NULL DEFAULT NULL,
   `DEALSTOCK` VARCHAR(1024) NULL DEFAULT NULL,
   `STARTTIME` INT(11) NULL DEFAULT NULL,
   `ENDTIME` INT(11) NULL DEFAULT NULL,
   `ISTEST` SMALLINT(6) NULL DEFAULT '1',
   `BUYCOUNT` INT(11) NULL DEFAULT '0',
   `BUYAMOUNT` INT(11) NULL DEFAULT '0',
   `PERCENT` FLOAT NULL DEFAULT '0',
   `STATUS` SMALLINT(11) NOT NULL DEFAULT '0',
   `FLAG_SYSTEM` SMALLINT(6) NOT NULL DEFAULT '1',
   `FLAG_USER` SMALLINT(6) NOT NULL DEFAULT '1',
   `VISIBLE` SMALLINT(6) NULL DEFAULT '1',
   `ADDTIME` TIMESTAMP NULL DEFAULT NULL,
   `MODTIME` DATETIME NULL DEFAULT NULL,
   `PRDSTART` DATE NULL DEFAULT '2017-01-01',
   `PRDEND` DATE NULL DEFAULT '2020-01-01',
   `FROMID` INT(11) NULL DEFAULT '1',
   `LABLE` VARCHAR(64) NULL DEFAULT NULL,
   `REMARK` VARCHAR(255) NULL DEFAULT NULL,
   `CHECKED` SMALLINT(6) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table view_orderid_today
# ------------------------------------------------------------

DROP VIEW IF EXISTS `view_orderid_today`;

CREATE TABLE `view_orderid_today` (
   `ROWID` INT(11) NOT NULL DEFAULT '0',
   `SEQUENCE` INT(11) NOT NULL DEFAULT '0',
   `ORDERID` INT(11) NOT NULL DEFAULT '0',
   `USERID` INT(11) NULL DEFAULT '0',
   `PGROUPID` INT(11) NULL DEFAULT '0',
   `ACCOUNTID` VARCHAR(64) NOT NULL DEFAULT '0',
   `TRADEID` INT(11) NULL DEFAULT '0',
   `POLICYID` INT(11) NOT NULL DEFAULT '0',
   `PNAME` VARCHAR(64) NULL DEFAULT NULL,
   `POLICYPARAM` VARCHAR(10240) NULL DEFAULT NULL,
   `DIRTYPE` SMALLINT(6) NOT NULL DEFAULT '1',
   `STOCKSET` TEXT NULL DEFAULT NULL,
   `DEALSTOCK` VARCHAR(1024) NULL DEFAULT NULL,
   `STARTTIME` INT(11) NULL DEFAULT '0',
   `ENDTIME` INT(11) NULL DEFAULT '0',
   `ISTEST` SMALLINT(6) NULL DEFAULT '1',
   `BUYCOUNT` INT(11) NULL DEFAULT '0',
   `BUYAMOUNT` INT(11) NULL DEFAULT '0',
   `PERCENT` FLOAT NULL DEFAULT '0',
   `STATUS` SMALLINT(11) NOT NULL DEFAULT '0',
   `FLAG_SYSTEM` SMALLINT(6) NOT NULL DEFAULT '1',
   `FLAG_USER` SMALLINT(6) NOT NULL DEFAULT '1',
   `VISIBLE` SMALLINT(6) NULL DEFAULT '1',
   `ADDTIME` TIMESTAMP NULL DEFAULT NULL,
   `MODTIME` DATETIME NULL DEFAULT NULL,
   `FROMID` INT(11) NULL DEFAULT '0',
   `LABLE` VARCHAR(64) NULL DEFAULT NULL,
   `REMARK` VARCHAR(255) NULL DEFAULT NULL,
   `CHECKED` SMALLINT(6) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table view_orderid_tomorow
# ------------------------------------------------------------

DROP VIEW IF EXISTS `view_orderid_tomorow`;

CREATE TABLE `view_orderid_tomorow` (
   `ROWID` INT(11) NOT NULL DEFAULT '0',
   `SEQUENCE` INT(11) NOT NULL DEFAULT '0',
   `ORDERID` INT(11) NOT NULL DEFAULT '0',
   `USERID` INT(11) NULL DEFAULT '0',
   `PGROUPID` INT(11) NULL DEFAULT '0',
   `ACCOUNTID` VARCHAR(64) NOT NULL DEFAULT '0',
   `TRADEID` INT(11) NULL DEFAULT '0',
   `POLICYID` INT(11) NOT NULL DEFAULT '0',
   `PNAME` VARCHAR(64) NULL DEFAULT NULL,
   `POLICYPARAM` VARCHAR(8192) NULL DEFAULT NULL,
   `DIRTYPE` SMALLINT(6) NOT NULL DEFAULT '1',
   `STOCKSET` TEXT NULL DEFAULT NULL,
   `DEALSTOCK` VARCHAR(1024) NULL DEFAULT NULL,
   `STARTTIME` INT(11) NULL DEFAULT NULL,
   `ENDTIME` INT(11) NULL DEFAULT NULL,
   `ISTEST` SMALLINT(6) NULL DEFAULT '1',
   `BUYCOUNT` INT(11) NULL DEFAULT '0',
   `BUYAMOUNT` INT(11) NULL DEFAULT '0',
   `PERCENT` FLOAT NULL DEFAULT '0',
   `STATUS` SMALLINT(11) NOT NULL DEFAULT '0',
   `FLAG_SYSTEM` SMALLINT(6) NOT NULL DEFAULT '1',
   `FLAG_USER` SMALLINT(6) NOT NULL DEFAULT '1',
   `VISIBLE` SMALLINT(6) NULL DEFAULT '1',
   `ADDTIME` TIMESTAMP NULL DEFAULT NULL,
   `MODTIME` DATETIME NULL DEFAULT NULL,
   `PRDSTART` DATE NULL DEFAULT '2017-01-01',
   `PRDEND` DATE NULL DEFAULT '2020-01-01',
   `FROMID` INT(11) NULL DEFAULT '1',
   `LABLE` VARCHAR(64) NULL DEFAULT NULL,
   `REMARK` VARCHAR(255) NULL DEFAULT NULL,
   `CHECKED` SMALLINT(6) NULL DEFAULT NULL
) ENGINE=MyISAM;



# Dump of table view_user_account
# ------------------------------------------------------------

DROP VIEW IF EXISTS `view_user_account`;

CREATE TABLE `view_user_account` (
   `ACCOUNTID` VARCHAR(64) NOT NULL,
   `PASSWORD` VARCHAR(64) NOT NULL,
   `TXPASSWD` VARCHAR(64) NULL DEFAULT NULL,
   `USERID` INT(11) NOT NULL DEFAULT '0',
   `TRADEID` INT(11) NOT NULL DEFAULT '0',
   `EXCHGID_SH` VARCHAR(32) NULL DEFAULT NULL,
   `EXCHGID_SZ` VARCHAR(32) NULL DEFAULT NULL,
   `CANAME` VARCHAR(64) NULL DEFAULT NULL,
   `CANUSAGE` BIGINT(11) NOT NULL DEFAULT '0',
   `ISTEST` SMALLINT(6) NULL DEFAULT '0',
   `MAXBUY` FLOAT NULL DEFAULT '0',
   `BUYCOUNT` INT(11) NULL DEFAULT '0',
   `BUYAMOUNT` FLOAT NULL DEFAULT '0',
   `SPLITCOUNT` INT(11) NULL DEFAULT '1'
) ENGINE=MyISAM;





# Replace placeholder table for view_orderid_period with correct view syntax
# ------------------------------------------------------------

DROP TABLE `view_orderid_period`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_orderid_period` AS (select `tb_order_id_period`.`ROWID` AS `ROWID`,`tb_order_id_period`.`SEQUENCE` AS `SEQUENCE`,`tb_order_id_period`.`ORDERID` AS `ORDERID`,`tb_order_id_period`.`USERID` AS `USERID`,`tb_order_id_period`.`PGROUPID` AS `PGROUPID`,`tb_order_id_period`.`ACCOUNTID` AS `ACCOUNTID`,`tb_order_id_period`.`TRADEID` AS `TRADEID`,`tb_order_id_period`.`POLICYID` AS `POLICYID`,`tb_order_id_period`.`PNAME` AS `PNAME`,`tb_order_id_period`.`POLICYPARAM` AS `POLICYPARAM`,`tb_order_id_period`.`DIRTYPE` AS `DIRTYPE`,`tb_order_id_period`.`STOCKSET` AS `STOCKSET`,`tb_order_id_period`.`DEALSTOCK` AS `DEALSTOCK`,`tb_order_id_period`.`STARTTIME` AS `STARTTIME`,`tb_order_id_period`.`ENDTIME` AS `ENDTIME`,`tb_order_id_period`.`ISTEST` AS `ISTEST`,`tb_order_id_period`.`BUYCOUNT` AS `BUYCOUNT`,`tb_order_id_period`.`BUYAMOUNT` AS `BUYAMOUNT`,`tb_order_id_period`.`PERCENT` AS `PERCENT`,`tb_order_id_period`.`STATUS` AS `STATUS`,`tb_order_id_period`.`FLAG_SYSTEM` AS `FLAG_SYSTEM`,`tb_order_id_period`.`FLAG_USER` AS `FLAG_USER`,`tb_order_id_period`.`VISIBLE` AS `VISIBLE`,`tb_order_id_period`.`ADDTIME` AS `ADDTIME`,`tb_order_id_period`.`MODTIME` AS `MODTIME`,`tb_order_id_period`.`PRDSTART` AS `PRDSTART`,`tb_order_id_period`.`PRDEND` AS `PRDEND`,`tb_order_id_period`.`FROMID` AS `FROMID`,`tb_order_id_period`.`LABLE` AS `LABLE`,`tb_order_id_period`.`REMARK` AS `REMARK`,`tb_order_id_period`.`CHECKED` AS `CHECKED` from `tb_order_id_period` where (`tb_order_id_period`.`FROMID` <> 3));


# Replace placeholder table for view_user_account with correct view syntax
# ------------------------------------------------------------

DROP TABLE `view_user_account`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_user_account` AS (select `m`.`ACCOUNTID` AS `ACCOUNTID`,`m`.`PASSWORD` AS `PASSWORD`,`m`.`TXPASSWD` AS `TXPASSWD`,`m`.`USERID` AS `USERID`,`m`.`TRADEID` AS `TRADEID`,`m`.`EXCHGID_SH` AS `EXCHGID_SH`,`m`.`EXCHGID_SZ` AS `EXCHGID_SZ`,`m`.`CANAME` AS `CANAME`,(`m`.`FLAG_SYSTEM` * `m`.`FLAG_USER`) AS `CANUSAGE`,`s`.`ISTEST` AS `ISTEST`,`s`.`MAXBUY` AS `MAXBUY`,`s`.`BUYCOUNT` AS `BUYCOUNT`,`s`.`BUYAMOUNT` AS `BUYAMOUNT`,`s`.`SPLITCOUNT` AS `SPLITCOUNT` from (`tb_user_account` `m` left join `tb_capital_conf` `s` on((`m`.`ACCOUNTID` = `s`.`ACCOUNTID`))));


# Replace placeholder table for view_orderid_today with correct view syntax
# ------------------------------------------------------------

DROP TABLE `view_orderid_today`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_orderid_today` AS (select `tb_order_id`.`ROWID` AS `ROWID`,`tb_order_id`.`SEQUENCE` AS `SEQUENCE`,`tb_order_id`.`ORDERID` AS `ORDERID`,`tb_order_id`.`USERID` AS `USERID`,`tb_order_id`.`PGROUPID` AS `PGROUPID`,`tb_order_id`.`ACCOUNTID` AS `ACCOUNTID`,`tb_order_id`.`TRADEID` AS `TRADEID`,`tb_order_id`.`POLICYID` AS `POLICYID`,`tb_order_id`.`PNAME` AS `PNAME`,`tb_order_id`.`POLICYPARAM` AS `POLICYPARAM`,`tb_order_id`.`DIRTYPE` AS `DIRTYPE`,`tb_order_id`.`STOCKSET` AS `STOCKSET`,`tb_order_id`.`DEALSTOCK` AS `DEALSTOCK`,`tb_order_id`.`STARTTIME` AS `STARTTIME`,`tb_order_id`.`ENDTIME` AS `ENDTIME`,`tb_order_id`.`ISTEST` AS `ISTEST`,`tb_order_id`.`BUYCOUNT` AS `BUYCOUNT`,`tb_order_id`.`BUYAMOUNT` AS `BUYAMOUNT`,`tb_order_id`.`PERCENT` AS `PERCENT`,`tb_order_id`.`STATUS` AS `STATUS`,`tb_order_id`.`FLAG_SYSTEM` AS `FLAG_SYSTEM`,`tb_order_id`.`FLAG_USER` AS `FLAG_USER`,`tb_order_id`.`VISIBLE` AS `VISIBLE`,`tb_order_id`.`ADDTIME` AS `ADDTIME`,`tb_order_id`.`MODTIME` AS `MODTIME`,`tb_order_id`.`FROMID` AS `FROMID`,`tb_order_id`.`LABLE` AS `LABLE`,`tb_order_id`.`REMARK` AS `REMARK`,`tb_order_id`.`CHECKED` AS `CHECKED` from `tb_order_id` where (cast(now() as date) = cast(`tb_order_id`.`MODTIME` as date)));


# Replace placeholder table for view_orderid_tomorow with correct view syntax
# ------------------------------------------------------------

DROP TABLE `view_orderid_tomorow`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_orderid_tomorow` AS (select `tb_order_id_period`.`ROWID` AS `ROWID`,`tb_order_id_period`.`SEQUENCE` AS `SEQUENCE`,`tb_order_id_period`.`ORDERID` AS `ORDERID`,`tb_order_id_period`.`USERID` AS `USERID`,`tb_order_id_period`.`PGROUPID` AS `PGROUPID`,`tb_order_id_period`.`ACCOUNTID` AS `ACCOUNTID`,`tb_order_id_period`.`TRADEID` AS `TRADEID`,`tb_order_id_period`.`POLICYID` AS `POLICYID`,`tb_order_id_period`.`PNAME` AS `PNAME`,`tb_order_id_period`.`POLICYPARAM` AS `POLICYPARAM`,`tb_order_id_period`.`DIRTYPE` AS `DIRTYPE`,`tb_order_id_period`.`STOCKSET` AS `STOCKSET`,`tb_order_id_period`.`DEALSTOCK` AS `DEALSTOCK`,`tb_order_id_period`.`STARTTIME` AS `STARTTIME`,`tb_order_id_period`.`ENDTIME` AS `ENDTIME`,`tb_order_id_period`.`ISTEST` AS `ISTEST`,`tb_order_id_period`.`BUYCOUNT` AS `BUYCOUNT`,`tb_order_id_period`.`BUYAMOUNT` AS `BUYAMOUNT`,`tb_order_id_period`.`PERCENT` AS `PERCENT`,`tb_order_id_period`.`STATUS` AS `STATUS`,`tb_order_id_period`.`FLAG_SYSTEM` AS `FLAG_SYSTEM`,`tb_order_id_period`.`FLAG_USER` AS `FLAG_USER`,`tb_order_id_period`.`VISIBLE` AS `VISIBLE`,`tb_order_id_period`.`ADDTIME` AS `ADDTIME`,`tb_order_id_period`.`MODTIME` AS `MODTIME`,`tb_order_id_period`.`PRDSTART` AS `PRDSTART`,`tb_order_id_period`.`PRDEND` AS `PRDEND`,`tb_order_id_period`.`FROMID` AS `FROMID`,`tb_order_id_period`.`LABLE` AS `LABLE`,`tb_order_id_period`.`REMARK` AS `REMARK`,`tb_order_id_period`.`CHECKED` AS `CHECKED` from `tb_order_id_period` where ((`tb_order_id_period`.`FROMID` = 3) and (`tb_order_id_period`.`MODTIME` > (now() - interval 24 hour))));

--
-- Dumping routines (PROCEDURE) for database 'winners'
--
DELIMITER ;;

# Dump of PROCEDURE backup_orderid_everday
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `backup_orderid_everday` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`root`@`10.%`*/ /*!50003 PROCEDURE `backup_orderid_everday`(OUT rescode int(11))
BEGIN
INSERT INTO tb_order_id_history 
    (SEQUENCE, ORDERID, USERID, PGROUPID, ACCOUNTID, TRADEID, POLICYID, PNAME, POLICYPARAM, DIRTYPE, STOCKSET, DEALSTOCK, STARTTIME, ENDTIME, 
     ISTEST, BUYCOUNT, BUYAMOUNT, PERCENT, STATUS, FLAG_SYSTEM, FLAG_USER, ADDTIME, MODTIME, FROMID, LABLE, REMARK) SELECT
     SEQUENCE, ORDERID, USERID, PGROUPID, ACCOUNTID, TRADEID, POLICYID, PNAME, POLICYPARAM, DIRTYPE, STOCKSET, DEALSTOCK, STARTTIME, ENDTIME, 
     ISTEST, BUYCOUNT, BUYAMOUNT, PERCENT, STATUS, FLAG_SYSTEM, FLAG_USER, ADDTIME, MODTIME, FROMID, LABLE, REMARK from tb_order_id;
     
TRUNCATE TABLE tb_order_id;
DELETE FROM tb_order_id_period WHERE PRDEND<NOW()-INTERVAL 2 DAY;
INSERT INTO tb_order_id 
    (SEQUENCE, ORDERID, USERID, PGROUPID, ACCOUNTID, TRADEID, POLICYID, PNAME, POLICYPARAM, DIRTYPE, STOCKSET, DEALSTOCK, STARTTIME, ENDTIME, 
     ISTEST, BUYCOUNT, BUYAMOUNT, PERCENT, STATUS, FLAG_SYSTEM, FLAG_USER, ADDTIME, MODTIME, FROMID, LABLE, REMARK)  SELECT
     SEQUENCE, ORDERID, USERID, PGROUPID, ACCOUNTID, TRADEID, POLICYID, PNAME, POLICYPARAM, DIRTYPE, STOCKSET, DEALSTOCK, STARTTIME, ENDTIME, 
     ISTEST, BUYCOUNT, BUYAMOUNT, PERCENT, STATUS, FLAG_SYSTEM, FLAG_USER, NOW(), now(), FROMID, LABLE, REMARK FROM 
     tb_order_id_period WHERE FLAG_SYSTEM*FLAG_USER*VISIBLE!=0 and DATE(NOW()) BETWEEN PRDSTART AND PRDEND;
     
SET @rescode = 10;
select @rescode as rescode; 
END */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
DELIMITER ;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
