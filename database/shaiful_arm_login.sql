/*
Navicat MySQL Data Transfer

Source Server         : local
Source Server Version : 50624
Source Host           : localhost:3306
Source Database       : shaiful_arm_login

Target Server Type    : MYSQL
Target Server Version : 50624
File Encoding         : 65001

Date: 2016-02-18 22:21:52
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `history`
-- ----------------------------
DROP TABLE IF EXISTS `history`;
CREATE TABLE `history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `controller` varchar(255) DEFAULT NULL,
  `table_id` int(11) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `data` varchar(255) NOT NULL,
  `user_id` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of history
-- ----------------------------
INSERT INTO `history` VALUES ('1', 'setup_users_other_sites', '3', 'setup_users_other_sites', '{\"user_id\":\"2\",\"site_id\":\"1\",\"user_created\":\"1\",\"date_created\":1455770566,\"revision\":1}', '1', 'INSERT', '1455770566');
INSERT INTO `history` VALUES ('2', 'setup_users_other_sites', '4', 'setup_users_other_sites', '{\"user_id\":\"2\",\"site_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455770566,\"revision\":1}', '1', 'INSERT', '1455770566');
INSERT INTO `history` VALUES ('3', 'setup_users_other_sites', '5', 'setup_users_other_sites', '{\"user_id\":\"1\",\"site_id\":\"1\",\"user_created\":\"1\",\"date_created\":1455770575,\"revision\":1}', '1', 'INSERT', '1455770575');
INSERT INTO `history` VALUES ('4', 'setup_users_other_sites', '6', 'setup_users_other_sites', '{\"user_id\":\"1\",\"site_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455770575,\"revision\":1}', '1', 'INSERT', '1455770575');
INSERT INTO `history` VALUES ('5', 'setup_users_other_sites', '7', 'setup_users_other_sites', '{\"user_id\":\"5\",\"site_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455770637,\"revision\":1}', '1', 'INSERT', '1455770637');
INSERT INTO `history` VALUES ('6', 'sys_other_sites', '1', 'system_other_sites', '{\"short_name\":\"bms\",\"full_name\":\"bms\",\"site_url\":\"bms\",\"replace_text\":\"AUTH_CODE\",\"remarks\":\"\",\"ordering\":\"99\",\"user_created\":\"1\",\"date_created\":1455770795}', '1', 'INSERT', '1455770795');
INSERT INTO `history` VALUES ('7', 'sys_other_sites', '2', 'system_other_sites', '{\"short_name\":\"ems\",\"full_name\":\"ems\",\"site_url\":\"ems\",\"replace_text\":\"AUTH_CODE\",\"remarks\":\"\",\"ordering\":\"99\",\"user_created\":\"1\",\"date_created\":1455770810}', '1', 'INSERT', '1455770810');
INSERT INTO `history` VALUES ('8', 'setup_users_other_sites', '8', 'setup_users_other_sites', '{\"user_id\":\"1\",\"site_id\":\"1\",\"user_created\":\"1\",\"date_created\":1455773876,\"revision\":1}', '1', 'INSERT', '1455773876');
INSERT INTO `history` VALUES ('9', 'setup_users_other_sites', '9', 'setup_users_other_sites', '{\"user_id\":\"1\",\"site_id\":\"1\",\"user_created\":\"1\",\"date_created\":1455774193,\"revision\":1}', '1', 'INSERT', '1455774193');
INSERT INTO `history` VALUES ('10', 'setup_users_other_sites', '10', 'setup_users_other_sites', '{\"user_id\":\"1\",\"site_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455774193,\"revision\":1}', '1', 'INSERT', '1455774193');
INSERT INTO `history` VALUES ('11', 'setup_users_other_sites', '11', 'setup_users_other_sites', '{\"user_id\":\"1\",\"site_id\":\"1\",\"user_created\":\"1\",\"date_created\":1455774303,\"revision\":1}', '1', 'INSERT', '1455774303');
INSERT INTO `history` VALUES ('12', 'setup_users_other_sites', '12', 'setup_users_other_sites', '{\"user_id\":\"1\",\"site_id\":\"1\",\"user_created\":\"1\",\"date_created\":1455774538,\"revision\":1}', '1', 'INSERT', '1455774538');
INSERT INTO `history` VALUES ('13', 'setup_users_other_sites', '13', 'setup_users_other_sites', '{\"user_id\":\"1\",\"site_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455774538,\"revision\":1}', '1', 'INSERT', '1455774538');
INSERT INTO `history` VALUES ('14', 'setup_users_other_sites', '14', 'setup_users_other_sites', '{\"user_id\":\"1\",\"site_id\":\"1\",\"user_created\":\"1\",\"date_created\":1455774558,\"revision\":1}', '1', 'INSERT', '1455774558');
INSERT INTO `history` VALUES ('15', 'setup_users_other_sites', '15', 'setup_users_other_sites', '{\"user_id\":\"1\",\"site_id\":\"1\",\"user_created\":\"1\",\"date_created\":1455774620,\"revision\":1}', '1', 'INSERT', '1455774620');
INSERT INTO `history` VALUES ('16', 'setup_users_other_sites', '16', 'setup_users_other_sites', '{\"user_id\":\"1\",\"site_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455774620,\"revision\":1}', '1', 'INSERT', '1455774620');
INSERT INTO `history` VALUES ('17', 'setup_users_other_sites', '17', 'setup_users_other_sites', '{\"user_id\":\"1\",\"site_id\":\"1\",\"user_created\":\"1\",\"date_created\":1455774632,\"revision\":1}', '1', 'INSERT', '1455774632');
INSERT INTO `history` VALUES ('18', 'setup_users_other_sites', '18', 'setup_users_other_sites', '{\"user_id\":\"1\",\"site_id\":\"1\",\"user_created\":\"1\",\"date_created\":1455777676,\"revision\":1}', '1', 'INSERT', '1455777676');
INSERT INTO `history` VALUES ('19', 'setup_users_other_sites', '19', 'setup_users_other_sites', '{\"user_id\":\"1\",\"site_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455777676,\"revision\":1}', '1', 'INSERT', '1455777676');
INSERT INTO `history` VALUES ('20', 'setup_users_other_sites', '20', 'setup_users_other_sites', '{\"user_id\":\"4\",\"site_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455778152,\"revision\":1}', '1', 'INSERT', '1455778152');
INSERT INTO `history` VALUES ('21', 'sys_user_role', '72', 'system_user_group_role', '{\"view\":1,\"add\":1,\"edit\":1,\"delete\":1,\"task_id\":3,\"user_group_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455780354}', '1', 'INSERT', '1455780354');
INSERT INTO `history` VALUES ('22', 'sys_user_role', '73', 'system_user_group_role', '{\"view\":1,\"add\":1,\"edit\":1,\"delete\":1,\"task_id\":4,\"user_group_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455780354}', '1', 'INSERT', '1455780354');
INSERT INTO `history` VALUES ('23', 'sys_user_role', '74', 'system_user_group_role', '{\"view\":1,\"add\":1,\"edit\":1,\"delete\":1,\"task_id\":6,\"user_group_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455780354}', '1', 'INSERT', '1455780354');
INSERT INTO `history` VALUES ('24', 'sys_user_role', '75', 'system_user_group_role', '{\"view\":1,\"add\":1,\"edit\":1,\"delete\":1,\"task_id\":7,\"user_group_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455780354}', '1', 'INSERT', '1455780354');
INSERT INTO `history` VALUES ('25', 'sys_user_role', '76', 'system_user_group_role', '{\"view\":1,\"add\":1,\"edit\":1,\"delete\":1,\"task_id\":13,\"user_group_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455780354}', '1', 'INSERT', '1455780354');
INSERT INTO `history` VALUES ('26', 'sys_user_role', '77', 'system_user_group_role', '{\"view\":1,\"add\":1,\"edit\":1,\"delete\":1,\"task_id\":9,\"user_group_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455780354}', '1', 'INSERT', '1455780354');
INSERT INTO `history` VALUES ('27', 'sys_user_role', '78', 'system_user_group_role', '{\"view\":1,\"add\":1,\"edit\":1,\"delete\":1,\"task_id\":10,\"user_group_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455780354}', '1', 'INSERT', '1455780354');
INSERT INTO `history` VALUES ('28', 'sys_user_role', '79', 'system_user_group_role', '{\"view\":1,\"add\":1,\"edit\":1,\"delete\":1,\"task_id\":18,\"user_group_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455780354}', '1', 'INSERT', '1455780354');
INSERT INTO `history` VALUES ('29', 'sys_user_role', '80', 'system_user_group_role', '{\"view\":1,\"add\":1,\"edit\":1,\"delete\":1,\"task_id\":11,\"user_group_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455780354}', '1', 'INSERT', '1455780354');
INSERT INTO `history` VALUES ('30', 'sys_user_role', '81', 'system_user_group_role', '{\"view\":1,\"add\":1,\"edit\":1,\"delete\":1,\"task_id\":15,\"user_group_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455780354}', '1', 'INSERT', '1455780354');
INSERT INTO `history` VALUES ('31', 'sys_user_role', '82', 'system_user_group_role', '{\"view\":1,\"add\":1,\"edit\":1,\"delete\":1,\"task_id\":16,\"user_group_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455780354}', '1', 'INSERT', '1455780354');
INSERT INTO `history` VALUES ('32', 'sys_user_role', '83', 'system_user_group_role', '{\"view\":1,\"add\":1,\"edit\":1,\"delete\":1,\"task_id\":17,\"user_group_id\":\"2\",\"user_created\":\"1\",\"date_created\":1455780354}', '1', 'INSERT', '1455780354');
INSERT INTO `history` VALUES ('33', 'sys_other_sites', '2', 'system_other_sites', '{\"short_name\":\"ems\",\"full_name\":\"ems\",\"site_url\":\"http:\\/\\/localhost\\/ems\\/external_login\\/login\\/AUTH_CODE\",\"replace_text\":\"AUTH_CODE\",\"remarks\":\"\",\"ordering\":\"1\",\"user_updated\":\"1\",\"date_updated\":1455803648}', '1', 'UPDATE', '1455803648');

-- ----------------------------
-- Table structure for `other_sites_visit`
-- ----------------------------
DROP TABLE IF EXISTS `other_sites_visit`;
CREATE TABLE `other_sites_visit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `count` int(11) NOT NULL DEFAULT '1',
  `status` varchar(11) NOT NULL DEFAULT 'Active',
  `auth_key` varchar(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of other_sites_visit
-- ----------------------------
INSERT INTO `other_sites_visit` VALUES ('1', '1', '2', '3', 'In-Active', '4ed91d241710d29d91eb9af1df3f6f7b');

-- ----------------------------
-- Table structure for `setup_designation`
-- ----------------------------
DROP TABLE IF EXISTS `setup_designation`;
CREATE TABLE `setup_designation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'Active',
  `ordering` tinyint(4) NOT NULL DEFAULT '99',
  `date_created` int(11) NOT NULL DEFAULT '0',
  `user_created` int(11) NOT NULL DEFAULT '0',
  `date_updated` int(11) DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setup_designation
-- ----------------------------
INSERT INTO `setup_designation` VALUES ('1', 'Chairman', 'Active', '1', '1455689182', '2', null, null);
INSERT INTO `setup_designation` VALUES ('2', 'Managing Director', 'Active', '2', '1455689201', '2', null, null);
INSERT INTO `setup_designation` VALUES ('3', 'Sr. Manager Operations', 'Active', '3', '1455689226', '2', null, null);
INSERT INTO `setup_designation` VALUES ('4', 'Sr. Manager Marketing', 'Active', '4', '1455689244', '2', null, null);
INSERT INTO `setup_designation` VALUES ('5', 'External Auditor', 'Active', '5', '1455689263', '2', null, null);
INSERT INTO `setup_designation` VALUES ('6', 'Business Analyst', 'Active', '6', '1455689279', '2', null, null);
INSERT INTO `setup_designation` VALUES ('7', 'R&D In - Charge', 'Active', '7', '1455689306', '2', null, null);
INSERT INTO `setup_designation` VALUES ('8', 'Seed Potato Manager', 'Active', '9', '1455689323', '2', null, null);
INSERT INTO `setup_designation` VALUES ('9', 'Seed Potato Advisor', 'Active', '10', '1455689341', '2', null, null);
INSERT INTO `setup_designation` VALUES ('10', 'Farm In - charge', 'Active', '11', '1455689351', '2', null, null);
INSERT INTO `setup_designation` VALUES ('11', 'Program & Software Coordinator', 'Active', '8', '1455689413', '2', null, null);
INSERT INTO `setup_designation` VALUES ('12', 'IT Consultant (Programming)', 'Active', '13', '1455689460', '2', null, null);
INSERT INTO `setup_designation` VALUES ('13', 'Software Engineer  ', 'Active', '15', '1455689494', '2', null, null);
INSERT INTO `setup_designation` VALUES ('14', 'PRI', 'Active', '17', '1455689521', '2', null, null);
INSERT INTO `setup_designation` VALUES ('15', 'SP ZI', 'Active', '18', '1455689552', '2', null, null);
INSERT INTO `setup_designation` VALUES ('16', 'SP TMPO', 'Active', '19', '1455689571', '2', null, null);
INSERT INTO `setup_designation` VALUES ('17', 'Asst. Farm Officer', 'Active', '20', '1455689582', '2', null, null);
INSERT INTO `setup_designation` VALUES ('18', ' Farm Accounts Officer', 'Active', '21', '1455689607', '2', null, null);
INSERT INTO `setup_designation` VALUES ('19', 'Accounts Manager', 'Active', '22', '1455689625', '2', null, null);
INSERT INTO `setup_designation` VALUES ('20', 'Accounts Officer', 'Active', '23', '1455689636', '2', null, null);
INSERT INTO `setup_designation` VALUES ('21', 'Finance Officer', 'Active', '24', '1455689646', '2', null, null);
INSERT INTO `setup_designation` VALUES ('22', 'Commercial Officer', 'Active', '25', '1455689656', '2', null, null);
INSERT INTO `setup_designation` VALUES ('23', 'Asst. Manager North (DI)', 'Active', '26', '1455689673', '2', null, null);
INSERT INTO `setup_designation` VALUES ('24', 'Asst. Manager South (DI)', 'Active', '27', '1455689682', '2', null, null);
INSERT INTO `setup_designation` VALUES ('25', 'Asst. Manager East (DI)', 'Active', '29', '1455689691', '2', null, null);
INSERT INTO `setup_designation` VALUES ('26', 'Officer ICT Marketing', 'Active', '30', '1455689704', '2', null, null);
INSERT INTO `setup_designation` VALUES ('27', 'ZI', 'Active', '31', '1455689717', '2', null, null);
INSERT INTO `setup_designation` VALUES ('28', 'TMPO', 'Active', '32', '1455689729', '2', null, null);
INSERT INTO `setup_designation` VALUES ('29', 'IT  (Hardware)', 'Active', '34', '1455689751', '2', null, null);
INSERT INTO `setup_designation` VALUES ('30', 'Asst. Manager Admin', 'Active', '35', '1455689762', '2', null, null);
INSERT INTO `setup_designation` VALUES ('31', 'Trainer ', 'Active', '36', '1455689771', '2', null, null);
INSERT INTO `setup_designation` VALUES ('32', 'Store In - Charge', 'Active', '38', '1455689785', '2', null, null);
INSERT INTO `setup_designation` VALUES ('33', 'Foriegn Correspondence', 'Active', '40', '1455689800', '2', null, null);
INSERT INTO `setup_designation` VALUES ('34', 'Store Keeper', 'Active', '41', '1455689812', '2', null, null);
INSERT INTO `setup_designation` VALUES ('35', 'Office Assistant', 'Active', '42', '1455689829', '2', null, null);
INSERT INTO `setup_designation` VALUES ('36', 'Packaging In - Charge', 'Active', '43', '1455689839', '2', null, null);
INSERT INTO `setup_designation` VALUES ('37', 'Delivery In - Charge', 'Active', '46', '1455689851', '2', null, null);
INSERT INTO `setup_designation` VALUES ('38', 'Office Assistant', 'Active', '49', '1455689868', '2', '1455689923', '2');
INSERT INTO `setup_designation` VALUES ('39', 'OSS', 'Active', '50', '1455689935', '2', null, null);
INSERT INTO `setup_designation` VALUES ('40', 'SSS', 'Active', '52', '1455689946', '2', null, null);
INSERT INTO `setup_designation` VALUES ('41', 'Drivers', 'Active', '56', '1455689957', '2', null, null);

-- ----------------------------
-- Table structure for `setup_offices`
-- ----------------------------
DROP TABLE IF EXISTS `setup_offices`;
CREATE TABLE `setup_offices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `address` text,
  `status` varchar(11) NOT NULL DEFAULT 'Active',
  `ordering` tinyint(4) NOT NULL DEFAULT '99',
  `date_created` int(11) NOT NULL DEFAULT '0',
  `user_created` int(11) NOT NULL DEFAULT '0',
  `date_updated` int(11) DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setup_offices
-- ----------------------------
INSERT INTO `setup_offices` VALUES ('1', 'Head Office', 'Aftabnagar', 'Active', '1', '1455680117', '2', null, null);
INSERT INTO `setup_offices` VALUES ('2', 'R & D Farm', 'Birganj, Dinajpur', 'Active', '4', '1455680146', '2', null, null);

-- ----------------------------
-- Table structure for `setup_user`
-- ----------------------------
DROP TABLE IF EXISTS `setup_user`;
CREATE TABLE `setup_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(20) DEFAULT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(11) DEFAULT 'Active',
  `date_created` int(11) NOT NULL,
  `user_created` int(11) NOT NULL,
  `date_updated` int(11) DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setup_user
-- ----------------------------
INSERT INTO `setup_user` VALUES ('1', null, 'superadmin', '827ccb0eea8a706c4c34a16891f84e7b', 'Active', '1455625924', '1', null, null);
INSERT INTO `setup_user` VALUES ('2', '0026', '0026', '7b6f66c327f14877a538f45c3ea76631', 'Active', '1', '1', '1455745937', '2');
INSERT INTO `setup_user` VALUES ('3', '', '001', '9e3895cedfa93fc7d6f63cb00ad91d1b', 'Active', '1455713248', '2', '1455717111', '2');
INSERT INTO `setup_user` VALUES ('4', '', '002', '93dd4de5cddba2c733c65f233097f05a', 'Active', '1455713293', '2', null, null);
INSERT INTO `setup_user` VALUES ('5', '', '003', 'e88a49bccde359f0cabb40db83ba6080', 'Active', '1455713331', '2', null, null);

-- ----------------------------
-- Table structure for `setup_users_other_sites`
-- ----------------------------
DROP TABLE IF EXISTS `setup_users_other_sites`;
CREATE TABLE `setup_users_other_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `revision` int(4) NOT NULL DEFAULT '1',
  `date_created` int(11) NOT NULL DEFAULT '0',
  `user_created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setup_users_other_sites
-- ----------------------------
INSERT INTO `setup_users_other_sites` VALUES ('1', '1', '1', '11', '0', '0');
INSERT INTO `setup_users_other_sites` VALUES ('2', '1', '2', '11', '0', '0');
INSERT INTO `setup_users_other_sites` VALUES ('3', '2', '1', '1', '1455770566', '1');
INSERT INTO `setup_users_other_sites` VALUES ('4', '2', '2', '1', '1455770566', '1');
INSERT INTO `setup_users_other_sites` VALUES ('5', '1', '1', '9', '1455770575', '1');
INSERT INTO `setup_users_other_sites` VALUES ('6', '1', '2', '9', '1455770575', '1');
INSERT INTO `setup_users_other_sites` VALUES ('7', '5', '2', '2', '1455770637', '1');
INSERT INTO `setup_users_other_sites` VALUES ('8', '1', '1', '8', '1455773876', '1');
INSERT INTO `setup_users_other_sites` VALUES ('9', '1', '1', '7', '1455774193', '1');
INSERT INTO `setup_users_other_sites` VALUES ('10', '1', '2', '7', '1455774193', '1');
INSERT INTO `setup_users_other_sites` VALUES ('11', '1', '1', '6', '1455774303', '1');
INSERT INTO `setup_users_other_sites` VALUES ('12', '1', '1', '5', '1455774538', '1');
INSERT INTO `setup_users_other_sites` VALUES ('13', '1', '2', '5', '1455774538', '1');
INSERT INTO `setup_users_other_sites` VALUES ('14', '1', '1', '4', '1455774558', '1');
INSERT INTO `setup_users_other_sites` VALUES ('15', '1', '1', '3', '1455774620', '1');
INSERT INTO `setup_users_other_sites` VALUES ('16', '1', '2', '3', '1455774620', '1');
INSERT INTO `setup_users_other_sites` VALUES ('17', '1', '1', '2', '1455774632', '1');
INSERT INTO `setup_users_other_sites` VALUES ('18', '1', '1', '1', '1455777676', '1');
INSERT INTO `setup_users_other_sites` VALUES ('19', '1', '2', '1', '1455777676', '1');
INSERT INTO `setup_users_other_sites` VALUES ('20', '4', '2', '1', '1455778152', '1');

-- ----------------------------
-- Table structure for `setup_user_info`
-- ----------------------------
DROP TABLE IF EXISTS `setup_user_info`;
CREATE TABLE `setup_user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `office_id` tinyint(4) DEFAULT NULL,
  `designation` smallint(6) DEFAULT NULL,
  `user_type_id` int(11) DEFAULT NULL,
  `user_group` smallint(6) NOT NULL,
  `father_name` text,
  `mother_name` text,
  `date_birth` int(11) DEFAULT NULL,
  `gender` varchar(8) DEFAULT 'Male',
  `status_marital` varchar(15) DEFAULT 'Un-Married',
  `spouse_name` text,
  `nid` varchar(255) DEFAULT NULL,
  `address_present` text,
  `address_permanent` text,
  `date_join` int(11) DEFAULT NULL,
  `salary_basic` float DEFAULT NULL,
  `salary_other` float DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `tel_no` varchar(255) DEFAULT NULL,
  `contact_person` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) DEFAULT NULL,
  `picture_profile` text,
  `ordering` int(11) DEFAULT '9999',
  `revision` int(11) DEFAULT '1',
  `date_created` int(11) NOT NULL,
  `user_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of setup_user_info
-- ----------------------------
INSERT INTO `setup_user_info` VALUES ('1', '1', 'Shaiful Islam', '1', null, null, '1', null, null, null, 'Male', 'Un-Married', null, null, null, null, null, null, null, null, null, null, null, null, 'http://login.malikseeds.com/images/no_image.jpg', '1', '2', '1455625924', '1');
INSERT INTO `setup_user_info` VALUES ('2', '2', 'Abid', null, null, null, '2', null, null, null, 'Male', 'Un-Married', null, null, null, null, null, null, null, null, null, null, null, null, null, '2', '2', '1', '1');
INSERT INTO `setup_user_info` VALUES ('3', '2', 'Md. Abidur Rahman', '1', '11', '1', '2', 'Md. Abdus Sattar', 'Ayesha siddika', '521528400', 'Male', 'Married', '', '7311519850072', 'Plot-06, Road-13, Nikunja-2, Dhaka.', 'Vill: Shahpara, Post: Muktirhat, P.S:\r\nDomar, Dist: Nilphamari.', '1391234400', '0', '0', 'O-', '01713090934', '', '', '', 'http://login.malikseeds.com/images/no_image.jpg', '2', '1', '1455701947', '2');
INSERT INTO `setup_user_info` VALUES ('4', '3', 'sdfg sdfg', '0', '0', '0', '0', '', '', '0', 'Male', 'Un-Married', '', '', '', '', '0', '0', '0', '', '', '', '', '', 'http://localhost/login/images/no_image.jpg', '99', '3', '1455713248', '2');
INSERT INTO `setup_user_info` VALUES ('5', '3', 'sdfg sdfg', '0', '0', '0', '0', '', '', '0', 'Male', 'Un-Married', '', '', '', '', '0', '0', '0', '', '', '', '', '', 'http://localhost/login/images/no_image.jpg', '99', '2', '1455713274', '2');
INSERT INTO `setup_user_info` VALUES ('6', '4', 'fsdg dsfg', '0', '0', '0', '0', '', '', '0', 'Male', 'Un-Married', '', '', '', '', '0', '0', '0', '', '', '', '', '', 'http://localhost/login/images/no_image.jpg', '99', '2', '1455713293', '2');
INSERT INTO `setup_user_info` VALUES ('7', '5', 'fsdg dsfg', '0', '0', '0', '0', '', '', '0', 'Male', 'Un-Married', '', '', '', '', '0', '0', '0', '', '', '', '', '', 'http://localhost/login/images/no_image.jpg', '99', '2', '1455713331', '2');
INSERT INTO `setup_user_info` VALUES ('8', '3', 'sdfg sdfg', '0', '0', '0', '3', '', '', '0', 'Male', 'Un-Married', '', '', '', '', '0', '0', '0', '', '', '', '', '', 'http://localhost/login/images/no_image.jpg', '99', '1', '1455713390', '2');
INSERT INTO `setup_user_info` VALUES ('9', '5', 'fsdg dsfg', '0', '0', '0', '3', '', '', '0', 'Male', 'Un-Married', '', '', '', '', '0', '0', '0', '', '', '', '', '', 'http://localhost/login/images/no_image.jpg', '99', '1', '1455713415', '2');
INSERT INTO `setup_user_info` VALUES ('10', '4', 'fsdg dsfg', '0', '0', '0', '0', '', '', '0', 'Male', 'Un-Married', '', '', '', '', '0', '0', '0', '', '', '', '', '', 'http://localhost/login/images/no_image.jpg', '3', '1', '1455713682', '2');
INSERT INTO `setup_user_info` VALUES ('11', '1', 'Shaiful Islam', '1', null, null, '1', null, null, null, 'Male', 'Un-Married', null, null, null, null, null, null, null, null, null, null, null, null, 'http://localhost/login/images/profiles/1/Penguins.jpg', '1', '1', '1455747939', '1');

-- ----------------------------
-- Table structure for `setup_user_type`
-- ----------------------------
DROP TABLE IF EXISTS `setup_user_type`;
CREATE TABLE `setup_user_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `status` varchar(11) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Active',
  `ordering` tinyint(4) NOT NULL DEFAULT '99',
  `date_created` int(11) NOT NULL DEFAULT '0',
  `user_created` int(11) NOT NULL DEFAULT '0',
  `date_updated` int(11) DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of setup_user_type
-- ----------------------------
INSERT INTO `setup_user_type` VALUES ('1', 'Employee', '', 'Active', '1', '1455690137', '2', null, null);

-- ----------------------------
-- Table structure for `system_other_sites`
-- ----------------------------
DROP TABLE IF EXISTS `system_other_sites`;
CREATE TABLE `system_other_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `short_name` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `site_url` text NOT NULL,
  `replace_text` varchar(255) NOT NULL DEFAULT 'AUTH_CODE',
  `remarks` text,
  `status` varchar(11) NOT NULL DEFAULT 'Active',
  `ordering` tinyint(4) NOT NULL DEFAULT '99',
  `date_created` int(11) NOT NULL DEFAULT '0',
  `user_created` int(11) NOT NULL DEFAULT '0',
  `date_updated` int(11) DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_other_sites
-- ----------------------------
INSERT INTO `system_other_sites` VALUES ('1', 'bms', 'bms', 'bms', 'AUTH_CODE', '', 'Active', '99', '1455770795', '1', null, null);
INSERT INTO `system_other_sites` VALUES ('2', 'ems', 'ems', 'http://localhost/ems/external_login/login/AUTH_CODE', 'AUTH_CODE', '', 'Active', '1', '1455770810', '1', '1455803648', '1');

-- ----------------------------
-- Table structure for `system_task`
-- ----------------------------
DROP TABLE IF EXISTS `system_task`;
CREATE TABLE `system_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'TASK',
  `parent` int(11) NOT NULL DEFAULT '0',
  `controller` varchar(500) NOT NULL,
  `ordering` smallint(6) NOT NULL DEFAULT '9999',
  `icon` varchar(255) NOT NULL DEFAULT 'menu.png',
  `status` varchar(11) NOT NULL DEFAULT 'Active',
  `date_created` int(11) NOT NULL DEFAULT '0',
  `user_created` int(11) NOT NULL DEFAULT '0',
  `date_updated` int(11) DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_task
-- ----------------------------
INSERT INTO `system_task` VALUES ('1', 'System Settings', 'MODULE', '0', '', '1', 'menu.png', 'Active', '1455625924', '1', '1455625924', '1');
INSERT INTO `system_task` VALUES ('2', 'Module & Task', 'TASK', '1', 'Sys_module_task', '1', 'menu.png', 'Active', '1455625924', '1', '1455625924', '1');
INSERT INTO `system_task` VALUES ('3', 'User Role', 'TASK', '1', 'Sys_user_role', '2', 'menu.png', 'Active', '1455625924', '1', '1455625924', '1');
INSERT INTO `system_task` VALUES ('4', 'User Group', 'TASK', '1', 'Sys_user_group', '3', 'menu.png', 'Active', '1455625924', '1', '1455625924', '1');
INSERT INTO `system_task` VALUES ('5', 'Setup', 'MODULE', '0', '', '2', 'menu.png', 'Active', '1455625924', '1', '1455625924', '1');
INSERT INTO `system_task` VALUES ('6', 'Offices', 'TASK', '5', 'Setup_offices', '1', 'menu.png', 'Active', '1455627949', '1', null, null);
INSERT INTO `system_task` VALUES ('7', 'Designation', 'TASK', '5', 'Setup_designation', '2', 'menu.png', 'Active', '1455627988', '1', null, null);
INSERT INTO `system_task` VALUES ('8', 'Users', 'MODULE', '5', '', '4', 'menu.png', 'Active', '1455628016', '1', '1455640095', '1');
INSERT INTO `system_task` VALUES ('9', 'User Info', 'TASK', '8', 'Setup_users_info', '1', 'menu.png', 'Active', '1455628047', '1', null, null);
INSERT INTO `system_task` VALUES ('10', 'Reset Password', 'TASK', '8', 'Setup_users_reset_password', '2', 'menu.png', 'Active', '1455628102', '1', null, null);
INSERT INTO `system_task` VALUES ('11', 'Assign To other Sites', 'TASK', '8', 'Setup_users_other_sites', '4', 'menu.png', 'Active', '1455628190', '1', '1455716027', '1');
INSERT INTO `system_task` VALUES ('12', 'Other Sites', 'TASK', '1', 'Sys_other_sites', '4', 'menu.png', 'Active', '1455628220', '1', '1455628929', '1');
INSERT INTO `system_task` VALUES ('13', 'User Types', 'TASK', '5', 'Setup_user_type', '3', 'menu.png', 'Active', '1455640141', '1', null, null);
INSERT INTO `system_task` VALUES ('14', 'Profile', 'MODULE', '0', '', '3', 'menu.png', 'Active', '1455651664', '1', null, null);
INSERT INTO `system_task` VALUES ('15', 'information', 'TASK', '14', 'Profile_info', '1', 'menu.png', 'Active', '1455652081', '1', null, null);
INSERT INTO `system_task` VALUES ('16', 'Change Password', 'TASK', '14', 'Profile_password', '2', 'menu.png', 'Active', '1455652106', '1', null, null);
INSERT INTO `system_task` VALUES ('17', 'Change Picture', 'TASK', '14', 'Profile_picture', '3', 'menu.png', 'Active', '1455652127', '1', null, null);
INSERT INTO `system_task` VALUES ('18', 'Activate/Deactivate user', 'TASK', '8', 'Setup_users_active_inactive', '3', 'menu.png', 'Active', '1455716365', '1', null, null);

-- ----------------------------
-- Table structure for `system_user_group`
-- ----------------------------
DROP TABLE IF EXISTS `system_user_group`;
CREATE TABLE `system_user_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` varchar(11) NOT NULL DEFAULT 'Active',
  `ordering` tinyint(4) NOT NULL DEFAULT '99',
  `date_created` int(11) NOT NULL DEFAULT '0',
  `user_created` int(11) NOT NULL DEFAULT '0',
  `date_updated` int(11) DEFAULT NULL,
  `user_updated` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_user_group
-- ----------------------------
INSERT INTO `system_user_group` VALUES ('1', 'Super Admin', 'Active', '1', '1455625924', '1', '1455625924', '1');
INSERT INTO `system_user_group` VALUES ('2', 'Admin', 'Active', '2', '1455651646', '1', null, null);
INSERT INTO `system_user_group` VALUES ('3', 'Office Employee', 'Active', '3', '1455703043', '1', null, null);

-- ----------------------------
-- Table structure for `system_user_group_role`
-- ----------------------------
DROP TABLE IF EXISTS `system_user_group_role`;
CREATE TABLE `system_user_group_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `view` tinyint(4) NOT NULL DEFAULT '0',
  `add` tinyint(4) NOT NULL DEFAULT '0',
  `edit` tinyint(4) NOT NULL DEFAULT '0',
  `delete` tinyint(4) NOT NULL DEFAULT '0',
  `revision` int(11) NOT NULL DEFAULT '1',
  `date_created` int(11) NOT NULL DEFAULT '0',
  `user_created` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_user_group_role
-- ----------------------------
INSERT INTO `system_user_group_role` VALUES ('1', '1', '2', '1', '1', '1', '1', '5', '1455625924', '1');
INSERT INTO `system_user_group_role` VALUES ('2', '1', '3', '1', '1', '1', '1', '5', '1455625924', '1');
INSERT INTO `system_user_group_role` VALUES ('3', '1', '4', '1', '1', '1', '1', '5', '1455625924', '1');
INSERT INTO `system_user_group_role` VALUES ('4', '1', '2', '1', '1', '1', '1', '4', '1455628293', '1');
INSERT INTO `system_user_group_role` VALUES ('5', '1', '3', '1', '1', '1', '1', '4', '1455628293', '1');
INSERT INTO `system_user_group_role` VALUES ('6', '1', '4', '1', '1', '1', '1', '4', '1455628293', '1');
INSERT INTO `system_user_group_role` VALUES ('7', '1', '6', '1', '1', '1', '1', '4', '1455628293', '1');
INSERT INTO `system_user_group_role` VALUES ('8', '1', '7', '1', '1', '1', '1', '4', '1455628293', '1');
INSERT INTO `system_user_group_role` VALUES ('9', '1', '9', '1', '1', '1', '1', '4', '1455628293', '1');
INSERT INTO `system_user_group_role` VALUES ('10', '1', '10', '1', '1', '1', '1', '4', '1455628293', '1');
INSERT INTO `system_user_group_role` VALUES ('11', '1', '11', '1', '1', '1', '1', '4', '1455628293', '1');
INSERT INTO `system_user_group_role` VALUES ('12', '1', '12', '1', '1', '1', '1', '4', '1455628293', '1');
INSERT INTO `system_user_group_role` VALUES ('13', '1', '2', '1', '1', '1', '1', '3', '1455640171', '1');
INSERT INTO `system_user_group_role` VALUES ('14', '1', '3', '1', '1', '1', '1', '3', '1455640171', '1');
INSERT INTO `system_user_group_role` VALUES ('15', '1', '4', '1', '1', '1', '1', '3', '1455640171', '1');
INSERT INTO `system_user_group_role` VALUES ('16', '1', '12', '1', '1', '1', '1', '3', '1455640171', '1');
INSERT INTO `system_user_group_role` VALUES ('17', '1', '6', '1', '1', '1', '1', '3', '1455640171', '1');
INSERT INTO `system_user_group_role` VALUES ('18', '1', '7', '1', '1', '1', '1', '3', '1455640171', '1');
INSERT INTO `system_user_group_role` VALUES ('19', '1', '13', '1', '1', '1', '1', '3', '1455640171', '1');
INSERT INTO `system_user_group_role` VALUES ('20', '1', '9', '1', '1', '1', '1', '3', '1455640171', '1');
INSERT INTO `system_user_group_role` VALUES ('21', '1', '10', '1', '1', '1', '1', '3', '1455640171', '1');
INSERT INTO `system_user_group_role` VALUES ('22', '1', '11', '1', '1', '1', '1', '3', '1455640171', '1');
INSERT INTO `system_user_group_role` VALUES ('23', '1', '2', '1', '1', '1', '1', '2', '1455652153', '1');
INSERT INTO `system_user_group_role` VALUES ('24', '1', '3', '1', '1', '1', '1', '2', '1455652153', '1');
INSERT INTO `system_user_group_role` VALUES ('25', '1', '4', '1', '1', '1', '1', '2', '1455652153', '1');
INSERT INTO `system_user_group_role` VALUES ('26', '1', '12', '1', '1', '1', '1', '2', '1455652153', '1');
INSERT INTO `system_user_group_role` VALUES ('27', '1', '6', '1', '1', '1', '1', '2', '1455652153', '1');
INSERT INTO `system_user_group_role` VALUES ('28', '1', '7', '1', '1', '1', '1', '2', '1455652153', '1');
INSERT INTO `system_user_group_role` VALUES ('29', '1', '13', '1', '1', '1', '1', '2', '1455652153', '1');
INSERT INTO `system_user_group_role` VALUES ('30', '1', '9', '1', '1', '1', '1', '2', '1455652153', '1');
INSERT INTO `system_user_group_role` VALUES ('31', '1', '10', '1', '1', '1', '1', '2', '1455652153', '1');
INSERT INTO `system_user_group_role` VALUES ('32', '1', '11', '1', '1', '1', '1', '2', '1455652153', '1');
INSERT INTO `system_user_group_role` VALUES ('33', '1', '15', '1', '1', '1', '1', '2', '1455652153', '1');
INSERT INTO `system_user_group_role` VALUES ('34', '1', '16', '1', '1', '1', '1', '2', '1455652153', '1');
INSERT INTO `system_user_group_role` VALUES ('35', '1', '17', '1', '1', '1', '1', '2', '1455652153', '1');
INSERT INTO `system_user_group_role` VALUES ('36', '2', '6', '1', '1', '1', '1', '3', '1455652170', '1');
INSERT INTO `system_user_group_role` VALUES ('37', '2', '7', '1', '1', '1', '1', '3', '1455652170', '1');
INSERT INTO `system_user_group_role` VALUES ('38', '2', '13', '1', '1', '1', '1', '3', '1455652170', '1');
INSERT INTO `system_user_group_role` VALUES ('39', '2', '9', '1', '1', '1', '1', '3', '1455652170', '1');
INSERT INTO `system_user_group_role` VALUES ('40', '2', '10', '1', '1', '1', '1', '3', '1455652170', '1');
INSERT INTO `system_user_group_role` VALUES ('41', '2', '11', '1', '1', '1', '1', '3', '1455652170', '1');
INSERT INTO `system_user_group_role` VALUES ('42', '2', '15', '1', '1', '1', '1', '3', '1455652170', '1');
INSERT INTO `system_user_group_role` VALUES ('43', '2', '16', '1', '1', '1', '1', '3', '1455652170', '1');
INSERT INTO `system_user_group_role` VALUES ('44', '2', '17', '1', '1', '1', '1', '3', '1455652170', '1');
INSERT INTO `system_user_group_role` VALUES ('45', '3', '15', '1', '1', '1', '1', '1', '1455703113', '1');
INSERT INTO `system_user_group_role` VALUES ('46', '3', '16', '1', '1', '1', '1', '1', '1455703113', '1');
INSERT INTO `system_user_group_role` VALUES ('47', '3', '17', '1', '1', '1', '1', '1', '1455703113', '1');
INSERT INTO `system_user_group_role` VALUES ('48', '1', '2', '1', '1', '1', '1', '1', '1455716386', '1');
INSERT INTO `system_user_group_role` VALUES ('49', '1', '3', '1', '1', '1', '1', '1', '1455716386', '1');
INSERT INTO `system_user_group_role` VALUES ('50', '1', '4', '1', '1', '1', '1', '1', '1455716386', '1');
INSERT INTO `system_user_group_role` VALUES ('51', '1', '12', '1', '1', '1', '1', '1', '1455716386', '1');
INSERT INTO `system_user_group_role` VALUES ('52', '1', '6', '1', '1', '1', '1', '1', '1455716386', '1');
INSERT INTO `system_user_group_role` VALUES ('53', '1', '7', '1', '1', '1', '1', '1', '1455716386', '1');
INSERT INTO `system_user_group_role` VALUES ('54', '1', '13', '1', '1', '1', '1', '1', '1455716386', '1');
INSERT INTO `system_user_group_role` VALUES ('55', '1', '9', '1', '1', '1', '1', '1', '1455716386', '1');
INSERT INTO `system_user_group_role` VALUES ('56', '1', '10', '1', '1', '1', '1', '1', '1455716386', '1');
INSERT INTO `system_user_group_role` VALUES ('57', '1', '18', '1', '1', '1', '1', '1', '1455716386', '1');
INSERT INTO `system_user_group_role` VALUES ('58', '1', '11', '1', '1', '1', '1', '1', '1455716386', '1');
INSERT INTO `system_user_group_role` VALUES ('59', '1', '15', '1', '1', '1', '1', '1', '1455716386', '1');
INSERT INTO `system_user_group_role` VALUES ('60', '1', '16', '1', '1', '1', '1', '1', '1455716386', '1');
INSERT INTO `system_user_group_role` VALUES ('61', '1', '17', '1', '1', '1', '1', '1', '1455716386', '1');
INSERT INTO `system_user_group_role` VALUES ('62', '2', '6', '1', '1', '1', '1', '2', '1455716404', '1');
INSERT INTO `system_user_group_role` VALUES ('63', '2', '7', '1', '1', '1', '1', '2', '1455716404', '1');
INSERT INTO `system_user_group_role` VALUES ('64', '2', '13', '1', '1', '1', '1', '2', '1455716404', '1');
INSERT INTO `system_user_group_role` VALUES ('65', '2', '9', '1', '1', '1', '1', '2', '1455716404', '1');
INSERT INTO `system_user_group_role` VALUES ('66', '2', '10', '1', '1', '1', '1', '2', '1455716404', '1');
INSERT INTO `system_user_group_role` VALUES ('67', '2', '18', '1', '1', '1', '1', '2', '1455716404', '1');
INSERT INTO `system_user_group_role` VALUES ('68', '2', '11', '1', '1', '1', '1', '2', '1455716404', '1');
INSERT INTO `system_user_group_role` VALUES ('69', '2', '15', '1', '1', '1', '1', '2', '1455716404', '1');
INSERT INTO `system_user_group_role` VALUES ('70', '2', '16', '1', '1', '1', '1', '2', '1455716404', '1');
INSERT INTO `system_user_group_role` VALUES ('71', '2', '17', '1', '1', '1', '1', '2', '1455716404', '1');
INSERT INTO `system_user_group_role` VALUES ('72', '2', '3', '1', '1', '1', '1', '1', '1455780354', '1');
INSERT INTO `system_user_group_role` VALUES ('73', '2', '4', '1', '1', '1', '1', '1', '1455780354', '1');
INSERT INTO `system_user_group_role` VALUES ('74', '2', '6', '1', '1', '1', '1', '1', '1455780354', '1');
INSERT INTO `system_user_group_role` VALUES ('75', '2', '7', '1', '1', '1', '1', '1', '1455780354', '1');
INSERT INTO `system_user_group_role` VALUES ('76', '2', '13', '1', '1', '1', '1', '1', '1455780354', '1');
INSERT INTO `system_user_group_role` VALUES ('77', '2', '9', '1', '1', '1', '1', '1', '1455780354', '1');
INSERT INTO `system_user_group_role` VALUES ('78', '2', '10', '1', '1', '1', '1', '1', '1455780354', '1');
INSERT INTO `system_user_group_role` VALUES ('79', '2', '18', '1', '1', '1', '1', '1', '1455780354', '1');
INSERT INTO `system_user_group_role` VALUES ('80', '2', '11', '1', '1', '1', '1', '1', '1455780354', '1');
INSERT INTO `system_user_group_role` VALUES ('81', '2', '15', '1', '1', '1', '1', '1', '1455780354', '1');
INSERT INTO `system_user_group_role` VALUES ('82', '2', '16', '1', '1', '1', '1', '1', '1455780354', '1');
INSERT INTO `system_user_group_role` VALUES ('83', '2', '17', '1', '1', '1', '1', '1', '1455780354', '1');
