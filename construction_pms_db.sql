-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 31, 2022 at 02:20 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `construction_pms_db`
--
CREATE DATABASE IF NOT EXISTS `construction_pms_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `construction_pms_db`;

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `aid` int(10) NOT NULL,
  `eid` int(10) NOT NULL,
  `time_in` time NOT NULL,
  `time_out` time NOT NULL,
  `date_today` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`aid`, `eid`, `time_in`, `time_out`, `date_today`) VALUES
(21, 4, '10:41:25', '12:36:24', '2018-03-15'),
(23, 2, '11:04:43', '11:27:27', '2018-03-15'),
(24, 2, '07:52:02', '00:00:00', '2018-03-16'),
(25, 2, '07:52:58', '07:53:00', '2018-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_info`
--

CREATE TABLE `attendance_info` (
  `aten_id` int(20) NOT NULL,
  `atn_user_id` int(20) NOT NULL,
  `in_time` varchar(200) DEFAULT NULL,
  `out_time` varchar(150) DEFAULT NULL,
  `total_duration` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `attendance_info`
--

INSERT INTO `attendance_info` (`aten_id`, `atn_user_id`, `in_time`, `out_time`, `total_duration`) VALUES
(38, 18, '22-03-2021 13:51:01', NULL, NULL),
(35, 17, '22-03-2021 11:37:44', NULL, NULL),
(37, 21, '22-03-2021 13:49:26', NULL, NULL),
(39, 23, '22-03-2021 13:51:51', NULL, NULL),
(40, 20, '22-03-2021 13:52:24', NULL, NULL),
(41, 25, '22-03-2021 15:09:00', '31-07-2022 05:49:45', '14:40:45'),
(42, 1, '22-03-2021 22:01:43', NULL, NULL),
(43, 25, '31-07-2022 05:49:47', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `eid` int(10) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `midname` varchar(50) NOT NULL,
  `bday` date NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `address` varchar(100) NOT NULL,
  `pid` int(10) NOT NULL,
  `status` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `ecode` varchar(10) NOT NULL,
  `date_added` date NOT NULL DEFAULT current_timestamp(),
  `e_pic` varchar(100) NOT NULL,
  `io` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `lastname`, `firstname`, `midname`, `bday`, `contact_no`, `address`, `pid`, `status`, `gender`, `ecode`, `date_added`, `e_pic`, `io`) VALUES
(1, 'Administrator', 'Admin', '', '1987-06-23', '12345678', 'Sample', 1, 'Single', 'Male', '78945', '0000-00-00', '9642_avatar.jpg', 1),
(2, 'Smith', 'John', '', '1993-06-23', '1321', 'Sample', 1, 'Single', 'Male', '78946', '2020-10-05', 'no_image.jpg', 1),
(3, 'Wilson', 'George', '', '1990-07-11', '+54545', 'Sample', 2, 'Married', 'Male', '78947', '2020-10-05', 'no_image.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL,
  `task` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `pid` int(10) NOT NULL,
  `position` varchar(100) NOT NULL,
  `p_type` varchar(15) NOT NULL,
  `daily_rate` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`pid`, `position`, `p_type`, `daily_rate`) VALUES
(1, 'Superviser', '', '1500'),
(2, 'employee', '', '500');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_id` int(10) NOT NULL,
  `project` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `overall_cost` varchar(10) NOT NULL,
  `start_date` date NOT NULL,
  `deadline` date NOT NULL,
  `site_pic` varchar(100) NOT NULL,
  `tid` int(10) NOT NULL,
  `proposed_project` int(5) NOT NULL,
  `date_added` date NOT NULL,
  `io` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_id`, `project`, `location`, `overall_cost`, `start_date`, `deadline`, `site_pic`, `tid`, `proposed_project`, `date_added`, `io`) VALUES
(4, 'Sample Project', 'Sample', '30000000', '2019-02-05', '2020-10-12', '8842_blank.jpg', 1, 1, '2020-10-05', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_division`
--

CREATE TABLE `project_division` (
  `pd_id` int(11) NOT NULL,
  `division` varchar(100) NOT NULL,
  `project_type` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_division`
--

INSERT INTO `project_division` (`pd_id`, `division`, `project_type`) VALUES
(1, 'Layout', 1),
(2, 'Floors', 1),
(3, 'Roof', 1),
(4, 'windows', 1),
(5, 'Sample', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_partition`
--

CREATE TABLE `project_partition` (
  `pp_id` int(10) NOT NULL,
  `project_id` int(10) NOT NULL,
  `pd_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_partition`
--

INSERT INTO `project_partition` (`pp_id`, `project_id`, `pd_id`) VALUES
(1, 2, 5),
(2, 3, 2),
(3, 3, 1),
(4, 4, 2),
(5, 3, 3),
(6, 4, 1),
(7, 4, 3),
(8, 3, 5),
(9, 4, 5),
(10, 3, 4),
(11, 4, 4),
(12, 5, 2),
(13, 5, 1),
(14, 5, 3),
(15, 5, 5),
(16, 5, 4),
(17, 6, 2),
(18, 6, 1),
(19, 6, 3),
(20, 6, 5),
(21, 6, 4),
(22, 7, 2),
(23, 7, 1),
(24, 7, 3),
(25, 7, 5),
(26, 7, 4),
(27, 8, 2),
(28, 8, 1),
(29, 8, 3),
(30, 8, 5),
(31, 8, 4),
(32, 9, 2),
(33, 9, 1),
(34, 9, 3),
(35, 9, 5),
(36, 9, 4),
(37, 10, 2),
(38, 10, 1),
(39, 10, 3),
(40, 10, 5),
(41, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `project_progress`
--

CREATE TABLE `project_progress` (
  `prog_id` int(10) NOT NULL,
  `pp_id` int(10) NOT NULL,
  `progress` int(2) NOT NULL,
  `date_added` date NOT NULL,
  `partition_img` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_progress`
--

INSERT INTO `project_progress` (`prog_id`, `pp_id`, `progress`, `date_added`, `partition_img`) VALUES
(1, 0, 0, '2020-10-05', ''),
(2, 0, 0, '2020-10-05', 'no_image.jpg'),
(3, 0, 0, '2020-10-05', 'no_image.jpg'),
(4, 0, 0, '2020-10-05', ''),
(5, 0, 0, '2020-10-05', ''),
(6, 0, 0, '2020-10-05', ''),
(7, 0, 0, '2020-10-05', ''),
(8, 0, 0, '2020-10-05', ''),
(9, 0, 0, '2020-10-05', ''),
(10, 0, 0, '2020-10-05', 'no_image.jpg'),
(11, 0, 0, '2020-10-05', ''),
(12, 0, 0, '2020-10-05', 'no_image.jpg'),
(13, 1, 80, '2020-10-05', '4703_blank.jpg'),
(14, 0, 0, '2020-10-05', 'no_image.jpg'),
(15, 0, 0, '2020-10-05', 'no_image.jpg'),
(16, 4, 80, '2020-10-05', '6536_blank.jpg'),
(17, 6, 100, '2020-10-05', '1907_blank.jpg'),
(18, 7, 90, '2020-10-05', '8358_blank.jpg'),
(19, 7, 10, '2020-10-05', '9062_blank.jpg'),
(20, 9, 90, '2020-10-05', '3728_blank.jpg'),
(21, 11, 80, '2020-10-05', '9689_blank.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `project_team`
--

CREATE TABLE `project_team` (
  `tid` int(10) NOT NULL,
  `date_added` date NOT NULL,
  `eid` int(10) NOT NULL,
  `pio` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_team`
--

INSERT INTO `project_team` (`tid`, `date_added`, `eid`, `pio`) VALUES
(1, '2020-10-05', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `task_info`
--

CREATE TABLE `task_info` (
  `task_id` int(50) NOT NULL,
  `t_title` varchar(120) NOT NULL,
  `t_description` text DEFAULT NULL,
  `t_start_time` varchar(100) DEFAULT NULL,
  `t_end_time` varchar(100) DEFAULT NULL,
  `t_user_id` int(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0 = incomplete, 1 = In progress, 2 = complete'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `task_info`
--

INSERT INTO `task_info` (`task_id`, `t_title`, `t_description`, `t_start_time`, `t_end_time`, `t_user_id`, `status`) VALUES
(20, 'Communications', 'You\'re assigned to handle incoming calls and other communications within the office.', '2021-03-22 12:00', '2021-03-22 13:00', 17, 2),
(21, 'Filing', 'You\'re assigned to management of filing system.', '2021-03-22 10:00', '2021-03-22 15:10', 22, 0),
(22, 'Virtual Meeting', 'Please join the virtual meeting with your senior manager regarding your works on this placement.', '2021-03-22 15:00', '2021-03-22 15:20', 24, 0),
(23, 'Data Entry', 'Go through some data!', '2021-03-22 14:00', '2021-03-22 17:00', 25, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `user_id` int(20) NOT NULL,
  `fullname` varchar(120) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `temp_password` varchar(100) DEFAULT NULL,
  `user_role` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`user_id`, `fullname`, `username`, `email`, `password`, `temp_password`, `user_role`) VALUES
(1, 'wilson', 'wilson', 'wilson@gmail.com', 'abd7372bba55577590736ef6cb3533c6', NULL, 1),
(17, 'Henry Gonzalez', 'henry', 'henry@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(18, 'Christine Randolph', 'christine', 'christine0@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(19, 'Thomas Yorke', 'thomas', 'thomasrh@gmail.com', 'd19cbde3f7ae39d1ac027dd5319ff687', '7301941', 2),
(20, 'Elijah Jones', 'elijah', 'elijah.jns@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(21, 'Jacob Miller', 'jacob', 'miller.jacob96@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(22, 'Isabella Moore', 'isabella', 'mooreisa@gmail.com', 'd03b2612e88338d193a0ff05c3216053', '7329407', 2),
(23, 'Harry Denn', 'harryden', 'harryden@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2),
(24, 'Ava Anderson', 'ava', 'avason@gmail.com', '789395abc72a025db1604582f52af520', '5876160', 2),
(25, 'Logan Smith', 'logan', 'logansmith@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `team_member`
--

CREATE TABLE `team_member` (
  `tm_id` int(10) NOT NULL,
  `tid` int(10) NOT NULL,
  `eid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_member`
--

INSERT INTO `team_member` (`tm_id`, `tid`, `eid`) VALUES
(1, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(10) NOT NULL,
  `eid` int(5) NOT NULL,
  `user_type` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `io` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `eid`, `user_type`, `username`, `password`, `io`) VALUES
(1, 1, 1, 'admin', 'admin', 1),
(3, 3, 2, 'wilson', 'wilson', 1),
(4, 2, 1, 'smith', 'smith', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `attendance_info`
--
ALTER TABLE `attendance_info`
  ADD PRIMARY KEY (`aten_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `project_division`
--
ALTER TABLE `project_division`
  ADD PRIMARY KEY (`pd_id`);

--
-- Indexes for table `project_partition`
--
ALTER TABLE `project_partition`
  ADD PRIMARY KEY (`pp_id`);

--
-- Indexes for table `project_progress`
--
ALTER TABLE `project_progress`
  ADD PRIMARY KEY (`prog_id`);

--
-- Indexes for table `project_team`
--
ALTER TABLE `project_team`
  ADD PRIMARY KEY (`tid`);

--
-- Indexes for table `task_info`
--
ALTER TABLE `task_info`
  ADD PRIMARY KEY (`task_id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `team_member`
--
ALTER TABLE `team_member`
  ADD PRIMARY KEY (`tm_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `attendance_info`
--
ALTER TABLE `attendance_info`
  MODIFY `aten_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `eid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `project_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `project_division`
--
ALTER TABLE `project_division`
  MODIFY `pd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `project_partition`
--
ALTER TABLE `project_partition`
  MODIFY `pp_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `project_progress`
--
ALTER TABLE `project_progress`
  MODIFY `prog_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `project_team`
--
ALTER TABLE `project_team`
  MODIFY `tid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_info`
--
ALTER TABLE `task_info`
  MODIFY `task_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `user_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `team_member`
--
ALTER TABLE `team_member`
  MODIFY `tm_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
