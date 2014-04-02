-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2014 年 04 月 01 日 23:54
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `kwgl`
--
CREATE DATABASE IF NOT EXISTS `kwgl` DEFAULT CHARACTER SET gb2312 COLLATE gb2312_chinese_ci;
USE `kwgl`;

-- --------------------------------------------------------

--
-- 表的结构 `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` char(10) NOT NULL,
  `company_name` char(20) DEFAULT NULL,
  `location` char(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- 转存表中的数据 `company`
--

INSERT INTO `company` (`id`, `company_name`, `location`) VALUES
('10001', '上海申能', '上海市上中路'),
('10002', '上海新朋', '上海市梅陇路'),
('10003', '上海华理', '上海市天等路'),
('10004', '上海测试', '上海市梅陇路');

-- --------------------------------------------------------

--
-- 表的结构 `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `customerNumber` int(11) DEFAULT NULL,
  `Creditlimit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

-- --------------------------------------------------------

--
-- 表的结构 `dept`
--

CREATE TABLE IF NOT EXISTS `dept` (
  `deptno` char(5) NOT NULL,
  `deptname` char(20) DEFAULT NULL,
  PRIMARY KEY (`deptno`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- 转存表中的数据 `dept`
--

INSERT INTO `dept` (`deptno`, `deptname`) VALUES
('10001', '计算机系'),
('10002', '管理工程系'),
('10003', '化学工程系'),
('10004', '食品加工系'),
('10005', '数学系');

-- --------------------------------------------------------

--
-- 表的结构 `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `sid` char(10) NOT NULL,
  `sname` char(20) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `deptno` char(5) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=gb2312;

--
-- 转存表中的数据 `student`
--

INSERT INTO `student` (`sid`, `sname`, `score`, `deptno`) VALUES
('10130101', '王小杰', 82, '10001'),
('10130102', '黄小捷', 56, '10002'),
('10130103', '宋一波', 87, '10003'),
('10130104', '李二波', 92, '10004'),
('10130105', '刘三波', 85, '10005'),
('10130106', '张小山', 80, '10002'),
('10130107', '王波海', 68, '10004'),
('10130108', '蓝剑生', 75, '10005'),
('10130109', '牛小五', 65, '10005'),
('10130110', '施英杰', 55, '10005');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
