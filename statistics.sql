-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: 2017-03-28 08:37:10
-- 服务器版本： 5.6.35
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `webp2p_stats`
--

-- --------------------------------------------------------

--
-- 表的结构 `aid_table`
--

CREATE TABLE `aid_table` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(120) DEFAULT NULL,
  `a_del` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `bandwidth`
--

CREATE TABLE `bandwidth` (
  `id` int(11) NOT NULL,
  `platid` varchar(45) COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `outputCDNBandwidth` float(10,3) DEFAULT NULL,
  `staticCDNbandwidth` float(10,3) DEFAULT NULL,
  `staticticsP2PBandwidth` float(10,3) DEFAULT NULL,
  `comments` varchar(80) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- 表的结构 `bitrate_dl`
--

CREATE TABLE `bitrate_dl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bitrate_duration_count` int(10) DEFAULT NULL,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_node_times` bigint(20) UNSIGNED DEFAULT NULL,
  `bitrate` int(10) DEFAULT NULL,
  `duration` int(10) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `appid` int(11) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bitrate_duration_dl`
--

CREATE TABLE `bitrate_duration_dl` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bitrate_duration_count` int(10) DEFAULT NULL,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_node_times` bigint(20) UNSIGNED DEFAULT NULL,
  `bitrate` int(10) DEFAULT NULL,
  `duration` int(10) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `appid` int(11) NOT NULL DEFAULT '-1',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bitrate_duration_liv`
--

CREATE TABLE `bitrate_duration_liv` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bitrate_duration_count` int(10) DEFAULT NULL,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_node_times` bigint(20) UNSIGNED DEFAULT NULL,
  `bitrate` int(10) DEFAULT NULL,
  `duration` int(10) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `appid` int(11) NOT NULL DEFAULT '-1',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `bitrate_duration_vod`
--

CREATE TABLE `bitrate_duration_vod` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `bitrate_duration_count` int(10) DEFAULT NULL,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_node_times` bigint(20) UNSIGNED DEFAULT NULL,
  `bitrate` int(10) DEFAULT NULL,
  `duration` int(10) DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `appid` int(11) NOT NULL DEFAULT '-1',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `cdn_statistics`
--

CREATE TABLE `cdn_statistics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `splatid` varchar(45) DEFAULT NULL,
  `CDN_data` float(7,2) DEFAULT '0.00',
  `platid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `chid_table`
--

CREATE TABLE `chid_table` (
  `id` int(11) NOT NULL,
  `ch_name` varchar(120) DEFAULT NULL,
  `ch_del` int(11) DEFAULT '0',
  `remarks` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `group_table`
--

CREATE TABLE `group_table` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `g_name` varchar(120) DEFAULT NULL,
  `g_del` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `idc_type`
--

CREATE TABLE `idc_type` (
  `id` int(11) NOT NULL,
  `ind` int(10) NOT NULL,
  `idc_name` varchar(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `mid_table`
--

CREATE TABLE `mid_table` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `m_name` varchar(120) DEFAULT NULL,
  `m_del` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `node_distri_dl_other`
--

CREATE TABLE `node_distri_dl_other` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `node_rep_count` int(11) UNSIGNED DEFAULT NULL,
  `no_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `zero_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `one_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `two_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `three_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `four_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `five_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `six_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `other_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT '0',
  `methods` int(11) NOT NULL DEFAULT '0',
  `p` int(11) NOT NULL DEFAULT '-1',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `forbid_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `appid` int(11) DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `no_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zero_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `one_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `two_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `three_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `four_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `five_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `six_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `other_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forbid_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `no_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zero_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `one_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `two_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `three_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `four_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `five_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `six_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `other_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forbid_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `node_distri_dl_telecom`
--

CREATE TABLE `node_distri_dl_telecom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `node_rep_count` int(11) UNSIGNED DEFAULT NULL,
  `no_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `zero_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `one_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `two_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `three_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `four_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `five_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `six_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `other_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT '0',
  `methods` int(11) NOT NULL DEFAULT '0',
  `p` int(11) NOT NULL DEFAULT '-1',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `forbid_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `no_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zero_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `one_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `two_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `three_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `four_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `five_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `six_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `other_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forbid_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `no_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zero_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `one_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `two_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `three_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `four_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `five_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `six_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `other_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forbid_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `node_distri_dl_unicom`
--

CREATE TABLE `node_distri_dl_unicom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `node_rep_count` int(11) UNSIGNED DEFAULT NULL,
  `no_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `zero_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `one_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `two_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `three_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `four_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `five_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `six_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `other_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT '0',
  `methods` int(11) NOT NULL DEFAULT '0',
  `p` int(11) NOT NULL DEFAULT '-1',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `forbid_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `no_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zero_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `one_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `two_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `three_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `four_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `five_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `six_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `other_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forbid_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `no_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zero_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `one_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `two_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `three_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `four_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `five_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `six_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `other_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forbid_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `node_distri_liv_other`
--

CREATE TABLE `node_distri_liv_other` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `node_rep_count` int(11) UNSIGNED DEFAULT NULL,
  `no_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `zero_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `one_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `two_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `three_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `four_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `five_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `six_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `other_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT '0',
  `methods` int(11) NOT NULL DEFAULT '0',
  `p` int(11) NOT NULL DEFAULT '-1',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `forbid_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `no_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zero_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `one_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `two_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `three_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `four_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `five_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `six_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `other_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forbid_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `no_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zero_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `one_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `two_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `three_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `four_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `five_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `six_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `other_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forbid_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `node_distri_liv_telecom`
--

CREATE TABLE `node_distri_liv_telecom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `node_rep_count` int(11) UNSIGNED DEFAULT NULL,
  `no_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `zero_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `one_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `two_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `three_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `four_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `five_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `six_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `other_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT '0',
  `methods` int(11) NOT NULL DEFAULT '0',
  `p` int(11) NOT NULL DEFAULT '-1',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `forbid_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `no_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zero_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `one_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `two_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `other_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forbid_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `four_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `five_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `six_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `three_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `no_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zero_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `one_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `two_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `three_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `four_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `five_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `six_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `other_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forbid_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `node_distri_liv_unicom`
--

CREATE TABLE `node_distri_liv_unicom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `node_rep_count` int(11) UNSIGNED DEFAULT NULL,
  `no_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `zero_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `one_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `two_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `three_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `four_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `five_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `six_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `other_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT '0',
  `methods` int(11) NOT NULL DEFAULT '0',
  `p` int(11) NOT NULL DEFAULT '-1',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `forbid_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `no_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zero_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `one_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `two_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `three_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `four_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `five_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `six_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `other_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forbid_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `no_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zero_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `one_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `two_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `three_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `four_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `five_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `six_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `other_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forbid_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `node_distri_vod_other`
--

CREATE TABLE `node_distri_vod_other` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `node_rep_count` int(11) UNSIGNED DEFAULT NULL,
  `no_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `zero_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `one_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `two_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `three_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `four_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `five_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `six_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `other_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT '0',
  `methods` int(11) NOT NULL DEFAULT '0',
  `p` int(11) NOT NULL DEFAULT '-1',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `forbid_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `no_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zero_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `one_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `two_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `three_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `four_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `five_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `six_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `other_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forbid_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `no_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zero_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `one_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `two_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `three_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `four_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `five_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `six_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `other_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forbid_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `node_distri_vod_telecom`
--

CREATE TABLE `node_distri_vod_telecom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `node_rep_count` int(11) UNSIGNED DEFAULT NULL,
  `no_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `zero_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `one_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `two_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `three_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `four_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `five_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `six_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `other_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT '0',
  `methods` int(11) NOT NULL DEFAULT '0',
  `p` int(11) NOT NULL DEFAULT '-1',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `forbid_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `no_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zero_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `one_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `two_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `three_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `four_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `five_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `six_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `other_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forbid_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `no_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zero_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `one_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `two_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `three_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `four_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `five_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `six_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `other_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forbid_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `node_distri_vod_unicom`
--

CREATE TABLE `node_distri_vod_unicom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `node_rep_count` int(11) UNSIGNED DEFAULT NULL,
  `no_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `zero_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `one_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `two_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `three_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `four_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `five_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `six_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `other_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT '0',
  `methods` int(11) NOT NULL DEFAULT '0',
  `p` int(11) NOT NULL DEFAULT '-1',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `forbid_node_heart` int(11) UNSIGNED DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `no_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zero_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `one_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `two_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `three_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `four_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `five_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `six_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `other_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forbid_cde_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `no_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `zero_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `one_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `two_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `three_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `four_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `five_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `six_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `other_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `forbid_all_heart` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `pid_table`
--

CREATE TABLE `pid_table` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `p_name` varchar(120) DEFAULT NULL,
  `p_del` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `pl_data`
--

CREATE TABLE `pl_data` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pl_count` int(10) UNSIGNED DEFAULT NULL,
  `bcnt` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `bcnt_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `act_one` int(10) UNSIGNED DEFAULT NULL,
  `triffic_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `init` int(10) UNSIGNED DEFAULT '0',
  `play` int(10) UNSIGNED DEFAULT '0',
  `block` int(10) UNSIGNED DEFAULT '0',
  `seek` int(10) UNSIGNED DEFAULT '0',
  `tg` int(10) UNSIGNED DEFAULT '0',
  `end` int(10) UNSIGNED DEFAULT '0',
  `version` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `platid` int(3) DEFAULT '0',
  `splatid` int(11) DEFAULT '-1',
  `appid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `reset`
--

CREATE TABLE `reset` (
  `name` varchar(255) NOT NULL,
  `sid` varchar(255) DEFAULT NULL,
  `expired` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `rid_table`
--

CREATE TABLE `rid_table` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_name` varchar(120) DEFAULT NULL,
  `r_del` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `server_data_gather`
--

CREATE TABLE `server_data_gather` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gather_count` bigint(20) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gather_online` int(11) UNSIGNED DEFAULT NULL,
  `idc` int(11) DEFAULT NULL,
  `ser_ip` varchar(17) DEFAULT NULL,
  `ser_port` int(11) DEFAULT NULL,
  `cap` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `server_data_overload`
--

CREATE TABLE `server_data_overload` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `over_count` bigint(20) DEFAULT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `rtmfp` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `lean` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `cde` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `idc` int(11) NOT NULL DEFAULT '0',
  `ser_ip` varchar(17) DEFAULT NULL,
  `ser_port` int(11) NOT NULL DEFAULT '0',
  `cap` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `server_data_rtmfp`
--

CREATE TABLE `server_data_rtmfp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rtmfp_count` bigint(20) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rtmfp_online` int(11) UNSIGNED DEFAULT NULL,
  `idc` int(11) DEFAULT NULL,
  `ser_ip` varchar(17) DEFAULT NULL,
  `ser_port` int(11) DEFAULT NULL,
  `cap` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `server_info`
--

CREATE TABLE `server_info` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Gid` varchar(48) DEFAULT NULL,
  `ip_port` varchar(24) DEFAULT NULL,
  `usr_num` int(10) UNSIGNED DEFAULT NULL,
  `idc` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `share_rate_dl_other`
--

CREATE TABLE `share_rate_dl_other` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `get_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_rtmfp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_cde` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `platid` int(3) NOT NULL DEFAULT '0',
  `splatid` int(11) NOT NULL DEFAULT '-1',
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `version` int(11) DEFAULT '0',
  `share_rep_count` bigint(20) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `p` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `act` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `bcnt` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p201601 VALUES LESS THAN (1454256000) ENGINE=InnoDB,
PARTITION p201602 VALUES LESS THAN (1456761600) ENGINE=InnoDB,
PARTITION p201603 VALUES LESS THAN (1459440000) ENGINE=InnoDB,
PARTITION p201604 VALUES LESS THAN (1462032000) ENGINE=InnoDB,
PARTITION p201605 VALUES LESS THAN (1464710400) ENGINE=InnoDB,
PARTITION p201606 VALUES LESS THAN (1467302400) ENGINE=InnoDB,
PARTITION p201607 VALUES LESS THAN (1469980800) ENGINE=InnoDB,
PARTITION p201608 VALUES LESS THAN (1472659200) ENGINE=InnoDB,
PARTITION p201609 VALUES LESS THAN (1475251200) ENGINE=InnoDB,
PARTITION p201610 VALUES LESS THAN (1477929600) ENGINE=InnoDB,
PARTITION p201611 VALUES LESS THAN (1480521600) ENGINE=InnoDB,
PARTITION p201612 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p201701 VALUES LESS THAN (1485878400) ENGINE=InnoDB,
PARTITION p201702 VALUES LESS THAN (1488297600) ENGINE=InnoDB,
PARTITION p201703 VALUES LESS THAN (1490976000) ENGINE=InnoDB,
PARTITION p201704 VALUES LESS THAN (1493568000) ENGINE=InnoDB,
PARTITION p201705 VALUES LESS THAN (1496246400) ENGINE=InnoDB,
PARTITION p201706 VALUES LESS THAN (1498838400) ENGINE=InnoDB,
PARTITION p201707 VALUES LESS THAN (1501516800) ENGINE=InnoDB,
PARTITION p201708 VALUES LESS THAN (1504195200) ENGINE=InnoDB,
PARTITION p201709 VALUES LESS THAN (1506787200) ENGINE=InnoDB,
PARTITION p201710 VALUES LESS THAN (1509465600) ENGINE=InnoDB,
PARTITION p201711 VALUES LESS THAN (1512057600) ENGINE=InnoDB,
PARTITION p201712 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p201801 VALUES LESS THAN (1517414400) ENGINE=InnoDB,
PARTITION p201802 VALUES LESS THAN (1519833600) ENGINE=InnoDB,
PARTITION p201803 VALUES LESS THAN (1522512000) ENGINE=InnoDB,
PARTITION p201804 VALUES LESS THAN (1525104000) ENGINE=InnoDB,
PARTITION p201805 VALUES LESS THAN (1527782400) ENGINE=InnoDB,
PARTITION p201806 VALUES LESS THAN (1530374400) ENGINE=InnoDB,
PARTITION p201807 VALUES LESS THAN (1533052800) ENGINE=InnoDB,
PARTITION p201808 VALUES LESS THAN (1535731200) ENGINE=InnoDB,
PARTITION p201809 VALUES LESS THAN (1538323200) ENGINE=InnoDB,
PARTITION p201810 VALUES LESS THAN (1541001600) ENGINE=InnoDB,
PARTITION p201811 VALUES LESS THAN (1543593600) ENGINE=InnoDB,
PARTITION p201812 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p201901 VALUES LESS THAN (1548950400) ENGINE=InnoDB,
PARTITION p201902 VALUES LESS THAN (1551369600) ENGINE=InnoDB,
PARTITION p201903 VALUES LESS THAN (1554048000) ENGINE=InnoDB,
PARTITION p201904 VALUES LESS THAN (1556640000) ENGINE=InnoDB,
PARTITION p201905 VALUES LESS THAN (1559318400) ENGINE=InnoDB,
PARTITION p201906 VALUES LESS THAN (1561910400) ENGINE=InnoDB,
PARTITION p201907 VALUES LESS THAN (1564588800) ENGINE=InnoDB,
PARTITION p201908 VALUES LESS THAN (1567267200) ENGINE=InnoDB,
PARTITION p201909 VALUES LESS THAN (1569859200) ENGINE=InnoDB,
PARTITION p201910 VALUES LESS THAN (1572537600) ENGINE=InnoDB,
PARTITION p201911 VALUES LESS THAN (1575129600) ENGINE=InnoDB,
PARTITION p201912 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `share_rate_dl_telecom`
--

CREATE TABLE `share_rate_dl_telecom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_rtmfp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_cde` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `get_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `platid` int(3) NOT NULL DEFAULT '0',
  `splatid` int(11) NOT NULL DEFAULT '-1',
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `version` int(11) DEFAULT '0',
  `share_rep_count` bigint(20) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `p` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `act` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `bcnt` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p201601 VALUES LESS THAN (1454256000) ENGINE=InnoDB,
PARTITION p201602 VALUES LESS THAN (1456761600) ENGINE=InnoDB,
PARTITION p201603 VALUES LESS THAN (1459440000) ENGINE=InnoDB,
PARTITION p201604 VALUES LESS THAN (1462032000) ENGINE=InnoDB,
PARTITION p201605 VALUES LESS THAN (1464710400) ENGINE=InnoDB,
PARTITION p201606 VALUES LESS THAN (1467302400) ENGINE=InnoDB,
PARTITION p201607 VALUES LESS THAN (1469980800) ENGINE=InnoDB,
PARTITION p201608 VALUES LESS THAN (1472659200) ENGINE=InnoDB,
PARTITION p201609 VALUES LESS THAN (1475251200) ENGINE=InnoDB,
PARTITION p201610 VALUES LESS THAN (1477929600) ENGINE=InnoDB,
PARTITION p201611 VALUES LESS THAN (1480521600) ENGINE=InnoDB,
PARTITION p201612 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p201701 VALUES LESS THAN (1485878400) ENGINE=InnoDB,
PARTITION p201702 VALUES LESS THAN (1488297600) ENGINE=InnoDB,
PARTITION p201703 VALUES LESS THAN (1490976000) ENGINE=InnoDB,
PARTITION p201704 VALUES LESS THAN (1493568000) ENGINE=InnoDB,
PARTITION p201705 VALUES LESS THAN (1496246400) ENGINE=InnoDB,
PARTITION p201706 VALUES LESS THAN (1498838400) ENGINE=InnoDB,
PARTITION p201707 VALUES LESS THAN (1501516800) ENGINE=InnoDB,
PARTITION p201708 VALUES LESS THAN (1504195200) ENGINE=InnoDB,
PARTITION p201709 VALUES LESS THAN (1506787200) ENGINE=InnoDB,
PARTITION p201710 VALUES LESS THAN (1509465600) ENGINE=InnoDB,
PARTITION p201711 VALUES LESS THAN (1512057600) ENGINE=InnoDB,
PARTITION p201712 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p201801 VALUES LESS THAN (1517414400) ENGINE=InnoDB,
PARTITION p201802 VALUES LESS THAN (1519833600) ENGINE=InnoDB,
PARTITION p201803 VALUES LESS THAN (1522512000) ENGINE=InnoDB,
PARTITION p201804 VALUES LESS THAN (1525104000) ENGINE=InnoDB,
PARTITION p201805 VALUES LESS THAN (1527782400) ENGINE=InnoDB,
PARTITION p201806 VALUES LESS THAN (1530374400) ENGINE=InnoDB,
PARTITION p201807 VALUES LESS THAN (1533052800) ENGINE=InnoDB,
PARTITION p201808 VALUES LESS THAN (1535731200) ENGINE=InnoDB,
PARTITION p201809 VALUES LESS THAN (1538323200) ENGINE=InnoDB,
PARTITION p201810 VALUES LESS THAN (1541001600) ENGINE=InnoDB,
PARTITION p201811 VALUES LESS THAN (1543593600) ENGINE=InnoDB,
PARTITION p201812 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p201901 VALUES LESS THAN (1548950400) ENGINE=InnoDB,
PARTITION p201902 VALUES LESS THAN (1551369600) ENGINE=InnoDB,
PARTITION p201903 VALUES LESS THAN (1554048000) ENGINE=InnoDB,
PARTITION p201904 VALUES LESS THAN (1556640000) ENGINE=InnoDB,
PARTITION p201905 VALUES LESS THAN (1559318400) ENGINE=InnoDB,
PARTITION p201906 VALUES LESS THAN (1561910400) ENGINE=InnoDB,
PARTITION p201907 VALUES LESS THAN (1564588800) ENGINE=InnoDB,
PARTITION p201908 VALUES LESS THAN (1567267200) ENGINE=InnoDB,
PARTITION p201909 VALUES LESS THAN (1569859200) ENGINE=InnoDB,
PARTITION p201910 VALUES LESS THAN (1572537600) ENGINE=InnoDB,
PARTITION p201911 VALUES LESS THAN (1575129600) ENGINE=InnoDB,
PARTITION p201912 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `share_rate_dl_unicom`
--

CREATE TABLE `share_rate_dl_unicom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `platid` int(3) NOT NULL DEFAULT '0',
  `splatid` int(11) NOT NULL DEFAULT '-1',
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `version` int(11) DEFAULT '0',
  `share_rep_count` bigint(20) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `p` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_rtmfp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_cde` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `act` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `bcnt` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p201601 VALUES LESS THAN (1454256000) ENGINE=InnoDB,
PARTITION p201602 VALUES LESS THAN (1456761600) ENGINE=InnoDB,
PARTITION p201603 VALUES LESS THAN (1459440000) ENGINE=InnoDB,
PARTITION p201604 VALUES LESS THAN (1462032000) ENGINE=InnoDB,
PARTITION p201605 VALUES LESS THAN (1464710400) ENGINE=InnoDB,
PARTITION p201606 VALUES LESS THAN (1467302400) ENGINE=InnoDB,
PARTITION p201607 VALUES LESS THAN (1469980800) ENGINE=InnoDB,
PARTITION p201608 VALUES LESS THAN (1472659200) ENGINE=InnoDB,
PARTITION p201609 VALUES LESS THAN (1475251200) ENGINE=InnoDB,
PARTITION p201610 VALUES LESS THAN (1477929600) ENGINE=InnoDB,
PARTITION p201611 VALUES LESS THAN (1480521600) ENGINE=InnoDB,
PARTITION p201612 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p201701 VALUES LESS THAN (1485878400) ENGINE=InnoDB,
PARTITION p201702 VALUES LESS THAN (1488297600) ENGINE=InnoDB,
PARTITION p201703 VALUES LESS THAN (1490976000) ENGINE=InnoDB,
PARTITION p201704 VALUES LESS THAN (1493568000) ENGINE=InnoDB,
PARTITION p201705 VALUES LESS THAN (1496246400) ENGINE=InnoDB,
PARTITION p201706 VALUES LESS THAN (1498838400) ENGINE=InnoDB,
PARTITION p201707 VALUES LESS THAN (1501516800) ENGINE=InnoDB,
PARTITION p201708 VALUES LESS THAN (1504195200) ENGINE=InnoDB,
PARTITION p201709 VALUES LESS THAN (1506787200) ENGINE=InnoDB,
PARTITION p201710 VALUES LESS THAN (1509465600) ENGINE=InnoDB,
PARTITION p201711 VALUES LESS THAN (1512057600) ENGINE=InnoDB,
PARTITION p201712 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p201801 VALUES LESS THAN (1517414400) ENGINE=InnoDB,
PARTITION p201802 VALUES LESS THAN (1519833600) ENGINE=InnoDB,
PARTITION p201803 VALUES LESS THAN (1522512000) ENGINE=InnoDB,
PARTITION p201804 VALUES LESS THAN (1525104000) ENGINE=InnoDB,
PARTITION p201805 VALUES LESS THAN (1527782400) ENGINE=InnoDB,
PARTITION p201806 VALUES LESS THAN (1530374400) ENGINE=InnoDB,
PARTITION p201807 VALUES LESS THAN (1533052800) ENGINE=InnoDB,
PARTITION p201808 VALUES LESS THAN (1535731200) ENGINE=InnoDB,
PARTITION p201809 VALUES LESS THAN (1538323200) ENGINE=InnoDB,
PARTITION p201810 VALUES LESS THAN (1541001600) ENGINE=InnoDB,
PARTITION p201811 VALUES LESS THAN (1543593600) ENGINE=InnoDB,
PARTITION p201812 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p201901 VALUES LESS THAN (1548950400) ENGINE=InnoDB,
PARTITION p201902 VALUES LESS THAN (1551369600) ENGINE=InnoDB,
PARTITION p201903 VALUES LESS THAN (1554048000) ENGINE=InnoDB,
PARTITION p201904 VALUES LESS THAN (1556640000) ENGINE=InnoDB,
PARTITION p201905 VALUES LESS THAN (1559318400) ENGINE=InnoDB,
PARTITION p201906 VALUES LESS THAN (1561910400) ENGINE=InnoDB,
PARTITION p201907 VALUES LESS THAN (1564588800) ENGINE=InnoDB,
PARTITION p201908 VALUES LESS THAN (1567267200) ENGINE=InnoDB,
PARTITION p201909 VALUES LESS THAN (1569859200) ENGINE=InnoDB,
PARTITION p201910 VALUES LESS THAN (1572537600) ENGINE=InnoDB,
PARTITION p201911 VALUES LESS THAN (1575129600) ENGINE=InnoDB,
PARTITION p201912 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `share_rate_liv_other`
--

CREATE TABLE `share_rate_liv_other` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `get_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_rtmfp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_cde` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `platid` int(3) NOT NULL DEFAULT '0',
  `splatid` int(11) NOT NULL DEFAULT '-1',
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `version` int(11) DEFAULT '0',
  `share_rep_count` bigint(20) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `p` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `act` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `bcnt` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p201604 VALUES LESS THAN (1462032000) ENGINE=InnoDB,
PARTITION p201605 VALUES LESS THAN (1464710400) ENGINE=InnoDB,
PARTITION p201606 VALUES LESS THAN (1467302400) ENGINE=InnoDB,
PARTITION p201607 VALUES LESS THAN (1469980800) ENGINE=InnoDB,
PARTITION p201608 VALUES LESS THAN (1472659200) ENGINE=InnoDB,
PARTITION p201609 VALUES LESS THAN (1475251200) ENGINE=InnoDB,
PARTITION p201610 VALUES LESS THAN (1477929600) ENGINE=InnoDB,
PARTITION p201611 VALUES LESS THAN (1480521600) ENGINE=InnoDB,
PARTITION p201612 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p201701 VALUES LESS THAN (1485878400) ENGINE=InnoDB,
PARTITION p201702 VALUES LESS THAN (1488297600) ENGINE=InnoDB,
PARTITION p201703 VALUES LESS THAN (1490976000) ENGINE=InnoDB,
PARTITION p201704 VALUES LESS THAN (1493568000) ENGINE=InnoDB,
PARTITION p201705 VALUES LESS THAN (1496246400) ENGINE=InnoDB,
PARTITION p201706 VALUES LESS THAN (1498838400) ENGINE=InnoDB,
PARTITION p201707 VALUES LESS THAN (1501516800) ENGINE=InnoDB,
PARTITION p201708 VALUES LESS THAN (1504195200) ENGINE=InnoDB,
PARTITION p201709 VALUES LESS THAN (1506787200) ENGINE=InnoDB,
PARTITION p201710 VALUES LESS THAN (1509465600) ENGINE=InnoDB,
PARTITION p201711 VALUES LESS THAN (1512057600) ENGINE=InnoDB,
PARTITION p201712 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p201801 VALUES LESS THAN (1517414400) ENGINE=InnoDB,
PARTITION p201802 VALUES LESS THAN (1519833600) ENGINE=InnoDB,
PARTITION p201803 VALUES LESS THAN (1522512000) ENGINE=InnoDB,
PARTITION p201804 VALUES LESS THAN (1525104000) ENGINE=InnoDB,
PARTITION p201805 VALUES LESS THAN (1527782400) ENGINE=InnoDB,
PARTITION p201806 VALUES LESS THAN (1530374400) ENGINE=InnoDB,
PARTITION p201807 VALUES LESS THAN (1533052800) ENGINE=InnoDB,
PARTITION p201808 VALUES LESS THAN (1535731200) ENGINE=InnoDB,
PARTITION p201809 VALUES LESS THAN (1538323200) ENGINE=InnoDB,
PARTITION p201810 VALUES LESS THAN (1541001600) ENGINE=InnoDB,
PARTITION p201811 VALUES LESS THAN (1543593600) ENGINE=InnoDB,
PARTITION p201812 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p201901 VALUES LESS THAN (1548950400) ENGINE=InnoDB,
PARTITION p201902 VALUES LESS THAN (1551369600) ENGINE=InnoDB,
PARTITION p201903 VALUES LESS THAN (1554048000) ENGINE=InnoDB,
PARTITION p201904 VALUES LESS THAN (1556640000) ENGINE=InnoDB,
PARTITION p201905 VALUES LESS THAN (1559318400) ENGINE=InnoDB,
PARTITION p201906 VALUES LESS THAN (1561910400) ENGINE=InnoDB,
PARTITION p201907 VALUES LESS THAN (1564588800) ENGINE=InnoDB,
PARTITION p201908 VALUES LESS THAN (1567267200) ENGINE=InnoDB,
PARTITION p201909 VALUES LESS THAN (1569859200) ENGINE=InnoDB,
PARTITION p201910 VALUES LESS THAN (1572537600) ENGINE=InnoDB,
PARTITION p201911 VALUES LESS THAN (1575129600) ENGINE=InnoDB,
PARTITION p201912 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `share_rate_liv_other_20160505`
--

CREATE TABLE `share_rate_liv_other_20160505` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `get_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_rtmfp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_cde` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `platid` int(3) NOT NULL DEFAULT '0',
  `splatid` int(11) NOT NULL DEFAULT '-1',
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `version` int(11) DEFAULT '0',
  `share_rep_count` bigint(20) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `p` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `act` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `bcnt` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p201601 VALUES LESS THAN (1454256000) ENGINE=InnoDB,
PARTITION p201602 VALUES LESS THAN (1456761600) ENGINE=InnoDB,
PARTITION p201603 VALUES LESS THAN (1459440000) ENGINE=InnoDB,
PARTITION p201604 VALUES LESS THAN (1462032000) ENGINE=InnoDB,
PARTITION p201605 VALUES LESS THAN (1464710400) ENGINE=InnoDB,
PARTITION p201606 VALUES LESS THAN (1467302400) ENGINE=InnoDB,
PARTITION p201607 VALUES LESS THAN (1469980800) ENGINE=InnoDB,
PARTITION p201608 VALUES LESS THAN (1472659200) ENGINE=InnoDB,
PARTITION p201609 VALUES LESS THAN (1475251200) ENGINE=InnoDB,
PARTITION p201610 VALUES LESS THAN (1477929600) ENGINE=InnoDB,
PARTITION p201611 VALUES LESS THAN (1480521600) ENGINE=InnoDB,
PARTITION p201612 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p201701 VALUES LESS THAN (1485878400) ENGINE=InnoDB,
PARTITION p201702 VALUES LESS THAN (1488297600) ENGINE=InnoDB,
PARTITION p201703 VALUES LESS THAN (1490976000) ENGINE=InnoDB,
PARTITION p201704 VALUES LESS THAN (1493568000) ENGINE=InnoDB,
PARTITION p201705 VALUES LESS THAN (1496246400) ENGINE=InnoDB,
PARTITION p201706 VALUES LESS THAN (1498838400) ENGINE=InnoDB,
PARTITION p201707 VALUES LESS THAN (1501516800) ENGINE=InnoDB,
PARTITION p201708 VALUES LESS THAN (1504195200) ENGINE=InnoDB,
PARTITION p201709 VALUES LESS THAN (1506787200) ENGINE=InnoDB,
PARTITION p201710 VALUES LESS THAN (1509465600) ENGINE=InnoDB,
PARTITION p201711 VALUES LESS THAN (1512057600) ENGINE=InnoDB,
PARTITION p201712 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p201801 VALUES LESS THAN (1517414400) ENGINE=InnoDB,
PARTITION p201802 VALUES LESS THAN (1519833600) ENGINE=InnoDB,
PARTITION p201803 VALUES LESS THAN (1522512000) ENGINE=InnoDB,
PARTITION p201804 VALUES LESS THAN (1525104000) ENGINE=InnoDB,
PARTITION p201805 VALUES LESS THAN (1527782400) ENGINE=InnoDB,
PARTITION p201806 VALUES LESS THAN (1530374400) ENGINE=InnoDB,
PARTITION p201807 VALUES LESS THAN (1533052800) ENGINE=InnoDB,
PARTITION p201808 VALUES LESS THAN (1535731200) ENGINE=InnoDB,
PARTITION p201809 VALUES LESS THAN (1538323200) ENGINE=InnoDB,
PARTITION p201810 VALUES LESS THAN (1541001600) ENGINE=InnoDB,
PARTITION p201811 VALUES LESS THAN (1543593600) ENGINE=InnoDB,
PARTITION p201812 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p201901 VALUES LESS THAN (1548950400) ENGINE=InnoDB,
PARTITION p201902 VALUES LESS THAN (1551369600) ENGINE=InnoDB,
PARTITION p201903 VALUES LESS THAN (1554048000) ENGINE=InnoDB,
PARTITION p201904 VALUES LESS THAN (1556640000) ENGINE=InnoDB,
PARTITION p201905 VALUES LESS THAN (1559318400) ENGINE=InnoDB,
PARTITION p201906 VALUES LESS THAN (1561910400) ENGINE=InnoDB,
PARTITION p201907 VALUES LESS THAN (1564588800) ENGINE=InnoDB,
PARTITION p201908 VALUES LESS THAN (1567267200) ENGINE=InnoDB,
PARTITION p201909 VALUES LESS THAN (1569859200) ENGINE=InnoDB,
PARTITION p201910 VALUES LESS THAN (1572537600) ENGINE=InnoDB,
PARTITION p201911 VALUES LESS THAN (1575129600) ENGINE=InnoDB,
PARTITION p201912 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `share_rate_liv_telecom`
--

CREATE TABLE `share_rate_liv_telecom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `get_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_rtmfp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_cde` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `platid` int(3) NOT NULL DEFAULT '0',
  `splatid` int(11) NOT NULL DEFAULT '-1',
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `version` int(11) DEFAULT '0',
  `share_rep_count` bigint(20) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `p` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `act` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `bcnt` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p201604 VALUES LESS THAN (1462032000) ENGINE=InnoDB,
PARTITION p201605 VALUES LESS THAN (1464710400) ENGINE=InnoDB,
PARTITION p201606 VALUES LESS THAN (1467302400) ENGINE=InnoDB,
PARTITION p201607 VALUES LESS THAN (1469980800) ENGINE=InnoDB,
PARTITION p201608 VALUES LESS THAN (1472659200) ENGINE=InnoDB,
PARTITION p201609 VALUES LESS THAN (1475251200) ENGINE=InnoDB,
PARTITION p201610 VALUES LESS THAN (1477929600) ENGINE=InnoDB,
PARTITION p201611 VALUES LESS THAN (1480521600) ENGINE=InnoDB,
PARTITION p201612 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p201701 VALUES LESS THAN (1485878400) ENGINE=InnoDB,
PARTITION p201702 VALUES LESS THAN (1488297600) ENGINE=InnoDB,
PARTITION p201703 VALUES LESS THAN (1490976000) ENGINE=InnoDB,
PARTITION p201704 VALUES LESS THAN (1493568000) ENGINE=InnoDB,
PARTITION p201705 VALUES LESS THAN (1496246400) ENGINE=InnoDB,
PARTITION p201706 VALUES LESS THAN (1498838400) ENGINE=InnoDB,
PARTITION p201707 VALUES LESS THAN (1501516800) ENGINE=InnoDB,
PARTITION p201708 VALUES LESS THAN (1504195200) ENGINE=InnoDB,
PARTITION p201709 VALUES LESS THAN (1506787200) ENGINE=InnoDB,
PARTITION p201710 VALUES LESS THAN (1509465600) ENGINE=InnoDB,
PARTITION p201711 VALUES LESS THAN (1512057600) ENGINE=InnoDB,
PARTITION p201712 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p201801 VALUES LESS THAN (1517414400) ENGINE=InnoDB,
PARTITION p201802 VALUES LESS THAN (1519833600) ENGINE=InnoDB,
PARTITION p201803 VALUES LESS THAN (1522512000) ENGINE=InnoDB,
PARTITION p201804 VALUES LESS THAN (1525104000) ENGINE=InnoDB,
PARTITION p201805 VALUES LESS THAN (1527782400) ENGINE=InnoDB,
PARTITION p201806 VALUES LESS THAN (1530374400) ENGINE=InnoDB,
PARTITION p201807 VALUES LESS THAN (1533052800) ENGINE=InnoDB,
PARTITION p201808 VALUES LESS THAN (1535731200) ENGINE=InnoDB,
PARTITION p201809 VALUES LESS THAN (1538323200) ENGINE=InnoDB,
PARTITION p201810 VALUES LESS THAN (1541001600) ENGINE=InnoDB,
PARTITION p201811 VALUES LESS THAN (1543593600) ENGINE=InnoDB,
PARTITION p201812 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p201901 VALUES LESS THAN (1548950400) ENGINE=InnoDB,
PARTITION p201902 VALUES LESS THAN (1551369600) ENGINE=InnoDB,
PARTITION p201903 VALUES LESS THAN (1554048000) ENGINE=InnoDB,
PARTITION p201904 VALUES LESS THAN (1556640000) ENGINE=InnoDB,
PARTITION p201905 VALUES LESS THAN (1559318400) ENGINE=InnoDB,
PARTITION p201906 VALUES LESS THAN (1561910400) ENGINE=InnoDB,
PARTITION p201907 VALUES LESS THAN (1564588800) ENGINE=InnoDB,
PARTITION p201908 VALUES LESS THAN (1567267200) ENGINE=InnoDB,
PARTITION p201909 VALUES LESS THAN (1569859200) ENGINE=InnoDB,
PARTITION p201910 VALUES LESS THAN (1572537600) ENGINE=InnoDB,
PARTITION p201911 VALUES LESS THAN (1575129600) ENGINE=InnoDB,
PARTITION p201912 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `share_rate_liv_telecom_20160505`
--

CREATE TABLE `share_rate_liv_telecom_20160505` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `get_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_rtmfp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_cde` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `platid` int(3) NOT NULL DEFAULT '0',
  `splatid` int(11) NOT NULL DEFAULT '-1',
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `version` int(11) DEFAULT '0',
  `share_rep_count` bigint(20) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `p` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `act` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `bcnt` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p201601 VALUES LESS THAN (1454256000) ENGINE=InnoDB,
PARTITION p201602 VALUES LESS THAN (1456761600) ENGINE=InnoDB,
PARTITION p201603 VALUES LESS THAN (1459440000) ENGINE=InnoDB,
PARTITION p201604 VALUES LESS THAN (1462032000) ENGINE=InnoDB,
PARTITION p201605 VALUES LESS THAN (1464710400) ENGINE=InnoDB,
PARTITION p201606 VALUES LESS THAN (1467302400) ENGINE=InnoDB,
PARTITION p201607 VALUES LESS THAN (1469980800) ENGINE=InnoDB,
PARTITION p201608 VALUES LESS THAN (1472659200) ENGINE=InnoDB,
PARTITION p201609 VALUES LESS THAN (1475251200) ENGINE=InnoDB,
PARTITION p201610 VALUES LESS THAN (1477929600) ENGINE=InnoDB,
PARTITION p201611 VALUES LESS THAN (1480521600) ENGINE=InnoDB,
PARTITION p201612 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p201701 VALUES LESS THAN (1485878400) ENGINE=InnoDB,
PARTITION p201702 VALUES LESS THAN (1488297600) ENGINE=InnoDB,
PARTITION p201703 VALUES LESS THAN (1490976000) ENGINE=InnoDB,
PARTITION p201704 VALUES LESS THAN (1493568000) ENGINE=InnoDB,
PARTITION p201705 VALUES LESS THAN (1496246400) ENGINE=InnoDB,
PARTITION p201706 VALUES LESS THAN (1498838400) ENGINE=InnoDB,
PARTITION p201707 VALUES LESS THAN (1501516800) ENGINE=InnoDB,
PARTITION p201708 VALUES LESS THAN (1504195200) ENGINE=InnoDB,
PARTITION p201709 VALUES LESS THAN (1506787200) ENGINE=InnoDB,
PARTITION p201710 VALUES LESS THAN (1509465600) ENGINE=InnoDB,
PARTITION p201711 VALUES LESS THAN (1512057600) ENGINE=InnoDB,
PARTITION p201712 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p201801 VALUES LESS THAN (1517414400) ENGINE=InnoDB,
PARTITION p201802 VALUES LESS THAN (1519833600) ENGINE=InnoDB,
PARTITION p201803 VALUES LESS THAN (1522512000) ENGINE=InnoDB,
PARTITION p201804 VALUES LESS THAN (1525104000) ENGINE=InnoDB,
PARTITION p201805 VALUES LESS THAN (1527782400) ENGINE=InnoDB,
PARTITION p201806 VALUES LESS THAN (1530374400) ENGINE=InnoDB,
PARTITION p201807 VALUES LESS THAN (1533052800) ENGINE=InnoDB,
PARTITION p201808 VALUES LESS THAN (1535731200) ENGINE=InnoDB,
PARTITION p201809 VALUES LESS THAN (1538323200) ENGINE=InnoDB,
PARTITION p201810 VALUES LESS THAN (1541001600) ENGINE=InnoDB,
PARTITION p201811 VALUES LESS THAN (1543593600) ENGINE=InnoDB,
PARTITION p201812 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p201901 VALUES LESS THAN (1548950400) ENGINE=InnoDB,
PARTITION p201902 VALUES LESS THAN (1551369600) ENGINE=InnoDB,
PARTITION p201903 VALUES LESS THAN (1554048000) ENGINE=InnoDB,
PARTITION p201904 VALUES LESS THAN (1556640000) ENGINE=InnoDB,
PARTITION p201905 VALUES LESS THAN (1559318400) ENGINE=InnoDB,
PARTITION p201906 VALUES LESS THAN (1561910400) ENGINE=InnoDB,
PARTITION p201907 VALUES LESS THAN (1564588800) ENGINE=InnoDB,
PARTITION p201908 VALUES LESS THAN (1567267200) ENGINE=InnoDB,
PARTITION p201909 VALUES LESS THAN (1569859200) ENGINE=InnoDB,
PARTITION p201910 VALUES LESS THAN (1572537600) ENGINE=InnoDB,
PARTITION p201911 VALUES LESS THAN (1575129600) ENGINE=InnoDB,
PARTITION p201912 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `share_rate_liv_unicom`
--

CREATE TABLE `share_rate_liv_unicom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(2) DEFAULT NULL,
  `platid` int(3) NOT NULL DEFAULT '0',
  `splatid` int(11) NOT NULL DEFAULT '-1',
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `version` int(11) DEFAULT '0',
  `share_rep_count` bigint(20) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `p` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_rtmfp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_cde` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `act` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `bcnt` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p201604 VALUES LESS THAN (1462032000) ENGINE=InnoDB,
PARTITION p201605 VALUES LESS THAN (1464710400) ENGINE=InnoDB,
PARTITION p201606 VALUES LESS THAN (1467302400) ENGINE=InnoDB,
PARTITION p201607 VALUES LESS THAN (1469980800) ENGINE=InnoDB,
PARTITION p201608 VALUES LESS THAN (1472659200) ENGINE=InnoDB,
PARTITION p201609 VALUES LESS THAN (1475251200) ENGINE=InnoDB,
PARTITION p201610 VALUES LESS THAN (1477929600) ENGINE=InnoDB,
PARTITION p201611 VALUES LESS THAN (1480521600) ENGINE=InnoDB,
PARTITION p201612 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p201701 VALUES LESS THAN (1485878400) ENGINE=InnoDB,
PARTITION p201702 VALUES LESS THAN (1488297600) ENGINE=InnoDB,
PARTITION p201703 VALUES LESS THAN (1490976000) ENGINE=InnoDB,
PARTITION p201704 VALUES LESS THAN (1493568000) ENGINE=InnoDB,
PARTITION p201705 VALUES LESS THAN (1496246400) ENGINE=InnoDB,
PARTITION p201706 VALUES LESS THAN (1498838400) ENGINE=InnoDB,
PARTITION p201707 VALUES LESS THAN (1501516800) ENGINE=InnoDB,
PARTITION p201708 VALUES LESS THAN (1504195200) ENGINE=InnoDB,
PARTITION p201709 VALUES LESS THAN (1506787200) ENGINE=InnoDB,
PARTITION p201710 VALUES LESS THAN (1509465600) ENGINE=InnoDB,
PARTITION p201711 VALUES LESS THAN (1512057600) ENGINE=InnoDB,
PARTITION p201712 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p201801 VALUES LESS THAN (1517414400) ENGINE=InnoDB,
PARTITION p201802 VALUES LESS THAN (1519833600) ENGINE=InnoDB,
PARTITION p201803 VALUES LESS THAN (1522512000) ENGINE=InnoDB,
PARTITION p201804 VALUES LESS THAN (1525104000) ENGINE=InnoDB,
PARTITION p201805 VALUES LESS THAN (1527782400) ENGINE=InnoDB,
PARTITION p201806 VALUES LESS THAN (1530374400) ENGINE=InnoDB,
PARTITION p201807 VALUES LESS THAN (1533052800) ENGINE=InnoDB,
PARTITION p201808 VALUES LESS THAN (1535731200) ENGINE=InnoDB,
PARTITION p201809 VALUES LESS THAN (1538323200) ENGINE=InnoDB,
PARTITION p201810 VALUES LESS THAN (1541001600) ENGINE=InnoDB,
PARTITION p201811 VALUES LESS THAN (1543593600) ENGINE=InnoDB,
PARTITION p201812 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p201901 VALUES LESS THAN (1548950400) ENGINE=InnoDB,
PARTITION p201902 VALUES LESS THAN (1551369600) ENGINE=InnoDB,
PARTITION p201903 VALUES LESS THAN (1554048000) ENGINE=InnoDB,
PARTITION p201904 VALUES LESS THAN (1556640000) ENGINE=InnoDB,
PARTITION p201905 VALUES LESS THAN (1559318400) ENGINE=InnoDB,
PARTITION p201906 VALUES LESS THAN (1561910400) ENGINE=InnoDB,
PARTITION p201907 VALUES LESS THAN (1564588800) ENGINE=InnoDB,
PARTITION p201908 VALUES LESS THAN (1567267200) ENGINE=InnoDB,
PARTITION p201909 VALUES LESS THAN (1569859200) ENGINE=InnoDB,
PARTITION p201910 VALUES LESS THAN (1572537600) ENGINE=InnoDB,
PARTITION p201911 VALUES LESS THAN (1575129600) ENGINE=InnoDB,
PARTITION p201912 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `share_rate_liv_unicom_20160505`
--

CREATE TABLE `share_rate_liv_unicom_20160505` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(2) DEFAULT NULL,
  `platid` int(3) NOT NULL DEFAULT '0',
  `splatid` int(11) NOT NULL DEFAULT '-1',
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `version` int(11) DEFAULT '0',
  `share_rep_count` bigint(20) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `p` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_rtmfp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_cde` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `act` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `bcnt` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p201601 VALUES LESS THAN (1454256000) ENGINE=InnoDB,
PARTITION p201602 VALUES LESS THAN (1456761600) ENGINE=InnoDB,
PARTITION p201603 VALUES LESS THAN (1459440000) ENGINE=InnoDB,
PARTITION p201604 VALUES LESS THAN (1462032000) ENGINE=InnoDB,
PARTITION p201605 VALUES LESS THAN (1464710400) ENGINE=InnoDB,
PARTITION p201606 VALUES LESS THAN (1467302400) ENGINE=InnoDB,
PARTITION p201607 VALUES LESS THAN (1469980800) ENGINE=InnoDB,
PARTITION p201608 VALUES LESS THAN (1472659200) ENGINE=InnoDB,
PARTITION p201609 VALUES LESS THAN (1475251200) ENGINE=InnoDB,
PARTITION p201610 VALUES LESS THAN (1477929600) ENGINE=InnoDB,
PARTITION p201611 VALUES LESS THAN (1480521600) ENGINE=InnoDB,
PARTITION p201612 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p201701 VALUES LESS THAN (1485878400) ENGINE=InnoDB,
PARTITION p201702 VALUES LESS THAN (1488297600) ENGINE=InnoDB,
PARTITION p201703 VALUES LESS THAN (1490976000) ENGINE=InnoDB,
PARTITION p201704 VALUES LESS THAN (1493568000) ENGINE=InnoDB,
PARTITION p201705 VALUES LESS THAN (1496246400) ENGINE=InnoDB,
PARTITION p201706 VALUES LESS THAN (1498838400) ENGINE=InnoDB,
PARTITION p201707 VALUES LESS THAN (1501516800) ENGINE=InnoDB,
PARTITION p201708 VALUES LESS THAN (1504195200) ENGINE=InnoDB,
PARTITION p201709 VALUES LESS THAN (1506787200) ENGINE=InnoDB,
PARTITION p201710 VALUES LESS THAN (1509465600) ENGINE=InnoDB,
PARTITION p201711 VALUES LESS THAN (1512057600) ENGINE=InnoDB,
PARTITION p201712 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p201801 VALUES LESS THAN (1517414400) ENGINE=InnoDB,
PARTITION p201802 VALUES LESS THAN (1519833600) ENGINE=InnoDB,
PARTITION p201803 VALUES LESS THAN (1522512000) ENGINE=InnoDB,
PARTITION p201804 VALUES LESS THAN (1525104000) ENGINE=InnoDB,
PARTITION p201805 VALUES LESS THAN (1527782400) ENGINE=InnoDB,
PARTITION p201806 VALUES LESS THAN (1530374400) ENGINE=InnoDB,
PARTITION p201807 VALUES LESS THAN (1533052800) ENGINE=InnoDB,
PARTITION p201808 VALUES LESS THAN (1535731200) ENGINE=InnoDB,
PARTITION p201809 VALUES LESS THAN (1538323200) ENGINE=InnoDB,
PARTITION p201810 VALUES LESS THAN (1541001600) ENGINE=InnoDB,
PARTITION p201811 VALUES LESS THAN (1543593600) ENGINE=InnoDB,
PARTITION p201812 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p201901 VALUES LESS THAN (1548950400) ENGINE=InnoDB,
PARTITION p201902 VALUES LESS THAN (1551369600) ENGINE=InnoDB,
PARTITION p201903 VALUES LESS THAN (1554048000) ENGINE=InnoDB,
PARTITION p201904 VALUES LESS THAN (1556640000) ENGINE=InnoDB,
PARTITION p201905 VALUES LESS THAN (1559318400) ENGINE=InnoDB,
PARTITION p201906 VALUES LESS THAN (1561910400) ENGINE=InnoDB,
PARTITION p201907 VALUES LESS THAN (1564588800) ENGINE=InnoDB,
PARTITION p201908 VALUES LESS THAN (1567267200) ENGINE=InnoDB,
PARTITION p201909 VALUES LESS THAN (1569859200) ENGINE=InnoDB,
PARTITION p201910 VALUES LESS THAN (1572537600) ENGINE=InnoDB,
PARTITION p201911 VALUES LESS THAN (1575129600) ENGINE=InnoDB,
PARTITION p201912 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `share_rate_vod_other`
--

CREATE TABLE `share_rate_vod_other` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `get_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_rtmfp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_cde` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `platid` int(3) NOT NULL DEFAULT '0',
  `splatid` int(11) NOT NULL DEFAULT '-1',
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `version` int(11) DEFAULT '0',
  `share_rep_count` bigint(20) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `p` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `act` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `bcnt` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p201604 VALUES LESS THAN (1462032000) ENGINE=InnoDB,
PARTITION p201605 VALUES LESS THAN (1464710400) ENGINE=InnoDB,
PARTITION p201606 VALUES LESS THAN (1467302400) ENGINE=InnoDB,
PARTITION p201607 VALUES LESS THAN (1469980800) ENGINE=InnoDB,
PARTITION p201608 VALUES LESS THAN (1472659200) ENGINE=InnoDB,
PARTITION p201609 VALUES LESS THAN (1475251200) ENGINE=InnoDB,
PARTITION p201610 VALUES LESS THAN (1477929600) ENGINE=InnoDB,
PARTITION p201611 VALUES LESS THAN (1480521600) ENGINE=InnoDB,
PARTITION p201612 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p201701 VALUES LESS THAN (1485878400) ENGINE=InnoDB,
PARTITION p201702 VALUES LESS THAN (1488297600) ENGINE=InnoDB,
PARTITION p201703 VALUES LESS THAN (1490976000) ENGINE=InnoDB,
PARTITION p201704 VALUES LESS THAN (1493568000) ENGINE=InnoDB,
PARTITION p201705 VALUES LESS THAN (1496246400) ENGINE=InnoDB,
PARTITION p201706 VALUES LESS THAN (1498838400) ENGINE=InnoDB,
PARTITION p201707 VALUES LESS THAN (1501516800) ENGINE=InnoDB,
PARTITION p201708 VALUES LESS THAN (1504195200) ENGINE=InnoDB,
PARTITION p201709 VALUES LESS THAN (1506787200) ENGINE=InnoDB,
PARTITION p201710 VALUES LESS THAN (1509465600) ENGINE=InnoDB,
PARTITION p201711 VALUES LESS THAN (1512057600) ENGINE=InnoDB,
PARTITION p201712 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p201801 VALUES LESS THAN (1517414400) ENGINE=InnoDB,
PARTITION p201802 VALUES LESS THAN (1519833600) ENGINE=InnoDB,
PARTITION p201803 VALUES LESS THAN (1522512000) ENGINE=InnoDB,
PARTITION p201804 VALUES LESS THAN (1525104000) ENGINE=InnoDB,
PARTITION p201805 VALUES LESS THAN (1527782400) ENGINE=InnoDB,
PARTITION p201806 VALUES LESS THAN (1530374400) ENGINE=InnoDB,
PARTITION p201807 VALUES LESS THAN (1533052800) ENGINE=InnoDB,
PARTITION p201808 VALUES LESS THAN (1535731200) ENGINE=InnoDB,
PARTITION p201809 VALUES LESS THAN (1538323200) ENGINE=InnoDB,
PARTITION p201810 VALUES LESS THAN (1541001600) ENGINE=InnoDB,
PARTITION p201811 VALUES LESS THAN (1543593600) ENGINE=InnoDB,
PARTITION p201812 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p201901 VALUES LESS THAN (1548950400) ENGINE=InnoDB,
PARTITION p201902 VALUES LESS THAN (1551369600) ENGINE=InnoDB,
PARTITION p201903 VALUES LESS THAN (1554048000) ENGINE=InnoDB,
PARTITION p201904 VALUES LESS THAN (1556640000) ENGINE=InnoDB,
PARTITION p201905 VALUES LESS THAN (1559318400) ENGINE=InnoDB,
PARTITION p201906 VALUES LESS THAN (1561910400) ENGINE=InnoDB,
PARTITION p201907 VALUES LESS THAN (1564588800) ENGINE=InnoDB,
PARTITION p201908 VALUES LESS THAN (1567267200) ENGINE=InnoDB,
PARTITION p201909 VALUES LESS THAN (1569859200) ENGINE=InnoDB,
PARTITION p201910 VALUES LESS THAN (1572537600) ENGINE=InnoDB,
PARTITION p201911 VALUES LESS THAN (1575129600) ENGINE=InnoDB,
PARTITION p201912 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `share_rate_vod_other_20160505`
--

CREATE TABLE `share_rate_vod_other_20160505` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `get_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_rtmfp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_cde` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `platid` int(3) NOT NULL DEFAULT '0',
  `splatid` int(11) NOT NULL DEFAULT '-1',
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `version` int(11) DEFAULT '0',
  `share_rep_count` bigint(20) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `p` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `act` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `bcnt` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p201601 VALUES LESS THAN (1454256000) ENGINE=InnoDB,
PARTITION p201602 VALUES LESS THAN (1456761600) ENGINE=InnoDB,
PARTITION p201603 VALUES LESS THAN (1459440000) ENGINE=InnoDB,
PARTITION p201604 VALUES LESS THAN (1462032000) ENGINE=InnoDB,
PARTITION p201605 VALUES LESS THAN (1464710400) ENGINE=InnoDB,
PARTITION p201606 VALUES LESS THAN (1467302400) ENGINE=InnoDB,
PARTITION p201607 VALUES LESS THAN (1469980800) ENGINE=InnoDB,
PARTITION p201608 VALUES LESS THAN (1472659200) ENGINE=InnoDB,
PARTITION p201609 VALUES LESS THAN (1475251200) ENGINE=InnoDB,
PARTITION p201610 VALUES LESS THAN (1477929600) ENGINE=InnoDB,
PARTITION p201611 VALUES LESS THAN (1480521600) ENGINE=InnoDB,
PARTITION p201612 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p201701 VALUES LESS THAN (1485878400) ENGINE=InnoDB,
PARTITION p201702 VALUES LESS THAN (1488297600) ENGINE=InnoDB,
PARTITION p201703 VALUES LESS THAN (1490976000) ENGINE=InnoDB,
PARTITION p201704 VALUES LESS THAN (1493568000) ENGINE=InnoDB,
PARTITION p201705 VALUES LESS THAN (1496246400) ENGINE=InnoDB,
PARTITION p201706 VALUES LESS THAN (1498838400) ENGINE=InnoDB,
PARTITION p201707 VALUES LESS THAN (1501516800) ENGINE=InnoDB,
PARTITION p201708 VALUES LESS THAN (1504195200) ENGINE=InnoDB,
PARTITION p201709 VALUES LESS THAN (1506787200) ENGINE=InnoDB,
PARTITION p201710 VALUES LESS THAN (1509465600) ENGINE=InnoDB,
PARTITION p201711 VALUES LESS THAN (1512057600) ENGINE=InnoDB,
PARTITION p201712 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p201801 VALUES LESS THAN (1517414400) ENGINE=InnoDB,
PARTITION p201802 VALUES LESS THAN (1519833600) ENGINE=InnoDB,
PARTITION p201803 VALUES LESS THAN (1522512000) ENGINE=InnoDB,
PARTITION p201804 VALUES LESS THAN (1525104000) ENGINE=InnoDB,
PARTITION p201805 VALUES LESS THAN (1527782400) ENGINE=InnoDB,
PARTITION p201806 VALUES LESS THAN (1530374400) ENGINE=InnoDB,
PARTITION p201807 VALUES LESS THAN (1533052800) ENGINE=InnoDB,
PARTITION p201808 VALUES LESS THAN (1535731200) ENGINE=InnoDB,
PARTITION p201809 VALUES LESS THAN (1538323200) ENGINE=InnoDB,
PARTITION p201810 VALUES LESS THAN (1541001600) ENGINE=InnoDB,
PARTITION p201811 VALUES LESS THAN (1543593600) ENGINE=InnoDB,
PARTITION p201812 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p201901 VALUES LESS THAN (1548950400) ENGINE=InnoDB,
PARTITION p201902 VALUES LESS THAN (1551369600) ENGINE=InnoDB,
PARTITION p201903 VALUES LESS THAN (1554048000) ENGINE=InnoDB,
PARTITION p201904 VALUES LESS THAN (1556640000) ENGINE=InnoDB,
PARTITION p201905 VALUES LESS THAN (1559318400) ENGINE=InnoDB,
PARTITION p201906 VALUES LESS THAN (1561910400) ENGINE=InnoDB,
PARTITION p201907 VALUES LESS THAN (1564588800) ENGINE=InnoDB,
PARTITION p201908 VALUES LESS THAN (1567267200) ENGINE=InnoDB,
PARTITION p201909 VALUES LESS THAN (1569859200) ENGINE=InnoDB,
PARTITION p201910 VALUES LESS THAN (1572537600) ENGINE=InnoDB,
PARTITION p201911 VALUES LESS THAN (1575129600) ENGINE=InnoDB,
PARTITION p201912 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `share_rate_vod_telecom`
--

CREATE TABLE `share_rate_vod_telecom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `get_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_rtmfp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_cde` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `platid` int(3) NOT NULL DEFAULT '0',
  `splatid` int(11) NOT NULL DEFAULT '-1',
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `version` int(11) DEFAULT '0',
  `share_rep_count` bigint(20) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `p` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `act` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `bcnt` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p201604 VALUES LESS THAN (1462032000) ENGINE=InnoDB,
PARTITION p201605 VALUES LESS THAN (1464710400) ENGINE=InnoDB,
PARTITION p201606 VALUES LESS THAN (1467302400) ENGINE=InnoDB,
PARTITION p201607 VALUES LESS THAN (1469980800) ENGINE=InnoDB,
PARTITION p201608 VALUES LESS THAN (1472659200) ENGINE=InnoDB,
PARTITION p201609 VALUES LESS THAN (1475251200) ENGINE=InnoDB,
PARTITION p201610 VALUES LESS THAN (1477929600) ENGINE=InnoDB,
PARTITION p201611 VALUES LESS THAN (1480521600) ENGINE=InnoDB,
PARTITION p201612 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p201701 VALUES LESS THAN (1485878400) ENGINE=InnoDB,
PARTITION p201702 VALUES LESS THAN (1488297600) ENGINE=InnoDB,
PARTITION p201703 VALUES LESS THAN (1490976000) ENGINE=InnoDB,
PARTITION p201704 VALUES LESS THAN (1493568000) ENGINE=InnoDB,
PARTITION p201705 VALUES LESS THAN (1496246400) ENGINE=InnoDB,
PARTITION p201706 VALUES LESS THAN (1498838400) ENGINE=InnoDB,
PARTITION p201707 VALUES LESS THAN (1501516800) ENGINE=InnoDB,
PARTITION p201708 VALUES LESS THAN (1504195200) ENGINE=InnoDB,
PARTITION p201709 VALUES LESS THAN (1506787200) ENGINE=InnoDB,
PARTITION p201710 VALUES LESS THAN (1509465600) ENGINE=InnoDB,
PARTITION p201711 VALUES LESS THAN (1512057600) ENGINE=InnoDB,
PARTITION p201712 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p201801 VALUES LESS THAN (1517414400) ENGINE=InnoDB,
PARTITION p201802 VALUES LESS THAN (1519833600) ENGINE=InnoDB,
PARTITION p201803 VALUES LESS THAN (1522512000) ENGINE=InnoDB,
PARTITION p201804 VALUES LESS THAN (1525104000) ENGINE=InnoDB,
PARTITION p201805 VALUES LESS THAN (1527782400) ENGINE=InnoDB,
PARTITION p201806 VALUES LESS THAN (1530374400) ENGINE=InnoDB,
PARTITION p201807 VALUES LESS THAN (1533052800) ENGINE=InnoDB,
PARTITION p201808 VALUES LESS THAN (1535731200) ENGINE=InnoDB,
PARTITION p201809 VALUES LESS THAN (1538323200) ENGINE=InnoDB,
PARTITION p201810 VALUES LESS THAN (1541001600) ENGINE=InnoDB,
PARTITION p201811 VALUES LESS THAN (1543593600) ENGINE=InnoDB,
PARTITION p201812 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p201901 VALUES LESS THAN (1548950400) ENGINE=InnoDB,
PARTITION p201902 VALUES LESS THAN (1551369600) ENGINE=InnoDB,
PARTITION p201903 VALUES LESS THAN (1554048000) ENGINE=InnoDB,
PARTITION p201904 VALUES LESS THAN (1556640000) ENGINE=InnoDB,
PARTITION p201905 VALUES LESS THAN (1559318400) ENGINE=InnoDB,
PARTITION p201906 VALUES LESS THAN (1561910400) ENGINE=InnoDB,
PARTITION p201907 VALUES LESS THAN (1564588800) ENGINE=InnoDB,
PARTITION p201908 VALUES LESS THAN (1567267200) ENGINE=InnoDB,
PARTITION p201909 VALUES LESS THAN (1569859200) ENGINE=InnoDB,
PARTITION p201910 VALUES LESS THAN (1572537600) ENGINE=InnoDB,
PARTITION p201911 VALUES LESS THAN (1575129600) ENGINE=InnoDB,
PARTITION p201912 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `share_rate_vod_telecom_20160505`
--

CREATE TABLE `share_rate_vod_telecom_20160505` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `get_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_rtmfp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_cde` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `platid` int(3) NOT NULL DEFAULT '0',
  `splatid` int(11) NOT NULL DEFAULT '-1',
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `version` int(11) DEFAULT '0',
  `share_rep_count` bigint(20) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `p` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `act` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `bcnt` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p201601 VALUES LESS THAN (1454256000) ENGINE=InnoDB,
PARTITION p201602 VALUES LESS THAN (1456761600) ENGINE=InnoDB,
PARTITION p201603 VALUES LESS THAN (1459440000) ENGINE=InnoDB,
PARTITION p201604 VALUES LESS THAN (1462032000) ENGINE=InnoDB,
PARTITION p201605 VALUES LESS THAN (1464710400) ENGINE=InnoDB,
PARTITION p201606 VALUES LESS THAN (1467302400) ENGINE=InnoDB,
PARTITION p201607 VALUES LESS THAN (1469980800) ENGINE=InnoDB,
PARTITION p201608 VALUES LESS THAN (1472659200) ENGINE=InnoDB,
PARTITION p201609 VALUES LESS THAN (1475251200) ENGINE=InnoDB,
PARTITION p201610 VALUES LESS THAN (1477929600) ENGINE=InnoDB,
PARTITION p201611 VALUES LESS THAN (1480521600) ENGINE=InnoDB,
PARTITION p201612 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p201701 VALUES LESS THAN (1485878400) ENGINE=InnoDB,
PARTITION p201702 VALUES LESS THAN (1488297600) ENGINE=InnoDB,
PARTITION p201703 VALUES LESS THAN (1490976000) ENGINE=InnoDB,
PARTITION p201704 VALUES LESS THAN (1493568000) ENGINE=InnoDB,
PARTITION p201705 VALUES LESS THAN (1496246400) ENGINE=InnoDB,
PARTITION p201706 VALUES LESS THAN (1498838400) ENGINE=InnoDB,
PARTITION p201707 VALUES LESS THAN (1501516800) ENGINE=InnoDB,
PARTITION p201708 VALUES LESS THAN (1504195200) ENGINE=InnoDB,
PARTITION p201709 VALUES LESS THAN (1506787200) ENGINE=InnoDB,
PARTITION p201710 VALUES LESS THAN (1509465600) ENGINE=InnoDB,
PARTITION p201711 VALUES LESS THAN (1512057600) ENGINE=InnoDB,
PARTITION p201712 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p201801 VALUES LESS THAN (1517414400) ENGINE=InnoDB,
PARTITION p201802 VALUES LESS THAN (1519833600) ENGINE=InnoDB,
PARTITION p201803 VALUES LESS THAN (1522512000) ENGINE=InnoDB,
PARTITION p201804 VALUES LESS THAN (1525104000) ENGINE=InnoDB,
PARTITION p201805 VALUES LESS THAN (1527782400) ENGINE=InnoDB,
PARTITION p201806 VALUES LESS THAN (1530374400) ENGINE=InnoDB,
PARTITION p201807 VALUES LESS THAN (1533052800) ENGINE=InnoDB,
PARTITION p201808 VALUES LESS THAN (1535731200) ENGINE=InnoDB,
PARTITION p201809 VALUES LESS THAN (1538323200) ENGINE=InnoDB,
PARTITION p201810 VALUES LESS THAN (1541001600) ENGINE=InnoDB,
PARTITION p201811 VALUES LESS THAN (1543593600) ENGINE=InnoDB,
PARTITION p201812 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p201901 VALUES LESS THAN (1548950400) ENGINE=InnoDB,
PARTITION p201902 VALUES LESS THAN (1551369600) ENGINE=InnoDB,
PARTITION p201903 VALUES LESS THAN (1554048000) ENGINE=InnoDB,
PARTITION p201904 VALUES LESS THAN (1556640000) ENGINE=InnoDB,
PARTITION p201905 VALUES LESS THAN (1559318400) ENGINE=InnoDB,
PARTITION p201906 VALUES LESS THAN (1561910400) ENGINE=InnoDB,
PARTITION p201907 VALUES LESS THAN (1564588800) ENGINE=InnoDB,
PARTITION p201908 VALUES LESS THAN (1567267200) ENGINE=InnoDB,
PARTITION p201909 VALUES LESS THAN (1569859200) ENGINE=InnoDB,
PARTITION p201910 VALUES LESS THAN (1572537600) ENGINE=InnoDB,
PARTITION p201911 VALUES LESS THAN (1575129600) ENGINE=InnoDB,
PARTITION p201912 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `share_rate_vod_unicom`
--

CREATE TABLE `share_rate_vod_unicom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `platid` int(3) NOT NULL DEFAULT '0',
  `splatid` int(11) NOT NULL DEFAULT '-1',
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `version` int(11) DEFAULT '0',
  `share_rep_count` bigint(20) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `appid` int(11) NOT NULL DEFAULT '-1',
  `p` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_rtmfp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_cde` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `act` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `bcnt` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p201604 VALUES LESS THAN (1462032000) ENGINE=InnoDB,
PARTITION p201605 VALUES LESS THAN (1464710400) ENGINE=InnoDB,
PARTITION p201606 VALUES LESS THAN (1467302400) ENGINE=InnoDB,
PARTITION p201607 VALUES LESS THAN (1469980800) ENGINE=InnoDB,
PARTITION p201608 VALUES LESS THAN (1472659200) ENGINE=InnoDB,
PARTITION p201609 VALUES LESS THAN (1475251200) ENGINE=InnoDB,
PARTITION p201610 VALUES LESS THAN (1477929600) ENGINE=InnoDB,
PARTITION p201611 VALUES LESS THAN (1480521600) ENGINE=InnoDB,
PARTITION p201612 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p201701 VALUES LESS THAN (1485878400) ENGINE=InnoDB,
PARTITION p201702 VALUES LESS THAN (1488297600) ENGINE=InnoDB,
PARTITION p201703 VALUES LESS THAN (1490976000) ENGINE=InnoDB,
PARTITION p201704 VALUES LESS THAN (1493568000) ENGINE=InnoDB,
PARTITION p201705 VALUES LESS THAN (1496246400) ENGINE=InnoDB,
PARTITION p201706 VALUES LESS THAN (1498838400) ENGINE=InnoDB,
PARTITION p201707 VALUES LESS THAN (1501516800) ENGINE=InnoDB,
PARTITION p201708 VALUES LESS THAN (1504195200) ENGINE=InnoDB,
PARTITION p201709 VALUES LESS THAN (1506787200) ENGINE=InnoDB,
PARTITION p201710 VALUES LESS THAN (1509465600) ENGINE=InnoDB,
PARTITION p201711 VALUES LESS THAN (1512057600) ENGINE=InnoDB,
PARTITION p201712 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p201801 VALUES LESS THAN (1517414400) ENGINE=InnoDB,
PARTITION p201802 VALUES LESS THAN (1519833600) ENGINE=InnoDB,
PARTITION p201803 VALUES LESS THAN (1522512000) ENGINE=InnoDB,
PARTITION p201804 VALUES LESS THAN (1525104000) ENGINE=InnoDB,
PARTITION p201805 VALUES LESS THAN (1527782400) ENGINE=InnoDB,
PARTITION p201806 VALUES LESS THAN (1530374400) ENGINE=InnoDB,
PARTITION p201807 VALUES LESS THAN (1533052800) ENGINE=InnoDB,
PARTITION p201808 VALUES LESS THAN (1535731200) ENGINE=InnoDB,
PARTITION p201809 VALUES LESS THAN (1538323200) ENGINE=InnoDB,
PARTITION p201810 VALUES LESS THAN (1541001600) ENGINE=InnoDB,
PARTITION p201811 VALUES LESS THAN (1543593600) ENGINE=InnoDB,
PARTITION p201812 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p201901 VALUES LESS THAN (1548950400) ENGINE=InnoDB,
PARTITION p201902 VALUES LESS THAN (1551369600) ENGINE=InnoDB,
PARTITION p201903 VALUES LESS THAN (1554048000) ENGINE=InnoDB,
PARTITION p201904 VALUES LESS THAN (1556640000) ENGINE=InnoDB,
PARTITION p201905 VALUES LESS THAN (1559318400) ENGINE=InnoDB,
PARTITION p201906 VALUES LESS THAN (1561910400) ENGINE=InnoDB,
PARTITION p201907 VALUES LESS THAN (1564588800) ENGINE=InnoDB,
PARTITION p201908 VALUES LESS THAN (1567267200) ENGINE=InnoDB,
PARTITION p201909 VALUES LESS THAN (1569859200) ENGINE=InnoDB,
PARTITION p201910 VALUES LESS THAN (1572537600) ENGINE=InnoDB,
PARTITION p201911 VALUES LESS THAN (1575129600) ENGINE=InnoDB,
PARTITION p201912 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `share_rate_vod_unicom_20160505`
--

CREATE TABLE `share_rate_vod_unicom_20160505` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `platid` int(3) NOT NULL DEFAULT '0',
  `splatid` int(11) NOT NULL DEFAULT '-1',
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `version` int(11) DEFAULT '0',
  `share_rep_count` bigint(20) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `appid` int(11) NOT NULL DEFAULT '-1',
  `p` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_rtmfp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_cde` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `act` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `bcnt` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p201601 VALUES LESS THAN (1454256000) ENGINE=InnoDB,
PARTITION p201602 VALUES LESS THAN (1456761600) ENGINE=InnoDB,
PARTITION p201603 VALUES LESS THAN (1459440000) ENGINE=InnoDB,
PARTITION p201604 VALUES LESS THAN (1462032000) ENGINE=InnoDB,
PARTITION p201605 VALUES LESS THAN (1464710400) ENGINE=InnoDB,
PARTITION p201606 VALUES LESS THAN (1467302400) ENGINE=InnoDB,
PARTITION p201607 VALUES LESS THAN (1469980800) ENGINE=InnoDB,
PARTITION p201608 VALUES LESS THAN (1472659200) ENGINE=InnoDB,
PARTITION p201609 VALUES LESS THAN (1475251200) ENGINE=InnoDB,
PARTITION p201610 VALUES LESS THAN (1477929600) ENGINE=InnoDB,
PARTITION p201611 VALUES LESS THAN (1480521600) ENGINE=InnoDB,
PARTITION p201612 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p201701 VALUES LESS THAN (1485878400) ENGINE=InnoDB,
PARTITION p201702 VALUES LESS THAN (1488297600) ENGINE=InnoDB,
PARTITION p201703 VALUES LESS THAN (1490976000) ENGINE=InnoDB,
PARTITION p201704 VALUES LESS THAN (1493568000) ENGINE=InnoDB,
PARTITION p201705 VALUES LESS THAN (1496246400) ENGINE=InnoDB,
PARTITION p201706 VALUES LESS THAN (1498838400) ENGINE=InnoDB,
PARTITION p201707 VALUES LESS THAN (1501516800) ENGINE=InnoDB,
PARTITION p201708 VALUES LESS THAN (1504195200) ENGINE=InnoDB,
PARTITION p201709 VALUES LESS THAN (1506787200) ENGINE=InnoDB,
PARTITION p201710 VALUES LESS THAN (1509465600) ENGINE=InnoDB,
PARTITION p201711 VALUES LESS THAN (1512057600) ENGINE=InnoDB,
PARTITION p201712 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p201801 VALUES LESS THAN (1517414400) ENGINE=InnoDB,
PARTITION p201802 VALUES LESS THAN (1519833600) ENGINE=InnoDB,
PARTITION p201803 VALUES LESS THAN (1522512000) ENGINE=InnoDB,
PARTITION p201804 VALUES LESS THAN (1525104000) ENGINE=InnoDB,
PARTITION p201805 VALUES LESS THAN (1527782400) ENGINE=InnoDB,
PARTITION p201806 VALUES LESS THAN (1530374400) ENGINE=InnoDB,
PARTITION p201807 VALUES LESS THAN (1533052800) ENGINE=InnoDB,
PARTITION p201808 VALUES LESS THAN (1535731200) ENGINE=InnoDB,
PARTITION p201809 VALUES LESS THAN (1538323200) ENGINE=InnoDB,
PARTITION p201810 VALUES LESS THAN (1541001600) ENGINE=InnoDB,
PARTITION p201811 VALUES LESS THAN (1543593600) ENGINE=InnoDB,
PARTITION p201812 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p201901 VALUES LESS THAN (1548950400) ENGINE=InnoDB,
PARTITION p201902 VALUES LESS THAN (1551369600) ENGINE=InnoDB,
PARTITION p201903 VALUES LESS THAN (1554048000) ENGINE=InnoDB,
PARTITION p201904 VALUES LESS THAN (1556640000) ENGINE=InnoDB,
PARTITION p201905 VALUES LESS THAN (1559318400) ENGINE=InnoDB,
PARTITION p201906 VALUES LESS THAN (1561910400) ENGINE=InnoDB,
PARTITION p201907 VALUES LESS THAN (1564588800) ENGINE=InnoDB,
PARTITION p201908 VALUES LESS THAN (1567267200) ENGINE=InnoDB,
PARTITION p201909 VALUES LESS THAN (1569859200) ENGINE=InnoDB,
PARTITION p201910 VALUES LESS THAN (1572537600) ENGINE=InnoDB,
PARTITION p201911 VALUES LESS THAN (1575129600) ENGINE=InnoDB,
PARTITION p201912 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `stage_quality_dl_other`
--

CREATE TABLE `stage_quality_dl_other` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stage_rep_count` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_zero` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_one` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_two` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_three` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_four` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_five` int(10) UNSIGNED DEFAULT NULL,
  `act_success_one` int(10) UNSIGNED DEFAULT NULL,
  `size1` int(20) UNSIGNED DEFAULT '0',
  `size2` int(20) UNSIGNED DEFAULT '0',
  `act_time_one` float(7,2) DEFAULT NULL,
  `act_time_two` float(7,2) DEFAULT NULL,
  `act_time_three` float(7,2) DEFAULT NULL,
  `act_time_four` float(7,2) DEFAULT NULL,
  `act_time_five` float(7,2) DEFAULT NULL,
  `act_rep_six` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_six` float(7,2) DEFAULT '0.00',
  `act_time_seven` float(7,2) DEFAULT '0.00',
  `act_rep_seven` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_eight` float(7,2) DEFAULT '0.00',
  `act_rep_eight` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_eleven` float(7,2) DEFAULT '0.00',
  `act_rep_eleven` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_twelve` float(7,2) DEFAULT '0.00',
  `act_rep_twelve` bigint(20) UNSIGNED DEFAULT '0',
  `version` int(11) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `platid` int(3) DEFAULT '0',
  `splatid` int(11) DEFAULT '-1',
  `appid` int(11) NOT NULL DEFAULT '-1',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `stage_quality_dl_telecom`
--

CREATE TABLE `stage_quality_dl_telecom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stage_rep_count` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_zero` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_one` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_two` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_three` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_four` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_five` int(10) UNSIGNED DEFAULT NULL,
  `act_success_one` int(10) UNSIGNED DEFAULT NULL,
  `size1` int(20) UNSIGNED DEFAULT '0',
  `size2` int(20) UNSIGNED DEFAULT '0',
  `act_time_one` float(7,2) DEFAULT NULL,
  `act_time_two` float(7,2) DEFAULT NULL,
  `act_time_three` float(7,2) DEFAULT NULL,
  `act_time_four` float(7,2) DEFAULT NULL,
  `act_time_five` float(7,2) DEFAULT NULL,
  `act_rep_six` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_six` float(7,2) DEFAULT '0.00',
  `act_time_seven` float(7,2) DEFAULT '0.00',
  `act_rep_seven` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_eight` float(7,2) DEFAULT '0.00',
  `act_rep_eight` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_eleven` float(7,2) DEFAULT '0.00',
  `act_rep_eleven` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_twelve` float(7,2) DEFAULT '0.00',
  `version` int(11) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `platid` int(3) DEFAULT '0',
  `splatid` int(11) DEFAULT '-1',
  `appid` int(11) NOT NULL DEFAULT '-1',
  `act_rep_twelve` bigint(20) UNSIGNED DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `stage_quality_dl_unicom`
--

CREATE TABLE `stage_quality_dl_unicom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stage_rep_count` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_zero` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_one` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_two` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_three` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_four` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_five` int(10) UNSIGNED DEFAULT NULL,
  `act_success_one` int(10) UNSIGNED DEFAULT NULL,
  `size1` int(20) UNSIGNED DEFAULT '0',
  `size2` int(20) UNSIGNED DEFAULT '0',
  `act_time_one` float(7,2) DEFAULT NULL,
  `act_time_two` float(7,2) DEFAULT NULL,
  `act_time_three` float(7,2) DEFAULT NULL,
  `act_time_four` float(7,2) DEFAULT NULL,
  `act_time_five` float(7,2) DEFAULT NULL,
  `act_rep_six` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_seven` float(7,2) DEFAULT '0.00',
  `act_rep_seven` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_eight` float(7,2) DEFAULT '0.00',
  `act_rep_eight` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_eleven` float(7,2) DEFAULT '0.00',
  `act_rep_eleven` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_twelve` float(7,2) DEFAULT '0.00',
  `act_rep_twelve` bigint(20) UNSIGNED DEFAULT '0',
  `version` int(11) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `platid` int(3) DEFAULT '0',
  `splatid` int(11) DEFAULT '-1',
  `appid` int(11) NOT NULL DEFAULT '-1',
  `act_time_six` float(7,2) DEFAULT '0.00',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `stage_quality_liv_other`
--

CREATE TABLE `stage_quality_liv_other` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stage_rep_count` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_zero` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_one` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_two` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_three` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_four` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_five` int(10) UNSIGNED DEFAULT NULL,
  `act_success_one` int(10) UNSIGNED DEFAULT NULL,
  `size1` int(20) UNSIGNED DEFAULT '0',
  `size2` int(20) UNSIGNED DEFAULT '0',
  `act_time_one` float(7,2) DEFAULT NULL,
  `act_time_two` float(7,2) DEFAULT NULL,
  `act_time_three` float(7,2) DEFAULT NULL,
  `act_time_four` float(7,2) DEFAULT NULL,
  `act_time_five` float(7,2) DEFAULT NULL,
  `act_rep_twelve` bigint(20) UNSIGNED DEFAULT '0',
  `act_rep_six` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_six` float(7,2) DEFAULT '0.00',
  `act_time_seven` float(7,2) DEFAULT '0.00',
  `act_rep_seven` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_eight` float(7,2) DEFAULT '0.00',
  `act_rep_eight` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_eleven` float(7,2) DEFAULT '0.00',
  `act_rep_eleven` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_twelve` float(7,2) DEFAULT '0.00',
  `version` int(11) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `platid` int(3) DEFAULT '0',
  `splatid` int(11) DEFAULT '-1',
  `appid` int(11) NOT NULL DEFAULT '-1',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `stage_quality_liv_telecom`
--

CREATE TABLE `stage_quality_liv_telecom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stage_rep_count` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_zero` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_one` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_two` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_three` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_four` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_five` int(10) UNSIGNED DEFAULT NULL,
  `act_success_one` int(10) UNSIGNED DEFAULT NULL,
  `size1` int(20) UNSIGNED DEFAULT '0',
  `size2` int(20) UNSIGNED DEFAULT '0',
  `act_time_one` float(7,2) DEFAULT NULL,
  `act_time_two` float(7,2) DEFAULT NULL,
  `act_time_three` float(7,2) DEFAULT NULL,
  `act_time_four` float(7,2) DEFAULT NULL,
  `act_time_five` float(7,2) DEFAULT NULL,
  `act_rep_six` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_six` float(7,2) DEFAULT '0.00',
  `act_time_seven` float(7,2) DEFAULT '0.00',
  `act_rep_seven` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_eight` float(7,2) DEFAULT '0.00',
  `act_rep_eight` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_eleven` float(7,2) DEFAULT '0.00',
  `act_rep_eleven` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_twelve` float(7,2) DEFAULT '0.00',
  `act_rep_twelve` bigint(20) UNSIGNED DEFAULT '0',
  `version` int(11) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `platid` int(3) DEFAULT '0',
  `splatid` int(11) DEFAULT '-1',
  `appid` int(11) NOT NULL DEFAULT '-1',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `stage_quality_liv_unicom`
--

CREATE TABLE `stage_quality_liv_unicom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stage_rep_count` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_zero` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_one` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_two` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_three` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_four` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_five` int(10) UNSIGNED DEFAULT NULL,
  `act_success_one` int(10) UNSIGNED DEFAULT NULL,
  `size1` int(20) UNSIGNED DEFAULT '0',
  `size2` int(20) UNSIGNED DEFAULT '0',
  `act_time_one` float(7,2) DEFAULT NULL,
  `act_time_two` float(7,2) DEFAULT NULL,
  `act_time_three` float(7,2) DEFAULT NULL,
  `act_time_four` float(7,2) DEFAULT NULL,
  `act_time_five` float(7,2) DEFAULT NULL,
  `act_time_six` float(7,2) DEFAULT '0.00',
  `act_rep_six` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_seven` float(7,2) DEFAULT '0.00',
  `act_rep_seven` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_eight` float(7,2) DEFAULT '0.00',
  `act_rep_eight` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_eleven` float(7,2) DEFAULT '0.00',
  `act_rep_eleven` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_twelve` float(7,2) DEFAULT '0.00',
  `act_rep_twelve` bigint(20) UNSIGNED DEFAULT '0',
  `version` int(11) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `platid` int(3) DEFAULT '0',
  `splatid` int(11) DEFAULT '-1',
  `appid` int(11) NOT NULL DEFAULT '-1',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `stage_quality_vod_other`
--

CREATE TABLE `stage_quality_vod_other` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stage_rep_count` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_zero` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_one` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_two` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_three` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_four` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_five` int(10) UNSIGNED DEFAULT NULL,
  `act_success_one` int(10) UNSIGNED DEFAULT NULL,
  `size1` int(20) UNSIGNED DEFAULT '0',
  `size2` int(20) UNSIGNED DEFAULT '0',
  `act_time_one` float(7,2) DEFAULT NULL,
  `act_time_two` float(7,2) DEFAULT NULL,
  `act_time_three` float(7,2) DEFAULT NULL,
  `act_time_four` float(7,2) DEFAULT NULL,
  `act_time_five` float(7,2) DEFAULT NULL,
  `act_rep_six` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_six` float(7,2) DEFAULT '0.00',
  `act_time_seven` float(7,2) DEFAULT '0.00',
  `act_rep_seven` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_eight` float(7,2) DEFAULT '0.00',
  `act_rep_eight` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_eleven` float(7,2) DEFAULT '0.00',
  `act_rep_eleven` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_twelve` float(7,2) DEFAULT '0.00',
  `act_rep_twelve` bigint(20) UNSIGNED DEFAULT '0',
  `version` int(11) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `platid` int(3) DEFAULT '0',
  `splatid` int(11) DEFAULT '-1',
  `appid` int(11) NOT NULL DEFAULT '-1',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `stage_quality_vod_telecom`
--

CREATE TABLE `stage_quality_vod_telecom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stage_rep_count` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_zero` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_one` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_two` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_three` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_four` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_five` int(10) UNSIGNED DEFAULT NULL,
  `act_success_one` int(10) UNSIGNED DEFAULT NULL,
  `size1` int(20) UNSIGNED DEFAULT '0',
  `size2` int(20) UNSIGNED DEFAULT '0',
  `act_time_one` float(7,2) DEFAULT NULL,
  `act_time_two` float(7,2) DEFAULT NULL,
  `act_time_three` float(7,2) DEFAULT NULL,
  `act_time_four` float(7,2) DEFAULT NULL,
  `act_time_five` float(7,2) DEFAULT NULL,
  `act_rep_six` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_six` float(7,2) DEFAULT '0.00',
  `act_time_seven` float(7,2) DEFAULT '0.00',
  `act_rep_seven` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_eight` float(7,2) DEFAULT '0.00',
  `act_rep_eight` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_eleven` float(7,2) DEFAULT '0.00',
  `act_rep_eleven` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_twelve` float(7,2) DEFAULT '0.00',
  `version` int(11) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `platid` int(3) DEFAULT '0',
  `splatid` int(11) DEFAULT '-1',
  `appid` int(11) NOT NULL DEFAULT '-1',
  `act_rep_twelve` bigint(20) UNSIGNED DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `stage_quality_vod_unicom`
--

CREATE TABLE `stage_quality_vod_unicom` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stage_rep_count` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_zero` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_one` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_two` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_three` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_four` int(10) UNSIGNED DEFAULT NULL,
  `act_rep_five` int(10) UNSIGNED DEFAULT NULL,
  `act_success_one` int(10) UNSIGNED DEFAULT NULL,
  `size1` int(20) UNSIGNED DEFAULT '0',
  `size2` int(20) UNSIGNED DEFAULT '0',
  `act_time_one` float(7,2) DEFAULT NULL,
  `act_time_two` float(7,2) DEFAULT NULL,
  `act_time_three` float(7,2) DEFAULT NULL,
  `act_time_four` float(7,2) DEFAULT NULL,
  `act_time_five` float(7,2) DEFAULT NULL,
  `act_rep_six` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_seven` float(7,2) DEFAULT '0.00',
  `act_rep_seven` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_eight` float(7,2) DEFAULT '0.00',
  `act_rep_eight` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_eleven` float(7,2) DEFAULT '0.00',
  `act_rep_eleven` bigint(20) UNSIGNED DEFAULT '0',
  `act_time_twelve` float(7,2) DEFAULT '0.00',
  `act_rep_twelve` bigint(20) UNSIGNED DEFAULT '0',
  `version` int(11) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `platid` int(3) DEFAULT '0',
  `splatid` int(11) DEFAULT '-1',
  `appid` int(11) NOT NULL DEFAULT '-1',
  `act_time_six` float(7,2) DEFAULT '0.00',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `stream_table`
--

CREATE TABLE `stream_table` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_name` varchar(150) NOT NULL,
  `s_del` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `test`
--

CREATE TABLE `test` (
  `id` int(4) NOT NULL,
  `pid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `tt`
--

CREATE TABLE `tt` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(2) DEFAULT NULL,
  `platid` int(3) NOT NULL DEFAULT '0',
  `splatid` int(11) NOT NULL DEFAULT '-1',
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `version` int(11) DEFAULT '0',
  `share_rep_count` bigint(20) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) DEFAULT NULL,
  `appid` int(11) NOT NULL DEFAULT '-1',
  `p` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_rtmfp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_cde` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `act` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `bcnt` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2014 VALUES LESS THAN (1420041600) ENGINE=InnoDB,
PARTITION p2015 VALUES LESS THAN (1451577600) ENGINE=InnoDB,
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `tt2`
--

CREATE TABLE `tt2` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `cdn_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_pc_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_tv_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_box_size` bigint(20) UNSIGNED DEFAULT NULL,
  `p2p_mo_size` bigint(20) UNSIGNED DEFAULT NULL,
  `conn_node_times` bigint(20) DEFAULT NULL,
  `get_node_times` bigint(20) DEFAULT NULL,
  `platid` int(3) NOT NULL DEFAULT '0',
  `splatid` int(11) NOT NULL DEFAULT '-1',
  `lpsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lcsize` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `gid` int(11) NOT NULL DEFAULT '0',
  `version` int(11) DEFAULT '0',
  `share_rep_count` bigint(20) DEFAULT NULL,
  `termid` int(11) DEFAULT NULL,
  `methods` int(11) NOT NULL DEFAULT '0',
  `appid` int(11) NOT NULL DEFAULT '-1',
  `p` int(11) NOT NULL DEFAULT '-1',
  `sid` int(11) NOT NULL DEFAULT '0',
  `utp_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_rtmfp` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `up_cde` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `lsize_cde` bigint(20) UNSIGNED DEFAULT '0',
  `utp_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `utp_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_pc_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_tv_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_box_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `cde_mo_size` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_utp_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `conn_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `get_cde_times` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `act` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ch` int(11) NOT NULL DEFAULT '0',
  `p1` int(11) DEFAULT '0',
  `p2` varchar(45) DEFAULT '0',
  `p3` varchar(45) DEFAULT '0',
  `bcnt` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `country` int(11) DEFAULT '0',
  `province` int(11) DEFAULT '0',
  `city` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8
PARTITION BY RANGE (UNIX_TIMESTAMP(time_stamp))
(
PARTITION p2016 VALUES LESS THAN (1483200000) ENGINE=InnoDB,
PARTITION p2017 VALUES LESS THAN (1514736000) ENGINE=InnoDB,
PARTITION p2018 VALUES LESS THAN (1546272000) ENGINE=InnoDB,
PARTITION p2019 VALUES LESS THAN (1577808000) ENGINE=InnoDB
);

-- --------------------------------------------------------

--
-- 表的结构 `upgrade_version`
--

CREATE TABLE `upgrade_version` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `time_stamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `act` int(11) NOT NULL DEFAULT '3',
  `loc_ver` int(11) NOT NULL DEFAULT '0',
  `ser_ver` int(11) NOT NULL DEFAULT '0',
  `model` int(11) NOT NULL DEFAULT '0',
  `vendor` int(11) NOT NULL DEFAULT '0',
  `rom_ver` int(11) NOT NULL DEFAULT '0',
  `net_type` int(11) NOT NULL DEFAULT '0',
  `appid` int(11) NOT NULL DEFAULT '0',
  `result` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `so` int(11) NOT NULL DEFAULT '0',
  `termid` int(11) NOT NULL DEFAULT '0',
  `act_result` int(11) NOT NULL DEFAULT '0',
  `accumulate` bigint(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `up_speed_share_ratio_20150807`
--

CREATE TABLE `up_speed_share_ratio_20150807` (
  `id` int(10) NOT NULL,
  `uuid` varchar(64) NOT NULL,
  `timeLength` int(10) NOT NULL,
  `hour` int(10) NOT NULL,
  `gid` varchar(64) DEFAULT NULL,
  `geo` varchar(20) DEFAULT NULL,
  `cdeId` varchar(64) DEFAULT NULL,
  `up` int(10) DEFAULT NULL,
  `shareRatio` double DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `up_speed_share_ratio_20150808`
--

CREATE TABLE `up_speed_share_ratio_20150808` (
  `id` int(10) NOT NULL,
  `uuid` varchar(64) NOT NULL,
  `timeLength` int(10) NOT NULL,
  `hour` int(10) NOT NULL,
  `gid` varchar(64) DEFAULT NULL,
  `geo` varchar(20) DEFAULT NULL,
  `cdeId` varchar(64) DEFAULT NULL,
  `up` int(10) DEFAULT NULL,
  `shareRatio` double DEFAULT NULL,
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cid` varchar(255) DEFAULT NULL,
  `passwd` text,
  `mail` text,
  `website` text,
  `mobile` text,
  `im` text,
  `authority` int(3) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ptxt` text,
  `notified` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `user_session`
--

CREATE TABLE `user_session` (
  `id` int(11) NOT NULL,
  `sid` varchar(64) CHARACTER SET utf8 COLLATE utf8_danish_ci DEFAULT NULL,
  `online` tinyint(4) DEFAULT '0',
  `username` varchar(64) CHARACTER SET utf8 COLLATE utf8_danish_ci DEFAULT NULL,
  `nickname` varchar(64) CHARACTER SET utf8 COLLATE utf8_danish_ci DEFAULT NULL,
  `privilege` int(11) DEFAULT NULL,
  `remarks` text CHARACTER SET utf8 COLLATE utf8_danish_ci,
  `loginTime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `utime_stat_distribution`
--

CREATE TABLE `utime_stat_distribution` (
  `id` int(10) NOT NULL,
  `cde` int(2) NOT NULL,
  `act` int(10) NOT NULL,
  `areaBegin` int(10) NOT NULL,
  `areaEnd` int(10) NOT NULL,
  `percent` float NOT NULL,
  `date` datetime NOT NULL,
  `geo` varchar(64) DEFAULT NULL,
  `splatid` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `utime_stat_level_distribution`
--

CREATE TABLE `utime_stat_level_distribution` (
  `id` int(10) NOT NULL,
  `cde` int(2) NOT NULL,
  `act` int(10) NOT NULL,
  `timeLevel` int(10) NOT NULL,
  `percent` float NOT NULL,
  `date` datetime NOT NULL,
  `geo` varchar(64) DEFAULT NULL,
  `splatid` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `utime_stat_whole_distribution`
--

CREATE TABLE `utime_stat_whole_distribution` (
  `id` int(10) NOT NULL,
  `cde` int(2) NOT NULL,
  `act` int(10) NOT NULL,
  `areaBegin` int(10) NOT NULL,
  `areaEnd` int(10) NOT NULL,
  `sum` int(10) NOT NULL,
  `avg` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `geo` varchar(64) DEFAULT NULL,
  `splatid` varchar(64) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `version_type`
--

CREATE TABLE `version_type` (
  `id` int(11) NOT NULL,
  `ver_name` varchar(100) NOT NULL,
  `ver_del` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `vid_table`
--

CREATE TABLE `vid_table` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `v_name` varchar(120) DEFAULT NULL,
  `v_del` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aid_table`
--
ALTER TABLE `aid_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bandwidth`
--
ALTER TABLE `bandwidth`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`platid`,`time`);

--
-- Indexes for table `bitrate_dl`
--
ALTER TABLE `bitrate_dl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `bitrate_duration_dl`
--
ALTER TABLE `bitrate_duration_dl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `bitrate_duration_liv`
--
ALTER TABLE `bitrate_duration_liv`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `bitrate_duration_vod`
--
ALTER TABLE `bitrate_duration_vod`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `cdn_statistics`
--
ALTER TABLE `cdn_statistics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `chid_table`
--
ALTER TABLE `chid_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_table`
--
ALTER TABLE `group_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `idc_type`
--
ALTER TABLE `idc_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mid_table`
--
ALTER TABLE `mid_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `node_distri_dl_other`
--
ALTER TABLE `node_distri_dl_other`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `node_distri_dl_telecom`
--
ALTER TABLE `node_distri_dl_telecom`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `node_distri_dl_unicom`
--
ALTER TABLE `node_distri_dl_unicom`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `node_distri_liv_other`
--
ALTER TABLE `node_distri_liv_other`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `node_distri_liv_telecom`
--
ALTER TABLE `node_distri_liv_telecom`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `node_distri_liv_unicom`
--
ALTER TABLE `node_distri_liv_unicom`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `node_distri_vod_other`
--
ALTER TABLE `node_distri_vod_other`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `node_distri_vod_telecom`
--
ALTER TABLE `node_distri_vod_telecom`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `node_distri_vod_unicom`
--
ALTER TABLE `node_distri_vod_unicom`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `pid_table`
--
ALTER TABLE `pid_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pl_data`
--
ALTER TABLE `pl_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `reset`
--
ALTER TABLE `reset`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `rid_table`
--
ALTER TABLE `rid_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `server_data_gather`
--
ALTER TABLE `server_data_gather`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_time` (`timestamp`);

--
-- Indexes for table `server_data_overload`
--
ALTER TABLE `server_data_overload`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `server_data_rtmfp`
--
ALTER TABLE `server_data_rtmfp`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_time` (`timestamp`);

--
-- Indexes for table `server_info`
--
ALTER TABLE `server_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `share_rate_dl_other`
--
ALTER TABLE `share_rate_dl_other`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `share_rate_dl_telecom`
--
ALTER TABLE `share_rate_dl_telecom`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `share_rate_dl_unicom`
--
ALTER TABLE `share_rate_dl_unicom`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `share_rate_liv_other`
--
ALTER TABLE `share_rate_liv_other`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `share_rate_liv_other_20160505`
--
ALTER TABLE `share_rate_liv_other_20160505`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `share_rate_liv_telecom`
--
ALTER TABLE `share_rate_liv_telecom`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `share_rate_liv_telecom_20160505`
--
ALTER TABLE `share_rate_liv_telecom_20160505`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `share_rate_liv_unicom`
--
ALTER TABLE `share_rate_liv_unicom`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `share_rate_liv_unicom_20160505`
--
ALTER TABLE `share_rate_liv_unicom_20160505`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `share_rate_vod_other`
--
ALTER TABLE `share_rate_vod_other`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `index_name` (`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `share_rate_vod_other_20160505`
--
ALTER TABLE `share_rate_vod_other_20160505`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `index_name` (`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `share_rate_vod_telecom`
--
ALTER TABLE `share_rate_vod_telecom`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `share_rate_vod_telecom_20160505`
--
ALTER TABLE `share_rate_vod_telecom_20160505`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `share_rate_vod_unicom`
--
ALTER TABLE `share_rate_vod_unicom`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `index_name` (`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `share_rate_vod_unicom_20160505`
--
ALTER TABLE `share_rate_vod_unicom_20160505`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `index_name` (`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `stage_quality_dl_other`
--
ALTER TABLE `stage_quality_dl_other`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `stage_quality_dl_telecom`
--
ALTER TABLE `stage_quality_dl_telecom`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `stage_quality_dl_unicom`
--
ALTER TABLE `stage_quality_dl_unicom`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `stage_quality_liv_other`
--
ALTER TABLE `stage_quality_liv_other`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `stage_quality_liv_telecom`
--
ALTER TABLE `stage_quality_liv_telecom`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `stage_quality_liv_unicom`
--
ALTER TABLE `stage_quality_liv_unicom`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `stage_quality_vod_other`
--
ALTER TABLE `stage_quality_vod_other`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `stage_quality_vod_telecom`
--
ALTER TABLE `stage_quality_vod_telecom`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `stage_quality_vod_unicom`
--
ALTER TABLE `stage_quality_vod_unicom`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `stream_table`
--
ALTER TABLE `stream_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `s_name_UNIQUE` (`s_name`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tt`
--
ALTER TABLE `tt`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `idx_time_stamp` (`time_stamp`);

--
-- Indexes for table `tt2`
--
ALTER TABLE `tt2`
  ADD PRIMARY KEY (`id`,`time_stamp`),
  ADD KEY `index_name` (`time_stamp`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `upgrade_version`
--
ALTER TABLE `upgrade_version`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_time` (`time_stamp`);

--
-- Indexes for table `up_speed_share_ratio_20150807`
--
ALTER TABLE `up_speed_share_ratio_20150807`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_timeLength` (`timeLength`),
  ADD KEY `index_hour` (`hour`),
  ADD KEY `index_gid` (`gid`);

--
-- Indexes for table `up_speed_share_ratio_20150808`
--
ALTER TABLE `up_speed_share_ratio_20150808`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_timeLength` (`timeLength`),
  ADD KEY `index_hour` (`hour`),
  ADD KEY `index_gid` (`gid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexes for table `user_session`
--
ALTER TABLE `user_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utime_stat_distribution`
--
ALTER TABLE `utime_stat_distribution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utime_stat_level_distribution`
--
ALTER TABLE `utime_stat_level_distribution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `utime_stat_whole_distribution`
--
ALTER TABLE `utime_stat_whole_distribution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `version_type`
--
ALTER TABLE `version_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ver_name_UNIQUE` (`ver_name`);

--
-- Indexes for table `vid_table`
--
ALTER TABLE `vid_table`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `aid_table`
--
ALTER TABLE `aid_table`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
--
-- 使用表AUTO_INCREMENT `bandwidth`
--
ALTER TABLE `bandwidth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64056;
--
-- 使用表AUTO_INCREMENT `bitrate_dl`
--
ALTER TABLE `bitrate_dl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `bitrate_duration_dl`
--
ALTER TABLE `bitrate_duration_dl`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39367;
--
-- 使用表AUTO_INCREMENT `bitrate_duration_liv`
--
ALTER TABLE `bitrate_duration_liv`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1191088;
--
-- 使用表AUTO_INCREMENT `bitrate_duration_vod`
--
ALTER TABLE `bitrate_duration_vod`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3562003177;
--
-- 使用表AUTO_INCREMENT `cdn_statistics`
--
ALTER TABLE `cdn_statistics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7482588;
--
-- 使用表AUTO_INCREMENT `chid_table`
--
ALTER TABLE `chid_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- 使用表AUTO_INCREMENT `group_table`
--
ALTER TABLE `group_table`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;
--
-- 使用表AUTO_INCREMENT `idc_type`
--
ALTER TABLE `idc_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
--
-- 使用表AUTO_INCREMENT `mid_table`
--
ALTER TABLE `mid_table`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `node_distri_dl_other`
--
ALTER TABLE `node_distri_dl_other`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35419;
--
-- 使用表AUTO_INCREMENT `node_distri_dl_telecom`
--
ALTER TABLE `node_distri_dl_telecom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31841;
--
-- 使用表AUTO_INCREMENT `node_distri_dl_unicom`
--
ALTER TABLE `node_distri_dl_unicom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58379;
--
-- 使用表AUTO_INCREMENT `node_distri_liv_other`
--
ALTER TABLE `node_distri_liv_other`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227210709;
--
-- 使用表AUTO_INCREMENT `node_distri_liv_telecom`
--
ALTER TABLE `node_distri_liv_telecom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264443279;
--
-- 使用表AUTO_INCREMENT `node_distri_liv_unicom`
--
ALTER TABLE `node_distri_liv_unicom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=236373275;
--
-- 使用表AUTO_INCREMENT `node_distri_vod_other`
--
ALTER TABLE `node_distri_vod_other`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153352609;
--
-- 使用表AUTO_INCREMENT `node_distri_vod_telecom`
--
ALTER TABLE `node_distri_vod_telecom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=165039337;
--
-- 使用表AUTO_INCREMENT `node_distri_vod_unicom`
--
ALTER TABLE `node_distri_vod_unicom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157349438;
--
-- 使用表AUTO_INCREMENT `pid_table`
--
ALTER TABLE `pid_table`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- 使用表AUTO_INCREMENT `pl_data`
--
ALTER TABLE `pl_data`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5717980;
--
-- 使用表AUTO_INCREMENT `rid_table`
--
ALTER TABLE `rid_table`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `server_data_gather`
--
ALTER TABLE `server_data_gather`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14241535;
--
-- 使用表AUTO_INCREMENT `server_data_overload`
--
ALTER TABLE `server_data_overload`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20494192;
--
-- 使用表AUTO_INCREMENT `server_data_rtmfp`
--
ALTER TABLE `server_data_rtmfp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25292725;
--
-- 使用表AUTO_INCREMENT `server_info`
--
ALTER TABLE `server_info`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `share_rate_dl_other`
--
ALTER TABLE `share_rate_dl_other`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137502;
--
-- 使用表AUTO_INCREMENT `share_rate_dl_telecom`
--
ALTER TABLE `share_rate_dl_telecom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76683;
--
-- 使用表AUTO_INCREMENT `share_rate_dl_unicom`
--
ALTER TABLE `share_rate_dl_unicom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116595;
--
-- 使用表AUTO_INCREMENT `share_rate_liv_other`
--
ALTER TABLE `share_rate_liv_other`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357839589;
--
-- 使用表AUTO_INCREMENT `share_rate_liv_other_20160505`
--
ALTER TABLE `share_rate_liv_other_20160505`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332256650;
--
-- 使用表AUTO_INCREMENT `share_rate_liv_telecom`
--
ALTER TABLE `share_rate_liv_telecom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436675691;
--
-- 使用表AUTO_INCREMENT `share_rate_liv_telecom_20160505`
--
ALTER TABLE `share_rate_liv_telecom_20160505`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=410311979;
--
-- 使用表AUTO_INCREMENT `share_rate_liv_unicom`
--
ALTER TABLE `share_rate_liv_unicom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394204613;
--
-- 使用表AUTO_INCREMENT `share_rate_liv_unicom_20160505`
--
ALTER TABLE `share_rate_liv_unicom_20160505`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368120066;
--
-- 使用表AUTO_INCREMENT `share_rate_vod_other`
--
ALTER TABLE `share_rate_vod_other`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=374773624;
--
-- 使用表AUTO_INCREMENT `share_rate_vod_other_20160505`
--
ALTER TABLE `share_rate_vod_other_20160505`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339647834;
--
-- 使用表AUTO_INCREMENT `share_rate_vod_telecom`
--
ALTER TABLE `share_rate_vod_telecom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=419243635;
--
-- 使用表AUTO_INCREMENT `share_rate_vod_telecom_20160505`
--
ALTER TABLE `share_rate_vod_telecom_20160505`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=387058397;
--
-- 使用表AUTO_INCREMENT `share_rate_vod_unicom`
--
ALTER TABLE `share_rate_vod_unicom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=395744270;
--
-- 使用表AUTO_INCREMENT `share_rate_vod_unicom_20160505`
--
ALTER TABLE `share_rate_vod_unicom_20160505`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=362908703;
--
-- 使用表AUTO_INCREMENT `stage_quality_dl_other`
--
ALTER TABLE `stage_quality_dl_other`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16113;
--
-- 使用表AUTO_INCREMENT `stage_quality_dl_telecom`
--
ALTER TABLE `stage_quality_dl_telecom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8031;
--
-- 使用表AUTO_INCREMENT `stage_quality_dl_unicom`
--
ALTER TABLE `stage_quality_dl_unicom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8322;
--
-- 使用表AUTO_INCREMENT `stage_quality_liv_other`
--
ALTER TABLE `stage_quality_liv_other`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295371406;
--
-- 使用表AUTO_INCREMENT `stage_quality_liv_telecom`
--
ALTER TABLE `stage_quality_liv_telecom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=297680213;
--
-- 使用表AUTO_INCREMENT `stage_quality_liv_unicom`
--
ALTER TABLE `stage_quality_liv_unicom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279027230;
--
-- 使用表AUTO_INCREMENT `stage_quality_vod_other`
--
ALTER TABLE `stage_quality_vod_other`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238554984;
--
-- 使用表AUTO_INCREMENT `stage_quality_vod_telecom`
--
ALTER TABLE `stage_quality_vod_telecom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255948610;
--
-- 使用表AUTO_INCREMENT `stage_quality_vod_unicom`
--
ALTER TABLE `stage_quality_vod_unicom`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=255663371;
--
-- 使用表AUTO_INCREMENT `stream_table`
--
ALTER TABLE `stream_table`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=573;
--
-- 使用表AUTO_INCREMENT `test`
--
ALTER TABLE `test`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- 使用表AUTO_INCREMENT `tt`
--
ALTER TABLE `tt`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93707693;
--
-- 使用表AUTO_INCREMENT `tt2`
--
ALTER TABLE `tt2`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `upgrade_version`
--
ALTER TABLE `upgrade_version`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42404167;
--
-- 使用表AUTO_INCREMENT `up_speed_share_ratio_20150807`
--
ALTER TABLE `up_speed_share_ratio_20150807`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9311354;
--
-- 使用表AUTO_INCREMENT `up_speed_share_ratio_20150808`
--
ALTER TABLE `up_speed_share_ratio_20150808`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12845993;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- 使用表AUTO_INCREMENT `user_session`
--
ALTER TABLE `user_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `utime_stat_distribution`
--
ALTER TABLE `utime_stat_distribution`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1731469;
--
-- 使用表AUTO_INCREMENT `utime_stat_level_distribution`
--
ALTER TABLE `utime_stat_level_distribution`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43267;
--
-- 使用表AUTO_INCREMENT `utime_stat_whole_distribution`
--
ALTER TABLE `utime_stat_whole_distribution`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47932;
--
-- 使用表AUTO_INCREMENT `version_type`
--
ALTER TABLE `version_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=440;
--
-- 使用表AUTO_INCREMENT `vid_table`
--
ALTER TABLE `vid_table`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;