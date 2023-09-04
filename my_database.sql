-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 14, 2023 at 03:11 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_database`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminuser`
--

DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE IF NOT EXISTS `adminuser` (
  `userid` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `adminuser`
--

INSERT INTO `adminuser` (`userid`, `password`) VALUES
('shop', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cartdetail`
--

DROP TABLE IF EXISTS `cartdetail`;
CREATE TABLE IF NOT EXISTS `cartdetail` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `productid` int NOT NULL,
  `qty` int NOT NULL,
  `sessionid` varchar(50) NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `cartdetail`
--

INSERT INTO `cartdetail` (`sno`, `productid`, `qty`, `sessionid`) VALUES
(11, 2, 1, 'aqrffdg143at2gctq3rmd6k025'),
(15, 1, 1, '74iocpb9g4d6eea47krvdnt852'),
(16, 1, 1, 'fthn1ajmevdthpu4qegdtgsstc'),
(20, 1, 1, 'dagckh14kjgm05kl0npdqfolls'),
(19, 3, 1, 'fthn1ajmevdthpu4qegdtgsstc');

-- --------------------------------------------------------

--
-- Table structure for table `catagorydetail`
--

DROP TABLE IF EXISTS `catagorydetail`;
CREATE TABLE IF NOT EXISTS `catagorydetail` (
  `categoryid` int NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(50) NOT NULL,
  `activestatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `catagorydetail`
--

INSERT INTO `catagorydetail` (`categoryid`, `categoryname`, `activestatus`) VALUES
(1, 'Electronics Items', 1),
(2, 'cosmetics', 1),
(3, 'Hair Products', 1),
(4, 'Food Items', 1),
(5, 'Books', 1),
(6, 'furniture', 0),
(7, 'grocery', 0),
(8, 'children', 1);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `CompanyID` int NOT NULL,
  `CompanyName` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CompanyNumber` varchar(50) NOT NULL,
  `Addres` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `City` varchar(100) NOT NULL,
  `state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PostalCode` varchar(50) NOT NULL,
  `Country` varchar(100) NOT NULL,
  PRIMARY KEY (`CompanyID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`CompanyID`, `CompanyName`, `CompanyNumber`, `Addres`, `City`, `state`, `PostalCode`, `Country`) VALUES
(1001, 'ABCD', '2345637854', 'adrash nagar', 'kota', 'rajasthan', '234536', 'india'),
(1002, 'WXYZ', '9856765563', 'dadabari', 'kota', 'rajasthan', '354687', 'india'),
(1003, 'FGHI', '9876567895', 'Kunhari', 'kota', 'rajasthan', '349087', 'india'),
(1004, 'PQRS', '9654327633', 'ridhi sidhi', 'kota', 'rajasthan', '356477', 'india'),
(1005, 'BCDE', '9876587654', 'kelashpuri', 'kota', 'rajasthan', '376587', 'india'),
(1080, 'BHGTRnew', '9876556788', 'kunhari', 'kota', 'rajasthan', '9876543', 'india');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `CUST_code` varchar(6) NOT NULL,
  `CUST_name` varchar(100) NOT NULL,
  `CUST_city` varchar(100) NOT NULL,
  `CUST_working_area` varchar(200) NOT NULL,
  `CUST_country` varchar(50) NOT NULL,
  `Phone_no` varchar(10) NOT NULL,
  `Payment` int NOT NULL,
  PRIMARY KEY (`CUST_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CUST_code`, `CUST_name`, `CUST_city`, `CUST_working_area`, `CUST_country`, `Phone_no`, `Payment`) VALUES
('A001', 'ABCD', 'kota', 'kota', 'india', '9764567656', 10000),
('A002', 'EFGH', 'Kanpur', 'Kanpur', 'india', '9865473656', 20000),
('A003', 'IKLM', 'delhi', 'delhi', 'india', '9867584656', 25000),
('A004', 'NOPQ', 'jaipur', 'jaipur', 'india', '9123487656', 30000),
('A005', 'RSTU', 'ajmer', 'ajmer', 'india', '9876854356', 45000),
('A090', 'BHGF', 'Kota', 'kota', 'India', '9653989765', 30000),
('A087', 'HGFD', 'KOTA', 'kota', 'india', '9876556878', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
CREATE TABLE IF NOT EXISTS `employee` (
  `e_id` int NOT NULL,
  `e_name` varchar(50) NOT NULL,
  `e_salary` varchar(5) NOT NULL,
  `e_age` int NOT NULL,
  `e_gender` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `e_department` varchar(50) NOT NULL,
  PRIMARY KEY (`e_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`e_id`, `e_name`, `e_salary`, `e_age`, `e_gender`, `e_department`) VALUES
(1006, 'BCDE', '30000', 23, 'female', 'finance'),
(1001, 'ABCD', '12000', 28, 'male', 'technical'),
(1002, 'EFGH', '20000', 25, 'female', 'technical'),
(1003, 'UHCD', '25000', 28, 'male', 'technical'),
(1004, 'BHGA', '22000', 23, 'female', 'technical'),
(1005, 'IYUT', '14500', 22, 'male', 'technical'),
(1090, 'NEWid', '9800', 30, 'male', 'technical');

-- --------------------------------------------------------

--
-- Table structure for table `ordermaster`
--

DROP TABLE IF EXISTS `ordermaster`;
CREATE TABLE IF NOT EXISTS `ordermaster` (
  `orderno` int NOT NULL,
  `orderdate` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(6) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contactno` varchar(10) NOT NULL,
  `orderamt` int NOT NULL,
  `paymentmode` varchar(50) NOT NULL,
  `orderstatus` varchar(50) NOT NULL,
  PRIMARY KEY (`orderno`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ordermaster`
--

INSERT INTO `ordermaster` (`orderno`, `orderdate`, `name`, `address`, `city`, `state`, `country`, `pincode`, `email`, `contactno`, `orderamt`, `paymentmode`, `orderstatus`) VALUES
(1, '2023-07-28', 'SRV Solution', 'talwandi', 'Kota', 'Rajasthan', 'India', '32400', 'SRV@gmail.com', '9653985402', 240, 'COD', 'Pending Payment'),
(2, '2023-07-28', 'SRV Solution', 'talwandi', 'Kota', 'Rajasthan', 'India', '32400', 'SRV@gmail.com', '9653985402', 32000, 'COD', 'Pending Payment'),
(3, '2023-07-28', 'ABCD', '42 Adarsh nagar kunhadi', 'Kota', 'Rajasthan', 'India', '32400', 'ABCD@gmail.com', '9653985402', 320, 'COD', 'Pending Payment'),
(4, '2023-07-30', 'SRV Solution', 'talwandi', 'Kota', 'Rajasthan', 'India', '32400', 'SRV@gmail.com', '9653985402', 2040000, 'COD', 'Payment Recieved'),
(5, '2023-07-30', 'SRV Solution', 'talwandi', 'Kota', 'Rajasthan', 'India', '32400', 'SRV@gmail.com', '9653985402', 1200, 'COD', 'Pending Payment'),
(6, '2023-07-30', 'BCFG', 'jawahar nagar', 'jaipur', 'Rajasthan', 'India', '324008', 'BCFG@gmail.com', '9876567895', 32000, 'COD', 'Pending Payment'),
(7, '2023-07-31', 'SRV Solution', 'talwandi', 'Kota', 'Rajasthan', 'India', '32400', 'SRV@gmail.com', '9653985402', 1320, 'COD', 'Pending Payment'),
(8, '2023-08-01', 'Deepa', '42 Adarsh nagar kunhadi', 'Kota', 'Rajasthan', 'India', '324008', 'deepa123@gmail.com', '9653985432', 6000, 'COD', 'Pending Payment'),
(9, '2023-08-02', 'pooja', 'kunhari', 'Kota', 'Rajasthan', 'India', '324078', 'pooja123@gmail.com', '9653638829', 360, 'COD', 'Pending Payment');

-- --------------------------------------------------------

--
-- Table structure for table `orderproducts`
--

DROP TABLE IF EXISTS `orderproducts`;
CREATE TABLE IF NOT EXISTS `orderproducts` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `orderno` int NOT NULL,
  `productid` int NOT NULL,
  `qty` int NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orderproducts`
--

INSERT INTO `orderproducts` (`sno`, `orderno`, `productid`, `qty`, `price`) VALUES
(1, 1, 2, 1, 120),
(2, 1, 2, 1, 120),
(3, 2, 7, 1, 32000),
(4, 3, 4, 1, 320),
(5, 4, 9, 200, 1200),
(6, 4, 12, 1200, 1500),
(7, 5, 6, 1, 1200),
(8, 6, 7, 1, 32000),
(9, 7, 6, 1, 1200),
(10, 7, 2, 1, 120),
(11, 8, 11, 5, 1200),
(12, 9, 2, 3, 120);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int NOT NULL,
  `Customer_id` varchar(6) NOT NULL,
  `order_status` varchar(10) NOT NULL,
  `order_date` date NOT NULL,
  `shipped_date` date NOT NULL,
  `staff_id` int NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `Customer_id`, `order_status`, `order_date`, `shipped_date`, `staff_id`) VALUES
(12373, 'A003', 'SHIPPED', '2023-07-22', '2023-07-29', 1903),
(12372, 'A002', 'SHIPPED', '2023-07-12', '2023-07-19', 1902),
(12371, 'A001', 'PACKED', '2023-07-12', '2023-07-19', 1901),
(12374, 'A004', 'DELIVERD', '2023-07-02', '2023-07-09', 1904),
(12375, 'A005', 'PACKED', '2023-07-12', '2023-07-20', 1905),
(12376, 'A006', 'DELIVERD', '2023-07-08', '2023-07-16', 1906),
(12390, 'A090', 'PACKED', '2023-08-12', '2023-08-20', 1990),
(12380, 'A786', 'SHIPPED', '2023-08-10', '2023-08-22', 1987);

-- --------------------------------------------------------

--
-- Table structure for table `productdetail`
--

DROP TABLE IF EXISTS `productdetail`;
CREATE TABLE IF NOT EXISTS `productdetail` (
  `productid` int NOT NULL AUTO_INCREMENT,
  `productname` varchar(50) NOT NULL,
  `categoryid` int NOT NULL,
  `subcategoryid` int NOT NULL,
  `qty` int NOT NULL,
  `price` float NOT NULL,
  `minqty` int NOT NULL,
  `maxqty` int NOT NULL,
  `productdesc` varchar(500) NOT NULL,
  `activestatus` tinyint(1) NOT NULL,
  `homepage` tinyint(1) NOT NULL,
  PRIMARY KEY (`productid`),
  UNIQUE KEY `productname` (`productname`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `productdetail`
--

INSERT INTO `productdetail` (`productid`, `productname`, `categoryid`, `subcategoryid`, `qty`, `price`, `minqty`, `maxqty`, `productdesc`, `activestatus`, `homepage`) VALUES
(1, 'harry potter part2', 5, 5, 15, 1200, 1, 5, 'wdHWDRHT5     ', 1, 1),
(2, 'harry potter part 3', 5, 5, 23, 120, 1, 23, 'cdafes ', 1, 0),
(3, 'lakme primer', 2, 3, 50, 890, 1, 33, 'bsxth', 1, 0),
(4, 'lotous foundation', 2, 3, 20, 320, 1, 5, 'wrgws ', 1, 1),
(5, 'vodana hair starightner', 3, 2, 20, 1300, 1, 5, 'fazefaza ', 1, 1),
(6, 'bajaj hair curler ', 3, 2, 15, 1200, 1, 5, 'fvwwrteq ', 1, 1),
(7, 'washing machine', 1, 1, 15, 32000, 1, 15, 'bresrthesd', 1, 0),
(8, 'Air conditioner', 1, 1, 14, 22000, 1, 2, 'vewrtbgzxsdtr5yhggfsdew  ', 1, 0),
(9, 'Almonds', 4, 7, 2000, 1200, 200, 1000, 'Rs 1200 per kg      ', 1, 0),
(10, 'Dates', 4, 7, 15000, 1250, 1000, 2300, 'RS 1250 per kg ', 1, 1),
(11, 'Lakme CC Cream', 2, 3, 20, 1200, 1, 10, 'gbsxzegtzgtr4hydsw ', 1, 0),
(12, 'Coffee beans', 4, 6, 200000, 1500, 1200, 200000, '1500 per kg packets ', 1, 1),
(13, 'lion', 8, 8, 20, 500, 1, 5, 'vdywgdqagwdhqw8yuytdr6qtf  ', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reguser`
--

DROP TABLE IF EXISTS `reguser`;
CREATE TABLE IF NOT EXISTS `reguser` (
  `sno` int NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(25) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `pincode` varchar(6) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `contactno` varchar(10) DEFAULT NULL,
  `activestatus` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`sno`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reguser`
--

INSERT INTO `reguser` (`sno`, `email`, `password`, `name`, `gender`, `address`, `city`, `state`, `country`, `pincode`, `contactno`, `activestatus`) VALUES
(3, 'SRV@gmail.com', '123', 'SRV Solution', 'Female', 'talwandi', 'Kota', 'Rajasthan', 'India', '32400', '9653985402', 1),
(4, 'ABCD@gmail.com', '123456', 'ABCD', 'Female', '42 Adarsh nagar kunhadi', 'Kota', 'Rajasthan', 'India', '32400', '9653985402', 1),
(6, 'BCFG@gmail.com', '123', 'BCFG', 'Male', 'jawahar nagar', 'jaipur', 'Rajasthan', 'India', '324008', '9876567895', 1),
(7, 'bhartiprajapati490@gmail.com', '123', 'Bharti Prajapati', 'Female', '42 Adarsh nagar kunhadi', 'Kota', 'Rajasthan', 'India', '324006', '9653985402', 0),
(10, 'EFGH@gmail.com', '123', 'EFGH', 'Female', 'gumanpura', 'Kota', 'Rajasthan', 'India', '324068', '9653986543', 1),
(11, 'XYZ@gmail.com', '123', 'XYZ', 'Female', 'gandhi nagar', 'Kota', 'Rajasthan', 'India', '324008', '9653985467', 0),
(12, 'XYZo@gmail.com', '12', 'XYZ', 'Female', 'chandni chock', 'delhi', 'delhi', 'India', '324008', '9653943655', 1),
(14, 'deepa123@gmail.com', 'deepa', 'Deepa', 'Female', '42 Adarsh nagar kunhadi', 'Kota', 'Rajasthan', 'India', '324008', '9653985432', 1),
(15, 'pooja123@gmail.com', '123', 'pooja', 'Female', 'kunhari', 'Kota', 'Rajasthan', 'India', '324078', '9653638829', 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `Roll_no` int NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Address` varchar(200) NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Age` int NOT NULL,
  PRIMARY KEY (`Roll_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Roll_no`, `Name`, `Address`, `Phone`, `Age`) VALUES
(1901, 'BGAH', 'KUNHARI KOTA', '9876456322', 15),
(1902, 'BGAH', 'NAYAPURA KOTA', '983456322', 15),
(1903, 'ABCD', 'DADABARI KOTA', '7865765434', 15),
(1904, 'JHGF', 'BALITA KOTA', '9876545323', 15),
(1905, 'UYTR', 'LANDMARKD KOTA', '9876456876', 15),
(1906, 'BHGD', 'GHUMANPURA KOTA', '9876467322', 15),
(1990, 'BCDE', 'mahaveer nagar kota', '7865746574', 16),
(1920, 'BHGh', 'dadabari', '5678476389', 16),
(1980, 'BHGFD', 'kunhari', '6574897078', 17);

-- --------------------------------------------------------

--
-- Table structure for table `subcategorydetail`
--

DROP TABLE IF EXISTS `subcategorydetail`;
CREATE TABLE IF NOT EXISTS `subcategorydetail` (
  `subcategoryid` int NOT NULL AUTO_INCREMENT,
  `subcategoryname` varchar(50) NOT NULL,
  `categoryid` int NOT NULL,
  `activestatus` tinyint(1) NOT NULL,
  PRIMARY KEY (`subcategoryid`),
  UNIQUE KEY `subcategoryname` (`subcategoryname`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subcategorydetail`
--

INSERT INTO `subcategorydetail` (`subcategoryid`, `subcategoryname`, `categoryid`, `activestatus`) VALUES
(1, 'Home appliances', 1, 1),
(2, 'hair machines', 3, 1),
(3, 'Primer, Foundation.', 2, 1),
(4, 'spices', 4, 0),
(5, 'harry potter', 5, 1),
(6, 'Beverages', 4, 1),
(7, 'Dried Fruits', 4, 1),
(8, 'plastic toys', 8, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
