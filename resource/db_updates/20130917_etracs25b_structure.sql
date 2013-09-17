/*
SQLyog Enterprise - MySQL GUI v7.15 
MySQL - 5.0.27-community-nt : Database - etracs25b
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`etracs25b` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `etracs25b`;

/*Table structure for table `account` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `account` */

/*Table structure for table `account_segment` */

CREATE TABLE `account_segment` (
  `name` varchar(50) NOT NULL,
  `objectname` varchar(50) NOT NULL default '',
  `title` varchar(50) default NULL,
  `sortorder` int(11) default NULL,
  `depends` varchar(50) default NULL,
  `source` varchar(50) default NULL,
  `valuetype` varchar(10) default NULL,
  PRIMARY KEY  (`name`,`objectname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `account_segment` */

/*Table structure for table `afcontrol_transfer` */

CREATE TABLE `afcontrol_transfer` (
  `objid` varchar(50) NOT NULL,
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
  KEY `FK_afcontrol_transfer_afcontrol` (`controlid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `afcontrol_transfer` */

/*Table structure for table `afcontrolcancelled` */

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
  KEY `FK_afcontrolcancelled` (`controlid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `afcontrolcancelled` */

/*Table structure for table `afcontroltransferhistory` */

CREATE TABLE `afcontroltransferhistory` (
  `objid` varchar(50) NOT NULL,
  `controlid` varchar(50) default NULL,
  `txndate` datetime default NULL,
  `collector` varchar(50) default NULL,
  `assignee` varchar(50) default NULL,
  `startseries` int(11) default NULL,
  `endseries` int(11) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_afcontroltransferhistory` (`controlid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `afcontroltransferhistory` */

/*Table structure for table `afserial` */

CREATE TABLE `afserial` (
  `objid` varchar(50) NOT NULL,
  `serieslength` int(11) NOT NULL,
  KEY `FK_stockitem_afserial_cashreceiptform` (`objid`),
  CONSTRAINT `FK_stockitem_afserial` FOREIGN KEY (`objid`) REFERENCES `stockitem` (`objid`),
  CONSTRAINT `FK_stockitem_afserial_cashreceiptform` FOREIGN KEY (`objid`) REFERENCES `collectionform` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `afserial` */

insert  into `afserial`(`objid`,`serieslength`) values ('0016',7),('51',7),('52',7),('53',7),('54',7),('56',7),('57',7),('58',7),('907',7);

/*Table structure for table `afserial_control` */

CREATE TABLE `afserial_control` (
  `controlid` varchar(50) NOT NULL,
  `txnmode` varchar(10) default '',
  `assignee_objid` varchar(50) default '',
  `assignee_name` varchar(50) default NULL,
  `currentseries` int(11) default NULL,
  `qtyissued` int(11) default NULL,
  `active` smallint(1) default NULL,
  PRIMARY KEY  (`controlid`),
  UNIQUE KEY `uix_controlid_mode_assignee` (`controlid`,`txnmode`,`assignee_objid`),
  CONSTRAINT `FK_active_afserial_afcontrol` FOREIGN KEY (`controlid`) REFERENCES `afserial_inventory` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `afserial_control` */

/*Table structure for table `afserial_inventory` */

CREATE TABLE `afserial_inventory` (
  `objid` varchar(50) NOT NULL,
  `afid` varchar(50) default NULL,
  `respcenter_objid` varchar(50) default NULL,
  `respcenter_name` varchar(50) default NULL,
  `respcenter_type` varchar(25) default NULL,
  `startseries` int(11) default NULL,
  `endseries` int(11) default NULL,
  `currentseries` int(11) default NULL,
  `startstub` int(11) default NULL,
  `endstub` int(11) default NULL,
  `currentstub` int(11) default NULL,
  `prefix` varchar(10) default NULL,
  `suffix` varchar(10) default NULL,
  `unit` varchar(10) default NULL,
  `qtyin` int(11) default NULL,
  `qtyout` int(11) default NULL,
  `qtycancelled` int(11) default NULL,
  `qtybalance` int(11) default NULL,
  `currentlineno` int(11) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `afserial_inventory` */

/*Table structure for table `afserial_inventory_detail` */

CREATE TABLE `afserial_inventory_detail` (
  `objid` varchar(50) NOT NULL,
  `controlid` varchar(50) default NULL,
  `lineno` int(11) default NULL,
  `refid` varchar(50) default NULL,
  `refno` varchar(50) default NULL,
  `reftype` varchar(50) default NULL,
  `refdate` date default NULL,
  `txndate` datetime default NULL,
  `txntype` varchar(25) default NULL,
  `receivedstartseries` int(11) default NULL,
  `receivedendseries` int(11) default NULL,
  `beginstartseries` int(11) default NULL,
  `beginendseries` int(11) default NULL,
  `issuedstartseries` int(11) default NULL,
  `issuedendseries` int(11) default NULL,
  `endingstartseries` int(11) default NULL,
  `endingendseries` int(11) default NULL,
  `cancelledstartseries` int(11) default NULL,
  `cancelledendseries` int(11) default NULL,
  `qtyreceived` int(11) default NULL,
  `qtybegin` int(11) default NULL,
  `qtyissued` int(11) default NULL,
  `qtyending` int(11) default NULL,
  `qtycancelled` int(11) default NULL,
  `remarks` varchar(255) default NULL,
  `remittanceid` varchar(50) default NULL,
  KEY `FK_afcontrol_detail_afcontrol` (`controlid`),
  CONSTRAINT `FK_afcontrol_detail_afcontrol` FOREIGN KEY (`controlid`) REFERENCES `afserial_inventory` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `afserial_inventory_detail` */

/*Table structure for table `ap` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ap` */

/*Table structure for table `ap_detail` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ap_detail` */

/*Table structure for table `ar` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ar` */

/*Table structure for table `ar_detail` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ar_detail` */

/*Table structure for table `assessmentnotice` */

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

/*Table structure for table `bankaccount` */

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
  `currentlineno` int(1) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Data for the table `bankaccount` */

/*Table structure for table `bankaccount_account` */

CREATE TABLE `bankaccount_account` (
  `objid` varchar(50) NOT NULL default '',
  `acctid` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`objid`),
  KEY `FK_bankaccount_account_account` (`acctid`),
  CONSTRAINT `FK_bankaccount_account_account` FOREIGN KEY (`acctid`) REFERENCES `account` (`objid`),
  CONSTRAINT `FK_bankaccount_account_bankaccount` FOREIGN KEY (`objid`) REFERENCES `bankaccount` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bankaccount_account` */

/*Table structure for table `bankaccount_entry` */

CREATE TABLE `bankaccount_entry` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) default NULL,
  `txndate` datetime default NULL,
  `refdate` date default NULL,
  `refid` varchar(50) default NULL,
  `refno` varchar(50) default NULL,
  `reftype` varchar(50) default NULL,
  `particulars` varchar(255) default NULL,
  `dr` decimal(16,2) default NULL,
  `cr` decimal(16,2) default NULL,
  `runbalance` decimal(16,2) default NULL,
  `lineno` int(11) default NULL,
  `postingrefid` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_bankaccount_parent_refid_reftype` (`parentid`,`refid`,`reftype`),
  UNIQUE KEY `uix_parentid_lineno` (`parentid`,`lineno`),
  KEY `bankaccount_parent` (`parentid`),
  KEY `idx_bankaccount_refid` (`refid`),
  CONSTRAINT `bankaccount_parent` FOREIGN KEY (`parentid`) REFERENCES `bankaccount` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bankaccount_entry` */

/*Table structure for table `bankdeposit` */

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
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bankdeposit` */

/*Table structure for table `bankdeposit_entry` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bankdeposit_entry` */

/*Table structure for table `bankdeposit_entry_check` */

CREATE TABLE `bankdeposit_entry_check` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_bankdeposit_check` (`parentid`),
  CONSTRAINT `FK_bankdeposit_check` FOREIGN KEY (`parentid`) REFERENCES `bankdeposit_entry` (`objid`),
  CONSTRAINT `FK_bankdeposit_check_checkpayment` FOREIGN KEY (`objid`) REFERENCES `cashreceiptpayment_check` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bankdeposit_entry_check` */

/*Table structure for table `bankdeposit_liquidation` */

CREATE TABLE `bankdeposit_liquidation` (
  `objid` varchar(50) NOT NULL,
  `bankdepositid` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_bankdeposit_liquidation` (`bankdepositid`),
  CONSTRAINT `FK_bankdeposit_liquidation` FOREIGN KEY (`bankdepositid`) REFERENCES `bankdeposit` (`objid`),
  CONSTRAINT `FK_bankdeposit_liquidation_fund` FOREIGN KEY (`objid`) REFERENCES `liquidation_cashier_fund` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `bankdeposit_liquidation` */

/*Table structure for table `barangay` */

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

/*Table structure for table `batchcapture` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `batchcapture` */

/*Table structure for table `bldgadditionalitem` */

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

/*Table structure for table `bldgassesslevel` */

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

/*Table structure for table `bldgassesslevelrange` */

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

/*Table structure for table `bldgfloor` */

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

/*Table structure for table `bldgkindbucc` */

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

/*Table structure for table `bldgrpu` */

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

/*Table structure for table `bldgstructure` */

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

/*Table structure for table `bldgtype_depreciation` */

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

/*Table structure for table `businessapplication` */

CREATE TABLE `businessapplication` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(15) NOT NULL default '',
  `appno` varchar(20) NOT NULL default '',
  `apptype` varchar(15) NOT NULL default '',
  `appdate` datetime NOT NULL,
  `permitee_name` varchar(255) NOT NULL default '',
  `permitee_objid` varchar(50) NOT NULL default '',
  `barangay_objid` varchar(50) default NULL,
  `barangay_name` varchar(50) default NULL,
  `tradename` varchar(255) NOT NULL,
  `businessaddress` varchar(50) default NULL,
  `businessorgtype` varchar(50) default NULL,
  `channel` varchar(20) default NULL,
  `ids` text,
  `lobs` text,
  `details` mediumtext,
  `taxfees` mediumtext,
  `iyear` int(11) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uni_controlno` (`appno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `businessapplication` */

/*Table structure for table `businessapplication_lob` */

CREATE TABLE `businessapplication_lob` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) default NULL,
  `lobid` varchar(50) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `businessapplication_lob` */

/*Table structure for table `businessreceivable` */

CREATE TABLE `businessreceivable` (
  `objid` varchar(50) NOT NULL,
  `appid` varchar(50) default NULL,
  `indexno` int(11) default NULL,
  `item_objid` varchar(50) default NULL,
  `item_code` varchar(50) default NULL,
  `item_title` varchar(100) default NULL,
  `lob_objid` varchar(50) default NULL,
  `lob_name` varchar(100) default NULL,
  `amount` decimal(16,2) NOT NULL,
  `amtpaid` decimal(16,2) NOT NULL,
  `balance` decimal(16,2) NOT NULL,
  `lastqtrpaid` int(11) NOT NULL,
  `allowqtr` smallint(11) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `businessreceivable` */

/*Table structure for table `businessreceivable_credit` */

CREATE TABLE `businessreceivable_credit` (
  `objid` varchar(50) NOT NULL default '',
  `refid` varchar(50) default NULL,
  `receiptid` varchar(50) default NULL,
  `principalpaid` decimal(16,2) default NULL,
  `surchargepaid` decimal(16,2) default NULL,
  `interestpaid` decimal(16,2) default NULL,
  `discounted` decimal(16,2) default NULL,
  `qtr` int(11) default NULL,
  `year` int(11) default NULL,
  `partialprincipal` decimal(16,2) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_businessreceivable_credit` (`refid`),
  CONSTRAINT `FK_businessreceivable_credit` FOREIGN KEY (`refid`) REFERENCES `businessreceivable` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `businessreceivable_credit` */

/*Table structure for table `businessvariable` */

CREATE TABLE `businessvariable` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL default '' COMMENT 'DRAFT, APPROVED',
  `name` varchar(50) NOT NULL,
  `datatype` varchar(20) NOT NULL,
  `caption` varchar(50) NOT NULL,
  `description` varchar(100) default NULL,
  `arrayvalues` text,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_variable_name` (`name`),
  KEY `ix_variable_state` (`state`),
  KEY `ix_variable_caption` (`caption`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `businessvariable` */

/*Table structure for table `cancelannotation` */

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

/*Table structure for table `cashbook` */

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
  `fund_title` varchar(100) default NULL,
  `org_objid` varchar(50) default NULL,
  `org_code` varchar(50) default NULL,
  `org_name` varchar(50) default NULL,
  `beginbalance` decimal(16,2) default NULL,
  `forwardbalance` decimal(16,2) default NULL,
  `totaldr` decimal(16,2) default NULL,
  `totalcr` decimal(16,2) default NULL,
  `endbalance` decimal(16,2) default NULL,
  `currentlineno` int(11) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_subacct_fund` (`subacct_objid`,`fund_objid`),
  KEY `FK_cashbook_fund` (`fund_objid`),
  CONSTRAINT `FK_cashbook_fund` FOREIGN KEY (`fund_objid`) REFERENCES `fund` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cashbook` */

/*Table structure for table `cashbook_entry` */

CREATE TABLE `cashbook_entry` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) default NULL,
  `txndate` datetime default NULL,
  `refdate` date default NULL,
  `refid` varchar(50) default NULL,
  `refno` varchar(50) default NULL,
  `reftype` varchar(50) default NULL,
  `particulars` varchar(255) default NULL,
  `dr` decimal(16,2) default NULL,
  `cr` decimal(16,2) default NULL,
  `runbalance` decimal(16,2) default NULL,
  `lineno` int(11) default NULL,
  `postingrefid` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_parentid_lineno` (`parentid`,`lineno`),
  KEY `cashbook_parent` (`parentid`),
  KEY `idx_refid` (`refid`),
  KEY `uix_parent_refid_reftype` (`parentid`,`refid`,`reftype`),
  CONSTRAINT `cashbook_parent` FOREIGN KEY (`parentid`) REFERENCES `cashbook` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cashbook_entry` */

/*Table structure for table `cashreceipt` */

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
  CONSTRAINT `FK_cashreceipt_collector` FOREIGN KEY (`collector_objid`) REFERENCES `sys_user` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cashreceipt` */

/*Table structure for table `cashreceipt_burial` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cashreceipt_burial` */

/*Table structure for table `cashreceipt_business` */

CREATE TABLE `cashreceipt_business` (
  `objid` varchar(50) NOT NULL default '',
  `tradename` varchar(255) default NULL,
  `appid` varchar(50) NOT NULL default '' COMMENT 'ONLINE, MANUAL'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `cashreceipt_business` */

/*Table structure for table `cashreceipt_largecattleownership` */

CREATE TABLE `cashreceipt_largecattleownership` (
  `objid` varchar(50) NOT NULL,
  `ownerof` varchar(200) default NULL,
  `sex` varchar(10) default NULL,
  `age` int(11) default NULL,
  `municipalitybrand` varchar(20) default NULL,
  `ownerbrand` varchar(20) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cashreceipt_largecattleownership` */

/*Table structure for table `cashreceipt_largecattletransfer` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cashreceipt_largecattletransfer` */

/*Table structure for table `cashreceipt_marriage` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cashreceipt_marriage` */

/*Table structure for table `cashreceipt_rpt` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cashreceipt_slaughter` */

/*Table structure for table `cashreceipt_void` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cashreceipt_void` */

/*Table structure for table `cashreceiptitem` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cashreceiptitem` */

/*Table structure for table `cashreceiptitem_discount` */

CREATE TABLE `cashreceiptitem_discount` (
  `objid` varchar(50) default NULL,
  `receiptid` varchar(50) default NULL,
  `receiptitemid` varchar(50) default NULL,
  `acctid` varchar(50) default NULL,
  `amount` decimal(16,2) default NULL,
  `title` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cashreceiptitem_discount` */

/*Table structure for table `cashreceiptpayment_check` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cashreceiptpayment_check` */

/*Table structure for table `cashticket` */

CREATE TABLE `cashticket` (
  `objid` varchar(50) NOT NULL,
  `denomination` decimal(10,2) NOT NULL,
  KEY `FK_stockitem_cashticket_cashreceiptform` (`objid`),
  CONSTRAINT `FK_stockitem_cashticket` FOREIGN KEY (`objid`) REFERENCES `stockitem` (`objid`),
  CONSTRAINT `FK_stockitem_cashticket_cashreceiptform` FOREIGN KEY (`objid`) REFERENCES `collectionform` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cashticket` */

insert  into `cashticket`(`objid`,`denomination`) values ('CT1','1.00'),('CT10','10.00'),('CT2','2.00'),('CT5','5.00');

/*Table structure for table `cashticket_control` */

CREATE TABLE `cashticket_control` (
  `controlid` varchar(50) NOT NULL,
  `mode` varchar(10) NOT NULL,
  `assignee_objid` varchar(50) NOT NULL,
  `assignee_name` varchar(50) default NULL,
  `qtyin` int(11) default NULL,
  `qtyissued` int(11) default NULL,
  `qtybalance` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cashticket_control` */

/*Table structure for table `cashticket_inventory` */

CREATE TABLE `cashticket_inventory` (
  `objid` varchar(50) NOT NULL,
  `afid` varchar(50) default NULL,
  `respcenter_objid` varchar(50) default NULL,
  `respcenter_name` varchar(50) default NULL,
  `respcenter_type` varchar(25) default NULL,
  `startstub` int(11) default NULL,
  `endstub` int(11) default NULL,
  `currentstub` int(11) default NULL,
  `qtyin` int(11) default NULL,
  `qtyout` int(11) default NULL,
  `qtycancelled` int(11) default NULL,
  `qtybalance` int(11) default NULL,
  `currentlineno` int(11) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cashticket_inventory` */

/*Table structure for table `cashticket_inventory_detail` */

CREATE TABLE `cashticket_inventory_detail` (
  `objid` varchar(50) NOT NULL,
  `controlid` varchar(50) default NULL,
  `lineno` int(11) default NULL,
  `refid` varchar(50) default NULL,
  `refno` varchar(50) default NULL,
  `reftype` varchar(50) default NULL,
  `refdate` date default NULL,
  `txndate` datetime default NULL,
  `txntype` varchar(25) default NULL,
  `qtyin` int(11) default NULL,
  `qtyout` int(11) default NULL,
  `qtyending` int(11) default NULL,
  `qtycancelled` int(11) default NULL,
  `remarks` varchar(255) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cashticket_inventory_detail` */

/*Table structure for table `city` */

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
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lgu_barangay_name` (`name`),
  UNIQUE KEY `ux_lgu_barangay_name_state` (`name`,`state`),
  KEY `ix_lgu_barangay_indexno` (`indexno`),
  KEY `ix_lgu_barangay_previd` (`previd`),
  KEY `ix_lgu_barangay_parentid` (`parentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `city` */

/*Table structure for table `collectionform` */

CREATE TABLE `collectionform` (
  `objid` varchar(50) NOT NULL,
  `title` varchar(255) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `collectionform` */

insert  into `collectionform`(`objid`,`title`) values ('0016','COMMUNITY TAX CERTIFICATE (INDIVIDUAL)'),('51','ACCOUNTABLE FORM #51'),('52','LARGE CATTLE TRANSFER'),('53','LARGE CATTLE OWNERSHIP'),('54','MARRIAGE LICENSE FEE'),('56','REAL PROPERTY TAX RECEIPT'),('57','SLAUGHTER PERMIT'),('58','BURIAL PERMIT FEE'),('907','COMMUNITY TAX(CORPORATE)'),('CT1','CASH TICKETS P1.00'),('CT10','CASH TICKET P10.00'),('CT2','CASH TICKETS P2.00'),('CT5','CASH TICKETS P 5.00');

/*Table structure for table `collectiontype` */

CREATE TABLE `collectiontype` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) default NULL,
  `name` varchar(50) default NULL,
  `title` varchar(50) default NULL,
  `formno` varchar(10) default NULL,
  `handler` varchar(25) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `collectiontype` */

/*Table structure for table `consolidatedland` */

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

/*Table structure for table `entity` */

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

/*Table structure for table `entitycontact` */

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

/*Table structure for table `entityjuridical` */

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

/*Table structure for table `entitymember` */

CREATE TABLE `entitymember` (
  `objid` varchar(50) character set utf8 NOT NULL default '',
  `entityid` varchar(50) character set utf8 NOT NULL default '',
  `itemno` int(11) NOT NULL,
  `prefix` varchar(25) character set utf8 default NULL,
  `taxpayer_objid` varchar(50) character set utf8 NOT NULL default '',
  `taxpayer_name` text character set utf8 NOT NULL,
  `taxpayer_address` varchar(160) character set utf8 NOT NULL,
  `suffix` varchar(25) character set utf8 default NULL,
  `remarks` varchar(160) character set utf8 default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_entitymember_entity` (`entityid`),
  KEY `ix_taxpayer_name` (`taxpayer_name`(255)),
  KEY `ix_taxpayer_objid` (`taxpayer_objid`),
  CONSTRAINT `FK_entitymember_entity` FOREIGN KEY (`entityid`) REFERENCES `entity` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `entitymember` */

/*Table structure for table `entitymultiple` */

CREATE TABLE `entitymultiple` (
  `objid` varchar(50) NOT NULL,
  `fullname` text,
  PRIMARY KEY  (`objid`),
  CONSTRAINT `FK_entitymultiple_entity` FOREIGN KEY (`objid`) REFERENCES `entity` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `entitymultiple` */

/*Table structure for table `exemptiontype` */

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

/*Table structure for table `faas` */

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

/*Table structure for table `faasannotation` */

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

/*Table structure for table `faasannotationtype` */

CREATE TABLE `faasannotationtype` (
  `objid` varchar(50) NOT NULL default '',
  `type` varchar(100) NOT NULL default '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `annotationtype` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `faasannotationtype` */

/*Table structure for table `faasbacktax` */

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

CREATE TABLE `fund` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) default NULL,
  `state` varchar(10) default NULL,
  `code` varchar(50) default NULL,
  `title` varchar(255) default NULL,
  `type` varchar(20) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `fund` */

/*Table structure for table `landadjustment` */

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

/*Table structure for table `landadjustmenttype_classification` */

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

/*Table structure for table `landassesslevel` */

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

/*Table structure for table `landassesslevelrange` */

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

/*Table structure for table `landrpu` */

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

/*Table structure for table `landrysetting` */

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

/*Table structure for table `lcuvspecificclass` */

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

/*Table structure for table `lcuvstripping` */

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

/*Table structure for table `liquidation` */

CREATE TABLE `liquidation` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(50) NOT NULL default '',
  `txnno` varchar(50) NOT NULL default '',
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `liquidation` */

/*Table structure for table `liquidation_cashier_fund` */

CREATE TABLE `liquidation_cashier_fund` (
  `objid` varchar(50) NOT NULL,
  `liquidationid` varchar(50) default NULL,
  `fund_objid` varchar(50) default NULL,
  `fund_title` varchar(100) default NULL,
  `cashier_objid` varchar(50) default NULL,
  `cashier_name` varchar(50) default NULL,
  `amount` decimal(16,2) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_liquidation_cashier_fund_liquidation` (`liquidationid`),
  CONSTRAINT `FK_liquidation_cashier_fund_liquidation` FOREIGN KEY (`liquidationid`) REFERENCES `liquidation` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `liquidation_cashier_fund` */

/*Table structure for table `liquidation_checkpayment` */

CREATE TABLE `liquidation_checkpayment` (
  `objid` varchar(50) NOT NULL,
  `liquidationid` varchar(50) NOT NULL,
  KEY `FK_liquidation_checkpayment` (`objid`),
  KEY `FK_liquidation_checkpayment_liquidation` (`liquidationid`),
  CONSTRAINT `FK_liquidation_checkpayment` FOREIGN KEY (`objid`) REFERENCES `cashreceiptpayment_check` (`objid`),
  CONSTRAINT `FK_liquidation_checkpayment_liquidation` FOREIGN KEY (`liquidationid`) REFERENCES `liquidation` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `liquidation_checkpayment` */

/*Table structure for table `liquidation_remittance` */

CREATE TABLE `liquidation_remittance` (
  `objid` varchar(50) NOT NULL default '',
  `liquidationid` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`objid`),
  KEY `FK_liquidationitem_liquidation` (`liquidationid`),
  CONSTRAINT `FK_liquidation_remittance_liquidation` FOREIGN KEY (`liquidationid`) REFERENCES `liquidation` (`objid`),
  CONSTRAINT `FK_liquidation_remittance_remittance` FOREIGN KEY (`objid`) REFERENCES `remittance` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `liquidation_remittance` */

/*Table structure for table `lob` */

CREATE TABLE `lob` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL default '',
  `name` varchar(100) NOT NULL,
  `classification_objid` varchar(50) NOT NULL default '',
  `psic` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lob_name` (`name`),
  KEY `FK_lob_lobclassification` (`classification_objid`),
  CONSTRAINT `FK_lob_classification` FOREIGN KEY (`classification_objid`) REFERENCES `lobclassification` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lob` */

/*Table structure for table `lob_lobattribute` */

CREATE TABLE `lob_lobattribute` (
  `lobid` varchar(50) NOT NULL,
  `lobattributeid` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`lobid`,`lobattributeid`),
  KEY `FK_lobattribute_attribute` (`lobattributeid`),
  CONSTRAINT `FK_lobattribute_lob` FOREIGN KEY (`lobid`) REFERENCES `lob` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lob_lobattribute` */

/*Table structure for table `lobattribute` */

CREATE TABLE `lobattribute` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL COMMENT 'DRAFT, APPROVED',
  `name` varchar(50) NOT NULL,
  `description` varchar(100) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_attribute_name` (`name`),
  KEY `ix_attribute_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lobattribute` */

/*Table structure for table `lobclassification` */

CREATE TABLE `lobclassification` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(10) NOT NULL default '' COMMENT 'DRAFT, APPROVED',
  `name` varchar(100) NOT NULL,
  `remarks` varchar(100) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lobclassification_name` (`name`),
  KEY `ix_lobclassification_state` (`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lobclassification` */

/*Table structure for table `machassesslevel` */

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

/*Table structure for table `machassesslevelrange` */

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

/*Table structure for table `machrpu` */

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

/*Table structure for table `machuse` */

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

/*Table structure for table `miscassesslevel` */

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

/*Table structure for table `miscassesslevelrange` */

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

/*Table structure for table `miscitemvalue` */

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

/*Table structure for table `miscrpu` */

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

/*Table structure for table `municipality` */

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
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lgu_barangay_name` (`name`),
  UNIQUE KEY `ux_lgu_barangay_name_state` (`name`,`state`),
  KEY `ix_lgu_barangay_indexno` (`indexno`),
  KEY `ix_lgu_barangay_previd` (`previd`),
  KEY `ix_lgu_barangay_parentid` (`parentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `municipality` */

/*Table structure for table `pin` */

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

/*Table structure for table `planttree` */

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

/*Table structure for table `planttreeassesslevel` */

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

/*Table structure for table `planttreedetail` */

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

/*Table structure for table `planttreeunitvalue` */

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

/*Table structure for table `postcapturedreceipt` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `postcapturedreceipt` */

/*Table structure for table `previousfaas` */

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

/*Table structure for table `province` */

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
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lgu_barangay_name` (`name`),
  UNIQUE KEY `ux_lgu_barangay_name_state` (`name`,`state`),
  KEY `ix_lgu_barangay_indexno` (`indexno`),
  KEY `ix_lgu_barangay_previd` (`previd`),
  KEY `ix_lgu_barangay_parentid` (`parentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `province` */

/*Table structure for table `realproperty` */

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

/*Table structure for table `realproperty_faas` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `remittance` */

/*Table structure for table `remittance_cashreceipt` */

CREATE TABLE `remittance_cashreceipt` (
  `objid` varchar(50) NOT NULL default '',
  `remittanceid` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`objid`),
  KEY `FK_remittanceitem_remittance` (`remittanceid`),
  CONSTRAINT `FK_remittance_cashreceipt_cashreceipt` FOREIGN KEY (`objid`) REFERENCES `cashreceipt` (`objid`),
  CONSTRAINT `FK_remittance_cashreceipt_remittance` FOREIGN KEY (`remittanceid`) REFERENCES `remittance` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `remittance_cashreceipt` */

/*Table structure for table `remittance_checkpayment` */

CREATE TABLE `remittance_checkpayment` (
  `objid` varchar(50) NOT NULL,
  `remittanceid` varchar(50) default NULL,
  `amount` decimal(16,2) default NULL,
  `voided` int(11) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_remittance_checkpayment_remittance` (`remittanceid`),
  CONSTRAINT `FK_remittance_checkpayment_remittance` FOREIGN KEY (`remittanceid`) REFERENCES `remittance` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `remittance_checkpayment` */

/*Table structure for table `remittance_fund` */

CREATE TABLE `remittance_fund` (
  `objid` varchar(50) NOT NULL,
  `remittanceid` varchar(50) default NULL,
  `fund_objid` varchar(50) default NULL,
  `fund_title` varchar(100) default NULL,
  `amount` decimal(16,2) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_remittance_fund` (`remittanceid`,`fund_objid`),
  CONSTRAINT `FK_remittance_fund` FOREIGN KEY (`remittanceid`) REFERENCES `remittance` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `remittance_fund` */

/*Table structure for table `resection` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `revenueitem` */

/*Table structure for table `revenueitem_account` */

CREATE TABLE `revenueitem_account` (
  `objid` varchar(50) NOT NULL default '',
  `acctid` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`objid`),
  KEY `FK_itemaccount_glaccount` (`acctid`),
  CONSTRAINT `FK_itemaccount_glaccount` FOREIGN KEY (`acctid`) REFERENCES `account` (`objid`),
  CONSTRAINT `FK_revenueitem_account_revenueitem` FOREIGN KEY (`objid`) REFERENCES `revenueitem` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `revenueitem_account` */

/*Table structure for table `revenueitem_sreaccount` */

CREATE TABLE `revenueitem_sreaccount` (
  `objid` varchar(50) NOT NULL default '',
  `acctid` varchar(50) NOT NULL default '',
  KEY `FK_revenueitem_sreaccount_sreaccount` (`acctid`),
  CONSTRAINT `FK_revenueitem_sreaccount_sreaccount` FOREIGN KEY (`acctid`) REFERENCES `sreaccount` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `revenueitem_sreaccount` */

/*Table structure for table `revenueitem_subaccount` */

CREATE TABLE `revenueitem_subaccount` (
  `objid` varchar(50) NOT NULL default '',
  `acctid` varchar(50) NOT NULL default '',
  KEY `FK_revenueitem_subaccount_revenueitem` (`objid`),
  KEY `FK_revenueitem_subaccount_account` (`acctid`),
  CONSTRAINT `FK_revenueitem_subaccount_account` FOREIGN KEY (`acctid`) REFERENCES `account` (`objid`),
  CONSTRAINT `FK_revenueitem_subaccount_revenueitem` FOREIGN KEY (`objid`) REFERENCES `revenueitem` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `revenueitem_subaccount` */

/*Table structure for table `rptcertification` */

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

/*Table structure for table `rptledgerfaas` */

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

/*Table structure for table `rptledgeritem` */

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

/*Table structure for table `rptparameter` */

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

/*Table structure for table `rpttaxclearance` */

CREATE TABLE `rpttaxclearance` (
  `objid` varchar(50) NOT NULL,
  `year` int(11) NOT NULL,
  `qtr` int(11) NOT NULL,
  PRIMARY KEY  (`objid`),
  CONSTRAINT `FK_rpttaxclearance_rptcertification` FOREIGN KEY (`objid`) REFERENCES `rptcertification` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rpttaxclearance` */

/*Table structure for table `rpu` */

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

/*Table structure for table `rule` */

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

/*Table structure for table `rule_package` */

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

/*Table structure for table `rule_sets` */

CREATE TABLE `rule_sets` (
  `name` varchar(50) NOT NULL default '',
  `rulegroup` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rule_sets` */

/*Table structure for table `rulegroup` */

CREATE TABLE `rulegroup` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(255) default NULL,
  `sortorder` int(11) NOT NULL,
  `ruleset` varchar(50) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rulegroup` */

/*Table structure for table `rysetting_lgu` */

CREATE TABLE `rysetting_lgu` (
  `rysettingid` varchar(50) NOT NULL default '',
  `lguid` varchar(50) NOT NULL,
  `lguname` varchar(100) NOT NULL,
  `settingtype` varchar(15) NOT NULL,
  PRIMARY KEY  (`rysettingid`,`lguid`),
  KEY `FK_rysetting_lgu_lgu` (`lguid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rysetting_lgu` */

/*Table structure for table `signatory` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `signatory` */

/*Table structure for table `specialaccountsetting` */

CREATE TABLE `specialaccountsetting` (
  `objid` varchar(50) NOT NULL default '',
  `item_objid` varchar(50) NOT NULL default '',
  `amount` decimal(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  CONSTRAINT `FK_specialaccountsetting_collectiontype` FOREIGN KEY (`objid`) REFERENCES `collectiontype` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `specialaccountsetting` */

/*Table structure for table `sreaccount` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sreaccount` */

/*Table structure for table `stockissue` */

CREATE TABLE `stockissue` (
  `objid` varchar(50) NOT NULL default '',
  `state` varchar(50) default NULL,
  `request_objid` varchar(50) default NULL,
  `request_reqno` varchar(50) default NULL,
  `issueno` varchar(50) default NULL,
  `dtfiled` datetime default NULL,
  `reqtype` varchar(10) default NULL,
  `user_objid` varchar(50) default NULL,
  `user_name` varchar(100) default NULL,
  `issueto_objid` varchar(50) default NULL,
  `issueto_name` varchar(100) default NULL,
  `issueto_title` varchar(50) default NULL,
  `org_objid` varchar(50) default NULL,
  `org_name` varchar(50) default NULL,
  `itemclass` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `stockissue_issueno` (`issueno`),
  KEY `FK_stockissue_request` (`request_objid`),
  CONSTRAINT `FK_stockissue_request` FOREIGN KEY (`request_objid`) REFERENCES `stockrequest` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stockissue` */

/*Table structure for table `stockissueitem` */

CREATE TABLE `stockissueitem` (
  `objid` varchar(50) NOT NULL default '',
  `parentid` varchar(50) NOT NULL,
  `item_objid` varchar(50) default NULL,
  `item_code` varchar(50) default NULL,
  `item_title` varchar(255) default NULL,
  `unit` varchar(20) default NULL,
  `qtyrequested` int(11) default NULL,
  `qtyissued` int(11) default NULL,
  `remarks` varchar(255) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_stockissueitem_stockissue` (`parentid`),
  CONSTRAINT `FK_stockissueitem_stockissue` FOREIGN KEY (`parentid`) REFERENCES `stockissue` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stockissueitem` */

/*Table structure for table `stockitem` */

CREATE TABLE `stockitem` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(20) default NULL,
  `code` varchar(20) default NULL,
  `type` varchar(50) default NULL,
  `itemclass` varchar(50) default NULL,
  `title` varchar(150) default NULL,
  `description` varchar(255) default NULL,
  `baseunit` varchar(10) default NULL,
  `defaultunit` varchar(10) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `stockitem_code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stockitem` */

insert  into `stockitem`(`objid`,`state`,`code`,`type`,`itemclass`,`title`,`description`,`baseunit`,`defaultunit`) values ('0016','APPROVED','0016','AFSERIAL','AF','COMMUNITY TAX CERTIFICATE (INDIVIDUAL)','COMMUNITY TAX CERTIFICATE (INDIVIDUAL)','EA','STUB'),('51','APPROVED','51','AFSERIAL','AF','ACCOUNTABLE FORM #51','ACCOUNTABLE FORM #51','EA','STUB'),('52','APPROVED','52','AFSERIAL','AF','LARGE CATTLE TRANSFER','LARGE CATTLE TRANSFER','EA','STUB'),('53','APPROVED','53','AFSERIAL','AF','LARGE CATTLE OWNERSHIP','LARGE CATTLE OWNERSHIP','EA','STUB'),('54','APPROVED','54','AFSERIAL','AF','MARRIAGE LICENSE FEE','MARRIAGE LICENSE FEE','EA','STUB'),('56','APPROVED','56','AFSERIAL','AF','REAL PROPERTY TAX RECEIPT','REAL PROPERTY TAX RECEIPT','EA','STUB'),('57','APPROVED','57','AFSERIAL','AF','SLAUGHTER PERMIT','SLAUGHTER PERMIT','EA','STUB'),('58','APPROVED','58','AFSERIAL','AF','BURIAL PERMIT FEE','BURIAL PERMIT FEE','EA','STUB'),('907','APPROVED','907','AFSERIAL','AF','COMMUNITY TAX(CORPORATE)','COMMUNITY TAX(CORPORATE)','EA','STUB'),('CT1','APPROVED','CT1','CASHTICKET','AF','CASH TICKETS P1.00','CASH TICKETS P1.00','EA','PAD'),('CT10','APPROVED','CT10','CASHTICKET','AF','CASH TICKET P10.00','CASH TICKET P10.00','EA','PAD'),('CT2','APPROVED','CT2','CASHTICKET','AF','CASH TICKETS P2.00','CASH TICKETS P2.00','EA','PAD'),('CT5','APPROVED','CT5','CASHTICKET','AF','CASH TICKETS P 5.00','CASH TICKETS P 5.00','EA','PAD');

/*Table structure for table `stockitem_unit` */

CREATE TABLE `stockitem_unit` (
  `itemid` varchar(50) NOT NULL default '',
  `unit` varchar(10) NOT NULL default '',
  `qty` int(255) default NULL,
  PRIMARY KEY  (`itemid`,`unit`),
  CONSTRAINT `FK_stockitem_unit_stockitem` FOREIGN KEY (`itemid`) REFERENCES `stockitem` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stockitem_unit` */

insert  into `stockitem_unit`(`itemid`,`unit`,`qty`) values ('0016','STUB',50),('51','STUB',50),('52','STUB',50),('53','STUB',50),('54','STUB',50),('56','STUB',50),('57','STUB',50),('58','STUB',50),('907','STUB',50),('CT1','PAD',2000),('CT1','SHEET',20),('CT10','PAD',2000),('CT10','SHEET',20),('CT2','PAD',2000),('CT2','SHEET',20),('CT5','PAD',2000),('CT5','SHEET',20);

/*Table structure for table `stockreceipt` */

CREATE TABLE `stockreceipt` (
  `objid` varchar(50) NOT NULL default '',
  `receiptno` varchar(50) default NULL,
  `state` varchar(50) default NULL,
  `request_objid` varchar(50) default NULL,
  `request_reqno` varchar(50) default NULL,
  `dtfiled` datetime default NULL,
  `reqtype` varchar(25) default NULL,
  `user_objid` varchar(50) default NULL,
  `user_name` varchar(100) default NULL,
  `org_objid` varchar(50) default NULL,
  `org_name` varchar(50) default NULL,
  `itemclass` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_stockreceipt_receiptno` (`receiptno`),
  KEY `FK_stockreceipt_request` (`request_objid`),
  CONSTRAINT `FK_stockreceipt_request` FOREIGN KEY (`request_objid`) REFERENCES `stockrequest` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stockreceipt` */

/*Table structure for table `stockreceiptitem` */

CREATE TABLE `stockreceiptitem` (
  `objid` varchar(50) NOT NULL default '',
  `parentid` varchar(50) NOT NULL,
  `item_objid` varchar(50) default NULL,
  `item_code` varchar(50) default NULL,
  `item_title` varchar(255) default NULL,
  `unit` varchar(20) default NULL,
  `qtyrequested` int(11) default NULL,
  `qtyreceived` int(11) default NULL,
  `remarks` varchar(255) default NULL,
  KEY `FK_stockreceiptitem_stockreceipt` (`parentid`),
  CONSTRAINT `FK_stockreceiptitem_stockreceipt` FOREIGN KEY (`parentid`) REFERENCES `stockreceipt` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stockreceiptitem` */

/*Table structure for table `stockrequest` */

CREATE TABLE `stockrequest` (
  `objid` varchar(50) NOT NULL,
  `reqno` varchar(20) default NULL,
  `state` varchar(10) default NULL,
  `dtfiled` datetime default NULL,
  `reqtype` varchar(10) default NULL,
  `itemclass` varchar(50) default NULL,
  `requester_objid` varchar(50) default NULL,
  `requester_name` varchar(50) default NULL,
  `requester_title` varchar(50) default NULL,
  `org_objid` varchar(50) default NULL,
  `org_name` varchar(50) default NULL,
  `vendor` varchar(100) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stockrequest` */

/*Table structure for table `stockrequestitem` */

CREATE TABLE `stockrequestitem` (
  `objid` varchar(50) NOT NULL,
  `parentid` varchar(50) default NULL,
  `item_objid` varchar(50) default NULL,
  `item_code` varchar(50) default NULL,
  `item_title` varchar(255) default NULL,
  `unit` varchar(10) default NULL,
  `qty` int(11) default '0',
  `qtyreceived` int(11) default '0',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `req_af_uidx` (`parentid`,`item_objid`),
  KEY `FK_afrequestitem_af` (`item_objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `stockrequestitem` */

/*Table structure for table `structure` */

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

/*Table structure for table `structurematerial` */

CREATE TABLE `structurematerial` (
  `structure_objid` varchar(50) NOT NULL default '',
  `material_objid` varchar(50) NOT NULL default '',
  PRIMARY KEY  (`structure_objid`,`material_objid`),
  KEY `FK_structurematerial_material` (`material_objid`),
  CONSTRAINT `FK_structurematerial_material` FOREIGN KEY (`material_objid`) REFERENCES `material` (`objid`),
  CONSTRAINT `FK_structurematerial_strucutre` FOREIGN KEY (`structure_objid`) REFERENCES `structure` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `structurematerial` */

/*Table structure for table `subdividedland` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_dataset` */

/*Table structure for table `sys_fact` */

CREATE TABLE `sys_fact` (
  `name` varchar(50) NOT NULL,
  `classname` varchar(50) default NULL,
  `description` varchar(250) default NULL,
  `ruleset` varchar(50) default NULL,
  `rulegroup` varchar(50) default NULL,
  PRIMARY KEY  (`name`),
  KEY `ix_ruleset` (`ruleset`),
  KEY `ix_rulegroup` (`rulegroup`),
  CONSTRAINT `fk_factrulegroup_rulegroupname` FOREIGN KEY (`rulegroup`) REFERENCES `sys_rulegroup` (`name`),
  CONSTRAINT `fk_factruleset_rulesetname` FOREIGN KEY (`ruleset`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_fact` */

/*Table structure for table `sys_fact_field` */

CREATE TABLE `sys_fact_field` (
  `name` varchar(50) NOT NULL,
  `fact` varchar(50) default NULL,
  `caption` varchar(50) default NULL,
  `handler` varchar(50) default NULL,
  `valuetype` varchar(15) default NULL,
  `operator` varchar(50) default NULL,
  `required` smallint(6) default '0',
  `usevar` smallint(6) default '0',
  `info` text,
  PRIMARY KEY  (`name`),
  KEY `fk_factfieldfact_factname` (`fact`),
  KEY `fk_factfieldoperator_operatorname` (`operator`),
  CONSTRAINT `fk_factfieldfact_factname` FOREIGN KEY (`fact`) REFERENCES `sys_fact` (`name`),
  CONSTRAINT `fk_factfieldoperator_operatorname` FOREIGN KEY (`operator`) REFERENCES `sys_operator` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_fact_field` */

/*Table structure for table `sys_operator` */

CREATE TABLE `sys_operator` (
  `name` varchar(50) NOT NULL,
  `description` varchar(160) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_operator` */

/*Table structure for table `sys_operator_item` */

CREATE TABLE `sys_operator_item` (
  `name` varchar(50) NOT NULL,
  `caption` varchar(160) default NULL,
  `symbol` varchar(50) default NULL,
  `sortorder` smallint(6) default '0',
  `operator` varchar(50) default NULL,
  PRIMARY KEY  (`name`),
  KEY `fk_operatoritem_operator_operatorname` (`operator`),
  CONSTRAINT `fk_operatoritem_operator_operatorname` FOREIGN KEY (`operator`) REFERENCES `sys_operator` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_operator_item` */

/*Table structure for table `sys_org` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_org` */

/*Table structure for table `sys_orgclass` */

CREATE TABLE `sys_orgclass` (
  `name` varchar(50) NOT NULL,
  `title` varchar(255) default NULL,
  `childnodes` varchar(255) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_orgclass` */

/*Table structure for table `sys_report` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_report` */

/*Table structure for table `sys_report_admin` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_report_admin` */

/*Table structure for table `sys_report_folder` */

CREATE TABLE `sys_report_folder` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(255) default NULL,
  `title` varchar(255) default NULL,
  `parentid` varchar(50) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `idx_foldername` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_report_folder` */

/*Table structure for table `sys_report_member` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_report_member` */

/*Table structure for table `sys_rule` */

CREATE TABLE `sys_rule` (
  `name` varchar(50) NOT NULL,
  `rulesetid` varchar(50) default NULL,
  `rulegroupid` varchar(50) default NULL,
  `title` varchar(250) default NULL,
  `description` text,
  `salience` int(11) default '0',
  `effectivefrom` datetime default NULL,
  `effectiveto` datetime default NULL,
  `dtfiled` datetime default NULL,
  `user_objid` varchar(50) default NULL,
  `user_name` varchar(100) default NULL,
  `conditions` mediumtext,
  `conditiontext` mediumtext,
  `actions` mediumtext,
  `actiontext` mediumtext,
  PRIMARY KEY  (`name`),
  KEY `fk_rulegroupid` (`rulegroupid`),
  KEY `fk_rulesetid` (`rulesetid`),
  CONSTRAINT `fk_rulegroupid` FOREIGN KEY (`rulegroupid`) REFERENCES `sys_rulegroup` (`name`),
  CONSTRAINT `fk_rulesetid` FOREIGN KEY (`rulesetid`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_rule` */

/*Table structure for table `sys_ruleaction_schema` */

CREATE TABLE `sys_ruleaction_schema` (
  `name` varchar(50) NOT NULL,
  `actiontemplate` varchar(50) default NULL,
  `description` varchar(250) default NULL,
  `rulesetid` varchar(50) default NULL,
  `rulegroupid` varchar(50) default NULL,
  `params` mediumtext,
  PRIMARY KEY  (`name`),
  KEY `fk_ruleaction_ruleset_rulesetid` (`rulesetid`),
  KEY `fk_ruleaction_rulegroup_rulegroupid` (`rulegroupid`),
  CONSTRAINT `fk_ruleaction_rulegroup_rulegroupid` FOREIGN KEY (`rulegroupid`) REFERENCES `sys_rulegroup` (`name`),
  CONSTRAINT `fk_ruleaction_ruleset_rulesetid` FOREIGN KEY (`rulesetid`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_ruleaction_schema` */

/*Table structure for table `sys_rulegroup` */

CREATE TABLE `sys_rulegroup` (
  `name` varchar(50) NOT NULL,
  `title` varchar(160) default NULL,
  `ruleset` varchar(50) default NULL,
  `sortorder` int(11) default '0',
  PRIMARY KEY  (`name`),
  KEY `fk_sysrulegroup_ruleset_sysruleset_name` (`ruleset`),
  CONSTRAINT `fk_sysrulegroup_ruleset_sysruleset_name` FOREIGN KEY (`ruleset`) REFERENCES `sys_ruleset` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_rulegroup` */

/*Table structure for table `sys_ruleset` */

CREATE TABLE `sys_ruleset` (
  `name` varchar(50) NOT NULL,
  `title` varchar(160) default NULL,
  `packagename` varchar(50) default NULL,
  `domain` varchar(50) default NULL,
  `role` varchar(50) default NULL,
  `permission` varchar(50) default NULL,
  PRIMARY KEY  (`name`),
  KEY `ix_domain` (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_ruleset` */

/*Table structure for table `sys_script` */

CREATE TABLE `sys_script` (
  `name` varchar(50) NOT NULL,
  `title` varbinary(255) default NULL,
  `content` mediumtext,
  `category` varchar(20) default NULL,
  `dtcreated` datetime default NULL,
  `createdby` varchar(50) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_script` */

/*Table structure for table `sys_securitygroup` */

CREATE TABLE `sys_securitygroup` (
  `objid` varchar(50) NOT NULL,
  `name` varchar(50) default NULL,
  `usergroupid` varchar(50) default NULL,
  `exclude` varchar(255) default NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `idx_securitygroup_name` (`name`),
  KEY `FK_sys_securitygroup_usergroup` (`usergroupid`),
  CONSTRAINT `FK_sys_securitygroup_usergroup` FOREIGN KEY (`usergroupid`) REFERENCES `sys_usergroup` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_securitygroup` */

/*Table structure for table `sys_sequence` */

CREATE TABLE `sys_sequence` (
  `objid` varchar(100) NOT NULL,
  `nextSeries` int(11) NOT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_sequence` */

/*Table structure for table `sys_session` */

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `sys_session` */

/*Table structure for table `sys_session_log` */

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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `sys_session_log` */

/*Table structure for table `sys_terminal` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_terminal` */

/*Table structure for table `sys_user` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_user` */

/*Table structure for table `sys_usergroup` */

CREATE TABLE `sys_usergroup` (
  `objid` varchar(50) NOT NULL,
  `title` varchar(255) default NULL,
  `domain` varchar(25) default NULL,
  `userclass` varchar(25) default NULL,
  `orgclass` varchar(50) default NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_usergroup` */

/*Table structure for table `sys_usergroup_admin` */

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_usergroup_admin` */

/*Table structure for table `sys_usergroup_member` */

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
  KEY `ix_user_lastname_firstname` (`user_lastname`,`user_firstname`),
  KEY `ix_username` (`user_username`),
  KEY `ix_user_firstname` (`user_firstname`),
  CONSTRAINT `FK_sys_usergroup_member` FOREIGN KEY (`user_objid`) REFERENCES `sys_user` (`objid`),
  CONSTRAINT `FK_sys_usergroup_member_org` FOREIGN KEY (`org_objid`) REFERENCES `sys_org` (`objid`),
  CONSTRAINT `FK_sys_usergroup_member_securitygorup` FOREIGN KEY (`securitygroupid`) REFERENCES `sys_securitygroup` (`objid`),
  CONSTRAINT `FK_sys_usergroup_member_usergroup` FOREIGN KEY (`usergroupid`) REFERENCES `sys_usergroup` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_usergroup_member` */

/*Table structure for table `sys_usergroup_permission` */

CREATE TABLE `sys_usergroup_permission` (
  `objid` varchar(50) NOT NULL,
  `usergroupid` varchar(50) default NULL,
  `object` varchar(25) default NULL,
  `permission` varchar(25) default NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_sys_usergroup_permission_usergroup` (`usergroupid`),
  CONSTRAINT `FK_sys_usergroup_permission_usergroup` FOREIGN KEY (`usergroupid`) REFERENCES `sys_usergroup` (`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_usergroup_permission` */

/*Table structure for table `sys_var` */

CREATE TABLE `sys_var` (
  `name` varchar(50) NOT NULL,
  `value` text,
  `description` varchar(255) default NULL,
  `datatype` varchar(15) default NULL,
  `category` varchar(50) default NULL,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sys_var` */

/*Table structure for table `txnref` */

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

/*Table structure for table `workflowstate` */

CREATE TABLE `workflowstate` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  PRIMARY KEY  (`objid`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `workflowstate` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
