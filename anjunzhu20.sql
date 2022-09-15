-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2021-12-12 06:18:00
-- 服务器版本： 10.4.11-MariaDB
-- PHP 版本： 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `anjunzhu20`
--

-- --------------------------------------------------------

--
-- 表的结构 `base_station_list`
--

CREATE TABLE `base_station_list` (
  `base_station_coordinate` varchar(100) NOT NULL,
  `district` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `base_station_list`
--

INSERT INTO `base_station_list` (`base_station_coordinate`, `district`) VALUES
('60104.4,7798.84', 'Centre Lukewarm Hillside'),
('60204.4,7798.84', 'Centre Lukewarm Hillside'),
('60304.4,7798.84', 'Centre Lukewarm Hillside'),
('22304.4,7338', 'Glow Sand district'),
('10101.1,2098.84', 'Lenny town'),
('10201.1,2098.84', 'Lenny town');

-- --------------------------------------------------------

--
-- 表的结构 `citizen_list`
--

CREATE TABLE `citizen_list` (
  `sim_id` int(10) NOT NULL,
  `citizen_name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `citizen_list`
--

INSERT INTO `citizen_list` (`sim_id`, `citizen_name`, `gender`, `age`) VALUES
(233636, 'Mark', 'Male', 34),
(800810000, 'Michail Antonio', 'Male', 31),
(800810001, 'Andriy Yarmolenko', 'Male', 32),
(800810002, 'Said Benrahma', 'Male', 26),
(800810003, 'Nikola Vlasic', 'Male', 24),
(800810004, 'Declan Rice', 'Male', 22),
(800810005, 'Tomas Soucek', 'Male', 26),
(800810006, 'Jarrod Bowen', 'Male', 24),
(800810007, 'Pablo Fornals', 'Male', 25),
(800810008, 'Manuel Lanzini', 'Male', 28),
(800810009, 'Arthur Masuaku', 'Male', 28),
(800810010, 'Alex Kral', 'Male', 23),
(800810011, 'Kurt Zouma', 'Male', 27),
(800810012, 'Aaron Cresswell', 'Male', 31),
(800810013, 'Vladimir Coufal', 'Male', 29),
(800810014, 'Issa Diop', 'Male', 24),
(800810015, 'Angelo Ogbonna', 'Male', 33),
(800810016, 'Ben Johnson', 'Male', 21),
(800810017, 'Craig Dawson', 'Male', 31),
(800810018, 'Ryan Fredericks', 'Male', 29),
(800810019, 'Lukasz Fabianski', 'Male', 36);

-- --------------------------------------------------------

--
-- 表的结构 `district_list`
--

CREATE TABLE `district_list` (
  `district_name` varchar(50) NOT NULL,
  `region_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `district_list`
--

INSERT INTO `district_list` (`district_name`, `region_name`) VALUES
('Centre Lukewarm Hillside', 'Central Region'),
('Glow Sand district', 'East Region'),
('Lenny town', 'East Region'),
('Raspberry town', 'West Region');

-- --------------------------------------------------------

--
-- 表的结构 `doctor_list`
--

CREATE TABLE `doctor_list` (
  `doctor_id` int(10) NOT NULL,
  `doctor_name` varchar(50) NOT NULL,
  `hospital_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `doctor_list`
--

INSERT INTO `doctor_list` (`doctor_id`, `doctor_name`, `hospital_name`) VALUES
(800810006, 'Jarrod Bowen', 'Central Lukewarm Kingdom Hospital'),
(800810007, 'Pablo Fornals', 'Lenny Town Hospital'),
(800810008, 'Manuel Lanzini', 'Glow Sand Hospital'),
(800810009, 'Arthur Masuaku', 'Raspberry Hospital');

-- --------------------------------------------------------

--
-- 表的结构 `hospital_list`
--

CREATE TABLE `hospital_list` (
  `hospital_name` varchar(50) NOT NULL,
  `district` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `hospital_list`
--

INSERT INTO `hospital_list` (`hospital_name`, `district`) VALUES
('Central Lukewarm Kingdom Hospital', 'Centre Lukewarm Hillside'),
('Glow Sand Hospital', 'Glow Sand district'),
('Lenny Town Hospital', 'Lenny town'),
('Raspberry Hospital', 'Raspberry town');

-- --------------------------------------------------------

--
-- 表的结构 `region_list`
--

CREATE TABLE `region_list` (
  `region_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `region_list`
--

INSERT INTO `region_list` (`region_name`) VALUES
('Central Region'),
('East Region'),
('North Region'),
('South Region'),
('West Region');

-- --------------------------------------------------------

--
-- 表的结构 `sample_list`
--

CREATE TABLE `sample_list` (
  `sample_name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `sample_list`
--

INSERT INTO `sample_list` (`sample_name`, `description`) VALUES
('Coughid-21', 'Coughid-21 is a newly identified type of virus this year, all patients tested to be positive should rest well and avoid going outside.');

-- --------------------------------------------------------

--
-- 表的结构 `test_list`
--

CREATE TABLE `test_list` (
  `test_id` int(20) NOT NULL,
  `test_taker_id` int(10) NOT NULL,
  `doctor_id` int(10) NOT NULL,
  `collect_time` datetime NOT NULL,
  `test_time` datetime NOT NULL,
  `report_time` datetime NOT NULL,
  `test_sample_type` varchar(50) NOT NULL,
  `is_healthy` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `test_list`
--

INSERT INTO `test_list` (`test_id`, `test_taker_id`, `doctor_id`, `collect_time`, `test_time`, `report_time`, `test_sample_type`, `is_healthy`) VALUES
(1, 800810010, 800810006, '2021-10-01 13:50:00', '2021-10-01 14:50:00', '2021-10-01 15:50:00', 'Coughid-21', 1),
(2, 800810010, 800810007, '2021-10-02 13:50:00', '2021-10-02 14:50:00', '2021-10-02 16:50:00', 'Coughid-21', 1),
(3, 800810010, 800810008, '2021-10-03 13:50:00', '2021-10-03 14:50:00', '2021-10-03 17:50:00', 'Coughid-21', 1),
(4, 800810010, 800810009, '2021-10-04 13:50:00', '2021-10-04 14:50:00', '2021-10-04 18:50:00', 'Coughid-21', 1),
(5, 800810010, 800810006, '2021-10-05 13:50:00', '2021-10-05 14:50:00', '2021-10-05 15:50:00', 'Coughid-21', 1),
(6, 800810010, 800810007, '2021-10-06 13:50:00', '2021-10-06 14:50:00', '2021-10-06 16:50:00', 'Coughid-21', 1),
(7, 800810010, 800810008, '2021-10-07 13:50:00', '2021-10-07 14:50:00', '2021-10-07 17:50:00', 'Coughid-21', 1),
(8, 800810010, 800810009, '2021-10-08 13:50:00', '2021-10-08 14:50:00', '2021-10-08 18:50:00', 'Coughid-21', 1),
(9, 800810010, 800810006, '2021-10-09 13:50:00', '2021-10-09 14:50:00', '2021-10-09 15:50:00', 'Coughid-21', 1),
(10, 800810010, 800810007, '2021-10-10 13:50:00', '2021-10-10 14:50:00', '2021-10-10 16:50:00', 'Coughid-21', 1),
(11, 800810010, 800810008, '2021-10-11 13:50:00', '2021-10-11 14:50:00', '2021-10-11 17:50:00', 'Coughid-21', 1),
(12, 800810010, 800810009, '2021-10-12 13:50:00', '2021-10-12 14:50:00', '2021-10-12 18:50:00', 'Coughid-21', 1),
(13, 800810010, 800810006, '2021-10-13 13:50:00', '2021-10-13 14:50:00', '2021-10-13 15:50:00', 'Coughid-21', 1),
(14, 800810010, 800810007, '2021-10-14 13:50:00', '2021-10-14 14:50:00', '2021-10-14 16:50:00', 'Coughid-21', 1),
(15, 800810010, 800810008, '2021-10-15 13:50:00', '2021-10-15 14:50:00', '2021-10-15 17:50:00', 'Coughid-21', 1),
(16, 800810010, 800810009, '2021-10-16 13:50:00', '2021-10-16 14:50:00', '2021-10-16 18:50:00', 'Coughid-21', 1),
(17, 800810010, 800810006, '2021-10-17 13:50:00', '2021-10-17 14:50:00', '2021-10-17 15:50:00', 'Coughid-21', 1),
(18, 800810010, 800810007, '2021-10-18 13:50:00', '2021-10-18 14:50:00', '2021-10-18 16:50:00', 'Coughid-21', 1),
(19, 800810010, 800810008, '2021-10-19 13:50:00', '2021-10-19 14:50:00', '2021-10-19 17:50:00', 'Coughid-21', 1),
(20, 800810010, 800810009, '2021-10-20 13:50:00', '2021-10-20 14:50:00', '2021-10-20 18:50:00', 'Coughid-21', 1),
(21, 800810011, 800810006, '2021-10-03 19:00:00', '2021-10-03 19:50:00', '2021-10-03 20:50:00', 'Coughid-21', 1),
(22, 800810012, 800810006, '2021-10-03 19:00:00', '2021-10-03 19:50:00', '2021-10-03 20:50:00', 'Coughid-21', 1),
(23, 800810013, 800810006, '2021-10-03 19:00:00', '2021-10-03 19:50:00', '2021-10-03 20:50:00', 'Coughid-21', 1),
(24, 800810014, 800810006, '2021-10-03 19:00:00', '2021-10-03 19:50:00', '2021-10-03 20:50:00', 'Coughid-21', 1),
(25, 800810011, 800810006, '2021-10-04 20:00:00', '2021-10-04 20:50:00', '2021-10-04 21:50:00', 'Coughid-21', 1),
(26, 800810012, 800810006, '2021-10-04 20:00:00', '2021-10-04 20:50:00', '2021-10-04 21:50:00', 'Coughid-21', 1),
(27, 800810013, 800810006, '2021-10-04 13:00:00', '2021-10-03 19:50:00', '2021-10-03 20:50:00', 'Coughid-21', 1),
(28, 800810014, 800810006, '2021-10-04 14:00:00', '2021-10-03 19:50:00', '2021-10-03 20:50:00', 'Coughid-21', 1),
(29, 800810015, 800810006, '2021-10-04 14:00:00', '2021-10-03 19:50:00', '2021-10-03 20:50:00', 'Coughid-21', 1),
(30, 800810015, 800810006, '2021-10-03 11:00:00', '2021-10-03 19:50:00', '2021-10-03 20:50:00', 'Coughid-21', 1),
(31, 800810015, 800810006, '2021-10-04 15:00:00', '2021-10-04 19:50:00', '2021-10-04 20:50:00', 'Coughid-21', 1),
(32, 800810016, 800810006, '2021-10-04 20:00:00', '2021-10-04 20:50:00', '2021-10-04 21:50:00', 'Coughid-21', 0),
(33, 800810017, 800810007, '2021-10-04 20:00:00', '2021-10-04 20:50:00', '2021-10-04 21:50:00', 'Coughid-21', 0),
(34, 800810018, 800810006, '2021-10-04 20:00:00', '2021-10-04 20:50:00', '2021-10-04 21:50:00', 'Coughid-21', 0),
(35, 800810019, 800810006, '2021-10-05 20:00:00', '2021-10-05 20:50:00', '2021-10-05 21:50:00', 'Coughid-21', 0);

-- --------------------------------------------------------

--
-- 表的结构 `travel_record_list`
--

CREATE TABLE `travel_record_list` (
  `travel_id` int(20) NOT NULL,
  `traveller_sim_id` int(10) NOT NULL,
  `base_station_coordinate` varchar(100) NOT NULL,
  `enter_time` datetime NOT NULL,
  `exit_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `travel_record_list`
--

INSERT INTO `travel_record_list` (`travel_id`, `traveller_sim_id`, `base_station_coordinate`, `enter_time`, `exit_time`) VALUES
(1, 800810000, '10101.1,2098.84', '2021-10-06 19:30:00', '2021-10-07 19:40:00'),
(2, 800810000, '22304.4,7338', '2021-10-07 19:40:00', '2021-10-09 19:40:00'),
(3, 800810001, '22304.4,7338', '2021-10-07 19:20:00', '2021-10-09 19:40:00'),
(4, 800810001, '10101.1,2098.84', '2021-10-09 19:40:00', '2021-10-09 19:50:00'),
(5, 800810002, '10101.1,2098.84', '2021-10-06 19:35:00', '2021-10-06 19:40:00'),
(6, 800810002, '22304.4,7338', '2021-10-06 19:40:00', '2021-10-09 19:35:00'),
(7, 800810003, '22304.4,7338', '2021-10-06 19:20:00', '2021-10-07 19:50:00'),
(8, 800810003, '10101.1,2098.84', '2021-10-07 19:50:00', '2021-10-07 20:50:00'),
(9, 800810003, '60204.4,7798.84', '2021-10-07 20:50:00', '2021-10-08 20:50:00'),
(10, 800810003, '22304.4,7338', '2021-10-08 20:50:00', '2021-10-09 19:40:00'),
(11, 800810004, '22304.4,7338', '2021-10-06 10:50:00', '2021-10-08 22:50:00'),
(12, 800810004, '60204.4,7798.84', '2021-10-08 22:50:00', '2021-10-09 22:50:00'),
(13, 800810004, '10101.1,2098.84', '2021-10-09 22:50:00', '2021-10-09 23:50:00'),
(14, 800810005, '22304.4,7338', '2021-10-06 12:50:00', '2021-10-06 13:50:00'),
(15, 800810005, '10101.1,2098.84', '2021-10-06 13:50:00', '2021-10-09 19:50:00'),
(16, 800810005, '22304.4,7338', '2021-10-09 19:50:00', '2021-10-09 19:55:00'),
(17, 233636, '22304.4,7338', '2021-10-06 13:50:00', '2021-10-07 19:30:00'),
(18, 233636, '10101.1,2098.84', '2021-10-07 19:30:00', '2021-10-07 19:50:00'),
(19, 233636, '10201.1,2098.84', '2021-10-07 19:50:00', '2021-10-08 21:50:00'),
(20, 233636, '60104.4,7798.84', '2021-10-08 21:50:00', '2021-10-08 22:50:00'),
(21, 233636, '60204.4,7798.84', '2021-10-08 22:50:00', '2021-10-09 13:50:00'),
(22, 233636, '60304.4,7798.84', '2021-10-09 13:50:00', '2021-10-09 19:30:00'),
(23, 800810000, '22304.4,7338', '2021-12-18 19:30:00', '2021-12-18 20:30:00');

--
-- 转储表的索引
--

--
-- 表的索引 `base_station_list`
--
ALTER TABLE `base_station_list`
  ADD PRIMARY KEY (`base_station_coordinate`),
  ADD KEY `district` (`district`);

--
-- 表的索引 `citizen_list`
--
ALTER TABLE `citizen_list`
  ADD PRIMARY KEY (`sim_id`);

--
-- 表的索引 `district_list`
--
ALTER TABLE `district_list`
  ADD PRIMARY KEY (`district_name`),
  ADD KEY `region_name` (`region_name`);

--
-- 表的索引 `doctor_list`
--
ALTER TABLE `doctor_list`
  ADD PRIMARY KEY (`doctor_id`),
  ADD KEY `hospital_name` (`hospital_name`);

--
-- 表的索引 `hospital_list`
--
ALTER TABLE `hospital_list`
  ADD PRIMARY KEY (`hospital_name`),
  ADD KEY `district` (`district`);

--
-- 表的索引 `region_list`
--
ALTER TABLE `region_list`
  ADD PRIMARY KEY (`region_name`);

--
-- 表的索引 `sample_list`
--
ALTER TABLE `sample_list`
  ADD PRIMARY KEY (`sample_name`),
  ADD UNIQUE KEY `description` (`description`);

--
-- 表的索引 `test_list`
--
ALTER TABLE `test_list`
  ADD PRIMARY KEY (`test_id`),
  ADD KEY `patient_id` (`test_taker_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `result` (`test_sample_type`);

--
-- 表的索引 `travel_record_list`
--
ALTER TABLE `travel_record_list`
  ADD PRIMARY KEY (`travel_id`),
  ADD KEY `traveller_sim_id` (`traveller_sim_id`),
  ADD KEY `base_station_coordinate` (`base_station_coordinate`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `test_list`
--
ALTER TABLE `test_list`
  MODIFY `test_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- 使用表AUTO_INCREMENT `travel_record_list`
--
ALTER TABLE `travel_record_list`
  MODIFY `travel_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 限制导出的表
--

--
-- 限制表 `base_station_list`
--
ALTER TABLE `base_station_list`
  ADD CONSTRAINT `base_station_list_ibfk_1` FOREIGN KEY (`district`) REFERENCES `district_list` (`district_name`);

--
-- 限制表 `district_list`
--
ALTER TABLE `district_list`
  ADD CONSTRAINT `district_list_ibfk_1` FOREIGN KEY (`region_name`) REFERENCES `region_list` (`region_name`);

--
-- 限制表 `doctor_list`
--
ALTER TABLE `doctor_list`
  ADD CONSTRAINT `doctor_list_ibfk_1` FOREIGN KEY (`doctor_id`) REFERENCES `citizen_list` (`sim_id`),
  ADD CONSTRAINT `doctor_list_ibfk_2` FOREIGN KEY (`hospital_name`) REFERENCES `hospital_list` (`hospital_name`);

--
-- 限制表 `hospital_list`
--
ALTER TABLE `hospital_list`
  ADD CONSTRAINT `hospital_list_ibfk_1` FOREIGN KEY (`district`) REFERENCES `district_list` (`district_name`);

--
-- 限制表 `test_list`
--
ALTER TABLE `test_list`
  ADD CONSTRAINT `test_list_ibfk_1` FOREIGN KEY (`test_taker_id`) REFERENCES `citizen_list` (`sim_id`),
  ADD CONSTRAINT `test_list_ibfk_3` FOREIGN KEY (`doctor_id`) REFERENCES `doctor_list` (`doctor_id`),
  ADD CONSTRAINT `test_list_ibfk_4` FOREIGN KEY (`test_sample_type`) REFERENCES `sample_list` (`sample_name`);

--
-- 限制表 `travel_record_list`
--
ALTER TABLE `travel_record_list`
  ADD CONSTRAINT `travel_record_list_ibfk_1` FOREIGN KEY (`traveller_sim_id`) REFERENCES `citizen_list` (`sim_id`),
  ADD CONSTRAINT `travel_record_list_ibfk_2` FOREIGN KEY (`base_station_coordinate`) REFERENCES `base_station_list` (`base_station_coordinate`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
