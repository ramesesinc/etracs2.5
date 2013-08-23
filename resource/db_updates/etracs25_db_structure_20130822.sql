/*
SQLyog Ultimate v9.51 
MySQL - 5.0.27-community-nt : Database - etracs25
*********************************************************************
*/


CREATE DATABASE etracs25_20130822;

USE etracs25_20130822;

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `account` */

CREATE TABLE `account` (
  `objid` VARCHAR(50) NOT NULL,
  `parentid` VARCHAR(50) DEFAULT NULL,
  `state` VARCHAR(10) DEFAULT NULL,
  `chartid` VARCHAR(50) DEFAULT NULL,
  `code` VARCHAR(50) DEFAULT NULL,
  `title` VARCHAR(255) DEFAULT NULL,
  `type` VARCHAR(20) DEFAULT NULL,
  `acctgroup` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_code` (`code`),
  KEY `ix_parentid` (`parentid`),
  KEY `ix_title` (`title`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `account_segment` */

CREATE TABLE `account_segment` (
  `name` VARCHAR(50) NOT NULL,
  `objectname` VARCHAR(50) NOT NULL DEFAULT '',
  `title` VARCHAR(50) DEFAULT NULL,
  `sortorder` INT(11) DEFAULT NULL,
  `depends` VARCHAR(50) DEFAULT NULL,
  `source` VARCHAR(50) DEFAULT NULL,
  `valuetype` VARCHAR(10) DEFAULT NULL,
  PRIMARY KEY  (`name`,`objectname`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `af` */

CREATE TABLE `af` (
  `objid` VARCHAR(50) NOT NULL,
  `description` VARCHAR(50) NOT NULL,
  `aftype` VARCHAR(10) NOT NULL,
  `unit` VARCHAR(10) NOT NULL,
  `unitqty` INT(11) NOT NULL,
  `denomination` DECIMAL(10,2) NOT NULL,
  `serieslength` INT(11) NOT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `afcontrol` */

CREATE TABLE `afcontrol` (
  `objid` VARCHAR(50) NOT NULL,
  `mode` VARCHAR(10) DEFAULT NULL,
  `state` VARCHAR(10) DEFAULT NULL,
  `af` VARCHAR(10) DEFAULT NULL,
  `controlid` VARCHAR(50) DEFAULT NULL,
  `prefix` VARCHAR(10) DEFAULT NULL,
  `suffix` VARCHAR(10) DEFAULT NULL,
  `stub` INT(11) DEFAULT NULL,
  `active` INT(11) DEFAULT NULL,
  `currentlineno` INT(11) DEFAULT NULL,
  `cancelledseries` VARCHAR(255) DEFAULT NULL,
  `subcollector_objid` VARCHAR(50) DEFAULT NULL,
  `subcollector_name` VARCHAR(100) DEFAULT NULL,
  `subcollector_title` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_afcontrol` (`controlid`),
  CONSTRAINT `FK_afcontrol` FOREIGN KEY (`controlid`) REFERENCES `afstockcontrol` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `afcontrol_activedetail` */

CREATE TABLE `afcontrol_activedetail` (
  `controlid` VARCHAR(50) NOT NULL,
  `detailid` VARCHAR(50) NOT NULL,
  PRIMARY KEY  (`controlid`),
  KEY `FK_afcontrol_activedetail_collector` (`detailid`),
  CONSTRAINT `FK_afcontrol_activedetail_afcontrol` FOREIGN KEY (`controlid`) REFERENCES `afcontrol` (`objid`),
  CONSTRAINT `FK_afcontrol_activedetail_collector` FOREIGN KEY (`detailid`) REFERENCES `afcontrol_detail` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `afcontrol_detail` */

CREATE TABLE `afcontrol_detail` (
  `objid` VARCHAR(50) NOT NULL,
  `controlid` VARCHAR(50) DEFAULT NULL,
  `refdate` DATETIME DEFAULT NULL,
  `reftype` VARCHAR(50) DEFAULT NULL,
  `collector_objid` VARCHAR(50) DEFAULT NULL,
  `collector_name` VARCHAR(50) DEFAULT NULL,
  `collector_title` VARCHAR(100) DEFAULT NULL,
  `lineno` INT(11) DEFAULT NULL,
  `startseries` INT(11) DEFAULT NULL,
  `endseries` INT(11) DEFAULT NULL,
  `currentseries` INT(11) DEFAULT NULL,
  `qtyreceived` INT(11) DEFAULT NULL,
  `qtybegin` INT(11) DEFAULT NULL,
  `qtyissued` INT(11) DEFAULT NULL,
  `qtycancelled` INT(11) DEFAULT NULL,
  `qtybalance` INT(11) DEFAULT NULL,
  `cancelledseries` VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_afcontrol_detail_afcontrol` (`controlid`),
  CONSTRAINT `FK_afcontrol_detail_afcontrol` FOREIGN KEY (`controlid`) REFERENCES `afcontrol` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `afcontrol_transfer` */

CREATE TABLE `afcontrol_transfer` (
  `objid` VARCHAR(50) NOT NULL,
  `txnno` VARCHAR(50) DEFAULT NULL,
  `dtposted` DATETIME DEFAULT NULL,
  `controlid` VARCHAR(50) DEFAULT NULL,
  `user_objid` VARCHAR(50) DEFAULT NULL,
  `user_name` VARCHAR(50) DEFAULT NULL,
  `from_objid` VARCHAR(50) DEFAULT NULL,
  `from_name` VARCHAR(100) DEFAULT NULL,
  `to_objid` VARCHAR(50) DEFAULT NULL,
  `to_name` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_afcontrol_transfer_afcontrol` (`controlid`),
  CONSTRAINT `FK_afcontrol_transfer_afcontrol` FOREIGN KEY (`controlid`) REFERENCES `afcontrol` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `afcontrolcancelled` */

CREATE TABLE `afcontrolcancelled` (
  `objid` VARCHAR(50) NOT NULL,
  `controlid` VARCHAR(50) DEFAULT NULL,
  `startseries` INT(11) DEFAULT NULL,
  `endseries` INT(11) DEFAULT NULL,
  `reason` VARCHAR(50) DEFAULT NULL,
  `collector` VARCHAR(50) DEFAULT NULL,
  `txndate` DATETIME DEFAULT NULL,
  `qty` INT(11) DEFAULT NULL,
  `issuedby` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_afcontrolcancelled` (`controlid`),
  CONSTRAINT `FK_afcontrolcancelled` FOREIGN KEY (`controlid`) REFERENCES `afcontrol` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `afcontroltransferhistory` */

CREATE TABLE `afcontroltransferhistory` (
  `objid` VARCHAR(50) NOT NULL,
  `controlid` VARCHAR(50) DEFAULT NULL,
  `txndate` DATETIME DEFAULT NULL,
  `collector` VARCHAR(50) DEFAULT NULL,
  `assignee` VARCHAR(50) DEFAULT NULL,
  `startseries` INT(11) DEFAULT NULL,
  `endseries` INT(11) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_afcontroltransferhistory` (`controlid`),
  CONSTRAINT `FK_afcontroltransferhistory` FOREIGN KEY (`controlid`) REFERENCES `afcontrol` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `afissue` */

CREATE TABLE `afissue` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(50) DEFAULT NULL,
  `risid` VARCHAR(50) DEFAULT NULL,
  `issueno` VARCHAR(50) DEFAULT NULL,
  `txndate` DATETIME DEFAULT NULL,
  `txntype` VARCHAR(10) DEFAULT NULL,
  `user_objid` VARCHAR(50) DEFAULT NULL,
  `user_name` VARCHAR(100) DEFAULT NULL,
  `issueto_objid` VARCHAR(50) DEFAULT NULL,
  `issueto_name` VARCHAR(100) DEFAULT NULL,
  `issueto_title` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_afissue_issueno` (`issueno`),
  UNIQUE KEY `afissue_ris` (`risid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `afissueitem` */

CREATE TABLE `afissueitem` (
  `objid` VARCHAR(50) NOT NULL,
  `parentid` VARCHAR(50) NOT NULL,
  `af` VARCHAR(10) DEFAULT NULL,
  `qty` INT(11) DEFAULT NULL,
  `startseries` INT(11) DEFAULT NULL,
  `endseries` INT(11) DEFAULT NULL,
  `prefix` VARCHAR(10) DEFAULT NULL,
  `suffix` VARCHAR(10) DEFAULT NULL,
  `startstub` VARCHAR(50) DEFAULT NULL,
  `endstub` VARCHAR(50) DEFAULT NULL,
  KEY `FK_afissueitem` (`parentid`),
  CONSTRAINT `FK_afissueitem` FOREIGN KEY (`parentid`) REFERENCES `afissue` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `afreceipt` */

CREATE TABLE `afreceipt` (
  `objid` VARCHAR(50) NOT NULL,
  `receiptno` VARCHAR(50) DEFAULT NULL,
  `state` VARCHAR(50) DEFAULT NULL,
  `risid` VARCHAR(50) DEFAULT NULL,
  `txndate` DATETIME DEFAULT NULL,
  `txntype` VARCHAR(25) DEFAULT NULL,
  `user_objid` VARCHAR(50) DEFAULT NULL,
  `user_name` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_afreceipt_receiptno` (`receiptno`),
  UNIQUE KEY `afreceipt_ris` (`risid`),
  KEY `FK_afreceipt` (`risid`),
  CONSTRAINT `FK_afreceipt` FOREIGN KEY (`risid`) REFERENCES `ris` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `afreceiptitem` */

CREATE TABLE `afreceiptitem` (
  `objid` VARCHAR(50) NOT NULL,
  `parentid` VARCHAR(50) NOT NULL DEFAULT '',
  `af` VARCHAR(10) DEFAULT NULL,
  `qty` INT(11) DEFAULT NULL,
  `startseries` INT(11) DEFAULT NULL,
  `endseries` INT(11) DEFAULT NULL,
  `prefix` VARCHAR(10) DEFAULT NULL,
  `suffix` VARCHAR(10) DEFAULT NULL,
  `startstub` VARCHAR(50) DEFAULT NULL,
  `endstub` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_afreceiptitem_af` (`af`),
  KEY `FK_afreceiptitem` (`parentid`),
  CONSTRAINT `FK_afreceiptitem` FOREIGN KEY (`parentid`) REFERENCES `afreceipt` (`objid`),
  CONSTRAINT `FK_afreceiptitem_af` FOREIGN KEY (`af`) REFERENCES `af` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `afrequest` */

CREATE TABLE `afrequest` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(10) DEFAULT NULL,
  `txndate` DATETIME DEFAULT NULL,
  `txntype` VARCHAR(10) DEFAULT NULL,
  `requester_objid` VARCHAR(50) DEFAULT NULL,
  `requester_lastname` VARCHAR(50) DEFAULT NULL,
  `requester_firstname` VARCHAR(50) DEFAULT NULL,
  `requester_jobtitle` VARCHAR(50) DEFAULT NULL,
  `reqdate` DATETIME DEFAULT NULL,
  `requnit` VARCHAR(50) DEFAULT NULL,
  `vendor` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `afrequestitem` */

CREATE TABLE `afrequestitem` (
  `objid` VARCHAR(50) NOT NULL,
  `reqid` VARCHAR(50) DEFAULT NULL,
  `af` VARCHAR(10) DEFAULT NULL,
  `qty` INT(11) DEFAULT '0',
  `qtyreceived` INT(11) DEFAULT '0',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `req_af_uidx` (`reqid`,`af`),
  KEY `FK_afrequestitem_af` (`af`),
  CONSTRAINT `FK_afrequestitem` FOREIGN KEY (`reqid`) REFERENCES `afrequest` (`objid`),
  CONSTRAINT `FK_afrequestitem_af` FOREIGN KEY (`af`) REFERENCES `af` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `afstockbeginbalance` */

CREATE TABLE `afstockbeginbalance` (
  `objid` VARCHAR(50) NOT NULL,
  `af` VARCHAR(10) DEFAULT NULL,
  `collector` VARCHAR(50) DEFAULT NULL,
  `startseries` INT(11) DEFAULT NULL,
  `endseries` INT(11) DEFAULT NULL,
  `qty` INT(11) DEFAULT NULL,
  `startstub` INT(11) DEFAULT NULL,
  `prefix` VARCHAR(10) DEFAULT NULL,
  `suffix` VARCHAR(10) DEFAULT NULL,
  `txndate` DATETIME DEFAULT NULL,
  `createdby` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `afstockcontrol` */

CREATE TABLE `afstockcontrol` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(10) DEFAULT NULL,
  `af` VARCHAR(10) DEFAULT NULL,
  `refid` VARCHAR(50) DEFAULT NULL,
  `reftype` VARCHAR(25) DEFAULT NULL,
  `refdate` DATETIME DEFAULT NULL,
  `startstub` INT(11) DEFAULT NULL,
  `endstub` INT(11) DEFAULT NULL,
  `currentstub` INT(50) DEFAULT NULL,
  `startseries` INT(11) DEFAULT NULL,
  `endseries` INT(11) DEFAULT NULL,
  `currentseries` INT(11) DEFAULT NULL,
  `prefix` VARCHAR(50) DEFAULT NULL,
  `suffix` VARCHAR(50) DEFAULT NULL,
  `qtyreceived` INT(11) DEFAULT NULL,
  `qtyissued` INT(11) DEFAULT NULL,
  `qtybalance` INT(11) DEFAULT NULL,
  `qtycancelled` INT(11) DEFAULT NULL,
  `currentindexno` INT(11) DEFAULT NULL,
  `unit` VARCHAR(10) DEFAULT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `afstockcontrol_detail` */

CREATE TABLE `afstockcontrol_detail` (
  `objid` VARCHAR(50) NOT NULL,
  `controlid` VARCHAR(50) DEFAULT NULL,
  `refid` VARCHAR(50) DEFAULT NULL,
  `reftype` VARCHAR(50) DEFAULT NULL,
  `refdate` DATETIME DEFAULT NULL,
  `indexno` INT(11) DEFAULT NULL,
  `startseries` INT(11) DEFAULT NULL,
  `endseries` INT(11) DEFAULT NULL,
  `dr` INT(11) DEFAULT NULL,
  `cr` INT(11) DEFAULT NULL,
  `runbal` INT(11) DEFAULT NULL,
  `postingrefid` VARCHAR(50) DEFAULT NULL,
  `remarks` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_afstockcontrol_detail` (`controlid`),
  CONSTRAINT `FK_afstockcontrol_detail` FOREIGN KEY (`controlid`) REFERENCES `afstockcontrol` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `afstockcontrolcancelled` */

CREATE TABLE `afstockcontrolcancelled` (
  `objid` VARCHAR(50) NOT NULL,
  `controlid` VARCHAR(50) DEFAULT NULL,
  `startseries` INT(11) DEFAULT NULL,
  `endseries` INT(11) DEFAULT NULL,
  `reason` VARCHAR(50) DEFAULT NULL,
  `issuedate` DATETIME DEFAULT NULL,
  `issuer_objid` VARCHAR(50) DEFAULT NULL,
  `issuer_name` VARCHAR(100) DEFAULT NULL,
  KEY `FK_afinventorycontrolcancelled` (`controlid`),
  CONSTRAINT `FK_afinventorycontrolcancelled` FOREIGN KEY (`controlid`) REFERENCES `afstockcontrol` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `ap` */

CREATE TABLE `ap` (
  `objid` VARCHAR(50) NOT NULL,
  `subacctid` VARCHAR(50) DEFAULT NULL,
  `subacctclass` VARCHAR(50) DEFAULT NULL,
  `subaccttitle` VARCHAR(50) DEFAULT NULL,
  `sltype` VARCHAR(10) DEFAULT NULL,
  `totaldr` DECIMAL(10,2) DEFAULT NULL,
  `totalcr` DECIMAL(10,2) DEFAULT NULL,
  `balance` DECIMAL(10,2) DEFAULT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `ap_detail` */

CREATE TABLE `ap_detail` (
  `objid` VARCHAR(50) NOT NULL,
  `parentid` VARCHAR(50) DEFAULT NULL,
  `txndate` DATETIME DEFAULT NULL,
  `txnrefid` VARCHAR(50) DEFAULT NULL,
  `txnrefno` VARCHAR(50) DEFAULT NULL,
  `txnreftype` VARCHAR(50) DEFAULT NULL,
  `particulars` VARCHAR(255) DEFAULT NULL,
  `dr` DECIMAL(16,2) DEFAULT NULL,
  `cr` DECIMAL(16,2) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_ap_detail_txnrefno` (`txnrefno`,`txnreftype`),
  KEY `ap_detail_ap` (`parentid`),
  CONSTRAINT `ap_detail_ap` FOREIGN KEY (`parentid`) REFERENCES `ap` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `ar` */

CREATE TABLE `ar` (
  `objid` VARCHAR(50) NOT NULL,
  `subacctid` VARCHAR(50) DEFAULT NULL,
  `subacctclass` VARCHAR(50) DEFAULT NULL,
  `subaccttitle` VARCHAR(50) DEFAULT NULL,
  `sltype` VARCHAR(10) DEFAULT NULL,
  `totaldr` DECIMAL(10,2) DEFAULT NULL,
  `totalcr` DECIMAL(10,2) DEFAULT NULL,
  `balance` DECIMAL(10,2) DEFAULT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `ar_detail` */

CREATE TABLE `ar_detail` (
  `objid` VARCHAR(50) NOT NULL,
  `parentid` VARCHAR(50) DEFAULT NULL,
  `txndate` DATETIME DEFAULT NULL,
  `txnrefid` VARCHAR(50) DEFAULT NULL,
  `txnrefno` VARCHAR(50) DEFAULT NULL,
  `txnreftype` VARCHAR(50) DEFAULT NULL,
  `particulars` VARCHAR(255) DEFAULT NULL,
  `dr` DECIMAL(16,2) DEFAULT NULL,
  `cr` DECIMAL(16,2) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_ar_txnrefno` (`txnrefno`,`txnreftype`),
  KEY `ar_detail_ar` (`parentid`),
  CONSTRAINT `ar_detail_ar` FOREIGN KEY (`parentid`) REFERENCES `ar` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `assessmentnotice` */

CREATE TABLE `assessmentnotice` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(15) NOT NULL,
  `txnno` VARCHAR(10) DEFAULT NULL,
  `txndate` DATETIME DEFAULT NULL,
  `taxpayerid` VARCHAR(50) NOT NULL,
  `taxpayername` VARCHAR(2000) NOT NULL,
  `taxpayeraddress` VARCHAR(150) NOT NULL,
  `createdbyid` VARCHAR(50) DEFAULT NULL,
  `createdbyname` VARCHAR(100) NOT NULL,
  `createdbytitle` VARCHAR(50) NOT NULL,
  `approvedbyid` VARCHAR(50) DEFAULT NULL,
  `approvedbyname` VARCHAR(100) DEFAULT NULL,
  `approvedbytitle` VARCHAR(50) DEFAULT NULL,
  `dtdelivered` DATE DEFAULT NULL,
  `receivedby` VARCHAR(150) DEFAULT NULL,
  `remarks` VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_assessmentnotice_state` (`state`),
  KEY `ix_assessmentnotice_txnno` (`txnno`),
  KEY `ix_assessmentnotice_taxpayerid` (`taxpayerid`),
  KEY `ix_assessmentnotice_taxpayername` (`taxpayername`(255)),
  KEY `ix_assessmentnotice_receivedby` (`receivedby`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `assessmentnoticeitem` */

CREATE TABLE `assessmentnoticeitem` (
  `objid` VARCHAR(50) NOT NULL,
  `assessmentnoticeid` VARCHAR(50) NOT NULL,
  `faasid` VARCHAR(50) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_assessmentnoticeitem_assessmentnotice` (`assessmentnoticeid`),
  KEY `FK_assessmentnoticeitem_faas` (`faasid`),
  CONSTRAINT `FK_assessmentnoticeitem_assessmentnotice` FOREIGN KEY (`assessmentnoticeid`) REFERENCES `assessmentnotice` (`objid`),
  CONSTRAINT `FK_assessmentnoticeitem_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bank` */

CREATE TABLE `bank` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(10) DEFAULT '' COMMENT 'DRAFT, APPROVED',
  `code` VARCHAR(50) NOT NULL DEFAULT '',
  `name` VARCHAR(50) NOT NULL DEFAULT '',
  `branchname` VARCHAR(50) NOT NULL DEFAULT '',
  `address` VARCHAR(100) DEFAULT NULL,
  `manager` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_bank_code` (`code`),
  UNIQUE KEY `ux_bank_name` (`name`),
  KEY `ix_bank_state` (`state`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bankaccount` */

CREATE TABLE `bankaccount` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'DRAFT, APPROVED',
  `code` VARCHAR(50) NOT NULL DEFAULT '',
  `title` VARCHAR(100) NOT NULL DEFAULT '',
  `description` VARCHAR(255) DEFAULT NULL,
  `accttype` VARCHAR(50) NOT NULL DEFAULT '' COMMENT 'CHECKING, SAVING',
  `bank_objid` VARCHAR(50) NOT NULL,
  `bank_code` VARCHAR(50) NOT NULL,
  `bank_name` VARCHAR(100) NOT NULL DEFAULT '',
  `fund_objid` VARCHAR(50) NOT NULL,
  `fund_code` VARCHAR(50) NOT NULL,
  `fund_title` VARCHAR(50) NOT NULL DEFAULT '',
  `currency` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'PHP, USD',
  `cashreport` VARCHAR(50) DEFAULT NULL,
  `cashbreakdownreport` VARCHAR(50) DEFAULT NULL,
  `checkreport` VARCHAR(50) DEFAULT NULL,
  `forwardbalance` DECIMAL(16,2) DEFAULT NULL,
  `beginbalance` DECIMAL(16,2) DEFAULT NULL,
  `totaldr` DECIMAL(16,2) DEFAULT NULL,
  `totalcr` DECIMAL(16,2) DEFAULT NULL,
  `endbalance` DECIMAL(16,2) DEFAULT NULL,
  `currentpageno` INT(1) DEFAULT NULL,
  `currentlineno` INT(1) DEFAULT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 CHECKSUM=1 DELAY_KEY_WRITE=1 ROW_FORMAT=DYNAMIC;

/*Table structure for table `bankaccount_account` */

CREATE TABLE `bankaccount_account` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `acctid` VARCHAR(50) NOT NULL DEFAULT '',
  PRIMARY KEY  (`objid`),
  KEY `FK_bankaccount_account_account` (`acctid`),
  CONSTRAINT `FK_bankaccount_account_account` FOREIGN KEY (`acctid`) REFERENCES `account` (`objid`),
  CONSTRAINT `FK_bankaccount_account_bankaccount` FOREIGN KEY (`objid`) REFERENCES `bankaccount` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bankaccount_entry` */

CREATE TABLE `bankaccount_entry` (
  `objid` VARCHAR(50) NOT NULL,
  `parentid` VARCHAR(50) DEFAULT NULL,
  `refdate` DATE DEFAULT NULL,
  `refid` VARCHAR(50) DEFAULT NULL,
  `refno` VARCHAR(50) DEFAULT NULL,
  `reftype` VARCHAR(50) DEFAULT NULL,
  `particulars` VARCHAR(255) DEFAULT NULL,
  `dr` DECIMAL(16,2) DEFAULT NULL,
  `cr` DECIMAL(16,2) DEFAULT NULL,
  `runbalance` DECIMAL(16,2) DEFAULT NULL,
  `pageno` INT(11) DEFAULT NULL,
  `lineno` INT(11) DEFAULT NULL,
  `postingrefid` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_bankaccount_parent_refid_reftype` (`parentid`,`refid`,`reftype`),
  KEY `bankaccount_parent` (`parentid`),
  KEY `idx_bankaccount_refid` (`refid`),
  CONSTRAINT `bankaccount_parent` FOREIGN KEY (`parentid`) REFERENCES `bankaccount` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bankdeposit` */

CREATE TABLE `bankdeposit` (
  `objid` VARCHAR(50) NOT NULL,
  `txnno` VARCHAR(50) DEFAULT NULL,
  `dtposted` DATE DEFAULT NULL,
  `cashier_objid` VARCHAR(50) DEFAULT NULL,
  `cashier_name` VARCHAR(100) DEFAULT NULL,
  `cashier_title` VARCHAR(50) DEFAULT NULL,
  `totalcash` DECIMAL(16,2) DEFAULT NULL,
  `totalnoncash` DECIMAL(16,2) DEFAULT NULL,
  `amount` DECIMAL(16,2) DEFAULT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bankdeposit_entry` */

CREATE TABLE `bankdeposit_entry` (
  `objid` VARCHAR(50) NOT NULL,
  `parentid` VARCHAR(50) NOT NULL,
  `bankaccount_objid` VARCHAR(50) NOT NULL,
  `bankaccount_code` VARCHAR(50) NOT NULL,
  `bankaccount_title` VARCHAR(255) NOT NULL,
  `totalcash` DECIMAL(16,2) NOT NULL,
  `totalnoncash` DECIMAL(16,2) NOT NULL,
  `amount` DECIMAL(16,2) NOT NULL,
  `cashbreakdown` VARCHAR(600) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_bankacct_deposit` (`parentid`,`bankaccount_objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bankdeposit_entry_check` */

CREATE TABLE `bankdeposit_entry_check` (
  `objid` VARCHAR(50) NOT NULL,
  `parentid` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_bankdeposit_check` (`parentid`),
  CONSTRAINT `FK_bankdeposit_check` FOREIGN KEY (`parentid`) REFERENCES `bankdeposit_entry` (`objid`),
  CONSTRAINT `FK_bankdeposit_check_checkpayment` FOREIGN KEY (`objid`) REFERENCES `cashreceiptpayment_check` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bankdeposit_liquidation` */

CREATE TABLE `bankdeposit_liquidation` (
  `objid` VARCHAR(50) NOT NULL,
  `bankdepositid` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_bankdeposit_liquidation` (`bankdepositid`),
  CONSTRAINT `FK_bankdeposit_liquidation` FOREIGN KEY (`bankdepositid`) REFERENCES `bankdeposit` (`objid`),
  CONSTRAINT `FK_bankdeposit_liquidation_fund` FOREIGN KEY (`objid`) REFERENCES `liquidation_cashier_fund` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `barangay` */

CREATE TABLE `barangay` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(10) DEFAULT NULL,
  `indexno` VARCHAR(15) DEFAULT NULL,
  `pin` VARCHAR(15) DEFAULT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  `parentid` VARCHAR(50) DEFAULT NULL,
  `captain_name` VARCHAR(100) DEFAULT NULL,
  `captain_title` VARCHAR(50) DEFAULT NULL,
  `captain_office` VARCHAR(50) DEFAULT NULL,
  `treasurer_name` VARCHAR(100) DEFAULT NULL,
  `treasurer_title` VARCHAR(50) DEFAULT NULL,
  `treasurer_office` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lgu_barangay_name` (`name`),
  UNIQUE KEY `ux_lgu_barangay_name_state` (`name`,`state`),
  KEY `ix_lgu_barangay_indexno` (`indexno`),
  KEY `ix_lgu_barangay_previd` (`previd`),
  KEY `ix_lgu_barangay_parentid` (`parentid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `batchcapture` */

CREATE TABLE `batchcapture` (
  `objid` VARCHAR(50) NOT NULL,
  `schemaname` VARCHAR(25) NOT NULL,
  `schemaversion` VARCHAR(5) NOT NULL,
  `docstate` VARCHAR(25) NOT NULL,
  `afid` VARCHAR(5) NOT NULL,
  `startseries` INT(11) NOT NULL,
  `series` INT(11) NOT NULL,
  `collector` TEXT NOT NULL,
  `afcontrol` TEXT NOT NULL,
  `collectiontype` TEXT NOT NULL,
  `defaulttxndate` DATE NOT NULL,
  `items` TEXT NOT NULL,
  `extended` TEXT,
  `encodedbyid` VARCHAR(50) NOT NULL,
  `encodedby` VARCHAR(100) NOT NULL,
  `amount` DECIMAL(12,2) NOT NULL,
  `collectorid` VARCHAR(50) NOT NULL,
  `collectorname` VARCHAR(100) NOT NULL,
  `opener` VARCHAR(50) DEFAULT NULL,
  `collectortitle` VARCHAR(50) DEFAULT NULL,
  `encodedbytitle` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_batchcapture_state` (`docstate`),
  KEY `ix_batchcapture_colname` (`collectorname`),
  KEY `ix_batchcapture_encodedby` (`encodedby`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bldgadditionalitem` */

CREATE TABLE `bldgadditionalitem` (
  `objid` VARCHAR(50) NOT NULL,
  `bldgrysettingid` VARCHAR(50) NOT NULL,
  `code` VARCHAR(10) NOT NULL,
  `name` VARCHAR(100) NOT NULL,
  `unit` VARCHAR(25) NOT NULL,
  `expr` VARCHAR(100) NOT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_bldgadditionalitem_settingcode` (`bldgrysettingid`,`code`),
  UNIQUE KEY `ux_bldgadditionalitem_settingname` (`bldgrysettingid`,`name`),
  KEY `FK_bldgadditionalitem` (`previd`),
  CONSTRAINT `FK_bldgadditionalitem` FOREIGN KEY (`previd`) REFERENCES `bldgadditionalitem` (`objid`),
  CONSTRAINT `FK_bldgadditionalitem_bldgrysetting` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bldgassesslevel` */

CREATE TABLE `bldgassesslevel` (
  `objid` VARCHAR(50) NOT NULL,
  `bldgrysettingid` VARCHAR(50) NOT NULL,
  `classification_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `code` VARCHAR(10) NOT NULL DEFAULT '',
  `name` VARCHAR(50) NOT NULL,
  `fixrate` INT(11) NOT NULL,
  `rate` DECIMAL(10,2) NOT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_bldgassesslevel_bldgrysettingid_code` (`bldgrysettingid`,`code`),
  UNIQUE KEY `ux_bldgassesslevel_bdlgrysettingid_name` (`bldgrysettingid`,`name`),
  KEY `FK_bldgassesslevel_propertyclassification` (`classification_objid`),
  CONSTRAINT `FK_bldgassesslevel_bldgrysettingid` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`),
  CONSTRAINT `FK_bldgassesslevel_propertyclassification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bldgassesslevelrange` */

CREATE TABLE `bldgassesslevelrange` (
  `objid` VARCHAR(50) NOT NULL,
  `bldgassesslevelid` VARCHAR(50) NOT NULL DEFAULT '',
  `bldgrysettingid` VARCHAR(50) NOT NULL DEFAULT '',
  `mvfrom` DECIMAL(16,2) NOT NULL,
  `mvto` DECIMAL(16,2) NOT NULL,
  `rate` DECIMAL(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_bldgassesslevelid_mvfrom` (`bldgassesslevelid`,`mvfrom`),
  KEY `FK_bldgassesslevelrange_bldgrysetting` (`bldgrysettingid`),
  CONSTRAINT `FK_bldgassesslevelrange_bldgassesslevel` FOREIGN KEY (`bldgassesslevelid`) REFERENCES `bldgassesslevel` (`objid`),
  CONSTRAINT `FK_bldgassesslevelrange_bldgrysetting` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bldgfloor` */

CREATE TABLE `bldgfloor` (
  `objid` VARCHAR(50) NOT NULL,
  `bldguseid` VARCHAR(50) NOT NULL,
  `bldgrpuid` VARCHAR(50) NOT NULL,
  `floorno` VARCHAR(5) NOT NULL,
  `area` DECIMAL(16,2) NOT NULL,
  `storeyrate` DECIMAL(16,2) NOT NULL,
  `basevalue` DECIMAL(16,2) NOT NULL,
  `unitvalue` DECIMAL(16,2) NOT NULL,
  `basemarketvalue` DECIMAL(16,2) NOT NULL,
  `adjustment` DECIMAL(16,2) NOT NULL,
  `marketvalue` DECIMAL(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_bldgfloor_bldguse` (`bldguseid`),
  KEY `FK_bldgfloor_bldgrpu` (`bldgrpuid`),
  CONSTRAINT `FK_bldgfloor_bldgrpu` FOREIGN KEY (`bldgrpuid`) REFERENCES `bldgrpu` (`objid`),
  CONSTRAINT `FK_bldgfloor_bldguse` FOREIGN KEY (`bldguseid`) REFERENCES `bldguse` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bldgflooradditional` */

CREATE TABLE `bldgflooradditional` (
  `objid` VARCHAR(50) NOT NULL,
  `bldgfloorid` VARCHAR(50) NOT NULL,
  `bldgrpuid` VARCHAR(50) NOT NULL,
  `additionalitem_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `amount` DECIMAL(16,2) NOT NULL,
  `expr` VARCHAR(300) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_bldgflooradditional_bldgfloor` (`bldgfloorid`),
  KEY `FK_bldgflooradditional_bldgrpu` (`bldgrpuid`),
  KEY `FK_bldgflooradditional_additionalitem` (`additionalitem_objid`),
  CONSTRAINT `FK_bldgflooradditional_additionalitem` FOREIGN KEY (`additionalitem_objid`) REFERENCES `bldgadditionalitem` (`objid`),
  CONSTRAINT `FK_bldgflooradditional_bldgfloor` FOREIGN KEY (`bldgfloorid`) REFERENCES `bldgfloor` (`objid`),
  CONSTRAINT `FK_bldgflooradditional_bldgrpu` FOREIGN KEY (`bldgrpuid`) REFERENCES `bldgrpu` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bldgflooradditionalparam` */

CREATE TABLE `bldgflooradditionalparam` (
  `objid` VARCHAR(50) NOT NULL,
  `bldgflooradditionalid` VARCHAR(50) NOT NULL,
  `bldgrpuid` VARCHAR(50) NOT NULL,
  `param_objid` VARCHAR(50) NOT NULL,
  `intvalue` INT(50) DEFAULT NULL,
  `decimalvalue` DECIMAL(16,2) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_bldgflooradditionalparam_bldgflooradditional` (`bldgflooradditionalid`),
  KEY `FK_bldgflooradditionalparam_bldgrpu` (`bldgrpuid`),
  KEY `FK_bldgflooradditionalparam_param` (`param_objid`),
  CONSTRAINT `FK_bldgflooradditionalparam_bldgflooradditional` FOREIGN KEY (`bldgflooradditionalid`) REFERENCES `bldgflooradditional` (`objid`),
  CONSTRAINT `FK_bldgflooradditionalparam_bldgrpu` FOREIGN KEY (`bldgrpuid`) REFERENCES `bldgrpu` (`objid`),
  CONSTRAINT `FK_bldgflooradditionalparam_param` FOREIGN KEY (`param_objid`) REFERENCES `rptparameter` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bldgkind` */

CREATE TABLE `bldgkind` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'DRAFT, APPROVED',
  `code` VARCHAR(20) NOT NULL DEFAULT '',
  `name` VARCHAR(100) NOT NULL DEFAULT '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_bldgkind_code` (`code`),
  UNIQUE KEY `ux_bldgkind_name` (`name`),
  KEY `ix_bldgkind_state` (`state`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bldgkindbucc` */

CREATE TABLE `bldgkindbucc` (
  `objid` VARCHAR(50) NOT NULL,
  `bldgrysettingid` VARCHAR(50) NOT NULL,
  `bldgtypeid` VARCHAR(50) NOT NULL,
  `bldgkind_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `basevaluetype` VARCHAR(25) NOT NULL,
  `basevalue` DECIMAL(10,2) NOT NULL,
  `minbasevalue` DECIMAL(10,2) NOT NULL,
  `maxbasevalue` DECIMAL(10,2) NOT NULL,
  `gapvalue` INT(11) NOT NULL,
  `minarea` DECIMAL(10,2) NOT NULL,
  `maxarea` DECIMAL(10,2) NOT NULL,
  `bldgclass` VARCHAR(50) DEFAULT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_bldgkindbucc_settingtypekind` (`bldgrysettingid`,`bldgtypeid`,`bldgkind_objid`,`bldgclass`),
  KEY `FK_bldgkindbucc_bldgtype` (`bldgtypeid`),
  KEY `FK_bldgkindbucc_bldgkindbucc` (`previd`),
  KEY `FK_bldgkindbucc_bldgkind` (`bldgkind_objid`),
  CONSTRAINT `FK_bldgkindbucc_bldgkind` FOREIGN KEY (`bldgkind_objid`) REFERENCES `bldgkind` (`objid`),
  CONSTRAINT `FK_bldgkindbucc_bldgrysettingid` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`),
  CONSTRAINT `FK_bldgkindbucc_bldgtype` FOREIGN KEY (`bldgtypeid`) REFERENCES `bldgtype` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bldgrpu` */

CREATE TABLE `bldgrpu` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `landrpuid` VARCHAR(50) NOT NULL,
  `houseno` VARCHAR(25) DEFAULT NULL,
  `psic` VARCHAR(20) DEFAULT NULL,
  `permitno` VARCHAR(20) DEFAULT NULL,
  `permitdate` DATE DEFAULT NULL,
  `permitissuedby` VARCHAR(50) DEFAULT NULL,
  `bldgtype_objid` VARCHAR(50) NOT NULL,
  `bldgkindbucc_objid` VARCHAR(50) NOT NULL,
  `basevalue` DECIMAL(16,2) NOT NULL,
  `dtcompleted` DATE DEFAULT NULL,
  `dtoccupied` DATE DEFAULT NULL,
  `floorcount` INT(11) NOT NULL,
  `depreciation` DECIMAL(16,2) NOT NULL,
  `depreciationvalue` DECIMAL(16,2) NOT NULL,
  `totaladjustment` DECIMAL(16,2) NOT NULL,
  `additionalinfo` VARCHAR(100) DEFAULT NULL,
  `bldgage` INT(11) NOT NULL,
  `percentcompleted` INT(11) NOT NULL,
  `bldgassesslevel_objid` VARCHAR(50) DEFAULT NULL,
  `assesslevel` DECIMAL(16,2) NOT NULL,
  `condominium` INT(11) NOT NULL,
  `bldgclass` VARCHAR(15) DEFAULT NULL,
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
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bldgrysetting` */

CREATE TABLE `bldgrysetting` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(10) NOT NULL,
  `ry` INT(11) NOT NULL,
  `predominant` INT(11) NOT NULL,
  `depreciatecoreanditemseparately` INT(11) NOT NULL,
  `computedepreciationbasedonschedule` INT(11) NOT NULL,
  `straightdepreciation` VARCHAR(50) NOT NULL,
  `calcbldgagebasedondtoccupied` INT(11) NOT NULL,
  `appliedto` TEXT,
  `previd` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_bldgrysetting_previd` (`previd`),
  KEY `ix_bldgrysetting_state` (`state`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bldgstructure` */

CREATE TABLE `bldgstructure` (
  `objid` VARCHAR(50) NOT NULL,
  `bldgrpuid` VARCHAR(50) NOT NULL,
  `structure_objid` VARCHAR(50) NOT NULL,
  `material_objid` VARCHAR(50) DEFAULT '',
  PRIMARY KEY  (`objid`),
  KEY `FK_bldgstructure_bldgrpu` (`bldgrpuid`),
  KEY `FK_bldgstructure_structure` (`structure_objid`),
  KEY `FK_bldgstructure_material` (`material_objid`),
  CONSTRAINT `FK_bldgstructure_bldgrpu` FOREIGN KEY (`bldgrpuid`) REFERENCES `bldgrpu` (`objid`),
  CONSTRAINT `FK_bldgstructure_material` FOREIGN KEY (`material_objid`) REFERENCES `material` (`objid`),
  CONSTRAINT `FK_bldgstructure_structure` FOREIGN KEY (`structure_objid`) REFERENCES `structure` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bldgtype` */

CREATE TABLE `bldgtype` (
  `objid` VARCHAR(50) NOT NULL,
  `bldgrysettingid` VARCHAR(50) NOT NULL,
  `code` VARCHAR(10) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `basevaluetype` VARCHAR(10) NOT NULL,
  `residualrate` DECIMAL(10,2) NOT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_bldgtype_bldgrysettingid_code` (`bldgrysettingid`,`code`),
  UNIQUE KEY `ux_bldgtype_bldgrysettingid_name` (`bldgrysettingid`,`name`),
  KEY `FK_bldgtype_bldgtype` (`previd`),
  CONSTRAINT `FK_bldgtype_bldgrysetting` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`),
  CONSTRAINT `FK_bldgtype_bldgtype` FOREIGN KEY (`previd`) REFERENCES `bldgtype` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bldgtype_depreciation` */

CREATE TABLE `bldgtype_depreciation` (
  `objid` VARCHAR(50) NOT NULL,
  `bldgtypeid` VARCHAR(50) NOT NULL,
  `bldgrysettingid` VARCHAR(50) NOT NULL,
  `agefrom` INT(11) NOT NULL,
  `ageto` INT(11) NOT NULL,
  `rate` DECIMAL(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_bldgtype_depreciation_settingtypeagefrom` (`bldgtypeid`,`bldgrysettingid`,`agefrom`),
  KEY `FK_bldgtype_depreciation_bldgrysetting` (`bldgrysettingid`),
  CONSTRAINT `FK_bldgtype_depreciation_bldgrysetting` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`),
  CONSTRAINT `FK_bldgtype_depreciation_bldgtype` FOREIGN KEY (`bldgtypeid`) REFERENCES `bldgtype` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bldgtype_storeyadjustment` */

CREATE TABLE `bldgtype_storeyadjustment` (
  `objid` VARCHAR(50) NOT NULL,
  `bldgtypeid` VARCHAR(50) NOT NULL,
  `bldgrysettingid` VARCHAR(50) NOT NULL,
  `floorno` VARCHAR(10) NOT NULL DEFAULT '',
  `rate` DECIMAL(16,2) NOT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_bldgtype_storeyadjustment_settingtypefloorno` (`bldgtypeid`,`bldgrysettingid`,`floorno`),
  KEY `FK_bldgtype_storeyadjustment_bldgrysetting` (`bldgrysettingid`),
  KEY `FK_bldgtype_storeyadjustment` (`previd`),
  CONSTRAINT `FK_bldgtype_storeyadjustment` FOREIGN KEY (`previd`) REFERENCES `bldgtype_storeyadjustment` (`objid`),
  CONSTRAINT `FK_bldgtype_storeyadjustment_bldgrysetting` FOREIGN KEY (`bldgrysettingid`) REFERENCES `bldgrysetting` (`objid`),
  CONSTRAINT `FK_bldgtype_storeyadjustment_bldgtype` FOREIGN KEY (`bldgtypeid`) REFERENCES `bldgtype` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `bldguse` */

CREATE TABLE `bldguse` (
  `objid` VARCHAR(50) NOT NULL,
  `bldgrpuid` VARCHAR(50) NOT NULL,
  `actualuse_objid` VARCHAR(50) NOT NULL,
  `basevalue` DECIMAL(16,2) NOT NULL,
  `area` DECIMAL(16,2) NOT NULL,
  `basemarketvalue` DECIMAL(16,2) NOT NULL,
  `depreciationvalue` DECIMAL(16,2) NOT NULL,
  `adjustment` DECIMAL(16,2) NOT NULL,
  `marketvalue` DECIMAL(16,2) NOT NULL,
  `assesslevel` DECIMAL(16,2) NOT NULL,
  `assessedvalue` DECIMAL(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_bldguse_bldgrpu` (`bldgrpuid`),
  KEY `FK_bldguse_bldgassesslevel` (`actualuse_objid`),
  CONSTRAINT `FK_bldguse_bldgassesslevel` FOREIGN KEY (`actualuse_objid`) REFERENCES `bldgassesslevel` (`objid`),
  CONSTRAINT `FK_bldguse_bldgrpu` FOREIGN KEY (`bldgrpuid`) REFERENCES `bldgrpu` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `brgyshare` */

CREATE TABLE `brgyshare` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(25) NOT NULL,
  `txnno` VARCHAR(15) DEFAULT '',
  `txndate` DATETIME DEFAULT NULL,
  `year` INT(11) DEFAULT NULL,
  `month` INT(11) DEFAULT NULL,
  `totalshare` DECIMAL(16,2) NOT NULL,
  `createdbyid` VARCHAR(50) DEFAULT NULL,
  `createdby` VARCHAR(150) NOT NULL,
  `createdbytitle` VARCHAR(50) NOT NULL,
  `postedbyid` VARCHAR(50) DEFAULT NULL,
  `postedby` VARCHAR(150) DEFAULT NULL,
  `postedbytitle` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_brgyshare_yqm` (`year`,`month`),
  KEY `ix_brgyshare_yr` (`year`),
  KEY `ix_brgyshare_state` (`state`),
  KEY `ix_brgyshare_yq` (`year`),
  KEY `ix_brgyshare_yqm` (`year`,`month`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `brgyshareitem` */

CREATE TABLE `brgyshareitem` (
  `objid` VARCHAR(50) NOT NULL,
  `brgyshareid` VARCHAR(50) NOT NULL DEFAULT '',
  `barangayid` VARCHAR(50) NOT NULL,
  `basic` DECIMAL(16,2) NOT NULL,
  `basicint` DECIMAL(16,2) NOT NULL,
  `basicdisc` DECIMAL(16,2) NOT NULL,
  `basicshare` DECIMAL(16,2) NOT NULL,
  `basicintshare` DECIMAL(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_brgyshareitem_brgyshare_brgy` (`brgyshareid`,`barangayid`),
  CONSTRAINT `FK_brgyshareitem_brgyshare` FOREIGN KEY (`brgyshareid`) REFERENCES `brgyshare` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `cancelannotation` */

CREATE TABLE `cancelannotation` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(15) NOT NULL,
  `txnno` VARCHAR(10) DEFAULT NULL,
  `txndate` DATE DEFAULT NULL,
  `annotationid` VARCHAR(50) NOT NULL,
  `fileno` VARCHAR(20) NOT NULL,
  `remarks` VARCHAR(500) NOT NULL,
  `orno` VARCHAR(10) DEFAULT NULL,
  `ordate` DATE DEFAULT NULL,
  `oramount` DECIMAL(16,2) NOT NULL,
  `signedby` VARCHAR(150) NOT NULL,
  `signedbytitle` VARCHAR(50) NOT NULL,
  `dtsigned` DATE DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_cancelannotation_txnno` (`txnno`),
  KEY `ix_cancelannotation_fileno` (`fileno`),
  KEY `FK_cancelannotation_faasannotation` (`annotationid`),
  CONSTRAINT `FK_cancelannotation_faasannotation` FOREIGN KEY (`annotationid`) REFERENCES `faasannotation` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `cancelledfaas` */

CREATE TABLE `cancelledfaas` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(15) NOT NULL,
  `txndate` DATETIME NOT NULL,
  `faasid` VARCHAR(50) NOT NULL,
  `reason_objid` VARCHAR(50) NOT NULL,
  `remarks` VARCHAR(500) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_cancelledfaas_faas` (`faasid`),
  KEY `FK_cancelledfaas_reason` (`reason_objid`),
  CONSTRAINT `FK_cancelledfaas_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_cancelledfaas_reason` FOREIGN KEY (`reason_objid`) REFERENCES `canceltdreason` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `canceltdreason` */

CREATE TABLE `canceltdreason` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'DRAFT, APPROVED',
  `code` VARCHAR(20) NOT NULL DEFAULT '',
  `name` VARCHAR(100) NOT NULL DEFAULT '',
  `description` VARCHAR(150) DEFAULT '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_canceltdreason_code` (`code`),
  UNIQUE KEY `ux_canceltdreason_name` (`name`),
  KEY `ix_canceltdreason_state` (`state`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `cashbook` */

CREATE TABLE `cashbook` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(10) DEFAULT NULL,
  `code` VARCHAR(50) DEFAULT NULL,
  `title` VARCHAR(50) DEFAULT NULL,
  `description` VARCHAR(50) DEFAULT NULL,
  `type` VARCHAR(50) DEFAULT NULL,
  `subacct_objid` VARCHAR(50) DEFAULT NULL,
  `subacct_name` VARCHAR(50) DEFAULT NULL,
  `fund_objid` VARCHAR(50) DEFAULT NULL,
  `fund_code` VARCHAR(50) DEFAULT NULL,
  `fund_title` VARCHAR(50) DEFAULT NULL,
  `org_objid` VARCHAR(50) DEFAULT NULL,
  `org_code` VARCHAR(50) DEFAULT NULL,
  `org_name` VARCHAR(50) DEFAULT NULL,
  `beginbalance` DECIMAL(16,2) DEFAULT NULL,
  `forwardbalance` DECIMAL(16,2) DEFAULT NULL,
  `totaldr` DECIMAL(16,2) DEFAULT NULL,
  `totalcr` DECIMAL(16,2) DEFAULT NULL,
  `endbalance` DECIMAL(16,2) DEFAULT NULL,
  `currentpageno` INT(11) DEFAULT NULL,
  `currentlineno` INT(11) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_subacct_fund` (`subacct_objid`,`fund_objid`),
  KEY `FK_cashbook_fund` (`fund_objid`),
  CONSTRAINT `FK_cashbook_fund` FOREIGN KEY (`fund_objid`) REFERENCES `fund` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `cashbook_entry` */

CREATE TABLE `cashbook_entry` (
  `objid` VARCHAR(50) NOT NULL,
  `parentid` VARCHAR(50) DEFAULT NULL,
  `refdate` DATE DEFAULT NULL,
  `refid` VARCHAR(50) DEFAULT NULL,
  `refno` VARCHAR(50) DEFAULT NULL,
  `reftype` VARCHAR(50) DEFAULT NULL,
  `particulars` VARCHAR(255) DEFAULT NULL,
  `dr` DECIMAL(16,2) DEFAULT NULL,
  `cr` DECIMAL(16,2) DEFAULT NULL,
  `runbalance` DECIMAL(16,2) DEFAULT NULL,
  `pageno` INT(11) DEFAULT NULL,
  `lineno` INT(11) DEFAULT NULL,
  `postingrefid` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `cashbook_parent` (`parentid`),
  KEY `idx_refid` (`refid`),
  KEY `uix_parent_refid_reftype` (`parentid`,`refid`,`reftype`),
  CONSTRAINT `cashbook_parent` FOREIGN KEY (`parentid`) REFERENCES `cashbook` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `cashreceipt` */

CREATE TABLE `cashreceipt` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(10) NOT NULL,
  `txndate` DATETIME NOT NULL,
  `receiptno` VARCHAR(50) NOT NULL,
  `receiptdate` DATE NOT NULL,
  `txnmode` VARCHAR(10) NOT NULL,
  `payer_objid` VARCHAR(50) DEFAULT '',
  `payer_name` VARCHAR(100) DEFAULT '',
  `paidby` VARCHAR(100) NOT NULL,
  `paidbyaddress` VARCHAR(100) NOT NULL,
  `amount` DECIMAL(16,2) NOT NULL,
  `collector_objid` VARCHAR(50) NOT NULL,
  `collector_name` VARCHAR(100) NOT NULL,
  `collector_title` VARCHAR(50) NOT NULL DEFAULT '',
  `totalcash` DECIMAL(16,2) NOT NULL,
  `totalnoncash` DECIMAL(16,2) NOT NULL,
  `cashchange` DECIMAL(16,2) NOT NULL,
  `totalcredit` DECIMAL(16,2) NOT NULL,
  `org_objid` VARCHAR(50) NOT NULL,
  `org_name` VARCHAR(50) NOT NULL,
  `formno` VARCHAR(50) NOT NULL,
  `series` INT(11) NOT NULL,
  `controlid` VARCHAR(50) NOT NULL,
  `collectiontype_objid` VARCHAR(50) DEFAULT NULL,
  `collectiontype_name` VARCHAR(100) DEFAULT NULL,
  `user_objid` VARCHAR(50) DEFAULT NULL,
  `user_name` VARCHAR(100) DEFAULT NULL,
  `remarks` VARCHAR(200) DEFAULT NULL,
  `subcollector_objid` VARCHAR(50) DEFAULT NULL,
  `subcollector_name` VARCHAR(100) DEFAULT NULL,
  `subcollector_title` VARCHAR(50) DEFAULT NULL,
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
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `cashreceipt_burial` */

CREATE TABLE `cashreceipt_burial` (
  `objid` VARCHAR(50) NOT NULL,
  `tocitymuni` VARCHAR(100) DEFAULT NULL,
  `toprovince` VARCHAR(100) DEFAULT NULL,
  `permissiontype` VARCHAR(15) DEFAULT NULL,
  `name` VARCHAR(100) DEFAULT NULL,
  `nationality` VARCHAR(15) DEFAULT NULL,
  `age` INT(11) DEFAULT NULL,
  `sex` VARCHAR(10) DEFAULT NULL,
  `dtdeath` VARCHAR(15) DEFAULT NULL,
  `deathcause` VARCHAR(50) DEFAULT NULL,
  `cemetery` VARCHAR(50) DEFAULT NULL,
  `infectious` VARCHAR(50) DEFAULT NULL,
  `embalmed` VARCHAR(50) DEFAULT NULL,
  `disposition` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `cashreceipt_largecattleownership` */

CREATE TABLE `cashreceipt_largecattleownership` (
  `objid` VARCHAR(50) NOT NULL,
  `ownerof` VARCHAR(200) DEFAULT NULL,
  `sex` VARCHAR(10) DEFAULT NULL,
  `age` INT(11) DEFAULT NULL,
  `municipalitybrand` VARCHAR(20) DEFAULT NULL,
  `ownerbrand` VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `cashreceipt_largecattletransfer` */

CREATE TABLE `cashreceipt_largecattletransfer` (
  `objid` VARCHAR(50) NOT NULL,
  `purchasedby` VARCHAR(255) DEFAULT NULL,
  `price` DECIMAL(16,2) DEFAULT '0.00',
  `citymuni` VARCHAR(100) DEFAULT NULL,
  `province` VARCHAR(100) DEFAULT NULL,
  `sex` VARCHAR(10) DEFAULT NULL,
  `age` INT(11) DEFAULT NULL,
  `municipalitybrand` VARCHAR(20) DEFAULT NULL,
  `ownerbrand` VARCHAR(20) DEFAULT NULL,
  `certificateno` VARCHAR(30) DEFAULT NULL,
  `issuedate` DATE DEFAULT NULL,
  `issuedcitymuni` VARCHAR(100) DEFAULT NULL,
  `issuedprovince` VARCHAR(100) DEFAULT NULL,
  `attestedby` VARCHAR(200) DEFAULT NULL,
  `treasurer` VARCHAR(200) DEFAULT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `cashreceipt_marriage` */

CREATE TABLE `cashreceipt_marriage` (
  `objid` VARCHAR(50) NOT NULL,
  `groomname` VARCHAR(100) DEFAULT NULL,
  `groomaddress` VARCHAR(100) DEFAULT NULL,
  `groomageyear` INT(11) DEFAULT NULL,
  `groomagemonth` INT(11) DEFAULT NULL,
  `bridename` VARCHAR(100) DEFAULT NULL,
  `brideaddress` VARCHAR(100) DEFAULT NULL,
  `brideageyear` INT(11) DEFAULT NULL,
  `brideagemonth` INT(11) DEFAULT NULL,
  `registerno` VARCHAR(30) DEFAULT NULL,
  `attachments` VARCHAR(200) DEFAULT NULL,
  `lcrofficer` VARCHAR(100) DEFAULT NULL,
  `lcrofficertitle` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `cashreceipt_rpt` */

CREATE TABLE `cashreceipt_rpt` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `type` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'ONLINE, MANUAL',
  `year` INT(11) NOT NULL,
  `qtr` INT(11) NOT NULL,
  `month` INT(11) NOT NULL,
  `day` INT(11) NOT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `cashreceipt_rpt_item` */

CREATE TABLE `cashreceipt_rpt_item` (
  `objid` VARCHAR(50) NOT NULL,
  `rptreceiptid` VARCHAR(50) NOT NULL,
  `rptledgerid` VARCHAR(50) DEFAULT NULL,
  `rptledgeritemid` VARCHAR(50) DEFAULT '',
  `barangayid` VARCHAR(50) NOT NULL,
  `year` INT(11) NOT NULL,
  `qtr` INT(11) NOT NULL,
  `basic` DECIMAL(16,2) NOT NULL,
  `basicint` DECIMAL(16,2) NOT NULL,
  `basicdisc` DECIMAL(16,2) NOT NULL,
  `basiccredit` DECIMAL(16,2) NOT NULL,
  `basicacct_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `basicintacct_objid` VARCHAR(50) DEFAULT '',
  `sef` DECIMAL(16,2) NOT NULL,
  `sefint` DECIMAL(16,2) NOT NULL,
  `sefdisc` DECIMAL(16,2) NOT NULL,
  `sefcredit` DECIMAL(16,2) NOT NULL,
  `sefacct_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `sefintacct_objid` VARCHAR(50) DEFAULT '',
  `partial` INT(11) NOT NULL,
  `revtype` VARCHAR(15) NOT NULL,
  `citybasic` DECIMAL(12,2) NOT NULL,
  `citybasicint` DECIMAL(12,2) NOT NULL,
  `citysef` DECIMAL(12,2) NOT NULL,
  `citysefint` DECIMAL(12,2) NOT NULL,
  `munibasic` DECIMAL(12,2) NOT NULL,
  `munibasicint` DECIMAL(12,2) NOT NULL,
  `munisef` DECIMAL(12,2) NOT NULL,
  `munisefint` DECIMAL(12,2) NOT NULL,
  `brgybasic` DECIMAL(12,2) NOT NULL,
  `brgybasicint` DECIMAL(12,2) NOT NULL,
  `provbasic` DECIMAL(12,2) NOT NULL,
  `provbasicint` DECIMAL(12,2) NOT NULL,
  `provsef` DECIMAL(12,2) NOT NULL,
  `provsefint` DECIMAL(12,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_rptreceiptitem_rptreceipt` (`rptreceiptid`),
  KEY `FK_rptreceiptitem_rptledgeritem` (`rptledgeritemid`),
  KEY `FK_rptreceiptitem_rptledger` (`rptledgerid`),
  CONSTRAINT `FK_rptreceiptitem_rptledger` FOREIGN KEY (`rptledgerid`) REFERENCES `rptledger` (`objid`),
  CONSTRAINT `FK_rptreceiptitem_rptledgeritem` FOREIGN KEY (`rptledgeritemid`) REFERENCES `rptledgeritem` (`objid`),
  CONSTRAINT `FK_rptreceiptitem_rptreceipt` FOREIGN KEY (`rptreceiptid`) REFERENCES `cashreceipt_rpt` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `cashreceipt_slaughter` */

CREATE TABLE `cashreceipt_slaughter` (
  `objid` VARCHAR(50) NOT NULL,
  `acctid` VARCHAR(50) DEFAULT NULL,
  `acctno` VARCHAR(50) DEFAULT NULL,
  `acctitle` VARCHAR(100) DEFAULT NULL,
  `permitamount` DECIMAL(18,2) DEFAULT NULL,
  `slaughterof` VARCHAR(25) DEFAULT NULL,
  `weight` DECIMAL(18,2) DEFAULT NULL,
  `ordinanceno` VARCHAR(50) DEFAULT NULL,
  `ordinancedate` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `cashreceipt_void` */

CREATE TABLE `cashreceipt_void` (
  `objid` VARCHAR(50) NOT NULL,
  `receiptid` VARCHAR(50) NOT NULL,
  `txndate` DATETIME NOT NULL,
  `postedby_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `postedby_name` VARCHAR(100) NOT NULL DEFAULT '',
  `reason` VARCHAR(255) NOT NULL DEFAULT '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `FK_voidreceipt_receipt` (`receiptid`),
  CONSTRAINT `FK_cashreceipt_void_cashreceipt` FOREIGN KEY (`receiptid`) REFERENCES `cashreceipt` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `cashreceiptitem` */

CREATE TABLE `cashreceiptitem` (
  `objid` VARCHAR(50) NOT NULL,
  `receiptid` VARCHAR(50) DEFAULT NULL,
  `item_objid` VARCHAR(50) DEFAULT NULL,
  `item_code` VARCHAR(50) DEFAULT NULL,
  `item_title` VARCHAR(50) DEFAULT NULL,
  `amount` DECIMAL(16,2) DEFAULT NULL,
  `remarks` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_cashreceiptitem` (`receiptid`),
  CONSTRAINT `FK_cashreceiptitem` FOREIGN KEY (`receiptid`) REFERENCES `cashreceipt` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `cashreceiptitem_discount` */

CREATE TABLE `cashreceiptitem_discount` (
  `objid` VARCHAR(50) DEFAULT NULL,
  `receiptid` VARCHAR(50) DEFAULT NULL,
  `receiptitemid` VARCHAR(50) DEFAULT NULL,
  `acctid` VARCHAR(50) DEFAULT NULL,
  `amount` DECIMAL(16,2) DEFAULT NULL,
  `title` VARCHAR(50) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `cashreceiptpayment_check` */

CREATE TABLE `cashreceiptpayment_check` (
  `objid` VARCHAR(50) NOT NULL,
  `receiptid` VARCHAR(50) DEFAULT NULL,
  `bank` VARCHAR(50) DEFAULT NULL,
  `checkno` VARCHAR(25) DEFAULT NULL,
  `checkdate` DATE DEFAULT NULL,
  `amount` DECIMAL(16,2) DEFAULT NULL,
  `particulars` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_cashreceiptpayment_check` (`receiptid`),
  CONSTRAINT `FK_cashreceiptpayment_check` FOREIGN KEY (`receiptid`) REFERENCES `cashreceipt` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `city` */

CREATE TABLE `city` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(10) DEFAULT NULL,
  `indexno` VARCHAR(15) DEFAULT NULL,
  `pin` VARCHAR(15) DEFAULT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  `parentid` VARCHAR(50) DEFAULT NULL,
  `mayor_name` VARCHAR(100) DEFAULT NULL,
  `mayor_title` VARCHAR(50) DEFAULT NULL,
  `mayor_office` VARCHAR(50) DEFAULT NULL,
  `assessor_name` VARCHAR(100) DEFAULT NULL,
  `assessor_title` VARCHAR(50) DEFAULT NULL,
  `assessor_office` VARCHAR(50) DEFAULT NULL,
  `treasurer_name` VARCHAR(100) DEFAULT NULL,
  `treasurer_title` VARCHAR(50) DEFAULT NULL,
  `treasurer_office` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lgu_barangay_name` (`name`),
  UNIQUE KEY `ux_lgu_barangay_name_state` (`name`,`state`),
  KEY `ix_lgu_barangay_indexno` (`indexno`),
  KEY `ix_lgu_barangay_previd` (`previd`),
  KEY `ix_lgu_barangay_parentid` (`parentid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `collectiontype` */

CREATE TABLE `collectiontype` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(10) DEFAULT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `title` VARCHAR(50) DEFAULT NULL,
  `formno` VARCHAR(10) DEFAULT NULL,
  `handler` VARCHAR(25) DEFAULT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `consolidatedland` */

CREATE TABLE `consolidatedland` (
  `objid` VARCHAR(50) NOT NULL,
  `consolidationid` VARCHAR(50) NOT NULL,
  `landfaasid` VARCHAR(50) NOT NULL,
  `rpuid` VARCHAR(50) NOT NULL,
  `rpid` VARCHAR(50) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_consolidatedland_consolidation` (`consolidationid`),
  KEY `FK_consolidatedland_faas` (`landfaasid`),
  CONSTRAINT `FK_consolidatedland_consolidation` FOREIGN KEY (`consolidationid`) REFERENCES `consolidation` (`objid`),
  CONSTRAINT `FK_consolidatedland_faas` FOREIGN KEY (`landfaasid`) REFERENCES `faas` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `consolidation` */

CREATE TABLE `consolidation` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(25) NOT NULL,
  `txnno` VARCHAR(6) DEFAULT NULL,
  `txndate` DATE DEFAULT NULL,
  `ry` INT(11) NOT NULL,
  `txntype_objid` VARCHAR(5) NOT NULL DEFAULT '',
  `autonumber` INT(11) NOT NULL,
  `effectivityyear` INT(11) NOT NULL,
  `effectivityqtr` INT(11) NOT NULL,
  `newtdno` VARCHAR(25) DEFAULT '',
  `newutdno` VARCHAR(25) NOT NULL,
  `newtitletype` VARCHAR(25) DEFAULT NULL,
  `newtitleno` VARCHAR(25) DEFAULT NULL,
  `newtitledate` DATE DEFAULT NULL,
  `memoranda` VARCHAR(2000) DEFAULT '',
  `lguid` VARCHAR(50) NOT NULL,
  `lgutype` VARCHAR(50) NOT NULL,
  `newrpid` VARCHAR(50) NOT NULL DEFAULT '',
  `newrpuid` VARCHAR(50) NOT NULL DEFAULT '',
  `newfaasid` VARCHAR(50) DEFAULT NULL,
  `taxpayer_objid` VARCHAR(50) DEFAULT '',
  `taxpayer_name` VARCHAR(2000) DEFAULT '',
  `taxpayer_address` VARCHAR(100) DEFAULT '',
  `owner_name` VARCHAR(1000) DEFAULT '',
  `owner_address` VARCHAR(100) DEFAULT '',
  `administrator_objid` VARCHAR(50) DEFAULT NULL,
  `administrator_name` VARCHAR(100) DEFAULT NULL,
  `administrator_address` VARCHAR(100) DEFAULT NULL,
  `administratorid` VARCHAR(50) DEFAULT NULL,
  `administratorname` VARCHAR(150) DEFAULT NULL,
  `administratoraddress` VARCHAR(100) DEFAULT NULL,
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
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `consolidationaffectedrpu` */

CREATE TABLE `consolidationaffectedrpu` (
  `objid` VARCHAR(50) NOT NULL,
  `consolidationid` VARCHAR(50) NOT NULL,
  `landfaasid` VARCHAR(50) NOT NULL,
  `prevfaasid` VARCHAR(50) NOT NULL,
  `newrpid` VARCHAR(50) NOT NULL,
  `newrpuid` VARCHAR(50) NOT NULL,
  `newfaasid` VARCHAR(50) DEFAULT NULL,
  `newtdno` VARCHAR(25) DEFAULT '',
  `newutdno` VARCHAR(25) NOT NULL,
  `newsuffix` INT(11) NOT NULL,
  `memoranda` VARCHAR(1000) DEFAULT '',
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
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `district` */

CREATE TABLE `district` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(10) DEFAULT NULL,
  `indexno` VARCHAR(15) DEFAULT NULL,
  `pin` VARCHAR(15) DEFAULT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  `parentid` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lgu_barangay_name` (`name`),
  UNIQUE KEY `ux_lgu_barangay_name_state` (`name`,`state`),
  KEY `ix_lgu_barangay_indexno` (`indexno`),
  KEY `ix_lgu_barangay_previd` (`previd`),
  KEY `ix_lgu_barangay_parentid` (`parentid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `entity` */

CREATE TABLE `entity` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `entityno` VARCHAR(10) NOT NULL DEFAULT '',
  `name` VARCHAR(255) NOT NULL,
  `address` VARCHAR(255) NOT NULL,
  `mailingaddress` VARCHAR(255) DEFAULT NULL,
  `type` VARCHAR(25) NOT NULL DEFAULT '',
  `sys_lastupdate` VARCHAR(25) DEFAULT NULL,
  `sys_lastupdateby` VARCHAR(50) DEFAULT NULL,
  `remarks` VARCHAR(160) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_entity_entityno` (`entityno`),
  KEY `ix_entity_name` (`name`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `entitycontact` */

CREATE TABLE `entitycontact` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `entityid` VARCHAR(50) NOT NULL DEFAULT '',
  `contacttype` VARCHAR(25) NOT NULL DEFAULT '',
  `contact` VARCHAR(50) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_entitycontact_entity` (`entityid`),
  CONSTRAINT `FK_entitycontact_entity` FOREIGN KEY (`entityid`) REFERENCES `entity` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `entityidcard` */

CREATE TABLE `entityidcard` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `entityid` VARCHAR(50) NOT NULL DEFAULT '',
  `idtype` VARCHAR(50) NOT NULL DEFAULT '',
  `idno` VARCHAR(25) NOT NULL DEFAULT '',
  `expiry` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_entityidcard_entityid_idtype_idno` (`entityid`,`idtype`,`idno`),
  KEY `FK_entityidcard_entity` (`entityid`),
  CONSTRAINT `FK_entityidcard_entity` FOREIGN KEY (`entityid`) REFERENCES `entity` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `entityindividual` */

CREATE TABLE `entityindividual` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `lastname` VARCHAR(50) NOT NULL,
  `firstname` VARCHAR(50) NOT NULL,
  `middlename` VARCHAR(50) DEFAULT NULL,
  `birthdate` DATE DEFAULT NULL,
  `birthplace` VARCHAR(160) DEFAULT NULL,
  `citizenship` VARCHAR(50) DEFAULT NULL,
  `gender` VARCHAR(10) DEFAULT NULL,
  `civilstatus` VARCHAR(15) DEFAULT NULL,
  `profession` VARCHAR(50) DEFAULT NULL,
  `tin` VARCHAR(25) DEFAULT NULL,
  `sss` VARCHAR(25) DEFAULT NULL,
  `height` VARCHAR(10) DEFAULT NULL,
  `weight` VARCHAR(10) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_entityindividual_lastname` (`lastname`),
  KEY `ix_entityindividual_firstname` (`firstname`),
  CONSTRAINT `FK_entityindividual_entity` FOREIGN KEY (`objid`) REFERENCES `entity` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `entityjuridical` */

CREATE TABLE `entityjuridical` (
  `objid` VARCHAR(50) NOT NULL,
  `tin` VARCHAR(25) DEFAULT NULL,
  `dtregistered` DATE DEFAULT NULL,
  `orgtype` VARCHAR(25) DEFAULT NULL COMMENT 'SINGLEPROPERTORSHIP, CORPORATION, etc',
  `nature` VARCHAR(50) DEFAULT NULL COMMENT 'RETAILER, WHOLESALER, etc.',
  PRIMARY KEY  (`objid`),
  KEY `ix_tin` (`tin`),
  CONSTRAINT `FK_entityjuridical_entity` FOREIGN KEY (`objid`) REFERENCES `entity` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `entitymember` */

CREATE TABLE `entitymember` (
  `objid` VARCHAR(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `entityid` VARCHAR(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `itemno` INT(11) NOT NULL,
  `prefix` VARCHAR(25) CHARACTER SET utf8 DEFAULT NULL,
  `taxpayer_objid` VARCHAR(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `taxpayer_name` TEXT CHARACTER SET utf8 NOT NULL,
  `taxpayer_address` VARCHAR(160) CHARACTER SET utf8 NOT NULL,
  `suffix` VARCHAR(25) CHARACTER SET utf8 DEFAULT NULL,
  `remarks` VARCHAR(160) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_entitymember_entity` (`entityid`),
  KEY `ix_taxpayer_name` (`taxpayer_name`(255)),
  KEY `ix_taxpayer_objid` (`taxpayer_objid`),
  CONSTRAINT `FK_entitymember_entity` FOREIGN KEY (`entityid`) REFERENCES `entity` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `entitymultiple` */

CREATE TABLE `entitymultiple` (
  `objid` VARCHAR(50) NOT NULL,
  `fullname` TEXT,
  PRIMARY KEY  (`objid`),
  CONSTRAINT `FK_entitymultiple_entity` FOREIGN KEY (`objid`) REFERENCES `entity` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `exemptiontype` */

CREATE TABLE `exemptiontype` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'DRAFT, APPROVED',
  `code` VARCHAR(20) NOT NULL DEFAULT '',
  `name` VARCHAR(100) NOT NULL DEFAULT '',
  `orderno` INT(11) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_exemptiontype_code` (`code`),
  UNIQUE KEY `ux_exemptiontype_name` (`name`),
  KEY `ix_exemptiontype_state` (`state`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `faas` */

CREATE TABLE `faas` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(25) NOT NULL DEFAULT '',
  `rpuid` VARCHAR(50) NOT NULL,
  `datacapture` INT(11) NOT NULL,
  `autonumber` INT(11) NOT NULL,
  `utdno` VARCHAR(25) NOT NULL,
  `tdno` VARCHAR(25) DEFAULT '',
  `txntype_objid` VARCHAR(3) NOT NULL DEFAULT '',
  `effectivityyear` INT(11) NOT NULL,
  `effectivityqtr` INT(11) NOT NULL,
  `titletype` VARCHAR(10) DEFAULT NULL,
  `titleno` VARCHAR(20) DEFAULT NULL,
  `titledate` DATE DEFAULT NULL,
  `taxpayer_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `taxpayer_name` VARCHAR(2000) NOT NULL DEFAULT '',
  `taxpayer_address` VARCHAR(150) NOT NULL DEFAULT '',
  `owner_name` VARCHAR(2000) NOT NULL DEFAULT '',
  `owner_address` VARCHAR(150) NOT NULL DEFAULT '',
  `administrator_objid` VARCHAR(50) DEFAULT NULL,
  `administrator_name` VARCHAR(150) DEFAULT NULL,
  `administrator_address` VARCHAR(150) DEFAULT NULL,
  `beneficiary_objid` VARCHAR(50) DEFAULT NULL,
  `beneficiary_name` VARCHAR(150) DEFAULT NULL,
  `beneficiary_address` VARCHAR(150) DEFAULT NULL,
  `memoranda` VARCHAR(500) DEFAULT NULL,
  `cancelnote` VARCHAR(250) DEFAULT NULL,
  `restrictionid` VARCHAR(50) DEFAULT NULL,
  `backtaxyrs` INT(11) NOT NULL,
  `prevtdno` VARCHAR(500) DEFAULT NULL,
  `prevpin` VARCHAR(500) DEFAULT NULL,
  `prevowner` VARCHAR(1000) DEFAULT NULL,
  `prevav` DECIMAL(16,2) NOT NULL,
  `prevmv` DECIMAL(16,2) NOT NULL,
  `cancelreason` VARCHAR(5) DEFAULT NULL,
  `canceldate` DATE DEFAULT NULL,
  `cancelledbytdnos` VARCHAR(2500) DEFAULT NULL,
  `lguid` VARCHAR(50) NOT NULL,
  `txntimestamp` VARCHAR(25) NOT NULL,
  `cancelledtimestamp` VARCHAR(25) DEFAULT '',
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
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `faasannotation` */

CREATE TABLE `faasannotation` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(15) NOT NULL,
  `annotationtype_objid` VARCHAR(50) NOT NULL,
  `faasid` VARCHAR(50) NOT NULL,
  `txnno` VARCHAR(6) DEFAULT NULL,
  `txndate` DATE DEFAULT NULL,
  `fileno` VARCHAR(25) NOT NULL,
  `orno` VARCHAR(10) NOT NULL,
  `ordate` DATE NOT NULL,
  `oramount` DECIMAL(16,2) NOT NULL,
  `memoranda` VARCHAR(2000) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_faasannotation_faasannotationtype` (`annotationtype_objid`),
  KEY `FK_faasannotation_faas` (`faasid`),
  KEY `ix_faasannotation_txnno` (`txnno`),
  KEY `ix_faasannotation_fileno` (`fileno`),
  KEY `ix_faasannotation_orno` (`orno`),
  KEY `ix_faasannotation_state` (`state`),
  CONSTRAINT `FK_faasannotation_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_faasannotation_faasannotationtype` FOREIGN KEY (`annotationtype_objid`) REFERENCES `faasannotationtype` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `faasannotationtype` */

CREATE TABLE `faasannotationtype` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `type` VARCHAR(100) NOT NULL DEFAULT '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `annotationtype` (`type`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `faasbacktax` */

CREATE TABLE `faasbacktax` (
  `objid` VARCHAR(50) NOT NULL,
  `faasid` VARCHAR(50) NOT NULL,
  `ry` INT(11) NOT NULL,
  `tdno` VARCHAR(25) NOT NULL,
  `bmv` DECIMAL(16,2) NOT NULL,
  `mv` DECIMAL(16,2) NOT NULL,
  `av` DECIMAL(16,2) NOT NULL,
  `effectivityyear` INT(11) NOT NULL,
  `effectivityqtr` INT(11) NOT NULL,
  `taxable` INT(11) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_faasbacktax` (`faasid`),
  CONSTRAINT `FK_faasbacktax` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `faasupdate` */

CREATE TABLE `faasupdate` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(25) NOT NULL,
  `txnno` VARCHAR(10) NOT NULL,
  `txndate` DATETIME NOT NULL,
  `faasid` VARCHAR(50) NOT NULL,
  `prevtitletype` VARCHAR(25) DEFAULT NULL,
  `prevtitleno` VARCHAR(25) DEFAULT NULL,
  `prevtitledate` DATE DEFAULT NULL,
  `prevtaxpayerid` VARCHAR(50) NOT NULL,
  `prevtaxpayername` VARCHAR(1000) NOT NULL,
  `prevtaxpayeraddress` VARCHAR(150) NOT NULL,
  `prevownername` VARCHAR(1000) NOT NULL,
  `prevowneraddress` VARCHAR(150) NOT NULL,
  `prevadministratorid` VARCHAR(50) DEFAULT NULL,
  `prevadministratorname` VARCHAR(150) DEFAULT NULL,
  `prevadministratoraddress` VARCHAR(100) DEFAULT NULL,
  `prevrestrictionid` VARCHAR(50) DEFAULT NULL,
  `prevmemoranda` VARCHAR(500) NOT NULL,
  `prevsurveyno` VARCHAR(100) DEFAULT NULL,
  `prevcadastrallotno` VARCHAR(100) NOT NULL,
  `prevblockno` VARCHAR(50) DEFAULT NULL,
  `prevpurok` VARCHAR(50) DEFAULT NULL,
  `prevstreet` VARCHAR(100) DEFAULT NULL,
  `prevnorth` VARCHAR(150) NOT NULL,
  `preveast` VARCHAR(150) NOT NULL,
  `prevsouth` VARCHAR(150) NOT NULL,
  `prevwest` VARCHAR(150) NOT NULL,
  `faas_titletype` VARCHAR(25) DEFAULT NULL,
  `faas_titleno` VARCHAR(25) DEFAULT NULL,
  `faas_titledate` DATE DEFAULT NULL,
  `faas_taxpayerid` VARCHAR(50) NOT NULL,
  `faas_taxpayername` VARCHAR(1000) NOT NULL,
  `faas_taxpayeraddress` VARCHAR(150) NOT NULL,
  `faas_ownername` VARCHAR(1000) NOT NULL,
  `faas_owneraddress` VARCHAR(150) NOT NULL,
  `faas_administratorid` VARCHAR(50) DEFAULT NULL,
  `faas_administratorname` VARCHAR(150) DEFAULT NULL,
  `faas_administratoraddress` VARCHAR(100) DEFAULT NULL,
  `faas_restrictionid` VARCHAR(50) DEFAULT NULL,
  `faas_memoranda` VARCHAR(500) NOT NULL,
  `rp_surveyno` VARCHAR(100) DEFAULT NULL,
  `rp_cadastrallotno` VARCHAR(100) NOT NULL,
  `rp_blockno` VARCHAR(50) DEFAULT NULL,
  `rp_street` VARCHAR(100) DEFAULT NULL,
  `rp_north` VARCHAR(150) NOT NULL,
  `rp_east` VARCHAR(150) NOT NULL,
  `rp_south` VARCHAR(150) NOT NULL,
  `rp_west` VARCHAR(150) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_faasupdate_txnno` (`txnno`),
  KEY `FK_faasupdate_faas` (`faasid`),
  CONSTRAINT `FK_faasupdate_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `fund` */

CREATE TABLE `fund` (
  `objid` VARCHAR(50) NOT NULL,
  `parentid` VARCHAR(50) DEFAULT NULL,
  `state` VARCHAR(10) DEFAULT NULL,
  `code` VARCHAR(50) DEFAULT NULL,
  `title` VARCHAR(255) DEFAULT NULL,
  `type` VARCHAR(20) DEFAULT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `landadjustment` */

CREATE TABLE `landadjustment` (
  `objid` VARCHAR(50) NOT NULL,
  `landrpuid` VARCHAR(50) DEFAULT NULL,
  `landdetailid` VARCHAR(50) DEFAULT NULL,
  `adjustmenttype_objid` VARCHAR(50) NOT NULL,
  `expr` VARCHAR(250) NOT NULL,
  `adjustment` DECIMAL(16,2) NOT NULL,
  `type` VARCHAR(2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_landadjustment_landdetail` (`landdetailid`),
  KEY `FK_landadjustment_landadjustmenttype` (`adjustmenttype_objid`),
  KEY `FK_landadjustment_landrpu` (`landrpuid`),
  CONSTRAINT `FK_landadjustment_landadjustmenttype` FOREIGN KEY (`adjustmenttype_objid`) REFERENCES `landadjustmenttype` (`objid`),
  CONSTRAINT `FK_landadjustment_landdetail` FOREIGN KEY (`landdetailid`) REFERENCES `landdetail` (`objid`),
  CONSTRAINT `FK_landadjustment_landrpu` FOREIGN KEY (`landrpuid`) REFERENCES `landrpu` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `landadjustmentparameter` */

CREATE TABLE `landadjustmentparameter` (
  `objid` VARCHAR(50) NOT NULL,
  `landadjustmentid` VARCHAR(50) NOT NULL,
  `landrpuid` VARCHAR(50) NOT NULL,
  `parameter_objid` VARCHAR(50) NOT NULL,
  `value` DECIMAL(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_landadjustmentparameter_landrpu` (`landrpuid`),
  KEY `FK_landadjustmentparameter_landadjustment` (`landadjustmentid`),
  KEY `FK_landadjustmentparameter_rptparameter` (`parameter_objid`),
  CONSTRAINT `FK_landadjustmentparameter_landadjustment` FOREIGN KEY (`landadjustmentid`) REFERENCES `landadjustment` (`objid`),
  CONSTRAINT `FK_landadjustmentparameter_landrpu` FOREIGN KEY (`landrpuid`) REFERENCES `landrpu` (`objid`),
  CONSTRAINT `FK_landadjustmentparameter_rptparameter` FOREIGN KEY (`parameter_objid`) REFERENCES `rptparameter` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `landadjustmenttype` */

CREATE TABLE `landadjustmenttype` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `landrysettingid` VARCHAR(50) NOT NULL DEFAULT '',
  `code` VARCHAR(10) NOT NULL DEFAULT '',
  `name` VARCHAR(100) NOT NULL DEFAULT '',
  `expr` VARCHAR(1000) NOT NULL DEFAULT '',
  `appliedto` VARCHAR(150) DEFAULT NULL,
  `previd` VARCHAR(50) DEFAULT '',
  PRIMARY KEY  (`objid`),
  KEY `FK_landadjustment_landrysetting` (`landrysettingid`),
  KEY `ix_landadjustmenttype` (`previd`),
  CONSTRAINT `FK_landadjustment_landrysetting` FOREIGN KEY (`landrysettingid`) REFERENCES `landrysetting` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `landadjustmenttype_classification` */

CREATE TABLE `landadjustmenttype_classification` (
  `landadjustmenttypeid` VARCHAR(50) NOT NULL DEFAULT '',
  `classification_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `landrysettingid` VARCHAR(50) NOT NULL DEFAULT '',
  PRIMARY KEY  (`landadjustmenttypeid`,`classification_objid`),
  KEY `FK_landadjustment_classification_landrysetting` (`landrysettingid`),
  KEY `FK_landadjustmenttype_classification_classification` (`classification_objid`),
  CONSTRAINT `FK_landadjustmenttype_classification_classification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`),
  CONSTRAINT `FK_landadjustmenttype_landadjustment` FOREIGN KEY (`landadjustmenttypeid`) REFERENCES `landadjustmenttype` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `landassesslevel` */

CREATE TABLE `landassesslevel` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `landrysettingid` VARCHAR(50) NOT NULL DEFAULT '',
  `classification_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `code` VARCHAR(20) NOT NULL DEFAULT '',
  `name` VARCHAR(100) NOT NULL DEFAULT '',
  `fixrate` INT(4) NOT NULL,
  `rate` DECIMAL(10,2) NOT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_landassesslevel_code` (`landrysettingid`,`code`),
  UNIQUE KEY `ux_landassesslevel_name` (`landrysettingid`,`name`),
  KEY `FK_landassesslevel_propertyclassification` (`classification_objid`),
  KEY `ix_landassesslevel_previd` (`previd`),
  CONSTRAINT `FK_landassesslevel_propertyclassification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`),
  CONSTRAINT `FK_landassesslevl_landrysetting` FOREIGN KEY (`landrysettingid`) REFERENCES `landrysetting` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `landassesslevelrange` */

CREATE TABLE `landassesslevelrange` (
  `objid` VARCHAR(50) NOT NULL,
  `landassesslevelid` VARCHAR(50) NOT NULL DEFAULT '',
  `landrysettingid` VARCHAR(50) NOT NULL DEFAULT '',
  `mvfrom` DECIMAL(16,2) NOT NULL,
  `mvto` DECIMAL(16,2) NOT NULL,
  `rate` DECIMAL(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_landassesslevelrange_rootid` (`landrysettingid`),
  KEY `FK_landassesslevelrange_landassesslevel` (`landassesslevelid`),
  CONSTRAINT `FK_landassesslevelrange_landassesslevel` FOREIGN KEY (`landassesslevelid`) REFERENCES `landassesslevel` (`objid`),
  CONSTRAINT `FK_landassesslevel_landrysetting` FOREIGN KEY (`landrysettingid`) REFERENCES `landrysetting` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `landdetail` */

CREATE TABLE `landdetail` (
  `objid` VARCHAR(50) NOT NULL,
  `landrpuid` VARCHAR(50) NOT NULL DEFAULT '',
  `subclass_objid` VARCHAR(50) NOT NULL,
  `specificclass_objid` VARCHAR(50) NOT NULL,
  `actualuse_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `stripping_objid` VARCHAR(50) DEFAULT NULL,
  `striprate` DECIMAL(16,2) NOT NULL,
  `areatype` VARCHAR(10) NOT NULL,
  `addlinfo` VARCHAR(250) DEFAULT NULL,
  `area` DECIMAL(18,6) NOT NULL,
  `areasqm` DECIMAL(18,2) NOT NULL,
  `areaha` DECIMAL(18,6) NOT NULL,
  `basevalue` DECIMAL(16,2) NOT NULL,
  `unitvalue` DECIMAL(16,2) NOT NULL,
  `taxable` INT(11) NOT NULL,
  `basemarketvalue` DECIMAL(16,2) NOT NULL,
  `adjustment` DECIMAL(16,2) NOT NULL,
  `landvalueadjustment` DECIMAL(16,2) NOT NULL,
  `actualuseadjustment` DECIMAL(16,2) NOT NULL,
  `marketvalue` DECIMAL(16,2) NOT NULL,
  `assesslevel` DECIMAL(16,2) NOT NULL,
  `assessedvalue` DECIMAL(16,2) NOT NULL,
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
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `landrpu` */

CREATE TABLE `landrpu` (
  `objid` VARCHAR(50) NOT NULL,
  `idleland` INT(11) NOT NULL,
  `totallandbmv` DECIMAL(16,2) NOT NULL,
  `totallandmv` DECIMAL(16,2) NOT NULL,
  `totallandav` DECIMAL(16,2) NOT NULL,
  `totalplanttreebmv` DECIMAL(16,2) NOT NULL,
  `totalplanttreemv` DECIMAL(16,2) NOT NULL,
  `totalplanttreeadjustment` DECIMAL(16,2) NOT NULL,
  `totalplanttreeav` DECIMAL(16,2) NOT NULL,
  `landvalueadjustment` DECIMAL(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  CONSTRAINT `FK_landrpu_rpu` FOREIGN KEY (`objid`) REFERENCES `rpu` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `landrysetting` */

CREATE TABLE `landrysetting` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'DRAFT, APPROVED',
  `ry` INT(11) NOT NULL,
  `appliedto` VARCHAR(500) DEFAULT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_landrysetting_ry` (`ry`),
  KEY `ix_landrysetting_previd` (`previd`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `lcuvspecificclass` */

CREATE TABLE `lcuvspecificclass` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `landrysettingid` VARCHAR(50) NOT NULL DEFAULT '',
  `classification_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `code` VARCHAR(20) NOT NULL DEFAULT '',
  `name` VARCHAR(100) NOT NULL DEFAULT '',
  `areatype` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'SQM, HA',
  `previd` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lcuvspecificclass_code` (`landrysettingid`,`classification_objid`,`code`),
  UNIQUE KEY `ux_lcuvspecificclass_name` (`landrysettingid`,`classification_objid`,`code`,`name`),
  KEY `FK_lcuvspecificclass_propertyclassification` (`classification_objid`),
  KEY `ix_lcuvspecificclass_previd` (`previd`),
  CONSTRAINT `FK_lcuvspecificclass_landrysetting` FOREIGN KEY (`landrysettingid`) REFERENCES `landrysetting` (`objid`),
  CONSTRAINT `FK_lcuvspecificclass_propertyclassification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `lcuvstripping` */

CREATE TABLE `lcuvstripping` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `landrysettingid` VARCHAR(50) NOT NULL DEFAULT '',
  `classification_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `striplevel` INT(11) NOT NULL,
  `rate` DECIMAL(10,2) NOT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lcuvstripping` (`landrysettingid`,`classification_objid`,`striplevel`),
  KEY `FK_lcuvstripping_landrysetting` (`landrysettingid`),
  KEY `FK_lcuvstripping_propertyclassification` (`classification_objid`),
  KEY `ix_lcuvstripping_previd` (`previd`),
  CONSTRAINT `FK_lcuvstripping_landrysetting` FOREIGN KEY (`landrysettingid`) REFERENCES `landrysetting` (`objid`),
  CONSTRAINT `FK_lcuvstripping_propertyclassification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `lcuvsubclass` */

CREATE TABLE `lcuvsubclass` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `specificclass_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `landrysettingid` VARCHAR(50) NOT NULL DEFAULT '',
  `code` VARCHAR(50) NOT NULL DEFAULT '',
  `name` VARCHAR(10) NOT NULL DEFAULT '',
  `unitvalue` DECIMAL(10,2) NOT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lcuvsubclass_code` (`landrysettingid`,`specificclass_objid`,`code`),
  UNIQUE KEY `ux_lcuvsubclass_name` (`landrysettingid`,`specificclass_objid`,`code`,`name`),
  KEY `ix_lcuvsubclass_rootid` (`landrysettingid`),
  KEY `FK_lcuvsubclass_lcuvspecificclass` (`specificclass_objid`),
  KEY `ix_lcuvsubclass_previd` (`previd`),
  CONSTRAINT `FK_lcuvsubclass_landrysetting` FOREIGN KEY (`landrysettingid`) REFERENCES `landrysetting` (`objid`),
  CONSTRAINT `FK_lcuvsubclass_lcuvspecificclass` FOREIGN KEY (`specificclass_objid`) REFERENCES `lcuvspecificclass` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `liquidation` */

CREATE TABLE `liquidation` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(50) NOT NULL DEFAULT '',
  `txnno` VARCHAR(20) NOT NULL DEFAULT '',
  `dtposted` DATE NOT NULL,
  `liquidatingofficer_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `liquidatingofficer_name` VARCHAR(100) NOT NULL DEFAULT '',
  `liquidatingofficer_title` VARCHAR(50) NOT NULL DEFAULT '',
  `amount` DECIMAL(18,2) DEFAULT NULL,
  `totalcash` DECIMAL(18,2) DEFAULT NULL,
  `totalnoncash` DECIMAL(18,2) DEFAULT NULL,
  `cashbreakdown` VARCHAR(600) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_liquidation_txnno` (`txnno`),
  KEY `ix_liquidation_state` (`state`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `liquidation_cashier_fund` */

CREATE TABLE `liquidation_cashier_fund` (
  `objid` VARCHAR(50) NOT NULL,
  `liquidationid` VARCHAR(50) DEFAULT NULL,
  `fund_objid` VARCHAR(50) DEFAULT NULL,
  `fund_title` VARCHAR(50) DEFAULT NULL,
  `cashier_objid` VARCHAR(50) DEFAULT NULL,
  `cashier_name` VARCHAR(50) DEFAULT NULL,
  `amount` DECIMAL(16,2) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_liquidation_cashier_fund_liquidation` (`liquidationid`),
  CONSTRAINT `FK_liquidation_cashier_fund_liquidation` FOREIGN KEY (`liquidationid`) REFERENCES `liquidation` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `liquidation_checkpayment` */

CREATE TABLE `liquidation_checkpayment` (
  `objid` VARCHAR(50) NOT NULL,
  `liquidationid` VARCHAR(50) NOT NULL,
  KEY `FK_liquidation_checkpayment` (`objid`),
  KEY `FK_liquidation_checkpayment_liquidation` (`liquidationid`),
  CONSTRAINT `FK_liquidation_checkpayment` FOREIGN KEY (`objid`) REFERENCES `cashreceiptpayment_check` (`objid`),
  CONSTRAINT `FK_liquidation_checkpayment_liquidation` FOREIGN KEY (`liquidationid`) REFERENCES `liquidation` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `liquidation_remittance` */

CREATE TABLE `liquidation_remittance` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `liquidationid` VARCHAR(50) NOT NULL DEFAULT '',
  PRIMARY KEY  (`objid`),
  KEY `FK_liquidationitem_liquidation` (`liquidationid`),
  CONSTRAINT `FK_liquidation_remittance_remittance` FOREIGN KEY (`objid`) REFERENCES `remittance` (`objid`),
  CONSTRAINT `FK_liquidation_remittance_liquidation` FOREIGN KEY (`liquidationid`) REFERENCES `liquidation` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `machassesslevel` */

CREATE TABLE `machassesslevel` (
  `objid` VARCHAR(50) NOT NULL,
  `machrysettingid` VARCHAR(50) NOT NULL,
  `classification_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `code` VARCHAR(10) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `fixrate` INT(11) NOT NULL,
  `rate` DECIMAL(10,2) NOT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_machassesslevel_settingcode` (`machrysettingid`,`code`),
  UNIQUE KEY `ux_machassesslevel_settingname` (`machrysettingid`,`name`),
  KEY `FK_machassesslevel_propertyclassification` (`classification_objid`),
  KEY `ix_machassesslevel_previd` (`previd`),
  CONSTRAINT `FK_machassesslevel_machrysetting` FOREIGN KEY (`machrysettingid`) REFERENCES `machrysetting` (`objid`),
  CONSTRAINT `FK_machassesslevel_propertyclassification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `machassesslevelrange` */

CREATE TABLE `machassesslevelrange` (
  `objid` VARCHAR(50) NOT NULL,
  `machassesslevelid` VARCHAR(50) NOT NULL DEFAULT '',
  `machrysettingid` VARCHAR(50) NOT NULL DEFAULT '',
  `mvfrom` DECIMAL(16,2) NOT NULL,
  `mvto` DECIMAL(16,2) NOT NULL,
  `rate` DECIMAL(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_machassesslevelrange_mvfrom` (`machrysettingid`,`machassesslevelid`,`mvfrom`),
  KEY `FK_machassesslevelrange_machassesslevel` (`machassesslevelid`),
  CONSTRAINT `FK_machassesslevelrange_machassesslevel` FOREIGN KEY (`machassesslevelid`) REFERENCES `machassesslevel` (`objid`),
  CONSTRAINT `FK_machassesslevelrange_machrysetting` FOREIGN KEY (`machrysettingid`) REFERENCES `machrysetting` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `machdetail` */

CREATE TABLE `machdetail` (
  `objid` VARCHAR(50) NOT NULL,
  `machuseid` VARCHAR(50) NOT NULL,
  `machrpuid` VARCHAR(50) NOT NULL,
  `machine_objid` VARCHAR(50) NOT NULL,
  `operationyear` INT(11) DEFAULT NULL,
  `replacementcost` DECIMAL(16,2) NOT NULL,
  `depreciation` DECIMAL(16,2) NOT NULL,
  `depreciationvalue` DECIMAL(16,2) NOT NULL,
  `basemarketvalue` DECIMAL(16,2) NOT NULL,
  `marketvalue` DECIMAL(16,2) NOT NULL,
  `assesslevel` DECIMAL(16,2) NOT NULL,
  `assessedvalue` DECIMAL(16,2) NOT NULL,
  `brand` VARCHAR(50) DEFAULT NULL,
  `capacity` VARCHAR(50) DEFAULT NULL,
  `model` VARCHAR(50) DEFAULT NULL,
  `serialno` VARCHAR(50) DEFAULT NULL,
  `status` VARCHAR(50) DEFAULT NULL,
  `yearacquired` INT(11) DEFAULT NULL,
  `estimatedlife` INT(11) DEFAULT NULL,
  `remaininglife` INT(11) DEFAULT NULL,
  `yearinstalled` INT(11) DEFAULT NULL,
  `yearsused` INT(11) DEFAULT NULL,
  `originalcost` DECIMAL(16,2) NOT NULL,
  `freightcost` DECIMAL(16,2) NOT NULL,
  `insurancecost` DECIMAL(16,2) NOT NULL,
  `installationcost` DECIMAL(16,2) NOT NULL,
  `brokeragecost` DECIMAL(16,2) NOT NULL,
  `arrastrecost` DECIMAL(16,2) NOT NULL,
  `othercost` DECIMAL(16,2) NOT NULL,
  `acquisitioncost` DECIMAL(16,2) NOT NULL,
  `feracid` VARCHAR(50) DEFAULT NULL,
  `ferac` DECIMAL(16,2) DEFAULT NULL,
  `forexid` VARCHAR(50) DEFAULT NULL,
  `forex` DECIMAL(16,4) DEFAULT NULL,
  `residualrate` DECIMAL(16,2) NOT NULL,
  `conversionfactor` DECIMAL(16,2) NOT NULL,
  `swornamount` DECIMAL(16,2) NOT NULL,
  `useswornamount` INT(11) NOT NULL,
  `imported` INT(11) NOT NULL,
  `newlyinstalled` INT(11) NOT NULL,
  `autodepreciate` INT(11) NOT NULL,
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
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `machforex` */

CREATE TABLE `machforex` (
  `objid` VARCHAR(50) NOT NULL,
  `machrysettingid` VARCHAR(50) NOT NULL,
  `year` INT(10) NOT NULL,
  `forex` DECIMAL(10,6) NOT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_machforex_settingyear` (`machrysettingid`,`year`),
  KEY `ix_machforex_previd` (`previd`),
  CONSTRAINT `FK_machforex_machrysetting` FOREIGN KEY (`machrysettingid`) REFERENCES `machrysetting` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `machine` */

CREATE TABLE `machine` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'DRAFT, APPROVED',
  `code` VARCHAR(20) NOT NULL DEFAULT '',
  `name` VARCHAR(100) NOT NULL DEFAULT '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_machine_code` (`code`),
  UNIQUE KEY `ux_machine_name` (`name`),
  KEY `ix_machine_state` (`state`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `machrpu` */

CREATE TABLE `machrpu` (
  `objid` VARCHAR(50) NOT NULL,
  `landrpuid` VARCHAR(50) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_machrpu_landrpu` (`landrpuid`),
  CONSTRAINT `FK_machrpu_landrpu` FOREIGN KEY (`landrpuid`) REFERENCES `landrpu` (`objid`),
  CONSTRAINT `FK_machrpu_rpu` FOREIGN KEY (`objid`) REFERENCES `rpu` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `machrysetting` */

CREATE TABLE `machrysetting` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(15) NOT NULL,
  `ry` INT(11) NOT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  `appliedto` TEXT,
  PRIMARY KEY  (`objid`),
  KEY `FK_machrysetting_machrysetting` (`previd`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `machuse` */

CREATE TABLE `machuse` (
  `objid` VARCHAR(50) NOT NULL,
  `machrpuid` VARCHAR(50) NOT NULL,
  `actualuse_objid` VARCHAR(50) NOT NULL,
  `basemarketvalue` DECIMAL(16,2) NOT NULL,
  `marketvalue` DECIMAL(16,2) NOT NULL,
  `assesslevel` DECIMAL(16,2) NOT NULL,
  `assessedvalue` DECIMAL(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_machuse_machassesslevel` (`actualuse_objid`),
  KEY `FK_machuse_machrpu` (`machrpuid`),
  CONSTRAINT `FK_machuse_machassesslevel` FOREIGN KEY (`actualuse_objid`) REFERENCES `machassesslevel` (`objid`),
  CONSTRAINT `FK_machuse_machrpu` FOREIGN KEY (`machrpuid`) REFERENCES `machrpu` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `material` */

CREATE TABLE `material` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'DRAFT, APPROVED',
  `code` VARCHAR(20) NOT NULL DEFAULT '',
  `name` VARCHAR(100) NOT NULL DEFAULT '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_material_code` (`code`),
  UNIQUE KEY `ux_material_name` (`name`),
  KEY `ix_material_state` (`state`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `miscassesslevel` */

CREATE TABLE `miscassesslevel` (
  `objid` VARCHAR(50) NOT NULL,
  `miscrysettingid` VARCHAR(50) NOT NULL,
  `classification_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `code` VARCHAR(10) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `fixrate` INT(11) NOT NULL,
  `rate` DECIMAL(10,2) NOT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_miscassesslevel_settingcode` (`miscrysettingid`,`code`),
  UNIQUE KEY `ux_miscassesslevel_settingname` (`miscrysettingid`,`name`),
  KEY `FK_miscassesslevel_classification` (`classification_objid`),
  KEY `ix_miscassesslevel_previd` (`previd`),
  CONSTRAINT `FK_miscassesslevel_classification` FOREIGN KEY (`classification_objid`) REFERENCES `propertyclassification` (`objid`),
  CONSTRAINT `FK_miscassesslevel_miscrysetting` FOREIGN KEY (`miscrysettingid`) REFERENCES `miscrysetting` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `miscassesslevelrange` */

CREATE TABLE `miscassesslevelrange` (
  `objid` VARCHAR(50) NOT NULL,
  `miscassesslevelid` VARCHAR(50) NOT NULL DEFAULT '',
  `miscrysettingid` VARCHAR(50) NOT NULL DEFAULT '',
  `mvfrom` DECIMAL(16,2) NOT NULL,
  `mvto` DECIMAL(16,2) NOT NULL,
  `rate` DECIMAL(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_miscassesslevelrange_miscassesslevel` (`miscassesslevelid`),
  KEY `FK_miscassesslevelrange_miscrysetting` (`miscrysettingid`),
  CONSTRAINT `FK_miscassesslevelrange_miscassesslevel` FOREIGN KEY (`miscassesslevelid`) REFERENCES `miscassesslevel` (`objid`),
  CONSTRAINT `FK_miscassesslevelrange_miscrysetting` FOREIGN KEY (`miscrysettingid`) REFERENCES `miscrysetting` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `miscitem` */

CREATE TABLE `miscitem` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'DRAFT, APPROVED',
  `code` VARCHAR(20) NOT NULL DEFAULT '',
  `name` VARCHAR(100) NOT NULL DEFAULT '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_miscitem_code` (`code`),
  UNIQUE KEY `ux_miscitem_name` (`name`),
  KEY `ix_miscitem_state` (`state`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `miscitemvalue` */

CREATE TABLE `miscitemvalue` (
  `objid` VARCHAR(50) NOT NULL,
  `miscrysettingid` VARCHAR(50) NOT NULL,
  `miscitem_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `expr` VARCHAR(100) NOT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_miscitemvalue_rysetting_item` (`miscrysettingid`,`miscitem_objid`),
  KEY `FK_miscitemvalue_miscitem` (`miscitem_objid`),
  KEY `ix_miscitemvalue_previd` (`previd`),
  CONSTRAINT `FK_miscitemvalue_miscitem` FOREIGN KEY (`miscitem_objid`) REFERENCES `miscitem` (`objid`),
  CONSTRAINT `FK_miscitemvalue_miscrysetting` FOREIGN KEY (`miscrysettingid`) REFERENCES `miscrysetting` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `miscrpu` */

CREATE TABLE `miscrpu` (
  `objid` VARCHAR(50) NOT NULL,
  `actualuse_objid` VARCHAR(50) NOT NULL,
  `landrpuid` VARCHAR(50) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_miscrpu_miscassesslevel` (`actualuse_objid`),
  CONSTRAINT `FK_miscrpu_miscassesslevel` FOREIGN KEY (`actualuse_objid`) REFERENCES `miscassesslevel` (`objid`),
  CONSTRAINT `FK_miscrpu_rpu` FOREIGN KEY (`objid`) REFERENCES `rpu` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `miscrpuitem` */

CREATE TABLE `miscrpuitem` (
  `objid` VARCHAR(50) NOT NULL,
  `miscrpuid` VARCHAR(50) NOT NULL,
  `miv_objid` VARCHAR(50) NOT NULL,
  `miscitem_objid` VARCHAR(50) NOT NULL,
  `expr` VARCHAR(255) NOT NULL,
  `depreciation` DECIMAL(16,2) NOT NULL,
  `depreciatedvalue` DECIMAL(16,2) NOT NULL,
  `basemarketvalue` DECIMAL(16,2) NOT NULL,
  `marketvalue` DECIMAL(16,2) NOT NULL,
  `assesslevel` DECIMAL(16,2) NOT NULL,
  `assessedvalue` DECIMAL(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_miscrpuitem_miscrpu` (`miscrpuid`),
  KEY `FK_miscrpuitem_miscitemvalue` (`miv_objid`),
  KEY `FK_miscrpuitem_miscitem` (`miscitem_objid`),
  CONSTRAINT `FK_miscrpuitem_miscitem` FOREIGN KEY (`miscitem_objid`) REFERENCES `miscitem` (`objid`),
  CONSTRAINT `FK_miscrpuitem_miscitemvalue` FOREIGN KEY (`miv_objid`) REFERENCES `miscitemvalue` (`objid`),
  CONSTRAINT `FK_miscrpuitem_miscrpu` FOREIGN KEY (`miscrpuid`) REFERENCES `miscrpu` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `miscrpuitem_rptparameter` */

CREATE TABLE `miscrpuitem_rptparameter` (
  `miscrpuitemid` VARCHAR(50) NOT NULL,
  `param_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `miscrpuid` VARCHAR(50) NOT NULL DEFAULT '',
  `intvalue` INT(11) DEFAULT NULL,
  `decimalvalue` DECIMAL(16,2) NOT NULL,
  PRIMARY KEY  (`miscrpuitemid`,`param_objid`),
  KEY `FK_miscrpuitem_rptparameter_` (`miscrpuid`),
  KEY `FK_miscrpuitem_rptparameter_rptparamer` (`param_objid`),
  CONSTRAINT `FK_miscrpuitem_rptparameter_` FOREIGN KEY (`miscrpuid`) REFERENCES `miscrpu` (`objid`),
  CONSTRAINT `FK_miscrpuitem_rptparameter_miscrpuitem` FOREIGN KEY (`miscrpuitemid`) REFERENCES `miscrpuitem` (`objid`),
  CONSTRAINT `FK_miscrpuitem_rptparameter_rptparamer` FOREIGN KEY (`param_objid`) REFERENCES `rptparameter` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `miscrysetting` */

CREATE TABLE `miscrysetting` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(15) NOT NULL,
  `ry` INT(11) NOT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  `appliedto` TEXT,
  PRIMARY KEY  (`objid`),
  KEY `ix_miscrysetting_ry` (`ry`),
  KEY `ix_miscrysetting_state` (`state`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `municipality` */

CREATE TABLE `municipality` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(10) DEFAULT NULL,
  `indexno` VARCHAR(15) DEFAULT NULL,
  `pin` VARCHAR(15) DEFAULT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  `parentid` VARCHAR(50) DEFAULT NULL,
  `mayor_name` VARCHAR(100) DEFAULT NULL,
  `mayor_title` VARCHAR(50) DEFAULT NULL,
  `mayor_office` VARCHAR(50) DEFAULT NULL,
  `assessor_name` VARCHAR(100) DEFAULT NULL,
  `assessor_title` VARCHAR(50) DEFAULT NULL,
  `assessor_office` VARCHAR(50) DEFAULT NULL,
  `treasurer_name` VARCHAR(100) DEFAULT NULL,
  `treasurer_title` VARCHAR(50) DEFAULT NULL,
  `treasurer_office` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lgu_barangay_name` (`name`),
  UNIQUE KEY `ux_lgu_barangay_name_state` (`name`,`state`),
  KEY `ix_lgu_barangay_indexno` (`indexno`),
  KEY `ix_lgu_barangay_previd` (`previd`),
  KEY `ix_lgu_barangay_parentid` (`parentid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `pin` */

CREATE TABLE `pin` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(20) NOT NULL,
  `barangayid` VARCHAR(50) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `ix_pin_state` (`state`),
  KEY `FK_lgu_barangay` (`barangayid`),
  CONSTRAINT `FK_pin_barangay` FOREIGN KEY (`barangayid`) REFERENCES `barangay` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `planttree` */

CREATE TABLE `planttree` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'DRAFT, APPROVED',
  `code` VARCHAR(20) NOT NULL DEFAULT '',
  `name` VARCHAR(100) NOT NULL DEFAULT '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_planttree_code` (`code`),
  UNIQUE KEY `ux_planttree_name` (`name`),
  KEY `ix_planttree_state` (`state`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `planttreeassesslevel` */

CREATE TABLE `planttreeassesslevel` (
  `objid` VARCHAR(50) NOT NULL,
  `planttreerysettingid` VARCHAR(50) NOT NULL DEFAULT '',
  `code` VARCHAR(25) NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `rate` DECIMAL(16,2) NOT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_planttreeassesslevel_settingcode` (`planttreerysettingid`,`code`),
  UNIQUE KEY `ux_planttreeassesslevel_settingname` (`planttreerysettingid`,`name`),
  KEY `FK_planttreeassesslevel_planttreeassesslevel` (`previd`),
  CONSTRAINT `FK_planttreeassesslevel_planttreerysetting` FOREIGN KEY (`planttreerysettingid`) REFERENCES `planttreerysetting` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `planttreedetail` */

CREATE TABLE `planttreedetail` (
  `objid` VARCHAR(50) NOT NULL,
  `planttreerpuid` VARCHAR(50) DEFAULT NULL,
  `landrpuid` VARCHAR(50) DEFAULT NULL,
  `planttreeunitvalue_objid` VARCHAR(50) NOT NULL,
  `planttree_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `actualuse_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `productive` DECIMAL(16,2) NOT NULL,
  `nonproductive` DECIMAL(16,2) NOT NULL,
  `nonproductiveage` DECIMAL(16,2) DEFAULT NULL,
  `unitvalue` DECIMAL(16,2) NOT NULL,
  `basemarketvalue` DECIMAL(16,2) NOT NULL,
  `adjustment` DECIMAL(16,2) NOT NULL,
  `adjustmentrate` DECIMAL(16,2) NOT NULL,
  `marketvalue` DECIMAL(16,2) NOT NULL,
  `assesslevel` DECIMAL(16,2) NOT NULL,
  `assessedvalue` DECIMAL(16,2) NOT NULL,
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
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `planttreerpu` */

CREATE TABLE `planttreerpu` (
  `objid` VARCHAR(50) NOT NULL,
  `landrpuid` VARCHAR(50) NOT NULL,
  `productive` DECIMAL(16,2) NOT NULL,
  `nonproductive` DECIMAL(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_planttreerpu_landrpu` (`landrpuid`),
  CONSTRAINT `FK_planttreerpu_landrpu` FOREIGN KEY (`landrpuid`) REFERENCES `landrpu` (`objid`),
  CONSTRAINT `FK_planttreerpu_rpu` FOREIGN KEY (`objid`) REFERENCES `rpu` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `planttreerysetting` */

CREATE TABLE `planttreerysetting` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(15) NOT NULL,
  `ry` INT(11) NOT NULL,
  `applyagriadjustment` INT(11) NOT NULL,
  `appliedto` TEXT,
  `previd` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_planttreerysetting_planttreerysetting` (`previd`),
  KEY `ix_planttreerysetting_ry` (`ry`),
  CONSTRAINT `FK_planttreerysetting_planttreerysetting` FOREIGN KEY (`previd`) REFERENCES `planttreerysetting` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `planttreeunitvalue` */

CREATE TABLE `planttreeunitvalue` (
  `objid` VARCHAR(50) NOT NULL,
  `planttreerysettingid` VARCHAR(50) NOT NULL,
  `planttree_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `code` VARCHAR(10) NOT NULL,
  `name` VARCHAR(25) NOT NULL,
  `unitvalue` DECIMAL(10,2) NOT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_planttreeunitvalue_settingplanttreecode` (`planttreerysettingid`,`planttree_objid`,`code`),
  UNIQUE KEY `ux_planttreeunitvalue_settingplanttreename` (`planttreerysettingid`,`planttree_objid`,`name`),
  KEY `FK_planttreeunitvalue_planttreeunitvalue` (`previd`),
  KEY `FK_planttreeunitvalue_planttree` (`planttree_objid`),
  CONSTRAINT `FK_planttreeunitvalue_planttree` FOREIGN KEY (`planttree_objid`) REFERENCES `planttree` (`objid`),
  CONSTRAINT `FK_planttreeunitvalue_planttreerysetting` FOREIGN KEY (`planttreerysettingid`) REFERENCES `planttreerysetting` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `postcapturedreceipt` */

CREATE TABLE `postcapturedreceipt` (
  `objid` VARCHAR(50) NOT NULL,
  `schemaname` VARCHAR(50) NOT NULL,
  `schemaversion` VARCHAR(5) NOT NULL,
  `docstate` VARCHAR(25) NOT NULL,
  `dtposted` DATE NOT NULL,
  `collectorid` VARCHAR(50) NOT NULL,
  `collectorname` VARCHAR(75) NOT NULL,
  `collectortitle` VARCHAR(25) NOT NULL,
  `postedbyid` VARCHAR(50) NOT NULL,
  `postedbyname` VARCHAR(75) NOT NULL,
  `postedbytitle` VARCHAR(25) NOT NULL,
  `amount` DECIMAL(12,2) NOT NULL,
  `summaries` TEXT NOT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `previousfaas` */

CREATE TABLE `previousfaas` (
  `faasid` VARCHAR(50) NOT NULL,
  `prevfaasid` VARCHAR(50) NOT NULL,
  PRIMARY KEY  (`faasid`,`prevfaasid`),
  KEY `FK_previousfaas_prevfaas` (`prevfaasid`),
  CONSTRAINT `FK_previousfaas_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_previousfaas_prevfaas` FOREIGN KEY (`prevfaasid`) REFERENCES `faas` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `propertyclassification` */

CREATE TABLE `propertyclassification` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'DRAFT, APPROVED',
  `code` VARCHAR(20) NOT NULL DEFAULT '',
  `name` VARCHAR(100) NOT NULL DEFAULT '',
  `special` INT(4) NOT NULL,
  `orderno` INT(11) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_propertyclassification_code` (`code`),
  UNIQUE KEY `ux_propertyclassification_name` (`name`),
  KEY `ix_propertyclassification_state` (`state`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `province` */

CREATE TABLE `province` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(10) DEFAULT NULL,
  `indexno` VARCHAR(15) DEFAULT NULL,
  `pin` VARCHAR(15) DEFAULT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
  `parentid` VARCHAR(50) DEFAULT NULL,
  `governor_name` VARCHAR(100) DEFAULT NULL,
  `governor_title` VARCHAR(50) DEFAULT NULL,
  `governor_office` VARCHAR(50) DEFAULT NULL,
  `assessor_name` VARCHAR(100) DEFAULT NULL,
  `assessor_title` VARCHAR(50) DEFAULT NULL,
  `assessor_office` VARCHAR(50) DEFAULT NULL,
  `treasurer_name` VARCHAR(100) DEFAULT NULL,
  `treasurer_title` VARCHAR(50) DEFAULT NULL,
  `treasurer_office` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_lgu_barangay_name` (`name`),
  UNIQUE KEY `ux_lgu_barangay_name_state` (`name`,`state`),
  KEY `ix_lgu_barangay_indexno` (`indexno`),
  KEY `ix_lgu_barangay_previd` (`previd`),
  KEY `ix_lgu_barangay_parentid` (`parentid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `realproperty` */

CREATE TABLE `realproperty` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(25) NOT NULL DEFAULT '',
  `autonumber` INT(11) NOT NULL,
  `pinid` VARCHAR(50) NOT NULL,
  `pintype` VARCHAR(5) NOT NULL,
  `pin` VARCHAR(30) NOT NULL DEFAULT '',
  `ry` INT(11) NOT NULL,
  `claimno` VARCHAR(5) DEFAULT '',
  `section` VARCHAR(3) NOT NULL DEFAULT '',
  `parcel` VARCHAR(3) NOT NULL,
  `cadastrallotno` VARCHAR(255) NOT NULL DEFAULT '',
  `blockno` VARCHAR(255) DEFAULT NULL,
  `surveyno` VARCHAR(30) DEFAULT NULL,
  `street` VARCHAR(100) DEFAULT NULL,
  `purok` VARCHAR(25) DEFAULT NULL,
  `north` VARCHAR(255) NOT NULL,
  `south` VARCHAR(255) NOT NULL,
  `east` VARCHAR(255) NOT NULL,
  `west` VARCHAR(255) NOT NULL,
  `barangayid` VARCHAR(50) NOT NULL,
  `lgutype` VARCHAR(50) NOT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
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
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `realproperty_faas` */

CREATE TABLE `realproperty_faas` (
  `realpropertyid` VARCHAR(50) NOT NULL,
  `faasid` VARCHAR(50) NOT NULL,
  PRIMARY KEY  (`realpropertyid`),
  KEY `FK_realproperty_faas_faas` (`faasid`),
  CONSTRAINT `FK_realproperty_faas_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_realproperty_faas_realproperty` FOREIGN KEY (`realpropertyid`) REFERENCES `realproperty` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `remittance` */

CREATE TABLE `remittance` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(20) NOT NULL DEFAULT '',
  `txnno` VARCHAR(20) NOT NULL DEFAULT '',
  `dtposted` DATE NOT NULL,
  `collector_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `collector_name` VARCHAR(100) NOT NULL DEFAULT '',
  `collector_title` VARCHAR(30) NOT NULL DEFAULT '',
  `liquidatingofficer_objid` VARCHAR(50) NOT NULL,
  `liquidatingofficer_name` VARCHAR(100) NOT NULL,
  `liquidatingofficer_title` VARCHAR(50) NOT NULL,
  `amount` DECIMAL(18,2) NOT NULL,
  `totalcash` DECIMAL(18,2) NOT NULL,
  `totalnoncash` DECIMAL(18,2) NOT NULL,
  `cashbreakdown` VARCHAR(600) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_remittance_txnno` (`txnno`),
  KEY `ix_remittance_state` (`state`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `remittance_af` */

CREATE TABLE `remittance_af` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `remittanceid` VARCHAR(50) NOT NULL DEFAULT '',
  PRIMARY KEY  (`objid`),
  KEY `FK_remittance_af` (`remittanceid`),
  CONSTRAINT `FK_remittance_af` FOREIGN KEY (`remittanceid`) REFERENCES `remittance` (`objid`),
  CONSTRAINT `FK_remittance_af_afcontrol` FOREIGN KEY (`objid`) REFERENCES `afcontrol_detail` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `remittance_cashreceipt` */

CREATE TABLE `remittance_cashreceipt` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `remittanceid` VARCHAR(50) NOT NULL DEFAULT '',
  PRIMARY KEY  (`objid`),
  KEY `FK_remittanceitem_remittance` (`remittanceid`),
  CONSTRAINT `FK_remittance_cashreceipt_cashreceipt` FOREIGN KEY (`objid`) REFERENCES `cashreceipt` (`objid`),
  CONSTRAINT `FK_remittance_cashreceipt_remittance` FOREIGN KEY (`remittanceid`) REFERENCES `remittance` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `remittance_checkpayment` */

CREATE TABLE `remittance_checkpayment` (
  `objid` VARCHAR(50) NOT NULL,
  `remittanceid` VARCHAR(50) DEFAULT NULL,
  `amount` DECIMAL(16,2) DEFAULT NULL,
  `voided` INT(11) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_remittance_checkpayment_remittance` (`remittanceid`),
  CONSTRAINT `FK_remittance_checkpayment_remittance` FOREIGN KEY (`remittanceid`) REFERENCES `remittance` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `resection` */

CREATE TABLE `resection` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(20) NOT NULL DEFAULT '',
  `pintype` VARCHAR(5) NOT NULL,
  `barangayid` VARCHAR(50) NOT NULL,
  `barangaypin` VARCHAR(15) NOT NULL,
  `section` VARCHAR(3) NOT NULL,
  `ry` INT(11) NOT NULL,
  `txntype_objid` VARCHAR(5) NOT NULL,
  `txnno` VARCHAR(10) NOT NULL,
  `txndate` DATETIME NOT NULL,
  `autonumber` INT(11) NOT NULL,
  `effectivityyear` INT(11) NOT NULL,
  `effectivityqtr` INT(11) NOT NULL,
  `memoranda` VARCHAR(500) NOT NULL,
  `appraiser_objid` VARCHAR(50) DEFAULT '',
  `appraiser_name` VARCHAR(100) DEFAULT '',
  `appraiser_title` VARCHAR(50) DEFAULT '',
  `appraiser_dtsigned` DATE DEFAULT NULL,
  `recommender_objid` VARCHAR(50) DEFAULT NULL,
  `recommender_name` VARCHAR(100) DEFAULT NULL,
  `recommender_title` VARCHAR(50) DEFAULT NULL,
  `recommender_dtsigned` DATE DEFAULT NULL,
  `taxmapper_objid` VARCHAR(50) DEFAULT NULL,
  `taxmapper_name` VARCHAR(100) DEFAULT NULL,
  `taxmapper_title` VARCHAR(50) DEFAULT NULL,
  `taxmapper_dtsigned` DATE DEFAULT NULL,
  `approver_objid` VARCHAR(50) DEFAULT '',
  `approver_name` VARCHAR(100) DEFAULT '',
  `approver_title` VARCHAR(50) DEFAULT '',
  `approver_dtsigned` DATE DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_resection_sectionno` (`barangayid`,`section`),
  KEY `ix_resection_state` (`state`),
  KEY `ix_resection_barangayid` (`barangayid`),
  KEY `ix_resection_appraiser_name` (`appraiser_name`),
  KEY `ix_resection_approver_name` (`approver_name`),
  KEY `ix_resection_txnno` (`txnno`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `resectionaffectedrpu` */

CREATE TABLE `resectionaffectedrpu` (
  `objid` VARCHAR(50) NOT NULL,
  `resectionid` VARCHAR(50) NOT NULL,
  `rputype` VARCHAR(10) NOT NULL,
  `prevfaasid` VARCHAR(50) NOT NULL,
  `prevrpuid` VARCHAR(50) NOT NULL,
  `prevrpid` VARCHAR(50) NOT NULL,
  `newsection` VARCHAR(3) DEFAULT NULL,
  `newparcel` VARCHAR(3) DEFAULT NULL,
  `newtdno` VARCHAR(20) DEFAULT NULL,
  `newutdno` VARCHAR(20) NOT NULL,
  `newpin` VARCHAR(25) DEFAULT NULL,
  `newsuffix` INT(11) DEFAULT NULL,
  `newfaasid` VARCHAR(50) DEFAULT NULL,
  `newrpuid` VARCHAR(50) DEFAULT NULL,
  `newrpid` VARCHAR(50) DEFAULT NULL,
  `memoranda` VARCHAR(500) DEFAULT NULL,
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
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `resectionitem` */

CREATE TABLE `resectionitem` (
  `objid` VARCHAR(50) NOT NULL,
  `resectionid` VARCHAR(50) NOT NULL,
  `newsection` VARCHAR(3) NOT NULL DEFAULT '',
  `landcount` INT(11) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_resectionitem_sectionno` (`resectionid`,`newsection`),
  CONSTRAINT `FK_resectionitem_resection` FOREIGN KEY (`resectionid`) REFERENCES `resection` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `revenueitem` */

CREATE TABLE `revenueitem` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(10) DEFAULT NULL,
  `code` VARCHAR(50) DEFAULT NULL,
  `title` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `type` VARCHAR(25) DEFAULT NULL,
  `fund_objid` VARCHAR(50) DEFAULT NULL,
  `fund_code` VARCHAR(50) DEFAULT NULL,
  `fund_title` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `revenueitem_account` */

CREATE TABLE `revenueitem_account` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `acctid` VARCHAR(50) NOT NULL DEFAULT '',
  PRIMARY KEY  (`objid`),
  KEY `FK_itemaccount_glaccount` (`acctid`),
  CONSTRAINT `FK_itemaccount_glaccount` FOREIGN KEY (`acctid`) REFERENCES `account` (`objid`),
  CONSTRAINT `FK_revenueitem_account_revenueitem` FOREIGN KEY (`objid`) REFERENCES `revenueitem` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `revenueitem_sreaccount` */

CREATE TABLE `revenueitem_sreaccount` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `acctid` VARCHAR(50) NOT NULL DEFAULT '',
  KEY `FK_revenueitem_sreaccount_sreaccount` (`acctid`),
  CONSTRAINT `FK_revenueitem_sreaccount_sreaccount` FOREIGN KEY (`acctid`) REFERENCES `sreaccount` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `revenueitem_subaccount` */

CREATE TABLE `revenueitem_subaccount` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `acctid` VARCHAR(50) NOT NULL DEFAULT '',
  KEY `FK_revenueitem_subaccount_revenueitem` (`objid`),
  KEY `FK_revenueitem_subaccount_account` (`acctid`),
  CONSTRAINT `FK_revenueitem_subaccount_account` FOREIGN KEY (`acctid`) REFERENCES `account` (`objid`),
  CONSTRAINT `FK_revenueitem_subaccount_revenueitem` FOREIGN KEY (`objid`) REFERENCES `revenueitem` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `ris` */

CREATE TABLE `ris` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `risno` VARCHAR(50) DEFAULT NULL,
  `state` VARCHAR(10) DEFAULT NULL,
  `txntype` VARCHAR(25) DEFAULT NULL,
  `dtfiled` DATETIME DEFAULT NULL,
  `requester_objid` VARCHAR(50) DEFAULT NULL,
  `requester_name` VARCHAR(100) DEFAULT NULL,
  `requester_title` VARCHAR(50) DEFAULT NULL,
  `dtapproved` DATETIME DEFAULT NULL,
  `approver_objid` VARCHAR(50) DEFAULT NULL,
  `approver_name` VARCHAR(100) DEFAULT NULL,
  `approver_title` VARCHAR(50) DEFAULT NULL,
  `dtissued` DATETIME DEFAULT NULL,
  `issuer_objid` VARCHAR(50) DEFAULT NULL,
  `issuer_name` VARCHAR(100) DEFAULT NULL,
  `issuer_title` VARCHAR(50) DEFAULT NULL,
  `org_objid` VARCHAR(50) DEFAULT NULL,
  `org_name` VARCHAR(100) DEFAULT NULL,
  `refid` VARCHAR(50) DEFAULT NULL,
  `refno` VARCHAR(50) DEFAULT NULL,
  `reftype` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `uix_risno` (`risno`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `risitem` */

CREATE TABLE `risitem` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `parentid` VARCHAR(50) DEFAULT NULL,
  `item_objid` VARCHAR(50) DEFAULT NULL,
  `item_code` VARCHAR(50) DEFAULT NULL,
  `item_description` VARCHAR(100) DEFAULT NULL,
  `unit` VARCHAR(10) DEFAULT NULL,
  `qty` INT(11) DEFAULT '0',
  `qtyissued` INT(11) DEFAULT '0',
  `qtyreceived` INT(11) DEFAULT NULL,
  `remarks` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_risitem` (`parentid`),
  CONSTRAINT `FK_risitem` FOREIGN KEY (`parentid`) REFERENCES `ris` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `rptcertification` */

CREATE TABLE `rptcertification` (
  `objid` VARCHAR(50) NOT NULL,
  `txnno` VARCHAR(25) NOT NULL,
  `txndate` DATETIME NOT NULL,
  `opener` VARCHAR(50) NOT NULL,
  `faasid` VARCHAR(50) DEFAULT NULL,
  `taxpayerid` VARCHAR(50) DEFAULT NULL,
  `taxpayername` VARCHAR(2000) DEFAULT NULL,
  `taxpayeraddress` VARCHAR(150) DEFAULT NULL,
  `requestedby` VARCHAR(150) NOT NULL,
  `requestedbyaddress` VARCHAR(100) NOT NULL DEFAULT '',
  `purpose` VARCHAR(100) NOT NULL,
  `certifiedby` VARCHAR(150) NOT NULL,
  `certifiedbytitle` VARCHAR(50) NOT NULL,
  `byauthority` VARCHAR(150) DEFAULT NULL,
  `byauthoritytitle` VARCHAR(50) DEFAULT NULL,
  `official` INT(11) NOT NULL,
  `orno` VARCHAR(25) DEFAULT NULL,
  `ordate` DATE DEFAULT NULL,
  `oramount` DECIMAL(16,2) NOT NULL,
  `stampamount` DECIMAL(16,2) NOT NULL,
  `createdbyid` VARCHAR(50) DEFAULT NULL,
  `createdby` VARCHAR(150) NOT NULL,
  `createdbytitle` VARCHAR(50) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_rptcertification_txnno` (`txnno`),
  KEY `ix_rptcertification_taxpayerid` (`taxpayerid`),
  KEY `ix_rptcertification_taxpayername` (`taxpayername`(255)),
  KEY `ix_rptcertification_requestedby` (`requestedby`),
  KEY `FK_rptcertification_faas` (`faasid`),
  CONSTRAINT `FK_rptcertification_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `rptcertificationitem` */

CREATE TABLE `rptcertificationitem` (
  `objid` INT(50) NOT NULL AUTO_INCREMENT,
  `rptcertificationid` VARCHAR(50) NOT NULL,
  `refid` VARCHAR(50) NOT NULL DEFAULT '',
  PRIMARY KEY  (`objid`),
  KEY `FK_rptcertificationitem_rptcertification` (`rptcertificationid`),
  KEY `ix_rptcertificationitem_refid` (`refid`),
  CONSTRAINT `FK_rptcertificationitem_rptcertification` FOREIGN KEY (`rptcertificationid`) REFERENCES `rptcertification` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `rptexpiry` */

CREATE TABLE `rptexpiry` (
  `iyear` INT(11) NOT NULL,
  `iqtr` INT(11) NOT NULL,
  `expirytype` VARCHAR(50) NOT NULL DEFAULT '',
  `expirydate` DATETIME DEFAULT NULL,
  PRIMARY KEY  (`iqtr`,`iyear`,`expirytype`),
  KEY `ix_rptexpiry_yrqtr` (`iyear`,`iqtr`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `rptledger` */

CREATE TABLE `rptledger` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(25) NOT NULL,
  `faasid` VARCHAR(50) NOT NULL,
  `nextbilldate` DATE DEFAULT NULL,
  `lastyearpaid` INT(11) NOT NULL,
  `lastqtrpaid` INT(11) NOT NULL,
  `firstqtrpaidontime` INT(11) NOT NULL,
  `qtrlypaymentavailed` INT(11) NOT NULL,
  `qtrlypaymentpaidontime` INT(11) NOT NULL,
  `lastitemyear` INT(11) NOT NULL,
  `lastreceiptid` VARCHAR(50) DEFAULT NULL,
  `barangayid` VARCHAR(50) NOT NULL,
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
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `rptledgerfaas` */

CREATE TABLE `rptledgerfaas` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(25) NOT NULL,
  `rptledgerid` VARCHAR(50) NOT NULL,
  `faasid` VARCHAR(50) DEFAULT NULL,
  `tdno` VARCHAR(25) NOT NULL,
  `txntype_objid` VARCHAR(5) NOT NULL,
  `classification_objid` VARCHAR(50) NOT NULL,
  `actualuse_objid` VARCHAR(50) DEFAULT '',
  `taxable` INT(11) NOT NULL,
  `backtax` INT(11) NOT NULL,
  `fromyear` INT(11) NOT NULL,
  `fromqtr` INT(11) NOT NULL,
  `toyear` INT(11) NOT NULL,
  `toqtr` INT(11) NOT NULL,
  `assessedvalue` DECIMAL(16,2) NOT NULL,
  `systemcreated` INT(11) NOT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_rptledgerhistory_rptledger` (`rptledgerid`),
  KEY `ix_rptledgerhistory_ledgerid_toyear` (`rptledgerid`,`toyear`),
  KEY `FK_rptledgerfaas_faas` (`faasid`),
  CONSTRAINT `FK_rptledgerfaas_faas` FOREIGN KEY (`faasid`) REFERENCES `faas` (`objid`),
  CONSTRAINT `FK_rptledgerfaas_rptledger` FOREIGN KEY (`rptledgerid`) REFERENCES `rptledger` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `rptledgeritem` */

CREATE TABLE `rptledgeritem` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(25) NOT NULL,
  `rptledgerid` VARCHAR(50) NOT NULL,
  `rptledgerfaasid` VARCHAR(50) NOT NULL DEFAULT '',
  `year` INT(11) NOT NULL,
  `qtr` INT(11) NOT NULL,
  `assessedvalue` DECIMAL(16,2) NOT NULL,
  `qtrlyav` DECIMAL(16,2) NOT NULL,
  `basic` DECIMAL(16,2) NOT NULL,
  `basicint` DECIMAL(16,2) NOT NULL,
  `basicdisc` DECIMAL(16,2) NOT NULL,
  `basiccredit` DECIMAL(16,2) NOT NULL,
  `basicpaid` DECIMAL(16,2) NOT NULL,
  `basicintpartial` DECIMAL(16,2) NOT NULL,
  `sef` DECIMAL(16,2) NOT NULL,
  `sefint` DECIMAL(16,2) NOT NULL,
  `sefdisc` DECIMAL(16,2) NOT NULL,
  `sefcredit` DECIMAL(16,2) NOT NULL,
  `sefpaid` DECIMAL(16,2) NOT NULL,
  `sefintpartial` DECIMAL(16,2) NOT NULL,
  `basicacctid` VARCHAR(50) DEFAULT '',
  `basicintacctid` VARCHAR(50) DEFAULT '',
  `sefacctid` VARCHAR(50) DEFAULT '',
  `sefintacctid` VARCHAR(50) DEFAULT '',
  `revtype` VARCHAR(15) DEFAULT '',
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_rptledger_faas_yrqtr` (`rptledgerid`,`rptledgerfaasid`,`year`,`qtr`),
  KEY `ix_rptledgeritem_ledgerstate` (`rptledgerid`,`state`),
  KEY `FK_rptledgeritem_rptledger` (`rptledgerid`),
  KEY `FK_rptledgeritem_rptledgerfaas` (`rptledgerfaasid`),
  CONSTRAINT `FK_rptledgeritem_rptledger` FOREIGN KEY (`rptledgerid`) REFERENCES `rptledger` (`objid`),
  CONSTRAINT `FK_rptledgeritem_rptledgerfaas` FOREIGN KEY (`rptledgerfaasid`) REFERENCES `rptledgerfaas` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `rptparameter` */

CREATE TABLE `rptparameter` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'DRAFT, APPROVED',
  `name` VARCHAR(100) NOT NULL DEFAULT '',
  `caption` VARCHAR(100) NOT NULL DEFAULT '',
  `description` VARCHAR(1000) DEFAULT NULL,
  `paramtype` VARCHAR(20) NOT NULL DEFAULT '' COMMENT 'decimal, integer, range_decimal, range_integer',
  `minvalue` DECIMAL(10,2) NOT NULL,
  `maxvalue` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_rptparameter_name` (`name`),
  KEY `ix_rptparameter_state` (`state`),
  KEY `ix_rptparameter_caption` (`caption`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `rpttaxclearance` */

CREATE TABLE `rpttaxclearance` (
  `objid` VARCHAR(50) NOT NULL,
  `year` INT(11) NOT NULL,
  `qtr` INT(11) NOT NULL,
  PRIMARY KEY  (`objid`),
  CONSTRAINT `FK_rpttaxclearance_rptcertification` FOREIGN KEY (`objid`) REFERENCES `rptcertification` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `rpu` */

CREATE TABLE `rpu` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(25) NOT NULL DEFAULT '',
  `realpropertyid` VARCHAR(50) DEFAULT '',
  `rputype` VARCHAR(10) NOT NULL,
  `ry` INT(11) NOT NULL,
  `fullpin` VARCHAR(25) NOT NULL,
  `suffix` INT(11) NOT NULL,
  `subsuffix` INT(11) DEFAULT NULL,
  `classification_objid` VARCHAR(50) DEFAULT '',
  `exemptiontype_objid` VARCHAR(50) DEFAULT '',
  `taxable` INT(11) NOT NULL,
  `totalareaha` DECIMAL(18,6) NOT NULL,
  `totalareasqm` DECIMAL(18,6) NOT NULL,
  `totalbmv` DECIMAL(16,2) NOT NULL,
  `totalmv` DECIMAL(16,2) NOT NULL,
  `totalav` DECIMAL(16,2) NOT NULL,
  `hasswornamount` INT(11) NOT NULL,
  `swornamount` DECIMAL(16,2) NOT NULL,
  `useswornamount` INT(11) NOT NULL,
  `previd` VARCHAR(50) DEFAULT NULL,
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
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `rule` */

CREATE TABLE `rule` (
  `objid` VARCHAR(50) NOT NULL,
  `docstate` VARCHAR(25) NOT NULL,
  `rulename` VARCHAR(50) NOT NULL,
  `description` VARCHAR(100) NOT NULL,
  `packagename` VARCHAR(100) NOT NULL,
  `author` VARCHAR(50) NOT NULL,
  `salience` INT(11) NOT NULL,
  `agendagroup` VARCHAR(25) NOT NULL,
  `ruleset` VARCHAR(50) DEFAULT NULL,
  `effectivefrom` DATE DEFAULT NULL,
  `effectiveto` DATE DEFAULT NULL,
  `conditions` TEXT,
  `actions` TEXT,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `rule_package` */

CREATE TABLE `rule_package` (
  `ruleset` VARCHAR(50) NOT NULL,
  `rulegroup` VARCHAR(50) NOT NULL,
  `packagename` VARCHAR(255) NOT NULL,
  `orderindex` INT(11) DEFAULT NULL,
  `type` VARCHAR(10) DEFAULT NULL,
  `content` TEXT,
  `lastmodified` DATETIME DEFAULT NULL,
  PRIMARY KEY  (`ruleset`,`rulegroup`,`packagename`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `rule_sets` */

CREATE TABLE `rule_sets` (
  `name` VARCHAR(50) NOT NULL DEFAULT '',
  `rulegroup` VARCHAR(50) NOT NULL DEFAULT '',
  PRIMARY KEY  (`name`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `rulegroup` */

CREATE TABLE `rulegroup` (
  `objid` VARCHAR(50) NOT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `sortorder` INT(11) NOT NULL,
  `ruleset` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `rysetting_lgu` */

CREATE TABLE `rysetting_lgu` (
  `rysettingid` VARCHAR(50) NOT NULL DEFAULT '',
  `lguid` VARCHAR(50) NOT NULL,
  `lguname` VARCHAR(100) NOT NULL,
  `settingtype` VARCHAR(15) NOT NULL,
  PRIMARY KEY  (`rysettingid`,`lguid`),
  KEY `FK_rysetting_lgu_lgu` (`lguid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `signatory` */

CREATE TABLE `signatory` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(10) NOT NULL,
  `doctype` VARCHAR(50) NOT NULL,
  `indexno` INT(11) NOT NULL,
  `lastname` VARCHAR(50) NOT NULL,
  `firstname` VARCHAR(50) NOT NULL,
  `middlename` VARCHAR(50) DEFAULT NULL,
  `name` VARCHAR(150) DEFAULT NULL,
  `title` VARCHAR(50) NOT NULL DEFAULT '',
  `department` VARCHAR(50) DEFAULT NULL,
  `personnelid` VARCHAR(50) DEFAULT '',
  PRIMARY KEY  (`objid`),
  KEY `ix_signatory_doctype` (`doctype`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `specialaccountsetting` */

CREATE TABLE `specialaccountsetting` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `item_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `amount` DECIMAL(16,2) NOT NULL,
  PRIMARY KEY  (`objid`),
  CONSTRAINT `FK_specialaccountsetting_collectiontype` FOREIGN KEY (`objid`) REFERENCES `collectiontype` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `sreaccount` */

CREATE TABLE `sreaccount` (
  `objid` VARCHAR(50) NOT NULL,
  `parentid` VARCHAR(50) DEFAULT NULL,
  `state` VARCHAR(10) DEFAULT NULL,
  `chartid` VARCHAR(50) DEFAULT NULL,
  `code` VARCHAR(50) DEFAULT NULL,
  `title` VARCHAR(255) DEFAULT NULL,
  `type` VARCHAR(20) DEFAULT NULL,
  `acctgroup` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `NewIndex1` (`code`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `structure` */

CREATE TABLE `structure` (
  `objid` VARCHAR(50) NOT NULL DEFAULT '',
  `state` VARCHAR(10) NOT NULL DEFAULT '' COMMENT 'DRAFT, APPROVED',
  `code` VARCHAR(20) NOT NULL DEFAULT '',
  `name` VARCHAR(100) NOT NULL DEFAULT '',
  `indexno` INT(11) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_structure_code` (`code`),
  UNIQUE KEY `ux_structure_name` (`name`),
  KEY `ix_structure_state` (`state`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

/*Table structure for table `structurematerial` */

CREATE TABLE `structurematerial` (
  `structure_objid` VARCHAR(50) NOT NULL DEFAULT '',
  `material_objid` VARCHAR(50) NOT NULL DEFAULT '',
  PRIMARY KEY  (`structure_objid`,`material_objid`),
  KEY `FK_structurematerial_material` (`material_objid`),
  CONSTRAINT `FK_structurematerial_material` FOREIGN KEY (`material_objid`) REFERENCES `material` (`objid`),
  CONSTRAINT `FK_structurematerial_strucutre` FOREIGN KEY (`structure_objid`) REFERENCES `structure` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `subdividedland` */

CREATE TABLE `subdividedland` (
  `objid` VARCHAR(50) NOT NULL,
  `subdivisionid` VARCHAR(50) NOT NULL,
  `itemno` VARCHAR(5) NOT NULL,
  `newtdno` VARCHAR(25) DEFAULT '',
  `newutdno` VARCHAR(25) NOT NULL,
  `newpin` VARCHAR(25) NOT NULL,
  `newtitletype` VARCHAR(25) DEFAULT NULL,
  `newtitleno` VARCHAR(25) DEFAULT NULL,
  `newtitledate` DATE DEFAULT NULL,
  `areasqm` DECIMAL(16,2) NOT NULL,
  `areaha` DECIMAL(16,6) NOT NULL,
  `memoranda` VARCHAR(2000) NOT NULL,
  `administrator_objid` VARCHAR(50) DEFAULT NULL,
  `administrator_name` VARCHAR(150) DEFAULT NULL,
  `administrator_address` VARCHAR(100) DEFAULT NULL,
  `taxpayer_objid` VARCHAR(50) DEFAULT '',
  `taxpayer_name` VARCHAR(150) DEFAULT '',
  `taxpayer_address` VARCHAR(100) DEFAULT '',
  `owner_name` VARCHAR(1000) DEFAULT '',
  `owner_address` VARCHAR(100) DEFAULT '',
  `newrpid` VARCHAR(50) NOT NULL DEFAULT '',
  `newrpuid` VARCHAR(50) NOT NULL,
  `newfaasid` VARCHAR(50) DEFAULT '',
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
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `subdivision` */

CREATE TABLE `subdivision` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(20) NOT NULL,
  `ry` INT(11) NOT NULL,
  `txntype_objid` VARCHAR(5) NOT NULL DEFAULT '',
  `txnno` VARCHAR(10) NOT NULL,
  `txndate` DATE NOT NULL,
  `autonumber` INT(11) NOT NULL,
  `effectivityyear` INT(11) NOT NULL,
  `effectivityqtr` INT(11) NOT NULL,
  `memoranda` VARCHAR(2000) NOT NULL,
  `motherfaasid` VARCHAR(50) NOT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `ux_subdivision_txnno` (`txnno`),
  KEY `FK_subdivision_faas` (`motherfaasid`),
  CONSTRAINT `FK_subdivision_faas` FOREIGN KEY (`motherfaasid`) REFERENCES `faas` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `subdivisionaffectedrpu` */

CREATE TABLE `subdivisionaffectedrpu` (
  `objid` VARCHAR(50) NOT NULL,
  `subdivisionid` VARCHAR(50) NOT NULL,
  `itemno` VARCHAR(5) DEFAULT '',
  `subdividedlandid` VARCHAR(50) DEFAULT '',
  `prevfaasid` VARCHAR(50) NOT NULL,
  `newfaasid` VARCHAR(50) DEFAULT '',
  `newtdno` VARCHAR(25) DEFAULT '',
  `newutdno` VARCHAR(25) NOT NULL,
  `newsuffix` INT(11) NOT NULL,
  `newpin` VARCHAR(25) DEFAULT '',
  `newrpuid` VARCHAR(50) DEFAULT '',
  `newrpid` VARCHAR(50) DEFAULT NULL,
  `memoranda` VARCHAR(2000) NOT NULL,
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
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_dataset` */

CREATE TABLE `sys_dataset` (
  `objid` VARCHAR(50) NOT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `title` VARCHAR(255) DEFAULT NULL,
  `input` MEDIUMTEXT,
  `output` MEDIUMTEXT,
  `statement` VARCHAR(50) DEFAULT NULL,
  `datasource` VARCHAR(50) DEFAULT NULL,
  `servicename` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_org` */

CREATE TABLE `sys_org` (
  `objid` VARCHAR(50) NOT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `orgclass` VARCHAR(50) DEFAULT NULL,
  `parentid` VARCHAR(50) DEFAULT NULL,
  `parentclass` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `idx_org_name` (`name`,`parentid`),
  KEY `FK_sys_org_orgclass` (`orgclass`),
  KEY `FK_sys_org` (`parentclass`),
  CONSTRAINT `FK_sys_org` FOREIGN KEY (`parentclass`) REFERENCES `sys_orgclass` (`name`),
  CONSTRAINT `FK_sys_org_orgclass` FOREIGN KEY (`orgclass`) REFERENCES `sys_orgclass` (`name`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_orgclass` */

CREATE TABLE `sys_orgclass` (
  `name` VARCHAR(50) NOT NULL,
  `title` VARCHAR(255) DEFAULT NULL,
  `childnodes` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_report` */

CREATE TABLE `sys_report` (
  `objid` VARCHAR(50) DEFAULT NULL,
  `reportfolderid` VARCHAR(50) DEFAULT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `title` VARCHAR(255) DEFAULT NULL,
  `filetype` VARCHAR(25) DEFAULT NULL,
  `dtcreated` DATETIME DEFAULT NULL,
  `createdby` VARCHAR(50) DEFAULT NULL,
  `datasetid` VARCHAR(50) DEFAULT NULL,
  KEY `FK_sys_report_entry_folder` (`reportfolderid`),
  KEY `FK_sys_report_dataset` (`datasetid`),
  CONSTRAINT `FK_sys_report_dataset` FOREIGN KEY (`datasetid`) REFERENCES `sys_dataset` (`objid`),
  CONSTRAINT `FK_sys_report_entry_folder` FOREIGN KEY (`reportfolderid`) REFERENCES `sys_report_folder` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_report_admin` */

CREATE TABLE `sys_report_admin` (
  `objid` VARCHAR(50) NOT NULL,
  `userid` VARCHAR(50) DEFAULT NULL,
  `reportfolderid` VARCHAR(50) DEFAULT NULL,
  `exclude` MEDIUMTEXT,
  PRIMARY KEY  (`objid`),
  KEY `FK_sys_report_admin_folder` (`reportfolderid`),
  KEY `FK_sys_report_admin_user` (`userid`),
  CONSTRAINT `FK_sys_report_admin_folder` FOREIGN KEY (`reportfolderid`) REFERENCES `sys_report_folder` (`objid`),
  CONSTRAINT `FK_sys_report_admin_user` FOREIGN KEY (`userid`) REFERENCES `sys_user` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_report_folder` */

CREATE TABLE `sys_report_folder` (
  `objid` VARCHAR(50) NOT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `title` VARCHAR(255) DEFAULT NULL,
  `parentid` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `idx_foldername` (`name`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_report_member` */

CREATE TABLE `sys_report_member` (
  `objid` VARCHAR(50) DEFAULT NULL,
  `reportfolderid` VARCHAR(50) DEFAULT NULL,
  `userid` VARCHAR(50) DEFAULT NULL,
  `usergroupid` VARCHAR(50) DEFAULT NULL,
  `exclude` MEDIUMTEXT,
  KEY `FK_sys_report_member_folder` (`reportfolderid`),
  KEY `FK_sys_report_member_user` (`userid`),
  KEY `FK_sys_report_member_usergroup` (`usergroupid`),
  CONSTRAINT `FK_sys_report_member_folder` FOREIGN KEY (`reportfolderid`) REFERENCES `sys_report_folder` (`objid`),
  CONSTRAINT `FK_sys_report_member_user` FOREIGN KEY (`userid`) REFERENCES `sys_user` (`objid`),
  CONSTRAINT `FK_sys_report_member_usergroup` FOREIGN KEY (`usergroupid`) REFERENCES `sys_usergroup` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_script` */

CREATE TABLE `sys_script` (
  `name` VARCHAR(50) NOT NULL,
  `title` VARBINARY(255) DEFAULT NULL,
  `content` MEDIUMTEXT,
  `category` VARCHAR(20) DEFAULT NULL,
  `dtcreated` DATETIME DEFAULT NULL,
  `createdby` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_securitygroup` */

CREATE TABLE `sys_securitygroup` (
  `objid` VARCHAR(50) NOT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `usergroupid` VARCHAR(50) DEFAULT NULL,
  `exclude` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `idx_securitygroup_name` (`name`),
  KEY `FK_sys_securitygroup_usergroup` (`usergroupid`),
  CONSTRAINT `FK_sys_securitygroup_usergroup` FOREIGN KEY (`usergroupid`) REFERENCES `sys_usergroup` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_sequence` */

CREATE TABLE `sys_sequence` (
  `objid` VARCHAR(100) NOT NULL,
  `nextSeries` INT(11) NOT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_session` */

CREATE TABLE `sys_session` (
  `sessionid` VARCHAR(50) NOT NULL,
  `userid` VARCHAR(50) DEFAULT NULL,
  `username` VARCHAR(50) DEFAULT NULL,
  `clienttype` VARCHAR(12) DEFAULT NULL,
  `accesstime` DATETIME DEFAULT NULL,
  `accessexpiry` DATETIME DEFAULT NULL,
  `timein` DATETIME DEFAULT NULL,
  PRIMARY KEY  (`sessionid`),
  KEY `ix_userid` (`userid`),
  KEY `ix_username` (`username`),
  KEY `ix_timein` (`timein`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

/*Table structure for table `sys_session_log` */

CREATE TABLE `sys_session_log` (
  `sessionid` VARCHAR(50) NOT NULL,
  `userid` VARCHAR(50) DEFAULT NULL,
  `username` VARCHAR(50) DEFAULT NULL,
  `clienttype` VARCHAR(12) DEFAULT NULL,
  `accesstime` DATETIME DEFAULT NULL,
  `accessexpiry` DATETIME DEFAULT NULL,
  `timein` DATETIME DEFAULT NULL,
  `timeout` DATETIME DEFAULT NULL,
  `state` VARCHAR(10) DEFAULT NULL,
  PRIMARY KEY  (`sessionid`),
  KEY `ix_userid` (`userid`),
  KEY `ix_username` (`username`),
  KEY `ix_timein` (`timein`),
  KEY `ix_timeout` (`timeout`)
) ENGINE=MYISAM DEFAULT CHARSET=utf8;

/*Table structure for table `sys_terminal` */

CREATE TABLE `sys_terminal` (
  `terminalid` VARCHAR(50) NOT NULL,
  `parentid` VARCHAR(50) DEFAULT NULL,
  `parentcode` VARCHAR(50) DEFAULT NULL,
  `parenttype` VARCHAR(50) DEFAULT NULL,
  `macaddress` VARCHAR(50) DEFAULT NULL,
  `dtregistered` DATETIME DEFAULT NULL,
  `registeredby` VARCHAR(50) DEFAULT NULL,
  `info` TEXT,
  `state` INT(11) DEFAULT NULL,
  PRIMARY KEY  (`terminalid`),
  UNIQUE KEY `macaddress_unique` (`macaddress`),
  KEY `FK_terminal` (`parentid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_user` */

CREATE TABLE `sys_user` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(15) DEFAULT NULL,
  `dtcreated` DATETIME DEFAULT NULL,
  `createdby` VARCHAR(50) DEFAULT NULL,
  `username` VARCHAR(50) DEFAULT NULL,
  `pwd` VARCHAR(50) DEFAULT NULL,
  `firstname` VARCHAR(50) DEFAULT NULL,
  `lastname` VARCHAR(50) DEFAULT NULL,
  `middlename` VARCHAR(50) DEFAULT NULL,
  `name` VARCHAR(50) DEFAULT NULL,
  `jobtitle` VARCHAR(50) DEFAULT NULL,
  `pwdlogincount` SMALLINT(6) DEFAULT NULL,
  `pwdexpirydate` DATETIME DEFAULT NULL,
  `usedpwds` TEXT,
  `lockid` VARCHAR(32) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `idx_username` (`username`),
  KEY `ix_lastname_firstname` (`lastname`,`firstname`),
  KEY `ix_name` (`name`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_usergroup` */

CREATE TABLE `sys_usergroup` (
  `objid` VARCHAR(50) NOT NULL,
  `title` VARCHAR(255) DEFAULT NULL,
  `domain` VARCHAR(25) DEFAULT NULL,
  `userclass` VARCHAR(25) DEFAULT NULL,
  `orgclass` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_usergroup_admin` */

CREATE TABLE `sys_usergroup_admin` (
  `objid` VARCHAR(50) NOT NULL,
  `usergroupid` VARCHAR(50) DEFAULT NULL,
  `user_objid` VARCHAR(50) DEFAULT NULL,
  `user_username` VARCHAR(50) DEFAULT NULL,
  `user_firstname` VARCHAR(50) NOT NULL,
  `user_lastname` VARCHAR(50) DEFAULT NULL,
  `exclude` VARCHAR(255) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  UNIQUE KEY `idx_usergroup_admin_user` (`usergroupid`,`user_objid`),
  KEY `FK_sys_usergroup_admin` (`user_objid`),
  CONSTRAINT `FK_sys_usergroup_admin` FOREIGN KEY (`user_objid`) REFERENCES `sys_user` (`objid`),
  CONSTRAINT `FK_sys_usergroup_admin_usergroup` FOREIGN KEY (`usergroupid`) REFERENCES `sys_usergroup` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_usergroup_member` */

CREATE TABLE `sys_usergroup_member` (
  `objid` VARCHAR(50) NOT NULL,
  `state` VARCHAR(10) DEFAULT NULL,
  `usergroupid` VARCHAR(50) DEFAULT NULL,
  `user_objid` VARCHAR(50) NOT NULL,
  `user_username` VARCHAR(50) DEFAULT NULL,
  `user_firstname` VARCHAR(50) NOT NULL,
  `user_lastname` VARCHAR(50) NOT NULL,
  `org_objid` VARCHAR(50) DEFAULT NULL,
  `org_name` VARCHAR(50) DEFAULT NULL,
  `org_orgclass` VARCHAR(50) DEFAULT NULL,
  `securitygroupid` VARCHAR(50) DEFAULT NULL,
  `exclude` VARCHAR(255) DEFAULT NULL,
  `displayname` VARCHAR(50) DEFAULT NULL,
  `jobtitle` VARCHAR(50) DEFAULT NULL,
  `usertxncode` VARCHAR(50) DEFAULT NULL,
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
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_usergroup_permission` */

CREATE TABLE `sys_usergroup_permission` (
  `objid` VARCHAR(50) NOT NULL,
  `usergroupid` VARCHAR(50) DEFAULT NULL,
  `object` VARCHAR(25) DEFAULT NULL,
  `permission` VARCHAR(25) DEFAULT NULL,
  PRIMARY KEY  (`objid`),
  KEY `FK_sys_usergroup_permission_usergroup` (`usergroupid`),
  CONSTRAINT `FK_sys_usergroup_permission_usergroup` FOREIGN KEY (`usergroupid`) REFERENCES `sys_usergroup` (`objid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `sys_var` */

CREATE TABLE `sys_var` (
  `name` VARCHAR(50) NOT NULL,
  `value` TEXT,
  `description` VARCHAR(255) DEFAULT NULL,
  `datatype` VARCHAR(15) DEFAULT NULL,
  `category` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (`name`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

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

/*Table structure for table `workflowstate` */

CREATE TABLE `workflowstate` (
  `objid` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  PRIMARY KEY  (`objid`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `xscipts` */

CREATE TABLE `xscipts` (
  `name` varchar(50) NOT NULL,
  `script` text,
  PRIMARY KEY  (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
