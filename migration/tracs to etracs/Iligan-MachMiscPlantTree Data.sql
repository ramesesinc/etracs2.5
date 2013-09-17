/*
SQLyog Ultimate v9.63 
MySQL - 5.0.27-community-nt : Database - iligan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `machassesslevel` */

DROP TABLE IF EXISTS `machassesslevel`;

CREATE TABLE `machassesslevel` (
  `objid` varchar(50) NOT NULL,
  `machrysettingid` varchar(50) NOT NULL,
  `classification_objid` varchar(50) default NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fixrate` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_machassesslevel_settingcode` (`machrysettingid`,`code`),
  UNIQUE KEY `ux_machassesslevel_settingname` (`machrysettingid`,`name`),
  KEY `FK_machassesslevel_propertyclassification` (`classification_objid`),
  KEY `ix_machassesslevel_previd` (`previd`),
  CONSTRAINT `FK_machassesslevel_machrysetting` FOREIGN KEY (`machrysettingid`) REFERENCES `machrysetting` (`objid`),
  CONSTRAINT `FK_machassesslevel_propertyclassification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `machassesslevel` */

insert  into `machassesslevel`(`objid`,`machrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MCI00000001','MC00000002',NULL,'7W','SCIENTIFIC',1,'15.00',NULL);
insert  into `machassesslevel`(`objid`,`machrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MCI00000006','MC00000002',NULL,'7O','AGRICUTURAL',1,'50.00',NULL);
insert  into `machassesslevel`(`objid`,`machrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MCI00000007','MC00000002',NULL,'7P','COMMERCIAL',1,'80.00',NULL);
insert  into `machassesslevel`(`objid`,`machrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MCI00000008','MC00000002',NULL,'7Q','CULTURAL',1,'15.00',NULL);
insert  into `machassesslevel`(`objid`,`machrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MCI00000009','MC00000002',NULL,'7R','GOV\'T. OWNED/CONTROLLED CORP.',1,'10.00',NULL);
insert  into `machassesslevel`(`objid`,`machrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MCI00000010','MC00000002',NULL,'7S','HOSPITAL',1,'15.00',NULL);
insert  into `machassesslevel`(`objid`,`machrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MCI00000011','MC00000002',NULL,'7T','INDUSTRIAL',1,'80.00',NULL);
insert  into `machassesslevel`(`objid`,`machrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MCI00000012','MC00000002',NULL,'7U','LOCAL WATER DISTRICT',1,'10.00',NULL);
insert  into `machassesslevel`(`objid`,`machrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MCI00000013','MC00000002',NULL,'7V','RESIDENTIAL',1,'40.00',NULL);
insert  into `machassesslevel`(`objid`,`machrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MCI00000014','MC00000002',NULL,'7X','SPECIAL CLASS',1,'15.00',NULL);

/*Table structure for table `machassesslevelrange` */

DROP TABLE IF EXISTS `machassesslevelrange`;

CREATE TABLE `machassesslevelrange` (
  `objid` varchar(50) NOT NULL,
  `machassesslevelid` varchar(50) NOT NULL default '',
  `machrysettingid` varchar(50) NOT NULL default '',
  `mvfrom` decimal(16,2) NOT NULL,
  `mvto` decimal(16,2) NOT NULL,
  `rate` decimal(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_machassesslevelrange_mvfrom` (`machrysettingid`,`machassesslevelid`,`mvfrom`),
  KEY `FK_machassesslevelrange_machassesslevel` (`machassesslevelid`),
  CONSTRAINT `FK_machassesslevelrange_machassesslevel` FOREIGN KEY (`machassesslevelid`) REFERENCES `machassesslevel` (`objid`),
  CONSTRAINT `FK_machassesslevelrange_machrysetting` FOREIGN KEY (`machrysettingid`) REFERENCES `machrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `machassesslevelrange` */

/*Table structure for table `machforex` */

DROP TABLE IF EXISTS `machforex`;

CREATE TABLE `machforex` (
  `objid` varchar(50) NOT NULL,
  `machrysettingid` varchar(50) NOT NULL,
  `year` int(10) NOT NULL,
  `forex` decimal(10,6) NOT NULL,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_machforex_settingyear` (`machrysettingid`,`year`),
  KEY `ix_machforex_previd` (`previd`),
  CONSTRAINT `FK_machforex_machrysetting` FOREIGN KEY (`machrysettingid`) REFERENCES `machrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `machforex` */

/*Table structure for table `machrysetting` */

DROP TABLE IF EXISTS `machrysetting`;

CREATE TABLE `machrysetting` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(15) NOT NULL,
  `ry` int(11) NOT NULL,
  `previd` varchar(50) default NULL,
  `appliedto` text,
  PRIMARY KEY  (`objid`),
  KEY `FK_machrysetting_machrysetting` (`previd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `machrysetting` */

insert  into `machrysetting`(`objid`,`state`,`ry`,`previd`,`appliedto`) values ('MC00000002','DRAFT',2002,NULL,'ILIGAN CITY');

/*Table structure for table `miscassesslevel` */

DROP TABLE IF EXISTS `miscassesslevel`;

CREATE TABLE `miscassesslevel` (
  `objid` varchar(50) NOT NULL,
  `miscrysettingid` varchar(50) NOT NULL,
  `classification_objid` varchar(50) default NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fixrate` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_miscassesslevel_settingcode` (`miscrysettingid`,`code`),
  UNIQUE KEY `ux_miscassesslevel_settingname` (`miscrysettingid`,`name`),
  KEY `FK_miscassesslevel_classification` (`classification_objid`),
  KEY `ix_miscassesslevel_previd` (`previd`),
  CONSTRAINT `FK_miscassesslevel_classification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`),
  CONSTRAINT `FK_miscassesslevel_miscrysetting` FOREIGN KEY (`miscrysettingid`) REFERENCES `miscrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `miscassesslevel` */

insert  into `miscassesslevel`(`objid`,`miscrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MIBCI00000016','MIBC00000002',NULL,'7A','AGRICULTURAL',0,'0.00',NULL);
insert  into `miscassesslevel`(`objid`,`miscrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MIBCI00000017','MIBC00000002',NULL,'7B','COMMERCIAL',0,'0.00',NULL);
insert  into `miscassesslevel`(`objid`,`miscrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MIBCI00000018','MIBC00000002',NULL,'7C','CULTURAL',1,'15.00',NULL);
insert  into `miscassesslevel`(`objid`,`miscrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MIBCI00000019','MIBC00000002',NULL,'7D','GOV\'T. OWNED/CONTROLLED CORP.',1,'10.00',NULL);
insert  into `miscassesslevel`(`objid`,`miscrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MIBCI00000020','MIBC00000002',NULL,'7E','HOSPITAL',1,'15.00',NULL);
insert  into `miscassesslevel`(`objid`,`miscrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MIBCI00000021','MIBC00000002',NULL,'7F','INDUSTRIAL',0,'0.00',NULL);
insert  into `miscassesslevel`(`objid`,`miscrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MIBCI00000022','MIBC00000002',NULL,'7G','LOCAL WATER DISTRICT',1,'10.00',NULL);
insert  into `miscassesslevel`(`objid`,`miscrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MIBCI00000023','MIBC00000002',NULL,'7H','RESIDENTIAL',0,'0.00',NULL);
insert  into `miscassesslevel`(`objid`,`miscrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MIBCI00000024','MIBC00000002',NULL,'7I','SCIENTIFIC',1,'15.00',NULL);
insert  into `miscassesslevel`(`objid`,`miscrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MIBCI00000025','MIBC00000002',NULL,'7J','TIMBERLAND',0,'0.00',NULL);
insert  into `miscassesslevel`(`objid`,`miscrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MIBCI00000026','MIBC00000002',NULL,'7K','SPECIAL CLASS',1,'15.00',NULL);
insert  into `miscassesslevel`(`objid`,`miscrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MIBCI00000027','MIBC00000002',NULL,'7L','IMPROVEMENT',1,'10.00',NULL);
insert  into `miscassesslevel`(`objid`,`miscrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MIBCI00000028','MIBC00000002',NULL,'7M','IND-RRW',1,'50.00',NULL);
insert  into `miscassesslevel`(`objid`,`miscrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('MIBCI00000029','MIBC00000002',NULL,'7N','RECREATIONAL',1,'15.00',NULL);

/*Table structure for table `miscassesslevelrange` */

DROP TABLE IF EXISTS `miscassesslevelrange`;

CREATE TABLE `miscassesslevelrange` (
  `objid` varchar(50) NOT NULL,
  `miscassesslevelid` varchar(50) NOT NULL default '',
  `miscrysettingid` varchar(50) NOT NULL default '',
  `mvfrom` decimal(16,2) NOT NULL,
  `mvto` decimal(16,2) NOT NULL,
  `rate` decimal(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_miscassesslevelrange_miscassesslevel` (`miscassesslevelid`),
  KEY `FK_miscassesslevelrange_miscrysetting` (`miscrysettingid`),
  CONSTRAINT `FK_miscassesslevelrange_miscassesslevel` FOREIGN KEY (`miscassesslevelid`) REFERENCES `miscassesslevel` (`objid`),
  CONSTRAINT `FK_miscassesslevelrange_miscrysetting` FOREIGN KEY (`miscrysettingid`) REFERENCES `miscrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `miscassesslevelrange` */

insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000006','MIBCI00000016','MIBC00000002','0.00','300000.00','25.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000007','MIBCI00000016','MIBC00000002','300001.00','500000.00','30.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000008','MIBCI00000016','MIBC00000002','500001.00','750000.00','35.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000009','MIBCI00000016','MIBC00000002','750001.00','1000000.00','40.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000010','MIBCI00000016','MIBC00000002','1000001.00','2000000.00','45.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000011','MIBCI00000016','MIBC00000002','2000001.00','999999999999.00','50.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000012','MIBCI00000017','MIBC00000002','0.00','300000.00','30.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000013','MIBCI00000017','MIBC00000002','300001.00','500000.00','35.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000014','MIBCI00000017','MIBC00000002','500001.00','750000.00','40.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000015','MIBCI00000017','MIBC00000002','750001.00','1000000.00','50.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000016','MIBCI00000017','MIBC00000002','1000001.00','2000000.00','60.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000017','MIBCI00000017','MIBC00000002','2000001.00','5000000.00','70.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000018','MIBCI00000017','MIBC00000002','5000001.00','10000000.00','75.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000019','MIBCI00000017','MIBC00000002','10000001.00','999999999999.00','80.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000020','MIBCI00000021','MIBC00000002','0.00','300000.00','30.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000021','MIBCI00000021','MIBC00000002','300001.00','500000.00','35.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000022','MIBCI00000021','MIBC00000002','500001.00','750000.00','40.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000023','MIBCI00000021','MIBC00000002','750001.00','1000000.00','50.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000024','MIBCI00000021','MIBC00000002','1000001.00','2000000.00','60.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000025','MIBCI00000021','MIBC00000002','2000001.00','5000000.00','70.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000026','MIBCI00000021','MIBC00000002','5000001.00','10000000.00','75.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000027','MIBCI00000021','MIBC00000002','10000001.00','999999999999.00','80.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000028','MIBCI00000023','MIBC00000002','0.00','175000.00','0.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000029','MIBCI00000023','MIBC00000002','175001.00','300000.00','10.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000030','MIBCI00000023','MIBC00000002','300001.00','500000.00','20.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000031','MIBCI00000023','MIBC00000002','500001.00','750000.00','25.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000032','MIBCI00000023','MIBC00000002','750001.00','1000000.00','30.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000033','MIBCI00000023','MIBC00000002','1000001.00','2000000.00','35.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000034','MIBCI00000023','MIBC00000002','2000001.00','5000000.00','40.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000035','MIBCI00000023','MIBC00000002','5000001.00','10000000.00','50.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000036','MIBCI00000023','MIBC00000002','10000001.00','999999999.00','60.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000037','MIBCI00000025','MIBC00000002','0.00','300000.00','45.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000038','MIBCI00000025','MIBC00000002','300001.00','500000.00','50.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000039','MIBCI00000025','MIBC00000002','500001.00','750000.00','55.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000040','MIBCI00000025','MIBC00000002','750001.00','1000000.00','60.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000041','MIBCI00000025','MIBC00000002','1000001.00','2000000.00','65.00');
insert  into `miscassesslevelrange`(`objid`,`miscassesslevelid`,`miscrysettingid`,`mvfrom`,`mvto`,`rate`) values ('MIBCID00000042','MIBCI00000025','MIBC00000002','2000001.00','0.00','70.00');

/*Table structure for table `miscitem` */

DROP TABLE IF EXISTS `miscitem`;

CREATE TABLE `miscitem` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(10) NOT NULL default '' COMMENT 'DRAFT, APPROVED',
  `code` varchar(20) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_miscitem_code` (`code`),
  UNIQUE KEY `ux_miscitem_name` (`name`),
  KEY `ix_miscitem_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `miscitem` */

insert  into `miscitem`(`objid`,`state`,`code`,`name`) values ('ADI20000105','APPROVED','B-1-P','PAVE CONC./4 INCH THICK');
insert  into `miscitem`(`objid`,`state`,`code`,`name`) values ('ADI20000106','APPROVED','B-1-A','PAVEMENT ASPHALT L. COARSE');
insert  into `miscitem`(`objid`,`state`,`code`,`name`) values ('ADI20000107','APPROVED','B-2','FENCE 4\" CHB');
insert  into `miscitem`(`objid`,`state`,`code`,`name`) values ('ADI20000108','APPROVED','B-2-6','FENCE 6\" CHB');
insert  into `miscitem`(`objid`,`state`,`code`,`name`) values ('ADI20000109','APPROVED','B-2-R','REINFORCED CONCRETE');
insert  into `miscitem`(`objid`,`state`,`code`,`name`) values ('ADI20000110','APPROVED','B-2-I','FENCE INTERLINK WIRE');
insert  into `miscitem`(`objid`,`state`,`code`,`name`) values ('ADI20000116','APPROVED','B-7-O','16 ORDINARY STEEL PLATES');
insert  into `miscitem`(`objid`,`state`,`code`,`name`) values ('ADI20000117','APPROVED','B-7-G','18\" GALVANIZED STEEL PLATES');
insert  into `miscitem`(`objid`,`state`,`code`,`name`) values ('ADI20000118','APPROVED','B-7-R','18\" ORDINARY STEEL PLATES');
insert  into `miscitem`(`objid`,`state`,`code`,`name`) values ('ADI30000095','APPROVED','P-S','PIER');
insert  into `miscitem`(`objid`,`state`,`code`,`name`) values ('FRADI00000001','APPROVED','IM','IMPROVEMENT');
insert  into `miscitem`(`objid`,`state`,`code`,`name`) values ('FRADI00000002','APPROVED','WT','WATER TANK');
insert  into `miscitem`(`objid`,`state`,`code`,`name`) values ('FRADI00000007','APPROVED','WT2','PAVE CONC./8 INCH THICK');

/*Table structure for table `miscitemvalue` */

DROP TABLE IF EXISTS `miscitemvalue`;

CREATE TABLE `miscitemvalue` (
  `objid` varchar(50) NOT NULL,
  `miscrysettingid` varchar(50) NOT NULL,
  `miscitem_objid` varchar(50) NOT NULL default '',
  `expr` varchar(100) NOT NULL,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_miscitemvalue_rysetting_item` (`miscrysettingid`,`miscitem_objid`),
  KEY `FK_miscitemvalue_miscitem` (`miscitem_objid`),
  KEY `ix_miscitemvalue_previd` (`previd`),
  CONSTRAINT `FK_miscitemvalue_miscitem` FOREIGN KEY (`miscitem_objid`) REFERENCES `miscitem` (`objid`),
  CONSTRAINT `FK_miscitemvalue_miscrysetting` FOREIGN KEY (`miscrysettingid`) REFERENCES `miscrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `miscitemvalue` */

insert  into `miscitemvalue`(`objid`,`miscrysettingid`,`miscitem_objid`,`expr`,`previd`) values ('ADI20000105','MIBC00000002','ADI20000105','UNIT_VALUE',NULL);
insert  into `miscitemvalue`(`objid`,`miscrysettingid`,`miscitem_objid`,`expr`,`previd`) values ('ADI20000106','MIBC00000002','ADI20000106','UNIT_VALUE',NULL);
insert  into `miscitemvalue`(`objid`,`miscrysettingid`,`miscitem_objid`,`expr`,`previd`) values ('ADI20000107','MIBC00000002','ADI20000107','UNIT_VALUE',NULL);
insert  into `miscitemvalue`(`objid`,`miscrysettingid`,`miscitem_objid`,`expr`,`previd`) values ('ADI20000108','MIBC00000002','ADI20000108','UNIT_VALUE',NULL);
insert  into `miscitemvalue`(`objid`,`miscrysettingid`,`miscitem_objid`,`expr`,`previd`) values ('ADI20000109','MIBC00000002','ADI20000109','UNIT_VALUE',NULL);
insert  into `miscitemvalue`(`objid`,`miscrysettingid`,`miscitem_objid`,`expr`,`previd`) values ('ADI20000110','MIBC00000002','ADI20000110','UNIT_VALUE',NULL);
insert  into `miscitemvalue`(`objid`,`miscrysettingid`,`miscitem_objid`,`expr`,`previd`) values ('ADI20000116','MIBC00000002','ADI20000116','UNIT_VALUE',NULL);
insert  into `miscitemvalue`(`objid`,`miscrysettingid`,`miscitem_objid`,`expr`,`previd`) values ('ADI20000117','MIBC00000002','ADI20000117','UNIT_VALUE',NULL);
insert  into `miscitemvalue`(`objid`,`miscrysettingid`,`miscitem_objid`,`expr`,`previd`) values ('ADI20000118','MIBC00000002','ADI20000118','UNIT_VALUE',NULL);
insert  into `miscitemvalue`(`objid`,`miscrysettingid`,`miscitem_objid`,`expr`,`previd`) values ('ADI30000095','MIBC00000002','ADI30000095','UNIT_VALUE',NULL);
insert  into `miscitemvalue`(`objid`,`miscrysettingid`,`miscitem_objid`,`expr`,`previd`) values ('FRADI00000001','MIBC00000002','FRADI00000001','UNIT_VALUE',NULL);
insert  into `miscitemvalue`(`objid`,`miscrysettingid`,`miscitem_objid`,`expr`,`previd`) values ('FRADI00000002','MIBC00000002','FRADI00000002','UNIT_VALUE',NULL);
insert  into `miscitemvalue`(`objid`,`miscrysettingid`,`miscitem_objid`,`expr`,`previd`) values ('FRADI00000007','MIBC00000002','FRADI00000007','UNIT_VALUE',NULL);

/*Table structure for table `miscrysetting` */

DROP TABLE IF EXISTS `miscrysetting`;

CREATE TABLE `miscrysetting` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(15) NOT NULL,
  `ry` int(11) NOT NULL,
  `previd` varchar(50) default NULL,
  `appliedto` text,
  PRIMARY KEY  (`objid`),
  KEY `ix_miscrysetting_ry` (`ry`),
  KEY `ix_miscrysetting_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `miscrysetting` */

insert  into `miscrysetting`(`objid`,`state`,`ry`,`previd`,`appliedto`) values ('MIBC00000002','APPROVED',2002,NULL,'ILIGAN CITY');

/*Table structure for table `planttree` */

DROP TABLE IF EXISTS `planttree`;

CREATE TABLE `planttree` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(10) NOT NULL default '' COMMENT 'DRAFT, APPROVED',
  `code` varchar(20) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_planttree_code` (`code`),
  UNIQUE KEY `ux_planttree_name` (`name`),
  KEY `ix_planttree_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `planttree` */

insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TRE30000019','APPROVED','5S','FALCATA TREE');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TRE30000020','APPROVED','5T','GEMELINA TREE');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TRE30000021','APPROVED','5U','GIANT IPIL-IPIL');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TREE00000001','APPROVED','5A','AVOCADO');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TREE00000002','APPROVED','5B','BAMBOO');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TREE00000003','APPROVED','5C','BANANA HILLS');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TREE00000004','APPROVED','5D','BREADFRUIT');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TREE00000005','APPROVED','5E','CACAO');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TREE00000006','APPROVED','5F','CITRUS');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TREE00000007','APPROVED','5G','COCONUT TREE');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TREE00000008','APPROVED','5H','COFFEE');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TREE00000009','APPROVED','5I','DURIAN');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TREE00000010','APPROVED','5J','JACKFRUIT');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TREE00000011','APPROVED','5K','LANZONES');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TREE00000012','APPROVED','5L','MACOPA');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TREE00000013','APPROVED','5M','MADANG');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TREE00000014','APPROVED','5N','MANGO');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TREE00000015','APPROVED','5O','NIPA CROWN');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TREE00000016','APPROVED','5P','ORANGE');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TREE00000017','APPROVED','5Q','STARAPPLE');
insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('TREE00000018','APPROVED','5R','KANKONG');

/*Table structure for table `planttreeassesslevel` */

DROP TABLE IF EXISTS `planttreeassesslevel`;

CREATE TABLE `planttreeassesslevel` (
  `objid` varchar(50) NOT NULL,
  `planttreerysettingid` varchar(50) NOT NULL default '',
  `code` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `rate` decimal(16,2) NOT NULL,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_planttreeassesslevel_settingcode` (`planttreerysettingid`,`code`),
  UNIQUE KEY `ux_planttreeassesslevel_settingname` (`planttreerysettingid`,`name`),
  KEY `FK_planttreeassesslevel_planttreeassesslevel` (`previd`),
  CONSTRAINT `FK_planttreeassesslevel_planttreerysetting` FOREIGN KEY (`planttreerysettingid`) REFERENCES `planttreerysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `planttreeassesslevel` */

insert  into `planttreeassesslevel`(`objid`,`planttreerysettingid`,`code`,`name`,`rate`,`previd`) values ('TRCI20000007','TRC20000004','GO','GOVERNMENT OWNED','10.00',NULL);
insert  into `planttreeassesslevel`(`objid`,`planttreerysettingid`,`code`,`name`,`rate`,`previd`) values ('TRCI20000008','TRC20000004','GE','GENERAL','40.00',NULL);

/*Table structure for table `planttreerysetting` */

DROP TABLE IF EXISTS `planttreerysetting`;

CREATE TABLE `planttreerysetting` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(15) NOT NULL,
  `ry` int(11) NOT NULL,
  `applyagriadjustment` int(11) NOT NULL,
  `appliedto` text,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_planttreerysetting_planttreerysetting` (`previd`),
  KEY `ix_planttreerysetting_ry` (`ry`),
  CONSTRAINT `FK_planttreerysetting_planttreerysetting` FOREIGN KEY (`previd`) REFERENCES `planttreerysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `planttreerysetting` */

insert  into `planttreerysetting`(`objid`,`state`,`ry`,`applyagriadjustment`,`appliedto`,`previd`) values ('TRC20000004','DRAFT',2002,1,'ILIGAN CITY',NULL);

/*Table structure for table `planttreeunitvalue` */

DROP TABLE IF EXISTS `planttreeunitvalue`;

CREATE TABLE `planttreeunitvalue` (
  `objid` varchar(50) NOT NULL,
  `planttreerysettingid` varchar(50) NOT NULL,
  `planttree_objid` varchar(50) NOT NULL default '',
  `code` varchar(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `unitvalue` decimal(10,2) NOT NULL,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_planttreeunitvalue_settingplanttreecode` (`planttreerysettingid`,`planttree_objid`,`code`),
  UNIQUE KEY `ux_planttreeunitvalue_settingplanttreename` (`planttreerysettingid`,`planttree_objid`,`name`),
  KEY `FK_planttreeunitvalue_planttreeunitvalue` (`previd`),
  KEY `FK_planttreeunitvalue_planttree` (`planttree_objid`),
  CONSTRAINT `FK_planttreeunitvalue_planttree` FOREIGN KEY (`planttree_objid`) REFERENCES `planttree` (`objid`),
  CONSTRAINT `FK_planttreeunitvalue_planttreerysetting` FOREIGN KEY (`planttreerysettingid`) REFERENCES `planttreerysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `planttreeunitvalue` */

insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000015','TRC20000004','TREE00000007','1ST CLASS','1ST CLASS','400.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000016','TRC20000004','TREE00000007','2ND CLASS','2ND CLASS','300.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000017','TRC20000004','TREE00000007','3RD CLASS','3RD CLASS','200.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000018','TRC20000004','TREE00000010','1ST CLASS','1ST CLASS','420.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000019','TRC20000004','TREE00000001','1ST CLASS','1ST CLASS','30.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000020','TRC20000004','TREE00000001','2ND CLASS','2ND CLASS','24.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000021','TRC20000004','TREE00000001','3RD CLASS','3RD CLASS','18.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000022','TRC20000004','TREE00000002','1ST CLASS','1ST CLASS','450.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000023','TRC20000004','TREE00000002','2ND CLASS','2ND CLASS','390.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000024','TRC20000004','TREE00000002','3RD CLASS','3RD CLASS','330.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000025','TRC20000004','TREE00000003','1ST CLASS','1ST CLASS','200.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000026','TRC20000004','TREE00000003','2ND CLASS','2ND CLASS','160.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000027','TRC20000004','TREE00000003','3RD CLASS','3RD CLASS','120.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000028','TRC20000004','TREE00000004','1ST CLASS','1ST CLASS','30.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000029','TRC20000004','TREE00000004','2ND CLASS','2ND CLASS','24.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000030','TRC20000004','TREE00000004','3RD CLASS','3RD CLASS','18.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000031','TRC20000004','TREE00000005','1ST CLASS','1ST CLASS','90.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000032','TRC20000004','TREE00000005','2ND CLASS','2ND CLASS','72.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000033','TRC20000004','TREE00000005','3RD CLASS','3RD CLASS','30.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000034','TRC20000004','TREE00000006','1ST CLASS','1ST CLASS','100.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000035','TRC20000004','TREE00000006','2ND CLASS','2ND CLASS','75.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000036','TRC20000004','TREE00000006','3RD CLASS','3RD CLASS','50.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000037','TRC20000004','TREE00000008','1ST CLASS','1ST CLASS','420.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000038','TRC20000004','TREE00000009','1ST CLASS','1ST CLASS','90.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000039','TRC20000004','TREE00000009','2ND CLASS','2ND CLASS','72.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000040','TRC20000004','TREE00000009','3RD CLASS','3RD CLASS','57.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000041','TRC20000004','TREE00000011','1ST CLASS','1ST CLASS','500.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000042','TRC20000004','TREE00000011','2ND CLASS','2ND CLASS','420.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000043','TRC20000004','TREE00000011','3RD CLASS','3RD CLASS','360.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000044','TRC20000004','TREE00000012','1ST CLASS','1ST CLASS','30.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000045','TRC20000004','TREE00000012','2ND CLASS','2ND CLASS','24.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000046','TRC20000004','TREE00000012','3RD CLASS','3RD CLASS','18.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000047','TRC20000004','TREE00000013','1ST CLASS','1ST CLASS','600.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000048','TRC20000004','TREE00000014','1ST CLASS','1ST CLASS','800.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000049','TRC20000004','TREE00000015','1ST CLASS','1ST CLASS','60.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000050','TRC20000004','TREE00000015','2ND CLASS','2ND CLASS','40.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000051','TRC20000004','TREE00000015','3RD CLASS','3RD CLASS','20.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000052','TRC20000004','TREE00000016','1ST CLASS','1ST CLASS','150.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000053','TRC20000004','TREE00000016','2ND CLASS','2ND CLASS','100.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000054','TRC20000004','TREE00000016','3RD CLASS','3RD CLASS','50.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000055','TRC20000004','TREE00000017','1ST CLASS','1ST CLASS','75.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000056','TRC20000004','TREE00000017','2ND CLASS','2ND CLASS','60.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV20000057','TRC20000004','TREE00000017','3RD CLASS','3RD CLASS','45.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV30000088','TRC20000004','TRE30000019','1ST','1ST','200.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV30000089','TRC20000004','TRE30000020','1ST','1ST','300.00',NULL);
insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('TRV30000090','TRC20000004','TRE30000021','1ST','1ST','70.00',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
