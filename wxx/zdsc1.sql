# Host: 127.0.0.1  (Version 5.5.42-log)
# Date: 2016-12-28 16:13:31
# Generator: MySQL-Front 5.4  (Build 1.42)
# Internet: http://www.mysqlfront.de/

/*!40101 SET NAMES utf8 */;

#
# Structure for table "com_buttongroup"
#

DROP TABLE IF EXISTS `com_buttongroup`;
CREATE TABLE `com_buttongroup` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ButtonName` varchar(50) NOT NULL,
  `BtnCode` varchar(50) DEFAULT NULL,
  `Icon` varchar(50) DEFAULT NULL,
  `Sort` int(11) DEFAULT NULL,
  `Remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=gb2312 COMMENT='com_页面功能按钮';

#
# Data for table "com_buttongroup"
#

/*!40000 ALTER TABLE `com_buttongroup` DISABLE KEYS */;
INSERT INTO `com_buttongroup` VALUES (1,'功能1','ljxfun1','icon icon-add',1,'添加'),(2,'功能2','ljxfun2','icon icon-edit',2,'编辑'),(3,'功能3','ljxfun3','icon icon-delete2',3,'删除'),(5,'功能4','ljxfun4','icon icon-magic',4,'查询'),(6,'功能5','ljxfun5','icon icon-nav',5,'浏览'),(10,'全部','3','icon icon-role',7,'全部'),(11,'功能6','ljxfun6','icon icon-users',6,'功能6');
/*!40000 ALTER TABLE `com_buttongroup` ENABLE KEYS */;

#
# Structure for table "com_loginlog"
#

DROP TABLE IF EXISTS `com_loginlog`;
CREATE TABLE `com_loginlog` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Userid` char(10) NOT NULL,
  `LoginIP` char(15) NOT NULL,
  `LoginDate` datetime NOT NULL,
  `Status` char(1) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=302 DEFAULT CHARSET=gb2312 COMMENT='com_登录日志表';

#
# Data for table "com_loginlog"
#

/*!40000 ALTER TABLE `com_loginlog` DISABLE KEYS */;
INSERT INTO `com_loginlog` VALUES (87,'admin','::1','2016-08-27 00:00:00','0','admin'),(88,'admin','::1','2016-08-27 00:00:00','0','admin'),(89,'admin','::1','2016-08-27 00:00:00','0','admin'),(90,'admin','::1','2016-08-27 00:00:00','0','admin'),(91,'admin','::1','2016-08-27 00:00:00','0','admin'),(92,'admin','::1','2016-08-27 00:00:00','0','admin'),(93,'admin','::1','2016-08-27 00:00:00','0','admin'),(94,'admin','::1','2016-08-27 00:00:00','0','admin'),(95,'admin','::1','2016-08-27 00:00:00','0','admin'),(96,'admin','::1','2016-08-27 00:00:00','0','admin'),(97,'admin','::1','2016-08-27 00:00:00','0','admin'),(98,'admin','::1','2016-08-27 00:00:00','0','admin'),(99,'admin','::1','2016-08-27 00:00:00','0','admin'),(100,'admin','::1','2016-08-27 00:00:00','0','admin'),(101,'admin','::1','2016-08-27 00:00:00','0','admin'),(102,'admin','::1','2016-08-27 00:00:00','0','admin'),(103,'admin','::1','2016-08-27 00:00:00','0','admin'),(104,'admin','::1','2016-08-27 00:00:00','0','admin'),(105,'admin','::1','2016-08-27 00:00:00','0','admin'),(106,'admin','::1','2016-08-27 00:00:00','0','admin'),(107,'admin','::1','2016-08-27 00:00:00','0','admin'),(108,'admin','::1','2016-08-27 00:00:00','0','admin'),(109,'admin','::1','2016-08-27 00:00:00','0','admin'),(110,'admin','::1','2016-08-27 00:00:00','0','admin'),(111,'admin','::1','2016-08-27 00:00:00','0','admin'),(112,'admin','::1','2016-08-28 00:00:00','0','admin'),(113,'admin','::1','2016-08-30 00:00:00','0','admin'),(114,'admin','::1','2016-08-30 00:00:00','0','admin'),(115,'admin','::1','2016-08-30 00:00:00','0','admin'),(116,'admin','::1','2016-08-30 00:00:00','0','admin'),(117,'admin','::1','2016-08-30 00:00:00','0','admin'),(118,'admin','::1','2016-08-30 00:00:00','0','admin'),(119,'admin','::1','2016-08-30 00:00:00','0','admin'),(120,'admin','::1','2016-08-30 00:00:00','0','admin'),(121,'admin','::1','2016-08-30 00:00:00','0','admin'),(122,'admin','::1','2016-08-30 00:00:00','0','admin'),(123,'admin','::1','2016-08-30 00:00:00','0','admin'),(124,'admin','::1','2016-08-30 00:00:00','0','admin'),(125,'admin','::1','2016-08-30 00:00:00','0','admin'),(126,'admin','::1','2016-08-30 00:00:00','0','admin'),(127,'admin','::1','2016-08-30 00:00:00','0','admin'),(128,'admin','::1','2016-08-30 00:00:00','0','admin'),(129,'admin','::1','2016-08-30 00:00:00','0','admin'),(130,'test','::1','2016-08-30 00:00:00','0','test'),(131,'test','::1','2016-08-30 00:00:00','0','test'),(132,'admin','::1','2016-08-30 00:00:00','0','admin'),(133,'test','::1','2016-08-30 00:00:00','0','张二丫'),(134,'test','::1','2016-08-30 00:00:00','0','张二丫'),(135,'test','::1','2016-08-30 00:00:00','0','张二丫'),(136,'test','::1','2016-08-30 00:00:00','0','张二丫'),(137,'test','::1','2016-08-30 00:00:00','0','张二丫'),(138,'test','::1','2016-08-30 00:00:00','0','张二丫'),(139,'admin','::1','2016-08-30 00:00:00','0','admin'),(140,'admin','::1','2016-08-31 00:00:00','0','admin'),(141,'test','::1','2016-08-31 00:00:00','0','张二丫'),(142,'admin','::1','2016-08-31 00:00:00','0','admin'),(143,'test','::1','2016-08-31 00:00:00','0','张二丫'),(144,'test','::1','2016-08-31 00:00:00','0','张二丫'),(145,'test','::1','2016-08-31 00:00:00','0','张二丫'),(146,'admin','::1','2016-08-31 00:00:00','0','admin'),(147,'admin','::1','2016-08-31 00:00:00','0','admin'),(148,'admin','::1','2016-08-31 00:00:00','0','admin'),(149,'admin','::1','2016-08-31 00:00:00','0','admin'),(150,'admin','::1','2016-08-31 00:00:00','0','admin'),(151,'admin','::1','2016-08-31 00:00:00','0','admin'),(152,'test','::1','2016-08-31 00:00:00','0','张二丫'),(153,'test','::1','2016-08-31 00:00:00','0','张二丫'),(154,'test','::1','2016-08-31 00:00:00','0','张二丫'),(155,'admin','::1','2016-09-01 00:00:00','0','admin'),(156,'admin','::1','2016-09-01 00:00:00','0','admin'),(157,'admin','::1','2016-09-01 00:00:00','0','admin'),(158,'aa','::1','2016-09-01 00:00:00','0','牛二虎'),(159,'aa','::1','2016-09-01 00:00:00','0','牛二虎'),(160,'aa','::1','2016-09-01 00:00:00','0','牛二虎'),(161,'aa','::1','2016-09-01 00:00:00','0','牛二虎'),(162,'aa','::1','2016-09-01 00:00:00','0','牛二虎'),(163,'aa','::1','2016-09-01 00:00:00','0','牛二虎'),(164,'aa','::1','2016-09-01 00:00:00','0','牛二虎'),(165,'aa','::1','2016-09-01 00:00:00','0','牛二虎'),(166,'aa','::1','2016-09-01 00:00:00','0','牛二虎'),(167,'aa','::1','2016-09-01 00:00:00','0','牛二虎'),(168,'aa','::1','2016-09-01 00:00:00','0','牛二虎'),(169,'admin','::1','2016-09-01 00:00:00','0','admin'),(170,'admin','::1','2016-09-01 00:00:00','0','admin'),(171,'admin','::1','2016-09-01 00:00:00','0','admin'),(172,'admin','::1','2016-09-04 00:00:00','0','admin'),(173,'admin','::1','2016-09-04 00:00:00','0','admin'),(174,'admin','::1','2016-09-04 00:00:00','0','admin'),(175,'admin','::1','2016-09-05 00:00:00','0','admin'),(176,'admin','::1','2016-09-05 00:00:00','0','admin'),(177,'admin','::1','2016-09-05 00:00:00','0','admin'),(178,'admin','::1','2016-09-05 00:00:00','0','admin'),(179,'admin','::1','2016-09-05 00:00:00','0','admin'),(180,'admin','::1','2016-09-05 00:00:00','0','admin'),(181,'admin','::1','2016-09-05 00:00:00','0','admin'),(182,'admin','::1','2016-09-05 00:00:00','0','admin'),(183,'admin','::1','2016-09-05 00:00:00','0','admin'),(184,'admin','::1','2016-09-06 00:00:00','0','admin'),(185,'admin','::1','2016-09-07 00:00:00','0','admin'),(186,'admin','::1','2016-09-14 00:00:00','0','admin'),(187,'admin','::1','2016-10-11 00:00:00','0','admin'),(188,'admin','::1','2016-10-11 00:00:00','0','admin'),(189,'admin','::1','2016-10-11 00:00:00','0','admin'),(190,'admin','::1','2016-10-11 00:00:00','0','admin'),(191,'admin','::1','2016-10-11 00:00:00','0','admin'),(192,'admin','::1','2016-10-11 00:00:00','0','admin'),(193,'admin','::1','2016-10-11 00:00:00','0','admin'),(194,'admin','::1','2016-10-11 00:00:00','0','admin'),(195,'admin','::1','2016-10-11 00:00:00','0','admin'),(196,'admin','::1','2016-10-12 00:00:00','0','admin'),(197,'admin','::1','2016-10-13 00:00:00','0','admin'),(198,'admin','::1','2016-12-02 00:00:00','0','admin'),(199,'admin','::1','2016-12-02 00:00:00','0','admin'),(200,'admin','::1','2016-12-02 00:00:00','0','admin'),(201,'admin','::1','2016-12-02 00:00:00','0','admin'),(202,'admin','::1','2016-12-02 00:00:00','0','admin'),(203,'admin','::1','2016-12-02 00:00:00','0','admin'),(204,'admin','::1','2016-12-03 00:00:00','0','admin'),(205,'admin','::1','2016-12-03 00:00:00','0','admin'),(206,'admin','::1','2016-12-03 00:00:00','0','admin'),(207,'admin','::1','2016-12-03 00:00:00','0','admin'),(208,'admin','::1','2016-12-03 00:00:00','0','admin'),(209,'admin','::1','2016-12-03 00:00:00','0','admin'),(210,'admin','::1','2016-12-03 00:00:00','0','admin'),(211,'admin','::1','2016-12-03 00:00:00','0','admin'),(212,'admin','::1','2016-12-03 00:00:00','0','admin'),(213,'admin','::1','2016-12-03 00:00:00','0','admin'),(214,'admin','::1','2016-12-03 00:00:00','0','admin'),(215,'admin','::1','2016-12-03 00:00:00','0','admin'),(216,'admin','::1','2016-12-03 00:00:00','0','admin'),(217,'admin','::1','2016-12-03 00:00:00','0','admin'),(218,'admin','::1','2016-12-03 00:00:00','0','admin'),(219,'admin','::1','2016-12-03 00:00:00','0','admin'),(220,'admin','::1','2016-12-03 00:00:00','0','admin'),(221,'admin','::1','2016-12-03 00:00:00','0','admin'),(222,'admin','::1','2016-12-03 00:00:00','0','admin'),(223,'admin','::1','2016-12-03 00:00:00','0','admin'),(224,'admin','::1','2016-12-03 00:00:00','0','admin'),(225,'admin','::1','2016-12-03 00:00:00','0','admin'),(226,'admin','::1','2016-12-03 00:00:00','0','admin'),(227,'admin','::1','2016-12-03 00:00:00','0','admin'),(228,'admin','::1','2016-12-03 00:00:00','0','admin'),(229,'admin','::1','2016-12-03 00:00:00','0','admin'),(230,'admin','::1','2016-12-03 00:00:00','0','admin'),(231,'admin','::1','2016-12-03 00:00:00','0','admin'),(232,'admin','::1','2016-12-03 00:00:00','0','admin'),(233,'admin','::1','2016-12-03 00:00:00','0','admin'),(234,'admin','::1','2016-12-03 00:00:00','0','admin'),(235,'admin','::1','2016-12-03 00:00:00','0','admin'),(236,'admin','::1','2016-12-04 00:00:00','0','admin'),(237,'admin','::1','2016-12-04 00:00:00','0','admin'),(238,'admin','::1','2016-12-04 00:00:00','0','admin'),(239,'admin','::1','2016-12-04 00:00:00','0','admin'),(240,'admin','::1','2016-12-04 00:00:00','0','admin'),(241,'admin','::1','2016-12-04 00:00:00','0','admin'),(242,'admin','::1','2016-12-04 00:00:00','0','admin'),(243,'admin','::1','2016-12-04 00:00:00','0','admin'),(244,'admin','::1','2016-12-04 00:00:00','0','admin'),(245,'admin','::1','2016-12-05 00:00:00','0','admin'),(246,'admin','::1','2016-12-05 00:00:00','0','admin'),(247,'admin','::1','2016-12-05 00:00:00','0','admin'),(248,'admin','::1','2016-12-05 00:00:00','0','admin'),(249,'admin','::1','2016-12-05 00:00:00','0','admin'),(250,'admin','::1','2016-12-05 00:00:00','0','admin'),(251,'admin','::1','2016-12-06 00:00:00','0','admin'),(252,'admin','::1','2016-12-06 00:00:00','0','admin'),(253,'admin','::1','2016-12-06 00:00:00','0','admin'),(254,'admin','::1','2016-12-06 00:00:00','0','admin'),(255,'admin','::1','2016-12-06 00:00:00','0','admin'),(256,'admin','::1','2016-12-06 00:00:00','0','admin'),(257,'admin','::1','2016-12-07 00:00:00','0','admin'),(258,'admin','::1','2016-12-08 00:00:00','0','admin'),(259,'admin','::1','2016-12-08 00:00:00','0','admin'),(260,'admin','::1','2016-12-08 00:00:00','0','admin'),(261,'admin','::1','2016-12-08 00:00:00','0','admin'),(262,'admin','::1','2016-12-08 00:00:00','0','admin'),(263,'admin','::1','2016-12-08 00:00:00','0','admin'),(264,'admin','::1','2016-12-08 00:00:00','0','admin'),(265,'admin','::1','2016-12-08 00:00:00','0','admin'),(266,'admin','::1','2016-12-08 00:00:00','0','admin'),(267,'admin','::1','2016-12-08 00:00:00','0','admin'),(268,'admin','::1','2016-12-08 00:00:00','0','admin'),(269,'admin','::1','2016-12-09 00:00:00','0','admin'),(270,'admin','::1','2016-12-09 00:00:00','0','admin'),(271,'admin','::1','2016-12-09 00:00:00','0','admin'),(272,'admin','::1','2016-12-10 00:00:00','0','admin'),(273,'admin','::1','2016-12-11 00:00:00','0','admin'),(274,'admin','::1','2016-12-14 00:00:00','0','admin'),(275,'admin','::1','2016-12-18 00:00:00','0','admin'),(276,'admin','::1','2016-12-18 00:00:00','0','admin'),(277,'admin','::1','2016-12-18 00:00:00','0','admin'),(278,'admin','::1','2016-12-18 00:00:00','0','admin'),(279,'1312531360','::1','2016-12-18 00:00:00','0','西西'),(280,'1312531360','::1','2016-12-18 00:00:00','0','西西'),(281,'admin','::1','2016-12-18 00:00:00','0','admin'),(282,'admin','::1','2016-12-20 00:00:00','0','admin'),(283,'admin','::1','2016-12-20 00:00:00','0','admin'),(284,'admin','::1','2016-12-20 00:00:00','0','admin'),(285,'admin','::1','2016-12-20 00:00:00','0','admin'),(286,'admin','::1','2016-12-20 00:00:00','0','admin'),(287,'admin','::1','2016-12-21 00:00:00','0','admin'),(288,'admin','::1','2016-12-21 00:00:00','0','admin'),(289,'admin','::1','2016-12-21 00:00:00','0','admin'),(290,'admin','::1','2016-12-22 00:00:00','0','admin'),(291,'admin','::1','2016-12-22 00:00:00','0','admin'),(292,'admin','::1','2016-12-22 00:00:00','0','admin'),(293,'admin','::1','2016-12-22 00:00:00','0','admin'),(294,'admin','::1','2016-12-22 00:00:00','0','admin'),(295,'admin','::1','2016-12-27 00:00:00','0','admin'),(296,'admin','::1','2016-12-27 00:00:00','0','admin'),(297,'admin','::1','2016-12-27 00:00:00','0','admin'),(298,'admin','::1','2016-12-27 00:00:00','0','admin'),(299,'admin','::1','2016-12-28 00:00:00','0','admin'),(300,'admin','::1','2016-12-28 00:00:00','0','admin'),(301,'admin','::1','2016-12-28 00:00:00','0','admin');
/*!40000 ALTER TABLE `com_loginlog` ENABLE KEYS */;

#
# Structure for table "com_navigationandbutton"
#

DROP TABLE IF EXISTS `com_navigationandbutton`;
CREATE TABLE `com_navigationandbutton` (
  `NavigationId` int(11) NOT NULL,
  `ButtonId` int(11) NOT NULL,
  `buttonstr` varchar(16) DEFAULT NULL,
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=gb2312;

#
# Data for table "com_navigationandbutton"
#

/*!40000 ALTER TABLE `com_navigationandbutton` DISABLE KEYS */;
INSERT INTO `com_navigationandbutton` VALUES (260,1,'添加',1),(260,2,'',2),(260,3,'',3),(260,5,'',4),(260,6,'',5),(260,11,'',6),(260,10,NULL,7),(322,1,'添加',8),(322,2,'',9),(322,3,'',10),(322,5,'',11),(322,6,'',12),(322,11,'',13),(322,10,NULL,14),(285,1,'添加',15),(285,2,'',16),(285,3,'',17),(285,5,'',18),(285,6,'',19),(285,11,'',20),(285,10,NULL,21),(293,1,'添加',22),(293,2,'',23),(293,3,'',24),(293,5,'',25),(293,6,'',26),(293,11,'',27),(293,10,NULL,28),(263,1,'添加',29),(263,2,'',30),(263,3,'',31),(263,5,'',32),(263,6,'',33),(263,11,'',34),(263,10,NULL,35),(331,1,'添加',36),(331,2,'',37),(331,3,'',38),(331,5,'',39),(331,6,'',40),(331,11,'',41),(331,10,NULL,42),(332,1,'添加',43),(332,2,'',44),(332,3,'',45),(332,5,'',46),(332,6,'',47),(332,11,'',48),(332,10,NULL,49),(334,1,'添加',50),(334,2,'编辑',51),(334,3,'删除',52),(334,5,'查询',53),(334,6,'浏览',54),(334,11,'',55),(334,10,NULL,56),(338,1,'添加',57),(338,2,'编辑',58),(338,3,'删除',59),(338,5,'查询',60),(338,6,'浏览',61),(338,11,'',62),(338,10,NULL,63);
/*!40000 ALTER TABLE `com_navigationandbutton` ENABLE KEYS */;

#
# Structure for table "com_orgadduser"
#

DROP TABLE IF EXISTS `com_orgadduser`;
CREATE TABLE `com_orgadduser` (
  `OrgId` int(11) NOT NULL,
  `UserId` varchar(10) NOT NULL DEFAULT '',
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=gb2312 COMMENT='com_用户部门关联表';

#
# Data for table "com_orgadduser"
#

/*!40000 ALTER TABLE `com_orgadduser` DISABLE KEYS */;
INSERT INTO `com_orgadduser` VALUES (1,'1000000000',1),(1103000000,'1000000002',2),(1102000000,'1000000006',3),(1100000000,'1000000001',4),(1103002000,'1000000005',5),(1103001000,'1000000003',6),(1103002000,'1000000004',7);
/*!40000 ALTER TABLE `com_orgadduser` ENABLE KEYS */;

#
# Structure for table "com_organization"
#

DROP TABLE IF EXISTS `com_organization`;
CREATE TABLE `com_organization` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `orgid` varchar(10) DEFAULT NULL COMMENT '部门编号',
  `Agency` varchar(50) NOT NULL,
  `ParentId` int(11) NOT NULL,
  `Sort` int(11) DEFAULT NULL,
  `Person` char(10) DEFAULT NULL,
  `Remark` varchar(50) DEFAULT NULL,
  `gongsibianhao` varchar(30) DEFAULT NULL COMMENT '企业代码或公司编号',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=gb2312 COMMENT='com_部门信息表';

#
# Data for table "com_organization"
#

/*!40000 ALTER TABLE `com_organization` DISABLE KEYS */;
INSERT INTO `com_organization` VALUES (1,'1100000000','T公司',0,0,'周**',NULL,NULL),(12,'1101000000','采购部',1,1,'',NULL,NULL),(13,'1102000000','人事部',1,3,'',NULL,NULL),(14,'1103000000','研发部',1,2,'',NULL,NULL),(15,'1101001000','原材料采购',12,1,'ff 22','sdfdsf',''),(16,'1101001001','原材采1部',15,1,'天睛','sdfsdf22',''),(17,'1103001000','硬件部门',14,2,'abc','323',''),(18,'1103002000','软件部门',14,1,'李三','2',NULL),(21,'1103001001','测试11',17,2,'仍','地',''),(22,'1103002001','测试12',18,1,'21','朋',''),(23,'1103001002','测试21',17,1,'s','2',NULL);
/*!40000 ALTER TABLE `com_organization` ENABLE KEYS */;

#
# Structure for table "com_user"
#

DROP TABLE IF EXISTS `com_user`;
CREATE TABLE `com_user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `userid` varchar(10) NOT NULL DEFAULT '' COMMENT '用户编号',
  `logincount` varchar(30) DEFAULT NULL COMMENT '登录帐号',
  `username` varchar(30) DEFAULT NULL COMMENT '用户姓名',
  `orgid` varchar(10) DEFAULT NULL COMMENT '部门编号',
  `password` varchar(30) DEFAULT NULL COMMENT '密码',
  `usertype` varchar(10) DEFAULT NULL COMMENT '类别',
  `status` varchar(10) DEFAULT NULL COMMENT '状态',
  `gongsibianhao` varchar(30) DEFAULT NULL COMMENT '企业代码或公司编号',
  `orgname` varchar(30) DEFAULT NULL COMMENT '部门名称',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=gb2312 COMMENT='用户信息表';

#
# Data for table "com_user"
#

/*!40000 ALTER TABLE `com_user` DISABLE KEYS */;
INSERT INTO `com_user` VALUES (1,'1000000001','admin','admin','1100000000','732965E9EDEB1791','1','1','','T公司'),(2,'1000000002','abc','abc','1103000000','732965E9EDEB1791','2','','','研发部'),(3,'1000000003','bb','bb','1103001000','732965E9EDEB1791','1','','','硬件部门'),(4,'1000000004','aa','牛二虎','1103002000','57F7160187224D02','22','','1221','软件部门'),(5,'1000000005','test','张二丫','1103002000','732965E9EDEB1791','1','','1212','软件部门'),(6,'1000000006','aa','sadf','1102000000','732965E9EDEB1791','1','正常','11','人事部');
/*!40000 ALTER TABLE `com_user` ENABLE KEYS */;

#
# Structure for table "com_userlogin"
#

DROP TABLE IF EXISTS `com_userlogin`;
CREATE TABLE `com_userlogin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` char(10) NOT NULL,
  `LoginName` varchar(20) NOT NULL,
  `LoginPassword` varchar(20) NOT NULL,
  `Status` int(11) NOT NULL,
  `LastLoginIP` char(15) DEFAULT NULL,
  `LastLoginDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=gb2312 COMMENT='com_登录状态表';

#
# Data for table "com_userlogin"
#


#
# Structure for table "com_zidian"
#

DROP TABLE IF EXISTS `com_zidian`;
CREATE TABLE `com_zidian` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `xianshizhi` varchar(30) DEFAULT NULL COMMENT '显示值',
  `xuanzezhi` varchar(30) DEFAULT NULL COMMENT '选择值',
  `leibie` varchar(30) DEFAULT NULL COMMENT '类别',
  `beifen` varchar(30) DEFAULT NULL COMMENT '备份',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=gb2312 COMMENT='T_字典表';

#
# Data for table "com_zidian"
#

/*!40000 ALTER TABLE `com_zidian` DISABLE KEYS */;
INSERT INTO `com_zidian` VALUES (1,'aa','aa','llbb','333'),(2,'abd','dd','llbb','af'),(3,'dsf','df','fd','fd'),(4,'审核','审核','公司状态',''),(5,'正常','正常','公司状态',''),(6,'关闭','关闭','公司状态',''),(7,'工人','','岗位',''),(8,'科长','','岗位',''),(9,'经理','','岗位',''),(10,'男','','性别',''),(11,'女','','性别',''),(12,'test','1','test2','2'),(13,'正常','正常','人员状态',''),(14,'离职','离职','人员状态',''),(15,'LV0','0','积分','1'),(16,'LV1','20','积分','0.99'),(17,'LV2','40','积分','0.95'),(18,'LV3','80','积分','0.9'),(19,'LV4','160','积分','0.88'),(20,'LV5','320','积分','0.85');
/*!40000 ALTER TABLE `com_zidian` ENABLE KEYS */;

#
# Structure for table "gwc"
#

DROP TABLE IF EXISTS `gwc`;
CREATE TABLE `gwc` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) DEFAULT NULL,
  `foodname` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

#
# Data for table "gwc"
#

INSERT INTO `gwc` VALUES (11,'1','百味长寿面',25,2),(12,'1','清心面',20,3),(33,'131267156729024553','飘香小粥',20,1),(34,'131267156729024553','悠悠我心',20,1),(35,'131267156729024553','水晶饺子',20,2),(36,'131267156729024553','清心面',20,1),(37,'131267156729024553','特色烤虾',30,1),(38,'131267156729024553','孜然羊肉',40.5,1),(39,'131267156729024553','鱿鱼',25,1);

#
# Structure for table "kaloneaddress"
#

DROP TABLE IF EXISTS `kaloneaddress`;
CREATE TABLE `kaloneaddress` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `name` varchar(255) DEFAULT NULL COMMENT '收货人',
  `userID` varchar(255) DEFAULT NULL COMMENT '客户编号',
  `new1` varchar(255) DEFAULT NULL,
  `new2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

#
# Data for table "kaloneaddress"
#

/*!40000 ALTER TABLE `kaloneaddress` DISABLE KEYS */;
INSERT INTO `kaloneaddress` VALUES (3,'北区','123','西西','131253136070559879',NULL,NULL),(12,'北区','17855827663','ww','2',NULL,NULL),(14,'1111','13333333333','111','131273666464779104','',''),(18,'1111','1111111','111','2','','');
/*!40000 ALTER TABLE `kaloneaddress` ENABLE KEYS */;

#
# Structure for table "kaloneadmin"
#

DROP TABLE IF EXISTS `kaloneadmin`;
CREATE TABLE `kaloneadmin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT '' COMMENT '人员名称',
  `account` varchar(255) DEFAULT NULL COMMENT '帐号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `gender` varchar(255) DEFAULT NULL COMMENT '性别',
  `category` varchar(255) DEFAULT NULL COMMENT '类别',
  `role` varchar(255) DEFAULT NULL COMMENT '角色',
  `new1` varchar(255) DEFAULT NULL,
  `new2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理人员信息';

#
# Data for table "kaloneadmin"
#

/*!40000 ALTER TABLE `kaloneadmin` DISABLE KEYS */;
INSERT INTO `kaloneadmin` VALUES (1,'w','www','111111',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `kaloneadmin` ENABLE KEYS */;

#
# Structure for table "kalonebasicinfo"
#

DROP TABLE IF EXISTS `kalonebasicinfo`;
CREATE TABLE `kalonebasicinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` varchar(50) NOT NULL DEFAULT '' COMMENT '客户编号',
  `userName` varchar(80) NOT NULL DEFAULT '' COMMENT '客户名称',
  `contact` varchar(100) DEFAULT NULL COMMENT '联系人',
  `phone` varchar(50) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(255) DEFAULT NULL COMMENT '电子邮箱',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `qq` varchar(50) DEFAULT NULL COMMENT 'qq号',
  `new1` varchar(255) DEFAULT NULL COMMENT '密码',
  `new2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='客户基本信息';

#
# Data for table "kalonebasicinfo"
#

/*!40000 ALTER TABLE `kalonebasicinfo` DISABLE KEYS */;
INSERT INTO `kalonebasicinfo` VALUES (2,'131253102794474737','2','2','2','2','2','2','undefined','undefined'),(3,'131253136070559879','西西','西西','123','1767941752@qq.com','北区','1111111','1','1'),(4,'1','chl','1','1','1','1','1','1',NULL),(5,'2','ww','w','17855827663','1209281817@qq.com','xxxx','1209281817','123456',NULL),(6,'131267156729024553','13000000000','a','13000000000','17855827663@163.com','gdhgjhg','1209281817','123','undefined'),(7,'131273666464779104','111','111','13333333333','','1111','','123456','');
/*!40000 ALTER TABLE `kalonebasicinfo` ENABLE KEYS */;

#
# Structure for table "kalonebusiness"
#

DROP TABLE IF EXISTS `kalonebusiness`;
CREATE TABLE `kalonebusiness` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL COMMENT '人员名称',
  `userID` varchar(255) DEFAULT NULL COMMENT '客户编号',
  `orderID` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `address` varchar(255) DEFAULT NULL COMMENT '地址',
  `phone` varchar(50) DEFAULT NULL COMMENT '联系人电话',
  `totalPrice` float DEFAULT NULL COMMENT '总价',
  `status` varchar(255) DEFAULT NULL COMMENT '订单状态',
  `addTime` varchar(255) DEFAULT NULL COMMENT '添加时间',
  `shipTime` varchar(255) DEFAULT NULL COMMENT '发货时间',
  `finishTime` varchar(255) DEFAULT '' COMMENT '完成时间',
  `new1` varchar(255) DEFAULT NULL,
  `new2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='客户日常业务往来记录';

#
# Data for table "kalonebusiness"
#

/*!40000 ALTER TABLE `kalonebusiness` DISABLE KEYS */;
INSERT INTO `kalonebusiness` VALUES (4,'3','131253102794474737','131253102794474739','2','2',20,'已发货','2016/12/4','2016/12/28 12:49:38','0000-0','','undefined'),(5,'ww','2','131273120131211726','111','17855827663',40,'已完成','2016/12/27 19:33:34','','','',''),(6,'ww','2','131273258881969763','北区','17855827663',25,'未处理','2016/12/27 23:24:49','','','',''),(14,'ww','2','131273738185930825','北区','17855827663',90,'已完成','2016/12/28 12:43:40','','','',''),(15,'ww','2','131273740917190961','西区','17855827663',70,'已完成','2016/12/28 12:48:13','2016/12/28 12:50:00','2016/12/28 12:50:22','',''),(16,'ww','2','131273758746446643','北区','17855827663',45,'未处理','2016/12/28 13:17:56','','','',''),(17,'ww','2','131273834721799726','xxx','1111111',55,'未处理','2016/12/28 15:24:34','','','',''),(18,'ww','2','131273842967703131','北区','17855827663',45,'已完成','2016/12/28 15:38:18','2016/12/28 15:39:06','','',''),(19,'ww','2','131273855783384848','北区','17855827663',20,'未处理','2016/12/28 15:59:39','','','','');
/*!40000 ALTER TABLE `kalonebusiness` ENABLE KEYS */;

#
# Structure for table "kalonebusinessdetail"
#

DROP TABLE IF EXISTS `kalonebusinessdetail`;
CREATE TABLE `kalonebusinessdetail` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `orderID` varchar(255) DEFAULT NULL COMMENT '订单编号',
  `foodID` varchar(255) DEFAULT NULL COMMENT '商品编号',
  `foodName` varchar(255) DEFAULT NULL COMMENT '商品名称',
  `amount` int(11) DEFAULT NULL COMMENT '数量',
  `new1` varchar(255) DEFAULT NULL,
  `new2` float DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COMMENT='客户日常业务详情';

#
# Data for table "kalonebusinessdetail"
#

/*!40000 ALTER TABLE `kalonebusinessdetail` DISABLE KEYS */;
INSERT INTO `kalonebusinessdetail` VALUES (2,'131253102794474739','131253102794474730','w',2,NULL,NULL),(3,'131273120131211726','131272936189562095','飘香小粥',1,'',20),(4,'131273120131211726','131272936238051013','悠悠我心',1,'',20),(5,'131273258881969763','131272936039262193','百味长寿面',1,'',25),(6,'131273321927070679','131272939692321431','海鲜面',1,'',20),(7,'131273321927070679','131272936039262193','百味长寿面',1,'',25),(8,'131273321927070679','131272936189562095','飘香小粥',1,'',20),(9,'131273321927070679','131272936468842959','鲜艳欲滴',2,'',30),(10,'131273321927070679','131272937021911160','孜然羊肉',2,'',40.5),(11,'131273321952140601','131272939692321431','海鲜面',1,'',20),(12,'131273321952140601','131272936039262193','百味长寿面',1,'',25),(13,'131273321952140601','131272936189562095','飘香小粥',1,'',20),(14,'131273321952140601','131272936468842959','鲜艳欲滴',2,'',30),(15,'131273321952140601','131272937021911160','孜然羊肉',2,'',40.5),(16,'131273321986731525','131272939692321431','海鲜面',1,'',20),(17,'131273321986731525','131272936039262193','百味长寿面',1,'',25),(18,'131273321986731525','131272936189562095','飘香小粥',1,'',20),(19,'131273321986731525','131272936468842959','鲜艳欲滴',2,'',30),(20,'131273321986731525','131272937021911160','孜然羊肉',2,'',40.5),(21,'131273322025311262','131272939692321431','海鲜面',1,'',20),(22,'131273322025311262','131272936039262193','百味长寿面',1,'',25),(23,'131273322025311262','131272936189562095','飘香小粥',1,'',20),(24,'131273322025311262','131272936468842959','鲜艳欲滴',2,'',30),(25,'131273322025311262','131272937021911160','孜然羊肉',2,'',40.5),(26,'131273322056322680','131272939692321431','海鲜面',1,'',20),(27,'131273322056322680','131272936039262193','百味长寿面',1,'',25),(28,'131273322056322680','131272936189562095','飘香小粥',1,'',20),(29,'131273322056322680','131272936468842959','鲜艳欲滴',2,'',30),(30,'131273322056322680','131272937021911160','孜然羊肉',2,'',40.5),(31,'131273322091901371','131272939692321431','海鲜面',1,'',20),(32,'131273322091901371','131272936039262193','百味长寿面',1,'',25),(33,'131273322091901371','131272936189562095','飘香小粥',1,'',20),(34,'131273322091901371','131272936468842959','鲜艳欲滴',2,'',30),(35,'131273322091901371','131272937021911160','孜然羊肉',2,'',40.5),(36,'131273325907792780','131272939692321431','海鲜面',1,'',20),(37,'131273325907792780','131272936039262193','百味长寿面',1,'',25),(38,'131273325907792780','131272936189562095','飘香小粥',1,'',20),(39,'131273325907792780','131272936468842959','鲜艳欲滴',2,'',30),(40,'131273325907792780','131272937021911160','孜然羊肉',2,'',40.5),(41,'131273738185930825','131272936039262193','百味长寿面',2,'',25),(42,'131273738185930825','131272936189562095','飘香小粥',1,'',20),(43,'131273738185930825','131272936134890503','清心面',1,'',20),(44,'131273740917190961','131272936039262193','百味长寿面',2,'',25),(45,'131273740917190961','131272936189562095','飘香小粥',1,'',20),(46,'131273758746446643','131272936039262193','百味长寿面',1,'',25),(47,'131273758746446643','131272936189562095','飘香小粥',1,'',20),(48,'131273834721799726','131272937087857645','特色烤虾',1,'',30),(49,'131273834721799726','131272936917684508','鱿鱼',1,'',25),(50,'131273842967703131','131272936189562095','飘香小粥',1,'',20),(51,'131273842967703131','131272936039262193','百味长寿面',1,'',25),(52,'131273855783384848','131272936189562095','飘香小粥',1,'',20);
/*!40000 ALTER TABLE `kalonebusinessdetail` ENABLE KEYS */;

#
# Structure for table "kalonecalendar"
#

DROP TABLE IF EXISTS `kalonecalendar`;
CREATE TABLE `kalonecalendar` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL COMMENT '人员名称',
  `time` varchar(255) DEFAULT NULL COMMENT '日程时间',
  `status` varchar(255) DEFAULT NULL COMMENT '状态',
  `userID` varchar(255) DEFAULT NULL COMMENT '客户编号',
  `description` varchar(255) DEFAULT NULL COMMENT '事情说明',
  `importance` varchar(255) DEFAULT NULL COMMENT '重要程度',
  `memo` varchar(255) DEFAULT NULL COMMENT '备注',
  `new1` varchar(255) DEFAULT NULL,
  `new2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='个人日程安排';

#
# Data for table "kalonecalendar"
#

/*!40000 ALTER TABLE `kalonecalendar` DISABLE KEYS */;
INSERT INTO `kalonecalendar` VALUES (1,'sadf','2016/12/4 16:46:10','未处理','131253102794474737','111','111','322','131253102794474739','undefined');
/*!40000 ALTER TABLE `kalonecalendar` ENABLE KEYS */;

#
# Structure for table "kalonelevelup"
#

DROP TABLE IF EXISTS `kalonelevelup`;
CREATE TABLE `kalonelevelup` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL COMMENT '人员名称',
  `userID` varchar(255) DEFAULT NULL COMMENT '客户编号',
  `upgradeCategory` varchar(255) DEFAULT NULL COMMENT '积分',
  `upgradeLevel` varchar(255) DEFAULT NULL COMMENT '升级级别',
  `new1` varchar(255) DEFAULT NULL,
  `new2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='客户类别升级';

#
# Data for table "kalonelevelup"
#

/*!40000 ALTER TABLE `kalonelevelup` DISABLE KEYS */;
INSERT INTO `kalonelevelup` VALUES (1,'chl','1','A','A',NULL,'1'),(2,'西西','131253136070559879','B','B','',NULL),(3,'ww','2','19','LV1','',''),(4,'ww','2','26','LV2','',''),(5,'ww','2','41','LV3','','');
/*!40000 ALTER TABLE `kalonelevelup` ENABLE KEYS */;

#
# Structure for table "kalonemerchandise"
#

DROP TABLE IF EXISTS `kalonemerchandise`;
CREATE TABLE `kalonemerchandise` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `foodName` varchar(255) DEFAULT NULL COMMENT '食物名称',
  `amount` int(11) DEFAULT NULL COMMENT '食物数量',
  `unit` varchar(255) DEFAULT NULL COMMENT '食物单位',
  `description` varchar(255) DEFAULT NULL COMMENT '食物描述',
  `price` float(7,2) DEFAULT NULL COMMENT '食物价格',
  `pic` varchar(255) DEFAULT NULL COMMENT '食物图片',
  `editTime` varchar(255) DEFAULT NULL COMMENT '编辑时间',
  `addTime` varchar(255) DEFAULT NULL COMMENT '添加时间',
  `editor` varchar(255) DEFAULT NULL COMMENT '修改人',
  `foodID` varchar(255) DEFAULT NULL COMMENT '食物编号',
  `state` varchar(50) DEFAULT NULL COMMENT '状态',
  `new1` varchar(255) DEFAULT NULL COMMENT '类别',
  `new2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='商品信息';

#
# Data for table "kalonemerchandise"
#

/*!40000 ALTER TABLE `kalonemerchandise` DISABLE KEYS */;
INSERT INTO `kalonemerchandise` VALUES (1,'海鲜面',1,'份','1',20.00,'Foodpics/Food131212042552.jpg','2016/12/27 14:32:49','','admin','131272939692321431','可用','undefined','undefined'),(2,'百味长寿面',1,'份','1',25.00,'Foodpics/Food131212043151.jpg','2016/12/27 14:26:43','','admin','131272936039262193','可用','undefined','undefined'),(4,'清心面',1,'份','1',20.00,'Foodpics/Food131212043540.jpg','2016/12/27 14:26:53','','admin','131272936134890503','可用','undefined','undefined'),(5,'飘香小粥',0,'碗','1',20.00,'Foodpics/Food131212043632.jpg','2016/12/27 14:26:58','','admin','131272936189562095','可用','undefined','undefined'),(6,'悠悠我心',0,'份','1',20.00,'Foodpics/Food131212043659.jpg','2016/12/27 14:27:03','','admin','131272936238051013','可用','undefined','undefined'),(7,'水晶饺子',0,'份','1',20.00,'Foodpics/Food131212043730.jpg','2016/12/27 14:27:08','','admin','131272936283727613','可用','undefined','undefined'),(8,'横霸天下',0,'份','4',40.00,'Foodpics/Food131212045914.jpg','2016/12/27 14:27:22','','admin','131272936422504258','可用','undefined','undefined'),(9,'鲜艳欲滴',0,'份','4',30.00,'Foodpics/Food131212050049.jpg','2016/12/27 14:27:26','','admin','131272936468842959','可用','undefined','undefined'),(10,'心系虾仁',0,'份','4',40.00,'Foodpics/Food131212050108.jpg','2016/12/27 14:27:33','','admin','131272936537228824','可用','undefined','undefined'),(11,'无敌小龙虾                    ',0,'份','4',45.40,'Foodpics/Food131212050135.jpg','2016/12/27 14:27:39','','admin','131272936598025268','可用','undefined','undefined'),(12,'青椒肉丝',0,'份','2',20.00,'Foodpics/Food131212050337.jpg','2016/12/27 14:27:51','','admin','131272936717950993','可用','undefined','undefined'),(13,'蜜汁豆干',0,'份','2',20.00,'Foodpics/Food131212050441.jpg','2016/12/27 14:27:56','','admin','131272936763195909','可用','undefined','undefined'),(14,'独具一格',0,'份','2',30.00,'Foodpics/Food131212050501.jpg','2016/12/27 14:28:05','','admin','131272936853764178','可用','undefined','undefined'),(15,'鱿鱼',0,'份','5',25.00,'Foodpics/Food131212050548.jpg','2016/12/27 14:28:11','','admin','131272936917684508','可用','undefined','undefined'),(16,'孜然羊肉',0,'份','5',40.50,'Foodpics/Food131212050637.jpg','2016/12/27 14:28:22','','admin','131272937021911160','可用','undefined','undefined'),(17,'特色烤虾',0,'份','5',30.00,'Foodpics/Food131212050710.jpg','2016/12/27 14:28:28','','admin','131272937087857645','可用','undefined','undefined'),(18,'凉拌青瓜',0,'份','3',10.00,'Foodpics/Food131212050750.jpg','2016/12/27 14:28:40','','admin','131272937208004707','可用','undefined','undefined'),(19,'冰淇淋',0,'个','6',15.00,'Foodpics/Food131212050832.jpg','2016/12/27 14:28:46','','admin','131272937269174310','可用','undefined','undefined'),(20,'节日party',0,'份','6',20.00,'Foodpics/Food131212050934.jpg','2016/12/27 14:28:52','','admin','131272937328850605','可用','undefined','undefined'),(21,'花样寿司',0,'份','6',35.00,'Foodpics/Food131212050959.jpg','2016/12/27 14:28:58','','admin','131272937380557656','可用','undefined','undefined'),(22,'小肚鸭肠',0,'份','3',40.00,'Foodpics/Food131212051131.jpg','2016/12/27 14:29:05','','admin','131272937451635074','可用','undefined','undefined'),(23,'一团和气',0,'份','3',10.50,'Foodpics/Food131212051212.jpg','2016/12/27 14:29:12','','admin','131272937521337353','可用','undefined','undefined');
/*!40000 ALTER TABLE `kalonemerchandise` ENABLE KEYS */;

#
# Structure for table "kalonerelation"
#

DROP TABLE IF EXISTS `kalonerelation`;
CREATE TABLE `kalonerelation` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL DEFAULT '' COMMENT '客户名称',
  `userID` varchar(255) DEFAULT NULL COMMENT '客户编号',
  `category` varchar(255) DEFAULT NULL COMMENT '关系类别',
  `level` varchar(255) DEFAULT NULL COMMENT '关系级别',
  `editTime` varchar(255) DEFAULT NULL COMMENT '编辑时间',
  `new1` varchar(255) DEFAULT NULL,
  `new2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='客户关系';

#
# Data for table "kalonerelation"
#

/*!40000 ALTER TABLE `kalonerelation` DISABLE KEYS */;
INSERT INTO `kalonerelation` VALUES (2,'西西','131253136070559879','0','LV1','2016/12/4 16:26:47',NULL,NULL),(3,'xxx','131267156729024553','0','LV1','2016/12/20 21:54:33',NULL,NULL),(4,'ww','2','41','LV3','2016/12/28 15:59:40','',''),(5,'1','1','0','LV1','2016/12/4 16:26:47',NULL,NULL);
/*!40000 ALTER TABLE `kalonerelation` ENABLE KEYS */;

#
# Structure for table "kalonerelationcategory"
#

DROP TABLE IF EXISTS `kalonerelationcategory`;
CREATE TABLE `kalonerelationcategory` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL DEFAULT '' COMMENT '类别',
  `level` varchar(50) NOT NULL DEFAULT '' COMMENT '关系级别',
  `memo` varchar(255) DEFAULT NULL COMMENT '类别说明',
  `new1` varchar(255) DEFAULT NULL,
  `new2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='客户关系类别';

#
# Data for table "kalonerelationcategory"
#

/*!40000 ALTER TABLE `kalonerelationcategory` DISABLE KEYS */;
INSERT INTO `kalonerelationcategory` VALUES (1,'0','LV1',NULL,NULL,NULL),(2,'20','LV2',NULL,NULL,NULL),(3,'40','LV3',NULL,NULL,NULL),(4,'80','LV4',NULL,NULL,NULL),(5,'160','LV5',NULL,NULL,NULL),(6,'320','LV0',NULL,NULL,NULL);
/*!40000 ALTER TABLE `kalonerelationcategory` ENABLE KEYS */;

#
# Structure for table "tb_navigation"
#

DROP TABLE IF EXISTS `tb_navigation`;
CREATE TABLE `tb_navigation` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `MenuName` varchar(50) NOT NULL,
  `Pagelogo` varchar(50) NOT NULL,
  `ParentId` int(11) NOT NULL,
  `LinkAddress` varchar(100) DEFAULT NULL,
  `Icon` varchar(50) DEFAULT NULL,
  `Sort` int(11) DEFAULT NULL,
  `IsShow` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=347 DEFAULT CHARSET=gb2312 COMMENT='T_导航菜单表';

#
# Data for table "tb_navigation"
#

/*!40000 ALTER TABLE `tb_navigation` DISABLE KEYS */;
INSERT INTO `tb_navigation` VALUES (1,'系统设置','系统设置',0,'NULL','icon icon-sys',4,0),(2,'导航菜单','导航菜单',1,'setpower/NavigationList.aspx','icon icon-set',1,0),(7,'用户权限设置','用户权限设置',1,'setpower/UserList.html','icon icon-role',2,0),(8,'部门管理','部门管理',1,'setpower/OrganizationList.html','icon icon-delete',3,0),(259,'基础设置','基础设置',0,'','icon icon-menu5',3,0),(260,'数据字典设置','数据字典设置',259,'setpower/com_zidian.html','icon icon-uesr_del',1,0),(284,'业务管理','业务管理',0,NULL,'icon icon-uesr_gray',2,0),(320,'角色授权列表','角色授权列表',1,'setpower/RolesList.html','icon icon-uesr_del',4,0),(321,'功能按钮定义','功能按钮定义',1,'setpower/Authority.html','icon icon-uesr_gray',5,0),(331,'人员基本信息','人员基本信息',1,'setpower/com_user.html','icon icon-uesr_green',6,0),(332,'角色授权用户','角色授权用户',1,'setpower/com_user_power.html','icon icon-uesr_edit',7,1),(333,'日常管理','日常管理',0,'','icon icon-uesr_edit',1,0),(340,'客户基本信息','客户基本信息',284,'myweb/html/Kalonebasicinfo.html','icon icon-uesr_gray',1,0),(341,'订单管理','订单管理',284,'myweb/html/Kalonebusiness.html','icon icon-uesr_gray',2,0),(342,'日程安排','日程安排',284,'myweb/html/Kalonecalendar.html','icon icon-uesr_gray',3,0),(343,'商品管理','商品管理',284,'myweb/html/Kalonemerchandise.html','icon icon-uesr_gray',4,0),(344,'客户等级管理','客户等级管理',284,'myweb/html/Kalonerelation.html','icon icon-uesr_gray',5,0),(345,'等级管理','等级管理',284,'myweb/html/kalonerelationcategory.html','icon icon-uesr_gray',6,0),(346,'test','test',333,'myweb/html/kaloneadmin.html','icon icon-uesr_go',1,0);
/*!40000 ALTER TABLE `tb_navigation` ENABLE KEYS */;

#
# Structure for table "tb_roles"
#

DROP TABLE IF EXISTS `tb_roles`;
CREATE TABLE `tb_roles` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RolesName` varchar(50) DEFAULT NULL,
  `Remark` varchar(500) DEFAULT NULL,
  `gongsibianhao` varchar(30) DEFAULT NULL COMMENT '公司编号',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=gb2312 COMMENT='T_角色名称表';

#
# Data for table "tb_roles"
#

/*!40000 ALTER TABLE `tb_roles` DISABLE KEYS */;
INSERT INTO `tb_roles` VALUES (105,'超级用户','超级用户',NULL),(106,'普通','普通',NULL),(107,'学生','学生',NULL),(108,'高级教师','高级教师',NULL),(109,'初级教师','初级教师',NULL),(110,'普通教师','普通教师',NULL);
/*!40000 ALTER TABLE `tb_roles` ENABLE KEYS */;

#
# Structure for table "tb_rolesadduser"
#

DROP TABLE IF EXISTS `tb_rolesadduser`;
CREATE TABLE `tb_rolesadduser` (
  `RolesId` int(11) NOT NULL,
  `UserId` int(11) NOT NULL,
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=gb2312 COMMENT='T_角色与用户关系表';

#
# Data for table "tb_rolesadduser"
#

/*!40000 ALTER TABLE `tb_rolesadduser` DISABLE KEYS */;
INSERT INTO `tb_rolesadduser` VALUES (106,1000000001,4),(106,1000000003,6),(106,1000000002,8),(109,1000000004,10),(109,1000000002,11),(109,1000000003,12),(106,1000000005,15),(107,1000000003,17),(108,1000000002,18),(108,1000000004,19),(108,1000000003,20),(106,1000000004,21),(107,1000000004,22);
/*!40000 ALTER TABLE `tb_rolesadduser` ENABLE KEYS */;

#
# Structure for table "tb_rolesandnavigation"
#

DROP TABLE IF EXISTS `tb_rolesandnavigation`;
CREATE TABLE `tb_rolesandnavigation` (
  `RolesId` int(11) NOT NULL,
  `NavigationId` int(11) NOT NULL,
  `ButtonId` int(11) NOT NULL,
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=169 DEFAULT CHARSET=gb2312 COMMENT='T_角色与菜单关系表';

#
# Data for table "tb_rolesandnavigation"
#

/*!40000 ALTER TABLE `tb_rolesandnavigation` DISABLE KEYS */;
INSERT INTO `tb_rolesandnavigation` VALUES (106,1,0,99),(106,320,0,100),(106,321,0,101),(106,331,0,102),(106,259,0,103),(106,260,1,104),(106,260,2,105),(106,260,3,106),(106,260,5,107),(106,260,6,108),(106,260,11,109),(106,260,10,110),(106,261,0,111),(106,322,1,112),(106,322,2,113),(106,322,3,114),(106,322,5,115),(106,322,6,116),(106,322,11,117),(106,322,10,118),(106,284,0,119),(106,285,1,120),(106,285,2,121),(106,285,3,122),(106,285,5,123),(106,285,6,124),(106,285,11,125),(106,285,10,126),(106,293,1,127),(106,293,2,128),(106,293,3,129),(106,293,5,130),(106,293,6,131),(106,293,11,132),(106,293,10,133),(107,331,1,134),(107,331,2,135),(107,331,10,136),(108,284,0,153),(108,338,1,154),(108,338,2,155),(108,338,3,156),(108,338,5,157),(108,338,6,158),(108,338,11,159),(108,338,10,160),(108,333,0,161),(108,334,1,162),(108,334,2,163),(108,334,3,164),(108,334,5,165),(108,334,6,166),(108,334,11,167),(108,334,10,168);
/*!40000 ALTER TABLE `tb_rolesandnavigation` ENABLE KEYS */;

#
# View "v_com_navigationandbutton"
#

DROP VIEW IF EXISTS `v_com_navigationandbutton`;
CREATE
  ALGORITHM = UNDEFINED
  VIEW `zdsc1`.`v_com_navigationandbutton`
  AS
SELECT
  `com_navigationandbutton`.`NavigationId`,
  `com_navigationandbutton`.`ButtonId`,
  `com_navigationandbutton`.`buttonstr`,
  `com_buttongroup`.`ButtonName`,
  `com_buttongroup`.`BtnCode`,
  `com_buttongroup`.`Sort`
FROM
  (`com_navigationandbutton`
    JOIN `com_buttongroup` ON ((`com_navigationandbutton`.`ButtonId` = `com_buttongroup`.`Id`)));
#
# View "v_tb_rolesandnavigation"
#

DROP VIEW IF EXISTS `v_tb_rolesandnavigation`;
CREATE
  ALGORITHM = UNDEFINED
  VIEW `zdsc1`.`v_tb_rolesandnavigation`
  AS
SELECT
  `tb_rolesandnavigation`.`RolesId`,
  `tb_rolesandnavigation`.`NavigationId`,
  `tb_rolesandnavigation`.`ButtonId`,
  `tb_navigation`.`MenuName`,
  `tb_navigation`.`LinkAddress`,
  `tb_navigation`.`IsShow`,
  `com_buttongroup`.`ButtonName`,
  `com_buttongroup`.`BtnCode`,
  `com_buttongroup`.`Sort`
FROM
  ((`tb_rolesandnavigation`
    LEFT JOIN `tb_navigation` ON ((`tb_rolesandnavigation`.`NavigationId` = `tb_navigation`.`Id`)))
    LEFT JOIN `com_buttongroup` ON ((`tb_rolesandnavigation`.`ButtonId` = `com_buttongroup`.`Id`)));