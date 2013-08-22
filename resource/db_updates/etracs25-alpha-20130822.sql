/*
SQLyog Ultimate v9.63 
MySQL - 5.0.27-community-nt : Database - etracs25
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) default NULL,
  `state` varchar(10) default NULL,
  `chartid` varchar(50) default NULL,
  `code` varchar(50) default NULL,
  `title` varchar(255) default NULL,
  `type` varchar(20) default NULL,
  `acctgroup` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_code` (`code`),
  KEY `ix_parentid` (`parentid`),
  KEY `ix_title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account` */

insert  into `account`(`objid`,`parentid`,`state`,`chartid`,`code`,`title`,`type`,`acctgroup`) values ('01',NULL,'SYSTEM',NULL,'01','ASSET','group','ASSET'),('02',NULL,'SYSTEM',NULL,'02','LIABILITY','group','LIABILITY'),('03',NULL,'SYSTEM',NULL,'03','EQUITY','group','EQUITY'),('04',NULL,'SYSTEM',NULL,'04','REVENUE','group','REVENUE'),('05',NULL,'SYSTEM',NULL,'05','EXPENSE','group','EXPENSE'),('ACCT-37c5bde5:140861f2dd2:-7eb0','ACCT-37c5bde5:140861f2dd2:-7ec4','APPROVED',NULL,'100-02','CLEARANCES','group',NULL),('ACCT-37c5bde5:140861f2dd2:-7ec0','ACCT-37c5bde5:140861f2dd2:-7ec4','APPROVED',NULL,'100-01','BUSINESS TAX','group',NULL),('ACCT-37c5bde5:140861f2dd2:-7ec4','04','APPROVED',NULL,'100','GENERAL','group',NULL),('ACCT-459fc8a6:14095266043:-7eb6','ACCT-459fc8a6:14095266043:-7ed5','DRAFT',NULL,'100-03-02','LABORATORY FEES','detail',NULL),('ACCT-459fc8a6:14095266043:-7eb9','ACCT-459fc8a6:14095266043:-7ed5','APPROVED',NULL,'100-03-01','MEDICINE','detail',NULL),('ACCT-459fc8a6:14095266043:-7ece','ACCT-37c5bde5:140861f2dd2:-7ec4','DRAFT',NULL,'100-04','INCOME FROM ECONOMIC ENTERPRISE WATER WORKS','group',NULL),('ACCT-459fc8a6:14095266043:-7ed5','ACCT-37c5bde5:140861f2dd2:-7ec4','APPROVED',NULL,'100-03','INCOME FROM ECONOMIC ENTERPRISE HOSPITAL','group',NULL),('ACCT-459fc8a6:14095266043:-7f88','04','APPROVED',NULL,'101','TRUST FUND','group',NULL),('ACCT-5a208dc1:1409926dd39:-7faa','ACCT-37c5bde5:140861f2dd2:-7eb0','DRAFT',NULL,'100-02-01','POLICE CLEARANCE','detail',NULL),('ACCT3cbb7b7f:14094ecf2be:-7fbc','ACCT-37c5bde5:140861f2dd2:-7ec0','APPROVED',NULL,'RET','RETAILER','detail',NULL),('ACCT3cbb7b7f:14094ecf2be:-7fbf','ACCT-37c5bde5:140861f2dd2:-7ec0','APPROVED',NULL,'MA','MANUFACTURER','detail',NULL),('ACCT70837f92:1409950fafc:-7f74','ACCT-37c5bde5:140861f2dd2:-7ec0','DRAFT',NULL,'WH','WHOLESALER','detail',NULL),('ACCT70837f92:1409950fafc:-7fce','04','APPROVED',NULL,'588','REAL PROPERTY TAX','group',NULL),('ACCT70837f92:1409950fafc:-7fd5','04','APPROVED',NULL,'581','TAX ON BUSINESS','group',NULL);

/*Table structure for table `account_segment` */

DROP TABLE IF EXISTS `account_segment`;

CREATE TABLE `account_segment` (
  `name` varchar(50) NOT NULL,
  `objectname` varchar(50) NOT NULL default '',
  `title` varchar(50) default NULL,
  `sortorder` int(11) default NULL,
  `depends` varchar(50) default NULL,
  `source` varchar(50) default NULL,
  `valuetype` varchar(10) default NULL,
  PRIMARY KEY  (`name`,`objectname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `account_segment` */

insert  into `account_segment`(`name`,`objectname`,`title`,`sortorder`,`depends`,`source`,`valuetype`) values ('account','bankaccount','NGAS Account',0,NULL,'account','single'),('account','revenueitem','NGAS Account',0,NULL,'account','single'),('sreaccount','revenueitem','SRE Account',0,NULL,'account','single'),('sresubacct','revenueitem','SRE SubAccount',2,'sresubacct','account','single'),('subaccount','revenueitem','NGAS SubAccount',2,'account','account','single');

/*Table structure for table `af` */

DROP TABLE IF EXISTS `af`;

CREATE TABLE `af` (
  `objid` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `aftype` varchar(10) NOT NULL,
  `unit` varchar(10) NOT NULL,
  `unitqty` int(11) NOT NULL,
  `denomination` decimal(10,2) NOT NULL,
  `serieslength` int(11) NOT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `af` */

insert  into `af`(`objid`,`description`,`aftype`,`unit`,`unitqty`,`denomination`,`serieslength`) values ('0016','COMMUNITY TAX CERTIFICATE (INDIVIDUAL)','serial','STUB',50,'0.00',7),('51','ACCOUNTABLE FORM #51','serial','STUB',50,'0.00',7),('52','LARGE CATTLE TRANSFER','serial','STUB',50,'0.00',7),('53','LARGE CATTLE OWNERSHIP','serial','STUB',50,'0.00',7),('54','MARRIAGE LICENSE FEE','serial','STUB',50,'0.00',7),('56','REAL PROPERTY TAX RECEIPT','serial','STUB',50,'0.00',7),('57','SLAUGHTER PERMIT','serial','STUB',50,'0.00',7),('58','BURIAL PERMIT FEE','serial','STUB',50,'0.00',7),('907','COMMUNITY TAX(CORPORATE)','serial','STUB',50,'0.00',7),('CT1','CASH TICKETS P1.00','nonserial','STUB',2000,'1.00',7),('CT10','CASH TICKET P10.00','nonserial','STUB',2000,'10.00',7),('CT2','CASH TICKETS P2.00','nonserial','STUB',2000,'2.00',7),('CT5','CASH TICKETS P 5.00','nonserial','pad',2000,'5.00',7);

/*Table structure for table `afcontrol` */

DROP TABLE IF EXISTS `afcontrol`;

CREATE TABLE `afcontrol` (
  `objid` varchar(50) NOT NULL,
  `mode` varchar(10) default NULL,
  `state` varchar(10) default NULL,
  `af` varchar(10) default NULL,
  `controlid` varchar(50) default NULL,
  `prefix` varchar(10) default NULL,
  `suffix` varchar(10) default NULL,
  `stub` int(11) default NULL,
  `active` int(11) default NULL,
  `currentlineno` int(11) default NULL,
  `cancelledseries` varchar(255) default NULL,
  `subcollector_objid` varchar(50) default NULL,
  `subcollector_name` varchar(100) default NULL,
  `subcollector_title` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_afcontrol` (`controlid`),
  CONSTRAINT `FK_afcontrol` FOREIGN KEY (`controlid`) REFERENCES `afstockcontrol` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `afcontrol` */

insert  into `afcontrol`(`objid`,`mode`,`state`,`af`,`controlid`,`prefix`,`suffix`,`stub`,`active`,`currentlineno`,`cancelledseries`,`subcollector_objid`,`subcollector_name`,`subcollector_title`) values ('AFCTRL3f1e623f:140a585fb55:-7fd9','ONLINE','OPEN','58','AFSTOCK3f1e623f:140a585fb55:-7ff9',NULL,NULL,1,0,2,NULL,NULL,NULL,NULL),('AFCTRL3f1e623f:140a585fb55:-7fdb','ONLINE','OPEN','56','AFSTOCK3f1e623f:140a585fb55:-7ff8',NULL,NULL,2,0,2,NULL,NULL,NULL,NULL),('AFCTRL3f1e623f:140a585fb55:-7fdd','ONLINE','OPEN','56','AFSTOCK3f1e623f:140a585fb55:-7ff8',NULL,NULL,1,0,2,NULL,NULL,NULL,NULL),('AFCTRL3f1e623f:140a585fb55:-7fdf','ONLINE','OPEN','54','AFSTOCK3f1e623f:140a585fb55:-7ff7',NULL,NULL,1,0,2,NULL,NULL,NULL,NULL),('AFCTRL3f1e623f:140a585fb55:-7fe1','ONLINE','OPEN','53','AFSTOCK3f1e623f:140a585fb55:-7ff6',NULL,NULL,1,0,2,NULL,NULL,NULL,NULL),('AFCTRL3f1e623f:140a585fb55:-7fe3','ONLINE','OPEN','52','AFSTOCK3f1e623f:140a585fb55:-7ff5',NULL,NULL,1,1,2,NULL,NULL,NULL,NULL),('AFCTRL3f1e623f:140a585fb55:-7fe5','ONLINE','OPEN','51','AFSTOCK3f1e623f:140a585fb55:-7ff4',NULL,NULL,2,0,2,NULL,NULL,NULL,NULL),('AFCTRL3f1e623f:140a585fb55:-7fe7','ONLINE','OPEN','51','AFSTOCK3f1e623f:140a585fb55:-7ff4',NULL,NULL,1,1,2,NULL,NULL,NULL,NULL);

/*Table structure for table `afcontrol_activedetail` */

DROP TABLE IF EXISTS `afcontrol_activedetail`;

CREATE TABLE `afcontrol_activedetail` (
  `controlid` varchar(50) NOT NULL,
  `detailid` varchar(50) NOT NULL,
  PRIMARY KEY  (`controlid`),
  KEY `FK_afcontrol_activedetail_collector` (`detailid`),
  CONSTRAINT `FK_afcontrol_activedetail_afcontrol` FOREIGN KEY (`controlid`) REFERENCES `afcontrol` (`objid`),
  CONSTRAINT `FK_afcontrol_activedetail_collector` FOREIGN KEY (`detailid`) REFERENCES `afcontrol_detail` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `afcontrol_activedetail` */

insert  into `afcontrol_activedetail`(`controlid`,`detailid`) values ('AFCTRL3f1e623f:140a585fb55:-7fe7','AFCTRLD3f1e623f:140a585fb55:-7fb0'),('AFCTRL3f1e623f:140a585fb55:-7fe5','AFCTRLD3f1e623f:140a585fb55:-7fb1'),('AFCTRL3f1e623f:140a585fb55:-7fe3','AFCTRLD3f1e623f:140a585fb55:-7fb2'),('AFCTRL3f1e623f:140a585fb55:-7fe1','AFCTRLD3f1e623f:140a585fb55:-7fb3'),('AFCTRL3f1e623f:140a585fb55:-7fdf','AFCTRLD3f1e623f:140a585fb55:-7fb4'),('AFCTRL3f1e623f:140a585fb55:-7fdd','AFCTRLD3f1e623f:140a585fb55:-7fb5'),('AFCTRL3f1e623f:140a585fb55:-7fdb','AFCTRLD3f1e623f:140a585fb55:-7fb6'),('AFCTRL3f1e623f:140a585fb55:-7fd9','AFCTRLD3f1e623f:140a585fb55:-7fb7');

/*Table structure for table `afcontrol_detail` */

DROP TABLE IF EXISTS `afcontrol_detail`;

CREATE TABLE `afcontrol_detail` (
  `objid` varchar(50) NOT NULL,
  `controlid` varchar(50) default NULL,
  `refdate` datetime default NULL,
  `reftype` varchar(50) default NULL,
  `collector_objid` varchar(50) default NULL,
  `collector_name` varchar(50) default NULL,
  `collector_title` varchar(100) default NULL,
  `lineno` int(11) default NULL,
  `startseries` int(11) default NULL,
  `endseries` int(11) default NULL,
  `currentseries` int(11) default NULL,
  `qtyreceived` int(11) default NULL,
  `qtybegin` int(11) default NULL,
  `qtyissued` int(11) default NULL,
  `qtycancelled` int(11) default NULL,
  `qtybalance` int(11) default NULL,
  `cancelledseries` varchar(500) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_afcontrol_detail_afcontrol` (`controlid`),
  CONSTRAINT `FK_afcontrol_detail_afcontrol` FOREIGN KEY (`controlid`) REFERENCES `afcontrol` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `afcontrol_detail` */

insert  into `afcontrol_detail`(`objid`,`controlid`,`refdate`,`reftype`,`collector_objid`,`collector_name`,`collector_title`,`lineno`,`startseries`,`endseries`,`currentseries`,`qtyreceived`,`qtybegin`,`qtyissued`,`qtycancelled`,`qtybalance`,`cancelledseries`) values ('AFCTRLD3f1e623f:140a585fb55:-7fb0','AFCTRL3f1e623f:140a585fb55:-7fe7','2013-08-22 18:58:21','REMITTANCE','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II',2,6000004,6000050,6000005,0,47,1,0,46,NULL),('AFCTRLD3f1e623f:140a585fb55:-7fb1','AFCTRL3f1e623f:140a585fb55:-7fe5','2013-08-22 18:58:21','REMITTANCE','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II',2,6000051,6000100,6000051,0,50,0,0,50,NULL),('AFCTRLD3f1e623f:140a585fb55:-7fb2','AFCTRL3f1e623f:140a585fb55:-7fe3','2013-08-22 18:58:21','REMITTANCE','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II',2,5000002,5000050,5000002,0,49,0,0,49,NULL),('AFCTRLD3f1e623f:140a585fb55:-7fb3','AFCTRL3f1e623f:140a585fb55:-7fe1','2013-08-22 18:58:21','REMITTANCE','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II',2,4000001,4000050,4000001,0,50,0,0,50,NULL),('AFCTRLD3f1e623f:140a585fb55:-7fb4','AFCTRL3f1e623f:140a585fb55:-7fdf','2013-08-22 18:58:21','REMITTANCE','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II',2,3000001,3000050,3000001,0,50,0,0,50,NULL),('AFCTRLD3f1e623f:140a585fb55:-7fb5','AFCTRL3f1e623f:140a585fb55:-7fdd','2013-08-22 18:58:21','REMITTANCE','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II',2,2000001,2000050,2000001,0,50,0,0,50,NULL),('AFCTRLD3f1e623f:140a585fb55:-7fb6','AFCTRL3f1e623f:140a585fb55:-7fdb','2013-08-22 18:58:21','REMITTANCE','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II',2,2000051,2000100,2000051,0,50,0,0,50,NULL),('AFCTRLD3f1e623f:140a585fb55:-7fb7','AFCTRL3f1e623f:140a585fb55:-7fd9','2013-08-22 18:58:21','REMITTANCE','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II',2,1000001,1000050,1000001,0,50,0,0,50,NULL),('AFCTRLD3f1e623f:140a585fb55:-7fd8','AFCTRL3f1e623f:140a585fb55:-7fd9','2013-08-22 18:22:51','ISSUED','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II',1,1000001,1000050,1000001,50,0,0,0,50,NULL),('AFCTRLD3f1e623f:140a585fb55:-7fda','AFCTRL3f1e623f:140a585fb55:-7fdb','2013-08-22 18:22:51','ISSUED','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II',1,2000051,2000100,2000051,50,0,0,0,50,NULL),('AFCTRLD3f1e623f:140a585fb55:-7fdc','AFCTRL3f1e623f:140a585fb55:-7fdd','2013-08-22 18:22:51','ISSUED','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II',1,2000001,2000050,2000001,50,0,0,0,50,NULL),('AFCTRLD3f1e623f:140a585fb55:-7fde','AFCTRL3f1e623f:140a585fb55:-7fdf','2013-08-22 18:22:51','ISSUED','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II',1,3000001,3000050,3000001,50,0,0,0,50,NULL),('AFCTRLD3f1e623f:140a585fb55:-7fe0','AFCTRL3f1e623f:140a585fb55:-7fe1','2013-08-22 18:22:51','ISSUED','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II',1,4000001,4000050,4000001,50,0,0,0,50,NULL),('AFCTRLD3f1e623f:140a585fb55:-7fe2','AFCTRL3f1e623f:140a585fb55:-7fe3','2013-08-22 18:22:51','ISSUED','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II',1,5000001,5000050,5000002,50,0,1,0,49,NULL),('AFCTRLD3f1e623f:140a585fb55:-7fe4','AFCTRL3f1e623f:140a585fb55:-7fe5','2013-08-22 18:22:51','ISSUED','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II',1,6000051,6000100,6000051,50,0,0,0,50,NULL),('AFCTRLD3f1e623f:140a585fb55:-7fe6','AFCTRL3f1e623f:140a585fb55:-7fe7','2013-08-22 18:22:51','ISSUED','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II',1,6000001,6000050,6000004,50,0,3,0,47,NULL);

/*Table structure for table `afcontrol_transfer` */

DROP TABLE IF EXISTS `afcontrol_transfer`;

CREATE TABLE `afcontrol_transfer` (
  `objid` varchar(50) NOT NULL default '',
  `txnno` varchar(50) default NULL,
  `dtposted` datetime default NULL,
  `controlid` varchar(50) default NULL,
  `user_objid` varchar(50) default NULL,
  `user_name` varchar(50) default NULL,
  `from_objid` varchar(50) default NULL,
  `from_name` varchar(100) default NULL,
  `to_objid` varchar(50) default NULL,
  `to_name` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_afcontrol_transfer_afcontrol` (`controlid`),
  CONSTRAINT `FK_afcontrol_transfer_afcontrol` FOREIGN KEY (`controlid`) REFERENCES `afcontrol` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `afcontrol_transfer` */

/*Table structure for table `afcontrolcancelled` */

DROP TABLE IF EXISTS `afcontrolcancelled`;

CREATE TABLE `afcontrolcancelled` (
  `objid` varchar(50) NOT NULL,
  `controlid` varchar(50) default NULL,
  `startseries` int(11) default NULL,
  `endseries` int(11) default NULL,
  `reason` varchar(50) default NULL,
  `collector` varchar(50) default NULL,
  `txndate` datetime default NULL,
  `qty` int(11) default NULL,
  `issuedby` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_afcontrolcancelled` (`controlid`),
  CONSTRAINT `FK_afcontrolcancelled` FOREIGN KEY (`controlid`) REFERENCES `afcontrol` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `afcontrolcancelled` */

/*Table structure for table `afcontroltransferhistory` */

DROP TABLE IF EXISTS `afcontroltransferhistory`;

CREATE TABLE `afcontroltransferhistory` (
  `objid` varchar(50) NOT NULL,
  `controlid` varchar(50) default NULL,
  `txndate` datetime default NULL,
  `collector` varchar(50) default NULL,
  `assignee` varchar(50) default NULL,
  `startseries` int(11) default NULL,
  `endseries` int(11) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_afcontroltransferhistory` (`controlid`),
  CONSTRAINT `FK_afcontroltransferhistory` FOREIGN KEY (`controlid`) REFERENCES `afcontrol` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `afcontroltransferhistory` */

/*Table structure for table `afissue` */

DROP TABLE IF EXISTS `afissue`;

CREATE TABLE `afissue` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) default NULL,
  `risid` varchar(50) default NULL,
  `issueno` varchar(50) default NULL,
  `txndate` datetime default NULL,
  `txntype` varchar(10) default NULL,
  `user_objid` varchar(50) default NULL,
  `user_name` varchar(100) default NULL,
  `issueto_objid` varchar(50) default NULL,
  `issueto_name` varchar(100) default NULL,
  `issueto_title` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_afissue_issueno` (`issueno`),
  UNIQUE KEY `afissue_ris` (`risid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `afissue` */

insert  into `afissue`(`objid`,`state`,`risid`,`issueno`,`txndate`,`txntype`,`user_objid`,`user_name`,`issueto_objid`,`issueto_name`,`issueto_title`) values ('AFISS-4627b190:140a585fcff:-7f68','CLOSED','RIS-4627b190:140a585fcff:-7fd5','AFISSUE00043','2013-08-22 18:22:51','AF:ISSUE','USR11700b22:1407632636b:-7e71','JZ','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II');

/*Table structure for table `afissueitem` */

DROP TABLE IF EXISTS `afissueitem`;

CREATE TABLE `afissueitem` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `af` varchar(10) default NULL,
  `qty` int(11) default NULL,
  `startseries` int(11) default NULL,
  `endseries` int(11) default NULL,
  `prefix` varchar(10) default NULL,
  `suffix` varchar(10) default NULL,
  `startstub` varchar(50) default NULL,
  `endstub` varchar(50) default NULL,
  KEY `FK_afissueitem` (`parentid`),
  CONSTRAINT `FK_afissueitem` FOREIGN KEY (`parentid`) REFERENCES `afissue` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `afissueitem` */

insert  into `afissueitem`(`objid`,`parentid`,`af`,`qty`,`startseries`,`endseries`,`prefix`,`suffix`,`startstub`,`endstub`) values ('AFISI3f1e623f:140a585fb55:-7fed','AFISS-4627b190:140a585fcff:-7f68','51',2,6000001,6000100,NULL,NULL,'1','2'),('AFISI3f1e623f:140a585fb55:-7fec','AFISS-4627b190:140a585fcff:-7f68','52',1,5000001,5000050,NULL,NULL,'1','1'),('AFISI3f1e623f:140a585fb55:-7feb','AFISS-4627b190:140a585fcff:-7f68','53',1,4000001,4000050,NULL,NULL,'1','1'),('AFISI3f1e623f:140a585fb55:-7fea','AFISS-4627b190:140a585fcff:-7f68','54',1,3000001,3000050,NULL,NULL,'1','1'),('AFISI3f1e623f:140a585fb55:-7fe9','AFISS-4627b190:140a585fcff:-7f68','56',2,2000001,2000100,NULL,NULL,'1','2'),('AFISI3f1e623f:140a585fb55:-7fe8','AFISS-4627b190:140a585fcff:-7f68','58',1,1000001,1000050,NULL,NULL,'1','1');

/*Table structure for table `afreceipt` */

DROP TABLE IF EXISTS `afreceipt`;

CREATE TABLE `afreceipt` (
  `objid` varchar(50) NOT NULL,
  `receiptno` varchar(50) default NULL,
  `state` varchar(50) default NULL,
  `risid` varchar(50) default NULL,
  `txndate` datetime default NULL,
  `txntype` varchar(25) default NULL,
  `user_objid` varchar(50) default NULL,
  `user_name` varchar(100) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_afreceipt_receiptno` (`receiptno`),
  UNIQUE KEY `afreceipt_ris` (`risid`),
  KEY `FK_afreceipt` (`risid`),
  CONSTRAINT `FK_afreceipt` FOREIGN KEY (`risid`) REFERENCES `ris` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `afreceipt` */

insert  into `afreceipt`(`objid`,`receiptno`,`state`,`risid`,`txndate`,`txntype`,`user_objid`,`user_name`) values ('AFRCT-4627b190:140a585fcff:-7fe0','AFRCT00025','CLOSED','RIS-4ce44929:140a4adea93:-7fe0','2013-08-22 18:19:13','AF:PURCHASE','USR11700b22:1407632636b:-7e71','JZ');

/*Table structure for table `afreceiptitem` */

DROP TABLE IF EXISTS `afreceiptitem`;

CREATE TABLE `afreceiptitem` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL default '',
  `af` varchar(10) default NULL,
  `qty` int(11) default NULL,
  `startseries` int(11) default NULL,
  `endseries` int(11) default NULL,
  `prefix` varchar(10) default NULL,
  `suffix` varchar(10) default NULL,
  `startstub` varchar(50) default NULL,
  `endstub` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_afreceiptitem_af` (`af`),
  KEY `FK_afreceiptitem` (`parentid`),
  CONSTRAINT `FK_afreceiptitem` FOREIGN KEY (`parentid`) REFERENCES `afreceipt` (`objid`),
  CONSTRAINT `FK_afreceiptitem_af` FOREIGN KEY (`af`) REFERENCES `af` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `afreceiptitem` */

insert  into `afreceiptitem`(`objid`,`parentid`,`af`,`qty`,`startseries`,`endseries`,`prefix`,`suffix`,`startstub`,`endstub`) values ('RIST3f1e623f:140a585fb55:-7ffa','AFRCT-4627b190:140a585fcff:-7fe0','51',100,6000001,6005000,NULL,NULL,'1','100'),('RIST3f1e623f:140a585fb55:-7ffb','AFRCT-4627b190:140a585fcff:-7fe0','52',50,5000001,5002500,NULL,NULL,'1','50'),('RIST3f1e623f:140a585fb55:-7ffc','AFRCT-4627b190:140a585fcff:-7fe0','53',50,4000001,4002500,NULL,NULL,'1','50'),('RIST3f1e623f:140a585fb55:-7ffd','AFRCT-4627b190:140a585fcff:-7fe0','54',50,3000001,3002500,NULL,NULL,'1','50'),('RIST3f1e623f:140a585fb55:-7ffe','AFRCT-4627b190:140a585fcff:-7fe0','56',100,2000001,2005000,NULL,NULL,'1','100'),('RIST3f1e623f:140a585fb55:-7fff','AFRCT-4627b190:140a585fcff:-7fe0','58',50,1000001,1002500,NULL,NULL,'1','50');

/*Table structure for table `afrequest` */

DROP TABLE IF EXISTS `afrequest`;

CREATE TABLE `afrequest` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) default NULL,
  `txndate` datetime default NULL,
  `txntype` varchar(10) default NULL,
  `requester_objid` varchar(50) default NULL,
  `requester_lastname` varchar(50) default NULL,
  `requester_firstname` varchar(50) default NULL,
  `requester_jobtitle` varchar(50) default NULL,
  `reqdate` datetime default NULL,
  `requnit` varchar(50) default NULL,
  `vendor` varchar(100) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `afrequest` */

/*Table structure for table `afrequestitem` */

DROP TABLE IF EXISTS `afrequestitem`;

CREATE TABLE `afrequestitem` (
  `objid` varchar(50) NOT NULL,
  `reqid` varchar(50) default NULL,
  `af` varchar(10) default NULL,
  `qty` int(11) default '0',
  `qtyreceived` int(11) default '0',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `req_af_uidx` (`reqid`,`af`),
  KEY `FK_afrequestitem_af` (`af`),
  CONSTRAINT `FK_afrequestitem` FOREIGN KEY (`reqid`) REFERENCES `afrequest` (`objid`),
  CONSTRAINT `FK_afrequestitem_af` FOREIGN KEY (`af`) REFERENCES `af` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `afrequestitem` */

/*Table structure for table `afstockbeginbalance` */

DROP TABLE IF EXISTS `afstockbeginbalance`;

CREATE TABLE `afstockbeginbalance` (
  `objid` varchar(50) NOT NULL,
  `af` varchar(10) default NULL,
  `collector` varchar(50) default NULL,
  `startseries` int(11) default NULL,
  `endseries` int(11) default NULL,
  `qty` int(11) default NULL,
  `startstub` int(11) default NULL,
  `prefix` varchar(10) default NULL,
  `suffix` varchar(10) default NULL,
  `txndate` datetime default NULL,
  `createdby` varchar(50) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `afstockbeginbalance` */

/*Table structure for table `afstockcontrol` */

DROP TABLE IF EXISTS `afstockcontrol`;

CREATE TABLE `afstockcontrol` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) default NULL,
  `af` varchar(10) default NULL,
  `refid` varchar(50) default NULL,
  `reftype` varchar(25) default NULL,
  `refdate` datetime default NULL,
  `startstub` int(11) default NULL,
  `endstub` int(11) default NULL,
  `currentstub` int(50) default NULL,
  `startseries` int(11) default NULL,
  `endseries` int(11) default NULL,
  `currentseries` int(11) default NULL,
  `prefix` varchar(50) default NULL,
  `suffix` varchar(50) default NULL,
  `qtyreceived` int(11) default NULL,
  `qtyissued` int(11) default NULL,
  `qtybalance` int(11) default NULL,
  `qtycancelled` int(11) default NULL,
  `currentindexno` int(11) default NULL,
  `unit` varchar(10) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `afstockcontrol` */

insert  into `afstockcontrol`(`objid`,`state`,`af`,`refid`,`reftype`,`refdate`,`startstub`,`endstub`,`currentstub`,`startseries`,`endseries`,`currentseries`,`prefix`,`suffix`,`qtyreceived`,`qtyissued`,`qtybalance`,`qtycancelled`,`currentindexno`,`unit`) values ('AFSTOCK3f1e623f:140a585fb55:-7ff4','OPEN','51','AFRCT00025','AF:RECEIPT','2013-08-22 18:19:13',1,100,3,6000001,6005000,6000101,NULL,NULL,100,2,98,0,2,'STUB'),('AFSTOCK3f1e623f:140a585fb55:-7ff5','OPEN','52','AFRCT00025','AF:RECEIPT','2013-08-22 18:19:13',1,50,2,5000001,5002500,5000051,NULL,NULL,50,1,49,0,2,'STUB'),('AFSTOCK3f1e623f:140a585fb55:-7ff6','OPEN','53','AFRCT00025','AF:RECEIPT','2013-08-22 18:19:13',1,50,2,4000001,4002500,4000051,NULL,NULL,50,1,49,0,2,'STUB'),('AFSTOCK3f1e623f:140a585fb55:-7ff7','OPEN','54','AFRCT00025','AF:RECEIPT','2013-08-22 18:19:13',1,50,2,3000001,3002500,3000051,NULL,NULL,50,1,49,0,2,'STUB'),('AFSTOCK3f1e623f:140a585fb55:-7ff8','OPEN','56','AFRCT00025','AF:RECEIPT','2013-08-22 18:19:13',1,100,3,2000001,2005000,2000101,NULL,NULL,100,2,98,0,2,'STUB'),('AFSTOCK3f1e623f:140a585fb55:-7ff9','OPEN','58','AFRCT00025','AF:RECEIPT','2013-08-22 18:19:13',1,50,2,1000001,1002500,1000051,NULL,NULL,50,1,49,0,2,'STUB');

/*Table structure for table `afstockcontrol_detail` */

DROP TABLE IF EXISTS `afstockcontrol_detail`;

CREATE TABLE `afstockcontrol_detail` (
  `objid` varchar(50) NOT NULL,
  `controlid` varchar(50) default NULL,
  `refid` varchar(50) default NULL,
  `reftype` varchar(50) default NULL,
  `refdate` datetime default NULL,
  `indexno` int(11) default NULL,
  `startseries` int(11) default NULL,
  `endseries` int(11) default NULL,
  `dr` int(11) default NULL,
  `cr` int(11) default NULL,
  `runbal` int(11) default NULL,
  `postingrefid` varchar(50) default NULL,
  `remarks` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_afstockcontrol_detail` (`controlid`),
  CONSTRAINT `FK_afstockcontrol_detail` FOREIGN KEY (`controlid`) REFERENCES `afstockcontrol` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `afstockcontrol_detail` */

insert  into `afstockcontrol_detail`(`objid`,`controlid`,`refid`,`reftype`,`refdate`,`indexno`,`startseries`,`endseries`,`dr`,`cr`,`runbal`,`postingrefid`,`remarks`) values ('AFISSUE00010-51-2','AFRCT00009-51','AFISSUE00010','AF:ISSUE','2013-08-15 16:45:03',2,5000001,5000500,0,10,90,NULL,'issued to ELMO NAZARENO'),('AFISSUE00011-51-2','AFRCT00011-51','AFISSUE00011','AF:ISSUE','2013-08-15 17:10:12',2,1110001,1115500,0,110,890,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00011-51-3','AFRCT00009-51','AFISSUE00011','AF:ISSUE','2013-08-15 17:10:12',3,5000501,5005000,0,90,0,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00012-52-2','AFRCT00012-52','AFISSUE00012','AF:ISSUE','2013-08-15 17:45:49',2,5001001,5001100,0,2,8,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00013-56-2','AFRCT00013-56','AFISSUE00013','AF:ISSUE','2013-08-16 12:57:18',2,1110001,1110100,0,2,48,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00014-52-3','AFRCT00012-52','AFISSUE00014','AF:ISSUE','2013-08-16 13:29:02',3,5001101,5001150,0,1,7,NULL,'issued to ARNEL RETIZA'),('AFISSUE00014-53-2','AFRCT00010-53','AFISSUE00014','AF:ISSUE','2013-08-16 13:29:02',2,5000001,5000050,0,1,9,NULL,'issued to ARNEL RETIZA'),('AFISSUE00015-53-3','AFRCT00010-53','AFISSUE00015','AF:ISSUE','2013-08-17 10:19:11',3,5000051,5000100,0,1,8,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00016-54-2','AFRCT00015-54','AFISSUE00016','AF:ISSUE','2013-08-17 10:21:38',2,1234501,1234550,0,1,49,NULL,'issued to GRACE CABANTAN'),('AFISSUE00016-58-2','AFRCT00015-58','AFISSUE00016','AF:ISSUE','2013-08-17 10:21:38',2,1238501,1238550,0,1,49,NULL,'issued to GRACE CABANTAN'),('AFISSUE00017-52-4','AFRCT00012-52','AFISSUE00017','AF:ISSUE','2013-08-17 12:13:14',4,5001151,5001200,0,1,6,NULL,'issued to PETER M PAN'),('AFISSUE00018-56-3','AFRCT00013-56','AFISSUE00018','AF:ISSUE','2013-08-17 12:27:57',3,1110101,1110250,0,3,45,NULL,'issued to PETER M PAN'),('AFISSUE00019-58-3','AFRCT00015-58','AFISSUE00019','AF:ISSUE','2013-08-17 12:30:02',3,1238551,1238600,0,1,48,NULL,'issued to PETER M PAN'),('AFISSUE00020-58-4','AFRCT00015-58','AFISSUE00020','AF:ISSUE','2013-08-17 12:30:52',4,1238601,1238650,0,1,47,NULL,'issued to PETER M PAN'),('AFISSUE00021-51-3','AFRCT00011-51','AFISSUE00021','AF:ISSUE','2013-08-17 14:23:33',3,1115501,1116000,0,10,880,NULL,'issued to PETER M PAN'),('AFISSUE00021-52-5','AFRCT00012-52','AFISSUE00021','AF:ISSUE','2013-08-17 14:23:33',5,5001201,5001450,0,5,1,NULL,'issued to PETER M PAN'),('AFISSUE00021-53-4','AFRCT00010-53','AFISSUE00021','AF:ISSUE','2013-08-17 14:23:33',4,5000101,5000200,0,2,6,NULL,'issued to PETER M PAN'),('AFISSUE00021-54-3','AFRCT00015-54','AFISSUE00021','AF:ISSUE','2013-08-17 14:23:33',3,1234551,1234650,0,2,47,NULL,'issued to PETER M PAN'),('AFISSUE00021-56-4','AFRCT00013-56','AFISSUE00021','AF:ISSUE','2013-08-17 14:23:33',4,1110251,1110400,0,3,42,NULL,'issued to PETER M PAN'),('AFISSUE00021-58-5','AFRCT00015-58','AFISSUE00021','AF:ISSUE','2013-08-17 14:23:33',5,1238651,1238700,0,1,46,NULL,'issued to PETER M PAN'),('AFISSUE00022-54-4','AFRCT00015-54','AFISSUE00022','AF:ISSUE','2013-08-17 15:48:26',4,1234651,1234700,0,1,46,NULL,'issued to GRACE CABANTAN'),('AFISSUE00022-58-6','AFRCT00015-58','AFISSUE00022','AF:ISSUE','2013-08-17 15:48:26',6,1238701,1238750,0,1,45,NULL,'issued to GRACE CABANTAN'),('AFISSUE00023-51-4','AFRCT00011-51','AFISSUE00023','AF:ISSUE','2013-08-17 16:11:23',4,1116001,1116050,0,1,879,NULL,'issued to ARNEL RETIZA'),('AFISSUE00024-51-5','AFRCT00011-51','AFISSUE00024','AF:ISSUE','2013-08-17 16:20:47',5,1116051,1116300,0,5,874,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00025-51-6','AFRCT00011-51','AFISSUE00025','AF:ISSUE','2013-08-17 16:25:02',6,1116301,1116800,0,10,864,NULL,'issued to ELMO NAZARENO'),('AFISSUE00026-51-7','AFRCT00011-51','AFISSUE00026','AF:ISSUE','2013-08-17 16:26:51',7,1116801,1116850,0,1,863,NULL,'issued to ARNEL RETIZA'),('AFISSUE00027-51-8','AFRCT00011-51','AFISSUE00027','AF:ISSUE','2013-08-17 16:29:18',8,1116851,1116900,0,1,862,NULL,'issued to GRACE CABANTAN'),('AFISSUE00027-57-2','AFRCT00016-57','AFISSUE00027','AF:ISSUE','2013-08-17 16:29:18',2,6897451,6897500,0,1,49,NULL,'issued to GRACE CABANTAN'),('AFISSUE00028-51-9','AFRCT00011-51','AFISSUE00028','AF:ISSUE','2013-08-17 16:39:44',9,1116901,1116950,0,1,861,NULL,'issued to ARNEL RETIZA'),('AFISSUE00029-56-5','AFRCT00013-56','AFISSUE00029','AF:ISSUE','2013-08-17 16:42:09',5,1110401,1110450,0,1,41,NULL,'issued to ARNEL RETIZA'),('AFISSUE00030-51-10','AFRCT00011-51','AFISSUE00030','AF:ISSUE','2013-08-17 16:44:33',10,1116951,1117050,0,2,859,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00031-52-6','AFRCT00012-52','AFISSUE00031','AF:ISSUE','2013-08-17 16:45:52',6,5001451,5001500,0,1,0,NULL,'issued to ARNEL RETIZA'),('AFISSUE00032-51-11','AFRCT00011-51','AFISSUE00032','AF:ISSUE','2013-08-17 16:46:46',11,1117051,1117150,0,2,857,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00033-56-6','AFRCT00013-56','AFISSUE00033','AF:ISSUE','2013-08-17 16:47:08',6,1110451,1110500,0,1,40,NULL,'issued to ARNEL RETIZA'),('AFISSUE00034-51-12','AFRCT00011-51','AFISSUE00034','AF:ISSUE','2013-08-17 16:50:01',12,1117151,1117200,0,1,856,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00035-58-7','AFRCT00015-58','AFISSUE00035','AF:ISSUE','2013-08-17 17:04:06',7,1238751,1238800,0,1,44,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00036-54-5','AFRCT00015-54','AFISSUE00036','AF:ISSUE','2013-08-17 17:12:05',5,1234701,1234750,0,1,45,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00037-54-6','AFRCT00015-54','AFISSUE00037','AF:ISSUE','2013-08-17 17:46:15',6,1234751,1234800,0,1,44,NULL,'issued to ARNEL RETIZA'),('AFISSUE00038-51-13','AFRCT00011-51','AFISSUE00038','AF:ISSUE','2013-08-17 21:07:48',13,1117201,1117250,0,1,855,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00038-52-2','AFRCT00020-52','AFISSUE00038','AF:ISSUE','2013-08-17 21:07:48',2,2000001,2000050,0,1,9,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00038-53-5','AFRCT00010-53','AFISSUE00038','AF:ISSUE','2013-08-17 21:07:48',5,5000201,5000250,0,1,5,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00038-54-7','AFRCT00015-54','AFISSUE00038','AF:ISSUE','2013-08-17 21:07:48',7,1234801,1234850,0,1,43,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00038-58-8','AFRCT00015-58','AFISSUE00038','AF:ISSUE','2013-08-17 21:07:48',8,1238801,1238850,0,1,43,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00039-56-7','AFRCT00013-56','AFISSUE00039','AF:ISSUE','2013-08-17 21:33:13',7,1110501,1110550,0,1,39,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00040-51-14','AFRCT00011-51','AFISSUE00040','AF:ISSUE','2013-08-19 15:27:02',14,1117251,1117500,0,5,850,NULL,'issued to COLLECTOR 1 COLLECTOR'),('AFISSUE00041-51-2','AFSTOCK-6863628b:14096e1bdfc:-7ff5','AFISSUE00041','AF:ISSUE','2013-08-19 22:19:40',2,1000001,1000250,0,5,95,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00042-52-2','AFSTOCK-7f8d1d0d:1409950fa2e:-7fe3','AFISSUE00042','AF:ISSUE','2013-08-20 13:42:38',2,1200001,1200050,0,1,9,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00042-53-2','AFSTOCK-7f8d1d0d:1409950fa2e:-7fe2','AFISSUE00042','AF:ISSUE','2013-08-20 13:42:38',2,1400001,1400050,0,1,9,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00042-58-2','AFSTOCK-7f8d1d0d:1409950fa2e:-7fe1','AFISSUE00042','AF:ISSUE','2013-08-20 13:42:38',2,1500001,1500050,0,1,9,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00043-51-2','AFSTOCK3f1e623f:140a585fb55:-7ff4','AFISSUE00043','AF:ISSUE','2013-08-22 18:22:51',2,6000001,6000100,0,2,98,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00043-52-2','AFSTOCK3f1e623f:140a585fb55:-7ff5','AFISSUE00043','AF:ISSUE','2013-08-22 18:22:51',2,5000001,5000050,0,1,49,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00043-53-2','AFSTOCK3f1e623f:140a585fb55:-7ff6','AFISSUE00043','AF:ISSUE','2013-08-22 18:22:51',2,4000001,4000050,0,1,49,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00043-54-2','AFSTOCK3f1e623f:140a585fb55:-7ff7','AFISSUE00043','AF:ISSUE','2013-08-22 18:22:51',2,3000001,3000050,0,1,49,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00043-56-2','AFSTOCK3f1e623f:140a585fb55:-7ff8','AFISSUE00043','AF:ISSUE','2013-08-22 18:22:51',2,2000001,2000100,0,2,98,NULL,'issued to JESSIE S. ZAMORA'),('AFISSUE00043-58-2','AFSTOCK3f1e623f:140a585fb55:-7ff9','AFISSUE00043','AF:ISSUE','2013-08-22 18:22:51',2,1000001,1000050,0,1,49,NULL,'issued to JESSIE S. ZAMORA'),('AFRCT00009-51','AFRCT00009-51','AFRCT00009','AF:RECEIPT','2013-08-15 14:15:28',1,5000001,5005000,100,0,100,NULL,NULL),('AFRCT00010-53','AFRCT00010-53','AFRCT00010','AF:RECEIPT','2013-08-15 14:23:00',1,5000001,5000500,10,0,10,NULL,NULL),('AFRCT00011-51','AFRCT00011-51','AFRCT00011','AF:RECEIPT','2013-08-15 17:09:06',1,1110001,1160000,1000,0,1000,NULL,NULL),('AFRCT00012-52','AFRCT00012-52','AFRCT00012','AF:RECEIPT','2013-08-15 17:37:36',1,5001001,5001500,10,0,10,NULL,NULL),('AFRCT00013-56','AFRCT00013-56','AFRCT00013','AF:RECEIPT','2013-08-16 12:56:08',1,1110001,1112500,50,0,50,NULL,NULL),('AFRCT00014-53','AFRCT00014-53','AFRCT00014','AF:RECEIPT','2013-08-17 10:16:58',1,4001001,4001500,10,0,10,NULL,NULL),('AFRCT00015-54','AFRCT00015-54','AFRCT00015','AF:RECEIPT','2013-08-17 10:20:26',1,1234501,1237000,50,0,50,NULL,NULL),('AFRCT00015-58','AFRCT00015-58','AFRCT00015','AF:RECEIPT','2013-08-17 10:20:26',1,1238501,1241000,50,0,50,NULL,NULL),('AFRCT00016-51','AFRCT00016-51','AFRCT00016','AF:RECEIPT','2013-08-17 15:46:17',1,2541401,2543900,50,0,50,NULL,NULL),('AFRCT00016-57','AFRCT00016-57','AFRCT00016','AF:RECEIPT','2013-08-17 15:46:17',1,6897451,6899950,50,0,50,NULL,NULL),('AFRCT00017-51','AFRCT00017-51','AFRCT00017','AF:RECEIPT','2013-08-17 17:14:20',1,1234001,1234500,10,0,10,NULL,NULL),('AFRCT00018-58','AFRCT00018-58','AFRCT00018','AF:RECEIPT','2013-08-17 17:22:44',1,1110001,1110500,10,0,10,NULL,NULL),('AFRCT00019-51','AFRCT00019-51','AFRCT00019','AF:RECEIPT','2013-08-17 21:05:22',1,1000001,1000500,10,0,10,NULL,NULL),('AFRCT00020-52','AFRCT00020-52','AFRCT00020','AF:RECEIPT','2013-08-17 21:06:56',1,2000001,2000500,10,0,10,NULL,NULL),('AFRCT00020-53','AFRCT00020-53','AFRCT00020','AF:RECEIPT','2013-08-17 21:06:56',1,3000001,3000500,10,0,10,NULL,NULL),('AFRCT00020-54','AFRCT00020-54','AFRCT00020','AF:RECEIPT','2013-08-17 21:06:56',1,4000001,4000500,10,0,10,NULL,NULL),('AFRCT00020-58','AFRCT00020-58','AFRCT00020','AF:RECEIPT','2013-08-17 21:06:56',1,5000001,5000500,10,0,10,NULL,NULL),('AFRCT00021-56','AFRCT00021-56','AFRCT00021','AF:RECEIPT','2013-08-17 21:32:57',1,6000001,6000500,10,0,10,NULL,NULL),('AFSTOCK-558fa87d:14094fe27c7:-7fea','AFSTOCK-558fa87d:14094fe27c7:-7fea','AFRCT00022','AF:RECEIPT','2013-08-19 15:17:33',1,5699001,5704000,100,0,100,NULL,NULL),('AFSTOCK-558fa87d:14094fe27c7:-7feb','AFSTOCK-558fa87d:14094fe27c7:-7feb','AFRCT00022','AF:RECEIPT','2013-08-19 15:17:33',1,6710001,6715000,100,0,100,NULL,NULL),('AFSTOCK-558fa87d:14094fe27c7:-7fec','AFSTOCK-558fa87d:14094fe27c7:-7fec','AFRCT00022','AF:RECEIPT','2013-08-19 15:17:33',1,5640001,5890000,5000,0,5000,NULL,NULL),('AFSTOCK-6863628b:14096e1bdfc:-7ff5','AFSTOCK-6863628b:14096e1bdfc:-7ff5','AFRCT00023','AF:RECEIPT','2013-08-19 22:19:04',1,1000001,1005000,100,0,100,NULL,NULL),('AFSTOCK-7f8d1d0d:1409950fa2e:-7fe0','AFSTOCK-7f8d1d0d:1409950fa2e:-7fe0','AFRCT00024','AF:RECEIPT','2013-08-20 13:42:12',1,1891101,1891600,10,0,10,NULL,NULL),('AFSTOCK-7f8d1d0d:1409950fa2e:-7fe1','AFSTOCK-7f8d1d0d:1409950fa2e:-7fe1','AFRCT00024','AF:RECEIPT','2013-08-20 13:42:12',1,1500001,1500500,10,0,10,NULL,NULL),('AFSTOCK-7f8d1d0d:1409950fa2e:-7fe2','AFSTOCK-7f8d1d0d:1409950fa2e:-7fe2','AFRCT00024','AF:RECEIPT','2013-08-20 13:42:12',1,1400001,1400500,10,0,10,NULL,NULL),('AFSTOCK-7f8d1d0d:1409950fa2e:-7fe3','AFSTOCK-7f8d1d0d:1409950fa2e:-7fe3','AFRCT00024','AF:RECEIPT','2013-08-20 13:42:12',1,1200001,1200500,10,0,10,NULL,NULL),('AFSTOCK-7f8d1d0d:1409950fa2e:-7fe4','AFSTOCK-7f8d1d0d:1409950fa2e:-7fe4','AFRCT00024','AF:RECEIPT','2013-08-20 13:42:12',1,1100001,1100500,10,0,10,NULL,NULL),('AFSTOCK3f1e623f:140a585fb55:-7ff4','AFSTOCK3f1e623f:140a585fb55:-7ff4','AFRCT00025','AF:RECEIPT','2013-08-22 18:19:13',1,6000001,6005000,100,0,100,NULL,NULL),('AFSTOCK3f1e623f:140a585fb55:-7ff5','AFSTOCK3f1e623f:140a585fb55:-7ff5','AFRCT00025','AF:RECEIPT','2013-08-22 18:19:13',1,5000001,5002500,50,0,50,NULL,NULL),('AFSTOCK3f1e623f:140a585fb55:-7ff6','AFSTOCK3f1e623f:140a585fb55:-7ff6','AFRCT00025','AF:RECEIPT','2013-08-22 18:19:13',1,4000001,4002500,50,0,50,NULL,NULL),('AFSTOCK3f1e623f:140a585fb55:-7ff7','AFSTOCK3f1e623f:140a585fb55:-7ff7','AFRCT00025','AF:RECEIPT','2013-08-22 18:19:13',1,3000001,3002500,50,0,50,NULL,NULL),('AFSTOCK3f1e623f:140a585fb55:-7ff8','AFSTOCK3f1e623f:140a585fb55:-7ff8','AFRCT00025','AF:RECEIPT','2013-08-22 18:19:13',1,2000001,2005000,100,0,100,NULL,NULL),('AFSTOCK3f1e623f:140a585fb55:-7ff9','AFSTOCK3f1e623f:140a585fb55:-7ff9','AFRCT00025','AF:RECEIPT','2013-08-22 18:19:13',1,1000001,1002500,50,0,50,NULL,NULL);

/*Table structure for table `afstockcontrolcancelled` */

DROP TABLE IF EXISTS `afstockcontrolcancelled`;

CREATE TABLE `afstockcontrolcancelled` (
  `objid` varchar(50) NOT NULL,
  `controlid` varchar(50) default NULL,
  `startseries` int(11) default NULL,
  `endseries` int(11) default NULL,
  `reason` varchar(50) default NULL,
  `issuedate` datetime default NULL,
  `issuer_objid` varchar(50) default NULL,
  `issuer_name` varchar(100) default NULL,
  KEY `FK_afinventorycontrolcancelled` (`controlid`),
  CONSTRAINT `FK_afinventorycontrolcancelled` FOREIGN KEY (`controlid`) REFERENCES `afstockcontrol` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `afstockcontrolcancelled` */

/*Table structure for table `ap` */

DROP TABLE IF EXISTS `ap`;

CREATE TABLE `ap` (
  `objid` varchar(50) NOT NULL,
  `subacctid` varchar(50) default NULL,
  `subacctclass` varchar(50) default NULL,
  `subaccttitle` varchar(50) default NULL,
  `sltype` varchar(10) default NULL,
  `totaldr` decimal(10,2) default NULL,
  `totalcr` decimal(10,2) default NULL,
  `balance` decimal(10,2) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ap` */

/*Table structure for table `ap_detail` */

DROP TABLE IF EXISTS `ap_detail`;

CREATE TABLE `ap_detail` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) default NULL,
  `txndate` datetime default NULL,
  `txnrefid` varchar(50) default NULL,
  `txnrefno` varchar(50) default NULL,
  `txnreftype` varchar(50) default NULL,
  `particulars` varchar(255) default NULL,
  `dr` decimal(16,2) default NULL,
  `cr` decimal(16,2) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_ap_detail_txnrefno` (`txnrefno`,`txnreftype`),
  KEY `ap_detail_ap` (`parentid`),
  CONSTRAINT `ap_detail_ap` FOREIGN KEY (`parentid`) REFERENCES `ap` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ap_detail` */

/*Table structure for table `ar` */

DROP TABLE IF EXISTS `ar`;

CREATE TABLE `ar` (
  `objid` varchar(50) NOT NULL,
  `subacctid` varchar(50) default NULL,
  `subacctclass` varchar(50) default NULL,
  `subaccttitle` varchar(50) default NULL,
  `sltype` varchar(10) default NULL,
  `totaldr` decimal(10,2) default NULL,
  `totalcr` decimal(10,2) default NULL,
  `balance` decimal(10,2) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ar` */

/*Table structure for table `ar_detail` */

DROP TABLE IF EXISTS `ar_detail`;

CREATE TABLE `ar_detail` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) default NULL,
  `txndate` datetime default NULL,
  `txnrefid` varchar(50) default NULL,
  `txnrefno` varchar(50) default NULL,
  `txnreftype` varchar(50) default NULL,
  `particulars` varchar(255) default NULL,
  `dr` decimal(16,2) default NULL,
  `cr` decimal(16,2) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_ar_txnrefno` (`txnrefno`,`txnreftype`),
  KEY `ar_detail_ar` (`parentid`),
  CONSTRAINT `ar_detail_ar` FOREIGN KEY (`parentid`) REFERENCES `ar` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ar_detail` */

/*Table structure for table `assessmentnotice` */

DROP TABLE IF EXISTS `assessmentnotice`;

CREATE TABLE `assessmentnotice` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(15) NOT NULL,
  `txnno` varchar(10) default NULL,
  `txndate` datetime default NULL,
  `taxpayerid` varchar(50) NOT NULL,
  `taxpayername` varchar(2000) NOT NULL,
  `taxpayeraddress` varchar(150) NOT NULL,
  `createdbyid` varchar(50) default NULL,
  `createdbyname` varchar(100) NOT NULL,
  `createdbytitle` varchar(50) NOT NULL,
  `approvedbyid` varchar(50) default NULL,
  `approvedbyname` varchar(100) default NULL,
  `approvedbytitle` varchar(50) default NULL,
  `dtdelivered` date default NULL,
  `receivedby` varchar(150) default NULL,
  `remarks` varchar(500) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_assessmentnotice_state` (`state`),
  KEY `ix_assessmentnotice_txnno` (`txnno`),
  KEY `ix_assessmentnotice_taxpayerid` (`taxpayerid`),
  KEY `ix_assessmentnotice_taxpayername` (`taxpayername`(255)),
  KEY `ix_assessmentnotice_receivedby` (`receivedby`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `assessmentnotice` */

/*Table structure for table `assessmentnoticeitem` */

DROP TABLE IF EXISTS `assessmentnoticeitem`;

CREATE TABLE `assessmentnoticeitem` (
  `objid` varchar(50) NOT NULL,
  `assessmentnoticeid` varchar(50) NOT NULL,
  `faasid` varchar(50) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_assessmentnoticeitem_assessmentnotice` (`assessmentnoticeid`),
  KEY `FK_assessmentnoticeitem_faas` (`faasid`),
  CONSTRAINT `FK_assessmentnoticeitem_assessmentnotice` FOREIGN KEY (`assessmentnoticeid`) REFERENCES `assessmentnotice` (`objid`),
  CONSTRAINT `FK_assessmentnoticeitem_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `assessmentnoticeitem` */

/*Table structure for table `bank` */

DROP TABLE IF EXISTS `bank`;

CREATE TABLE `bank` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(10) default '' COMMENT 'DRAFT, APPROVED',
  `code` varchar(50) NOT NULL default '',
  `name` varchar(50) NOT NULL default '',
  `branchname` varchar(50) NOT NULL default '',
  `address` varchar(100) default NULL,
  `manager` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_bank_code` (`code`),
  UNIQUE KEY `ux_bank_name` (`name`),
  KEY `ix_bank_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bank` */

insert  into `bank`(`objid`,`state`,`code`,`name`,`branchname`,`address`,`manager`) values ('BNK-459fc8a6:14095266043:-7f52','APPROVED','LBP','LAND BANK OF THE PHIL.','ILIGAN','ILIGAN CITY',NULL),('BNK26c08cc7:1408a1266f9:-7fea','APPROVED','EASTWEST','EAST WEST BANK','ESACRIO ST','CEBU CITY',NULL),('BNK7e49113e:1407b082cc6:-7ff6','APPROVED','METROBNK','METRO BANK','METROBANK AYALA BRANCH','CEBU CITY',NULL);

/*Table structure for table `bankaccount` */

DROP TABLE IF EXISTS `bankaccount`;

CREATE TABLE `bankaccount` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(10) NOT NULL default '' COMMENT 'DRAFT, APPROVED',
  `code` varchar(50) NOT NULL default '',
  `title` varchar(100) NOT NULL default '',
  `description` varchar(255) default NULL,
  `accttype` varchar(50) NOT NULL default '' COMMENT 'CHECKING, SAVING',
  `bank_objid` varchar(50) NOT NULL,
  `bank_code` varchar(50) NOT NULL,
  `bank_name` varchar(100) NOT NULL default '',
  `fund_objid` varchar(50) NOT NULL,
  `fund_code` varchar(50) NOT NULL,
  `fund_title` varchar(50) NOT NULL default '',
  `currency` varchar(10) NOT NULL default '' COMMENT 'PHP, USD',
  `cashreport` varchar(50) default NULL,
  `cashbreakdownreport` varchar(50) default NULL,
  `checkreport` varchar(50) default NULL,
  `forwardbalance` decimal(16,2) default NULL,
  `beginbalance` decimal(16,2) default NULL,
  `totaldr` decimal(16,2) default NULL,
  `totalcr` decimal(16,2) default NULL,
  `endbalance` decimal(16,2) default NULL,
  `currentpageno` int(1) default NULL,
  `currentlineno` int(1) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `bankaccount` */

insert  into `bankaccount`(`objid`,`state`,`code`,`title`,`description`,`accttype`,`bank_objid`,`bank_code`,`bank_name`,`fund_objid`,`fund_code`,`fund_title`,`currency`,`cashreport`,`cashbreakdownreport`,`checkreport`,`forwardbalance`,`beginbalance`,`totaldr`,`totalcr`,`endbalance`,`currentpageno`,`currentlineno`) values ('MF-131f93ce:14096f8700e:-7f81','APPROVED','99340-003-343','LGU ILIGAN (SEF)',NULL,'CHECKING','BNK-459fc8a6:14095266043:-7f52','LBP','LAND BANK OF THE PHIL.','SEF','02','SEF','PHP',NULL,NULL,NULL,'0.00','0.00','600.00','0.00','600.00',1,2),('MF-131f93ce:14096f8700e:-7f8c','APPROVED','999-000121-1','LGU ILIGAN (GENFUND)',NULL,'CHECKING','BNK-459fc8a6:14095266043:-7f52','LBP','LAND BANK OF THE PHIL.','GENERAL','01','GENERAL','PHP',NULL,NULL,NULL,'0.00','0.00','2275.00','0.00','2275.00',1,3);

/*Table structure for table `bankaccount_account` */

DROP TABLE IF EXISTS `bankaccount_account`;

CREATE TABLE `bankaccount_account` (
  `objid` varchar(50) NOT NULL default '',
  `acctid` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`objid`),
  KEY `FK_bankaccount_account_account` (`acctid`),
  CONSTRAINT `FK_bankaccount_account_account` FOREIGN KEY (`acctid`) REFERENCES `account` (`objid`),
  CONSTRAINT `FK_bankaccount_account_bankaccount` FOREIGN KEY (`objid`) REFERENCES `bankaccount` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bankaccount_account` */

/*Table structure for table `bankaccount_entry` */

DROP TABLE IF EXISTS `bankaccount_entry`;

CREATE TABLE `bankaccount_entry` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) default NULL,
  `refdate` date default NULL,
  `refid` varchar(50) default NULL,
  `refno` varchar(50) default NULL,
  `reftype` varchar(50) default NULL,
  `particulars` varchar(255) default NULL,
  `dr` decimal(16,2) default NULL,
  `cr` decimal(16,2) default NULL,
  `runbalance` decimal(16,2) default NULL,
  `pageno` int(11) default NULL,
  `lineno` int(11) default NULL,
  `postingrefid` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_bankaccount_parent_refid_reftype` (`parentid`,`refid`,`reftype`),
  KEY `bankaccount_parent` (`parentid`),
  KEY `idx_bankaccount_refid` (`refid`),
  CONSTRAINT `bankaccount_parent` FOREIGN KEY (`parentid`) REFERENCES `bankaccount` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bankaccount_entry` */

insert  into `bankaccount_entry`(`objid`,`parentid`,`refdate`,`refid`,`refno`,`reftype`,`particulars`,`dr`,`cr`,`runbalance`,`pageno`,`lineno`,`postingrefid`) values ('BNKACCTE-6863628b:14096e1bdfc:-7fc3','MF-131f93ce:14096f8700e:-7f81','2013-08-19','DEP-6863628b:14096e1bdfc:-7fc9','DEP00001','DEPOSIT','DEPOSITED BY GRACE CABANTAN','600.00','0.00','600.00',1,1,NULL),('BNKACCTE-6863628b:14096e1bdfc:-7fc4','MF-131f93ce:14096f8700e:-7f8c','2013-08-19','DEP-6863628b:14096e1bdfc:-7fc9','DEP00001','DEPOSIT','DEPOSITED BY GRACE CABANTAN','1600.00','0.00','1600.00',1,1,NULL),('BNKACCTE2b56a0:140a601f61c:-7ff6','MF-131f93ce:14096f8700e:-7f8c','2013-08-22','DEP2b56a0:140a601f61c:-7ff9','DEP00002','DEPOSIT','DEPOSITED BY GRACE CABANTAN','675.00','0.00','2275.00',1,2,NULL);

/*Table structure for table `bankdeposit` */

DROP TABLE IF EXISTS `bankdeposit`;

CREATE TABLE `bankdeposit` (
  `objid` varchar(50) NOT NULL,
  `txnno` varchar(50) default NULL,
  `dtposted` date default NULL,
  `cashier_objid` varchar(50) default NULL,
  `cashier_name` varchar(100) default NULL,
  `cashier_title` varchar(50) default NULL,
  `totalcash` decimal(16,2) default NULL,
  `totalnoncash` decimal(16,2) default NULL,
  `amount` decimal(16,2) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_dtposted` (`dtposted`),
  KEY `ix_txnno` (`txnno`),
  KEY `FK_bankdeposit_casheir` (`cashier_objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bankdeposit` */

insert  into `bankdeposit`(`objid`,`txnno`,`dtposted`,`cashier_objid`,`cashier_name`,`cashier_title`,`totalcash`,`totalnoncash`,`amount`) values ('DEP-6863628b:14096e1bdfc:-7fc9','DEP00001','2013-08-19','USR-4c502c56:14077ead5eb:-7ffa','GRACE CABANTAN','RCC II','2200.00','0.00','2200.00'),('DEP2b56a0:140a601f61c:-7ff9','DEP00002','2013-08-22','USR-4c502c56:14077ead5eb:-7ffa','GRACE CABANTAN','RCC II','675.00','0.00','675.00');

/*Table structure for table `bankdeposit_entry` */

DROP TABLE IF EXISTS `bankdeposit_entry`;

CREATE TABLE `bankdeposit_entry` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) NOT NULL,
  `bankaccount_objid` varchar(50) NOT NULL,
  `bankaccount_code` varchar(50) NOT NULL,
  `bankaccount_title` varchar(255) NOT NULL,
  `totalcash` decimal(16,2) NOT NULL,
  `totalnoncash` decimal(16,2) NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `cashbreakdown` varchar(600) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_bankacct_deposit` (`parentid`,`bankaccount_objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bankdeposit_entry` */

insert  into `bankdeposit_entry`(`objid`,`parentid`,`bankaccount_objid`,`bankaccount_code`,`bankaccount_title`,`totalcash`,`totalnoncash`,`amount`,`cashbreakdown`) values ('BNKDEPENTRY-6863628b:14096e1bdfc:-7fc7','DEP-6863628b:14096e1bdfc:-7fc9','MF-131f93ce:14096f8700e:-7f81','99340-003-343','LGU ILIGAN (SEF)','600.00','0.00','600.00','[[caption:\"1000.00\",denomination:1000.00,qty:0,amount:0.0],[caption:\"500.00\",denomination:500.00,qty:1,amount:500.00],[caption:\"200.00\",denomination:200.00,qty:0,amount:0.0],[caption:\"100.00\",denomination:100.00,qty:1,amount:100.00],[caption:\"50.00\",denomination:50.00,qty:0,amount:0.0],[caption:\"20.00\",denomination:20.00,qty:0,amount:0.0],[caption:\"10.00\",denomination:10.00,qty:0,amount:0.0],[caption:\"Coins\",denomination:1.00,qty:0,amount:0.0]]'),('BNKDEPENTRY-6863628b:14096e1bdfc:-7fc8','DEP-6863628b:14096e1bdfc:-7fc9','MF-131f93ce:14096f8700e:-7f8c','999-000121-1','LGU ILIGAN (GENFUND)','1600.00','0.00','1600.00','[[caption:\"1000.00\",denomination:1000.00,qty:1,amount:1000.00],[caption:\"500.00\",denomination:500.00,qty:1,amount:500.00],[caption:\"200.00\",denomination:200.00,qty:0,amount:0.0],[caption:\"100.00\",denomination:100.00,qty:1,amount:100.00],[caption:\"50.00\",denomination:50.00,qty:0,amount:0.0],[caption:\"20.00\",denomination:20.00,qty:0,amount:0.0],[caption:\"10.00\",denomination:10.00,qty:0,amount:0.0],[caption:\"Coins\",denomination:1.00,qty:0,amount:0.0]]'),('BNKDEPENTRY2b56a0:140a601f61c:-7ff8','DEP2b56a0:140a601f61c:-7ff9','MF-131f93ce:14096f8700e:-7f8c','999-000121-1','LGU ILIGAN (GENFUND)','675.00','0.00','675.00','[[caption:\"1000.00\",denomination:1000.00,qty:0,amount:0.0],[caption:\"500.00\",denomination:500.00,qty:1,amount:500.00],[caption:\"200.00\",denomination:200.00,qty:0,amount:0.0],[caption:\"100.00\",denomination:100.00,qty:1,amount:100.00],[caption:\"50.00\",denomination:50.00,qty:1,amount:50.00],[caption:\"20.00\",denomination:20.00,qty:0,amount:0.0],[caption:\"10.00\",denomination:10.00,qty:2,amount:20.00],[caption:\"Coins\",denomination:1.00,qty:5.00,amount:5.0000]]');

/*Table structure for table `bankdeposit_entry_check` */

DROP TABLE IF EXISTS `bankdeposit_entry_check`;

CREATE TABLE `bankdeposit_entry_check` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_bankdeposit_check` (`parentid`),
  CONSTRAINT `FK_bankdeposit_check` FOREIGN KEY (`parentid`) REFERENCES `bankdeposit_entry` (`objid`),
  CONSTRAINT `FK_bankdeposit_check_checkpayment` FOREIGN KEY (`objid`) REFERENCES `cashreceiptpayment_check` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bankdeposit_entry_check` */

/*Table structure for table `bankdeposit_liquidation` */

DROP TABLE IF EXISTS `bankdeposit_liquidation`;

CREATE TABLE `bankdeposit_liquidation` (
  `objid` varchar(50) NOT NULL,
  `bankdepositid` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_bankdeposit_liquidation` (`bankdepositid`),
  CONSTRAINT `FK_bankdeposit_liquidation` FOREIGN KEY (`bankdepositid`) REFERENCES `bankdeposit` (`objid`),
  CONSTRAINT `FK_bankdeposit_liquidation_fund` FOREIGN KEY (`objid`) REFERENCES `liquidation_cashier_fund` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bankdeposit_liquidation` */

insert  into `bankdeposit_liquidation`(`objid`,`bankdepositid`) values ('LIQFUND-6863628b:14096e1bdfc:-7fd2','DEP-6863628b:14096e1bdfc:-7fc9'),('LIQFUND-6863628b:14096e1bdfc:-7fd4','DEP-6863628b:14096e1bdfc:-7fc9'),('LIQFUND2b56a0:140a601f61c:-7ffc','DEP2b56a0:140a601f61c:-7ff9');

/*Table structure for table `barangay` */

DROP TABLE IF EXISTS `barangay`;

CREATE TABLE `barangay` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(10) default NULL,
  `indexno` varchar(15) default NULL,
  `pin` varchar(15) default NULL,
  `name` varchar(50) default NULL,
  `previd` varchar(50) default NULL,
  `parentid` varchar(50) default NULL,
  `captain_name` varchar(100) default NULL,
  `captain_title` varchar(50) default NULL,
  `captain_office` varchar(50) default NULL,
  `treasurer_name` varchar(100) default NULL,
  `treasurer_title` varchar(50) default NULL,
  `treasurer_office` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lgu_barangay_name` (`name`),
  UNIQUE KEY `ux_lgu_barangay_name_state` (`name`,`state`),
  KEY `ix_lgu_barangay_indexno` (`indexno`),
  KEY `ix_lgu_barangay_previd` (`previd`),
  KEY `ix_lgu_barangay_parentid` (`parentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `barangay` */

insert  into `barangay`(`objid`,`state`,`indexno`,`pin`,`name`,`previd`,`parentid`,`captain_name`,`captain_title`,`captain_office`,`treasurer_name`,`treasurer_title`,`treasurer_office`) values ('BRGY514f6587:1407632626e:-7ffc','DRAFT','0003','169-00-0003','ACMAC',NULL,'DIST514f6587:1407632626e:-7fff','-',NULL,NULL,'-',NULL,NULL),('BRGY514f6587:1407632626e:-7ffd','DRAFT','0002','169-00-0002','ABUNO',NULL,'DIST514f6587:1407632626e:-7fff','D','D','D','D','D','D'),('BRGY514f6587:1407632626e:-7ffe','DRAFT','0001','169-00-0001','POBLACION',NULL,'DIST514f6587:1407632626e:-7fff','-',NULL,NULL,'-',NULL,NULL);

/*Table structure for table `batchcapture` */

DROP TABLE IF EXISTS `batchcapture`;

CREATE TABLE `batchcapture` (
  `objid` varchar(50) NOT NULL,
  `schemaname` varchar(25) NOT NULL,
  `schemaversion` varchar(5) NOT NULL,
  `docstate` varchar(25) NOT NULL,
  `afid` varchar(5) NOT NULL,
  `startseries` int(11) NOT NULL,
  `series` int(11) NOT NULL,
  `collector` text NOT NULL,
  `afcontrol` text NOT NULL,
  `collectiontype` text NOT NULL,
  `defaulttxndate` date NOT NULL,
  `items` text NOT NULL,
  `extended` text,
  `encodedbyid` varchar(50) NOT NULL,
  `encodedby` varchar(100) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `collectorid` varchar(50) NOT NULL,
  `collectorname` varchar(100) NOT NULL,
  `opener` varchar(50) default NULL,
  `collectortitle` varchar(50) default NULL,
  `encodedbytitle` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_batchcapture_state` (`docstate`),
  KEY `ix_batchcapture_colname` (`collectorname`),
  KEY `ix_batchcapture_encodedby` (`encodedby`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `batchcapture` */

/*Table structure for table `bldgadditionalitem` */

DROP TABLE IF EXISTS `bldgadditionalitem`;

CREATE TABLE `bldgadditionalitem` (
  `objid` varchar(50) NOT NULL,
  `bldgrysettingid` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `unit` varchar(25) NOT NULL,
  `expr` varchar(100) NOT NULL,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_bldgadditionalitem_settingcode` (`bldgrysettingid`,`code`),
  UNIQUE KEY `ux_bldgadditionalitem_settingname` (`bldgrysettingid`,`name`),
  KEY `FK_bldgadditionalitem` (`previd`),
  CONSTRAINT `FK_bldgadditionalitem` FOREIGN KEY (`previd`) REFERENCES `bldgadditionalitem` (`objid`),
  CONSTRAINT `FK_bldgadditionalitem_bldgrysetting` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bldgadditionalitem` */

insert  into `bldgadditionalitem`(`objid`,`bldgrysettingid`,`code`,`name`,`unit`,`expr`,`previd`) values ('BI-597a67c6:14076a28916:-7c64','BRY-597a67c6:14076a28916:-7e56','T&B','TOILET & BATH','SET','NO_SETS * 60000',NULL);

/*Table structure for table `bldgassesslevel` */

DROP TABLE IF EXISTS `bldgassesslevel`;

CREATE TABLE `bldgassesslevel` (
  `objid` varchar(50) NOT NULL,
  `bldgrysettingid` varchar(50) NOT NULL,
  `classification_objid` varchar(50) NOT NULL default '',
  `code` varchar(10) NOT NULL default '',
  `name` varchar(50) NOT NULL,
  `fixrate` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_bldgassesslevel_bldgrysettingid_code` (`bldgrysettingid`,`code`),
  UNIQUE KEY `ux_bldgassesslevel_bdlgrysettingid_name` (`bldgrysettingid`,`name`),
  KEY `FK_bldgassesslevel_propertyclassification` (`classification_objid`),
  CONSTRAINT `FK_bldgassesslevel_bldgrysettingid` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`),
  CONSTRAINT `FK_bldgassesslevel_propertyclassification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bldgassesslevel` */

insert  into `bldgassesslevel`(`objid`,`bldgrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('GOCC','BRY-597a67c6:14076a28916:-7e56','GOCC','GOCC','GOCC',0,'0.00',NULL),('PC-6779b32:13f97e9407c:-7ff2','BRY-597a67c6:14076a28916:-7e56','PC-6779b32:13f97e9407c:-7ff2','AGR','AGRICULTURAL',0,'0.00',NULL),('PC-6779b32:13f97e9407c:-7ff4','BRY-597a67c6:14076a28916:-7e56','PC-6779b32:13f97e9407c:-7ff4','COM','COMMERCIAL',0,'0.00',NULL),('RES','BRY-597a67c6:14076a28916:-7e56','RES','RES','RES',0,'0.00',NULL);

/*Table structure for table `bldgassesslevelrange` */

DROP TABLE IF EXISTS `bldgassesslevelrange`;

CREATE TABLE `bldgassesslevelrange` (
  `objid` varchar(50) NOT NULL,
  `bldgassesslevelid` varchar(50) NOT NULL default '',
  `bldgrysettingid` varchar(50) NOT NULL default '',
  `mvfrom` decimal(16,2) NOT NULL,
  `mvto` decimal(16,2) NOT NULL,
  `rate` decimal(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_bldgassesslevelid_mvfrom` (`bldgassesslevelid`,`mvfrom`),
  KEY `FK_bldgassesslevelrange_bldgrysetting` (`bldgrysettingid`),
  CONSTRAINT `FK_bldgassesslevelrange_bldgassesslevel` FOREIGN KEY (`bldgassesslevelid`) REFERENCES `bldgassesslevel` (`objid`),
  CONSTRAINT `FK_bldgassesslevelrange_bldgrysetting` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bldgassesslevelrange` */

insert  into `bldgassesslevelrange`(`objid`,`bldgassesslevelid`,`bldgrysettingid`,`mvfrom`,`mvto`,`rate`) values ('BR-597a67c6:14076a28916:-7df2','PC-6779b32:13f97e9407c:-7ff4','BRY-597a67c6:14076a28916:-7e56','5000000.00','0.00','60.00'),('BR-597a67c6:14076a28916:-7df5','PC-6779b32:13f97e9407c:-7ff4','BRY-597a67c6:14076a28916:-7e56','3000000.00','5000000.00','50.00'),('BR-597a67c6:14076a28916:-7df8','PC-6779b32:13f97e9407c:-7ff4','BRY-597a67c6:14076a28916:-7e56','2000000.00','3000000.00','40.00'),('BR-597a67c6:14076a28916:-7dfb','PC-6779b32:13f97e9407c:-7ff4','BRY-597a67c6:14076a28916:-7e56','1000000.00','2000000.00','35.00'),('BR-597a67c6:14076a28916:-7dfe','PC-6779b32:13f97e9407c:-7ff4','BRY-597a67c6:14076a28916:-7e56','750000.00','1000000.00','30.00'),('BR-597a67c6:14076a28916:-7e01','PC-6779b32:13f97e9407c:-7ff4','BRY-597a67c6:14076a28916:-7e56','500000.00','750000.00','25.00'),('BR-597a67c6:14076a28916:-7e04','PC-6779b32:13f97e9407c:-7ff4','BRY-597a67c6:14076a28916:-7e56','300000.00','500000.00','20.00'),('BR-597a67c6:14076a28916:-7e07','PC-6779b32:13f97e9407c:-7ff4','BRY-597a67c6:14076a28916:-7e56','175000.00','300000.00','15.00'),('BR-597a67c6:14076a28916:-7e0a','PC-6779b32:13f97e9407c:-7ff4','BRY-597a67c6:14076a28916:-7e56','0.00','175000.00','10.00'),('BR-597a67c6:14076a28916:-7e18','RES','BRY-597a67c6:14076a28916:-7e56','5000000.00','0.00','50.00'),('BR-597a67c6:14076a28916:-7e1b','RES','BRY-597a67c6:14076a28916:-7e56','2000000.00','5000000.00','40.00'),('BR-597a67c6:14076a28916:-7e1e','RES','BRY-597a67c6:14076a28916:-7e56','1000000.00','2000000.00','35.00'),('BR-597a67c6:14076a28916:-7e21','RES','BRY-597a67c6:14076a28916:-7e56','750000.00','1000000.00','30.00'),('BR-597a67c6:14076a28916:-7e25','RES','BRY-597a67c6:14076a28916:-7e56','500000.00','750000.00','25.00'),('BR-597a67c6:14076a28916:-7e28','RES','BRY-597a67c6:14076a28916:-7e56','300000.00','500000.00','20.00'),('BR-597a67c6:14076a28916:-7e2b','RES','BRY-597a67c6:14076a28916:-7e56','175000.00','300000.00','15.00'),('BR-597a67c6:14076a28916:-7e2d','RES','BRY-597a67c6:14076a28916:-7e56','0.00','175000.00','0.00');

/*Table structure for table `bldgfloor` */

DROP TABLE IF EXISTS `bldgfloor`;

CREATE TABLE `bldgfloor` (
  `objid` varchar(50) NOT NULL,
  `bldguseid` varchar(50) NOT NULL,
  `bldgrpuid` varchar(50) NOT NULL,
  `floorno` varchar(5) NOT NULL,
  `area` decimal(16,2) NOT NULL,
  `storeyrate` decimal(16,2) NOT NULL,
  `basevalue` decimal(16,2) NOT NULL,
  `unitvalue` decimal(16,2) NOT NULL,
  `basemarketvalue` decimal(16,2) NOT NULL,
  `adjustment` decimal(16,2) NOT NULL,
  `marketvalue` decimal(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_bldgfloor_bldguse` (`bldguseid`),
  KEY `FK_bldgfloor_bldgrpu` (`bldgrpuid`),
  CONSTRAINT `FK_bldgfloor_bldgrpu` FOREIGN KEY (`bldgrpuid`) REFERENCES `bldgrpu` (`objid`),
  CONSTRAINT `FK_bldgfloor_bldguse` FOREIGN KEY (`bldguseid`) REFERENCES `bldguse` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bldgfloor` */

/*Table structure for table `bldgflooradditional` */

DROP TABLE IF EXISTS `bldgflooradditional`;

CREATE TABLE `bldgflooradditional` (
  `objid` varchar(50) NOT NULL,
  `bldgfloorid` varchar(50) NOT NULL,
  `bldgrpuid` varchar(50) NOT NULL,
  `additionalitem_objid` varchar(50) NOT NULL default '',
  `amount` decimal(16,2) NOT NULL,
  `expr` varchar(300) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_bldgflooradditional_bldgfloor` (`bldgfloorid`),
  KEY `FK_bldgflooradditional_bldgrpu` (`bldgrpuid`),
  KEY `FK_bldgflooradditional_additionalitem` (`additionalitem_objid`),
  CONSTRAINT `FK_bldgflooradditional_additionalitem` FOREIGN KEY (`additionalitem_objid`) REFERENCES `bldgadditionalitem` (`objid`),
  CONSTRAINT `FK_bldgflooradditional_bldgfloor` FOREIGN KEY (`bldgfloorid`) REFERENCES `bldgfloor` (`objid`),
  CONSTRAINT `FK_bldgflooradditional_bldgrpu` FOREIGN KEY (`bldgrpuid`) REFERENCES `bldgrpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bldgflooradditional` */

/*Table structure for table `bldgflooradditionalparam` */

DROP TABLE IF EXISTS `bldgflooradditionalparam`;

CREATE TABLE `bldgflooradditionalparam` (
  `objid` varchar(50) NOT NULL,
  `bldgflooradditionalid` varchar(50) NOT NULL,
  `bldgrpuid` varchar(50) NOT NULL,
  `param_objid` varchar(50) NOT NULL,
  `intvalue` int(50) default NULL,
  `decimalvalue` decimal(16,2) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_bldgflooradditionalparam_bldgflooradditional` (`bldgflooradditionalid`),
  KEY `FK_bldgflooradditionalparam_bldgrpu` (`bldgrpuid`),
  KEY `FK_bldgflooradditionalparam_param` (`param_objid`),
  CONSTRAINT `FK_bldgflooradditionalparam_bldgflooradditional` FOREIGN KEY (`bldgflooradditionalid`) REFERENCES `bldgflooradditional` (`objid`),
  CONSTRAINT `FK_bldgflooradditionalparam_bldgrpu` FOREIGN KEY (`bldgrpuid`) REFERENCES `bldgrpu` (`objid`),
  CONSTRAINT `FK_bldgflooradditionalparam_param` FOREIGN KEY (`param_objid`) REFERENCES `rptparameter` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bldgflooradditionalparam` */

/*Table structure for table `bldgkind` */

DROP TABLE IF EXISTS `bldgkind`;

CREATE TABLE `bldgkind` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(10) NOT NULL default '' COMMENT 'DRAFT, APPROVED',
  `code` varchar(20) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_bldgkind_code` (`code`),
  UNIQUE KEY `ux_bldgkind_name` (`name`),
  KEY `ix_bldgkind_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bldgkind` */

insert  into `bldgkind`(`objid`,`state`,`code`,`name`) values ('BK-57ce088c:13e7c9b3622:-7fe7','APPROVED','GH','GUARD HOUSE'),('BK-6779b32:13f97e9407c:-7feb','APPROVED','HO','HOTEL'),('BK3263aaff:13e6a27d247:-7ff2','APPROVED','TFD','TWO FAMILY DWELLING'),('BKbe15e8d:13e6adfad57:-7ff1','APPROVED','WR','WAREHOUSE'),('OFD','APPROVED','OFD','ONE FAMILY DWELLING');

/*Table structure for table `bldgkindbucc` */

DROP TABLE IF EXISTS `bldgkindbucc`;

CREATE TABLE `bldgkindbucc` (
  `objid` varchar(50) NOT NULL,
  `bldgrysettingid` varchar(50) NOT NULL,
  `bldgtypeid` varchar(50) NOT NULL,
  `bldgkind_objid` varchar(50) NOT NULL default '',
  `basevaluetype` varchar(25) NOT NULL,
  `basevalue` decimal(10,2) NOT NULL,
  `minbasevalue` decimal(10,2) NOT NULL,
  `maxbasevalue` decimal(10,2) NOT NULL,
  `gapvalue` int(11) NOT NULL,
  `minarea` decimal(10,2) NOT NULL,
  `maxarea` decimal(10,2) NOT NULL,
  `bldgclass` varchar(50) default NULL,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_bldgkindbucc_settingtypekind` (`bldgrysettingid`,`bldgtypeid`,`bldgkind_objid`,`bldgclass`),
  KEY `FK_bldgkindbucc_bldgtype` (`bldgtypeid`),
  KEY `FK_bldgkindbucc_bldgkindbucc` (`previd`),
  KEY `FK_bldgkindbucc_bldgkind` (`bldgkind_objid`),
  CONSTRAINT `FK_bldgkindbucc_bldgkind` FOREIGN KEY (`bldgkind_objid`) REFERENCES `bldgkind` (`objid`),
  CONSTRAINT `FK_bldgkindbucc_bldgrysettingid` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`),
  CONSTRAINT `FK_bldgkindbucc_bldgtype` FOREIGN KEY (`bldgtypeid`) REFERENCES `bldgtype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bldgkindbucc` */

insert  into `bldgkindbucc`(`objid`,`bldgrysettingid`,`bldgtypeid`,`bldgkind_objid`,`basevaluetype`,`basevalue`,`minbasevalue`,`maxbasevalue`,`gapvalue`,`minarea`,`maxarea`,`bldgclass`,`previd`) values ('BU-597a67c6:14076a28916:-7cc1','BRY-597a67c6:14076a28916:-7e56','BT-597a67c6:14076a28916:-7d8d','BK3263aaff:13e6a27d247:-7ff2','fix','5500.00','0.00','0.00',0,'0.00','0.00',NULL,NULL),('BU-597a67c6:14076a28916:-7cce','BRY-597a67c6:14076a28916:-7e56','BT-597a67c6:14076a28916:-7d8d','OFD','fix','5000.00','0.00','0.00',0,'0.00','0.00',NULL,NULL),('BU-597a67c6:14076a28916:-7ced','BRY-597a67c6:14076a28916:-7e56','BT-597a67c6:14076a28916:-7dcf','BK3263aaff:13e6a27d247:-7ff2','fix','1200.00','0.00','0.00',0,'0.00','0.00',NULL,NULL),('BU-597a67c6:14076a28916:-7cfa','BRY-597a67c6:14076a28916:-7e56','BT-597a67c6:14076a28916:-7dcf','OFD','fix','1000.00','0.00','0.00',0,'0.00','0.00',NULL,NULL);

/*Table structure for table `bldgrpu` */

DROP TABLE IF EXISTS `bldgrpu`;

CREATE TABLE `bldgrpu` (
  `objid` varchar(50) NOT NULL default '',
  `landrpuid` varchar(50) NOT NULL,
  `houseno` varchar(25) default NULL,
  `psic` varchar(20) default NULL,
  `permitno` varchar(20) default NULL,
  `permitdate` date default NULL,
  `permitissuedby` varchar(50) default NULL,
  `bldgtype_objid` varchar(50) NOT NULL,
  `bldgkindbucc_objid` varchar(50) NOT NULL,
  `basevalue` decimal(16,2) NOT NULL,
  `dtcompleted` date default NULL,
  `dtoccupied` date default NULL,
  `floorcount` int(11) NOT NULL,
  `depreciation` decimal(16,2) NOT NULL,
  `depreciationvalue` decimal(16,2) NOT NULL,
  `totaladjustment` decimal(16,2) NOT NULL,
  `additionalinfo` varchar(100) default NULL,
  `bldgage` int(11) NOT NULL,
  `percentcompleted` int(11) NOT NULL,
  `bldgassesslevel_objid` varchar(50) default NULL,
  `assesslevel` decimal(16,2) NOT NULL,
  `condominium` int(11) NOT NULL,
  `bldgclass` varchar(15) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_bldgrpu_landrpu` (`landrpuid`),
  KEY `FK_bldgrpu_bldgtype` (`bldgtype_objid`),
  KEY `FK_bldgrpu_bldgkindbucc` (`bldgkindbucc_objid`),
  KEY `FK_bldgrpu_bldgassesslevel` (`bldgassesslevel_objid`),
  CONSTRAINT `FK_bldgrpu_bldgassesslevel` FOREIGN KEY (`bldgassesslevel_objid`) REFERENCES `bldgassesslevel` (`objid`),
  CONSTRAINT `FK_bldgrpu_bldgkindbucc` FOREIGN KEY (`bldgkindbucc_objid`) REFERENCES `bldgkindbucc` (`objid`),
  CONSTRAINT `FK_bldgrpu_bldgtype` FOREIGN KEY (`bldgtype_objid`) REFERENCES `bldgtype` (`objid`),
  CONSTRAINT `FK_bldgrpu_landrpu` FOREIGN KEY (`landrpuid`) REFERENCES `landrpu` (`objid`),
  CONSTRAINT `FK_bldgrpu_rpu` FOREIGN KEY (`objid`) REFERENCES `rpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bldgrpu` */

/*Table structure for table `bldgrysetting` */

DROP TABLE IF EXISTS `bldgrysetting`;

CREATE TABLE `bldgrysetting` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL,
  `ry` int(11) NOT NULL,
  `predominant` int(11) NOT NULL,
  `depreciatecoreanditemseparately` int(11) NOT NULL,
  `computedepreciationbasedonschedule` int(11) NOT NULL,
  `straightdepreciation` varchar(50) NOT NULL,
  `calcbldgagebasedondtoccupied` int(11) NOT NULL,
  `appliedto` text,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_bldgrysetting_previd` (`previd`),
  KEY `ix_bldgrysetting_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bldgrysetting` */

insert  into `bldgrysetting`(`objid`,`state`,`ry`,`predominant`,`depreciatecoreanditemseparately`,`computedepreciationbasedonschedule`,`straightdepreciation`,`calcbldgagebasedondtoccupied`,`appliedto`,`previd`) values ('BRY-597a67c6:14076a28916:-7e56','DRAFT',2009,0,0,0,'0',0,'ILIGAN',NULL);

/*Table structure for table `bldgstructure` */

DROP TABLE IF EXISTS `bldgstructure`;

CREATE TABLE `bldgstructure` (
  `objid` varchar(50) NOT NULL,
  `bldgrpuid` varchar(50) NOT NULL,
  `structure_objid` varchar(50) NOT NULL,
  `material_objid` varchar(50) default '',
  PRIMARY KEY  (`objid`),
  KEY `FK_bldgstructure_bldgrpu` (`bldgrpuid`),
  KEY `FK_bldgstructure_structure` (`structure_objid`),
  KEY `FK_bldgstructure_material` (`material_objid`),
  CONSTRAINT `FK_bldgstructure_bldgrpu` FOREIGN KEY (`bldgrpuid`) REFERENCES `bldgrpu` (`objid`),
  CONSTRAINT `FK_bldgstructure_material` FOREIGN KEY (`material_objid`) REFERENCES `material` (`objid`),
  CONSTRAINT `FK_bldgstructure_structure` FOREIGN KEY (`structure_objid`) REFERENCES `structure` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bldgstructure` */

/*Table structure for table `bldgtype` */

DROP TABLE IF EXISTS `bldgtype`;

CREATE TABLE `bldgtype` (
  `objid` varchar(50) NOT NULL,
  `bldgrysettingid` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `basevaluetype` varchar(10) NOT NULL,
  `residualrate` decimal(10,2) NOT NULL,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_bldgtype_bldgrysettingid_code` (`bldgrysettingid`,`code`),
  UNIQUE KEY `ux_bldgtype_bldgrysettingid_name` (`bldgrysettingid`,`name`),
  KEY `FK_bldgtype_bldgtype` (`previd`),
  CONSTRAINT `FK_bldgtype_bldgrysetting` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`),
  CONSTRAINT `FK_bldgtype_bldgtype` FOREIGN KEY (`previd`) REFERENCES `bldgtype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bldgtype` */

insert  into `bldgtype`(`objid`,`bldgrysettingid`,`code`,`name`,`basevaluetype`,`residualrate`,`previd`) values ('BT-597a67c6:14076a28916:-7d8d','BRY-597a67c6:14076a28916:-7e56','III-A','TYPE III-A','fix','0.00',NULL),('BT-597a67c6:14076a28916:-7dae','BRY-597a67c6:14076a28916:-7e56','II-A','TYPE II-A','fix','0.00',NULL),('BT-597a67c6:14076a28916:-7dcf','BRY-597a67c6:14076a28916:-7e56','I-A','TYPE I-A','fix','0.00',NULL);

/*Table structure for table `bldgtype_depreciation` */

DROP TABLE IF EXISTS `bldgtype_depreciation`;

CREATE TABLE `bldgtype_depreciation` (
  `objid` varchar(50) NOT NULL,
  `bldgtypeid` varchar(50) NOT NULL,
  `bldgrysettingid` varchar(50) NOT NULL,
  `agefrom` int(11) NOT NULL,
  `ageto` int(11) NOT NULL,
  `rate` decimal(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_bldgtype_depreciation_settingtypeagefrom` (`bldgtypeid`,`bldgrysettingid`,`agefrom`),
  KEY `FK_bldgtype_depreciation_bldgrysetting` (`bldgrysettingid`),
  CONSTRAINT `FK_bldgtype_depreciation_bldgrysetting` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`),
  CONSTRAINT `FK_bldgtype_depreciation_bldgtype` FOREIGN KEY (`bldgtypeid`) REFERENCES `bldgtype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bldgtype_depreciation` */

/*Table structure for table `bldgtype_storeyadjustment` */

DROP TABLE IF EXISTS `bldgtype_storeyadjustment`;

CREATE TABLE `bldgtype_storeyadjustment` (
  `objid` varchar(50) NOT NULL,
  `bldgtypeid` varchar(50) NOT NULL,
  `bldgrysettingid` varchar(50) NOT NULL,
  `floorno` varchar(10) NOT NULL default '',
  `rate` decimal(16,2) NOT NULL,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_bldgtype_storeyadjustment_settingtypefloorno` (`bldgtypeid`,`bldgrysettingid`,`floorno`),
  KEY `FK_bldgtype_storeyadjustment_bldgrysetting` (`bldgrysettingid`),
  KEY `FK_bldgtype_storeyadjustment` (`previd`),
  CONSTRAINT `FK_bldgtype_storeyadjustment` FOREIGN KEY (`previd`) REFERENCES `bldgtype_storeyadjustment` (`objid`),
  CONSTRAINT `FK_bldgtype_storeyadjustment_bldgrysetting` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`),
  CONSTRAINT `FK_bldgtype_storeyadjustment_bldgtype` FOREIGN KEY (`bldgtypeid`) REFERENCES `bldgtype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bldgtype_storeyadjustment` */

/*Table structure for table `bldguse` */

DROP TABLE IF EXISTS `bldguse`;

CREATE TABLE `bldguse` (
  `objid` varchar(50) NOT NULL,
  `bldgrpuid` varchar(50) NOT NULL,
  `actualuse_objid` varchar(50) NOT NULL,
  `basevalue` decimal(16,2) NOT NULL,
  `area` decimal(16,2) NOT NULL,
  `basemarketvalue` decimal(16,2) NOT NULL,
  `depreciationvalue` decimal(16,2) NOT NULL,
  `adjustment` decimal(16,2) NOT NULL,
  `marketvalue` decimal(16,2) NOT NULL,
  `assesslevel` decimal(16,2) NOT NULL,
  `assessedvalue` decimal(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_bldguse_bldgrpu` (`bldgrpuid`),
  KEY `FK_bldguse_bldgassesslevel` (`actualuse_objid`),
  CONSTRAINT `FK_bldguse_bldgassesslevel` FOREIGN KEY (`actualuse_objid`) REFERENCES `bldgassesslevel` (`objid`),
  CONSTRAINT `FK_bldguse_bldgrpu` FOREIGN KEY (`bldgrpuid`) REFERENCES `bldgrpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `bldguse` */

/*Table structure for table `brgyshare` */

DROP TABLE IF EXISTS `brgyshare`;

CREATE TABLE `brgyshare` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `txnno` varchar(15) default '',
  `txndate` datetime default NULL,
  `year` int(11) default NULL,
  `month` int(11) default NULL,
  `totalshare` decimal(16,2) NOT NULL,
  `createdbyid` varchar(50) default NULL,
  `createdby` varchar(150) NOT NULL,
  `createdbytitle` varchar(50) NOT NULL,
  `postedbyid` varchar(50) default NULL,
  `postedby` varchar(150) default NULL,
  `postedbytitle` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_brgyshare_yqm` (`year`,`month`),
  KEY `ix_brgyshare_yr` (`year`),
  KEY `ix_brgyshare_state` (`state`),
  KEY `ix_brgyshare_yq` (`year`),
  KEY `ix_brgyshare_yqm` (`year`,`month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `brgyshare` */

/*Table structure for table `brgyshareitem` */

DROP TABLE IF EXISTS `brgyshareitem`;

CREATE TABLE `brgyshareitem` (
  `objid` varchar(50) NOT NULL,
  `brgyshareid` varchar(50) NOT NULL default '',
  `barangayid` varchar(50) NOT NULL,
  `basic` decimal(16,2) NOT NULL,
  `basicint` decimal(16,2) NOT NULL,
  `basicdisc` decimal(16,2) NOT NULL,
  `basicshare` decimal(16,2) NOT NULL,
  `basicintshare` decimal(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_brgyshareitem_brgyshare_brgy` (`brgyshareid`,`barangayid`),
  CONSTRAINT `FK_brgyshareitem_brgyshare` FOREIGN KEY (`brgyshareid`) REFERENCES `brgyshare` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `brgyshareitem` */

/*Table structure for table `cancelannotation` */

DROP TABLE IF EXISTS `cancelannotation`;

CREATE TABLE `cancelannotation` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(15) NOT NULL,
  `txnno` varchar(10) default NULL,
  `txndate` date default NULL,
  `annotationid` varchar(50) NOT NULL,
  `fileno` varchar(20) NOT NULL,
  `remarks` varchar(500) NOT NULL,
  `orno` varchar(10) default NULL,
  `ordate` date default NULL,
  `oramount` decimal(16,2) NOT NULL,
  `signedby` varchar(150) NOT NULL,
  `signedbytitle` varchar(50) NOT NULL,
  `dtsigned` date default NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_cancelannotation_txnno` (`txnno`),
  KEY `ix_cancelannotation_fileno` (`fileno`),
  KEY `FK_cancelannotation_faasannotation` (`annotationid`),
  CONSTRAINT `FK_cancelannotation_faasannotation` FOREIGN KEY (`annotationid`) REFERENCES `faasannotation` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cancelannotation` */

/*Table structure for table `cancelledfaas` */

DROP TABLE IF EXISTS `cancelledfaas`;

CREATE TABLE `cancelledfaas` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(15) NOT NULL,
  `txndate` datetime NOT NULL,
  `faasid` varchar(50) NOT NULL,
  `reason_objid` varchar(50) NOT NULL,
  `remarks` varchar(500) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_cancelledfaas_faas` (`faasid`),
  KEY `FK_cancelledfaas_reason` (`reason_objid`),
  CONSTRAINT `FK_cancelledfaas_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_cancelledfaas_reason` FOREIGN KEY (`reason_objid`) REFERENCES `canceltdreason` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cancelledfaas` */

/*Table structure for table `canceltdreason` */

DROP TABLE IF EXISTS `canceltdreason`;

CREATE TABLE `canceltdreason` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(10) NOT NULL default '' COMMENT 'DRAFT, APPROVED',
  `code` varchar(20) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `description` varchar(150) default '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_canceltdreason_code` (`code`),
  UNIQUE KEY `ux_canceltdreason_name` (`name`),
  KEY `ix_canceltdreason_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `canceltdreason` */

insert  into `canceltdreason`(`objid`,`state`,`code`,`name`,`description`) values ('CTDR-24418a29:13e6a1e91bc:-7ff2','APPROVED','BD','BURNED DOWN',NULL),('CTDR-24418a29:13e6a1e91bc:-7ff3','APPROVED','DEM','DEMOLISHED',NULL),('CTDR2e6dc73c:13e6ad98b0b:-7ff2','APPROVED','DN','DONATED',NULL);

/*Table structure for table `cashbook` */

DROP TABLE IF EXISTS `cashbook`;

CREATE TABLE `cashbook` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) default NULL,
  `code` varchar(50) default NULL,
  `title` varchar(50) default NULL,
  `description` varchar(50) default NULL,
  `type` varchar(50) default NULL,
  `subacct_objid` varchar(50) default NULL,
  `subacct_name` varchar(50) default NULL,
  `fund_objid` varchar(50) default NULL,
  `fund_code` varchar(50) default NULL,
  `fund_title` varchar(50) default NULL,
  `org_objid` varchar(50) default NULL,
  `org_code` varchar(50) default NULL,
  `org_name` varchar(50) default NULL,
  `beginbalance` decimal(16,2) default NULL,
  `forwardbalance` decimal(16,2) default NULL,
  `totaldr` decimal(16,2) default NULL,
  `totalcr` decimal(16,2) default NULL,
  `endbalance` decimal(16,2) default NULL,
  `currentpageno` int(11) default NULL,
  `currentlineno` int(11) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_subacct_fund` (`subacct_objid`,`fund_objid`),
  KEY `FK_cashbook_fund` (`fund_objid`),
  CONSTRAINT `FK_cashbook_fund` FOREIGN KEY (`fund_objid`) REFERENCES `fund` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cashbook` */

insert  into `cashbook`(`objid`,`state`,`code`,`title`,`description`,`type`,`subacct_objid`,`subacct_name`,`fund_objid`,`fund_code`,`fund_title`,`org_objid`,`org_code`,`org_name`,`beginbalance`,`forwardbalance`,`totaldr`,`totalcr`,`endbalance`,`currentpageno`,`currentlineno`) values ('CSHBK-4627b190:140a585fcff:-7ea0','APPROVED','GC-TRUST','GRACE CABANTAN(CASHIER) - TRUST',NULL,'CASHIER','USR-4c502c56:14077ead5eb:-7ffa','GRACE CABANTAN(CASHIER)','TRUST','03','TRUST',NULL,NULL,NULL,'0.00','0.00','0.00','0.00','0.00',1,1),('CSHBK-4627b190:140a585fcff:-7eab','APPROVED','GC-SEF','GRACE CABANTAN(CASHIER) - SEF',NULL,'CASHIER','USR-4c502c56:14077ead5eb:-7ffa','GRACE CABANTAN(CASHIER)','SEF','02','SEF',NULL,NULL,NULL,'0.00','0.00','0.00','0.00','0.00',1,1),('CSHBK-4627b190:140a585fcff:-7eb6','APPROVED','GC-GEN','GRACE CABANTAN(CASHIER) - GENERAL',NULL,'CASHIER','USR-4c502c56:14077ead5eb:-7ffa','GRACE CABANTAN(CASHIER)','GENERAL','01','GENERAL',NULL,NULL,NULL,'0.00','0.00','0.00','0.00','0.00',1,1),('CSHBK-4627b190:140a585fcff:-7ec1','APPROVED','ND-TRUST','NEIL DIAMOND(LIQUIDATING_OFFICER) - TRUST',NULL,'LIQUIDATING_OFFICER','USR4a3b6db9:1408acfc3c2:-7fe2','NEIL DIAMOND(LIQUIDATING_OFFICER)','TRUST','03','TRUST',NULL,NULL,NULL,'0.00','0.00','0.00','0.00','0.00',1,1),('CSHBK-4627b190:140a585fcff:-7ecc','APPROVED','ND-SEF','NEIL DIAMOND(LIQUIDATING_OFFICER) - SEF',NULL,'LIQUIDATING_OFFICER','USR4a3b6db9:1408acfc3c2:-7fe2','NEIL DIAMOND(LIQUIDATING_OFFICER)','SEF','02','SEF',NULL,NULL,NULL,'0.00','0.00','0.00','0.00','0.00',1,1),('CSHBK-4627b190:140a585fcff:-7ed7','APPROVED','ND-GEN','NEIL DIAMOND(LIQUIDATING_OFFICER) - GENERAL',NULL,'LIQUIDATING_OFFICER','USR4a3b6db9:1408acfc3c2:-7fe2','NEIL DIAMOND(LIQUIDATING_OFFICER)','GENERAL','01','GENERAL',NULL,NULL,NULL,'0.00','0.00','675.00','675.00','0.00',1,3),('CSHBK-4627b190:140a585fcff:-7ee2','APPROVED','JZ-COL-TRUST','JESSIE ZAMORA(COLLECTOR) - TRUST',NULL,'COLLECTOR','USR11700b22:1407632636b:-7e71','JESSIE ZAMORA(COLLECTOR)','TRUST','03','TRUST',NULL,NULL,NULL,'0.00','0.00','0.00','0.00','0.00',1,1),('CSHBK-4627b190:140a585fcff:-7eed','APPROVED','JZ-COL-SEF','JESSIE ZAMORA(COLLECTOR) - SEF',NULL,'COLLECTOR','USR11700b22:1407632636b:-7e71','JESSIE ZAMORA(COLLECTOR)','SEF','02','SEF',NULL,NULL,NULL,'0.00','0.00','0.00','0.00','0.00',1,1),('CSHBK-4627b190:140a585fcff:-7ef8','APPROVED','JZ-COL-GEN','JESSIE ZAMORA(COLLECTOR) - GENERAL',NULL,'COLLECTOR','USR11700b22:1407632636b:-7e71','JESSIE ZAMORA(COLLECTOR)','GENERAL','01','GENERAL',NULL,NULL,NULL,'0.00','0.00','875.00','775.00','100.00',1,8);

/*Table structure for table `cashbook_entry` */

DROP TABLE IF EXISTS `cashbook_entry`;

CREATE TABLE `cashbook_entry` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) default NULL,
  `refdate` date default NULL,
  `refid` varchar(50) default NULL,
  `refno` varchar(50) default NULL,
  `reftype` varchar(50) default NULL,
  `particulars` varchar(255) default NULL,
  `dr` decimal(16,2) default NULL,
  `cr` decimal(16,2) default NULL,
  `runbalance` decimal(16,2) default NULL,
  `pageno` int(11) default NULL,
  `lineno` int(11) default NULL,
  `postingrefid` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `cashbook_parent` (`parentid`),
  KEY `idx_refid` (`refid`),
  KEY `uix_parent_refid_reftype` (`parentid`,`refid`,`reftype`),
  CONSTRAINT `cashbook_parent` FOREIGN KEY (`parentid`) REFERENCES `cashbook` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cashbook_entry` */

insert  into `cashbook_entry`(`objid`,`parentid`,`refdate`,`refid`,`refno`,`reftype`,`particulars`,`dr`,`cr`,`runbalance`,`pageno`,`lineno`,`postingrefid`) values ('CSHBK2b56a0:140a601f61c:-7ff7','CSHBK-4627b190:140a585fcff:-7ed7','2013-08-22','DEP2b56a0:140a601f61c:-7ff9','DEP00002','DEPOSIT','DEPOSITED BY GRACE CABANTAN','0.00','675.00','0.00',1,2,NULL),('CSHBK2b56a0:140a601f61c:-7ffb','CSHBK-4627b190:140a585fcff:-7ed7','2013-08-22','LIQ2b56a0:140a601f61c:-7ffd','LIQ00003','liquidation','LIQUIDATION','675.00','0.00','675.00',1,1,NULL),('CSHBK3f1e623f:140a585fb55:-7fa9','CSHBK-4627b190:140a585fcff:-7ef8','2013-08-22','RCT3f1e623f:140a585fb55:-7fab','6000004','cashreceipt','GENERAL_COLLECTION(DELA CRUZ, JUAN M.)','100.00','0.00','100.00',1,7,NULL),('CSHBK3f1e623f:140a585fb55:-7faf','CSHBK-4627b190:140a585fcff:-7ef8','2013-08-22','REM3f1e623f:140a585fb55:-7fb8','JZ00003','remittance','REMITTANCE','0.00','675.00','0.00',1,6,NULL),('CSHBK3f1e623f:140a585fb55:-7fc6','CSHBK-4627b190:140a585fcff:-7ef8','2013-08-22','RCT3f1e623f:140a585fb55:-7fc9','5000001','cashreceipt','LARGE_CATTLE_TRANSFER(DELA CRUZ, JUAN S.)','100.00','0.00','675.00',1,5,NULL),('CSHBK3f1e623f:140a585fb55:-7fcc','CSHBK-4627b190:140a585fcff:-7ef8','2013-08-22','RCT3f1e623f:140a585fb55:-7fce','6000003','cashreceipt','GENERAL_COLLECTION(SANCHEZ, SHARON T.)','75.00','0.00','575.00',1,4,NULL),('CSHBK3f1e623f:140a585fb55:-7fcf','CSHBK-4627b190:140a585fcff:-7ef8','2013-08-22','VOID3f1e623f:140a585fb55:-7fd0','6000002','cashreceipt:void','VOID wrong amount','0.00','100.00','500.00',1,3,NULL),('CSHBK3f1e623f:140a585fb55:-7fd1','CSHBK-4627b190:140a585fcff:-7ef8','2013-08-22','RCT3f1e623f:140a585fb55:-7fd3','6000002','cashreceipt','GENERAL_COLLECTION(DINERO, ROBERT S)','100.00','0.00','600.00',1,2,NULL),('CSHBK3f1e623f:140a585fb55:-7fd4','CSHBK-4627b190:140a585fcff:-7ef8','2013-08-22','RCT3f1e623f:140a585fb55:-7fd6','6000001','cashreceipt','GENERAL_COLLECTION(DELA CRUZ, JUAN S.)','500.00','0.00','500.00',1,1,NULL);

/*Table structure for table `cashreceipt` */

DROP TABLE IF EXISTS `cashreceipt`;

CREATE TABLE `cashreceipt` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL,
  `txndate` datetime NOT NULL,
  `receiptno` varchar(50) NOT NULL,
  `receiptdate` date NOT NULL,
  `txnmode` varchar(10) NOT NULL,
  `payer_objid` varchar(50) default '',
  `payer_name` varchar(100) default '',
  `paidby` varchar(100) NOT NULL,
  `paidbyaddress` varchar(100) NOT NULL,
  `amount` decimal(16,2) NOT NULL,
  `collector_objid` varchar(50) NOT NULL,
  `collector_name` varchar(100) NOT NULL,
  `collector_title` varchar(50) NOT NULL default '',
  `totalcash` decimal(16,2) NOT NULL,
  `totalnoncash` decimal(16,2) NOT NULL,
  `cashchange` decimal(16,2) NOT NULL,
  `totalcredit` decimal(16,2) NOT NULL,
  `org_objid` varchar(50) NOT NULL,
  `org_name` varchar(50) NOT NULL,
  `formno` varchar(50) NOT NULL,
  `series` int(11) NOT NULL,
  `controlid` varchar(50) NOT NULL,
  `collectiontype_objid` varchar(50) default NULL,
  `collectiontype_name` varchar(100) default NULL,
  `user_objid` varchar(50) default NULL,
  `user_name` varchar(100) default NULL,
  `remarks` varchar(200) default NULL,
  `subcollector_objid` varchar(50) default NULL,
  `subcollector_name` varchar(100) default NULL,
  `subcollector_title` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_receiptno` (`receiptno`),
  KEY `ix_paidby` (`paidby`),
  KEY `ix_payorname` (`payer_name`),
  KEY `ix_state` (`state`),
  KEY `ix_collectorname` (`collector_name`),
  KEY `ix_collectorid` (`collector_objid`),
  KEY `FK_cashreceipt_afcontrol` (`controlid`),
  KEY `FK_cashereceipt_userid` (`user_objid`),
  CONSTRAINT `FK_cashereceipt_userid` FOREIGN KEY (`user_objid`) REFERENCES `sys_user` (`objid`),
  CONSTRAINT `FK_cashreceipt_afcontrol` FOREIGN KEY (`controlid`) REFERENCES `afcontrol` (`objid`),
  CONSTRAINT `FK_cashreceipt_collector` FOREIGN KEY (`collector_objid`) REFERENCES `sys_user` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cashreceipt` */

insert  into `cashreceipt`(`objid`,`state`,`txndate`,`receiptno`,`receiptdate`,`txnmode`,`payer_objid`,`payer_name`,`paidby`,`paidbyaddress`,`amount`,`collector_objid`,`collector_name`,`collector_title`,`totalcash`,`totalnoncash`,`cashchange`,`totalcredit`,`org_objid`,`org_name`,`formno`,`series`,`controlid`,`collectiontype_objid`,`collectiontype_name`,`user_objid`,`user_name`,`remarks`,`subcollector_objid`,`subcollector_name`,`subcollector_title`) values ('RCT3f1e623f:140a585fb55:-7fab','POSTED','2013-08-22 18:59:20','6000004','2013-08-22','ONLINE','E1','DELA CRUZ, JUAN M.','DELA CRUZ, JUAN M.','CEBU CITY','100.00','USR11700b22:1407632636b:-7e71','JESSIE ZAMORA','LAOO II','100.00','0.00','0.00','0.00','169','ILIGAN CITY','51',6000004,'AFCTRL3f1e623f:140a585fb55:-7fe7','COLLTYPE-5838d01c:1407a677d03:-7fee','GENERAL_COLLECTION','USR11700b22:1407632636b:-7e71','JZ',NULL,NULL,NULL,NULL),('RCT3f1e623f:140a585fb55:-7fc9','POSTED','2013-08-22 18:35:03','5000001','2013-08-22','ONLINE','INDI30fe1c8:14080c373ba:-7ff5','DELA CRUZ, JUAN S.','DELA CRUZ, JUAN S.','ILIGAN CITY','100.00','USR11700b22:1407632636b:-7e71','JESSIE ZAMORA','LAOO II','100.00','0.00','0.00','0.00','169','ILIGAN CITY','52',5000001,'AFCTRL3f1e623f:140a585fb55:-7fe3','COLLTYPE4f0e1557:14081dd5988:-7fb5','LARGE_CATTLE_TRANSFER','USR11700b22:1407632636b:-7e71','JZ',NULL,NULL,NULL,NULL),('RCT3f1e623f:140a585fb55:-7fce','POSTED','2013-08-22 18:34:03','6000003','2013-08-22','ONLINE','INDI30fe1c8:14080c373ba:-7fe5','SANCHEZ, SHARON T.','SANCHEZ, SHARON T.','ILIGAN CITY','75.00','USR11700b22:1407632636b:-7e71','JESSIE ZAMORA','LAOO II','75.00','0.00','0.00','0.00','169','ILIGAN CITY','51',6000003,'AFCTRL3f1e623f:140a585fb55:-7fe7','COLLTYPE-5838d01c:1407a677d03:-7fee','GENERAL_COLLECTION','USR11700b22:1407632636b:-7e71','JZ',NULL,NULL,NULL,NULL),('RCT3f1e623f:140a585fb55:-7fd3','POSTED','2013-08-22 18:33:30','6000002','2013-08-22','ONLINE','INDI30fe1c8:14080c373ba:-7feb','DINERO, ROBERT S','DINERO, ROBERT S','ILIGAN CITY','100.00','USR11700b22:1407632636b:-7e71','JESSIE ZAMORA','LAOO II','100.00','0.00','0.00','0.00','169','ILIGAN CITY','51',6000002,'AFCTRL3f1e623f:140a585fb55:-7fe7','COLLTYPE-5838d01c:1407a677d03:-7fee','GENERAL_COLLECTION','USR11700b22:1407632636b:-7e71','JZ',NULL,NULL,NULL,NULL),('RCT3f1e623f:140a585fb55:-7fd6','POSTED','2013-08-22 18:33:12','6000001','2013-08-22','ONLINE','INDI30fe1c8:14080c373ba:-7ff5','DELA CRUZ, JUAN S.','DELA CRUZ, JUAN S.','ILIGAN CITY','500.00','USR11700b22:1407632636b:-7e71','JESSIE ZAMORA','LAOO II','500.00','0.00','0.00','0.00','169','ILIGAN CITY','51',6000001,'AFCTRL3f1e623f:140a585fb55:-7fe7','COLLTYPE-5838d01c:1407a677d03:-7fee','GENERAL_COLLECTION','USR11700b22:1407632636b:-7e71','JZ',NULL,NULL,NULL,NULL);

/*Table structure for table `cashreceipt_burial` */

DROP TABLE IF EXISTS `cashreceipt_burial`;

CREATE TABLE `cashreceipt_burial` (
  `objid` varchar(50) NOT NULL,
  `tocitymuni` varchar(100) default NULL,
  `toprovince` varchar(100) default NULL,
  `permissiontype` varchar(15) default NULL,
  `name` varchar(100) default NULL,
  `nationality` varchar(15) default NULL,
  `age` int(11) default NULL,
  `sex` varchar(10) default NULL,
  `dtdeath` varchar(15) default NULL,
  `deathcause` varchar(50) default NULL,
  `cemetery` varchar(50) default NULL,
  `infectious` varchar(50) default NULL,
  `embalmed` varchar(50) default NULL,
  `disposition` varchar(50) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cashreceipt_burial` */

/*Table structure for table `cashreceipt_largecattleownership` */

DROP TABLE IF EXISTS `cashreceipt_largecattleownership`;

CREATE TABLE `cashreceipt_largecattleownership` (
  `objid` varchar(50) NOT NULL,
  `ownerof` varchar(200) default NULL,
  `sex` varchar(10) default NULL,
  `age` int(11) default NULL,
  `municipalitybrand` varchar(20) default NULL,
  `ownerbrand` varchar(20) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cashreceipt_largecattleownership` */

/*Table structure for table `cashreceipt_largecattletransfer` */

DROP TABLE IF EXISTS `cashreceipt_largecattletransfer`;

CREATE TABLE `cashreceipt_largecattletransfer` (
  `objid` varchar(50) NOT NULL,
  `purchasedby` varchar(255) default NULL,
  `price` decimal(16,2) default '0.00',
  `citymuni` varchar(100) default NULL,
  `province` varchar(100) default NULL,
  `sex` varchar(10) default NULL,
  `age` int(11) default NULL,
  `municipalitybrand` varchar(20) default NULL,
  `ownerbrand` varchar(20) default NULL,
  `certificateno` varchar(30) default NULL,
  `issuedate` date default NULL,
  `issuedcitymuni` varchar(100) default NULL,
  `issuedprovince` varchar(100) default NULL,
  `attestedby` varchar(200) default NULL,
  `treasurer` varchar(200) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cashreceipt_largecattletransfer` */

insert  into `cashreceipt_largecattletransfer`(`objid`,`purchasedby`,`price`,`citymuni`,`province`,`sex`,`age`,`municipalitybrand`,`ownerbrand`,`certificateno`,`issuedate`,`issuedcitymuni`,`issuedprovince`,`attestedby`,`treasurer`) values ('RCT3f1e623f:140a585fb55:-7fc9','JUAN','10000.00','ILIGAN','LANAO','MALE',2,NULL,NULL,'99493','2013-08-03','ILIGAN','LANAO','PETER','SANTOS');

/*Table structure for table `cashreceipt_marriage` */

DROP TABLE IF EXISTS `cashreceipt_marriage`;

CREATE TABLE `cashreceipt_marriage` (
  `objid` varchar(50) NOT NULL,
  `groomname` varchar(100) default NULL,
  `groomaddress` varchar(100) default NULL,
  `groomageyear` int(11) default NULL,
  `groomagemonth` int(11) default NULL,
  `bridename` varchar(100) default NULL,
  `brideaddress` varchar(100) default NULL,
  `brideageyear` int(11) default NULL,
  `brideagemonth` int(11) default NULL,
  `registerno` varchar(30) default NULL,
  `attachments` varchar(200) default NULL,
  `lcrofficer` varchar(100) default NULL,
  `lcrofficertitle` varchar(50) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cashreceipt_marriage` */

/*Table structure for table `cashreceipt_rpt` */

DROP TABLE IF EXISTS `cashreceipt_rpt`;

CREATE TABLE `cashreceipt_rpt` (
  `objid` varchar(50) NOT NULL default '',
  `type` varchar(10) NOT NULL default '' COMMENT 'ONLINE, MANUAL',
  `year` int(11) NOT NULL,
  `qtr` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cashreceipt_rpt` */

/*Table structure for table `cashreceipt_rpt_item` */

DROP TABLE IF EXISTS `cashreceipt_rpt_item`;

CREATE TABLE `cashreceipt_rpt_item` (
  `objid` varchar(50) NOT NULL,
  `rptreceiptid` varchar(50) NOT NULL,
  `rptledgerid` varchar(50) default NULL,
  `rptledgeritemid` varchar(50) default '',
  `barangayid` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `qtr` int(11) NOT NULL,
  `basic` decimal(16,2) NOT NULL,
  `basicint` decimal(16,2) NOT NULL,
  `basicdisc` decimal(16,2) NOT NULL,
  `basiccredit` decimal(16,2) NOT NULL,
  `basicacct_objid` varchar(50) NOT NULL default '',
  `basicintacct_objid` varchar(50) default '',
  `sef` decimal(16,2) NOT NULL,
  `sefint` decimal(16,2) NOT NULL,
  `sefdisc` decimal(16,2) NOT NULL,
  `sefcredit` decimal(16,2) NOT NULL,
  `sefacct_objid` varchar(50) NOT NULL default '',
  `sefintacct_objid` varchar(50) default '',
  `partial` int(11) NOT NULL,
  `revtype` varchar(15) NOT NULL,
  `citybasic` decimal(12,2) NOT NULL,
  `citybasicint` decimal(12,2) NOT NULL,
  `citysef` decimal(12,2) NOT NULL,
  `citysefint` decimal(12,2) NOT NULL,
  `munibasic` decimal(12,2) NOT NULL,
  `munibasicint` decimal(12,2) NOT NULL,
  `munisef` decimal(12,2) NOT NULL,
  `munisefint` decimal(12,2) NOT NULL,
  `brgybasic` decimal(12,2) NOT NULL,
  `brgybasicint` decimal(12,2) NOT NULL,
  `provbasic` decimal(12,2) NOT NULL,
  `provbasicint` decimal(12,2) NOT NULL,
  `provsef` decimal(12,2) NOT NULL,
  `provsefint` decimal(12,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_rptreceiptitem_rptreceipt` (`rptreceiptid`),
  KEY `FK_rptreceiptitem_rptledgeritem` (`rptledgeritemid`),
  KEY `FK_rptreceiptitem_rptledger` (`rptledgerid`),
  CONSTRAINT `FK_rptreceiptitem_rptledger` FOREIGN KEY (`rptledgerid`) REFERENCES `rptledger` (`objid`),
  CONSTRAINT `FK_rptreceiptitem_rptledgeritem` FOREIGN KEY (`rptledgeritemid`) REFERENCES `rptledgeritem` (`objid`),
  CONSTRAINT `FK_rptreceiptitem_rptreceipt` FOREIGN KEY (`rptreceiptid`) REFERENCES `cashreceipt_rpt` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cashreceipt_rpt_item` */

/*Table structure for table `cashreceipt_slaughter` */

DROP TABLE IF EXISTS `cashreceipt_slaughter`;

CREATE TABLE `cashreceipt_slaughter` (
  `objid` varchar(50) NOT NULL,
  `acctid` varchar(50) default NULL,
  `acctno` varchar(50) default NULL,
  `acctitle` varchar(100) default NULL,
  `permitamount` decimal(18,2) default NULL,
  `slaughterof` varchar(25) default NULL,
  `weight` decimal(18,2) default NULL,
  `ordinanceno` varchar(50) default NULL,
  `ordinancedate` varchar(50) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cashreceipt_slaughter` */

/*Table structure for table `cashreceipt_void` */

DROP TABLE IF EXISTS `cashreceipt_void`;

CREATE TABLE `cashreceipt_void` (
  `objid` varchar(50) NOT NULL,
  `receiptid` varchar(50) NOT NULL,
  `txndate` datetime NOT NULL,
  `postedby_objid` varchar(50) NOT NULL default '',
  `postedby_name` varchar(100) NOT NULL default '',
  `reason` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `FK_voidreceipt_receipt` (`receiptid`),
  CONSTRAINT `FK_cashreceipt_void_cashreceipt` FOREIGN KEY (`receiptid`) REFERENCES `cashreceipt` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cashreceipt_void` */

insert  into `cashreceipt_void`(`objid`,`receiptid`,`txndate`,`postedby_objid`,`postedby_name`,`reason`) values ('VOID3f1e623f:140a585fb55:-7fd0','RCT3f1e623f:140a585fb55:-7fd3','2013-08-22 18:33:39','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','wrong amount');

/*Table structure for table `cashreceiptitem` */

DROP TABLE IF EXISTS `cashreceiptitem`;

CREATE TABLE `cashreceiptitem` (
  `objid` varchar(50) NOT NULL,
  `receiptid` varchar(50) default NULL,
  `item_objid` varchar(50) default NULL,
  `item_code` varchar(50) default NULL,
  `item_title` varchar(50) default NULL,
  `amount` decimal(16,2) default NULL,
  `remarks` varchar(255) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_cashreceiptitem` (`receiptid`),
  CONSTRAINT `FK_cashreceiptitem` FOREIGN KEY (`receiptid`) REFERENCES `cashreceipt` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cashreceiptitem` */

insert  into `cashreceiptitem`(`objid`,`receiptid`,`item_objid`,`item_code`,`item_title`,`amount`,`remarks`) values ('RCTI3f1e623f:140a585fb55:-7faa','RCT3f1e623f:140a585fb55:-7fab','REVITEM-5476e39d:1407c879beb:-7ff5','MAYORS_PERMIT','MAYORS PERMIT FEE','100.00',NULL),('RCTI3f1e623f:140a585fb55:-7fc7','RCT3f1e623f:140a585fb55:-7fc9','LCT','101','LARGE CATTLE TRANSFER','100.00',NULL),('RCTI3f1e623f:140a585fb55:-7fcd','RCT3f1e623f:140a585fb55:-7fce','REVITEM-459fc8a6:14095266043:-7f3a','1312','POLICE CLEARANCE - LOCAL','75.00',NULL),('RCTI3f1e623f:140a585fb55:-7fd2','RCT3f1e623f:140a585fb55:-7fd3','REVITEM7555e49f:1408212f907:-7fcc','GF','GARBAGE FEE','100.00',NULL),('RCTI3f1e623f:140a585fb55:-7fd5','RCT3f1e623f:140a585fb55:-7fd6','REVITEM-5476e39d:1407c879beb:-7ff5','MAYORS_PERMIT','MAYORS PERMIT FEE','500.00',NULL);

/*Table structure for table `cashreceiptitem_discount` */

DROP TABLE IF EXISTS `cashreceiptitem_discount`;

CREATE TABLE `cashreceiptitem_discount` (
  `objid` varchar(50) default NULL,
  `receiptid` varchar(50) default NULL,
  `receiptitemid` varchar(50) default NULL,
  `acctid` varchar(50) default NULL,
  `amount` decimal(16,2) default NULL,
  `title` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cashreceiptitem_discount` */

/*Table structure for table `cashreceiptpayment_check` */

DROP TABLE IF EXISTS `cashreceiptpayment_check`;

CREATE TABLE `cashreceiptpayment_check` (
  `objid` varchar(50) NOT NULL,
  `receiptid` varchar(50) default NULL,
  `bank` varchar(50) default NULL,
  `checkno` varchar(25) default NULL,
  `checkdate` date default NULL,
  `amount` decimal(16,2) default NULL,
  `particulars` varchar(255) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_cashreceiptpayment_check` (`receiptid`),
  CONSTRAINT `FK_cashreceiptpayment_check` FOREIGN KEY (`receiptid`) REFERENCES `cashreceipt` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cashreceiptpayment_check` */

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(10) default NULL,
  `indexno` varchar(15) default NULL,
  `pin` varchar(15) default NULL,
  `name` varchar(50) default NULL,
  `previd` varchar(50) default NULL,
  `parentid` varchar(50) default NULL,
  `mayor_name` varchar(100) default NULL,
  `mayor_title` varchar(50) default NULL,
  `mayor_office` varchar(50) default NULL,
  `assessor_name` varchar(100) default NULL,
  `assessor_title` varchar(50) default NULL,
  `assessor_office` varchar(50) default NULL,
  `treasurer_name` varchar(100) default NULL,
  `treasurer_title` varchar(50) default NULL,
  `treasurer_office` varchar(50) default NULL,
  `address` varchar(100) default NULL,
  `fullname` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lgu_barangay_name` (`name`),
  UNIQUE KEY `ux_lgu_barangay_name_state` (`name`,`state`),
  KEY `ix_lgu_barangay_indexno` (`indexno`),
  KEY `ix_lgu_barangay_previd` (`previd`),
  KEY `ix_lgu_barangay_parentid` (`parentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `city` */

insert  into `city`(`objid`,`state`,`indexno`,`pin`,`name`,`previd`,`parentid`,`mayor_name`,`mayor_title`,`mayor_office`,`assessor_name`,`assessor_title`,`assessor_office`,`treasurer_name`,`treasurer_title`,`treasurer_office`,`address`,`fullname`) values ('169','DRAFT','169','169','ILIGAN CITY',NULL,NULL,'ILIGAN MAYOR','CITY MAYOR','OFFICE OF THE CITY MAYOR','ILIGAN ASSESSOR','CITY ASSESSOR','OFFICE OF THE CITY ASSESSOR','ILIGAN TREASURER','CITY TREASURER','OFFICE OF THE CITY TREASURER','ILIGAN CITY, LANAO DEL NORTE','CITY OF ILIGAN');

/*Table structure for table `collectiontype` */

DROP TABLE IF EXISTS `collectiontype`;

CREATE TABLE `collectiontype` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) default NULL,
  `name` varchar(50) default NULL,
  `title` varchar(50) default NULL,
  `formno` varchar(10) default NULL,
  `handler` varchar(25) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `collectiontype` */

insert  into `collectiontype`(`objid`,`state`,`name`,`title`,`formno`,`handler`) values ('COLLTYPE-5838d01c:1407a677d03:-7fee','APPROVED','GENERAL_COLLECTION','GENERAL COLLECTION','51','misc'),('COLLTYPE-65421448:14080039a15:-7fa3',NULL,'MARKET_COLLECTION','MARKET COLLECTION','51','misc'),('COLLTYPE-b935e13:14085778b21:-7f79','APPROVED','REALTY_TAX','REALTY TAX','56','rpt'),('COLLTYPE2045ca83:14081e65555:-7f89','APPROVED','BURIAL','BURIAL','58','burial'),('COLLTYPE2045ca83:14081e65555:-7ff5','APPROVED','MARRIAGE','MARRIAGE','54','marriage'),('COLLTYPE2b972692:1408af7cac0:-7fa1','APPROVED','SLAUGHTER_PERMIT','SLAUGHTER PERMIT','57','slaughter'),('COLLTYPE4f0e1557:14081dd5988:-7f58','APPROVED','LARGE_CATTLER_OWNERSHIP','LARGE CATTLE OWNERSHIP','53','lco'),('COLLTYPE4f0e1557:14081dd5988:-7fb5',NULL,'LARGE_CATTLE_TRANSFER','LARGE CATTLER TRANSFER','52','lct');

/*Table structure for table `consolidatedland` */

DROP TABLE IF EXISTS `consolidatedland`;

CREATE TABLE `consolidatedland` (
  `objid` varchar(50) NOT NULL,
  `consolidationid` varchar(50) NOT NULL,
  `landfaasid` varchar(50) NOT NULL,
  `rpuid` varchar(50) NOT NULL,
  `rpid` varchar(50) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_consolidatedland_consolidation` (`consolidationid`),
  KEY `FK_consolidatedland_faas` (`landfaasid`),
  CONSTRAINT `FK_consolidatedland_consolidation` FOREIGN KEY (`consolidationid`) REFERENCES `consolidation` (`objid`),
  CONSTRAINT `FK_consolidatedland_faas` FOREIGN KEY (`landfaasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `consolidatedland` */

/*Table structure for table `consolidation` */

DROP TABLE IF EXISTS `consolidation`;

CREATE TABLE `consolidation` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `txnno` varchar(6) default NULL,
  `txndate` date default NULL,
  `ry` int(11) NOT NULL,
  `txntype_objid` varchar(5) NOT NULL default '',
  `autonumber` int(11) NOT NULL,
  `effectivityyear` int(11) NOT NULL,
  `effectivityqtr` int(11) NOT NULL,
  `newtdno` varchar(25) default '',
  `newutdno` varchar(25) NOT NULL,
  `newtitletype` varchar(25) default NULL,
  `newtitleno` varchar(25) default NULL,
  `newtitledate` date default NULL,
  `memoranda` varchar(2000) default '',
  `lguid` varchar(50) NOT NULL,
  `lgutype` varchar(50) NOT NULL,
  `newrpid` varchar(50) NOT NULL default '',
  `newrpuid` varchar(50) NOT NULL default '',
  `newfaasid` varchar(50) default NULL,
  `taxpayer_objid` varchar(50) default '',
  `taxpayer_name` varchar(2000) default '',
  `taxpayer_address` varchar(100) default '',
  `owner_name` varchar(1000) default '',
  `owner_address` varchar(100) default '',
  `administrator_objid` varchar(50) default NULL,
  `administrator_name` varchar(100) default NULL,
  `administrator_address` varchar(100) default NULL,
  `administratorid` varchar(50) default NULL,
  `administratorname` varchar(150) default NULL,
  `administratoraddress` varchar(100) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_consolidation_newutdno` (`newutdno`),
  KEY `FK_consolidation_newrp` (`newrpid`),
  KEY `FK_consolidation_newrpu` (`newrpuid`),
  KEY `FK_consolidation_newfaas` (`newfaasid`),
  KEY `ix_consolidation_newtdno` (`newtdno`),
  KEY `ix_consolidation_ownername` (`owner_name`(255)),
  KEY `ix_consolidation_taxpayername` (`taxpayer_name`(255)),
  CONSTRAINT `FK_consolidation_newfaas` FOREIGN KEY (`newfaasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_consolidation_newrp` FOREIGN KEY (`newrpid`) REFERENCES `realproperty` (`objid`),
  CONSTRAINT `FK_consolidation_newrpu` FOREIGN KEY (`newrpuid`) REFERENCES `rpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `consolidation` */

/*Table structure for table `consolidationaffectedrpu` */

DROP TABLE IF EXISTS `consolidationaffectedrpu`;

CREATE TABLE `consolidationaffectedrpu` (
  `objid` varchar(50) NOT NULL,
  `consolidationid` varchar(50) NOT NULL,
  `landfaasid` varchar(50) NOT NULL,
  `prevfaasid` varchar(50) NOT NULL,
  `newrpid` varchar(50) NOT NULL,
  `newrpuid` varchar(50) NOT NULL,
  `newfaasid` varchar(50) default NULL,
  `newtdno` varchar(25) default '',
  `newutdno` varchar(25) NOT NULL,
  `newsuffix` int(11) NOT NULL,
  `memoranda` varchar(1000) default '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_consolidationaffectedrpu_newutdno` (`newutdno`),
  KEY `FK_consolidationaffectedrpu_consolidation` (`consolidationid`),
  KEY `FK_consolidationaffectedrpu_prevfaas` (`prevfaasid`),
  KEY `FK_consolidationaffectedrpu_newrpu` (`newrpuid`),
  KEY `FK_consolidationaffectedrpu_newfaas` (`newfaasid`),
  KEY `ix_consolidationaffectedrpu_newtdno` (`newtdno`),
  KEY `ix_consolidationaffectedrpu_landfaasid` (`landfaasid`),
  CONSTRAINT `FK_consolidationaffectedrpu_consolidation` FOREIGN KEY (`consolidationid`) REFERENCES `consolidation` (`objid`),
  CONSTRAINT `FK_consolidationaffectedrpu_newfaas` FOREIGN KEY (`newfaasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_consolidationaffectedrpu_newrpu` FOREIGN KEY (`newrpuid`) REFERENCES `rpu` (`objid`),
  CONSTRAINT `FK_consolidationaffectedrpu_prevfaas` FOREIGN KEY (`prevfaasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `consolidationaffectedrpu` */

/*Table structure for table `district` */

DROP TABLE IF EXISTS `district`;

CREATE TABLE `district` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(10) default NULL,
  `indexno` varchar(15) default NULL,
  `pin` varchar(15) default NULL,
  `name` varchar(50) default NULL,
  `previd` varchar(50) default NULL,
  `parentid` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lgu_barangay_name` (`name`),
  UNIQUE KEY `ux_lgu_barangay_name_state` (`name`,`state`),
  KEY `ix_lgu_barangay_indexno` (`indexno`),
  KEY `ix_lgu_barangay_previd` (`previd`),
  KEY `ix_lgu_barangay_parentid` (`parentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `district` */

insert  into `district`(`objid`,`state`,`indexno`,`pin`,`name`,`previd`,`parentid`) values ('DIST-558fa87d:14094fe27c7:-7ff7','APPROVED','-','-','CITY HOSPITAL',NULL,NULL),('DIST514f6587:1407632626e:-7fff','DRAFT','00','169-00','DISTRICT 00',NULL,'169');

/*Table structure for table `entity` */

DROP TABLE IF EXISTS `entity`;

CREATE TABLE `entity` (
  `objid` varchar(50) NOT NULL default '',
  `entityno` varchar(10) NOT NULL default '',
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `mailingaddress` varchar(255) default NULL,
  `type` varchar(25) NOT NULL default '',
  `sys_lastupdate` varchar(25) default NULL,
  `sys_lastupdateby` varchar(50) default NULL,
  `remarks` varchar(160) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_entity_entityno` (`entityno`),
  KEY `ix_entity_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `entity` */

insert  into `entity`(`objid`,`entityno`,`name`,`address`,`mailingaddress`,`type`,`sys_lastupdate`,`sys_lastupdateby`,`remarks`) values ('E1','0001','DELA CRUZ, JUAN M.','CEBU CITY',NULL,'INDIVIDUAL',NULL,NULL,NULL),('INDI30fe1c8:14080c373ba:-7fe5','00003','SANCHEZ, SHARON T.','ILIGAN CITY',NULL,'INDIVIDUAL',NULL,NULL,NULL),('INDI30fe1c8:14080c373ba:-7feb','00002','DINERO, ROBERT S','ILIGAN CITY',NULL,'INDIVIDUAL',NULL,NULL,NULL),('INDI30fe1c8:14080c373ba:-7ff5','00001','DELA CRUZ, JUAN S.','ILIGAN CITY',NULL,'INDIVIDUAL',NULL,NULL,NULL),('INDI7555e49f:1408212f907:-7fe0','00006','FLORES, WORGIE V','CEBU CITY',NULL,'INDIVIDUAL',NULL,NULL,NULL),('JURI30fe1c8:14080c373ba:-7fcd','00004','RAMESES SYSTEMS INC','CEBU CITY',NULL,'JURIDICAL',NULL,NULL,NULL),('MULT30fe1c8:14080c373ba:-7fc7','00005','HEIRS OF JUAN DELA CRUZ: ET AL.','ILIGAN CITY',NULL,'MULTIPLE',NULL,NULL,NULL);

/*Table structure for table `entitycontact` */

DROP TABLE IF EXISTS `entitycontact`;

CREATE TABLE `entitycontact` (
  `objid` varchar(50) NOT NULL default '',
  `entityid` varchar(50) NOT NULL default '',
  `contacttype` varchar(25) NOT NULL default '',
  `contact` varchar(50) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_entitycontact_entity` (`entityid`),
  CONSTRAINT `FK_entitycontact_entity` FOREIGN KEY (`entityid`) REFERENCES `entity` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `entitycontact` */

/*Table structure for table `entityidcard` */

DROP TABLE IF EXISTS `entityidcard`;

CREATE TABLE `entityidcard` (
  `objid` varchar(50) NOT NULL default '',
  `entityid` varchar(50) NOT NULL default '',
  `idtype` varchar(50) NOT NULL default '',
  `idno` varchar(25) NOT NULL default '',
  `expiry` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_entityidcard_entityid_idtype_idno` (`entityid`,`idtype`,`idno`),
  KEY `FK_entityidcard_entity` (`entityid`),
  CONSTRAINT `FK_entityidcard_entity` FOREIGN KEY (`entityid`) REFERENCES `entity` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `entityidcard` */

/*Table structure for table `entityindividual` */

DROP TABLE IF EXISTS `entityindividual`;

CREATE TABLE `entityindividual` (
  `objid` varchar(50) NOT NULL default '',
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) default NULL,
  `birthdate` date default NULL,
  `birthplace` varchar(160) default NULL,
  `citizenship` varchar(50) default NULL,
  `gender` varchar(10) default NULL,
  `civilstatus` varchar(15) default NULL,
  `profession` varchar(50) default NULL,
  `tin` varchar(25) default NULL,
  `sss` varchar(25) default NULL,
  `height` varchar(10) default NULL,
  `weight` varchar(10) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_entityindividual_lastname` (`lastname`),
  KEY `ix_entityindividual_firstname` (`firstname`),
  CONSTRAINT `FK_entityindividual_entity` FOREIGN KEY (`objid`) REFERENCES `entity` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `entityindividual` */

insert  into `entityindividual`(`objid`,`lastname`,`firstname`,`middlename`,`birthdate`,`birthplace`,`citizenship`,`gender`,`civilstatus`,`profession`,`tin`,`sss`,`height`,`weight`) values ('E1','DELA CRUZ','JUAN','M.','1980-01-01','MANDAUE CITY','FILIPINO','M','SINGLE',NULL,NULL,NULL,NULL,NULL),('INDI30fe1c8:14080c373ba:-7fe5','SANCHEZ','SHARON','T.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('INDI30fe1c8:14080c373ba:-7feb','DINERO','ROBERT','S',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('INDI30fe1c8:14080c373ba:-7ff5','DELA CRUZ','JUAN','S.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('INDI7555e49f:1408212f907:-7fe0','FLORES','WORGIE','V',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `entityjuridical` */

DROP TABLE IF EXISTS `entityjuridical`;

CREATE TABLE `entityjuridical` (
  `objid` varchar(50) NOT NULL,
  `tin` varchar(25) default NULL,
  `dtregistered` date default NULL,
  `orgtype` varchar(25) default NULL COMMENT 'SINGLEPROPERTORSHIP, CORPORATION, etc',
  `nature` varchar(50) default NULL COMMENT 'RETAILER, WHOLESALER, etc.',
  PRIMARY KEY  (`objid`),
  KEY `ix_tin` (`tin`),
  CONSTRAINT `FK_entityjuridical_entity` FOREIGN KEY (`objid`) REFERENCES `entity` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `entityjuridical` */

insert  into `entityjuridical`(`objid`,`tin`,`dtregistered`,`orgtype`,`nature`) values ('JURI30fe1c8:14080c373ba:-7fcd',NULL,NULL,'CORPORATION',NULL);

/*Table structure for table `entitymember` */

DROP TABLE IF EXISTS `entitymember`;

CREATE TABLE `entitymember` (
  `objid` varchar(50) NOT NULL default '',
  `entityid` varchar(50) NOT NULL default '',
  `itemno` int(11) NOT NULL,
  `prefix` varchar(25) default NULL,
  `taxpayer_objid` varchar(50) NOT NULL default '',
  `taxpayer_name` text NOT NULL,
  `taxpayer_address` varchar(160) NOT NULL,
  `suffix` varchar(25) default NULL,
  `remarks` varchar(160) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_entitymember_entity` (`entityid`),
  KEY `ix_taxpayer_name` (`taxpayer_name`(255)),
  KEY `ix_taxpayer_objid` (`taxpayer_objid`),
  CONSTRAINT `FK_entitymember_entity` FOREIGN KEY (`entityid`) REFERENCES `entity` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `entitymember` */

insert  into `entitymember`(`objid`,`entityid`,`itemno`,`prefix`,`taxpayer_objid`,`taxpayer_name`,`taxpayer_address`,`suffix`,`remarks`) values ('MEM30fe1c8:14080c373ba:-7ed2','MULT30fe1c8:14080c373ba:-7fc7',4,NULL,'INDI30fe1c8:14080c373ba:-7fe5','SANCHEZ, SHARON T.','ILIGAN CITY',NULL,NULL),('MEM30fe1c8:14080c373ba:-7ef7','MULT30fe1c8:14080c373ba:-7fc7',3,NULL,'INDI30fe1c8:14080c373ba:-7feb','DINERO, ROBERT S','ILIGAN CITY','&',NULL),('MEM30fe1c8:14080c373ba:-7f0b','MULT30fe1c8:14080c373ba:-7fc7',2,NULL,'E1','DELA CRUZ, JUAN M.','CEBU CITY','&',NULL),('MEM30fe1c8:14080c373ba:-7f1e','MULT30fe1c8:14080c373ba:-7fc7',1,'HEIRS OF:','INDI30fe1c8:14080c373ba:-7ff5','DELA CRUZ, JUAN S.','ILIGAN CITY',':',NULL);

/*Table structure for table `entitymultiple` */

DROP TABLE IF EXISTS `entitymultiple`;

CREATE TABLE `entitymultiple` (
  `objid` varchar(50) NOT NULL,
  `fullname` text,
  PRIMARY KEY  (`objid`),
  CONSTRAINT `FK_entitymultiple_entity` FOREIGN KEY (`objid`) REFERENCES `entity` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `entitymultiple` */

insert  into `entitymultiple`(`objid`,`fullname`) values ('MULT30fe1c8:14080c373ba:-7fc7','HEIRS OF: DELA CRUZ, JUAN S. : DELA CRUZ, JUAN M. & DINERO, ROBERT S & SANCHEZ, SHARON T.');

/*Table structure for table `exemptiontype` */

DROP TABLE IF EXISTS `exemptiontype`;

CREATE TABLE `exemptiontype` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(10) NOT NULL default '' COMMENT 'DRAFT, APPROVED',
  `code` varchar(20) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `orderno` int(11) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_exemptiontype_code` (`code`),
  UNIQUE KEY `ux_exemptiontype_name` (`name`),
  KEY `ix_exemptiontype_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `exemptiontype` */

insert  into `exemptiontype`(`objid`,`state`,`code`,`name`,`orderno`) values ('ET-6779b32:13f97e9407c:-7fef','APPROVED','GO','GOVERNMENT',2),('ET-6779b32:13f97e9407c:-7ff1','APPROVED','ED','EDUCATIONAL',1);

/*Table structure for table `faas` */

DROP TABLE IF EXISTS `faas`;

CREATE TABLE `faas` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL default '',
  `rpuid` varchar(50) NOT NULL,
  `datacapture` int(11) NOT NULL,
  `autonumber` int(11) NOT NULL,
  `utdno` varchar(25) NOT NULL,
  `tdno` varchar(25) default '',
  `txntype_objid` varchar(3) NOT NULL default '',
  `effectivityyear` int(11) NOT NULL,
  `effectivityqtr` int(11) NOT NULL,
  `titletype` varchar(10) default NULL,
  `titleno` varchar(20) default NULL,
  `titledate` date default NULL,
  `taxpayer_objid` varchar(50) NOT NULL default '',
  `taxpayer_name` varchar(2000) NOT NULL default '',
  `taxpayer_address` varchar(150) NOT NULL default '',
  `owner_name` varchar(2000) NOT NULL default '',
  `owner_address` varchar(150) NOT NULL default '',
  `administrator_objid` varchar(50) default NULL,
  `administrator_name` varchar(150) default NULL,
  `administrator_address` varchar(150) default NULL,
  `beneficiary_objid` varchar(50) default NULL,
  `beneficiary_name` varchar(150) default NULL,
  `beneficiary_address` varchar(150) default NULL,
  `memoranda` varchar(500) default NULL,
  `cancelnote` varchar(250) default NULL,
  `restrictionid` varchar(50) default NULL,
  `backtaxyrs` int(11) NOT NULL,
  `prevtdno` varchar(500) default NULL,
  `prevpin` varchar(500) default NULL,
  `prevowner` varchar(1000) default NULL,
  `prevav` decimal(16,2) NOT NULL,
  `prevmv` decimal(16,2) NOT NULL,
  `cancelreason` varchar(5) default NULL,
  `canceldate` date default NULL,
  `cancelledbytdnos` varchar(2500) default NULL,
  `lguid` varchar(50) NOT NULL,
  `txntimestamp` varchar(25) NOT NULL,
  `cancelledtimestamp` varchar(25) default '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_faas_utdno` (`utdno`),
  KEY `FK_faas_entity` (`taxpayer_objid`),
  KEY `FK_faas_entity_admin` (`administrator_objid`),
  KEY `FK_faas_entity_beneficiary` (`beneficiary_objid`),
  KEY `FK_faas_rpu` (`rpuid`),
  KEY `ix_faas_state` (`state`),
  KEY `ix_faas_tdno` (`tdno`),
  KEY `ix_faas_titleno` (`titleno`),
  KEY `ix_faas_ownername` (`owner_name`(255)),
  KEY `ix_faas_administratorname` (`administrator_name`),
  KEY `ix_faas_beneficiary` (`beneficiary_name`),
  KEY `ix_faas_restrictionid` (`restrictionid`),
  KEY `ix_faas_prevtdno` (`prevtdno`(255)),
  KEY `ix_faas_prevpin` (`prevpin`(255)),
  KEY `ix_faas_prevowner` (`prevowner`(255)),
  KEY `ix_faas_taxpayername` (`taxpayer_name`(255)),
  KEY `ix_faas_appraisedby` (`objid`),
  KEY `ix_faas_txntimestamp` (`txntimestamp`),
  KEY `ix_faas_cancelledtimestamp` (`cancelledtimestamp`),
  CONSTRAINT `FK_faas_rpu` FOREIGN KEY (`rpuid`) REFERENCES `rpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `faas` */

insert  into `faas`(`objid`,`state`,`rpuid`,`datacapture`,`autonumber`,`utdno`,`tdno`,`txntype_objid`,`effectivityyear`,`effectivityqtr`,`titletype`,`titleno`,`titledate`,`taxpayer_objid`,`taxpayer_name`,`taxpayer_address`,`owner_name`,`owner_address`,`administrator_objid`,`administrator_name`,`administrator_address`,`beneficiary_objid`,`beneficiary_name`,`beneficiary_address`,`memoranda`,`cancelnote`,`restrictionid`,`backtaxyrs`,`prevtdno`,`prevpin`,`prevowner`,`prevav`,`prevmv`,`cancelreason`,`canceldate`,`cancelledbytdnos`,`lguid`,`txntimestamp`,`cancelledtimestamp`) values ('F-726af93e:14080606f2b:-8000','CURRENT','RPU-726af93e:14080606f2b:-7ff9',1,0,'L-01','L-01','GR',2009,1,NULL,NULL,NULL,'E-4795cca5:13cec253f5f:-7ecb','PETER SANTOS','CEBU CITY','PETER SANTOS','CEBU CITY',NULL,NULL,NULL,NULL,NULL,NULL,'gr',NULL,NULL,0,NULL,NULL,NULL,'0.00','0.00',NULL,NULL,NULL,'169','200910102',NULL),('F1ddedc6d:14080d2a6a6:-7ff7','CURRENT','RPU1ddedc6d:14080d2a6a6:-7ff0',1,0,'L-02','L-02','GR',2009,1,NULL,NULL,NULL,'INDI30fe1c8:14080c373ba:-7feb','DINERO, ROBERT S','ILIGAN CITY','DINERO, ROBERT S','ILIGAN CITY',NULL,NULL,NULL,NULL,NULL,NULL,'gr',NULL,NULL,0,NULL,NULL,NULL,'0.00','0.00',NULL,NULL,NULL,'169','200910102',NULL);

/*Table structure for table `faasannotation` */

DROP TABLE IF EXISTS `faasannotation`;

CREATE TABLE `faasannotation` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(15) NOT NULL,
  `annotationtype_objid` varchar(50) NOT NULL,
  `faasid` varchar(50) NOT NULL,
  `txnno` varchar(6) default NULL,
  `txndate` date default NULL,
  `fileno` varchar(25) NOT NULL,
  `orno` varchar(10) NOT NULL,
  `ordate` date NOT NULL,
  `oramount` decimal(16,2) NOT NULL,
  `memoranda` varchar(2000) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_faasannotation_faasannotationtype` (`annotationtype_objid`),
  KEY `FK_faasannotation_faas` (`faasid`),
  KEY `ix_faasannotation_txnno` (`txnno`),
  KEY `ix_faasannotation_fileno` (`fileno`),
  KEY `ix_faasannotation_orno` (`orno`),
  KEY `ix_faasannotation_state` (`state`),
  CONSTRAINT `FK_faasannotation_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_faasannotation_faasannotationtype` FOREIGN KEY (`annotationtype_objid`) REFERENCES `faasannotationtype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `faasannotation` */

insert  into `faasannotation`(`objid`,`state`,`annotationtype_objid`,`faasid`,`txnno`,`txndate`,`fileno`,`orno`,`ordate`,`oramount`,`memoranda`) values ('FA535121b1:14080bb212a:-8000','APPROVED','UL','F-726af93e:14080606f2b:-8000','00001','2013-08-15','23423','2012121','2013-08-02','50.00','Mortgage to BDO FOR P50,000.00');

/*Table structure for table `faasannotationtype` */

DROP TABLE IF EXISTS `faasannotationtype`;

CREATE TABLE `faasannotationtype` (
  `objid` varchar(50) NOT NULL default '',
  `type` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `annotationtype` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `faasannotationtype` */

insert  into `faasannotationtype`(`objid`,`type`) values ('CCJ','CIVIL CASE JUDGEMENT'),('MOA','MEMORANDUM OF AGREEMENT'),('MT','MORTGAGE'),('NAC','NOTICE OF ADVERSE CLAIM'),('NOA','NOTICE OF ATTACHMENT'),('NOAL','NOTICE OF ATTACHMENT/LEVY UPON REALTY'),('NB','NOTICE OF BOND'),('NOL','NOTICE OF LEVY'),('NOLES','NOTICE OF LIS PENDENS'),('NOS','NOTICE OF SHERIFF\'S'),('OFC','ORDER FROM THE COURT'),('SR','SHERIFF\'S CERTIFICATE OF SALE'),('SLVY','SHERIFF\'S NOTICE OF LEVY UPON REAL PROPERTY'),('UL','UNDER LITIGATION'),('WL','WARRANT OF LEVY');

/*Table structure for table `faasbacktax` */

DROP TABLE IF EXISTS `faasbacktax`;

CREATE TABLE `faasbacktax` (
  `objid` varchar(50) NOT NULL,
  `faasid` varchar(50) NOT NULL,
  `ry` int(11) NOT NULL,
  `tdno` varchar(25) NOT NULL,
  `bmv` decimal(16,2) NOT NULL,
  `mv` decimal(16,2) NOT NULL,
  `av` decimal(16,2) NOT NULL,
  `effectivityyear` int(11) NOT NULL,
  `effectivityqtr` int(11) NOT NULL,
  `taxable` int(11) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_faasbacktax` (`faasid`),
  CONSTRAINT `FK_faasbacktax` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `faasbacktax` */

/*Table structure for table `faasupdate` */

DROP TABLE IF EXISTS `faasupdate`;

CREATE TABLE `faasupdate` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `txnno` varchar(10) NOT NULL,
  `txndate` datetime NOT NULL,
  `faasid` varchar(50) NOT NULL,
  `prevtitletype` varchar(25) default NULL,
  `prevtitleno` varchar(25) default NULL,
  `prevtitledate` date default NULL,
  `prevtaxpayerid` varchar(50) NOT NULL,
  `prevtaxpayername` varchar(1000) NOT NULL,
  `prevtaxpayeraddress` varchar(150) NOT NULL,
  `prevownername` varchar(1000) NOT NULL,
  `prevowneraddress` varchar(150) NOT NULL,
  `prevadministratorid` varchar(50) default NULL,
  `prevadministratorname` varchar(150) default NULL,
  `prevadministratoraddress` varchar(100) default NULL,
  `prevrestrictionid` varchar(50) default NULL,
  `prevmemoranda` varchar(500) NOT NULL,
  `prevsurveyno` varchar(100) default NULL,
  `prevcadastrallotno` varchar(100) NOT NULL,
  `prevblockno` varchar(50) default NULL,
  `prevpurok` varchar(50) default NULL,
  `prevstreet` varchar(100) default NULL,
  `prevnorth` varchar(150) NOT NULL,
  `preveast` varchar(150) NOT NULL,
  `prevsouth` varchar(150) NOT NULL,
  `prevwest` varchar(150) NOT NULL,
  `faas_titletype` varchar(25) default NULL,
  `faas_titleno` varchar(25) default NULL,
  `faas_titledate` date default NULL,
  `faas_taxpayerid` varchar(50) NOT NULL,
  `faas_taxpayername` varchar(1000) NOT NULL,
  `faas_taxpayeraddress` varchar(150) NOT NULL,
  `faas_ownername` varchar(1000) NOT NULL,
  `faas_owneraddress` varchar(150) NOT NULL,
  `faas_administratorid` varchar(50) default NULL,
  `faas_administratorname` varchar(150) default NULL,
  `faas_administratoraddress` varchar(100) default NULL,
  `faas_restrictionid` varchar(50) default NULL,
  `faas_memoranda` varchar(500) NOT NULL,
  `rp_surveyno` varchar(100) default NULL,
  `rp_cadastrallotno` varchar(100) NOT NULL,
  `rp_blockno` varchar(50) default NULL,
  `rp_street` varchar(100) default NULL,
  `rp_north` varchar(150) NOT NULL,
  `rp_east` varchar(150) NOT NULL,
  `rp_south` varchar(150) NOT NULL,
  `rp_west` varchar(150) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_faasupdate_txnno` (`txnno`),
  KEY `FK_faasupdate_faas` (`faasid`),
  CONSTRAINT `FK_faasupdate_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `faasupdate` */

/*Table structure for table `fund` */

DROP TABLE IF EXISTS `fund`;

CREATE TABLE `fund` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) default NULL,
  `state` varchar(10) default NULL,
  `code` varchar(50) default NULL,
  `title` varchar(255) default NULL,
  `type` varchar(20) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `fund` */

insert  into `fund`(`objid`,`parentid`,`state`,`code`,`title`,`type`) values ('GENERAL',NULL,'APPROVED','01','GENERAL','GENERAL'),('SEF',NULL,'APPROVED','02','SEF','GENERAL'),('TRUST',NULL,'APPROVED','03','TRUST','GENERAL');

/*Table structure for table `landadjustment` */

DROP TABLE IF EXISTS `landadjustment`;

CREATE TABLE `landadjustment` (
  `objid` varchar(50) NOT NULL,
  `landrpuid` varchar(50) default NULL,
  `landdetailid` varchar(50) default NULL,
  `adjustmenttype_objid` varchar(50) NOT NULL,
  `expr` varchar(250) NOT NULL,
  `adjustment` decimal(16,2) NOT NULL,
  `type` varchar(2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_landadjustment_landdetail` (`landdetailid`),
  KEY `FK_landadjustment_landadjustmenttype` (`adjustmenttype_objid`),
  KEY `FK_landadjustment_landrpu` (`landrpuid`),
  CONSTRAINT `FK_landadjustment_landadjustmenttype` FOREIGN KEY (`adjustmenttype_objid`) REFERENCES `landadjustmenttype` (`objid`),
  CONSTRAINT `FK_landadjustment_landdetail` FOREIGN KEY (`landdetailid`) REFERENCES `landdetail` (`objid`),
  CONSTRAINT `FK_landadjustment_landrpu` FOREIGN KEY (`landrpuid`) REFERENCES `landrpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `landadjustment` */

/*Table structure for table `landadjustmentparameter` */

DROP TABLE IF EXISTS `landadjustmentparameter`;

CREATE TABLE `landadjustmentparameter` (
  `objid` varchar(50) NOT NULL,
  `landadjustmentid` varchar(50) NOT NULL,
  `landrpuid` varchar(50) NOT NULL,
  `parameter_objid` varchar(50) NOT NULL,
  `value` decimal(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_landadjustmentparameter_landrpu` (`landrpuid`),
  KEY `FK_landadjustmentparameter_landadjustment` (`landadjustmentid`),
  KEY `FK_landadjustmentparameter_rptparameter` (`parameter_objid`),
  CONSTRAINT `FK_landadjustmentparameter_landadjustment` FOREIGN KEY (`landadjustmentid`) REFERENCES `landadjustment` (`objid`),
  CONSTRAINT `FK_landadjustmentparameter_landrpu` FOREIGN KEY (`landrpuid`) REFERENCES `landrpu` (`objid`),
  CONSTRAINT `FK_landadjustmentparameter_rptparameter` FOREIGN KEY (`parameter_objid`) REFERENCES `rptparameter` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `landadjustmentparameter` */

/*Table structure for table `landadjustmenttype` */

DROP TABLE IF EXISTS `landadjustmenttype`;

CREATE TABLE `landadjustmenttype` (
  `objid` varchar(50) NOT NULL default '',
  `landrysettingid` varchar(50) NOT NULL default '',
  `code` varchar(10) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `expr` varchar(1000) NOT NULL default '',
  `appliedto` varchar(150) default NULL,
  `previd` varchar(50) default '',
  PRIMARY KEY  (`objid`),
  KEY `FK_landadjustment_landrysetting` (`landrysettingid`),
  KEY `ix_landadjustmenttype` (`previd`),
  CONSTRAINT `FK_landadjustment_landrysetting` FOREIGN KEY (`landrysettingid`) REFERENCES `landrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `landadjustmenttype` */

insert  into `landadjustmenttype`(`objid`,`landrysettingid`,`code`,`name`,`expr`,`appliedto`,`previd`) values ('LA-597a67c6:14076a28916:-7eff','LRY3c214bf6:1407686fdaa:-7ff6','NRO','NO ROAD OUTLET','SYS_BASE_MARKET_VALUE * -0.09','AGR',NULL),('LA-597a67c6:14076a28916:-7f37','LRY3c214bf6:1407686fdaa:-7ff6','CI','CORNER INFLUENCE','SYS_BASE_MARKET_VALUE * 0.10','RES,COM',NULL);

/*Table structure for table `landadjustmenttype_classification` */

DROP TABLE IF EXISTS `landadjustmenttype_classification`;

CREATE TABLE `landadjustmenttype_classification` (
  `landadjustmenttypeid` varchar(50) NOT NULL default '',
  `classification_objid` varchar(50) NOT NULL default '',
  `landrysettingid` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`landadjustmenttypeid`,`classification_objid`),
  KEY `FK_landadjustment_classification_landrysetting` (`landrysettingid`),
  KEY `FK_landadjustmenttype_classification_classification` (`classification_objid`),
  CONSTRAINT `FK_landadjustmenttype_classification_classification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`),
  CONSTRAINT `FK_landadjustmenttype_landadjustment` FOREIGN KEY (`landadjustmenttypeid`) REFERENCES `landadjustmenttype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `landadjustmenttype_classification` */

insert  into `landadjustmenttype_classification`(`landadjustmenttypeid`,`classification_objid`,`landrysettingid`) values ('LA-597a67c6:14076a28916:-7eff','PC-6779b32:13f97e9407c:-7ff2','LRY3c214bf6:1407686fdaa:-7ff6'),('LA-597a67c6:14076a28916:-7f37','PC-6779b32:13f97e9407c:-7ff4','LRY3c214bf6:1407686fdaa:-7ff6'),('LA-597a67c6:14076a28916:-7f37','RES','LRY3c214bf6:1407686fdaa:-7ff6');

/*Table structure for table `landassesslevel` */

DROP TABLE IF EXISTS `landassesslevel`;

CREATE TABLE `landassesslevel` (
  `objid` varchar(50) NOT NULL default '',
  `landrysettingid` varchar(50) NOT NULL default '',
  `classification_objid` varchar(50) NOT NULL default '',
  `code` varchar(20) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `fixrate` int(4) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_landassesslevel_code` (`landrysettingid`,`code`),
  UNIQUE KEY `ux_landassesslevel_name` (`landrysettingid`,`name`),
  KEY `FK_landassesslevel_propertyclassification` (`classification_objid`),
  KEY `ix_landassesslevel_previd` (`previd`),
  CONSTRAINT `FK_landassesslevel_propertyclassification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`),
  CONSTRAINT `FK_landassesslevl_landrysetting` FOREIGN KEY (`landrysettingid`) REFERENCES `landrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `landassesslevel` */

insert  into `landassesslevel`(`objid`,`landrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('GOCC','LRY3c214bf6:1407686fdaa:-7ff6','GOCC','GOCC','GOCC',1,'0.00',NULL),('PC-6779b32:13f97e9407c:-7ff2','LRY3c214bf6:1407686fdaa:-7ff6','PC-6779b32:13f97e9407c:-7ff2','AGR','AGRICULTURAL',1,'40.00',NULL),('PC-6779b32:13f97e9407c:-7ff4','LRY3c214bf6:1407686fdaa:-7ff6','PC-6779b32:13f97e9407c:-7ff4','COM','COMMERCIAL',1,'60.00',NULL),('RES','LRY3c214bf6:1407686fdaa:-7ff6','RES','RES','RES',1,'20.00',NULL);

/*Table structure for table `landassesslevelrange` */

DROP TABLE IF EXISTS `landassesslevelrange`;

CREATE TABLE `landassesslevelrange` (
  `objid` varchar(50) NOT NULL,
  `landassesslevelid` varchar(50) NOT NULL default '',
  `landrysettingid` varchar(50) NOT NULL default '',
  `mvfrom` decimal(16,2) NOT NULL,
  `mvto` decimal(16,2) NOT NULL,
  `rate` decimal(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_landassesslevelrange_rootid` (`landrysettingid`),
  KEY `FK_landassesslevelrange_landassesslevel` (`landassesslevelid`),
  CONSTRAINT `FK_landassesslevelrange_landassesslevel` FOREIGN KEY (`landassesslevelid`) REFERENCES `landassesslevel` (`objid`),
  CONSTRAINT `FK_landassesslevel_landrysetting` FOREIGN KEY (`landrysettingid`) REFERENCES `landrysetting` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `landassesslevelrange` */

/*Table structure for table `landdetail` */

DROP TABLE IF EXISTS `landdetail`;

CREATE TABLE `landdetail` (
  `objid` varchar(50) NOT NULL,
  `landrpuid` varchar(50) NOT NULL default '',
  `subclass_objid` varchar(50) NOT NULL,
  `specificclass_objid` varchar(50) NOT NULL,
  `actualuse_objid` varchar(50) NOT NULL default '',
  `stripping_objid` varchar(50) default NULL,
  `striprate` decimal(16,2) NOT NULL,
  `areatype` varchar(10) NOT NULL,
  `addlinfo` varchar(250) default NULL,
  `area` decimal(18,6) NOT NULL,
  `areasqm` decimal(18,2) NOT NULL,
  `areaha` decimal(18,6) NOT NULL,
  `basevalue` decimal(16,2) NOT NULL,
  `unitvalue` decimal(16,2) NOT NULL,
  `taxable` int(11) NOT NULL,
  `basemarketvalue` decimal(16,2) NOT NULL,
  `adjustment` decimal(16,2) NOT NULL,
  `landvalueadjustment` decimal(16,2) NOT NULL,
  `actualuseadjustment` decimal(16,2) NOT NULL,
  `marketvalue` decimal(16,2) NOT NULL,
  `assesslevel` decimal(16,2) NOT NULL,
  `assessedvalue` decimal(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_landdetail_lcuvsubclass` (`subclass_objid`),
  KEY `FK_landdetail_lcuvstripping` (`stripping_objid`),
  KEY `FK_landdetail_landrpu` (`landrpuid`),
  KEY `FK_landdetail_actualuse` (`actualuse_objid`),
  KEY `FK_landdetail_lcuvspecificclass` (`specificclass_objid`),
  CONSTRAINT `FK_landdetail_actualuse` FOREIGN KEY (`actualuse_objid`) REFERENCES `landassesslevel` (`objid`),
  CONSTRAINT `FK_landdetail_landrpu` FOREIGN KEY (`landrpuid`) REFERENCES `landrpu` (`objid`),
  CONSTRAINT `FK_landdetail_lcuvspecificclass` FOREIGN KEY (`specificclass_objid`) REFERENCES `lcuvspecificclass` (`objid`),
  CONSTRAINT `FK_landdetail_lcuvsubclass` FOREIGN KEY (`subclass_objid`) REFERENCES `lcuvsubclass` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `landdetail` */

insert  into `landdetail`(`objid`,`landrpuid`,`subclass_objid`,`specificclass_objid`,`actualuse_objid`,`stripping_objid`,`striprate`,`areatype`,`addlinfo`,`area`,`areasqm`,`areaha`,`basevalue`,`unitvalue`,`taxable`,`basemarketvalue`,`adjustment`,`landvalueadjustment`,`actualuseadjustment`,`marketvalue`,`assesslevel`,`assessedvalue`) values ('LD-7c812196:14080603ffe:-7f8b','RPU-726af93e:14080606f2b:-7ff9','SC-597a67c6:14076a28916:-7f5a','SPC-597a67c6:14076a28916:-7f5c','RES',NULL,'0.00','SQM',NULL,'100.000000','100.00','0.010000','800.00','800.00',1,'80000.00','0.00','0.00','0.00','80000.00','20.00','16000.00'),('LD33ba5ec7:14080d339e4:-7f88','RPU1ddedc6d:14080d2a6a6:-7ff0','SC-597a67c6:14076a28916:-7f5a','SPC-597a67c6:14076a28916:-7f5c','RES',NULL,'0.00','SQM',NULL,'200.000000','200.00','0.020000','800.00','800.00',1,'160000.00','0.00','0.00','0.00','160000.00','20.00','32000.00');

/*Table structure for table `landrpu` */

DROP TABLE IF EXISTS `landrpu`;

CREATE TABLE `landrpu` (
  `objid` varchar(50) NOT NULL,
  `idleland` int(11) NOT NULL,
  `totallandbmv` decimal(16,2) NOT NULL,
  `totallandmv` decimal(16,2) NOT NULL,
  `totallandav` decimal(16,2) NOT NULL,
  `totalplanttreebmv` decimal(16,2) NOT NULL,
  `totalplanttreemv` decimal(16,2) NOT NULL,
  `totalplanttreeadjustment` decimal(16,2) NOT NULL,
  `totalplanttreeav` decimal(16,2) NOT NULL,
  `landvalueadjustment` decimal(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  CONSTRAINT `FK_landrpu_rpu` FOREIGN KEY (`objid`) REFERENCES `rpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `landrpu` */

insert  into `landrpu`(`objid`,`idleland`,`totallandbmv`,`totallandmv`,`totallandav`,`totalplanttreebmv`,`totalplanttreemv`,`totalplanttreeadjustment`,`totalplanttreeav`,`landvalueadjustment`) values ('RPU-726af93e:14080606f2b:-7ff9',0,'80000.00','80000.00','16000.00','0.00','0.00','0.00','0.00','0.00'),('RPU1ddedc6d:14080d2a6a6:-7ff0',0,'160000.00','160000.00','32000.00','0.00','0.00','0.00','0.00','0.00');

/*Table structure for table `landrysetting` */

DROP TABLE IF EXISTS `landrysetting`;

CREATE TABLE `landrysetting` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(10) NOT NULL default '' COMMENT 'DRAFT, APPROVED',
  `ry` int(11) NOT NULL,
  `appliedto` varchar(500) default NULL,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_landrysetting_ry` (`ry`),
  KEY `ix_landrysetting_previd` (`previd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `landrysetting` */

insert  into `landrysetting`(`objid`,`state`,`ry`,`appliedto`,`previd`) values ('LRY3c214bf6:1407686fdaa:-7ff6','DRAFT',2009,'ILIGAN',NULL);

/*Table structure for table `lcuvspecificclass` */

DROP TABLE IF EXISTS `lcuvspecificclass`;

CREATE TABLE `lcuvspecificclass` (
  `objid` varchar(50) NOT NULL default '',
  `landrysettingid` varchar(50) NOT NULL default '',
  `classification_objid` varchar(50) NOT NULL default '',
  `code` varchar(20) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `areatype` varchar(10) NOT NULL default '' COMMENT 'SQM, HA',
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lcuvspecificclass_code` (`landrysettingid`,`classification_objid`,`code`),
  UNIQUE KEY `ux_lcuvspecificclass_name` (`landrysettingid`,`classification_objid`,`code`,`name`),
  KEY `FK_lcuvspecificclass_propertyclassification` (`classification_objid`),
  KEY `ix_lcuvspecificclass_previd` (`previd`),
  CONSTRAINT `FK_lcuvspecificclass_landrysetting` FOREIGN KEY (`landrysettingid`) REFERENCES `landrysetting` (`objid`),
  CONSTRAINT `FK_lcuvspecificclass_propertyclassification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lcuvspecificclass` */

insert  into `lcuvspecificclass`(`objid`,`landrysettingid`,`classification_objid`,`code`,`name`,`areatype`,`previd`) values ('SPC-597a67c6:14076a28916:-7f49','LRY3c214bf6:1407686fdaa:-7ff6','PC-6779b32:13f97e9407c:-7ff2','CL','COCONUT LAND','HA',NULL),('SPC-597a67c6:14076a28916:-7f4a','LRY3c214bf6:1407686fdaa:-7ff6','PC-6779b32:13f97e9407c:-7ff2','BL','BANANA LAND','HA',NULL),('SPC-597a67c6:14076a28916:-7f5b','LRY3c214bf6:1407686fdaa:-7ff6','RES','S','SUBDIVISION','SQM',NULL),('SPC-597a67c6:14076a28916:-7f5c','LRY3c214bf6:1407686fdaa:-7ff6','RES','R','RESIDENTIAL','SQM',NULL);

/*Table structure for table `lcuvstripping` */

DROP TABLE IF EXISTS `lcuvstripping`;

CREATE TABLE `lcuvstripping` (
  `objid` varchar(50) NOT NULL default '',
  `landrysettingid` varchar(50) NOT NULL default '',
  `classification_objid` varchar(50) NOT NULL default '',
  `striplevel` int(11) NOT NULL,
  `rate` decimal(10,2) NOT NULL,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lcuvstripping` (`landrysettingid`,`classification_objid`,`striplevel`),
  KEY `FK_lcuvstripping_landrysetting` (`landrysettingid`),
  KEY `FK_lcuvstripping_propertyclassification` (`classification_objid`),
  KEY `ix_lcuvstripping_previd` (`previd`),
  CONSTRAINT `FK_lcuvstripping_landrysetting` FOREIGN KEY (`landrysettingid`) REFERENCES `landrysetting` (`objid`),
  CONSTRAINT `FK_lcuvstripping_propertyclassification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lcuvstripping` */

/*Table structure for table `lcuvsubclass` */

DROP TABLE IF EXISTS `lcuvsubclass`;

CREATE TABLE `lcuvsubclass` (
  `objid` varchar(50) NOT NULL default '',
  `specificclass_objid` varchar(50) NOT NULL default '',
  `landrysettingid` varchar(50) NOT NULL default '',
  `code` varchar(50) NOT NULL default '',
  `name` varchar(10) NOT NULL default '',
  `unitvalue` decimal(10,2) NOT NULL,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lcuvsubclass_code` (`landrysettingid`,`specificclass_objid`,`code`),
  UNIQUE KEY `ux_lcuvsubclass_name` (`landrysettingid`,`specificclass_objid`,`code`,`name`),
  KEY `ix_lcuvsubclass_rootid` (`landrysettingid`),
  KEY `FK_lcuvsubclass_lcuvspecificclass` (`specificclass_objid`),
  KEY `ix_lcuvsubclass_previd` (`previd`),
  CONSTRAINT `FK_lcuvsubclass_landrysetting` FOREIGN KEY (`landrysettingid`) REFERENCES `landrysetting` (`objid`),
  CONSTRAINT `FK_lcuvsubclass_lcuvspecificclass` FOREIGN KEY (`specificclass_objid`) REFERENCES `lcuvspecificclass` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lcuvsubclass` */

insert  into `lcuvsubclass`(`objid`,`specificclass_objid`,`landrysettingid`,`code`,`name`,`unitvalue`,`previd`) values ('SC-597a67c6:14076a28916:-7f3b','SPC-597a67c6:14076a28916:-7f49','LRY3c214bf6:1407686fdaa:-7ff6','CL2','2ND CLASS','70000.00',NULL),('SC-597a67c6:14076a28916:-7f3f','SPC-597a67c6:14076a28916:-7f49','LRY3c214bf6:1407686fdaa:-7ff6','CL1','1ST CLASS','80000.00',NULL),('SC-597a67c6:14076a28916:-7f44','SPC-597a67c6:14076a28916:-7f4a','LRY3c214bf6:1407686fdaa:-7ff6','BL2','2ND CLASS','40000.00',NULL),('SC-597a67c6:14076a28916:-7f48','SPC-597a67c6:14076a28916:-7f4a','LRY3c214bf6:1407686fdaa:-7ff6','BL1','1ST CLASS','50000.00',NULL),('SC-597a67c6:14076a28916:-7f4e','SPC-597a67c6:14076a28916:-7f5b','LRY3c214bf6:1407686fdaa:-7ff6','S2','2ND CLASS','1000.00',NULL),('SC-597a67c6:14076a28916:-7f52','SPC-597a67c6:14076a28916:-7f5b','LRY3c214bf6:1407686fdaa:-7ff6','S1','1ST CLASS','1200.00',NULL),('SC-597a67c6:14076a28916:-7f56','SPC-597a67c6:14076a28916:-7f5c','LRY3c214bf6:1407686fdaa:-7ff6','R2','2ND CLASS','500.00',NULL),('SC-597a67c6:14076a28916:-7f5a','SPC-597a67c6:14076a28916:-7f5c','LRY3c214bf6:1407686fdaa:-7ff6','R1','1ST CLASS','800.00',NULL);

/*Table structure for table `liquidation` */

DROP TABLE IF EXISTS `liquidation`;

CREATE TABLE `liquidation` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(50) NOT NULL default '',
  `txnno` varchar(20) NOT NULL default '',
  `dtposted` date NOT NULL,
  `liquidatingofficer_objid` varchar(50) NOT NULL default '',
  `liquidatingofficer_name` varchar(100) NOT NULL default '',
  `liquidatingofficer_title` varchar(50) NOT NULL default '',
  `amount` decimal(18,2) default NULL,
  `totalcash` decimal(18,2) default NULL,
  `totalnoncash` decimal(18,2) default NULL,
  `cashbreakdown` varchar(600) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_liquidation_txnno` (`txnno`),
  KEY `ix_liquidation_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `liquidation` */

insert  into `liquidation`(`objid`,`state`,`txnno`,`dtposted`,`liquidatingofficer_objid`,`liquidatingofficer_name`,`liquidatingofficer_title`,`amount`,`totalcash`,`totalnoncash`,`cashbreakdown`) values ('LIQ-6863628b:14096e1bdfc:-7fd5','OPEN','LIQ00002','2013-08-19','USR4a3b6db9:1408acfc3c2:-7fe2','NEIL BAGACAY DIAMOND','LQ I','2200.00','2200.00','0.00','[[caption:\"1000.00\",denomination:1000.00,qty:2,amount:2000.00],[caption:\"500.00\",denomination:500.00,qty:0,amount:0.0],[caption:\"200.00\",denomination:200.00,qty:1,amount:200.00],[caption:\"100.00\",denomination:100.00,qty:0,amount:0.0],[caption:\"50.00\",denomination:50.00,qty:0,amount:0.0],[caption:\"20.00\",denomination:20.00,qty:0,amount:0.0],[caption:\"10.00\",denomination:10.00,qty:0,amount:0.0],[caption:\"Coins\",denomination:1.00,qty:0,amount:0.0]]'),('LIQ2b56a0:140a601f61c:-7ffd','OPEN','LIQ00003','2013-08-22','USR4a3b6db9:1408acfc3c2:-7fe2','NEIL BAGACAY DIAMOND','LQ I','675.00','675.00','0.00','[[caption:\"1000.00\",denomination:1000.00,qty:0,amount:0.0],[caption:\"500.00\",denomination:500.00,qty:1,amount:500.00],[caption:\"200.00\",denomination:200.00,qty:0,amount:0.0],[caption:\"100.00\",denomination:100.00,qty:1,amount:100.00],[caption:\"50.00\",denomination:50.00,qty:1,amount:50.00],[caption:\"20.00\",denomination:20.00,qty:0,amount:0.0],[caption:\"10.00\",denomination:10.00,qty:2,amount:20.00],[caption:\"Coins\",denomination:1.00,qty:5.00,amount:5.0000]]');

/*Table structure for table `liquidation_cashier_fund` */

DROP TABLE IF EXISTS `liquidation_cashier_fund`;

CREATE TABLE `liquidation_cashier_fund` (
  `objid` varchar(50) NOT NULL,
  `liquidationid` varchar(50) default NULL,
  `fund_objid` varchar(50) default NULL,
  `fund_title` varchar(50) default NULL,
  `cashier_objid` varchar(50) default NULL,
  `cashier_name` varchar(50) default NULL,
  `amount` decimal(16,2) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_liquidation_cashier_fund_liquidation` (`liquidationid`),
  CONSTRAINT `FK_liquidation_cashier_fund_liquidation` FOREIGN KEY (`liquidationid`) REFERENCES `liquidation` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `liquidation_cashier_fund` */

insert  into `liquidation_cashier_fund`(`objid`,`liquidationid`,`fund_objid`,`fund_title`,`cashier_objid`,`cashier_name`,`amount`) values ('LIQFUND-6863628b:14096e1bdfc:-7fd2','LIQ-6863628b:14096e1bdfc:-7fd5','SEF','SEF','USR-4c502c56:14077ead5eb:-7ffa','GRACE CABANTAN','600.00'),('LIQFUND-6863628b:14096e1bdfc:-7fd4','LIQ-6863628b:14096e1bdfc:-7fd5','GENERAL','GENERAL','USR-4c502c56:14077ead5eb:-7ffa','GRACE CABANTAN','1600.00'),('LIQFUND2b56a0:140a601f61c:-7ffc','LIQ2b56a0:140a601f61c:-7ffd','GENERAL','GENERAL','USR-4c502c56:14077ead5eb:-7ffa','GRACE CABANTAN','675.00');

/*Table structure for table `liquidation_checkpayment` */

DROP TABLE IF EXISTS `liquidation_checkpayment`;

CREATE TABLE `liquidation_checkpayment` (
  `objid` varchar(50) NOT NULL default '',
  `liquidationid` varchar(50) NOT NULL default '',
  KEY `FK_liquidation_checkpayment` (`objid`),
  KEY `FK_liquidation_checkpayment_liquidation` (`liquidationid`),
  CONSTRAINT `FK_liquidation_checkpayment_liquidation` FOREIGN KEY (`liquidationid`) REFERENCES `liquidation` (`objid`),
  CONSTRAINT `FK_liquidation_checkpayment` FOREIGN KEY (`objid`) REFERENCES `cashreceiptpayment_check` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `liquidation_checkpayment` */

/*Table structure for table `liquidation_remittance` */

DROP TABLE IF EXISTS `liquidation_remittance`;

CREATE TABLE `liquidation_remittance` (
  `objid` varchar(50) NOT NULL default '',
  `liquidationid` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`objid`),
  KEY `FK_liquidationitem_liquidation` (`liquidationid`),
  CONSTRAINT `FK_liquidation_remittance_remittance` FOREIGN KEY (`objid`) REFERENCES `remittance` (`objid`),
  CONSTRAINT `FK_liquidation_remittance_liquidation` FOREIGN KEY (`liquidationid`) REFERENCES `liquidation` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `liquidation_remittance` */

insert  into `liquidation_remittance`(`objid`,`liquidationid`) values ('REM3f1e623f:140a585fb55:-7fb8','LIQ2b56a0:140a601f61c:-7ffd');

/*Table structure for table `machassesslevel` */

DROP TABLE IF EXISTS `machassesslevel`;

CREATE TABLE `machassesslevel` (
  `objid` varchar(50) NOT NULL,
  `machrysettingid` varchar(50) NOT NULL,
  `classification_objid` varchar(50) NOT NULL default '',
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

insert  into `machassesslevel`(`objid`,`machrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('GOCC','MRY-597a67c6:14076a28916:-7c63','GOCC','GOCC','GOCC',1,'15.00',NULL),('PC-6779b32:13f97e9407c:-7ff2','MRY-597a67c6:14076a28916:-7c63','PC-6779b32:13f97e9407c:-7ff2','AGR','AGRICULTURAL',1,'60.00',NULL),('PC-6779b32:13f97e9407c:-7ff4','MRY-597a67c6:14076a28916:-7c63','PC-6779b32:13f97e9407c:-7ff4','COM','COMMERCIAL',1,'80.00',NULL),('RES','MRY-597a67c6:14076a28916:-7c63','RES','RES','RES',1,'40.00',NULL);

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

/*Table structure for table `machdetail` */

DROP TABLE IF EXISTS `machdetail`;

CREATE TABLE `machdetail` (
  `objid` varchar(50) NOT NULL,
  `machuseid` varchar(50) NOT NULL,
  `machrpuid` varchar(50) NOT NULL,
  `machine_objid` varchar(50) NOT NULL,
  `operationyear` int(11) default NULL,
  `replacementcost` decimal(16,2) NOT NULL,
  `depreciation` decimal(16,2) NOT NULL,
  `depreciationvalue` decimal(16,2) NOT NULL,
  `basemarketvalue` decimal(16,2) NOT NULL,
  `marketvalue` decimal(16,2) NOT NULL,
  `assesslevel` decimal(16,2) NOT NULL,
  `assessedvalue` decimal(16,2) NOT NULL,
  `brand` varchar(50) default NULL,
  `capacity` varchar(50) default NULL,
  `model` varchar(50) default NULL,
  `serialno` varchar(50) default NULL,
  `status` varchar(50) default NULL,
  `yearacquired` int(11) default NULL,
  `estimatedlife` int(11) default NULL,
  `remaininglife` int(11) default NULL,
  `yearinstalled` int(11) default NULL,
  `yearsused` int(11) default NULL,
  `originalcost` decimal(16,2) NOT NULL,
  `freightcost` decimal(16,2) NOT NULL,
  `insurancecost` decimal(16,2) NOT NULL,
  `installationcost` decimal(16,2) NOT NULL,
  `brokeragecost` decimal(16,2) NOT NULL,
  `arrastrecost` decimal(16,2) NOT NULL,
  `othercost` decimal(16,2) NOT NULL,
  `acquisitioncost` decimal(16,2) NOT NULL,
  `feracid` varchar(50) default NULL,
  `ferac` decimal(16,2) default NULL,
  `forexid` varchar(50) default NULL,
  `forex` decimal(16,4) default NULL,
  `residualrate` decimal(16,2) NOT NULL,
  `conversionfactor` decimal(16,2) NOT NULL,
  `swornamount` decimal(16,2) NOT NULL,
  `useswornamount` int(11) NOT NULL,
  `imported` int(11) NOT NULL,
  `newlyinstalled` int(11) NOT NULL,
  `autodepreciate` int(11) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_machdetail_machuse` (`machuseid`),
  KEY `FK_machdetail_machrpu` (`machrpuid`),
  KEY `FK_machdetail_machine` (`machine_objid`),
  KEY `FK_machdetail_machforex` (`feracid`),
  KEY `FK_machdetail_machforexid` (`forexid`),
  CONSTRAINT `FK_machdetail_machforex` FOREIGN KEY (`feracid`) REFERENCES `machforex` (`objid`),
  CONSTRAINT `FK_machdetail_machforexid` FOREIGN KEY (`forexid`) REFERENCES `machforex` (`objid`),
  CONSTRAINT `FK_machdetail_machine` FOREIGN KEY (`machine_objid`) REFERENCES `machine` (`objid`),
  CONSTRAINT `FK_machdetail_machrpu` FOREIGN KEY (`machrpuid`) REFERENCES `machrpu` (`objid`),
  CONSTRAINT `FK_machdetail_machuse` FOREIGN KEY (`machuseid`) REFERENCES `machuse` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `machdetail` */

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

/*Table structure for table `machine` */

DROP TABLE IF EXISTS `machine`;

CREATE TABLE `machine` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(10) NOT NULL default '' COMMENT 'DRAFT, APPROVED',
  `code` varchar(20) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_machine_code` (`code`),
  UNIQUE KEY `ux_machine_name` (`name`),
  KEY `ix_machine_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `machine` */

insert  into `machine`(`objid`,`state`,`code`,`name`) values ('MACH-6779b32:13f97e9407c:-7fe7','APPROVED','CS','CELL SITE'),('MACH-6f105e26:13e6aef0363:-7ff1','APPROVED','EG','ELECTRIC GENERATOR'),('MACH7bebf49b:13e44cfd802:-7ff7','APPROVED','CM','CORN MILL'),('MACH7bebf49b:13e44cfd802:-7ff8','APPROVED','RM','RICE MILL');

/*Table structure for table `machrpu` */

DROP TABLE IF EXISTS `machrpu`;

CREATE TABLE `machrpu` (
  `objid` varchar(50) NOT NULL,
  `landrpuid` varchar(50) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_machrpu_landrpu` (`landrpuid`),
  CONSTRAINT `FK_machrpu_landrpu` FOREIGN KEY (`landrpuid`) REFERENCES `landrpu` (`objid`),
  CONSTRAINT `FK_machrpu_rpu` FOREIGN KEY (`objid`) REFERENCES `rpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `machrpu` */

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

insert  into `machrysetting`(`objid`,`state`,`ry`,`previd`,`appliedto`) values ('MRY-597a67c6:14076a28916:-7c63','DRAFT',2009,NULL,'ILIGAN');

/*Table structure for table `machuse` */

DROP TABLE IF EXISTS `machuse`;

CREATE TABLE `machuse` (
  `objid` varchar(50) NOT NULL,
  `machrpuid` varchar(50) NOT NULL,
  `actualuse_objid` varchar(50) NOT NULL,
  `basemarketvalue` decimal(16,2) NOT NULL,
  `marketvalue` decimal(16,2) NOT NULL,
  `assesslevel` decimal(16,2) NOT NULL,
  `assessedvalue` decimal(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_machuse_machassesslevel` (`actualuse_objid`),
  KEY `FK_machuse_machrpu` (`machrpuid`),
  CONSTRAINT `FK_machuse_machassesslevel` FOREIGN KEY (`actualuse_objid`) REFERENCES `machassesslevel` (`objid`),
  CONSTRAINT `FK_machuse_machrpu` FOREIGN KEY (`machrpuid`) REFERENCES `machrpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `machuse` */

/*Table structure for table `material` */

DROP TABLE IF EXISTS `material`;

CREATE TABLE `material` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(10) NOT NULL default '' COMMENT 'DRAFT, APPROVED',
  `code` varchar(20) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_material_code` (`code`),
  UNIQUE KEY `ux_material_name` (`name`),
  KEY `ix_material_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `material` */

insert  into `material`(`objid`,`state`,`code`,`name`) values ('MAT-442d00df:13e6ae63de3:-7ff1','APPROVED','PLY','PLYWOOD'),('MAT-6779b32:13f97e9407c:-7fe9','APPROVED','LAW','LAWANIT'),('MATdb590ee:13e459f92fb:-7ff3','APPROVED','ST','STEEL'),('MATdb590ee:13e459f92fb:-7ff4','APPROVED','WD','WOOD'),('MATfd25b:13e44bc4f63:-7ff7','APPROVED','CHB','CONCRETE HOLLOW BLOCK'),('MATfd25b:13e44bc4f63:-7ff9','APPROVED','RC','REINFORCED CONCRETE');

/*Table structure for table `miscassesslevel` */

DROP TABLE IF EXISTS `miscassesslevel`;

CREATE TABLE `miscassesslevel` (
  `objid` varchar(50) NOT NULL,
  `miscrysettingid` varchar(50) NOT NULL,
  `classification_objid` varchar(50) NOT NULL default '',
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

insert  into `miscassesslevel`(`objid`,`miscrysettingid`,`classification_objid`,`code`,`name`,`fixrate`,`rate`,`previd`) values ('GOCC','MRY90b7618:14076b17607:-7ff5','GOCC','GOCC','GOCC',1,'15.00',NULL),('PC-6779b32:13f97e9407c:-7ff2','MRY90b7618:14076b17607:-7ff5','PC-6779b32:13f97e9407c:-7ff2','AGR','AGRICULTURAL',1,'50.00',NULL),('PC-6779b32:13f97e9407c:-7ff4','MRY90b7618:14076b17607:-7ff5','PC-6779b32:13f97e9407c:-7ff4','COM','COMMERCIAL',1,'80.00',NULL),('RES','MRY90b7618:14076b17607:-7ff5','RES','RES','RES',1,'20.00',NULL);

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

insert  into `miscitem`(`objid`,`state`,`code`,`name`) values ('MISC-528a32aa:13e6afde7c6:-7ff2','APPROVED','CS','CELL SITE'),('MISC-6779b32:13f97e9407c:-7fe1','APPROVED','EPS','ELECTRICAL POST - STEEL'),('MISC5993d08a:13e44f38ed4:-7ff3','APPROVED','PAV','CONCRETE PAVEMENT');

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

insert  into `miscitemvalue`(`objid`,`miscrysettingid`,`miscitem_objid`,`expr`,`previd`) values ('MIV5407ab02:14076b1d189:-7ffe','MRY90b7618:14076b17607:-7ff5','MISC5993d08a:13e44f38ed4:-7ff3','0.00',NULL),('MIV5407ab02:14076b1d189:-7fff','MRY90b7618:14076b17607:-7ff5','MISC-6779b32:13f97e9407c:-7fe1','0.00',NULL),('MIV5407ab02:14076b1d189:-8000','MRY90b7618:14076b17607:-7ff5','MISC-528a32aa:13e6afde7c6:-7ff2','0.00',NULL);

/*Table structure for table `miscrpu` */

DROP TABLE IF EXISTS `miscrpu`;

CREATE TABLE `miscrpu` (
  `objid` varchar(50) NOT NULL,
  `actualuse_objid` varchar(50) NOT NULL,
  `landrpuid` varchar(50) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_miscrpu_miscassesslevel` (`actualuse_objid`),
  CONSTRAINT `FK_miscrpu_miscassesslevel` FOREIGN KEY (`actualuse_objid`) REFERENCES `miscassesslevel` (`objid`),
  CONSTRAINT `FK_miscrpu_rpu` FOREIGN KEY (`objid`) REFERENCES `rpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `miscrpu` */

/*Table structure for table `miscrpuitem` */

DROP TABLE IF EXISTS `miscrpuitem`;

CREATE TABLE `miscrpuitem` (
  `objid` varchar(50) NOT NULL,
  `miscrpuid` varchar(50) NOT NULL,
  `miv_objid` varchar(50) NOT NULL,
  `miscitem_objid` varchar(50) NOT NULL,
  `expr` varchar(255) NOT NULL,
  `depreciation` decimal(16,2) NOT NULL,
  `depreciatedvalue` decimal(16,2) NOT NULL,
  `basemarketvalue` decimal(16,2) NOT NULL,
  `marketvalue` decimal(16,2) NOT NULL,
  `assesslevel` decimal(16,2) NOT NULL,
  `assessedvalue` decimal(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_miscrpuitem_miscrpu` (`miscrpuid`),
  KEY `FK_miscrpuitem_miscitemvalue` (`miv_objid`),
  KEY `FK_miscrpuitem_miscitem` (`miscitem_objid`),
  CONSTRAINT `FK_miscrpuitem_miscitem` FOREIGN KEY (`miscitem_objid`) REFERENCES `miscitem` (`objid`),
  CONSTRAINT `FK_miscrpuitem_miscitemvalue` FOREIGN KEY (`miv_objid`) REFERENCES `miscitemvalue` (`objid`),
  CONSTRAINT `FK_miscrpuitem_miscrpu` FOREIGN KEY (`miscrpuid`) REFERENCES `miscrpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `miscrpuitem` */

/*Table structure for table `miscrpuitem_rptparameter` */

DROP TABLE IF EXISTS `miscrpuitem_rptparameter`;

CREATE TABLE `miscrpuitem_rptparameter` (
  `miscrpuitemid` varchar(50) NOT NULL,
  `param_objid` varchar(50) NOT NULL default '',
  `miscrpuid` varchar(50) NOT NULL default '',
  `intvalue` int(11) default NULL,
  `decimalvalue` decimal(16,2) NOT NULL,
  PRIMARY KEY  (`miscrpuitemid`,`param_objid`),
  KEY `FK_miscrpuitem_rptparameter_` (`miscrpuid`),
  KEY `FK_miscrpuitem_rptparameter_rptparamer` (`param_objid`),
  CONSTRAINT `FK_miscrpuitem_rptparameter_` FOREIGN KEY (`miscrpuid`) REFERENCES `miscrpu` (`objid`),
  CONSTRAINT `FK_miscrpuitem_rptparameter_miscrpuitem` FOREIGN KEY (`miscrpuitemid`) REFERENCES `miscrpuitem` (`objid`),
  CONSTRAINT `FK_miscrpuitem_rptparameter_rptparamer` FOREIGN KEY (`param_objid`) REFERENCES `rptparameter` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `miscrpuitem_rptparameter` */

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

insert  into `miscrysetting`(`objid`,`state`,`ry`,`previd`,`appliedto`) values ('MRY90b7618:14076b17607:-7ff5','DRAFT',2009,NULL,'ILIGAN');

/*Table structure for table `municipality` */

DROP TABLE IF EXISTS `municipality`;

CREATE TABLE `municipality` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(10) default NULL,
  `indexno` varchar(15) default NULL,
  `pin` varchar(15) default NULL,
  `name` varchar(50) default NULL,
  `previd` varchar(50) default NULL,
  `parentid` varchar(50) default NULL,
  `mayor_name` varchar(100) default NULL,
  `mayor_title` varchar(50) default NULL,
  `mayor_office` varchar(50) default NULL,
  `assessor_name` varchar(100) default NULL,
  `assessor_title` varchar(50) default NULL,
  `assessor_office` varchar(50) default NULL,
  `treasurer_name` varchar(100) default NULL,
  `treasurer_title` varchar(50) default NULL,
  `treasurer_office` varchar(50) default NULL,
  `address` varchar(100) default NULL,
  `fullname` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lgu_barangay_name` (`name`),
  UNIQUE KEY `ux_lgu_barangay_name_state` (`name`,`state`),
  KEY `ix_lgu_barangay_indexno` (`indexno`),
  KEY `ix_lgu_barangay_previd` (`previd`),
  KEY `ix_lgu_barangay_parentid` (`parentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `municipality` */

/*Table structure for table `pin` */

DROP TABLE IF EXISTS `pin`;

CREATE TABLE `pin` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(20) NOT NULL,
  `barangayid` varchar(50) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_pin_state` (`state`),
  KEY `FK_lgu_barangay` (`barangayid`),
  CONSTRAINT `FK_pin_barangay` FOREIGN KEY (`barangayid`) REFERENCES `barangay` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pin` */

insert  into `pin`(`objid`,`state`,`barangayid`) values ('PIN-726af93e:14080606f2b:-7ffb','CURRENT','BRGY514f6587:1407632626e:-7ffd'),('PIN1ddedc6d:14080d2a6a6:-7ff2','CURRENT','BRGY514f6587:1407632626e:-7ffd');

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

insert  into `planttree`(`objid`,`state`,`code`,`name`) values ('PT-2ecdd037:13e6af545ef:-7ff1','APPROVED','JK','JACKFRUIT'),('PT-6779b32:13f97e9407c:-7fe5','APPROVED','PO','POMELO'),('PT412a4900:13e44e820e9:-7ff6','APPROVED','BN','BANANA'),('PT412a4900:13e44e820e9:-7ff7','DRAFT','CC','COCONUT');

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

insert  into `planttreeassesslevel`(`objid`,`planttreerysettingid`,`code`,`name`,`rate`,`previd`) values ('AL-7bf822cc:14076b3ead9:-7fef','TRY-7bf822cc:14076b3ead9:-7ff6','A','AGRICULTURAL','40.00',NULL);

/*Table structure for table `planttreedetail` */

DROP TABLE IF EXISTS `planttreedetail`;

CREATE TABLE `planttreedetail` (
  `objid` varchar(50) NOT NULL,
  `planttreerpuid` varchar(50) default NULL,
  `landrpuid` varchar(50) default NULL,
  `planttreeunitvalue_objid` varchar(50) NOT NULL,
  `planttree_objid` varchar(50) NOT NULL default '',
  `actualuse_objid` varchar(50) NOT NULL default '',
  `productive` decimal(16,2) NOT NULL,
  `nonproductive` decimal(16,2) NOT NULL,
  `nonproductiveage` decimal(16,2) default NULL,
  `unitvalue` decimal(16,2) NOT NULL,
  `basemarketvalue` decimal(16,2) NOT NULL,
  `adjustment` decimal(16,2) NOT NULL,
  `adjustmentrate` decimal(16,2) NOT NULL,
  `marketvalue` decimal(16,2) NOT NULL,
  `assesslevel` decimal(16,2) NOT NULL,
  `assessedvalue` decimal(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_planttreedetail_planttreerpu` (`planttreerpuid`),
  KEY `FK_planttreedetail_landrpu` (`landrpuid`),
  KEY `FK_planttreedetail_planttreeunitvalue` (`planttreeunitvalue_objid`),
  KEY `FK_planttreedetail_plantreeassesslevel` (`actualuse_objid`),
  KEY `FK_planttreedetail_planttree` (`planttree_objid`),
  CONSTRAINT `FK_planttreedetail_landrpu` FOREIGN KEY (`landrpuid`) REFERENCES `landrpu` (`objid`),
  CONSTRAINT `FK_planttreedetail_plantreeassesslevel` FOREIGN KEY (`actualuse_objid`) REFERENCES `planttreeassesslevel` (`objid`),
  CONSTRAINT `FK_planttreedetail_planttree` FOREIGN KEY (`planttree_objid`) REFERENCES `planttree` (`objid`),
  CONSTRAINT `FK_planttreedetail_planttreerpu` FOREIGN KEY (`planttreerpuid`) REFERENCES `planttreerpu` (`objid`),
  CONSTRAINT `FK_planttreedetail_planttreeunitvalue` FOREIGN KEY (`planttreeunitvalue_objid`) REFERENCES `planttreeunitvalue` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `planttreedetail` */

/*Table structure for table `planttreerpu` */

DROP TABLE IF EXISTS `planttreerpu`;

CREATE TABLE `planttreerpu` (
  `objid` varchar(50) NOT NULL,
  `landrpuid` varchar(50) NOT NULL,
  `productive` decimal(16,2) NOT NULL,
  `nonproductive` decimal(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_planttreerpu_landrpu` (`landrpuid`),
  CONSTRAINT `FK_planttreerpu_landrpu` FOREIGN KEY (`landrpuid`) REFERENCES `landrpu` (`objid`),
  CONSTRAINT `FK_planttreerpu_rpu` FOREIGN KEY (`objid`) REFERENCES `rpu` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `planttreerpu` */

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

insert  into `planttreerysetting`(`objid`,`state`,`ry`,`applyagriadjustment`,`appliedto`,`previd`) values ('TRY-7bf822cc:14076b3ead9:-7ff6','DRAFT',2009,0,'ILIGAN',NULL);

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

insert  into `planttreeunitvalue`(`objid`,`planttreerysettingid`,`planttree_objid`,`code`,`name`,`unitvalue`,`previd`) values ('BT-7bf822cc:14076b3ead9:-7ff0','TRY-7bf822cc:14076b3ead9:-7ff6','PT-2ecdd037:13e6af545ef:-7ff1','JK2','2ND CLASS','250.00',NULL),('BT-7bf822cc:14076b3ead9:-7ff1','TRY-7bf822cc:14076b3ead9:-7ff6','PT-2ecdd037:13e6af545ef:-7ff1','JK1','1ST CLASS','300.00',NULL),('BT-7bf822cc:14076b3ead9:-7ff2','TRY-7bf822cc:14076b3ead9:-7ff6','PT412a4900:13e44e820e9:-7ff7','CC2','2ND CLASS','600.00',NULL),('BT-7bf822cc:14076b3ead9:-7ff3','TRY-7bf822cc:14076b3ead9:-7ff6','PT412a4900:13e44e820e9:-7ff7','CC1','1ST CLASS','700.00',NULL),('BT-7bf822cc:14076b3ead9:-7ff4','TRY-7bf822cc:14076b3ead9:-7ff6','PT412a4900:13e44e820e9:-7ff6','BN2','2ND CLASS','400.00',NULL),('BT-7bf822cc:14076b3ead9:-7ff5','TRY-7bf822cc:14076b3ead9:-7ff6','PT412a4900:13e44e820e9:-7ff6','BN1','1ST CLASS','500.00',NULL);

/*Table structure for table `postcapturedreceipt` */

DROP TABLE IF EXISTS `postcapturedreceipt`;

CREATE TABLE `postcapturedreceipt` (
  `objid` varchar(50) NOT NULL,
  `schemaname` varchar(50) NOT NULL,
  `schemaversion` varchar(5) NOT NULL,
  `docstate` varchar(25) NOT NULL,
  `dtposted` date NOT NULL,
  `collectorid` varchar(50) NOT NULL,
  `collectorname` varchar(75) NOT NULL,
  `collectortitle` varchar(25) NOT NULL,
  `postedbyid` varchar(50) NOT NULL,
  `postedbyname` varchar(75) NOT NULL,
  `postedbytitle` varchar(25) NOT NULL,
  `amount` decimal(12,2) NOT NULL,
  `summaries` text NOT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `postcapturedreceipt` */

/*Table structure for table `previousfaas` */

DROP TABLE IF EXISTS `previousfaas`;

CREATE TABLE `previousfaas` (
  `faasid` varchar(50) NOT NULL,
  `prevfaasid` varchar(50) NOT NULL,
  PRIMARY KEY  (`faasid`,`prevfaasid`),
  KEY `FK_previousfaas_prevfaas` (`prevfaasid`),
  CONSTRAINT `FK_previousfaas_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_previousfaas_prevfaas` FOREIGN KEY (`prevfaasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `previousfaas` */

/*Table structure for table `propertyclassification` */

DROP TABLE IF EXISTS `propertyclassification`;

CREATE TABLE `propertyclassification` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(10) NOT NULL default '' COMMENT 'DRAFT, APPROVED',
  `code` varchar(20) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `special` int(4) NOT NULL,
  `orderno` int(11) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_propertyclassification_code` (`code`),
  UNIQUE KEY `ux_propertyclassification_name` (`name`),
  KEY `ix_propertyclassification_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `propertyclassification` */

insert  into `propertyclassification`(`objid`,`state`,`code`,`name`,`special`,`orderno`) values ('GOCC','APPROVED','GOCC','GOCC',1,10),('PC-6779b32:13f97e9407c:-7ff2','APPROVED','AGR','AGRICULTURAL',0,2),('PC-6779b32:13f97e9407c:-7ff4','APPROVED','COM','COMMERCIAL',0,3),('RES','APPROVED','RES','RES',0,1);

/*Table structure for table `province` */

DROP TABLE IF EXISTS `province`;

CREATE TABLE `province` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(10) default NULL,
  `indexno` varchar(15) default NULL,
  `pin` varchar(15) default NULL,
  `name` varchar(50) default NULL,
  `previd` varchar(50) default NULL,
  `parentid` varchar(50) default NULL,
  `governor_name` varchar(100) default NULL,
  `governor_title` varchar(50) default NULL,
  `governor_office` varchar(50) default NULL,
  `assessor_name` varchar(100) default NULL,
  `assessor_title` varchar(50) default NULL,
  `assessor_office` varchar(50) default NULL,
  `treasurer_name` varchar(100) default NULL,
  `treasurer_title` varchar(50) default NULL,
  `treasurer_office` varchar(50) default NULL,
  `address` varchar(100) default NULL,
  `fullname` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lgu_barangay_name` (`name`),
  UNIQUE KEY `ux_lgu_barangay_name_state` (`name`,`state`),
  KEY `ix_lgu_barangay_indexno` (`indexno`),
  KEY `ix_lgu_barangay_previd` (`previd`),
  KEY `ix_lgu_barangay_parentid` (`parentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `province` */

/*Table structure for table `realproperty` */

DROP TABLE IF EXISTS `realproperty`;

CREATE TABLE `realproperty` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL default '',
  `autonumber` int(11) NOT NULL,
  `pinid` varchar(50) NOT NULL,
  `pintype` varchar(5) NOT NULL,
  `pin` varchar(30) NOT NULL default '',
  `ry` int(11) NOT NULL,
  `claimno` varchar(5) default '',
  `section` varchar(3) NOT NULL default '',
  `parcel` varchar(3) NOT NULL,
  `cadastrallotno` varchar(255) NOT NULL default '',
  `blockno` varchar(255) default NULL,
  `surveyno` varchar(30) default NULL,
  `street` varchar(100) default NULL,
  `purok` varchar(25) default NULL,
  `north` varchar(255) NOT NULL,
  `south` varchar(255) NOT NULL,
  `east` varchar(255) NOT NULL,
  `west` varchar(255) NOT NULL,
  `barangayid` varchar(50) NOT NULL,
  `lgutype` varchar(50) NOT NULL,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_realproperty_rypinclaimno` (`ry`,`pin`,`claimno`),
  KEY `FK_realproperty_pin` (`pinid`),
  KEY `ix_realproperty_cadastrallotno` (`cadastrallotno`),
  KEY `ix_realproperty_blockno` (`blockno`),
  KEY `ix_realproperty_surveyno` (`surveyno`),
  KEY `ix_realproperty_ry` (`ry`),
  KEY `FK_realproperty_barangay` (`barangayid`),
  KEY `FK_realproperty` (`previd`),
  KEY `ix_realproperty_brgysection` (`barangayid`,`section`),
  KEY `ix_realproperty_brgystate` (`barangayid`,`state`),
  CONSTRAINT `FK_realproperty_barangay` FOREIGN KEY (`barangayid`) REFERENCES `barangay` (`objid`),
  CONSTRAINT `FK_realproperty_pin` FOREIGN KEY (`pinid`) REFERENCES `pin` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `realproperty` */

insert  into `realproperty`(`objid`,`state`,`autonumber`,`pinid`,`pintype`,`pin`,`ry`,`claimno`,`section`,`parcel`,`cadastrallotno`,`blockno`,`surveyno`,`street`,`purok`,`north`,`south`,`east`,`west`,`barangayid`,`lgutype`,`previd`) values ('RP-726af93e:14080606f2b:-7ffa','CURRENT',0,'PIN-726af93e:14080606f2b:-7ffb','new','169-00-0002-001-01',2009,NULL,'001','01','A',NULL,NULL,NULL,NULL,'A','A','A','A','BRGY514f6587:1407632626e:-7ffd','city',NULL),('RP1ddedc6d:14080d2a6a6:-7ff1','CURRENT',0,'PIN1ddedc6d:14080d2a6a6:-7ff2','new','169-00-0002-001-02',2009,NULL,'001','02','A',NULL,NULL,NULL,NULL,'A','AA','A','A','BRGY514f6587:1407632626e:-7ffd','city',NULL);

/*Table structure for table `realproperty_faas` */

DROP TABLE IF EXISTS `realproperty_faas`;

CREATE TABLE `realproperty_faas` (
  `realpropertyid` varchar(50) NOT NULL,
  `faasid` varchar(50) NOT NULL,
  PRIMARY KEY  (`realpropertyid`),
  KEY `FK_realproperty_faas_faas` (`faasid`),
  CONSTRAINT `FK_realproperty_faas_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_realproperty_faas_realproperty` FOREIGN KEY (`realpropertyid`) REFERENCES `realproperty` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `realproperty_faas` */

/*Table structure for table `remittance` */

DROP TABLE IF EXISTS `remittance`;

CREATE TABLE `remittance` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(20) NOT NULL default '',
  `txnno` varchar(20) NOT NULL default '',
  `dtposted` date NOT NULL,
  `collector_objid` varchar(50) NOT NULL default '',
  `collector_name` varchar(100) NOT NULL default '',
  `collector_title` varchar(30) NOT NULL default '',
  `liquidatingofficer_objid` varchar(50) NOT NULL,
  `liquidatingofficer_name` varchar(100) NOT NULL,
  `liquidatingofficer_title` varchar(50) NOT NULL,
  `amount` decimal(18,2) NOT NULL,
  `totalcash` decimal(18,2) NOT NULL,
  `totalnoncash` decimal(18,2) NOT NULL,
  `cashbreakdown` varchar(600) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_remittance_txnno` (`txnno`),
  KEY `ix_remittance_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `remittance` */

insert  into `remittance`(`objid`,`state`,`txnno`,`dtposted`,`collector_objid`,`collector_name`,`collector_title`,`liquidatingofficer_objid`,`liquidatingofficer_name`,`liquidatingofficer_title`,`amount`,`totalcash`,`totalnoncash`,`cashbreakdown`) values ('REM3f1e623f:140a585fb55:-7fb8','OPEN','JZ00003','2013-08-22','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II','USR4a3b6db9:1408acfc3c2:-7fe2','NEIL DIAMOND','LQ I','675.00','675.00','0.00','[[caption:\"1000.00\",denomination:1000.00,qty:0,amount:0.0],[caption:\"500.00\",denomination:500.00,qty:1,amount:500.00],[caption:\"200.00\",denomination:200.00,qty:0,amount:0.0],[caption:\"100.00\",denomination:100.00,qty:1,amount:100.00],[caption:\"50.00\",denomination:50.00,qty:1,amount:50.00],[caption:\"20.00\",denomination:20.00,qty:1,amount:20.00],[caption:\"10.00\",denomination:10.00,qty:0,amount:0.0],[caption:\"Coins\",denomination:1.00,qty:5.00,amount:5.0000]]');

/*Table structure for table `remittance_af` */

DROP TABLE IF EXISTS `remittance_af`;

CREATE TABLE `remittance_af` (
  `objid` varchar(50) NOT NULL default '',
  `remittanceid` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`objid`),
  KEY `FK_remittance_af` (`remittanceid`),
  CONSTRAINT `FK_remittance_af` FOREIGN KEY (`remittanceid`) REFERENCES `remittance` (`objid`),
  CONSTRAINT `FK_remittance_af_afcontrol` FOREIGN KEY (`objid`) REFERENCES `afcontrol_detail` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `remittance_af` */

insert  into `remittance_af`(`objid`,`remittanceid`) values ('AFCTRLD3f1e623f:140a585fb55:-7fd8','REM3f1e623f:140a585fb55:-7fb8'),('AFCTRLD3f1e623f:140a585fb55:-7fda','REM3f1e623f:140a585fb55:-7fb8'),('AFCTRLD3f1e623f:140a585fb55:-7fdc','REM3f1e623f:140a585fb55:-7fb8'),('AFCTRLD3f1e623f:140a585fb55:-7fde','REM3f1e623f:140a585fb55:-7fb8'),('AFCTRLD3f1e623f:140a585fb55:-7fe0','REM3f1e623f:140a585fb55:-7fb8'),('AFCTRLD3f1e623f:140a585fb55:-7fe2','REM3f1e623f:140a585fb55:-7fb8'),('AFCTRLD3f1e623f:140a585fb55:-7fe4','REM3f1e623f:140a585fb55:-7fb8'),('AFCTRLD3f1e623f:140a585fb55:-7fe6','REM3f1e623f:140a585fb55:-7fb8');

/*Table structure for table `remittance_cashreceipt` */

DROP TABLE IF EXISTS `remittance_cashreceipt`;

CREATE TABLE `remittance_cashreceipt` (
  `objid` varchar(50) NOT NULL default '',
  `remittanceid` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`objid`),
  KEY `FK_remittanceitem_remittance` (`remittanceid`),
  CONSTRAINT `FK_remittance_cashreceipt_cashreceipt` FOREIGN KEY (`objid`) REFERENCES `cashreceipt` (`objid`),
  CONSTRAINT `FK_remittance_cashreceipt_remittance` FOREIGN KEY (`remittanceid`) REFERENCES `remittance` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `remittance_cashreceipt` */

insert  into `remittance_cashreceipt`(`objid`,`remittanceid`) values ('RCT3f1e623f:140a585fb55:-7fc9','REM3f1e623f:140a585fb55:-7fb8'),('RCT3f1e623f:140a585fb55:-7fce','REM3f1e623f:140a585fb55:-7fb8'),('RCT3f1e623f:140a585fb55:-7fd3','REM3f1e623f:140a585fb55:-7fb8'),('RCT3f1e623f:140a585fb55:-7fd6','REM3f1e623f:140a585fb55:-7fb8');

/*Table structure for table `remittance_checkpayment` */

DROP TABLE IF EXISTS `remittance_checkpayment`;

CREATE TABLE `remittance_checkpayment` (
  `objid` varchar(50) NOT NULL,
  `remittanceid` varchar(50) default NULL,
  `amount` decimal(16,2) default NULL,
  `voided` int(11) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_remittance_checkpayment_remittance` (`remittanceid`),
  CONSTRAINT `FK_remittance_checkpayment_remittance` FOREIGN KEY (`remittanceid`) REFERENCES `remittance` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `remittance_checkpayment` */

/*Table structure for table `resection` */

DROP TABLE IF EXISTS `resection`;

CREATE TABLE `resection` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(20) NOT NULL default '',
  `pintype` varchar(5) NOT NULL,
  `barangayid` varchar(50) NOT NULL,
  `barangaypin` varchar(15) NOT NULL,
  `section` varchar(3) NOT NULL,
  `ry` int(11) NOT NULL,
  `txntype_objid` varchar(5) NOT NULL,
  `txnno` varchar(10) NOT NULL,
  `txndate` datetime NOT NULL,
  `autonumber` int(11) NOT NULL,
  `effectivityyear` int(11) NOT NULL,
  `effectivityqtr` int(11) NOT NULL,
  `memoranda` varchar(500) NOT NULL,
  `appraiser_objid` varchar(50) default '',
  `appraiser_name` varchar(100) default '',
  `appraiser_title` varchar(50) default '',
  `appraiser_dtsigned` date default NULL,
  `recommender_objid` varchar(50) default NULL,
  `recommender_name` varchar(100) default NULL,
  `recommender_title` varchar(50) default NULL,
  `recommender_dtsigned` date default NULL,
  `taxmapper_objid` varchar(50) default NULL,
  `taxmapper_name` varchar(100) default NULL,
  `taxmapper_title` varchar(50) default NULL,
  `taxmapper_dtsigned` date default NULL,
  `approver_objid` varchar(50) default '',
  `approver_name` varchar(100) default '',
  `approver_title` varchar(50) default '',
  `approver_dtsigned` date default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_resection_sectionno` (`barangayid`,`section`),
  KEY `ix_resection_state` (`state`),
  KEY `ix_resection_barangayid` (`barangayid`),
  KEY `ix_resection_appraiser_name` (`appraiser_name`),
  KEY `ix_resection_approver_name` (`approver_name`),
  KEY `ix_resection_txnno` (`txnno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `resection` */

/*Table structure for table `resectionaffectedrpu` */

DROP TABLE IF EXISTS `resectionaffectedrpu`;

CREATE TABLE `resectionaffectedrpu` (
  `objid` varchar(50) NOT NULL,
  `resectionid` varchar(50) NOT NULL,
  `rputype` varchar(10) NOT NULL,
  `prevfaasid` varchar(50) NOT NULL,
  `prevrpuid` varchar(50) NOT NULL,
  `prevrpid` varchar(50) NOT NULL,
  `newsection` varchar(3) default NULL,
  `newparcel` varchar(3) default NULL,
  `newtdno` varchar(20) default NULL,
  `newutdno` varchar(20) NOT NULL,
  `newpin` varchar(25) default NULL,
  `newsuffix` int(11) default NULL,
  `newfaasid` varchar(50) default NULL,
  `newrpuid` varchar(50) default NULL,
  `newrpid` varchar(50) default NULL,
  `memoranda` varchar(500) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_reseectionaffectedrpu_newutdno` (`newutdno`),
  UNIQUE KEY `ux_reseectionaffectedrpu_sect_rtype_suffix_newrpid` (`resectionid`,`rputype`,`newsuffix`,`newrpid`),
  KEY `FK_resectionaffectedrpu_prevfaas` (`prevfaasid`),
  KEY `FK_resectionaffectedrpu_prevrpu` (`prevrpuid`),
  KEY `FK_resectionaffectedrpu_prevrp` (`prevrpid`),
  KEY `FK_resectionaffectedrpu_newfaas` (`newfaasid`),
  KEY `FK_resectionaffectedrpu_newrpu` (`newrpuid`),
  KEY `FK_resectionaffectedrpu_newrp` (`newrpid`),
  KEY `ix_reseectionaffectedrpu_resectionrputype` (`resectionid`,`rputype`),
  KEY `ix_reseectionaffectedrpu_newtdno` (`newtdno`),
  CONSTRAINT `FK_resectionaffectedrpu_newfaas` FOREIGN KEY (`newfaasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_resectionaffectedrpu_newrp` FOREIGN KEY (`newrpid`) REFERENCES `realproperty` (`objid`),
  CONSTRAINT `FK_resectionaffectedrpu_newrpu` FOREIGN KEY (`newrpuid`) REFERENCES `rpu` (`objid`),
  CONSTRAINT `FK_resectionaffectedrpu_prevfaas` FOREIGN KEY (`prevfaasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_resectionaffectedrpu_prevrp` FOREIGN KEY (`prevrpid`) REFERENCES `realproperty` (`objid`),
  CONSTRAINT `FK_resectionaffectedrpu_prevrpu` FOREIGN KEY (`prevrpuid`) REFERENCES `rpu` (`objid`),
  CONSTRAINT `FK_resectionaffectedrpu_resection` FOREIGN KEY (`resectionid`) REFERENCES `resection` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `resectionaffectedrpu` */

/*Table structure for table `resectionitem` */

DROP TABLE IF EXISTS `resectionitem`;

CREATE TABLE `resectionitem` (
  `objid` varchar(50) NOT NULL,
  `resectionid` varchar(50) NOT NULL,
  `newsection` varchar(3) NOT NULL default '',
  `landcount` int(11) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_resectionitem_sectionno` (`resectionid`,`newsection`),
  CONSTRAINT `FK_resectionitem_resection` FOREIGN KEY (`resectionid`) REFERENCES `resection` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `resectionitem` */

/*Table structure for table `revenueitem` */

DROP TABLE IF EXISTS `revenueitem`;

CREATE TABLE `revenueitem` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) default NULL,
  `code` varchar(50) default NULL,
  `title` varchar(255) default NULL,
  `description` varchar(255) default NULL,
  `type` varchar(25) default NULL,
  `fund_objid` varchar(50) default NULL,
  `fund_code` varchar(50) default NULL,
  `fund_title` varchar(50) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `revenueitem` */

insert  into `revenueitem`(`objid`,`state`,`code`,`title`,`description`,`type`,`fund_objid`,`fund_code`,`fund_title`) values ('BURIAL','APPROVED','501','BURIAL PERMIT AND FEE',NULL,NULL,'GENERAL','01','GENERAL'),('LCO','APPROVED','502','LARGE CATTLE OWNERSHIP',NULL,NULL,'GENERAL','01','GENERAL'),('LCT','APPROVED','101','LARGE CATTLE TRANSFER',NULL,NULL,'GENERAL','01','GENERAL'),('MARRIAGE','APPROVED','503','MARRIAGE LICENSE AND FEE',NULL,NULL,'GENERAL','01','GENERAL'),('REVITEM-459fc8a6:14095266043:-7e8c','APPROVED','SE','SPUTUM EXAM',NULL,NULL,'GENERAL','01','GENERAL'),('REVITEM-459fc8a6:14095266043:-7eb1','APPROVED','CX','CHEST X-RAY',NULL,NULL,'GENERAL','01','GENERAL'),('REVITEM-459fc8a6:14095266043:-7f1d','APPROVED','12121','CERTIFICATION OF LAND HOLDING',NULL,NULL,'GENERAL','01','GENERAL'),('REVITEM-459fc8a6:14095266043:-7f3a','APPROVED','1312','POLICE CLEARANCE - LOCAL',NULL,NULL,'GENERAL','01','GENERAL'),('REVITEM-462d3324:14086ac161b:-7fb9','APPROVED','SEF','RPT SEF',NULL,NULL,'SEF','02','SEF'),('REVITEM-5476e39d:1407c879beb:-7ff5','APPROVED','MAYORS_PERMIT','MAYORS PERMIT FEE',NULL,NULL,'GENERAL','01','GENERAL'),('REVITEM-5476e39d:1407c879beb:-7ff6','APPROVED','100','AMUSEMENT FEES',NULL,NULL,'GENERAL','01','GENERAL'),('REVITEM-5476e39d:1407c879beb:-7ff7','APPROVED','099','PERMITS',NULL,NULL,'GENERAL','01','GENERAL'),('REVITEM2b972692:1408af7cac0:-7fbc','APPROVED','123','SLAUGHTER PERMIT',NULL,NULL,'GENERAL','01','GENERAL'),('REVITEM3390b2e7:1407f923922:-7fed','APPROVED','123','RPT BASIC CURRENT',NULL,NULL,'GENERAL','01','GENERAL'),('REVITEM63399744:14096aea127:-7ff1','APPROVED','PC','POLICE CLEARANCE',NULL,NULL,'GENERAL','01','GENERAL'),('REVITEM7555e49f:1408212f907:-7fca','APPROVED','002','BIDDING DOCS',NULL,NULL,'GENERAL','01','GENERAL'),('REVITEM7555e49f:1408212f907:-7fcc','APPROVED','GF','GARBAGE FEE',NULL,NULL,'GENERAL','01','GENERAL'),('REVITEM7dd21019:1407b0f151e:-7ff8','APPROVED','098','BUSINESS PERMIT','business permit account',NULL,'GENERAL','01','GENERAL'),('RPTTAX','DRAFT','111','RPT TAX',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `revenueitem_account` */

DROP TABLE IF EXISTS `revenueitem_account`;

CREATE TABLE `revenueitem_account` (
  `objid` varchar(50) NOT NULL default '',
  `acctid` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`objid`),
  KEY `FK_itemaccount_glaccount` (`acctid`),
  CONSTRAINT `FK_itemaccount_glaccount` FOREIGN KEY (`acctid`) REFERENCES `account` (`objid`),
  CONSTRAINT `FK_revenueitem_account_revenueitem` FOREIGN KEY (`objid`) REFERENCES `revenueitem` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `revenueitem_account` */

insert  into `revenueitem_account`(`objid`,`acctid`) values ('REVITEM-459fc8a6:14095266043:-7eb1','ACCT-459fc8a6:14095266043:-7eb6'),('REVITEM-459fc8a6:14095266043:-7e8c','ACCT-459fc8a6:14095266043:-7ed5'),('REVITEM63399744:14096aea127:-7ff1','ACCT-5a208dc1:1409926dd39:-7faa'),('REVITEM7555e49f:1408212f907:-7fcc','ACCT3cbb7b7f:14094ecf2be:-7fbc'),('REVITEM-459fc8a6:14095266043:-7f3a','ACCT3cbb7b7f:14094ecf2be:-7fbf');

/*Table structure for table `revenueitem_sreaccount` */

DROP TABLE IF EXISTS `revenueitem_sreaccount`;

CREATE TABLE `revenueitem_sreaccount` (
  `objid` varchar(50) NOT NULL default '',
  `acctid` varchar(50) NOT NULL default '',
  KEY `FK_revenueitem_sreaccount_sreaccount` (`acctid`),
  CONSTRAINT `FK_revenueitem_sreaccount_sreaccount` FOREIGN KEY (`acctid`) REFERENCES `sreaccount` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `revenueitem_sreaccount` */

/*Table structure for table `revenueitem_subaccount` */

DROP TABLE IF EXISTS `revenueitem_subaccount`;

CREATE TABLE `revenueitem_subaccount` (
  `objid` varchar(50) NOT NULL default '',
  `acctid` varchar(50) NOT NULL default '',
  KEY `FK_revenueitem_subaccount_revenueitem` (`objid`),
  KEY `FK_revenueitem_subaccount_account` (`acctid`),
  CONSTRAINT `FK_revenueitem_subaccount_account` FOREIGN KEY (`acctid`) REFERENCES `account` (`objid`),
  CONSTRAINT `FK_revenueitem_subaccount_revenueitem` FOREIGN KEY (`objid`) REFERENCES `revenueitem` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `revenueitem_subaccount` */

insert  into `revenueitem_subaccount`(`objid`,`acctid`) values ('REVITEM-459fc8a6:14095266043:-7e8c','ACCT-459fc8a6:14095266043:-7eb6');

/*Table structure for table `ris` */

DROP TABLE IF EXISTS `ris`;

CREATE TABLE `ris` (
  `objid` varchar(50) NOT NULL default '',
  `risno` varchar(50) default NULL,
  `state` varchar(10) default NULL,
  `txntype` varchar(25) default NULL,
  `dtfiled` datetime default NULL,
  `requester_objid` varchar(50) default NULL,
  `requester_name` varchar(100) default NULL,
  `requester_title` varchar(50) default NULL,
  `dtapproved` datetime default NULL,
  `approver_objid` varchar(50) default NULL,
  `approver_name` varchar(100) default NULL,
  `approver_title` varchar(50) default NULL,
  `dtissued` datetime default NULL,
  `issuer_objid` varchar(50) default NULL,
  `issuer_name` varchar(100) default NULL,
  `issuer_title` varchar(50) default NULL,
  `org_objid` varchar(50) default NULL,
  `org_name` varchar(100) default NULL,
  `refid` varchar(50) default NULL,
  `refno` varchar(50) default NULL,
  `reftype` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_risno` (`risno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ris` */

insert  into `ris`(`objid`,`risno`,`state`,`txntype`,`dtfiled`,`requester_objid`,`requester_name`,`requester_title`,`dtapproved`,`approver_objid`,`approver_name`,`approver_title`,`dtissued`,`issuer_objid`,`issuer_name`,`issuer_title`,`org_objid`,`org_name`,`refid`,`refno`,`reftype`) values ('RIS-4627b190:140a585fcff:-7fd5','RIS00071','CLOSED','AF:ISSUE','2013-08-22 18:22:30','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'169','ILIGAN CITY','AFISS-4627b190:140a585fcff:-7f68','AFISSUE00043','afissue'),('RIS-4ce44929:140a4adea93:-7fe0','RIS00070','CLOSED','AF:PURCHASE','2013-08-22 14:20:59','USR11700b22:1407632636b:-7e71','JESSIE S. ZAMORA','LAOO II',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'169','ILIGAN CITY','AFRCT-4627b190:140a585fcff:-7fe0','AFRCT00025','afreceipt');

/*Table structure for table `risitem` */

DROP TABLE IF EXISTS `risitem`;

CREATE TABLE `risitem` (
  `objid` varchar(50) NOT NULL default '',
  `parentid` varchar(50) default NULL,
  `item_objid` varchar(50) default NULL,
  `item_code` varchar(50) default NULL,
  `item_description` varchar(100) default NULL,
  `unit` varchar(10) default NULL,
  `qty` int(11) default '0',
  `qtyissued` int(11) default '0',
  `qtyreceived` int(11) default NULL,
  `remarks` varchar(100) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_risitem` (`parentid`),
  CONSTRAINT `FK_risitem` FOREIGN KEY (`parentid`) REFERENCES `ris` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `risitem` */

insert  into `risitem`(`objid`,`parentid`,`item_objid`,`item_code`,`item_description`,`unit`,`qty`,`qtyissued`,`qtyreceived`,`remarks`) values ('RIST3f1e623f:140a585fb55:-7fee','RIS-4627b190:140a585fcff:-7fd5','58','58','BURIAL PERMIT FEE','STUB',1,1,0,'OK'),('RIST3f1e623f:140a585fb55:-7fef','RIS-4627b190:140a585fcff:-7fd5','56','56','REAL PROPERTY TAX RECEIPT','STUB',2,2,0,'OK'),('RIST3f1e623f:140a585fb55:-7ff0','RIS-4627b190:140a585fcff:-7fd5','54','54','MARRIAGE LICENSE FEE','STUB',1,1,0,'OK'),('RIST3f1e623f:140a585fb55:-7ff1','RIS-4627b190:140a585fcff:-7fd5','53','53','LARGE CATTLE OWNERSHIP','STUB',1,1,0,'OK'),('RIST3f1e623f:140a585fb55:-7ff2','RIS-4627b190:140a585fcff:-7fd5','52','52','LARGE CATTLE TRANSFER','STUB',1,1,0,'OK'),('RIST3f1e623f:140a585fb55:-7ff3','RIS-4627b190:140a585fcff:-7fd5','51','51','ACCOUNTABLE FORM #51','STUB',2,2,0,'OK'),('RIST56555de9:140a4aa342d:-7ff8','RIS-4ce44929:140a4adea93:-7fe0','58','58','BURIAL PERMIT FEE','STUB',50,0,50,NULL),('RIST56555de9:140a4aa342d:-7ff9','RIS-4ce44929:140a4adea93:-7fe0','56','56','REAL PROPERTY TAX RECEIPT','STUB',100,0,100,NULL),('RIST56555de9:140a4aa342d:-7ffa','RIS-4ce44929:140a4adea93:-7fe0','54','54','MARRIAGE LICENSE FEE','STUB',50,0,50,NULL),('RIST56555de9:140a4aa342d:-7ffb','RIS-4ce44929:140a4adea93:-7fe0','53','53','LARGE CATTLE OWNERSHIP','STUB',50,0,50,NULL),('RIST56555de9:140a4aa342d:-7ffc','RIS-4ce44929:140a4adea93:-7fe0','52','52','LARGE CATTLE TRANSFER','STUB',50,0,50,NULL),('RIST56555de9:140a4aa342d:-7ffd','RIS-4ce44929:140a4adea93:-7fe0','51','51','ACCOUNTABLE FORM #51','STUB',100,0,100,NULL);

/*Table structure for table `rptcertification` */

DROP TABLE IF EXISTS `rptcertification`;

CREATE TABLE `rptcertification` (
  `objid` varchar(50) NOT NULL,
  `txnno` varchar(25) NOT NULL,
  `txndate` datetime NOT NULL,
  `opener` varchar(50) NOT NULL,
  `faasid` varchar(50) default NULL,
  `taxpayerid` varchar(50) default NULL,
  `taxpayername` varchar(2000) default NULL,
  `taxpayeraddress` varchar(150) default NULL,
  `requestedby` varchar(150) NOT NULL,
  `requestedbyaddress` varchar(100) NOT NULL default '',
  `purpose` varchar(100) NOT NULL,
  `certifiedby` varchar(150) NOT NULL,
  `certifiedbytitle` varchar(50) NOT NULL,
  `byauthority` varchar(150) default NULL,
  `byauthoritytitle` varchar(50) default NULL,
  `official` int(11) NOT NULL,
  `orno` varchar(25) default NULL,
  `ordate` date default NULL,
  `oramount` decimal(16,2) NOT NULL,
  `stampamount` decimal(16,2) NOT NULL,
  `createdbyid` varchar(50) default NULL,
  `createdby` varchar(150) NOT NULL,
  `createdbytitle` varchar(50) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_rptcertification_txnno` (`txnno`),
  KEY `ix_rptcertification_taxpayerid` (`taxpayerid`),
  KEY `ix_rptcertification_taxpayername` (`taxpayername`(255)),
  KEY `ix_rptcertification_requestedby` (`requestedby`),
  KEY `FK_rptcertification_faas` (`faasid`),
  CONSTRAINT `FK_rptcertification_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rptcertification` */

/*Table structure for table `rptcertificationitem` */

DROP TABLE IF EXISTS `rptcertificationitem`;

CREATE TABLE `rptcertificationitem` (
  `objid` int(50) NOT NULL auto_increment,
  `rptcertificationid` varchar(50) NOT NULL,
  `refid` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`objid`),
  KEY `FK_rptcertificationitem_rptcertification` (`rptcertificationid`),
  KEY `ix_rptcertificationitem_refid` (`refid`),
  CONSTRAINT `FK_rptcertificationitem_rptcertification` FOREIGN KEY (`rptcertificationid`) REFERENCES `rptcertification` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rptcertificationitem` */

/*Table structure for table `rptexpiry` */

DROP TABLE IF EXISTS `rptexpiry`;

CREATE TABLE `rptexpiry` (
  `iyear` int(11) NOT NULL,
  `iqtr` int(11) NOT NULL,
  `expirytype` varchar(50) NOT NULL default '',
  `expirydate` datetime default NULL,
  PRIMARY KEY  (`iqtr`,`iyear`,`expirytype`),
  KEY `ix_rptexpiry_yrqtr` (`iyear`,`iqtr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rptexpiry` */

/*Table structure for table `rptledger` */

DROP TABLE IF EXISTS `rptledger`;

CREATE TABLE `rptledger` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `faasid` varchar(50) NOT NULL,
  `nextbilldate` date default NULL,
  `lastyearpaid` int(11) NOT NULL,
  `lastqtrpaid` int(11) NOT NULL,
  `firstqtrpaidontime` int(11) NOT NULL,
  `qtrlypaymentavailed` int(11) NOT NULL,
  `qtrlypaymentpaidontime` int(11) NOT NULL,
  `lastitemyear` int(11) NOT NULL,
  `lastreceiptid` varchar(50) default NULL,
  `barangayid` varchar(50) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_rptledger_faas` (`faasid`),
  KEY `ix_rptledger_state` (`state`),
  KEY `ix_rptledger_nextbilldate` (`nextbilldate`),
  KEY `ix_rptledgerlastyearpaidqtr` (`lastyearpaid`,`lastqtrpaid`),
  KEY `ix_rptledger_state_nextbilldate` (`state`,`nextbilldate`),
  KEY `ix_rptledger_state_lastyearpaid` (`state`,`lastyearpaid`),
  KEY `ix_rptledger_state_barangay` (`state`,`barangayid`),
  KEY `FK_rptledger_barangay` (`barangayid`),
  CONSTRAINT `FK_rptledger_barangay` FOREIGN KEY (`barangayid`) REFERENCES `barangay` (`objid`),
  CONSTRAINT `FK_rptledger_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rptledger` */

insert  into `rptledger`(`objid`,`state`,`faasid`,`nextbilldate`,`lastyearpaid`,`lastqtrpaid`,`firstqtrpaidontime`,`qtrlypaymentavailed`,`qtrlypaymentpaidontime`,`lastitemyear`,`lastreceiptid`,`barangayid`) values ('F-726af93e:14080606f2b:-8000','APPROVED','F-726af93e:14080606f2b:-8000',NULL,2008,4,0,0,0,2013,NULL,'BRGY514f6587:1407632626e:-7ffd'),('F1ddedc6d:14080d2a6a6:-7ff7','APPROVED','F1ddedc6d:14080d2a6a6:-7ff7','2013-08-17',2010,2,0,0,0,2013,'RCT-7012bd14:140866c4fa7:-7fff','BRGY514f6587:1407632626e:-7ffd');

/*Table structure for table `rptledgerfaas` */

DROP TABLE IF EXISTS `rptledgerfaas`;

CREATE TABLE `rptledgerfaas` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `rptledgerid` varchar(50) NOT NULL,
  `faasid` varchar(50) default NULL,
  `tdno` varchar(25) NOT NULL,
  `txntype_objid` varchar(5) NOT NULL,
  `classification_objid` varchar(50) NOT NULL,
  `actualuse_objid` varchar(50) default '',
  `taxable` int(11) NOT NULL,
  `backtax` int(11) NOT NULL,
  `fromyear` int(11) NOT NULL,
  `fromqtr` int(11) NOT NULL,
  `toyear` int(11) NOT NULL,
  `toqtr` int(11) NOT NULL,
  `assessedvalue` decimal(16,2) NOT NULL,
  `systemcreated` int(11) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_rptledgerhistory_rptledger` (`rptledgerid`),
  KEY `ix_rptledgerhistory_ledgerid_toyear` (`rptledgerid`,`toyear`),
  KEY `FK_rptledgerfaas_faas` (`faasid`),
  CONSTRAINT `FK_rptledgerfaas_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_rptledgerfaas_rptledger` FOREIGN KEY (`rptledgerid`) REFERENCES `rptledger` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rptledgerfaas` */

insert  into `rptledgerfaas`(`objid`,`state`,`rptledgerid`,`faasid`,`tdno`,`txntype_objid`,`classification_objid`,`actualuse_objid`,`taxable`,`backtax`,`fromyear`,`fromqtr`,`toyear`,`toqtr`,`assessedvalue`,`systemcreated`) values ('F-726af93e:14080606f2b:-8000','APPROVED','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000','L-01','GR','RES','RES',1,0,2009,1,0,0,'16000.00',1),('F1ddedc6d:14080d2a6a6:-7ff7','APPROVED','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7','L-02','GR','RES','RES',1,0,2009,1,0,0,'32000.00',1);

/*Table structure for table `rptledgeritem` */

DROP TABLE IF EXISTS `rptledgeritem`;

CREATE TABLE `rptledgeritem` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `rptledgerid` varchar(50) NOT NULL,
  `rptledgerfaasid` varchar(50) NOT NULL default '',
  `year` int(11) NOT NULL,
  `qtr` int(11) NOT NULL,
  `assessedvalue` decimal(16,2) NOT NULL,
  `qtrlyav` decimal(16,2) NOT NULL,
  `basic` decimal(16,2) NOT NULL,
  `basicint` decimal(16,2) NOT NULL,
  `basicdisc` decimal(16,2) NOT NULL,
  `basiccredit` decimal(16,2) NOT NULL,
  `basicpaid` decimal(16,2) NOT NULL,
  `basicintpartial` decimal(16,2) NOT NULL,
  `sef` decimal(16,2) NOT NULL,
  `sefint` decimal(16,2) NOT NULL,
  `sefdisc` decimal(16,2) NOT NULL,
  `sefcredit` decimal(16,2) NOT NULL,
  `sefpaid` decimal(16,2) NOT NULL,
  `sefintpartial` decimal(16,2) NOT NULL,
  `basicacctid` varchar(50) default '',
  `basicintacctid` varchar(50) default '',
  `sefacctid` varchar(50) default '',
  `sefintacctid` varchar(50) default '',
  `revtype` varchar(15) default '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_rptledger_faas_yrqtr` (`rptledgerid`,`rptledgerfaasid`,`year`,`qtr`),
  KEY `ix_rptledgeritem_ledgerstate` (`rptledgerid`,`state`),
  KEY `FK_rptledgeritem_rptledger` (`rptledgerid`),
  KEY `FK_rptledgeritem_rptledgerfaas` (`rptledgerfaasid`),
  CONSTRAINT `FK_rptledgeritem_rptledger` FOREIGN KEY (`rptledgerid`) REFERENCES `rptledger` (`objid`),
  CONSTRAINT `FK_rptledgeritem_rptledgerfaas` FOREIGN KEY (`rptledgerfaasid`) REFERENCES `rptledgerfaas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rptledgeritem` */

insert  into `rptledgeritem`(`objid`,`state`,`rptledgerid`,`rptledgerfaasid`,`year`,`qtr`,`assessedvalue`,`qtrlyav`,`basic`,`basicint`,`basicdisc`,`basiccredit`,`basicpaid`,`basicintpartial`,`sef`,`sefint`,`sefdisc`,`sefcredit`,`sefpaid`,`sefintpartial`,`basicacctid`,`basicintacctid`,`sefacctid`,`sefintacctid`,`revtype`) values ('RLI-61ef3b86:140810894f5:-7fd2','OPEN','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2013,4,'32000.00','8000.00','80.00','0.00','8.00','0.00','0.00','0.00','80.00','0.00','8.00','0.00','0.00','0.00','RPTTAX',NULL,'RPTTAX',NULL,'current'),('RLI-61ef3b86:140810894f5:-7fd3','OPEN','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2013,3,'32000.00','8000.00','80.00','0.00','8.00','0.00','0.00','0.00','80.00','0.00','8.00','0.00','0.00','0.00','RPTTAX',NULL,'RPTTAX',NULL,'current'),('RLI-61ef3b86:140810894f5:-7fd4','OPEN','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2013,2,'32000.00','8000.00','80.00','0.00','8.00','0.00','0.00','0.00','80.00','0.00','8.00','0.00','0.00','0.00','RPTTAX',NULL,'RPTTAX',NULL,'current'),('RLI-61ef3b86:140810894f5:-7fd5','OPEN','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2013,1,'32000.00','8000.00','80.00','0.00','8.00','0.00','0.00','0.00','80.00','0.00','8.00','0.00','0.00','0.00','RPTTAX',NULL,'RPTTAX',NULL,'current'),('RLI-61ef3b86:140810894f5:-7fd6','OPEN','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2012,4,'32000.00','8000.00','80.00','32.00','0.00','0.00','0.00','0.00','80.00','32.00','0.00','0.00','0.00','0.00','RPTTAX','RPTTAX','RPTTAX','RPTTAX','previous'),('RLI-61ef3b86:140810894f5:-7fd7','OPEN','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2012,3,'32000.00','8000.00','80.00','32.00','0.00','0.00','0.00','0.00','80.00','32.00','0.00','0.00','0.00','0.00','RPTTAX','RPTTAX','RPTTAX','RPTTAX','previous'),('RLI-61ef3b86:140810894f5:-7fd8','OPEN','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2012,2,'32000.00','8000.00','80.00','32.00','0.00','0.00','0.00','0.00','80.00','32.00','0.00','0.00','0.00','0.00','RPTTAX','RPTTAX','RPTTAX','RPTTAX','previous'),('RLI-61ef3b86:140810894f5:-7fd9','OPEN','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2012,1,'32000.00','8000.00','80.00','32.00','0.00','0.00','0.00','0.00','80.00','32.00','0.00','0.00','0.00','0.00','RPTTAX','RPTTAX','RPTTAX','RPTTAX','previous'),('RLI-61ef3b86:140810894f5:-7fda','OPEN','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2011,4,'32000.00','8000.00','80.00','51.20','0.00','0.00','0.00','0.00','80.00','51.20','0.00','0.00','0.00','0.00','RPTTAX','RPTTAX','RPTTAX','RPTTAX','previous'),('RLI-61ef3b86:140810894f5:-7fdb','OPEN','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2011,3,'32000.00','8000.00','80.00','51.20','0.00','0.00','0.00','0.00','80.00','51.20','0.00','0.00','0.00','0.00','RPTTAX','RPTTAX','RPTTAX','RPTTAX','previous'),('RLI-61ef3b86:140810894f5:-7fdc','OPEN','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2011,2,'32000.00','8000.00','80.00','51.20','0.00','0.00','0.00','0.00','80.00','51.20','0.00','0.00','0.00','0.00','RPTTAX','RPTTAX','RPTTAX','RPTTAX','previous'),('RLI-61ef3b86:140810894f5:-7fdd','OPEN','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2011,1,'32000.00','8000.00','80.00','51.20','0.00','0.00','0.00','0.00','80.00','51.20','0.00','0.00','0.00','0.00','RPTTAX','RPTTAX','RPTTAX','RPTTAX','previous'),('RLI-61ef3b86:140810894f5:-7fde','OPEN','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2010,4,'32000.00','8000.00','80.00','70.40','0.00','0.00','0.00','0.00','80.00','70.40','0.00','0.00','0.00','0.00','RPTTAX','RPTTAX','RPTTAX','RPTTAX','previous'),('RLI-61ef3b86:140810894f5:-7fdf','OPEN','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2010,3,'32000.00','8000.00','80.00','70.40','0.00','0.00','0.00','0.00','80.00','70.40','0.00','0.00','0.00','0.00','RPTTAX','RPTTAX','RPTTAX','RPTTAX','previous'),('RLI-61ef3b86:140810894f5:-7fe0','PAID','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2010,2,'32000.00','8000.00','80.00','70.40','0.00','0.00','80.00','0.00','80.00','70.40','0.00','0.00','80.00','0.00','RPTTAX','RPTTAX','RPTTAX','RPTTAX','previous'),('RLI-61ef3b86:140810894f5:-7fe1','PAID','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2010,1,'32000.00','8000.00','80.00','70.40','0.00','0.00','80.00','0.00','80.00','70.40','0.00','0.00','80.00','0.00','RPTTAX','RPTTAX','RPTTAX','RPTTAX','previous'),('RLI-61ef3b86:140810894f5:-7fe2','PAID','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2009,4,'32000.00','8000.00','80.00','89.60','0.00','0.00','80.00','0.00','80.00','89.60','0.00','0.00','80.00','0.00','RPTTAX','RPTTAX','RPTTAX','RPTTAX','previous'),('RLI-61ef3b86:140810894f5:-7fe3','PAID','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2009,3,'32000.00','8000.00','80.00','89.60','0.00','0.00','80.00','0.00','80.00','89.60','0.00','0.00','80.00','0.00','RPTTAX','RPTTAX','RPTTAX','RPTTAX','previous'),('RLI-61ef3b86:140810894f5:-7fe4','PAID','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2009,2,'32000.00','8000.00','80.00','89.60','0.00','0.00','80.00','0.00','80.00','89.60','0.00','0.00','80.00','0.00','RPTTAX','RPTTAX','RPTTAX','RPTTAX','previous'),('RLI-61ef3b86:140810894f5:-7fe5','PAID','F1ddedc6d:14080d2a6a6:-7ff7','F1ddedc6d:14080d2a6a6:-7ff7',2009,1,'32000.00','8000.00','80.00','89.60','0.00','0.00','80.00','0.00','80.00','89.60','0.00','0.00','80.00','0.00','RPTTAX','RPTTAX','RPTTAX','RPTTAX','previous'),('RLI-61ef3b86:140810894f5:-7fe7','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2013,4,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7fe8','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2013,3,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7fe9','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2013,2,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7fea','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2013,1,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7feb','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2012,4,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7fec','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2012,3,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7fed','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2012,2,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7fee','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2012,1,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7fef','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2011,4,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7ff0','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2011,3,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7ff1','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2011,2,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7ff2','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2011,1,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7ff3','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2010,4,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7ff4','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2010,3,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7ff5','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2010,2,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7ff6','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2010,1,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7ff7','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2009,4,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7ff8','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2009,3,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7ff9','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2009,2,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL),('RLI-61ef3b86:140810894f5:-7ffa','OPEN','F-726af93e:14080606f2b:-8000','F-726af93e:14080606f2b:-8000',2009,1,'16000.00','4000.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00','0.00',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `rptparameter` */

DROP TABLE IF EXISTS `rptparameter`;

CREATE TABLE `rptparameter` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(10) NOT NULL default '' COMMENT 'DRAFT, APPROVED',
  `name` varchar(100) NOT NULL default '',
  `caption` varchar(100) NOT NULL default '',
  `description` varchar(1000) default NULL,
  `paramtype` varchar(20) NOT NULL default '' COMMENT 'decimal, integer, range_decimal, range_integer',
  `minvalue` decimal(10,2) NOT NULL,
  `maxvalue` decimal(10,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_rptparameter_name` (`name`),
  KEY `ix_rptparameter_state` (`state`),
  KEY `ix_rptparameter_caption` (`caption`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `rptparameter` */

insert  into `rptparameter`(`objid`,`state`,`name`,`caption`,`description`,`paramtype`,`minvalue`,`maxvalue`) values ('RP-382867e5:13f9815adda:-7ff4','APPROVED','AREA_SQM','AREA IN SQM',NULL,'decimal','0.00','0.00'),('RP253e7d97:13f98178d2d:-7ff4','APPROVED','UV_1000_TO_1500','UNIT VALUE (1,000.00 TO 1,500.00)',NULL,'range_decimal','1000.00','1500.00'),('RP7bc4df44:13e450bf81b:-7ff4','APPROVED','NO_OF_SETS','NO. OF SETS','No. of Sets','integer','0.00','0.00'),('RP7bc4df44:13e450bf81b:-7ff5','APPROVED','UNIT_VALUE','UNIT VALUE','Unit Value','decimal','0.00','0.00');

/*Table structure for table `rpttaxclearance` */

DROP TABLE IF EXISTS `rpttaxclearance`;

CREATE TABLE `rpttaxclearance` (
  `objid` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `qtr` int(11) NOT NULL,
  PRIMARY KEY  (`objid`),
  CONSTRAINT `FK_rpttaxclearance_rptcertification` FOREIGN KEY (`objid`) REFERENCES `rptcertification` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rpttaxclearance` */

/*Table structure for table `rpu` */

DROP TABLE IF EXISTS `rpu`;

CREATE TABLE `rpu` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL default '',
  `realpropertyid` varchar(50) default '',
  `rputype` varchar(10) NOT NULL,
  `ry` int(11) NOT NULL,
  `fullpin` varchar(25) NOT NULL,
  `suffix` int(11) NOT NULL,
  `subsuffix` int(11) default NULL,
  `classification_objid` varchar(50) default '',
  `exemptiontype_objid` varchar(50) default '',
  `taxable` int(11) NOT NULL,
  `totalareaha` decimal(18,6) NOT NULL,
  `totalareasqm` decimal(18,6) NOT NULL,
  `totalbmv` decimal(16,2) NOT NULL,
  `totalmv` decimal(16,2) NOT NULL,
  `totalav` decimal(16,2) NOT NULL,
  `hasswornamount` int(11) NOT NULL,
  `swornamount` decimal(16,2) NOT NULL,
  `useswornamount` int(11) NOT NULL,
  `previd` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_rpu_realpropertyid` (`realpropertyid`),
  KEY `ix_rpu_state` (`state`),
  KEY `ix_rpu_fullpin` (`fullpin`),
  KEY `ix_rpu_ry_state` (`state`),
  KEY `ix_rpu_ry_fullpin` (`fullpin`,`ry`),
  KEY `ix_rpy_ry` (`ry`),
  KEY `FK_rpu_classification_objid` (`classification_objid`),
  KEY `FK_rpu_exemptiontype_objid` (`exemptiontype_objid`),
  KEY `FK_rpu_rpu` (`previd`),
  CONSTRAINT `FK_rpu_exemptiontype` FOREIGN KEY (`exemptiontype_objid`) REFERENCES `exemptiontype` (`objid`),
  CONSTRAINT `FK_rpu_propertyclassification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`),
  CONSTRAINT `FK_rpu_realpropertyid` FOREIGN KEY (`realpropertyid`) REFERENCES `realproperty` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rpu` */

insert  into `rpu`(`objid`,`state`,`realpropertyid`,`rputype`,`ry`,`fullpin`,`suffix`,`subsuffix`,`classification_objid`,`exemptiontype_objid`,`taxable`,`totalareaha`,`totalareasqm`,`totalbmv`,`totalmv`,`totalav`,`hasswornamount`,`swornamount`,`useswornamount`,`previd`) values ('RPU-726af93e:14080606f2b:-7ff9','CURRENT','RP-726af93e:14080606f2b:-7ffa','land',2009,'169-00-0002-001-01',0,NULL,'RES',NULL,1,'0.010000','100.000000','80000.00','80000.00','16000.00',0,'0.00',0,NULL),('RPU1ddedc6d:14080d2a6a6:-7ff0','CURRENT','RP1ddedc6d:14080d2a6a6:-7ff1','land',2009,'169-00-0002-001-02',0,NULL,'RES',NULL,1,'0.020000','200.000000','160000.00','160000.00','32000.00',0,'0.00',0,NULL);

/*Table structure for table `rule` */

DROP TABLE IF EXISTS `rule`;

CREATE TABLE `rule` (
  `objid` varchar(50) NOT NULL,
  `docstate` varchar(25) NOT NULL,
  `rulename` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `packagename` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `salience` int(11) NOT NULL,
  `agendagroup` varchar(25) NOT NULL,
  `ruleset` varchar(50) default NULL,
  `effectivefrom` date default NULL,
  `effectiveto` date default NULL,
  `conditions` text,
  `actions` text,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rule` */

insert  into `rule`(`objid`,`docstate`,`rulename`,`description`,`packagename`,`author`,`salience`,`agendagroup`,`ruleset`,`effectivefrom`,`effectiveto`,`conditions`,`actions`) values ('BASIC_SEF_ADVANCE','DEPLOYED','BASIC_SEF_ADVANCE','BASIC SEF ADVANCE','rptbilling.BASIC_SEF_ADVANCE','guest',0,'TAX','rptbilling',NULL,NULL,'[[constraints:[[fieldname:\"year\",datatype:\"integer\",operator:null,varname:\"CY\",displaytext:\"CY : year\"]],name:\"CurrentDate\",factclass:\"DateBean\",displaytext:\"CurrentDate( CY : year )\"],[constraints:[[fieldname:\"year\",datatype:\"integer\",operator:[caption:\"greater than\",symbol:\">\"],value:\"CY\",valueText:null,usevar:true,displaytext:\"year greater than CY\"],[fieldname:\"av\",datatype:\"decimal\",operator:null,varname:\"AV\",displaytext:\"AV : av\"]],name:\"RPTLedgerFact\",factclass:\"RPTLedgerFact\",varname:\"RL\",displaytext:\"RL :RPTLedgerFact( year greater than CY , AV : av )\"]]','[[params:[ledger:[datatype:\"RPTLedgerFact\",value:\"RL\",usevar:true],expr:[datatype:\"string\",expr:\"AV * 0.01\",exprtype:\"formula\"],basicacct:[datatype:\"lookup\",value:\"BASIC CURRENT\",valueText:\"RPT BASIC CURRENT\"],revtype:[datatype:\"lookup\",value:\"advance\",valueText:\"advance\"]],name:\"Calculate Basic\",text:\"{params={ledger={datatype=RPTLedgerFact, value=RL, usevar=true}, expr={datatype=string, expr=AV * 0.01, exprtype=formula}, basicacct={datatype=lookup, value=BASIC CURRENT, valueText=RPT BASIC CURRENT}, revtype={datatype=lookup, value=advance, valueText=advance}}, name=Calculate Basic}\"],[params:[ledger:[datatype:\"RPTLedgerFact\",value:\"RL\",usevar:true],expr:[datatype:\"string\",expr:\"AV  * 0.01\",exprtype:\"formula\"],sefacct:[datatype:\"lookup\",value:\"SEF CURRENT\",valueText:\"SEF CURRENT\"],revtype:[datatype:\"lookup\",value:\"advance\",valueText:\"advance\"]],name:\"Calculate SEF\",text:\"{params={ledger={datatype=RPTLedgerFact, value=RL, usevar=true}, expr={datatype=string, expr=AV  * 0.01, exprtype=formula}, sefacct={datatype=lookup, value=SEF CURRENT, valueText=SEF CURRENT}, revtype={datatype=lookup, value=advance, valueText=advance}}, name=Calculate SEF}\"]]'),('BASIC_SEF_ADV_DISCOUNT','DEPLOYED','BASIC_SEF_ADV_DISCOUNT','BASIC SEF ADVANCE DISCOUNT','rptbilling.BASIC_SEF_ADV_DISCOUNT','guest',0,'DISCOUNT','rptbilling',NULL,NULL,'[[constraints:[[fieldname:\"year\",datatype:\"integer\",operator:null,varname:\"CY\",displaytext:\"CY : year\"]],name:\"CurrentDate\",factclass:\"DateBean\",displaytext:\"CurrentDate( CY : year )\"],[constraints:[[fieldname:\"year\",datatype:\"integer\",operator:[caption:\"greater than\",symbol:\">\"],value:\"CY\",valueText:null,usevar:true,displaytext:\"year greater than CY\"],[fieldname:\"basic\",datatype:\"decimal\",operator:null,varname:\"BASIC\",displaytext:\"BASIC : basic\"],[fieldname:\"sef\",datatype:\"decimal\",operator:null,varname:\"SEF\",displaytext:\"SEF : sef\"]],name:\"RPTLedgerFact\",factclass:\"RPTLedgerFact\",varname:\"RL\",displaytext:\"RL :RPTLedgerFact( year greater than CY , BASIC : basic , SEF : sef )\"]]','[[params:[ledger:[datatype:\"RPTLedgerFact\",value:\"RL\",usevar:true],expr:[datatype:\"string\",expr:\"SEF * 0.20\",exprtype:\"formula\"]],name:\"Calculate SEF Discount\",text:\"{params={ledger={datatype=RPTLedgerFact, value=RL, usevar=true}, expr={datatype=string, expr=SEF * 0.20, exprtype=formula}}, name=Calculate SEF Discount}\"],[params:[ledger:[datatype:\"RPTLedgerFact\",value:\"RL\",usevar:true],expr:[datatype:\"string\",expr:\"BASIC * 0.25\",exprtype:\"formula\"]],name:\"Calculate Basic Discount\",text:\"{params={ledger={datatype=RPTLedgerFact, value=RL, usevar=true}, expr={datatype=string, expr=BASIC * 0.25, exprtype=formula}}, name=Calculate Basic Discount}\"]]'),('BASIC_SEF_CURRENT','DEPLOYED','BASIC_SEF_CURRENT','BASIC SEF CURRENT	','rptbilling.BASIC_SEF_CURRENT','guest',0,'TAX','rptbilling',NULL,NULL,'[[constraints:[[fieldname:\"year\",datatype:\"integer\",operator:null,varname:\"CY\",displaytext:\"CY : year\"]],name:\"CurrentDate\",factclass:\"DateBean\",displaytext:\"CurrentDate( CY : year )\"],[constraints:[[fieldname:\"year\",datatype:\"integer\",operator:[caption:\"equals\",symbol:\"==\"],value:\"CY\",valueText:null,usevar:true,displaytext:\"year equals CY\"],[fieldname:\"av\",datatype:\"decimal\",operator:null,varname:\"AV\",displaytext:\"AV : av\"]],name:\"RPTLedgerFact\",factclass:\"RPTLedgerFact\",varname:\"RL\",displaytext:\"RL :RPTLedgerFact( year equals CY , AV : av )\"]]','[[params:[ledger:[datatype:\"RPTLedgerFact\",value:\"RL\",usevar:true],expr:[datatype:\"string\",expr:\"AV * 0.01\",exprtype:\"formula\"],basicacct:[datatype:\"lookup\",value:\"BASIC CURRENT\",valueText:\"RPT BASIC CURRENT\"],revtype:[datatype:\"lookup\",value:\"current\",valueText:\"current\"]],name:\"Calculate Basic\",text:\"{params={ledger={datatype=RPTLedgerFact, value=RL, usevar=true}, expr={datatype=string, expr=AV * 0.01, exprtype=formula}, basicacct={datatype=lookup, value=BASIC CURRENT, valueText=RPT BASIC CURRENT}, revtype={datatype=lookup, value=current, valueText=current}}, name=Calculate Basic}\"],[params:[ledger:[datatype:\"RPTLedgerFact\",value:\"RL\",usevar:true],expr:[datatype:\"string\",expr:\"AV * 0.01\",exprtype:\"formula\"],sefacct:[datatype:\"lookup\",value:\"SEF CURRENT\",valueText:\"SEF CURRENT\"],revtype:[datatype:\"lookup\",value:\"current\",valueText:\"current\"]],name:\"Calculate SEF\",text:\"{params={ledger={datatype=RPTLedgerFact, value=RL, usevar=true}, expr={datatype=string, expr=AV * 0.01, exprtype=formula}, sefacct={datatype=lookup, value=SEF CURRENT, valueText=SEF CURRENT}, revtype={datatype=lookup, value=current, valueText=current}}, name=Calculate SEF}\"]]'),('BASIC_SEF_DISCOUNT','DEPLOYED','BASIC_SEF_DISCOUNT','basic sef discount','rptbilling.BASIC_SEF_DISCOUNT','guest',0,'DISCOUNT','rptbilling',NULL,NULL,'[[constraints:[[fieldname:\"year\",datatype:\"integer\",operator:null,varname:\"CY\",displaytext:\"CY : year\"]],name:\"CurrentDate\",factclass:\"DateBean\",displaytext:\"CurrentDate( CY : year )\"],[constraints:[[fieldname:\"year\",datatype:\"integer\",operator:[caption:\"equals\",symbol:\"==\"],value:\"CY\",valueText:null,usevar:true,displaytext:\"year equals CY\"],[fieldname:\"basic\",datatype:\"decimal\",operator:null,varname:\"BASIC\",displaytext:\"BASIC : basic\"],[fieldname:\"sef\",datatype:\"decimal\",operator:null,varname:\"SEF\",displaytext:\"SEF : sef\"]],name:\"RPTLedgerFact\",factclass:\"RPTLedgerFact\",varname:\"RL\",displaytext:\"RL :RPTLedgerFact( year equals CY , BASIC : basic , SEF : sef )\"]]','[[params:[ledger:[datatype:\"RPTLedgerFact\",value:\"RL\",usevar:true],expr:[datatype:\"string\",expr:\"BASIC * 0.10\",exprtype:\"formula\"]],name:\"Calculate Basic Discount\",text:\"{params={ledger={datatype=RPTLedgerFact, value=RL, usevar=true}, expr={datatype=string, expr=BASIC * 0.10, exprtype=formula}}, name=Calculate Basic Discount}\"],[params:[ledger:[datatype:\"RPTLedgerFact\",value:\"RL\",usevar:true],expr:[datatype:\"string\",expr:\"SEF * 0.10\",exprtype:\"formula\"]],name:\"Calculate SEF Discount\",text:\"{params={ledger={datatype=RPTLedgerFact, value=RL, usevar=true}, expr={datatype=string, expr=SEF * 0.10, exprtype=formula}}, name=Calculate SEF Discount}\"]]'),('BASIC_SEF_INT','DEPLOYED','BASIC_SEF_INT','Basic and SEF Interest Computaiton','rptbilling.BASIC_SEF_INT','guest',0,'PENALTY','rptbilling',NULL,NULL,'[[constraints:[[fieldname:\"year\",datatype:\"integer\",operator:null,varname:\"CY\",displaytext:\"CY : year\"]],name:\"CurrentDate\",factclass:\"DateBean\",displaytext:\"CurrentDate( CY : year )\"],[constraints:[[fieldname:\"year\",datatype:\"integer\",operator:[caption:\"less than\",symbol:\"<\"],value:\"CY\",valueText:null,usevar:true,displaytext:\"year less than CY\"],[fieldname:\"basic\",datatype:\"decimal\",operator:null,varname:\"BASIC\",displaytext:\"BASIC : basic\"],[fieldname:\"sef\",datatype:\"decimal\",operator:null,varname:\"SEF\",displaytext:\"SEF : sef\"],[fieldname:\"numberofmonthsfromjan\",datatype:\"integer\",operator:null,varname:\"NMON\",displaytext:\"NMON : numberofmonthsfromjan\"]],name:\"RPTLedgerFact\",factclass:\"RPTLedgerFact\",varname:\"RL\",displaytext:\"RL :RPTLedgerFact( year less than CY , BASIC : basic , SEF : sef , NMON : numberofmonthsfromjan )\"]]','[[params:[ledger:[datatype:\"RPTLedgerFact\",value:\"RL\",usevar:true],expr:[datatype:\"string\",expr:\"BASIC * NMON * 0.02\",exprtype:\"formula\"],basicintacct:[datatype:\"lookup\",value:\"BASIC INTEREST\",valueText:\"RPT BASIC INTEREST\"],revtype:[datatype:\"lookup\",value:\"previous\",valueText:\"previous\"]],name:\"Calculate Basic Interest\",text:\"{params={ledger={datatype=RPTLedgerFact, value=RL, usevar=true}, expr={datatype=string, expr=BASIC * NMON * 0.02, exprtype=formula}, basicintacct={datatype=lookup, value=BASIC INTEREST, valueText=RPT BASIC INTEREST}, revtype={datatype=lookup, value=previous, valueText=previous}}, name=Calculate Basic Interest}\"],[params:[ledger:[datatype:\"RPTLedgerFact\",value:\"RL\",usevar:true],expr:[datatype:\"string\",expr:\"SEF * NMON * 0.02\",exprtype:\"formula\"],sefintacct:[datatype:\"lookup\",value:\"SEF INTEREST\",valueText:\"RPT SEF INTEREST\"],revtype:[datatype:\"lookup\",value:\"previous\",valueText:\"previous\"]],name:\"Calculate SEF Interest\",text:\"{params={ledger={datatype=RPTLedgerFact, value=RL, usevar=true}, expr={datatype=string, expr=SEF * NMON * 0.02, exprtype=formula}, sefintacct={datatype=lookup, value=SEF INTEREST, valueText=RPT SEF INTEREST}, revtype={datatype=lookup, value=previous, valueText=previous}}, name=Calculate SEF Interest}\"]]'),('BASIC_SEF_PREVIOUS','DEPLOYED','BASIC_SEF_PREVIOUS','Basic and SEF Previous','rptbilling.BASIC_SEF_PREVIOUS','guest',0,'TAX','rptbilling',NULL,NULL,'[[constraints:[[fieldname:\"year\",datatype:\"integer\",operator:null,varname:\"CY\",displaytext:\"CY : year\"]],name:\"CurrentDate\",factclass:\"DateBean\",displaytext:\"CurrentDate( CY : year )\"],[constraints:[[fieldname:\"year\",datatype:\"integer\",operator:[caption:\"less than\",symbol:\"<\"],value:\"CY\",valueText:null,usevar:true,displaytext:\"year less than CY\"],[fieldname:\"av\",datatype:\"decimal\",operator:null,varname:\"AV\",displaytext:\"AV : av\"]],name:\"RPTLedgerFact\",factclass:\"RPTLedgerFact\",varname:\"RL\",displaytext:\"RL :RPTLedgerFact( year less than CY , AV : av )\"]]','[[params:[ledger:[datatype:\"RPTLedgerFact\",value:\"RL\",usevar:true],expr:[datatype:\"string\",expr:\"AV * 0.01\",exprtype:\"formula\"],basicacct:[datatype:\"lookup\",value:\"BASIC CURRENT\",valueText:\"RPT BASIC CURRENT\"],revtype:[datatype:\"lookup\",value:\"previous\",valueText:\"previous\"]],name:\"Calculate Basic\",text:\"{params={ledger={datatype=RPTLedgerFact, value=RL, usevar=true}, expr={datatype=string, expr=AV * 0.01, exprtype=formula}, basicacct={datatype=lookup, value=BASIC CURRENT, valueText=RPT BASIC CURRENT}, revtype={datatype=lookup, value=previous, valueText=previous}}, name=Calculate Basic}\"],[params:[ledger:[datatype:\"RPTLedgerFact\",value:\"RL\",usevar:true],expr:[datatype:\"string\",expr:\"AV * 0.01\",exprtype:\"formula\"],sefacct:[datatype:\"lookup\",value:\"SEF CURRENT\",valueText:\"SEF CURRENT\"],revtype:[datatype:\"lookup\",value:\"previous\",valueText:\"previous\"]],name:\"Calculate SEF\",text:\"{params={ledger={datatype=RPTLedgerFact, value=RL, usevar=true}, expr={datatype=string, expr=AV * 0.01, exprtype=formula}, sefacct={datatype=lookup, value=SEF CURRENT, valueText=SEF CURRENT}, revtype={datatype=lookup, value=previous, valueText=previous}}, name=Calculate SEF}\"]]');

/*Table structure for table `rule_package` */

DROP TABLE IF EXISTS `rule_package`;

CREATE TABLE `rule_package` (
  `ruleset` varchar(50) NOT NULL,
  `rulegroup` varchar(50) NOT NULL,
  `packagename` varchar(255) NOT NULL,
  `orderindex` int(11) default NULL,
  `type` varchar(10) default NULL,
  `content` text,
  `lastmodified` datetime default NULL,
  PRIMARY KEY  (`ruleset`,`rulegroup`,`packagename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rule_package` */

insert  into `rule_package`(`ruleset`,`rulegroup`,`packagename`,`orderindex`,`type`,`content`,`lastmodified`) values ('rptbilling','DISCOUNT','rptbilling.BASIC_SEF_ADV_DISCOUNT',0,'rules','import java.util.*;\nimport com.rameses.rules.common.*;\nimport com.rameses.util.DateBean;\n\nimport rptbilling.*;\n\n\n\nrule \"BASIC_SEF_ADV_DISCOUNT\"\n  agenda-group \"DISCOUNT\"	\n  salience 0\n  no-loop\n  when\n	DateBean( CY:year )\r\nRL:RPTLedgerFact( year > CY, BASIC:basic, SEF:sef )\r\n\n  then\n	Map binding = new HashMap();\n	\n	binding.put( \"CY\", CY );	\n	\n	binding.put( \"RL\", RL );	\n	\n	binding.put( \"BASIC\", BASIC );	\n	\n	binding.put( \"SEF\", SEF );	\n	\n	ActionExpression ae0 = new ActionExpression();\nae0.setStatement(\"SEF * 0.20\");\nae0.setParams(binding);\n\nRL.setSefdisc(ae0.getDoubleValue());\n\n\r\nActionExpression ae1 = new ActionExpression();\nae1.setStatement(\"BASIC * 0.25\");\nae1.setParams(binding);\n\nRL.setBasicdisc(ae1.getDoubleValue());\n\n\r\n\nend \n',NULL),('rptbilling','DISCOUNT','rptbilling.BASIC_SEF_DISCOUNT',0,'rules','import java.util.*;\nimport com.rameses.rules.common.*;\nimport com.rameses.util.DateBean;\n\nimport rptbilling.*;\n\n\n\nrule \"BASIC_SEF_DISCOUNT\"\n  agenda-group \"DISCOUNT\"	\n  salience 0\n  no-loop\n  when\n	DateBean( CY:year )\r\nRL:RPTLedgerFact( year == CY, BASIC:basic, SEF:sef )\r\n\n  then\n	Map binding = new HashMap();\n	\n	binding.put( \"CY\", CY );	\n	\n	binding.put( \"RL\", RL );	\n	\n	binding.put( \"BASIC\", BASIC );	\n	\n	binding.put( \"SEF\", SEF );	\n	\n	ActionExpression ae0 = new ActionExpression();\nae0.setStatement(\"BASIC * 0.10\");\nae0.setParams(binding);\n\nRL.setBasicdisc(ae0.getDoubleValue());\n\n\r\nActionExpression ae1 = new ActionExpression();\nae1.setStatement(\"SEF * 0.10\");\nae1.setParams(binding);\n\nRL.setSefdisc(ae1.getDoubleValue());\n\n\r\n\nend \n',NULL),('rptbilling','PENALTY','rptbilling.BASIC_SEF_INT',0,'rules','import java.util.*;\nimport com.rameses.rules.common.*;\nimport com.rameses.util.DateBean;\n\nimport rptbilling.*;\n\n\n\nrule \"BASIC_SEF_INT\"\n  agenda-group \"PENALTY\"	\n  salience 0\n  no-loop\n  when\n	DateBean( CY:year )\r\nRL:RPTLedgerFact( year < CY, BASIC:basic, SEF:sef, NMON:numberofmonthsfromjan )\r\n\n  then\n	Map binding = new HashMap();\n	\n	binding.put( \"CY\", CY );	\n	\n	binding.put( \"RL\", RL );	\n	\n	binding.put( \"BASIC\", BASIC );	\n	\n	binding.put( \"SEF\", SEF );	\n	\n	binding.put( \"NMON\", NMON );	\n	\n	ActionExpression ae0 = new ActionExpression();\nae0.setStatement(\"BASIC * NMON * 0.02\");\nae0.setParams(binding);\n\nRL.setBasicint(ae0.getDoubleValue());\nRL.setBasicintacctid(\"BASIC INTEREST\");\nRL.setRevtype(\"previous\");\n\n\r\nActionExpression ae1 = new ActionExpression();\nae1.setStatement(\"SEF * NMON * 0.02\");\nae1.setParams(binding);\n\nRL.setSefint(ae1.getDoubleValue());\nRL.setSefintacctid(\"SEF INTEREST\");\nRL.setRevtype(\"previous\");\n\n\r\n\nend \n',NULL),('rptbilling','TAX','rptbilling.BASIC_SEF_ADVANCE',0,'rules','import java.util.*;\nimport com.rameses.rules.common.*;\nimport com.rameses.util.DateBean;\n\nimport rptbilling.*;\n\n\n\nrule \"BASIC_SEF_ADVANCE\"\n  agenda-group \"TAX\"	\n  salience 0\n  no-loop\n  when\n	DateBean( CY:year )\r\nRL:RPTLedgerFact( year > CY, AV:av )\r\n\n  then\n	Map binding = new HashMap();\n	\n	binding.put( \"CY\", CY );	\n	\n	binding.put( \"RL\", RL );	\n	\n	binding.put( \"AV\", AV );	\n	\n	ActionExpression ae0 = new ActionExpression();\nae0.setStatement(\"AV * 0.01\");\nae0.setParams(binding);\n\nRL.setBasic(ae0.getDoubleValue());\nRL.setBasicacctid(\"BASIC CURRENT\");\nRL.setRevtype(\"advance\");\n\r\nActionExpression ae1 = new ActionExpression();\nae1.setStatement(\"AV  * 0.01\");\nae1.setParams(binding);\n\nRL.setSef(ae1.getDoubleValue());\nRL.setSefacctid(\"SEF CURRENT\");\nRL.setRevtype(\"advance\");\n\n\r\n\nend \n',NULL),('rptbilling','TAX','rptbilling.BASIC_SEF_CURRENT',0,'rules','import java.util.*;\nimport com.rameses.rules.common.*;\nimport com.rameses.util.DateBean;\n\nimport rptbilling.*;\n\n\n\nrule \"BASIC_SEF_CURRENT\"\n  agenda-group \"TAX\"	\n  salience 0\n  no-loop\n  when\n	DateBean( CY:year )\r\nRL:RPTLedgerFact( year == CY, AV:av )\r\n\n  then\n	Map binding = new HashMap();\n	\n	binding.put( \"CY\", CY );	\n	\n	binding.put( \"RL\", RL );	\n	\n	binding.put( \"AV\", AV );	\n	\n	ActionExpression ae0 = new ActionExpression();\nae0.setStatement(\"AV * 0.01\");\nae0.setParams(binding);\n\nRL.setBasic(ae0.getDoubleValue());\nRL.setBasicacctid(\"BASIC CURRENT\");\nRL.setRevtype(\"current\");\n\r\nActionExpression ae1 = new ActionExpression();\nae1.setStatement(\"AV * 0.01\");\nae1.setParams(binding);\n\nRL.setSef(ae1.getDoubleValue());\nRL.setSefacctid(\"SEF CURRENT\");\nRL.setRevtype(\"current\");\n\n\r\n\nend \n',NULL),('rptbilling','TAX','rptbilling.BASIC_SEF_PREVIOUS',0,'rules','import java.util.*;\nimport com.rameses.rules.common.*;\nimport com.rameses.util.DateBean;\n\nimport rptbilling.*;\n\n\n\nrule \"BASIC_SEF_PREVIOUS\"\n  agenda-group \"TAX\"	\n  salience 0\n  no-loop\n  when\n	DateBean( CY:year )\r\nRL:RPTLedgerFact( year < CY, AV:av )\r\n\n  then\n	Map binding = new HashMap();\n	\n	binding.put( \"CY\", CY );	\n	\n	binding.put( \"RL\", RL );	\n	\n	binding.put( \"AV\", AV );	\n	\n	ActionExpression ae0 = new ActionExpression();\nae0.setStatement(\"AV * 0.01\");\nae0.setParams(binding);\n\nRL.setBasic(ae0.getDoubleValue());\nRL.setBasicacctid(\"BASIC CURRENT\");\nRL.setRevtype(\"previous\");\n\r\nActionExpression ae1 = new ActionExpression();\nae1.setStatement(\"AV * 0.01\");\nae1.setParams(binding);\n\nRL.setSef(ae1.getDoubleValue());\nRL.setSefacctid(\"SEF CURRENT\");\nRL.setRevtype(\"previous\");\n\n\r\n\nend \n',NULL);

/*Table structure for table `rule_sets` */

DROP TABLE IF EXISTS `rule_sets`;

CREATE TABLE `rule_sets` (
  `name` varchar(50) NOT NULL default '',
  `rulegroup` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rule_sets` */

insert  into `rule_sets`(`name`,`rulegroup`) values ('bpassessment',''),('bpbilling',''),('rptbilling','');

/*Table structure for table `rulegroup` */

DROP TABLE IF EXISTS `rulegroup`;

CREATE TABLE `rulegroup` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(255) default NULL,
  `sortorder` int(11) NOT NULL,
  `ruleset` varchar(50) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rulegroup` */

insert  into `rulegroup`(`objid`,`name`,`sortorder`,`ruleset`) values ('ABT','AFTER BUSINESS TAX',3,'bpassessment'),('AOC','AFTER OTHER CHARGE',7,'bpassessment'),('APPINFO','APPLICATION INFO',1,'bpassessment'),('ARF','AFTER REGULATORY FEE',5,'bpassessment'),('BPDISC','DISCOUNT',3,'bpbilling'),('BPINT','INTEREST',2,'bpbilling'),('BPSUR','SURCHARGE',1,'bpbilling'),('BT','BUSINESS TAX',2,'bpassessment'),('OC','OTHER CHARGE',6,'bpassessment'),('RDISC','DISCOUNT',3,'rptbilling'),('RF','REGULATORY FEE',4,'bpassessment'),('RPENALTY','PENALTY',2,'rptbilling'),('RTAX','TAX',1,'rptbilling'),('SUM','SUMMARY',8,'bpassessment');

/*Table structure for table `rysetting_lgu` */

DROP TABLE IF EXISTS `rysetting_lgu`;

CREATE TABLE `rysetting_lgu` (
  `rysettingid` varchar(50) NOT NULL default '',
  `lguid` varchar(50) NOT NULL,
  `lguname` varchar(100) NOT NULL,
  `settingtype` varchar(15) NOT NULL,
  PRIMARY KEY  (`rysettingid`,`lguid`),
  KEY `FK_rysetting_lgu_lgu` (`lguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rysetting_lgu` */

insert  into `rysetting_lgu`(`rysettingid`,`lguid`,`lguname`,`settingtype`) values ('BRY-597a67c6:14076a28916:-7e56','169','ILIGAN','bldg'),('LRY3c214bf6:1407686fdaa:-7ff6','169','ILIGAN','land'),('MRY-597a67c6:14076a28916:-7c63','169','ILIGAN','mach'),('MRY90b7618:14076b17607:-7ff5','169','ILIGAN','misc'),('TRY-7bf822cc:14076b3ead9:-7ff6','169','ILIGAN','planttree');

/*Table structure for table `signatory` */

DROP TABLE IF EXISTS `signatory`;

CREATE TABLE `signatory` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL,
  `doctype` varchar(50) NOT NULL,
  `indexno` int(11) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) default NULL,
  `name` varchar(150) default NULL,
  `title` varchar(50) NOT NULL default '',
  `department` varchar(50) default NULL,
  `personnelid` varchar(50) default '',
  PRIMARY KEY  (`objid`),
  KEY `ix_signatory_doctype` (`doctype`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `signatory` */

insert  into `signatory`(`objid`,`state`,`doctype`,`indexno`,`lastname`,`firstname`,`middlename`,`name`,`title`,`department`,`personnelid`) values ('S3d146095:1407b7cefd2:-7ff8','APPROVED','RPTAPPROVER',1,'GIMENA','MA. ELENA RHODORA','A.','MA. ELENA RHODORA A. GIMENA','CITY ASSESSOR','CITY ASSESSOR\'S OFFICE',NULL),('S3d146095:1407b7cefd2:-7ffa','APPROVED','RPTAPPRAISER',1,'ZAMORA','JESSIE','S.','JESSIE S. ZAMORA','LAOO II','CITY ASSESSOR\'S OFFICE','USR11700b22:1407632636b:-7e71');

/*Table structure for table `specialaccountsetting` */

DROP TABLE IF EXISTS `specialaccountsetting`;

CREATE TABLE `specialaccountsetting` (
  `objid` varchar(50) NOT NULL default '',
  `item_objid` varchar(50) NOT NULL default '',
  `amount` decimal(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  CONSTRAINT `FK_specialaccountsetting_collectiontype` FOREIGN KEY (`objid`) REFERENCES `collectiontype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `specialaccountsetting` */

insert  into `specialaccountsetting`(`objid`,`item_objid`,`amount`) values ('COLLTYPE2045ca83:14081e65555:-7f89','BURIAL','50.00'),('COLLTYPE2045ca83:14081e65555:-7ff5','MARRIAGE','200.00'),('COLLTYPE4f0e1557:14081dd5988:-7f58','LCO','75.00'),('COLLTYPE4f0e1557:14081dd5988:-7fb5','LCT','100.00');

/*Table structure for table `sreaccount` */

DROP TABLE IF EXISTS `sreaccount`;

CREATE TABLE `sreaccount` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) default NULL,
  `state` varchar(10) default NULL,
  `chartid` varchar(50) default NULL,
  `code` varchar(50) default NULL,
  `title` varchar(255) default NULL,
  `type` varchar(20) default NULL,
  `acctgroup` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `NewIndex1` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sreaccount` */

/*Table structure for table `structure` */

DROP TABLE IF EXISTS `structure`;

CREATE TABLE `structure` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(10) NOT NULL default '' COMMENT 'DRAFT, APPROVED',
  `code` varchar(20) NOT NULL default '',
  `name` varchar(100) NOT NULL default '',
  `indexno` int(11) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_structure_code` (`code`),
  UNIQUE KEY `ux_structure_name` (`name`),
  KEY `ix_structure_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Data for the table `structure` */

insert  into `structure`(`objid`,`state`,`code`,`name`,`indexno`) values ('ST-360f8869:13e458d3a54:-7ff4','DRAFT','PA','PARTITION',1),('ST-783ccd0e:13e6d8c14f2:-7ff3','APPROVED','FO','FOUNDATION',2),('ST2c3114e7:13f9820caa5:-7ff4','DRAFT','FL','FLOOR',3);

/*Table structure for table `structurematerial` */

DROP TABLE IF EXISTS `structurematerial`;

CREATE TABLE `structurematerial` (
  `structure_objid` varchar(50) NOT NULL default '',
  `material_objid` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`structure_objid`,`material_objid`),
  KEY `FK_structurematerial_material` (`material_objid`),
  CONSTRAINT `FK_structurematerial_material` FOREIGN KEY (`material_objid`) REFERENCES `material` (`objid`),
  CONSTRAINT `FK_structurematerial_strucutre` FOREIGN KEY (`structure_objid`) REFERENCES `structure` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `structurematerial` */

insert  into `structurematerial`(`structure_objid`,`material_objid`) values ('ST-360f8869:13e458d3a54:-7ff4','MATdb590ee:13e459f92fb:-7ff3'),('ST-783ccd0e:13e6d8c14f2:-7ff3','MATdb590ee:13e459f92fb:-7ff4'),('ST-360f8869:13e458d3a54:-7ff4','MATfd25b:13e44bc4f63:-7ff7'),('ST2c3114e7:13f9820caa5:-7ff4','MATfd25b:13e44bc4f63:-7ff9');

/*Table structure for table `subdividedland` */

DROP TABLE IF EXISTS `subdividedland`;

CREATE TABLE `subdividedland` (
  `objid` varchar(50) NOT NULL,
  `subdivisionid` varchar(50) NOT NULL,
  `itemno` varchar(5) NOT NULL,
  `newtdno` varchar(25) default '',
  `newutdno` varchar(25) NOT NULL,
  `newpin` varchar(25) NOT NULL,
  `newtitletype` varchar(25) default NULL,
  `newtitleno` varchar(25) default NULL,
  `newtitledate` date default NULL,
  `areasqm` decimal(16,2) NOT NULL,
  `areaha` decimal(16,6) NOT NULL,
  `memoranda` varchar(2000) NOT NULL,
  `administrator_objid` varchar(50) default NULL,
  `administrator_name` varchar(150) default NULL,
  `administrator_address` varchar(100) default NULL,
  `taxpayer_objid` varchar(50) default '',
  `taxpayer_name` varchar(150) default '',
  `taxpayer_address` varchar(100) default '',
  `owner_name` varchar(1000) default '',
  `owner_address` varchar(100) default '',
  `newrpid` varchar(50) NOT NULL default '',
  `newrpuid` varchar(50) NOT NULL,
  `newfaasid` varchar(50) default '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_subdividedland_newutdno` (`newutdno`),
  KEY `FK_subdividedland_subdivision` (`subdivisionid`),
  KEY `FK_subdividedland_newrp` (`newrpid`),
  KEY `FK_subdividedland_newrpu` (`newrpuid`),
  KEY `FK_subdividedland_faas` (`newfaasid`),
  KEY `ix_subdividedland_newtdno` (`newtdno`),
  KEY `ix_subdividedland_newpin` (`newpin`),
  KEY `ix_subdividedland_administrator_name` (`administrator_name`),
  KEY `ix_subdividedland_taxpayer_name` (`taxpayer_name`),
  CONSTRAINT `FK_subdividedland_faas` FOREIGN KEY (`newfaasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_subdividedland_newrp` FOREIGN KEY (`newrpid`) REFERENCES `realproperty` (`objid`),
  CONSTRAINT `FK_subdividedland_newrpu` FOREIGN KEY (`newrpuid`) REFERENCES `rpu` (`objid`),
  CONSTRAINT `FK_subdividedland_subdivision` FOREIGN KEY (`subdivisionid`) REFERENCES `subdivision` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `subdividedland` */

/*Table structure for table `subdivision` */

DROP TABLE IF EXISTS `subdivision`;

CREATE TABLE `subdivision` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(20) NOT NULL,
  `ry` int(11) NOT NULL,
  `txntype_objid` varchar(5) NOT NULL default '',
  `txnno` varchar(10) NOT NULL,
  `txndate` date NOT NULL,
  `autonumber` int(11) NOT NULL,
  `effectivityyear` int(11) NOT NULL,
  `effectivityqtr` int(11) NOT NULL,
  `memoranda` varchar(2000) NOT NULL,
  `motherfaasid` varchar(50) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_subdivision_txnno` (`txnno`),
  KEY `FK_subdivision_faas` (`motherfaasid`),
  CONSTRAINT `FK_subdivision_faas` FOREIGN KEY (`motherfaasid`) REFERENCES `faas` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `subdivision` */

/*Table structure for table `subdivisionaffectedrpu` */

DROP TABLE IF EXISTS `subdivisionaffectedrpu`;

CREATE TABLE `subdivisionaffectedrpu` (
  `objid` varchar(50) NOT NULL,
  `subdivisionid` varchar(50) NOT NULL,
  `itemno` varchar(5) default '',
  `subdividedlandid` varchar(50) default '',
  `prevfaasid` varchar(50) NOT NULL,
  `newfaasid` varchar(50) default '',
  `newtdno` varchar(25) default '',
  `newutdno` varchar(25) NOT NULL,
  `newsuffix` int(11) NOT NULL,
  `newpin` varchar(25) default '',
  `newrpuid` varchar(50) default '',
  `newrpid` varchar(50) default NULL,
  `memoranda` varchar(2000) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_subdivisionaffectedrpu_newutdno` (`newutdno`),
  KEY `FK_subdivisionaffectedpru_subdivision` (`subdivisionid`),
  KEY `FK_subdivisionaffectedpru_subdividedland` (`subdividedlandid`),
  KEY `FK_subdivisionaffectedpru_prevfaas` (`prevfaasid`),
  KEY `FK_subdivisionaffectedpru_newfaas` (`newfaasid`),
  KEY `FK_subdivisionaffectedpru_newrpu` (`newrpuid`),
  KEY `ix_subdivisionaffectedrpu_newtdno` (`newtdno`),
  CONSTRAINT `FK_subdivisionaffectedpru_newfaas` FOREIGN KEY (`newfaasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_subdivisionaffectedpru_newrpu` FOREIGN KEY (`newrpuid`) REFERENCES `rpu` (`objid`),
  CONSTRAINT `FK_subdivisionaffectedpru_prevfaas` FOREIGN KEY (`prevfaasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_subdivisionaffectedpru_subdividedland` FOREIGN KEY (`subdividedlandid`) REFERENCES `subdividedland` (`objid`),
  CONSTRAINT `FK_subdivisionaffectedpru_subdivision` FOREIGN KEY (`subdivisionid`) REFERENCES `subdivision` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `subdivisionaffectedrpu` */

/*Table structure for table `sys_dataset` */

DROP TABLE IF EXISTS `sys_dataset`;

CREATE TABLE `sys_dataset` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(50) default NULL,
  `title` varchar(255) default NULL,
  `input` mediumtext,
  `output` mediumtext,
  `statement` varchar(50) default NULL,
  `datasource` varchar(50) default NULL,
  `servicename` varchar(50) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_dataset` */

/*Table structure for table `sys_org` */

DROP TABLE IF EXISTS `sys_org`;

CREATE TABLE `sys_org` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(50) default NULL,
  `orgclass` varchar(50) default NULL,
  `parentid` varchar(50) default NULL,
  `parentclass` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `idx_org_name` (`name`,`parentid`),
  KEY `FK_sys_org_orgclass` (`orgclass`),
  KEY `FK_sys_org` (`parentclass`),
  CONSTRAINT `FK_sys_org` FOREIGN KEY (`parentclass`) REFERENCES `sys_orgclass` (`name`),
  CONSTRAINT `FK_sys_org_orgclass` FOREIGN KEY (`orgclass`) REFERENCES `sys_orgclass` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_org` */

insert  into `sys_org`(`objid`,`name`,`orgclass`,`parentid`,`parentclass`) values ('169','ILIGAN CITY','CITY',NULL,NULL),('BRGY514f6587:1407632626e:-7ffc','ACMAC','BARANGAY','DIST514f6587:1407632626e:-7fff','DISTRICT'),('BRGY514f6587:1407632626e:-7ffd','ABUNO','BARANGAY','DIST514f6587:1407632626e:-7fff','DISTRICT'),('BRGY514f6587:1407632626e:-7ffe','POBLACION','BARANGAY','DIST514f6587:1407632626e:-7fff','DISTRICT'),('DIST-558fa87d:14094fe27c7:-7ff7','CITY HOSPITAL','DISTRICT',NULL,'CITY'),('DIST514f6587:1407632626e:-7fff','DISTRICT 00','DISTRICT','169','DISTRICT');

/*Table structure for table `sys_orgclass` */

DROP TABLE IF EXISTS `sys_orgclass`;

CREATE TABLE `sys_orgclass` (
  `name` varchar(50) NOT NULL,
  `title` varchar(255) default NULL,
  `childnodes` varchar(255) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_orgclass` */

insert  into `sys_orgclass`(`name`,`title`,`childnodes`) values ('BARANGAY','Barangay',NULL),('CITY','City','DISTRICT'),('DISTRICT','District','BARANGAY');

/*Table structure for table `sys_report` */

DROP TABLE IF EXISTS `sys_report`;

CREATE TABLE `sys_report` (
  `objid` varchar(50) default NULL,
  `reportfolderid` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `title` varchar(255) default NULL,
  `filetype` varchar(25) default NULL,
  `dtcreated` datetime default NULL,
  `createdby` varchar(50) default NULL,
  `datasetid` varchar(50) default NULL,
  KEY `FK_sys_report_entry_folder` (`reportfolderid`),
  KEY `FK_sys_report_dataset` (`datasetid`),
  CONSTRAINT `FK_sys_report_dataset` FOREIGN KEY (`datasetid`) REFERENCES `sys_dataset` (`objid`),
  CONSTRAINT `FK_sys_report_entry_folder` FOREIGN KEY (`reportfolderid`) REFERENCES `sys_report_folder` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_report` */

/*Table structure for table `sys_report_admin` */

DROP TABLE IF EXISTS `sys_report_admin`;

CREATE TABLE `sys_report_admin` (
  `objid` varchar(50) NOT NULL,
  `userid` varchar(50) default NULL,
  `reportfolderid` varchar(50) default NULL,
  `exclude` mediumtext,
  PRIMARY KEY  (`objid`),
  KEY `FK_sys_report_admin_folder` (`reportfolderid`),
  KEY `FK_sys_report_admin_user` (`userid`),
  CONSTRAINT `FK_sys_report_admin_folder` FOREIGN KEY (`reportfolderid`) REFERENCES `sys_report_folder` (`objid`),
  CONSTRAINT `FK_sys_report_admin_user` FOREIGN KEY (`userid`) REFERENCES `sys_user` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_report_admin` */

/*Table structure for table `sys_report_folder` */

DROP TABLE IF EXISTS `sys_report_folder`;

CREATE TABLE `sys_report_folder` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `parentid` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `idx_foldername` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_report_folder` */

/*Table structure for table `sys_report_member` */

DROP TABLE IF EXISTS `sys_report_member`;

CREATE TABLE `sys_report_member` (
  `objid` varchar(50) default NULL,
  `reportfolderid` varchar(50) default NULL,
  `userid` varchar(50) default NULL,
  `usergroupid` varchar(50) default NULL,
  `exclude` mediumtext,
  KEY `FK_sys_report_member_folder` (`reportfolderid`),
  KEY `FK_sys_report_member_user` (`userid`),
  KEY `FK_sys_report_member_usergroup` (`usergroupid`),
  CONSTRAINT `FK_sys_report_member_folder` FOREIGN KEY (`reportfolderid`) REFERENCES `sys_report_folder` (`objid`),
  CONSTRAINT `FK_sys_report_member_user` FOREIGN KEY (`userid`) REFERENCES `sys_user` (`objid`),
  CONSTRAINT `FK_sys_report_member_usergroup` FOREIGN KEY (`usergroupid`) REFERENCES `sys_usergroup` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_report_member` */

/*Table structure for table `sys_script` */

DROP TABLE IF EXISTS `sys_script`;

CREATE TABLE `sys_script` (
  `name` varchar(50) NOT NULL,
  `title` varbinary(255) default NULL,
  `content` mediumtext,
  `category` varchar(20) default NULL,
  `dtcreated` datetime default NULL,
  `createdby` varchar(50) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_script` */

/*Table structure for table `sys_securitygroup` */

DROP TABLE IF EXISTS `sys_securitygroup`;

CREATE TABLE `sys_securitygroup` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(50) default NULL,
  `usergroupid` varchar(50) default NULL,
  `exclude` varchar(255) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `idx_securitygroup_name` (`name`),
  KEY `FK_sys_securitygroup_usergroup` (`usergroupid`),
  CONSTRAINT `FK_sys_securitygroup_usergroup` FOREIGN KEY (`usergroupid`) REFERENCES `sys_usergroup` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_securitygroup` */

insert  into `sys_securitygroup`(`objid`,`name`,`usergroupid`,`exclude`) values ('ACCOUNTS-ACCOUNT_DATAMGMT','ACCOUNT DATAMGMT','ACCOUNT_DATAMGMT',NULL),('ACCOUNT_DATAMGMT','ACCOUNT DATA MANAGEMENT','ACCOUNT_DATAMGMT',NULL),('RPT-APPRAISER','APPRAISER','APPRAISER',NULL),('RPT-APPROVER','APPROVER','APPROVER',NULL),('RPT-ASSESSOR','ASSESSOR','ASSESSOR',NULL),('RPT-ASSESSOR-REPORT','ASSESSOR_REPORT','ASSESSOR_REPORT',NULL),('RPT-ASSESSOR-SHARED','ASSESSOR_SHARED','ASSESSOR_SHARED',NULL),('RPT-ASSESSOR_DATAMGMT','ASSESSOR_DATAMGMT','ASSESSOR_DATAMGMT',NULL),('RPT-CERTIFICATION_ISSUER','CERTIFICATION_ISSUER','CERTIFICATION_ISSUER',NULL),('RPT-LANDTAX','LANDTAX','LANDTAX',NULL),('RPT-LANDTAX-REPORT','LANDTAX_REPORT','LANDTAX_REPORT',NULL),('RPT-LANDTAX-SHARED','LANDTAX_SHARED','LANDTAX_SHARED',NULL),('RPT-LANDTAX_DATAMGMT','LANDTAX_DATAMGMT','LANDTAX_DATAMGMT',NULL),('RPT-RECOMMENDER','RECOMMENDER','RECOMMENDER',NULL),('RPT-RULE_AUTHOR','RULE_AUTHOR','RULE_AUTHOR',NULL),('RPT-TAXMAPPER','TAXMAPPER','TAXMAPPER',NULL),('TREASURY-AFO','AFO','AFO',NULL),('TREASURY-CASHIER','CASHIER','CASHIER',NULL),('TREASURY-COLLECTOR','COLLECTOR','COLLECTOR',NULL),('TREASURY-DATAMGMT-SG','TREASURY DATA MANAGEMENT','TREASURY_DATAMGMT',NULL),('TREASURY-LIQUIDATING_OFFICER','LIQUIDATING OFFICER','LIQUIDATING_OFFICER',NULL),('TREASURY-TREASURY_DATAMGMT','TREASURY DATAMGMT','TREASURY_DATAMGMT',NULL),('TREASURY-TREASURY_REPORT','TREASURY REPORT','TREASURY_REPORT',NULL),('TREASURY-TREASURY_SHARED','TREASURY SHARED','TREASURY_SHARED',NULL),('USG--5ee93442:14076ff4b09:-7fcd','SUBDIVISION/CONSOLIDATION_APPRAISER','APPRAISER','annotation.*|resection.*|cancelannotation.*|faas.*|faasupdate.*|noticeofassessment.*|cancelfaas.*');

/*Table structure for table `sys_securitygroup_copy` */

DROP TABLE IF EXISTS `sys_securitygroup_copy`;

CREATE TABLE `sys_securitygroup_copy` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(50) default NULL,
  `usergroupid` varchar(50) default NULL,
  `exclude` varchar(255) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `idx_securitygroup_name` (`name`),
  KEY `FK_sys_securitygroup_usergroup` (`usergroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_securitygroup_copy` */

insert  into `sys_securitygroup_copy`(`objid`,`name`,`usergroupid`,`exclude`) values ('RPT-APPRAISER','APPRAISER','APPRAISER',NULL),('RPT-APPROVER','APPROVER','APPROVER',NULL),('RPT-ASSESSOR','ASSESSOR','ASSESSOR',NULL),('RPT-ASSESSOR-REPORT','ASSESSOR_REPORT','ASSESSOR_REPORT',NULL),('RPT-ASSESSOR-SHARED','ASSESSOR_SHARED','ASSESSOR_SHARED',NULL),('RPT-ASSESSOR_DATAMGMT','ASSESSOR_DATAMGMT','ASSESSOR_DATAMGMT',NULL),('RPT-CERTIFICATION_ISSUER','CERTIFICATION_ISSUER','CERTIFICATION_ISSUER',NULL),('RPT-LANDTAX','LANDTAX','LANDTAX',NULL),('RPT-LANDTAX-REPORT','LANDTAX_REPORT','LANDTAX_REPORT',NULL),('RPT-LANDTAX-SHARED','LANDTAX_SHARED','LANDTAX_SHARED',NULL),('RPT-LANDTAX_DATAMGMT','LANDTAX_DATAMGMT','LANDTAX_DATAMGMT',NULL),('RPT-RECOMMENDER','RECOMMENDER','RECOMMENDER',NULL),('RPT-RULE_AUTHOR','RULE_AUTHOR','RULE_AUTHOR',NULL),('RPT-TAXMAPPER','TAXMAPPER','TAXMAPPER',NULL),('TREASURY-AFO','AFO','AFO',NULL),('TREASURY-CASHIER','CASHIER','CASHIER',NULL),('TREASURY-COLLECTOR','COLLECTOR','COLLECTOR',NULL),('TREASURY-LIQUIDATING_OFFICER','LIQUIDATING OFFICER','LIQUIDATING_OFFICER',NULL),('TREASURY-TREASURY_DATAMGMT','TREASURY DATAMGMT','TREASURY_DATAMGMT',NULL),('TREASURY-TREASURY_REPORT','TREASURY REPORT','TREASURY_REPORT',NULL),('TREASURY-TREASURY_SHARED','TREASURY SHARED','TREASURY_SHARED',NULL),('USG--5ee93442:14076ff4b09:-7fcd','SUBDIVISION/CONSOLIDATION_APPRAISER','APPRAISER','annotation.*|resection.*|cancelannotation.*|faas.*|faasupdate.*|noticeofassessment.*|cancelfaas.*');

/*Table structure for table `sys_sequence` */

DROP TABLE IF EXISTS `sys_sequence`;

CREATE TABLE `sys_sequence` (
  `objid` varchar(100) NOT NULL,
  `nextSeries` int(11) NOT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_sequence` */

insert  into `sys_sequence`(`objid`,`nextSeries`) values ('AFISSUE',44),('AFRCT',26),('DEP',3),('EMN',4),('ENTITY',7),('FAASAnnotation',2),('JZ',4),('LIQ',4),('REM',2),('RIS',72);

/*Table structure for table `sys_session` */

DROP TABLE IF EXISTS `sys_session`;

CREATE TABLE `sys_session` (
  `sessionid` varchar(50) NOT NULL,
  `userid` varchar(50) default NULL,
  `username` varchar(50) default NULL,
  `clienttype` varchar(12) default NULL,
  `accesstime` datetime default NULL,
  `accessexpiry` datetime default NULL,
  `timein` datetime default NULL,
  PRIMARY KEY  (`sessionid`),
  KEY `ix_userid` (`userid`),
  KEY `ix_username` (`username`),
  KEY `ix_timein` (`timein`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sys_session` */

insert  into `sys_session`(`sessionid`,`userid`,`username`,`clienttype`,`accesstime`,`accessexpiry`,`timein`) values ('SESS514f6587:1407632626e:-8000','SA','SA','desktop','2013-08-13 13:44:48',NULL,'2013-08-13 13:44:48'),('SESS514f6587:1407632626e:-7ff8','sa','sa','desktop','2013-08-13 14:43:19',NULL,'2013-08-13 14:43:19'),('SESS54128fea:14076ef5051:-8000','sa','sa','desktop','2013-08-13 17:11:10',NULL,'2013-08-13 17:11:10'),('SESS54128fea:14076ef5051:-7ffc','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-13 17:14:22',NULL,'2013-08-13 17:14:22'),('SESS54128fea:14076ef5051:-7ffa','sa','sa','desktop','2013-08-13 17:15:11',NULL,'2013-08-13 17:15:11'),('SESS54128fea:14076ef5051:-7ff9','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-13 17:22:43',NULL,'2013-08-13 17:22:43'),('SESS3fb6906a:14076fa7f09:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-13 17:23:22',NULL,'2013-08-13 17:23:22'),('SESS3fb6906a:14076fa7f09:-7fff','sa','sa','desktop','2013-08-13 17:24:02',NULL,'2013-08-13 17:24:02'),('SESS3fb6906a:14076fa7f09:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-13 17:24:54',NULL,'2013-08-13 17:24:54'),('SESS3fb6906a:14076fa7f09:-7ffd','sa','sa','desktop','2013-08-13 17:28:37',NULL,'2013-08-13 17:28:37'),('SESS3fb6906a:14076fa7f09:-7ffb','sa','sa','desktop','2013-08-13 17:32:05',NULL,'2013-08-13 17:32:05'),('SESS3fb6906a:14076fa7f09:-7ff9','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-13 17:32:32',NULL,'2013-08-13 17:32:32'),('SESS3a9af2fa:14077158c2b:-8000','sa','sa','desktop','2013-08-13 17:52:55',NULL,'2013-08-13 17:52:55'),('SESS3a9af2fa:14077158c2b:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-13 17:53:15',NULL,'2013-08-13 17:53:15'),('SESS3a9af2fa:14077158c2b:-7ffe','sa','sa','desktop','2013-08-13 17:55:05',NULL,'2013-08-13 17:55:05'),('SESS3a9af2fa:14077158c2b:-7ffd','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-13 17:56:14',NULL,'2013-08-13 17:56:14'),('SESS3a9af2fa:14077158c2b:-7ffc','sa','sa','desktop','2013-08-13 18:03:56',NULL,'2013-08-13 18:03:56'),('SESS-62f9d66a:14077243287:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-13 18:06:34',NULL,'2013-08-13 18:06:34'),('SESS3a9af2fa:14077158c2b:-7ffb','SA','SA','desktop','2013-08-13 18:08:10',NULL,'2013-08-13 18:08:10'),('SESS-36599a02:140772e649a:-8000','sa','sa','desktop','2013-08-13 18:20:04',NULL,'2013-08-13 18:20:04'),('SESS-36599a02:140772e649a:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-13 18:20:37',NULL,'2013-08-13 18:20:37'),('SESS4ad7a33d:1407735a9c7:-8000','sa','sa','desktop','2013-08-13 18:28:00',NULL,'2013-08-13 18:28:00'),('SESS4ad7a33d:1407735a9c7:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-13 18:28:53',NULL,'2013-08-13 18:28:53'),('SESS-68f678f8:14077389e55:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-13 18:31:14',NULL,'2013-08-13 18:31:14'),('SESS-68f678f8:14077389e55:-7fff','SA','SA','desktop','2013-08-13 18:33:07',NULL,'2013-08-13 18:33:07'),('SESS-68f678f8:14077389e55:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-13 18:34:38',NULL,'2013-08-13 18:34:38'),('SESS-68f678f8:14077389e55:-7ffd','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-13 18:34:51',NULL,'2013-08-13 18:34:51'),('SESS-68f678f8:14077389e55:-7ffc','SA','SA','desktop','2013-08-13 18:35:25',NULL,'2013-08-13 18:35:25'),('SESS-68f678f8:14077389e55:-7ffb','sa','sa','desktop','2013-08-13 18:36:17',NULL,'2013-08-13 18:36:17'),('SESS-68f678f8:14077389e55:-7ff9','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-13 18:36:51',NULL,'2013-08-13 18:36:51'),('SESS-68f678f8:14077389e55:-7ff7','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-13 18:40:57',NULL,'2013-08-13 18:40:57'),('SESS-68f678f8:14077389e55:-7ff6','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-13 18:41:42',NULL,'2013-08-13 18:41:42'),('SESS-68f678f8:14077389e55:-7ff5','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-13 18:42:30',NULL,'2013-08-13 18:42:30'),('SESS-68f678f8:14077389e55:-7ff4','sa','sa','desktop','2013-08-13 18:43:13',NULL,'2013-08-13 18:43:13'),('SESS-68f678f8:14077389e55:-7ff3','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-13 18:44:07',NULL,'2013-08-13 18:44:07'),('SESS-68f678f8:14077389e55:-7ff2','sa','sa','desktop','2013-08-13 18:45:12',NULL,'2013-08-13 18:45:12'),('SESS-68f678f8:14077389e55:-7ff1','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-13 18:45:54',NULL,'2013-08-13 18:45:54'),('SESS-68f678f8:14077389e55:-7ff0','sa','sa','desktop','2013-08-13 18:47:57',NULL,'2013-08-13 18:47:57'),('SESS7ea4ff3f:140774f67eb:-8000','sa','sa','desktop','2013-08-13 18:56:07',NULL,'2013-08-13 18:56:07'),('SESS7ea4ff3f:140774f67eb:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-13 21:02:32',NULL,'2013-08-13 21:02:32'),('SESS-792ce692:14077d19565:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-13 21:18:19',NULL,'2013-08-13 21:18:19'),('SESS570c25cb:14077ead4fd:-8000','sa','sa','desktop','2013-08-13 21:45:54',NULL,'2013-08-13 21:45:54'),('SESS570c25cb:14077ead4fd:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-13 21:49:21',NULL,'2013-08-13 21:49:21'),('SESS-102a861:1407a65e115:-8000','sa','sa','desktop','2013-08-14 09:17:09',NULL,'2013-08-14 09:17:09'),('SESS54f888e8:1407a677b25:-8000','sa','sa','desktop','2013-08-14 09:18:54',NULL,'2013-08-14 09:18:54'),('SESS-2f79ff74:1407b1365aa:-8000','sa','sa','desktop','2013-08-14 12:26:41',NULL,'2013-08-14 12:26:41'),('SESS-2f79ff74:1407b1365aa:-7fff','sa','sa','desktop','2013-08-14 12:27:20',NULL,'2013-08-14 12:27:20'),('SESS5ede041e:1407b4aafcf:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-14 13:27:03',NULL,'2013-08-14 13:27:03'),('SESS-6d27e9d5:1407b4fbc2b:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-14 13:32:34',NULL,'2013-08-14 13:32:34'),('SESS-6d27e9d5:1407b4fbc2b:-7ffd','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-14 13:41:05',NULL,'2013-08-14 13:41:05'),('SESS-7669a462:1407b5dcd89:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-14 13:47:56',NULL,'2013-08-14 13:47:56'),('SESS-7669a462:1407b5dcd89:-7fff','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-14 13:53:15',NULL,'2013-08-14 13:53:15'),('SESS2ba916c5:1407bb204d4:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-14 15:19:55',NULL,'2013-08-14 15:19:55'),('SESS2ba916c5:1407bb204d4:-7fff','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-14 15:24:37',NULL,'2013-08-14 15:24:37'),('SESS-186324f6:1407bb4bf79:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-14 15:25:18',NULL,'2013-08-14 15:25:18'),('SESS56f12bd5:1407bb9c731:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-14 15:28:24',NULL,'2013-08-14 15:28:24'),('SESS56f12bd5:1407bb9c731:-7fff','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-14 15:35:37',NULL,'2013-08-14 15:35:37'),('SESS-291a2184:1407bbe4c84:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-14 15:35:44',NULL,'2013-08-14 15:35:44'),('SESS56f12bd5:1407bb9c731:-7ffe','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-14 15:37:14',NULL,'2013-08-14 15:37:14'),('SESS-291a2184:1407bbe4c84:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-14 15:48:32',NULL,'2013-08-14 15:48:32'),('SESS-291a2184:1407bbe4c84:-7ffe','sa','sa','desktop','2013-08-14 15:50:23',NULL,'2013-08-14 15:50:23'),('SESS-291a2184:1407bbe4c84:-7ffd','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-14 15:51:27',NULL,'2013-08-14 15:51:27'),('SESS-291a2184:1407bbe4c84:-7fe4','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-14 16:24:51',NULL,'2013-08-14 16:24:51'),('SESS-35ae50ec:1407c0a6a98:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-14 16:56:29',NULL,'2013-08-14 16:56:29'),('SESS-15790b47:1407c45bcdc:-7fff','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-14 18:09:09',NULL,'2013-08-14 18:09:09'),('SESS4aa95cfd:1407c879b11:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-14 19:13:13',NULL,'2013-08-14 19:13:13'),('SESS4aa95cfd:1407c879b11:-7fff','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-14 19:14:27',NULL,'2013-08-14 19:14:27'),('SESS58c00f05:1407f855e39:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-15 09:09:36',NULL,'2013-08-15 09:09:36'),('SESS58c00f05:1407f855e39:-7fff','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-15 09:10:32',NULL,'2013-08-15 09:10:32'),('SESS58c00f05:1407f855e39:-7ffe','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-15 09:12:43',NULL,'2013-08-15 09:12:43'),('SESS58c00f05:1407f855e39:-7ffd','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-15 09:14:16',NULL,'2013-08-15 09:14:16'),('SESS58c00f05:1407f855e39:-7ffc','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-15 09:18:26',NULL,'2013-08-15 09:18:26'),('SESS2da7d916:1407f90e203:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 09:24:36',NULL,'2013-08-15 09:24:36'),('SESS2da7d916:1407f90e203:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 09:26:04',NULL,'2013-08-15 09:26:04'),('SESS2da7d916:1407f90e203:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 09:45:38',NULL,'2013-08-15 09:45:38'),('SESS4a2aaf0e:1407fac42cc:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 09:54:30',NULL,'2013-08-15 09:54:30'),('SESS-6d4372a7:1407fc31b36:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-15 10:17:02',NULL,'2013-08-15 10:17:02'),('SESS-6d4372a7:1407fc31b36:-7fff','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-15 10:17:52',NULL,'2013-08-15 10:17:52'),('SESS6851199e:1407fc48901:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 10:21:01',NULL,'2013-08-15 10:21:01'),('SESS6851199e:1407fc48901:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 10:22:51',NULL,'2013-08-15 10:22:51'),('SESS6851199e:1407fc48901:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 10:25:43',NULL,'2013-08-15 10:25:43'),('SESS268e4275:1407fccab62:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 10:29:54',NULL,'2013-08-15 10:29:54'),('SESS268e4275:1407fccab62:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 10:33:20',NULL,'2013-08-15 10:33:20'),('SESS-6d4372a7:1407fc31b36:-7ffe','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-15 10:35:54',NULL,'2013-08-15 10:35:54'),('SESS268e4275:1407fccab62:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 10:38:14',NULL,'2013-08-15 10:38:14'),('SESS-6d4372a7:1407fc31b36:-7ffd','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-15 10:43:47',NULL,'2013-08-15 10:43:47'),('SESS-6d4372a7:1407fc31b36:-7ffc','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-15 10:45:50',NULL,'2013-08-15 10:45:50'),('SESS268e4275:1407fccab62:-7ff5','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 11:03:18',NULL,'2013-08-15 11:03:18'),('SESS268e4275:1407fccab62:-7ff4','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 11:06:11',NULL,'2013-08-15 11:06:11'),('SESS5c2797:14080039912:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 11:29:54',NULL,'2013-08-15 11:29:54'),('SESS4b013d9e:140801ee946:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-15 11:57:19',NULL,'2013-08-15 11:57:19'),('SESS-70a61fad:1408073c666:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-15 13:30:00',NULL,'2013-08-15 13:30:00'),('SESS5d416d30:14080c372e6:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 14:59:28',NULL,'2013-08-15 14:59:28'),('SESS3094e696:14080cd668e:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-15 15:07:54',NULL,'2013-08-15 15:07:54'),('SESS72628a64:14080d3093c:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-15 15:14:04',NULL,'2013-08-15 15:14:04'),('SESS1ddedc6d:14080d2a6a6:-7ff8','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 15:16:42',NULL,'2013-08-15 15:16:42'),('SESS72628a64:14080d3093c:-7fff','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-15 15:16:43',NULL,'2013-08-15 15:16:43'),('SESS72628a64:14080d3093c:-7ffe','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-15 15:19:09',NULL,'2013-08-15 15:19:09'),('SESS72628a64:14080d3093c:-7ffd','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-15 15:21:12',NULL,'2013-08-15 15:21:12'),('SESS4e9d3ed8:14080dfb1ca:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-15 15:27:53',NULL,'2013-08-15 15:27:53'),('SESS-5e1cacea:14080f6ab0b:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 15:55:25',NULL,'2013-08-15 15:55:25'),('SESS-5e1cacea:14080f6ab0b:-7fff','sa','sa','desktop','2013-08-15 16:03:40',NULL,'2013-08-15 16:03:40'),('SESS-5e1cacea:14080f6ab0b:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 16:06:25',NULL,'2013-08-15 16:06:25'),('SESS-5e1cacea:14080f6ab0b:-7ffd','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 16:10:58',NULL,'2013-08-15 16:10:58'),('SESS-61ef3b86:140810894f5:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 16:14:59',NULL,'2013-08-15 16:14:59'),('SESS-61ef3b86:140810894f5:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 16:15:46',NULL,'2013-08-15 16:15:46'),('SESS-61ef3b86:140810894f5:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 16:17:10',NULL,'2013-08-15 16:17:10'),('SESS-61ef3b86:140810894f5:-7ffd','sa','sa','desktop','2013-08-15 16:18:05',NULL,'2013-08-15 16:18:05'),('SESS-61ef3b86:140810894f5:-7ffc','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 16:21:03',NULL,'2013-08-15 16:21:03'),('SESS-61ef3b86:140810894f5:-7ffb','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 16:23:43',NULL,'2013-08-15 16:23:43'),('SESS-61ef3b86:140810894f5:-7fe6','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 16:25:21',NULL,'2013-08-15 16:25:21'),('SESS-61ef3b86:140810894f5:-7fd1','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 16:38:22',NULL,'2013-08-15 16:38:22'),('SESS-61ef3b86:140810894f5:-7fd0','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 16:41:41',NULL,'2013-08-15 16:41:41'),('SESS-d4053ce:140812a2cdc:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 16:57:27',NULL,'2013-08-15 16:57:27'),('SESS-1c047076:14081328243:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 17:00:47',NULL,'2013-08-15 17:00:47'),('SESS-1c047076:14081328243:-7ffd','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 17:06:25',NULL,'2013-08-15 17:06:25'),('SESS-1c047076:14081328243:-7ffb','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 17:08:23',NULL,'2013-08-15 17:08:23'),('SESS-1c047076:14081328243:-7e60','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 17:36:47',NULL,'2013-08-15 17:36:47'),('SESS-1c047076:14081328243:-7e5c','USR-33ef8a41:1407ccf0e0e:-7ff9','COLL','desktop','2013-08-15 17:40:51',NULL,'2013-08-15 17:40:51'),('SESS-1c047076:14081328243:-7e58','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 17:43:08',NULL,'2013-08-15 17:43:08'),('SESS-5bc32c45:140817599fa:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 18:23:44',NULL,'2013-08-15 18:23:44'),('SESS-5bc32c45:140817599fa:-7ffc','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 18:41:36',NULL,'2013-08-15 18:41:36'),('SESS-5bc32c45:140817599fa:-7ffb','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 18:47:59',NULL,'2013-08-15 18:47:59'),('SESS-5bc32c45:140817599fa:-7ffa','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 18:49:41',NULL,'2013-08-15 18:49:41'),('SESS-5bc32c45:140817599fa:-7ff9','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 18:52:15',NULL,'2013-08-15 18:52:15'),('SESS-4b0b2b26:14081a24505:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 19:02:51',NULL,'2013-08-15 19:02:51'),('SESS-4b0b2b26:14081a24505:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 19:07:46',NULL,'2013-08-15 19:07:46'),('SESS-4b0b2b26:14081a24505:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 19:08:55',NULL,'2013-08-15 19:08:55'),('SESS-4b0b2b26:14081a24505:-7ffd','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 19:10:20',NULL,'2013-08-15 19:10:20'),('SESS-4b0b2b26:14081a24505:-7ffc','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 19:12:25',NULL,'2013-08-15 19:12:25'),('SESS60986dcb:14081dbdacf:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 20:05:46',NULL,'2013-08-15 20:05:46'),('SESS60986dcb:14081dbdacf:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 20:07:23',NULL,'2013-08-15 20:07:23'),('SESS60986dcb:14081dbdacf:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 20:17:12',NULL,'2013-08-15 20:17:12'),('SESS-30c32f05:14081ff295c:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 20:44:20',NULL,'2013-08-15 20:44:20'),('SESS-7a5d0699:1408202ed2f:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 20:48:26',NULL,'2013-08-15 20:48:26'),('SESS1a1f583d:1408212f833:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-15 21:05:58',NULL,'2013-08-15 21:05:58'),('SESS-6458e98:14084ec53c6:-8000','sa','sa','desktop','2013-08-16 10:20:08',NULL,'2013-08-16 10:20:08'),('SESS-6458e98:14084ec53c6:-7ffe','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-16 10:21:48',NULL,'2013-08-16 10:21:48'),('SESS-77c31bdd:140851314dc:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 11:04:56',NULL,'2013-08-16 11:04:56'),('SESS-77c31bdd:140851314dc:-7ffd','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 11:09:02',NULL,'2013-08-16 11:09:02'),('SESS-77c31bdd:140851314dc:-7ffa','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 11:11:03',NULL,'2013-08-16 11:11:03'),('SESS-6d724133:140851f7edb:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 11:18:29',NULL,'2013-08-16 11:18:29'),('SESS-6d724133:140851f7edb:-7ffd','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 11:23:59',NULL,'2013-08-16 11:23:59'),('SESS-68a687be:1408528dee8:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 11:28:44',NULL,'2013-08-16 11:28:44'),('SESS-68a687be:1408528dee8:-7ff4','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 11:44:12',NULL,'2013-08-16 11:44:12'),('SESS214db19c:140854619de:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 12:00:40',NULL,'2013-08-16 12:00:40'),('SESS214db19c:140854619de:-7ffe','sa','sa','desktop','2013-08-16 12:02:46',NULL,'2013-08-16 12:02:46'),('SESS214db19c:140854619de:-7ffd','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 12:49:30',NULL,'2013-08-16 12:49:30'),('SESS214db19c:140854619de:-7ffb','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 12:54:40',NULL,'2013-08-16 12:54:40'),('SESS214db19c:140854619de:-7fef','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 13:05:30',NULL,'2013-08-16 13:05:30'),('SESS214db19c:140854619de:-7fed','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 13:06:31',NULL,'2013-08-16 13:06:31'),('SESS214db19c:140854619de:-7feb','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 13:07:58',NULL,'2013-08-16 13:07:58'),('SESS214db19c:140854619de:-7fe9','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 13:11:31',NULL,'2013-08-16 13:11:31'),('SESS214db19c:140854619de:-7fe7','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 13:14:30',NULL,'2013-08-16 13:14:30'),('SESS214db19c:140854619de:-7fe5','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 13:20:14',NULL,'2013-08-16 13:20:14'),('SESS214db19c:140854619de:-7fe3','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 13:22:26',NULL,'2013-08-16 13:22:26'),('SESS214db19c:140854619de:-7fe1','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 13:23:56',NULL,'2013-08-16 13:23:56'),('SESS7e52072d:14085945062:-8000','sa','sa','desktop','2013-08-16 13:25:16',NULL,'2013-08-16 13:25:16'),('SESS214db19c:140854619de:-7fdf','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 13:26:44',NULL,'2013-08-16 13:26:44'),('SESS7e52072d:14085945062:-7fff','sa','sa','desktop','2013-08-16 13:27:18',NULL,'2013-08-16 13:27:18'),('SESS7e52072d:14085945062:-7ffd','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-16 13:27:43',NULL,'2013-08-16 13:27:43'),('SESS-7bc94792:14085aa03b7:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 13:49:48',NULL,'2013-08-16 13:49:48'),('SESS-7bc94792:14085aa03b7:-7ffc','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 13:53:35',NULL,'2013-08-16 13:53:35'),('SESS-7bc94792:14085aa03b7:-7fd9','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 14:00:21',NULL,'2013-08-16 14:00:21'),('SESS19aafa05:14085b6ed83:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 14:03:54',NULL,'2013-08-16 14:03:54'),('SESS-74a680c:14085bce9bb:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 14:10:26',NULL,'2013-08-16 14:10:26'),('SESS550ead35:14085acb7c8:-7fff','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-16 14:17:33',NULL,'2013-08-16 14:17:33'),('SESS550ead35:14085acb7c8:-7ffe','SA','SA','desktop','2013-08-16 14:17:44',NULL,'2013-08-16 14:17:44'),('SESS550ead35:14085acb7c8:-7ffd','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-16 14:19:15',NULL,'2013-08-16 14:19:15'),('SESS60daccd9:14085ca58d8:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 14:25:07',NULL,'2013-08-16 14:25:07'),('SESS37864fee:14085cd61eb:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 14:28:26',NULL,'2013-08-16 14:28:26'),('SESS-161806cc:14085d0c280:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 14:32:07',NULL,'2013-08-16 14:32:07'),('SESS-689e31c8:14085da4ceb:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-16 14:40:04',NULL,'2013-08-16 14:40:04'),('SESS-51574869:14085dd6c80:-7ffc','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 14:48:31',NULL,'2013-08-16 14:48:31'),('SESS-51574869:14085dd6c80:-7ff6','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 14:55:44',NULL,'2013-08-16 14:55:44'),('SESS-51574869:14085dd6c80:-7feb','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 14:57:40',NULL,'2013-08-16 14:57:40'),('SESS3bb88d9a:14085ee6124:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 15:04:28',NULL,'2013-08-16 15:04:28'),('SESS-104bf350:14085ef52e6:-8000','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-16 15:04:40',NULL,'2013-08-16 15:04:40'),('SESS1e5740b1:14085fe06d2:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-16 15:19:06',NULL,'2013-08-16 15:19:06'),('SESS555d888f:140860066a1:-8000','sa','sa','desktop','2013-08-16 15:24:09',NULL,'2013-08-16 15:24:09'),('SESS3a199577:14086016883:-7fff','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-16 15:24:57',NULL,'2013-08-16 15:24:57'),('SESS555d888f:140860066a1:-7ffe','sa','sa','desktop','2013-08-16 15:39:03',NULL,'2013-08-16 15:39:03'),('SESS555d888f:140860066a1:-7ffb','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 15:42:09',NULL,'2013-08-16 15:42:09'),('SESS-1688358a:140860826e5:-7fff','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-16 15:42:59',NULL,'2013-08-16 15:42:59'),('SESS555d888f:140860066a1:-7ffa','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 15:53:19',NULL,'2013-08-16 15:53:19'),('SESS555d888f:140860066a1:-7ff9','sa','sa','desktop','2013-08-16 15:55:27',NULL,'2013-08-16 15:55:27'),('SESS555d888f:140860066a1:-7ff8','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 15:57:47',NULL,'2013-08-16 15:57:47'),('SESS555d888f:140860066a1:-7ff7','sa','sa','desktop','2013-08-16 16:07:58',NULL,'2013-08-16 16:07:58'),('SESS-6422e2e5:140862c4b1b:-8000','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-16 16:11:16',NULL,'2013-08-16 16:11:16'),('SESS-636943a6:140860f0f3d:-7ffd','sa','sa','desktop','2013-08-16 16:13:36',NULL,'2013-08-16 16:13:36'),('SESS795f225c:14086346293:-8000','SA','SA','desktop','2013-08-16 16:18:28',NULL,'2013-08-16 16:18:28'),('SESS795f225c:14086346293:-7fff','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-16 16:20:04',NULL,'2013-08-16 16:20:04'),('SESS795f225c:14086346293:-7ffe','sa','sa','desktop','2013-08-16 16:20:23',NULL,'2013-08-16 16:20:23'),('SESS-5e12366a:140865c058e:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-16 17:01:46',NULL,'2013-08-16 17:01:46'),('SESS-5e12366a:140865c058e:-7ffe','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-16 17:03:15',NULL,'2013-08-16 17:03:15'),('SESS-76f37105:1408667f790:-8000','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-16 17:16:27',NULL,'2013-08-16 17:16:27'),('SESS-7012bd14:140866c4fa7:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 17:22:02',NULL,'2013-08-16 17:22:02'),('SESS2a0c5aec:140867cac97:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 17:39:54',NULL,'2013-08-16 17:39:54'),('SESS2a0c5aec:140867cac97:-7ffc','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 18:02:20',NULL,'2013-08-16 18:02:20'),('SESS-6a33bfe5:14086a37365:-8000','sa','sa','desktop','2013-08-16 18:19:53',NULL,'2013-08-16 18:19:53'),('SESS-6a33bfe5:14086a37365:-7ffe','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-16 18:20:58',NULL,'2013-08-16 18:20:58'),('SESS357e8a0b:14086a36f33:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 18:22:15',NULL,'2013-08-16 18:22:15'),('SESS357e8a0b:14086a36f33:-7ffd','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 18:31:41',NULL,'2013-08-16 18:31:41'),('SESS357e8a0b:14086a36f33:-7ffc','SA','SA','desktop','2013-08-16 18:37:05',NULL,'2013-08-16 18:37:05'),('SESS357e8a0b:14086a36f33:-7ffb','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 18:37:45',NULL,'2013-08-16 18:37:45'),('SESS357e8a0b:14086a36f33:-7fe7','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 18:58:04',NULL,'2013-08-16 18:58:04'),('SESS357e8a0b:14086a36f33:-7fe6','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 19:00:37',NULL,'2013-08-16 19:00:37'),('SESSf20dfda:14086dde898:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 19:26:07',NULL,'2013-08-16 19:26:07'),('SESS-602b65d0:14086ed601a:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-16 19:43:01',NULL,'2013-08-16 19:43:01'),('SESS-62f2d321:14089f25e7f:-8000','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 09:46:29',NULL,'2013-08-17 09:46:29'),('SESS-62f2d321:14089f25e7f:-7fff','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 09:56:26',NULL,'2013-08-17 09:56:26'),('SESS-63006d4a:1408a09e657:-8000','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 10:12:11',NULL,'2013-08-17 10:12:11'),('SESS4fbff9c8:1408a0a4009:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 10:13:23',NULL,'2013-08-17 10:13:23'),('SESS34048fcd:1408a0c82dc:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 10:13:29',NULL,'2013-08-17 10:13:29'),('SESS-63ff08fa:1408a1284df:-8000','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 10:21:36',NULL,'2013-08-17 10:21:36'),('SESS-3cc31781:1408a1689f3:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 10:26:49',NULL,'2013-08-17 10:26:49'),('SESS1827c3dd:1408a1fb995:-8000','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 10:36:02',NULL,'2013-08-17 10:36:02'),('SESS49327f53:1408a259ac9:-8000','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 10:42:27',NULL,'2013-08-17 10:42:27'),('SESS6934ce66:1408a28c7bc:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 10:44:21',NULL,'2013-08-17 10:44:21'),('SESS-26b3a92f:1408a2a334f:-7ffe','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 10:51:35',NULL,'2013-08-17 10:51:35'),('SESS421ab156:1408a3a1a97:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 11:03:17',NULL,'2013-08-17 11:03:17'),('SESS32ed23c:1408a3f17da:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 11:08:37',NULL,'2013-08-17 11:08:37'),('SESS-4ffa2ec0:1408a3e320f:-8000','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 11:09:19',NULL,'2013-08-17 11:09:19'),('SESSad0a27a:1408a43ff8e:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 11:13:59',NULL,'2013-08-17 11:13:59'),('SESS-3b93cca:1408a423e61:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 11:14:33',NULL,'2013-08-17 11:14:33'),('SESS-3b93cca:1408a423e61:-7ffc','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 11:51:31',NULL,'2013-08-17 11:51:31'),('SESS6db17ec2:1408a68d1da:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 11:54:19',NULL,'2013-08-17 11:54:19'),('SESS-b7446a1:1408a69c7c1:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 11:55:22',NULL,'2013-08-17 11:55:22'),('SESS1aba288f:1408a6d372d:-7ffe','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 12:00:02',NULL,'2013-08-17 12:00:02'),('SESS-b7446a1:1408a69c7c1:-7ff7','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 12:00:03',NULL,'2013-08-17 12:00:03'),('SESS-b7446a1:1408a69c7c1:-7ff2','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 12:02:39',NULL,'2013-08-17 12:02:39'),('SESS-5ccc6fc:1408a723e70:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 12:04:36',NULL,'2013-08-17 12:04:36'),('SESS-5ccc6fc:1408a723e70:-7ffd','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 12:05:20',NULL,'2013-08-17 12:05:20'),('SESS-3b93cca:1408a423e61:-7ff0','sa','sa','desktop','2013-08-17 12:06:59',NULL,'2013-08-17 12:06:59'),('SESS-3b93cca:1408a423e61:-7fee','USR25a31acd:1408a64167e:-7fbb','PP','desktop','2013-08-17 12:08:01',NULL,'2013-08-17 12:08:01'),('SESS-5ccc6fc:1408a723e70:-7ffa','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 12:08:50',NULL,'2013-08-17 12:08:50'),('SESS1aba288f:1408a6d372d:-7ff5','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 12:10:56',NULL,'2013-08-17 12:10:56'),('SESS-3b93cca:1408a423e61:-7fec','USR25a31acd:1408a64167e:-7fbb','PP','desktop','2013-08-17 12:12:47',NULL,'2013-08-17 12:12:47'),('SESS1aba288f:1408a6d372d:-7ff1','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 12:13:36',NULL,'2013-08-17 12:13:36'),('SESS1aba288f:1408a6d372d:-7fea','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 12:20:11',NULL,'2013-08-17 12:20:11'),('SESS1aba288f:1408a6d372d:-7fe4','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 12:24:28',NULL,'2013-08-17 12:24:28'),('SESS1aba288f:1408a6d372d:-7fe3','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 12:26:40',NULL,'2013-08-17 12:26:40'),('SESS1aba288f:1408a6d372d:-7fe2','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 12:27:29',NULL,'2013-08-17 12:27:29'),('SESS1aba288f:1408a6d372d:-7fe1','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 12:29:41',NULL,'2013-08-17 12:29:41'),('SESS1aba288f:1408a6d372d:-7fe0','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 12:31:19',NULL,'2013-08-17 12:31:19'),('SESS37bcdd7f:1408a8b74b1:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 12:32:08',NULL,'2013-08-17 12:32:08'),('SESS-3b93cca:1408a423e61:-7f9a','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 12:33:00',NULL,'2013-08-17 12:33:00'),('SESS-490e7532:1408aa8f801:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 13:04:23',NULL,'2013-08-17 13:04:23'),('SESS236ab9d0:1408aaa244b:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 13:05:33',NULL,'2013-08-17 13:05:33'),('SESS-1da92252:1408aac1bbc:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 13:10:11',NULL,'2013-08-17 13:10:11'),('SESS-2e97af07:1408ab312cc:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 13:15:18',NULL,'2013-08-17 13:15:18'),('SESS-2d479fca:1408ab4665b:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 13:16:52',NULL,'2013-08-17 13:16:52'),('SESS-e97c5bc:1408abcc60f:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 13:25:54',NULL,'2013-08-17 13:25:54'),('SESS4db35d17:1408abebe4e:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 13:28:10',NULL,'2013-08-17 13:28:10'),('SESS-e97c5bc:1408abcc60f:-7fff','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 13:28:27',NULL,'2013-08-17 13:28:27'),('SESS-cea39f8:1408ac46936:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 13:34:21',NULL,'2013-08-17 13:34:21'),('SESS-e97c5bc:1408abcc60f:-7ffc','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 13:44:52',NULL,'2013-08-17 13:44:52'),('SESS-e97c5bc:1408abcc60f:-7ff7','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 13:46:38',NULL,'2013-08-17 13:46:38'),('SESS-cea39f8:1408ac46936:-7ffb','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 13:49:59',NULL,'2013-08-17 13:49:59'),('SESS-6dfeddd5:1408ad531d6:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 13:52:34',NULL,'2013-08-17 13:52:34'),('SESS-cea39f8:1408ac46936:-7ff6','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 13:53:26',NULL,'2013-08-17 13:53:26'),('SESS-6dfeddd5:1408ad531d6:-7fff','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 13:55:38',NULL,'2013-08-17 13:55:38'),('SESS1d3f248f:1408ad823bf:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 13:58:17',NULL,'2013-08-17 13:58:17'),('SESS-4a9f6b9d:1408ae02685:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 14:04:39',NULL,'2013-08-17 14:04:39'),('SESS6443e7c8:1408ae57a7f:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 14:10:28',NULL,'2013-08-17 14:10:28'),('SESS6443e7c8:1408ae57a7f:-7fff','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 14:13:43',NULL,'2013-08-17 14:13:43'),('SESS-6dfeddd5:1408ad531d6:-7ffe','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 14:15:06',NULL,'2013-08-17 14:15:06'),('SESS46512356:1408aec3ba1:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 14:17:51',NULL,'2013-08-17 14:17:51'),('SESS-62c4d6ab:1408aeee3b7:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 14:20:45',NULL,'2013-08-17 14:20:45'),('SESS-1352f24c:1408aeeaa9c:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 14:22:53',NULL,'2013-08-17 14:22:53'),('SESS-1352f24c:1408aeeaa9c:-7fcb','sa','sa','desktop','2013-08-17 14:25:49',NULL,'2013-08-17 14:25:49'),('SESS-1352f24c:1408aeeaa9c:-7fca','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 14:26:15',NULL,'2013-08-17 14:26:15'),('SESS-6dfeddd5:1408ad531d6:-7ffd','sa','sa','desktop','2013-08-17 14:26:31',NULL,'2013-08-17 14:26:31'),('SESS-b927f03:1408af52cac:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 14:27:37',NULL,'2013-08-17 14:27:37'),('SESS60f9bf8a:1408af51bf9:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 14:29:56',NULL,'2013-08-17 14:29:56'),('SESS-7e77a893:1408af7c986:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 14:30:28',NULL,'2013-08-17 14:30:28'),('SESS-6dfeddd5:1408ad531d6:-7ffc','sa','sa','desktop','2013-08-17 14:30:33',NULL,'2013-08-17 14:30:33'),('SESS4b04d610:1408affee41:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 14:39:22',NULL,'2013-08-17 14:39:22'),('SESS89e7005:1408afec09e:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 14:40:28',NULL,'2013-08-17 14:40:28'),('SESS89e7005:1408afec09e:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 14:41:03',NULL,'2013-08-17 14:41:03'),('SESS1032a276:1408b01379f:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 14:43:09',NULL,'2013-08-17 14:43:09'),('SESS6003a4b5:1408b0b260f:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 14:51:30',NULL,'2013-08-17 14:51:30'),('SESS6003a4b5:1408b0b260f:-7fff','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 14:52:38',NULL,'2013-08-17 14:52:38'),('SESS6003a4b5:1408b0b260f:-7ffe','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 14:54:11',NULL,'2013-08-17 14:54:11'),('SESS32e7a4c:1408b138550:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 15:00:39',NULL,'2013-08-17 15:00:39'),('SESS-7c4df31c:1408b1489a4:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 15:01:46',NULL,'2013-08-17 15:01:46'),('SESS-47f21b5:1408b153e21:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 15:02:32',NULL,'2013-08-17 15:02:32'),('SESS4ab61b96:1408b226347:-8000','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 15:18:34',NULL,'2013-08-17 15:18:34'),('SESS4ab61b96:1408b226347:-7fff','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 15:21:57',NULL,'2013-08-17 15:21:57'),('SESS4ab61b96:1408b226347:-7ffe','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 15:23:08',NULL,'2013-08-17 15:23:08'),('SESS4ab61b96:1408b226347:-7ffd','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 15:24:29',NULL,'2013-08-17 15:24:29'),('SESS4ab61b96:1408b226347:-7ffc','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 15:25:22',NULL,'2013-08-17 15:25:22'),('SESS2ce75f50:1408b31635c:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 15:35:46',NULL,'2013-08-17 15:35:46'),('SESS3f3ec8a9:1408b35ebc4:-7fff','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 15:38:34',NULL,'2013-08-17 15:38:34'),('SESS4b04d610:1408affee41:-7ffe','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 15:41:14',NULL,'2013-08-17 15:41:14'),('SESS4ab61b96:1408b226347:-7ffb','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 15:42:53',NULL,'2013-08-17 15:42:53'),('SESS1542f8c3:1408b3ab07a:-8000','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-17 15:43:26',NULL,'2013-08-17 15:43:26'),('SESS4ab61b96:1408b226347:-7ffa','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 15:43:47',NULL,'2013-08-17 15:43:47'),('SESS1542f8c3:1408b3ab07a:-7ffd','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 15:43:49',NULL,'2013-08-17 15:43:49'),('SESS4ab61b96:1408b226347:-7ff9','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 15:44:52',NULL,'2013-08-17 15:44:52'),('SESS394ca86:1408b3b65dc:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 15:46:42',NULL,'2013-08-17 15:46:42'),('SESS4ab61b96:1408b226347:-7ff8','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 15:46:49',NULL,'2013-08-17 15:46:49'),('SESS394ca86:1408b3b65dc:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 15:48:24',NULL,'2013-08-17 15:48:24'),('SESS2dfdb54d:1408b436f8d:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 15:55:29',NULL,'2013-08-17 15:55:29'),('SESS-3ed9e4d0:1408b48cd11:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 15:58:51',NULL,'2013-08-17 15:58:51'),('SESS1c388917:1408b499766:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 16:02:13',NULL,'2013-08-17 16:02:13'),('SESS1c388917:1408b499766:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 16:08:25',NULL,'2013-08-17 16:08:25'),('SESS1c388917:1408b499766:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 16:09:20',NULL,'2013-08-17 16:09:20'),('SESS4ab61b96:1408b226347:-7ff3','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 16:14:18',NULL,'2013-08-17 16:14:18'),('SESS-6c2cb666:1408b54d103:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 16:14:28',NULL,'2013-08-17 16:14:28'),('SESS4ab61b96:1408b226347:-7ff2','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 16:20:19',NULL,'2013-08-17 16:20:19'),('SESS-5e1e9cf2:1408b5e0a88:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 16:22:03',NULL,'2013-08-17 16:22:03'),('SESS-7fad1305:1408b5ee3a5:-8000','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 16:24:39',NULL,'2013-08-17 16:24:39'),('SESS-7fad1305:1408b5ee3a5:-7fea','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 16:26:12',NULL,'2013-08-17 16:26:12'),('SESS-7fad1305:1408b5ee3a5:-7fe6','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 16:28:35',NULL,'2013-08-17 16:28:35'),('SESS-473a8e65:1408b66193a:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 16:33:21',NULL,'2013-08-17 16:33:21'),('SESS-519537a7:1408b691e5a:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 16:34:09',NULL,'2013-08-17 16:34:09'),('SESS-7fad1305:1408b5ee3a5:-7fdf','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 16:39:05',NULL,'2013-08-17 16:39:05'),('SESS-7fad1305:1408b5ee3a5:-7fda','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 16:41:40',NULL,'2013-08-17 16:41:40'),('SESS-7fad1305:1408b5ee3a5:-7fd5','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 16:45:26',NULL,'2013-08-17 16:45:26'),('SESS-7fad1305:1408b5ee3a5:-7fd0','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 16:46:32',NULL,'2013-08-17 16:46:32'),('SESS-b2d09da:1408b7604c8:-8000','sa','sa','desktop','2013-08-17 16:48:14',NULL,'2013-08-17 16:48:14'),('SESS-b2d09da:1408b7604c8:-7fff','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 16:48:46',NULL,'2013-08-17 16:48:46'),('SESS-473a8e65:1408b66193a:-7ff2','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 16:49:24',NULL,'2013-08-17 16:49:24'),('SESS-460cf90c:1408b790800:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 16:51:32',NULL,'2013-08-17 16:51:32'),('SESS7f692dd4:1408b7b1e29:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 16:53:49',NULL,'2013-08-17 16:53:49'),('SESS7f692dd4:1408b7b1e29:-7fff','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 16:56:41',NULL,'2013-08-17 16:56:41'),('SESS-3fa3927a:1408b80855e:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 16:59:43',NULL,'2013-08-17 16:59:43'),('SESS-115fb7c:1408b89d820:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 17:09:54',NULL,'2013-08-17 17:09:54'),('SESS-473a8e65:1408b66193a:-7fdb','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 17:10:09',NULL,'2013-08-17 17:10:09'),('SESS-473a8e65:1408b66193a:-7fc7','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 17:18:42',NULL,'2013-08-17 17:18:42'),('SESS-c500d5c:1408b95b0af:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 17:22:56',NULL,'2013-08-17 17:22:56'),('SESS-c500d5c:1408b95b0af:-7fff','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 17:24:52',NULL,'2013-08-17 17:24:52'),('SESS-72b6eaf4:1408b9a0a26:-8000','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 17:29:15',NULL,'2013-08-17 17:29:15'),('SESS-72b6eaf4:1408b9a0a26:-7fff','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 17:31:02',NULL,'2013-08-17 17:31:02'),('SESS-982c808:1408b9f20d5:-8000','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 17:34:49',NULL,'2013-08-17 17:34:49'),('SESS-982c808:1408b9f20d5:-7fff','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 17:36:51',NULL,'2013-08-17 17:36:51'),('SESS-982c808:1408b9f20d5:-7ffe','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 17:39:29',NULL,'2013-08-17 17:39:29'),('SESS-26d9c4df:1408ba52ec4:-8000','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 17:41:26',NULL,'2013-08-17 17:41:26'),('SESS-26d9c4df:1408ba52ec4:-7fff','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 17:43:56',NULL,'2013-08-17 17:43:56'),('SESS-22fecf7a:1408baa94b5:-7fff','USR-33ef8a41:1407ccf0e0e:-7ff9','COLL','desktop','2013-08-17 17:48:39',NULL,'2013-08-17 17:48:39'),('SESS-1d63c4c2:1408bad6bd7:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 17:48:53',NULL,'2013-08-17 17:48:53'),('SESS-1d63c4c2:1408bad6bd7:-7fff','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 17:50:22',NULL,'2013-08-17 17:50:22'),('SESS-22fecf7a:1408baa94b5:-7ffb','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 18:03:55',NULL,'2013-08-17 18:03:55'),('SESS4dd85cf2:1408bbf9e4c:-8000','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 18:10:18',NULL,'2013-08-17 18:10:18'),('SESS4dd85cf2:1408bbf9e4c:-7fff','USR-5ee93442:14076ff4b09:-7f28','AR','desktop','2013-08-17 18:12:33',NULL,'2013-08-17 18:12:33'),('SESS-1b337267:1408bc55e36:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 18:14:55',NULL,'2013-08-17 18:14:55'),('SESS-7b1b2a1a:1408bcd7ea8:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 18:23:47',NULL,'2013-08-17 18:23:47'),('SESS2409a76a:1408bcdbac3:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-17 18:24:10',NULL,'2013-08-17 18:24:10'),('SESS-22fecf7a:1408baa94b5:-7ff9','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 18:36:10',NULL,'2013-08-17 18:36:10'),('SESS-22fecf7a:1408baa94b5:-7ff8','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 18:46:26',NULL,'2013-08-17 18:46:26'),('SESS60baeb2d:1408be34fa1:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 18:47:37',NULL,'2013-08-17 18:47:37'),('SESS-22fecf7a:1408baa94b5:-7ff7','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 18:48:38',NULL,'2013-08-17 18:48:38'),('SESS-22fecf7a:1408baa94b5:-7ff6','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 18:53:14',NULL,'2013-08-17 18:53:14'),('SESS-22fecf7a:1408baa94b5:-7ff5','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 18:54:48',NULL,'2013-08-17 18:54:48'),('SESS-22fecf7a:1408baa94b5:-7ff4','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 18:58:29',NULL,'2013-08-17 18:58:29'),('SESS-22fecf7a:1408baa94b5:-7ff3','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 19:03:54',NULL,'2013-08-17 19:03:54'),('SESS-22fecf7a:1408baa94b5:-7ff2','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 19:30:32',NULL,'2013-08-17 19:30:32'),('SESS-22fecf7a:1408baa94b5:-7ff1','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 19:31:36',NULL,'2013-08-17 19:31:36'),('SESS-22fecf7a:1408baa94b5:-7ff0','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 19:36:25',NULL,'2013-08-17 19:36:25'),('SESS-22fecf7a:1408baa94b5:-7fef','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 19:38:22',NULL,'2013-08-17 19:38:22'),('SESS-22fecf7a:1408baa94b5:-7fee','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 19:40:11',NULL,'2013-08-17 19:40:11'),('SESS-13aada62:1408c17f7b9:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 19:45:08',NULL,'2013-08-17 19:45:08'),('SESS-161db6dd:1408c1b592e:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 19:48:50',NULL,'2013-08-17 19:48:50'),('SESS-22fecf7a:1408baa94b5:-7fed','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 19:49:32',NULL,'2013-08-17 19:49:32'),('SESS-2e9b9087:1408c228f20:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 19:59:12',NULL,'2013-08-17 19:59:12'),('SESS-3d1a22e0:1408c254788:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 19:59:41',NULL,'2013-08-17 19:59:41'),('SESS54aa24ac:1408c280ace:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 20:02:42',NULL,'2013-08-17 20:02:42'),('SESS2042569b:1408c29cc11:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 20:04:37',NULL,'2013-08-17 20:04:37'),('SESS-513c14b5:1408c2d3eda:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 20:08:23',NULL,'2013-08-17 20:08:23'),('SESSc73dd6c:1408c300c04:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 20:11:26',NULL,'2013-08-17 20:11:26'),('SESS76493462:1408c2fa1fc:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 20:13:29',NULL,'2013-08-17 20:13:29'),('SESS76493462:1408c2fa1fc:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 20:18:17',NULL,'2013-08-17 20:18:17'),('SESS5ce63ea7:1408c3865b3:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 20:23:04',NULL,'2013-08-17 20:23:04'),('SESS5ce63ea7:1408c3865b3:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 20:26:13',NULL,'2013-08-17 20:26:13'),('SESS5ce63ea7:1408c3865b3:-7f1f','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 20:50:32',NULL,'2013-08-17 20:50:32'),('SESS5ce63ea7:1408c3865b3:-7f1c','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 20:57:19',NULL,'2013-08-17 20:57:19'),('SESS5ce63ea7:1408c3865b3:-7ee7','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 21:13:38',NULL,'2013-08-17 21:13:38'),('SESS5ce63ea7:1408c3865b3:-7edc','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 21:19:03',NULL,'2013-08-17 21:19:03'),('SESS1ea8e707:1408c6e5ec7:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 21:19:30',NULL,'2013-08-17 21:19:30'),('SESS5b1a8a39:1408c6f96e7:-8000','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','desktop','2013-08-17 21:20:50',NULL,'2013-08-17 21:20:50'),('SESS5ce63ea7:1408c3865b3:-7ed7','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 21:28:30',NULL,'2013-08-17 21:28:30'),('SESS5ce63ea7:1408c3865b3:-7eca','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-17 21:31:16',NULL,'2013-08-17 21:31:16'),('SESS-3ffed698:14091616053:-7ff5','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 20:59:09',NULL,'2013-08-18 20:59:09'),('SESS-3ffed698:14091616053:-7ff4','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 21:01:34',NULL,'2013-08-18 21:01:34'),('SESS-3ffed698:14091616053:-7ff2','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 21:02:10',NULL,'2013-08-18 21:02:10'),('SESS361eda7a:140918a72ca:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 21:08:24',NULL,'2013-08-18 21:08:24'),('SESS361eda7a:140918a72ca:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 21:09:11',NULL,'2013-08-18 21:09:11'),('SESS361eda7a:140918a72ca:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 21:10:42',NULL,'2013-08-18 21:10:42'),('SESS361eda7a:140918a72ca:-7ffc','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 21:12:22',NULL,'2013-08-18 21:12:22'),('SESS361eda7a:140918a72ca:-7ffb','sa','sa','desktop','2013-08-18 21:12:43',NULL,'2013-08-18 21:12:43'),('SESS361eda7a:140918a72ca:-7ffa','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 21:13:38',NULL,'2013-08-18 21:13:38'),('SESS361eda7a:140918a72ca:-7ff9','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 21:15:57',NULL,'2013-08-18 21:15:57'),('SESS361eda7a:140918a72ca:-7ff8','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 21:20:51',NULL,'2013-08-18 21:20:51'),('SESS361eda7a:140918a72ca:-7ff7','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 21:22:43',NULL,'2013-08-18 21:22:43'),('SESS361eda7a:140918a72ca:-7ff6','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 21:28:41',NULL,'2013-08-18 21:28:41'),('SESS361eda7a:140918a72ca:-7ff4','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 21:29:15',NULL,'2013-08-18 21:29:15'),('SESS361eda7a:140918a72ca:-7ff3','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 21:35:58',NULL,'2013-08-18 21:35:58'),('SESS361eda7a:140918a72ca:-7ff2','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 21:37:02',NULL,'2013-08-18 21:37:02'),('SESS361eda7a:140918a72ca:-7ff1','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 21:39:06',NULL,'2013-08-18 21:39:06'),('SESS2bd2acd3:14091bb70fe:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 22:01:55',NULL,'2013-08-18 22:01:55'),('SESS2bd2acd3:14091bb70fe:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 22:04:08',NULL,'2013-08-18 22:04:08'),('SESS2bd2acd3:14091bb70fe:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 22:05:11',NULL,'2013-08-18 22:05:11'),('SESS2bd2acd3:14091bb70fe:-7ffd','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-18 22:12:03',NULL,'2013-08-18 22:12:03'),('SESS405a1aa5:1409205721b:-8000','sa','sa','desktop','2013-08-18 23:22:45',NULL,'2013-08-18 23:22:45'),('SESS405a1aa5:1409205721b:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 00:07:20',NULL,'2013-08-19 00:07:20'),('SESS-3f3ca0f8:140938754f7:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 06:24:14',NULL,'2013-08-19 06:24:14'),('SESS-3f3ca0f8:140938754f7:-7fff','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-19 06:25:04',NULL,'2013-08-19 06:25:04'),('SESS-3f3ca0f8:140938754f7:-7ffa','sa','sa','desktop','2013-08-19 06:31:30',NULL,'2013-08-19 06:31:30'),('SESS-3f3ca0f8:140938754f7:-7ff9','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 06:34:49',NULL,'2013-08-19 06:34:49'),('SESS-3f3ca0f8:140938754f7:-7ff8','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-19 06:37:24',NULL,'2013-08-19 06:37:24'),('SESS-3f3ca0f8:140938754f7:-7ff2','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-19 06:47:11',NULL,'2013-08-19 06:47:11'),('SESS-3f3ca0f8:140938754f7:-7ff1','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-19 06:49:19',NULL,'2013-08-19 06:49:19'),('SESS-3f3ca0f8:140938754f7:-7ff0','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-19 06:51:12',NULL,'2013-08-19 06:51:12'),('SESS-3f3ca0f8:140938754f7:-7fef','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 06:51:48',NULL,'2013-08-19 06:51:48'),('SESS-3f3ca0f8:140938754f7:-7fee','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 06:56:39',NULL,'2013-08-19 06:56:39'),('SESS-3f3ca0f8:140938754f7:-7fed','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 06:58:58',NULL,'2013-08-19 06:58:58'),('SESS-3f3ca0f8:140938754f7:-7fec','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 07:01:53',NULL,'2013-08-19 07:01:53'),('SESS-3f3ca0f8:140938754f7:-7feb','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 07:04:55',NULL,'2013-08-19 07:04:55'),('SESS-3f3ca0f8:140938754f7:-7fea','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 08:06:46',NULL,'2013-08-19 08:06:46'),('SESS-3f3ca0f8:140938754f7:-7fe9','sa','sa','desktop','2013-08-19 08:10:20',NULL,'2013-08-19 08:10:20'),('SESS-3f3ca0f8:140938754f7:-7fe8','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 08:11:49',NULL,'2013-08-19 08:11:49'),('SESS48295ae0:14094b15642:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 11:49:44',NULL,'2013-08-19 11:49:44'),('SESS48295ae0:14094b15642:-7ffe','sa','sa','desktop','2013-08-19 11:54:31',NULL,'2013-08-19 11:54:31'),('SESS-22f5672f:14094e0b2d1:-8000','sa','sa','desktop','2013-08-19 12:41:28',NULL,'2013-08-19 12:41:28'),('SESS-22f5672f:14094e0b2d1:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 12:48:55',NULL,'2013-08-19 12:48:55'),('SESS-22f5672f:14094e0b2d1:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 12:54:51',NULL,'2013-08-19 12:54:51'),('SESS-558fa87d:14094fe27c7:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 13:13:39',NULL,'2013-08-19 13:13:39'),('SESS-558fa87d:14094fe27c7:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 13:18:06',NULL,'2013-08-19 13:18:06'),('SESS-558fa87d:14094fe27c7:-7ffe','sa','sa','desktop','2013-08-19 13:57:34',NULL,'2013-08-19 13:57:34'),('SESS-558fa87d:14094fe27c7:-7ffc','USR-459fc8a6:14095266043:-7ff7','TA','desktop','2013-08-19 13:59:43',NULL,'2013-08-19 13:59:43'),('SESS-558fa87d:14094fe27c7:-7ffa','sa','sa','desktop','2013-08-19 14:00:20',NULL,'2013-08-19 14:00:20'),('SESS-558fa87d:14094fe27c7:-7ff8','USR-459fc8a6:14095266043:-7ff7','TA','desktop','2013-08-19 14:00:56',NULL,'2013-08-19 14:00:56'),('SESS-558fa87d:14094fe27c7:-7ff6','sa','sa','desktop','2013-08-19 15:04:55',NULL,'2013-08-19 15:04:55'),('SESS-558fa87d:14094fe27c7:-7ff4','USR-459fc8a6:14095266043:-7e10','JS','desktop','2013-08-19 15:06:13',NULL,'2013-08-19 15:06:13'),('SESS-558fa87d:14094fe27c7:-7fe9','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 15:19:16',NULL,'2013-08-19 15:19:16'),('SESS-558fa87d:14094fe27c7:-7fe8','USR-33ef8a41:1407ccf0e0e:-7ff9','COLL','desktop','2013-08-19 15:19:53',NULL,'2013-08-19 15:19:53'),('SESS-558fa87d:14094fe27c7:-7fe7','USR-33ef8a41:1407ccf0e0e:-7ff9','COLL','desktop','2013-08-19 15:23:37',NULL,'2013-08-19 15:23:37'),('SESS-558fa87d:14094fe27c7:-7fe5','USR-459fc8a6:14095266043:-7e10','JS','desktop','2013-08-19 15:24:56',NULL,'2013-08-19 15:24:56'),('SESS-558fa87d:14094fe27c7:-7fd9','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 15:47:45',NULL,'2013-08-19 15:47:45'),('SESS6b675379:14095b738c0:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 16:35:47',NULL,'2013-08-19 16:35:47'),('SESS6b675379:14095b738c0:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 16:42:27',NULL,'2013-08-19 16:42:27'),('SESS6b675379:14095b738c0:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 16:45:43',NULL,'2013-08-19 16:45:43'),('SESS6b675379:14095b738c0:-7ffd','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 16:46:21',NULL,'2013-08-19 16:46:21'),('SESS4851efc5:14095c78f69:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 16:53:38',NULL,'2013-08-19 16:53:38'),('SESS-5ac7f843:14095f8765b:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 17:47:03',NULL,'2013-08-19 17:47:03'),('SESS75939542:1409602e468:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 17:58:26',NULL,'2013-08-19 17:58:26'),('SESS2a88d245:140967ed2df:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 20:13:48',NULL,'2013-08-19 20:13:48'),('SESS-bed9810:14096813779:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 20:16:25',NULL,'2013-08-19 20:16:25'),('SESS-bed9810:14096813779:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 20:25:00',NULL,'2013-08-19 20:25:00'),('SESS-bed9810:14096813779:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 20:26:17',NULL,'2013-08-19 20:26:17'),('SESS-bed9810:14096813779:-7ffa','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 21:06:01',NULL,'2013-08-19 21:06:01'),('SESS-bed9810:14096813779:-7ff9','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-19 21:19:34',NULL,'2013-08-19 21:19:34'),('SESS-bed9810:14096813779:-7ff8','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 21:21:34',NULL,'2013-08-19 21:21:34'),('SESS-bed9810:14096813779:-7ff7','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 21:24:10',NULL,'2013-08-19 21:24:10'),('SESS-bed9810:14096813779:-7ff6','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-19 21:24:22',NULL,'2013-08-19 21:24:22'),('SESS-5a87fd81:14096c083bd:-8000','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-19 21:25:33',NULL,'2013-08-19 21:25:33'),('SESS62bfcd38:14096dd9fc7:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 21:57:21',NULL,'2013-08-19 21:57:21'),('SESS-6863628b:14096e1bdfc:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 22:01:51',NULL,'2013-08-19 22:01:51'),('SESS-6863628b:14096e1bdfc:-7ffe','sa','sa','desktop','2013-08-19 22:03:08',NULL,'2013-08-19 22:03:08'),('SESS-6863628b:14096e1bdfc:-7ffd','SA','SA','desktop','2013-08-19 22:04:56',NULL,'2013-08-19 22:04:56'),('SESS-6863628b:14096e1bdfc:-7ffc','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 22:14:15',NULL,'2013-08-19 22:14:15'),('SESS-6863628b:14096e1bdfc:-7ff8','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 22:15:59',NULL,'2013-08-19 22:15:59'),('SESS-6863628b:14096e1bdfc:-7fd6','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-19 22:24:52',NULL,'2013-08-19 22:24:52'),('SESS-6863628b:14096e1bdfc:-7fd0','sa','sa','desktop','2013-08-19 22:26:38',NULL,'2013-08-19 22:26:38'),('SESS-6863628b:14096e1bdfc:-7fce','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-19 22:29:56',NULL,'2013-08-19 22:29:56'),('SESS-6863628b:14096e1bdfc:-7fcb','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 22:30:40',NULL,'2013-08-19 22:30:40'),('SESS-6863628b:14096e1bdfc:-7fca','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-19 22:33:27',NULL,'2013-08-19 22:33:27'),('SESS-6863628b:14096e1bdfc:-7fc2','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-19 22:38:27',NULL,'2013-08-19 22:38:27'),('SESS3cc2c85a:14097221c77:-8000','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-19 23:12:09',NULL,'2013-08-19 23:12:09'),('SESS211392fd:140973198a0:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-19 23:29:04',NULL,'2013-08-19 23:29:04'),('SESS211392fd:140973198a0:-7fff','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-19 23:29:46',NULL,'2013-08-19 23:29:46'),('SESS20604571:1409734d55a:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-19 23:32:36',NULL,'2013-08-19 23:32:36'),('SESS-350734f6:14098d6b4f7:-8000','sa','sa','desktop','2013-08-20 07:09:02',NULL,'2013-08-20 07:09:02'),('SESS-350734f6:14098d6b4f7:-7fff','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-20 07:14:44',NULL,'2013-08-20 07:14:44'),('SESS-350734f6:14098d6b4f7:-7ffe','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-20 07:15:16',NULL,'2013-08-20 07:15:16'),('SESS-53bcbe9b:14098e209ca:-8000','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-20 07:21:25',NULL,'2013-08-20 07:21:25'),('SESS-53bcbe9b:14098e209ca:-7fff','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-20 07:23:34',NULL,'2013-08-20 07:23:34'),('SESS-53bcbe9b:14098e209ca:-7ffe','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-20 07:26:59',NULL,'2013-08-20 07:26:59'),('SESS-53bcbe9b:14098e209ca:-7ffd','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-20 07:27:37',NULL,'2013-08-20 07:27:37'),('SESS-53bcbe9b:14098e209ca:-7ffc','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-20 07:34:36',NULL,'2013-08-20 07:34:36'),('SESS-53bcbe9b:14098e209ca:-7ffb','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-20 07:38:26',NULL,'2013-08-20 07:38:26'),('SESS-53bcbe9b:14098e209ca:-7ffa','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-20 07:46:30',NULL,'2013-08-20 07:46:30'),('SESS1d0cb560:1409926dbec:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-20 08:36:35',NULL,'2013-08-20 08:36:35'),('SESS-7f8d1d0d:1409950fa2e:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-20 09:22:35',NULL,'2013-08-20 09:22:35'),('SESS-7f8d1d0d:1409950fa2e:-7ffb','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-20 13:02:08',NULL,'2013-08-20 13:02:08'),('SESS-7f8d1d0d:1409950fa2e:-7ffa','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-20 13:06:22',NULL,'2013-08-20 13:06:22'),('SESS-7f8d1d0d:1409950fa2e:-7ff9','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-20 13:28:42',NULL,'2013-08-20 13:28:42'),('SESS-57ee424c:1409b6f6dab:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-20 19:15:05',NULL,'2013-08-20 19:15:05'),('SESS-3adc4e80:1409b77a031:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-20 19:24:02',NULL,'2013-08-20 19:24:02'),('SESS-37e3d60a:1409bd43ded:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-20 21:05:12',NULL,'2013-08-20 21:05:12'),('SESS5ce54f1:1409bd7653b:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-20 21:08:39',NULL,'2013-08-20 21:08:39'),('SESS-4786a1e3:1409e799190:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-21 09:25:01',NULL,'2013-08-21 09:25:01'),('SESS-7f938357:140a1226807:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-21 21:48:41',NULL,'2013-08-21 21:48:41'),('SESS-6bf5afd7:140a1284da3:-7ffd','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-21 21:59:14',NULL,'2013-08-21 21:59:14'),('SESS56555de9:140a4aa342d:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-22 14:15:52',NULL,'2013-08-22 14:15:52'),('SESS56555de9:140a4aa342d:-7fff','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-22 14:18:39',NULL,'2013-08-22 14:18:39'),('SESS56555de9:140a4aa342d:-7ffe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-22 14:19:55',NULL,'2013-08-22 14:19:55'),('SESS3f1e623f:140a585fb55:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-22 18:15:55',NULL,'2013-08-22 18:15:55'),('SESS3f1e623f:140a585fb55:-7fc5','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-22 18:42:07',NULL,'2013-08-22 18:42:07'),('SESS3f1e623f:140a585fb55:-7fc2','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-22 18:46:26',NULL,'2013-08-22 18:46:26'),('SESS3f1e623f:140a585fb55:-7fc1','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-22 18:47:34',NULL,'2013-08-22 18:47:34'),('SESS3f1e623f:140a585fb55:-7fbe','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-22 18:52:00',NULL,'2013-08-22 18:52:00'),('SESS3f1e623f:140a585fb55:-7fbd','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-22 18:54:01',NULL,'2013-08-22 18:54:01'),('SESS3f1e623f:140a585fb55:-7fbb','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-22 18:56:08',NULL,'2013-08-22 18:56:08'),('SESS3f1e623f:140a585fb55:-7fa3','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-22 19:01:48',NULL,'2013-08-22 19:01:48'),('SESS2b56a0:140a601f61c:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-22 20:31:21',NULL,'2013-08-22 20:31:21'),('SESS2b56a0:140a601f61c:-7ffe','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','desktop','2013-08-22 20:32:22',NULL,'2013-08-22 20:32:22'),('SESS2b56a0:140a601f61c:-7ffa','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-22 20:33:30',NULL,'2013-08-22 20:33:30'),('SESS2b56a0:140a601f61c:-7ff5','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-22 20:36:03',NULL,'2013-08-22 20:36:03'),('SESS2b56a0:140a601f61c:-7ff4','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-22 20:40:35',NULL,'2013-08-22 20:40:35'),('SESS2b56a0:140a601f61c:-7ff3','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-22 20:40:56',NULL,'2013-08-22 20:40:56'),('SESS-2e0b1c8e:140a613f31f:-8000','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-22 20:51:00',NULL,'2013-08-22 20:51:00'),('SESS-2e0b1c8e:140a613f31f:-7fff','USR-4c502c56:14077ead5eb:-7ffa','GC','desktop','2013-08-22 20:52:24',NULL,'2013-08-22 20:52:24'),('SESS-1c49aff0:140a6179d74:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-22 20:55:00',NULL,'2013-08-22 20:55:00'),('SESS-4518f217:140a61b0302:-8000','USR11700b22:1407632636b:-7e71','JZ','desktop','2013-08-22 20:58:42',NULL,'2013-08-22 20:58:42');

/*Table structure for table `sys_session_log` */

DROP TABLE IF EXISTS `sys_session_log`;

CREATE TABLE `sys_session_log` (
  `sessionid` varchar(50) NOT NULL,
  `userid` varchar(50) default NULL,
  `username` varchar(50) default NULL,
  `clienttype` varchar(12) default NULL,
  `accesstime` datetime default NULL,
  `accessexpiry` datetime default NULL,
  `timein` datetime default NULL,
  `timeout` datetime default NULL,
  `state` varchar(10) default NULL,
  PRIMARY KEY  (`sessionid`),
  KEY `ix_userid` (`userid`),
  KEY `ix_username` (`username`),
  KEY `ix_timein` (`timein`),
  KEY `ix_timeout` (`timeout`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `sys_session_log` */

/*Table structure for table `sys_terminal` */

DROP TABLE IF EXISTS `sys_terminal`;

CREATE TABLE `sys_terminal` (
  `terminalid` varchar(50) NOT NULL,
  `parentid` varchar(50) default NULL,
  `parentcode` varchar(50) default NULL,
  `parenttype` varchar(50) default NULL,
  `macaddress` varchar(50) default NULL,
  `dtregistered` datetime default NULL,
  `registeredby` varchar(50) default NULL,
  `info` text,
  `state` int(11) default NULL,
  PRIMARY KEY  (`terminalid`),
  UNIQUE KEY `macaddress_unique` (`macaddress`),
  KEY `FK_terminal` (`parentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_terminal` */

insert  into `sys_terminal`(`terminalid`,`parentid`,`parentcode`,`parenttype`,`macaddress`,`dtregistered`,`registeredby`,`info`,`state`) values ('1FXD5VAYKY','',NULL,NULL,'00-26-C7-D9-AA-30','2013-02-18 15:29:13','1FXD5VAYKY',NULL,0),('361NP2TYH0','',NULL,NULL,'08-00-27-00-4C-BF','2013-03-05 18:07:51','361NP2TYH0',NULL,0),('54R9ERT59V','',NULL,NULL,'90-4C-E5-36-9A-C9','2013-07-18 21:01:14','DEVELOPER',NULL,0),('6PF402CCN0','',NULL,NULL,'78-AC-C0-4D-08-B7','2013-08-16 13:24:50','ARNEL',NULL,0),('79603UHEUT','',NULL,NULL,'00-26-22-AB-A3-6E','2013-05-02 17:18:44','TEST',NULL,0),('A884TKC9QF','',NULL,NULL,'9C-8E-99-39-B6-0C','2013-07-27 16:52:45','EMN',NULL,0),('JNXFFRPH44','',NULL,NULL,'64-31-50-69-6D-DE','2013-08-07 13:34:25','ADMIN',NULL,0),('U0AQV65JC0','',NULL,NULL,'00-26-18-F2-AC-F3',NULL,NULL,NULL,0),('U2N13C4H7X','',NULL,NULL,NULL,NULL,NULL,NULL,0),('VQ157CD0MC','',NULL,NULL,'00-26-18-F2-AC-F8','2013-04-26 09:30:15','LOUIE',NULL,0);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(15) default NULL,
  `dtcreated` datetime default NULL,
  `createdby` varchar(50) default NULL,
  `username` varchar(50) default NULL,
  `pwd` varchar(50) default NULL,
  `firstname` varchar(50) default NULL,
  `lastname` varchar(50) default NULL,
  `middlename` varchar(50) default NULL,
  `name` varchar(50) default NULL,
  `jobtitle` varchar(50) default NULL,
  `pwdlogincount` smallint(6) default NULL,
  `pwdexpirydate` datetime default NULL,
  `usedpwds` text,
  `lockid` varchar(32) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `ix_lastname_firstname` (`lastname`,`firstname`),
  KEY `ix_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_user` */

insert  into `sys_user`(`objid`,`state`,`dtcreated`,`createdby`,`username`,`pwd`,`firstname`,`lastname`,`middlename`,`name`,`jobtitle`,`pwdlogincount`,`pwdexpirydate`,`usedpwds`,`lockid`) values ('USR-33ef8a41:1407ccf0e0e:-7ff9','APPROVED',NULL,'sa','COLL','a2fe48bc646177066da5828630c0a218','COLLECTOR 1','COLLECTOR',NULL,'COLLECTOR, COLLECTOR 1','COLLECTOR',0,'2013-09-15 17:40:54','8a22afdb03d97deb6b8f1aa59fa7ba00,a2fe48bc646177066da5828630c0a218','LOCK-1c047076:14081328243:-7e5b'),('USR-459fc8a6:14095266043:-7e10','APPROVED',NULL,'sa','JS','81711d30333f4bd8063cb28ded62e8fa','JOSEPHINE','SAYTAS','S.','SAYTAS, JOSEPHINE S.','AFO',0,'2013-09-19 15:06:15','512535a8c898631dac92ea1b646c7efc,81711d30333f4bd8063cb28ded62e8fa','LOCK-558fa87d:14094fe27c7:-7ff3'),('USR-459fc8a6:14095266043:-7ff7','DRAFT',NULL,'sa','TA','ba906b74c03ed94defc82da74e739b26','RAOUL','SECHONG','B.','SECHONG, RAOUL B.','ITO II',0,'2013-09-19 13:59:51','900cb956815ff74357c2d58780c13112,ba906b74c03ed94defc82da74e739b26','LOCK-558fa87d:14094fe27c7:-7ffb'),('USR-46cae6c2:1407b49ad9d:-7ffa','DRAFT',NULL,'sa','EMN','cbfe6e931f1384d6ead661bf38ad45bb','ELMO','NAZARENO','M','NAZARENO, ELMO M','RCC1',0,'2013-09-14 13:27:08','d71fdca22c679cbbbf4286fd21a13674,cbfe6e931f1384d6ead661bf38ad45bb','LOCK5ede041e:1407b4aafcf:-7fff'),('USR-4c502c56:14077ead5eb:-7ffa','APPROVED',NULL,'sa','GC','50ca537f26c98388802fd55f1dbc5016','GRACE','CABANTAN',NULL,'CABANTAN, GRACE','RCC II',0,'2013-09-19 22:29:59','23bd64c2c3dd2f00c653eeb3a45c12c5,7db090a3b95fc19ca162005d2b0df98d,50ca537f26c98388802fd55f1dbc5016','LOCK-6863628b:14096e1bdfc:-7fcd'),('USR-5ee93442:14076ff4b09:-7f28','APPROVED',NULL,'sa','AR','03bc3d038ae50ea03b5756b308885ef4','ARNEL','RETIZA',NULL,'RETIZA, ARNEL','LAOO II',0,'2013-09-16 13:27:48','9b9dfba13c7e18ea6c239450dc3247e3,5901e681ccd9807b878de56191ab3b76,03bc3d038ae50ea03b5756b308885ef4','LOCK7e52072d:14085945062:-7ffc'),('USR11700b22:1407632636b:-7e71','APPROVED',NULL,'SA','JZ','03b25c230269b4d0da90a3e11c29a7c9','JESSIE','ZAMORA','S.','ZAMORA,JESSIE','LAOO II',0,'2013-09-13 17:14:25','f0063262d4e4884dc65263e774f8d7f8,03b25c230269b4d0da90a3e11c29a7c9','LOCK54128fea:14076ef5051:-7ffb'),('USR11700b22:1407632636b:-7f7c','APPROVED',NULL,'SA','WF',NULL,'WORGIE','FLORES','V.','FLORES,WORGIE','RCC II',NULL,NULL,NULL,NULL),('USR25a31acd:1408a64167e:-7fbb','APPROVED',NULL,'sa','PP','8c6108a4397bdbeee97a465cc6178009','PETER','PAN','M','PAN, PETER M','RCC II',0,'2013-09-17 12:08:06','0307ffe3d9ed9239e68c04daf9833390,8c6108a4397bdbeee97a465cc6178009','LOCK-3b93cca:1408a423e61:-7fed'),('USR4a3b6db9:1408acfc3c2:-7fe2','APPROVED',NULL,'USR-46cae6c2:1407b49ad9d:-7ffa','NDIAMOND','13f3f1e21242d2039a2006156045c439','NEIL','DIAMOND','BAGACAY','DIAMOND, NEIL BAGACAY','LQ I',0,'2013-09-17 15:43:30','df3ef5ee6c6b4874162883d0c44459c9,13f3f1e21242d2039a2006156045c439','LOCK1542f8c3:1408b3ab07a:-7fff'),('USR73c1157e:14094b15760:-7fc7','DRAFT',NULL,'USR11700b22:1407632636b:-7e71','ROSAL','36fa4a0f231da553754541f522032360','ROSALINA','MAMACAN','A.','MAMACAN, ROSALINA A.','LTO II',NULL,NULL,NULL,NULL);

/*Table structure for table `sys_usergroup` */

DROP TABLE IF EXISTS `sys_usergroup`;

CREATE TABLE `sys_usergroup` (
  `objid` varchar(50) NOT NULL,
  `title` varchar(255) default NULL,
  `domain` varchar(25) default NULL,
  `userclass` varchar(25) default NULL,
  `orgclass` varchar(50) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_usergroup` */

insert  into `sys_usergroup`(`objid`,`title`,`domain`,`userclass`,`orgclass`) values ('ACCOUNT_DATAMGMT','ACCOUNT DATA MANAGEMENT','ACCOUNTS','usergroup',NULL),('AFO','ACCOUNTABLE FORM OFFICER','TREASURY','usergroup',NULL),('APPRAISER','APPRAISER','RPT','usergroup',NULL),('APPROVER','APPROVER','RPT','usergroup',NULL),('ASSESSOR','ASSESSOR','RPT','usergroup',NULL),('ASSESSOR_DATAMGMT','ASSESSOR DATA MANAGEMENT','RPT','usergroup',NULL),('ASSESSOR_REPORT','ASSESSOR REPORT','RPT','usergroup',NULL),('ASSESSOR_SHARED','ASSESSOR SHARED','RPT','usergroup',NULL),('CASHIER','CASHIER','TREASURY','usergroup',NULL),('CERTIFICATION_ISSUER','CERTIFICATION_ISSUER','RPT','usergroup',NULL),('COLLECTOR','COLLECTOR','TREASURY','usergroup',NULL),('ENTITY_ENCODER','ENTITY_ENCODER','ENTITY','usergroup',NULL),('LANDTAX','LANDTAX','RPT','usergroup',NULL),('LANDTAX_DATAMGMT','LANDTAX DATA MANAGEMENT','RPT','usergroup',NULL),('LANDTAX_REPORT','LANDTAX REPORT','RPT','usergroup',NULL),('LANDTAX_SHARED','LANDTAX SHARED','RPT','usergroup',NULL),('LIQUIDATING_OFFICER','LIQUIDATING OFFICER','TREASURY','usergroup',NULL),('RECOMMENDER','RECOMMENDER','RPT','usergroup',NULL),('RULE_AUTHOR','RULE AUTHOR','RPT','usergroup',NULL),('TAXMAPPER','TAXMAPPER','RPT','usergroup',NULL),('TREASURY_DATAMGMT','TREASURY DATA MANAGEMENT','TREASURY','usergroup',NULL),('TREASURY_REPORT','TREASURY REPORTS','TREASURY','usergroup',NULL),('TREASURY_SHARED','TREASURY SHARED DATA','TREASURY','usergroup',NULL);

/*Table structure for table `sys_usergroup_admin` */

DROP TABLE IF EXISTS `sys_usergroup_admin`;

CREATE TABLE `sys_usergroup_admin` (
  `objid` varchar(50) NOT NULL,
  `usergroupid` varchar(50) default NULL,
  `user_objid` varchar(50) default NULL,
  `user_username` varchar(50) default NULL,
  `user_firstname` varchar(50) NOT NULL,
  `user_lastname` varchar(50) default NULL,
  `exclude` varchar(255) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `idx_usergroup_admin_user` (`usergroupid`,`user_objid`),
  KEY `FK_sys_usergroup_admin` (`user_objid`),
  CONSTRAINT `FK_sys_usergroup_admin` FOREIGN KEY (`user_objid`) REFERENCES `sys_user` (`objid`),
  CONSTRAINT `FK_sys_usergroup_admin_usergroup` FOREIGN KEY (`usergroupid`) REFERENCES `sys_usergroup` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_usergroup_admin` */

insert  into `sys_usergroup_admin`(`objid`,`usergroupid`,`user_objid`,`user_username`,`user_firstname`,`user_lastname`,`exclude`) values ('UGA57e99704:14076fb1aad:-7fcd','APPRAISER','USR11700b22:1407632636b:-7e71','JZ','JESSIE','ZAMORA',NULL);

/*Table structure for table `sys_usergroup_copy` */

DROP TABLE IF EXISTS `sys_usergroup_copy`;

CREATE TABLE `sys_usergroup_copy` (
  `objid` varchar(50) NOT NULL,
  `title` varchar(255) default NULL,
  `domain` varchar(25) default NULL,
  `userclass` varchar(25) default NULL,
  `orgclass` varchar(50) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_usergroup_copy` */

insert  into `sys_usergroup_copy`(`objid`,`title`,`domain`,`userclass`,`orgclass`) values ('AFO','ACCOUNTABLE FORM OFFICER','TREASURY','usergroup',NULL),('APPRAISER','APPRAISER','RPT','usergroup',NULL),('APPROVER','APPROVER','RPT','usergroup',NULL),('ASSESSOR','ASSESSOR','RPT','usergroup',NULL),('ASSESSOR_DATAMGMT','ASSESSOR DATA MANAGEMENT','RPT','usergroup',NULL),('ASSESSOR_REPORT','ASSESSOR REPORT','RPT','usergroup',NULL),('ASSESSOR_SHARED','ASSESSOR SHARED','RPT','usergroup',NULL),('CASHIER','CASHIER','TREASURY','usergroup',NULL),('CERTIFICATION_ISSUER','CERTIFICATION_ISSUER','RPT','usergroup',NULL),('COLLECTOR','COLLECTOR','TREASURY','usergroup',NULL),('ENTITY_ENCODER','ENTITY_ENCODER','ENTITY','usergroup',NULL),('LANDTAX','LANDTAX','RPT','usergroup',NULL),('LANDTAX_DATAMGMT','LANDTAX DATA MANAGEMENT','RPT','usergroup',NULL),('LANDTAX_REPORT','LANDTAX REPORT','RPT','usergroup',NULL),('LANDTAX_SHARED','LANDTAX SHARED','RPT','usergroup',NULL),('LIQUIDATING_OFFICER','LIQUIDATING OFFICER','TREASURY','usergroup',NULL),('RECOMMENDER','RECOMMENDER','RPT','usergroup',NULL),('RULE_AUTHOR','RULE AUTHOR','RPT','usergroup',NULL),('TAXMAPPER','TAXMAPPER','RPT','usergroup',NULL),('TREASURY_DATAMGMT','TREASURY DATA MANAGEMENT','TREASURY','usergroup',NULL),('TREASURY_REPORT','TREASURY REPORTS','TREASURY','usergroup',NULL),('TREASURY_SHARED','TREASURY SHARED DATA','TREASURY','usergroup',NULL);

/*Table structure for table `sys_usergroup_member` */

DROP TABLE IF EXISTS `sys_usergroup_member`;

CREATE TABLE `sys_usergroup_member` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) default NULL,
  `usergroupid` varchar(50) default NULL,
  `user_objid` varchar(50) NOT NULL,
  `user_username` varchar(50) default NULL,
  `user_firstname` varchar(50) NOT NULL,
  `user_lastname` varchar(50) NOT NULL,
  `org_objid` varchar(50) default NULL,
  `org_name` varchar(50) default NULL,
  `org_orgclass` varchar(50) default NULL,
  `securitygroupid` varchar(50) default NULL,
  `exclude` varchar(255) default NULL,
  `displayname` varchar(50) default NULL,
  `jobtitle` varchar(50) default NULL,
  `usertxncode` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `idx_usergroup_user_org` (`usergroupid`,`user_objid`,`org_objid`),
  UNIQUE KEY `uix_txncode` (`usertxncode`),
  KEY `FK_sys_usergroup_member_securitygorup` (`securitygroupid`),
  KEY `FK_sys_usergroup_member` (`user_objid`),
  KEY `FK_sys_usergroup_member_org` (`org_objid`),
  KEY `ix_user_firstname` (`user_firstname`),
  KEY `ix_user_lastname_firstname` (`user_lastname`,`user_firstname`),
  KEY `ix_username` (`user_username`),
  CONSTRAINT `FK_sys_usergroup_member` FOREIGN KEY (`user_objid`) REFERENCES `sys_user` (`objid`),
  CONSTRAINT `FK_sys_usergroup_member_org` FOREIGN KEY (`org_objid`) REFERENCES `sys_org` (`objid`),
  CONSTRAINT `FK_sys_usergroup_member_securitygorup` FOREIGN KEY (`securitygroupid`) REFERENCES `sys_securitygroup` (`objid`),
  CONSTRAINT `FK_sys_usergroup_member_usergroup` FOREIGN KEY (`usergroupid`) REFERENCES `sys_usergroup` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_usergroup_member` */

insert  into `sys_usergroup_member`(`objid`,`state`,`usergroupid`,`user_objid`,`user_username`,`user_firstname`,`user_lastname`,`org_objid`,`org_name`,`org_orgclass`,`securitygroupid`,`exclude`,`displayname`,`jobtitle`,`usertxncode`) values ('USGRP-3b93cca:1408a423e61:-7fef',NULL,'COLLECTOR','USR25a31acd:1408a64167e:-7fbb','PP','PETER','PAN',NULL,NULL,NULL,'TREASURY-COLLECTOR',NULL,NULL,NULL,NULL),('USGRP-3f3ca0f8:140938754f7:-7ffd',NULL,'CASHIER','USR-4c502c56:14077ead5eb:-7ffa','GC','GRACE','CABANTAN',NULL,NULL,NULL,'TREASURY-CASHIER',NULL,NULL,'RCC II',NULL),('USGRP-3ffed698:14091616053:-7ff3',NULL,'TREASURY_DATAMGMT','USR11700b22:1407632636b:-7e71','JZ','JESSIE','ZAMORA',NULL,NULL,NULL,'TREASURY-TREASURY_DATAMGMT',NULL,NULL,'LAOO II',NULL),('USGRP-558fa87d:14094fe27c7:-7ff5',NULL,'AFO','USR-459fc8a6:14095266043:-7e10','JS','JOSEPHINE','SAYTAS',NULL,NULL,NULL,'TREASURY-AFO',NULL,NULL,'AFO',NULL),('USGRP-558fa87d:14094fe27c7:-7ff9',NULL,'ACCOUNT_DATAMGMT','USR-459fc8a6:14095266043:-7ff7','TA','RAOUL','SECHONG',NULL,NULL,NULL,'ACCOUNTS-ACCOUNT_DATAMGMT',NULL,NULL,'ITO II',NULL),('USGRP-558fa87d:14094fe27c7:-7ffd',NULL,'TREASURY_DATAMGMT','USR-459fc8a6:14095266043:-7ff7','TA','RAOUL','SECHONG',NULL,NULL,NULL,'TREASURY-TREASURY_DATAMGMT',NULL,NULL,'ITO II',NULL),('USGRP-6863628b:14096e1bdfc:-7ff9',NULL,'LIQUIDATING_OFFICER','USR11700b22:1407632636b:-7e71','JZ','JESSIE','ZAMORA',NULL,NULL,NULL,'TREASURY-LIQUIDATING_OFFICER',NULL,NULL,'LAOO II',NULL),('USGRP-6863628b:14096e1bdfc:-7ffa',NULL,'CASHIER','USR11700b22:1407632636b:-7e71','JZ','JESSIE','ZAMORA',NULL,NULL,NULL,'TREASURY-CASHIER',NULL,NULL,'LAOO II',NULL),('USGRP-6863628b:14096e1bdfc:-7ffb',NULL,'COLLECTOR','USR-33ef8a41:1407ccf0e0e:-7ff9','COLL','COLLECTOR 1','COLLECTOR',NULL,NULL,NULL,'TREASURY-COLLECTOR',NULL,NULL,'COLLECTOR',NULL),('USGRP361eda7a:140918a72ca:-7ff5',NULL,'ACCOUNT_DATAMGMT','USR11700b22:1407632636b:-7e71','JZ','JESSIE','ZAMORA',NULL,NULL,NULL,'ACCOUNTS-ACCOUNT_DATAMGMT',NULL,NULL,'LAOO II',NULL),('USGRP48295ae0:14094b15642:-7fff',NULL,'COLLECTOR','USR73c1157e:14094b15760:-7fc7','ROSAL','ROSALINA','MAMACAN',NULL,NULL,NULL,'TREASURY-COLLECTOR',NULL,NULL,'LTO II',NULL),('USGRP555d888f:140860066a1:-7ffc',NULL,'COLLECTOR','USR11700b22:1407632636b:-7f7c','WF','WORGIE','FLORES',NULL,NULL,NULL,'TREASURY-COLLECTOR',NULL,NULL,'RCC II',NULL),('USGRP555d888f:140860066a1:-7ffd',NULL,'ASSESSOR_SHARED','USR11700b22:1407632636b:-7f7c','WF','WORGIE','FLORES',NULL,NULL,NULL,'RPT-ASSESSOR-SHARED',NULL,NULL,'RCC II',NULL),('USGRP555d888f:140860066a1:-7fff',NULL,'APPRAISER','USR11700b22:1407632636b:-7f7c','WF','WORGIE','FLORES',NULL,NULL,NULL,'USG--5ee93442:14076ff4b09:-7fcd',NULL,NULL,'RCC II',NULL),('USGRP6003a4b5:1408b0b260f:-7ffd',NULL,'LIQUIDATING_OFFICER','USR4a3b6db9:1408acfc3c2:-7fe2','NDIAMOND','NEIL','DIAMOND',NULL,NULL,NULL,'TREASURY-LIQUIDATING_OFFICER',NULL,NULL,'LQ I',NULL),('USRGRP-21b7232a:140810b6d57:-7f08',NULL,'LANDTAX_SHARED','USR11700b22:1407632636b:-7e71','JZ','JESSIE','ZAMORA',NULL,NULL,NULL,'RPT-LANDTAX-SHARED',NULL,NULL,'LAOO II',NULL),('USRGRP-3662ecdb:14085461ad6:-7f9b',NULL,'COLLECTOR','USR-4c502c56:14077ead5eb:-7ffa','GC','GRACE','CABANTAN',NULL,NULL,NULL,'TREASURY-COLLECTOR',NULL,NULL,'RCC II',NULL),('USRGRP-3ba1e8:1407bca0494:-7f98',NULL,'ASSESSOR_SHARED','USR11700b22:1407632636b:-7e71','JZ','JESSIE','ZAMORA',NULL,NULL,NULL,'RPT-ASSESSOR-SHARED',NULL,NULL,'LAOO II',NULL),('USRGRP-462d3324:14086ac161b:-7f8e',NULL,'COLLECTOR','USR11700b22:1407632636b:-7e71','JZ','JESSIE','ZAMORA',NULL,NULL,NULL,'TREASURY-COLLECTOR',NULL,NULL,'LAOO II','JZ'),('USRGRP-669a8165:14085942e2a:-7fb8',NULL,'COLLECTOR','USR-5ee93442:14076ff4b09:-7f28','AR','ARNEL','RETIZA',NULL,NULL,NULL,'TREASURY-COLLECTOR',NULL,NULL,'LAOO II',NULL),('USRGRP-6fb8d3c1:14085c5af6a:-7f8f',NULL,'COLLECTOR','USR-46cae6c2:1407b49ad9d:-7ffa','EMN','ELMO','NAZARENO',NULL,NULL,NULL,'TREASURY-COLLECTOR',NULL,NULL,'RCC1','EMN'),('USRGRP11700b22:1407632636b:-7e42',NULL,'ASSESSOR_DATAMGMT','USR11700b22:1407632636b:-7e71','JZ','JESSIE','ZAMORA',NULL,NULL,NULL,'RPT-ASSESSOR_DATAMGMT',NULL,NULL,'LAOO II',NULL),('USRGRP11700b22:1407632636b:-7e4b',NULL,'ASSESSOR','USR11700b22:1407632636b:-7e71','JZ','JESSIE','ZAMORA',NULL,NULL,NULL,'RPT-ASSESSOR','',NULL,'LAOO II',NULL),('USRGRP11700b22:1407632636b:-7e54',NULL,'APPROVER','USR11700b22:1407632636b:-7e71','JZ','JESSIE','ZAMORA',NULL,NULL,NULL,'RPT-APPROVER',NULL,NULL,'LAOO II',NULL),('USRGRP1d48e8cc:14096e48fd3:-7fca',NULL,'AFO','USR11700b22:1407632636b:-7e71','JZ','JESSIE','ZAMORA',NULL,NULL,NULL,'TREASURY-AFO',NULL,NULL,'LAOO II',NULL),('USRGRP2db33600:14076ef512e:-7f8d',NULL,'APPRAISER','USR11700b22:1407632636b:-7e71','JZ','JESSIE','ZAMORA',NULL,NULL,NULL,'RPT-APPRAISER','',NULL,'LAOO II',NULL),('USRGRP3cd929b0:14077389f1b:-7f3a',NULL,'CERTIFICATION_ISSUER','USR-5ee93442:14076ff4b09:-7f28','AR','ARNEL','RETIZA',NULL,NULL,NULL,'RPT-CERTIFICATION_ISSUER',NULL,NULL,'LAOO II',NULL),('USRGRP3cd929b0:14077389f1b:-7fa4',NULL,'CERTIFICATION_ISSUER','USR11700b22:1407632636b:-7e71','JZ','JESSIE','ZAMORA',NULL,NULL,NULL,'RPT-CERTIFICATION_ISSUER',NULL,NULL,'LAOO II',NULL),('USRGRP4a826da:140774397a7:-7fc3',NULL,'APPRAISER','USR-5ee93442:14076ff4b09:-7f28','AR','ARNEL','RETIZA',NULL,NULL,NULL,'USG--5ee93442:14076ff4b09:-7fcd',NULL,NULL,'LAOO II',NULL),('USRGRP6f68dc4c:14080f6abef:-7f0f',NULL,'LANDTAX','USR11700b22:1407632636b:-7e71','JZ','JESSIE','ZAMORA',NULL,NULL,NULL,'RPT-LANDTAX',NULL,NULL,'LAOO II',NULL);

/*Table structure for table `sys_usergroup_permission` */

DROP TABLE IF EXISTS `sys_usergroup_permission`;

CREATE TABLE `sys_usergroup_permission` (
  `objid` varchar(50) NOT NULL,
  `usergroupid` varchar(50) default NULL,
  `object` varchar(25) default NULL,
  `permission` varchar(25) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_sys_usergroup_permission_usergroup` (`usergroupid`),
  CONSTRAINT `FK_sys_usergroup_permission_usergroup` FOREIGN KEY (`usergroupid`) REFERENCES `sys_usergroup` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_usergroup_permission` */

insert  into `sys_usergroup_permission`(`objid`,`usergroupid`,`object`,`permission`) values ('ENTITY-ENCODER-EM','ENTITY_ENCODER','entity','manage'),('ENTITY-ENCODER-ER','ENTITY_ENCODER','entity','reconcile'),('ENTITY-ENCODER-IC','ENTITY_ENCODER','individual','create'),('ENTITY-ENCODER-IE','ENTITY_ENCODER','individual','edit'),('ENTITY-ENCODER-IEO','ENTITY_ENCODER','individual','enrollonline'),('ENTITY-ENCODER-IR','ENTITY_ENCODER','individual','read'),('ENTITY-ENCODER-JC','ENTITY_ENCODER','juridical','create'),('ENTITY-ENCODER-JD','ENTITY_ENCODER','juridical','delete'),('ENTITY-ENCODER-JE','ENTITY_ENCODER','juridical','edit'),('ENTITY-ENCODER-JR','ENTITY_ENCODER','juridical','read'),('ENTITY-ENCODER-MC','ENTITY_ENCODER','multiple','create'),('ENTITY-ENCODER-MD','ENTITY_ENCODER','multiple','delete'),('ENTITY-ENCODER-ME','ENTITY_ENCODER','multiple','edit'),('ENTITY-ENCODER-MR','ENTITY_ENCODER','multiple','read'),('ENTITY_ENCODER-ID','ENTITY_ENCODER','individual','delete'),('RPT-ANNOTATION-C','APPRAISER','annotation','create'),('RPT-ANNOTATION-R','APPRAISER','annotation','read'),('RPT-BILLING-C','LANDTAX','rptbilling','create'),('RPT-CANCELANNOTATION-C','APPRAISER','cancelannotation','create'),('RPT-CANCELFAAS-C','APPRAISER','cancelfaas','create'),('RPT-CERTICICATION-LE','CERTIFICATION_ISSUER','certification','latestandexisting'),('RPT-CERTIFICATION-LH','CERTIFICATION_ISSUER','certification','landholding'),('RPT-CERTIFICATION-MP','CERTIFICATION_ISSUER','certification','multipleproperty'),('RPT-CERTIFICATION-NE','CERTIFICATION_ISSUER','certification','noencumbrance'),('RPT-CERTIFICATION-NP','CERTIFICATION_ISSUER','certification','noproperty'),('RPT-CERTIFICATION-OWN','CERTIFICATION_ISSUER','certification','ownership'),('RPT-CERTIFICATION-TDT','CERTIFICATION_ISSUER','certification','tdtruecopy'),('RPT-CS-C','APPRAISER','consolidation','create'),('RPT-CS-D','APPRAISER','consolidation','delete'),('RPT-CS-R','APPRAISER','consolidation','read'),('RPT-CS-U','APPRAISER','consolidation','edit'),('RPT-FA-C','APPRAISER','annotation','create'),('RPT-FA-D','APPRAISER','annotation','delete'),('RPT-FA-R','APPRAISER','annotation','read'),('RPT-FA-U','APPRAISER','annotation','edit'),('RPT-FAAS-APPROVER-A','APPROVER','faas','approve'),('RPT-FAAS-APPROVER-D','APPROVER','faas','disapprove'),('RPT-FAAS-C-CC','APPRAISER','faas','createChangeClassificatio'),('RPT-FAAS-C-CD','APPRAISER','faas','createChangeDepreciation'),('RPT-FAAS-C-CE','APPRAISER','faas','createCorrection'),('RPT-FAAS-C-CT','APPRAISER','faas','createChangeTaxability'),('RPT-FAAS-C-DC','APPRAISER','faas','createDataCapture'),('RPT-FAAS-C-GR','APPRAISER','faas','createGeneralRevision'),('RPT-FAAS-C-MC','APPRAISER','faas','createMultipleClaim'),('RPT-FAAS-C-ND','APPRAISER','faas','createNewDiscovery'),('RPT-FAAS-C-RE','APPRAISER','faas','createReassessment'),('RPT-FAAS-C-TR','APPRAISER','faas','createTransfer'),('RPT-FAAS-D','APPRAISER','faas','delete'),('RPT-FAAS-E','APPRAISER','faas','edit'),('RPT-FAAS-R','APPRAISER','faas','read'),('RPT-FAAS-REC-A','RECOMMENDER','faas','approve'),('RPT-FAAS-REC-D','RECOMMENDER','faas','disapprove'),('RPT-FAAS-REC-S','RECOMMENDER','faas','submitToProvince'),('RPT-FAAS-S','APPRAISER','faas','submit'),('RPT-FAASUPDATE-C','APPRAISER','faasupdate','create'),('RPT-GR-BATCH','ASSESSOR','batchgr','create'),('RPT-LEDGER-A','LANDTAX','rptledger','approve'),('RPT-LEDGER-E','LANDTAX','rptledger','edit'),('RPT-NA-C','APPRAISER','noticeofassessment','create'),('RPT-NA-R','APPRAISER','noticeofassessment','read'),('RPT-RESECTION-C','APPRAISER','resection','create'),('RPT-RESECTION-D','APPRAISER','resection','delete'),('RPT-RESECTION-E','APPRAISER','resection','edit'),('RPT-RESECTION-S','APPRAISER','resection','submit'),('RPT-SD-C','APPRAISER','subdivision','create'),('RPT-SD-D','APPRAISER','subdivision','delete'),('RPT-SD-R','APPRAISER','subdivision','read'),('RPT-SD-S','APPRAISER','subdivision','submit'),('RPT-SD-U','APPRAISER','subdivision','edit'),('RPT-TAXCLEARANCE-C','LANDTAX','taxclearance','create'),('RPT-UTIL-MODIFYPIN','ASSESSOR','util','modifypin'),('TREASURY-COLLECTOR','COLLECTOR','receipt','online'),('TREASURY-LIQUIDATING_OFFICER','LIQUIDATING_OFFICER','cashbook','list'),('TREASURY-TREASURY_DATAMGMT','TREASURY_DATAMGMT','cashbook','create');

/*Table structure for table `sys_usergroup_permission_copy` */

DROP TABLE IF EXISTS `sys_usergroup_permission_copy`;

CREATE TABLE `sys_usergroup_permission_copy` (
  `objid` varchar(50) NOT NULL,
  `usergroupid` varchar(50) default NULL,
  `object` varchar(25) default NULL,
  `permission` varchar(25) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_sys_usergroup_permission_usergroup` (`usergroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_usergroup_permission_copy` */

insert  into `sys_usergroup_permission_copy`(`objid`,`usergroupid`,`object`,`permission`) values ('ENTITY-ENCODER-EM','ENTITY_ENCODER','entity','manage'),('ENTITY-ENCODER-ER','ENTITY_ENCODER','entity','reconcile'),('ENTITY-ENCODER-IC','ENTITY_ENCODER','individual','create'),('ENTITY-ENCODER-IE','ENTITY_ENCODER','individual','edit'),('ENTITY-ENCODER-IEO','ENTITY_ENCODER','individual','enrollonline'),('ENTITY-ENCODER-IR','ENTITY_ENCODER','individual','read'),('ENTITY-ENCODER-JC','ENTITY_ENCODER','juridical','create'),('ENTITY-ENCODER-JD','ENTITY_ENCODER','juridical','delete'),('ENTITY-ENCODER-JE','ENTITY_ENCODER','juridical','edit'),('ENTITY-ENCODER-JR','ENTITY_ENCODER','juridical','read'),('ENTITY-ENCODER-MC','ENTITY_ENCODER','multiple','create'),('ENTITY-ENCODER-MD','ENTITY_ENCODER','multiple','delete'),('ENTITY-ENCODER-ME','ENTITY_ENCODER','multiple','edit'),('ENTITY-ENCODER-MR','ENTITY_ENCODER','multiple','read'),('ENTITY_ENCODER-ID','ENTITY_ENCODER','individual','delete'),('RPT-ANNOTATION-C','APPRAISER','annotation','create'),('RPT-ANNOTATION-R','APPRAISER','annotation','read'),('RPT-BILLING-C','LANDTAX','rptbilling','create'),('RPT-CANCELANNOTATION-C','APPRAISER','cancelannotation','create'),('RPT-CANCELFAAS-C','APPRAISER','cancelfaas','create'),('RPT-CERTICICATION-LE','CERTIFICATION_ISSUER','certification','latestandexisting'),('RPT-CERTIFICATION-LH','CERTIFICATION_ISSUER','certification','landholding'),('RPT-CERTIFICATION-MP','CERTIFICATION_ISSUER','certification','multipleproperty'),('RPT-CERTIFICATION-NE','CERTIFICATION_ISSUER','certification','noencumbrance'),('RPT-CERTIFICATION-NP','CERTIFICATION_ISSUER','certification','noproperty'),('RPT-CERTIFICATION-OWN','CERTIFICATION_ISSUER','certification','ownership'),('RPT-CERTIFICATION-TDT','CERTIFICATION_ISSUER','certification','tdtruecopy'),('RPT-CS-C','APPRAISER','consolidation','create'),('RPT-CS-D','APPRAISER','consolidation','delete'),('RPT-CS-R','APPRAISER','consolidation','read'),('RPT-CS-U','APPRAISER','consolidation','edit'),('RPT-FA-C','APPRAISER','annotation','create'),('RPT-FA-D','APPRAISER','annotation','delete'),('RPT-FA-R','APPRAISER','annotation','read'),('RPT-FA-U','APPRAISER','annotation','edit'),('RPT-FAAS-APPROVER-A','APPROVER','faas','approve'),('RPT-FAAS-APPROVER-D','APPROVER','faas','disapprove'),('RPT-FAAS-C-CC','APPRAISER','faas','createChangeClassificatio'),('RPT-FAAS-C-CD','APPRAISER','faas','createChangeDepreciation'),('RPT-FAAS-C-CE','APPRAISER','faas','createCorrection'),('RPT-FAAS-C-CT','APPRAISER','faas','createChangeTaxability'),('RPT-FAAS-C-DC','APPRAISER','faas','createDataCapture'),('RPT-FAAS-C-GR','APPRAISER','faas','createGeneralRevision'),('RPT-FAAS-C-MC','APPRAISER','faas','createMultipleClaim'),('RPT-FAAS-C-ND','APPRAISER','faas','createNewDiscovery'),('RPT-FAAS-C-RE','APPRAISER','faas','createReassessment'),('RPT-FAAS-C-TR','APPRAISER','faas','createTransfer'),('RPT-FAAS-D','APPRAISER','faas','delete'),('RPT-FAAS-E','APPRAISER','faas','edit'),('RPT-FAAS-R','APPRAISER','faas','read'),('RPT-FAAS-REC-A','RECOMMENDER','faas','approve'),('RPT-FAAS-REC-D','RECOMMENDER','faas','disapprove'),('RPT-FAAS-REC-S','RECOMMENDER','faas','submitToProvince'),('RPT-FAAS-S','APPRAISER','faas','submit'),('RPT-FAASUPDATE-C','APPRAISER','faasupdate','create'),('RPT-GR-BATCH','ASSESSOR','batchgr','create'),('RPT-LEDGER-A','LANDTAX','rptledger','approve'),('RPT-LEDGER-E','LANDTAX','rptledger','edit'),('RPT-NA-C','APPRAISER','noticeofassessment','create'),('RPT-NA-R','APPRAISER','noticeofassessment','read'),('RPT-RESECTION-C','APPRAISER','resection','create'),('RPT-RESECTION-D','APPRAISER','resection','delete'),('RPT-RESECTION-E','APPRAISER','resection','edit'),('RPT-RESECTION-S','APPRAISER','resection','submit'),('RPT-SD-C','APPRAISER','subdivision','create'),('RPT-SD-D','APPRAISER','subdivision','delete'),('RPT-SD-R','APPRAISER','subdivision','read'),('RPT-SD-S','APPRAISER','subdivision','submit'),('RPT-SD-U','APPRAISER','subdivision','edit'),('RPT-TAXCLEARANCE-C','LANDTAX','taxclearance','create'),('RPT-UTIL-MODIFYPIN','ASSESSOR','util','modifypin'),('TREASURY-COLLECTOR','COLLECTOR','receipt','online');

/*Table structure for table `sys_var` */

DROP TABLE IF EXISTS `sys_var`;

CREATE TABLE `sys_var` (
  `name` varchar(50) NOT NULL,
  `value` text,
  `description` varchar(255) default NULL,
  `datatype` varchar(15) default NULL,
  `category` varchar(50) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `sys_var` */

insert  into `sys_var`(`name`,`value`,`description`,`datatype`,`category`) values ('allow_consolidation_with_balance','0',NULL,'checkbox','ASSESSOR'),('allow_faas_transaction_with_balance','0',NULL,'checkbox','ASSESSOR'),('allow_general_collection_discount','0',NULL,'boolean','TC'),('allow_subdivision_with_balance','0',NULL,'checkbox','ASSESSOR'),('assessor_name','Iligan Assessor',NULL,'text','ASSESSOR'),('assessor_officename','OFFICE OF THE CITY ASSESSOR',NULL,'text','ASSESSOR'),('assessor_title','City Assessor',NULL,'text','ASSESSOR'),('barcode_url','http://${apphost}/barcode?data=$P{data}&width=1','barcode servlet path',NULL,'SYSTEM'),('ctc_brgyshare','0.50','CTC Barangay Share',NULL,'CTC'),('current_ry','2009',NULL,'integer','ASSESSOR'),('deposit_print_date','0',NULL,NULL,'TC'),('faas_datacapture_allow_edit_av','1',NULL,'checkbox','ASSESSOR'),('gr_ordinance_date','2009-01-01',NULL,'date','ASSESSOR'),('gr_ordinance_no','L-2009-934',NULL,'text','ASSESSOR'),('gr_renumber_pin','0',NULL,'checkbox','ASSESSOR'),('invalid_login_access_date_interval','1m','number of hours/days access date is moved when failed_login_max_retries is reached( d=days, h=hours)',NULL,NULL),('invalid_login_action','1','0 - suspend 1-move access to a later date',NULL,NULL),('invalid_login_max_retries','5','No. of times a user can retry login before disabling account',NULL,NULL),('lgu_address','City of Iligan, Lanao del Norte',NULL,'text','ASSESSOR'),('lgu_formal_name','City of Iligan',NULL,'text','ASSESSOR'),('lgu_name','ILIGAN','lgu name','text','ASSESSOR'),('lgu_objid','169',NULL,'text','ASSESSOR'),('lgu_type','city','Type of LGU. Valid values are city, municipality and province','text','ASSESSOR'),('mayor_name','PAULINO YAP EMANO',NULL,NULL,'LGU'),('mayor_office_name','OFFICE OF THE MUNICIPAL MAYOR',NULL,NULL,'LGU'),('mayor_title','Municipal Mayor',NULL,NULL,'LGU'),('parent_lgu_formal_name',NULL,NULL,'text','ASSESSOR'),('parent_lgu_name',NULL,'Parent LGU Name','text','ASSESSOR'),('pin_autonumber','0',NULL,'checkbox','ASSESSOR'),('pin_parcel_length','2','The number of digits in pin parcel.','integer','ASSESSOR'),('pin_section_length','3','The number of digits in pin section.','integer','ASSESSOR'),('pin_type','new','PIN Formatting Type valid values: old or new','text','ASSESSOR'),('provincial_assessor_name',NULL,NULL,'text','ASSESSOR'),('provincial_assessor_title',NULL,NULL,'text','ASSESSOR'),('provincial_treasurer_name','AMELITA G. PACURIBOT',NULL,NULL,'TC'),('provincial_treasurer_title','PROVINCIAL TREASURER',NULL,NULL,'TC'),('pwd_change_cycle','3','No. of times the user cannot use a repeating password',NULL,'SYSTEM'),('pwd_change_date_interval','1M','No. of days/months before a user is required to change their password (d=days, M=months)',NULL,'SYSTEM'),('pwd_change_login_count','0','No. of times a user has successfully logged in before changing their password. (0=no limit) ',NULL,'SYSTEM'),('receipt_item_printout_count','10',NULL,NULL,'SYSTEM'),('rptc_barangay_basic_rate','0.25',NULL,'decimal','LANDTAX'),('rptc_barangay_sef_rate','0.00',NULL,'decimal','LANDTAX'),('rptc_city_basic_rate','0.75',NULL,'decimal','LANDTAX'),('rptc_city_sef_rate','100.0',NULL,'decimal','LANXTAX'),('rptc_municipality_basic_rate','0.40',NULL,'decimal','LANDTAX'),('rptc_municipality_sef_rate','0.50',NULL,'decimal','LANDTAX'),('rptc_province_basic_rate','0.35',NULL,'decimal','LANDTAX'),('rptc_province_sef_rate','0.50',NULL,'decimal','LANDTAX'),('sangguinan_name','SANGGUNIANG PANLUNGSOD','sangguinian name','text','ASSESSOR'),('sa_pwd','560145c20d7508ecb59223999c4654dd',NULL,NULL,NULL),('server_timezone','Asia/Shanghai','this must be matched with default timezone of server',NULL,NULL),('session_timeout_interval','1d ','expiry dates of inactive session (d=days, h=hours)',NULL,'SYSTEM'),('subdivision_allow_equal_area_only','1','Allow Subdivision with equal area only ','checkbox','ASSESSOR'),('system_pwd','!12345','system password',NULL,'SYSTEM'),('td_autonumber','0',NULL,'checkbox','ASSESSOR'),('td_autonumber_sequence_count','5',NULL,'integer','ASSESSOR'),('td_format','Y-M-B','Tax Declaration No. format. Options: Y- revision year, M-municipality index, C - city index, D-district index, B=-barangay index','text','ASSESSOR'),('td_report_display_appraisedby','0',NULL,'checkbox','ASSESSOR'),('td_report_item_format','BLGF','Valid Values: BLGF or MODIFIED','text','ASSESSOR'),('td_show_landinfo_on_improvements','1','Show the land information such as boundary etc in the improvement tax declaration. Options: 1 - show; 0 - hide','checkbox','ASSESSOR'),('treasurer_name','RHODORA M. SABACAJAN',NULL,NULL,'TREASURY'),('treasurer_title','MUNICIPAL TREASURER',NULL,NULL,'TREASURY'),('treasury_officename','OFFICE OF THE MUNICIPAL TREASURER',NULL,NULL,'TREASURY'),('url_logo_lgu','file:///d:/temp/lgu.png','logo path',NULL,'LGU');

/*Table structure for table `txnref` */

DROP TABLE IF EXISTS `txnref`;

CREATE TABLE `txnref` (
  `oid` int(12) unsigned NOT NULL auto_increment,
  `objid` varchar(50) NOT NULL,
  `refid` varchar(50) NOT NULL,
  `msg` varchar(255) NOT NULL,
  PRIMARY KEY  (`oid`),
  UNIQUE KEY `ux_txnref_objid` (`objid`),
  KEY `ix_txnref_refid` (`refid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `txnref` */

/*Table structure for table `txnsignatory` */

DROP TABLE IF EXISTS `txnsignatory`;

CREATE TABLE `txnsignatory` (
  `objid` varchar(50) NOT NULL,
  `refid` varchar(50) NOT NULL,
  `personnelid` varchar(50) default NULL,
  `type` varchar(25) NOT NULL,
  `caption` varchar(25) default NULL,
  `name` varchar(200) default '',
  `title` varchar(50) default '',
  `dtsigned` date default NULL,
  `seqno` int(11) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_signatory_name` (`name`),
  KEY `FK_signatory_personnel` (`personnelid`),
  KEY `ix_signatory_refid` (`refid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `txnsignatory` */

insert  into `txnsignatory`(`objid`,`refid`,`personnelid`,`type`,`caption`,`name`,`title`,`dtsigned`,`seqno`) values ('S-32dfeabb:1405c599977:-7ffc','F-32dfeabb:1405c599977:-8000','admin','approver',NULL,'admin admin','MUNICIPAL ASSESSOR','2009-01-03',3),('S-32dfeabb:1405c599977:-7ffd','F-32dfeabb:1405c599977:-8000','admin','taxmapper',NULL,'admin admin','MUNICIPAL ASSESSOR','2009-01-02',2),('S-32dfeabb:1405c599977:-7ffe','F-32dfeabb:1405c599977:-8000','admin','recommender',NULL,'admin admin','MUNICIPAL ASSESSOR','2009-01-02',1),('S-32dfeabb:1405c599977:-7fff','F-32dfeabb:1405c599977:-8000','admin','appraiser',NULL,'admin admin','MUNICIPAL ASSESSOR','2009-01-02',0),('S-40276c8f:1406646f4a8:-7ffd','SD1cc5ef33:1406646657e:-7ff0','admin','approver',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',3),('S-40276c8f:1406646f4a8:-7ffe','SD1cc5ef33:1406646657e:-7ff0','admin','taxmapper',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',2),('S-40276c8f:1406646f4a8:-7fff','SD1cc5ef33:1406646657e:-7ff0','admin','recommender',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',1),('S-40276c8f:1406646f4a8:-8000','SD1cc5ef33:1406646657e:-7ff0','admin','appraiser',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',0),('S-6d3fd3f5:1405cc449ef:-7ff9','SD431bddeb:1405cc0b09d:-7fed','admin','approver',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',3),('S-6d3fd3f5:1405cc449ef:-7ffa','SD431bddeb:1405cc0b09d:-7fed','admin','taxmapper',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',2),('S-6d3fd3f5:1405cc449ef:-7ffb','SD431bddeb:1405cc0b09d:-7fed','admin','recommender',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',1),('S-6d3fd3f5:1405cc449ef:-7ffc','SD431bddeb:1405cc0b09d:-7fed','admin','appraiser',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',0),('S-726af93e:14080606f2b:-7ffc','F-726af93e:14080606f2b:-8000','S3d146095:1407b7cefd2:-7ff8','approver',NULL,'MA. ELENA RHODORA A. GIMENA','CITY ASSESSOR','2009-01-02',3),('S-726af93e:14080606f2b:-7ffd','F-726af93e:14080606f2b:-8000',NULL,'taxmapper',NULL,NULL,NULL,NULL,2),('S-726af93e:14080606f2b:-7ffe','F-726af93e:14080606f2b:-8000',NULL,'recommender',NULL,NULL,NULL,NULL,1),('S-726af93e:14080606f2b:-7fff','F-726af93e:14080606f2b:-8000','S3d146095:1407b7cefd2:-7ffa','appraiser',NULL,'JESSIE S. ZAMORA','LAOO II','2009-01-02',0),('S-75baafe6:1407bf5819f:-7ffc','F-75baafe6:1407bf5819f:-8000','S3d146095:1407b7cefd2:-7ff8','approver',NULL,'MA. ELENA RHODORA A. GIMENA','CITY ASSESSOR','2009-01-02',3),('S-75baafe6:1407bf5819f:-7ffd','F-75baafe6:1407bf5819f:-8000',NULL,'taxmapper',NULL,NULL,NULL,NULL,2),('S-75baafe6:1407bf5819f:-7ffe','F-75baafe6:1407bf5819f:-8000',NULL,'recommender',NULL,NULL,NULL,NULL,1),('S-75baafe6:1407bf5819f:-7fff','F-75baafe6:1407bf5819f:-8000','S3d146095:1407b7cefd2:-7ffa','appraiser',NULL,'JESSIE S. ZAMORA','LAOO II','2009-01-02',0),('S-78e6784:14060f18473:-7fe3','F-78e6784:14060f18473:-7fe7','admin','approver',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',3),('S-78e6784:14060f18473:-7fe4','F-78e6784:14060f18473:-7fe7','admin','taxmapper',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',2),('S-78e6784:14060f18473:-7fe5','F-78e6784:14060f18473:-7fe7','admin','recommender',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',1),('S-78e6784:14060f18473:-7fe6','F-78e6784:14060f18473:-7fe7','admin','appraiser',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',0),('S-78e6784:14060f18473:-7fed','CS-78e6784:14060f18473:-7ff1','admin','approver',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',3),('S-78e6784:14060f18473:-7fee','CS-78e6784:14060f18473:-7ff1','admin','taxmapper',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',2),('S-78e6784:14060f18473:-7fef','CS-78e6784:14060f18473:-7ff1','admin','recommender',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',1),('S-78e6784:14060f18473:-7ff0','CS-78e6784:14060f18473:-7ff1','admin','appraiser',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',0),('S-981a6c:1405c6727dd:-7ffc','F-981a6c:1405c6727dd:-8000','admin','approver',NULL,'admin admin','MUNICIPAL ASSESSOR','2009-01-02',3),('S-981a6c:1405c6727dd:-7ffd','F-981a6c:1405c6727dd:-8000','admin','taxmapper',NULL,'admin admin','MUNICIPAL ASSESSOR','2009-01-02',2),('S-981a6c:1405c6727dd:-7ffe','F-981a6c:1405c6727dd:-8000','admin','recommender',NULL,'admin admin','MUNICIPAL ASSESSOR','2009-01-02',1),('S-981a6c:1405c6727dd:-7fff','F-981a6c:1405c6727dd:-8000','admin','appraiser',NULL,'admin admin','MUNICIPAL ASSESSOR','2009-01-02',0),('S-efdf3df:1405c75ae82:-7ffc','F-efdf3df:1405c75ae82:-8000','admin','approver',NULL,'admin admin','MUNICIPAL ASSESSOR','2009-01-02',3),('S-efdf3df:1405c75ae82:-7fff','F-efdf3df:1405c75ae82:-8000','admin','appraiser',NULL,'admin admin','MUNICIPAL ASSESSOR','2009-01-02',0),('S1ddedc6d:14080d2a6a6:-7ff3','F1ddedc6d:14080d2a6a6:-7ff7','S3d146095:1407b7cefd2:-7ff8','approver',NULL,'MA. ELENA RHODORA A. GIMENA','CITY ASSESSOR','2009-01-02',3),('S1ddedc6d:14080d2a6a6:-7ff4','F1ddedc6d:14080d2a6a6:-7ff7',NULL,'taxmapper',NULL,NULL,NULL,NULL,2),('S1ddedc6d:14080d2a6a6:-7ff5','F1ddedc6d:14080d2a6a6:-7ff7',NULL,'recommender',NULL,NULL,NULL,NULL,1),('S1ddedc6d:14080d2a6a6:-7ff6','F1ddedc6d:14080d2a6a6:-7ff7','S3d146095:1407b7cefd2:-7ffa','appraiser',NULL,'JESSIE S. ZAMORA','LAOO II','2009-01-02',0),('S570c25cb:14077ead4fd:-7ffa','F570c25cb:14077ead4fd:-7ffe','USR-5ee93442:14076ff4b09:-7f28','approver',NULL,'RETIZA, ARNEL','LAOO II','2009-01-02',3),('S570c25cb:14077ead4fd:-7ffb','F570c25cb:14077ead4fd:-7ffe','USR-5ee93442:14076ff4b09:-7f28','taxmapper',NULL,'RETIZA, ARNEL','LAOO II','2009-01-02',2),('S570c25cb:14077ead4fd:-7ffc','F570c25cb:14077ead4fd:-7ffe','USR-5ee93442:14076ff4b09:-7f28','recommender',NULL,'RETIZA, ARNEL','LAOO II','2009-01-02',1),('S570c25cb:14077ead4fd:-7ffd','F570c25cb:14077ead4fd:-7ffe','USR-5ee93442:14076ff4b09:-7f28','appraiser',NULL,'RETIZA, ARNEL','LAOO II','2009-01-02',0),('S6e51087c:1405c6072af:-7ffc','F6e51087c:1405c6072af:-8000','admin','approver',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',3),('S6e51087c:1405c6072af:-7ffd','F6e51087c:1405c6072af:-8000','admin','taxmapper',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',2),('S6e51087c:1405c6072af:-7ffe','F6e51087c:1405c6072af:-8000','admin','recommender',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',1),('S6e51087c:1405c6072af:-7fff','F6e51087c:1405c6072af:-8000','admin','appraiser',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',0),('S79db0611:1405cf128e9:-7ff9','FSL660b4ed9:1405cd50eae:-7ff9','admin','approver',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',3),('S79db0611:1405cf128e9:-7ffa','FSL660b4ed9:1405cd50eae:-7ff9','admin','taxmapper',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',2),('S79db0611:1405cf128e9:-7ffb','FSL660b4ed9:1405cd50eae:-7ff9','admin','recommender',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',1),('S79db0611:1405cf128e9:-7ffc','FSL660b4ed9:1405cd50eae:-7ff9','admin','appraiser',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',0),('S79db0611:1405cf128e9:-7ffd','FSL660b4ed9:1405cd50eae:-7ffd','admin','approver',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',3),('S79db0611:1405cf128e9:-7ffe','FSL660b4ed9:1405cd50eae:-7ffd','admin','taxmapper',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',2),('S79db0611:1405cf128e9:-7fff','FSL660b4ed9:1405cd50eae:-7ffd','admin','recommender',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',1),('S79db0611:1405cf128e9:-8000','FSL660b4ed9:1405cd50eae:-7ffd','admin','appraiser',NULL,'admin admin','MUNICIPAL ASSESSOR','2013-01-02',0);

/*Table structure for table `workflowstate` */

DROP TABLE IF EXISTS `workflowstate`;

CREATE TABLE `workflowstate` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  PRIMARY KEY  (`objid`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `workflowstate` */

insert  into `workflowstate`(`objid`,`state`) values ('BS-4a2e501e:1403e545089:-7fff','DRAFT'),('BS-4a2e501e:1403e545089:-7fff','POSTED'),('BS-6230f4c0:1403e59861a:-8000','DRAFT'),('BS-6230f4c0:1403e59861a:-8000','POSTED'),('BS1eda02d2:1403e56c7b3:-8000','DRAFT'),('BS2cb63781:1403e4cd240:-7ffe','DRAFT'),('BS2cb63781:1403e4cd240:-7ffe','POSTED'),('BS2cb63781:1403e4cd240:-8000','DRAFT'),('BS2e282bc6:1403e8235a5:-7fe8','DRAFT'),('BS2e282bc6:1403e8235a5:-7fe8','POSTED'),('BS4a784676:1403e7296d1:-7ff8','DRAFT'),('BS4a784676:1403e7296d1:-7ff8','POSTED'),('BS5cf585f5:1403e57f866:-8000','DRAFT'),('BS5cf585f5:1403e57f866:-8000','POSTED'),('CA6893415:13feaf79536:-7fff','APPROVED'),('CA6893415:13feaf79536:-7fff','DRAFT'),('CA6893415:13feaf79536:-7fff','FORAPPROVAL'),('CF-6cbf72a3:13fd15b58f1:-7d49','APPROVED'),('CF-6cbf72a3:13fd15b58f1:-7d49','DRAFT'),('CF-6cbf72a3:13fd15b58f1:-7d49','FORAPPROVAL'),('CF-6cbf72a3:13fd15b58f1:-7d6e','APPROVED'),('CF-6cbf72a3:13fd15b58f1:-7d6e','DRAFT'),('CF-6cbf72a3:13fd15b58f1:-7d6e','FORAPPROVAL'),('CF-6cbf72a3:13fd15b58f1:-7da8','APPROVED'),('CS-78e6784:14060f18473:-7ff1','APPROVED'),('CS-78e6784:14060f18473:-7ff1','DRAFT'),('CS-78e6784:14060f18473:-7ff1','FORPROVAPPROVAL'),('CS-78e6784:14060f18473:-7ff1','FORPROVSUBMISSION'),('F-2ba91dd1:13fe605dd25:-8000','CURRENT'),('F-2ba91dd1:13fe605dd25:-8000','FORPROVAPPROVAL'),('F-2ba91dd1:13fe605dd25:-8000','FORPROVSUBMISSION'),('F-2ba91dd1:13fe605dd25:-8000','INTERIM'),('F-2c24f109:14057c977e5:-8000','INTERIM'),('F-32dfeabb:1405c599977:-8000','CURRENT'),('F-32dfeabb:1405c599977:-8000','FORPROVAPPROVAL'),('F-32dfeabb:1405c599977:-8000','FORPROVSUBMISSION'),('F-3c50e160:13ff65985a7:-8000','CURRENT'),('F-3c50e160:13ff65985a7:-8000','FORPROVAPPROVAL'),('F-3c50e160:13ff65985a7:-8000','FORPROVSUBMISSION'),('F-43d8910e:140053222da:-8000','INTERIM'),('F-6d006dbf:14051942ae2:-7ff2','CURRENT'),('F-6d006dbf:14051942ae2:-7ff2','FORPROVAPPROVAL'),('F-6d006dbf:14051942ae2:-7ff2','FORPROVSUBMISSION'),('F-6d006dbf:14051942ae2:-7ff2','INTERIM'),('F-6d006dbf:14051942ae2:-7ff7','CURRENT'),('F-6d006dbf:14051942ae2:-7ff7','FORPROVAPPROVAL'),('F-6d006dbf:14051942ae2:-7ff7','FORPROVSUBMISSION'),('F-6d006dbf:14051942ae2:-7ff7','INTERIM'),('F-6d006dbf:14051942ae2:-8000','CURRENT'),('F-6d006dbf:14051942ae2:-8000','FORPROVAPPROVAL'),('F-6d006dbf:14051942ae2:-8000','FORPROVSUBMISSION'),('F-6d006dbf:14051942ae2:-8000','INTERIM'),('F-6ed0d7f0:14005b9615b:-8000','CURRENT'),('F-6ed0d7f0:14005b9615b:-8000','FORPROVAPPROVAL'),('F-6ed0d7f0:14005b9615b:-8000','FORPROVSUBMISSION'),('F-6ed0d7f0:14005b9615b:-8000','INTERIM'),('F-726af93e:14080606f2b:-8000','CURRENT'),('F-726af93e:14080606f2b:-8000','FORAPPROVAL'),('F-75baafe6:1407bf5819f:-8000','CURRENT'),('F-75baafe6:1407bf5819f:-8000','FORAPPROVAL'),('F-78e6784:14060f18473:-7fe7','CURRENT'),('F-7ffd775d:140051fc775:-8000','FORPROVSUBMISSION'),('F-7ffd775d:140051fc775:-8000','INTERIM'),('F-97d8793:13fe5ee5d56:-8000','CURRENT'),('F-97d8793:13fe5ee5d56:-8000','FORPROVAPPROVAL'),('F-97d8793:13fe5ee5d56:-8000','FORPROVSUBMISSION'),('F-97d8793:13fe5ee5d56:-8000','INTERIM'),('F-fe7d5ed:14051c23e82:-7ff8','CURRENT'),('F-fe7d5ed:14051c23e82:-7ffc','CURRENT'),('F-fe7d5ed:14051c23e82:-8000','CURRENT'),('F12250eb2:13ff5fdce8a:-8000','CURRENT'),('F12250eb2:13ff5fdce8a:-8000','FORPROVAPPROVAL'),('F12250eb2:13ff5fdce8a:-8000','FORPROVSUBMISSION'),('F1225e7bd:13fe0411039:-8000','CURRENT'),('F1225e7bd:13fe0411039:-8000','FORPROVAPPROVAL'),('F1225e7bd:13fe0411039:-8000','FORPROVSUBMISSION'),('F1225e7bd:13fe0411039:-8000','INTERIM'),('F18b6b946:13fd16e0dc2:-7ff7','CURRENT'),('F18b6b946:13fd16e0dc2:-7ff7','FORPROVAPPROVAL'),('F1ddedc6d:14080d2a6a6:-7ff7','CURRENT'),('F1ddedc6d:14080d2a6a6:-7ff7','FORAPPROVAL'),('F34fe1740:13ff4ce3ddd:-7ffe','INTERIM'),('F570c25cb:14077ead4fd:-7ffe','CURRENT'),('F570c25cb:14077ead4fd:-7ffe','FORAPPROVAL'),('F66e4db07:14005138aa0:-8000','FORPROVSUBMISSION'),('F66e4db07:14005138aa0:-8000','INTERIM'),('F6e51087c:1405c6072af:-8000','CURRENT'),('F6e51087c:1405c6072af:-8000','FORPROVAPPROVAL'),('F6e51087c:1405c6072af:-8000','FORPROVSUBMISSION'),('FA535121b1:14080bb212a:-8000','APPROVED'),('FA535121b1:14080bb212a:-8000','DRAFT'),('FA535121b1:14080bb212a:-8000','FORAPPROVAL'),('FA6893415:13feaf79536:-8000','APPROVED'),('FA6893415:13feaf79536:-8000','CANCELLED'),('FA6893415:13feaf79536:-8000','DRAFT'),('FA6893415:13feaf79536:-8000','FORAPPROVAL'),('FSL660b4ed9:1405cd50eae:-7ff9','CURRENT'),('FSL660b4ed9:1405cd50eae:-7ffd','CURRENT'),('RS-31421a2b:1404d012fc3:-7fcf','DRAFT'),('RS-d08e113:1405197ff1c:-7f37','APPROVED'),('RS-d08e113:1405197ff1c:-7f37','DRAFT'),('RS-d08e113:1405197ff1c:-7f37','FORPROVAPPROVAL'),('RS-d08e113:1405197ff1c:-7f37','FORPROVSUBMISSION'),('RS7f8ee40d:1404d243093:-7fb1','DRAFT'),('RS7f8ee40d:1404d243093:-7fb1','FORPROVAPPROVAL'),('RS7f8ee40d:1404d243093:-7fb1','FORPROVSUBMISSION'),('RS7f8ee40d:1404d243093:-7fcf','DRAFT'),('UF-66375d46:13fe0649cde:-7fd8','APPROVED'),('UF-66375d46:13fe0649cde:-7fd8','DRAFT'),('UF-66375d46:13fe0649cde:-7fd8','FORAPPROVAL'),('UF5185fd2a:13fe06039d7:-7fd8','APPROVED'),('UF5185fd2a:13fe06039d7:-7fd8','DRAFT'),('UF5185fd2a:13fe06039d7:-7fd8','FORAPPROVAL');

/*Table structure for table `xscipts` */

DROP TABLE IF EXISTS `xscipts`;

CREATE TABLE `xscipts` (
  `name` varchar(50) NOT NULL,
  `script` text,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `xscipts` */

insert  into `xscipts`(`name`,`script`) values ('CLEAR COLLECTION','SET FOREIGN_KEY_CHECKS=0;\r\n\r\nDELETE FROM remittance_af;\r\nDELETE FROM remittance_cashreceipt;\r\nDELETE FROM remittance;\r\n\r\nDELETE FROM cashreceipt_void;\r\nDELETE FROM cashreceiptitem;\r\nDELETE FROM cashreceiptpayment_check;\r\n\r\nDELETE FROM cashreceipt_burial;\r\nDELETE FROM cashreceipt_largecattletransfer;\r\nDELETE FROM cashreceipt_largecattleownership;\r\nDELETE FROM cashreceipt_marriage;\r\nDELETE FROM cashreceipt_rpt_item;\r\nDELETE FROM cashreceipt_rpt;\r\nDELETE FROM cashreceipt_slaughter;\r\n\r\n\r\nDELETE FROM cashreceipt;\r\nDELETE FROM cashbook_entry;\r\nDELETE FROM cashbook;\r\n\r\n\r\nDELETE FROM afcontrol_activedetail;\r\nDELETE FROM afcontrol_detail;\r\nDELETE FROM afcontrol;\r\n\r\nDELETE FROM afstockcontrol_control;\r\nDELETE FROM afstockcontrol;\r\n\r\nDELETE FROM afissueitem;\r\nDELETE FROM afissue;\r\nDELETE FROM afreceiptitem;\r\nDELETE FROM afreceipt;\r\n\r\nDELETE FROM risitem;\r\nDELETE FROM ris;\r\n\r\nSET FOREIGN_KEY_CHECKS=1;'),('Clear RPT Data','DELETE FROM receiptitem_rptreceiptitem;\r\nDELETE FROM rptreceiptitem;\r\nDELETE FROM rptreceipt;\r\nDELETE FROM xreceiptitem;\r\nDELETE FROM xreceipt;\r\n\r\nDELETE FROM workflowstate WHERE objid IN (SELECT objid FROM subdivision);\r\nDELETE FROM txnref WHERE refid IN (SELECT objid FROM subdivision);\r\n\r\nDELETE FROM resectionitem;\r\nDELETE FROM resectionaffectedrpu;\r\nDELETE FROM resection;\r\n\r\nDELETE FROM cancelannotation;\r\nDELETE FROM faasannotation;\r\nDELETE FROM cancelledfaas; \r\n\r\nDELETE FROM consolidationaffectedrpu;\r\nDELETE FROM consolidatedland;\r\nDELETE FROM consolidation;\r\n\r\nDELETE FROM subdivisionaffectedrpu;\r\nDELETE FROM subdividedland;\r\nDELETE FROM subdivision;\r\n\r\n\r\nDELETE FROM rptledgeritem;\r\nDELETE FROM rptledgerfaas;\r\nDELETE FROM rptledger;\r\n\r\nDELETE FROM faasbacktax;\r\nDELETE FROM previousfaas;\r\nDELETE FROM faas;\r\n\r\n\r\n\r\nDELETE FROM miscrpuitem_rptparameter;\r\nDELETE FROM miscrpuitem;\r\nDELETE FROM miscrpu;\r\n\r\n\r\nDELETE FROM planttreedetail;\r\nDELETE FROM planttreerpu;\r\n\r\nDELETE FROM machdetail;\r\nDELETE FROM machuse;\r\nDELETE FROM machrpu;\r\n\r\nDELETE FROM bldgflooradditionalparam;\r\nDELETE FROM bldgstructure;\r\nDELETE FROM bldgflooradditional;\r\nDELETE FROM bldgfloor;\r\nDELETE FROM bldguse;\r\nDELETE FROM bldgrpu;\r\n\r\nDELETE FROM landadjustment;\r\nDELETE FROM landdetail;\r\nDELETE FROM landrpu;\r\n\r\nDELETE FROM rpu;\r\n\r\nDELETE FROM realproperty;\r\nDELETE FROM pin;\r\nDELETE FROM txnref;\r\n\r\nDELETE FROM landadjustmenttype_classification;\r\nDELETE FROM landadjustmenttype;\r\nDELETE FROM lcuvsubclass;\r\nDELETE FROM lcuvstripping;\r\nDELETE FROM lcuvspecificclass;\r\nDELETE FROM landassesslevelrange;\r\nDELETE FROM landassesslevel;\r\nDELETE FROM landrysetting;\r\n\r\n\r\nDELETE FROM bldgtype_storeyadjustment;\r\nDELETE FROM bldgtype_depreciation;\r\nDELETE FROM bldgadditionalitem;\r\nDELETE FROM bldgkindbucc;\r\nDELETE FROM bldgtype;\r\nDELETE FROM bldgassesslevelrange;\r\nDELETE FROM bldgassesslevel;\r\nDELETE FROM bldgrysetting;\r\n\r\n\r\nDELETE FROM machforex;\r\nDELETE FROM machassesslevelrange;\r\nDELETE FROM machassesslevel;\r\nDELETE FROM machrysetting;\r\n\r\n\r\nDELETE FROM planttreeunitvalue;\r\nDELETE FROM planttreeassesslevel;\r\nDELETE FROM planttreerysetting;\r\n\r\nDELETE FROM miscassesslevelrange;\r\nDELETE FROM miscassesslevel;\r\nDELETE FROM miscitemvalue;\r\nDELETE FROM miscrysetting;\r\n\r\nDELETE FROM rysetting_lgu;');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
