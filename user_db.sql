-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 14, 2023 at 09:27 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `accountdb`
--
CREATE DATABASE IF NOT EXISTS `accountdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `accountdb`;

-- --------------------------------------------------------

--
-- Table structure for table `usertb`
--

CREATE TABLE `usertb` (
  `id` int(11) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `upassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usertb`
--

INSERT INTO `usertb` (`id`, `uname`, `upassword`) VALUES
(2, 'gun', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usertb`
--
ALTER TABLE `usertb`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usertb`
--
ALTER TABLE `usertb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `blog`
--
CREATE DATABASE IF NOT EXISTS `blog` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `blog`;
--
-- Database: `course_db`
--
CREATE DATABASE IF NOT EXISTS `course_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `course_db`;

-- --------------------------------------------------------

--
-- Table structure for table `role_tb`
--

CREATE TABLE `role_tb` (
  `role_name` varchar(20) NOT NULL,
  `role_duty` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_tb`
--

INSERT INTO `role_tb` (`role_name`, `role_duty`, `role_id`) VALUES
('user', 'only view course', 1),
('instructor', 'comment and edit some fill in their course', 2),
('Admin', 'Support everyone and can edit all fill with all course', 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_tb`
--

CREATE TABLE `user_tb` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `upassword` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tb`
--

INSERT INTO `user_tb` (`id`, `username`, `upassword`, `email`, `role_id`) VALUES
(2, 'Gun', '1234', 'Gun@gmail.com', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `role_tb`
--
ALTER TABLE `role_tb`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `user_tb`
--
ALTER TABLE `user_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_tb`
--
ALTER TABLE `user_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_tb`
--
ALTER TABLE `user_tb`
  ADD CONSTRAINT `user_tb_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role_tb` (`role_id`);
--
-- Database: `foodorder`
--
CREATE DATABASE IF NOT EXISTS `foodorder` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `foodorder`;

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactid` int(11) NOT NULL,
  `head` text NOT NULL,
  `l1` text NOT NULL,
  `l2` text NOT NULL,
  `l3` text NOT NULL,
  `numhome` varchar(11) NOT NULL,
  `tnon` text NOT NULL,
  `tumbon` text NOT NULL,
  `umper` text NOT NULL,
  `jungwad` text NOT NULL,
  `paisanee` text NOT NULL,
  `tel` text NOT NULL,
  `email` text NOT NULL,
  `facebook` text NOT NULL,
  `ig` text NOT NULL,
  `map` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactid`, `head`, `l1`, `l2`, `l3`, `numhome`, `tnon`, `tumbon`, `umper`, `jungwad`, `paisanee`, `tel`, `email`, `facebook`, `ig`, `map`) VALUES
(1, 'ติดต่อสอบถามข้อมูล', 'สามารถติดต่อสอบถามข้อมูลเพิ่มเติมได้ผ่านช่องทางการติดต่อด้านล่างนี้', 'ตั้งแต่เวลา 09:00-22:00 (เว้นวันหยุดราชการ)', '', '(บ้านเลขที่', 'ถนน', 'ตำบล', 'อำเภอ', 'จังหวัด', 'เลขไปร', 'เบอร์ร้าน', 'อีเมลร้าน', 'ลิงค์เฟสร้าน', 'ลิงค์ไอจีร้าน', 'ไอเฟรมกูเกิ้ลแมพร้าน');

-- --------------------------------------------------------

--
-- Table structure for table `delaccount`
--

CREATE TABLE `delaccount` (
  `delacid` int(11) NOT NULL,
  `delacemail` text NOT NULL,
  `delactime` text NOT NULL,
  `delacreq` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delaccount`
--

INSERT INTO `delaccount` (`delacid`, `delacemail`, `delactime`, `delacreq`) VALUES
(1, 'd@d.d', '2021-09-18 19:16:14', 'dddddd'),
(2, 'a@a.a', '2021-09-18 19:17:56', 'ไม่ได้ใช้งานเเล้วครับ'),
(5, 'c@c.c', '2021-09-18 19:29:50', 'ไม่ได้ใช้งานเเล้วครับ');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `foodid` int(11) NOT NULL,
  `foodname` text NOT NULL,
  `foodbody` text NOT NULL,
  `price` text NOT NULL,
  `typefood` text NOT NULL,
  `foodpic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`foodid`, `foodname`, `foodbody`, `price`, `typefood`, `foodpic`) VALUES
(1, 'ข้าวผัดกะเพรา', 'หมู/หมูสับ/ไก่/ปลาหมึก/กุ้ง/หมูกรอบ', '40', 'อาหาร', 'a.jpg'),
(2, 'ข้าวผัดกระเทียม', 'หมู/หมูสับ/ไก่/ปลาหมึก/กุ้ง/หมูกรอบ', '40', 'อาหาร', '0d9596698bfb44b8a8dd9b6cf57c546d.jpg'),
(3, 'ข้าวผัดคะน้า', 'หมู/หมูสับ/ไก่/ปลาหมึก/กุ้ง/หมูกรอบ', '40', 'อาหาร', 'C8i156MUAAAZEu_.jpg'),
(4, 'ข้าวผัด', 'หมู/หมูสับ/ไก่/ปลาหมึก/กุ้ง', '40', 'อาหาร', 'b.jpg'),
(17, 'สุกี้น้ำ', 'หมู/ทะเล', '40', 'อาหาร', 'sukiyaki.jpg'),
(18, 'สุกี้แห้ง', 'หมู/ทะเล', '40', 'อาหาร', 'd62e54b071649f88df84db4a1213ed66.jpg'),
(19, 'ราดหน้า', 'หมู/ทะเล', '40', 'อาหาร', 'Highlight-Menu-0062-scaled-1.jpg'),
(20, 'ผัดซีอิ๊ว', 'หมู/ทะเล', '40', 'อาหาร', 'unnamed.jpg'),
(22, 'ไข่ดาว', 'สุก/ไม่สุก/มีขอบ/ไม่มีขอบ', '10', 'อาหาร', 'RT1599_ImageBannerMobile_960x633_New_.jpg'),
(23, 'ข้าวเปล่า', 'ข้าวหอมมะลิหุงใหม่ร้อน ๆ ', '10', 'อาหาร', 'cf356b4c1569f9bd63d5deb1f65563e6e_13903858_190503_0048.jpg.350x350_q85_crop_upscale.jpg'),
(24, 'กาแฟอเมริกาโน่', 'ร้อน/เย็น', '35', 'เครื่องดื่ม', '11.jpg'),
(25, 'กาแฟเอสเพรสโซ่', 'ร้อน/เย็น', '35', 'เครื่องดื่ม', 'espresso.jpg'),
(26, 'กาแฟคาปูชิโน่', 'ร้อน/เย็น', '35', 'เครื่องดื่ม', 'capuccino-1024x640.jpg'),
(28, 'กาแฟลาเต้', 'ร้อน/เย็น', '35', 'เครื่องดื่ม', 'latte.png'),
(29, 'กาแฟมอคค่า', 'ร้อน/เย็น', '35', 'เครื่องดื่ม', 'mocha.png'),
(30, 'กาแฟดัลโกน่า', 'ร้อน/เย็น', '35', 'เครื่องดื่ม', 'Dalgona-Coffee-open.jpg'),
(31, 'ชานมไต้หวัน', 'ไข่มุก/วุ้น', '30', 'เครื่องดื่ม', 'b40c5fdb97a8483e9b26073056845792.jpg'),
(32, 'สตอเบอรี่โซดา', 'เย็น', '30', 'เครื่องดื่ม', 'shutterstock_1457520911-1.jpg'),
(33, 'เฟรนช์ฟรายส์', 'ซอสพริก/มะเขือเทศ/มายองเนส', '25', 'ของว่าง', 'fire.jpg'),
(34, 'นักเก็ตไก่', 'ซอสพริก/มะเขือเทศ/มายองเนส', '25', 'ของว่าง', 'E1MzkRvVIAI-RI4.jpg'),
(35, 'เทมปุระ', 'โชยุ/ซอสพริก/มะเขือเทศ/มายองเนส', '30', 'ของว่าง', 'tempura.jpg'),
(36, 'ขนมจีบ', 'หมู/กุ้ง', '30', 'ของว่าง', 'jeeb.jpg'),
(37, 'เกี๊ยว', 'หมู/กุ้ง', '30', 'ของว่าง', '08.jpg'),
(38, 'ซาลาเปา', 'ถั่วเหลือง/หมู', '15', 'ของว่าง', 'pao.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `forgotpass`
--

CREATE TABLE `forgotpass` (
  `forgotid` int(11) NOT NULL,
  `forgotemail` text NOT NULL,
  `forgotcode` int(50) NOT NULL,
  `forgottime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_no` int(10) NOT NULL,
  `menu_name` text NOT NULL,
  `menu_type` text NOT NULL,
  `menu_link` text NOT NULL,
  `menu_status` text NOT NULL,
  `menu_sort` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_no`, `menu_name`, `menu_type`, `menu_link`, `menu_status`, `menu_sort`) VALUES
(1, 'Home', '1', 'user.php', 'เปิด', 1),
(2, 'Profile', '1', 'profile.php', 'เปิด', 2),
(3, 'Order', '1', 'order.php', 'เปิด', 3),
(4, 'History', '1', 'history.php', 'เปิด', 4),
(5, 'Contact', '1', 'contact.php', 'เปิด', 5),
(6, 'Logout', '1', 'logout.php', 'เปิด', 6);

-- --------------------------------------------------------

--
-- Table structure for table `orderlist`
--

CREATE TABLE `orderlist` (
  `orderid` int(11) NOT NULL,
  `rname` text NOT NULL,
  `lname` text NOT NULL,
  `email` text NOT NULL,
  `numhome` text NOT NULL,
  `mhoo` text NOT NULL,
  `tumbon` text NOT NULL,
  `umper` text NOT NULL,
  `jungwad` text NOT NULL,
  `paisanee` text NOT NULL,
  `tel` text NOT NULL,
  `orderf` text NOT NULL,
  `orderd` text NOT NULL,
  `orderb` text NOT NULL,
  `other` text NOT NULL,
  `ordertime` datetime NOT NULL,
  `orderstat` text NOT NULL,
  `pf` int(11) NOT NULL,
  `pd` int(11) NOT NULL,
  `pb` int(11) NOT NULL,
  `totalp` int(11) NOT NULL,
  `totalall` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderlist`
--

INSERT INTO `orderlist` (`orderid`, `rname`, `lname`, `email`, `numhome`, `mhoo`, `tumbon`, `umper`, `jungwad`, `paisanee`, `tel`, `orderf`, `orderd`, `orderb`, `other`, `ordertime`, `orderstat`, `pf`, `pd`, `pb`, `totalp`, `totalall`) VALUES
(38, 'xxxx', 'xxxxxxx', 'x@x.x', '4000', '70', 'ท่า', 'เมือง', 'เชียง', '99999', '0902759999', 'ข้าวผัดกะเพรา', 'ชานมไต้หวัน', '-', 'หมู', '2021-09-05 17:35:12', 'ส่งอาหารเรียบร้อย', 40, 30, 0, 70, 120),
(39, 'aaaa', 'aaaaaaaa', 'a@a.a', '4000', '71', 'ท่า', 'เมือง', 'เชียง', '99999', '0902759999', '-', '-', 'ขนมจีบ', 'กุ้ง', '2021-09-05 17:35:59', 'ออเดอร์ถูกยกเลิกแล้ว', 0, 0, 30, 30, 80),
(40, 'น้ำนม', 'แก้วเต็มใบ', 'x@gmail.com', '8550', '94', 'ท่า', 'เมือง', 'เชียง', '99999', '0999939489', '-', 'ชานมไต้หวัน', '-', 'เพิ่มไข่มุกเยอะๆนะคะ', '2021-09-05 17:37:11', 'ออเดอร์ถูกยกเลิกแล้ว', 0, 30, 0, 30, 80),
(41, 'น้ำนม', 'แก้วเต็มใบ', 'x@gmail.com', '8550', '96', 'ท่า', 'เมือง', 'เชียง', '99999', '0999939489', '-', '-', 'ซาลาเปา', 'ไส้หมู', '2021-09-05 17:37:38', 'ส่งอาหารเรียบร้อย', 0, 0, 15, 15, 65);

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `submenu_no` int(10) NOT NULL,
  `menu_no` int(10) NOT NULL,
  `submenu_name` text NOT NULL,
  `submenu_link` text NOT NULL,
  `submenu_status` text NOT NULL,
  `submenu_sort` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`submenu_no`, `menu_no`, `submenu_name`, `submenu_link`, `submenu_status`, `submenu_sort`) VALUES
(1, 13, 'ไก่แจ้หลวง', 'chi.php', 'เปิด', 1),
(2, 13, 'ไก่แจ้แก่ใหญ่', 'ddd.php', 'เปิด', 2);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `rname` text NOT NULL,
  `lname` text NOT NULL,
  `email` text NOT NULL,
  `pass` text NOT NULL,
  `sex` text NOT NULL,
  `numhome` varchar(11) NOT NULL,
  `mhoo` varchar(11) NOT NULL,
  `tumbon` text NOT NULL,
  `umper` text NOT NULL,
  `jungwad` text NOT NULL,
  `paisanee` text NOT NULL,
  `tel` text NOT NULL,
  `stat` varchar(6) NOT NULL,
  `pic` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `rname`, `lname`, `email`, `pass`, `sex`, `numhome`, `mhoo`, `tumbon`, `umper`, `jungwad`, `paisanee`, `tel`, `stat`, `pic`) VALUES
(1, 'xxxx', 'xxxxxxxx', 'a@gmail.com', '1234', 'ชาย', '4855', '70', 'ท่า', 'เมือง', 'เชียง', '99999', '0902759999', 'admin', ''),
(5, 'น้ำนม', 'แก้วเต็มใบ', 'x@gmail.com', '1234', 'หญิง', '8557', '90', 'ท่า', 'เมือง', 'เชียง', '99999', '099939489', 'user', '2.png'),
(10, 'Kuttapat ', 'Somwang', 'exesport254618@gamil.com', 'za123456', 'ชาย', '270', '9', 'ลำพยา', 'เมือง', 'นครปฐม', '73000', '0979603214', 'user', ''),
(11, 'Kuttapat ', 'Somwang', 'exesport254618@gamil.com', 'za123456', 'ชาย', '270', '9', 'ลำพยา', 'เมือง', 'นครปฐม', '73000', '0979603214', 'user', ''),
(12, 'xx', 'xx', 'xx@gmail.com', '1234', '', '1', '1', 'z', 'z', 'z', '5', '51', 'user', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactid`);

--
-- Indexes for table `delaccount`
--
ALTER TABLE `delaccount`
  ADD PRIMARY KEY (`delacid`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`foodid`);

--
-- Indexes for table `forgotpass`
--
ALTER TABLE `forgotpass`
  ADD PRIMARY KEY (`forgotid`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_no`);

--
-- Indexes for table `orderlist`
--
ALTER TABLE `orderlist`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`submenu_no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `contactid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delaccount`
--
ALTER TABLE `delaccount`
  MODIFY `delacid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `foodid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `forgotpass`
--
ALTER TABLE `forgotpass`
  MODIFY `forgotid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orderlist`
--
ALTER TABLE `orderlist`
  MODIFY `orderid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `submenu_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `kfcexam`
--
CREATE DATABASE IF NOT EXISTS `kfcexam` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kfcexam`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `F_ID` int(11) NOT NULL,
  `F_Name` varchar(255) NOT NULL,
  `F_Price` int(11) NOT NULL,
  `F_Description` varchar(255) NOT NULL,
  `Menu_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`F_ID`, `F_Name`, `F_Price`, `F_Description`, `Menu_ID`) VALUES
(1, 'ไก่น่อย', 4000, 'ควยไรสัส', 1),
(2, 'ไก่น่อย2', 4000, 'ควยไรสัส2', 2),
(5, 'ddddd', 1234, 'ddddd', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`F_ID`);
--
-- Database: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mydb`;

-- --------------------------------------------------------

--
-- Table structure for table `sci_cs`
--

CREATE TABLE `sci_cs` (
  `cs_id` int(11) NOT NULL,
  `cs_name` varchar(100) NOT NULL,
  `cs_img` varchar(100) NOT NULL,
  `cs_date` varchar(40) NOT NULL,
  `cs_wallet` varchar(50) NOT NULL,
  `cs_range_date` varchar(400) NOT NULL,
  `cs_fcourse` varchar(400) NOT NULL,
  `cs_time` varchar(45) NOT NULL,
  `cs_location` varchar(50) NOT NULL,
  `cs_group` varchar(400) NOT NULL,
  `cs_detail` varchar(400) NOT NULL,
  `cs_perform` varchar(400) NOT NULL,
  `cs_reward` varchar(400) NOT NULL,
  `cs_schedule` varchar(400) NOT NULL,
  `cs_phone` char(10) DEFAULT NULL,
  `cs_year` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sci_cs`
--

INSERT INTO `sci_cs` (`cs_id`, `cs_name`, `cs_img`, `cs_date`, `cs_wallet`, `cs_range_date`, `cs_fcourse`, `cs_time`, `cs_location`, `cs_group`, `cs_detail`, `cs_perform`, `cs_reward`, `cs_schedule`, `cs_phone`, `cs_year`) VALUES
(2, 'การอบรมเชิงปฏิบัติการการจัดการเรียนรู้วิทยาศาสตร์ตามแนวคิด Constructivism', 'images/02.png', '2023-07-09', '1,000 บ.', '9-10 ก.ค. 65', 'เพื่อพัฒนาการจัดการเรียนรู้วิทยาศาสตร์ตามแนวคิด Constructivism ของครูวิทยาศาสตร์', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'ครูวิทยาศาสตร์ตามตามบันทึกข้อตกลงความร่วมมือทางวิชาการ จำนวน 30 คน/รุ่นเป็นการส่งเสริมการพัฒนาการจัดการเรียนรู้วิทยาศาสตร์ตามแนวคิด Constructivism ของครูวิทยาศาสตร์', 'ความรู้เกี่ยวกับ แนวคิด Constructivism สำหรับครูวิทยาศาสตร์การออกแบบแผนการจัดการเรียนรู้ตามแนวคิด Constructivismการวัดและประเมินผลตามแนวคิด Constructivism', 'สิ่งที่ต้องประเมินครูมีความพึงพอใจวิธีการประเมินแบบประเมินความพึงพอใจ', 'ครูมีความสามารถในการจัดการเรียนรู้วิทยาศาสตร์ได้ดีขึ้น นักเรียนได้รับการพัฒนาให้มีผลการเรียนรู้ทางวิทยาศาสตร์เพิ่มขึ้น', 'pdf/02.pdf', '0639571567', '2023'),
(3, 'เวชสำอางสมุนไพร', 'images/03.png', '2023-06-24', '500 บ.', '24 มิ.ย. 65', 'เพื่อถ่ายทอดความรู้และความเข้าใจเกี่ยวกับสมุนไพรและสารพฤกษเคมี สามาถนำไปประยุกต์ใช้\r\nเพื่อเสริมสร้างความรู้เกี่ยวกับการทำเครื่องสำอางเบื้องต้น และได้แนวคิดในการพัฒนาต่อยอดเครื่องสำอางสมุนไพร', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nประชาชนที่สนใจ จำนวน 50 คน ต่อรุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการพัฒนาความรู้และความเข้าใจเกี่ยวกับสมุนไพรและสารพฤกษเคมี สามาถนำไปประยุกต์ใช้ และความรู้เกี่ยวกับการทำเครื่องสำอางเบื้องต้น และได้แนวคิดในการพัฒนาต่อยอดเครื่องสำอางสมุนไพร', 'สมุนไพรและรูปแบบการนำมาใช้ในการผลิตเวชสำอาง\r\nการสกัดสารสำคัญจากสมุนไพรด้วยวิธีต่างๆ\r\nธุรกิจเครื่องสำอางสมุนไพร\r\nการตรวจสอบคุณภาพผลิตภัณฑ์เครื่องสำอาง', 'สิ่งที่ต้องประเมิน\r\nความพึงพอใจ\r\nวิธีการประเมิน\r\nแบบประเมินความพึงพอใจ', 'ผู้เข้าอบรมมีความรู้และความเข้าใจเกี่ยวกับสมุนไพรและสารพฤกษเคมี สามาถนำไปประยุกต์ใช้ได้ \r\nผู้เข้าอบรมมีความรู้เกี่ยวกับการทำเครื่องสำอางเบื้องต้น และได้แนวคิดในการพัฒนาต่อยอดเครื่องสำอางสมุนไพร', 'pdf/03.pdf', '0895476319', '2023'),
(4, 'อบรมเชิงปฏิบัติการโปรแกรมสำเร็จรูปสำหรับการวิจัยและวัดผลการศึกษา', 'images/04.png', '2023-07-30', '3,000 บ.', '30-31 ก.ค. 65', 'เพื่อศึกษาความรู้พื้นฐานเกี่ยวกับการใช้คอมพิวเตอร์ ประเภทและลักษณะของโปรแกรมสำเร็จรูปกระบวนการทำงานของโปรแกรมสำเร็จรูปเพื่อการวิจัยและวัดผลการศึกษา การสร้างแฟ้มข้อมูล (Data File) และแฟ้มคำสั่ง ฝึกปฏิบัติการวิเคราะห์ข้อมูลลักษณะต่างๆ โดยใช้โปรแกรม SPSS for window  ได้แก่ สถิติพื้นฐาน การทดสอบ t-test และ ANOVA', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nบุคคลทั่วไปที่สนใจ จำนวน 30 คน ต่อรุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการพัฒนาความรู้พื้นฐานเกี่ยวกับการใช้คอมพิวเตอร์ ประเภทและลักษณะของโปรแกรมสำเร็จรูปกระบวนการทำงานของโปรแกรมสำเร็จรูปเพื่อการวิจัยและวัดผลการศึกษา การสร้างแฟ้มข้อมูล (Data File) และแฟ้มคำสั่ง ฝึกปฏิบัติการวิเคราะห์ข้อมูลลักษณะต่างๆ โดยใช้โปรแกรม SPSS for window  ได้แก่ สถิติพื้นฐาน การทดสอบ t-test และ ANOVA', 'ลักษณะและการทำงานของโปรแกรม SPSS for window \r\nการสร้างแฟ้มข้อมูล (Data File) และแฟ้มคำสั่ง\r\nการวิเคราะห์สถิติเชิงบรรยาย\r\nการเปรียบเทียบค่าเฉลี่ยของตัวอย่าง 2 กลุ่ม โดยใช้สถิติทดสอบที (t-test)\r\nการวิเคราะห์ความแปรปรวน (ANOVA)', 'สิ่งที่ต้องประเมิน\r\nความพึงพอใจ\r\nวิธีการประเมิน\r\nแบบประเมินความพึงพอใจ', 'ผู้เข้าอบรมมีความรู้และความเข้าใจเกี่ยวกับโปรแกรมสำเร็จรูปสำหรับการวิจัยและวัดผลการศึกษา', 'pdf/04.pdf', '0836489705', '2023'),
(5, 'อบรมเชิงปฏิบัติการการใช้โปรแกรม GeoGebra เบื้องต้น', 'images/05.png', '2023-08-27', '1,300 บ.', '27-28 ส.ค. 65', 'เพื่อให้ครูคณิตศาสตร์สามารถใช้งานโปรแกรม GeoGebra เบื้องต้นได้\r\nเพื่อบูรณาการกับการเรียนการสอนโดยใช้โปรแกรม GeoGebra เป็นสื่อการเรียนการสอน', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nครูคณิตศาสตร์ (ระดับมัธยมศึกษา) ตามบันทึกข้อตกลงความร่วมมือทางวิชาการ จำนวน 30 คน ต่อรุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการส่งเสริมให้ครูมีความรู้ความเข้าใจในการใช้งานโปรแกรม GeoGebra เบื้องต้น และสามารถสร้างสื่อการเรียนการสอนทางคณิตศาสตร์ด้วยโปรแกรม GeoGebra ได้', 'ความรู้เกี่ยวกับการใช้งานโปรแกรม GeoGebra สำหรับครูคณิตศาสตร์\r\nการสร้างสื่อการสอนทางคณิตศาสตร์ด้วยโปรแกรม GeoGebra', 'สิ่งที่ต้องประเมิน\r\nความพึงพอใจ\r\nวิธีการประเมิน\r\nแบบประเมินความพึงพอใจ', 'ครูมีความรู้ความเข้าใจในการใช้งานโปรแกรม GeoGebra เบื้องต้น และสามารถสร้างสื่อการเรียนการสอนทางคณิตศาสตร์ด้วยโปรแกรม GeoGebra ได้', 'pdf/05.pdf', '0998564770', '2023'),
(6, 'อบรมเชิงปฏิบัติการการจัดทำการทดลองทางฟิสิกส์ตามหนังสือเรียน สสวท. สำหรับครูฟิสิกส์', 'images/06.png', '2023-08-06', '1,000 บ.', ' 6-7 ส.ค. 65', 'เพื่อส่งเสริมให้ครูผู้สอนฟิสิกส์ มีความรู้ ความเข้าใจ และมีประสบการณ์ในการจัดทำการทดลองทางฟิสิกส์ตามหนังสือเรียน สสวท.', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nครูผู้สอนรายวิชาฟิสิกส์ในระดับมัธยมปลาย จำนวน 30 คน/รุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการส่งเสริมให้ครูผู้สอนฟิสิกส์ มีความรู้ ความเข้าใจ และมีประสบการณ์ในการจัดทำการทดลองทางฟิสิกส์ตามหนังสือเรียน สสวท.', 'การทดลองทางฟิสิกส์ตามหนังสือเรียน สสวท. ในระดับชั้นมัธยมศึกษาตอนปลาย ', 'สิ่งที่ต้องประเมิน\r\nคะแนนการประเมินตนเองในการจัดทำการทดลองทางฟิสิกส์ตามหนังสือเรียน สสวท. และมีคะแนนประเมินอยู่ในระดับมาก\r\nวิธีการประเมิน\r\nแบบประเมินตนเอง', 'ครูผู้สอนฟิสิกส์ที่เข้ารับการอบรม มีความรู้ ความเข้าใจ และได้รับประสบการณ์ในการจัดทำการทดลองทางฟิสิกส์ตามหนังสือเรียน สสวท.\r\nครูผู้สอนฟิสิกส์สามารถนำความรู้ที่ได้รับจากการอบรมไปใช้ในการจัดการเรียนการสอนในระดับมัธยมศึกษาตอนปลายได้', 'pdf/06.pdf', '0884963101', '2023'),
(7, 'อบรมเชิงปฏิบัติการการผลิตแก้วสีเพื่อพัฒนาเป็นอัญมณีสังเคราะห์', 'images/07.png', '2023-08-20', '2,000 บ.', '20-21 ส.ค. 65', 'เพื่อฝึกทักษะการเตรียมแก้วสีเพื่อพัฒนาเป็นอัญมณีสังเคราะห์', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nกลุ่มบุคคลที่มีความสนใจด้านการฝึกอาชีพ จำนวน 20 คน/รุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการส่งเสริมการฝึกทักษะการเตรียมแก้วสีเพื่อพัฒนาเป็นอัญมณีสังเคราะห์', 'หลักการออกแบบสูตรแก้ว\r\nการคำนวณวัตถุดิบ\r\nการฝึกเตรียมแก้วสี', 'สิ่งที่ต้องประเมิน\r\nทักษะในการเตรียมแก้วสีได้ถูกต้องตามหลักวิชาการ\r\nการออกแบบสูตรแก้ว\r\nวิธีการประเมิน\r\nสังเกตพฤติกรรม\r\nผลงานของผู้ที่เข้าอบรม', 'ผู้เข้าร่วมอบรมมีความรู้ ความเข้าใจ ในการออกแบบสูตรแก้วสีได้ด้วยตนเอง\r\nผู้เข้าร่วมอบรมมีทักษะในการเตรียมแก้วสีได้ถูกต้องตามหลักวิชาการ', 'pdf/07.pdf', '0648945670', '2023'),
(8, 'หลักเกณฑ์และวิธีปฏิบัติที่ดีในการผลิตอาหารและความปลอดภัยอาหาร', 'images/08.png', '2023-08-20', '1,600 บ.', '20-21 ส.ค. 65', 'เพื่อให้ผู้ประกอบการอาหารหรือผู้ผลิตอาหารสามารถนำความรู้ของระบบ GMP และ GHP ไปใช้เป็นหลักเกณฑ์และวิธีการที่ดีในการผลิตอาหารเพื่อสร้างความปลอดภัยให้กับผู้บริโภค\r\nเพื่อให้ผู้ประกอบการอาหารหรือผู้ผลิตอาหารสามารถนำความรู้เกี่ยวกับสารก่อภูมิแพ้ในอาหาร (Food allergen) และวัตถุเจือปนอาหาร (Food additive) ไปปรับใช้ในกระบวนการผลิตอาหารได้อย่างปลอดภัยต่อผู้บริโภ\r\n', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nผู้ประกอบการอาหารหรือผู้ผลิตอาหารและบุคคลทั่วไปที่สนใจ จำนวน 20 คน/รุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการสร้างเสริมให้ผู้ประกอบการอาหารหรือผู้ผลิตอาหารสามารถนำความรู้ของระบบ GMP และGHP ไปใช้เป็นหลักเกณฑ์และวิธีการที่ดีในการผลิตอาหารเพื่อสร้างความปลอดภัยให้กับผู้บริโภค และนำความรู้เกี่ยวกับสารก่อภูมิแพ้ในอาหาร (Food allergen) และวัตถุเจือปนอาหาร (Food additive) ไปปรับใช้ในกระบวนการผล', 'ความรู้เกี่ยวกับข้อกำหนดของ GMP/GHP ตามมาตรฐาน CODEX\r\nความรู้เกี่ยวกับชนิดของอาหารที่ก่อภูมิแพ้ ข้อความที่ต้องติดฉลาก food allergen และการประเมินความเสี่ยงด้าน food allergen ในวัตถุดิบ\r\nความรู้เกี่ยวกับการแบ่งกลุ่มวัตถุเจือปนอาหาร กฎระเบียบที่เกี่ยวข้องกับวัตถุเจือปนอาหาร เงื่อนไขการใช้และอันตรายจากการใช้วัตถุเจือปนในอาหารไม่ถูกต้อง และประโยชน์ในการใช้วัตถุเจือปนอาหาร', 'สิ่งที่ต้องประเมิน\r\nผู้ประกอบการอาหารหรือผู้ผลิตอาหารสอบผ่านเกณฑ์ไม่น้อยกว่าร้อยละ 70\r\nวิธีการประเมิน\r\nแบบประเมินตนเอง', 'ผู้ประกอบการอาหารหรือผู้ผลิตอาหารสามารถนำความรู้ของระบบ GMP และ GHP ไปใช้เป็นหลักเกณฑ์และวิธีการที่ดีในการผลิตอาหารเพื่อสร้างความปลอดภัยให้กับผู้บริโภคได้\r\nผู้ประกอบการอาหารหรือผู้ผลิตอาหารสามารถนำความรู้เกี่ยวกับสารก่อภูมิแพ้ในอาหาร (Food allergen) และวัตถุเจือปนอาหาร (Food additive) ไปปรับใช้ในกระบวนการผลิตอาหารได้อย่างปลอดภัยต่อผู้บริโภคได้', 'pdf/08.pdf', '0874598603', '2023'),
(9, 'อบรมเชิงปฏิบัติการการส่งเสริมสุขภาพในชุมชน สำหรับนักส่งเสริมสุขภาพ และประชาชนทั่วไป', 'images/09.png', '2023-08-25', '1,300 บ.', '25-26 ส.ค. 65', 'เพื่อส่งเสริมให้นักส่งเสริมสุขภาพ และประชาชนทั่วไปมีความรู้ในเรื่องชุมชน และการส่งเสริมสุขภาพในชุมชน\r\nเพื่อส่งเสริมให้นักส่งเสริมสุขภาพ และประชาชนทั่วไปมีทักษะในการประยุกต์ใช้องค์ความรู้ด้านสุขภาพในการส่งเสริมสุขภาพในชุมชน', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nนักส่งเสริมสุขภาพ และประชาชนทั่วไป 40 คน ต่อรุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการส่งเสริมองค์ความรู้ และทักษะในการส่งเสริมสุขภาพในชุมชน', 'แนวคิด ทฤษฎีเกี่ยวกับชุมชน  และการส่งเสริมสุขภาพ  รวมไปถึงทักษะการประยุกต์ใช้องค์ความรู้ในการส่งเสริมสุขภาพในชุมชน ที่สอดคล้องกับสถานการณ์สุขภาพในสังคมปัจจุบัน', 'สิ่งที่ต้องประเมิน\r\nคะแนนทดสอบหลังการอบรม\r\nวิธีการประเมิน\r\nแบบทดสอบหลังการอบรม', 'นักส่งเสริมสุขภาพ และประชาชนทั่วไปมีความรู้ และทักษะในการส่งเสริมสุขภาพในชุมชน\r\nนักส่งเสริมสุขภาพ และประชาชนทั่วไปนำความรู้และทักษะที่ได้เพื่อการดูแลสุขภาพในชุมชนที่รับผิดชอบต่อไป', 'pdf/09.pdf', '0988750201', '2023'),
(10, 'อบรมเชิงปฏิบัติการการจัดตกแต่งและออกแบบอาหารเพื่อเพิ่มมูลค่า', 'images/10.png', '2023-07-30', '2,900 บ.', '30-31 ก.ค. 65', 'เพื่อให้ผู้เข้าอบรมมีทักษะด้านการจัดตกแต่งและออกแบบอาหาร มีความรู้ด้านการปรับเปลี่ยนภาพลักษณ์อาหารเพื่อเพิ่มมูลค่า\r\nเพื่อเพิ่มความรู้และความเข้าใจในเลือกภาชนะและองค์ประกอบฉากในการถ่ายภาพอาหารเบื้องต้น', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nบุคคลทั่วไป ผู้ประกอบการธุรกิจอาหารและเครื่องดื่ม และผู้สนใจ จำนวน 15 คน/รุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการสร้างเสริมทักษะด้านการจัดตกแต่งและออกแบบอาหาร มีความรู้ด้านการปรับเปลี่ยนภาพลักษณ์อาหารเพื่อเพิ่มมูลค่า', 'ความรู้เกี่ยวกับ Food stylist และ Food Presentation\r\nการใช้ศิลปะพื้นฐานและองค์ประกอบศิลป์ในการจัดตกแต่งอาหาร\r\nการเลือกภาชนะและการจัดจานอาหารให้เหมาะสมกับธุรกิจอาหารและเครื่องดื่ม\r\nเทคนิคการถ่ายภาพอาหาร และมุมมองการถ่ายภาพอาหารเบื้องต้น', 'สิ่งที่ต้องประเมิน\r\nความพึงพอใจหลังเข้าร่วมกิจกรรม โดยมีความพึงพอใจมากกว่าร้อยละ 70\r\nวิธีการประเมิน\r\nแบบประเมินความพึงพอใจ', 'ผู้เข้าอบรมมีความรู้และเข้าใจ สามารถจัดตกแต่งและออกแบบอาหารเพื่อเพิ่มมูลค่าได้\r\nผู้เข้าอบรมสามารถจัดอาหารเพื่อการถ่ายภาพได้ มีผลงานจากการจัดอาหารที่เข้าร่วมอบรม', 'pdf/10.pdf', '0647852384', '2022'),
(11, 'อบรมเชิงปฏิบัติการการผลิตชีวภัณฑ์และการผลิตปุ๋ยหมักและน้ำหมักชีวภาพเพื่อใช้ประโยชน์ทางการเกษตร', 'images/11.png', '2023-07-23', '2,000 บ.', '23-24 ก.ค. 65', 'เพื่อให้ความรู้และฝึกทักษะในการผลิตชีวภัณฑ์ในการป้องกันและกำจัดศัตรูพืช\r\nเพื่อให้ความรู้และฝึกทักษะในการผลิตปุ๋ยหมักและน้าหมักชีวภาพจากเศษวัสดุ', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nประชาชนที่สนใจ จำนวน 30 คน ต่อรุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการส่งเสริมการผลิตชีวภัณฑ์ในการป้องกันและกำจัดศัตรูพืช และการปุ๋ยหมักและน้ำหมักชีวภาพจากเศษวัสดุ', 'ความรู้เกี่ยวกับชีวภัณฑ์ในการป้องกันและกำจัดศัตรูพืช\r\nขั้นตอนในการผลิตชีวภัณฑ์ในการป้องกันและกำจัดศัตรูพืช\r\nความรู้เกี่ยวกับปุ๋ยหมักและน้ำหมักชีวภาพจากเศษวัสดุ\r\nขั้นตอนในการผลิตปุ๋ยหมักและน้ำหมักชีวภาพจากเศษวัสดุ', 'สิ่งที่ต้องประเมิน\r\nความพึงพอใจ\r\nวิธีการประเมิน\r\nแบบประเมินความพึงพอใจ', 'ผู้เข้าอบรมมีความรู้และความสามารถเกี่ยวกับชีวภัณฑ์ในการป้องกันและกำจัดศัตรูพืช\r\nผู้เข้าอบรมมีความรู้และความสามารถเกี่ยวกับปุ๋ยหมักและน้ำหมักชีวภาพจากเศษวัสดุ', 'pdf/11.pdf', '0657195806', '2022'),
(12, 'อบรมเชิงปฏิบัติการ การผลิตปุ๋ยมูลไส้เดือนดินเพื่อกำจัดขยะอินทรีย์และเพื่อการค้า', 'images/12.png', '2023-07-30', '1,990 บ.', '30-31 ก.ค. 65', 'เพื่อการถ่ายทอดเทคโนโลยีการเลี้ยงไส้เดือนดินเพื่อการกำจัดขยะอินทรีย์และผลิตปุ๋ยมูลไส้เดือนดิน\r\nเพื่อส่งเสริมอาชีพและการใช้ปุ๋ยอินทรีย์เพื่อการผลิตพืชปลอดภัย', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nครูกลุ่มการงาน /บุคคลทั่วไปที่สนใจ จำนวน 30 คน ต่อรุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการถ่ายทอดเทคโนโลยีการเลี้ยงไส้เดือนดินเพื่อการกำจัดขยะอินทรีย์และผลิตปุ๋ยมูลไส้เดือนดิน', 'ความรู้เกี่ยวกับสายพันธุ์ไส้เดือนดินที่นิยมเลี้ยงในประเทศไทย\r\nรูปแบบและการเลี้ยงไส้เดือนดินเพื่อการผลิตปุ๋ยมูลไส้เดือน\r\nการแปรรูปผลิตภัณฑ์จากมูลไส้เดือนดิน', 'สิ่งที่ต้องประเมิน\r\nผู้เข้าร่วมอบรมสามารถนำความรู้ที่ได้ไปถ่ายทอดหรือนำไปประกอบอาชีพ\r\nวิธีการประเมิน\r\nแบบประเมินตนเอง', 'ผู้เข้าอบรมมีความรู้ ความเข้าใจ และได้รับประสบการณ์ในการเลี้ยงไส้เดือนดิน\r\nผู้เข้าอบรมสามารถนำความรู้ที่ได้รับจากการอบรมไปถ่ายทอดหรือนำไปประกอบอาชีพได้', 'pdf/12.pdf', '0997436809', '2022'),
(13, 'การถักแก้วเพื่อพัฒนาเป็นสินค้าที่ระลึก', 'images/13.png', '2023-07-09', '2,000 บ.', '9-10 ก.ค. 65', 'เพื่อฝึกทักษะการถักแก้วเพื่อพัฒนาเป็นสินค้าที่ระลึก', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nกลุ่มบุคคลที่มีความสนใจด้านการฝึกอาชีพ จำนวน 20 คน/รุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการส่งเสริมการฝึกทักษะการถักแก้วเพื่อพัฒนาเป็นสินค้าที่ระลึก', 'ฝึกทักษะการถักแก้ว\r\nการออกแบบผลิตภัณฑ์จากแก้วถัก', 'สิ่งที่ต้องประเมิน\r\nทักษะในการถักแก้วขั้นพื้นฐานที่ถูกต้องตามหลักความปลอดภัย\r\nวิธีการประเมิน\r\nสังเกตพฤติกรรม\r\nผลงานของผู้ที่เข้าอบรม', 'ผู้เข้าร่วมอบรมมีทักษะการถักแก้วขั้นพื้นฐานที่ถูกต้องตามหลักความปลอดภัย\r\nผู้เข้าร่วมอบรมสามารถพัฒนาผลิตภัณฑ์แก้วถักได้ด้วยตนเอง', 'pdf/13.pdf', '0668921570', '2022'),
(14, 'อบรมเชิงปฏิบัติการการผลิตแก้วจากขี้เถ้าแกลบ', 'images/14.png', '2023-07-30', '2,000 บ.', '30-31 ก.ค. 65', 'เพื่อฝึกทักษะการเตรียมแก้วจากขี้เถ้าแกลบ', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nกลุ่มบุคคลที่มีความสนใจด้านการฝึกอาชีพ จำนวน 20 คน/รุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการส่งเสริมการฝึกทักษะการเตรียมแก้วจากขี้เถ้าแกลบ', 'หลักการออกแบบสูตรแก้ว\r\nการคำนวณวัตถุดิบ\r\nการฝึกเตรียมแก้วจากขี้เถ้าแกลบ', 'สิ่งที่ต้องประเมิน\r\nทักษะในการเตรียมแก้วจากขี้เถ้าแกลบได้ถูกต้องตามหลักวิชาการ\r\nวิธีการประเมิน\r\nสังเกตพฤติกรรม\r\nผลงานของผู้ที่เข้าอบรม', 'ผู้เข้าร่วมอบรมมีความรู้ ความเข้าใจ ในการออกแบบสูตรแก้วจากขี้เถ้าแกลบได้ด้วยตนเอง\r\nผู้เข้าร่วมอบรมมีทักษะในการเตรียมแก้วจากขี้เถ้าแกลบได้ถูกต้องตามหลักวิชาการ', 'pdf/14.pdf', '0884368799', '2022'),
(15, 'อบรมเชิงปฏิบัติการการวิเคราะห์วัสดุด้วยเครื่องมือวิทยาศาสตร์', 'images/15.png', '2023-07-23', '2,000 บ.', '23-24 ก.ค. 65', 'เพื่อฝึกทักษะการวิเคราะห์วัสดุด้วยเครื่องมือวิทยาศาสตร์', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nกลุ่มบุคคลที่มีความสนใจด้านการฝึกอาชีพ จำนวน 20 คน/รุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการส่งเสริมฝึกทักษะการวิเคราะห์วัสดุด้วยเครื่องมือวิทยาศาสตร์', 'การวิเคราะห์ความหนาแน่นโดยเครื่อง Density Hydrometer\r\nการวิเคราะห์ค่าดัชนีหักเหแสงโดยเครื่องวัดการหักแสง Abbe Digital Refractometer\r\nการวิเคราะห์การดูดกลืนและการส่งผ่านแสงด้วยเครื่อง UV-VIS-NIR Spectrophotometer\r\nการวิเคราะห์องค์ประกอบทางเคมีด้วยเครื่องเอ็กซ์เรย์ฟลูออเรสเซ็นต์ (XRF)', 'สิ่งที่ต้องประเมิน\r\nทักษะการวิเคราะห์วัสดุด้วยเครื่องมือวิทยาศาสตร์\r\nวิธีการประเมิน\r\nสังเกตพฤติกรรม\r\nผลการวิเคราะห์ของผู้ที่เข้าอบรม', 'ผู้เข้าร่วมอบรมมีความรู้ ความเข้าใจ ในการเลือกใช้เครื่องมือวิทยาศาสตร์ในการวิเคราะห์วัสดุได้ด้วยตนเอง\r\nผู้เข้าร่วมอบรมมีทักษะในการวิเคราะห์วัสดุด้วยเครื่องมือวิทยาศาสตร์ได้ถูกต้องตามหลักวิชาการ', 'pdf/15.pdf', '0988566549', '2022'),
(16, 'อบรมเชิงปฏิบัติการทฤษฎีการเกิดแก้วและการประยุกต์ใช้', 'images/16.png', '2023-08-27', '500 บ.', '27-28 ส.ค. 65', 'เพื่อถ่ายทอดองค์ความรู้เกี่ยวกับทฤษฎีการเกิดแก้วและการประยุกต์ใช้', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nนักเรียน จำนวน 60 คน/รุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nนักเรียนมีความรู้เกี่ยวกับทฤษฎีการเกิดแก้วและการประยุกต์ใช้', 'หลักการการเกิดแก้ว\r\nสมบัติต่าง ๆ ของวัสดุแก้ว\r\nหลักการออกแบบสูตรแก้ว\r\nการคำนวณสารในการเตรียมแก้ว', 'สิ่งที่ต้องประเมิน\r\nความรู้เกี่ยวกับทฤษฎีการเกิดแก้วและการประยุกต์ใช้จากแบบทดสอบ\r\nวิธีการประเมิน\r\nคะแนนของแบบประเมินของผู้ที่เข้าอบรม', 'ผู้เข้าร่วมอบรมมีความรู้ ความเข้าใจเกี่ยวกับทฤษฎีการเกิดแก้ว และการประยุกต์ใช้งานด้านแก้ว\r\nผู้เข้าร่วมอบรมสามารออกแบบสูตรแก้ว และคำนวณการเตรียมสารได้ด้วยตนเอง', 'pdf/16.pdf', '0845689705', '2022'),
(33, 'โตไปเป็นนายก', 'images/jpg2.jpg', '2023-01-19', '9999', '', '', '', '', '', '', '', '', '', NULL, '2023'),
(34, 'โตไปเป็นนายก', '/images/jpg2.jpg', '2023-01-20', '1000', '', '', '', '', '', '', '', '', '', NULL, '2023'),
(35, 'โตไปเป็นนายก', '44', '2023-01-25', '1000', '', '', '', '', '', '', '', '', '', NULL, '2023');

-- --------------------------------------------------------

--
-- Table structure for table `user_tb`
--

CREATE TABLE `user_tb` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `upassword` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `urole` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_tb`
--

INSERT INTO `user_tb` (`id`, `username`, `upassword`, `email`, `urole`) VALUES
(1, 'gunktp1', '12345', 'exesport2546188@gmail.com', 'user'),
(2, 'gunktp2', '12345', 'arrliver@gmail.com', 'user'),
(3, 'gunktp4', '12345', 'xx@gamil.com', 'user'),
(4, 'gunktp3', '123456', 'xx@gmail.com', 'user'),
(5, 'gunktp4', '12345', 'xxx@gmail.com', 'user'),
(6, 'gunktp5', '123456', 'xxxx@gmail.com', 'user'),
(7, 'gunktp6', 'gunktp6', 'exesport254618@gamil.com', 'user'),
(8, 'gunktp7', 'gunktp7', 'gunktp7@gmail.com', 'user'),
(9, 'gunktp8', 'gunktp8', 'gunktp8@gmail.com', 'user'),
(10, 'gunktp20', 'gunktp20', 'gunktp20@gmail.com', 'admin'),
(11, 'gunktp201', 'gunktp20', 'gunktp201@gmai.com', 'admin'),
(12, 'gunktp14', 'gunktp14', 'gunktp14@gmail.com', 'user'),
(13, 'gunktp50', 'gunktp50', 'gunktp50@gmail.com', 'user'),
(14, 'gunktp206', 'gunktp206', 'gunktp206@gmail.com', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sci_cs`
--
ALTER TABLE `sci_cs`
  ADD PRIMARY KEY (`cs_id`);

--
-- Indexes for table `user_tb`
--
ALTER TABLE `user_tb`
  ADD PRIMARY KEY (`id`,`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sci_cs`
--
ALTER TABLE `sci_cs`
  MODIFY `cs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `user_tb`
--
ALTER TABLE `user_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"mydb\",\"table\":\"sci_cs\"},{\"db\":\"mydb\",\"table\":\"course_tb\"},{\"db\":\"mydb\",\"table\":\"user_tb\"},{\"db\":\"course_db\",\"table\":\"role_tb\"},{\"db\":\"course_db\",\"table\":\"user_tb\"},{\"db\":\"sci_course\",\"table\":\"sci_cs\"},{\"db\":\"mydb\",\"table\":\"students\"},{\"db\":\"test_db\",\"table\":\"user_tb\"},{\"db\":\"test_phpdb\",\"table\":\"member\"},{\"db\":\"foodorder\",\"table\":\"user\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2023-02-14 08:27:02', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `restaurant`
--
CREATE DATABASE IF NOT EXISTS `restaurant` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restaurant`;

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `imageURL` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`id`, `name`, `type`, `imageURL`) VALUES
(1, 'กล่องดินสอ - ถนนดินสอ', 'Coupon, เบเกอรี่', 'https://d1sag4ddilekf6.azureedge.net/compressed/me…daa24d79bf15cc6faaa80b3e_1642506143013341843.jpeg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`id`);
--
-- Database: `restaurants`
--
CREATE DATABASE IF NOT EXISTS `restaurants` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `restaurants`;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `imageURL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);
--
-- Database: `sci_course`
--
CREATE DATABASE IF NOT EXISTS `sci_course` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sci_course`;

-- --------------------------------------------------------

--
-- Table structure for table `sci_cs`
--

CREATE TABLE `sci_cs` (
  `cs_id` int(11) NOT NULL,
  `cs_name` varchar(100) NOT NULL,
  `cs_img` varchar(100) NOT NULL,
  `cs_date` varchar(40) NOT NULL,
  `cs_wallet` varchar(50) NOT NULL,
  `cs_range_date` varchar(400) NOT NULL,
  `cs_fcourse` varchar(400) NOT NULL,
  `cs_time` varchar(45) NOT NULL,
  `cs_location` varchar(50) NOT NULL,
  `cs_group` varchar(400) NOT NULL,
  `cs_detail` varchar(400) NOT NULL,
  `cs_perform` varchar(400) NOT NULL,
  `cs_reward` varchar(400) NOT NULL,
  `cs_schedule` varchar(400) NOT NULL,
  `cs_phone` char(10) DEFAULT NULL,
  `cs_year` char(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `sci_cs`
--

INSERT INTO `sci_cs` (`cs_id`, `cs_name`, `cs_img`, `cs_date`, `cs_wallet`, `cs_range_date`, `cs_fcourse`, `cs_time`, `cs_location`, `cs_group`, `cs_detail`, `cs_perform`, `cs_reward`, `cs_schedule`, `cs_phone`, `cs_year`) VALUES
(2, 'การอบรมเชิงปฏิบัติการการจัดการเรียนรู้วิทยาศาสตร์ตามแนวคิด Constructivism', 'images/02.png', '2023-07-09', '1,000 บ.', '9-10 ก.ค. 65', 'เพื่อพัฒนาการจัดการเรียนรู้วิทยาศาสตร์ตามแนวคิด Constructivism ของครูวิทยาศาสตร์', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'ครูวิทยาศาสตร์ตามตามบันทึกข้อตกลงความร่วมมือทางวิชาการ จำนวน 30 คน/รุ่นเป็นการส่งเสริมการพัฒนาการจัดการเรียนรู้วิทยาศาสตร์ตามแนวคิด Constructivism ของครูวิทยาศาสตร์', 'ความรู้เกี่ยวกับ แนวคิด Constructivism สำหรับครูวิทยาศาสตร์การออกแบบแผนการจัดการเรียนรู้ตามแนวคิด Constructivismการวัดและประเมินผลตามแนวคิด Constructivism', 'สิ่งที่ต้องประเมินครูมีความพึงพอใจวิธีการประเมินแบบประเมินความพึงพอใจ', 'ครูมีความสามารถในการจัดการเรียนรู้วิทยาศาสตร์ได้ดีขึ้น นักเรียนได้รับการพัฒนาให้มีผลการเรียนรู้ทางวิทยาศาสตร์เพิ่มขึ้น', 'pdf/02.pdf', '0639571567', '2023'),
(3, 'เวชสำอางสมุนไพร', 'images/03.png', '2023-06-24', '500 บ.', '24 มิ.ย. 65', 'เพื่อถ่ายทอดความรู้และความเข้าใจเกี่ยวกับสมุนไพรและสารพฤกษเคมี สามาถนำไปประยุกต์ใช้\r\nเพื่อเสริมสร้างความรู้เกี่ยวกับการทำเครื่องสำอางเบื้องต้น และได้แนวคิดในการพัฒนาต่อยอดเครื่องสำอางสมุนไพร', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nประชาชนที่สนใจ จำนวน 50 คน ต่อรุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการพัฒนาความรู้และความเข้าใจเกี่ยวกับสมุนไพรและสารพฤกษเคมี สามาถนำไปประยุกต์ใช้ และความรู้เกี่ยวกับการทำเครื่องสำอางเบื้องต้น และได้แนวคิดในการพัฒนาต่อยอดเครื่องสำอางสมุนไพร', 'สมุนไพรและรูปแบบการนำมาใช้ในการผลิตเวชสำอาง\r\nการสกัดสารสำคัญจากสมุนไพรด้วยวิธีต่างๆ\r\nธุรกิจเครื่องสำอางสมุนไพร\r\nการตรวจสอบคุณภาพผลิตภัณฑ์เครื่องสำอาง', 'สิ่งที่ต้องประเมิน\r\nความพึงพอใจ\r\nวิธีการประเมิน\r\nแบบประเมินความพึงพอใจ', 'ผู้เข้าอบรมมีความรู้และความเข้าใจเกี่ยวกับสมุนไพรและสารพฤกษเคมี สามาถนำไปประยุกต์ใช้ได้ \r\nผู้เข้าอบรมมีความรู้เกี่ยวกับการทำเครื่องสำอางเบื้องต้น และได้แนวคิดในการพัฒนาต่อยอดเครื่องสำอางสมุนไพร', 'pdf/03.pdf', '0895476319', '2023'),
(4, 'อบรมเชิงปฏิบัติการโปรแกรมสำเร็จรูปสำหรับการวิจัยและวัดผลการศึกษา', 'images/04.png', '2023-07-30', '3,000 บ.', '30-31 ก.ค. 65', 'เพื่อศึกษาความรู้พื้นฐานเกี่ยวกับการใช้คอมพิวเตอร์ ประเภทและลักษณะของโปรแกรมสำเร็จรูปกระบวนการทำงานของโปรแกรมสำเร็จรูปเพื่อการวิจัยและวัดผลการศึกษา การสร้างแฟ้มข้อมูล (Data File) และแฟ้มคำสั่ง ฝึกปฏิบัติการวิเคราะห์ข้อมูลลักษณะต่างๆ โดยใช้โปรแกรม SPSS for window  ได้แก่ สถิติพื้นฐาน การทดสอบ t-test และ ANOVA', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nบุคคลทั่วไปที่สนใจ จำนวน 30 คน ต่อรุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการพัฒนาความรู้พื้นฐานเกี่ยวกับการใช้คอมพิวเตอร์ ประเภทและลักษณะของโปรแกรมสำเร็จรูปกระบวนการทำงานของโปรแกรมสำเร็จรูปเพื่อการวิจัยและวัดผลการศึกษา การสร้างแฟ้มข้อมูล (Data File) และแฟ้มคำสั่ง ฝึกปฏิบัติการวิเคราะห์ข้อมูลลักษณะต่างๆ โดยใช้โปรแกรม SPSS for window  ได้แก่ สถิติพื้นฐาน การทดสอบ t-test และ ANOVA', 'ลักษณะและการทำงานของโปรแกรม SPSS for window \r\nการสร้างแฟ้มข้อมูล (Data File) และแฟ้มคำสั่ง\r\nการวิเคราะห์สถิติเชิงบรรยาย\r\nการเปรียบเทียบค่าเฉลี่ยของตัวอย่าง 2 กลุ่ม โดยใช้สถิติทดสอบที (t-test)\r\nการวิเคราะห์ความแปรปรวน (ANOVA)', 'สิ่งที่ต้องประเมิน\r\nความพึงพอใจ\r\nวิธีการประเมิน\r\nแบบประเมินความพึงพอใจ', 'ผู้เข้าอบรมมีความรู้และความเข้าใจเกี่ยวกับโปรแกรมสำเร็จรูปสำหรับการวิจัยและวัดผลการศึกษา', 'pdf/04.pdf', '0836489705', '2023'),
(5, 'อบรมเชิงปฏิบัติการการใช้โปรแกรม GeoGebra เบื้องต้น', 'images/05.png', '2023-08-27', '1,300 บ.', '27-28 ส.ค. 65', 'เพื่อให้ครูคณิตศาสตร์สามารถใช้งานโปรแกรม GeoGebra เบื้องต้นได้\r\nเพื่อบูรณาการกับการเรียนการสอนโดยใช้โปรแกรม GeoGebra เป็นสื่อการเรียนการสอน', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nครูคณิตศาสตร์ (ระดับมัธยมศึกษา) ตามบันทึกข้อตกลงความร่วมมือทางวิชาการ จำนวน 30 คน ต่อรุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการส่งเสริมให้ครูมีความรู้ความเข้าใจในการใช้งานโปรแกรม GeoGebra เบื้องต้น และสามารถสร้างสื่อการเรียนการสอนทางคณิตศาสตร์ด้วยโปรแกรม GeoGebra ได้', 'ความรู้เกี่ยวกับการใช้งานโปรแกรม GeoGebra สำหรับครูคณิตศาสตร์\r\nการสร้างสื่อการสอนทางคณิตศาสตร์ด้วยโปรแกรม GeoGebra', 'สิ่งที่ต้องประเมิน\r\nความพึงพอใจ\r\nวิธีการประเมิน\r\nแบบประเมินความพึงพอใจ', 'ครูมีความรู้ความเข้าใจในการใช้งานโปรแกรม GeoGebra เบื้องต้น และสามารถสร้างสื่อการเรียนการสอนทางคณิตศาสตร์ด้วยโปรแกรม GeoGebra ได้', 'pdf/05.pdf', '0998564770', '2023'),
(6, 'อบรมเชิงปฏิบัติการการจัดทำการทดลองทางฟิสิกส์ตามหนังสือเรียน สสวท. สำหรับครูฟิสิกส์', 'images/06.png', '2023-08-06', '1,000 บ.', ' 6-7 ส.ค. 65', 'เพื่อส่งเสริมให้ครูผู้สอนฟิสิกส์ มีความรู้ ความเข้าใจ และมีประสบการณ์ในการจัดทำการทดลองทางฟิสิกส์ตามหนังสือเรียน สสวท.', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nครูผู้สอนรายวิชาฟิสิกส์ในระดับมัธยมปลาย จำนวน 30 คน/รุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการส่งเสริมให้ครูผู้สอนฟิสิกส์ มีความรู้ ความเข้าใจ และมีประสบการณ์ในการจัดทำการทดลองทางฟิสิกส์ตามหนังสือเรียน สสวท.', 'การทดลองทางฟิสิกส์ตามหนังสือเรียน สสวท. ในระดับชั้นมัธยมศึกษาตอนปลาย ', 'สิ่งที่ต้องประเมิน\r\nคะแนนการประเมินตนเองในการจัดทำการทดลองทางฟิสิกส์ตามหนังสือเรียน สสวท. และมีคะแนนประเมินอยู่ในระดับมาก\r\nวิธีการประเมิน\r\nแบบประเมินตนเอง', 'ครูผู้สอนฟิสิกส์ที่เข้ารับการอบรม มีความรู้ ความเข้าใจ และได้รับประสบการณ์ในการจัดทำการทดลองทางฟิสิกส์ตามหนังสือเรียน สสวท.\r\nครูผู้สอนฟิสิกส์สามารถนำความรู้ที่ได้รับจากการอบรมไปใช้ในการจัดการเรียนการสอนในระดับมัธยมศึกษาตอนปลายได้', 'pdf/06.pdf', '0884963101', '2023'),
(7, 'อบรมเชิงปฏิบัติการการผลิตแก้วสีเพื่อพัฒนาเป็นอัญมณีสังเคราะห์', 'images/07.png', '2023-08-20', '2,000 บ.', '20-21 ส.ค. 65', 'เพื่อฝึกทักษะการเตรียมแก้วสีเพื่อพัฒนาเป็นอัญมณีสังเคราะห์', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nกลุ่มบุคคลที่มีความสนใจด้านการฝึกอาชีพ จำนวน 20 คน/รุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการส่งเสริมการฝึกทักษะการเตรียมแก้วสีเพื่อพัฒนาเป็นอัญมณีสังเคราะห์', 'หลักการออกแบบสูตรแก้ว\r\nการคำนวณวัตถุดิบ\r\nการฝึกเตรียมแก้วสี', 'สิ่งที่ต้องประเมิน\r\nทักษะในการเตรียมแก้วสีได้ถูกต้องตามหลักวิชาการ\r\nการออกแบบสูตรแก้ว\r\nวิธีการประเมิน\r\nสังเกตพฤติกรรม\r\nผลงานของผู้ที่เข้าอบรม', 'ผู้เข้าร่วมอบรมมีความรู้ ความเข้าใจ ในการออกแบบสูตรแก้วสีได้ด้วยตนเอง\r\nผู้เข้าร่วมอบรมมีทักษะในการเตรียมแก้วสีได้ถูกต้องตามหลักวิชาการ', 'pdf/07.pdf', '0648945670', '2023'),
(8, 'หลักเกณฑ์และวิธีปฏิบัติที่ดีในการผลิตอาหารและความปลอดภัยอาหาร', 'images/08.png', '2023-08-20', '1,600 บ.', '20-21 ส.ค. 65', 'เพื่อให้ผู้ประกอบการอาหารหรือผู้ผลิตอาหารสามารถนำความรู้ของระบบ GMP และ GHP ไปใช้เป็นหลักเกณฑ์และวิธีการที่ดีในการผลิตอาหารเพื่อสร้างความปลอดภัยให้กับผู้บริโภค\r\nเพื่อให้ผู้ประกอบการอาหารหรือผู้ผลิตอาหารสามารถนำความรู้เกี่ยวกับสารก่อภูมิแพ้ในอาหาร (Food allergen) และวัตถุเจือปนอาหาร (Food additive) ไปปรับใช้ในกระบวนการผลิตอาหารได้อย่างปลอดภัยต่อผู้บริโภ\r\n', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nผู้ประกอบการอาหารหรือผู้ผลิตอาหารและบุคคลทั่วไปที่สนใจ จำนวน 20 คน/รุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการสร้างเสริมให้ผู้ประกอบการอาหารหรือผู้ผลิตอาหารสามารถนำความรู้ของระบบ GMP และGHP ไปใช้เป็นหลักเกณฑ์และวิธีการที่ดีในการผลิตอาหารเพื่อสร้างความปลอดภัยให้กับผู้บริโภค และนำความรู้เกี่ยวกับสารก่อภูมิแพ้ในอาหาร (Food allergen) และวัตถุเจือปนอาหาร (Food additive) ไปปรับใช้ในกระบวนการผล', 'ความรู้เกี่ยวกับข้อกำหนดของ GMP/GHP ตามมาตรฐาน CODEX\r\nความรู้เกี่ยวกับชนิดของอาหารที่ก่อภูมิแพ้ ข้อความที่ต้องติดฉลาก food allergen และการประเมินความเสี่ยงด้าน food allergen ในวัตถุดิบ\r\nความรู้เกี่ยวกับการแบ่งกลุ่มวัตถุเจือปนอาหาร กฎระเบียบที่เกี่ยวข้องกับวัตถุเจือปนอาหาร เงื่อนไขการใช้และอันตรายจากการใช้วัตถุเจือปนในอาหารไม่ถูกต้อง และประโยชน์ในการใช้วัตถุเจือปนอาหาร', 'สิ่งที่ต้องประเมิน\r\nผู้ประกอบการอาหารหรือผู้ผลิตอาหารสอบผ่านเกณฑ์ไม่น้อยกว่าร้อยละ 70\r\nวิธีการประเมิน\r\nแบบประเมินตนเอง', 'ผู้ประกอบการอาหารหรือผู้ผลิตอาหารสามารถนำความรู้ของระบบ GMP และ GHP ไปใช้เป็นหลักเกณฑ์และวิธีการที่ดีในการผลิตอาหารเพื่อสร้างความปลอดภัยให้กับผู้บริโภคได้\r\nผู้ประกอบการอาหารหรือผู้ผลิตอาหารสามารถนำความรู้เกี่ยวกับสารก่อภูมิแพ้ในอาหาร (Food allergen) และวัตถุเจือปนอาหาร (Food additive) ไปปรับใช้ในกระบวนการผลิตอาหารได้อย่างปลอดภัยต่อผู้บริโภคได้', 'pdf/08.pdf', '0874598603', '2023'),
(9, 'อบรมเชิงปฏิบัติการการส่งเสริมสุขภาพในชุมชน สำหรับนักส่งเสริมสุขภาพ และประชาชนทั่วไป', 'images/09.png', '2023-08-25', '1,300 บ.', '25-26 ส.ค. 65', 'เพื่อส่งเสริมให้นักส่งเสริมสุขภาพ และประชาชนทั่วไปมีความรู้ในเรื่องชุมชน และการส่งเสริมสุขภาพในชุมชน\r\nเพื่อส่งเสริมให้นักส่งเสริมสุขภาพ และประชาชนทั่วไปมีทักษะในการประยุกต์ใช้องค์ความรู้ด้านสุขภาพในการส่งเสริมสุขภาพในชุมชน', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nนักส่งเสริมสุขภาพ และประชาชนทั่วไป 40 คน ต่อรุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการส่งเสริมองค์ความรู้ และทักษะในการส่งเสริมสุขภาพในชุมชน', 'แนวคิด ทฤษฎีเกี่ยวกับชุมชน  และการส่งเสริมสุขภาพ  รวมไปถึงทักษะการประยุกต์ใช้องค์ความรู้ในการส่งเสริมสุขภาพในชุมชน ที่สอดคล้องกับสถานการณ์สุขภาพในสังคมปัจจุบัน', 'สิ่งที่ต้องประเมิน\r\nคะแนนทดสอบหลังการอบรม\r\nวิธีการประเมิน\r\nแบบทดสอบหลังการอบรม', 'นักส่งเสริมสุขภาพ และประชาชนทั่วไปมีความรู้ และทักษะในการส่งเสริมสุขภาพในชุมชน\r\nนักส่งเสริมสุขภาพ และประชาชนทั่วไปนำความรู้และทักษะที่ได้เพื่อการดูแลสุขภาพในชุมชนที่รับผิดชอบต่อไป', 'pdf/09.pdf', '0988750201', '2023'),
(10, 'อบรมเชิงปฏิบัติการการจัดตกแต่งและออกแบบอาหารเพื่อเพิ่มมูลค่า', 'images/10.png', '2023-07-30', '2,900 บ.', '30-31 ก.ค. 65', 'เพื่อให้ผู้เข้าอบรมมีทักษะด้านการจัดตกแต่งและออกแบบอาหาร มีความรู้ด้านการปรับเปลี่ยนภาพลักษณ์อาหารเพื่อเพิ่มมูลค่า\r\nเพื่อเพิ่มความรู้และความเข้าใจในเลือกภาชนะและองค์ประกอบฉากในการถ่ายภาพอาหารเบื้องต้น', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nบุคคลทั่วไป ผู้ประกอบการธุรกิจอาหารและเครื่องดื่ม และผู้สนใจ จำนวน 15 คน/รุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการสร้างเสริมทักษะด้านการจัดตกแต่งและออกแบบอาหาร มีความรู้ด้านการปรับเปลี่ยนภาพลักษณ์อาหารเพื่อเพิ่มมูลค่า', 'ความรู้เกี่ยวกับ Food stylist และ Food Presentation\r\nการใช้ศิลปะพื้นฐานและองค์ประกอบศิลป์ในการจัดตกแต่งอาหาร\r\nการเลือกภาชนะและการจัดจานอาหารให้เหมาะสมกับธุรกิจอาหารและเครื่องดื่ม\r\nเทคนิคการถ่ายภาพอาหาร และมุมมองการถ่ายภาพอาหารเบื้องต้น', 'สิ่งที่ต้องประเมิน\r\nความพึงพอใจหลังเข้าร่วมกิจกรรม โดยมีความพึงพอใจมากกว่าร้อยละ 70\r\nวิธีการประเมิน\r\nแบบประเมินความพึงพอใจ', 'ผู้เข้าอบรมมีความรู้และเข้าใจ สามารถจัดตกแต่งและออกแบบอาหารเพื่อเพิ่มมูลค่าได้\r\nผู้เข้าอบรมสามารถจัดอาหารเพื่อการถ่ายภาพได้ มีผลงานจากการจัดอาหารที่เข้าร่วมอบรม', 'pdf/10.pdf', '0647852384', '2022'),
(11, 'อบรมเชิงปฏิบัติการการผลิตชีวภัณฑ์และการผลิตปุ๋ยหมักและน้ำหมักชีวภาพเพื่อใช้ประโยชน์ทางการเกษตร', 'images/11.png', '2023-07-23', '2,000 บ.', '23-24 ก.ค. 65', 'เพื่อให้ความรู้และฝึกทักษะในการผลิตชีวภัณฑ์ในการป้องกันและกำจัดศัตรูพืช\r\nเพื่อให้ความรู้และฝึกทักษะในการผลิตปุ๋ยหมักและน้าหมักชีวภาพจากเศษวัสดุ', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nประชาชนที่สนใจ จำนวน 30 คน ต่อรุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการส่งเสริมการผลิตชีวภัณฑ์ในการป้องกันและกำจัดศัตรูพืช และการปุ๋ยหมักและน้ำหมักชีวภาพจากเศษวัสดุ', 'ความรู้เกี่ยวกับชีวภัณฑ์ในการป้องกันและกำจัดศัตรูพืช\r\nขั้นตอนในการผลิตชีวภัณฑ์ในการป้องกันและกำจัดศัตรูพืช\r\nความรู้เกี่ยวกับปุ๋ยหมักและน้ำหมักชีวภาพจากเศษวัสดุ\r\nขั้นตอนในการผลิตปุ๋ยหมักและน้ำหมักชีวภาพจากเศษวัสดุ', 'สิ่งที่ต้องประเมิน\r\nความพึงพอใจ\r\nวิธีการประเมิน\r\nแบบประเมินความพึงพอใจ', 'ผู้เข้าอบรมมีความรู้และความสามารถเกี่ยวกับชีวภัณฑ์ในการป้องกันและกำจัดศัตรูพืช\r\nผู้เข้าอบรมมีความรู้และความสามารถเกี่ยวกับปุ๋ยหมักและน้ำหมักชีวภาพจากเศษวัสดุ', 'pdf/11.pdf', '0657195806', '2022'),
(12, 'อบรมเชิงปฏิบัติการ การผลิตปุ๋ยมูลไส้เดือนดินเพื่อกำจัดขยะอินทรีย์และเพื่อการค้า', 'images/12.png', '2023-07-30', '1,990 บ.', '30-31 ก.ค. 65', 'เพื่อการถ่ายทอดเทคโนโลยีการเลี้ยงไส้เดือนดินเพื่อการกำจัดขยะอินทรีย์และผลิตปุ๋ยมูลไส้เดือนดิน\r\nเพื่อส่งเสริมอาชีพและการใช้ปุ๋ยอินทรีย์เพื่อการผลิตพืชปลอดภัย', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nครูกลุ่มการงาน /บุคคลทั่วไปที่สนใจ จำนวน 30 คน ต่อรุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการถ่ายทอดเทคโนโลยีการเลี้ยงไส้เดือนดินเพื่อการกำจัดขยะอินทรีย์และผลิตปุ๋ยมูลไส้เดือนดิน', 'ความรู้เกี่ยวกับสายพันธุ์ไส้เดือนดินที่นิยมเลี้ยงในประเทศไทย\r\nรูปแบบและการเลี้ยงไส้เดือนดินเพื่อการผลิตปุ๋ยมูลไส้เดือน\r\nการแปรรูปผลิตภัณฑ์จากมูลไส้เดือนดิน', 'สิ่งที่ต้องประเมิน\r\nผู้เข้าร่วมอบรมสามารถนำความรู้ที่ได้ไปถ่ายทอดหรือนำไปประกอบอาชีพ\r\nวิธีการประเมิน\r\nแบบประเมินตนเอง', 'ผู้เข้าอบรมมีความรู้ ความเข้าใจ และได้รับประสบการณ์ในการเลี้ยงไส้เดือนดิน\r\nผู้เข้าอบรมสามารถนำความรู้ที่ได้รับจากการอบรมไปถ่ายทอดหรือนำไปประกอบอาชีพได้', 'pdf/12.pdf', '0997436809', '2022'),
(13, 'การถักแก้วเพื่อพัฒนาเป็นสินค้าที่ระลึก', 'images/13.png', '2023-07-09', '2,000 บ.', '9-10 ก.ค. 65', 'เพื่อฝึกทักษะการถักแก้วเพื่อพัฒนาเป็นสินค้าที่ระลึก', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nกลุ่มบุคคลที่มีความสนใจด้านการฝึกอาชีพ จำนวน 20 คน/รุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการส่งเสริมการฝึกทักษะการถักแก้วเพื่อพัฒนาเป็นสินค้าที่ระลึก', 'ฝึกทักษะการถักแก้ว\r\nการออกแบบผลิตภัณฑ์จากแก้วถัก', 'สิ่งที่ต้องประเมิน\r\nทักษะในการถักแก้วขั้นพื้นฐานที่ถูกต้องตามหลักความปลอดภัย\r\nวิธีการประเมิน\r\nสังเกตพฤติกรรม\r\nผลงานของผู้ที่เข้าอบรม', 'ผู้เข้าร่วมอบรมมีทักษะการถักแก้วขั้นพื้นฐานที่ถูกต้องตามหลักความปลอดภัย\r\nผู้เข้าร่วมอบรมสามารถพัฒนาผลิตภัณฑ์แก้วถักได้ด้วยตนเอง', 'pdf/13.pdf', '0668921570', '2022'),
(14, 'อบรมเชิงปฏิบัติการการผลิตแก้วจากขี้เถ้าแกลบ', 'images/14.png', '2023-07-30', '2,000 บ.', '30-31 ก.ค. 65', 'เพื่อฝึกทักษะการเตรียมแก้วจากขี้เถ้าแกลบ', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nกลุ่มบุคคลที่มีความสนใจด้านการฝึกอาชีพ จำนวน 20 คน/รุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการส่งเสริมการฝึกทักษะการเตรียมแก้วจากขี้เถ้าแกลบ', 'หลักการออกแบบสูตรแก้ว\r\nการคำนวณวัตถุดิบ\r\nการฝึกเตรียมแก้วจากขี้เถ้าแกลบ', 'สิ่งที่ต้องประเมิน\r\nทักษะในการเตรียมแก้วจากขี้เถ้าแกลบได้ถูกต้องตามหลักวิชาการ\r\nวิธีการประเมิน\r\nสังเกตพฤติกรรม\r\nผลงานของผู้ที่เข้าอบรม', 'ผู้เข้าร่วมอบรมมีความรู้ ความเข้าใจ ในการออกแบบสูตรแก้วจากขี้เถ้าแกลบได้ด้วยตนเอง\r\nผู้เข้าร่วมอบรมมีทักษะในการเตรียมแก้วจากขี้เถ้าแกลบได้ถูกต้องตามหลักวิชาการ', 'pdf/14.pdf', '0884368799', '2022'),
(15, 'อบรมเชิงปฏิบัติการการวิเคราะห์วัสดุด้วยเครื่องมือวิทยาศาสตร์', 'images/15.png', '2023-07-23', '2,000 บ.', '23-24 ก.ค. 65', 'เพื่อฝึกทักษะการวิเคราะห์วัสดุด้วยเครื่องมือวิทยาศาสตร์', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nกลุ่มบุคคลที่มีความสนใจด้านการฝึกอาชีพ จำนวน 20 คน/รุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nเป็นการส่งเสริมฝึกทักษะการวิเคราะห์วัสดุด้วยเครื่องมือวิทยาศาสตร์', 'การวิเคราะห์ความหนาแน่นโดยเครื่อง Density Hydrometer\r\nการวิเคราะห์ค่าดัชนีหักเหแสงโดยเครื่องวัดการหักแสง Abbe Digital Refractometer\r\nการวิเคราะห์การดูดกลืนและการส่งผ่านแสงด้วยเครื่อง UV-VIS-NIR Spectrophotometer\r\nการวิเคราะห์องค์ประกอบทางเคมีด้วยเครื่องเอ็กซ์เรย์ฟลูออเรสเซ็นต์ (XRF)', 'สิ่งที่ต้องประเมิน\r\nทักษะการวิเคราะห์วัสดุด้วยเครื่องมือวิทยาศาสตร์\r\nวิธีการประเมิน\r\nสังเกตพฤติกรรม\r\nผลการวิเคราะห์ของผู้ที่เข้าอบรม', 'ผู้เข้าร่วมอบรมมีความรู้ ความเข้าใจ ในการเลือกใช้เครื่องมือวิทยาศาสตร์ในการวิเคราะห์วัสดุได้ด้วยตนเอง\r\nผู้เข้าร่วมอบรมมีทักษะในการวิเคราะห์วัสดุด้วยเครื่องมือวิทยาศาสตร์ได้ถูกต้องตามหลักวิชาการ', 'pdf/15.pdf', '0988566549', '2022'),
(16, 'อบรมเชิงปฏิบัติการทฤษฎีการเกิดแก้วและการประยุกต์ใช้', 'images/16.png', '2023-08-27', '500 บ.', '27-28 ส.ค. 65', 'เพื่อถ่ายทอดองค์ความรู้เกี่ยวกับทฤษฎีการเกิดแก้วและการประยุกต์ใช้', '8ชั่วโมง', 'มหาวิทยาลัยราชภัฏนครปฐม', 'เป้าหมายเชิงปริมาณ\r\nนักเรียน จำนวน 60 คน/รุ่น\r\nเป้าหมายเชิงคุณภาพ\r\nนักเรียนมีความรู้เกี่ยวกับทฤษฎีการเกิดแก้วและการประยุกต์ใช้', 'หลักการการเกิดแก้ว\r\nสมบัติต่าง ๆ ของวัสดุแก้ว\r\nหลักการออกแบบสูตรแก้ว\r\nการคำนวณสารในการเตรียมแก้ว', 'สิ่งที่ต้องประเมิน\r\nความรู้เกี่ยวกับทฤษฎีการเกิดแก้วและการประยุกต์ใช้จากแบบทดสอบ\r\nวิธีการประเมิน\r\nคะแนนของแบบประเมินของผู้ที่เข้าอบรม', 'ผู้เข้าร่วมอบรมมีความรู้ ความเข้าใจเกี่ยวกับทฤษฎีการเกิดแก้ว และการประยุกต์ใช้งานด้านแก้ว\r\nผู้เข้าร่วมอบรมสามารออกแบบสูตรแก้ว และคำนวณการเตรียมสารได้ด้วยตนเอง', 'pdf/16.pdf', '0845689705', '2022'),
(33, 'โตไปเป็นนายก', 'images/jpg2.jpg', '2023-01-19', '9999', '', '', '', '', '', '', '', '', '', NULL, '2023'),
(34, 'โตไปเป็นนายก', '/images/jpg2.jpg', '2023-01-20', '1000', '', '', '', '', '', '', '', '', '', NULL, '2023'),
(35, 'โตไปเป็นนายก', '44', '2023-01-25', '1000', '', '', '', '', '', '', '', '', '', NULL, '2023');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sci_cs`
--
ALTER TABLE `sci_cs`
  ADD PRIMARY KEY (`cs_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sci_cs`
--
ALTER TABLE `sci_cs`
  MODIFY `cs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- Database: `test_db`
--
CREATE DATABASE IF NOT EXISTS `test_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test_db`;

-- --------------------------------------------------------

--
-- Table structure for table `user_tb`
--

CREATE TABLE `user_tb` (
  `ID` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `upassword` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_tb`
--
ALTER TABLE `user_tb`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_tb`
--
ALTER TABLE `user_tb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `test_phpdb`
--
CREATE DATABASE IF NOT EXISTS `test_phpdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `test_phpdb`;

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id`, `name`, `lastname`) VALUES
(3, 'กัตพัตร์', 'สมหวัง');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);
--
-- Database: `user_fram`
--
CREATE DATABASE IF NOT EXISTS `user_fram` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `user_fram`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
