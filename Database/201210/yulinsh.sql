/*
MySQL Data Transfer
Source Host: localhost
Source Database: yulinsh
Target Host: localhost
Target Database: yulinsh
Date: 2012-6-3 21:09:22
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for antable
-- ----------------------------
DROP TABLE IF EXISTS `antable`;
CREATE TABLE `antable` (
  `an1` varchar(600) default NULL,
  `anTime` varchar(100) default NULL,
  `an3` varchar(600) default NULL,
  `an2` varchar(600) default NULL,
  `anConent` varchar(4000) default NULL,
  `anTitle` varchar(100) default NULL,
  `anAuthor` varchar(255) default NULL,
  `anID` varchar(38) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `HOMECONTENT` varchar(4000) default NULL,
  `USEID` varchar(38) default NULL,
  `USERNAME` varchar(100) default NULL,
  `HOMEID` varchar(38) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for huiytable
-- ----------------------------
DROP TABLE IF EXISTS `huiytable`;
CREATE TABLE `huiytable` (
  `HUIY2` varchar(600) default NULL,
  `HUIY3` varchar(600) default NULL,
  `HUIY1` varchar(600) default NULL,
  `HUIYTIME` varchar(100) default NULL,
  `HUIYCONTENT` varchar(4000) default NULL,
  `USERNAME` varchar(100) default NULL,
  `USERID` varchar(38) default NULL,
  `HUIYID` varchar(38) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for laoxtable
-- ----------------------------
DROP TABLE IF EXISTS `laoxtable`;
CREATE TABLE `laoxtable` (
  `LAOX3` varchar(600) default NULL,
  `LAOX2` varchar(600) default NULL,
  `LAOX1` varchar(600) default NULL,
  `LAOXTIME` varchar(100) default NULL,
  `LAOXCONTENT` varchar(3000) default NULL,
  `USERNAME` varchar(100) default NULL,
  `USERID` varchar(38) default NULL,
  `LAOXID` varchar(38) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

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
  `MEMBERCONTENT` varchar(4000) default NULL,
  `USERNAME` varchar(100) default NULL,
  `USERID` varchar(38) default NULL,
  `MEMBERID` varchar(38) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for newstable
-- ----------------------------
DROP TABLE IF EXISTS `newstable`;
CREATE TABLE `newstable` (
  `news3` varchar(600) default NULL,
  `news2` varchar(600) default NULL,
  `news1` varchar(600) default NULL,
  `NEWSCONTENT` varchar(4000) default NULL,
  `NEWSTIME` varchar(100) default NULL,
  `NEWSAUTHOR` varchar(100) default NULL,
  `NEWSTITLE` varchar(600) default NULL,
  `NEWSID` varchar(38) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for officetable
-- ----------------------------
DROP TABLE IF EXISTS `officetable`;
CREATE TABLE `officetable` (
  `OFFICECONTENT` varchar(3600) default NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

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
  `PCONTENT` varchar(4000) default NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for photo
-- ----------------------------
DROP TABLE IF EXISTS `photo`;
CREATE TABLE `photo` (
  `phototime` varchar(100) default NULL,
  `id` varchar(38) NOT NULL default '',
  `url` varchar(1000) default NULL,
  `phototype` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Table structure for policytable
-- ----------------------------
DROP TABLE IF EXISTS `policytable`;
CREATE TABLE `policytable` (
  `POLICY3` varchar(600) default NULL,
  `POLICY2` varchar(600) default NULL,
  `POLICY1` varchar(600) default NULL,
  `POLICYCONTENT` varchar(4000) default NULL,
  `POLICYTIME` varchar(600) default NULL,
  `POLICYAUTHOR` varchar(600) default NULL,
  `POLICYTITLE` varchar(600) default NULL,
  `POLICYID` varchar(38) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

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
  `UNITCONTENT` varchar(3500) default NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

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
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `antable` VALUES (null, '2012/05/27', null, null, '2', '2', '2', '{20120527-1508-2512-0007-82C5E3AC12BA}');
INSERT INTO `hometowntable` VALUES (null, null, '3', null, '2012/02/18', '5', '1', '4', '{20120218-1635-3864-0008-D0E804ACDD32}');
INSERT INTO `hometowntable` VALUES (null, null, '3', null, '2012/05/27', '4', '1', '4', '{20120527-1509-0993-0010-BDA2E050C0C6}');
INSERT INTO `laoxtable` VALUES (null, null, null, '2012/03/04 17:18:55', '232					 ', '??', '1', '{20120304-1718-5570-0014-552EEC8E0DB1}');
INSERT INTO `laoxtable` VALUES (null, null, null, '2012/03/04 18:07:29', '34', '???', '1', '{20120304-1807-2989-0002-E1B6A35AB5CC}');
INSERT INTO `laoxtable` VALUES (null, null, null, '2012/03/04 18:07:29', '', '锟斤拷', '1', '{20120304-1807-2989-0002-E1B6A35AB5CC}');
INSERT INTO `laoxtable` VALUES (null, null, null, '2012/03/04 18:45:21', '??????', '??', '1', '{20120304-1845-2237-0002-57D4E22BD0AA}');
INSERT INTO `laoxtable` VALUES (null, null, null, '2012/03/04 18:58:25', '34?', '??', '1', '{20120304-1858-2628-0002-42CC23750EAE}');
INSERT INTO `laoxtable` VALUES (null, null, null, '2012/03/04 18:58:59', '34?', '??', '1', '{20120304-1858-5957-0003-721CDE56AA48}');
INSERT INTO `laoxtable` VALUES (null, null, null, '2012/03/04 19:07:31', '??', '??', '1', '{20120304-1907-3156-0002-48DAD601667A}');
INSERT INTO `laoxtable` VALUES (null, null, null, '2012/03/04 19:07:57', '??', '??', '1', '{20120304-1907-5764-0003-C6C26B31DE5E}');
INSERT INTO `membertable` VALUES (null, null, null, '3', '2012/02/18 ', '5', '??', '1', '{20120218-1533-4487-0003-3D33C4C2D12D}');
INSERT INTO `membertable` VALUES (null, null, null, '345', '2012/05/26 ', '46???????????', '??', '1', '{20120526-2041-1243-0003-DAA4BEB7B2E4}');
INSERT INTO `newstable` VALUES (null, null, null, '2', '2012/05/27', '2', '1', '{20120527-1508-5707-0008-42EB777A2BB2}');
INSERT INTO `personaltable` VALUES (null, null, null, '2012/05/27 17:19:38', null, '888888876867867868686', '8', '7', '', '6', '5', '4', '3', '1', '2', '??', '', '{20120527-1719-3898-0002-84CDEBCC732A}');
INSERT INTO `personaltable` VALUES (null, null, null, '2012/05/27 17:23:37', null, '657675675', '0', '9', '', '8', '6', '7', '5', '23', '34', '??', '201205270523374.jpg', '{20120527-1723-3787-0002-5BABC3060B56}');
INSERT INTO `personaltable` VALUES (null, null, null, '2012/06/02 16:15:11', null, '6', '6', '6', '', '6', '5', '4', '2', '2', '1', '??', '2012060204151075.jpg', '{20120602-1615-1134-0002-52B58CDD74EB}');
INSERT INTO `personaltable` VALUES (null, null, null, '2012/06/02 16:54:34', null, '9-78', '90-', '90-', '', '90-', '90-', '980', '789', '345', '678', '??', '2012060204543485.jpg', '{20120602-1654-3443-0002-2D02E2DE0463}');
INSERT INTO `photo` VALUES ('2012/06/02', '{20120602-1203-0582-0009-52714D3BA3BC}', '2012060212030536.jpg', '1');
INSERT INTO `photo` VALUES ('2012/06/02', '{20120602-1207-4454-0010-0D81BEEDB5A0}', '2012060212074452.jpg', '1');
INSERT INTO `photo` VALUES ('2012/06/02', '{20120602-1208-0046-0011-DEBEAEEDB2D5}', '2012060212080049.jpg', '1');
INSERT INTO `photo` VALUES ('2012/06/02', '{20120602-1208-2784-0012-C0AC8E6E0280}', '2012060212082797.jpg', '1');
INSERT INTO `photo` VALUES ('2012/06/02', '{20120602-1235-4528-0002-E6EBE1D54D64}', '201206021235452.jpg', '1');
INSERT INTO `photo` VALUES ('2012/06/02', '{20120602-1322-1482-0002-120BA47A3C16}', '2012060201221466.jpg', '1');
INSERT INTO `photo` VALUES ('2012/06/02', '{20120602-1322-1939-0003-ABD5BC352C12}', '2012060201221930.jpg', '1');
INSERT INTO `photo` VALUES ('2012/06/02', '{20120602-1322-2364-0004-EEC2E18655EB}', '2012060201222361.jpg', '1');
INSERT INTO `photo` VALUES ('2012/06/02', '{20120602-1333-4595-0002-BCC3D55747BA}', '2012060201334578.jpg', '1');
INSERT INTO `photo` VALUES ('2012/06/02', '{20120602-1333-5087-0003-1E25DBDB4AA6}', '2012060201335057.jpg', '1');
INSERT INTO `photo` VALUES ('2012/06/01', '{20120602-1333-5465-0004-73EDB5DD4DAE}', '2012060201335417.jpg', '1');
INSERT INTO `policytable` VALUES (null, null, null, '3', '2012/05/27 ', '2', '1', '{20120527-1509-0479-0009-A58D382AB701}');
INSERT INTO `unittable` VALUES (null, null, null, '2012/05/27 17:35:39', '', 'sdf????????', 'Http??/www.wewe.cm', '1', '5', '54', '345', '324', '343', '??', '?????????', '{20120527-1735-3934-0003-DDABDDCD401A}');
INSERT INTO `unittable` VALUES (null, null, null, '2012/05/27 18:04:46', '', '9', '8', '1', '7', '6', '5', '4', '3', '??', '2', '{20120527-1804-4656-0002-E0E34DA7BB3E}');
INSERT INTO `unittable` VALUES (null, null, null, '2012/06/02 16:18:48', '567', '676', '67', '1', '67', '67', '67', '67', '34', '??', '45', '{20120602-1618-4875-0003-AC6B5C28C8A7}');
INSERT INTO `zuzhitable` VALUES ('3333333333', '1', '', '7', '2012060210394011.jpg', '{20120602-2239-4067-0008-2877AB82EE6B}');
INSERT INTO `zuzhitable` VALUES ('56', '4', '', '6', '2012060210445161.jpg', '{20120602-2244-5160-0002-D370EDD65EB5}');
INSERT INTO `zuzhitable` VALUES ('56666666666', '5', '', '5', '2012060210502774.jpg', '{20120602-2250-2775-0002-EBD7EAB18ABD}');
INSERT INTO `zuzhitable` VALUES ('6666', '4', '??', '4', '2012060210522181.jpg', '{20120602-2252-2204-0003-CD3EDA2C6C5C}');
INSERT INTO `zuzhitable` VALUES ('43546456', '3', '??', '3', '2012060311072734.jpg', '{20120603-1107-2807-0002-856AA2DCC638}');
