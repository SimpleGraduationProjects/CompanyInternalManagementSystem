SET FOREIGN_KEY_CHECKS=0;

CREATE TABLE `t_bumen` (
  `id` bigint(20) NOT NULL auto_increment,
  `bumenlock` int(11) NOT NULL,
  `bumenming` varchar(255) default NULL,
  `dianhua` varchar(255) default NULL,
  `jianjie` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `t_gongzuorizhi` (
  `id` bigint(20) NOT NULL auto_increment,
  `content` varchar(255) default NULL,
  `gongzuorizhilock` int(11) NOT NULL,
  `shijian` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `userid` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `t_info` (
  `id` bigint(20) NOT NULL auto_increment,
  `content` varchar(255) default NULL,
  `createtime` datetime default NULL,
  `infolock` int(11) NOT NULL,
  `leixing` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `bumenid` bigint(20) default NULL,
  `userid` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `t_kaoqin` (
  `id` bigint(20) NOT NULL auto_increment,
  `beizhu` varchar(255) default NULL,
  `createtime` varchar(255) default NULL,
  `kaoqinlock` int(11) NOT NULL,
  `leixing` varchar(255) default NULL,
  `shenhejieguo` varchar(255) default NULL,
  `shenhezhuangtai` varchar(255) default NULL,
  `userid` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `t_renwu` (
  `id` bigint(20) NOT NULL auto_increment,
  `content` varchar(255) default NULL,
  `renwulock` int(11) NOT NULL,
  `shijian` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `wanchenghuibao` varchar(255) default NULL,
  `wanchengpingggu` varchar(255) default NULL,
  `wanchengqingkuang` varchar(255) default NULL,
  `fromuserid` bigint(20) default NULL,
  `touserid` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `t_tongxunlu` (
  `id` bigint(20) NOT NULL auto_increment,
  `lianxidianhua` varchar(255) default NULL,
  `truename` varchar(255) default NULL,
  `zhuzhi` varchar(255) default NULL,
  `userid` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL auto_increment,
  `createtime` datetime default NULL,
  `jianjie` varchar(255) default NULL,
  `lianxidianhua` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `role` int(11) NOT NULL,
  `ruzhishijian` varchar(255) default NULL,
  `sfz` varchar(255) default NULL,
  `truename` varchar(255) default NULL,
  `userlock` int(11) NOT NULL,
  `username` varchar(255) default NULL,
  `xingbie` varchar(255) default NULL,
  `zhuzhi` varchar(255) default NULL,
  `bumenid` bigint(20) default NULL,
  `bumenid2` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `t_wendang` (
  `id` bigint(20) NOT NULL auto_increment,
  `content` varchar(255) default NULL,
  `createtime` datetime default NULL,
  `path` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `wendanglock` int(11) NOT NULL,
  `bumenid` bigint(20) default NULL,
  `userid` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `t_youjian` (
  `id` bigint(20) NOT NULL auto_increment,
  `content` varchar(255) default NULL,
  `createtime` datetime default NULL,
  `readzhuangtai` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `youjianlock` int(11) NOT NULL,
  `fromuserid` bigint(20) default NULL,
  `touserid` bigint(20) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `t_bumen` VALUES ('1', '0', '人事部', '10010', '管理人事信息!');
INSERT INTO `t_bumen` VALUES ('2', '0', '集成部', '10011', '负责系统集成');
INSERT INTO `t_bumen` VALUES ('3', '1', '实施部', '10016', '实施部！！');
INSERT INTO `t_bumen` VALUES ('4', '1', 'as', '12323232', '32323');
INSERT INTO `t_gongzuorizhi` VALUES ('1', '项目很忙', '0', '2019-03-14 08:00', '近来项目', '2');
INSERT INTO `t_gongzuorizhi` VALUES ('2', '23123', '1', '2019-03-14 08:00', '1231', '2');
INSERT INTO `t_info` VALUES ('1', '公司最新规章制度!', '2019-03-14 14:05:02', '0', '规章制度', '公司最新规章制度', null, '1');
INSERT INTO `t_info` VALUES ('2', '集成部全体成员接收！', '2019-03-14 15:04:38', '0', '公司新闻', '集成部新闻', '2', '1');
INSERT INTO `t_info` VALUES ('3', '123123', '2019-03-14 14:18:25', '1', '公司新闻', '123', '2', '1');
INSERT INTO `t_info` VALUES ('4', '232323', '2019-03-17 21:51:54', '1', '规章制度', '2323', null, '1');
INSERT INTO `t_info` VALUES ('5', 'xc', '2019-03-17 21:54:18', '0', '规章制度', 'zc', '1', '5');
INSERT INTO `t_kaoqin` VALUES ('1', '上班登记！！', '2019-03-14 14:33:33', '0', '上班登记', '通过', '审核通过', '2');
INSERT INTO `t_kaoqin` VALUES ('2', '上班了', '2019-03-14 13:25:37', '0', '上班登记', '捅咕审核', '审核通过', '2');
INSERT INTO `t_renwu` VALUES ('1', '整理部门最近文档！', '0', '2019-03-14 08:00', '整理文档', '已整理完！！！', '大约1个小时', '已完成', '5', '2');
INSERT INTO `t_renwu` VALUES ('2', 'java开发', '0', '2019-03-14 08:00', '开发', '完成了', '大约1个小时', '已完成', '5', '2');
INSERT INTO `t_renwu` VALUES ('3', 'jsp页面设计！', '0', '2013-11-08 08:00', 'jsp页面设计', '好了', '大概半天', '已完成', '5', '2');
INSERT INTO `t_renwu` VALUES ('4', '', '1', '2019-03-17 08:00', '', null, null, '未完成', '5', '2');
INSERT INTO `t_tongxunlu` VALUES ('3', '10021', '战三', '软件园', '5');
INSERT INTO `t_tongxunlu` VALUES ('4', '23223', '2323', '232', '1');
INSERT INTO `t_user` VALUES ('1', null, null, null, 'admin', '2', null, null, '总经理', '0', 'admin', null, null, null, null);
INSERT INTO `t_user` VALUES ('2', '2019-03-14 14:03:13', '人事部张一', '10012', 'zhangyi', '0', '2010-01-09', '211222198701108987', '张一', '0', 'zhangyi', '男', '大连', '1', null);
INSERT INTO `t_user` VALUES ('3', '2019-03-14 14:04:20', '集成部张二!', '10013', '111111', '1', '2012-01-09', '211221199909094567', '张二', '0', 'zhanger', '女', '二连浩特', '2', '2');
INSERT INTO `t_user` VALUES ('4', '2019-03-14 14:47:05', '张三人事部经理！', '10014', 'zhangsan', '0', '2009-09-10', '211225198708088765', '张三', '1', 'zhangsan_delete', '男', '沙河口区', '1', null);
INSERT INTO `t_user` VALUES ('5', '2019-03-14 14:55:20', '人事部经理！', '10015', 'zhangsan', '1', '2009-09-09', '211224199909092345', '张三', '0', 'zhangsan', '男', '沙河口区', '1', '1');
INSERT INTO `t_user` VALUES ('6', '2019-03-14 00:28:50', '张思张思', '10017', '111111', '0', '2010-09-09', '211226199901109876', '张思', '1', 'zhangsi_delete', '男', '坎帕拉', '2', null);
INSERT INTO `t_user` VALUES ('7', '2019-03-17 21:51:38', '32323', '23', '111111', '0', '232', '32323', '223', '1', '23_delete', '男', '232323', '1', null);
INSERT INTO `t_wendang` VALUES ('1', '部门必看文档！！！', '2019-03-14 14:23:42', '20131107012558.zip', '部门必看文档', '0', null, '1');
INSERT INTO `t_wendang` VALUES ('2', '系统说明', '2013-11-07 01:25:58', '20131107012558.zip', '系统说明', '0', null, '1');
INSERT INTO `t_wendang` VALUES ('3', '2323', '2019-03-17 21:52:21', '20190317215220.zip', '2323', '1', null, '1');
INSERT INTO `t_youjian` VALUES ('1', '张一接邮件！！', '2019-03-14 14:25:27', '已回复', '张一接邮件', '1', '1', '2');
INSERT INTO `t_youjian` VALUES ('2', '张一收到了此封邮件', '2019-03-14 14:35:25', '已阅读', '张一收到', '1', '2', '1');
INSERT INTO `t_youjian` VALUES ('3', '总经理发邮件！', '2019-03-14 13:23:13', '已阅读', '总经理发邮件', '1', '1', '2');
INSERT INTO `t_youjian` VALUES ('4', '公司最新规章制度 公司最新规章制度 ', '2019-03-14 14:19:44', '未阅读', '人事部经理', '0', '1', '5');
INSERT INTO `t_youjian` VALUES ('5', '最新邮件最新邮件', '2019-03-14 14:40:04', '已阅读', '最新邮件', '0', '1', '5');
INSERT INTO `t_youjian` VALUES ('6', '懂的', '2019-03-14 14:41:50', '未阅读', '收到了', '0', '5', '1');
INSERT INTO `t_youjian` VALUES ('7', '222', '2013-11-08 14:43:38', '已回复', '111', '0', '2', '1');
INSERT INTO `t_youjian` VALUES ('8', '232', '2019-03-17 21:52:59', '未阅读', '232', '1', '1', '2');
INSERT INTO `t_youjian` VALUES ('9', '2323', '2019-03-17 21:53:18', '已阅读', '2323', '0', '1', '2');
INSERT INTO `t_youjian` VALUES ('10', 'xcx', '2019-03-17 21:54:34', '未阅读', 'xcx', '0', '5', '1');
INSERT INTO `t_youjian` VALUES ('11', 'zcs', '2019-03-17 21:55:39', '未阅读', 'sadas', '0', '2', '3');
