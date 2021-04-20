-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Mar 10, 2018 at 07:31 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `db_std_shop`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_admin`
-- 

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL auto_increment,
  `admin_user` varchar(20) NOT NULL,
  `admin_pass` varchar(20) NOT NULL,
  `admin_name` varchar(100) NOT NULL,
  `date_save` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Dumping data for table `tbl_admin`
-- 

INSERT INTO `tbl_admin` VALUES (1, '1', '1', 'admin', '2017-08-30 01:57:41');
INSERT INTO `tbl_admin` VALUES (2, '55', '55', '555555 55555', '2018-01-25 04:13:06');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_bank`
-- 

CREATE TABLE `tbl_bank` (
  `b_id` int(11) NOT NULL auto_increment,
  `b_name` varchar(100) character set utf8 NOT NULL,
  `b_type` varchar(100) character set utf8 NOT NULL,
  `b_number` varchar(20) NOT NULL,
  `b_owner` varchar(100) character set utf8 NOT NULL,
  `b_logo` varchar(100) NOT NULL,
  `bn_name` varchar(100) character set utf8 NOT NULL COMMENT 'ชื่อสาขา',
  `b_date` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`b_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COMMENT='bank' AUTO_INCREMENT=6 ;

-- 
-- Dumping data for table `tbl_bank`
-- 

INSERT INTO `tbl_bank` VALUES (3, 'KTB', 'ออมทรัพย์', '9999999999', 'devbanban.com', 'imgb44167291820180125_105825.jpg', 'devbanban', '2017-08-30 11:53:59');
INSERT INTO `tbl_bank` VALUES (5, 'KBANK', 'ออมทรัพย์', '43213422342', 'devbanban.com', 'imgb158414898420180125_111725.jpg', 'devbanban', '2018-01-25 04:17:25');
INSERT INTO `tbl_bank` VALUES (4, 'SCB', 'ออมทรัพย์', '213141243', 'devbanban.com', 'imgb89969485620180125_105814.jpg', 'devbanban.com', '2017-08-30 11:54:06');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_board`
-- 

CREATE TABLE `tbl_board` (
  `b_id` int(11) NOT NULL auto_increment,
  `b_title` varchar(200) NOT NULL,
  `b_detail` text NOT NULL,
  `b_name` varchar(100) NOT NULL,
  `b_email` varchar(50) default NULL,
  `a_ans` varchar(200) default NULL COMMENT 'admin answer',
  `a_ans_date` date default NULL,
  `date_save` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`b_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

-- 
-- Dumping data for table `tbl_board`
-- 

INSERT INTO `tbl_board` VALUES (1, 'dddddd', 'fsdsfasfasfsa', 'aaa', NULL, 'ssssfasfasfa', '2018-02-08', '2017-08-30 03:08:43');
INSERT INTO `tbl_board` VALUES (2, 'asfdsadfsa', 'ddddd', 'bbb', NULL, 'ssss  dddd', '2018-02-08', '2017-08-30 03:18:29');
INSERT INTO `tbl_board` VALUES (4, 'ตั้งกระทู้ถามตอบ', 'ตั้งกระทู้ถามตอบ', 'ตั้งกระทู้ถามตอบ', 'aa@g.com', 'sadfsafasfsaf', '2018-02-19', '2018-02-06 16:24:47');
INSERT INTO `tbl_board` VALUES (5, 'ssss s', 'dfsafsafd', 'dddd', 'aa@g.com', 'asdfsadfsadf', '2018-02-19', '2018-02-08 13:30:23');
INSERT INTO `tbl_board` VALUES (6, 'ddd', 'asfdsafdsafd', 'ddd', 'aa@g.com', 'asdfsafdsafasdfsa', '2018-02-19', '2018-02-19 11:39:24');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_member`
-- 

CREATE TABLE `tbl_member` (
  `mem_id` int(8) NOT NULL auto_increment,
  `mem_name` varchar(50) NOT NULL,
  `mem_address` varchar(255) NOT NULL,
  `mem_tel` varchar(10) NOT NULL,
  `mem_username` varchar(20) NOT NULL,
  `mem_password` varchar(20) NOT NULL,
  `mem_email` varchar(20) NOT NULL,
  `dateinsert` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`mem_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

-- 
-- Dumping data for table `tbl_member`
-- 

INSERT INTO `tbl_member` VALUES (1, 'testssss', 'bangkok', '345325423', '2', '2', 'a@g', '2017-08-30 03:21:43');
INSERT INTO `tbl_member` VALUES (2, 'mr 999 555', 'thailand  555', '0948616709', '99', '99', 'devbanban@gmail.com', '2018-01-25 04:07:34');
INSERT INTO `tbl_member` VALUES (3, 'mr 777', 'thailand ', '0948616709', '77', '77', 'devbanban2@gmail.com', '2018-01-25 04:13:45');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_news`
-- 

CREATE TABLE `tbl_news` (
  `n_id` int(11) NOT NULL auto_increment,
  `n_title` varchar(200) NOT NULL,
  `n_detail` text NOT NULL,
  `n_img` varchar(100) NOT NULL,
  `date_save` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`n_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

-- 
-- Dumping data for table `tbl_news`
-- 

INSERT INTO `tbl_news` VALUES (1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar ', '<p>testtesttesttesttesttest</p>\r\n\r\n<p>testtesttesttesttest</p>\r\n\r\n<p>testtesttesttesttesttesttesttest</p>\r\n', 'imgn150703279820180219_105706.png', '2018-02-19 03:57:06');
INSERT INTO `tbl_news` VALUES (2, 'testLorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar ', '<p>testtesttesttesttesttest</p>\r\n\r\n<p>testtesttesttesttest</p>\r\n\r\n<p>testtesttesttesttesttesttesttest</p>\r\n', 'imgn191300607720180219_105712.png', '2018-02-19 03:57:12');
INSERT INTO `tbl_news` VALUES (3, 'testLorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar ', '<p>testtesttesttesttesttest</p>\r\n\r\n<p>testtesttesttesttest</p>\r\n\r\n<p>testtesttesttesttesttesttesttest</p>\r\n', 'imgn191300607720180219_105712.png', '2018-02-19 03:57:12');
INSERT INTO `tbl_news` VALUES (4, 'testLorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar ', '<p>testtesttesttesttesttest</p>\r\n\r\n<p>testtesttesttesttest</p>\r\n\r\n<p>testtesttesttesttesttesttesttest</p>\r\n', 'imgn191300607720180219_105712.png', '2018-02-19 03:57:12');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_order`
-- 

CREATE TABLE `tbl_order` (
  `order_id` int(10) unsigned zerofill NOT NULL auto_increment,
  `mem_id` int(11) NOT NULL,
  `name` varchar(100) collate utf8_unicode_ci NOT NULL,
  `address` varchar(500) collate utf8_unicode_ci NOT NULL,
  `email` varchar(100) collate utf8_unicode_ci NOT NULL,
  `phone` varchar(20) collate utf8_unicode_ci NOT NULL,
  `order_status` int(1) NOT NULL,
  `pay_slip` varchar(200) collate utf8_unicode_ci default NULL,
  `b_name` varchar(100) collate utf8_unicode_ci default NULL COMMENT 'ชื่อธนาคาร',
  `b_number` varchar(20) collate utf8_unicode_ci default NULL COMMENT 'เลข บช',
  `pay_date` date default NULL,
  `pay_amount` float(10,2) default NULL,
  `postcode` varchar(30) collate utf8_unicode_ci default NULL,
  `order_date` datetime NOT NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

-- 
-- Dumping data for table `tbl_order`
-- 

INSERT INTO `tbl_order` VALUES (0000000001, 1, 'eee', '523523', 'a@g', '345325423', 3, '181871346620170831_092437.jpg', '666666666666666666', '66666666666666666666', '2017-08-31', 6666.00, '444444444444', '2017-08-30 19:40:52');
INSERT INTO `tbl_order` VALUES (0000000002, 1, 'eee', '523523', 'a@g', '345325423', 3, '179007879420170831_090051.jpg', 'asfasf', '213141243', '2017-08-31', 333.00, '333fsfasfas', '2017-08-31 08:20:27');
INSERT INTO `tbl_order` VALUES (0000000003, 1, 'eee', '523523', 'a@g', '345325423', 3, '154597276020170831_090123.jpg', '666666666666666666', '66666666666666666666', '2017-08-31', 5555.00, 'sa4321123431', '2017-08-31 09:01:14');
INSERT INTO `tbl_order` VALUES (0000000004, 1, 'eee', '523523', 'a@g', '345325423', 1, '', '', '', '0000-00-00', 0.00, '', '2017-08-31 09:55:28');
INSERT INTO `tbl_order` VALUES (0000000005, 1, 'eee', '523523', 'a@g', '345325423', 1, '', '', '', '0000-00-00', 0.00, '', '2017-12-06 22:46:47');
INSERT INTO `tbl_order` VALUES (0000000006, 1, 'eee', '523523', 'a@g', '345325423', 2, '61523041620171206_224837.jpg', '666666666666666666', '66666666666666666666', '2017-12-06', 16666.00, '', '2017-12-06 22:48:14');
INSERT INTO `tbl_order` VALUES (0000000007, 1, 'test', 'bangkok', 'a@g', '345325423', 1, '', '', '', '0000-00-00', 0.00, '', '2017-12-20 11:33:25');
INSERT INTO `tbl_order` VALUES (0000000008, 1, 'test', 'bangkok', 'a@g', '345325423', 2, '200645685120180125_105300.jpg', 'KTB', '9999999999', '2018-01-25', 333.00, '', '2018-01-25 10:51:49');
INSERT INTO `tbl_order` VALUES (0000000009, 1, 'test', 'bangkok', 'a@g', '345325423', 3, '104661032820180125_105642.jpg', 'KTB', '9999999999', '2018-01-25', 223.00, 'TH 23421412421', '2018-01-25 10:55:22');
INSERT INTO `tbl_order` VALUES (0000000010, 2, 'mr 999', 'thailand', 'devbanban@gmail.com', '0948616709', 3, '116435885920180125_110903.jpg', 'KTB', '9999999999', '2018-01-30', 1356.00, 'TH 44444 44444', '2018-01-25 11:08:09');
INSERT INTO `tbl_order` VALUES (0000000011, 2, 'mr 999 555', 'thailand  555', 'devbanban@gmail.com', '0948616709', 1, '', '', '', '0000-00-00', 0.00, '', '2018-01-25 11:10:08');
INSERT INTO `tbl_order` VALUES (0000000012, 1, 'testssss', 'bangkok', 'a@g', '345325423', 1, '', '', '', '0000-00-00', 0.00, '', '2018-02-21 10:09:59');
INSERT INTO `tbl_order` VALUES (0000000013, 1, 'testssss', 'bangkok', 'a@g', '345325423', 1, '', '', '', '0000-00-00', 0.00, '', '2018-02-21 10:12:01');
INSERT INTO `tbl_order` VALUES (0000000014, 1, 'testssss', 'bangkok', 'a@g', '345325423', 1, '', '', '', '0000-00-00', 0.00, '', '2018-02-21 10:12:42');
INSERT INTO `tbl_order` VALUES (0000000015, 1, 'testssss', 'bangkok', 'a@g', '345325423', 1, '', '', '', '0000-00-00', 0.00, '', '2018-02-21 10:15:11');
INSERT INTO `tbl_order` VALUES (0000000016, 1, 'testssss', 'bangkok', 'a@g', '345325423', 1, '', '', '', '0000-00-00', 0.00, '', '2018-03-10 19:08:58');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_order_detail`
-- 

CREATE TABLE `tbl_order_detail` (
  `d_id` int(10) NOT NULL auto_increment,
  `order_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `p_name` varchar(200) character set utf8 default NULL,
  `p_c_qty` int(11) NOT NULL,
  `total` float NOT NULL,
  PRIMARY KEY  (`d_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=27 ;

-- 
-- Dumping data for table `tbl_order_detail`
-- 

INSERT INTO `tbl_order_detail` VALUES (1, 1, 1, 'iphone', 1, 223);
INSERT INTO `tbl_order_detail` VALUES (2, 1, 5, 'pc', 1, 333);
INSERT INTO `tbl_order_detail` VALUES (3, 1, 2, 'imac', 1, 1111);
INSERT INTO `tbl_order_detail` VALUES (4, 1, 4, 'macbook', 1, 22);
INSERT INTO `tbl_order_detail` VALUES (5, 2, 2, 'imac', 1, 1111);
INSERT INTO `tbl_order_detail` VALUES (6, 3, 1, 'iphone', 1, 223);
INSERT INTO `tbl_order_detail` VALUES (7, 3, 5, 'pc', 1, 333);
INSERT INTO `tbl_order_detail` VALUES (8, 4, 4, 'macbook', 3, 66);
INSERT INTO `tbl_order_detail` VALUES (9, 5, 1, 'iphone', 1, 223);
INSERT INTO `tbl_order_detail` VALUES (10, 5, 4, 'macbook', 1, 22);
INSERT INTO `tbl_order_detail` VALUES (11, 6, 1, 'iphone', 1, 223);
INSERT INTO `tbl_order_detail` VALUES (12, 6, 2, 'imac', 1, 1111);
INSERT INTO `tbl_order_detail` VALUES (13, 6, 5, 'pc', 1, 333);
INSERT INTO `tbl_order_detail` VALUES (14, 7, 2, 'imac', 1, 1111);
INSERT INTO `tbl_order_detail` VALUES (15, 7, 4, 'macbook', 1, 22);
INSERT INTO `tbl_order_detail` VALUES (16, 8, 5, 'pc', 1, 333);
INSERT INTO `tbl_order_detail` VALUES (17, 9, 1, 'iphone', 1, 223);
INSERT INTO `tbl_order_detail` VALUES (19, 10, 2, 'imac', 1, 1111);
INSERT INTO `tbl_order_detail` VALUES (18, 10, 1, 'iphone', 1, 223);
INSERT INTO `tbl_order_detail` VALUES (20, 10, 4, 'macbook', 1, 22);
INSERT INTO `tbl_order_detail` VALUES (21, 11, 5, 'pc', 5, 1665);
INSERT INTO `tbl_order_detail` VALUES (22, 12, 16, 'dev dev ', 1, 333);
INSERT INTO `tbl_order_detail` VALUES (23, 13, 16, 'dev dev ', 32, 10656);
INSERT INTO `tbl_order_detail` VALUES (24, 14, 16, 'dev dev ', 12, 3996);
INSERT INTO `tbl_order_detail` VALUES (25, 15, 16, 'dev dev ', 32, 10656);
INSERT INTO `tbl_order_detail` VALUES (26, 16, 15, 'COMPUTER', 4, 2e+006);

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_product`
-- 

CREATE TABLE `tbl_product` (
  `p_id` int(11) NOT NULL auto_increment,
  `t_id` int(11) NOT NULL,
  `p_name` varchar(200) NOT NULL,
  `p_detial` text NOT NULL,
  `p_price` float(10,2) NOT NULL,
  `p_unit` varchar(20) NOT NULL,
  `p_img1` varchar(200) NOT NULL,
  `p_img2` varchar(100) default NULL,
  `p_view` int(11) NOT NULL,
  `p_qty` int(11) default NULL,
  `date_save` timestamp NOT NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`p_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=17 ;

-- 
-- Dumping data for table `tbl_product`
-- 

INSERT INTO `tbl_product` VALUES (1, 1, 'iphone', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n', 223.00, 'ชิ้น', 'img112069995520180125_110144.png', 'img112069995520180125_110144.png', 556, 10, '2017-08-30 02:14:40');
INSERT INTO `tbl_product` VALUES (2, 1, 'imac', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n', 1111.00, 'ชิ้น', 'img112069995520180125_110144.png', 'img112069995520180125_110144.png', 555, 10, '2017-08-30 02:46:53');
INSERT INTO `tbl_product` VALUES (4, 1, 'macbook', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n', 22.00, 'ชิ้น', 'img112069995520180125_110144.png', 'img112069995520180125_110144.png', 556, 10, '2017-08-30 02:49:38');
INSERT INTO `tbl_product` VALUES (5, 1, 'pc', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n', 333.00, 'ชิ้น', 'img112069995520180125_110144.png', 'img112069995520180125_110144.png', 556, 10, '2017-08-30 02:50:45');
INSERT INTO `tbl_product` VALUES (6, 2, 'Sumsumng', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n', 223.00, 'ชิ้น', 'img112069995520180125_110144.png', 'img112069995520180125_110144.png', 555, 10, '2017-08-29 19:14:40');
INSERT INTO `tbl_product` VALUES (7, 2, 'Nokia', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n', 1111.00, 'ชิ้น', 'img112069995520180125_110144.png', 'img112069995520180125_110144.png', 559, 10, '2017-08-29 19:46:53');
INSERT INTO `tbl_product` VALUES (8, 2, 'RAM', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n', 22.00, 'ชิ้น', 'img112069995520180125_110144.png', 'img112069995520180125_110144.png', 557, 10, '2017-08-29 19:49:38');
INSERT INTO `tbl_product` VALUES (9, 2, 'CD', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n', 333.00, 'ชิ้น', 'img112069995520180125_110144.png', 'img112069995520180125_110144.png', 555, 10, '2017-08-29 19:50:45');
INSERT INTO `tbl_product` VALUES (10, 3, 'PHP', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n', 223.00, 'ชิ้น', 'img112069995520180125_110144.png', 'img112069995520180125_110144.png', 555, 10, '2017-08-29 19:14:40');
INSERT INTO `tbl_product` VALUES (11, 3, 'CSS', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n', 1111.00, 'ชิ้น', 'img112069995520180125_110144.png', 'img112069995520180125_110144.png', 555, 10, '2017-08-29 19:46:53');
INSERT INTO `tbl_product` VALUES (12, 3, 'Facebook', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n', 22.00, 'ชิ้น', 'img112069995520180125_110144.png', 'img112069995520180125_110144.png', 555, 10, '2017-08-29 19:49:38');
INSERT INTO `tbl_product` VALUES (13, 3, 'DVD', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in pulvinar neque. Nulla finibus lobortis pulvinar. Donec a consectetur nulla. Nulla posuere sapien vitae lectus suscipit, et pulvinar nisi tincidunt. Aliquam erat volutpat. Curabitur convallis fringilla diam sed aliquam. Sed tempor iaculis massa faucibus feugiat. In fermentum facilisis massa, a consequat purus viverra a. Aliquam pellentesque nibh et nibh feugiat gravida. Maecenas ultricies, diam vitae semper placerat, velit risus accumsan nisl, eget tempor lacus est vel nunc. Proin accumsan elit sed neque euismod fringilla. Curabitur lobortis nunc velit,</p>\r\n', 333.00, 'ชิ้น', 'img112069995520180125_110144.png', 'img112069995520180125_110144.png', 555, 10, '2017-08-29 19:50:45');
INSERT INTO `tbl_product` VALUES (14, 5, 'COMPUTER', '<p>COMPUTERCOMPUTERCOMPUTERCOMPUTER</p>\r\n\r\n<p>COMPUTERCOMPUTERCOMPUTERCOMPUTER</p>\r\n', 40000.00, 'รายการ', 'img1152969520020180125_111523.jpg', 'img2152969520020180125_111523.jpg', 0, 10, '2018-01-25 04:15:23');
INSERT INTO `tbl_product` VALUES (15, 5, 'COMPUTER', '<p>COMPUTERCOMPUTERCOMPUTER</p>\r\n', 500000.00, 'ชิ้น', 'img111388822420180125_111649.jpg', 'img211388822420180125_111649.jpg', 3, 10, '2018-01-25 04:16:49');
INSERT INTO `tbl_product` VALUES (16, 1, 'dev dev ', '<p>sfsafasfdsafdsa</p>\r\n', 333.00, 'ชิ้น', 'img1136170471920180221_095909.png', 'img2136170471920180221_095909.png', 7, 10, '2018-02-21 02:59:09');

-- --------------------------------------------------------

-- 
-- Table structure for table `tbl_type`
-- 

CREATE TABLE `tbl_type` (
  `t_id` int(11) NOT NULL auto_increment,
  `t_name` varchar(100) NOT NULL,
  PRIMARY KEY  (`t_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

-- 
-- Dumping data for table `tbl_type`
-- 

INSERT INTO `tbl_type` VALUES (1, 'ประเภท1');
INSERT INTO `tbl_type` VALUES (2, 'ประเภท2');
INSERT INTO `tbl_type` VALUES (3, 'ประเภท3');
INSERT INTO `tbl_type` VALUES (4, 'ประเภท4');
INSERT INTO `tbl_type` VALUES (5, 'ประเภท5');
INSERT INTO `tbl_type` VALUES (6, 'อื่นๆ');
