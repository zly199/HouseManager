CREATE DATABASE  IF NOT EXISTS `house_manager_v2` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `house_manager_v2`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: house_manager_v2
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id` int(11) NOT NULL COMMENT '客源编号',
  `transaction` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '交易',
  `application` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '用途',
  `willing_address` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '意向地址：***''/***''/******',
  `status` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '状态',
  `area` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '面积：lowArea-maxArea',
  `attribute` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '属性',
  `purchasing_price` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '价格：lowPrice-maxPrice',
  `precatory_date` date DEFAULT NULL COMMENT '委托日期',
  `rent_price` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '租金单价：***-****',
  `precatory_method` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '委托方式',
  `rank` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '客户等级',
  `source` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源',
  `type` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '客户类别',
  `deadline` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '客户期限',
  `intention` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '客户意向',
  `maturity` date DEFAULT NULL COMMENT '到期日\n',
  `remark` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `housetype` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '房型：房/厅/卫/阳',
  `decoration` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '装修',
  `gener` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `development` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '配套',
  `orientation` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '朝向',
  `floor` int(11) DEFAULT NULL,
  `payment` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '付款',
  `now_address` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '客户现住',
  `payment_commission` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '付拥',
  `client_age` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '入住人年龄',
  `address` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '现住址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='客源表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connection`
--

DROP TABLE IF EXISTS `connection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `connection` (
  `connection` bigint(11) NOT NULL COMMENT '联系方式',
  `style` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '绑定类型（手机，微信..）',
  `binding` bigint(11) DEFAULT NULL COMMENT '绑定状态',
  `connection_user` bigint(11) NOT NULL COMMENT '联系人',
  PRIMARY KEY (`connection`,`connection_user`),
  KEY `fk_connection_idx` (`connection_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业联系方式表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connection`
--

LOCK TABLES `connection` WRITE;
/*!40000 ALTER TABLE `connection` DISABLE KEYS */;
/*!40000 ALTER TABLE `connection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enterprise_duties`
--

DROP TABLE IF EXISTS `enterprise_duties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enterprise_duties` (
  `enterprise_duties_id` tinyint(3) unsigned NOT NULL COMMENT '职务编号',
  `duties_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '职务名称',
  `basic_salary` double DEFAULT '0' COMMENT '底薪',
  `rank` tinyint(4) DEFAULT NULL COMMENT '级别',
  `job_attributes` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '职务属性（业务，管理等）',
  PRIMARY KEY (`enterprise_duties_id`),
  UNIQUE KEY `duties_id_UNIQUE` (`enterprise_duties_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='企业职务信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enterprise_duties`
--

LOCK TABLES `enterprise_duties` WRITE;
/*!40000 ALTER TABLE `enterprise_duties` DISABLE KEYS */;
INSERT INTO `enterprise_duties` VALUES (1,'适用业务员',0,5,'业务'),(2,'物业顾问',0,5,'业务'),(5,'区域经理',1200,1,'业务'),(8,'分行经理',2000,3,'店长'),(21,'总经理',0,1,'区总'),(98,'电脑管理员',0,1,'业务');
/*!40000 ALTER TABLE `enterprise_duties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followup_client`
--

DROP TABLE IF EXISTS `followup_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `followup_client` (
  `id` bigint(11) NOT NULL COMMENT '员工id',
  `contents` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '跟进内容',
  `userid` bigint(20) DEFAULT NULL COMMENT '员工id',
  `time` datetime DEFAULT NULL COMMENT '跟进时间',
  `clientid` int(11) DEFAULT NULL COMMENT '客户id',
  PRIMARY KEY (`id`),
  KEY `userCF_idx` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='客户跟进表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followup_client`
--

LOCK TABLES `followup_client` WRITE;
/*!40000 ALTER TABLE `followup_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `followup_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followup_house`
--

DROP TABLE IF EXISTS `followup_house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `followup_house` (
  `id` bigint(11) NOT NULL COMMENT '房源跟进信息id',
  `content` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '跟进内容',
  `userid` bigint(11) DEFAULT NULL COMMENT '员工id',
  `houseid` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '房源id',
  `time` datetime DEFAULT NULL COMMENT '跟进时间',
  `method` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '跟进方式',
  PRIMARY KEY (`id`),
  KEY `userFollowUp_idx` (`userid`),
  KEY `house_follow` (`houseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='房源跟进表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followup_house`
--

LOCK TABLES `followup_house` WRITE;
/*!40000 ALTER TABLE `followup_house` DISABLE KEYS */;
INSERT INTO `followup_house` VALUES (1000000000,'精装修 急售 价格可以谈 看房提前联系',1000000002,'ZY0000177','2017-05-01 14:05:30','去电'),(1000000001,'小区2005年竣工很新 户型好看',1000000002,'ZY0000177','2017-05-03 12:55:51','去电');
/*!40000 ALTER TABLE `followup_house` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `housemsg`
--

DROP TABLE IF EXISTS `housemsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `housemsg` (
  `id` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '房源id',
  `application` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '房源用途',
  `transaction` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '房源交易',
  `address` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '房源地址：城区/商圈/楼盘字典/栋座/单元/房号/楼层/总层',
  `area` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '面积：总面积/套内面积',
  `type` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `house_type` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '房型：房/厅/卫/阳台',
  `decoration` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '装修',
  `orientation` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '朝向',
  `status` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '状态',
  `sell_price` double DEFAULT NULL COMMENT '售总价',
  `attribute` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '属性',
  `sell_lowPrice` double DEFAULT NULL COMMENT '售低价',
  `purchasing_date` date DEFAULT NULL COMMENT '购买时间',
  `rent_price` double DEFAULT NULL COMMENT '租总价',
  `uniqueHouse` tinyint(1) DEFAULT NULL COMMENT '唯一住房：返回bool型数值是为1；否为0',
  `rent_lowPrice` double DEFAULT NULL COMMENT '租低价',
  `precatory_date` date DEFAULT NULL COMMENT '委托日期',
  `loan` double DEFAULT '0' COMMENT '贷款',
  `precatory_method` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '委托方式',
  `resource` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '来源',
  `precatory_number` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '委托编号',
  `lunch_time` date DEFAULT NULL COMMENT '交房日期',
  `record_number` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备案号',
  `tag` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '标签',
  `remark` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `build_year` year(4) DEFAULT NULL COMMENT '建房年代',
  `status_quo` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '现状',
  `propertyRight` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `development` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '配套',
  `including` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '包税费',
  `furniture` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '家具',
  `originaly_purchasing_price` double DEFAULT NULL COMMENT '原始购价',
  `management_cost` double DEFAULT NULL COMMENT '管理费',
  `household_applicances` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '家电',
  `payment_has` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '付拥',
  `parking_plot` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '车位',
  `payment_method` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '付款方式',
  `see_the_house` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '看房',
  `production_license_number` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '产证号',
  `year_of_property_right` date DEFAULT NULL COMMENT '产权年限',
  `certificate_of_house_property` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '房产证',
  `id_card` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份证',
  `precatory_book` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '委托书',
  `client_id` int(11) DEFAULT NULL COMMENT '业主id',
  `user_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '相关员工',
  `organization_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '部门id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='房源信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `housemsg`
--

LOCK TABLES `housemsg` WRITE;
/*!40000 ALTER TABLE `housemsg` DISABLE KEYS */;
INSERT INTO `housemsg` VALUES ('ZX0007790','住宅','出租','静安区/不夜城/大统路933弄/993号/0/0120/1/0','25/0','多层','1/0/1/0','简装','北','有效',NULL,'公盘',NULL,'0000-00-00',2500,NULL,NULL,'2017-05-20',0,'C-未签','来访','0','0000-00-00',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1000000007','B010101'),('ZXzpy3609',NULL,'出售','城区/商圈/楼盘字典/02号/单元/1601/16/总层','102/0','高层','2/2/1/1','精装','南','有效',780,'私盘',0,'0000-00-00',0,0,0,'2017-05-18',0,NULL,NULL,NULL,'0000-00-00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1000000007','B010101'),('ZY0000177','住宅','出售','嘉定区/江桥/嘉秀新苑/06号/0/0601/0/7','205.56/0','多层','5/2/4/3','精装','南','有效',860,'公盘',860,'0000-00-00',0,0,0,'2017-05-03',0,'A-独家','来电','0','0000-00-00','null','聚焦房/优质房/速销房','null',0000,'null','null','null','null','null',0,0,'null','null','null','null','直接','null','0000-00-00','null','null','null',NULL,'1000000002','B0101'),('ZYzy00444','住宅','出售','静安区/不夜城/绿厦小区/05号/0/0304/3/0','44.05/0','小高层','1/1/1/0','毛坯','南','有效',280,'私盘',270,'0000-00-00',0,0,0,'2017-04-22',0,'C-未签','来电','0','0000-00-00','null','优质房',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'有钥匙',NULL,NULL,NULL,NULL,NULL,NULL,'1000000002','B0101');
/*!40000 ALTER TABLE `housemsg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `houses_dictionary`
--

DROP TABLE IF EXISTS `houses_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `houses_dictionary` (
  `id` int(11) NOT NULL,
  `urban` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '城区',
  `property` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '用途',
  `trad_area` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '商圈',
  `type` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '类型',
  `name` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '楼盘名称',
  `property_right` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '建房产权',
  `spelling_abbreviation` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '拼音缩写',
  `sell_average_price` int(11) DEFAULT NULL COMMENT '售均价',
  `alias` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '别名',
  `building_area` int(11) DEFAULT NULL COMMENT '建筑面积',
  `english_name` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '英文名称',
  `whole_clients` int(11) DEFAULT NULL COMMENT '总户数',
  `brief_address` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '概要地址',
  `structure` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '结构',
  `detail_address` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '详细地址',
  `outer_wall` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `english_address` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '英文地址',
  `land_number` int(11) DEFAULT NULL COMMENT '土地土地号',
  `house_owner` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '物业主',
  `remark` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `owner_telephone` int(11) DEFAULT NULL COMMENT '物业主电话',
  `property_managment` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '物业公司',
  `management_telephone` int(11) DEFAULT NULL COMMENT '物业公司电话',
  `management_cost` int(11) DEFAULT NULL COMMENT '物业费',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='楼盘字典';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `houses_dictionary`
--

LOCK TABLES `houses_dictionary` WRITE;
/*!40000 ALTER TABLE `houses_dictionary` DISABLE KEYS */;
/*!40000 ALTER TABLE `houses_dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `key`
--

DROP TABLE IF EXISTS `key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `key` (
  `id` int(11) NOT NULL COMMENT 'id',
  `number` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '钥匙编号',
  `name` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '钥匙名称',
  `type` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '钥匙类别',
  `organizationid` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '保管门店id',
  `userid` bigint(20) DEFAULT NULL COMMENT '员工id',
  `status` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '状态',
  `remark` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  KEY `keyUser_idx` (`userid`),
  KEY `keyOrganization_idx` (`organizationid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='钥匙表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `key`
--

LOCK TABLES `key` WRITE;
/*!40000 ALTER TABLE `key` DISABLE KEYS */;
/*!40000 ALTER TABLE `key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_structure`
--

DROP TABLE IF EXISTS `organization_structure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_structure` (
  `organization_id` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '组织机构id',
  `organization_name` varchar(45) CHARACTER SET utf8 DEFAULT '未定义' COMMENT '组织机构名称',
  `parent_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '上一级组织结构id\\n',
  `parent_ids` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '上一级完整的id',
  `number_pre` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '房源/客源编号前缀（2-4为答谢字母或者数字）',
  `organization_style` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '部门类型',
  `is_business` tinyint(1) DEFAULT NULL COMMENT '是否做业务（记业绩）',
  `store_attributes` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '门店属性',
  `is_store` tinyint(1) DEFAULT NULL COMMENT '是否为门店',
  `department_phone` bigint(11) DEFAULT NULL COMMENT '部门电话',
  `department_address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '部门地址',
  `department_coordinate` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '部门坐标',
  `sharing_circle` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '归属共享圈',
  `plan_performance` int(11) DEFAULT NULL COMMENT '应收业绩指标（元/月）',
  `Actual_performance` int(11) DEFAULT NULL COMMENT '实收业绩指标（元/月）',
  `add_time` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '增加时间',
  `department_number` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '门店电话',
  `extension_range` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '分机范围(xxx-xxxx)',
  PRIMARY KEY (`organization_id`),
  UNIQUE KEY `number_pre_UNIQUE` (`number_pre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='组织机构表(部门表)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_structure`
--

LOCK TABLES `organization_structure` WRITE;
/*!40000 ALTER TABLE `organization_structure` DISABLE KEYS */;
INSERT INTO `organization_structure` VALUES ('B','部门','0','0/',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('B01','总部','B','0/B/','ZB','业务',1,'直营',0,56325030,'共和新路586号','121.469933,31.25929',NULL,NULL,NULL,'2017-04-17',NULL,NULL),('B0101','张瑛区域','B01','0/B/B01/','ZY','业务',1,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,'2017-04-26',NULL,NULL),('B010101','中兴路店','B0101','0/B/B01/B0101/','ZX','业务',1,'直营',0,66581238,'共和新路492号','121.469812,31.257962',NULL,NULL,NULL,'2017-04-17',NULL,NULL),('B010102','共和新路店','B0101','0/B/B01/B0101/','GH','业务',1,'直营',0,56325030,'共和新路586号','121.469812,31.257962',NULL,NULL,NULL,'2017-04-17',NULL,NULL);
/*!40000 ALTER TABLE `organization_structure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_information`
--

DROP TABLE IF EXISTS `personal_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_information` (
  `person_id` bigint(11) unsigned NOT NULL COMMENT '个人信息编号',
  `id_card` bigint(18) DEFAULT NULL COMMENT '身份证号',
  `nation` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '民族',
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电子邮件',
  `address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '联系地址',
  `bank_account` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '银行账号',
  `signature` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '个人签名',
  `resume` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '个人简介',
  `sex` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '性别',
  `native_place` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '籍贯',
  `birthday` date DEFAULT NULL COMMENT '生日',
  `political_status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '政治面貌',
  `educational_background` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '学历',
  `graduate_institutions` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '毕业院校',
  `major` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '专业',
  `tip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '附件地址',
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='个人信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_information`
--

LOCK TABLES `personal_information` WRITE;
/*!40000 ALTER TABLE `personal_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photo`
--

DROP TABLE IF EXISTS `photo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photo` (
  `id` int(11) NOT NULL COMMENT '图片id',
  `url` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '图片地址',
  `houseid` int(11) DEFAULT NULL COMMENT '房源id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='照片表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photo`
--

LOCK TABLES `photo` WRITE;
/*!40000 ALTER TABLE `photo` DISABLE KEYS */;
/*!40000 ALTER TABLE `photo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_permission`
--

DROP TABLE IF EXISTS `t_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_permission` (
  `permission_id` int(11) NOT NULL COMMENT '权限id(**''/**''/**''/**)',
  `name` varchar(50) DEFAULT NULL COMMENT '权限名',
  `permission_char` varchar(100) DEFAULT NULL COMMENT '权限字符串',
  `type` varchar(45) DEFAULT NULL COMMENT '权限类型是类型还是url',
  `url` varchar(45) DEFAULT NULL COMMENT '权限执行的url，如果type为menu的时候，才有url',
  `parent_id` int(11) DEFAULT NULL COMMENT '父权限的id',
  `parent_ids` varchar(45) DEFAULT NULL COMMENT '父权限的完整表达，如0/11/21',
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_permission`
--

LOCK TABLES `t_permission` WRITE;
/*!40000 ALTER TABLE `t_permission` DISABLE KEYS */;
INSERT INTO `t_permission` VALUES (1,'权限','powe','menu',NULL,0,'0/'),(20,'房源','house','menu','/house',1,'0/1'),(30,'客源','client','menu','/client',1,'0/1'),(2001,'房源:查看','house:view','button',NULL,20,'0/1/20'),(2002,'房源:增加','house:add','button','',20,'0/1/20'),(200101,'房源:查看:公盘','house:view:public','list',NULL,2001,'0/1/20/2001'),(200102,'房源:查看:私盘','house:view:private','list',NULL,2001,'0/1/20/2001'),(200103,'房源:查看:特盘','house:view:super','list',NULL,2001,'0/1/20/2001'),(200104,'房源:查看:封盘','house:view:died','list',NULL,2001,'0/1/20/2001');
/*!40000 ALTER TABLE `t_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_user_permission`
--

DROP TABLE IF EXISTS `t_user_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_user_permission` (
  `user_id` bigint(20) NOT NULL COMMENT '用户id',
  `permission_id` int(11) NOT NULL COMMENT '权限id',
  PRIMARY KEY (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户权限多对多关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_user_permission`
--

LOCK TABLES `t_user_permission` WRITE;
/*!40000 ALTER TABLE `t_user_permission` DISABLE KEYS */;
INSERT INTO `t_user_permission` VALUES (1000000002,20),(1000000002,2001),(1000000002,2002),(1000000002,2003),(1000000002,2004),(1000000002,200101),(1000000002,200201),(1000000002,200301),(1000000002,200401),(1000000003,30);
/*!40000 ALTER TABLE `t_user_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `takelook`
--

DROP TABLE IF EXISTS `takelook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `takelook` (
  `id` int(11) NOT NULL,
  `last_time` datetime DEFAULT NULL COMMENT '最后带看时间',
  `look_times` int(11) DEFAULT NULL COMMENT '带看次数',
  `houseid` int(11) DEFAULT NULL COMMENT '房源id',
  `housesid` int(11) DEFAULT NULL COMMENT '楼盘id',
  `take_number` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '带看编号',
  `trail` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '交易',
  `house_number` bigint(20) DEFAULT NULL COMMENT '套数',
  `status` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT '状态',
  `creat_time` datetime DEFAULT NULL COMMENT '创建时间',
  `inspector` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `inspect_time` date DEFAULT NULL COMMENT '审核时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='带看房源表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `takelook`
--

LOCK TABLES `takelook` WRITE;
/*!40000 ALTER TABLE `takelook` DISABLE KEYS */;
/*!40000 ALTER TABLE `takelook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `urban_district`
--

DROP TABLE IF EXISTS `urban_district`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `urban_district` (
  `idurban_district_id` int(11) NOT NULL COMMENT '城区或商圈id',
  `urban_district_name` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '城区商圈名',
  `parent_idurban_district` int(11) DEFAULT NULL COMMENT '父节点（城区的父节点为0），商圈的父节点为对应的城区',
  `parents_idurban` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '父节点的完整路径',
  PRIMARY KEY (`idurban_district_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='城区商圈表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `urban_district`
--

LOCK TABLES `urban_district` WRITE;
/*!40000 ALTER TABLE `urban_district` DISABLE KEYS */;
/*!40000 ALTER TABLE `urban_district` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_abnormal`
--

DROP TABLE IF EXISTS `user_abnormal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_abnormal` (
  `abnormal_id` int(11) NOT NULL COMMENT '异动id',
  `action_time` datetime DEFAULT NULL COMMENT '异动发生时间',
  `action_style` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '移动类别',
  `old_data` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '旧数据',
  `new_data` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '新数据',
  `abnormal_user` bigint(11) DEFAULT NULL COMMENT '涉及的员工id',
  PRIMARY KEY (`abnormal_id`),
  KEY `fk_abnormal_user_idx` (`abnormal_user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='员工异常动作表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_abnormal`
--

LOCK TABLES `user_abnormal` WRITE;
/*!40000 ALTER TABLE `user_abnormal` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_abnormal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_duties`
--

DROP TABLE IF EXISTS `user_duties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_duties` (
  `locked` tinyint(1) DEFAULT NULL,
  `user_id` bigint(11) NOT NULL COMMENT '员工编号',
  `user_name` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `organization_id` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duties_id` tinyint(3) unsigned DEFAULT NULL COMMENT '员工职务',
  `state` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entry_time` datetime DEFAULT NULL COMMENT '入职时间',
  `dimission_time` datetime DEFAULT NULL COMMENT '离职时间',
  `omni` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `source` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `technical_title` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `record` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_buildings` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chief_id` bigint(11) DEFAULT NULL COMMENT '上级的userid',
  `connecttion_way` int(11) DEFAULT NULL COMMENT '联系方式id',
  `password` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `working_time` time DEFAULT NULL COMMENT '上班时间',
  `closing_time` time DEFAULT NULL COMMENT '下班时间',
  `user_persion` bigint(11) unsigned DEFAULT NULL COMMENT '个人信息id',
  `user_house_pre` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '个人房源前缀（不包括部门的前缀）',
  UNIQUE KEY `user_id_UNIQUE` (`user_id`),
  KEY `fk_user_connection_idx` (`connecttion_way`),
  KEY `fk_user_duties_idx` (`duties_id`),
  CONSTRAINT `fk_user_duties` FOREIGN KEY (`duties_id`) REFERENCES `enterprise_duties` (`enterprise_duties_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='员工职务信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_duties`
--

LOCK TABLES `user_duties` WRITE;
/*!40000 ALTER TABLE `user_duties` DISABLE KEYS */;
INSERT INTO `user_duties` VALUES (0,1000000001,'徐传舜','B01',21,'正式',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'7328bf2bcf0f920f9d0e6dbe45518a73',NULL,NULL,NULL,'xcs'),(0,1000000002,'张瑛','B0101',5,'正式',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000001,NULL,'19983d6c321afcbb9b52d0f0148309e4','09:00:00','19:00:00',NULL,'zy'),(0,1000000003,'王慧','B010102',8,'正式',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000002,NULL,'bb5ae3e15c7a1e53b15d932d1bbf3e88',NULL,NULL,NULL,'wh'),(0,1000000004,'徐冬','B010102',2,'正式',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000003,NULL,'7cf71a2112d858df48556b1796f3b8a3',NULL,NULL,NULL,'wd'),(0,1000000005,'夏玲芳','B010101',8,'正式',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000002,NULL,'9d4cd3e091fb245ee0071f0480ac5616',NULL,NULL,NULL,'xlf'),(0,1000000006,'郑托','B010101',2,'正式',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000005,NULL,'0a85b96b754c3f8864c01392d036e240',NULL,NULL,NULL,'zt'),(0,1000000007,'张朋宇','B010101',2,'正式',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1000000005,NULL,'26d2d9a7cb1231471fad82b9903477b7',NULL,NULL,NULL,'zpy');
/*!40000 ALTER TABLE `user_duties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `v_user`
--

DROP TABLE IF EXISTS `v_user`;
/*!50001 DROP VIEW IF EXISTS `v_user`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `v_user` AS SELECT 
 1 AS `user_id`,
 1 AS `user_name`,
 1 AS `password`,
 1 AS `role_id`,
 1 AS `locked`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'house_manager_v2'
--

--
-- Dumping routines for database 'house_manager_v2'
--

--
-- Final view structure for view `v_user`
--

/*!50001 DROP VIEW IF EXISTS `v_user`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_user` AS select `user_duties`.`user_id` AS `user_id`,`user_duties`.`user_name` AS `user_name`,`user_duties`.`password` AS `password`,`user_duties`.`duties_id` AS `role_id`,`user_duties`.`locked` AS `locked` from `user_duties` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-20 17:26:50
