DROP DATABASE IF EXISTS yulinsh;
CREATE DATABASE yulinsh DEFAULT CHARACTER SET GBK;

USE yulinsh;
-- ----------------------------
-- Table structure for antable
-- ----------------------------
DROP TABLE IF EXISTS `antable`;
CREATE TABLE `antable` (
  `an1` varchar(600) default NULL,
  `anTime` varchar(100) default NULL,
  `an3` varchar(600) default NULL,
  `an2` varchar(600) default NULL,
  `anConent` text default NULL,
  `anTitle` varchar(100) default NULL,
  `anAuthor` varchar(255) default NULL,
  `anID` varchar(38) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=GBK;

-- ----------------------------
-- Table structure for hometowntable
-- ----------------------------
DROP TABLE IF EXISTS `hometowntable`;
CREATE TABLE `hometowntable` (
  `HOME3` varchar(600) default NULL,
  `HOME2` varchar(600) default NULL,
  `HOMETITLE` varchar(100) default NULL,
  `HOME1` varchar(600) default NULL,
  `HOMETIME` varchar(100) default NULL,
  `HOMECONTENT` text default NULL,
  `USEID` varchar(38) default NULL,
  `USERNAME` varchar(100) default NULL,
  `HOMEID` varchar(38) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=GBK;

-- ----------------------------
-- Table structure for huiytable
-- ----------------------------
DROP TABLE IF EXISTS `huiytable`;
CREATE TABLE `huiytable` (
  `HUIY2` varchar(600) default NULL,
  `HUIY3` varchar(600) default NULL,
  `HUIY1` varchar(600) default NULL,
  `HUIYTIME` varchar(100) default NULL,
  `HUIYCONTENT` text default NULL,
  `USERNAME` varchar(100) default NULL,
  `USERID` varchar(38) default NULL,
  `HUIYID` varchar(38) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=GBK;

-- ----------------------------
-- Table structure for laoxtable
-- ----------------------------
DROP TABLE IF EXISTS `laoxtable`;
CREATE TABLE `laoxtable` (
  `LAOX3` varchar(600) default NULL,
  `LAOX2` varchar(600) default NULL,
  `LAOX1` varchar(600) default NULL,
  `LAOXTIME` varchar(100) default NULL,
  `LAOXCONTENT` text default NULL,
  `USERNAME` varchar(100) default NULL,
  `USERID` varchar(38) default NULL,
  `LAOXID` varchar(38) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=GBK;

-- ----------------------------
-- Table structure for membertable
-- ----------------------------
DROP TABLE IF EXISTS `membertable`;
CREATE TABLE `membertable` (
  `MEMBER3` varchar(600) default NULL,
  `MEMBER2` varchar(600) default NULL,
  `MEMBER1` varchar(600) default NULL,
  `MEMBERTITLE` varchar(100) default NULL,
  `MEMBERTIME` varchar(100) default NULL,
  `MEMBERCONTENT` text default NULL,
  `USERNAME` varchar(100) default NULL,
  `USERID` varchar(38) default NULL,
  `MEMBERID` varchar(38) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=GBK;

-- ----------------------------
-- Table structure for newstable
-- ----------------------------
DROP TABLE IF EXISTS `newstable`;
CREATE TABLE `newstable` (
  `news3` varchar(600) default NULL,
  `news2` varchar(600) default NULL,
  `news1` varchar(600) default NULL,
  `NEWSCONTENT` text default NULL,
  `NEWSTIME` varchar(100) default NULL,
  `NEWSAUTHOR` varchar(100) default NULL,
  `NEWSTITLE` varchar(600) default NULL,
  `NEWSID` varchar(38) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=GBK;

-- ----------------------------
-- Table structure for officetable
-- ----------------------------
DROP TABLE IF EXISTS `officetable`;
CREATE TABLE `officetable` (
  `OFFICECONTENT` text default NULL,
  `OFFICE3` varchar(600) default NULL,
  `OFFICE2` varchar(600) default NULL,
  `OFFICE1` varchar(600) default NULL,
  `OFFICEAUTHOR` varchar(100) default NULL,
  `OFFICETIME` varchar(100) default NULL,
  `OFFICEEMIE` varchar(100) default NULL,
  `OFFICEQQ` varchar(100) default NULL,
  `OFFICEPHONE` varchar(100) default NULL,
  `OFFICEPNAME` varchar(100) default NULL,
  `OFFICEADRR` varchar(100) default NULL,
  `OFFICENAME` varchar(100) default NULL,
  `OFFICEID` varchar(38) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=GBK;

-- ----------------------------
-- Table structure for personaltable
-- ----------------------------
DROP TABLE IF EXISTS `personaltable`;
CREATE TABLE `personaltable` (
  `P3` varchar(600) default NULL,
  `P2` varchar(600) default NULL,
  `P1` varchar(600) default NULL,
  `PZCTIME` varchar(100) default NULL,
  `UNITPOST` varchar(100) default NULL,
  `PCONTENT` text default NULL,
  `PHOMETOWN` varchar(100) default NULL,
  `PRESIDENCE` varchar(100) default NULL,
  `PAUDITSTATE` varchar(100) default NULL,
  `PMSN` varchar(100) default NULL,
  `PQQ` varchar(100) default NULL,
  `PMAILBOX` varchar(100) default NULL,
  `PPHONE` varchar(100) default NULL,
  `PNAME` varchar(100) default NULL,
  `PBIRTHTIME` varchar(100) default NULL,
  `PSEX` varchar(100) default NULL,
  `PTOUX` varchar(200) default NULL,
  `PID` varchar(38) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=GBK;

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `phototime` varchar(100) default NULL,
  `id` varchar(38) NOT NULL default '',
  `url` varchar(1000) default NULL,
  `phototype` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=GBK;

-- ----------------------------
-- Table structure for policytable
-- ----------------------------
DROP TABLE IF EXISTS `policytable`;
CREATE TABLE `policytable` (
  `POLICY3` varchar(600) default NULL,
  `POLICY2` varchar(600) default NULL,
  `POLICY1` varchar(600) default NULL,
  `POLICYCONTENT` text default NULL,
  `POLICYTIME` varchar(600) default NULL,
  `POLICYAUTHOR` varchar(600) default NULL,
  `POLICYTITLE` varchar(600) default NULL,
  `POLICYID` varchar(38) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=GBK;

-- ----------------------------
-- Table structure for unittable
-- ----------------------------
DROP TABLE IF EXISTS `unittable`;
CREATE TABLE `unittable` (
  `UNIT3` varchar(600) default NULL,
  `UNIT2` varchar(600) default NULL,
  `UNIT1` varchar(600) default NULL,
  `UNITTIME` varchar(600) default NULL,
  `UNITPOST` varchar(600) default NULL,
  `UNITCONTENT` text default NULL,
  `UNITWEBSITE` varchar(300) default NULL,
  `UNITAUDITSTATE` varchar(200) default NULL,
  `UNITMSN` varchar(100) default NULL,
  `UNITQQ` varchar(100) default NULL,
  `UNITMAILBOX` varchar(600) default NULL,
  `UNITPHONE` varchar(600) default NULL,
  `UNITNAME` varchar(600) default NULL,
  `PSEX` varchar(100) default NULL,
  `PNAME` varchar(300) default NULL,
  `UNITID` varchar(38) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=GBK;

-- ----------------------------
-- Table structure for zuzhitable
-- ----------------------------
DROP TABLE IF EXISTS `zuzhitable`;
CREATE TABLE `zuzhitable` (
  `sjs` varchar(255) default NULL,
  `sshzw` varchar(100) default NULL,
  `ssex` varchar(10) default NULL,
  `sname` varchar(100) default NULL,
  `stoux` varchar(100) default NULL,
  `id` varchar(38) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=GBK;

DROP TABLE IF EXISTS `zuzhitable`;
CREATE  TABLE `shjs` (
  `idshjs` INT NOT NULL AUTO_INCREMENT ,   
  `fagaoren` VARCHAR(45) NULL ,   
  `neirong` text NULL ,   
  `updatetime` TIMESTAMP NULL ,
  `type` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idshjs`) 
) ENGINE=InnoDB DEFAULT CHARSET=GBK;