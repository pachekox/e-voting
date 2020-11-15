-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 15, 2020 at 12:16 PM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `geotraveller`
--
CREATE DATABASE `geotraveller` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `geotraveller`;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `address_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adress` varchar(15) DEFAULT NULL,
  `Longitude` varchar(50) NOT NULL,
  `Latitude` varchar(50) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `adress`, `Longitude`, `Latitude`) VALUES
(2, 'Naivasha', '4545454454', '54545454'),
(3, 'Nairobi', '64646464', '737373737'),
(4, 'Kerio Valley', '232323232', '2232323232'),
(5, 'Naivasha', '433434343', '4343434343'),
(6, 'Kitale Kenya', '35445454', '45454545'),
(7, 'Nairobi', '54545454', '54545454'),
(8, 'Bombololo', '4334343', '33434343'),
(9, 'Naivasha', '747474747', '748484848'),
(10, 'Naivasha', '747474747', '748484848'),
(11, 'Naivasha', '55363636', '636363636');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `service_category_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_category` varchar(15) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Description` varchar(50) NOT NULL,
  `Title` varchar(50) NOT NULL,
  PRIMARY KEY (`service_category_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`service_category_id`, `service_category`, `created_at`, `Description`, `Title`) VALUES
(19, 'pyrum', '2020-11-15 10:45:53', 'Duncan', 'Skating'),
(17, 'pyrum', '2020-11-15 09:56:11', 'Descriptionqswras', 'Title'),
(5, 'Gamepark', '2020-11-04 21:04:02', 'Description', 'Nature walks'),
(6, 'Mountains', '2020-11-04 22:15:46', 'Description', 'Mountain'),
(7, 'Skating', '2020-11-05 16:41:24', 'The way to connect with the ground', 'Skating'),
(8, 'Skating', '2020-11-05 16:42:29', 'hshhsh', 'Skating'),
(9, 'walking', '2020-11-05 16:43:09', 'limmbing', 'Dun'),
(10, 'pyrum', '2020-11-05 16:45:55', 'Description', 'Nature walks'),
(11, 'pyrum', '2020-11-05 16:47:19', 'Description', 'Nature walks'),
(12, 'Gamepark', '2020-11-05 17:00:53', 'Description', 'Nature walks'),
(14, 'pyrum', '2020-11-06 16:30:25', 'Description', 'Nature walks'),
(15, 'pyrum', '2020-11-07 08:15:43', 'Description', 'Nature walks'),
(16, 'Swimming', '2020-11-09 14:30:42', 'Description', 'Dun'),
(20, 'pyrum', '2020-11-15 10:46:53', 'Description', 'Title'),
(21, 'pyrum', '2020-11-15 10:47:14', 'Description', 'Dun'),
(22, 'pyrum', '2020-11-15 10:47:43', 'Description', 'Skating'),
(23, 'pyrum', '2020-11-15 10:48:06', 'Description', 'Mountain'),
(24, 'pyrum', '2020-11-15 10:50:13', 'Description', 'Dun'),
(25, 'pyrum', '2020-11-15 10:50:15', 'Description', 'Dun'),
(26, 'pyrum', '2020-11-15 11:04:11', 'Description', 'Dun'),
(27, 'pyrum', '2020-11-15 11:15:37', 'Description', 'Skating'),
(28, 'pyrum', '2020-11-15 11:16:14', 'Description', 'Mountain'),
(29, 'pyrum', '2020-11-15 11:16:43', 'Descriptio56n', 'Title'),
(30, 'pyrum', '2020-11-15 11:17:09', 'Description', 'Skating'),
(31, 'pyrum', '2020-11-15 11:17:38', 'Description', 'Mountain');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `email` varchar(50) NOT NULL,
  `comment` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment_id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `subject` text NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`email`, `comment`, `created_at`, `comment_id`, `subject`) VALUES
('mulongodancan27@gmail.com', 'keep trying', '2020-11-05 18:00:06', 1, 'subjdsect'),
('pyrum@manyali.com', 'keep trying', '2020-11-07 15:02:02', 4, 'subject'),
('eiiiee@gmail.com', 'keep trying', '2020-11-07 15:02:18', 5, 'subject'),
('pyrum@manyali.com', 'keep trying', '2020-11-07 15:02:30', 6, 'subject'),
('mulongodancan40@gmail.com', 'yes we can', '2020-11-09 14:35:08', 7, 'subject');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `OrderId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ItemOdered` varchar(50) NOT NULL,
  `quantityBooked` varchar(50) NOT NULL,
  `service_Id` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`OrderId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `orders`
--


-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `service_Id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `service_tag` varchar(50) NOT NULL,
  `service_description` varchar(250) NOT NULL,
  `available_space` varchar(50) NOT NULL,
  `service_rating` varchar(50) NOT NULL,
  `address_id` int(50) NOT NULL,
  `service_category_id` int(15) NOT NULL,
  `image` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`service_Id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_Id`, `service_tag`, `service_description`, `available_space`, `service_rating`, `address_id`, `service_category_id`, `image`, `created_at`) VALUES
(4, 'swimming', 'Describe your service', '3', '7', 14, 7, 'WIN_20200928_06_57_05_Pro.jpg', '2020-11-07 11:29:40'),
(5, 'skying', 'Describe your service', '45', '0', 0, 0, 'Annotation 2020-03-11 175110 (2).png', '2020-11-07 11:30:16'),
(6, 'skying', 'Describe your service', '56', '0', 0, 0, 'pic.jpg', '2020-11-07 11:31:49'),
(7, 'twos', 'Describe your service', '56', '0', 0, 0, 'Shopping 05.jpg', '2020-11-07 11:33:09'),
(8, 'swimming', 'Describe your service', '3', '0', 0, 0, 'site.jpg', '2020-11-07 12:04:50'),
(9, 'skying', 'Describe your service', '3', '0', 0, 0, 'image1.jpg', '2020-11-07 12:05:55'),
(10, 'yes', 'Describe your service', '56', '0', 0, 0, '239.jpg', '2020-11-07 12:06:45'),
(11, 'yes', 'Describe your service', '23', '2', 0, 0, 'tour.png', '2020-11-07 14:26:39'),
(12, 'yes', 'Describe your service', '23', '0', 0, 0, 'Annotation 2020-03-11 175110.png', '2020-11-09 14:46:20'),
(13, 'yes', 'Describe your service', '23', '3', 0, 0, 'Annotation 2020-03-11 104726.png', '2020-11-09 14:48:12'),
(14, 'yes', 'Describe your service', '34', '0', 0, 7, 'Annotation 2020-03-11 175110 (2).png', '2020-11-09 14:59:29'),
(15, 'swimming', 'Describe your service', '34', '7', 0, 10, 'Annotation 2020-03-11 104843.png', '2020-11-09 15:05:01'),
(16, 'swimming', 'Describe your service', '34', '3', 10, 12, 'migration.png', '2020-11-09 15:09:01'),
(17, 'yes', 'Describe your service', '45', '0', 10, 1, 'WIN_20201113_13_28_13_Pro.jpg', '2020-11-14 11:47:07');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `transactionId` varchar(50) NOT NULL,
  `itemBooked` varchar(50) NOT NULL,
  `quantityBooked` varchar(50) NOT NULL,
  `totalAmountpaid` varchar(50) NOT NULL,
  `service_Id` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`transactionId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `firstName` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `PhoneNumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `userName` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `image` varchar(250) NOT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`firstName`, `lastname`, `address`, `PhoneNumber`, `email`, `userName`, `password`, `image`, `user_type`, `created_at`) VALUES
('Poker', 'Benjamin56', 'Webuye', '0714757251', 'kelvin@200gmail.com', 'Poker', '7492e2f3053c854d4e8f7e1ca149568c', '', '', '2020-10-31 20:34:45'),
('Poker', 'Danie2344', 'kitale kenya', '0714757251', 'kelvin@gmail.com', 'Danie2344', '7492e2f3053c854d4e8f7e1ca149568c', '', '', '2020-10-31 20:29:26'),
('Poker', 'Nyongesa', 'Kisumu', '0714757251', 'eiiiee@gmail.com', 'Sam45', '7492e2f3053c854d4e8f7e1ca149568c', '', '', '2020-10-31 20:20:25'),
('Brian34', 'Nyongesa', '6787644', '0714757251', 'mulongodancan20@gmail.com', 'sppd4', '7492e2f3053c854d4e8f7e1ca149568c', 'WIN_20200928_06_57_05_Pro.jpg', '@admin', '2020-10-16 16:48:25'),
('Davis', 'Delva', 'Nairobi', '84848484', 'eiiiee@56gmail.com', '989899', '7492e2f3053c854d4e8f7e1ca149568c', '', '0', '2020-10-31 20:23:59'),
('Pacheko', 'Randus', 'Nyamatheko', '0714757251', '7738388396@gmail.com', 'sam78', '7492e2f3053c854d4e8f7e1ca149568c', '', '', '2020-10-30 22:21:42'),
('Daniel4', 'Daniel', 'eiiiee@gmail.com', '0714757251', 'eiiiee@34gmail.com', 'Daniel', '7492e2f3053c854d4e8f7e1ca149568c', '', '', '2020-10-31 20:21:46'),
('Duncan04', 'Benjamin767', '', '0714757251', 'kelvin@70gmail.com', 'Benjamin89876', '7492e2f3053c854d4e8f7e1ca149568c', '', '@admin', '2020-10-31 20:38:22'),
('Duncan', 'Bravin', 'Naivasha', '0714757251', 'kelvin@75gmail.com', 'Bravin', '7492e2f3053c854d4e8f7e1ca149568c', '', '@admin', '2020-10-31 20:43:03'),
('Duncan234', 'Derrick', 'Naivasha', '0714757251', 'kelvin@789gmail.com', 'Derrick', '7492e2f3053c854d4e8f7e1ca149568c', '', '@admin', '2020-10-31 20:44:47'),
('Marvin23', 'Marvin23', 'Naivasha', '0714757251', 'kelvin@78349gmail.com', 'Marvin23', '7492e2f3053c854d4e8f7e1ca149568c', '', '@admin', '2020-10-31 20:46:16'),
('Duncan', 'Nyongesa', 'Naivasha', '0714757251', '773838839@gmail.com', 'Sam4590', '7492e2f3053c854d4e8f7e1ca149568c', '', 'user', '2020-11-07 17:47:41'),
('Duncan', 'Nyongesa', '6787644', '0714757251', 'mulongodancan26@gmail.com', 'Sam4534', '7492e2f3053c854d4e8f7e1ca149568c', '', 'user', '2020-11-07 18:00:46'),
('Duncan', 'Nyongesa', '6787644', '0714757251', 'mulongodancan89@gmail.com', 'Sam453409879', '7492e2f3053c854d4e8f7e1ca149568c', '', 'user', '2020-11-07 18:02:49'),
('Edmond', 'KYala', '6787644', '0714757251', '77383883944@gmail.com', 'Dalvi', '7492e2f3053c854d4e8f7e1ca149568c', '', 'user', '2020-11-07 18:05:01'),
('Duncan', 'Nyongesa', '6787644', '0714757251', 'mulongodancan40@gmail.com', 'Emmanuel', '7492e2f3053c854d4e8f7e1ca149568c', '', 'user', '2020-11-07 18:09:55');
--
-- Database: `information_schema`
--
CREATE DATABASE `information_schema` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `information_schema`;

-- --------------------------------------------------------

--
-- Table structure for table `CHARACTER_SETS`
--

CREATE TEMPORARY TABLE `CHARACTER_SETS` (
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `DEFAULT_COLLATE_NAME` varchar(32) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(60) NOT NULL DEFAULT '',
  `MAXLEN` bigint(3) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CHARACTER_SETS`
--

INSERT INTO `CHARACTER_SETS` (`CHARACTER_SET_NAME`, `DEFAULT_COLLATE_NAME`, `DESCRIPTION`, `MAXLEN`) VALUES
('big5', 'big5_chinese_ci', 'Big5 Traditional Chinese', 2),
('dec8', 'dec8_swedish_ci', 'DEC West European', 1),
('cp850', 'cp850_general_ci', 'DOS West European', 1),
('hp8', 'hp8_english_ci', 'HP West European', 1),
('koi8r', 'koi8r_general_ci', 'KOI8-R Relcom Russian', 1),
('latin1', 'latin1_swedish_ci', 'cp1252 West European', 1),
('latin2', 'latin2_general_ci', 'ISO 8859-2 Central European', 1),
('swe7', 'swe7_swedish_ci', '7bit Swedish', 1),
('ascii', 'ascii_general_ci', 'US ASCII', 1),
('ujis', 'ujis_japanese_ci', 'EUC-JP Japanese', 3),
('sjis', 'sjis_japanese_ci', 'Shift-JIS Japanese', 2),
('hebrew', 'hebrew_general_ci', 'ISO 8859-8 Hebrew', 1),
('tis620', 'tis620_thai_ci', 'TIS620 Thai', 1),
('euckr', 'euckr_korean_ci', 'EUC-KR Korean', 2),
('koi8u', 'koi8u_general_ci', 'KOI8-U Ukrainian', 1),
('gb2312', 'gb2312_chinese_ci', 'GB2312 Simplified Chinese', 2),
('greek', 'greek_general_ci', 'ISO 8859-7 Greek', 1),
('cp1250', 'cp1250_general_ci', 'Windows Central European', 1),
('gbk', 'gbk_chinese_ci', 'GBK Simplified Chinese', 2),
('latin5', 'latin5_turkish_ci', 'ISO 8859-9 Turkish', 1),
('armscii8', 'armscii8_general_ci', 'ARMSCII-8 Armenian', 1),
('utf8', 'utf8_general_ci', 'UTF-8 Unicode', 3),
('ucs2', 'ucs2_general_ci', 'UCS-2 Unicode', 2),
('cp866', 'cp866_general_ci', 'DOS Russian', 1),
('keybcs2', 'keybcs2_general_ci', 'DOS Kamenicky Czech-Slovak', 1),
('macce', 'macce_general_ci', 'Mac Central European', 1),
('macroman', 'macroman_general_ci', 'Mac West European', 1),
('cp852', 'cp852_general_ci', 'DOS Central European', 1),
('latin7', 'latin7_general_ci', 'ISO 8859-13 Baltic', 1),
('cp1251', 'cp1251_general_ci', 'Windows Cyrillic', 1),
('cp1256', 'cp1256_general_ci', 'Windows Arabic', 1),
('cp1257', 'cp1257_general_ci', 'Windows Baltic', 1),
('binary', 'binary', 'Binary pseudo charset', 1),
('geostd8', 'geostd8_general_ci', 'GEOSTD8 Georgian', 1),
('cp932', 'cp932_japanese_ci', 'SJIS for Windows Japanese', 2),
('eucjpms', 'eucjpms_japanese_ci', 'UJIS for Windows Japanese', 3);

-- --------------------------------------------------------

--
-- Table structure for table `COLLATIONS`
--

CREATE TEMPORARY TABLE `COLLATIONS` (
  `COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `ID` bigint(11) NOT NULL DEFAULT '0',
  `IS_DEFAULT` varchar(3) NOT NULL DEFAULT '',
  `IS_COMPILED` varchar(3) NOT NULL DEFAULT '',
  `SORTLEN` bigint(3) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLLATIONS`
--

INSERT INTO `COLLATIONS` (`COLLATION_NAME`, `CHARACTER_SET_NAME`, `ID`, `IS_DEFAULT`, `IS_COMPILED`, `SORTLEN`) VALUES
('big5_chinese_ci', 'big5', 1, 'Yes', 'Yes', 1),
('big5_bin', 'big5', 84, '', 'Yes', 1),
('dec8_swedish_ci', 'dec8', 3, 'Yes', 'Yes', 1),
('dec8_bin', 'dec8', 69, '', 'Yes', 1),
('cp850_general_ci', 'cp850', 4, 'Yes', 'Yes', 1),
('cp850_bin', 'cp850', 80, '', 'Yes', 1),
('hp8_english_ci', 'hp8', 6, 'Yes', 'Yes', 1),
('hp8_bin', 'hp8', 72, '', 'Yes', 1),
('koi8r_general_ci', 'koi8r', 7, 'Yes', 'Yes', 1),
('koi8r_bin', 'koi8r', 74, '', 'Yes', 1),
('latin1_german1_ci', 'latin1', 5, '', 'Yes', 1),
('latin1_swedish_ci', 'latin1', 8, 'Yes', 'Yes', 1),
('latin1_danish_ci', 'latin1', 15, '', 'Yes', 1),
('latin1_german2_ci', 'latin1', 31, '', 'Yes', 2),
('latin1_bin', 'latin1', 47, '', 'Yes', 1),
('latin1_general_ci', 'latin1', 48, '', 'Yes', 1),
('latin1_general_cs', 'latin1', 49, '', 'Yes', 1),
('latin1_spanish_ci', 'latin1', 94, '', 'Yes', 1),
('latin2_czech_cs', 'latin2', 2, '', 'Yes', 4),
('latin2_general_ci', 'latin2', 9, 'Yes', 'Yes', 1),
('latin2_hungarian_ci', 'latin2', 21, '', 'Yes', 1),
('latin2_croatian_ci', 'latin2', 27, '', 'Yes', 1),
('latin2_bin', 'latin2', 77, '', 'Yes', 1),
('swe7_swedish_ci', 'swe7', 10, 'Yes', 'Yes', 1),
('swe7_bin', 'swe7', 82, '', 'Yes', 1),
('ascii_general_ci', 'ascii', 11, 'Yes', 'Yes', 1),
('ascii_bin', 'ascii', 65, '', 'Yes', 1),
('ujis_japanese_ci', 'ujis', 12, 'Yes', 'Yes', 1),
('ujis_bin', 'ujis', 91, '', 'Yes', 1),
('sjis_japanese_ci', 'sjis', 13, 'Yes', 'Yes', 1),
('sjis_bin', 'sjis', 88, '', 'Yes', 1),
('hebrew_general_ci', 'hebrew', 16, 'Yes', 'Yes', 1),
('hebrew_bin', 'hebrew', 71, '', 'Yes', 1),
('tis620_thai_ci', 'tis620', 18, 'Yes', 'Yes', 4),
('tis620_bin', 'tis620', 89, '', 'Yes', 1),
('euckr_korean_ci', 'euckr', 19, 'Yes', 'Yes', 1),
('euckr_bin', 'euckr', 85, '', 'Yes', 1),
('koi8u_general_ci', 'koi8u', 22, 'Yes', 'Yes', 1),
('koi8u_bin', 'koi8u', 75, '', 'Yes', 1),
('gb2312_chinese_ci', 'gb2312', 24, 'Yes', 'Yes', 1),
('gb2312_bin', 'gb2312', 86, '', 'Yes', 1),
('greek_general_ci', 'greek', 25, 'Yes', 'Yes', 1),
('greek_bin', 'greek', 70, '', 'Yes', 1),
('cp1250_general_ci', 'cp1250', 26, 'Yes', 'Yes', 1),
('cp1250_czech_cs', 'cp1250', 34, '', 'Yes', 2),
('cp1250_croatian_ci', 'cp1250', 44, '', 'Yes', 1),
('cp1250_bin', 'cp1250', 66, '', 'Yes', 1),
('cp1250_polish_ci', 'cp1250', 99, '', 'Yes', 1),
('gbk_chinese_ci', 'gbk', 28, 'Yes', 'Yes', 1),
('gbk_bin', 'gbk', 87, '', 'Yes', 1),
('latin5_turkish_ci', 'latin5', 30, 'Yes', 'Yes', 1),
('latin5_bin', 'latin5', 78, '', 'Yes', 1),
('armscii8_general_ci', 'armscii8', 32, 'Yes', 'Yes', 1),
('armscii8_bin', 'armscii8', 64, '', 'Yes', 1),
('utf8_general_ci', 'utf8', 33, 'Yes', 'Yes', 1),
('utf8_bin', 'utf8', 83, '', 'Yes', 1),
('utf8_unicode_ci', 'utf8', 192, '', 'Yes', 8),
('utf8_icelandic_ci', 'utf8', 193, '', 'Yes', 8),
('utf8_latvian_ci', 'utf8', 194, '', 'Yes', 8),
('utf8_romanian_ci', 'utf8', 195, '', 'Yes', 8),
('utf8_slovenian_ci', 'utf8', 196, '', 'Yes', 8),
('utf8_polish_ci', 'utf8', 197, '', 'Yes', 8),
('utf8_estonian_ci', 'utf8', 198, '', 'Yes', 8),
('utf8_spanish_ci', 'utf8', 199, '', 'Yes', 8),
('utf8_swedish_ci', 'utf8', 200, '', 'Yes', 8),
('utf8_turkish_ci', 'utf8', 201, '', 'Yes', 8),
('utf8_czech_ci', 'utf8', 202, '', 'Yes', 8),
('utf8_danish_ci', 'utf8', 203, '', 'Yes', 8),
('utf8_lithuanian_ci', 'utf8', 204, '', 'Yes', 8),
('utf8_slovak_ci', 'utf8', 205, '', 'Yes', 8),
('utf8_spanish2_ci', 'utf8', 206, '', 'Yes', 8),
('utf8_roman_ci', 'utf8', 207, '', 'Yes', 8),
('utf8_persian_ci', 'utf8', 208, '', 'Yes', 8),
('utf8_esperanto_ci', 'utf8', 209, '', 'Yes', 8),
('utf8_hungarian_ci', 'utf8', 210, '', 'Yes', 8),
('ucs2_general_ci', 'ucs2', 35, 'Yes', 'Yes', 1),
('ucs2_bin', 'ucs2', 90, '', 'Yes', 1),
('ucs2_unicode_ci', 'ucs2', 128, '', 'Yes', 8),
('ucs2_icelandic_ci', 'ucs2', 129, '', 'Yes', 8),
('ucs2_latvian_ci', 'ucs2', 130, '', 'Yes', 8),
('ucs2_romanian_ci', 'ucs2', 131, '', 'Yes', 8),
('ucs2_slovenian_ci', 'ucs2', 132, '', 'Yes', 8),
('ucs2_polish_ci', 'ucs2', 133, '', 'Yes', 8),
('ucs2_estonian_ci', 'ucs2', 134, '', 'Yes', 8),
('ucs2_spanish_ci', 'ucs2', 135, '', 'Yes', 8),
('ucs2_swedish_ci', 'ucs2', 136, '', 'Yes', 8),
('ucs2_turkish_ci', 'ucs2', 137, '', 'Yes', 8),
('ucs2_czech_ci', 'ucs2', 138, '', 'Yes', 8),
('ucs2_danish_ci', 'ucs2', 139, '', 'Yes', 8),
('ucs2_lithuanian_ci', 'ucs2', 140, '', 'Yes', 8),
('ucs2_slovak_ci', 'ucs2', 141, '', 'Yes', 8),
('ucs2_spanish2_ci', 'ucs2', 142, '', 'Yes', 8),
('ucs2_roman_ci', 'ucs2', 143, '', 'Yes', 8),
('ucs2_persian_ci', 'ucs2', 144, '', 'Yes', 8),
('ucs2_esperanto_ci', 'ucs2', 145, '', 'Yes', 8),
('ucs2_hungarian_ci', 'ucs2', 146, '', 'Yes', 8),
('cp866_general_ci', 'cp866', 36, 'Yes', 'Yes', 1),
('cp866_bin', 'cp866', 68, '', 'Yes', 1),
('keybcs2_general_ci', 'keybcs2', 37, 'Yes', 'Yes', 1),
('keybcs2_bin', 'keybcs2', 73, '', 'Yes', 1),
('macce_general_ci', 'macce', 38, 'Yes', 'Yes', 1),
('macce_bin', 'macce', 43, '', 'Yes', 1),
('macroman_general_ci', 'macroman', 39, 'Yes', 'Yes', 1),
('macroman_bin', 'macroman', 53, '', 'Yes', 1),
('cp852_general_ci', 'cp852', 40, 'Yes', 'Yes', 1),
('cp852_bin', 'cp852', 81, '', 'Yes', 1),
('latin7_estonian_cs', 'latin7', 20, '', 'Yes', 1),
('latin7_general_ci', 'latin7', 41, 'Yes', 'Yes', 1),
('latin7_general_cs', 'latin7', 42, '', 'Yes', 1),
('latin7_bin', 'latin7', 79, '', 'Yes', 1),
('cp1251_bulgarian_ci', 'cp1251', 14, '', 'Yes', 1),
('cp1251_ukrainian_ci', 'cp1251', 23, '', 'Yes', 1),
('cp1251_bin', 'cp1251', 50, '', 'Yes', 1),
('cp1251_general_ci', 'cp1251', 51, 'Yes', 'Yes', 1),
('cp1251_general_cs', 'cp1251', 52, '', 'Yes', 1),
('cp1256_general_ci', 'cp1256', 57, 'Yes', 'Yes', 1),
('cp1256_bin', 'cp1256', 67, '', 'Yes', 1),
('cp1257_lithuanian_ci', 'cp1257', 29, '', 'Yes', 1),
('cp1257_bin', 'cp1257', 58, '', 'Yes', 1),
('cp1257_general_ci', 'cp1257', 59, 'Yes', 'Yes', 1),
('binary', 'binary', 63, 'Yes', 'Yes', 1),
('geostd8_general_ci', 'geostd8', 92, 'Yes', 'Yes', 1),
('geostd8_bin', 'geostd8', 93, '', 'Yes', 1),
('cp932_japanese_ci', 'cp932', 95, 'Yes', 'Yes', 1),
('cp932_bin', 'cp932', 96, '', 'Yes', 1),
('eucjpms_japanese_ci', 'eucjpms', 97, 'Yes', 'Yes', 1),
('eucjpms_bin', 'eucjpms', 98, '', 'Yes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `COLLATION_CHARACTER_SET_APPLICABILITY`
--

CREATE TEMPORARY TABLE `COLLATION_CHARACTER_SET_APPLICABILITY` (
  `COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLLATION_CHARACTER_SET_APPLICABILITY`
--

INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` (`COLLATION_NAME`, `CHARACTER_SET_NAME`) VALUES
('big5_chinese_ci', 'big5'),
('big5_bin', 'big5'),
('dec8_swedish_ci', 'dec8'),
('dec8_bin', 'dec8'),
('cp850_general_ci', 'cp850'),
('cp850_bin', 'cp850'),
('hp8_english_ci', 'hp8'),
('hp8_bin', 'hp8'),
('koi8r_general_ci', 'koi8r'),
('koi8r_bin', 'koi8r'),
('latin1_german1_ci', 'latin1'),
('latin1_swedish_ci', 'latin1'),
('latin1_danish_ci', 'latin1'),
('latin1_german2_ci', 'latin1'),
('latin1_bin', 'latin1'),
('latin1_general_ci', 'latin1'),
('latin1_general_cs', 'latin1'),
('latin1_spanish_ci', 'latin1'),
('latin2_czech_cs', 'latin2'),
('latin2_general_ci', 'latin2'),
('latin2_hungarian_ci', 'latin2'),
('latin2_croatian_ci', 'latin2'),
('latin2_bin', 'latin2'),
('swe7_swedish_ci', 'swe7'),
('swe7_bin', 'swe7'),
('ascii_general_ci', 'ascii'),
('ascii_bin', 'ascii'),
('ujis_japanese_ci', 'ujis'),
('ujis_bin', 'ujis'),
('sjis_japanese_ci', 'sjis'),
('sjis_bin', 'sjis'),
('hebrew_general_ci', 'hebrew'),
('hebrew_bin', 'hebrew'),
('filename', 'filename'),
('tis620_thai_ci', 'tis620'),
('tis620_bin', 'tis620'),
('euckr_korean_ci', 'euckr'),
('euckr_bin', 'euckr'),
('koi8u_general_ci', 'koi8u'),
('koi8u_bin', 'koi8u'),
('gb2312_chinese_ci', 'gb2312'),
('gb2312_bin', 'gb2312'),
('greek_general_ci', 'greek'),
('greek_bin', 'greek'),
('cp1250_general_ci', 'cp1250'),
('cp1250_czech_cs', 'cp1250'),
('cp1250_croatian_ci', 'cp1250'),
('cp1250_bin', 'cp1250'),
('cp1250_polish_ci', 'cp1250'),
('gbk_chinese_ci', 'gbk'),
('gbk_bin', 'gbk'),
('latin5_turkish_ci', 'latin5'),
('latin5_bin', 'latin5'),
('armscii8_general_ci', 'armscii8'),
('armscii8_bin', 'armscii8'),
('utf8_general_ci', 'utf8'),
('utf8_bin', 'utf8'),
('utf8_unicode_ci', 'utf8'),
('utf8_icelandic_ci', 'utf8'),
('utf8_latvian_ci', 'utf8'),
('utf8_romanian_ci', 'utf8'),
('utf8_slovenian_ci', 'utf8'),
('utf8_polish_ci', 'utf8'),
('utf8_estonian_ci', 'utf8'),
('utf8_spanish_ci', 'utf8'),
('utf8_swedish_ci', 'utf8'),
('utf8_turkish_ci', 'utf8'),
('utf8_czech_ci', 'utf8'),
('utf8_danish_ci', 'utf8'),
('utf8_lithuanian_ci', 'utf8'),
('utf8_slovak_ci', 'utf8'),
('utf8_spanish2_ci', 'utf8'),
('utf8_roman_ci', 'utf8'),
('utf8_persian_ci', 'utf8'),
('utf8_esperanto_ci', 'utf8'),
('utf8_hungarian_ci', 'utf8'),
('ucs2_general_ci', 'ucs2'),
('ucs2_bin', 'ucs2'),
('ucs2_unicode_ci', 'ucs2'),
('ucs2_icelandic_ci', 'ucs2'),
('ucs2_latvian_ci', 'ucs2'),
('ucs2_romanian_ci', 'ucs2'),
('ucs2_slovenian_ci', 'ucs2'),
('ucs2_polish_ci', 'ucs2'),
('ucs2_estonian_ci', 'ucs2'),
('ucs2_spanish_ci', 'ucs2'),
('ucs2_swedish_ci', 'ucs2'),
('ucs2_turkish_ci', 'ucs2'),
('ucs2_czech_ci', 'ucs2'),
('ucs2_danish_ci', 'ucs2'),
('ucs2_lithuanian_ci', 'ucs2'),
('ucs2_slovak_ci', 'ucs2'),
('ucs2_spanish2_ci', 'ucs2'),
('ucs2_roman_ci', 'ucs2'),
('ucs2_persian_ci', 'ucs2'),
('ucs2_esperanto_ci', 'ucs2'),
('ucs2_hungarian_ci', 'ucs2'),
('cp866_general_ci', 'cp866'),
('cp866_bin', 'cp866'),
('keybcs2_general_ci', 'keybcs2'),
('keybcs2_bin', 'keybcs2'),
('macce_general_ci', 'macce'),
('macce_bin', 'macce'),
('macroman_general_ci', 'macroman'),
('macroman_bin', 'macroman'),
('cp852_general_ci', 'cp852'),
('cp852_bin', 'cp852'),
('latin7_estonian_cs', 'latin7'),
('latin7_general_ci', 'latin7'),
('latin7_general_cs', 'latin7'),
('latin7_bin', 'latin7'),
('cp1251_bulgarian_ci', 'cp1251'),
('cp1251_ukrainian_ci', 'cp1251'),
('cp1251_bin', 'cp1251'),
('cp1251_general_ci', 'cp1251'),
('cp1251_general_cs', 'cp1251'),
('cp1256_general_ci', 'cp1256'),
('cp1256_bin', 'cp1256'),
('cp1257_lithuanian_ci', 'cp1257'),
('cp1257_bin', 'cp1257'),
('cp1257_general_ci', 'cp1257'),
('binary', 'binary'),
('geostd8_general_ci', 'geostd8'),
('geostd8_bin', 'geostd8'),
('cp932_japanese_ci', 'cp932'),
('cp932_bin', 'cp932'),
('eucjpms_japanese_ci', 'eucjpms'),
('eucjpms_bin', 'eucjpms');

-- --------------------------------------------------------

--
-- Table structure for table `COLUMNS`
--

CREATE TEMPORARY TABLE `COLUMNS` (
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `COLUMN_DEFAULT` longtext,
  `IS_NULLABLE` varchar(3) NOT NULL DEFAULT '',
  `DATA_TYPE` varchar(64) NOT NULL DEFAULT '',
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_OCTET_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_PRECISION` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_SCALE` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_SET_NAME` varchar(32) DEFAULT NULL,
  `COLLATION_NAME` varchar(32) DEFAULT NULL,
  `COLUMN_TYPE` longtext NOT NULL,
  `COLUMN_KEY` varchar(3) NOT NULL DEFAULT '',
  `EXTRA` varchar(27) NOT NULL DEFAULT '',
  `PRIVILEGES` varchar(80) NOT NULL DEFAULT '',
  `COLUMN_COMMENT` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLUMNS`
--

INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', 'CHARACTER_SET_NAME', 1, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'DEFAULT_COLLATE_NAME', 2, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'DESCRIPTION', 3, '', 'NO', 'varchar', 60, 180, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(60)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'MAXLEN', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'ID', 3, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(11)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'IS_DEFAULT', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'IS_COMPILED', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'SORTLEN', 6, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'ORDINAL_POSITION', 5, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_DEFAULT', 6, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'IS_NULLABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'DATA_TYPE', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_MAXIMUM_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_OCTET_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_PRECISION', 11, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_SCALE', 12, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_SET_NAME', 13, NULL, 'YES', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLLATION_NAME', 14, NULL, 'YES', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_TYPE', 15, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_KEY', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'EXTRA', 17, '', 'NO', 'varchar', 27, 81, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(27)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'PRIVILEGES', 18, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_COMMENT', 19, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'COLUMN_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'PRIVILEGE_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'IS_GRANTABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'ENGINES', 'ENGINE', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ENGINES', 'SUPPORT', 2, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ENGINES', 'COMMENT', 3, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'ENGINES', 'TRANSACTIONS', 4, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'ENGINES', 'XA', 5, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'ENGINES', 'SAVEPOINTS', 6, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_CATALOG', 1, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'DEFINER', 4, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'TIME_ZONE', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_BODY', 6, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_DEFINITION', 7, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_TYPE', 8, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EXECUTE_AT', 9, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'INTERVAL_VALUE', 10, NULL, 'YES', 'varchar', 256, 768, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(256)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'INTERVAL_FIELD', 11, NULL, 'YES', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'SQL_MODE', 12, '', 'NO', 'varchar', 8192, 24576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8192)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'STARTS', 13, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'ENDS', 14, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'STATUS', 15, '', 'NO', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'ON_COMPLETION', 16, '', 'NO', 'varchar', 12, 36, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(12)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'CREATED', 17, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'LAST_ALTERED', 18, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'LAST_EXECUTED', 19, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_COMMENT', 20, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'ORIGINATOR', 21, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'CHARACTER_SET_CLIENT', 22, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'COLLATION_CONNECTION', 23, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'DATABASE_COLLATION', 24, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'FILE_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'FILE_NAME', 2, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'FILE_TYPE', 3, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TABLESPACE_NAME', 4, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TABLE_CATALOG', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TABLE_SCHEMA', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TABLE_NAME', 7, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'LOGFILE_GROUP_NAME', 8, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'LOGFILE_GROUP_NUMBER', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'ENGINE', 10, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'FULLTEXT_KEYS', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'DELETED_ROWS', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'UPDATE_COUNT', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'FREE_EXTENTS', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TOTAL_EXTENTS', 15, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'EXTENT_SIZE', 16, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'INITIAL_SIZE', 17, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'MAXIMUM_SIZE', 18, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'AUTOEXTEND_SIZE', 19, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'CREATION_TIME', 20, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'LAST_UPDATE_TIME', 21, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'LAST_ACCESS_TIME', 22, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'RECOVER_TIME', 23, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TRANSACTION_COUNTER', 24, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'VERSION', 25, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'ROW_FORMAT', 26, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TABLE_ROWS', 27, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'AVG_ROW_LENGTH', 28, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'DATA_LENGTH', 29, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'MAX_DATA_LENGTH', 30, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'INDEX_LENGTH', 31, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'DATA_FREE', 32, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'CREATE_TIME', 33, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'UPDATE_TIME', 34, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'CHECK_TIME', 35, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'CHECKSUM', 36, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'STATUS', 37, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'EXTRA', 38, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'GLOBAL_STATUS', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'GLOBAL_STATUS', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
(NULL, 'information_schema', 'GLOBAL_VARIABLES', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'GLOBAL_VARIABLES', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_CATALOG', 4, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'COLUMN_NAME', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'ORDINAL_POSITION', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'POSITION_IN_UNIQUE_CONSTRAINT', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_SCHEMA', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_NAME', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_COLUMN_NAME', 12, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'PARTITION_NAME', 4, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'SUBPARTITION_NAME', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'PARTITION_ORDINAL_POSITION', 6, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'SUBPARTITION_ORDINAL_POSITION', 7, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'PARTITION_METHOD', 8, NULL, 'YES', 'varchar', 12, 36, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(12)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'SUBPARTITION_METHOD', 9, NULL, 'YES', 'varchar', 12, 36, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(12)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'PARTITION_EXPRESSION', 10, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'SUBPARTITION_EXPRESSION', 11, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'PARTITION_DESCRIPTION', 12, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'TABLE_ROWS', 13, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'AVG_ROW_LENGTH', 14, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'DATA_LENGTH', 15, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'MAX_DATA_LENGTH', 16, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'INDEX_LENGTH', 17, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'DATA_FREE', 18, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'CREATE_TIME', 19, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'UPDATE_TIME', 20, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'CHECK_TIME', 21, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'CHECKSUM', 22, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'PARTITION_COMMENT', 23, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'NODEGROUP', 24, '', 'NO', 'varchar', 12, 36, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(12)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'TABLESPACE_NAME', 25, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_VERSION', 2, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_STATUS', 3, '', 'NO', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_TYPE', 4, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_TYPE_VERSION', 5, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_LIBRARY', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_LIBRARY_VERSION', 7, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_AUTHOR', 8, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_DESCRIPTION', 9, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_LICENSE', 10, NULL, 'YES', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'USER', 2, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'HOST', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'DB', 4, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'COMMAND', 5, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'TIME', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(7)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'STATE', 7, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'INFO', 8, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'QUERY_ID', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SEQ', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'STATE', 3, '', 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'DURATION', 4, '0.000000', 'NO', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CPU_USER', 5, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CPU_SYSTEM', 6, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CONTEXT_VOLUNTARY', 7, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CONTEXT_INVOLUNTARY', 8, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_IN', 9, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_OUT', 10, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'MESSAGES_SENT', 11, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'MESSAGES_RECEIVED', 12, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MAJOR', 13, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MINOR', 14, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SWAPS', 15, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_FUNCTION', 16, NULL, 'YES', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_FILE', 17, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_LINE', 18, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UNIQUE_CONSTRAINT_CATALOG', 4, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UNIQUE_CONSTRAINT_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UNIQUE_CONSTRAINT_NAME', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'MATCH_OPTION', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UPDATE_RULE', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'DELETE_RULE', 9, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'TABLE_NAME', 10, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'REFERENCED_TABLE_NAME', 11, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SPECIFIC_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_TYPE', 5, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DTD_IDENTIFIER', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_BODY', 7, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_DEFINITION', 8, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_NAME', 9, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_LANGUAGE', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'PARAMETER_STYLE', 11, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'IS_DETERMINISTIC', 12, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_DATA_ACCESS', 13, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_PATH', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SECURITY_TYPE', 15, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'CREATED', 16, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'LAST_ALTERED', 17, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_MODE', 18, '', 'NO', 'varchar', 8192, 24576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8192)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_COMMENT', 19, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DEFINER', 20, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'CHARACTER_SET_CLIENT', 21, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'COLLATION_CONNECTION', 22, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DATABASE_COLLATION', 23, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'CATALOG_NAME', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SCHEMA_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_CHARACTER_SET_NAME', 3, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_COLLATION_NAME', 4, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SQL_PATH', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'PRIVILEGE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'IS_GRANTABLE', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'SESSION_STATUS', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SESSION_STATUS', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
(NULL, 'information_schema', 'SESSION_VARIABLES', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SESSION_VARIABLES', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'NON_UNIQUE', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(1)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'SEQ_IN_INDEX', 7, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(2)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COLUMN_NAME', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COLLATION', 9, NULL, 'YES', 'varchar', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'CARDINALITY', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'SUB_PART', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'PACKED', 12, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'NULLABLE', 13, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_TYPE', 14, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COMMENT', 15, NULL, 'YES', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'ENGINE', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'VERSION', 6, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'ROW_FORMAT', 7, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_ROWS', 8, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'AVG_ROW_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'DATA_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'MAX_DATA_LENGTH', 11, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'INDEX_LENGTH', 12, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'DATA_FREE', 13, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'AUTO_INCREMENT', 14, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CREATE_TIME', 15, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'UPDATE_TIME', 16, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CHECK_TIME', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_COLLATION', 18, NULL, 'YES', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CHECKSUM', 19, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CREATE_OPTIONS', 20, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_COMMENT', 21, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_SCHEMA', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'PRIVILEGE_TYPE', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'IS_GRANTABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_MANIPULATION', 4, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_CATALOG', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_SCHEMA', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_TABLE', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORDER', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_CONDITION', 9, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_STATEMENT', 10, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORIENTATION', 11, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_TIMING', 12, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_TABLE', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_TABLE', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_ROW', 15, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_ROW', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'CREATED', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'SQL_MODE', 18, '', 'NO', 'varchar', 8192, 24576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8192)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'DEFINER', 19, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'CHARACTER_SET_CLIENT', 20, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'COLLATION_CONNECTION', 21, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', '');
INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'information_schema', 'TRIGGERS', 'DATABASE_COLLATION', 22, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'PRIVILEGE_TYPE', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'IS_GRANTABLE', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'VIEW_DEFINITION', 4, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'CHECK_OPTION', 5, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'IS_UPDATABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'DEFINER', 7, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'SECURITY_TYPE', 8, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'CHARACTER_SET_CLIENT', 9, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'COLLATION_CONNECTION', 10, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'geotraveller', 'address', 'address_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'address', 'adress', 2, NULL, 'YES', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'address', 'Longitude', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'address', 'Latitude', 4, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'category', 'service_category_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'category', 'service_category', 2, NULL, 'YES', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'category', 'created_at', 3, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'category', 'Description', 4, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'category', 'Title', 5, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'comments', 'email', 1, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'comments', 'comment', 2, NULL, 'NO', 'varchar', 250, 250, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(250)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'comments', 'created_at', 3, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'comments', 'comment_id', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(50) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'comments', 'subject', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'orders', 'OrderId', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'orders', 'ItemOdered', 2, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'orders', 'quantityBooked', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'orders', 'service_Id', 4, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'orders', 'created_at', 5, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'services', 'service_Id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(50) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'services', 'service_tag', 2, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'services', 'service_description', 3, NULL, 'NO', 'varchar', 250, 250, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(250)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'services', 'available_space', 4, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'services', 'service_rating', 5, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'services', 'address_id', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'services', 'service_category_id', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'services', 'image', 8, NULL, 'NO', 'varchar', 200, 200, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(200)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'services', 'created_at', 9, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'transactions', 'transactionId', 1, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'transactions', 'itemBooked', 2, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'transactions', 'quantityBooked', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'transactions', 'totalAmountpaid', 4, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'transactions', 'service_Id', 5, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'transactions', 'created_at', 6, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'users', 'firstName', 1, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'users', 'lastname', 2, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'users', 'address', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'users', 'PhoneNumber', 4, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'users', 'email', 5, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'users', 'userName', 6, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'users', 'password', 7, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'users', 'image', 8, NULL, 'NO', 'varchar', 250, 250, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(250)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'users', 'user_type', 9, NULL, 'YES', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'geotraveller', 'users', 'created_at', 10, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'Host', 1, '', 'NO', 'char', 60, 180, NULL, NULL, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'Db', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'User', 3, '', 'NO', 'char', 16, 48, NULL, NULL, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'Table_name', 4, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'Column_name', 5, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'Timestamp', 6, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', 'on update CURRENT_TIMESTAMP', 'select,insert,update,references', ''),
(NULL, 'mysql', 'columns_priv', 'Column_priv', 7, '', 'NO', 'set', 31, 93, NULL, NULL, 'utf8', 'utf8_general_ci', 'set(''Select'',''Insert'',''Update'',''References'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Host', 1, '', 'NO', 'char', 60, 180, NULL, NULL, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Db', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'User', 3, '', 'NO', 'char', 16, 48, NULL, NULL, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Select_priv', 4, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Insert_priv', 5, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Update_priv', 6, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Delete_priv', 7, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Create_priv', 8, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Drop_priv', 9, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Grant_priv', 10, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'References_priv', 11, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Index_priv', 12, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Alter_priv', 13, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Create_tmp_table_priv', 14, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Lock_tables_priv', 15, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Create_view_priv', 16, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Show_view_priv', 17, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Create_routine_priv', 18, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Alter_routine_priv', 19, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Execute_priv', 20, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Event_priv', 21, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'db', 'Trigger_priv', 22, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'db', 1, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'name', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'body', 3, NULL, 'NO', 'longblob', 4294967295, 4294967295, NULL, NULL, NULL, NULL, 'longblob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'definer', 4, '', 'NO', 'char', 77, 231, NULL, NULL, 'utf8', 'utf8_bin', 'char(77)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'execute_at', 5, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'interval_value', 6, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'interval_field', 7, NULL, 'YES', 'enum', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''YEAR'',''QUARTER'',''MONTH'',''DAY'',''HOUR'',''MINUTE'',''WEEK'',''SECOND'',''MICROSECOND'',''YEAR_MONTH'',''DAY_HOUR'',''DAY_MINUTE'',''DAY_SECOND'',''HOUR_MINUTE'',''HOUR_SECOND'',''MINUTE_SECOND'',''DAY_MICROSECOND'',''HOUR_MICROSECOND'',''MINUTE_MICROSECOND'',''SECOND_MICROSECOND'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'created', 8, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', 'on update CURRENT_TIMESTAMP', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'modified', 9, '0000-00-00 00:00:00', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'last_executed', 10, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'starts', 11, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'ends', 12, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'status', 13, 'ENABLED', 'NO', 'enum', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''ENABLED'',''DISABLED'',''SLAVESIDE_DISABLED'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'on_completion', 14, 'DROP', 'NO', 'enum', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''DROP'',''PRESERVE'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'sql_mode', 15, '', 'NO', 'set', 478, 1434, NULL, NULL, 'utf8', 'utf8_general_ci', 'set(''REAL_AS_FLOAT'',''PIPES_AS_CONCAT'',''ANSI_QUOTES'',''IGNORE_SPACE'',''NOT_USED'',''ONLY_FULL_GROUP_BY'',''NO_UNSIGNED_SUBTRACTION'',''NO_DIR_IN_CREATE'',''POSTGRESQL'',''ORACLE'',''MSSQL'',''DB2'',''MAXDB'',''NO_KEY_OPTIONS'',''NO_TABLE_OPTIONS'',''NO_FIELD_OPTIONS'',''MYSQL323'',''MYSQL40'',''ANSI'',''NO_AUTO_VALUE_ON_ZERO'',''NO_BACKSLASH_ESCAPES'',''STRICT_TRANS_TABLES'',''STRICT_ALL_TABLES'',''NO_ZERO_IN_DATE'',''NO_ZERO_DATE'',''INVALID_DATES'',''ERROR_FOR_DIVISION_BY_ZERO'',''TRADITIONAL'',''NO_AUTO_CREATE_USER'',''HIGH_NOT_PRECEDENCE'',''NO_ENGINE_SUBSTITUTION'',''PAD_CHAR_TO_FULL_LENGTH'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'comment', 16, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'originator', 17, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'time_zone', 18, 'SYSTEM', 'NO', 'char', 64, 64, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'character_set_client', 19, NULL, 'YES', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'char(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'collation_connection', 20, NULL, 'YES', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'char(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'db_collation', 21, NULL, 'YES', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'char(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'event', 'body_utf8', 22, NULL, 'YES', 'longblob', 4294967295, 4294967295, NULL, NULL, NULL, NULL, 'longblob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'func', 'name', 1, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'func', 'ret', 2, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'func', 'dl', 3, '', 'NO', 'char', 128, 384, NULL, NULL, 'utf8', 'utf8_bin', 'char(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'func', 'type', 4, NULL, 'NO', 'enum', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''function'',''aggregate'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'general_log', 'event_time', 1, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', 'on update CURRENT_TIMESTAMP', 'select,insert,update,references', ''),
(NULL, 'mysql', 'general_log', 'user_host', 2, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'general_log', 'thread_id', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'general_log', 'server_id', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'general_log', 'command_type', 5, NULL, 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'general_log', 'argument', 6, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_category', 'help_category_id', 1, NULL, 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(5) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_category', 'name', 2, NULL, 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_category', 'parent_category_id', 3, NULL, 'YES', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(5) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_category', 'url', 4, NULL, 'NO', 'char', 128, 384, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_keyword', 'help_keyword_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_keyword', 'name', 2, NULL, 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_relation', 'help_topic_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_relation', 'help_keyword_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_topic', 'help_topic_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_topic', 'name', 2, NULL, 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_topic', 'help_category_id', 3, NULL, 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(5) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_topic', 'description', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_topic', 'example', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_general_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'help_topic', 'url', 6, NULL, 'NO', 'char', 128, 384, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Host', 1, '', 'NO', 'char', 60, 180, NULL, NULL, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Db', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Select_priv', 3, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Insert_priv', 4, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Update_priv', 5, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Delete_priv', 6, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Create_priv', 7, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Drop_priv', 8, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Grant_priv', 9, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'References_priv', 10, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Index_priv', 11, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Alter_priv', 12, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Create_tmp_table_priv', 13, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Lock_tables_priv', 14, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Create_view_priv', 15, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Show_view_priv', 16, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Create_routine_priv', 17, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Alter_routine_priv', 18, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Execute_priv', 19, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'host', 'Trigger_priv', 20, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'ndb_binlog_index', 'Position', 1, NULL, 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(20) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'ndb_binlog_index', 'File', 2, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'ndb_binlog_index', 'epoch', 3, NULL, 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(20) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'ndb_binlog_index', 'inserts', 4, NULL, 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(20) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'ndb_binlog_index', 'updates', 5, NULL, 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(20) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'ndb_binlog_index', 'deletes', 6, NULL, 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(20) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'ndb_binlog_index', 'schemaops', 7, NULL, 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(20) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'plugin', 'name', 1, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'plugin', 'dl', 2, '', 'NO', 'char', 128, 384, NULL, NULL, 'utf8', 'utf8_bin', 'char(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'db', 1, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'name', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'type', 3, NULL, 'NO', 'enum', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''FUNCTION'',''PROCEDURE'')', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'specific_name', 4, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'language', 5, 'SQL', 'NO', 'enum', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''SQL'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'sql_data_access', 6, 'CONTAINS_SQL', 'NO', 'enum', 17, 51, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''CONTAINS_SQL'',''NO_SQL'',''READS_SQL_DATA'',''MODIFIES_SQL_DATA'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'is_deterministic', 7, 'NO', 'NO', 'enum', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''YES'',''NO'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'security_type', 8, 'DEFINER', 'NO', 'enum', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''INVOKER'',''DEFINER'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'param_list', 9, NULL, 'NO', 'blob', 65535, 65535, NULL, NULL, NULL, NULL, 'blob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'returns', 10, NULL, 'NO', 'longblob', 4294967295, 4294967295, NULL, NULL, NULL, NULL, 'longblob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'body', 11, NULL, 'NO', 'longblob', 4294967295, 4294967295, NULL, NULL, NULL, NULL, 'longblob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'definer', 12, '', 'NO', 'char', 77, 231, NULL, NULL, 'utf8', 'utf8_bin', 'char(77)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'created', 13, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', 'on update CURRENT_TIMESTAMP', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'modified', 14, '0000-00-00 00:00:00', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'sql_mode', 15, '', 'NO', 'set', 478, 1434, NULL, NULL, 'utf8', 'utf8_general_ci', 'set(''REAL_AS_FLOAT'',''PIPES_AS_CONCAT'',''ANSI_QUOTES'',''IGNORE_SPACE'',''NOT_USED'',''ONLY_FULL_GROUP_BY'',''NO_UNSIGNED_SUBTRACTION'',''NO_DIR_IN_CREATE'',''POSTGRESQL'',''ORACLE'',''MSSQL'',''DB2'',''MAXDB'',''NO_KEY_OPTIONS'',''NO_TABLE_OPTIONS'',''NO_FIELD_OPTIONS'',''MYSQL323'',''MYSQL40'',''ANSI'',''NO_AUTO_VALUE_ON_ZERO'',''NO_BACKSLASH_ESCAPES'',''STRICT_TRANS_TABLES'',''STRICT_ALL_TABLES'',''NO_ZERO_IN_DATE'',''NO_ZERO_DATE'',''INVALID_DATES'',''ERROR_FOR_DIVISION_BY_ZERO'',''TRADITIONAL'',''NO_AUTO_CREATE_USER'',''HIGH_NOT_PRECEDENCE'',''NO_ENGINE_SUBSTITUTION'',''PAD_CHAR_TO_FULL_LENGTH'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'comment', 16, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'character_set_client', 17, NULL, 'YES', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'char(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'collation_connection', 18, NULL, 'YES', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'char(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'db_collation', 19, NULL, 'YES', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'char(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'proc', 'body_utf8', 20, NULL, 'YES', 'longblob', 4294967295, 4294967295, NULL, NULL, NULL, NULL, 'longblob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Host', 1, '', 'NO', 'char', 60, 180, NULL, NULL, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Db', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'User', 3, '', 'NO', 'char', 16, 48, NULL, NULL, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Routine_name', 4, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Routine_type', 5, NULL, 'NO', 'enum', 9, 27, NULL, NULL, 'utf8', 'utf8_bin', 'enum(''FUNCTION'',''PROCEDURE'')', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Grantor', 6, '', 'NO', 'char', 77, 231, NULL, NULL, 'utf8', 'utf8_bin', 'char(77)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Proc_priv', 7, '', 'NO', 'set', 27, 81, NULL, NULL, 'utf8', 'utf8_general_ci', 'set(''Execute'',''Alter Routine'',''Grant'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'procs_priv', 'Timestamp', 8, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', 'on update CURRENT_TIMESTAMP', 'select,insert,update,references', ''),
(NULL, 'mysql', 'servers', 'Server_name', 1, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'servers', 'Host', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'servers', 'Db', 3, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'servers', 'Username', 4, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'servers', 'Password', 5, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'servers', 'Port', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'servers', 'Socket', 7, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'servers', 'Wrapper', 8, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'servers', 'Owner', 9, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'slow_log', 'start_time', 1, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', 'on update CURRENT_TIMESTAMP', 'select,insert,update,references', ''),
(NULL, 'mysql', 'slow_log', 'user_host', 2, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'slow_log', 'query_time', 3, NULL, 'NO', 'time', NULL, NULL, NULL, NULL, NULL, NULL, 'time', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'slow_log', 'lock_time', 4, NULL, 'NO', 'time', NULL, NULL, NULL, NULL, NULL, NULL, 'time', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'slow_log', 'rows_sent', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'slow_log', 'rows_examined', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'slow_log', 'db', 7, NULL, 'NO', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'slow_log', 'last_insert_id', 8, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'slow_log', 'insert_id', 9, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'slow_log', 'server_id', 10, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'slow_log', 'sql_text', 11, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_general_ci', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Host', 1, '', 'NO', 'char', 60, 180, NULL, NULL, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Db', 2, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'User', 3, '', 'NO', 'char', 16, 48, NULL, NULL, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Table_name', 4, '', 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_bin', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Grantor', 5, '', 'NO', 'char', 77, 231, NULL, NULL, 'utf8', 'utf8_bin', 'char(77)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Timestamp', 6, 'CURRENT_TIMESTAMP', 'NO', 'timestamp', NULL, NULL, NULL, NULL, NULL, NULL, 'timestamp', '', 'on update CURRENT_TIMESTAMP', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Table_priv', 7, '', 'NO', 'set', 98, 294, NULL, NULL, 'utf8', 'utf8_general_ci', 'set(''Select'',''Insert'',''Update'',''Delete'',''Create'',''Drop'',''Grant'',''References'',''Index'',''Alter'',''Create View'',''Show view'',''Trigger'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'tables_priv', 'Column_priv', 8, '', 'NO', 'set', 31, 93, NULL, NULL, 'utf8', 'utf8_general_ci', 'set(''Select'',''Insert'',''Update'',''References'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone', 'Time_zone_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone', 'Use_leap_seconds', 2, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''Y'',''N'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_leap_second', 'Transition_time', 1, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_leap_second', 'Correction', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_name', 'Name', 1, NULL, 'NO', 'char', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(64)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_name', 'Time_zone_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition', 'Time_zone_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition', 'Transition_time', 2, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition', 'Transition_type_id', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition_type', 'Time_zone_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition_type', 'Transition_type_id', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition_type', 'Offset', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition_type', 'Is_DST', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'time_zone_transition_type', 'Abbreviation', 5, '', 'NO', 'char', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'char(8)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Host', 1, '', 'NO', 'char', 60, 180, NULL, NULL, 'utf8', 'utf8_bin', 'char(60)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'User', 2, '', 'NO', 'char', 16, 48, NULL, NULL, 'utf8', 'utf8_bin', 'char(16)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Password', 3, '', 'NO', 'char', 41, 41, NULL, NULL, 'latin1', 'latin1_bin', 'char(41)', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Select_priv', 4, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Insert_priv', 5, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Update_priv', 6, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Delete_priv', 7, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Create_priv', 8, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Drop_priv', 9, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Reload_priv', 10, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Shutdown_priv', 11, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Process_priv', 12, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'File_priv', 13, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Grant_priv', 14, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'References_priv', 15, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Index_priv', 16, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Alter_priv', 17, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Show_db_priv', 18, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Super_priv', 19, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Create_tmp_table_priv', 20, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Lock_tables_priv', 21, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Execute_priv', 22, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Repl_slave_priv', 23, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Repl_client_priv', 24, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Create_view_priv', 25, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Show_view_priv', 26, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Create_routine_priv', 27, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Alter_routine_priv', 28, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Create_user_priv', 29, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Event_priv', 30, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'Trigger_priv', 31, 'N', 'NO', 'enum', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum(''N'',''Y'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'ssl_type', 32, '', 'NO', 'enum', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'enum('''',''ANY'',''X509'',''SPECIFIED'')', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'ssl_cipher', 33, NULL, 'NO', 'blob', 65535, 65535, NULL, NULL, NULL, NULL, 'blob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'x509_issuer', 34, NULL, 'NO', 'blob', 65535, 65535, NULL, NULL, NULL, NULL, 'blob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'x509_subject', 35, NULL, 'NO', 'blob', 65535, 65535, NULL, NULL, NULL, NULL, 'blob', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'max_questions', 36, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'max_updates', 37, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'max_connections', 38, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'mysql', 'user', 'max_user_connections', 39, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'polltest', 'aspirant', 'asp_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'polltest', 'aspirant', 'asp_name', 2, NULL, 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'polltest', 'aspirant', 'phone', 3, NULL, 'NO', 'varchar', 24, 72, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(24)', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'polltest', 'aspirant', 'asp_adm', 4, NULL, 'NO', 'varchar', 15, 45, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'polltest', 'aspirant', 'asp_seat', 5, NULL, 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'polltest', 'aspirant', 'year', 6, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'polltest', 'aspirant', 'party', 7, NULL, 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'polltest', 'languages', 'lan_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(100)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'polltest', 'languages', 'fullname', 2, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'polltest', 'languages', 'about', 3, NULL, 'NO', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'polltest', 'languages', 'votecount', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'polltest', 'loginusers', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(200)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'polltest', 'loginusers', 'username', 2, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'polltest', 'loginusers', 'password', 3, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'polltest', 'loginusers', 'rank', 4, 'voter', 'NO', 'varchar', 80, 80, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(80)', '', '', 'select,insert,update,references', ''),
(NULL, 'polltest', 'loginusers', 'status', 5, 'ACTIVE', 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'polltest', 'voters', 'firstname', 1, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'polltest', 'voters', 'lastname', 2, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'polltest', 'voters', 'username', 3, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'polltest', 'voters', 'status', 4, 'NOTVOTED', 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'polltest', 'voters', 'voted', 5, NULL, 'YES', 'varchar', 255, 255, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'school', 'accounts', 'user_id', 1, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'school', 'accounts', 'account_no', 2, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'school', 'users', 'name', 1, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'school', 'users', 'phone', 2, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'school', 'users', 'address', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'school', 'users', 'email', 4, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'school', 'users', 'password', 5, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'school', 'users', 'role', 6, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'internet_shop', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(6)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'internet_shop', 'img', 2, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_unicode_ci', 'varchar(32)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'internet_shop', 'name', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_unicode_ci', 'varchar(64)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'internet_shop', 'description', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_unicode_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'internet_shop', 'price', 5, '0', 'NO', 'double', NULL, NULL, 22, NULL, NULL, NULL, 'double', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'message', 'message_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'message', 'name', 2, NULL, 'NO', 'varchar', 30, 30, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(30)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'message', 'email', 3, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'message', 'subject', 4, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'message', 'message', 5, NULL, 'NO', 'varchar', 500, 500, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(500)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'orders', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'orders', 'product', 2, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'orders', 'qty', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'orders', 'confirmation', 4, NULL, 'NO', 'varchar', 30, 30, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(30)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'orders', 'total', 5, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'orders', 'design', 6, NULL, 'NO', 'varchar', 300, 300, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(300)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'orders', 'note', 7, NULL, 'NO', 'varchar', 500, 500, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(500)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'paymentm', 'id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'paymentm', 'dmethodid', 2, NULL, 'NO', 'varchar', 30, 30, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(30)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'paymentm', 'methodname', 3, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'reservation', 'reservation_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'reservation', 'firstname', 2, NULL, 'NO', 'varchar', 30, 30, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(30)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'reservation', 'lastname', 3, NULL, 'NO', 'varchar', 30, 30, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(30)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'reservation', 'city', 4, NULL, 'NO', 'varchar', 30, 30, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(30)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'reservation', 'address', 5, NULL, 'NO', 'varchar', 30, 30, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(30)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'reservation', 'country', 6, NULL, 'NO', 'varchar', 30, 30, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(30)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'reservation', 'email', 7, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'reservation', 'contact', 8, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'reservation', 'payable', 9, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'reservation', 'status', 10, NULL, 'NO', 'varchar', 10, 10, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'reservation', 'confirmation', 11, NULL, 'NO', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'reservation', 'delivery', 12, NULL, 'NO', 'varchar', 300, 300, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(300)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'reservation', 'date', 13, NULL, 'NO', 'varchar', 30, 30, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(30)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'reservation', 'time', 14, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'reservation', 'payment', 15, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'reservation', 'delivery_type', 16, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'user', 'user_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'user', 'username', 2, NULL, 'NO', 'varchar', 30, 30, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(30)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'user', 'password', 3, NULL, 'NO', 'varchar', 30, 30, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(30)', '', '', 'select,insert,update,references', ''),
(NULL, 'shoppingcart', 'user', 'position', 4, NULL, 'NO', 'varchar', 45, 45, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(45)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'articles', 'AuthorId', 1, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'articles', 'ArticleTitle', 2, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'articles', 'ArticleFullText', 3, NULL, 'NO', 'varchar', 128, 128, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(128)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'articles', 'ArticleDisplay', 4, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'comment', 'fname', 1, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'comment', 'comment', 2, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'comment', 'id', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(15) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'widema', 'goods', 'good_name', 1, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'goods', 'good_description', 2, NULL, 'NO', 'varchar', 150, 150, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(150)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'goods', 'good_price', 3, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'goods', 'good_quantity', 4, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'goods', 'good_owner_id', 5, '', 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'goods', 'manufacturer_id', 6, NULL, 'YES', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'goods', 'image', 7, NULL, 'YES', 'varchar', 200, 200, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(200)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'goods', 'good_cert', 8, NULL, 'YES', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'goods', 'good_type_id', 9, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'gtype', 'good_type_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'widema', 'gtype', 'good_type', 2, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'ideas', 'idea_title', 1, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'ideas', 'idea_description', 2, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'ideas', 'idea_owner_id', 3, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'ideas', 'image', 4, NULL, 'YES', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'ideas', 'idea_certificate', 5, NULL, 'YES', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'ideas', 'idea_type_id', 6, NULL, 'YES', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'items', 'prod_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(15) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'widema', 'items', 'pname', 2, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'items', 'sname', 3, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'items', 'quantity', 4, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'items', 'category', 5, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'items', 'price', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'itype', 'idea_type_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'widema', 'itype', 'idea_type', 2, NULL, 'YES', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'products', 'fname', 1, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'products', 'sname', 2, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'products', 'email', 3, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'products', 'dob', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'products', 'gender', 5, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'products', 'pass', 6, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'products', 'id', 7, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(15) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'services', 'service_name', 1, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'services', 'service_description', 2, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'services', 'service_measure', 3, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'services', 'service_price', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(150) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'services', 'service_owner_Id', 5, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'services', 'image', 6, NULL, 'YES', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'services', 'service_certificate', 7, NULL, 'YES', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'services', 'service_type_id', 8, NULL, 'YES', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'stype', 'service_type_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'widema', 'stype', 'service_type', 2, NULL, 'YES', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'users', 'fullName', 1, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'users', 'idNumber', 2, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'users', 'address', 3, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'users', 'PhoneNumber', 4, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'users', 'email', 5, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'users', 'accountNumber', 6, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'users', 'userName', 7, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'users', 'password', 8, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'users', 'image', 9, NULL, 'NO', 'varchar', 15, 15, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'widema', 'users', 'user_type', 10, NULL, 'NO', 'varchar', 100, 100, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(100)', '', '', 'select,insert,update,references', '');

-- --------------------------------------------------------

--
-- Table structure for table `COLUMN_PRIVILEGES`
--

CREATE TEMPORARY TABLE `COLUMN_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLUMN_PRIVILEGES`
--


-- --------------------------------------------------------

--
-- Table structure for table `ENGINES`
--

CREATE TEMPORARY TABLE `ENGINES` (
  `ENGINE` varchar(64) NOT NULL DEFAULT '',
  `SUPPORT` varchar(8) NOT NULL DEFAULT '',
  `COMMENT` varchar(80) NOT NULL DEFAULT '',
  `TRANSACTIONS` varchar(3) DEFAULT NULL,
  `XA` varchar(3) DEFAULT NULL,
  `SAVEPOINTS` varchar(3) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ENGINES`
--

INSERT INTO `ENGINES` (`ENGINE`, `SUPPORT`, `COMMENT`, `TRANSACTIONS`, `XA`, `SAVEPOINTS`) VALUES
('MyISAM', 'DEFAULT', 'Default engine as of MySQL 3.23 with great performance', 'NO', 'NO', 'NO'),
('CSV', 'YES', 'CSV storage engine', 'NO', 'NO', 'NO'),
('MRG_MYISAM', 'YES', 'Collection of identical MyISAM tables', 'NO', 'NO', 'NO'),
('BLACKHOLE', 'YES', '/dev/null storage engine (anything you write to it disappears)', 'NO', 'NO', 'NO'),
('FEDERATED', 'NO', 'Federated MySQL storage engine', NULL, NULL, NULL),
('InnoDB', 'YES', 'Supports transactions, row-level locking, and foreign keys', 'YES', 'YES', 'YES'),
('ARCHIVE', 'YES', 'Archive storage engine', 'NO', 'NO', 'NO'),
('MEMORY', 'YES', 'Hash based, stored in memory, useful for temporary tables', 'NO', 'NO', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `EVENTS`
--

CREATE TEMPORARY TABLE `EVENTS` (
  `EVENT_CATALOG` varchar(64) DEFAULT NULL,
  `EVENT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `EVENT_NAME` varchar(64) NOT NULL DEFAULT '',
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `TIME_ZONE` varchar(64) NOT NULL DEFAULT '',
  `EVENT_BODY` varchar(8) NOT NULL DEFAULT '',
  `EVENT_DEFINITION` longtext NOT NULL,
  `EVENT_TYPE` varchar(9) NOT NULL DEFAULT '',
  `EXECUTE_AT` datetime DEFAULT NULL,
  `INTERVAL_VALUE` varchar(256) DEFAULT NULL,
  `INTERVAL_FIELD` varchar(18) DEFAULT NULL,
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `STARTS` datetime DEFAULT NULL,
  `ENDS` datetime DEFAULT NULL,
  `STATUS` varchar(18) NOT NULL DEFAULT '',
  `ON_COMPLETION` varchar(12) NOT NULL DEFAULT '',
  `CREATED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_EXECUTED` datetime DEFAULT NULL,
  `EVENT_COMMENT` varchar(64) NOT NULL DEFAULT '',
  `ORIGINATOR` bigint(10) NOT NULL DEFAULT '0',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EVENTS`
--


-- --------------------------------------------------------

--
-- Table structure for table `FILES`
--

CREATE TEMPORARY TABLE `FILES` (
  `FILE_ID` bigint(4) NOT NULL DEFAULT '0',
  `FILE_NAME` varchar(64) DEFAULT NULL,
  `FILE_TYPE` varchar(20) NOT NULL DEFAULT '',
  `TABLESPACE_NAME` varchar(64) DEFAULT NULL,
  `TABLE_CATALOG` varchar(64) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) DEFAULT NULL,
  `TABLE_NAME` varchar(64) DEFAULT NULL,
  `LOGFILE_GROUP_NAME` varchar(64) DEFAULT NULL,
  `LOGFILE_GROUP_NUMBER` bigint(4) DEFAULT NULL,
  `ENGINE` varchar(64) NOT NULL DEFAULT '',
  `FULLTEXT_KEYS` varchar(64) DEFAULT NULL,
  `DELETED_ROWS` bigint(4) DEFAULT NULL,
  `UPDATE_COUNT` bigint(4) DEFAULT NULL,
  `FREE_EXTENTS` bigint(4) DEFAULT NULL,
  `TOTAL_EXTENTS` bigint(4) DEFAULT NULL,
  `EXTENT_SIZE` bigint(4) NOT NULL DEFAULT '0',
  `INITIAL_SIZE` bigint(21) unsigned DEFAULT NULL,
  `MAXIMUM_SIZE` bigint(21) unsigned DEFAULT NULL,
  `AUTOEXTEND_SIZE` bigint(21) unsigned DEFAULT NULL,
  `CREATION_TIME` datetime DEFAULT NULL,
  `LAST_UPDATE_TIME` datetime DEFAULT NULL,
  `LAST_ACCESS_TIME` datetime DEFAULT NULL,
  `RECOVER_TIME` bigint(4) DEFAULT NULL,
  `TRANSACTION_COUNTER` bigint(4) DEFAULT NULL,
  `VERSION` bigint(21) unsigned DEFAULT NULL,
  `ROW_FORMAT` varchar(10) DEFAULT NULL,
  `TABLE_ROWS` bigint(21) unsigned DEFAULT NULL,
  `AVG_ROW_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_FREE` bigint(21) unsigned DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `STATUS` varchar(20) NOT NULL DEFAULT '',
  `EXTRA` varchar(255) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FILES`
--


-- --------------------------------------------------------

--
-- Table structure for table `GLOBAL_STATUS`
--

CREATE TEMPORARY TABLE `GLOBAL_STATUS` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GLOBAL_STATUS`
--

INSERT INTO `GLOBAL_STATUS` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('ABORTED_CLIENTS', '0'),
('ABORTED_CONNECTS', '0'),
('BINLOG_CACHE_DISK_USE', '0'),
('BINLOG_CACHE_USE', '5'),
('BYTES_RECEIVED', '111577'),
('BYTES_SENT', '2409749'),
('COM_ADMIN_COMMANDS', '0'),
('COM_ASSIGN_TO_KEYCACHE', '0'),
('COM_ALTER_DB', '0'),
('COM_ALTER_DB_UPGRADE', '0'),
('COM_ALTER_EVENT', '0'),
('COM_ALTER_FUNCTION', '0'),
('COM_ALTER_PROCEDURE', '0'),
('COM_ALTER_SERVER', '0'),
('COM_ALTER_TABLE', '8'),
('COM_ALTER_TABLESPACE', '0'),
('COM_ANALYZE', '0'),
('COM_BACKUP_TABLE', '0'),
('COM_BEGIN', '3'),
('COM_BINLOG', '0'),
('COM_CALL_PROCEDURE', '0'),
('COM_CHANGE_DB', '117'),
('COM_CHANGE_MASTER', '0'),
('COM_CHECK', '0'),
('COM_CHECKSUM', '0'),
('COM_COMMIT', '1'),
('COM_CREATE_DB', '4'),
('COM_CREATE_EVENT', '0'),
('COM_CREATE_FUNCTION', '0'),
('COM_CREATE_INDEX', '0'),
('COM_CREATE_PROCEDURE', '0'),
('COM_CREATE_SERVER', '0'),
('COM_CREATE_TABLE', '4'),
('COM_CREATE_TRIGGER', '0'),
('COM_CREATE_UDF', '0'),
('COM_CREATE_USER', '0'),
('COM_CREATE_VIEW', '0'),
('COM_DEALLOC_SQL', '0'),
('COM_DELETE', '1'),
('COM_DELETE_MULTI', '0'),
('COM_DO', '0'),
('COM_DROP_DB', '0'),
('COM_DROP_EVENT', '0'),
('COM_DROP_FUNCTION', '0'),
('COM_DROP_INDEX', '0'),
('COM_DROP_PROCEDURE', '0'),
('COM_DROP_SERVER', '0'),
('COM_DROP_TABLE', '0'),
('COM_DROP_TRIGGER', '0'),
('COM_DROP_USER', '0'),
('COM_DROP_VIEW', '0'),
('COM_EMPTY_QUERY', '0'),
('COM_EXECUTE_SQL', '0'),
('COM_FLUSH', '0'),
('COM_GRANT', '0'),
('COM_HA_CLOSE', '0'),
('COM_HA_OPEN', '0'),
('COM_HA_READ', '0'),
('COM_HELP', '0'),
('COM_INSERT', '25'),
('COM_INSERT_SELECT', '0'),
('COM_INSTALL_PLUGIN', '0'),
('COM_KILL', '0'),
('COM_LOAD', '0'),
('COM_LOAD_MASTER_DATA', '0'),
('COM_LOAD_MASTER_TABLE', '0'),
('COM_LOCK_TABLES', '0'),
('COM_OPTIMIZE', '0'),
('COM_PRELOAD_KEYS', '0'),
('COM_PREPARE_SQL', '0'),
('COM_PURGE', '0'),
('COM_PURGE_BEFORE_DATE', '0'),
('COM_RELEASE_SAVEPOINT', '0'),
('COM_RENAME_TABLE', '0'),
('COM_RENAME_USER', '0'),
('COM_REPAIR', '0'),
('COM_REPLACE', '0'),
('COM_REPLACE_SELECT', '0'),
('COM_RESET', '0'),
('COM_RESTORE_TABLE', '0'),
('COM_REVOKE', '0'),
('COM_REVOKE_ALL', '0'),
('COM_ROLLBACK', '0'),
('COM_ROLLBACK_TO_SAVEPOINT', '0'),
('COM_SAVEPOINT', '0'),
('COM_SELECT', '355'),
('COM_SET_OPTION', '327'),
('COM_SHOW_AUTHORS', '0'),
('COM_SHOW_BINLOG_EVENTS', '0'),
('COM_SHOW_BINLOGS', '4'),
('COM_SHOW_CHARSETS', '0'),
('COM_SHOW_COLLATIONS', '0'),
('COM_SHOW_COLUMN_TYPES', '0'),
('COM_SHOW_CONTRIBUTORS', '0'),
('COM_SHOW_CREATE_DB', '0'),
('COM_SHOW_CREATE_EVENT', '0'),
('COM_SHOW_CREATE_FUNC', '0'),
('COM_SHOW_CREATE_PROC', '0'),
('COM_SHOW_CREATE_TABLE', '190'),
('COM_SHOW_CREATE_TRIGGER', '0'),
('COM_SHOW_DATABASES', '13'),
('COM_SHOW_ENGINE_LOGS', '0'),
('COM_SHOW_ENGINE_MUTEX', '0'),
('COM_SHOW_ENGINE_STATUS', '0'),
('COM_SHOW_EVENTS', '0'),
('COM_SHOW_ERRORS', '0'),
('COM_SHOW_FIELDS', '43'),
('COM_SHOW_FUNCTION_STATUS', '0'),
('COM_SHOW_GRANTS', '0'),
('COM_SHOW_KEYS', '25'),
('COM_SHOW_MASTER_STATUS', '2'),
('COM_SHOW_NEW_MASTER', '0'),
('COM_SHOW_OPEN_TABLES', '0'),
('COM_SHOW_PLUGINS', '0'),
('COM_SHOW_PRIVILEGES', '0'),
('COM_SHOW_PROCEDURE_STATUS', '0'),
('COM_SHOW_PROCESSLIST', '0'),
('COM_SHOW_PROFILE', '0'),
('COM_SHOW_PROFILES', '0'),
('COM_SHOW_SLAVE_HOSTS', '0'),
('COM_SHOW_SLAVE_STATUS', '2'),
('COM_SHOW_STATUS', '0'),
('COM_SHOW_STORAGE_ENGINES', '0'),
('COM_SHOW_TABLE_STATUS', '388'),
('COM_SHOW_TABLES', '95'),
('COM_SHOW_TRIGGERS', '189'),
('COM_SHOW_VARIABLES', '57'),
('COM_SHOW_WARNINGS', '0'),
('COM_SLAVE_START', '0'),
('COM_SLAVE_STOP', '0'),
('COM_STMT_CLOSE', '0'),
('COM_STMT_EXECUTE', '0'),
('COM_STMT_FETCH', '0'),
('COM_STMT_PREPARE', '0'),
('COM_STMT_REPREPARE', '0'),
('COM_STMT_RESET', '0'),
('COM_STMT_SEND_LONG_DATA', '0'),
('COM_TRUNCATE', '0'),
('COM_UNINSTALL_PLUGIN', '0'),
('COM_UNLOCK_TABLES', '0'),
('COM_UPDATE', '0'),
('COM_UPDATE_MULTI', '0'),
('COM_XA_COMMIT', '0'),
('COM_XA_END', '0'),
('COM_XA_PREPARE', '0'),
('COM_XA_RECOVER', '0'),
('COM_XA_ROLLBACK', '0'),
('COM_XA_START', '0'),
('COMPRESSION', 'OFF'),
('CONNECTIONS', '234'),
('CREATED_TMP_DISK_TABLES', '478'),
('CREATED_TMP_FILES', '5'),
('CREATED_TMP_TABLES', '1670'),
('DELAYED_ERRORS', '0'),
('DELAYED_INSERT_THREADS', '0'),
('DELAYED_WRITES', '0'),
('FLUSH_COMMANDS', '1'),
('HANDLER_COMMIT', '109'),
('HANDLER_DELETE', '1'),
('HANDLER_DISCOVER', '0'),
('HANDLER_PREPARE', '12'),
('HANDLER_READ_FIRST', '152'),
('HANDLER_READ_KEY', '205'),
('HANDLER_READ_NEXT', '2047'),
('HANDLER_READ_PREV', '0'),
('HANDLER_READ_RND', '0'),
('HANDLER_READ_RND_NEXT', '13334'),
('HANDLER_ROLLBACK', '0'),
('HANDLER_SAVEPOINT', '0'),
('HANDLER_SAVEPOINT_ROLLBACK', '0'),
('HANDLER_UPDATE', '0'),
('HANDLER_WRITE', '8136'),
('INNODB_BUFFER_POOL_PAGES_DATA', '25'),
('INNODB_BUFFER_POOL_PAGES_DIRTY', '0'),
('INNODB_BUFFER_POOL_PAGES_FLUSHED', '47'),
('INNODB_BUFFER_POOL_PAGES_FREE', '486'),
('INNODB_BUFFER_POOL_PAGES_MISC', '1'),
('INNODB_BUFFER_POOL_PAGES_TOTAL', '512'),
('INNODB_BUFFER_POOL_READ_AHEAD_RND', '1'),
('INNODB_BUFFER_POOL_READ_AHEAD_SEQ', '0'),
('INNODB_BUFFER_POOL_READ_REQUESTS', '7678'),
('INNODB_BUFFER_POOL_READS', '16'),
('INNODB_BUFFER_POOL_WAIT_FREE', '0'),
('INNODB_BUFFER_POOL_WRITE_REQUESTS', '382'),
('INNODB_DATA_FSYNCS', '50'),
('INNODB_DATA_PENDING_FSYNCS', '0'),
('INNODB_DATA_PENDING_READS', '0'),
('INNODB_DATA_PENDING_WRITES', '0'),
('INNODB_DATA_READ', '2560000'),
('INNODB_DATA_READS', '33'),
('INNODB_DATA_WRITES', '90'),
('INNODB_DATA_WRITTEN', '1574400'),
('INNODB_DBLWR_PAGES_WRITTEN', '47'),
('INNODB_DBLWR_WRITES', '7'),
('INNODB_LOG_WAITS', '0'),
('INNODB_LOG_WRITE_REQUESTS', '35'),
('INNODB_LOG_WRITES', '29'),
('INNODB_OS_LOG_FSYNCS', '36'),
('INNODB_OS_LOG_PENDING_FSYNCS', '0'),
('INNODB_OS_LOG_PENDING_WRITES', '0'),
('INNODB_OS_LOG_WRITTEN', '30720'),
('INNODB_PAGE_SIZE', '16384'),
('INNODB_PAGES_CREATED', '2'),
('INNODB_PAGES_READ', '23'),
('INNODB_PAGES_WRITTEN', '47'),
('INNODB_ROW_LOCK_CURRENT_WAITS', '0'),
('INNODB_ROW_LOCK_TIME', '0'),
('INNODB_ROW_LOCK_TIME_AVG', '0'),
('INNODB_ROW_LOCK_TIME_MAX', '0'),
('INNODB_ROW_LOCK_WAITS', '0'),
('INNODB_ROWS_DELETED', '0'),
('INNODB_ROWS_INSERTED', '12'),
('INNODB_ROWS_READ', '541'),
('INNODB_ROWS_UPDATED', '0'),
('KEY_BLOCKS_NOT_FLUSHED', '0'),
('KEY_BLOCKS_UNUSED', '13380'),
('KEY_BLOCKS_USED', '16'),
('KEY_READ_REQUESTS', '231'),
('KEY_READS', '27'),
('KEY_WRITE_REQUESTS', '105'),
('KEY_WRITES', '26'),
('LAST_QUERY_COST', '0.000000'),
('MAX_USED_CONNECTIONS', '2'),
('NOT_FLUSHED_DELAYED_ROWS', '0'),
('OPEN_FILES', '100'),
('OPEN_STREAMS', '0'),
('OPEN_TABLE_DEFINITIONS', '53'),
('OPEN_TABLES', '53'),
('OPENED_FILES', '3235'),
('OPENED_TABLE_DEFINITIONS', '81'),
('OPENED_TABLES', '285'),
('PREPARED_STMT_COUNT', '0'),
('QCACHE_FREE_BLOCKS', '0'),
('QCACHE_FREE_MEMORY', '0'),
('QCACHE_HITS', '0'),
('QCACHE_INSERTS', '0'),
('QCACHE_LOWMEM_PRUNES', '0'),
('QCACHE_NOT_CACHED', '0'),
('QCACHE_QUERIES_IN_CACHE', '0'),
('QCACHE_TOTAL_BLOCKS', '0'),
('QUERIES', '2129'),
('QUESTIONS', '2129'),
('RPL_STATUS', 'NULL'),
('SELECT_FULL_JOIN', '0'),
('SELECT_FULL_RANGE_JOIN', '0'),
('SELECT_RANGE', '0'),
('SELECT_RANGE_CHECK', '0'),
('SELECT_SCAN', '1101'),
('SLAVE_OPEN_TEMP_TABLES', '0'),
('SLAVE_RETRIED_TRANSACTIONS', '0'),
('SLAVE_RUNNING', 'OFF'),
('SLOW_LAUNCH_THREADS', '0'),
('SLOW_QUERIES', '0'),
('SORT_MERGE_PASSES', '0'),
('SORT_RANGE', '0'),
('SORT_ROWS', '0'),
('SORT_SCAN', '0'),
('SSL_ACCEPT_RENEGOTIATES', '0'),
('SSL_ACCEPTS', '0'),
('SSL_CALLBACK_CACHE_HITS', '0'),
('SSL_CIPHER', ''),
('SSL_CIPHER_LIST', ''),
('SSL_CLIENT_CONNECTS', '0'),
('SSL_CONNECT_RENEGOTIATES', '0'),
('SSL_CTX_VERIFY_DEPTH', '0'),
('SSL_CTX_VERIFY_MODE', '0'),
('SSL_DEFAULT_TIMEOUT', '0'),
('SSL_FINISHED_ACCEPTS', '0'),
('SSL_FINISHED_CONNECTS', '0'),
('SSL_SESSION_CACHE_HITS', '0'),
('SSL_SESSION_CACHE_MISSES', '0'),
('SSL_SESSION_CACHE_MODE', 'NONE'),
('SSL_SESSION_CACHE_OVERFLOWS', '0'),
('SSL_SESSION_CACHE_SIZE', '0'),
('SSL_SESSION_CACHE_TIMEOUTS', '0'),
('SSL_SESSIONS_REUSED', '0'),
('SSL_USED_SESSION_CACHE_ENTRIES', '0'),
('SSL_VERIFY_DEPTH', '0'),
('SSL_VERIFY_MODE', '0'),
('SSL_VERSION', ''),
('TABLE_LOCKS_IMMEDIATE', '344'),
('TABLE_LOCKS_WAITED', '0'),
('TC_LOG_MAX_PAGES_USED', '0'),
('TC_LOG_PAGE_SIZE', '0'),
('TC_LOG_PAGE_WAITS', '0'),
('THREADS_CACHED', '0'),
('THREADS_CONNECTED', '1'),
('THREADS_CREATED', '233'),
('THREADS_RUNNING', '1'),
('UPTIME', '20375'),
('UPTIME_SINCE_FLUSH_STATUS', '20375');

-- --------------------------------------------------------

--
-- Table structure for table `GLOBAL_VARIABLES`
--

CREATE TEMPORARY TABLE `GLOBAL_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GLOBAL_VARIABLES`
--

INSERT INTO `GLOBAL_VARIABLES` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('MAX_PREPARED_STMT_COUNT', '16382'),
('CHARACTER_SETS_DIR', 'c:\\wamp\\bin\\mysql\\mysql5.1.53\\share\\charsets\\'),
('HAVE_CRYPT', 'NO'),
('INTERACTIVE_TIMEOUT', '28800'),
('MYISAM_REPAIR_THREADS', '1'),
('AUTOMATIC_SP_PRIVILEGES', 'ON'),
('LOG', 'OFF'),
('BINLOG_CACHE_SIZE', '32768'),
('INNODB_CONCURRENCY_TICKETS', '500'),
('BACK_LOG', '50'),
('MYISAM_STATS_METHOD', 'nulls_unequal'),
('TABLE_OPEN_CACHE', '64'),
('DELAYED_INSERT_TIMEOUT', '300'),
('MAX_HEAP_TABLE_SIZE', '16777216'),
('LOG_BIN_TRUST_ROUTINE_CREATORS', 'OFF'),
('CHARACTER_SET_CONNECTION', 'latin1'),
('SSL_CIPHER', ''),
('CHARACTER_SET_RESULTS', 'latin1'),
('BASEDIR', 'c:\\wamp\\bin\\mysql\\mysql5.1.53\\'),
('LOWER_CASE_TABLE_NAMES', '1'),
('UPDATABLE_VIEWS_WITH_LIMIT', 'YES'),
('TABLE_DEFINITION_CACHE', '256'),
('SLOW_LAUNCH_TIME', '2'),
('QUERY_ALLOC_BLOCK_SIZE', '8192'),
('INNODB_LOCK_WAIT_TIMEOUT', '50'),
('COMPLETION_TYPE', '0'),
('RELAY_LOG_INDEX', ''),
('MAX_SORT_LENGTH', '1024'),
('SQL_QUOTE_SHOW_CREATE', 'ON'),
('EVENT_SCHEDULER', 'OFF'),
('SQL_LOG_UPDATE', 'ON'),
('COLLATION_DATABASE', 'latin1_swedish_ci'),
('INNODB_USE_LEGACY_CARDINALITY_ALGORITHM', 'ON'),
('FT_MAX_WORD_LEN', '84'),
('SYSTEM_TIME_ZONE', 'E. Africa Standard Time'),
('CONCURRENT_INSERT', '1'),
('MYISAM_RECOVER_OPTIONS', 'OFF'),
('FT_BOOLEAN_SYNTAX', '+ -><()~*:""&|'),
('REPORT_HOST', ''),
('MAX_CONNECT_ERRORS', '10'),
('SSL_KEY', ''),
('FLUSH', 'OFF'),
('CHARACTER_SET_DATABASE', 'latin1'),
('DELAYED_INSERT_LIMIT', '100'),
('SLAVE_SKIP_ERRORS', 'OFF'),
('FT_QUERY_EXPANSION_LIMIT', '20'),
('INSERT_ID', '0'),
('WAIT_TIMEOUT', '28800'),
('RELAY_LOG_PURGE', 'ON'),
('READ_BUFFER_SIZE', '262144'),
('SKIP_SHOW_DATABASE', 'OFF'),
('NET_RETRY_COUNT', '10'),
('GROUP_CONCAT_MAX_LEN', '1024'),
('AUTO_INCREMENT_OFFSET', '1'),
('INNODB_LOG_BUFFER_SIZE', '1048576'),
('LANGUAGE', 'c:\\wamp\\bin\\mysql\\mysql5.1.53\\share\\english\\'),
('VERSION_COMPILE_MACHINE', 'unknown'),
('JOIN_BUFFER_SIZE', '131072'),
('INNODB_MAX_PURGE_LAG', '0'),
('CONNECT_TIMEOUT', '10'),
('TRANSACTION_PREALLOC_SIZE', '4096'),
('SQL_LOW_PRIORITY_UPDATES', 'OFF'),
('VERSION_COMPILE_OS', 'Win64'),
('INIT_FILE', ''),
('SQL_NOTES', 'ON'),
('LARGE_PAGE_SIZE', '0'),
('LOW_PRIORITY_UPDATES', 'OFF'),
('INIT_SLAVE', ''),
('REPORT_PASSWORD', ''),
('MAX_BINLOG_SIZE', '1073741824'),
('MAX_INSERT_DELAYED_THREADS', '20'),
('MAX_ERROR_COUNT', '64'),
('HAVE_COMPRESS', 'YES'),
('DELAYED_QUEUE_SIZE', '1000'),
('TRANSACTION_ALLOC_BLOCK_SIZE', '8192'),
('LOG_WARNINGS', '1'),
('THREAD_CACHE_SIZE', '0'),
('PSEUDO_THREAD_ID', '0'),
('INNODB_DOUBLEWRITE', 'ON'),
('STORAGE_ENGINE', 'MyISAM'),
('INNODB_FLUSH_METHOD', ''),
('LOWER_CASE_FILE_SYSTEM', 'ON'),
('DEFAULT_WEEK_FORMAT', '0'),
('MAX_RELAY_LOG_SIZE', '0'),
('LOG_OUTPUT', 'FILE'),
('FLUSH_TIME', '1800'),
('FT_MIN_WORD_LEN', '4'),
('COLLATION_SERVER', 'latin1_swedish_ci'),
('PROTOCOL_VERSION', '10'),
('CHARACTER_SET_SERVER', 'latin1'),
('HAVE_SYMLINK', 'YES'),
('MAX_LENGTH_FOR_SORT_DATA', '1024'),
('TIME_ZONE', 'SYSTEM'),
('MAX_TMP_TABLES', '32'),
('INNODB_TABLE_LOCKS', 'ON'),
('LOG_QUERIES_NOT_USING_INDEXES', 'OFF'),
('INNODB_AUTOEXTEND_INCREMENT', '8'),
('NET_BUFFER_LENGTH', '8192'),
('MYISAM_DATA_POINTER_SIZE', '6'),
('FT_STOPWORD_FILE', '(built-in)'),
('INNODB_THREAD_SLEEP_DELAY', '10000'),
('DELAY_KEY_WRITE', 'ON'),
('SQL_AUTO_IS_NULL', 'ON'),
('MULTI_RANGE_COUNT', '256'),
('SLAVE_TRANSACTION_RETRIES', '10'),
('LONG_QUERY_TIME', '10.000000'),
('LOG_ERROR', 'c:\\wamp\\logs\\mysql.log'),
('BULK_INSERT_BUFFER_SIZE', '8388608'),
('GENERAL_LOG', 'OFF'),
('NET_WRITE_TIMEOUT', '60'),
('TABLE_TYPE', 'MyISAM'),
('MYISAM_USE_MMAP', 'OFF'),
('QUERY_CACHE_MIN_RES_UNIT', '4096'),
('MAX_BINLOG_CACHE_SIZE', '4294963200'),
('INNODB_STATS_ON_METADATA', 'ON'),
('QUERY_CACHE_TYPE', 'ON'),
('INNODB_ROLLBACK_ON_TIMEOUT', 'OFF'),
('CHARACTER_SET_FILESYSTEM', 'binary'),
('PROFILING_HISTORY_SIZE', '15'),
('OLD_ALTER_TABLE', 'OFF'),
('INNODB_ADDITIONAL_MEM_POOL_SIZE', '1048576'),
('QUERY_PREALLOC_SIZE', '8192'),
('READ_RND_BUFFER_SIZE', '524288'),
('THREAD_HANDLING', 'one-thread-per-connection'),
('SECURE_AUTH', 'OFF'),
('BINLOG_DIRECT_NON_TRANSACTIONAL_UPDATES', 'OFF'),
('BIG_TABLES', 'OFF'),
('MAX_CONNECTIONS', '151'),
('SQL_SELECT_LIMIT', '18446744073709551615'),
('HAVE_INNODB', 'YES'),
('DATE_FORMAT', '%Y-%m-%d'),
('OLD_PASSWORDS', 'OFF'),
('READ_ONLY', 'OFF'),
('TX_ISOLATION', 'REPEATABLE-READ'),
('RAND_SEED1', ''),
('SLOW_QUERY_LOG_FILE', 'c:\\wamp\\bin\\mysql\\mysql5.1.53\\data\\Duncan-1UN7HO5D-slow.log'),
('INNODB_DATA_FILE_PATH', 'ibdata1:10M:autoextend'),
('MAX_SEEKS_FOR_KEY', '4294967295'),
('QUERY_CACHE_LIMIT', '1048576'),
('KEY_CACHE_AGE_THRESHOLD', '300'),
('PROFILING', 'OFF'),
('SSL_CERT', ''),
('QUERY_CACHE_SIZE', '0'),
('MYISAM_MAX_SORT_FILE_SIZE', '2146435072'),
('KEY_CACHE_DIVISION_LIMIT', '100'),
('THREAD_STACK', '262144'),
('GENERAL_LOG_FILE', 'c:\\wamp\\bin\\mysql\\mysql5.1.53\\data\\Duncan-1UN7HO5D.log'),
('OPEN_FILES_LIMIT', '755'),
('MYISAM_SORT_BUFFER_SIZE', '8388608'),
('SKIP_NAME_RESOLVE', 'OFF'),
('AUTO_INCREMENT_INCREMENT', '1'),
('LAST_INSERT_ID', '0'),
('TMPDIR', 'C:\\Windows\\TEMP'),
('PID_FILE', 'c:\\wamp\\bin\\mysql\\mysql5.1.53\\data\\Duncan-1UN7HO5D.pid'),
('EXPIRE_LOGS_DAYS', '0'),
('NAMED_PIPE', 'OFF'),
('HAVE_PARTITIONING', 'YES'),
('MIN_EXAMINED_ROW_LIMIT', '0'),
('FOREIGN_KEY_CHECKS', 'ON'),
('LARGE_FILES_SUPPORT', 'ON'),
('RELAY_LOG_INFO_FILE', 'relay-log.info'),
('SSL_CAPATH', ''),
('INNODB_AUTOINC_LOCK_MODE', '1'),
('VERSION_COMMENT', 'MySQL Community Server (GPL)'),
('INNODB_COMMIT_CONCURRENCY', '0'),
('OPTIMIZER_SWITCH', 'index_merge=on,index_merge_union=on,index_merge_sort_union=on,index_merge_intersection=on'),
('INNODB_MIRRORED_LOG_GROUPS', '1'),
('OPTIMIZER_PRUNE_LEVEL', '1'),
('UNIQUE_CHECKS', 'ON'),
('QUERY_CACHE_WLOCK_INVALIDATE', 'OFF'),
('VERSION', '5.1.53-community-log'),
('MAX_WRITE_LOCK_COUNT', '4294967295'),
('INNODB_SUPPORT_XA', 'ON'),
('TIMED_MUTEXES', 'OFF'),
('INNODB_SYNC_SPIN_LOOPS', '20'),
('LARGE_PAGES', 'OFF'),
('COLLATION_CONNECTION', 'latin1_swedish_ci'),
('LC_TIME_NAMES', 'en_US'),
('HAVE_QUERY_CACHE', 'YES'),
('SERVER_ID', '1'),
('INNODB_ADAPTIVE_HASH_INDEX', 'ON'),
('SKIP_NETWORKING', 'OFF'),
('RPL_RECOVERY_RANK', '0'),
('CHARACTER_SET_SYSTEM', 'utf8'),
('DIV_PRECISION_INCREMENT', '4'),
('INIT_CONNECT', ''),
('DATADIR', 'c:\\wamp\\bin\\mysql\\mysql5.1.53\\data\\'),
('OPTIMIZER_SEARCH_DEPTH', '62'),
('INNODB_DATA_HOME_DIR', ''),
('AUTOCOMMIT', 'ON'),
('SQL_WARNINGS', 'OFF'),
('KEY_CACHE_BLOCK_SIZE', '1024'),
('SQL_SLAVE_SKIP_COUNTER', ''),
('SQL_BIG_TABLES', 'OFF'),
('TIME_FORMAT', '%H:%i:%s'),
('TMP_TABLE_SIZE', '16777216'),
('INNODB_FORCE_RECOVERY', '0'),
('TABLE_LOCK_WAIT_TIMEOUT', '50'),
('INNODB_LOG_FILES_IN_GROUP', '2'),
('SHARED_MEMORY', 'OFF'),
('ERROR_COUNT', '0'),
('HOSTNAME', 'Duncan-1UN7HO5D'),
('HAVE_DYNAMIC_LOADING', 'YES'),
('SQL_BUFFER_RESULT', 'OFF'),
('SYNC_BINLOG', '0'),
('LOG_BIN', 'ON'),
('RELAY_LOG_SPACE_LIMIT', '0'),
('SQL_MODE', ''),
('INNODB_OPEN_FILES', '300'),
('MAX_USER_CONNECTIONS', '0'),
('OLD', 'OFF'),
('SLAVE_EXEC_MODE', 'STRICT'),
('INNODB_MAX_DIRTY_PAGES_PCT', '90'),
('SQL_MAX_JOIN_SIZE', '18446744073709551615'),
('HAVE_COMMUNITY_FEATURES', 'YES'),
('NEW', 'OFF'),
('KEY_BUFFER_SIZE', '16777216'),
('SECURE_FILE_PRIV', ''),
('HAVE_NDBCLUSTER', 'NO'),
('KEEP_FILES_ON_CREATE', 'OFF'),
('REPORT_PORT', '3306'),
('REPORT_USER', ''),
('INNODB_LOG_GROUP_HOME_DIR', '.\\'),
('ENGINE_CONDITION_PUSHDOWN', 'ON'),
('INNODB_FAST_SHUTDOWN', '1'),
('SQL_LOG_BIN', 'ON'),
('SSL_CA', ''),
('SQL_LOG_OFF', 'OFF'),
('INNODB_THREAD_CONCURRENCY', '8'),
('HAVE_CSV', 'YES'),
('SLAVE_NET_TIMEOUT', '3600'),
('SQL_SAFE_UPDATES', 'OFF'),
('INNODB_BUFFER_POOL_SIZE', '8388608'),
('PRELOAD_BUFFER_SIZE', '32768'),
('LOCAL_INFILE', 'ON'),
('SLAVE_COMPRESSED_PROTOCOL', 'OFF'),
('HAVE_RTREE_KEYS', 'YES'),
('HAVE_GEOMETRY', 'YES'),
('BINLOG_FORMAT', 'MIXED'),
('MAX_SP_RECURSION_DEPTH', '0'),
('SHARED_MEMORY_BASE_NAME', 'MYSQL'),
('RELAY_LOG', ''),
('MYISAM_MMAP_SIZE', '18446744073709551615'),
('PLUGIN_DIR', 'c:\\wamp\\bin\\mysql\\mysql5.1.53\\lib/plugin'),
('LOG_SLOW_QUERIES', 'OFF'),
('IGNORE_BUILTIN_INNODB', 'OFF'),
('TIMESTAMP', '1605442606'),
('NET_READ_TIMEOUT', '30'),
('MAX_DELAYED_THREADS', '20'),
('SYNC_FRM', 'ON'),
('DATETIME_FORMAT', '%Y-%m-%d %H:%i:%s'),
('SLOW_QUERY_LOG', 'OFF'),
('INNODB_FLUSH_LOG_AT_TRX_COMMIT', '1'),
('WARNING_COUNT', '0'),
('INNODB_FILE_IO_THREADS', '4'),
('MAX_ALLOWED_PACKET', '1048576'),
('LICENSE', 'GPL'),
('SQL_BIG_SELECTS', 'ON'),
('RANGE_ALLOC_BLOCK_SIZE', '4096'),
('INNODB_CHECKSUMS', 'ON'),
('PORT', '3306'),
('INNODB_LOCKS_UNSAFE_FOR_BINLOG', 'OFF'),
('HAVE_SSL', 'DISABLED'),
('INNODB_LOG_FILE_SIZE', '5242880'),
('LOG_BIN_TRUST_FUNCTION_CREATORS', 'OFF'),
('LOG_SLAVE_UPDATES', 'OFF'),
('MAX_JOIN_SIZE', '18446744073709551615'),
('SORT_BUFFER_SIZE', '524288'),
('HAVE_OPENSSL', 'DISABLED'),
('INNODB_FILE_PER_TABLE', 'OFF'),
('SOCKET', '/tmp/mysql.sock'),
('CHARACTER_SET_CLIENT', 'latin1'),
('RAND_SEED2', ''),
('SKIP_EXTERNAL_LOCKING', 'ON'),
('IDENTITY', '0'),
('SLAVE_LOAD_TMPDIR', 'C:\\Windows\\TEMP');

-- --------------------------------------------------------

--
-- Table structure for table `KEY_COLUMN_USAGE`
--

CREATE TEMPORARY TABLE `KEY_COLUMN_USAGE` (
  `CONSTRAINT_CATALOG` varchar(512) DEFAULT NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` bigint(10) NOT NULL DEFAULT '0',
  `POSITION_IN_UNIQUE_CONSTRAINT` bigint(10) DEFAULT NULL,
  `REFERENCED_TABLE_SCHEMA` varchar(64) DEFAULT NULL,
  `REFERENCED_TABLE_NAME` varchar(64) DEFAULT NULL,
  `REFERENCED_COLUMN_NAME` varchar(64) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `KEY_COLUMN_USAGE`
--

INSERT INTO `KEY_COLUMN_USAGE` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `POSITION_IN_UNIQUE_CONSTRAINT`, `REFERENCED_TABLE_SCHEMA`, `REFERENCED_TABLE_NAME`, `REFERENCED_COLUMN_NAME`) VALUES
(NULL, 'geotraveller', 'PRIMARY', NULL, 'geotraveller', 'address', 'address_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'geotraveller', 'PRIMARY', NULL, 'geotraveller', 'category', 'service_category_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'geotraveller', 'PRIMARY', NULL, 'geotraveller', 'comments', 'comment_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'geotraveller', 'PRIMARY', NULL, 'geotraveller', 'orders', 'OrderId', 1, NULL, NULL, NULL, NULL),
(NULL, 'geotraveller', 'PRIMARY', NULL, 'geotraveller', 'services', 'service_Id', 1, NULL, NULL, NULL, NULL),
(NULL, 'geotraveller', 'PRIMARY', NULL, 'geotraveller', 'transactions', 'transactionId', 1, NULL, NULL, NULL, NULL),
(NULL, 'geotraveller', 'PRIMARY', NULL, 'geotraveller', 'users', 'email', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'columns_priv', 'Host', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'columns_priv', 'Db', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'columns_priv', 'User', 3, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'columns_priv', 'Table_name', 4, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'columns_priv', 'Column_name', 5, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'db', 'Host', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'db', 'Db', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'db', 'User', 3, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'event', 'db', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'event', 'name', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'func', 'name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'help_category', 'help_category_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'name', NULL, 'mysql', 'help_category', 'name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'help_keyword', 'help_keyword_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'name', NULL, 'mysql', 'help_keyword', 'name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'help_relation', 'help_keyword_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'help_relation', 'help_topic_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'help_topic', 'help_topic_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'name', NULL, 'mysql', 'help_topic', 'name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'host', 'Host', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'host', 'Db', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'ndb_binlog_index', 'epoch', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'plugin', 'name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'proc', 'db', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'proc', 'name', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'proc', 'type', 3, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'procs_priv', 'Host', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'procs_priv', 'Db', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'procs_priv', 'User', 3, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'procs_priv', 'Routine_name', 4, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'procs_priv', 'Routine_type', 5, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'servers', 'Server_name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'tables_priv', 'Host', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'tables_priv', 'Db', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'tables_priv', 'User', 3, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'tables_priv', 'Table_name', 4, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone', 'Time_zone_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone_leap_second', 'Transition_time', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone_name', 'Name', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone_transition', 'Time_zone_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone_transition', 'Transition_time', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone_transition_type', 'Time_zone_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'time_zone_transition_type', 'Transition_type_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'user', 'Host', 1, NULL, NULL, NULL, NULL),
(NULL, 'mysql', 'PRIMARY', NULL, 'mysql', 'user', 'User', 2, NULL, NULL, NULL, NULL),
(NULL, 'polltest', 'PRIMARY', NULL, 'polltest', 'aspirant', 'asp_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'polltest', 'PRIMARY', NULL, 'polltest', 'languages', 'lan_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'polltest', 'PRIMARY', NULL, 'polltest', 'loginusers', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'polltest', 'username', NULL, 'polltest', 'loginusers', 'username', 1, NULL, NULL, NULL, NULL),
(NULL, 'polltest', 'username', NULL, 'polltest', 'voters', 'username', 1, NULL, NULL, NULL, NULL),
(NULL, 'school', 'PRIMARY', NULL, 'school', 'accounts', 'user_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'shoppingcart', 'PRIMARY', NULL, 'shoppingcart', 'internet_shop', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'shoppingcart', 'img', NULL, 'shoppingcart', 'internet_shop', 'img', 1, NULL, NULL, NULL, NULL),
(NULL, 'shoppingcart', 'PRIMARY', NULL, 'shoppingcart', 'message', 'message_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'shoppingcart', 'PRIMARY', NULL, 'shoppingcart', 'orders', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'shoppingcart', 'PRIMARY', NULL, 'shoppingcart', 'paymentm', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'shoppingcart', 'PRIMARY', NULL, 'shoppingcart', 'reservation', 'reservation_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'shoppingcart', 'PRIMARY', NULL, 'shoppingcart', 'user', 'user_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'widema', 'PRIMARY', NULL, 'widema', 'articles', 'AuthorId', 1, NULL, NULL, NULL, NULL),
(NULL, 'widema', 'PRIMARY', NULL, 'widema', 'comment', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'widema', 'PRIMARY', NULL, 'widema', 'goods', 'good_owner_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'widema', 'PRIMARY', NULL, 'widema', 'gtype', 'good_type_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'widema', 'PRIMARY', NULL, 'widema', 'ideas', 'idea_owner_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'widema', 'PRIMARY', NULL, 'widema', 'items', 'prod_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'widema', 'PRIMARY', NULL, 'widema', 'itype', 'idea_type_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'widema', 'PRIMARY', NULL, 'widema', 'products', 'id', 1, NULL, NULL, NULL, NULL),
(NULL, 'widema', 'PRIMARY', NULL, 'widema', 'services', 'service_owner_Id', 1, NULL, NULL, NULL, NULL),
(NULL, 'widema', 'PRIMARY', NULL, 'widema', 'stype', 'service_type_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'widema', 'PRIMARY', NULL, 'widema', 'users', 'idNumber', 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PARTITIONS`
--

CREATE TEMPORARY TABLE `PARTITIONS` (
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `PARTITION_NAME` varchar(64) DEFAULT NULL,
  `SUBPARTITION_NAME` varchar(64) DEFAULT NULL,
  `PARTITION_ORDINAL_POSITION` bigint(21) unsigned DEFAULT NULL,
  `SUBPARTITION_ORDINAL_POSITION` bigint(21) unsigned DEFAULT NULL,
  `PARTITION_METHOD` varchar(12) DEFAULT NULL,
  `SUBPARTITION_METHOD` varchar(12) DEFAULT NULL,
  `PARTITION_EXPRESSION` longtext,
  `SUBPARTITION_EXPRESSION` longtext,
  `PARTITION_DESCRIPTION` longtext,
  `TABLE_ROWS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `AVG_ROW_LENGTH` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATA_LENGTH` bigint(21) unsigned NOT NULL DEFAULT '0',
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATA_FREE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `PARTITION_COMMENT` varchar(80) NOT NULL DEFAULT '',
  `NODEGROUP` varchar(12) NOT NULL DEFAULT '',
  `TABLESPACE_NAME` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PARTITIONS`
--

INSERT INTO `PARTITIONS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `PARTITION_NAME`, `SUBPARTITION_NAME`, `PARTITION_ORDINAL_POSITION`, `SUBPARTITION_ORDINAL_POSITION`, `PARTITION_METHOD`, `SUBPARTITION_METHOD`, `PARTITION_EXPRESSION`, `SUBPARTITION_EXPRESSION`, `PARTITION_DESCRIPTION`, `TABLE_ROWS`, `AVG_ROW_LENGTH`, `DATA_LENGTH`, `MAX_DATA_LENGTH`, `INDEX_LENGTH`, `DATA_FREE`, `CREATE_TIME`, `UPDATE_TIME`, `CHECK_TIME`, `CHECKSUM`, `PARTITION_COMMENT`, `NODEGROUP`, `TABLESPACE_NAME`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 384, 0, 16434816, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'COLLATIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 231, 0, 16704765, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 195, 0, 16357770, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'COLUMNS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2020-11-15 15:16:46', '2020-11-15 15:16:46', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2565, 0, 16757145, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'ENGINES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 490, 0, 16574250, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'EVENTS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2020-11-15 15:16:46', '2020-11-15 15:16:46', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'FILES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2677, 0, 16758020, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'GLOBAL_STATUS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 16755036, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'GLOBAL_VARIABLES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 16755036, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4637, 0, 16762755, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'PARTITIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2020-11-15 15:16:46', '2020-11-15 15:16:46', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'PLUGINS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2020-11-15 15:16:46', '2020-11-15 15:16:46', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'PROCESSLIST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2020-11-15 15:16:46', '2020-11-15 15:16:46', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'PROFILING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 308, 0, 16562084, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4814, 0, 16767162, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'ROUTINES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2020-11-15 15:16:46', '2020-11-15 15:16:46', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'SCHEMATA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3464, 0, 16738048, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2179, 0, 16736899, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'SESSION_STATUS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 16755036, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'SESSION_VARIABLES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 16755036, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'STATISTICS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2679, 0, 16770540, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'TABLES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3545, 0, 16743035, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2504, 0, 16721712, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2372, 0, 16748692, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'TRIGGERS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2020-11-15 15:16:46', '2020-11-15 15:16:46', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'USER_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1986, 0, 16726092, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'VIEWS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2020-11-15 15:16:46', '2020-11-15 15:16:46', NULL, NULL, '', '', NULL),
(NULL, 'geotraveller', 'address', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 39, 428, 281474976710655, 2048, 36, '2020-10-16 13:51:05', '2020-11-14 17:17:27', NULL, NULL, '', '', NULL),
(NULL, 'geotraveller', 'category', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 43, 1088, 281474976710655, 2048, 0, '2020-11-04 18:33:45', '2020-11-15 11:17:38', NULL, NULL, '', '', NULL),
(NULL, 'geotraveller', 'comments', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 56, 360, 281474976710655, 2048, 80, '2020-11-07 14:34:49', '2020-11-14 14:29:49', NULL, NULL, '', '', NULL),
(NULL, 'geotraveller', 'orders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2020-10-16 13:51:05', '2020-10-16 13:51:05', NULL, NULL, '', '', NULL),
(NULL, 'geotraveller', 'services', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 80, 1240, 281474976710655, 2048, 116, '2020-11-07 15:45:53', '2020-11-14 19:15:31', NULL, NULL, '', '', NULL),
(NULL, 'geotraveller', 'transactions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2020-10-16 13:51:05', '2020-10-16 13:51:05', NULL, NULL, '', '', NULL),
(NULL, 'geotraveller', 'users', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 129, 2440, 281474976710655, 2048, 372, '2020-10-16 13:51:05', '2020-11-14 19:05:24', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'columns_priv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 227994731135631359, 4096, 0, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'db', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 440, 880, 123848989752688639, 5120, 0, '2010-11-03 17:22:43', '2010-11-25 01:00:18', '2010-11-03 17:22:44', NULL, '', '', NULL),
(NULL, 'mysql', 'event', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 2048, 0, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'func', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 162974011515469823, 1024, 0, '2010-11-03 17:22:43', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'general_log', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'help_category', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 581, 22078, 163536961468891135, 3072, 0, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'help_keyword', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 452, 197, 89044, 55450570411999231, 16384, 0, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'help_relation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 993, 9, 8937, 2533274790395903, 17408, 0, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'help_topic', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 506, 847, 428880, 281474976710655, 20480, 0, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'host', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 110056715893866495, 2048, 0, '2010-11-03 17:22:43', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'ndb_binlog_index', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'plugin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 162411061562048511, 1024, 0, '2010-11-03 17:22:43', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'proc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 2048, 0, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'procs_priv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 239253730204057599, 4096, 0, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'servers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 433752939111120895, 1024, 0, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'slow_log', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, NULL, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'tables_priv', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 239535205180768255, 4096, 0, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'time_zone', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1970324836974591, 1024, 0, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'time_zone_leap_second', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 3659174697238527, 1024, 0, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'time_zone_name', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 55450570411999231, 1024, 0, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'time_zone_transition', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 4785074604081151, 1024, 0, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'time_zone_transition_type', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 10696049115004927, 1024, 0, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'mysql', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 50, 152, 281474976710655, 2048, 0, '2010-11-03 17:22:43', '2010-11-25 01:00:18', NULL, NULL, '', '', NULL),
(NULL, 'polltest', 'aspirant', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 2730, 16384, NULL, 0, 4194304, '2020-11-15 11:32:50', NULL, NULL, NULL, '', '', NULL),
(NULL, 'polltest', 'languages', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 28, 140, 281474976710655, 2048, 0, '2020-11-15 11:32:51', '2020-11-15 11:32:51', NULL, NULL, '', '', NULL),
(NULL, 'polltest', 'loginusers', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 64, 1032, 281474976710655, 3072, 0, '2020-11-15 11:32:51', '2020-11-15 11:34:23', NULL, NULL, '', '', NULL),
(NULL, 'polltest', 'voters', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 41, 664, 281474976710655, 2048, 0, '2020-11-15 11:32:51', '2020-11-15 11:34:23', NULL, NULL, '', '', NULL),
(NULL, 'school', 'accounts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 20, 20, 281474976710655, 2048, 0, '2020-10-27 09:20:18', '2020-10-27 09:20:55', NULL, NULL, '', '', NULL),
(NULL, 'school', 'users', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 104, 104, 281474976710655, 1024, 0, '2020-10-27 09:23:32', '2020-10-27 09:24:16', NULL, NULL, '', '', NULL),
(NULL, 'shoppingcart', 'internet_shop', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 62, 624, 281474976710655, 3072, 0, '2019-11-28 16:11:50', '2019-11-30 18:16:43', NULL, NULL, '', '', NULL),
(NULL, 'shoppingcart', 'message', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 1092, 16384, NULL, 0, 4194304, '2019-11-28 16:11:50', NULL, NULL, NULL, '', '', NULL),
(NULL, 'shoppingcart', 'orders', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 431, 16384, NULL, 0, 4194304, '2019-11-28 16:11:50', NULL, NULL, NULL, '', '', NULL),
(NULL, 'shoppingcart', 'paymentm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 5461, 16384, NULL, 0, 4194304, '2019-11-28 16:11:50', NULL, NULL, NULL, '', '', NULL),
(NULL, 'shoppingcart', 'reservation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 117, 1524, 281474976710655, 2048, 0, '2019-11-28 16:11:50', '2020-09-27 07:04:31', NULL, NULL, '', '', NULL),
(NULL, 'shoppingcart', 'user', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 32, 96, 281474976710655, 2048, 0, '2019-11-28 16:11:50', '2020-10-29 21:48:15', NULL, NULL, '', '', NULL),
(NULL, 'widema', 'articles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2019-10-24 17:17:56', '2019-10-24 17:17:56', NULL, NULL, '', '', NULL),
(NULL, 'widema', 'comment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2019-12-01 21:16:30', '2019-12-01 21:16:30', NULL, NULL, '', '', NULL),
(NULL, 'widema', 'goods', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 85, 1804, 281474976710655, 2048, 0, '2019-11-17 22:35:39', '2020-10-22 10:43:34', NULL, NULL, '', '', NULL),
(NULL, 'widema', 'gtype', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 20, 144, 281474976710655, 2048, 0, '2019-10-27 23:12:20', '2019-10-27 23:16:39', NULL, NULL, '', '', NULL),
(NULL, 'widema', 'ideas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 56, 56, 281474976710655, 2048, 0, '2019-10-24 17:17:56', '2019-10-26 19:37:00', NULL, NULL, '', '', NULL),
(NULL, 'widema', 'items', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 37, 184, 281474976710655, 2048, 72, '2019-11-20 19:46:51', '2020-10-27 09:46:38', NULL, NULL, '', '', NULL),
(NULL, 'widema', 'itype', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 26, 80, 281474976710655, 2048, 0, '2019-10-24 17:17:56', '2019-10-24 17:26:28', NULL, NULL, '', '', NULL),
(NULL, 'widema', 'products', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 60, 100, 281474976710655, 2048, 40, '2019-11-18 06:04:13', '2020-09-27 07:26:01', NULL, NULL, '', '', NULL),
(NULL, 'widema', 'services', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 66, 132, 281474976710655, 2048, 0, '2020-02-06 01:46:52', '2020-02-06 01:46:52', NULL, NULL, '', '', NULL),
(NULL, 'widema', 'stype', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 23, 188, 281474976710655, 2048, 24, '2019-10-24 17:17:56', '2019-10-24 17:35:57', NULL, NULL, '', '', NULL),
(NULL, 'widema', 'users', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54, 85, 4608, 281474976710655, 2048, 0, '2019-10-31 21:39:11', '2020-10-11 07:50:31', NULL, NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PLUGINS`
--

CREATE TEMPORARY TABLE `PLUGINS` (
  `PLUGIN_NAME` varchar(64) NOT NULL DEFAULT '',
  `PLUGIN_VERSION` varchar(20) NOT NULL DEFAULT '',
  `PLUGIN_STATUS` varchar(10) NOT NULL DEFAULT '',
  `PLUGIN_TYPE` varchar(80) NOT NULL DEFAULT '',
  `PLUGIN_TYPE_VERSION` varchar(20) NOT NULL DEFAULT '',
  `PLUGIN_LIBRARY` varchar(64) DEFAULT NULL,
  `PLUGIN_LIBRARY_VERSION` varchar(20) DEFAULT NULL,
  `PLUGIN_AUTHOR` varchar(64) DEFAULT NULL,
  `PLUGIN_DESCRIPTION` longtext,
  `PLUGIN_LICENSE` varchar(80) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PLUGINS`
--

INSERT INTO `PLUGINS` (`PLUGIN_NAME`, `PLUGIN_VERSION`, `PLUGIN_STATUS`, `PLUGIN_TYPE`, `PLUGIN_TYPE_VERSION`, `PLUGIN_LIBRARY`, `PLUGIN_LIBRARY_VERSION`, `PLUGIN_AUTHOR`, `PLUGIN_DESCRIPTION`, `PLUGIN_LICENSE`) VALUES
('binlog', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50153.0', NULL, NULL, 'MySQL AB', 'This is a pseudo storage engine to represent the binlog in a transaction', 'GPL'),
('ARCHIVE', '3.0', 'ACTIVE', 'STORAGE ENGINE', '50153.0', NULL, NULL, 'Brian Aker, MySQL AB', 'Archive storage engine', 'GPL'),
('BLACKHOLE', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50153.0', NULL, NULL, 'MySQL AB', '/dev/null storage engine (anything you write to it disappears)', 'GPL'),
('CSV', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50153.0', NULL, NULL, 'Brian Aker, MySQL AB', 'CSV storage engine', 'GPL'),
('FEDERATED', '1.0', 'DISABLED', 'STORAGE ENGINE', '50153.0', NULL, NULL, 'Patrick Galbraith and Brian Aker, MySQL AB', 'Federated MySQL storage engine', 'GPL'),
('MEMORY', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50153.0', NULL, NULL, 'MySQL AB', 'Hash based, stored in memory, useful for temporary tables', 'GPL'),
('InnoDB', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50153.0', NULL, NULL, 'Innobase OY', 'Supports transactions, row-level locking, and foreign keys', 'GPL'),
('MyISAM', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50153.0', NULL, NULL, 'MySQL AB', 'Default engine as of MySQL 3.23 with great performance', 'GPL'),
('MRG_MYISAM', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50153.0', NULL, NULL, 'MySQL AB', 'Collection of identical MyISAM tables', 'GPL'),
('partition', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50153.0', NULL, NULL, 'Mikael Ronstrom, MySQL AB', 'Partition Storage Engine Helper', 'GPL');

-- --------------------------------------------------------

--
-- Table structure for table `PROCESSLIST`
--

CREATE TEMPORARY TABLE `PROCESSLIST` (
  `ID` bigint(4) NOT NULL DEFAULT '0',
  `USER` varchar(16) NOT NULL DEFAULT '',
  `HOST` varchar(64) NOT NULL DEFAULT '',
  `DB` varchar(64) DEFAULT NULL,
  `COMMAND` varchar(16) NOT NULL DEFAULT '',
  `TIME` int(7) NOT NULL DEFAULT '0',
  `STATE` varchar(64) DEFAULT NULL,
  `INFO` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROCESSLIST`
--

INSERT INTO `PROCESSLIST` (`ID`, `USER`, `HOST`, `DB`, `COMMAND`, `TIME`, `STATE`, `INFO`) VALUES
(233, 'root', 'localhost:8071', 'geotraveller', 'Query', 0, 'executing', 'SELECT * FROM `information_schema`.`PROCESSLIST`');

-- --------------------------------------------------------

--
-- Table structure for table `PROFILING`
--

CREATE TEMPORARY TABLE `PROFILING` (
  `QUERY_ID` int(20) NOT NULL DEFAULT '0',
  `SEQ` int(20) NOT NULL DEFAULT '0',
  `STATE` varchar(30) NOT NULL DEFAULT '',
  `DURATION` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `CPU_USER` decimal(9,6) DEFAULT NULL,
  `CPU_SYSTEM` decimal(9,6) DEFAULT NULL,
  `CONTEXT_VOLUNTARY` int(20) DEFAULT NULL,
  `CONTEXT_INVOLUNTARY` int(20) DEFAULT NULL,
  `BLOCK_OPS_IN` int(20) DEFAULT NULL,
  `BLOCK_OPS_OUT` int(20) DEFAULT NULL,
  `MESSAGES_SENT` int(20) DEFAULT NULL,
  `MESSAGES_RECEIVED` int(20) DEFAULT NULL,
  `PAGE_FAULTS_MAJOR` int(20) DEFAULT NULL,
  `PAGE_FAULTS_MINOR` int(20) DEFAULT NULL,
  `SWAPS` int(20) DEFAULT NULL,
  `SOURCE_FUNCTION` varchar(30) DEFAULT NULL,
  `SOURCE_FILE` varchar(20) DEFAULT NULL,
  `SOURCE_LINE` int(20) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROFILING`
--


-- --------------------------------------------------------

--
-- Table structure for table `REFERENTIAL_CONSTRAINTS`
--

CREATE TEMPORARY TABLE `REFERENTIAL_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) DEFAULT NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `UNIQUE_CONSTRAINT_CATALOG` varchar(512) DEFAULT NULL,
  `UNIQUE_CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `UNIQUE_CONSTRAINT_NAME` varchar(64) DEFAULT NULL,
  `MATCH_OPTION` varchar(64) NOT NULL DEFAULT '',
  `UPDATE_RULE` varchar(64) NOT NULL DEFAULT '',
  `DELETE_RULE` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `REFERENCED_TABLE_NAME` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `REFERENTIAL_CONSTRAINTS`
--


-- --------------------------------------------------------

--
-- Table structure for table `ROUTINES`
--

CREATE TEMPORARY TABLE `ROUTINES` (
  `SPECIFIC_NAME` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_CATALOG` varchar(512) DEFAULT NULL,
  `ROUTINE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_NAME` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_TYPE` varchar(9) NOT NULL DEFAULT '',
  `DTD_IDENTIFIER` varchar(64) DEFAULT NULL,
  `ROUTINE_BODY` varchar(8) NOT NULL DEFAULT '',
  `ROUTINE_DEFINITION` longtext,
  `EXTERNAL_NAME` varchar(64) DEFAULT NULL,
  `EXTERNAL_LANGUAGE` varchar(64) DEFAULT NULL,
  `PARAMETER_STYLE` varchar(8) NOT NULL DEFAULT '',
  `IS_DETERMINISTIC` varchar(3) NOT NULL DEFAULT '',
  `SQL_DATA_ACCESS` varchar(64) NOT NULL DEFAULT '',
  `SQL_PATH` varchar(64) DEFAULT NULL,
  `SECURITY_TYPE` varchar(7) NOT NULL DEFAULT '',
  `CREATED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `ROUTINE_COMMENT` varchar(64) NOT NULL DEFAULT '',
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ROUTINES`
--


-- --------------------------------------------------------

--
-- Table structure for table `SCHEMATA`
--

CREATE TEMPORARY TABLE `SCHEMATA` (
  `CATALOG_NAME` varchar(512) DEFAULT NULL,
  `SCHEMA_NAME` varchar(64) NOT NULL DEFAULT '',
  `DEFAULT_CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `DEFAULT_COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `SQL_PATH` varchar(512) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEMATA`
--

INSERT INTO `SCHEMATA` (`CATALOG_NAME`, `SCHEMA_NAME`, `DEFAULT_CHARACTER_SET_NAME`, `DEFAULT_COLLATION_NAME`, `SQL_PATH`) VALUES
(NULL, 'information_schema', 'utf8', 'utf8_general_ci', NULL),
(NULL, 'geotraveller', 'latin1', 'latin1_swedish_ci', NULL),
(NULL, 'mysql', 'latin1', 'latin1_swedish_ci', NULL),
(NULL, 'polltest', 'latin1', 'latin1_swedish_ci', NULL),
(NULL, 'school', 'latin1', 'latin1_swedish_ci', NULL),
(NULL, 'shoppingcart', 'latin1', 'latin1_swedish_ci', NULL),
(NULL, 'widema', 'latin1', 'latin1_swedish_ci', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SCHEMA_PRIVILEGES`
--

CREATE TEMPORARY TABLE `SCHEMA_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEMA_PRIVILEGES`
--

INSERT INTO `SCHEMA_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''''@''%''', NULL, 'test', 'SELECT', 'NO'),
('''''@''%''', NULL, 'test', 'INSERT', 'NO'),
('''''@''%''', NULL, 'test', 'UPDATE', 'NO'),
('''''@''%''', NULL, 'test', 'DELETE', 'NO'),
('''''@''%''', NULL, 'test', 'CREATE', 'NO'),
('''''@''%''', NULL, 'test', 'DROP', 'NO'),
('''''@''%''', NULL, 'test', 'REFERENCES', 'NO'),
('''''@''%''', NULL, 'test', 'INDEX', 'NO'),
('''''@''%''', NULL, 'test', 'ALTER', 'NO'),
('''''@''%''', NULL, 'test', 'CREATE TEMPORARY TABLES', 'NO'),
('''''@''%''', NULL, 'test', 'LOCK TABLES', 'NO'),
('''''@''%''', NULL, 'test', 'CREATE VIEW', 'NO'),
('''''@''%''', NULL, 'test', 'SHOW VIEW', 'NO'),
('''''@''%''', NULL, 'test', 'CREATE ROUTINE', 'NO'),
('''''@''%''', NULL, 'test', 'EVENT', 'NO'),
('''''@''%''', NULL, 'test', 'TRIGGER', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'SELECT', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'INSERT', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'UPDATE', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'DELETE', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'CREATE', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'DROP', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'REFERENCES', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'INDEX', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'ALTER', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'CREATE TEMPORARY TABLES', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'LOCK TABLES', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'CREATE VIEW', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'SHOW VIEW', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'CREATE ROUTINE', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'EVENT', 'NO'),
('''''@''%''', NULL, 'test\\_%', 'TRIGGER', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `SESSION_STATUS`
--

CREATE TEMPORARY TABLE `SESSION_STATUS` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SESSION_STATUS`
--

INSERT INTO `SESSION_STATUS` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('ABORTED_CLIENTS', '0'),
('ABORTED_CONNECTS', '0'),
('BINLOG_CACHE_DISK_USE', '0'),
('BINLOG_CACHE_USE', '5'),
('BYTES_RECEIVED', '9365'),
('BYTES_SENT', '240590'),
('COM_ADMIN_COMMANDS', '0'),
('COM_ASSIGN_TO_KEYCACHE', '0'),
('COM_ALTER_DB', '0'),
('COM_ALTER_DB_UPGRADE', '0'),
('COM_ALTER_EVENT', '0'),
('COM_ALTER_FUNCTION', '0'),
('COM_ALTER_PROCEDURE', '0'),
('COM_ALTER_SERVER', '0'),
('COM_ALTER_TABLE', '0'),
('COM_ALTER_TABLESPACE', '0'),
('COM_ANALYZE', '0'),
('COM_BACKUP_TABLE', '0'),
('COM_BEGIN', '0'),
('COM_BINLOG', '0'),
('COM_CALL_PROCEDURE', '0'),
('COM_CHANGE_DB', '2'),
('COM_CHANGE_MASTER', '0'),
('COM_CHECK', '0'),
('COM_CHECKSUM', '0'),
('COM_COMMIT', '0'),
('COM_CREATE_DB', '0'),
('COM_CREATE_EVENT', '0'),
('COM_CREATE_FUNCTION', '0'),
('COM_CREATE_INDEX', '0'),
('COM_CREATE_PROCEDURE', '0'),
('COM_CREATE_SERVER', '0'),
('COM_CREATE_TABLE', '0'),
('COM_CREATE_TRIGGER', '0'),
('COM_CREATE_UDF', '0'),
('COM_CREATE_USER', '0'),
('COM_CREATE_VIEW', '0'),
('COM_DEALLOC_SQL', '0'),
('COM_DELETE', '0'),
('COM_DELETE_MULTI', '0'),
('COM_DO', '0'),
('COM_DROP_DB', '0'),
('COM_DROP_EVENT', '0'),
('COM_DROP_FUNCTION', '0'),
('COM_DROP_INDEX', '0'),
('COM_DROP_PROCEDURE', '0'),
('COM_DROP_SERVER', '0'),
('COM_DROP_TABLE', '0'),
('COM_DROP_TRIGGER', '0'),
('COM_DROP_USER', '0'),
('COM_DROP_VIEW', '0'),
('COM_EMPTY_QUERY', '0'),
('COM_EXECUTE_SQL', '0'),
('COM_FLUSH', '0'),
('COM_GRANT', '0'),
('COM_HA_CLOSE', '0'),
('COM_HA_OPEN', '0'),
('COM_HA_READ', '0'),
('COM_HELP', '0'),
('COM_INSERT', '0'),
('COM_INSERT_SELECT', '0'),
('COM_INSTALL_PLUGIN', '0'),
('COM_KILL', '0'),
('COM_LOAD', '0'),
('COM_LOAD_MASTER_DATA', '0'),
('COM_LOAD_MASTER_TABLE', '0'),
('COM_LOCK_TABLES', '0'),
('COM_OPTIMIZE', '0'),
('COM_PRELOAD_KEYS', '0'),
('COM_PREPARE_SQL', '0'),
('COM_PURGE', '0'),
('COM_PURGE_BEFORE_DATE', '0'),
('COM_RELEASE_SAVEPOINT', '0'),
('COM_RENAME_TABLE', '0'),
('COM_RENAME_USER', '0'),
('COM_REPAIR', '0'),
('COM_REPLACE', '0'),
('COM_REPLACE_SELECT', '0'),
('COM_RESET', '0'),
('COM_RESTORE_TABLE', '0'),
('COM_REVOKE', '0'),
('COM_REVOKE_ALL', '0'),
('COM_ROLLBACK', '0'),
('COM_ROLLBACK_TO_SAVEPOINT', '0'),
('COM_SAVEPOINT', '0'),
('COM_SELECT', '27'),
('COM_SET_OPTION', '30'),
('COM_SHOW_AUTHORS', '0'),
('COM_SHOW_BINLOG_EVENTS', '0'),
('COM_SHOW_BINLOGS', '0'),
('COM_SHOW_CHARSETS', '0'),
('COM_SHOW_COLLATIONS', '0'),
('COM_SHOW_COLUMN_TYPES', '0'),
('COM_SHOW_CONTRIBUTORS', '0'),
('COM_SHOW_CREATE_DB', '0'),
('COM_SHOW_CREATE_EVENT', '0'),
('COM_SHOW_CREATE_FUNC', '0'),
('COM_SHOW_CREATE_PROC', '0'),
('COM_SHOW_CREATE_TABLE', '27'),
('COM_SHOW_CREATE_TRIGGER', '0'),
('COM_SHOW_DATABASES', '1'),
('COM_SHOW_ENGINE_LOGS', '0'),
('COM_SHOW_ENGINE_MUTEX', '0'),
('COM_SHOW_ENGINE_STATUS', '0'),
('COM_SHOW_EVENTS', '0'),
('COM_SHOW_ERRORS', '0'),
('COM_SHOW_FIELDS', '0'),
('COM_SHOW_FUNCTION_STATUS', '0'),
('COM_SHOW_GRANTS', '0'),
('COM_SHOW_KEYS', '0'),
('COM_SHOW_MASTER_STATUS', '0'),
('COM_SHOW_NEW_MASTER', '0'),
('COM_SHOW_OPEN_TABLES', '0'),
('COM_SHOW_PLUGINS', '0'),
('COM_SHOW_PRIVILEGES', '0'),
('COM_SHOW_PROCEDURE_STATUS', '0'),
('COM_SHOW_PROCESSLIST', '0'),
('COM_SHOW_PROFILE', '0'),
('COM_SHOW_PROFILES', '0'),
('COM_SHOW_SLAVE_HOSTS', '0'),
('COM_SHOW_SLAVE_STATUS', '0'),
('COM_SHOW_STATUS', '0'),
('COM_SHOW_STORAGE_ENGINES', '0'),
('COM_SHOW_TABLE_STATUS', '54'),
('COM_SHOW_TABLES', '2'),
('COM_SHOW_TRIGGERS', '26'),
('COM_SHOW_VARIABLES', '1'),
('COM_SHOW_WARNINGS', '0'),
('COM_SLAVE_START', '0'),
('COM_SLAVE_STOP', '0'),
('COM_STMT_CLOSE', '0'),
('COM_STMT_EXECUTE', '0'),
('COM_STMT_FETCH', '0'),
('COM_STMT_PREPARE', '0'),
('COM_STMT_REPREPARE', '0'),
('COM_STMT_RESET', '0'),
('COM_STMT_SEND_LONG_DATA', '0'),
('COM_TRUNCATE', '0'),
('COM_UNINSTALL_PLUGIN', '0'),
('COM_UNLOCK_TABLES', '0'),
('COM_UPDATE', '0'),
('COM_UPDATE_MULTI', '0'),
('COM_XA_COMMIT', '0'),
('COM_XA_END', '0'),
('COM_XA_PREPARE', '0'),
('COM_XA_RECOVER', '0'),
('COM_XA_ROLLBACK', '0'),
('COM_XA_START', '0'),
('COMPRESSION', 'OFF'),
('CONNECTIONS', '234'),
('CREATED_TMP_DISK_TABLES', '88'),
('CREATED_TMP_FILES', '5'),
('CREATED_TMP_TABLES', '295'),
('DELAYED_ERRORS', '0'),
('DELAYED_INSERT_THREADS', '0'),
('DELAYED_WRITES', '0'),
('FLUSH_COMMANDS', '1'),
('HANDLER_COMMIT', '0'),
('HANDLER_DELETE', '0'),
('HANDLER_DISCOVER', '0'),
('HANDLER_PREPARE', '0'),
('HANDLER_READ_FIRST', '3'),
('HANDLER_READ_KEY', '0'),
('HANDLER_READ_NEXT', '0'),
('HANDLER_READ_PREV', '0'),
('HANDLER_READ_RND', '0'),
('HANDLER_READ_RND_NEXT', '2051'),
('HANDLER_ROLLBACK', '0'),
('HANDLER_SAVEPOINT', '0'),
('HANDLER_SAVEPOINT_ROLLBACK', '0'),
('HANDLER_UPDATE', '0'),
('HANDLER_WRITE', '2041'),
('INNODB_BUFFER_POOL_PAGES_DATA', '25'),
('INNODB_BUFFER_POOL_PAGES_DIRTY', '0'),
('INNODB_BUFFER_POOL_PAGES_FLUSHED', '47'),
('INNODB_BUFFER_POOL_PAGES_FREE', '486'),
('INNODB_BUFFER_POOL_PAGES_MISC', '1'),
('INNODB_BUFFER_POOL_PAGES_TOTAL', '512'),
('INNODB_BUFFER_POOL_READ_AHEAD_RND', '1'),
('INNODB_BUFFER_POOL_READ_AHEAD_SEQ', '0'),
('INNODB_BUFFER_POOL_READ_REQUESTS', '7930'),
('INNODB_BUFFER_POOL_READS', '16'),
('INNODB_BUFFER_POOL_WAIT_FREE', '0'),
('INNODB_BUFFER_POOL_WRITE_REQUESTS', '382'),
('INNODB_DATA_FSYNCS', '50'),
('INNODB_DATA_PENDING_FSYNCS', '0'),
('INNODB_DATA_PENDING_READS', '0'),
('INNODB_DATA_PENDING_WRITES', '0'),
('INNODB_DATA_READ', '2560000'),
('INNODB_DATA_READS', '33'),
('INNODB_DATA_WRITES', '90'),
('INNODB_DATA_WRITTEN', '1574400'),
('INNODB_DBLWR_PAGES_WRITTEN', '47'),
('INNODB_DBLWR_WRITES', '7'),
('INNODB_LOG_WAITS', '0'),
('INNODB_LOG_WRITE_REQUESTS', '35'),
('INNODB_LOG_WRITES', '29'),
('INNODB_OS_LOG_FSYNCS', '36'),
('INNODB_OS_LOG_PENDING_FSYNCS', '0'),
('INNODB_OS_LOG_PENDING_WRITES', '0'),
('INNODB_OS_LOG_WRITTEN', '30720'),
('INNODB_PAGE_SIZE', '16384'),
('INNODB_PAGES_CREATED', '2'),
('INNODB_PAGES_READ', '23'),
('INNODB_PAGES_WRITTEN', '47'),
('INNODB_ROW_LOCK_CURRENT_WAITS', '0'),
('INNODB_ROW_LOCK_TIME', '0'),
('INNODB_ROW_LOCK_TIME_AVG', '0'),
('INNODB_ROW_LOCK_TIME_MAX', '0'),
('INNODB_ROW_LOCK_WAITS', '0'),
('INNODB_ROWS_DELETED', '0'),
('INNODB_ROWS_INSERTED', '12'),
('INNODB_ROWS_READ', '541'),
('INNODB_ROWS_UPDATED', '0'),
('KEY_BLOCKS_NOT_FLUSHED', '0'),
('KEY_BLOCKS_UNUSED', '13380'),
('KEY_BLOCKS_USED', '16'),
('KEY_READ_REQUESTS', '231'),
('KEY_READS', '27'),
('KEY_WRITE_REQUESTS', '105'),
('KEY_WRITES', '26'),
('LAST_QUERY_COST', '10.499000'),
('MAX_USED_CONNECTIONS', '2'),
('NOT_FLUSHED_DELAYED_ROWS', '0'),
('OPEN_FILES', '100'),
('OPEN_STREAMS', '0'),
('OPEN_TABLE_DEFINITIONS', '53'),
('OPEN_TABLES', '53'),
('OPENED_FILES', '3455'),
('OPENED_TABLE_DEFINITIONS', '0'),
('OPENED_TABLES', '53'),
('PREPARED_STMT_COUNT', '0'),
('QCACHE_FREE_BLOCKS', '0'),
('QCACHE_FREE_MEMORY', '0'),
('QCACHE_HITS', '0'),
('QCACHE_INSERTS', '0'),
('QCACHE_LOWMEM_PRUNES', '0'),
('QCACHE_NOT_CACHED', '0'),
('QCACHE_QUERIES_IN_CACHE', '0'),
('QCACHE_TOTAL_BLOCKS', '0'),
('QUERIES', '2195'),
('QUESTIONS', '170'),
('RPL_STATUS', 'NULL'),
('SELECT_FULL_JOIN', '0'),
('SELECT_FULL_RANGE_JOIN', '0'),
('SELECT_RANGE', '0'),
('SELECT_RANGE_CHECK', '0'),
('SELECT_SCAN', '109'),
('SLAVE_OPEN_TEMP_TABLES', '0'),
('SLAVE_RETRIED_TRANSACTIONS', '0'),
('SLAVE_RUNNING', 'OFF'),
('SLOW_LAUNCH_THREADS', '0'),
('SLOW_QUERIES', '0'),
('SORT_MERGE_PASSES', '0'),
('SORT_RANGE', '0'),
('SORT_ROWS', '0'),
('SORT_SCAN', '0'),
('SSL_ACCEPT_RENEGOTIATES', '0'),
('SSL_ACCEPTS', '0'),
('SSL_CALLBACK_CACHE_HITS', '0'),
('SSL_CIPHER', ''),
('SSL_CIPHER_LIST', ''),
('SSL_CLIENT_CONNECTS', '0'),
('SSL_CONNECT_RENEGOTIATES', '0'),
('SSL_CTX_VERIFY_DEPTH', '0'),
('SSL_CTX_VERIFY_MODE', '0'),
('SSL_DEFAULT_TIMEOUT', '0'),
('SSL_FINISHED_ACCEPTS', '0'),
('SSL_FINISHED_CONNECTS', '0'),
('SSL_SESSION_CACHE_HITS', '0'),
('SSL_SESSION_CACHE_MISSES', '0'),
('SSL_SESSION_CACHE_MODE', 'NONE'),
('SSL_SESSION_CACHE_OVERFLOWS', '0'),
('SSL_SESSION_CACHE_SIZE', '0'),
('SSL_SESSION_CACHE_TIMEOUTS', '0'),
('SSL_SESSIONS_REUSED', '0'),
('SSL_USED_SESSION_CACHE_ENTRIES', '0'),
('SSL_VERIFY_DEPTH', '0'),
('SSL_VERIFY_MODE', '0'),
('SSL_VERSION', ''),
('TABLE_LOCKS_IMMEDIATE', '345'),
('TABLE_LOCKS_WAITED', '0'),
('TC_LOG_MAX_PAGES_USED', '0'),
('TC_LOG_PAGE_SIZE', '0'),
('TC_LOG_PAGE_WAITS', '0'),
('THREADS_CACHED', '0'),
('THREADS_CONNECTED', '1'),
('THREADS_CREATED', '233'),
('THREADS_RUNNING', '1'),
('UPTIME', '20376'),
('UPTIME_SINCE_FLUSH_STATUS', '20376');

-- --------------------------------------------------------

--
-- Table structure for table `SESSION_VARIABLES`
--

CREATE TEMPORARY TABLE `SESSION_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SESSION_VARIABLES`
--

INSERT INTO `SESSION_VARIABLES` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('MAX_PREPARED_STMT_COUNT', '16382'),
('CHARACTER_SETS_DIR', 'c:\\wamp\\bin\\mysql\\mysql5.1.53\\share\\charsets\\'),
('HAVE_CRYPT', 'NO'),
('INTERACTIVE_TIMEOUT', '28800'),
('MYISAM_REPAIR_THREADS', '1'),
('AUTOMATIC_SP_PRIVILEGES', 'ON'),
('LOG', 'OFF'),
('BINLOG_CACHE_SIZE', '32768'),
('INNODB_CONCURRENCY_TICKETS', '500'),
('BACK_LOG', '50'),
('MYISAM_STATS_METHOD', 'nulls_unequal'),
('TABLE_OPEN_CACHE', '64'),
('DELAYED_INSERT_TIMEOUT', '300'),
('MAX_HEAP_TABLE_SIZE', '16777216'),
('LOG_BIN_TRUST_ROUTINE_CREATORS', 'OFF'),
('CHARACTER_SET_CONNECTION', 'utf8'),
('SSL_CIPHER', ''),
('CHARACTER_SET_RESULTS', 'utf8'),
('BASEDIR', 'c:\\wamp\\bin\\mysql\\mysql5.1.53\\'),
('LOWER_CASE_TABLE_NAMES', '1'),
('UPDATABLE_VIEWS_WITH_LIMIT', 'YES'),
('TABLE_DEFINITION_CACHE', '256'),
('SLOW_LAUNCH_TIME', '2'),
('QUERY_ALLOC_BLOCK_SIZE', '8192'),
('INNODB_LOCK_WAIT_TIMEOUT', '50'),
('COMPLETION_TYPE', '0'),
('RELAY_LOG_INDEX', ''),
('MAX_SORT_LENGTH', '1024'),
('SQL_QUOTE_SHOW_CREATE', 'ON'),
('EVENT_SCHEDULER', 'OFF'),
('SQL_LOG_UPDATE', 'ON'),
('COLLATION_DATABASE', 'latin1_swedish_ci'),
('INNODB_USE_LEGACY_CARDINALITY_ALGORITHM', 'ON'),
('FT_MAX_WORD_LEN', '84'),
('SYSTEM_TIME_ZONE', 'E. Africa Standard Time'),
('CONCURRENT_INSERT', '1'),
('MYISAM_RECOVER_OPTIONS', 'OFF'),
('FT_BOOLEAN_SYNTAX', '+ -><()~*:""&|'),
('REPORT_HOST', ''),
('MAX_CONNECT_ERRORS', '10'),
('SSL_KEY', ''),
('FLUSH', 'OFF'),
('CHARACTER_SET_DATABASE', 'latin1'),
('DELAYED_INSERT_LIMIT', '100'),
('SLAVE_SKIP_ERRORS', 'OFF'),
('FT_QUERY_EXPANSION_LIMIT', '20'),
('INSERT_ID', '0'),
('WAIT_TIMEOUT', '28800'),
('RELAY_LOG_PURGE', 'ON'),
('READ_BUFFER_SIZE', '262144'),
('SKIP_SHOW_DATABASE', 'OFF'),
('NET_RETRY_COUNT', '10'),
('GROUP_CONCAT_MAX_LEN', '1024'),
('AUTO_INCREMENT_OFFSET', '1'),
('INNODB_LOG_BUFFER_SIZE', '1048576'),
('LANGUAGE', 'c:\\wamp\\bin\\mysql\\mysql5.1.53\\share\\english\\'),
('VERSION_COMPILE_MACHINE', 'unknown'),
('JOIN_BUFFER_SIZE', '131072'),
('INNODB_MAX_PURGE_LAG', '0'),
('CONNECT_TIMEOUT', '10'),
('TRANSACTION_PREALLOC_SIZE', '4096'),
('SQL_LOW_PRIORITY_UPDATES', 'OFF'),
('VERSION_COMPILE_OS', 'Win64'),
('INIT_FILE', ''),
('SQL_NOTES', 'ON'),
('LARGE_PAGE_SIZE', '0'),
('LOW_PRIORITY_UPDATES', 'OFF'),
('INIT_SLAVE', ''),
('REPORT_PASSWORD', ''),
('MAX_BINLOG_SIZE', '1073741824'),
('MAX_INSERT_DELAYED_THREADS', '20'),
('MAX_ERROR_COUNT', '64'),
('HAVE_COMPRESS', 'YES'),
('DELAYED_QUEUE_SIZE', '1000'),
('TRANSACTION_ALLOC_BLOCK_SIZE', '8192'),
('LOG_WARNINGS', '1'),
('THREAD_CACHE_SIZE', '0'),
('PSEUDO_THREAD_ID', '233'),
('INNODB_DOUBLEWRITE', 'ON'),
('STORAGE_ENGINE', 'MyISAM'),
('INNODB_FLUSH_METHOD', ''),
('LOWER_CASE_FILE_SYSTEM', 'ON'),
('DEFAULT_WEEK_FORMAT', '0'),
('MAX_RELAY_LOG_SIZE', '0'),
('LOG_OUTPUT', 'FILE'),
('FLUSH_TIME', '1800'),
('FT_MIN_WORD_LEN', '4'),
('COLLATION_SERVER', 'latin1_swedish_ci'),
('PROTOCOL_VERSION', '10'),
('CHARACTER_SET_SERVER', 'latin1'),
('HAVE_SYMLINK', 'YES'),
('MAX_LENGTH_FOR_SORT_DATA', '1024'),
('TIME_ZONE', 'SYSTEM'),
('MAX_TMP_TABLES', '32'),
('INNODB_TABLE_LOCKS', 'ON'),
('LOG_QUERIES_NOT_USING_INDEXES', 'OFF'),
('INNODB_AUTOEXTEND_INCREMENT', '8'),
('NET_BUFFER_LENGTH', '8192'),
('MYISAM_DATA_POINTER_SIZE', '6'),
('FT_STOPWORD_FILE', '(built-in)'),
('INNODB_THREAD_SLEEP_DELAY', '10000'),
('DELAY_KEY_WRITE', 'ON'),
('SQL_AUTO_IS_NULL', 'ON'),
('MULTI_RANGE_COUNT', '256'),
('SLAVE_TRANSACTION_RETRIES', '10'),
('LONG_QUERY_TIME', '10.000000'),
('LOG_ERROR', 'c:\\wamp\\logs\\mysql.log'),
('BULK_INSERT_BUFFER_SIZE', '8388608'),
('GENERAL_LOG', 'OFF'),
('NET_WRITE_TIMEOUT', '60'),
('TABLE_TYPE', 'MyISAM'),
('MYISAM_USE_MMAP', 'OFF'),
('QUERY_CACHE_MIN_RES_UNIT', '4096'),
('MAX_BINLOG_CACHE_SIZE', '4294963200'),
('INNODB_STATS_ON_METADATA', 'ON'),
('QUERY_CACHE_TYPE', 'ON'),
('INNODB_ROLLBACK_ON_TIMEOUT', 'OFF'),
('CHARACTER_SET_FILESYSTEM', 'binary'),
('PROFILING_HISTORY_SIZE', '15'),
('OLD_ALTER_TABLE', 'OFF'),
('INNODB_ADDITIONAL_MEM_POOL_SIZE', '1048576'),
('QUERY_PREALLOC_SIZE', '8192'),
('READ_RND_BUFFER_SIZE', '524288'),
('THREAD_HANDLING', 'one-thread-per-connection'),
('SECURE_AUTH', 'OFF'),
('BINLOG_DIRECT_NON_TRANSACTIONAL_UPDATES', 'OFF'),
('BIG_TABLES', 'OFF'),
('MAX_CONNECTIONS', '151'),
('SQL_SELECT_LIMIT', '18446744073709551615'),
('HAVE_INNODB', 'YES'),
('DATE_FORMAT', '%Y-%m-%d'),
('OLD_PASSWORDS', 'OFF'),
('READ_ONLY', 'OFF'),
('TX_ISOLATION', 'REPEATABLE-READ'),
('RAND_SEED1', ''),
('SLOW_QUERY_LOG_FILE', 'c:\\wamp\\bin\\mysql\\mysql5.1.53\\data\\Duncan-1UN7HO5D-slow.log'),
('INNODB_DATA_FILE_PATH', 'ibdata1:10M:autoextend'),
('MAX_SEEKS_FOR_KEY', '4294967295'),
('QUERY_CACHE_LIMIT', '1048576'),
('KEY_CACHE_AGE_THRESHOLD', '300'),
('PROFILING', 'OFF'),
('SSL_CERT', ''),
('QUERY_CACHE_SIZE', '0'),
('MYISAM_MAX_SORT_FILE_SIZE', '2146435072'),
('KEY_CACHE_DIVISION_LIMIT', '100'),
('THREAD_STACK', '262144'),
('GENERAL_LOG_FILE', 'c:\\wamp\\bin\\mysql\\mysql5.1.53\\data\\Duncan-1UN7HO5D.log'),
('OPEN_FILES_LIMIT', '755'),
('MYISAM_SORT_BUFFER_SIZE', '8388608'),
('SKIP_NAME_RESOLVE', 'OFF'),
('AUTO_INCREMENT_INCREMENT', '1'),
('LAST_INSERT_ID', '0'),
('TMPDIR', 'C:\\Windows\\TEMP'),
('PID_FILE', 'c:\\wamp\\bin\\mysql\\mysql5.1.53\\data\\Duncan-1UN7HO5D.pid'),
('EXPIRE_LOGS_DAYS', '0'),
('NAMED_PIPE', 'OFF'),
('HAVE_PARTITIONING', 'YES'),
('MIN_EXAMINED_ROW_LIMIT', '0'),
('FOREIGN_KEY_CHECKS', 'ON'),
('LARGE_FILES_SUPPORT', 'ON'),
('RELAY_LOG_INFO_FILE', 'relay-log.info'),
('SSL_CAPATH', ''),
('INNODB_AUTOINC_LOCK_MODE', '1'),
('VERSION_COMMENT', 'MySQL Community Server (GPL)'),
('INNODB_COMMIT_CONCURRENCY', '0'),
('OPTIMIZER_SWITCH', 'index_merge=on,index_merge_union=on,index_merge_sort_union=on,index_merge_intersection=on'),
('INNODB_MIRRORED_LOG_GROUPS', '1'),
('OPTIMIZER_PRUNE_LEVEL', '1'),
('UNIQUE_CHECKS', 'ON'),
('QUERY_CACHE_WLOCK_INVALIDATE', 'OFF'),
('VERSION', '5.1.53-community-log'),
('MAX_WRITE_LOCK_COUNT', '4294967295'),
('INNODB_SUPPORT_XA', 'ON'),
('TIMED_MUTEXES', 'OFF'),
('INNODB_SYNC_SPIN_LOOPS', '20'),
('LARGE_PAGES', 'OFF'),
('COLLATION_CONNECTION', 'utf8_general_ci'),
('LC_TIME_NAMES', 'en_US'),
('HAVE_QUERY_CACHE', 'YES'),
('SERVER_ID', '1'),
('INNODB_ADAPTIVE_HASH_INDEX', 'ON'),
('SKIP_NETWORKING', 'OFF'),
('RPL_RECOVERY_RANK', '0'),
('CHARACTER_SET_SYSTEM', 'utf8'),
('DIV_PRECISION_INCREMENT', '4'),
('INIT_CONNECT', ''),
('DATADIR', 'c:\\wamp\\bin\\mysql\\mysql5.1.53\\data\\'),
('OPTIMIZER_SEARCH_DEPTH', '62'),
('INNODB_DATA_HOME_DIR', ''),
('AUTOCOMMIT', 'ON'),
('SQL_WARNINGS', 'OFF'),
('KEY_CACHE_BLOCK_SIZE', '1024'),
('SQL_SLAVE_SKIP_COUNTER', ''),
('SQL_BIG_TABLES', 'OFF'),
('TIME_FORMAT', '%H:%i:%s'),
('TMP_TABLE_SIZE', '16777216'),
('INNODB_FORCE_RECOVERY', '0'),
('TABLE_LOCK_WAIT_TIMEOUT', '50'),
('INNODB_LOG_FILES_IN_GROUP', '2'),
('SHARED_MEMORY', 'OFF'),
('ERROR_COUNT', '0'),
('HOSTNAME', 'Duncan-1UN7HO5D'),
('HAVE_DYNAMIC_LOADING', 'YES'),
('SQL_BUFFER_RESULT', 'OFF'),
('SYNC_BINLOG', '0'),
('LOG_BIN', 'ON'),
('RELAY_LOG_SPACE_LIMIT', '0'),
('SQL_MODE', ''),
('INNODB_OPEN_FILES', '300'),
('MAX_USER_CONNECTIONS', '0'),
('OLD', 'OFF'),
('SLAVE_EXEC_MODE', 'STRICT'),
('INNODB_MAX_DIRTY_PAGES_PCT', '90'),
('SQL_MAX_JOIN_SIZE', '18446744073709551615'),
('HAVE_COMMUNITY_FEATURES', 'YES'),
('NEW', 'OFF'),
('KEY_BUFFER_SIZE', '16777216'),
('SECURE_FILE_PRIV', ''),
('HAVE_NDBCLUSTER', 'NO'),
('KEEP_FILES_ON_CREATE', 'OFF'),
('REPORT_PORT', '3306'),
('REPORT_USER', ''),
('INNODB_LOG_GROUP_HOME_DIR', '.\\'),
('ENGINE_CONDITION_PUSHDOWN', 'ON'),
('INNODB_FAST_SHUTDOWN', '1'),
('SQL_LOG_BIN', 'ON'),
('SSL_CA', ''),
('SQL_LOG_OFF', 'OFF'),
('INNODB_THREAD_CONCURRENCY', '8'),
('HAVE_CSV', 'YES'),
('SLAVE_NET_TIMEOUT', '3600'),
('SQL_SAFE_UPDATES', 'OFF'),
('INNODB_BUFFER_POOL_SIZE', '8388608'),
('PRELOAD_BUFFER_SIZE', '32768'),
('LOCAL_INFILE', 'ON'),
('SLAVE_COMPRESSED_PROTOCOL', 'OFF'),
('HAVE_RTREE_KEYS', 'YES'),
('HAVE_GEOMETRY', 'YES'),
('BINLOG_FORMAT', 'MIXED'),
('MAX_SP_RECURSION_DEPTH', '0'),
('SHARED_MEMORY_BASE_NAME', 'MYSQL'),
('RELAY_LOG', ''),
('MYISAM_MMAP_SIZE', '18446744073709551615'),
('PLUGIN_DIR', 'c:\\wamp\\bin\\mysql\\mysql5.1.53\\lib/plugin'),
('LOG_SLOW_QUERIES', 'OFF'),
('IGNORE_BUILTIN_INNODB', 'OFF'),
('TIMESTAMP', '1605442607'),
('NET_READ_TIMEOUT', '30'),
('MAX_DELAYED_THREADS', '20'),
('SYNC_FRM', 'ON'),
('DATETIME_FORMAT', '%Y-%m-%d %H:%i:%s'),
('SLOW_QUERY_LOG', 'OFF'),
('INNODB_FLUSH_LOG_AT_TRX_COMMIT', '1'),
('WARNING_COUNT', '0'),
('INNODB_FILE_IO_THREADS', '4'),
('MAX_ALLOWED_PACKET', '1048576'),
('LICENSE', 'GPL'),
('SQL_BIG_SELECTS', 'ON'),
('RANGE_ALLOC_BLOCK_SIZE', '4096'),
('INNODB_CHECKSUMS', 'ON'),
('PORT', '3306'),
('INNODB_LOCKS_UNSAFE_FOR_BINLOG', 'OFF'),
('HAVE_SSL', 'DISABLED'),
('INNODB_LOG_FILE_SIZE', '5242880'),
('LOG_BIN_TRUST_FUNCTION_CREATORS', 'OFF'),
('LOG_SLAVE_UPDATES', 'OFF'),
('MAX_JOIN_SIZE', '18446744073709551615'),
('SORT_BUFFER_SIZE', '524288'),
('HAVE_OPENSSL', 'DISABLED'),
('INNODB_FILE_PER_TABLE', 'OFF'),
('SOCKET', '/tmp/mysql.sock'),
('CHARACTER_SET_CLIENT', 'utf8'),
('RAND_SEED2', ''),
('SKIP_EXTERNAL_LOCKING', 'ON'),
('IDENTITY', '0'),
('SLAVE_LOAD_TMPDIR', 'C:\\Windows\\TEMP');

-- --------------------------------------------------------

--
-- Table structure for table `STATISTICS`
--

CREATE TEMPORARY TABLE `STATISTICS` (
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `NON_UNIQUE` bigint(1) NOT NULL DEFAULT '0',
  `INDEX_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `INDEX_NAME` varchar(64) NOT NULL DEFAULT '',
  `SEQ_IN_INDEX` bigint(2) NOT NULL DEFAULT '0',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLLATION` varchar(1) DEFAULT NULL,
  `CARDINALITY` bigint(21) DEFAULT NULL,
  `SUB_PART` bigint(3) DEFAULT NULL,
  `PACKED` varchar(10) DEFAULT NULL,
  `NULLABLE` varchar(3) NOT NULL DEFAULT '',
  `INDEX_TYPE` varchar(16) NOT NULL DEFAULT '',
  `COMMENT` varchar(16) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STATISTICS`
--

INSERT INTO `STATISTICS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `NON_UNIQUE`, `INDEX_SCHEMA`, `INDEX_NAME`, `SEQ_IN_INDEX`, `COLUMN_NAME`, `COLLATION`, `CARDINALITY`, `SUB_PART`, `PACKED`, `NULLABLE`, `INDEX_TYPE`, `COMMENT`) VALUES
(NULL, 'geotraveller', 'address', 0, 'geotraveller', 'PRIMARY', 1, 'address_id', 'A', 10, NULL, NULL, '', 'BTREE', ''),
(NULL, 'geotraveller', 'category', 0, 'geotraveller', 'PRIMARY', 1, 'service_category_id', 'A', 25, NULL, NULL, '', 'BTREE', ''),
(NULL, 'geotraveller', 'comments', 0, 'geotraveller', 'PRIMARY', 1, 'comment_id', 'A', 5, NULL, NULL, '', 'BTREE', ''),
(NULL, 'geotraveller', 'orders', 0, 'geotraveller', 'PRIMARY', 1, 'OrderId', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'geotraveller', 'services', 0, 'geotraveller', 'PRIMARY', 1, 'service_Id', 'A', 14, NULL, NULL, '', 'BTREE', ''),
(NULL, 'geotraveller', 'transactions', 0, 'geotraveller', 'PRIMARY', 1, 'transactionId', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'geotraveller', 'users', 0, 'geotraveller', 'PRIMARY', 1, 'email', 'A', 16, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'columns_priv', 0, 'mysql', 'PRIMARY', 1, 'Host', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'columns_priv', 0, 'mysql', 'PRIMARY', 2, 'Db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'columns_priv', 0, 'mysql', 'PRIMARY', 3, 'User', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'columns_priv', 0, 'mysql', 'PRIMARY', 4, 'Table_name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'columns_priv', 0, 'mysql', 'PRIMARY', 5, 'Column_name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'db', 0, 'mysql', 'PRIMARY', 1, 'Host', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'db', 0, 'mysql', 'PRIMARY', 2, 'Db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'db', 0, 'mysql', 'PRIMARY', 3, 'User', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'db', 1, 'mysql', 'User', 1, 'User', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'event', 0, 'mysql', 'PRIMARY', 1, 'db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'event', 0, 'mysql', 'PRIMARY', 2, 'name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'func', 0, 'mysql', 'PRIMARY', 1, 'name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_category', 0, 'mysql', 'PRIMARY', 1, 'help_category_id', 'A', 38, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_category', 0, 'mysql', 'name', 1, 'name', 'A', 38, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_keyword', 0, 'mysql', 'PRIMARY', 1, 'help_keyword_id', 'A', 452, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_keyword', 0, 'mysql', 'name', 1, 'name', 'A', 452, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_relation', 0, 'mysql', 'PRIMARY', 1, 'help_keyword_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_relation', 0, 'mysql', 'PRIMARY', 2, 'help_topic_id', 'A', 993, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_topic', 0, 'mysql', 'PRIMARY', 1, 'help_topic_id', 'A', 506, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'help_topic', 0, 'mysql', 'name', 1, 'name', 'A', 506, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'host', 0, 'mysql', 'PRIMARY', 1, 'Host', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'host', 0, 'mysql', 'PRIMARY', 2, 'Db', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'ndb_binlog_index', 0, 'mysql', 'PRIMARY', 1, 'epoch', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'plugin', 0, 'mysql', 'PRIMARY', 1, 'name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'proc', 0, 'mysql', 'PRIMARY', 1, 'db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'proc', 0, 'mysql', 'PRIMARY', 2, 'name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'proc', 0, 'mysql', 'PRIMARY', 3, 'type', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'procs_priv', 0, 'mysql', 'PRIMARY', 1, 'Host', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'procs_priv', 0, 'mysql', 'PRIMARY', 2, 'Db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'procs_priv', 0, 'mysql', 'PRIMARY', 3, 'User', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'procs_priv', 0, 'mysql', 'PRIMARY', 4, 'Routine_name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'procs_priv', 0, 'mysql', 'PRIMARY', 5, 'Routine_type', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'procs_priv', 1, 'mysql', 'Grantor', 1, 'Grantor', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'servers', 0, 'mysql', 'PRIMARY', 1, 'Server_name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'tables_priv', 0, 'mysql', 'PRIMARY', 1, 'Host', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'tables_priv', 0, 'mysql', 'PRIMARY', 2, 'Db', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'tables_priv', 0, 'mysql', 'PRIMARY', 3, 'User', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'tables_priv', 0, 'mysql', 'PRIMARY', 4, 'Table_name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'tables_priv', 1, 'mysql', 'Grantor', 1, 'Grantor', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone', 0, 'mysql', 'PRIMARY', 1, 'Time_zone_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone_leap_second', 0, 'mysql', 'PRIMARY', 1, 'Transition_time', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone_name', 0, 'mysql', 'PRIMARY', 1, 'Name', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone_transition', 0, 'mysql', 'PRIMARY', 1, 'Time_zone_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone_transition', 0, 'mysql', 'PRIMARY', 2, 'Transition_time', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone_transition_type', 0, 'mysql', 'PRIMARY', 1, 'Time_zone_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'time_zone_transition_type', 0, 'mysql', 'PRIMARY', 2, 'Transition_type_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'user', 0, 'mysql', 'PRIMARY', 1, 'Host', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'mysql', 'user', 0, 'mysql', 'PRIMARY', 2, 'User', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'polltest', 'aspirant', 0, 'polltest', 'PRIMARY', 1, 'asp_id', 'A', 6, NULL, NULL, '', 'BTREE', ''),
(NULL, 'polltest', 'languages', 0, 'polltest', 'PRIMARY', 1, 'lan_id', 'A', 5, NULL, NULL, '', 'BTREE', ''),
(NULL, 'polltest', 'loginusers', 0, 'polltest', 'PRIMARY', 1, 'id', 'A', 16, NULL, NULL, '', 'BTREE', ''),
(NULL, 'polltest', 'loginusers', 0, 'polltest', 'username', 1, 'username', 'A', 16, NULL, NULL, '', 'BTREE', ''),
(NULL, 'polltest', 'voters', 0, 'polltest', 'username', 1, 'username', 'A', 16, NULL, NULL, '', 'BTREE', ''),
(NULL, 'school', 'accounts', 0, 'school', 'PRIMARY', 1, 'user_id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'shoppingcart', 'internet_shop', 0, 'shoppingcart', 'PRIMARY', 1, 'id', 'A', 10, NULL, NULL, '', 'BTREE', ''),
(NULL, 'shoppingcart', 'internet_shop', 0, 'shoppingcart', 'img', 1, 'img', 'A', 10, NULL, NULL, '', 'BTREE', ''),
(NULL, 'shoppingcart', 'message', 0, 'shoppingcart', 'PRIMARY', 1, 'message_id', 'A', 15, NULL, NULL, '', 'BTREE', ''),
(NULL, 'shoppingcart', 'orders', 0, 'shoppingcart', 'PRIMARY', 1, 'id', 'A', 38, NULL, NULL, '', 'BTREE', ''),
(NULL, 'shoppingcart', 'paymentm', 0, 'shoppingcart', 'PRIMARY', 1, 'id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'shoppingcart', 'reservation', 0, 'shoppingcart', 'PRIMARY', 1, 'reservation_id', 'A', 13, NULL, NULL, '', 'BTREE', ''),
(NULL, 'shoppingcart', 'user', 0, 'shoppingcart', 'PRIMARY', 1, 'user_id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'widema', 'articles', 0, 'widema', 'PRIMARY', 1, 'AuthorId', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'widema', 'comment', 0, 'widema', 'PRIMARY', 1, 'id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'widema', 'goods', 0, 'widema', 'PRIMARY', 1, 'good_owner_id', 'A', 21, NULL, NULL, '', 'BTREE', ''),
(NULL, 'widema', 'gtype', 0, 'widema', 'PRIMARY', 1, 'good_type_id', 'A', 7, NULL, NULL, '', 'BTREE', ''),
(NULL, 'widema', 'ideas', 0, 'widema', 'PRIMARY', 1, 'idea_owner_id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'widema', 'items', 0, 'widema', 'PRIMARY', 1, 'prod_id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'widema', 'itype', 0, 'widema', 'PRIMARY', 1, 'idea_type_id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'widema', 'products', 0, 'widema', 'PRIMARY', 1, 'id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'widema', 'services', 0, 'widema', 'PRIMARY', 1, 'service_owner_Id', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'widema', 'stype', 0, 'widema', 'PRIMARY', 1, 'service_type_id', 'A', 7, NULL, NULL, '', 'BTREE', ''),
(NULL, 'widema', 'users', 0, 'widema', 'PRIMARY', 1, 'idNumber', 'A', 54, NULL, NULL, '', 'BTREE', '');

-- --------------------------------------------------------

--
-- Table structure for table `TABLES`
--

CREATE TEMPORARY TABLE `TABLES` (
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `ENGINE` varchar(64) DEFAULT NULL,
  `VERSION` bigint(21) unsigned DEFAULT NULL,
  `ROW_FORMAT` varchar(10) DEFAULT NULL,
  `TABLE_ROWS` bigint(21) unsigned DEFAULT NULL,
  `AVG_ROW_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_FREE` bigint(21) unsigned DEFAULT NULL,
  `AUTO_INCREMENT` bigint(21) unsigned DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `TABLE_COLLATION` varchar(32) DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `CREATE_OPTIONS` varchar(255) DEFAULT NULL,
  `TABLE_COMMENT` varchar(80) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLES`
--

INSERT INTO `TABLES` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `TABLE_TYPE`, `ENGINE`, `VERSION`, `ROW_FORMAT`, `TABLE_ROWS`, `AVG_ROW_LENGTH`, `DATA_LENGTH`, `MAX_DATA_LENGTH`, `INDEX_LENGTH`, `DATA_FREE`, `AUTO_INCREMENT`, `CREATE_TIME`, `UPDATE_TIME`, `CHECK_TIME`, `TABLE_COLLATION`, `CHECKSUM`, `CREATE_OPTIONS`, `TABLE_COMMENT`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 384, 0, 16434816, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=43690', ''),
(NULL, 'information_schema', 'COLLATIONS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 231, 0, 16704765, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=72628', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 195, 0, 16357770, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=86037', ''),
(NULL, 'information_schema', 'COLUMNS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2020-11-15 15:16:47', '2020-11-15 15:16:47', NULL, 'utf8_general_ci', NULL, 'max_rows=4560', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2565, 0, 16757145, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6540', ''),
(NULL, 'information_schema', 'ENGINES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 490, 0, 16574250, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=34239', ''),
(NULL, 'information_schema', 'EVENTS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2020-11-15 15:16:47', '2020-11-15 15:16:47', NULL, 'utf8_general_ci', NULL, 'max_rows=618', ''),
(NULL, 'information_schema', 'FILES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2677, 0, 16758020, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6267', ''),
(NULL, 'information_schema', 'GLOBAL_STATUS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 16755036, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=5133', ''),
(NULL, 'information_schema', 'GLOBAL_VARIABLES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 16755036, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=5133', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 4637, 0, 16762755, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=3618', ''),
(NULL, 'information_schema', 'PARTITIONS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2020-11-15 15:16:47', '2020-11-15 15:16:47', NULL, 'utf8_general_ci', NULL, 'max_rows=5612', ''),
(NULL, 'information_schema', 'PLUGINS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2020-11-15 15:16:47', '2020-11-15 15:16:47', NULL, 'utf8_general_ci', NULL, 'max_rows=13025', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2020-11-15 15:16:47', '2020-11-15 15:16:47', NULL, 'utf8_general_ci', NULL, 'max_rows=23899', ''),
(NULL, 'information_schema', 'PROFILING', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 308, 0, 16562084, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=54471', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 4814, 0, 16767162, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=3485', ''),
(NULL, 'information_schema', 'ROUTINES', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2020-11-15 15:16:47', '2020-11-15 15:16:47', NULL, 'utf8_general_ci', NULL, 'max_rows=588', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3464, 0, 16738048, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=4843', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2179, 0, 16736899, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=7699', ''),
(NULL, 'information_schema', 'SESSION_STATUS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 16755036, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=5133', ''),
(NULL, 'information_schema', 'SESSION_VARIABLES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 16755036, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=5133', ''),
(NULL, 'information_schema', 'STATISTICS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2679, 0, 16770540, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6262', ''),
(NULL, 'information_schema', 'TABLES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3545, 0, 16743035, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=4732', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2504, 0, 16721712, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=6700', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2372, 0, 16748692, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=7073', ''),
(NULL, 'information_schema', 'TRIGGERS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2020-11-15 15:16:47', '2020-11-15 15:16:47', NULL, 'utf8_general_ci', NULL, 'max_rows=569', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 1986, 0, 16726092, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=8447', ''),
(NULL, 'information_schema', 'VIEWS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2020-11-15 15:16:47', '2020-11-15 15:16:47', NULL, 'utf8_general_ci', NULL, 'max_rows=6932', ''),
(NULL, 'geotraveller', 'address', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 10, 39, 428, 281474976710655, 2048, 36, 12, '2020-10-16 13:51:05', '2020-11-14 17:17:27', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'geotraveller', 'category', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 25, 43, 1088, 281474976710655, 2048, 0, 32, '2020-11-04 18:33:45', '2020-11-15 11:17:38', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'geotraveller', 'comments', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 5, 56, 360, 281474976710655, 2048, 80, 8, '2020-11-07 14:34:49', '2020-11-14 14:29:49', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'geotraveller', 'orders', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2020-10-16 13:51:05', '2020-10-16 13:51:05', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'geotraveller', 'services', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 14, 80, 1240, 281474976710655, 2048, 116, 18, '2020-11-07 15:45:53', '2020-11-14 19:15:31', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'geotraveller', 'transactions', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2020-10-16 13:51:05', '2020-10-16 13:51:05', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'geotraveller', 'users', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 16, 129, 2440, 281474976710655, 2048, 372, NULL, '2020-10-16 13:51:05', '2020-11-14 19:05:24', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'mysql', 'columns_priv', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 227994731135631359, 4096, 0, NULL, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, 'utf8_bin', NULL, '', 'Column privileges'),
(NULL, 'mysql', 'db', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 2, 440, 880, 123848989752688639, 5120, 0, NULL, '2010-11-03 17:22:43', '2010-11-25 01:00:18', '2010-11-03 17:22:44', 'utf8_bin', NULL, '', 'Database privileges'),
(NULL, 'mysql', 'event', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 2048, 0, NULL, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, 'utf8_general_ci', NULL, '', 'Events'),
(NULL, 'mysql', 'func', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 162974011515469823, 1024, 0, NULL, '2010-11-03 17:22:43', '2010-11-25 01:00:18', NULL, 'utf8_bin', NULL, '', 'User defined functions'),
(NULL, 'mysql', 'general_log', 'BASE TABLE', 'CSV', 10, 'Dynamic', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, '', 'General log'),
(NULL, 'mysql', 'help_category', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 38, 581, 22078, 163536961468891135, 3072, 0, NULL, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, 'utf8_general_ci', NULL, '', 'help categories'),
(NULL, 'mysql', 'help_keyword', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 452, 197, 89044, 55450570411999231, 16384, 0, NULL, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, 'utf8_general_ci', NULL, '', 'help keywords'),
(NULL, 'mysql', 'help_relation', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 993, 9, 8937, 2533274790395903, 17408, 0, NULL, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, 'utf8_general_ci', NULL, '', 'keyword-topic relation'),
(NULL, 'mysql', 'help_topic', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 506, 847, 428880, 281474976710655, 20480, 0, NULL, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, 'utf8_general_ci', NULL, '', 'help topics'),
(NULL, 'mysql', 'host', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 110056715893866495, 2048, 0, NULL, '2010-11-03 17:22:43', '2010-11-25 01:00:18', NULL, 'utf8_bin', NULL, '', 'Host privileges;  Merged with database privileges'),
(NULL, 'mysql', 'ndb_binlog_index', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'mysql', 'plugin', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 162411061562048511, 1024, 0, NULL, '2010-11-03 17:22:43', '2010-11-25 01:00:18', NULL, 'utf8_bin', NULL, '', 'MySQL plugins'),
(NULL, 'mysql', 'proc', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 2048, 0, NULL, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, 'utf8_general_ci', NULL, '', 'Stored Procedures'),
(NULL, 'mysql', 'procs_priv', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 239253730204057599, 4096, 0, NULL, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, 'utf8_bin', NULL, '', 'Procedure privileges'),
(NULL, 'mysql', 'servers', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 433752939111120895, 1024, 0, NULL, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, 'utf8_general_ci', NULL, '', 'MySQL Foreign Servers table'),
(NULL, 'mysql', 'slow_log', 'BASE TABLE', 'CSV', 10, 'Dynamic', 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, '', 'Slow log'),
(NULL, 'mysql', 'tables_priv', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 239535205180768255, 4096, 0, NULL, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, 'utf8_bin', NULL, '', 'Table privileges'),
(NULL, 'mysql', 'time_zone', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 1970324836974591, 1024, 0, 1, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, 'utf8_general_ci', NULL, '', 'Time zones'),
(NULL, 'mysql', 'time_zone_leap_second', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 3659174697238527, 1024, 0, NULL, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, 'utf8_general_ci', NULL, '', 'Leap seconds information for time zones'),
(NULL, 'mysql', 'time_zone_name', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 55450570411999231, 1024, 0, NULL, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, 'utf8_general_ci', NULL, '', 'Time zone names'),
(NULL, 'mysql', 'time_zone_transition', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 4785074604081151, 1024, 0, NULL, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, 'utf8_general_ci', NULL, '', 'Time zone transitions'),
(NULL, 'mysql', 'time_zone_transition_type', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 10696049115004927, 1024, 0, NULL, '2010-11-03 17:22:44', '2010-11-25 01:00:18', NULL, 'utf8_general_ci', NULL, '', 'Time zone transition types'),
(NULL, 'mysql', 'user', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 3, 50, 152, 281474976710655, 2048, 0, NULL, '2010-11-03 17:22:43', '2010-11-25 01:00:18', NULL, 'utf8_bin', NULL, '', 'Users and global privileges'),
(NULL, 'polltest', 'aspirant', 'BASE TABLE', 'InnoDB', 10, 'Compact', 6, 2730, 16384, 0, 0, 4194304, 7, '2020-11-15 11:32:50', NULL, NULL, 'utf8_general_ci', NULL, '', ''),
(NULL, 'polltest', 'languages', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 5, 28, 140, 281474976710655, 2048, 0, 6, '2020-11-15 11:32:51', '2020-11-15 11:32:51', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'polltest', 'loginusers', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 16, 64, 1032, 281474976710655, 3072, 0, 56, '2020-11-15 11:32:51', '2020-11-15 11:34:23', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'polltest', 'voters', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 16, 41, 664, 281474976710655, 2048, 0, NULL, '2020-11-15 11:32:51', '2020-11-15 11:34:23', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'school', 'accounts', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 20, 20, 281474976710655, 2048, 0, NULL, '2020-10-27 09:20:18', '2020-10-27 09:20:55', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'school', 'users', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 104, 104, 281474976710655, 1024, 0, NULL, '2020-10-27 09:23:32', '2020-10-27 09:24:16', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'shoppingcart', 'internet_shop', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 10, 62, 624, 281474976710655, 3072, 0, 31, '2019-11-28 16:11:50', '2019-11-30 18:16:43', NULL, 'utf8_unicode_ci', NULL, '', ''),
(NULL, 'shoppingcart', 'message', 'BASE TABLE', 'InnoDB', 10, 'Compact', 15, 1092, 16384, 0, 0, 4194304, 85, '2019-11-28 16:11:50', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'shoppingcart', 'orders', 'BASE TABLE', 'InnoDB', 10, 'Compact', 38, 431, 16384, 0, 0, 4194304, 75, '2019-11-28 16:11:50', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'shoppingcart', 'paymentm', 'BASE TABLE', 'InnoDB', 10, 'Compact', 3, 5461, 16384, 0, 0, 4194304, 4, '2019-11-28 16:11:50', NULL, NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'shoppingcart', 'reservation', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 13, 117, 1524, 281474976710655, 2048, 0, 33, '2019-11-28 16:11:50', '2020-09-27 07:04:31', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'shoppingcart', 'user', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 3, 32, 96, 281474976710655, 2048, 0, 4, '2019-11-28 16:11:50', '2020-10-29 21:48:15', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'widema', 'articles', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2019-10-24 17:17:56', '2019-10-24 17:17:56', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'widema', 'comment', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2019-12-01 21:16:30', '2019-12-01 21:16:30', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'widema', 'goods', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 21, 85, 1804, 281474976710655, 2048, 0, NULL, '2019-11-17 22:35:39', '2020-10-22 10:43:34', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'widema', 'gtype', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 7, 20, 144, 281474976710655, 2048, 0, 8, '2019-10-27 23:12:20', '2019-10-27 23:16:39', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'widema', 'ideas', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 56, 56, 281474976710655, 2048, 0, NULL, '2019-10-24 17:17:56', '2019-10-26 19:37:00', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'widema', 'items', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 3, 37, 184, 281474976710655, 2048, 72, 8, '2019-11-20 19:46:51', '2020-10-27 09:46:38', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'widema', 'itype', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 3, 26, 80, 281474976710655, 2048, 0, 4, '2019-10-24 17:17:56', '2019-10-24 17:26:28', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'widema', 'products', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 60, 100, 281474976710655, 2048, 40, NULL, '2019-11-18 06:04:13', '2020-09-27 07:26:01', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'widema', 'services', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 2, 66, 132, 281474976710655, 2048, 0, NULL, '2020-02-06 01:46:52', '2020-02-06 01:46:52', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'widema', 'stype', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 7, 23, 188, 281474976710655, 2048, 24, 9, '2019-10-24 17:17:56', '2019-10-24 17:35:57', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'widema', 'users', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 54, 85, 4608, 281474976710655, 2048, 0, NULL, '2019-10-31 21:39:11', '2020-10-11 07:50:31', NULL, 'latin1_swedish_ci', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_CONSTRAINTS`
--

CREATE TEMPORARY TABLE `TABLE_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) DEFAULT NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_TYPE` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE_CONSTRAINTS`
--

INSERT INTO `TABLE_CONSTRAINTS` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_SCHEMA`, `TABLE_NAME`, `CONSTRAINT_TYPE`) VALUES
(NULL, 'geotraveller', 'PRIMARY', 'geotraveller', 'address', 'PRIMARY KEY'),
(NULL, 'geotraveller', 'PRIMARY', 'geotraveller', 'category', 'PRIMARY KEY'),
(NULL, 'geotraveller', 'PRIMARY', 'geotraveller', 'comments', 'PRIMARY KEY'),
(NULL, 'geotraveller', 'PRIMARY', 'geotraveller', 'orders', 'PRIMARY KEY'),
(NULL, 'geotraveller', 'PRIMARY', 'geotraveller', 'services', 'PRIMARY KEY'),
(NULL, 'geotraveller', 'PRIMARY', 'geotraveller', 'transactions', 'PRIMARY KEY'),
(NULL, 'geotraveller', 'PRIMARY', 'geotraveller', 'users', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'columns_priv', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'db', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'event', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'func', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'help_category', 'PRIMARY KEY'),
(NULL, 'mysql', 'name', 'mysql', 'help_category', 'UNIQUE'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'help_keyword', 'PRIMARY KEY'),
(NULL, 'mysql', 'name', 'mysql', 'help_keyword', 'UNIQUE'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'help_relation', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'help_topic', 'PRIMARY KEY'),
(NULL, 'mysql', 'name', 'mysql', 'help_topic', 'UNIQUE'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'host', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'ndb_binlog_index', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'plugin', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'proc', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'procs_priv', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'servers', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'tables_priv', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'time_zone', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'time_zone_leap_second', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'time_zone_name', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'time_zone_transition', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'time_zone_transition_type', 'PRIMARY KEY'),
(NULL, 'mysql', 'PRIMARY', 'mysql', 'user', 'PRIMARY KEY'),
(NULL, 'polltest', 'PRIMARY', 'polltest', 'aspirant', 'PRIMARY KEY'),
(NULL, 'polltest', 'PRIMARY', 'polltest', 'languages', 'PRIMARY KEY'),
(NULL, 'polltest', 'PRIMARY', 'polltest', 'loginusers', 'PRIMARY KEY'),
(NULL, 'polltest', 'username', 'polltest', 'loginusers', 'UNIQUE'),
(NULL, 'polltest', 'username', 'polltest', 'voters', 'UNIQUE'),
(NULL, 'school', 'PRIMARY', 'school', 'accounts', 'PRIMARY KEY'),
(NULL, 'shoppingcart', 'PRIMARY', 'shoppingcart', 'internet_shop', 'PRIMARY KEY'),
(NULL, 'shoppingcart', 'img', 'shoppingcart', 'internet_shop', 'UNIQUE'),
(NULL, 'shoppingcart', 'PRIMARY', 'shoppingcart', 'message', 'PRIMARY KEY'),
(NULL, 'shoppingcart', 'PRIMARY', 'shoppingcart', 'orders', 'PRIMARY KEY'),
(NULL, 'shoppingcart', 'PRIMARY', 'shoppingcart', 'paymentm', 'PRIMARY KEY'),
(NULL, 'shoppingcart', 'PRIMARY', 'shoppingcart', 'reservation', 'PRIMARY KEY'),
(NULL, 'shoppingcart', 'PRIMARY', 'shoppingcart', 'user', 'PRIMARY KEY'),
(NULL, 'widema', 'PRIMARY', 'widema', 'articles', 'PRIMARY KEY'),
(NULL, 'widema', 'PRIMARY', 'widema', 'comment', 'PRIMARY KEY'),
(NULL, 'widema', 'PRIMARY', 'widema', 'goods', 'PRIMARY KEY'),
(NULL, 'widema', 'PRIMARY', 'widema', 'gtype', 'PRIMARY KEY'),
(NULL, 'widema', 'PRIMARY', 'widema', 'ideas', 'PRIMARY KEY'),
(NULL, 'widema', 'PRIMARY', 'widema', 'items', 'PRIMARY KEY'),
(NULL, 'widema', 'PRIMARY', 'widema', 'itype', 'PRIMARY KEY'),
(NULL, 'widema', 'PRIMARY', 'widema', 'products', 'PRIMARY KEY'),
(NULL, 'widema', 'PRIMARY', 'widema', 'services', 'PRIMARY KEY'),
(NULL, 'widema', 'PRIMARY', 'widema', 'stype', 'PRIMARY KEY'),
(NULL, 'widema', 'PRIMARY', 'widema', 'users', 'PRIMARY KEY');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_PRIVILEGES`
--

CREATE TEMPORARY TABLE `TABLE_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE_PRIVILEGES`
--


-- --------------------------------------------------------

--
-- Table structure for table `TRIGGERS`
--

CREATE TEMPORARY TABLE `TRIGGERS` (
  `TRIGGER_CATALOG` varchar(512) DEFAULT NULL,
  `TRIGGER_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TRIGGER_NAME` varchar(64) NOT NULL DEFAULT '',
  `EVENT_MANIPULATION` varchar(6) NOT NULL DEFAULT '',
  `EVENT_OBJECT_CATALOG` varchar(512) DEFAULT NULL,
  `EVENT_OBJECT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `EVENT_OBJECT_TABLE` varchar(64) NOT NULL DEFAULT '',
  `ACTION_ORDER` bigint(4) NOT NULL DEFAULT '0',
  `ACTION_CONDITION` longtext,
  `ACTION_STATEMENT` longtext NOT NULL,
  `ACTION_ORIENTATION` varchar(9) NOT NULL DEFAULT '',
  `ACTION_TIMING` varchar(6) NOT NULL DEFAULT '',
  `ACTION_REFERENCE_OLD_TABLE` varchar(64) DEFAULT NULL,
  `ACTION_REFERENCE_NEW_TABLE` varchar(64) DEFAULT NULL,
  `ACTION_REFERENCE_OLD_ROW` varchar(3) NOT NULL DEFAULT '',
  `ACTION_REFERENCE_NEW_ROW` varchar(3) NOT NULL DEFAULT '',
  `CREATED` datetime DEFAULT NULL,
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TRIGGERS`
--


-- --------------------------------------------------------

--
-- Table structure for table `USER_PRIVILEGES`
--

CREATE TEMPORARY TABLE `USER_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_PRIVILEGES`
--

INSERT INTO `USER_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''root''@''localhost''', NULL, 'SELECT', 'YES'),
('''root''@''localhost''', NULL, 'INSERT', 'YES'),
('''root''@''localhost''', NULL, 'UPDATE', 'YES'),
('''root''@''localhost''', NULL, 'DELETE', 'YES'),
('''root''@''localhost''', NULL, 'CREATE', 'YES'),
('''root''@''localhost''', NULL, 'DROP', 'YES'),
('''root''@''localhost''', NULL, 'RELOAD', 'YES'),
('''root''@''localhost''', NULL, 'SHUTDOWN', 'YES'),
('''root''@''localhost''', NULL, 'PROCESS', 'YES'),
('''root''@''localhost''', NULL, 'FILE', 'YES'),
('''root''@''localhost''', NULL, 'REFERENCES', 'YES'),
('''root''@''localhost''', NULL, 'INDEX', 'YES'),
('''root''@''localhost''', NULL, 'ALTER', 'YES'),
('''root''@''localhost''', NULL, 'SHOW DATABASES', 'YES'),
('''root''@''localhost''', NULL, 'SUPER', 'YES'),
('''root''@''localhost''', NULL, 'CREATE TEMPORARY TABLES', 'YES'),
('''root''@''localhost''', NULL, 'LOCK TABLES', 'YES'),
('''root''@''localhost''', NULL, 'EXECUTE', 'YES'),
('''root''@''localhost''', NULL, 'REPLICATION SLAVE', 'YES'),
('''root''@''localhost''', NULL, 'REPLICATION CLIENT', 'YES'),
('''root''@''localhost''', NULL, 'CREATE VIEW', 'YES'),
('''root''@''localhost''', NULL, 'SHOW VIEW', 'YES'),
('''root''@''localhost''', NULL, 'CREATE ROUTINE', 'YES'),
('''root''@''localhost''', NULL, 'ALTER ROUTINE', 'YES'),
('''root''@''localhost''', NULL, 'CREATE USER', 'YES'),
('''root''@''localhost''', NULL, 'EVENT', 'YES'),
('''root''@''localhost''', NULL, 'TRIGGER', 'YES'),
('''root''@''127.0.0.1''', NULL, 'SELECT', 'YES'),
('''root''@''127.0.0.1''', NULL, 'INSERT', 'YES'),
('''root''@''127.0.0.1''', NULL, 'UPDATE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'DELETE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'CREATE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'DROP', 'YES'),
('''root''@''127.0.0.1''', NULL, 'RELOAD', 'YES'),
('''root''@''127.0.0.1''', NULL, 'SHUTDOWN', 'YES'),
('''root''@''127.0.0.1''', NULL, 'PROCESS', 'YES'),
('''root''@''127.0.0.1''', NULL, 'FILE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'REFERENCES', 'YES'),
('''root''@''127.0.0.1''', NULL, 'INDEX', 'YES'),
('''root''@''127.0.0.1''', NULL, 'ALTER', 'YES'),
('''root''@''127.0.0.1''', NULL, 'SHOW DATABASES', 'YES'),
('''root''@''127.0.0.1''', NULL, 'SUPER', 'YES'),
('''root''@''127.0.0.1''', NULL, 'CREATE TEMPORARY TABLES', 'YES'),
('''root''@''127.0.0.1''', NULL, 'LOCK TABLES', 'YES'),
('''root''@''127.0.0.1''', NULL, 'EXECUTE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'REPLICATION SLAVE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'REPLICATION CLIENT', 'YES'),
('''root''@''127.0.0.1''', NULL, 'CREATE VIEW', 'YES'),
('''root''@''127.0.0.1''', NULL, 'SHOW VIEW', 'YES'),
('''root''@''127.0.0.1''', NULL, 'CREATE ROUTINE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'ALTER ROUTINE', 'YES'),
('''root''@''127.0.0.1''', NULL, 'CREATE USER', 'YES'),
('''root''@''127.0.0.1''', NULL, 'EVENT', 'YES'),
('''root''@''127.0.0.1''', NULL, 'TRIGGER', 'YES'),
('''''@''localhost''', NULL, 'USAGE', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `VIEWS`
--

CREATE TEMPORARY TABLE `VIEWS` (
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VIEW_DEFINITION` longtext NOT NULL,
  `CHECK_OPTION` varchar(8) NOT NULL DEFAULT '',
  `IS_UPDATABLE` varchar(3) NOT NULL DEFAULT '',
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `SECURITY_TYPE` varchar(7) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `VIEWS`
--

--
-- Database: `mysql`
--
CREATE DATABASE `mysql` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mysql`;

-- --------------------------------------------------------

--
-- Table structure for table `columns_priv`
--

CREATE TABLE IF NOT EXISTS `columns_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Column_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`,`Column_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column privileges';

--
-- Dumping data for table `columns_priv`
--


-- --------------------------------------------------------

--
-- Table structure for table `db`
--

CREATE TABLE IF NOT EXISTS `db` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`,`User`),
  KEY `User` (`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database privileges';

--
-- Dumping data for table `db`
--

INSERT INTO `db` (`Host`, `Db`, `User`, `Select_priv`, `Insert_priv`, `Update_priv`, `Delete_priv`, `Create_priv`, `Drop_priv`, `Grant_priv`, `References_priv`, `Index_priv`, `Alter_priv`, `Create_tmp_table_priv`, `Lock_tables_priv`, `Create_view_priv`, `Show_view_priv`, `Create_routine_priv`, `Alter_routine_priv`, `Execute_priv`, `Event_priv`, `Trigger_priv`) VALUES
('%', 'test', '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y'),
('%', 'test\\_%', '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'Y', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `body` longblob NOT NULL,
  `definer` char(77) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `execute_at` datetime DEFAULT NULL,
  `interval_value` int(11) DEFAULT NULL,
  `interval_field` enum('YEAR','QUARTER','MONTH','DAY','HOUR','MINUTE','WEEK','SECOND','MICROSECOND','YEAR_MONTH','DAY_HOUR','DAY_MINUTE','DAY_SECOND','HOUR_MINUTE','HOUR_SECOND','MINUTE_SECOND','DAY_MICROSECOND','HOUR_MICROSECOND','MINUTE_MICROSECOND','SECOND_MICROSECOND') DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_executed` datetime DEFAULT NULL,
  `starts` datetime DEFAULT NULL,
  `ends` datetime DEFAULT NULL,
  `status` enum('ENABLED','DISABLED','SLAVESIDE_DISABLED') NOT NULL DEFAULT 'ENABLED',
  `on_completion` enum('DROP','PRESERVE') NOT NULL DEFAULT 'DROP',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH') NOT NULL DEFAULT '',
  `comment` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `originator` int(10) unsigned NOT NULL,
  `time_zone` char(64) CHARACTER SET latin1 NOT NULL DEFAULT 'SYSTEM',
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob,
  PRIMARY KEY (`db`,`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Events';

--
-- Dumping data for table `event`
--


-- --------------------------------------------------------

--
-- Table structure for table `func`
--

CREATE TABLE IF NOT EXISTS `func` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ret` tinyint(1) NOT NULL DEFAULT '0',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  `type` enum('function','aggregate') CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User defined functions';

--
-- Dumping data for table `func`
--


-- --------------------------------------------------------

--
-- Table structure for table `general_log`
--

CREATE TABLE IF NOT EXISTS `general_log` (
  `event_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_host` mediumtext NOT NULL,
  `thread_id` int(11) NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `command_type` varchar(64) NOT NULL,
  `argument` mediumtext NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='General log';

--
-- Dumping data for table `general_log`
--


-- --------------------------------------------------------

--
-- Table structure for table `help_category`
--

CREATE TABLE IF NOT EXISTS `help_category` (
  `help_category_id` smallint(5) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `parent_category_id` smallint(5) unsigned DEFAULT NULL,
  `url` char(128) NOT NULL,
  PRIMARY KEY (`help_category_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help categories';

--
-- Dumping data for table `help_category`
--

INSERT INTO `help_category` (`help_category_id`, `name`, `parent_category_id`, `url`) VALUES
(1, 'Geographic', 0, ''),
(2, 'Polygon properties', 33, ''),
(3, 'WKT', 33, ''),
(4, 'Numeric Functions', 37, ''),
(5, 'Plugins', 34, ''),
(6, 'MBR', 33, ''),
(7, 'Control flow functions', 37, ''),
(8, 'Transactions', 34, ''),
(9, 'Help Metadata', 34, ''),
(10, 'Account Management', 34, ''),
(11, 'Point properties', 33, ''),
(12, 'Encryption Functions', 37, ''),
(13, 'LineString properties', 33, ''),
(14, 'Logical operators', 37, ''),
(15, 'Miscellaneous Functions', 37, ''),
(16, 'Functions and Modifiers for Use with GROUP BY', 34, ''),
(17, 'Information Functions', 37, ''),
(18, 'Comparison operators', 37, ''),
(19, 'Bit Functions', 37, ''),
(20, 'Table Maintenance', 34, ''),
(21, 'User-Defined Functions', 34, ''),
(22, 'Data Types', 34, ''),
(23, 'Compound Statements', 34, ''),
(24, 'Geometry constructors', 33, ''),
(25, 'GeometryCollection properties', 1, ''),
(26, 'Administration', 34, ''),
(27, 'Data Manipulation', 34, ''),
(28, 'Utility', 34, ''),
(29, 'Language Structure', 34, ''),
(30, 'Geometry relations', 33, ''),
(31, 'Date and Time Functions', 37, ''),
(32, 'WKB', 33, ''),
(33, 'Geographic Features', 34, ''),
(34, 'Contents', 0, ''),
(35, 'Geometry properties', 33, ''),
(36, 'String Functions', 37, ''),
(37, 'Functions', 34, ''),
(38, 'Data Definition', 34, '');

-- --------------------------------------------------------

--
-- Table structure for table `help_keyword`
--

CREATE TABLE IF NOT EXISTS `help_keyword` (
  `help_keyword_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  PRIMARY KEY (`help_keyword_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help keywords';

--
-- Dumping data for table `help_keyword`
--

INSERT INTO `help_keyword` (`help_keyword_id`, `name`) VALUES
(0, 'JOIN'),
(1, 'HOST'),
(2, 'REPEAT'),
(3, 'SERIALIZABLE'),
(4, 'REPLACE'),
(5, 'AT'),
(6, 'SCHEDULE'),
(7, 'RETURNS'),
(8, 'STARTS'),
(9, 'MASTER_SSL_CA'),
(10, 'NCHAR'),
(11, 'COLUMNS'),
(12, 'COMPLETION'),
(13, 'WORK'),
(14, 'DATETIME'),
(15, 'MODE'),
(16, 'OPEN'),
(17, 'INTEGER'),
(18, 'ESCAPE'),
(19, 'VALUE'),
(20, 'MASTER_SSL_VERIFY_SERVER_CERT'),
(21, 'SQL_BIG_RESULT'),
(22, 'DROP'),
(23, 'GEOMETRYCOLLECTIONFROMWKB'),
(24, 'EVENTS'),
(25, 'MONTH'),
(26, 'INFO'),
(27, 'PROFILES'),
(28, 'DUPLICATE'),
(29, 'REPLICATION'),
(30, 'UNLOCK'),
(31, 'INNODB'),
(32, 'YEAR_MONTH'),
(33, 'SUBJECT'),
(34, 'PREPARE'),
(35, 'LOCK'),
(36, 'NDB'),
(37, 'CHECK'),
(38, 'FULL'),
(39, 'INT4'),
(40, 'BY'),
(41, 'NO'),
(42, 'MINUTE'),
(43, 'PARTITION'),
(44, 'DATA'),
(45, 'DAY'),
(46, 'SHARE'),
(47, 'REAL'),
(48, 'SEPARATOR'),
(49, 'MASTER_HEARTBEAT_PERIOD'),
(50, 'DELETE'),
(51, 'ON'),
(52, 'CONNECTION'),
(53, 'CLOSE'),
(54, 'X509'),
(55, 'USE'),
(56, 'WHERE'),
(57, 'PRIVILEGES'),
(58, 'SPATIAL'),
(59, 'EVENT'),
(60, 'SUPER'),
(61, 'SQL_BUFFER_RESULT'),
(62, 'IGNORE'),
(63, 'QUICK'),
(64, 'SIGNED'),
(65, 'OFFLINE'),
(66, 'SECURITY'),
(67, 'AUTOEXTEND_SIZE'),
(68, 'NDBCLUSTER'),
(69, 'POLYGONFROMWKB'),
(70, 'FALSE'),
(71, 'LEVEL'),
(72, 'FORCE'),
(73, 'BINARY'),
(74, 'TO'),
(75, 'CHANGE'),
(76, 'CURRENT_USER'),
(77, 'HOUR_MINUTE'),
(78, 'UPDATE'),
(79, 'PRESERVE'),
(80, 'INTO'),
(81, 'FEDERATED'),
(82, 'VARYING'),
(83, 'MAX_SIZE'),
(84, 'HOUR_SECOND'),
(85, 'VARIABLE'),
(86, 'ROLLBACK'),
(87, 'PROCEDURE'),
(88, 'TIMESTAMP'),
(89, 'IMPORT'),
(90, 'AGAINST'),
(91, 'CHECKSUM'),
(92, 'COUNT'),
(93, 'LONGBINARY'),
(94, 'THEN'),
(95, 'INSERT'),
(96, 'ENGINES'),
(97, 'HANDLER'),
(98, 'PORT'),
(99, 'DAY_SECOND'),
(100, 'EXISTS'),
(101, 'MUTEX'),
(102, 'HELP_DATE'),
(103, 'RELEASE'),
(104, 'BOOLEAN'),
(105, 'MOD'),
(106, 'DEFAULT'),
(107, 'TYPE'),
(108, 'NO_WRITE_TO_BINLOG'),
(109, 'OPTIMIZE'),
(110, 'RESET'),
(111, 'ITERATE'),
(112, 'INSTALL'),
(113, 'DO'),
(114, 'BIGINT'),
(115, 'SET'),
(116, 'ISSUER'),
(117, 'DATE'),
(118, 'STATUS'),
(119, 'FULLTEXT'),
(120, 'COMMENT'),
(121, 'MASTER_CONNECT_RETRY'),
(122, 'INNER'),
(123, 'STOP'),
(124, 'MASTER_LOG_FILE'),
(125, 'MRG_MYISAM'),
(126, 'PRECISION'),
(127, 'REQUIRE'),
(128, 'TRAILING'),
(129, 'PARTITIONS'),
(130, 'LONG'),
(131, 'OPTION'),
(132, 'REORGANIZE'),
(133, 'ELSE'),
(134, 'DEALLOCATE'),
(135, 'IO_THREAD'),
(136, 'CASE'),
(137, 'CIPHER'),
(138, 'CONTINUE'),
(139, 'FROM'),
(140, 'READ'),
(141, 'LEFT'),
(142, 'ELSEIF'),
(143, 'MINUTE_SECOND'),
(144, 'COMPACT'),
(145, 'RESTORE'),
(146, 'DEC'),
(147, 'FOR'),
(148, 'WARNINGS'),
(149, 'MIN_ROWS'),
(150, 'CONDITION'),
(151, 'STRING'),
(152, 'ENCLOSED'),
(153, 'FUNCTION'),
(154, 'AGGREGATE'),
(155, 'FIELDS'),
(156, 'INT3'),
(157, 'ARCHIVE'),
(158, 'AVG_ROW_LENGTH'),
(159, 'ADD'),
(160, 'KILL'),
(161, 'FLOAT4'),
(162, 'TABLESPACE'),
(163, 'VIEW'),
(164, 'REPEATABLE'),
(165, 'INFILE'),
(166, 'HELP_VERSION'),
(167, 'ORDER'),
(168, 'USING'),
(169, 'MIDDLEINT'),
(170, 'GRANT'),
(171, 'UNSIGNED'),
(172, 'DECIMAL'),
(173, 'GEOMETRYFROMTEXT'),
(174, 'INDEXES'),
(175, 'FOREIGN'),
(176, 'CACHE'),
(177, 'HOSTS'),
(178, 'COMMIT'),
(179, 'SCHEMAS'),
(180, 'LEADING'),
(181, 'SNAPSHOT'),
(182, 'DECLARE'),
(183, 'LOAD'),
(184, 'SQL_CACHE'),
(185, 'CONVERT'),
(186, 'DYNAMIC'),
(187, 'COLLATE'),
(188, 'POLYGONFROMTEXT'),
(189, 'BYTE'),
(190, 'GLOBAL'),
(191, 'LINESTRINGFROMWKB'),
(192, 'WHEN'),
(193, 'COLUMN_FORMAT'),
(194, 'HAVING'),
(195, 'AS'),
(196, 'STARTING'),
(197, 'RELOAD'),
(198, 'AUTOCOMMIT'),
(199, 'REVOKE'),
(200, 'GRANTS'),
(201, 'OUTER'),
(202, 'FLOOR'),
(203, 'EXPLAIN'),
(204, 'WITH'),
(205, 'AFTER'),
(206, 'STD'),
(207, 'CSV'),
(208, 'DISABLE'),
(209, 'UNINSTALL'),
(210, 'OUTFILE'),
(211, 'LOW_PRIORITY'),
(212, 'FILE'),
(213, 'NODEGROUP'),
(214, 'SCHEMA'),
(215, 'SONAME'),
(216, 'POW'),
(217, 'DUAL'),
(218, 'MULTIPOINTFROMWKB'),
(219, 'INDEX'),
(220, 'BACKUP'),
(221, 'MULTIPOINTFROMTEXT'),
(222, 'DEFINER'),
(223, 'MASTER_BIND'),
(224, 'REMOVE'),
(225, 'EXTENDED'),
(226, 'MULTILINESTRINGFROMWKB'),
(227, 'CROSS'),
(228, 'CONTRIBUTORS'),
(229, 'NATIONAL'),
(230, 'GROUP'),
(231, 'SHA'),
(232, 'ONLINE'),
(233, 'UNDO'),
(234, 'IGNORE_SERVER_IDS'),
(235, 'ZEROFILL'),
(236, 'CLIENT'),
(237, 'MASTER_PASSWORD'),
(238, 'OWNER'),
(239, 'RELAY_LOG_FILE'),
(240, 'TRUE'),
(241, 'CHARACTER'),
(242, 'MASTER_USER'),
(243, 'TABLE'),
(244, 'ENGINE'),
(245, 'INSERT_METHOD'),
(246, 'CASCADE'),
(247, 'RELAY_LOG_POS'),
(248, 'SQL_CALC_FOUND_ROWS'),
(249, 'UNION'),
(250, 'MYISAM'),
(251, 'LEAVE'),
(252, 'MODIFY'),
(253, 'MATCH'),
(254, 'MASTER_LOG_POS'),
(255, 'DISTINCTROW'),
(256, 'DESC'),
(257, 'TIME'),
(258, 'NUMERIC'),
(259, 'EXPANSION'),
(260, 'CURSOR'),
(261, 'CODE'),
(262, 'GEOMETRYCOLLECTIONFROMTEXT'),
(263, 'CHAIN'),
(264, 'LOGFILE'),
(265, 'FLUSH'),
(266, 'CREATE'),
(267, 'DESCRIBE'),
(268, 'EXTENT_SIZE'),
(269, 'MAX_UPDATES_PER_HOUR'),
(270, 'INT2'),
(271, 'PROCESSLIST'),
(272, 'ENDS'),
(273, 'LOGS'),
(274, 'DISCARD'),
(275, 'HEAP'),
(276, 'SOUNDS'),
(277, 'BETWEEN'),
(278, 'MULTILINESTRINGFROMTEXT'),
(279, 'REPAIR'),
(280, 'PACK_KEYS'),
(281, 'FAST'),
(282, 'VALUES'),
(283, 'CALL'),
(284, 'LOOP'),
(285, 'VARCHARACTER'),
(286, 'BEFORE'),
(287, 'TRUNCATE'),
(288, 'SHOW'),
(289, 'ALL'),
(290, 'REDUNDANT'),
(291, 'USER_RESOURCES'),
(292, 'PARTIAL'),
(293, 'BINLOG'),
(294, 'END'),
(295, 'SECOND'),
(296, 'AND'),
(297, 'FLOAT8'),
(298, 'PREV'),
(299, 'HOUR'),
(300, 'SELECT'),
(301, 'DATABASES'),
(302, 'OR'),
(303, 'IDENTIFIED'),
(304, 'WRAPPER'),
(305, 'MASTER_SSL_CIPHER'),
(306, 'SQL_SLAVE_SKIP_COUNTER'),
(307, 'BOTH'),
(308, 'BOOL'),
(309, 'YEAR'),
(310, 'MASTER_PORT'),
(311, 'CONCURRENT'),
(312, 'HELP'),
(313, 'UNIQUE'),
(314, 'TRIGGERS'),
(315, 'PROCESS'),
(316, 'OPTIONS'),
(317, 'CONSISTENT'),
(318, 'MASTER_SSL'),
(319, 'DATE_ADD'),
(320, 'MAX_CONNECTIONS_PER_HOUR'),
(321, 'LIKE'),
(322, 'PLUGIN'),
(323, 'FETCH'),
(324, 'IN'),
(325, 'COLUMN'),
(326, 'DUMPFILE'),
(327, 'USAGE'),
(328, 'EXECUTE'),
(329, 'MEMORY'),
(330, 'CEIL'),
(331, 'QUERY'),
(332, 'MASTER_HOST'),
(333, 'LINES'),
(334, 'SQL_THREAD'),
(335, 'SERVER'),
(336, 'MAX_QUERIES_PER_HOUR'),
(337, 'MASTER_SSL_CERT'),
(338, 'MULTIPOLYGONFROMWKB'),
(339, 'TRANSACTION'),
(340, 'DAY_MINUTE'),
(341, 'STDDEV'),
(342, 'DATE_SUB'),
(343, 'REBUILD'),
(344, 'GEOMETRYFROMWKB'),
(345, 'INT1'),
(346, 'RENAME'),
(347, 'PARSER'),
(348, 'RIGHT'),
(349, 'ALTER'),
(350, 'MAX_ROWS'),
(351, 'SOCKET'),
(352, 'STRAIGHT_JOIN'),
(353, 'NATURAL'),
(354, 'VARIABLES'),
(355, 'ESCAPED'),
(356, 'SHA1'),
(357, 'KEY_BLOCK_SIZE'),
(358, 'PASSWORD'),
(359, 'OFFSET'),
(360, 'CHAR'),
(361, 'NEXT'),
(362, 'SQL_LOG_BIN'),
(363, 'ERRORS'),
(364, 'TEMPORARY'),
(365, 'COMMITTED'),
(366, 'SQL_SMALL_RESULT'),
(367, 'UPGRADE'),
(368, 'BEGIN'),
(369, 'DELAY_KEY_WRITE'),
(370, 'PROFILE'),
(371, 'MEDIUM'),
(372, 'INTERVAL'),
(373, 'SSL'),
(374, 'DAY_HOUR'),
(375, 'NAME'),
(376, 'REFERENCES'),
(377, 'AES_ENCRYPT'),
(378, 'STORAGE'),
(379, 'ISOLATION'),
(380, 'CEILING'),
(381, 'EVERY'),
(382, 'INT8'),
(383, 'AUTHORS'),
(384, 'RESTRICT'),
(385, 'UNCOMMITTED'),
(386, 'LINESTRINGFROMTEXT'),
(387, 'IS'),
(388, 'NOT'),
(389, 'ANALYSE'),
(390, 'DATAFILE'),
(391, 'DES_KEY_FILE'),
(392, 'COMPRESSED'),
(393, 'START'),
(394, 'PLUGINS'),
(395, 'SAVEPOINT'),
(396, 'IF'),
(397, 'PRIMARY'),
(398, 'PURGE'),
(399, 'LAST'),
(400, 'USER'),
(401, 'INNOBASE'),
(402, 'EXIT'),
(403, 'KEYS'),
(404, 'LIMIT'),
(405, 'KEY'),
(406, 'MERGE'),
(407, 'UNTIL'),
(408, 'SQL_NO_CACHE'),
(409, 'DELAYED'),
(410, 'ANALYZE'),
(411, 'CONSTRAINT'),
(412, 'SERIAL'),
(413, 'ACTION'),
(414, 'WRITE'),
(415, 'INITIAL_SIZE'),
(416, 'SESSION'),
(417, 'DATABASE'),
(418, 'NULL'),
(419, 'POWER'),
(420, 'USE_FRM'),
(421, 'TERMINATED'),
(422, 'SLAVE'),
(423, 'NVARCHAR'),
(424, 'ASC'),
(425, 'RETURN'),
(426, 'OPTIONALLY'),
(427, 'ENABLE'),
(428, 'DIRECTORY'),
(429, 'WHILE'),
(430, 'MAX_USER_CONNECTIONS'),
(431, 'LOCAL'),
(432, 'DISTINCT'),
(433, 'AES_DECRYPT'),
(434, 'MASTER_SSL_KEY'),
(435, 'NONE'),
(436, 'TABLES'),
(437, '<>'),
(438, 'RLIKE'),
(439, 'TRIGGER'),
(440, 'COLLATION'),
(441, 'SHUTDOWN'),
(442, 'HIGH_PRIORITY'),
(443, 'BTREE'),
(444, 'FIRST'),
(445, 'COALESCE'),
(446, 'WAIT'),
(447, 'TYPES'),
(448, 'MASTER'),
(449, 'FIXED'),
(450, 'MULTIPOLYGONFROMTEXT'),
(451, 'ROW_FORMAT');

-- --------------------------------------------------------

--
-- Table structure for table `help_relation`
--

CREATE TABLE IF NOT EXISTS `help_relation` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `help_keyword_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`help_keyword_id`,`help_topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='keyword-topic relation';

--
-- Dumping data for table `help_relation`
--

INSERT INTO `help_relation` (`help_topic_id`, `help_keyword_id`) VALUES
(1, 0),
(355, 0),
(471, 1),
(230, 2),
(447, 3),
(3, 4),
(422, 4),
(87, 5),
(87, 6),
(407, 6),
(95, 7),
(87, 8),
(185, 9),
(430, 10),
(21, 11),
(346, 11),
(422, 11),
(461, 11),
(87, 12),
(407, 12),
(144, 13),
(228, 14),
(86, 15),
(355, 15),
(16, 16),
(104, 16),
(131, 16),
(346, 16),
(95, 17),
(498, 17),
(380, 18),
(3, 19),
(102, 19),
(241, 19),
(185, 20),
(355, 21),
(9, 22),
(30, 22),
(34, 22),
(85, 22),
(186, 22),
(235, 22),
(262, 22),
(275, 22),
(299, 22),
(330, 22),
(406, 22),
(416, 22),
(417, 22),
(461, 22),
(476, 22),
(106, 23),
(121, 24),
(168, 24),
(376, 25),
(258, 26),
(80, 27),
(102, 28),
(199, 29),
(36, 30),
(346, 31),
(401, 31),
(466, 31),
(376, 32),
(199, 33),
(35, 34),
(235, 34),
(36, 35),
(355, 35),
(466, 36),
(418, 37),
(461, 37),
(466, 37),
(21, 38),
(293, 38),
(346, 38),
(451, 38),
(466, 38),
(498, 39),
(48, 40),
(75, 40),
(81, 40),
(199, 40),
(355, 40),
(362, 40),
(422, 40),
(461, 40),
(466, 40),
(466, 41),
(470, 41),
(376, 42),
(461, 43),
(466, 43),
(117, 44),
(211, 44),
(422, 44),
(466, 44),
(471, 44),
(376, 45),
(355, 46),
(95, 47),
(313, 47),
(362, 48),
(185, 49),
(48, 50),
(466, 50),
(470, 50),
(1, 51),
(87, 51),
(407, 51),
(470, 51),
(174, 52),
(466, 52),
(51, 53),
(104, 53),
(199, 54),
(1, 55),
(55, 55),
(193, 55),
(48, 56),
(81, 56),
(104, 56),
(192, 57),
(199, 57),
(247, 57),
(209, 58),
(461, 58),
(87, 59),
(299, 59),
(357, 59),
(407, 59),
(199, 60),
(355, 61),
(1, 62),
(81, 62),
(102, 62),
(355, 62),
(422, 62),
(461, 62),
(48, 63),
(418, 63),
(464, 63),
(228, 64),
(85, 65),
(209, 65),
(461, 65),
(199, 66),
(193, 67),
(466, 68),
(89, 69),
(480, 69),
(385, 70),
(447, 71),
(1, 72),
(39, 73),
(228, 73),
(268, 73),
(185, 74),
(268, 74),
(459, 74),
(185, 75),
(461, 75),
(87, 76),
(407, 76),
(376, 77),
(81, 78),
(102, 78),
(355, 78),
(470, 78),
(87, 79),
(407, 79),
(3, 80),
(102, 80),
(303, 80),
(355, 80),
(466, 81),
(255, 82),
(193, 83),
(376, 84),
(128, 85),
(144, 86),
(459, 86),
(18, 87),
(184, 87),
(301, 87),
(327, 87),
(346, 87),
(355, 87),
(417, 87),
(439, 87),
(486, 87),
(97, 88),
(188, 88),
(422, 89),
(461, 89),
(86, 90),
(402, 91),
(466, 91),
(67, 92),
(329, 92),
(433, 92),
(284, 93),
(28, 94),
(57, 94),
(83, 94),
(102, 95),
(194, 95),
(300, 95),
(484, 95),
(281, 96),
(346, 96),
(104, 97),
(312, 97),
(471, 98),
(376, 99),
(9, 100),
(30, 100),
(87, 100),
(153, 100),
(186, 100),
(275, 100),
(299, 100),
(346, 101),
(366, 101),
(107, 102),
(144, 103),
(459, 103),
(24, 104),
(86, 104),
(111, 105),
(173, 105),
(3, 106),
(102, 106),
(153, 106),
(198, 106),
(211, 106),
(241, 106),
(461, 106),
(466, 106),
(461, 107),
(113, 108),
(326, 108),
(464, 108),
(468, 108),
(113, 109),
(461, 109),
(38, 110),
(118, 110),
(149, 110),
(263, 110),
(123, 111),
(420, 112),
(87, 113),
(124, 113),
(407, 113),
(494, 113),
(220, 114),
(3, 115),
(81, 115),
(102, 115),
(128, 115),
(137, 115),
(144, 115),
(153, 115),
(181, 115),
(211, 115),
(332, 115),
(346, 115),
(355, 115),
(422, 115),
(461, 115),
(466, 115),
(470, 115),
(475, 115),
(492, 115),
(199, 116),
(130, 117),
(228, 117),
(261, 117),
(376, 117),
(58, 118),
(134, 118),
(214, 118),
(222, 118),
(327, 118),
(335, 118),
(346, 118),
(366, 118),
(401, 118),
(209, 119),
(461, 119),
(466, 119),
(87, 120),
(193, 120),
(407, 120),
(466, 120),
(185, 121),
(1, 122),
(52, 123),
(185, 124),
(466, 125),
(313, 126),
(199, 127),
(455, 128),
(253, 129),
(284, 130),
(199, 131),
(247, 131),
(461, 132),
(57, 133),
(83, 133),
(235, 134),
(52, 135),
(323, 135),
(57, 136),
(83, 136),
(199, 137),
(312, 138),
(48, 139),
(117, 139),
(121, 139),
(346, 139),
(355, 139),
(360, 139),
(455, 139),
(36, 140),
(104, 140),
(447, 140),
(1, 141),
(28, 142),
(376, 143),
(466, 144),
(178, 145),
(208, 146),
(179, 147),
(312, 147),
(346, 147),
(355, 147),
(421, 147),
(329, 148),
(346, 148),
(466, 149),
(179, 150),
(95, 151),
(422, 152),
(34, 153),
(66, 153),
(95, 153),
(210, 153),
(231, 153),
(301, 153),
(335, 153),
(346, 153),
(393, 153),
(406, 153),
(417, 153),
(95, 154),
(346, 155),
(422, 155),
(250, 156),
(466, 157),
(461, 158),
(466, 158),
(60, 159),
(193, 159),
(461, 159),
(476, 159),
(174, 160),
(166, 161),
(193, 162),
(416, 162),
(461, 162),
(476, 162),
(30, 163),
(157, 163),
(454, 163),
(447, 164),
(422, 165),
(189, 166),
(48, 167),
(81, 167),
(355, 167),
(362, 167),
(461, 167),
(1, 168),
(48, 168),
(84, 168),
(250, 169),
(199, 170),
(247, 170),
(24, 171),
(127, 171),
(166, 171),
(208, 171),
(228, 171),
(313, 171),
(498, 171),
(95, 172),
(154, 172),
(228, 172),
(412, 173),
(346, 174),
(461, 175),
(466, 175),
(470, 175),
(471, 175),
(99, 176),
(149, 176),
(303, 176),
(143, 177),
(346, 177),
(144, 178),
(158, 179),
(346, 179),
(455, 180),
(144, 181),
(179, 182),
(198, 182),
(312, 182),
(421, 182),
(117, 183),
(303, 183),
(360, 183),
(422, 183),
(355, 184),
(228, 185),
(377, 185),
(466, 186),
(153, 187),
(211, 187),
(466, 187),
(395, 188),
(463, 189),
(128, 190),
(134, 190),
(181, 190),
(348, 190),
(447, 190),
(452, 191),
(57, 192),
(83, 192),
(466, 193),
(355, 194),
(1, 195),
(36, 195),
(355, 195),
(422, 196),
(199, 197),
(144, 198),
(247, 199),
(191, 200),
(346, 200),
(1, 201),
(220, 202),
(253, 203),
(86, 204),
(199, 204),
(209, 204),
(461, 204),
(466, 204),
(461, 205),
(259, 206),
(422, 207),
(466, 207),
(87, 208),
(407, 208),
(461, 208),
(290, 209),
(355, 210),
(3, 211),
(36, 211),
(48, 211),
(81, 211),
(102, 211),
(422, 211),
(199, 212),
(193, 213),
(153, 214),
(186, 214),
(211, 214),
(308, 214),
(346, 214),
(95, 215),
(276, 216),
(278, 217),
(462, 218),
(1, 219),
(60, 219),
(85, 219),
(99, 219),
(209, 219),
(303, 219),
(307, 219),
(346, 219),
(461, 219),
(466, 219),
(358, 220),
(425, 221),
(87, 222),
(407, 222),
(185, 223),
(461, 224),
(253, 225),
(464, 225),
(271, 226),
(1, 227),
(7, 228),
(346, 228),
(255, 229),
(430, 229),
(193, 230),
(225, 230),
(355, 230),
(427, 231),
(85, 232),
(209, 232),
(461, 232),
(312, 233),
(185, 234),
(24, 235),
(127, 235),
(166, 235),
(208, 235),
(313, 235),
(498, 235),
(199, 236),
(185, 237),
(471, 238),
(185, 239),
(385, 240),
(153, 241),
(211, 241),
(255, 241),
(332, 241),
(346, 241),
(355, 241),
(422, 241),
(430, 241),
(466, 241),
(185, 242),
(60, 243),
(108, 243),
(113, 243),
(178, 243),
(214, 243),
(275, 243),
(277, 243),
(320, 243),
(346, 243),
(358, 243),
(360, 243),
(402, 243),
(418, 243),
(461, 243),
(464, 243),
(466, 243),
(468, 243),
(193, 244),
(346, 244),
(366, 244),
(416, 244),
(461, 244),
(466, 244),
(476, 244),
(466, 245),
(30, 246),
(275, 246),
(466, 246),
(470, 246),
(185, 247),
(355, 248),
(304, 249),
(466, 250),
(309, 251),
(461, 252),
(86, 253),
(185, 254),
(355, 255),
(328, 256),
(355, 256),
(362, 256),
(228, 257),
(314, 257),
(375, 257),
(208, 258),
(86, 259),
(421, 260),
(66, 261),
(486, 261),
(244, 262),
(144, 263),
(193, 264),
(225, 264),
(149, 265),
(326, 265),
(18, 266),
(22, 266),
(60, 266),
(75, 266),
(87, 266),
(95, 266),
(153, 266),
(193, 266),
(209, 266),
(210, 266),
(277, 266),
(301, 266),
(308, 266),
(346, 266),
(357, 266),
(393, 266),
(454, 266),
(466, 266),
(471, 266),
(328, 267),
(193, 268),
(199, 269),
(232, 270),
(346, 271),
(451, 271),
(87, 272),
(39, 273),
(268, 273),
(346, 273),
(461, 274),
(466, 275),
(378, 276),
(145, 277),
(105, 278),
(461, 279),
(464, 279),
(466, 280),
(418, 281),
(3, 282),
(102, 282),
(338, 283),
(343, 284),
(255, 285),
(268, 286),
(320, 287),
(7, 288),
(10, 288),
(18, 288),
(21, 288),
(25, 288),
(33, 288),
(39, 288),
(58, 288),
(66, 288),
(67, 288),
(80, 288),
(121, 288),
(131, 288),
(134, 288),
(143, 288),
(158, 288),
(168, 288),
(191, 288),
(192, 288),
(214, 288),
(222, 288),
(277, 288),
(281, 288),
(293, 288),
(307, 288),
(308, 288),
(327, 288),
(329, 288),
(332, 288),
(335, 288),
(346, 288),
(348, 288),
(357, 288),
(366, 288),
(393, 288),
(401, 288),
(451, 288),
(485, 288),
(486, 288),
(490, 288),
(199, 289),
(247, 289),
(304, 289),
(355, 289),
(466, 290),
(326, 291),
(466, 292),
(121, 293),
(349, 293),
(28, 294),
(57, 294),
(83, 294),
(230, 294),
(325, 294),
(343, 294),
(494, 294),
(376, 295),
(145, 296),
(315, 296),
(313, 297),
(104, 298),
(376, 299),
(3, 300),
(102, 300),
(253, 300),
(258, 300),
(300, 300),
(355, 300),
(158, 301),
(346, 301),
(139, 302),
(75, 303),
(199, 303),
(471, 304),
(185, 305),
(181, 306),
(455, 307),
(24, 308),
(109, 308),
(376, 309),
(185, 310),
(422, 311),
(116, 312),
(390, 312),
(461, 313),
(25, 314),
(346, 314),
(199, 315),
(374, 316),
(471, 316),
(144, 317),
(185, 318),
(376, 319),
(199, 320),
(346, 321),
(378, 321),
(290, 322),
(346, 322),
(420, 322),
(383, 323),
(86, 324),
(121, 324),
(355, 324),
(461, 325),
(355, 326),
(199, 327),
(84, 328),
(199, 328),
(355, 329),
(397, 330),
(86, 331),
(149, 331),
(174, 331),
(185, 332),
(422, 333),
(52, 334),
(323, 334),
(9, 335),
(374, 335),
(471, 335),
(199, 336),
(185, 337),
(122, 338),
(144, 339),
(447, 339),
(376, 340),
(408, 341),
(376, 342),
(461, 343),
(142, 344),
(24, 345),
(108, 346),
(221, 346),
(407, 346),
(461, 346),
(209, 347),
(461, 347),
(466, 347),
(1, 348),
(60, 349),
(157, 349),
(199, 349),
(211, 349),
(225, 349),
(231, 349),
(374, 349),
(407, 349),
(439, 349),
(461, 349),
(476, 349),
(466, 350),
(471, 351),
(1, 352),
(355, 352),
(1, 353),
(346, 354),
(348, 354),
(422, 355),
(427, 356),
(466, 357),
(75, 358),
(199, 358),
(471, 358),
(475, 358),
(355, 359),
(228, 360),
(463, 360),
(104, 361),
(492, 362),
(67, 363),
(346, 363),
(275, 364),
(447, 365),
(355, 366),
(211, 367),
(418, 367),
(144, 368),
(325, 368),
(466, 369),
(485, 370),
(418, 371),
(87, 372),
(376, 372),
(199, 373),
(376, 374),
(211, 375),
(199, 376),
(466, 376),
(470, 376),
(443, 377),
(281, 378),
(447, 379),
(448, 380),
(87, 381),
(127, 382),
(10, 383),
(346, 383),
(30, 384),
(275, 384),
(470, 384),
(447, 385),
(56, 386),
(82, 387),
(205, 387),
(369, 387),
(456, 387),
(82, 388),
(87, 388),
(153, 388),
(205, 388),
(311, 388),
(184, 389),
(193, 390),
(476, 390),
(326, 391),
(466, 392),
(144, 393),
(323, 393),
(33, 394),
(459, 395),
(9, 396),
(28, 396),
(30, 396),
(87, 396),
(153, 396),
(186, 396),
(275, 396),
(299, 396),
(477, 396),
(461, 397),
(268, 398),
(104, 399),
(75, 400),
(221, 400),
(330, 400),
(471, 400),
(466, 401),
(312, 402),
(307, 403),
(346, 403),
(461, 403),
(48, 404),
(81, 404),
(104, 404),
(121, 404),
(355, 404),
(60, 405),
(102, 405),
(461, 405),
(466, 405),
(470, 405),
(466, 406),
(230, 407),
(355, 408),
(3, 409),
(102, 409),
(484, 409),
(461, 410),
(468, 410),
(461, 411),
(466, 411),
(241, 412),
(466, 412),
(466, 413),
(470, 413),
(36, 414),
(193, 415),
(476, 415),
(128, 416),
(134, 416),
(348, 416),
(447, 416),
(153, 417),
(186, 417),
(211, 417),
(308, 417),
(346, 417),
(471, 417),
(82, 418),
(369, 418),
(470, 418),
(481, 419),
(464, 420),
(422, 421),
(38, 422),
(52, 422),
(87, 422),
(143, 422),
(222, 422),
(323, 422),
(407, 422),
(255, 423),
(355, 424),
(362, 424),
(489, 425),
(422, 426),
(87, 427),
(407, 427),
(461, 427),
(211, 428),
(466, 428),
(494, 429),
(199, 430),
(36, 431),
(113, 431),
(326, 431),
(422, 431),
(464, 431),
(468, 431),
(0, 432),
(94, 432),
(287, 432),
(304, 432),
(355, 432),
(362, 432),
(384, 432),
(433, 432),
(495, 433),
(185, 434),
(199, 435),
(36, 436),
(131, 436),
(293, 436),
(346, 436),
(493, 437),
(27, 438),
(22, 439),
(262, 439),
(346, 439),
(346, 440),
(490, 440),
(199, 441),
(102, 442),
(355, 442),
(209, 443),
(104, 444),
(461, 444),
(466, 444),
(461, 445),
(193, 446),
(476, 446),
(346, 447),
(39, 448),
(58, 448),
(117, 448),
(185, 448),
(263, 448),
(268, 448),
(360, 448),
(208, 449),
(466, 449),
(200, 450),
(466, 451);

-- --------------------------------------------------------

--
-- Table structure for table `help_topic`
--

CREATE TABLE IF NOT EXISTS `help_topic` (
  `help_topic_id` int(10) unsigned NOT NULL,
  `name` char(64) NOT NULL,
  `help_category_id` smallint(5) unsigned NOT NULL,
  `description` text NOT NULL,
  `example` text NOT NULL,
  `url` char(128) NOT NULL,
  PRIMARY KEY (`help_topic_id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='help topics';

--
-- Dumping data for table `help_topic`
--

INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(0, 'MIN', 16, 'Syntax:\nMIN([DISTINCT] expr)\n\nReturns the minimum value of expr. MIN() may take a string argument; in\nsuch cases, it returns the minimum string value. See\nhttp://dev.mysql.com/doc/refman/5.1/en/mysql-indexes.html. The DISTINCT\nkeyword can be used to find the minimum of the distinct values of expr,\nhowever, this produces the same result as omitting DISTINCT.\n\nMIN() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', 'mysql> SELECT student_name, MIN(test_score), MAX(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(1, 'JOIN', 27, 'MySQL supports the following JOIN syntaxes for the table_references\npart of SELECT statements and multiple-table DELETE and UPDATE\nstatements:\n\ntable_references:\n    table_reference [, table_reference] ...\n\ntable_reference:\n    table_factor\n  | join_table\n\ntable_factor:\n    tbl_name [[AS] alias] [index_hint_list]\n  | table_subquery [AS] alias\n  | ( table_references )\n  | { OJ table_reference LEFT OUTER JOIN table_reference\n        ON conditional_expr }\n\njoin_table:\n    table_reference [INNER | CROSS] JOIN table_factor [join_condition]\n  | table_reference STRAIGHT_JOIN table_factor\n  | table_reference STRAIGHT_JOIN table_factor ON conditional_expr\n  | table_reference {LEFT|RIGHT} [OUTER] JOIN table_reference join_condition\n  | table_reference NATURAL [{LEFT|RIGHT} [OUTER]] JOIN table_factor\n\njoin_condition:\n    ON conditional_expr\n  | USING (column_list)\n\nindex_hint_list:\n    index_hint [, index_hint] ...\n\nindex_hint:\n    USE {INDEX|KEY}\n      [{FOR {JOIN|ORDER BY|GROUP BY}] ([index_list])\n  | IGNORE {INDEX|KEY}\n      [{FOR {JOIN|ORDER BY|GROUP BY}] (index_list)\n  | FORCE {INDEX|KEY}\n      [{FOR {JOIN|ORDER BY|GROUP BY}] (index_list)\n\nindex_list:\n    index_name [, index_name] ...\n\nA table reference is also known as a join expression.\n\nThe syntax of table_factor is extended in comparison with the SQL\nStandard. The latter accepts only table_reference, not a list of them\ninside a pair of parentheses.\n\nThis is a conservative extension if we consider each comma in a list of\ntable_reference items as equivalent to an inner join. For example:\n\nSELECT * FROM t1 LEFT JOIN (t2, t3, t4)\n                 ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)\n\nis equivalent to:\n\nSELECT * FROM t1 LEFT JOIN (t2 CROSS JOIN t3 CROSS JOIN t4)\n                 ON (t2.a=t1.a AND t3.b=t1.b AND t4.c=t1.c)\n\nIn MySQL, CROSS JOIN is a syntactic equivalent to INNER JOIN (they can\nreplace each other). In standard SQL, they are not equivalent. INNER\nJOIN is used with an ON clause, CROSS JOIN is used otherwise.\n\nIn general, parentheses can be ignored in join expressions containing\nonly inner join operations. MySQL also supports nested joins (see\nhttp://dev.mysql.com/doc/refman/5.1/en/nested-join-optimization.html).\n\nIndex hints can be specified to affect how the MySQL optimizer makes\nuse of indexes. For more information, see\nhttp://dev.mysql.com/doc/refman/5.1/en/index-hints.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/join.html\n\n', 'SELECT left_tbl.*\n  FROM left_tbl LEFT JOIN right_tbl ON left_tbl.id = right_tbl.id\n  WHERE right_tbl.id IS NULL;\n', 'http://dev.mysql.com/doc/refman/5.1/en/join.html'),
(2, 'HEX', 36, 'Syntax:\nHEX(str), HEX(N)\n\nFor a string argument str, HEX() returns a hexadecimal string\nrepresentation of str where each character in str is converted to two\nhexadecimal digits. The inverse of this operation is performed by the\nUNHEX() function.\n\nFor a numeric argument N, HEX() returns a hexadecimal string\nrepresentation of the value of N treated as a longlong (BIGINT) number.\nThis is equivalent to CONV(N,10,16). The inverse of this operation is\nperformed by CONV(HEX(N),16,10).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT 0x616263, HEX(''abc''), UNHEX(HEX(''abc''));\n        -> ''abc'', 616263, ''abc''\nmysql> SELECT HEX(255), CONV(HEX(255),16,10);\n        -> ''FF'', 255\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(3, 'REPLACE', 27, 'Syntax:\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name [(col_name,...)]\n    {VALUES | VALUE} ({expr | DEFAULT},...),(...),...\n\nOr:\n\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name\n    SET col_name={expr | DEFAULT}, ...\n\nOr:\n\nREPLACE [LOW_PRIORITY | DELAYED]\n    [INTO] tbl_name [(col_name,...)]\n    SELECT ...\n\nREPLACE works exactly like INSERT, except that if an old row in the\ntable has the same value as a new row for a PRIMARY KEY or a UNIQUE\nindex, the old row is deleted before the new row is inserted. See [HELP\nINSERT].\n\nREPLACE is a MySQL extension to the SQL standard. It either inserts, or\ndeletes and inserts. For another MySQL extension to standard SQL---that\neither inserts or updates---see\nhttp://dev.mysql.com/doc/refman/5.1/en/insert-on-duplicate.html.\n\nNote that unless the table has a PRIMARY KEY or UNIQUE index, using a\nREPLACE statement makes no sense. It becomes equivalent to INSERT,\nbecause there is no index to be used to determine whether a new row\nduplicates another.\n\nValues for all columns are taken from the values specified in the\nREPLACE statement. Any missing columns are set to their default values,\njust as happens for INSERT. You cannot refer to values from the current\nrow and use them in the new row. If you use an assignment such as SET\ncol_name = col_name + 1, the reference to the column name on the right\nhand side is treated as DEFAULT(col_name), so the assignment is\nequivalent to SET col_name = DEFAULT(col_name) + 1.\n\nTo use REPLACE, you must have both the INSERT and DELETE privileges for\nthe table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/replace.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/replace.html'),
(4, 'CONTAINS', 30, 'Contains(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 completely contains g2. This\ntests the opposite relationship as Within().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html'),
(5, 'SRID', 35, 'SRID(g)\n\nReturns an integer indicating the Spatial Reference System ID for the\ngeometry value g.\n\nIn MySQL, the SRID value is just an integer associated with the\ngeometry value. All calculations are done assuming Euclidean (planar)\ngeometry.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#general-geometry-property-functions\n\n', 'mysql> SELECT SRID(GeomFromText(''LineString(1 1,2 2)'',101));\n+-----------------------------------------------+\n| SRID(GeomFromText(''LineString(1 1,2 2)'',101)) |\n+-----------------------------------------------+\n|                                           101 |\n+-----------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#general-geometry-property-functions'),
(6, 'CURRENT_TIMESTAMP', 31, 'Syntax:\nCURRENT_TIMESTAMP, CURRENT_TIMESTAMP()\n\nCURRENT_TIMESTAMP and CURRENT_TIMESTAMP() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(7, 'SHOW CONTRIBUTORS', 26, 'Syntax:\nSHOW CONTRIBUTORS\n\nThe SHOW CONTRIBUTORS statement displays information about the people\nwho contribute to MySQL source or to causes that we support. For each\ncontributor, it displays Name, Location, and Comment values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-contributors.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-contributors.html'),
(8, 'VARIANCE', 16, 'Syntax:\nVARIANCE(expr)\n\nReturns the population standard variance of expr. This is an extension\nto standard SQL. The standard SQL function VAR_POP() can be used\ninstead.\n\nVARIANCE() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(9, 'DROP SERVER', 38, 'Syntax:\nDROP SERVER [ IF EXISTS ] server_name\n\nDrops the server definition for the server named server_name. The\ncorresponding row within the mysql.servers table will be deleted. This\nstatement requires the SUPER privilege.\n\nDropping a server for a table does not affect any FEDERATED tables that\nused this connection information when they were created. See [HELP\nCREATE SERVER].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-server.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-server.html'),
(10, 'SHOW AUTHORS', 26, 'Syntax:\nSHOW AUTHORS\n\nThe SHOW AUTHORS statement displays information about the people who\nwork on MySQL. For each author, it displays Name, Location, and Comment\nvalues.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-authors.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-authors.html'),
(11, 'VAR_SAMP', 16, 'Syntax:\nVAR_SAMP(expr)\n\nReturns the sample variance of expr. That is, the denominator is the\nnumber of rows minus one.\n\nVAR_SAMP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(12, 'CONCAT', 36, 'Syntax:\nCONCAT(str1,str2,...)\n\nReturns the string that results from concatenating the arguments. May\nhave one or more arguments. If all arguments are nonbinary strings, the\nresult is a nonbinary string. If the arguments include any binary\nstrings, the result is a binary string. A numeric argument is converted\nto its equivalent binary string form; if you want to avoid that, you\ncan use an explicit type cast, as in this example:\n\nSELECT CONCAT(CAST(int_col AS CHAR), char_col);\n\nCONCAT() returns NULL if any argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT CONCAT(''My'', ''S'', ''QL'');\n        -> ''MySQL''\nmysql> SELECT CONCAT(''My'', NULL, ''QL'');\n        -> NULL\nmysql> SELECT CONCAT(14.3);\n        -> ''14.3''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(13, 'GEOMETRY HIERARCHY', 33, 'Geometry is the base class. It is an abstract class. The instantiable\nsubclasses of Geometry are restricted to zero-, one-, and\ntwo-dimensional geometric objects that exist in two-dimensional\ncoordinate space. All instantiable geometry classes are defined so that\nvalid instances of a geometry class are topologically closed (that is,\nall defined geometries include their boundary).\n\nThe base Geometry class has subclasses for Point, Curve, Surface, and\nGeometryCollection:\n\no Point represents zero-dimensional objects.\n\no Curve represents one-dimensional objects, and has subclass\n  LineString, with sub-subclasses Line and LinearRing.\n\no Surface is designed for two-dimensional objects and has subclass\n  Polygon.\n\no GeometryCollection has specialized zero-, one-, and two-dimensional\n  collection classes named MultiPoint, MultiLineString, and\n  MultiPolygon for modeling geometries corresponding to collections of\n  Points, LineStrings, and Polygons, respectively. MultiCurve and\n  MultiSurface are introduced as abstract superclasses that generalize\n  the collection interfaces to handle Curves and Surfaces.\n\nGeometry, Curve, Surface, MultiCurve, and MultiSurface are defined as\nnoninstantiable classes. They define a common set of methods for their\nsubclasses and are included for extensibility.\n\nPoint, LineString, Polygon, GeometryCollection, MultiPoint,\nMultiLineString, and MultiPolygon are instantiable classes.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-geometry-class-hierarchy.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-geometry-class-hierarchy.html'),
(14, 'CHAR FUNCTION', 36, 'Syntax:\nCHAR(N,... [USING charset_name])\n\nCHAR() interprets each argument N as an integer and returns a string\nconsisting of the characters given by the code values of those\nintegers. NULL values are skipped.\nBy default, CHAR() returns a binary string. To produce a string in a\ngiven character set, use the optional USING clause:\n\nmysql> SELECT CHARSET(CHAR(0x65)), CHARSET(CHAR(0x65 USING utf8));\n+---------------------+--------------------------------+\n| CHARSET(CHAR(0x65)) | CHARSET(CHAR(0x65 USING utf8)) |\n+---------------------+--------------------------------+\n| binary              | utf8                           |\n+---------------------+--------------------------------+\n\nIf USING is given and the result string is illegal for the given\ncharacter set, a warning is issued. Also, if strict SQL mode is\nenabled, the result from CHAR() becomes NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT CHAR(77,121,83,81,''76'');\n        -> ''MySQL''\nmysql> SELECT CHAR(77,77.3,''77.3'');\n        -> ''MMM''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(15, 'DATETIME', 22, 'DATETIME\n\nA date and time combination. The supported range is ''1000-01-01\n00:00:00'' to ''9999-12-31 23:59:59''. MySQL displays DATETIME values in\n''YYYY-MM-DD HH:MM:SS'' format, but permits assignment of values to\nDATETIME columns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html'),
(16, 'OPEN', 23, 'Syntax:\nOPEN cursor_name\n\nThis statement opens a previously declared cursor.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/open.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/open.html'),
(17, 'SHOW CREATE TRIGGER', 26, 'Syntax:\nSHOW CREATE TRIGGER trigger_name\n\nThis statement shows a CREATE TRIGGER statement that creates the given\ntrigger.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-trigger.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-trigger.html'),
(18, 'SHOW CREATE PROCEDURE', 26, 'Syntax:\nSHOW CREATE PROCEDURE proc_name\n\nThis statement is a MySQL extension. It returns the exact string that\ncan be used to re-create the named stored procedure. A similar\nstatement, SHOW CREATE FUNCTION, displays information about stored\nfunctions (see [HELP SHOW CREATE FUNCTION]).\n\nBoth statements require that you be the owner of the routine or have\nSELECT access to the mysql.proc table. If you do not have privileges\nfor the routine itself, the value displayed for the Create Procedure or\nCreate Function field will be NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-procedure.html\n\n', 'mysql> SHOW CREATE PROCEDURE test.simpleproc\\G\n*************************** 1. row ***************************\n           Procedure: simpleproc\n            sql_mode:\n    Create Procedure: CREATE PROCEDURE `simpleproc`(OUT param1 INT)\n                      BEGIN\n                      SELECT COUNT(*) INTO param1 FROM t;\n                      END\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n\nmysql> SHOW CREATE FUNCTION test.hello\\G\n*************************** 1. row ***************************\n            Function: hello\n            sql_mode:\n     Create Function: CREATE FUNCTION `hello`(s CHAR(20))\n                      RETURNS CHAR(50)\n                      RETURN CONCAT(''Hello, '',s,''!'')\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-procedure.html'),
(19, 'INTEGER', 22, 'INTEGER[(M)] [UNSIGNED] [ZEROFILL]\n\nThis type is a synonym for INT.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(20, 'LOWER', 36, 'Syntax:\nLOWER(str)\n\nReturns the string str with all characters changed to lowercase\naccording to the current character set mapping. The default is latin1\n(cp1252 West European).\n\nmysql> SELECT LOWER(''QUADRATICALLY'');\n        -> ''quadratically''\n\nLOWER() (and UPPER()) are ineffective when applied to binary strings\n(BINARY, VARBINARY, BLOB). To perform lettercase conversion, convert\nthe string to a nonbinary string:\n\nmysql> SET @str = BINARY ''New York'';\nmysql> SELECT LOWER(@str), LOWER(CONVERT(@str USING latin1));\n+-------------+-----------------------------------+\n| LOWER(@str) | LOWER(CONVERT(@str USING latin1)) |\n+-------------+-----------------------------------+\n| New York    | new york                          |\n+-------------+-----------------------------------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(21, 'SHOW COLUMNS', 26, 'Syntax:\nSHOW [FULL] COLUMNS {FROM | IN} tbl_name [{FROM | IN} db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW COLUMNS displays information about the columns in a given table.\nIt also works for views. The LIKE clause, if present, indicates which\ncolumn names to match. The WHERE clause can be given to select rows\nusing more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nmysql> SHOW COLUMNS FROM City;\n+------------+----------+------+-----+---------+----------------+\n| Field      | Type     | Null | Key | Default | Extra          |\n+------------+----------+------+-----+---------+----------------+\n| Id         | int(11)  | NO   | PRI | NULL    | auto_increment |\n| Name       | char(35) | NO   |     |         |                |\n| Country    | char(3)  | NO   | UNI |         |                |\n| District   | char(20) | YES  | MUL |         |                |\n| Population | int(11)  | NO   |     | 0       |                |\n+------------+----------+------+-----+---------+----------------+\n5 rows in set (0.00 sec)\n\nIf the data types differ from what you expect them to be based on a\nCREATE TABLE statement, note that MySQL sometimes changes data types\nwhen you create or alter a table. The conditions under which this\noccurs are described in\nhttp://dev.mysql.com/doc/refman/5.1/en/silent-column-changes.html.\n\nThe FULL keyword causes the output to include the column collation and\ncomments, as well as the privileges you have for each column.\n\nYou can use db_name.tbl_name as an alternative to the tbl_name FROM\ndb_name syntax. In other words, these two statements are equivalent:\n\nmysql> SHOW COLUMNS FROM mytable FROM mydb;\nmysql> SHOW COLUMNS FROM mydb.mytable;\n\nSHOW COLUMNS displays the following values for each table column:\n\nField indicates the column name.\n\nType indicates the column data type.\n\nCollation indicates the collation for nonbinary string columns, or NULL\nfor other columns. This value is displayed only if you use the FULL\nkeyword.\n\nThe Null field contains YES if NULL values can be stored in the column,\nNO if not.\n\nThe Key field indicates whether the column is indexed:\n\no If Key is empty, the column either is not indexed or is indexed only\n  as a secondary column in a multiple-column, nonunique index.\n\no If Key is PRI, the column is a PRIMARY KEY or is one of the columns\n  in a multiple-column PRIMARY KEY.\n\no If Key is UNI, the column is the first column of a UNIQUE index. (A\n  UNIQUE index permits multiple NULL values, but you can tell whether\n  the column permits NULL by checking the Null field.)\n\no If Key is MUL, the column is the first column of a nonunique index in\n  which multiple occurrences of a given value are permitted within the\n  column.\n\nIf more than one of the Key values applies to a given column of a\ntable, Key displays the one with the highest priority, in the order\nPRI, UNI, MUL.\n\nA UNIQUE index may be displayed as PRI if it cannot contain NULL values\nand there is no PRIMARY KEY in the table. A UNIQUE index may display as\nMUL if several columns form a composite UNIQUE index; although the\ncombination of the columns is unique, each column can still hold\nmultiple occurrences of a given value.\n\nThe Default field indicates the default value that is assigned to the\ncolumn.\n\nThe Extra field contains any additional information that is available\nabout a given column. The value is nonempty in these cases:\nauto_increment for columns that have the AUTO_INCREMENT attribute; as\nof MySQL 5.1.23, on update CURRENT_TIMESTAMP for TIMESTAMP columns that\nhave the ON UPDATE CURRENT_TIMESTAMP attribute.\n\nPrivileges indicates the privileges you have for the column. This value\nis displayed only if you use the FULL keyword.\n\nComment indicates any comment the column has. This value is displayed\nonly if you use the FULL keyword.\n\nSHOW FIELDS is a synonym for SHOW COLUMNS. You can also list a table''s\ncolumns with the mysqlshow db_name tbl_name command.\n\nThe DESCRIBE statement provides information similar to SHOW COLUMNS.\nSee [HELP DESCRIBE].\n\nThe SHOW CREATE TABLE, SHOW TABLE STATUS, and SHOW INDEX statements\nalso provide information about tables. See [HELP SHOW].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-columns.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-columns.html'),
(22, 'CREATE TRIGGER', 38, 'Syntax:\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    TRIGGER trigger_name trigger_time trigger_event\n    ON tbl_name FOR EACH ROW trigger_body\n\nThis statement creates a new trigger. A trigger is a named database\nobject that is associated with a table, and that activates when a\nparticular event occurs for the table. The trigger becomes associated\nwith the table named tbl_name, which must refer to a permanent table.\nYou cannot associate a trigger with a TEMPORARY table or a view.\n\nCREATE TRIGGER requires the TRIGGER privilege for the table associated\nwith the trigger. The statement might also require the SUPER privilege,\ndepending on the DEFINER value, as described later in this section. If\nbinary logging is enabled, CREATE TRIGGER might require the SUPER\nprivilege, as described in\nhttp://dev.mysql.com/doc/refman/5.1/en/stored-programs-logging.html.\n(Before MySQL 5.1.6, there is no TRIGGER privilege and this statement\nrequires the SUPER privilege in all cases.)\n\nThe DEFINER clause determines the security context to be used when\nchecking access privileges at trigger activation time. See later in\nthis section for more information.\n\ntrigger_time is the trigger action time. It can be BEFORE or AFTER to\nindicate that the trigger activates before or after each row to be\nmodified.\n\ntrigger_event indicates the kind of statement that activates the\ntrigger. The trigger_event can be one of the following:\n\no INSERT: The trigger is activated whenever a new row is inserted into\n  the table; for example, through INSERT, LOAD DATA, and REPLACE\n  statements.\n\no UPDATE: The trigger is activated whenever a row is modified; for\n  example, through UPDATE statements.\n\no DELETE: The trigger is activated whenever a row is deleted from the\n  table; for example, through DELETE and REPLACE statements. However,\n  DROP TABLE and TRUNCATE TABLE statements on the table do not activate\n  this trigger, because they do not use DELETE. Dropping a partition\n  does not activate DELETE triggers, either. See [HELP TRUNCATE TABLE].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-trigger.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-trigger.html'),
(23, 'MONTH', 31, 'Syntax:\nMONTH(date)\n\nReturns the month for date, in the range 1 to 12 for January to\nDecember, or 0 for dates such as ''0000-00-00'' or ''2008-00-00'' that have\na zero month part.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT MONTH(''2008-02-03'');\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(24, 'TINYINT', 22, 'TINYINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA very small integer. The signed range is -128 to 127. The unsigned\nrange is 0 to 255.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(25, 'SHOW TRIGGERS', 26, 'Syntax:\nSHOW TRIGGERS [{FROM | IN} db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW TRIGGERS lists the triggers currently defined for tables in a\ndatabase (the default database unless a FROM clause is given). This\nstatement returns results only for databases and tables for which you\nhave the TRIGGER privilege, or (prior to MySQL 5.1.22) if you have the\nSUPER privilege). The LIKE clause, if present, indicates which table\nnames to match and causes the statement to display triggers for those\ntables. The WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nFor the trigger ins_sum as defined in\nhttp://dev.mysql.com/doc/refman/5.1/en/triggers.html, the output of\nthis statement is as shown here:\n\nmysql> SHOW TRIGGERS LIKE ''acc%''\\G\n*************************** 1. row ***************************\n             Trigger: ins_sum\n               Event: INSERT\n               Table: account\n           Statement: SET @sum = @sum + NEW.amount\n              Timing: BEFORE\n             Created: NULL\n            sql_mode:\n             Definer: myname@localhost\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n\ncharacter_set_client is the session value of the character_set_client\nsystem variable when the trigger was created. collation_connection is\nthe session value of the collation_connection system variable when the\ntrigger was created. Database Collation is the collation of the\ndatabase with which the trigger is associated. These columns were added\nin MySQL 5.1.21.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-triggers.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-triggers.html'),
(26, 'MASTER_POS_WAIT', 15, 'Syntax:\nMASTER_POS_WAIT(log_name,log_pos[,timeout])\n\nThis function is useful for control of master/slave synchronization. It\nblocks until the slave has read and applied all updates up to the\nspecified position in the master log. The return value is the number of\nlog events the slave had to wait for to advance to the specified\nposition. The function returns NULL if the slave SQL thread is not\nstarted, the slave''s master information is not initialized, the\narguments are incorrect, or an error occurs. It returns -1 if the\ntimeout has been exceeded. If the slave SQL thread stops while\nMASTER_POS_WAIT() is waiting, the function returns NULL. If the slave\nis past the specified position, the function returns immediately.\n\nIf a timeout value is specified, MASTER_POS_WAIT() stops waiting when\ntimeout seconds have elapsed. timeout must be greater than 0; a zero or\nnegative timeout means no timeout.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(27, 'REGEXP', 36, 'Syntax:\nexpr REGEXP pat, expr RLIKE pat\n\nPerforms a pattern match of a string expression expr against a pattern\npat. The pattern can be an extended regular expression. The syntax for\nregular expressions is discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/regexp.html. Returns 1 if expr\nmatches pat; otherwise it returns 0. If either expr or pat is NULL, the\nresult is NULL. RLIKE is a synonym for REGEXP, provided for mSQL\ncompatibility.\n\nThe pattern need not be a literal string. For example, it can be\nspecified as a string expression or table column.\n\n*Note*: Because MySQL uses the C escape syntax in strings (for example,\n"\\n" to represent the newline character), you must double any "\\" that\nyou use in your REGEXP strings.\n\nREGEXP is not case sensitive, except when used with binary strings.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/regexp.html\n\n', 'mysql> SELECT ''Monty!'' REGEXP ''.*'';\n        -> 1\nmysql> SELECT ''new*\\n*line'' REGEXP ''new\\\\*.\\\\*line'';\n        -> 1\nmysql> SELECT ''a'' REGEXP ''A'', ''a'' REGEXP BINARY ''A'';\n        -> 1  0\nmysql> SELECT ''a'' REGEXP ''^[a-d]'';\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/regexp.html'),
(28, 'IF STATEMENT', 23, 'Syntax:\nIF search_condition THEN statement_list\n    [ELSEIF search_condition THEN statement_list] ...\n    [ELSE statement_list]\nEND IF\n\nIF implements a basic conditional construct. If the search_condition\nevaluates to true, the corresponding SQL statement list is executed. If\nno search_condition matches, the statement list in the ELSE clause is\nexecuted. Each statement_list consists of one or more statements.\n\n*Note*: There is also an IF() function, which differs from the IF\nstatement described here. See\nhttp://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/if-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/if-statement.html'),
(29, '^', 19, 'Syntax:\n^\n\nBitwise XOR:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT 1 ^ 1;\n        -> 0\nmysql> SELECT 1 ^ 0;\n        -> 1\nmysql> SELECT 11 ^ 3;\n        -> 8\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html'),
(30, 'DROP VIEW', 38, 'Syntax:\nDROP VIEW [IF EXISTS]\n    view_name [, view_name] ...\n    [RESTRICT | CASCADE]\n\nDROP VIEW removes one or more views. You must have the DROP privilege\nfor each view. If any of the views named in the argument list do not\nexist, MySQL returns an error indicating by name which nonexisting\nviews it was unable to drop, but it also drops all of the views in the\nlist that do exist.\n\nThe IF EXISTS clause prevents an error from occurring for views that\ndon''t exist. When this clause is given, a NOTE is generated for each\nnonexistent view. See [HELP SHOW WARNINGS].\n\nRESTRICT and CASCADE, if given, are parsed and ignored.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-view.html'),
(31, 'WITHIN', 30, 'Within(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially within g2. This\ntests the opposite relationship as Contains().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html'),
(32, 'WEEK', 31, 'Syntax:\nWEEK(date[,mode])\n\nThis function returns the week number for date. The two-argument form\nof WEEK() enables you to specify whether the week starts on Sunday or\nMonday and whether the return value should be in the range from 0 to 53\nor from 1 to 53. If the mode argument is omitted, the value of the\ndefault_week_format system variable is used. See\nhttp://dev.mysql.com/doc/refman/5.1/en/server-system-variables.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT WEEK(''2008-02-20'');\n        -> 7\nmysql> SELECT WEEK(''2008-02-20'',0);\n        -> 7\nmysql> SELECT WEEK(''2008-02-20'',1);\n        -> 8\nmysql> SELECT WEEK(''2008-12-31'',1);\n        -> 53\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(33, 'SHOW PLUGINS', 26, 'Syntax:\nSHOW PLUGINS\n\nSHOW PLUGINS displays information about server plugins. Plugin\ninformation is also available in the INFORMATION_SCHEMA.PLUGINS table.\nSee http://dev.mysql.com/doc/refman/5.1/en/plugins-table.html.\n\nExample of SHOW PLUGINS output:\n\nmysql> SHOW PLUGINS\\G\n*************************** 1. row ***************************\n   Name: binlog\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 2. row ***************************\n   Name: CSV\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 3. row ***************************\n   Name: MEMORY\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n*************************** 4. row ***************************\n   Name: MyISAM\n Status: ACTIVE\n   Type: STORAGE ENGINE\nLibrary: NULL\nLicense: GPL\n...\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-plugins.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-plugins.html'),
(34, 'DROP FUNCTION UDF', 21, 'Syntax:\nDROP FUNCTION function_name\n\nThis statement drops the user-defined function (UDF) named\nfunction_name.\n\nTo drop a function, you must have the DELETE privilege for the mysql\ndatabase. This is because DROP FUNCTION removes a row from the\nmysql.func system table that records the function''s name, type, and\nshared library name.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-function-udf.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-function-udf.html'),
(35, 'PREPARE', 26, 'Syntax:\nPREPARE stmt_name FROM preparable_stmt\n\nThe PREPARE statement prepares a statement and assigns it a name,\nstmt_name, by which to refer to the statement later. Statement names\nare not case sensitive. preparable_stmt is either a string literal or a\nuser variable that contains the text of the statement. The text must\nrepresent a single SQL statement, not multiple statements. Within the\nstatement, "?" characters can be used as parameter markers to indicate\nwhere data values are to be bound to the query later when you execute\nit. The "?" characters should not be enclosed within quotation marks,\neven if you intend to bind them to string values. Parameter markers can\nbe used only where data values should appear, not for SQL keywords,\nidentifiers, and so forth.\n\nIf a prepared statement with the given name already exists, it is\ndeallocated implicitly before the new statement is prepared. This means\nthat if the new statement contains an error and cannot be prepared, an\nerror is returned and no statement with the given name exists.\n\nA prepared statement is executed with EXECUTE and released with\nDEALLOCATE PREPARE.\n\nThe scope of a prepared statement is the session within which it is\ncreated. Other sessions cannot see it.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/prepare.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/prepare.html'),
(36, 'LOCK', 8, 'Syntax:\nLOCK TABLES\n    tbl_name [[AS] alias] lock_type\n    [, tbl_name [[AS] alias] lock_type] ...\n\nlock_type:\n    READ [LOCAL]\n  | [LOW_PRIORITY] WRITE\n\nUNLOCK TABLES\n\nMySQL enables client sessions to acquire table locks explicitly for the\npurpose of cooperating with other sessions for access to tables, or to\nprevent other sessions from modifying tables during periods when a\nsession requires exclusive access to them. A session can acquire or\nrelease locks only for itself. One session cannot acquire locks for\nanother session or release locks held by another session.\n\nLocks may be used to emulate transactions or to get more speed when\nupdating tables. This is explained in more detail later in this\nsection.\n\nLOCK TABLES explicitly acquires table locks for the current client\nsession. Table locks can be acquired for base tables or views. You must\nhave the LOCK TABLES privilege, and the SELECT privilege for each\nobject to be locked.\n\nFor view locking, LOCK TABLES adds all base tables used in the view to\nthe set of tables to be locked and locks them automatically. If you\nlock a table explicitly with LOCK TABLES, any tables used in triggers\nare also locked implicitly, as described in\nhttp://dev.mysql.com/doc/refman/5.1/en/lock-tables-and-triggers.html.\n\nUNLOCK TABLES explicitly releases any table locks held by the current\nsession.\n\nAnother use for UNLOCK TABLES is to release the global read lock\nacquired with the FLUSH TABLES WITH READ LOCK statement, which enables\nyou to lock all tables in all databases. See [HELP FLUSH]. (This is a\nvery convenient way to get backups if you have a file system such as\nVeritas that can take snapshots in time.)\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/lock-tables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/lock-tables.html'),
(37, 'UPDATEXML', 36, 'Syntax:\nUpdateXML(xml_target, xpath_expr, new_xml)\n\nThis function replaces a single portion of a given fragment of XML\nmarkup xml_target with a new XML fragment new_xml, and then returns the\nchanged XML. The portion of xml_target that is replaced matches an\nXPath expression xpath_expr supplied by the user. If no expression\nmatching xpath_expr is found, or if multiple matches are found, the\nfunction returns the original xml_target XML fragment. All three\narguments should be strings.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/xml-functions.html\n\n', 'mysql> SELECT\n    ->   UpdateXML(''<a><b>ccc</b><d></d></a>'', ''/a'', ''<e>fff</e>'') AS val1,\n    ->   UpdateXML(''<a><b>ccc</b><d></d></a>'', ''/b'', ''<e>fff</e>'') AS val2,\n    ->   UpdateXML(''<a><b>ccc</b><d></d></a>'', ''//b'', ''<e>fff</e>'') AS val3,\n    ->   UpdateXML(''<a><b>ccc</b><d></d></a>'', ''/a/d'', ''<e>fff</e>'') AS val4,\n    ->   UpdateXML(''<a><d></d><b>ccc</b><d></d></a>'', ''/a/d'', ''<e>fff</e>'') AS val5\n    -> \\G\n\n*************************** 1. row ***************************\nval1: <e>fff</e>\nval2: <a><b>ccc</b><d></d></a>\nval3: <a><e>fff</e><d></d></a>\nval4: <a><b>ccc</b><e>fff</e></a>\nval5: <a><d></d><b>ccc</b><d></d></a>\n', 'http://dev.mysql.com/doc/refman/5.1/en/xml-functions.html'),
(38, 'RESET SLAVE', 26, 'Syntax:\nRESET SLAVE\n\nRESET SLAVE makes the slave forget its replication position in the\nmaster''s binary log. This statement is meant to be used for a clean\nstart: It deletes the master.info and relay-log.info files, all the\nrelay log files, and starts a new relay log file. To use RESET SLAVE,\nthe slave replication threads must be stopped (use STOP SLAVE if\nnecessary).\n\n*Note*: All relay log files are deleted, even if they have not been\ncompletely executed by the slave SQL thread. (This is a condition\nlikely to exist on a replication slave if you have issued a STOP SLAVE\nstatement or if the slave is highly loaded.)\n\nIf any startup options for setting connection parameters (such as\nmaster host, master port, master user, and master password) are in use,\nthen any corresponding connection information stored in the master.info\nfile is immediately reset using the values specified for these options.\nHowever, since these options are deprecated in MySQL 5.1 and removed\naltogether from MySQL 5.5, you are encouraged to use a CHANGE MASTER TO\nstatement instead to reset the connection parameters. (If you do not\nuse the startup options, you must issue CHANGE MASTER TO in such cases\nif you do not want the connection settings to be cleared.)\n\nIf the slave SQL thread was in the middle of replicating temporary\ntables when it was stopped, and RESET SLAVE is issued, these replicated\ntemporary tables are deleted on the slave.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/reset-slave.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/reset-slave.html'),
(39, 'SHOW BINARY LOGS', 26, 'Syntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [HELP PURGE BINARY LOGS], that shows\nhow to determine which logs can be purged.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+\n| Log_name      | File_size |\n+---------------+-----------+\n| binlog.000015 |    724935 |\n| binlog.000016 |    733481 |\n+---------------+-----------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-binary-logs.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-binary-logs.html'),
(40, 'POLYGON', 24, 'Polygon(ls1,ls2,...)\n\nConstructs a Polygon value from a number of LineString or WKB\nLineString arguments. If any argument does not represent a LinearRing\n(that is, not a closed and simple LineString), the return value is\nNULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-mysql-specific-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-mysql-specific-functions'),
(41, 'MINUTE', 31, 'Syntax:\nMINUTE(time)\n\nReturns the minute for time, in the range 0 to 59.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT MINUTE(''2008-02-03 10:05:03'');\n        -> 5\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(42, 'DAY', 31, 'Syntax:\nDAY(date)\n\nDAY() is a synonym for DAYOFMONTH().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(43, 'MID', 36, 'Syntax:\nMID(str,pos,len)\n\nMID(str,pos,len) is a synonym for SUBSTRING(str,pos,len).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(44, 'UUID', 15, 'Syntax:\nUUID()\n\nReturns a Universal Unique Identifier (UUID) generated according to\n"DCE 1.1: Remote Procedure Call" (Appendix A) CAE (Common Applications\nEnvironment) Specifications published by The Open Group in October 1997\n(Document Number C706,\nhttp://www.opengroup.org/public/pubs/catalog/c706.htm).\n\nA UUID is designed as a number that is globally unique in space and\ntime. Two calls to UUID() are expected to generate two different\nvalues, even if these calls are performed on two separate computers\nthat are not connected to each other.\n\nA UUID is a 128-bit number represented by a utf8 string of five\nhexadecimal numbers in aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee format:\n\no The first three numbers are generated from a timestamp.\n\no The fourth number preserves temporal uniqueness in case the timestamp\n  value loses monotonicity (for example, due to daylight saving time).\n\no The fifth number is an IEEE 802 node number that provides spatial\n  uniqueness. A random number is substituted if the latter is not\n  available (for example, because the host computer has no Ethernet\n  card, or we do not know how to find the hardware address of an\n  interface on your operating system). In this case, spatial uniqueness\n  cannot be guaranteed. Nevertheless, a collision should have very low\n  probability.\n\n  Currently, the MAC address of an interface is taken into account only\n  on FreeBSD and Linux. On other operating systems, MySQL uses a\n  randomly generated 48-bit number.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> SELECT UUID();\n        -> ''6ccd780c-baba-1026-9564-0040f4311e29''\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(45, 'LINESTRING', 24, 'LineString(pt1,pt2,...)\n\nConstructs a LineString value from a number of Point or WKB Point\narguments. If the number of arguments is less than two, the return\nvalue is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-mysql-specific-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-mysql-specific-functions'),
(46, 'SLEEP', 15, 'Syntax:\nSLEEP(duration)\n\nSleeps (pauses) for the number of seconds given by the duration\nargument, then returns 0. If SLEEP() is interrupted, it returns 1. The\nduration may have a fractional part given in microseconds.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(47, 'CONNECTION_ID', 17, 'Syntax:\nCONNECTION_ID()\n\nReturns the connection ID (thread ID) for the connection. Every\nconnection has an ID that is unique among the set of currently\nconnected clients.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT CONNECTION_ID();\n        -> 23786\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(48, 'DELETE', 27, 'Syntax:\nSingle-table syntax:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE] FROM tbl_name\n    [WHERE where_condition]\n    [ORDER BY ...]\n    [LIMIT row_count]\n\nMultiple-table syntax:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE]\n    tbl_name[.*] [, tbl_name[.*]] ...\n    FROM table_references\n    [WHERE where_condition]\n\nOr:\n\nDELETE [LOW_PRIORITY] [QUICK] [IGNORE]\n    FROM tbl_name[.*] [, tbl_name[.*]] ...\n    USING table_references\n    [WHERE where_condition]\n\nFor the single-table syntax, the DELETE statement deletes rows from\ntbl_name and returns a count of the number of deleted rows. This count\ncan be obtained by calling the ROW_COUNT() function (see\nhttp://dev.mysql.com/doc/refman/5.1/en/information-functions.html). The\nWHERE clause, if given, specifies the conditions that identify which\nrows to delete. With no WHERE clause, all rows are deleted. If the\nORDER BY clause is specified, the rows are deleted in the order that is\nspecified. The LIMIT clause places a limit on the number of rows that\ncan be deleted.\n\nFor the multiple-table syntax, DELETE deletes from each tbl_name the\nrows that satisfy the conditions. In this case, ORDER BY and LIMIT\ncannot be used.\n\nwhere_condition is an expression that evaluates to true for each row to\nbe deleted. It is specified as described in\nhttp://dev.mysql.com/doc/refman/5.1/en/select.html.\n\nCurrently, you cannot delete from a table and select from the same\ntable in a subquery.\n\nYou need the DELETE privilege on a table to delete rows from it. You\nneed only the SELECT privilege for any columns that are only read, such\nas those named in the WHERE clause.\n\nAs stated, a DELETE statement with no WHERE clause deletes all rows. A\nfaster way to do this, when you do not need to know the number of\ndeleted rows, is to use TRUNCATE TABLE. However, within a transaction\nor if you have a lock on the table, TRUNCATE TABLE cannot be used\nwhereas DELETE can. See [HELP TRUNCATE TABLE], and [HELP LOCK].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/delete.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/delete.html'),
(49, 'ROUND', 4, 'Syntax:\nROUND(X), ROUND(X,D)\n\nRounds the argument X to D decimal places. The rounding algorithm\ndepends on the data type of X. D defaults to 0 if not specified. D can\nbe negative to cause D digits left of the decimal point of the value X\nto become zero.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT ROUND(-1.23);\n        -> -1\nmysql> SELECT ROUND(-1.58);\n        -> -2\nmysql> SELECT ROUND(1.58);\n        -> 2\nmysql> SELECT ROUND(1.298, 1);\n        -> 1.3\nmysql> SELECT ROUND(1.298, 0);\n        -> 1\nmysql> SELECT ROUND(23.298, -1);\n        -> 20\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(50, 'NULLIF', 7, 'Syntax:\nNULLIF(expr1,expr2)\n\nReturns NULL if expr1 = expr2 is true, otherwise returns expr1. This is\nthe same as CASE WHEN expr1 = expr2 THEN NULL ELSE expr1 END.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html\n\n', 'mysql> SELECT NULLIF(1,1);\n        -> NULL\nmysql> SELECT NULLIF(1,2);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html'),
(51, 'CLOSE', 23, 'Syntax:\nCLOSE cursor_name\n\nThis statement closes a previously opened cursor.\n\nIf not closed explicitly, a cursor is closed at the end of the compound\nstatement in which it was declared.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/close.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/close.html'),
(52, 'STOP SLAVE', 26, 'Syntax:\nSTOP SLAVE [thread_type [, thread_type] ... ]\n\nthread_type: IO_THREAD | SQL_THREAD\n\nStops the slave threads. STOP SLAVE requires the SUPER privilege.\n\nLike START SLAVE, this statement may be used with the IO_THREAD and\nSQL_THREAD options to name the thread or threads to be stopped.\n\n*Note*: The transactional behavior of STOP SLAVE changed in MySQL\n5.1.35. Previously, it took effect immediately. Beginning with MySQL\n5.1.35, it waits until any current replication event group affecting\none or more non-transactional tables has finished executing (if there\nis any such replication group), or until the user issues a KILL QUERY\nor KILL CONNECTION statement. (Bug#319\n(http://bugs.mysql.com/bug.php?id=319), Bug#38205\n(http://bugs.mysql.com/bug.php?id=38205))\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/stop-slave.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/stop-slave.html'),
(53, 'TIMEDIFF', 31, 'Syntax:\nTIMEDIFF(expr1,expr2)\n\nTIMEDIFF() returns expr1 - expr2 expressed as a time value. expr1 and\nexpr2 are time or date-and-time expressions, but both must be of the\nsame type.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMEDIFF(''2000:01:01 00:00:00'',\n    ->                 ''2000:01:01 00:00:00.000001'');\n        -> ''-00:00:00.000001''\nmysql> SELECT TIMEDIFF(''2008-12-31 23:59:59.000001'',\n    ->                 ''2008-12-30 01:01:01.000002'');\n        -> ''46:58:57.999999''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(54, 'REPLACE FUNCTION', 36, 'Syntax:\nREPLACE(str,from_str,to_str)\n\nReturns the string str with all occurrences of the string from_str\nreplaced by the string to_str. REPLACE() performs a case-sensitive\nmatch when searching for from_str.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT REPLACE(''www.mysql.com'', ''w'', ''Ww'');\n        -> ''WwWwWw.mysql.com''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(55, 'USE', 28, 'Syntax:\nUSE db_name\n\nThe USE db_name statement tells MySQL to use the db_name database as\nthe default (current) database for subsequent statements. The database\nremains the default until the end of the session or another USE\nstatement is issued:\n\nUSE db1;\nSELECT COUNT(*) FROM mytable;   # selects from db1.mytable\nUSE db2;\nSELECT COUNT(*) FROM mytable;   # selects from db2.mytable\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/use.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/use.html'),
(56, 'LINEFROMTEXT', 3, 'LineFromText(wkt[,srid]), LineStringFromText(wkt[,srid])\n\nConstructs a LINESTRING value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkt-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkt-functions'),
(57, 'CASE OPERATOR', 7, 'Syntax:\nCASE value WHEN [compare_value] THEN result [WHEN [compare_value] THEN\nresult ...] [ELSE result] END\n\nCASE WHEN [condition] THEN result [WHEN [condition] THEN result ...]\n[ELSE result] END\n\nThe first version returns the result where value=compare_value. The\nsecond version returns the result for the first condition that is true.\nIf there was no matching result value, the result after ELSE is\nreturned, or NULL if there is no ELSE part.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html\n\n', 'mysql> SELECT CASE 1 WHEN 1 THEN ''one''\n    ->     WHEN 2 THEN ''two'' ELSE ''more'' END;\n        -> ''one''\nmysql> SELECT CASE WHEN 1>0 THEN ''true'' ELSE ''false'' END;\n        -> ''true''\nmysql> SELECT CASE BINARY ''B''\n    ->     WHEN ''a'' THEN 1 WHEN ''b'' THEN 2 END;\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html'),
(58, 'SHOW MASTER STATUS', 26, 'Syntax:\nSHOW MASTER STATUS\n\nThis statement provides status information about the binary log files\nof the master. It requires either the SUPER or REPLICATION CLIENT\nprivilege.\n\nExample:\n\nmysql> SHOW MASTER STATUS;\n+---------------+----------+--------------+------------------+\n| File          | Position | Binlog_Do_DB | Binlog_Ignore_DB |\n+---------------+----------+--------------+------------------+\n| mysql-bin.003 | 73       | test         | manual,mysql     |\n+---------------+----------+--------------+------------------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-master-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-master-status.html'),
(59, 'ADDTIME', 31, 'Syntax:\nADDTIME(expr1,expr2)\n\nADDTIME() adds expr2 to expr1 and returns the result. expr1 is a time\nor datetime expression, and expr2 is a time expression.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT ADDTIME(''2007-12-31 23:59:59.999999'', ''1 1:1:1.000002'');\n        -> ''2008-01-02 01:01:01.000001''\nmysql> SELECT ADDTIME(''01:00:00.999999'', ''02:00:00.999998'');\n        -> ''03:00:01.999997''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(60, 'SPATIAL', 33, 'For MyISAM tables, MySQL can create spatial indexes using syntax\nsimilar to that for creating regular indexes, but extended with the\nSPATIAL keyword. Currently, columns in spatial indexes must be declared\nNOT NULL. The following examples demonstrate how to create spatial\nindexes:\n\no With CREATE TABLE:\n\nCREATE TABLE geom (g GEOMETRY NOT NULL, SPATIAL INDEX(g)) ENGINE=MyISAM;\n\no With ALTER TABLE:\n\nALTER TABLE geom ADD SPATIAL INDEX(g);\n\no With CREATE INDEX:\n\nCREATE SPATIAL INDEX sp_index ON geom (g);\n\nFor MyISAM tables, SPATIAL INDEX creates an R-tree index. For storage\nengines that support nonspatial indexing of spatial columns, the engine\ncreates a B-tree index. A B-tree index on spatial values will be useful\nfor exact-value lookups, but not for range scans.\n\nFor more information on indexing spatial columns, see [HELP CREATE\nINDEX].\n\nTo drop spatial indexes, use ALTER TABLE or DROP INDEX:\n\no With ALTER TABLE:\n\nALTER TABLE geom DROP INDEX g;\n\no With DROP INDEX:\n\nDROP INDEX sp_index ON geom;\n\nExample: Suppose that a table geom contains more than 32,000\ngeometries, which are stored in the column g of type GEOMETRY. The\ntable also has an AUTO_INCREMENT column fid for storing object ID\nvalues.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-indexes.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-indexes.html'),
(61, 'TIMESTAMPDIFF', 31, 'Syntax:\nTIMESTAMPDIFF(unit,datetime_expr1,datetime_expr2)\n\nReturns datetime_expr2 - datetime_expr1, where datetime_expr1 and\ndatetime_expr2 are date or datetime expressions. One expression may be\na date and the other a datetime; a date value is treated as a datetime\nhaving the time part ''00:00:00'' where necessary. The unit for the\nresult (an integer) is given by the unit argument. The legal values for\nunit are the same as those listed in the description of the\nTIMESTAMPADD() function.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMESTAMPDIFF(MONTH,''2003-02-01'',''2003-05-01'');\n        -> 3\nmysql> SELECT TIMESTAMPDIFF(YEAR,''2002-05-01'',''2001-01-01'');\n        -> -1\nmysql> SELECT TIMESTAMPDIFF(MINUTE,''2003-02-01'',''2003-05-01 12:05:55'');\n        -> 128885\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(62, 'UPPER', 36, 'Syntax:\nUPPER(str)\n\nReturns the string str with all characters changed to uppercase\naccording to the current character set mapping. The default is latin1\n(cp1252 West European).\n\nmysql> SELECT UPPER(''Hej'');\n        -> ''HEJ''\n\nUPPER() is ineffective when applied to binary strings (BINARY,\nVARBINARY, BLOB). The description of LOWER() shows how to perform\nlettercase conversion of binary strings.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(63, 'FROM_UNIXTIME', 31, 'Syntax:\nFROM_UNIXTIME(unix_timestamp), FROM_UNIXTIME(unix_timestamp,format)\n\nReturns a representation of the unix_timestamp argument as a value in\n''YYYY-MM-DD HH:MM:SS'' or YYYYMMDDHHMMSS.uuuuuu format, depending on\nwhether the function is used in a string or numeric context. The value\nis expressed in the current time zone. unix_timestamp is an internal\ntimestamp value such as is produced by the UNIX_TIMESTAMP() function.\n\nIf format is given, the result is formatted according to the format\nstring, which is used the same way as listed in the entry for the\nDATE_FORMAT() function.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT FROM_UNIXTIME(1196440219);\n        -> ''2007-11-30 10:30:19''\nmysql> SELECT FROM_UNIXTIME(1196440219) + 0;\n        -> 20071130103019.000000\nmysql> SELECT FROM_UNIXTIME(UNIX_TIMESTAMP(),\n    ->                      ''%Y %D %M %h:%i:%s %x'');\n        -> ''2007 30th November 10:30:59 2007''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(64, 'MEDIUMBLOB', 22, 'MEDIUMBLOB\n\nA BLOB column with a maximum length of 16,777,215 (224 - 1) bytes. Each\nMEDIUMBLOB value is stored using a three-byte length prefix that\nindicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(65, 'IFNULL', 7, 'Syntax:\nIFNULL(expr1,expr2)\n\nIf expr1 is not NULL, IFNULL() returns expr1; otherwise it returns\nexpr2. IFNULL() returns a numeric or string value, depending on the\ncontext in which it is used.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html\n\n', 'mysql> SELECT IFNULL(1,0);\n        -> 1\nmysql> SELECT IFNULL(NULL,10);\n        -> 10\nmysql> SELECT IFNULL(1/0,10);\n        -> 10\nmysql> SELECT IFNULL(1/0,''yes'');\n        -> ''yes''\n', 'http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html'),
(66, 'SHOW FUNCTION CODE', 26, 'Syntax:\nSHOW FUNCTION CODE func_name\n\nThis statement is similar to SHOW PROCEDURE CODE but for stored\nfunctions. See [HELP SHOW PROCEDURE CODE].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-function-code.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-function-code.html'),
(67, 'SHOW ERRORS', 26, 'Syntax:\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW COUNT(*) ERRORS\n\nThis statement is similar to SHOW WARNINGS, except that instead of\ndisplaying errors, warnings, and notes, it displays only errors.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\nhttp://dev.mysql.com/doc/refman/5.1/en/select.html.\n\nThe SHOW COUNT(*) ERRORS statement displays the number of errors. You\ncan also retrieve this number from the error_count variable:\n\nSHOW COUNT(*) ERRORS;\nSELECT @@error_count;\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-errors.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-errors.html'),
(68, 'LEAST', 18, 'Syntax:\nLEAST(value1,value2,...)\n\nWith two or more arguments, returns the smallest (minimum-valued)\nargument. The arguments are compared using the following rules:\n\no If any argument is NULL, the result is NULL. No comparison is needed.\n\no If the return value is used in an INTEGER context or all arguments\n  are integer-valued, they are compared as integers.\n\no If the return value is used in a REAL context or all arguments are\n  real-valued, they are compared as reals.\n\no If the arguments comprise a mix of numbers and strings, they are\n  compared as numbers.\n\no If any argument is a nonbinary (character) string, the arguments are\n  compared as nonbinary strings.\n\no In all other cases, the arguments are compared as binary strings.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT LEAST(2,0);\n        -> 0\nmysql> SELECT LEAST(34.0,3.0,5.0,767.0);\n        -> 3.0\nmysql> SELECT LEAST(''B'',''A'',''C'');\n        -> ''A''\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(69, '=', 18, '=\n\nEqual:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 1 = 0;\n        -> 0\nmysql> SELECT ''0'' = 0;\n        -> 1\nmysql> SELECT ''0.0'' = 0;\n        -> 1\nmysql> SELECT ''0.01'' = 0;\n        -> 0\nmysql> SELECT ''.01'' = 0.01;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(70, 'REVERSE', 36, 'Syntax:\nREVERSE(str)\n\nReturns the string str with the order of the characters reversed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT REVERSE(''abc'');\n        -> ''cba''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(71, 'ISNULL', 18, 'Syntax:\nISNULL(expr)\n\nIf expr is NULL, ISNULL() returns 1, otherwise it returns 0.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT ISNULL(1+1);\n        -> 0\nmysql> SELECT ISNULL(1/0);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(72, 'BINARY', 22, 'BINARY(M)\n\nThe BINARY type is similar to the CHAR type, but stores binary byte\nstrings rather than nonbinary character strings. M represents the\ncolumn length in bytes.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(73, 'BLOB DATA TYPE', 22, 'A BLOB is a binary large object that can hold a variable amount of\ndata. The four BLOB types are TINYBLOB, BLOB, MEDIUMBLOB, and LONGBLOB.\nThese differ only in the maximum length of the values they can hold.\nThe four TEXT types are TINYTEXT, TEXT, MEDIUMTEXT, and LONGTEXT. These\ncorrespond to the four BLOB types and have the same maximum lengths and\nstorage requirements. See\nhttp://dev.mysql.com/doc/refman/5.1/en/storage-requirements.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/blob.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/blob.html'),
(74, 'BOUNDARY', 35, 'Boundary(g)\n\nReturns a geometry that is the closure of the combinatorial boundary of\nthe geometry value g.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#general-geometry-property-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#general-geometry-property-functions'),
(75, 'CREATE USER', 10, 'Syntax:\nCREATE USER user_specification [, user_specification] ...\n\nuser_specification:\n    user [IDENTIFIED BY [PASSWORD] ''password'']\n\nThe CREATE USER statement creates new MySQL accounts. To use it, you\nmust have the global CREATE USER privilege or the INSERT privilege for\nthe mysql database. For each account, CREATE USER creates a new row in\nthe mysql.user table that has no privileges. An error occurs if the\naccount already exists. Each account name uses the format described in\nhttp://dev.mysql.com/doc/refman/5.1/en/account-names.html. For example:\n\nCREATE USER ''jeffrey''@''localhost'' IDENTIFIED BY ''mypass'';\n\nIf you specify only the user name part of the account name, a host name\npart of ''%'' is used.\n\nThe account can be given a password with the optional IDENTIFIED BY\nclause. The user value and the password are given the same way as for\nthe GRANT statement. In particular, to specify the password in plain\ntext, omit the PASSWORD keyword. To specify the password as the hashed\nvalue as returned by the PASSWORD() function, include the PASSWORD\nkeyword. See [HELP GRANT].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-user.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-user.html'),
(76, 'POINT', 24, 'Point(x,y)\n\nConstructs a Point using its coordinates.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-mysql-specific-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-mysql-specific-functions'),
(77, 'CURRENT_USER', 17, 'Syntax:\nCURRENT_USER, CURRENT_USER()\n\nReturns the user name and host name combination for the MySQL account\nthat the server used to authenticate the current client. This account\ndetermines your access privileges. The return value is a string in the\nutf8 character set.\n\nThe value of CURRENT_USER() can differ from the value of USER().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT USER();\n        -> ''davida@localhost''\nmysql> SELECT * FROM mysql.user;\nERROR 1044: Access denied for user ''''@''localhost'' to\ndatabase ''mysql''\nmysql> SELECT CURRENT_USER();\n        -> ''@localhost''\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(78, 'LCASE', 36, 'Syntax:\nLCASE(str)\n\nLCASE() is a synonym for LOWER().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(79, '<=', 18, 'Syntax:\n<=\n\nLess than or equal:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 0.1 <= 2;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(80, 'SHOW PROFILES', 26, 'Syntax:\nSHOW PROFILE [type [, type] ... ]\n    [FOR QUERY n]\n    [LIMIT row_count [OFFSET offset]]\n\ntype:\n    ALL\n  | BLOCK IO\n  | CONTEXT SWITCHES\n  | CPU\n  | IPC\n  | MEMORY\n  | PAGE FAULTS\n  | SOURCE\n  | SWAPS\n\nThe SHOW PROFILES and SHOW PROFILE statements display profiling\ninformation that indicates resource usage for statements executed\nduring the course of the current session.\n\nProfiling is controlled by the profiling session variable, which has a\ndefault value of 0 (OFF). Profiling is enabled by setting profiling to\n1 or ON:\n\nmysql> SET profiling = 1;\n\nSHOW PROFILES displays a list of the most recent statements sent to the\nmaster. The size of the list is controlled by the\nprofiling_history_size session variable, which has a default value of\n15. The maximum value is 100. Setting the value to 0 has the practical\neffect of disabling profiling.\n\nAll statements are profiled except SHOW PROFILES and SHOW PROFILE, so\nyou will find neither of those statements in the profile list.\nMalformed statements are profiled. For example, SHOW PROFILING is an\nillegal statement, and a syntax error occurs if you try to execute it,\nbut it will show up in the profiling list.\n\nSHOW PROFILE displays detailed information about a single statement.\nWithout the FOR QUERY n clause, the output pertains to the most\nrecently executed statement. If FOR QUERY n is included, SHOW PROFILE\ndisplays information for statement n. The values of n correspond to the\nQuery_ID values displayed by SHOW PROFILES.\n\nThe LIMIT row_count clause may be given to limit the output to\nrow_count rows. If LIMIT is given, OFFSET offset may be added to begin\nthe output offset rows into the full set of rows.\n\nBy default, SHOW PROFILE displays Status and Duration columns. The\nStatus values are like the State values displayed by SHOW PROCESSLIST,\nalthought there might be some minor differences in interpretion for the\ntwo statements for some status values (see\nhttp://dev.mysql.com/doc/refman/5.1/en/thread-information.html).\n\nOptional type values may be specified to display specific additional\ntypes of information:\n\no ALL displays all information\n\no BLOCK IO displays counts for block input and output operations\n\no CONTEXT SWITCHES displays counts for voluntary and involuntary\n  context switches\n\no CPU displays user and system CPU usage times\n\no IPC displays counts for messages sent and received\n\no MEMORY is not currently implemented\n\no PAGE FAULTS displays counts for major and minor page faults\n\no SOURCE displays the names of functions from the source code, together\n  with the name and line number of the file in which the function\n  occurs\n\no SWAPS displays swap counts\n\nProfiling is enabled per session. When a session ends, its profiling\ninformation is lost.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-profiles.html\n\n', 'mysql> SELECT @@profiling;\n+-------------+\n| @@profiling |\n+-------------+\n|           0 |\n+-------------+\n1 row in set (0.00 sec)\n\nmysql> SET profiling = 1;\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> DROP TABLE IF EXISTS t1;\nQuery OK, 0 rows affected, 1 warning (0.00 sec)\n\nmysql> CREATE TABLE T1 (id INT);\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SHOW PROFILES;\n+----------+----------+--------------------------+\n| Query_ID | Duration | Query                    |\n+----------+----------+--------------------------+\n|        0 | 0.000088 | SET PROFILING = 1        |\n|        1 | 0.000136 | DROP TABLE IF EXISTS t1  |\n|        2 | 0.011947 | CREATE TABLE t1 (id INT) |\n+----------+----------+--------------------------+\n3 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE;\n+----------------------+----------+\n| Status               | Duration |\n+----------------------+----------+\n| checking permissions | 0.000040 |\n| creating table       | 0.000056 |\n| After create         | 0.011363 |\n| query end            | 0.000375 |\n| freeing items        | 0.000089 |\n| logging slow query   | 0.000019 |\n| cleaning up          | 0.000005 |\n+----------------------+----------+\n7 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE FOR QUERY 1;\n+--------------------+----------+\n| Status             | Duration |\n+--------------------+----------+\n| query end          | 0.000107 |\n| freeing items      | 0.000008 |\n| logging slow query | 0.000015 |\n| cleaning up        | 0.000006 |\n+--------------------+----------+\n4 rows in set (0.00 sec)\n\nmysql> SHOW PROFILE CPU FOR QUERY 2;\n+----------------------+----------+----------+------------+\n| Status               | Duration | CPU_user | CPU_system |\n+----------------------+----------+----------+------------+\n| checking permissions | 0.000040 | 0.000038 |   0.000002 |\n| creating table       | 0.000056 | 0.000028 |   0.000028 |\n| After create         | 0.011363 | 0.000217 |   0.001571 |\n| query end            | 0.000375 | 0.000013 |   0.000028 |\n| freeing items        | 0.000089 | 0.000010 |   0.000014 |\n| logging slow query   | 0.000019 | 0.000009 |   0.000010 |\n| cleaning up          | 0.000005 | 0.000003 |   0.000002 |\n+----------------------+----------+----------+------------+\n7 rows in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-profiles.html'),
(81, 'UPDATE', 27, 'Syntax:\nSingle-table syntax:\n\nUPDATE [LOW_PRIORITY] [IGNORE] table_reference\n    SET col_name1={expr1|DEFAULT} [, col_name2={expr2|DEFAULT}] ...\n    [WHERE where_condition]\n    [ORDER BY ...]\n    [LIMIT row_count]\n\nMultiple-table syntax:\n\nUPDATE [LOW_PRIORITY] [IGNORE] table_references\n    SET col_name1={expr1|DEFAULT} [, col_name2={expr2|DEFAULT}] ...\n    [WHERE where_condition]\n\nFor the single-table syntax, the UPDATE statement updates columns of\nexisting rows in the named table with new values. The SET clause\nindicates which columns to modify and the values they should be given.\nEach value can be given as an expression, or the keyword DEFAULT to set\na column explicitly to its default value. The WHERE clause, if given,\nspecifies the conditions that identify which rows to update. With no\nWHERE clause, all rows are updated. If the ORDER BY clause is\nspecified, the rows are updated in the order that is specified. The\nLIMIT clause places a limit on the number of rows that can be updated.\n\nFor the multiple-table syntax, UPDATE updates rows in each table named\nin table_references that satisfy the conditions. In this case, ORDER BY\nand LIMIT cannot be used.\n\nwhere_condition is an expression that evaluates to true for each row to\nbe updated. For expression syntax, see\nhttp://dev.mysql.com/doc/refman/5.1/en/expressions.html.\n\ntable_references and where_condition are is specified as described in\nhttp://dev.mysql.com/doc/refman/5.1/en/select.html.\n\nYou need the UPDATE privilege only for columns referenced in an UPDATE\nthat are actually updated. You need only the SELECT privilege for any\ncolumns that are read but not modified.\n\nThe UPDATE statement supports the following modifiers:\n\no With the LOW_PRIORITY keyword, execution of the UPDATE is delayed\n  until no other clients are reading from the table. This affects only\n  storage engines that use only table-level locking (such as MyISAM,\n  MEMORY, and MERGE).\n\no With the IGNORE keyword, the update statement does not abort even if\n  errors occur during the update. Rows for which duplicate-key\n  conflicts occur are not updated. Rows for which columns are updated\n  to values that would cause data conversion errors are updated to the\n  closest valid values instead.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/update.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/update.html'),
(82, 'IS NOT NULL', 18, 'Syntax:\nIS NOT NULL\n\nTests whether a value is not NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 1 IS NOT NULL, 0 IS NOT NULL, NULL IS NOT NULL;\n        -> 1, 1, 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(83, 'CASE STATEMENT', 23, 'Syntax:\nCASE case_value\n    WHEN when_value THEN statement_list\n    [WHEN when_value THEN statement_list] ...\n    [ELSE statement_list]\nEND CASE\n\nOr:\n\nCASE\n    WHEN search_condition THEN statement_list\n    [WHEN search_condition THEN statement_list] ...\n    [ELSE statement_list]\nEND CASE\n\nThe CASE statement for stored programs implements a complex conditional\nconstruct. If a search_condition evaluates to true, the corresponding\nSQL statement list is executed. If no search condition matches, the\nstatement list in the ELSE clause is executed. Each statement_list\nconsists of one or more statements.\n\nIf no when_value or search_condition matches the value tested and the\nCASE statement contains no ELSE clause, a Case not found for CASE\nstatement error results.\n\nEach statement_list consists of one or more statements; an empty\nstatement_list is not permitted. To handle situations where no value is\nmatched by any WHEN clause, use an ELSE containing an empty BEGIN ...\nEND block, as shown in this example: DELIMITER | CREATE PROCEDURE p()\nBEGIN DECLARE v INT DEFAULT 1; CASE v WHEN 2 THEN SELECT v; WHEN 3 THEN\nSELECT 0; ELSE BEGIN END; END CASE; END; | (The indentation used here\nin the ELSE clause is for purposes of clarity only, and is not\notherwise significant.)\n\n*Note*: The syntax of the CASE statement used inside stored programs\ndiffers slightly from that of the SQL CASE expression described in\nhttp://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html. The\nCASE statement cannot have an ELSE NULL clause, and it is terminated\nwith END CASE instead of END.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/case-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/case-statement.html'),
(84, 'EXECUTE STATEMENT', 26, 'Syntax:\nEXECUTE stmt_name\n    [USING @var_name [, @var_name] ...]\n\nAfter preparing a statement with PREPARE, you execute it with an\nEXECUTE statement that refers to the prepared statement name. If the\nprepared statement contains any parameter markers, you must supply a\nUSING clause that lists user variables containing the values to be\nbound to the parameters. Parameter values can be supplied only by user\nvariables, and the USING clause must name exactly as many variables as\nthe number of parameter markers in the statement.\n\nYou can execute a given prepared statement multiple times, passing\ndifferent variables to it or setting the variables to different values\nbefore each execution.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/execute.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/execute.html'),
(85, 'DROP INDEX', 38, 'Syntax:\nDROP [ONLINE|OFFLINE] INDEX index_name ON tbl_name\n\nDROP INDEX drops the index named index_name from the table tbl_name.\nThis statement is mapped to an ALTER TABLE statement to drop the index.\nSee [HELP ALTER TABLE].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-index.html'),
(86, 'MATCH AGAINST', 36, 'Syntax:\nMATCH (col1,col2,...) AGAINST (expr [search_modifier])\n\nMySQL has support for full-text indexing and searching:\n\no A full-text index in MySQL is an index of type FULLTEXT.\n\no Full-text indexes can be used only with MyISAM tables, and can be\n  created only for CHAR, VARCHAR, or TEXT columns.\n\no A FULLTEXT index definition can be given in the CREATE TABLE\n  statement when a table is created, or added later using ALTER TABLE\n  or CREATE INDEX.\n\no For large data sets, it is much faster to load your data into a table\n  that has no FULLTEXT index and then create the index after that, than\n  to load data into a table that has an existing FULLTEXT index.\n\nFull-text searching is performed using MATCH() ... AGAINST syntax.\nMATCH() takes a comma-separated list that names the columns to be\nsearched. AGAINST takes a string to search for, and an optional\nmodifier that indicates what type of search to perform. The search\nstring must be a literal string, not a variable or a column name. There\nare three types of full-text searches:\n\no A boolean search interprets the search string using the rules of a\n  special query language. The string contains the words to search for.\n  It can also contain operators that specify requirements such that a\n  word must be present or absent in matching rows, or that it should be\n  weighted higher or lower than usual. Common words such as "some" or\n  "then" are stopwords and do not match if present in the search\n  string. The IN BOOLEAN MODE modifier specifies a boolean search. For\n  more information, see\n  http://dev.mysql.com/doc/refman/5.1/en/fulltext-boolean.html.\n\no A natural language search interprets the search string as a phrase in\n  natural human language (a phrase in free text). There are no special\n  operators. The stopword list applies. In addition, words that are\n  present in 50% or more of the rows are considered common and do not\n  match. Full-text searches are natural language searches if the IN\n  NATURAL LANGUAGE MODE modifier is given or if no modifier is given.\n\no A query expansion search is a modification of a natural language\n  search. The search string is used to perform a natural language\n  search. Then words from the most relevant rows returned by the search\n  are added to the search string and the search is done again. The\n  query returns the rows from the second search. The IN NATURAL\n  LANGUAGE MODE WITH QUERY EXPANSION or WITH QUERY EXPANSION modifier\n  specifies a query expansion search. For more information, see\n  http://dev.mysql.com/doc/refman/5.1/en/fulltext-query-expansion.html.\n\nThe IN NATURAL LANGUAGE MODE and IN NATURAL LANGUAGE MODE WITH QUERY\nEXPANSION modifiers were added in MySQL 5.1.7.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/fulltext-search.html\n\n', 'mysql> SELECT id, body, MATCH (title,body) AGAINST\n    -> (''Security implications of running MySQL as root''\n    -> IN NATURAL LANGUAGE MODE) AS score\n    -> FROM articles WHERE MATCH (title,body) AGAINST\n    -> (''Security implications of running MySQL as root''\n    -> IN NATURAL LANGUAGE MODE);\n+----+-------------------------------------+-----------------+\n| id | body                                | score           |\n+----+-------------------------------------+-----------------+\n|  4 | 1. Never run mysqld as root. 2. ... | 1.5219271183014 |\n|  6 | When configured properly, MySQL ... | 1.3114095926285 |\n+----+-------------------------------------+-----------------+\n2 rows in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/fulltext-search.html'),
(87, 'CREATE EVENT', 38, 'Syntax:\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    EVENT\n    [IF NOT EXISTS]\n    event_name\n    ON SCHEDULE schedule\n    [ON COMPLETION [NOT] PRESERVE]\n    [ENABLE | DISABLE | DISABLE ON SLAVE]\n    [COMMENT ''comment'']\n    DO event_body;\n\nschedule:\n    AT timestamp [+ INTERVAL interval] ...\n  | EVERY interval\n    [STARTS timestamp [+ INTERVAL interval] ...]\n    [ENDS timestamp [+ INTERVAL interval] ...]\n\ninterval:\n    quantity {YEAR | QUARTER | MONTH | DAY | HOUR | MINUTE |\n              WEEK | SECOND | YEAR_MONTH | DAY_HOUR | DAY_MINUTE |\n              DAY_SECOND | HOUR_MINUTE | HOUR_SECOND | MINUTE_SECOND}\n\nThis statement creates and schedules a new event. The event will not\nrun unless the Event Scheduler is enabled. For information about\nchecking Event Scheduler status and enabling it if necessary, see\nhttp://dev.mysql.com/doc/refman/5.1/en/events-configuration.html.\n\nCREATE EVENT requires the EVENT privilege for the schema in which the\nevent is to be created. It might also require the SUPER privilege,\ndepending on the DEFINER value, as described later in this section.\n\nThe minimum requirements for a valid CREATE EVENT statement are as\nfollows:\n\no The keywords CREATE EVENT plus an event name, which uniquely\n  identifies the event within a database schema. (Prior to MySQL\n  5.1.12, the event name needed to be unique only among events created\n  by the same user within a schema.)\n\no An ON SCHEDULE clause, which determines when and how often the event\n  executes.\n\no A DO clause, which contains the SQL statement to be executed by an\n  event.\n\nThis is an example of a minimal CREATE EVENT statement:\n\nCREATE EVENT myevent\n    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR\n    DO\n      UPDATE myschema.mytable SET mycol = mycol + 1;\n\nThe previous statement creates an event named myevent. This event\nexecutes once---one hour following its creation---by running an SQL\nstatement that increments the value of the myschema.mytable table''s\nmycol column by 1.\n\nThe event_name must be a valid MySQL identifier with a maximum length\nof 64 characters. Event names are not case sensitive, so you cannot\nhave two events named myevent and MyEvent in the same schema. In\ngeneral, the rules governing event names are the same as those for\nnames of stored routines. See\nhttp://dev.mysql.com/doc/refman/5.1/en/identifiers.html.\n\nAn event is associated with a schema. If no schema is indicated as part\nof event_name, the default (current) schema is assumed. To create an\nevent in a specific schema, qualify the event name with a schema using\nschema_name.event_name syntax.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-event.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-event.html'),
(88, 'ABS', 4, 'Syntax:\nABS(X)\n\nReturns the absolute value of X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT ABS(2);\n        -> 2\nmysql> SELECT ABS(-32);\n        -> 32\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(89, 'POLYFROMWKB', 32, 'PolyFromWKB(wkb[,srid]), PolygonFromWKB(wkb[,srid])\n\nConstructs a POLYGON value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkb-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkb-functions'),
(90, 'NOT LIKE', 36, 'Syntax:\nexpr NOT LIKE pat [ESCAPE ''escape_char'']\n\nThis is the same as NOT (expr LIKE pat [ESCAPE ''escape_char'']).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html'),
(91, 'SPACE', 36, 'Syntax:\nSPACE(N)\n\nReturns a string consisting of N space characters.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT SPACE(6);\n        -> ''      ''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(92, 'MBR DEFINITION', 6, 'Its MBR (Minimum Bounding Rectangle), or Envelope. This is the bounding\ngeometry, formed by the minimum and maximum (X,Y) coordinates:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-class-geometry.html\n\n', '((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))\n', 'http://dev.mysql.com/doc/refman/5.1/en/gis-class-geometry.html'),
(93, 'GEOMETRYCOLLECTION', 24, 'GeometryCollection(g1,g2,...)\n\nConstructs a GeometryCollection.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-mysql-specific-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-mysql-specific-functions'),
(94, 'MAX', 16, 'Syntax:\nMAX([DISTINCT] expr)\n\nReturns the maximum value of expr. MAX() may take a string argument; in\nsuch cases, it returns the maximum string value. See\nhttp://dev.mysql.com/doc/refman/5.1/en/mysql-indexes.html. The DISTINCT\nkeyword can be used to find the maximum of the distinct values of expr,\nhowever, this produces the same result as omitting DISTINCT.\n\nMAX() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', 'mysql> SELECT student_name, MIN(test_score), MAX(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(95, 'CREATE FUNCTION UDF', 21, 'Syntax:\nCREATE [AGGREGATE] FUNCTION function_name RETURNS {STRING|INTEGER|REAL|DECIMAL}\n    SONAME shared_library_name\n\nA user-defined function (UDF) is a way to extend MySQL with a new\nfunction that works like a native (built-in) MySQL function such as\nABS() or CONCAT().\n\nfunction_name is the name that should be used in SQL statements to\ninvoke the function. The RETURNS clause indicates the type of the\nfunction''s return value. DECIMAL is a legal value after RETURNS, but\ncurrently DECIMAL functions return string values and should be written\nlike STRING functions.\n\nshared_library_name is the basename of the shared object file that\ncontains the code that implements the function. The file must be\nlocated in the plugin directory. This directory is given by the value\nof the plugin_dir system variable.\n\n*Note*: This is a change in MySQL 5.1. For earlier versions of MySQL,\nthe shared object can be located in any directory that is searched by\nyour system''s dynamic linker. For more information, see\nhttp://dev.mysql.com/doc/refman/5.1/en/udf-compiling.html.\n\nTo create a function, you must have the INSERT privilege for the mysql\ndatabase. This is necessary because CREATE FUNCTION adds a row to the\nmysql.func system table that records the function''s name, type, and\nshared library name. If you do not have this table, you should run the\nmysql_upgrade command to create it. See\nhttp://dev.mysql.com/doc/refman/5.1/en/mysql-upgrade.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-function-udf.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-function-udf.html'),
(96, '*', 4, 'Syntax:\n*\n\nMultiplication:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3*5;\n        -> 15\nmysql> SELECT 18014398509481984*18014398509481984.0;\n        -> 324518553658426726783156020576256.0\n', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html'),
(97, 'TIMESTAMP', 22, 'TIMESTAMP\n\nA timestamp. The range is ''1970-01-01 00:00:01'' UTC to ''2038-01-19\n03:14:07'' UTC. TIMESTAMP values are stored as the number of seconds\nsince the epoch (''1970-01-01 00:00:00'' UTC). A TIMESTAMP cannot\nrepresent the value ''1970-01-01 00:00:00'' because that is equivalent to\n0 seconds from the epoch and the value 0 is reserved for representing\n''0000-00-00 00:00:00'', the "zero" TIMESTAMP value.\n\nA TIMESTAMP column is useful for recording the date and time of an\nINSERT or UPDATE operation. By default, the first TIMESTAMP column in a\ntable is automatically set to the date and time of the most recent\noperation if you do not assign it a value yourself. You can also set\nany TIMESTAMP column to the current date and time by assigning it a\nNULL value. Variations on automatic initialization and update\nproperties are described in\nhttp://dev.mysql.com/doc/refman/5.1/en/timestamp.html.\n\nA TIMESTAMP value is returned as a string in the format ''YYYY-MM-DD\nHH:MM:SS'' with a display width fixed at 19 characters. To obtain the\nvalue as a number, you should add +0 to the timestamp column.\n\n*Note*: The TIMESTAMP format that was used prior to MySQL 4.1 is not\nsupported in MySQL 5.1; see MySQL 3.23, 4.0, 4.1 Reference Manual for\ninformation regarding the old format.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html'),
(98, 'DES_DECRYPT', 12, 'Syntax:\nDES_DECRYPT(crypt_str[,key_str])\n\nDecrypts a string encrypted with DES_ENCRYPT(). If an error occurs,\nthis function returns NULL.\n\nThis function works only if MySQL has been configured with SSL support.\nSee http://dev.mysql.com/doc/refman/5.1/en/secure-connections.html.\n\nIf no key_str argument is given, DES_DECRYPT() examines the first byte\nof the encrypted string to determine the DES key number that was used\nto encrypt the original string, and then reads the key from the DES key\nfile to decrypt the message. For this to work, the user must have the\nSUPER privilege. The key file can be specified with the --des-key-file\nserver option.\n\nIf you pass this function a key_str argument, that string is used as\nthe key for decrypting the message.\n\nIf the crypt_str argument does not appear to be an encrypted string,\nMySQL returns the given crypt_str.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(99, 'CACHE INDEX', 26, 'Syntax:\nCACHE INDEX\n  tbl_index_list [, tbl_index_list] ...\n  IN key_cache_name\n\ntbl_index_list:\n  tbl_name [[INDEX|KEY] (index_name[, index_name] ...)]\n\nThe CACHE INDEX statement assigns table indexes to a specific key\ncache. It is used only for MyISAM tables. After the indexes have been\nassigned, they can be preloaded into the cache if desired with LOAD\nINDEX INTO CACHE.\n\nThe following statement assigns indexes from the tables t1, t2, and t3\nto the key cache named hot_cache:\n\nmysql> CACHE INDEX t1, t2, t3 IN hot_cache;\n+---------+--------------------+----------+----------+\n| Table   | Op                 | Msg_type | Msg_text |\n+---------+--------------------+----------+----------+\n| test.t1 | assign_to_keycache | status   | OK       |\n| test.t2 | assign_to_keycache | status   | OK       |\n| test.t3 | assign_to_keycache | status   | OK       |\n+---------+--------------------+----------+----------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/cache-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/cache-index.html'),
(100, 'ENDPOINT', 13, 'EndPoint(ls)\n\nReturns the Point that is the endpoint of the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#linestring-property-functions\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT AsText(EndPoint(GeomFromText(@ls)));\n+-------------------------------------+\n| AsText(EndPoint(GeomFromText(@ls))) |\n+-------------------------------------+\n| POINT(3 3)                          |\n+-------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#linestring-property-functions'),
(101, 'COMPRESS', 12, 'Syntax:\nCOMPRESS(string_to_compress)\n\nCompresses a string and returns the result as a binary string. This\nfunction requires MySQL to have been compiled with a compression\nlibrary such as zlib. Otherwise, the return value is always NULL. The\ncompressed string can be uncompressed with UNCOMPRESS().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT LENGTH(COMPRESS(REPEAT(''a'',1000)));\n        -> 21\nmysql> SELECT LENGTH(COMPRESS(''''));\n        -> 0\nmysql> SELECT LENGTH(COMPRESS(''a''));\n        -> 13\nmysql> SELECT LENGTH(COMPRESS(REPEAT(''a'',16)));\n        -> 15\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(102, 'INSERT', 27, 'Syntax:\nINSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name [(col_name,...)]\n    {VALUES | VALUE} ({expr | DEFAULT},...),(...),...\n    [ ON DUPLICATE KEY UPDATE\n      col_name=expr\n        [, col_name=expr] ... ]\n\nOr:\n\nINSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name\n    SET col_name={expr | DEFAULT}, ...\n    [ ON DUPLICATE KEY UPDATE\n      col_name=expr\n        [, col_name=expr] ... ]\n\nOr:\n\nINSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name [(col_name,...)]\n    SELECT ...\n    [ ON DUPLICATE KEY UPDATE\n      col_name=expr\n        [, col_name=expr] ... ]\n\nINSERT inserts new rows into an existing table. The INSERT ... VALUES\nand INSERT ... SET forms of the statement insert rows based on\nexplicitly specified values. The INSERT ... SELECT form inserts rows\nselected from another table or tables. INSERT ... SELECT is discussed\nfurther in [HELP INSERT SELECT].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/insert.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/insert.html'),
(103, 'COUNT', 16, 'Syntax:\nCOUNT(expr)\n\nReturns a count of the number of non-NULL values of expr in the rows\nretrieved by a SELECT statement. The result is a BIGINT value.\n\nCOUNT() returns 0 if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', 'mysql> SELECT student.student_name,COUNT(*)\n    ->        FROM student,course\n    ->        WHERE student.student_id=course.student_id\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(104, 'HANDLER', 27, 'Syntax:\nHANDLER tbl_name OPEN [ [AS] alias]\n\nHANDLER tbl_name READ index_name { = | <= | >= | < | > } (value1,value2,...)\n    [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name READ index_name { FIRST | NEXT | PREV | LAST }\n    [ WHERE where_condition ] [LIMIT ... ]\nHANDLER tbl_name READ { FIRST | NEXT }\n    [ WHERE where_condition ] [LIMIT ... ]\n\nHANDLER tbl_name CLOSE\n\nThe HANDLER statement provides direct access to table storage engine\ninterfaces. It is available for MyISAM and InnoDB tables.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/handler.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/handler.html'),
(105, 'MLINEFROMTEXT', 3, 'MLineFromText(wkt[,srid]), MultiLineStringFromText(wkt[,srid])\n\nConstructs a MULTILINESTRING value using its WKT representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkt-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkt-functions'),
(106, 'GEOMCOLLFROMWKB', 32, 'GeomCollFromWKB(wkb[,srid]), GeometryCollectionFromWKB(wkb[,srid])\n\nConstructs a GEOMETRYCOLLECTION value using its WKB representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkb-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkb-functions'),
(107, 'HELP_DATE', 9, 'This help information was generated from the MySQL 5.1 Reference Manual\non: 2010-11-03\n', '', ''),
(108, 'RENAME TABLE', 38, 'Syntax:\nRENAME TABLE tbl_name TO new_tbl_name\n    [, tbl_name2 TO new_tbl_name2] ...\n\nThis statement renames one or more tables.\n\nThe rename operation is done atomically, which means that no other\nsession can access any of the tables while the rename is running. For\nexample, if you have an existing table old_table, you can create\nanother table new_table that has the same structure but is empty, and\nthen replace the existing table with the empty one as follows (assuming\nthat backup_table does not already exist):\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/rename-table.html\n\n', 'CREATE TABLE new_table (...);\nRENAME TABLE old_table TO backup_table, new_table TO old_table;\n', 'http://dev.mysql.com/doc/refman/5.1/en/rename-table.html'),
(109, 'BOOLEAN', 22, 'BOOL, BOOLEAN\n\nThese types are synonyms for TINYINT(1). A value of zero is considered\nfalse. Nonzero values are considered true:\n\nmysql> SELECT IF(0, ''true'', ''false'');\n+------------------------+\n| IF(0, ''true'', ''false'') |\n+------------------------+\n| false                  |\n+------------------------+\n\nmysql> SELECT IF(1, ''true'', ''false'');\n+------------------------+\n| IF(1, ''true'', ''false'') |\n+------------------------+\n| true                   |\n+------------------------+\n\nmysql> SELECT IF(2, ''true'', ''false'');\n+------------------------+\n| IF(2, ''true'', ''false'') |\n+------------------------+\n| true                   |\n+------------------------+\n\nHowever, the values TRUE and FALSE are merely aliases for 1 and 0,\nrespectively, as shown here:\n\nmysql> SELECT IF(0 = FALSE, ''true'', ''false'');\n+--------------------------------+\n| IF(0 = FALSE, ''true'', ''false'') |\n+--------------------------------+\n| true                           |\n+--------------------------------+\n\nmysql> SELECT IF(1 = TRUE, ''true'', ''false'');\n+-------------------------------+\n| IF(1 = TRUE, ''true'', ''false'') |\n+-------------------------------+\n| true                          |\n+-------------------------------+\n\nmysql> SELECT IF(2 = TRUE, ''true'', ''false'');\n+-------------------------------+\n| IF(2 = TRUE, ''true'', ''false'') |\n+-------------------------------+\n| false                         |\n+-------------------------------+\n\nmysql> SELECT IF(2 = FALSE, ''true'', ''false'');\n+--------------------------------+\n| IF(2 = FALSE, ''true'', ''false'') |\n+--------------------------------+\n| false                          |\n+--------------------------------+\n\nThe last two statements display the results shown because 2 is equal to\nneither 1 nor 0.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(110, 'DEFAULT', 15, 'Syntax:\nDEFAULT(col_name)\n\nReturns the default value for a table column. An error results if the\ncolumn has no default value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> UPDATE t SET i = DEFAULT(i)+1 WHERE id < 100;\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(111, 'MOD', 4, 'Syntax:\nMOD(N,M), N % M, N MOD M\n\nModulo operation. Returns the remainder of N divided by M.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT MOD(234, 10);\n        -> 4\nmysql> SELECT 253 % 7;\n        -> 1\nmysql> SELECT MOD(29,9);\n        -> 2\nmysql> SELECT 29 MOD 9;\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(112, 'TINYTEXT', 22, 'TINYTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 255 (28 - 1) characters. The\neffective maximum length is less if the value contains multi-byte\ncharacters. Each TINYTEXT value is stored using a one-byte length\nprefix that indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(113, 'OPTIMIZE TABLE', 20, 'Syntax:\nOPTIMIZE [NO_WRITE_TO_BINLOG | LOCAL] TABLE\n    tbl_name [, tbl_name] ...\n\nOPTIMIZE TABLE should be used if you have deleted a large part of a\ntable or if you have made many changes to a table with variable-length\nrows (tables that have VARCHAR, VARBINARY, BLOB, or TEXT columns).\nDeleted rows are maintained in a linked list and subsequent INSERT\noperations reuse old row positions. You can use OPTIMIZE TABLE to\nreclaim the unused space and to defragment the data file.\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nBeginning with MySQL 5.1.27, OPTIMIZE TABLE is also supported for\npartitioned tables. Also beginning with MySQL 5.1.27, you can use ALTER\nTABLE ... OPTIMIZE PARTITION to optimize one or more partitions; for\nmore information, see [HELP ALTER TABLE], and\nhttp://dev.mysql.com/doc/refman/5.1/en/partitioning-maintenance.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/optimize-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/optimize-table.html'),
(114, 'DECODE', 12, 'Syntax:\nDECODE(crypt_str,pass_str)\n\nDecrypts the encrypted string crypt_str using pass_str as the password.\ncrypt_str should be a string returned from ENCODE().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(115, '<=>', 18, 'Syntax:\n<=>\n\nNULL-safe equal. This operator performs an equality comparison like the\n= operator, but returns 1 rather than NULL if both operands are NULL,\nand 0 rather than NULL if one operand is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 1 <=> 1, NULL <=> NULL, 1 <=> NULL;\n        -> 1, 1, 0\nmysql> SELECT 1 = 1, NULL = NULL, 1 = NULL;\n        -> 1, NULL, NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(116, 'HELP STATEMENT', 28, 'Syntax:\nHELP ''search_string''\n\nThe HELP statement returns online information from the MySQL Reference\nmanual. Its proper operation requires that the help tables in the mysql\ndatabase be initialized with help topic information (see\nhttp://dev.mysql.com/doc/refman/5.1/en/server-side-help-support.html).\n\nThe HELP statement searches the help tables for the given search string\nand displays the result of the search. The search string is not case\nsensitive.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/help.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/help.html'),
(117, 'LOAD DATA FROM MASTER', 26, 'Syntax:\nLOAD DATA FROM MASTER\n\nThis feature is deprecated and should be avoided. It is subject to\nremoval in a future version of MySQL.\n\nSince the current implementation of LOAD DATA FROM MASTER and LOAD\nTABLE FROM MASTER is very limited, these statements are deprecated as\nof MySQL 4.1 and removed in MySQL 5.5.\n\nThe recommended alternative solution to using LOAD DATA FROM MASTER or\nLOAD TABLE FROM MASTER is using mysqldump or mysqlhotcopy. The latter\nrequires Perl and two Perl modules (DBI and DBD:mysql) and works for\nMyISAM and ARCHIVE tables only. With mysqldump, you can create SQL\ndumps on the master and pipe (or copy) these to a mysql client on the\nslave. This has the advantage of working for all storage engines, but\ncan be quite slow, since it works using SELECT.\n\nThis statement takes a snapshot of the master and copies it to the\nslave. It updates the values of MASTER_LOG_FILE and MASTER_LOG_POS so\nthat the slave starts replicating from the correct position. Any table\nand database exclusion rules specified with the --replicate-*-do-* and\n--replicate-*-ignore-* options are honored. --replicate-rewrite-db is\nnot taken into account because a user could use this option to set up a\nnonunique mapping such as --replicate-rewrite-db="db1->db3" and\n--replicate-rewrite-db="db2->db3", which would confuse the slave when\nloading tables from the master.\n\nUse of this statement is subject to the following conditions:\n\no It works only for MyISAM tables. Attempting to load a non-MyISAM\n  table results in the following error:\n\nERROR 1189 (08S01): Net error reading from master\n\no It acquires a global read lock on the master while taking the\n  snapshot, which prevents updates on the master during the load\n  operation.\n\nIf you are loading large tables, you might have to increase the values\nof net_read_timeout and net_write_timeout on both the master and slave\nservers. See\nhttp://dev.mysql.com/doc/refman/5.1/en/server-system-variables.html.\n\nNote that LOAD DATA FROM MASTER does not copy any tables from the mysql\ndatabase. This makes it easy to have different users and privileges on\nthe master and the slave.\n\nTo use LOAD DATA FROM MASTER, the replication account that is used to\nconnect to the master must have the RELOAD and SUPER privileges on the\nmaster and the SELECT privilege for all master tables you want to load.\nAll master tables for which the user does not have the SELECT privilege\nare ignored by LOAD DATA FROM MASTER. This is because the master hides\nthem from the user: LOAD DATA FROM MASTER calls SHOW DATABASES to know\nthe master databases to load, but SHOW DATABASES returns only databases\nfor which the user has some privilege. See [HELP SHOW DATABASES]. On\nthe slave side, the user that issues LOAD DATA FROM MASTER must have\nprivileges for dropping and creating the databases and tables that are\ncopied.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/load-data-from-master.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/load-data-from-master.html'),
(118, 'RESET', 26, 'Syntax:\nRESET reset_option [, reset_option] ...\n\nThe RESET statement is used to clear the state of various server\noperations. You must have the RELOAD privilege to execute RESET.\n\nRESET acts as a stronger version of the FLUSH statement. See [HELP\nFLUSH].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/reset.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/reset.html'),
(119, 'GET_LOCK', 15, 'Syntax:\nGET_LOCK(str,timeout)\n\nTries to obtain a lock with a name given by the string str, using a\ntimeout of timeout seconds. Returns 1 if the lock was obtained\nsuccessfully, 0 if the attempt timed out (for example, because another\nclient has previously locked the name), or NULL if an error occurred\n(such as running out of memory or the thread was killed with mysqladmin\nkill). If you have a lock obtained with GET_LOCK(), it is released when\nyou execute RELEASE_LOCK(), execute a new GET_LOCK(), or your\nconnection terminates (either normally or abnormally). Locks obtained\nwith GET_LOCK() do not interact with transactions. That is, committing\na transaction does not release any such locks obtained during the\ntransaction.\n\nThis function can be used to implement application locks or to simulate\nrecord locks. Names are locked on a server-wide basis. If a name has\nbeen locked by one client, GET_LOCK() blocks any request by another\nclient for a lock with the same name. This enables clients that agree\non a given lock name to use the name to perform cooperative advisory\nlocking. But be aware that it also enables a client that is not among\nthe set of cooperating clients to lock a name, either inadvertently or\ndeliberately, and thus prevent any of the cooperating clients from\nlocking that name. One way to reduce the likelihood of this is to use\nlock names that are database-specific or application-specific. For\nexample, use lock names of the form db_name.str or app_name.str.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> SELECT GET_LOCK(''lock1'',10);\n        -> 1\nmysql> SELECT IS_FREE_LOCK(''lock2'');\n        -> 1\nmysql> SELECT GET_LOCK(''lock2'',10);\n        -> 1\nmysql> SELECT RELEASE_LOCK(''lock2'');\n        -> 1\nmysql> SELECT RELEASE_LOCK(''lock1'');\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(120, 'UCASE', 36, 'Syntax:\nUCASE(str)\n\nUCASE() is a synonym for UPPER().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(121, 'SHOW BINLOG EVENTS', 26, 'Syntax:\nSHOW BINLOG EVENTS\n   [IN ''log_name''] [FROM pos] [LIMIT [offset,] row_count]\n\nShows the events in the binary log. If you do not specify ''log_name'',\nthe first binary log is displayed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-binlog-events.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-binlog-events.html'),
(122, 'MPOLYFROMWKB', 32, 'MPolyFromWKB(wkb[,srid]), MultiPolygonFromWKB(wkb[,srid])\n\nConstructs a MULTIPOLYGON value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkb-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkb-functions'),
(123, 'ITERATE', 23, 'Syntax:\nITERATE label\n\nITERATE can appear only within LOOP, REPEAT, and WHILE statements.\nITERATE means "do the loop again."\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/iterate-statement.html\n\n', 'CREATE PROCEDURE doiterate(p1 INT)\nBEGIN\n  label1: LOOP\n    SET p1 = p1 + 1;\n    IF p1 < 10 THEN ITERATE label1; END IF;\n    LEAVE label1;\n  END LOOP label1;\n  SET @x = p1;\nEND;\n', 'http://dev.mysql.com/doc/refman/5.1/en/iterate-statement.html'),
(124, 'DO', 27, 'Syntax:\nDO expr [, expr] ...\n\nDO executes the expressions but does not return any results. In most\nrespects, DO is shorthand for SELECT expr, ..., but has the advantage\nthat it is slightly faster when you do not care about the result.\n\nDO is useful primarily with functions that have side effects, such as\nRELEASE_LOCK().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/do.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/do.html'),
(125, 'CURTIME', 31, 'Syntax:\nCURTIME()\n\nReturns the current time as a value in ''HH:MM:SS'' or HHMMSS.uuuuuu\nformat, depending on whether the function is used in a string or\nnumeric context. The value is expressed in the current time zone.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT CURTIME();\n        -> ''23:50:26''\nmysql> SELECT CURTIME() + 0;\n        -> 235026.000000\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(126, 'CHAR_LENGTH', 36, 'Syntax:\nCHAR_LENGTH(str)\n\nReturns the length of the string str, measured in characters. A\nmulti-byte character counts as a single character. This means that for\na string containing five two-byte characters, LENGTH() returns 10,\nwhereas CHAR_LENGTH() returns 5.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(127, 'BIGINT', 22, 'BIGINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA large integer. The signed range is -9223372036854775808 to\n9223372036854775807. The unsigned range is 0 to 18446744073709551615.\n\nSERIAL is an alias for BIGINT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(128, 'SET', 26, 'Syntax:\nSET variable_assignment [, variable_assignment] ...\n\nvariable_assignment:\n      user_var_name = expr\n    | [GLOBAL | SESSION] system_var_name = expr\n    | [@@global. | @@session. | @@]system_var_name = expr\n\nThe SET statement assigns values to different types of variables that\naffect the operation of the server or your client. Older versions of\nMySQL employed SET OPTION, but this syntax is deprecated in favor of\nSET without OPTION.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/set-option.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/set-option.html'),
(129, 'CONV', 4, 'Syntax:\nCONV(N,from_base,to_base)\n\nConverts numbers between different number bases. Returns a string\nrepresentation of the number N, converted from base from_base to base\nto_base. Returns NULL if any argument is NULL. The argument N is\ninterpreted as an integer, but may be specified as an integer or a\nstring. The minimum base is 2 and the maximum base is 36. If to_base is\na negative number, N is regarded as a signed number. Otherwise, N is\ntreated as unsigned. CONV() works with 64-bit precision.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT CONV(''a'',16,2);\n        -> ''1010''\nmysql> SELECT CONV(''6E'',18,8);\n        -> ''172''\nmysql> SELECT CONV(-17,10,-18);\n        -> ''-H''\nmysql> SELECT CONV(10+''10''+''10''+0xa,10,10);\n        -> ''40''\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(130, 'DATE', 22, 'DATE\n\nA date. The supported range is ''1000-01-01'' to ''9999-12-31''. MySQL\ndisplays DATE values in ''YYYY-MM-DD'' format, but permits assignment of\nvalues to DATE columns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html'),
(131, 'SHOW OPEN TABLES', 26, 'Syntax:\nSHOW OPEN TABLES [{FROM | IN} db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW OPEN TABLES lists the non-TEMPORARY tables that are currently open\nin the table cache. See\nhttp://dev.mysql.com/doc/refman/5.1/en/table-cache.html. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nThe FROM and LIKE clauses may be used beginning with MySQL 5.1.24. The\nLIKE clause, if present, indicates which table names to match. The FROM\nclause, if present, restricts the tables shown to those present in the\ndb_name database.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-open-tables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-open-tables.html'),
(132, 'EXTRACT', 31, 'Syntax:\nEXTRACT(unit FROM date)\n\nThe EXTRACT() function uses the same kinds of unit specifiers as\nDATE_ADD() or DATE_SUB(), but extracts parts from the date rather than\nperforming date arithmetic.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT EXTRACT(YEAR FROM ''2009-07-02'');\n       -> 2009\nmysql> SELECT EXTRACT(YEAR_MONTH FROM ''2009-07-02 01:02:03'');\n       -> 200907\nmysql> SELECT EXTRACT(DAY_MINUTE FROM ''2009-07-02 01:02:03'');\n       -> 20102\nmysql> SELECT EXTRACT(MICROSECOND\n    ->                FROM ''2003-01-02 10:30:00.000123'');\n        -> 123\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(133, 'ENCRYPT', 12, 'Syntax:\nENCRYPT(str[,salt])\n\nEncrypts str using the Unix crypt() system call and returns a binary\nstring. The salt argument must be a string with at least two characters\nor the result will be NULL. If no salt argument is given, a random\nvalue is used.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT ENCRYPT(''hello'');\n        -> ''VxuFAJXVARROc''\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(134, 'SHOW STATUS', 26, 'Syntax:\nSHOW [GLOBAL | SESSION] STATUS\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW STATUS provides server status information. This information also\ncan be obtained using the mysqladmin extended-status command. The LIKE\nclause, if present, indicates which variable names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\nThis statement does not require any privilege. It requires only the\nability to connect to the server.\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern:\n\nmysql> SHOW STATUS LIKE ''Key%'';\n+--------------------+----------+\n| Variable_name      | Value    |\n+--------------------+----------+\n| Key_blocks_used    | 14955    |\n| Key_read_requests  | 96854827 |\n| Key_reads          | 162040   |\n| Key_write_requests | 7589728  |\n| Key_writes         | 3813196  |\n+--------------------+----------+\n\nWith the GLOBAL modifier, SHOW STATUS displays the status values for\nall connections to MySQL. With SESSION, it displays the status values\nfor the current connection. If no modifier is present, the default is\nSESSION. LOCAL is a synonym for SESSION.\n\nSome status variables have only a global value. For these, you get the\nsame value for both GLOBAL and SESSION. The scope for each status\nvariable is listed at\nhttp://dev.mysql.com/doc/refman/5.1/en/server-status-variables.html.\n\nEach invocation of the SHOW STATUS statement uses an internal temporary\ntable and increments the global Created_tmp_tables value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-status.html'),
(135, 'EXTRACTVALUE', 36, 'Syntax:\nExtractValue(xml_frag, xpath_expr)\n\nExtractValue() takes two string arguments, a fragment of XML markup\nxml_frag and an XPath expression xpath_expr (also known as a locator);\nit returns the text (CDATA) of the first text node which is a child of\nthe element(s) matched by the XPath expression. It is the equivalent of\nperforming a match using the xpath_expr after appending /text(). In\nother words, ExtractValue(''<a><b>Sakila</b></a>'', ''/a/b'') and\nExtractValue(''<a><b>Sakila</b></a>'', ''/a/b/text()'') produce the same\nresult.\n\nIf multiple matches are found, the content of the first child text node\nof each matching element is returned (in the order matched) as a\nsingle, space-delimited string.\n\nIf no matching text node is found for the expression (including the\nimplicit /text())---for whatever reason, as long as xpath_expr is\nvalid, and xml_frag consists of elements which are properly nested and\nclosed---an empty string is returned. No distinction is made between a\nmatch on an empty element and no match at all. This is by design.\n\nIf you need to determine whether no matching element was found in\nxml_frag or such an element was found but contained no child text\nnodes, you should test the result of an expression that uses the XPath\ncount() function. For example, both of these statements return an empty\nstring, as shown here:\n\nmysql> SELECT ExtractValue(''<a><b/></a>'', ''/a/b'');\n+-------------------------------------+\n| ExtractValue(''<a><b/></a>'', ''/a/b'') |\n+-------------------------------------+\n|                                     |\n+-------------------------------------+\n1 row in set (0.00 sec)\n\nmysql> SELECT ExtractValue(''<a><c/></a>'', ''/a/b'');\n+-------------------------------------+\n| ExtractValue(''<a><c/></a>'', ''/a/b'') |\n+-------------------------------------+\n|                                     |\n+-------------------------------------+\n1 row in set (0.00 sec)\n\nHowever, you can determine whether there was actually a matching\nelement using the following:\n\nmysql> SELECT ExtractValue(''<a><b/></a>'', ''count(/a/b)'');\n+-------------------------------------+\n| ExtractValue(''<a><b/></a>'', ''count(/a/b)'') |\n+-------------------------------------+\n| 1                                   |\n+-------------------------------------+\n1 row in set (0.00 sec)\n\nmysql> SELECT ExtractValue(''<a><c/></a>'', ''count(/a/b)'');\n+-------------------------------------+\n| ExtractValue(''<a><c/></a>'', ''count(/a/b)'') |\n+-------------------------------------+\n| 0                                   |\n+-------------------------------------+\n1 row in set (0.01 sec)\n\n*Important*: ExtractValue() returns only CDATA, and does not return any\ntags that might be contained within a matching tag, nor any of their\ncontent (see the result returned as val1 in the following example).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/xml-functions.html\n\n', 'mysql> SELECT\n    ->   ExtractValue(''<a>ccc<b>ddd</b></a>'', ''/a'') AS val1,\n    ->   ExtractValue(''<a>ccc<b>ddd</b></a>'', ''/a/b'') AS val2,\n    ->   ExtractValue(''<a>ccc<b>ddd</b></a>'', ''//b'') AS val3,\n    ->   ExtractValue(''<a>ccc<b>ddd</b></a>'', ''/b'') AS val4,\n    ->   ExtractValue(''<a>ccc<b>ddd</b><b>eee</b></a>'', ''//b'') AS val5;\n\n+------+------+------+------+---------+\n| val1 | val2 | val3 | val4 | val5    |\n+------+------+------+------+---------+\n| ccc  | ddd  | ddd  |      | ddd eee |\n+------+------+------+------+---------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/xml-functions.html'),
(136, 'OLD_PASSWORD', 12, 'Syntax:\nOLD_PASSWORD(str)\n\nOLD_PASSWORD() was added when the implementation of PASSWORD() was\nchanged in MySQL 4.1 to improve security. OLD_PASSWORD() returns the\nvalue of the pre-4.1 implementation of PASSWORD() as a binary string,\nand is intended to permit you to reset passwords for any pre-4.1\nclients that need to connect to your version 5.1 MySQL server without\nlocking them out. See\nhttp://dev.mysql.com/doc/refman/5.1/en/password-hashing.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(137, 'SET VARIABLE', 23, 'Syntax:\nSET var_name = expr [, var_name = expr] ...\n\nThe SET statement in stored programs is an extended version of the\ngeneral SET statement (see [HELP SET]). Each var_name may refer to a\nlocal variable declared inside a stored program, a system variable, or\na user-defined variable.\n\nThe SET statement in stored programs is implemented as part of the\npre-existing SET syntax. This enables an extended syntax of SET a=x,\nb=y, ... where different variable types (locally declared variables,\nglobal and session system variables, user-defined variables) can be\nmixed. This also enables combinations of local variables and some\noptions that make sense only for system variables; in that case, the\noptions are recognized but ignored.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/set-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/set-statement.html'),
(138, 'FORMAT', 36, 'Syntax:\nFORMAT(X,D)\n\nFormats the number X to a format like ''#,###,###.##'', rounded to D\ndecimal places, and returns the result as a string. If D is 0, the\nresult has no decimal point or fractional part.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT FORMAT(12332.123456, 4);\n        -> ''12,332.1235''\nmysql> SELECT FORMAT(12332.1,4);\n        -> ''12,332.1000''\nmysql> SELECT FORMAT(12332.2,0);\n        -> ''12,332''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(139, '||', 14, 'Syntax:\nOR, ||\n\nLogical OR. When both operands are non-NULL, the result is 1 if any\noperand is nonzero, and 0 otherwise. With a NULL operand, the result is\n1 if the other operand is nonzero, and NULL otherwise. If both operands\nare NULL, the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html\n\n', 'mysql> SELECT 1 || 1;\n        -> 1\nmysql> SELECT 1 || 0;\n        -> 1\nmysql> SELECT 0 || 0;\n        -> 0\nmysql> SELECT 0 || NULL;\n        -> NULL\nmysql> SELECT 1 || NULL;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html'),
(140, 'BIT_LENGTH', 36, 'Syntax:\nBIT_LENGTH(str)\n\nReturns the length of the string str in bits.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT BIT_LENGTH(''text'');\n        -> 32\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(141, 'EXTERIORRING', 2, 'ExteriorRing(poly)\n\nReturns the exterior ring of the Polygon value poly as a LineString.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#polygon-property-functions\n\n', 'mysql> SET @poly =\n    -> ''Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))'';\nmysql> SELECT AsText(ExteriorRing(GeomFromText(@poly)));\n+-------------------------------------------+\n| AsText(ExteriorRing(GeomFromText(@poly))) |\n+-------------------------------------------+\n| LINESTRING(0 0,0 3,3 3,3 0,0 0)           |\n+-------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#polygon-property-functions'),
(142, 'GEOMFROMWKB', 32, 'GeomFromWKB(wkb[,srid]), GeometryFromWKB(wkb[,srid])\n\nConstructs a geometry value of any type using its WKB representation\nand SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkb-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkb-functions'),
(143, 'SHOW SLAVE HOSTS', 26, 'Syntax:\nSHOW SLAVE HOSTS\n\nDisplays a list of replication slaves currently registered with the\nmaster. Only slaves started with the --report-host=host_name option are\nvisible in this list.\n\nThe list is displayed on any server (not just the master server). The\noutput looks like this:\n\nmysql> SHOW SLAVE HOSTS;\n+------------+-----------+------+-----------+\n| Server_id  | Host      | Port | Master_id |\n+------------+-----------+------+-----------+\n|  192168010 | iconnect2 | 3306 | 192168011 |\n| 1921680101 | athena    | 3306 | 192168011 |\n+------------+-----------+------+-----------+\n\no Server_id: The unique server ID of the slave server, as configured in\n  the server''s option file, or on the command line with\n  --server-id=value.\n\no Host: The host name of the slave server, as configured in the\n  server''s option file, or on the command line with\n  --report-host=host_name. Note that this can differ from the machine\n  name as configured in the operating system.\n\no Port: The port the slave server is listening on.\n\no Master_id: The unique server ID of the master server that the slave\n  server is replicating from.\n\nSome MySQL versions report another variable, Rpl_recovery_rank. This\nvariable was never used, and was eventually removed. (Bug#13963\n(http://bugs.mysql.com/bug.php?id=13963))\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-slave-hosts.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-slave-hosts.html'),
(144, 'START TRANSACTION', 8, 'Syntax:\nSTART TRANSACTION [WITH CONSISTENT SNAPSHOT] | BEGIN [WORK]\nCOMMIT [WORK] [AND [NO] CHAIN] [[NO] RELEASE]\nROLLBACK [WORK] [AND [NO] CHAIN] [[NO] RELEASE]\nSET autocommit = {0 | 1}\n\nThe START TRANSACTION or BEGIN statement begins a new transaction.\nCOMMIT commits the current transaction, making its changes permanent.\nROLLBACK rolls back the current transaction, canceling its changes. The\nSET autocommit statement disables or enables the default autocommit\nmode for the current session.\n\nThe optional WORK keyword is supported for COMMIT and ROLLBACK, as are\nthe CHAIN and RELEASE clauses. CHAIN and RELEASE can be used for\nadditional control over transaction completion. The value of the\ncompletion_type system variable determines the default completion\nbehavior. See\nhttp://dev.mysql.com/doc/refman/5.1/en/server-system-variables.html.\n\n*Note*: Within all stored programs (stored procedures and functions,\ntriggers, and events), the parser treats BEGIN [WORK] as the beginning\nof a BEGIN ... END block. Begin a transaction in this context with\nSTART TRANSACTION instead.\n\nThe AND CHAIN clause causes a new transaction to begin as soon as the\ncurrent one ends, and the new transaction has the same isolation level\nas the just-terminated transaction. The RELEASE clause causes the\nserver to disconnect the current client session after terminating the\ncurrent transaction. Including the NO keyword suppresses CHAIN or\nRELEASE completion, which can be useful if the completion_type system\nvariable is set to cause chaining or release completion by default.\n\nBy default, MySQL runs with autocommit mode enabled. This means that as\nsoon as you execute a statement that updates (modifies) a table, MySQL\nstores the update on disk to make it permanent. To disable autocommit\nmode, use the following statement:\n\nSET autocommit=0;\n\nAfter disabling autocommit mode by setting the autocommit variable to\nzero, changes to transaction-safe tables (such as those for InnoDB or\nNDBCLUSTER) are not made permanent immediately. You must use COMMIT to\nstore your changes to disk or ROLLBACK to ignore the changes.\n\nautocommit is a session variable and must be set for each session. For\ninformation about how to do this for each new connection, see the\ndescription of the init_connect system variable.\n\nTo disable autocommit mode for a single series of statements, use the\nSTART TRANSACTION statement:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/commit.html\n\n', 'START TRANSACTION;\nSELECT @A:=SUM(salary) FROM table1 WHERE type=1;\nUPDATE table2 SET summary=@A WHERE type=1;\nCOMMIT;\n', 'http://dev.mysql.com/doc/refman/5.1/en/commit.html'),
(145, 'BETWEEN AND', 18, 'Syntax:\nexpr BETWEEN min AND max\n\nIf expr is greater than or equal to min and expr is less than or equal\nto max, BETWEEN returns 1, otherwise it returns 0. This is equivalent\nto the expression (min <= expr AND expr <= max) if all the arguments\nare of the same type. Otherwise type conversion takes place according\nto the rules described in\nhttp://dev.mysql.com/doc/refman/5.1/en/type-conversion.html, but\napplied to all the three arguments.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 2 BETWEEN 1 AND 3, 2 BETWEEN 3 and 1;\n        -> 1, 0\nmysql> SELECT 1 BETWEEN 2 AND 3;\n        -> 0\nmysql> SELECT ''b'' BETWEEN ''a'' AND ''c'';\n        -> 1\nmysql> SELECT 2 BETWEEN 2 AND ''3'';\n        -> 1\nmysql> SELECT 2 BETWEEN 2 AND ''x-3'';\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(146, 'MULTIPOLYGON', 24, 'MultiPolygon(poly1,poly2,...)\n\nConstructs a MultiPolygon value from a set of Polygon or WKB Polygon\narguments.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-mysql-specific-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-mysql-specific-functions'),
(147, 'TIME_FORMAT', 31, 'Syntax:\nTIME_FORMAT(time,format)\n\nThis is used like the DATE_FORMAT() function, but the format string may\ncontain format specifiers only for hours, minutes, seconds, and\nmicroseconds. Other specifiers produce a NULL value or 0.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIME_FORMAT(''100:00:00'', ''%H %k %h %I %l'');\n        -> ''100 100 04 04 4''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(148, 'LEFT', 36, 'Syntax:\nLEFT(str,len)\n\nReturns the leftmost len characters from the string str, or NULL if any\nargument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT LEFT(''foobarbar'', 5);\n        -> ''fooba''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(149, 'FLUSH QUERY CACHE', 26, 'You can defragment the query cache to better utilize its memory with\nthe FLUSH QUERY CACHE statement. The statement does not remove any\nqueries from the cache.\n\nThe RESET QUERY CACHE statement removes all query results from the\nquery cache. The FLUSH TABLES statement also does this.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/query-cache-status-and-maintenance.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/query-cache-status-and-maintenance.html'),
(150, 'SET DATA TYPE', 22, 'SET(''value1'',''value2'',...) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA set. A string object that can have zero or more values, each of which\nmust be chosen from the list of values ''value1'', ''value2'', ... A SET\ncolumn can have a maximum of 64 members. SET values are represented\ninternally as integers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(151, 'RAND', 4, 'Syntax:\nRAND(), RAND(N)\n\nReturns a random floating-point value v in the range 0 <= v < 1.0. If a\nconstant integer argument N is specified, it is used as the seed value,\nwhich produces a repeatable sequence of column values. In the following\nexample, note that the sequences of values produced by RAND(3) is the\nsame both places where it occurs.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> CREATE TABLE t (i INT);\nQuery OK, 0 rows affected (0.42 sec)\n\nmysql> INSERT INTO t VALUES(1),(2),(3);\nQuery OK, 3 rows affected (0.00 sec)\nRecords: 3  Duplicates: 0  Warnings: 0\n\nmysql> SELECT i, RAND() FROM t;\n+------+------------------+\n| i    | RAND()           |\n+------+------------------+\n|    1 | 0.61914388706828 |\n|    2 | 0.93845168309142 |\n|    3 | 0.83482678498591 |\n+------+------------------+\n3 rows in set (0.00 sec)\n\nmysql> SELECT i, RAND(3) FROM t;\n+------+------------------+\n| i    | RAND(3)          |\n+------+------------------+\n|    1 | 0.90576975597606 |\n|    2 | 0.37307905813035 |\n|    3 | 0.14808605345719 |\n+------+------------------+\n3 rows in set (0.00 sec)\n\nmysql> SELECT i, RAND() FROM t;\n+------+------------------+\n| i    | RAND()           |\n+------+------------------+\n|    1 | 0.35877890638893 |\n|    2 | 0.28941420772058 |\n|    3 | 0.37073435016976 |\n+------+------------------+\n3 rows in set (0.00 sec)\n\nmysql> SELECT i, RAND(3) FROM t;\n+------+------------------+\n| i    | RAND(3)          |\n+------+------------------+\n|    1 | 0.90576975597606 |\n|    2 | 0.37307905813035 |\n|    3 | 0.14808605345719 |\n+------+------------------+\n3 rows in set (0.01 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(152, 'RPAD', 36, 'Syntax:\nRPAD(str,len,padstr)\n\nReturns the string str, right-padded with the string padstr to a length\nof len characters. If str is longer than len, the return value is\nshortened to len characters.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT RPAD(''hi'',5,''?'');\n        -> ''hi???''\nmysql> SELECT RPAD(''hi'',1,''?'');\n        -> ''h''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(153, 'CREATE DATABASE', 38, 'Syntax:\nCREATE {DATABASE | SCHEMA} [IF NOT EXISTS] db_name\n    [create_specification] ...\n\ncreate_specification:\n    [DEFAULT] CHARACTER SET [=] charset_name\n  | [DEFAULT] COLLATE [=] collation_name\n\nCREATE DATABASE creates a database with the given name. To use this\nstatement, you need the CREATE privilege for the database. CREATE\nSCHEMA is a synonym for CREATE DATABASE.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-database.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-database.html'),
(154, 'DEC', 22, 'DEC[(M[,D])] [UNSIGNED] [ZEROFILL], NUMERIC[(M[,D])] [UNSIGNED]\n[ZEROFILL], FIXED[(M[,D])] [UNSIGNED] [ZEROFILL]\n\nThese types are synonyms for DECIMAL. The FIXED synonym is available\nfor compatibility with other database systems.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(155, 'VAR_POP', 16, 'Syntax:\nVAR_POP(expr)\n\nReturns the population standard variance of expr. It considers rows as\nthe whole population, not as a sample, so it has the number of rows as\nthe denominator. You can also use VARIANCE(), which is equivalent but\nis not standard SQL.\n\nVAR_POP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(156, 'ELT', 36, 'Syntax:\nELT(N,str1,str2,str3,...)\n\nReturns str1 if N = 1, str2 if N = 2, and so on. Returns NULL if N is\nless than 1 or greater than the number of arguments. ELT() is the\ncomplement of FIELD().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT ELT(1, ''ej'', ''Heja'', ''hej'', ''foo'');\n        -> ''ej''\nmysql> SELECT ELT(4, ''ej'', ''Heja'', ''hej'', ''foo'');\n        -> ''foo''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(157, 'ALTER VIEW', 38, 'Syntax:\nALTER\n    [ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]\n    [DEFINER = { user | CURRENT_USER }]\n    [SQL SECURITY { DEFINER | INVOKER }]\n    VIEW view_name [(column_list)]\n    AS select_statement\n    [WITH [CASCADED | LOCAL] CHECK OPTION]\n\nThis statement changes the definition of a view, which must exist. The\nsyntax is similar to that for CREATE VIEW and the effect is the same as\nfor CREATE OR REPLACE VIEW. See [HELP CREATE VIEW]. This statement\nrequires the CREATE VIEW and DROP privileges for the view, and some\nprivilege for each column referred to in the SELECT statement. As of\nMySQL 5.1.23, ALTER VIEW is permitted only to the definer or users with\nthe SUPER privilege.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/alter-view.html'),
(158, 'SHOW DATABASES', 26, 'Syntax:\nSHOW {DATABASES | SCHEMAS}\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW DATABASES lists the databases on the MySQL server host. SHOW\nSCHEMAS is a synonym for SHOW DATABASES. The LIKE clause, if present,\nindicates which database names to match. The WHERE clause can be given\nto select rows using more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nYou see only those databases for which you have some kind of privilege,\nunless you have the global SHOW DATABASES privilege. You can also get\nthis list using the mysqlshow command.\n\nIf the server was started with the --skip-show-database option, you\ncannot use this statement at all unless you have the SHOW DATABASES\nprivilege.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-databases.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-databases.html'),
(159, '~', 19, 'Syntax:\n~\n\nInvert all bits.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT 5 & ~1;\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html'),
(160, 'TEXT', 22, 'TEXT[(M)] [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 65,535 (216 - 1) characters. The\neffective maximum length is less if the value contains multi-byte\ncharacters. Each TEXT value is stored using a two-byte length prefix\nthat indicates the number of bytes in the value.\n\nAn optional length M can be given for this type. If this is done, MySQL\ncreates the column as the smallest TEXT type large enough to hold\nvalues M characters long.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(161, 'CONCAT_WS', 36, 'Syntax:\nCONCAT_WS(separator,str1,str2,...)\n\nCONCAT_WS() stands for Concatenate With Separator and is a special form\nof CONCAT(). The first argument is the separator for the rest of the\narguments. The separator is added between the strings to be\nconcatenated. The separator can be a string, as can the rest of the\narguments. If the separator is NULL, the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT CONCAT_WS('','',''First name'',''Second name'',''Last Name'');\n        -> ''First name,Second name,Last Name''\nmysql> SELECT CONCAT_WS('','',''First name'',NULL,''Last Name'');\n        -> ''First name,Last Name''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(162, 'ROW_COUNT', 17, 'Syntax:\nROW_COUNT()\n\nROW_COUNT() returns the number of rows changed, deleted, or inserted by\nthe last statement if it was an UPDATE, DELETE, or INSERT. For other\nstatements, the value may not be meaningful.\n\nFor UPDATE statements, the affected-rows value by default is the number\nof rows actually changed. If you specify the CLIENT_FOUND_ROWS flag to\nmysql_real_connect() when connecting to mysqld, the affected-rows value\nis the number of rows "found"; that is, matched by the WHERE clause.\n\nFor REPLACE statements, the affected-rows value is 2 if the new row\nreplaced an old row, because in this case, one row was inserted after\nthe duplicate was deleted.\n\nFor INSERT ... ON DUPLICATE KEY UPDATE statements, the affected-rows\nvalue is 1 if the row is inserted as a new row and 2 if an existing row\nis updated.\n\nThe ROW_COUNT() value is the same as the value from the\nmysql_affected_rows() C API function and the row count that the mysql\nclient displays following statement execution.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> INSERT INTO t VALUES(1),(2),(3);\nQuery OK, 3 rows affected (0.00 sec)\nRecords: 3  Duplicates: 0  Warnings: 0\n\nmysql> SELECT ROW_COUNT();\n+-------------+\n| ROW_COUNT() |\n+-------------+\n|           3 |\n+-------------+\n1 row in set (0.00 sec)\n\nmysql> DELETE FROM t WHERE i IN(1,2);\nQuery OK, 2 rows affected (0.00 sec)\n\nmysql> SELECT ROW_COUNT();\n+-------------+\n| ROW_COUNT() |\n+-------------+\n|           2 |\n+-------------+\n1 row in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(163, 'ASIN', 4, 'Syntax:\nASIN(X)\n\nReturns the arc sine of X, that is, the value whose sine is X. Returns\nNULL if X is not in the range -1 to 1.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT ASIN(0.2);\n        -> 0.20135792079033\nmysql> SELECT ASIN(''foo'');\n\n+-------------+\n| ASIN(''foo'') |\n+-------------+\n|           0 |\n+-------------+\n1 row in set, 1 warning (0.00 sec)\n\nmysql> SHOW WARNINGS;\n+---------+------+-----------------------------------------+\n| Level   | Code | Message                                 |\n+---------+------+-----------------------------------------+\n| Warning | 1292 | Truncated incorrect DOUBLE value: ''foo'' |\n+---------+------+-----------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(164, 'SIGN', 4, 'Syntax:\nSIGN(X)\n\nReturns the sign of the argument as -1, 0, or 1, depending on whether X\nis negative, zero, or positive.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT SIGN(-32);\n        -> -1\nmysql> SELECT SIGN(0);\n        -> 0\nmysql> SELECT SIGN(234);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(165, 'SEC_TO_TIME', 31, 'Syntax:\nSEC_TO_TIME(seconds)\n\nReturns the seconds argument, converted to hours, minutes, and seconds,\nas a TIME value. The range of the result is constrained to that of the\nTIME data type. A warning occurs if the argument corresponds to a value\noutside that range.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT SEC_TO_TIME(2378);\n        -> ''00:39:38''\nmysql> SELECT SEC_TO_TIME(2378) + 0;\n        -> 3938\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(166, 'FLOAT', 22, 'FLOAT[(M,D)] [UNSIGNED] [ZEROFILL]\n\nA small (single-precision) floating-point number. Permissible values\nare -3.402823466E+38 to -1.175494351E-38, 0, and 1.175494351E-38 to\n3.402823466E+38. These are the theoretical limits, based on the IEEE\nstandard. The actual range might be slightly smaller depending on your\nhardware or operating system.\n\nM is the total number of digits and D is the number of digits following\nthe decimal point. If M and D are omitted, values are stored to the\nlimits permitted by the hardware. A single-precision floating-point\nnumber is accurate to approximately 7 decimal places.\n\nUNSIGNED, if specified, disallows negative values.\n\nUsing FLOAT might give you some unexpected problems because all\ncalculations in MySQL are done with double precision. See\nhttp://dev.mysql.com/doc/refman/5.1/en/no-matching-rows.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(167, 'LOCATE', 36, 'Syntax:\nLOCATE(substr,str), LOCATE(substr,str,pos)\n\nThe first syntax returns the position of the first occurrence of\nsubstring substr in string str. The second syntax returns the position\nof the first occurrence of substring substr in string str, starting at\nposition pos. Returns 0 if substr is not in str.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT LOCATE(''bar'', ''foobarbar'');\n        -> 4\nmysql> SELECT LOCATE(''xbar'', ''foobar'');\n        -> 0\nmysql> SELECT LOCATE(''bar'', ''foobarbar'', 5);\n        -> 7\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(168, 'SHOW EVENTS', 26, 'Syntax:\nSHOW EVENTS [{FROM | IN} schema_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nIn its simplest form, SHOW EVENTS lists all of the events in the\ncurrent schema:\n\nmysql> SELECT CURRENT_USER(), SCHEMA();\n+----------------+----------+\n| CURRENT_USER() | SCHEMA() |\n+----------------+----------+\n| jon@ghidora    | myschema |\n+----------------+----------+\n1 row in set (0.00 sec)\n\nmysql> SHOW EVENTS\\G\n*************************** 1. row ***************************\n                  Db: myschema\n                Name: e_daily\n             Definer: jon@ghidora\n           Time zone: SYSTEM\n                Type: RECURRING\n          Execute at: NULL\n      Interval value: 10\n      Interval field: SECOND\n              Starts: 2006-02-09 10:41:23\n                Ends: NULL\n              Status: ENABLED\n          Originator: 0\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n\nTo see events for a specific schema, use the FROM clause. For example,\nto see events for the test schema, use the following statement:\n\nSHOW EVENTS FROM test;\n\nThe LIKE clause, if present, indicates which event names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-events.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-events.html'),
(169, 'CHARSET', 17, 'Syntax:\nCHARSET(str)\n\nReturns the character set of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT CHARSET(''abc'');\n        -> ''latin1''\nmysql> SELECT CHARSET(CONVERT(''abc'' USING utf8));\n        -> ''utf8''\nmysql> SELECT CHARSET(USER());\n        -> ''utf8''\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(170, 'SUBDATE', 31, 'Syntax:\nSUBDATE(date,INTERVAL expr unit), SUBDATE(expr,days)\n\nWhen invoked with the INTERVAL form of the second argument, SUBDATE()\nis a synonym for DATE_SUB(). For information on the INTERVAL unit\nargument, see the discussion for DATE_ADD().\n\nmysql> SELECT DATE_SUB(''2008-01-02'', INTERVAL 31 DAY);\n        -> ''2007-12-02''\nmysql> SELECT SUBDATE(''2008-01-02'', INTERVAL 31 DAY);\n        -> ''2007-12-02''\n\nThe second form enables the use of an integer value for days. In such\ncases, it is interpreted as the number of days to be subtracted from\nthe date or datetime expression expr.\n\nmysql> SELECT SUBDATE(''2008-01-02 12:00:00'', 31);\n        -> ''2007-12-02 12:00:00''\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(171, 'DAYOFYEAR', 31, 'Syntax:\nDAYOFYEAR(date)\n\nReturns the day of the year for date, in the range 1 to 366.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYOFYEAR(''2007-02-03'');\n        -> 34\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(172, 'LONGTEXT', 22, 'LONGTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 4,294,967,295 or 4GB (232 - 1)\ncharacters. The effective maximum length is less if the value contains\nmulti-byte characters. The effective maximum length of LONGTEXT columns\nalso depends on the configured maximum packet size in the client/server\nprotocol and available memory. Each LONGTEXT value is stored using a\nfour-byte length prefix that indicates the number of bytes in the\nvalue.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(173, '%', 4, 'Syntax:\nN % M\n\nModulo operation. Returns the remainder of N divided by M. For more\ninformation, see the description for the MOD() function in\nhttp://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(174, 'KILL', 26, 'Syntax:\nKILL [CONNECTION | QUERY] thread_id\n\nEach connection to mysqld runs in a separate thread. You can see which\nthreads are running with the SHOW PROCESSLIST statement and kill a\nthread with the KILL thread_id statement.\n\nKILL permits an optional CONNECTION or QUERY modifier:\n\no KILL CONNECTION is the same as KILL with no modifier: It terminates\n  the connection associated with the given thread_id.\n\no KILL QUERY terminates the statement that the connection is currently\n  executing, but leaves the connection itself intact.\n\nIf you have the PROCESS privilege, you can see all threads. If you have\nthe SUPER privilege, you can kill all threads and statements.\nOtherwise, you can see and kill only your own threads and statements.\n\nYou can also use the mysqladmin processlist and mysqladmin kill\ncommands to examine and kill threads.\n\n*Note*: You cannot use KILL with the Embedded MySQL Server library\nbecause the embedded server merely runs inside the threads of the host\napplication. It does not create any connection threads of its own.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/kill.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/kill.html'),
(175, 'DISJOINT', 30, 'Disjoint(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially disjoint from (does\nnot intersect) g2.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html'),
(176, 'ASTEXT', 3, 'AsText(g), AsWKT(g)\n\nConverts a value in internal geometry format to its WKT representation\nand returns the string result.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-to-convert-geometries-between-formats.html\n\n', 'mysql> SET @g = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT AsText(GeomFromText(@g));\n+--------------------------+\n| AsText(GeomFromText(@g)) |\n+--------------------------+\n| LINESTRING(1 1,2 2,3 3)  |\n+--------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/functions-to-convert-geometries-between-formats.html'),
(177, 'LPAD', 36, 'Syntax:\nLPAD(str,len,padstr)\n\nReturns the string str, left-padded with the string padstr to a length\nof len characters. If str is longer than len, the return value is\nshortened to len characters.\n\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT LPAD(''hi'',4,''??'');\n        -> ''??hi''\nmysql> SELECT LPAD(''hi'',1,''??'');\n        -> ''h''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(178, 'RESTORE TABLE', 20, 'Syntax:\nRESTORE TABLE tbl_name [, tbl_name] ... FROM ''/path/to/backup/directory''\n\n*Note*: This statement is deprecated and is removed in MySQL 5.5.\n\nRESTORE TABLE restores the table or tables from a backup that was made\nwith BACKUP TABLE. The directory should be specified as a full path\nname.\n\nExisting tables are not overwritten; if you try to restore over an\nexisting table, an error occurs. Just as for BACKUP TABLE, RESTORE\nTABLE currently works only for MyISAM tables. Restored tables are not\nreplicated from master to slave.\n\nThe backup for each table consists of its .frm format file and .MYD\ndata file. The restore operation restores those files, and then uses\nthem to rebuild the .MYI index file. Restoring takes longer than\nbacking up due to the need to rebuild the indexes. The more indexes the\ntable has, the longer it takes.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/restore-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/restore-table.html'),
(179, 'DECLARE CONDITION', 23, 'Syntax:\nDECLARE condition_name CONDITION FOR condition_value\n\ncondition_value:\n    SQLSTATE [VALUE] sqlstate_value\n  | mysql_error_code\n\nThe DECLARE ... CONDITION statement defines a named error condition. It\nspecifies a condition that needs specific handling and associates a\nname with that condition. The name can be referred to in a subsequent\nDECLARE ... HANDLER statement. For an example, see [HELP DECLARE\nHANDLER].\n\nA condition_value for DECLARE ... CONDITION can be an SQLSTATE value (a\n5-character string literal) or a MySQL error code (a number). You\nshould not use SQLSTATE value ''00000'' or MySQL error code 0, because\nthose indicate success rather than an error condition. For a list of\nSQLSTATE values and MySQL error codes, see\nhttp://dev.mysql.com/doc/refman/5.1/en/error-messages-server.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/declare-condition.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/declare-condition.html'),
(180, 'OVERLAPS', 30, 'Overlaps(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially overlaps g2. The term\nspatially overlaps is used if two geometries intersect and their\nintersection results in a geometry of the same dimension but not equal\nto either of the given geometries.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html'),
(181, 'SET GLOBAL SQL_SLAVE_SKIP_COUNTER', 26, 'Syntax:\nSET GLOBAL sql_slave_skip_counter = N\n\nThis statement skips the next N events from the master. This is useful\nfor recovering from replication stops caused by a statement.\n\nThis statement is valid only when the slave threads are not running.\nOtherwise, it produces an error.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/set-global-sql-slave-skip-counter.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/set-global-sql-slave-skip-counter.html'),
(182, 'NUMGEOMETRIES', 25, 'NumGeometries(gc)\n\nReturns the number of geometries in the GeometryCollection value gc.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#geometrycollection-property-functions\n\n', 'mysql> SET @gc = ''GeometryCollection(Point(1 1),LineString(2 2, 3 3))'';\nmysql> SELECT NumGeometries(GeomFromText(@gc));\n+----------------------------------+\n| NumGeometries(GeomFromText(@gc)) |\n+----------------------------------+\n|                                2 |\n+----------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#geometrycollection-property-functions'),
(183, 'MONTHNAME', 31, 'Syntax:\nMONTHNAME(date)\n\nReturns the full name of the month for date. As of MySQL 5.1.12, the\nlanguage used for the name is controlled by the value of the\nlc_time_names system variable\n(http://dev.mysql.com/doc/refman/5.1/en/locale-support.html).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT MONTHNAME(''2008-02-03'');\n        -> ''February''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(184, 'PROCEDURE ANALYSE', 37, 'Syntax:\nANALYSE([max_elements[,max_memory]])\n\nANALYSE() is defined in the sql/sql_analyse.cc source file, which\nserves as an example of how to create a procedure for use with the\nPROCEDURE clause of SELECT statements. ANALYSE() is built in and is\navailable by default; other procedures can be created using the format\ndemonstrated in the source file.\n\nANALYSE() examines the result from a query and returns an analysis of\nthe results that suggests optimal data types for each column that may\nhelp reduce table sizes. To obtain this analysis, append PROCEDURE\nANALYSE to the end of a SELECT statement:\n\nSELECT ... FROM ... WHERE ... PROCEDURE ANALYSE([max_elements,[max_memory]])\n\nFor example:\n\nSELECT col1, col2 FROM table1 PROCEDURE ANALYSE(10, 2000);\n\nThe results show some statistics for the values returned by the query,\nand propose an optimal data type for the columns. This can be helpful\nfor checking your existing tables, or after importing new data. You may\nneed to try different settings for the arguments so that PROCEDURE\nANALYSE() does not suggest the ENUM data type when it is not\nappropriate.\n\nThe arguments are optional and are used as follows:\n\no max_elements (default 256) is the maximum number of distinct values\n  that ANALYSE() notices per column. This is used by ANALYSE() to check\n  whether the optimal data type should be of type ENUM; if there are\n  more than max_elements distinct values, then ENUM is not a suggested\n  type.\n\no max_memory (default 8192) is the maximum amount of memory that\n  ANALYSE() should allocate per column while trying to find all\n  distinct values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/procedure-analyse.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/procedure-analyse.html'),
(185, 'CHANGE MASTER TO', 26, 'Syntax:\nCHANGE MASTER TO option [, option] ...\n\noption:\n    MASTER_BIND = ''interface_name''\n  | MASTER_HOST = ''host_name''\n  | MASTER_USER = ''user_name''\n  | MASTER_PASSWORD = ''password''\n  | MASTER_PORT = port_num\n  | MASTER_CONNECT_RETRY = interval\n  | MASTER_HEARTBEAT_PERIOD = interval\n  | MASTER_LOG_FILE = ''master_log_name''\n  | MASTER_LOG_POS = master_log_pos\n  | RELAY_LOG_FILE = ''relay_log_name''\n  | RELAY_LOG_POS = relay_log_pos\n  | MASTER_SSL = {0|1}\n  | MASTER_SSL_CA = ''ca_file_name''\n  | MASTER_SSL_CAPATH = ''ca_directory_name''\n  | MASTER_SSL_CERT = ''cert_file_name''\n  | MASTER_SSL_KEY = ''key_file_name''\n  | MASTER_SSL_CIPHER = ''cipher_list''\n  | MASTER_SSL_VERIFY_SERVER_CERT = {0|1}\n  | IGNORE_SERVER_IDS = (server_id_list)\n\nserver_id_list:\n    [server_id [, server_id] ... ]\n\nCHANGE MASTER TO changes the parameters that the slave server uses for\nconnecting to the master server, for reading the master binary log, and\nreading the slave relay log. It also updates the contents of the\nmaster.info and relay-log.info files. To use CHANGE MASTER TO, the\nslave replication threads must be stopped (use STOP SLAVE if\nnecessary).\n\nOptions not specified retain their value, except as indicated in the\nfollowing discussion. Thus, in most cases, there is no need to specify\noptions that do not change. For example, if the password to connect to\nyour MySQL master has changed, you just need to issue these statements\nto tell the slave about the new password:\n\nSTOP SLAVE; -- if replication was running\nCHANGE MASTER TO MASTER_PASSWORD=''new3cret'';\nSTART SLAVE; -- if you want to restart replication\n\nMASTER_HOST, MASTER_USER, MASTER_PASSWORD, and MASTER_PORT provide\ninformation to the slave about how to connect to its master:\n\no MASTER_HOST and MASTER_PORT are the host name (or IP address) of the\n  master host and its TCP/IP port.\n\n  *Note*: Replication cannot use Unix socket files. You must be able to\n  connect to the master MySQL server using TCP/IP.\n\n  If you specify the MASTER_HOST or MASTER_PORT option, the slave\n  assumes that the master server is different from before (even if the\n  option value is the same as its current value.) In this case, the old\n  values for the master binary log file name and position are\n  considered no longer applicable, so if you do not specify\n  MASTER_LOG_FILE and MASTER_LOG_POS in the statement,\n  MASTER_LOG_FILE='''' and MASTER_LOG_POS=4 are silently appended to it.\n\n  Setting MASTER_HOST='''' (that is, setting its value explicitly to an\n  empty string) is not the same as not setting MASTER_HOST at all.\n  Setting this option to an empty string causes START SLAVE\n  subsequently to fail. This issue is addressed in MySQL 5.5.\n  (Bug#28796 (http://bugs.mysql.com/bug.php?id=28796))\n\no MASTER_USER and MASTER_PASSWORD are the user name and password of the\n  account to use for connecting to the master.\n\nThe MASTER_SSL_xxx options provide information about using SSL for the\nconnection. They correspond to the --ssl-xxx options described in\nhttp://dev.mysql.com/doc/refman/5.1/en/ssl-options.html, and\nhttp://dev.mysql.com/doc/refman/5.1/en/replication-solutions-ssl.html.\nMASTER_SSL_VERIFY_SERVER_CERT was added in MySQL 5.1.18. These options\ncan be changed even on slaves that are compiled without SSL support.\nThey are saved to the master.info file, but are ignored if the slave\ndoes not have SSL support enabled.\n\nMASTER_CONNECT_RETRY specifies how many seconds to wait between connect\nretries. The default is 60. The number of reconnection attempts is\nlimited by the --master-retry-count server option; for more\ninformation, see\nhttp://dev.mysql.com/doc/refman/5.1/en/replication-options.html.\n\nThe next two options (MASTER_BIND and MASTER_HEARTBEAT_PERIOD) are\navailable in MySQL Cluster NDB 6.3 and later, but are not supported in\nmainline MySQL 5.1:\n\nMASTER_BIND is for use on replication slaves having multiple network\ninterfaces, and determines which of the slave''s network interfaces is\nchosen for connecting to the master. It is also possible to determine\nwhich network interface is to be used in such cases by starting the\nslave mysqld process with the --master-bind option.\n\nThe ability to bind a replication slave to specific network interface\nwas added in MySQL Cluster NDB 6.3.4.\n\nMASTER_HEARTBEAT_PERIOD is used to set the interval in seconds between\nreplication heartbeats. Whenever the master''s binary log is updated\nwith an event, the waiting period for the next heartbeat is reset.\ninterval is a decimal value having the range 0 to 4294967 seconds and a\nresolution to hundredths of a second; the smallest nonzero value is\n0.01. Heartbeats are sent by the master only if there are no unsent\nevents in the binary log file for a period longer than interval.\n\nSetting interval to 0 disables heartbeats altogether. The default value\nfor interval is equal to the value of slave_net_timeout divided by 2.\n\nSetting @@global.slave_net_timeout to a value less than that of the\ncurrent heartbeat interval results in a warning being issued. The\neffect of issuing RESET SLAVE on the heartbeat interval is to reset it\nto the default value.\n\nMASTER_HEARTBEAT_PERIOD was added in MySQL Cluster NDB 6.3.4.\n\nMASTER_LOG_FILE and MASTER_LOG_POS are the coordinates at which the\nslave I/O thread should begin reading from the master the next time the\nthread starts. RELAY_LOG_FILE and RELAY_LOG_POS are the coordinates at\nwhich the slave SQL thread should begin reading from the relay log the\nnext time the thread starts. If you specify either of MASTER_LOG_FILE\nor MASTER_LOG_POS, you cannot specify RELAY_LOG_FILE or RELAY_LOG_POS.\nIf neither of MASTER_LOG_FILE or MASTER_LOG_POS is specified, the slave\nuses the last coordinates of the slave SQL thread before CHANGE MASTER\nTO was issued. This ensures that there is no discontinuity in\nreplication, even if the slave SQL thread was late compared to the\nslave I/O thread, when you merely want to change, say, the password to\nuse.\n\nCHANGE MASTER TO deletes all relay log files and starts a new one,\nunless you specify RELAY_LOG_FILE or RELAY_LOG_POS. In that case, relay\nlog files are kept; the relay_log_purge global variable is set silently\nto 0.\n\nIGNORE_SERVER_IDS was added in MySQL Cluster NDB 6.1.29, MySQL Cluster\nNDB 6.3.31, MySQL Cluster NDB 7.0.11, and MySQL Cluster NDB 7.1.0 (see\nBug#47037 (http://bugs.mysql.com/bug.php?id=47037)). This option takes\na comma-separated list of 0 or more server IDs. Events originating from\nthe corresponding servers are ignored, with the exception of log\nrotation and deletion events, which are still recorded in the relay\nlog.\n\nIn circular replication, the originating server normally acts as the\nterminator of its own events, so that they are not applied more than\nonce. Thus, this option is useful in circular replication when one of\nthe servers in the circle is removed. Suppose that you have a circular\nreplication setup with 4 servers, having server IDs 1, 2, 3, and 4, and\nserver 3 fails. When bridging the gap by starting replication from\nserver 2 to server 4, you can include IGNORE_SERVER_IDS = (3) in the\nCHANGE MASTER TO statement that you issue on server 4 to tell it to use\nserver 2 as its master instead of server 3. Doing so causes it to\nignore and not to propagate any statements that originated with the\nserver that is no longer in use.\n\nIf a CHANGE MASTER TO statement is issued without any IGNORE_SERVER_IDS\noption, any existing list is preserved; RESET SLAVE also has no effect\non the server ID list. To clear the list of ignored servers, it is\nnecessary to use the option with an empty list:\n\nCHANGE MASTER TO IGNORE_SERVER_IDS = ();\n\nIf IGNORE_SERVER_IDS contains the server''s own ID and the server was\nstarted with the --replicate-same-server-id option enabled, an error\nresults.\n\nBeginning with MySQL 5.1.47, invoking CHANGE MASTER TO causes the\nprevious values for MASTER_HOST, MASTER_PORT, MASTER_LOG_FILE, and\nMASTER_LOG_POS to be written to the error log, along with other\ninformation about the slave''s state prior to execution.\n\nCHANGE MASTER TO is useful for setting up a slave when you have the\nsnapshot of the master and have recorded the master binary log\ncoordinates corresponding to the time of the snapshot. After loading\nthe snapshot into the slave to synchronize it to the slave, you can run\nCHANGE MASTER TO MASTER_LOG_FILE=''log_name'', MASTER_LOG_POS=log_pos on\nthe slave to specify the coodinates at which the slave should begin\nreading the master binary log.\n\nThe following example changes the master server the slave uses and\nestablishes the master binary log coordinates from which the slave\nbegins reading. This is used when you want to set up the slave to\nreplicate the master:\n\nCHANGE MASTER TO\n  MASTER_HOST=''master2.mycompany.com'',\n  MASTER_USER=''replication'',\n  MASTER_PASSWORD=''bigs3cret'',\n  MASTER_PORT=3306,\n  MASTER_LOG_FILE=''master2-bin.001'',\n  MASTER_LOG_POS=4,\n  MASTER_CONNECT_RETRY=10;\n\nThe next example shows an operation that is less frequently employed.\nIt is used when the slave has relay log files that you want it to\nexecute again for some reason. To do this, the master need not be\nreachable. You need only use CHANGE MASTER TO and start the SQL thread\n(START SLAVE SQL_THREAD):\n\nCHANGE MASTER TO\n  RELAY_LOG_FILE=''slave-relay-bin.006'',\n  RELAY_LOG_POS=4025;\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/change-master-to.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/change-master-to.html'),
(186, 'DROP DATABASE', 38, 'Syntax:\nDROP {DATABASE | SCHEMA} [IF EXISTS] db_name\n\nDROP DATABASE drops all tables in the database and deletes the\ndatabase. Be very careful with this statement! To use DROP DATABASE,\nyou need the DROP privilege on the database. DROP SCHEMA is a synonym\nfor DROP DATABASE.\n\n*Important*: When a database is dropped, user privileges on the\ndatabase are not automatically dropped. See [HELP GRANT].\n\nIF EXISTS is used to prevent an error from occurring if the database\ndoes not exist.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-database.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-database.html'),
(187, 'MBREQUAL', 6, 'MBREqual(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 are the same.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html'),
(188, 'TIMESTAMP FUNCTION', 31, 'Syntax:\nTIMESTAMP(expr), TIMESTAMP(expr1,expr2)\n\nWith a single argument, this function returns the date or datetime\nexpression expr as a datetime value. With two arguments, it adds the\ntime expression expr2 to the date or datetime expression expr1 and\nreturns the result as a datetime value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMESTAMP(''2003-12-31'');\n        -> ''2003-12-31 00:00:00''\nmysql> SELECT TIMESTAMP(''2003-12-31 12:00:00'',''12:00:00'');\n        -> ''2004-01-01 00:00:00''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(189, 'HELP_VERSION', 9, 'This help information was generated from the MySQL 5.1 Reference Manual\non: 2010-11-03 (revision: 23536)\n\nThis information applies to MySQL 5.1 through 5.1.53.\n', '', ''),
(190, 'CHARACTER_LENGTH', 36, 'Syntax:\nCHARACTER_LENGTH(str)\n\nCHARACTER_LENGTH() is a synonym for CHAR_LENGTH().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(191, 'SHOW GRANTS', 26, 'Syntax:\nSHOW GRANTS [FOR user]\n\nThis statement lists the GRANT statement or statements that must be\nissued to duplicate the privileges that are granted to a MySQL user\naccount. The account is named using the same format as for the GRANT\nstatement; for example, ''jeffrey''@''localhost''. If you specify only the\nuser name part of the account name, a host name part of ''%'' is used.\nFor additional information about specifying account names, see [HELP\nGRANT].\n\nmysql> SHOW GRANTS FOR ''root''@''localhost'';\n+---------------------------------------------------------------------+\n| Grants for root@localhost                                           |\n+---------------------------------------------------------------------+\n| GRANT ALL PRIVILEGES ON *.* TO ''root''@''localhost'' WITH GRANT OPTION |\n+---------------------------------------------------------------------+\n\nTo list the privileges granted to the account that you are using to\nconnect to the server, you can use any of the following statements:\n\nSHOW GRANTS;\nSHOW GRANTS FOR CURRENT_USER;\nSHOW GRANTS FOR CURRENT_USER();\n\nAs of MySQL 5.1.12, if SHOW GRANTS FOR CURRENT_USER (or any of the\nequivalent syntaxes) is used in DEFINER context, such as within a\nstored procedure that is defined with SQL SECURITY DEFINER), the grants\ndisplayed are those of the definer and not the invoker.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-grants.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-grants.html'),
(192, 'SHOW PRIVILEGES', 26, 'Syntax:\nSHOW PRIVILEGES\n\nSHOW PRIVILEGES shows the list of system privileges that the MySQL\nserver supports. The exact list of privileges depends on the version of\nyour server.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-privileges.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-privileges.html'),
(193, 'CREATE TABLESPACE', 38, 'Syntax:\nCREATE TABLESPACE tablespace_name\n    ADD DATAFILE ''file_name''\n    USE LOGFILE GROUP logfile_group\n    [EXTENT_SIZE [=] extent_size]\n    [INITIAL_SIZE [=] initial_size]\n    [AUTOEXTEND_SIZE [=] autoextend_size]\n    [MAX_SIZE [=] max_size]\n    [NODEGROUP [=] nodegroup_id]\n    [WAIT]\n    [COMMENT [=] comment_text]\n    ENGINE [=] engine_name\n\nThis statement is used to create a tablespace, which can contain one or\nmore data files, providing storage space for tables. One data file is\ncreated and added to the tablespace using this statement. Additional\ndata files may be added to the tablespace by using the ALTER TABLESPACE\nstatement (see [HELP ALTER TABLESPACE]). For rules covering the naming\nof tablespaces, see\nhttp://dev.mysql.com/doc/refman/5.1/en/identifiers.html.\n\n*Note*: All MySQL Cluster Disk Data objects share the same namespace.\nThis means that each Disk Data object must be uniquely named (and not\nmerely each Disk Data object of a given type). For example, you cannot\nhave a tablespace and a log file group with the same name, or a\ntablespace and a data file with the same name.\n\nPrior to MySQL Cluster NDB 6.2.17, 6.3.23, and 6.4.3, path and file\nnames for data files could not be longer than 128 characters.\n(Bug#31770 (http://bugs.mysql.com/bug.php?id=31770))\n\nA log file group of one or more UNDO log files must be assigned to the\ntablespace to be created with the USE LOGFILE GROUP clause.\nlogfile_group must be an existing log file group created with CREATE\nLOGFILE GROUP (see\nhttp://dev.mysql.com/doc/refman/5.1/en/create-logfile-group.html).\nMultiple tablespaces may use the same log file group for UNDO logging.\n\nThe EXTENT_SIZE sets the size, in bytes, of the extents used by any\nfiles belonging to the tablespace. The default value is 1M. The minimum\nsize is 32K, and theoretical maximum is 2G, although the practical\nmaximum size depends on a number of factors. In most cases, changing\nthe extent size does not have any measurable effect on performance, and\nthe default value is recommended for all but the most unusual\nsituations.\n\nAn extent is a unit of disk space allocation. One extent is filled with\nas much data as that extent can contain before another extent is used.\nIn theory, up to 65,535 (64K) extents may used per data file; however,\nthe recommended maximum is 32,768 (32K). The recommended maximum size\nfor a single data file is 32G---that is, 32K extents x 1 MB per extent.\nIn addition, once an extent is allocated to a given partition, it\ncannot be used to store data from a different partition; an extent\ncannot store data from more than one partition. This means, for example\nthat a tablespace having a single datafile whose INITIAL_SIZE is 256 MB\nand whose EXTENT_SIZE is 128M has just two extents, and so can be used\nto store data from at most two different disk data table partitions.\n\nYou can see how many extents remain free in a given data file by\nquerying the INFORMATION_SCHEMA.FILES table, and so derive an estimate\nfor how much space remains free in the file. For further discussion and\nexamples, see http://dev.mysql.com/doc/refman/5.1/en/files-table.html.\n\nThe INITIAL_SIZE parameter sets the data file''s total size in bytes.\nOnce the file has been created, its size cannot be changed; however,\nyou can add more data files to the tablespace using ALTER TABLESPACE\n... ADD DATAFILE. See [HELP ALTER TABLESPACE].\n\nINITIAL_SIZE is optional; its default value is 128M.\n\nOn 32-bit systems, the maximum supported value for INITIAL_SIZE is 4G.\n(Bug#29186 (http://bugs.mysql.com/bug.php?id=29186))\n\nWhen setting EXTENT_SIZE or INITIAL_SIZE (either or both), you may\noptionally follow the number with a one-letter abbreviation for an\norder of magnitude, similar to those used in my.cnf. Generally, this is\none of the letters M (for megabytes) or G (for gigabytes).\n\nINITIAL_SIZE, EXTENT_SIZE, and UNDO_BUFFER_SIZE are subject to rounding\nas follows:\n\no EXTENT_SIZE and UNDO_BUFFER_SIZE are each rounded up to the nearest\n  whole multiple of 32K.\n\no INITIAL_SIZE is rounded down to the nearest whole multiple of 32K.\n\n  For data files, INITIAL_SIZE is subject to further rounding; the\n  result just obtained is rounded up to the nearest whole multiple of\n  EXTENT_SIZE (after any rounding).\n\nThe rounding just described has always (since Disk Data tablespaces\nwere introduced in MySQL 5.1.6) been performed implicitly, but\nbeginning with MySQL Cluster NDB 6.2.19, MySQL Cluster NDB 6.3.32,\nMySQL Cluster NDB 7.0.13, and MySQL Cluster NDB 7.1.2, this rounding is\ndone explicitly, and a warning is issued by the MySQL Server when any\nsuch rounding is performed. The rounded values are also used by the NDB\nkernel for calculating INFORMATION_SCHEMA.FILES column values and other\npurposes. However, to avoid an unexpected result, we suggest that you\nalways use whole multiples of 32K in specifying these options.\n\nAUTOEXTEND_SIZE, MAX_SIZE, NODEGROUP, WAIT, and COMMENT are parsed but\nignored, and so currently have no effect. These options are intended\nfor future expansion.\n\nThe ENGINE parameter determines the storage engine which uses this\ntablespace, with engine_name being the name of the storage engine. In\nMySQL 5.1, engine_name must be one of the values NDB or NDBCLUSTER.\n\nWhen CREATE TABLESPACE is used with ENGINE = NDB, a tablespace and\nassociated data file are created on each Cluster data node. You can\nverify that the data files were created and obtain information about\nthem by querying the INFORMATION_SCHEMA.FILES table. For example:\n\nmysql> SELECT LOGFILE_GROUP_NAME, FILE_NAME, EXTRA\n    -> FROM INFORMATION_SCHEMA.FILES\n    -> WHERE TABLESPACE_NAME = ''newts'' AND FILE_TYPE = ''DATAFILE'';\n+--------------------+-------------+----------------+\n| LOGFILE_GROUP_NAME | FILE_NAME   | EXTRA          |\n+--------------------+-------------+----------------+\n| lg_3               | newdata.dat | CLUSTER_NODE=3 |\n| lg_3               | newdata.dat | CLUSTER_NODE=4 |\n+--------------------+-------------+----------------+\n2 rows in set (0.01 sec)\n\n(See http://dev.mysql.com/doc/refman/5.1/en/files-table.html.)\n\nCREATE TABLESPACE was added in MySQL 5.1.6. In MySQL 5.1, it is useful\nonly with Disk Data storage for MySQL Cluster. See\nhttp://dev.mysql.com/doc/refman/5.1/en/mysql-cluster-disk-data.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-tablespace.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-tablespace.html'),
(194, 'INSERT FUNCTION', 36, 'Syntax:\nINSERT(str,pos,len,newstr)\n\nReturns the string str, with the substring beginning at position pos\nand len characters long replaced by the string newstr. Returns the\noriginal string if pos is not within the length of the string. Replaces\nthe rest of the string from position pos if len is not within the\nlength of the rest of the string. Returns NULL if any argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT INSERT(''Quadratic'', 3, 4, ''What'');\n        -> ''QuWhattic''\nmysql> SELECT INSERT(''Quadratic'', -1, 4, ''What'');\n        -> ''Quadratic''\nmysql> SELECT INSERT(''Quadratic'', 3, 100, ''What'');\n        -> ''QuWhat''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(195, 'CRC32', 4, 'Syntax:\nCRC32(expr)\n\nComputes a cyclic redundancy check value and returns a 32-bit unsigned\nvalue. The result is NULL if the argument is NULL. The argument is\nexpected to be a string and (if possible) is treated as one if it is\nnot.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT CRC32(''MySQL'');\n        -> 3259397556\nmysql> SELECT CRC32(''mysql'');\n        -> 2501908538\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(196, 'XOR', 14, 'Syntax:\nXOR\n\nLogical XOR. Returns NULL if either operand is NULL. For non-NULL\noperands, evaluates to 1 if an odd number of operands is nonzero,\notherwise 0 is returned.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html\n\n', 'mysql> SELECT 1 XOR 1;\n        -> 0\nmysql> SELECT 1 XOR 0;\n        -> 1\nmysql> SELECT 1 XOR NULL;\n        -> NULL\nmysql> SELECT 1 XOR 1 XOR 1;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html'),
(197, 'STARTPOINT', 13, 'StartPoint(ls)\n\nReturns the Point that is the start point of the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#linestring-property-functions\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT AsText(StartPoint(GeomFromText(@ls)));\n+---------------------------------------+\n| AsText(StartPoint(GeomFromText(@ls))) |\n+---------------------------------------+\n| POINT(1 1)                            |\n+---------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#linestring-property-functions'),
(198, 'DECLARE VARIABLE', 23, 'Syntax:\nDECLARE var_name [, var_name] ... type [DEFAULT value]\n\nThis statement is used to declare local variables within stored\nprograms. To provide a default value for the variable, include a\nDEFAULT clause. The value can be specified as an expression; it need\nnot be a constant. If the DEFAULT clause is missing, the initial value\nis NULL.\n\nLocal variables are treated like stored routine parameters with respect\nto data type and overflow checking. See [HELP CREATE PROCEDURE].\n\nLocal variable names are not case sensitive.\n\nThe scope of a local variable is within the BEGIN ... END block where\nit is declared. The variable can be referred to in blocks nested within\nthe declaring block, except those blocks that declare a variable with\nthe same name.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/declare-local-variable.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/declare-local-variable.html'),
(199, 'GRANT', 10, 'Syntax:\nGRANT\n    priv_type [(column_list)]\n      [, priv_type [(column_list)]] ...\n    ON [object_type] priv_level\n    TO user_specification [, user_specification] ...\n    [REQUIRE {NONE | ssl_option [[AND] ssl_option] ...}]\n    [WITH with_option ...]\n\nobject_type:\n    TABLE\n  | FUNCTION\n  | PROCEDURE\n\npriv_level:\n    *\n  | *.*\n  | db_name.*\n  | db_name.tbl_name\n  | tbl_name\n  | db_name.routine_name\n\nuser_specification:\n    user [IDENTIFIED BY [PASSWORD] ''password'']\n\nssl_option:\n    SSL\n  | X509\n  | CIPHER ''cipher''\n  | ISSUER ''issuer''\n  | SUBJECT ''subject''\n\nwith_option:\n    GRANT OPTION\n  | MAX_QUERIES_PER_HOUR count\n  | MAX_UPDATES_PER_HOUR count\n  | MAX_CONNECTIONS_PER_HOUR count\n  | MAX_USER_CONNECTIONS count\n\nThe GRANT statement enables system administrators to grant privileges\nto MySQL user accounts. GRANT also serves to specify other account\ncharacteristics such as use of secure connections and limits on access\nto server resources. To use GRANT, you must have the GRANT OPTION\nprivilege, and you must have the privileges that you are granting.\n\nNormally, CREATE USER is used to create an account and GRANT to define\nits privileges. However, if an account named in a GRANT statement does\nnot already exist, GRANT may create it under the conditions described\nlater in the discussion of the NO_AUTO_CREATE_USER SQL mode.\n\nThe REVOKE statement is related to GRANT and enables administrators to\nremove account privileges. To determine what privileges an account has,\nuse SHOW GRANTS. See [HELP REVOKE], and [HELP SHOW GRANTS].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/grant.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/grant.html'),
(200, 'MPOLYFROMTEXT', 3, 'MPolyFromText(wkt[,srid]), MultiPolygonFromText(wkt[,srid])\n\nConstructs a MULTIPOLYGON value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkt-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkt-functions'),
(201, 'MBRINTERSECTS', 6, 'MBRIntersects(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 intersect.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html'),
(202, 'BIT_OR', 16, 'Syntax:\nBIT_OR(expr)\n\nReturns the bitwise OR of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(203, 'YEARWEEK', 31, 'Syntax:\nYEARWEEK(date), YEARWEEK(date,mode)\n\nReturns year and week for a date. The mode argument works exactly like\nthe mode argument to WEEK(). The year in the result may be different\nfrom the year in the date argument for the first and the last week of\nthe year.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT YEARWEEK(''1987-01-01'');\n        -> 198653\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(204, 'NOT BETWEEN', 18, 'Syntax:\nexpr NOT BETWEEN min AND max\n\nThis is the same as NOT (expr BETWEEN min AND max).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(205, 'IS NOT', 18, 'Syntax:\nIS NOT boolean_value\n\nTests a value against a boolean value, where boolean_value can be TRUE,\nFALSE, or UNKNOWN.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 1 IS NOT UNKNOWN, 0 IS NOT UNKNOWN, NULL IS NOT UNKNOWN;\n        -> 1, 1, 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(206, 'LOG10', 4, 'Syntax:\nLOG10(X)\n\nReturns the base-10 logarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT LOG10(2);\n        -> 0.30102999566398\nmysql> SELECT LOG10(100);\n        -> 2\nmysql> SELECT LOG10(-100);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(207, 'SQRT', 4, 'Syntax:\nSQRT(X)\n\nReturns the square root of a nonnegative number X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT SQRT(4);\n        -> 2\nmysql> SELECT SQRT(20);\n        -> 4.4721359549996\nmysql> SELECT SQRT(-16);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(208, 'DECIMAL', 22, 'DECIMAL[(M[,D])] [UNSIGNED] [ZEROFILL]\n\nA packed "exact" fixed-point number. M is the total number of digits\n(the precision) and D is the number of digits after the decimal point\n(the scale). The decimal point and (for negative numbers) the "-" sign\nare not counted in M. If D is 0, values have no decimal point or\nfractional part. The maximum number of digits (M) for DECIMAL is 65.\nThe maximum number of supported decimals (D) is 30. If D is omitted,\nthe default is 0. If M is omitted, the default is 10.\n\nUNSIGNED, if specified, disallows negative values.\n\nAll basic calculations (+, -, *, /) with DECIMAL columns are done with\na precision of 65 digits.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(209, 'CREATE INDEX', 38, 'Syntax:\nCREATE [ONLINE|OFFLINE] [UNIQUE|FULLTEXT|SPATIAL] INDEX index_name\n    [index_type]\n    ON tbl_name (index_col_name,...)\n    [index_option] ...\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH}\n\nindex_option:\n    KEY_BLOCK_SIZE [=] value\n  | index_type\n  | WITH PARSER parser_name\n\nCREATE INDEX is mapped to an ALTER TABLE statement to create indexes.\nSee [HELP ALTER TABLE]. CREATE INDEX cannot be used to create a PRIMARY\nKEY; use ALTER TABLE instead. For more information about indexes, see\nhttp://dev.mysql.com/doc/refman/5.1/en/mysql-indexes.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-index.html'),
(210, 'CREATE FUNCTION', 38, 'The CREATE FUNCTION statement is used to create stored functions and\nuser-defined functions (UDFs):\n\no For information about creating stored functions, see [HELP CREATE\n  PROCEDURE].\n\no For information about creating user-defined functions, see [HELP\n  CREATE FUNCTION UDF].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-function.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-function.html'),
(211, 'ALTER DATABASE', 38, 'Syntax:\nALTER {DATABASE | SCHEMA} [db_name]\n    alter_specification ...\nALTER {DATABASE | SCHEMA} db_name\n    UPGRADE DATA DIRECTORY NAME\n\nalter_specification:\n    [DEFAULT] CHARACTER SET [=] charset_name\n  | [DEFAULT] COLLATE [=] collation_name\n\nALTER DATABASE enables you to change the overall characteristics of a\ndatabase. These characteristics are stored in the db.opt file in the\ndatabase directory. To use ALTER DATABASE, you need the ALTER privilege\non the database. ALTER SCHEMA is a synonym for ALTER DATABASE.\n\nThe CHARACTER SET clause changes the default database character set.\nThe COLLATE clause changes the default database collation.\nhttp://dev.mysql.com/doc/refman/5.1/en/charset.html, discusses\ncharacter set and collation names.\n\nYou can see what character sets and collations are available using,\nrespectively, the SHOW CHARACTER SET and SHOW COLLATION statements. See\n[HELP SHOW CHARACTER SET], and [HELP SHOW COLLATION], for more\ninformation.\n\nThe database name can be omitted from the first syntax, in which case\nthe statement applies to the default database.\n\nThe syntax that includes the UPGRADE DATA DIRECTORY NAME clause was\nadded in MySQL 5.1.23. It updates the name of the directory associated\nwith the database to use the encoding implemented in MySQL 5.1 for\nmapping database names to database directory names (see\nhttp://dev.mysql.com/doc/refman/5.1/en/identifier-mapping.html). This\nclause is for use under these conditions:\n\no It is intended when upgrading MySQL to 5.1 or later from older\n  versions.\n\no It is intended to update a database directory name to the current\n  encoding format if the name contains special characters that need\n  encoding.\n\no The statement is used by mysqlcheck (as invoked by mysql_upgrade).\n\nFor example,if a database in MySQL 5.0 has a name of a-b-c, the name\ncontains instance of the `-'' character. In 5.0, the database directory\nis also named a-b-c, which is not necessarily safe for all file\nsystems. In MySQL 5.1 and up, the same database name is encoded as\na@002db@002dc to produce a file system-neutral directory name.\n\nWhen a MySQL installation is upgraded to MySQL 5.1 or later from an\nolder version,the server displays a name such as a-b-c (which is in the\nold format) as #mysql50#a-b-c, and you must refer to the name using the\n#mysql50# prefix. Use UPGRADE DATA DIRECTORY NAME in this case to\nexplicitly tell the server to re-encode the database directory name to\nthe current encoding format:\n\nALTER DATABASE `#mysql50#a-b-c` UPGRADE DATA DIRECTORY NAME;\n\nAfter executing this statement, you can refer to the database as a-b-c\nwithout the special #mysql50# prefix.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-database.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/alter-database.html'),
(212, 'GEOMETRYN', 25, 'GeometryN(gc,N)\n\nReturns the N-th geometry in the GeometryCollection value gc.\nGeometries are numbered beginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#geometrycollection-property-functions\n\n', 'mysql> SET @gc = ''GeometryCollection(Point(1 1),LineString(2 2, 3 3))'';\nmysql> SELECT AsText(GeometryN(GeomFromText(@gc),1));\n+----------------------------------------+\n| AsText(GeometryN(GeomFromText(@gc),1)) |\n+----------------------------------------+\n| POINT(1 1)                             |\n+----------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#geometrycollection-property-functions'),
(213, '<<', 19, 'Syntax:\n<<\n\nShifts a longlong (BIGINT) number to the left.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT 1 << 2;\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html'),
(214, 'SHOW TABLE STATUS', 26, 'Syntax:\nSHOW TABLE STATUS [{FROM | IN} db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW TABLE STATUS works likes SHOW TABLES, but provides a lot of\ninformation about each non-TEMPORARY table. You can also get this list\nusing the mysqlshow --status db_name command. The LIKE clause, if\npresent, indicates which table names to match. The WHERE clause can be\ngiven to select rows using more general conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-table-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-table-status.html'),
(215, 'MD5', 12, 'Syntax:\nMD5(str)\n\nCalculates an MD5 128-bit checksum for the string. The value is\nreturned as a binary string of 32 hex digits, or NULL if the argument\nwas NULL. The return value can, for example, be used as a hash key. See\nthe notes at the beginning of this section about storing hash values\nefficiently.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT MD5(''testing'');\n        -> ''ae2b1fca515949e5d54fb22b8ed95575''\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(216, '<', 18, 'Syntax:\n<\n\nLess than:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 2 < 2;\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(217, 'UNIX_TIMESTAMP', 31, 'Syntax:\nUNIX_TIMESTAMP(), UNIX_TIMESTAMP(date)\n\nIf called with no argument, returns a Unix timestamp (seconds since\n''1970-01-01 00:00:00'' UTC) as an unsigned integer. If UNIX_TIMESTAMP()\nis called with a date argument, it returns the value of the argument as\nseconds since ''1970-01-01 00:00:00'' UTC. date may be a DATE string, a\nDATETIME string, a TIMESTAMP, or a number in the format YYMMDD or\nYYYYMMDD. The server interprets date as a value in the current time\nzone and converts it to an internal value in UTC. Clients can set their\ntime zone as described in\nhttp://dev.mysql.com/doc/refman/5.1/en/time-zone-support.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT UNIX_TIMESTAMP();\n        -> 1196440210\nmysql> SELECT UNIX_TIMESTAMP(''2007-11-30 10:30:19'');\n        -> 1196440219\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(218, 'DAYOFMONTH', 31, 'Syntax:\nDAYOFMONTH(date)\n\nReturns the day of the month for date, in the range 1 to 31, or 0 for\ndates such as ''0000-00-00'' or ''2008-00-00'' that have a zero day part.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYOFMONTH(''2007-02-03'');\n        -> 3\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(219, 'ASCII', 36, 'Syntax:\nASCII(str)\n\nReturns the numeric value of the leftmost character of the string str.\nReturns 0 if str is the empty string. Returns NULL if str is NULL.\nASCII() works for 8-bit characters.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT ASCII(''2'');\n        -> 50\nmysql> SELECT ASCII(2);\n        -> 50\nmysql> SELECT ASCII(''dx'');\n        -> 100\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(220, 'DIV', 4, 'Syntax:\nDIV\n\nInteger division. Similar to FLOOR(), but is safe with BIGINT values.\nIncorrect results may occur for noninteger operands that exceed BIGINT\nrange.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', 'mysql> SELECT 5 DIV 2;\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html'),
(221, 'RENAME USER', 10, 'Syntax:\nRENAME USER old_user TO new_user\n    [, old_user TO new_user] ...\n\nThe RENAME USER statement renames existing MySQL accounts. To use it,\nyou must have the global CREATE USER privilege or the UPDATE privilege\nfor the mysql database. An error occurs if any old account does not\nexist or any new account exists. Each account name uses the format\ndescribed in http://dev.mysql.com/doc/refman/5.1/en/account-names.html.\nFor example:\n\nRENAME USER ''jeffrey''@''localhost'' TO ''jeff''@''127.0.0.1'';\n\nIf you specify only the user name part of the account name, a host name\npart of ''%'' is used.\n\nRENAME USER causes the privileges held by the old user to be those held\nby the new user. However, RENAME USER does not automatically drop or\ninvalidate databases or objects within them that the old user created.\nThis includes stored programs or views for which the DEFINER attribute\nnames the old user. Attempts to access such objects may produce an\nerror if they execute in definer security context. (For information\nabout security context, see\nhttp://dev.mysql.com/doc/refman/5.1/en/stored-programs-security.html.)\n\nThe privilege changes take effect as indicated in\nhttp://dev.mysql.com/doc/refman/5.1/en/privilege-changes.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/rename-user.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/rename-user.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(222, 'SHOW SLAVE STATUS', 26, 'Syntax:\nSHOW SLAVE STATUS\n\nThis statement provides status information on essential parameters of\nthe slave threads. It requires either the SUPER or REPLICATION CLIENT\nprivilege.\n\nIf you issue this statement using the mysql client, you can use a \\G\nstatement terminator rather than a semicolon to obtain a more readable\nvertical layout:\n\nmysql> SHOW SLAVE STATUS\\G\n*************************** 1. row ***************************\n               Slave_IO_State: Waiting for master to send event\n                  Master_Host: localhost\n                  Master_User: root\n                  Master_Port: 3306\n                Connect_Retry: 3\n              Master_Log_File: gbichot-bin.005\n          Read_Master_Log_Pos: 79\n               Relay_Log_File: gbichot-relay-bin.005\n                Relay_Log_Pos: 548\n        Relay_Master_Log_File: gbichot-bin.005\n             Slave_IO_Running: Yes\n            Slave_SQL_Running: Yes\n              Replicate_Do_DB:\n          Replicate_Ignore_DB:\n           Replicate_Do_Table:\n       Replicate_Ignore_Table:\n      Replicate_Wild_Do_Table:\n  Replicate_Wild_Ignore_Table:\n                   Last_Errno: 0\n                   Last_Error:\n                 Skip_Counter: 0\n          Exec_Master_Log_Pos: 79\n              Relay_Log_Space: 552\n              Until_Condition: None\n               Until_Log_File:\n                Until_Log_Pos: 0\n           Master_SSL_Allowed: No\n           Master_SSL_CA_File:\n           Master_SSL_CA_Path:\n              Master_SSL_Cert:\n            Master_SSL_Cipher:\n               Master_SSL_Key:\n        Seconds_Behind_Master: 8\nMaster_SSL_Verify_Server_Cert: No\n                Last_IO_Errno: 0\n                Last_IO_Error:\n               Last_SQL_Errno: 0\n               Last_SQL_Error:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-slave-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-slave-status.html'),
(223, 'GEOMETRY', 33, 'MySQL provides a standard way of creating spatial columns for geometry\ntypes, for example, with CREATE TABLE or ALTER TABLE. Currently,\nspatial columns are supported for MyISAM, InnoDB, NDB, and ARCHIVE\ntables. See also the annotations about spatial indexes under [HELP\nSPATIAL].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-columns.html\n\n', 'CREATE TABLE geom (g GEOMETRY);\n', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-columns.html'),
(224, 'NUMPOINTS', 13, 'NumPoints(ls)\n\nReturns the number of Point objects in the LineString value ls.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#linestring-property-functions\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT NumPoints(GeomFromText(@ls));\n+------------------------------+\n| NumPoints(GeomFromText(@ls)) |\n+------------------------------+\n|                            3 |\n+------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#linestring-property-functions'),
(225, 'ALTER LOGFILE GROUP', 38, 'Syntax:\nALTER LOGFILE GROUP logfile_group\n    ADD UNDOFILE ''file_name''\n    [INITIAL_SIZE [=] size]\n    [WAIT]\n    ENGINE [=] engine_name\n\nThis statement adds an UNDO file named ''file_name'' to an existing log\nfile group logfile_group. An ALTER LOGFILE GROUP statement has one and\nonly one ADD UNDOFILE clause. No DROP UNDOFILE clause is currently\nsupported.\n\n*Note*: All MySQL Cluster Disk Data objects share the same namespace.\nThis means that each Disk Data object must be uniquely named (and not\nmerely each Disk Data object of a given type). For example, you cannot\nhave a tablespace and an undo log file with the same name, or an undo\nlog file and a data file with the same name.\n\nPrior to MySQL Cluster NDB 6.2.17, 6.3.23, and 6.4.3, path and file\nnames for undo log files could not be longer than 128 characters.\n(Bug#31769 (http://bugs.mysql.com/bug.php?id=31769))\n\nThe optional INITIAL_SIZE parameter sets the UNDO file''s initial size\nin bytes; if not specified, the initial size default to 128M (128\nmegabytes). You may optionally follow size with a one-letter\nabbreviation for an order of magnitude, similar to those used in\nmy.cnf. Generally, this is one of the letters M (for megabytes) or G\n(for gigabytes).\n\nOn 32-bit systems, the maximum supported value for INITIAL_SIZE is 4G.\n(Bug#29186 (http://bugs.mysql.com/bug.php?id=29186))\n\nBeginning with MySQL Cluster NDB 2.1.18, 6.3.24, and 7.0.4, the minimum\npermitted value for INITIAL_SIZE is 1M. (Bug#29574\n(http://bugs.mysql.com/bug.php?id=29574))\n\n*Note*: WAIT is parsed but otherwise ignored, and so has no effect in\nMySQL 5.1 and MySQL Cluster NDB 6.x. It is intended for future\nexpansion.\n\nThe ENGINE parameter (required) determines the storage engine which is\nused by this log file group, with engine_name being the name of the\nstorage engine. In MySQL 5.1 and MySQL Cluster NDB 6.x, the only\naccepted values for engine_name are "NDBCLUSTER" and "NDB". The two\nvalues are equivalent.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-logfile-group.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/alter-logfile-group.html'),
(226, '&', 19, 'Syntax:\n&\n\nBitwise AND:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT 29 & 15;\n        -> 13\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html'),
(227, 'LOCALTIMESTAMP', 31, 'Syntax:\nLOCALTIMESTAMP, LOCALTIMESTAMP()\n\nLOCALTIMESTAMP and LOCALTIMESTAMP() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(228, 'CONVERT', 36, 'Syntax:\nCONVERT(expr,type), CONVERT(expr USING transcoding_name)\n\nThe CONVERT() and CAST() functions take a value of one type and produce\na value of another type.\n\nThe type can be one of the following values:\n\no BINARY[(N)]\n\no CHAR[(N)]\n\no DATE\n\no DATETIME\n\no DECIMAL[(M[,D])]\n\no SIGNED [INTEGER]\n\no TIME\n\no UNSIGNED [INTEGER]\n\nBINARY produces a string with the BINARY data type. See\nhttp://dev.mysql.com/doc/refman/5.1/en/binary-varbinary.html for a\ndescription of how this affects comparisons. If the optional length N\nis given, BINARY(N) causes the cast to use no more than N bytes of the\nargument. Values shorter than N bytes are padded with 0x00 bytes to a\nlength of N.\n\nCHAR(N) causes the cast to use no more than N characters of the\nargument.\n\nCAST() and CONVERT(... USING ...) are standard SQL syntax. The\nnon-USING form of CONVERT() is ODBC syntax.\n\nCONVERT() with USING is used to convert data between different\ncharacter sets. In MySQL, transcoding names are the same as the\ncorresponding character set names. For example, this statement converts\nthe string ''abc'' in the default character set to the corresponding\nstring in the utf8 character set:\n\nSELECT CONVERT(''abc'' USING utf8);\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/cast-functions.html\n\n', 'SELECT enum_col FROM tbl_name ORDER BY CAST(enum_col AS CHAR);\n', 'http://dev.mysql.com/doc/refman/5.1/en/cast-functions.html'),
(229, 'ADDDATE', 31, 'Syntax:\nADDDATE(date,INTERVAL expr unit), ADDDATE(expr,days)\n\nWhen invoked with the INTERVAL form of the second argument, ADDDATE()\nis a synonym for DATE_ADD(). The related function SUBDATE() is a\nsynonym for DATE_SUB(). For information on the INTERVAL unit argument,\nsee the discussion for DATE_ADD().\n\nmysql> SELECT DATE_ADD(''2008-01-02'', INTERVAL 31 DAY);\n        -> ''2008-02-02''\nmysql> SELECT ADDDATE(''2008-01-02'', INTERVAL 31 DAY);\n        -> ''2008-02-02''\n\nWhen invoked with the days form of the second argument, MySQL treats it\nas an integer number of days to be added to expr.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT ADDDATE(''2008-01-02'', 31);\n        -> ''2008-02-02''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(230, 'REPEAT LOOP', 23, 'Syntax:\n[begin_label:] REPEAT\n    statement_list\nUNTIL search_condition\nEND REPEAT [end_label]\n\nThe statement list within a REPEAT statement is repeated until the\nsearch_condition is true. Thus, a REPEAT always enters the loop at\nleast once. statement_list consists of one or more statements, each\nterminated by a semicolon (;) statement delimiter.\n\nA REPEAT statement can be labeled. See [HELP BEGIN END] for the rules\nregarding label use.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/repeat-statement.html\n\n', 'mysql> delimiter //\n\nmysql> CREATE PROCEDURE dorepeat(p1 INT)\n    -> BEGIN\n    ->   SET @x = 0;\n    ->   REPEAT SET @x = @x + 1; UNTIL @x > p1 END REPEAT;\n    -> END\n    -> //\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CALL dorepeat(1000)//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @x//\n+------+\n| @x   |\n+------+\n| 1001 |\n+------+\n1 row in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/repeat-statement.html'),
(231, 'ALTER FUNCTION', 38, 'Syntax:\nALTER FUNCTION func_name [characteristic ...]\n\ncharacteristic:\n    { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n  | SQL SECURITY { DEFINER | INVOKER }\n  | COMMENT ''string''\n\nThis statement can be used to change the characteristics of a stored\nfunction. More than one change may be specified in an ALTER FUNCTION\nstatement. However, you cannot change the parameters or body of a\nstored function using this statement; to make such changes, you must\ndrop and re-create the function using DROP FUNCTION and CREATE\nFUNCTION.\n\nYou must have the ALTER ROUTINE privilege for the function. (That\nprivilege is granted automatically to the function creator.) If binary\nlogging is enabled, the ALTER FUNCTION statement might also require the\nSUPER privilege, as described in\nhttp://dev.mysql.com/doc/refman/5.1/en/stored-programs-logging.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-function.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/alter-function.html'),
(232, 'SMALLINT', 22, 'SMALLINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA small integer. The signed range is -32768 to 32767. The unsigned\nrange is 0 to 65535.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(233, 'DOUBLE PRECISION', 22, 'DOUBLE PRECISION[(M,D)] [UNSIGNED] [ZEROFILL], REAL[(M,D)] [UNSIGNED]\n[ZEROFILL]\n\nThese types are synonyms for DOUBLE. Exception: If the REAL_AS_FLOAT\nSQL mode is enabled, REAL is a synonym for FLOAT rather than DOUBLE.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(234, 'ORD', 36, 'Syntax:\nORD(str)\n\nIf the leftmost character of the string str is a multi-byte character,\nreturns the code for that character, calculated from the numeric values\nof its constituent bytes using this formula:\n\n  (1st byte code)\n+ (2nd byte code * 256)\n+ (3rd byte code * 2562) ...\n\nIf the leftmost character is not a multi-byte character, ORD() returns\nthe same value as the ASCII() function.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT ORD(''2'');\n        -> 50\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(235, 'DEALLOCATE PREPARE', 26, 'Syntax:\n{DEALLOCATE | DROP} PREPARE stmt_name\n\nTo deallocate a prepared statement produced with PREPARE, use a\nDEALLOCATE PREPARE statement that refers to the prepared statement\nname. Attempting to execute a prepared statement after deallocating it\nresults in an error.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/deallocate-prepare.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/deallocate-prepare.html'),
(236, 'ENVELOPE', 35, 'Envelope(g)\n\nReturns the Minimum Bounding Rectangle (MBR) for the geometry value g.\nThe result is returned as a Polygon value.\n\nThe polygon is defined by the corner points of the bounding box:\n\nPOLYGON((MINX MINY, MAXX MINY, MAXX MAXY, MINX MAXY, MINX MINY))\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#general-geometry-property-functions\n\n', 'mysql> SELECT AsText(Envelope(GeomFromText(''LineString(1 1,2 2)'')));\n+-------------------------------------------------------+\n| AsText(Envelope(GeomFromText(''LineString(1 1,2 2)''))) |\n+-------------------------------------------------------+\n| POLYGON((1 1,2 1,2 2,1 2,1 1))                        |\n+-------------------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#general-geometry-property-functions'),
(237, 'IS_FREE_LOCK', 15, 'Syntax:\nIS_FREE_LOCK(str)\n\nChecks whether the lock named str is free to use (that is, not locked).\nReturns 1 if the lock is free (no one is using the lock), 0 if the lock\nis in use, and NULL if an error occurs (such as an incorrect argument).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(238, 'TOUCHES', 30, 'Touches(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially touches g2. Two\ngeometries spatially touch if the interiors of the geometries do not\nintersect, but the boundary of one of the geometries intersects either\nthe boundary or the interior of the other.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html'),
(239, 'INET_ATON', 15, 'Syntax:\nINET_ATON(expr)\n\nGiven the dotted-quad representation of a network address as a string,\nreturns an integer that represents the numeric value of the address.\nAddresses may be 4- or 8-byte addresses.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> SELECT INET_ATON(''209.207.224.40'');\n        -> 3520061480\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(240, 'UNCOMPRESS', 12, 'Syntax:\nUNCOMPRESS(string_to_uncompress)\n\nUncompresses a string compressed by the COMPRESS() function. If the\nargument is not a compressed value, the result is NULL. This function\nrequires MySQL to have been compiled with a compression library such as\nzlib. Otherwise, the return value is always NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT UNCOMPRESS(COMPRESS(''any string''));\n        -> ''any string''\nmysql> SELECT UNCOMPRESS(''any string'');\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(241, 'AUTO_INCREMENT', 22, 'The AUTO_INCREMENT attribute can be used to generate a unique identity\nfor new rows:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/example-auto-increment.html\n\n', 'CREATE TABLE animals (\n     id MEDIUMINT NOT NULL AUTO_INCREMENT,\n     name CHAR(30) NOT NULL,\n     PRIMARY KEY (id)\n) ENGINE=MyISAM;\n\nINSERT INTO animals (name) VALUES\n    (''dog''),(''cat''),(''penguin''),\n    (''lax''),(''whale''),(''ostrich'');\n\nSELECT * FROM animals;\n', 'http://dev.mysql.com/doc/refman/5.1/en/example-auto-increment.html'),
(242, 'ISSIMPLE', 35, 'IsSimple(g)\n\nCurrently, this function is a placeholder and should not be used. If\nimplemented, its behavior will be as described in the next paragraph.\n\nReturns 1 if the geometry value g has no anomalous geometric points,\nsuch as self-intersection or self-tangency. IsSimple() returns 0 if the\nargument is not simple, and -1 if it is NULL.\n\nThe description of each instantiable geometric class given earlier in\nthe chapter includes the specific conditions that cause an instance of\nthat class to be classified as not simple. (See [HELP Geometry\nhierarchy].)\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#general-geometry-property-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#general-geometry-property-functions'),
(243, '- BINARY', 4, 'Syntax:\n-\n\nSubtraction:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3-5;\n        -> -2\n', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html'),
(244, 'GEOMCOLLFROMTEXT', 3, 'GeomCollFromText(wkt[,srid]), GeometryCollectionFromText(wkt[,srid])\n\nConstructs a GEOMETRYCOLLECTION value using its WKT representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkt-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkt-functions'),
(245, 'WKT DEFINITION', 3, 'The Well-Known Text (WKT) representation of Geometry is designed to\nexchange geometry data in ASCII form. For a Backus-Naur grammar that\nspecifies the formal production rules for writing WKT values, see the\nOpenGIS specification document referenced in\nhttp://dev.mysql.com/doc/refman/5.1/en/spatial-extensions.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-format.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/gis-wkt-format.html'),
(246, 'CURRENT_TIME', 31, 'Syntax:\nCURRENT_TIME, CURRENT_TIME()\n\nCURRENT_TIME and CURRENT_TIME() are synonyms for CURTIME().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(247, 'REVOKE', 10, 'Syntax:\nREVOKE\n    priv_type [(column_list)]\n      [, priv_type [(column_list)]] ...\n    ON [object_type] priv_level\n    FROM user [, user] ...\n\nREVOKE ALL PRIVILEGES, GRANT OPTION\n    FROM user [, user] ...\n\nThe REVOKE statement enables system administrators to revoke privileges\nfrom MySQL accounts. Each account name uses the format described in\nhttp://dev.mysql.com/doc/refman/5.1/en/account-names.html. For example:\n\nREVOKE INSERT ON *.* FROM ''jeffrey''@''localhost'';\n\nIf you specify only the user name part of the account name, a host name\npart of ''%'' is used.\n\nFor details on the levels at which privileges exist, the permissible\npriv_type and priv_level values, and the syntax for specifying users\nand passwords, see [HELP GRANT]\n\nTo use the first REVOKE syntax, you must have the GRANT OPTION\nprivilege, and you must have the privileges that you are revoking.\n\nTo revoke all privileges, use the second syntax, which drops all\nglobal, database, table, column, and routine privileges for the named\nuser or users:\n\nREVOKE ALL PRIVILEGES, GRANT OPTION FROM user [, user] ...\n\nTo use this REVOKE syntax, you must have the global CREATE USER\nprivilege or the UPDATE privilege for the mysql database.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/revoke.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/revoke.html'),
(248, 'LAST_INSERT_ID', 17, 'Syntax:\nLAST_INSERT_ID(), LAST_INSERT_ID(expr)\n\nFor MySQL 5.1.12 and later, LAST_INSERT_ID() (with no argument) returns\nthe first automatically generated value successfully inserted for an\nAUTO_INCREMENT column as a result of the most recently executed INSERT\nstatement. The value of LAST_INSERT_ID() remains unchanged if no rows\nare successfully inserted.\n\nFor example, after inserting a row that generates an AUTO_INCREMENT\nvalue, you can get the value like this:\n\nmysql> SELECT LAST_INSERT_ID();\n        -> 195\n\nIn MySQL 5.1.11 and earlier, LAST_INSERT_ID() (with no argument)\nreturns the first automatically generated value if any rows were\nsuccessfully inserted or updated. This means that the returned value\ncould be a value that was not successfully inserted into the table. If\nno rows were successfully inserted, LAST_INSERT_ID() returns 0.\n\nThe value of LAST_INSERT_ID() will be consistent across all MySQL\nversions if all rows in the INSERT or UPDATE statement were successful.\n\nif a table contains an AUTO_INCREMENT column and INSERT ... ON\nDUPLICATE KEY UPDATE updates (rather than inserts) a row, the value of\nLAST_INSERT_ID() is not meaningful prior to MySQL 5.1.12. For a\nworkaround, see\nhttp://dev.mysql.com/doc/refman/5.1/en/insert-on-duplicate.html.\n\nThe currently executing statement does not affect the value of\nLAST_INSERT_ID(). Suppose that you generate an AUTO_INCREMENT value\nwith one statement, and then refer to LAST_INSERT_ID() in a\nmultiple-row INSERT statement that inserts rows into a table with its\nown AUTO_INCREMENT column. The value of LAST_INSERT_ID() will remain\nstable in the second statement; its value for the second and later rows\nis not affected by the earlier row insertions. (However, if you mix\nreferences to LAST_INSERT_ID() and LAST_INSERT_ID(expr), the effect is\nundefined.)\n\nIf the previous statement returned an error, the value of\nLAST_INSERT_ID() is undefined. For transactional tables, if the\nstatement is rolled back due to an error, the value of LAST_INSERT_ID()\nis left undefined. For manual ROLLBACK, the value of LAST_INSERT_ID()\nis not restored to that before the transaction; it remains as it was at\nthe point of the ROLLBACK.\n\nWithin the body of a stored routine (procedure or function) or a\ntrigger, the value of LAST_INSERT_ID() changes the same way as for\nstatements executed outside the body of these kinds of objects. The\neffect of a stored routine or trigger upon the value of\nLAST_INSERT_ID() that is seen by following statements depends on the\nkind of routine:\n\no If a stored procedure executes statements that change the value of\n  LAST_INSERT_ID(), the changed value is seen by statements that follow\n  the procedure call.\n\no For stored functions and triggers that change the value, the value is\n  restored when the function or trigger ends, so following statements\n  will not see a changed value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(249, 'LAST_DAY', 31, 'Syntax:\nLAST_DAY(date)\n\nTakes a date or datetime value and returns the corresponding value for\nthe last day of the month. Returns NULL if the argument is invalid.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT LAST_DAY(''2003-02-05'');\n        -> ''2003-02-28''\nmysql> SELECT LAST_DAY(''2004-02-05'');\n        -> ''2004-02-29''\nmysql> SELECT LAST_DAY(''2004-01-01 01:01:01'');\n        -> ''2004-01-31''\nmysql> SELECT LAST_DAY(''2003-03-32'');\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(250, 'MEDIUMINT', 22, 'MEDIUMINT[(M)] [UNSIGNED] [ZEROFILL]\n\nA medium-sized integer. The signed range is -8388608 to 8388607. The\nunsigned range is 0 to 16777215.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(251, 'FLOOR', 4, 'Syntax:\nFLOOR(X)\n\nReturns the largest integer value not greater than X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT FLOOR(1.23);\n        -> 1\nmysql> SELECT FLOOR(-1.23);\n        -> -2\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(252, 'RTRIM', 36, 'Syntax:\nRTRIM(str)\n\nReturns the string str with trailing space characters removed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT RTRIM(''barbar   '');\n        -> ''barbar''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(253, 'EXPLAIN', 28, 'Syntax:\nEXPLAIN tbl_name\n\nOr:\n\nEXPLAIN [EXTENDED | PARTITIONS] SELECT select_options\n\nThe EXPLAIN statement can be used either as a synonym for DESCRIBE or\nas a way to obtain information about how MySQL executes a SELECT\nstatement:\n\no EXPLAIN tbl_name is synonymous with DESCRIBE tbl_name or SHOW COLUMNS\n  FROM tbl_name.\n\n  For a description of the DESCRIBE and SHOW COLUMNS statements, see\n  [HELP DESCRIBE], and [HELP SHOW COLUMNS].\n\no When you precede a SELECT statement with the keyword EXPLAIN, MySQL\n  displays information from the optimizer about the query execution\n  plan. That is, MySQL explains how it would process the SELECT,\n  including information about how tables are joined and in which order.\n  EXPLAIN EXTENDED can be used to provide additional information.\n\n  For information regarding the use of EXPLAIN and EXPLAIN EXTENDED for\n  obtaining query execution plan information, see\n  http://dev.mysql.com/doc/refman/5.1/en/using-explain.html.\n\no EXPLAIN PARTITIONS is available beginning with MySQL 5.1.5. It is\n  useful only when examining queries involving partitioned tables.\n\n  For details, see\n  http://dev.mysql.com/doc/refman/5.1/en/partitioning-info.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/explain.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/explain.html'),
(254, 'DEGREES', 4, 'Syntax:\nDEGREES(X)\n\nReturns the argument X, converted from radians to degrees.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT DEGREES(PI());\n        -> 180\nmysql> SELECT DEGREES(PI() / 2);\n        -> 90\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(255, 'VARCHAR', 22, '[NATIONAL] VARCHAR(M) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA variable-length string. M represents the maximum column length in\ncharacters. The range of M is 0 to 65,535. The effective maximum length\nof a VARCHAR is subject to the maximum row size (65,535 bytes, which is\nshared among all columns) and the character set used. For example, utf8\ncharacters can require up to three bytes per character, so a VARCHAR\ncolumn that uses the utf8 character set can be declared to be a maximum\nof 21,844 characters.\n\nMySQL stores VARCHAR values as a one-byte or two-byte length prefix\nplus data. The length prefix indicates the number of bytes in the\nvalue. A VARCHAR column uses one length byte if values require no more\nthan 255 bytes, two length bytes if values may require more than 255\nbytes.\n\n*Note*: MySQL 5.1 follows the standard SQL specification, and does not\nremove trailing spaces from VARCHAR values.\n\nVARCHAR is shorthand for CHARACTER VARYING. NATIONAL VARCHAR is the\nstandard SQL way to define that a VARCHAR column should use some\npredefined character set. MySQL 4.1 and up uses utf8 as this predefined\ncharacter set.\nhttp://dev.mysql.com/doc/refman/5.1/en/charset-national.html. NVARCHAR\nis shorthand for NATIONAL VARCHAR.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(256, 'UNHEX', 36, 'Syntax:\n\nUNHEX(str)\n\nFor a string argument str, UNHEX(str) performs the inverse operation of\nHEX(str). That is, it interprets each pair of characters in the\nargument as a hexadecimal number and converts it to the character\nrepresented by the number. The return value is a binary string.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT UNHEX(''4D7953514C'');\n        -> ''MySQL''\nmysql> SELECT 0x4D7953514C;\n        -> ''MySQL''\nmysql> SELECT UNHEX(HEX(''string''));\n        -> ''string''\nmysql> SELECT HEX(UNHEX(''1267''));\n        -> ''1267''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(257, '- UNARY', 4, 'Syntax:\n-\n\nUnary minus. This operator changes the sign of the operand.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', 'mysql> SELECT - 2;\n        -> -2\n', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html'),
(258, 'SELECT INTO', 23, 'Syntax:\nSELECT col_name [, col_name] ...\n    INTO var_name [, var_name] ...\n    table_expr\n\nSELECT ... INTO syntax enables selected columns to be stored directly\ninto variables. The query should return a single row. If the query\nreturns no rows, a warning with error code 1329 occurs (No data), and\nthe variable values remain unchanged. If the query returns multiple\nrows, error 1172 occurs (Result consisted of more than one row). If it\nis possible that the statement may retrieve multiple rows, you can use\nLIMIT 1 to limit the result set to a single row.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/select-into-statement.html\n\n', 'SELECT id,data INTO x,y FROM test.t1 LIMIT 1;\n', 'http://dev.mysql.com/doc/refman/5.1/en/select-into-statement.html'),
(259, 'STD', 16, 'Syntax:\nSTD(expr)\n\nReturns the population standard deviation of expr. This is an extension\nto standard SQL. The standard SQL function STDDEV_POP() can be used\ninstead.\n\nThis function returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(260, 'COS', 4, 'Syntax:\nCOS(X)\n\nReturns the cosine of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT COS(PI());\n        -> -1\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(261, 'DATE FUNCTION', 31, 'Syntax:\nDATE(expr)\n\nExtracts the date part of the date or datetime expression expr.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATE(''2003-12-31 01:02:03'');\n        -> ''2003-12-31''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(262, 'DROP TRIGGER', 38, 'Syntax:\nDROP TRIGGER [IF EXISTS] [schema_name.]trigger_name\n\nThis statement drops a trigger. The schema (database) name is optional.\nIf the schema is omitted, the trigger is dropped from the default\nschema. DROP TRIGGER was added in MySQL 5.0.2. Its use requires the\nTRIGGER privilege for the table associated with the trigger. (This\nstatement requires the SUPER privilege prior to MySQL 5.1.6.)\n\nUse IF EXISTS to prevent an error from occurring for a trigger that\ndoes not exist. A NOTE is generated for a nonexistent trigger when\nusing IF EXISTS. See [HELP SHOW WARNINGS]. The IF EXISTS clause was\nadded in MySQL 5.1.14.\n\nTriggers for a table are also dropped if you drop the table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-trigger.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-trigger.html'),
(263, 'RESET MASTER', 26, 'Syntax:\nRESET MASTER\n\nDeletes all binary log files listed in the index file, resets the\nbinary log index file to be empty, and creates a new binary log file.\nThis statement is intended to be used only when the master is started\nfor the first time.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/reset-master.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/reset-master.html'),
(264, 'TAN', 4, 'Syntax:\nTAN(X)\n\nReturns the tangent of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT TAN(PI());\n        -> -1.2246063538224e-16\nmysql> SELECT TAN(PI()+1);\n        -> 1.5574077246549\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(265, 'PI', 4, 'Syntax:\nPI()\n\nReturns the value of π (pi). The default number of decimal places\ndisplayed is seven, but MySQL uses the full double-precision value\ninternally.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT PI();\n        -> 3.141593\nmysql> SELECT PI()+0.000000000000000000;\n        -> 3.141592653589793116\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(266, 'WEEKOFYEAR', 31, 'Syntax:\nWEEKOFYEAR(date)\n\nReturns the calendar week of the date as a number in the range from 1\nto 53. WEEKOFYEAR() is a compatibility function that is equivalent to\nWEEK(date,3).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT WEEKOFYEAR(''2008-02-20'');\n        -> 8\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(267, '/', 4, 'Syntax:\n/\n\nDivision:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3/5;\n        -> 0.60\n', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html'),
(268, 'PURGE BINARY LOGS', 26, 'Syntax:\nPURGE { BINARY | MASTER } LOGS\n    { TO ''log_name'' | BEFORE datetime_expr }\n\nThe binary log is a set of files that contain information about data\nmodifications made by the MySQL server. The log consists of a set of\nbinary log files, plus an index file (see\nhttp://dev.mysql.com/doc/refman/5.1/en/binary-log.html).\n\nThe PURGE BINARY LOGS statement deletes all the binary log files listed\nin the log index file prior to the specified log file name or date.\nBINARY and MASTER are synonyms. Deleted log files also are removed from\nthe list recorded in the index file, so that the given log file becomes\nthe first in the list.\n\nThis statement has no effect if the server was not started with the\n--log-bin option to enable binary logging.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/purge-binary-logs.html\n\n', 'PURGE BINARY LOGS TO ''mysql-bin.010'';\nPURGE BINARY LOGS BEFORE ''2008-04-02 22:46:26'';\n', 'http://dev.mysql.com/doc/refman/5.1/en/purge-binary-logs.html'),
(269, 'STDDEV_SAMP', 16, 'Syntax:\nSTDDEV_SAMP(expr)\n\nReturns the sample standard deviation of expr (the square root of\nVAR_SAMP().\n\nSTDDEV_SAMP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(270, 'SCHEMA', 17, 'Syntax:\nSCHEMA()\n\nThis function is a synonym for DATABASE().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(271, 'MLINEFROMWKB', 32, 'MLineFromWKB(wkb[,srid]), MultiLineStringFromWKB(wkb[,srid])\n\nConstructs a MULTILINESTRING value using its WKB representation and\nSRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkb-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkb-functions'),
(272, 'LOG2', 4, 'Syntax:\nLOG2(X)\n\nReturns the base-2 logarithm of X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT LOG2(65536);\n        -> 16\nmysql> SELECT LOG2(-100);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(273, 'SUBTIME', 31, 'Syntax:\nSUBTIME(expr1,expr2)\n\nSUBTIME() returns expr1 - expr2 expressed as a value in the same format\nas expr1. expr1 is a time or datetime expression, and expr2 is a time\nexpression.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT SUBTIME(''2007-12-31 23:59:59.999999'',''1 1:1:1.000002'');\n        -> ''2007-12-30 22:58:58.999997''\nmysql> SELECT SUBTIME(''01:00:00.999999'', ''02:00:00.999998'');\n        -> ''-00:59:59.999999''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(274, 'UNCOMPRESSED_LENGTH', 12, 'Syntax:\nUNCOMPRESSED_LENGTH(compressed_string)\n\nReturns the length that the compressed string had before being\ncompressed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT UNCOMPRESSED_LENGTH(COMPRESS(REPEAT(''a'',30)));\n        -> 30\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(275, 'DROP TABLE', 38, 'Syntax:\nDROP [TEMPORARY] TABLE [IF EXISTS]\n    tbl_name [, tbl_name] ...\n    [RESTRICT | CASCADE]\n\nDROP TABLE removes one or more tables. You must have the DROP privilege\nfor each table. All table data and the table definition are removed, so\nbe careful with this statement! If any of the tables named in the\nargument list do not exist, MySQL returns an error indicating by name\nwhich nonexisting tables it was unable to drop, but it also drops all\nof the tables in the list that do exist.\n\n*Important*: When a table is dropped, user privileges on the table are\nnot automatically dropped. See [HELP GRANT].\n\nNote that for a partitioned table, DROP TABLE permanently removes the\ntable definition, all of its partitions, and all of the data which was\nstored in those partitions. It also removes the partitioning definition\n(.par) file associated with the dropped table.\n\nUse IF EXISTS to prevent an error from occurring for tables that do not\nexist. A NOTE is generated for each nonexistent table when using IF\nEXISTS. See [HELP SHOW WARNINGS].\n\nRESTRICT and CASCADE are permitted to make porting easier. In MySQL\n5.1, they do nothing.\n\n*Note*: DROP TABLE automatically commits the current active\ntransaction, unless you use the TEMPORARY keyword.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-table.html'),
(276, 'POW', 4, 'Syntax:\nPOW(X,Y)\n\nReturns the value of X raised to the power of Y.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT POW(2,2);\n        -> 4\nmysql> SELECT POW(2,-2);\n        -> 0.25\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(277, 'SHOW CREATE TABLE', 26, 'Syntax:\nSHOW CREATE TABLE tbl_name\n\nShows the CREATE TABLE statement that creates the given table. The\nstatement requires the SELECT privilege for the table. This statement\nalso works with views.\nSHOW CREATE TABLE quotes table and column names according to the value\nof the sql_quote_show_create option. See\nhttp://dev.mysql.com/doc/refman/5.1/en/server-system-variables.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-table.html\n\n', 'mysql> SHOW CREATE TABLE t\\G\n*************************** 1. row ***************************\n       Table: t\nCreate Table: CREATE TABLE t (\n  id INT(11) default NULL auto_increment,\n  s char(60) default NULL,\n  PRIMARY KEY (id)\n) ENGINE=MyISAM\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-table.html'),
(278, 'DUAL', 27, 'You are permitted to specify DUAL as a dummy table name in situations\nwhere no tables are referenced:\n\nmysql> SELECT 1 + 1 FROM DUAL;\n        -> 2\n\nDUAL is purely for the convenience of people who require that all\nSELECT statements should have FROM and possibly other clauses. MySQL\nmay ignore the clauses. MySQL does not require FROM DUAL if no tables\nare referenced.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/select.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/select.html'),
(279, 'INSTR', 36, 'Syntax:\nINSTR(str,substr)\n\nReturns the position of the first occurrence of substring substr in\nstring str. This is the same as the two-argument form of LOCATE(),\nexcept that the order of the arguments is reversed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT INSTR(''foobarbar'', ''bar'');\n        -> 4\nmysql> SELECT INSTR(''xbar'', ''foobar'');\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(280, 'NOW', 31, 'Syntax:\nNOW()\n\nReturns the current date and time as a value in ''YYYY-MM-DD HH:MM:SS''\nor YYYYMMDDHHMMSS.uuuuuu format, depending on whether the function is\nused in a string or numeric context. The value is expressed in the\ncurrent time zone.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT NOW();\n        -> ''2007-12-15 23:50:26''\nmysql> SELECT NOW() + 0;\n        -> 20071215235026.000000\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(281, 'SHOW ENGINES', 26, 'Syntax:\nSHOW [STORAGE] ENGINES\n\nSHOW ENGINES displays status information about the server''s storage\nengines. This is particularly useful for checking whether a storage\nengine is supported, or to see what the default engine is. SHOW TABLE\nTYPES is a synonym, but is deprecated and is removed in MySQL 5.5.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-engines.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-engines.html'),
(282, '>=', 18, 'Syntax:\n>=\n\nGreater than or equal:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 2 >= 2;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(283, 'EXP', 4, 'Syntax:\nEXP(X)\n\nReturns the value of e (the base of natural logarithms) raised to the\npower of X. The inverse of this function is LOG() (using a single\nargument only) or LN().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT EXP(2);\n        -> 7.3890560989307\nmysql> SELECT EXP(-2);\n        -> 0.13533528323661\nmysql> SELECT EXP(0);\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(284, 'LONGBLOB', 22, 'LONGBLOB\n\nA BLOB column with a maximum length of 4,294,967,295 or 4GB (232 - 1)\nbytes. The effective maximum length of LONGBLOB columns depends on the\nconfigured maximum packet size in the client/server protocol and\navailable memory. Each LONGBLOB value is stored using a four-byte\nlength prefix that indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(285, 'POINTN', 13, 'PointN(ls,N)\n\nReturns the N-th Point in the Linestring value ls. Points are numbered\nbeginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#linestring-property-functions\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT AsText(PointN(GeomFromText(@ls),2));\n+-------------------------------------+\n| AsText(PointN(GeomFromText(@ls),2)) |\n+-------------------------------------+\n| POINT(2 2)                          |\n+-------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#linestring-property-functions'),
(286, 'YEAR DATA TYPE', 22, 'YEAR[(2|4)]\n\nA year in two-digit or four-digit format. The default is four-digit\nformat. In four-digit format, the permissible values are 1901 to 2155,\nand 0000. In two-digit format, the permissible values are 70 to 69,\nrepresenting years from 1970 to 2069. MySQL displays YEAR values in\nYYYY format, but permits assignment of values to YEAR columns using\neither strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html'),
(287, 'SUM', 16, 'Syntax:\nSUM([DISTINCT] expr)\n\nReturns the sum of expr. If the return set has no rows, SUM() returns\nNULL. The DISTINCT keyword can be used in MySQL 5.1 to sum only the\ndistinct values of expr.\n\nSUM() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(288, 'OCT', 4, 'Syntax:\nOCT(N)\n\nReturns a string representation of the octal value of N, where N is a\nlonglong (BIGINT) number. This is equivalent to CONV(N,10,8). Returns\nNULL if N is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT OCT(12);\n        -> ''14''\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(289, 'SYSDATE', 31, 'Syntax:\nSYSDATE()\n\nReturns the current date and time as a value in ''YYYY-MM-DD HH:MM:SS''\nor YYYYMMDDHHMMSS.uuuuuu format, depending on whether the function is\nused in a string or numeric context.\n\nSYSDATE() returns the time at which it executes. This differs from the\nbehavior for NOW(), which returns a constant time that indicates the\ntime at which the statement began to execute. (Within a stored function\nor trigger, NOW() returns the time at which the function or triggering\nstatement began to execute.)\n\nmysql> SELECT NOW(), SLEEP(2), NOW();\n+---------------------+----------+---------------------+\n| NOW()               | SLEEP(2) | NOW()               |\n+---------------------+----------+---------------------+\n| 2006-04-12 13:47:36 |        0 | 2006-04-12 13:47:36 |\n+---------------------+----------+---------------------+\n\nmysql> SELECT SYSDATE(), SLEEP(2), SYSDATE();\n+---------------------+----------+---------------------+\n| SYSDATE()           | SLEEP(2) | SYSDATE()           |\n+---------------------+----------+---------------------+\n| 2006-04-12 13:47:44 |        0 | 2006-04-12 13:47:46 |\n+---------------------+----------+---------------------+\n\nIn addition, the SET TIMESTAMP statement affects the value returned by\nNOW() but not by SYSDATE(). This means that timestamp settings in the\nbinary log have no effect on invocations of SYSDATE().\n\nBecause SYSDATE() can return different values even within the same\nstatement, and is not affected by SET TIMESTAMP, it is nondeterministic\nand therefore unsafe for replication if statement-based binary logging\nis used. If that is a problem, you can use row-based logging.\n\nAlternatively, you can use the --sysdate-is-now option to cause\nSYSDATE() to be an alias for NOW(). This works if the option is used on\nboth the master and the slave.\n\nThe nondeterministic nature of SYSDATE() also means that indexes cannot\nbe used for evaluating expressions that refer to it.\n\nBeginning with MySQL 5.1.42, a warning is logged if you use this\nfunction when binlog_format is set to STATEMENT. (Bug#47995\n(http://bugs.mysql.com/bug.php?id=47995))\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(290, 'UNINSTALL PLUGIN', 5, 'Syntax:\nUNINSTALL PLUGIN plugin_name\n\nThis statement removes an installed server plugin. It requires the\nDELETE privilege for the mysql.plugin table.\n\nplugin_name must be the name of some plugin that is listed in the\nmysql.plugin table. The server executes the plugin''s deinitialization\nfunction and removes the row for the plugin from the mysql.plugin\ntable, so that subsequent server restarts will not load and initialize\nthe plugin. UNINSTALL PLUGIN does not remove the plugin''s shared\nlibrary file.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/uninstall-plugin.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/uninstall-plugin.html'),
(291, 'ASBINARY', 32, 'AsBinary(g), AsWKB(g)\n\nConverts a value in internal geometry format to its WKB representation\nand returns the binary result.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-to-convert-geometries-between-formats.html\n\n', 'SELECT AsBinary(g) FROM geom;\n', 'http://dev.mysql.com/doc/refman/5.1/en/functions-to-convert-geometries-between-formats.html'),
(292, 'REPEAT FUNCTION', 36, 'Syntax:\nREPEAT(str,count)\n\nReturns a string consisting of the string str repeated count times. If\ncount is less than 1, returns an empty string. Returns NULL if str or\ncount are NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT REPEAT(''MySQL'', 3);\n        -> ''MySQLMySQLMySQL''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(293, 'SHOW TABLES', 26, 'Syntax:\nSHOW [FULL] TABLES [{FROM | IN} db_name]\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW TABLES lists the non-TEMPORARY tables in a given database. You can\nalso get this list using the mysqlshow db_name command. The LIKE\nclause, if present, indicates which table names to match. The WHERE\nclause can be given to select rows using more general conditions, as\ndiscussed in http://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nThis statement also lists any views in the database. The FULL modifier\nis supported such that SHOW FULL TABLES displays a second output\ncolumn. Values for the second column are BASE TABLE for a table and\nVIEW for a view.\n\nIf you have no privileges for a base table or view, it does not show up\nin the output from SHOW TABLES or mysqlshow db_name.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-tables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-tables.html'),
(294, 'MAKEDATE', 31, 'Syntax:\nMAKEDATE(year,dayofyear)\n\nReturns a date, given year and day-of-year values. dayofyear must be\ngreater than 0 or the result is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT MAKEDATE(2011,31), MAKEDATE(2011,32);\n        -> ''2011-01-31'', ''2011-02-01''\nmysql> SELECT MAKEDATE(2011,365), MAKEDATE(2014,365);\n        -> ''2011-12-31'', ''2014-12-31''\nmysql> SELECT MAKEDATE(2011,0);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(295, 'BINARY OPERATOR', 36, 'Syntax:\nBINARY\n\nThe BINARY operator casts the string following it to a binary string.\nThis is an easy way to force a column comparison to be done byte by\nbyte rather than character by character. This causes the comparison to\nbe case sensitive even if the column is not defined as BINARY or BLOB.\nBINARY also causes trailing spaces to be significant.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/cast-functions.html\n\n', 'mysql> SELECT ''a'' = ''A'';\n        -> 1\nmysql> SELECT BINARY ''a'' = ''A'';\n        -> 0\nmysql> SELECT ''a'' = ''a '';\n        -> 1\nmysql> SELECT BINARY ''a'' = ''a '';\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/cast-functions.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(296, 'MBROVERLAPS', 6, 'MBROverlaps(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 overlap. The term spatially overlaps is\nused if two geometries intersect and their intersection results in a\ngeometry of the same dimension but not equal to either of the given\ngeometries.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html'),
(297, 'SOUNDEX', 36, 'Syntax:\nSOUNDEX(str)\n\nReturns a soundex string from str. Two strings that sound almost the\nsame should have identical soundex strings. A standard soundex string\nis four characters long, but the SOUNDEX() function returns an\narbitrarily long string. You can use SUBSTRING() on the result to get a\nstandard soundex string. All nonalphabetic characters in str are\nignored. All international alphabetic characters outside the A-Z range\nare treated as vowels.\n\n*Important*: When using SOUNDEX(), you should be aware of the following\nlimitations:\n\no This function, as currently implemented, is intended to work well\n  with strings that are in the English language only. Strings in other\n  languages may not produce reliable results.\n\no This function is not guaranteed to provide consistent results with\n  strings that use multi-byte character sets, including utf-8.\n\n  We hope to remove these limitations in a future release. See\n  Bug#22638 (http://bugs.mysql.com/bug.php?id=22638) for more\n  information.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT SOUNDEX(''Hello'');\n        -> ''H400''\nmysql> SELECT SOUNDEX(''Quadratically'');\n        -> ''Q36324''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(298, 'MBRTOUCHES', 6, 'MBRTouches(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 touch. Two geometries spatially touch if\nthe interiors of the geometries do not intersect, but the boundary of\none of the geometries intersects either the boundary or the interior of\nthe other.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html'),
(299, 'DROP EVENT', 38, 'Syntax:\nDROP EVENT [IF EXISTS] event_name\n\nThis statement drops the event named event_name. The event immediately\nceases being active, and is deleted completely from the server.\n\nIf the event does not exist, the error ERROR 1517 (HY000): Unknown\nevent ''event_name'' results. You can override this and cause the\nstatement to generate a warning for nonexistent events instead using IF\nEXISTS.\n\nBeginning with MySQL 5.1.12, this statement requires the EVENT\nprivilege for the schema to which the event to be dropped belongs. (In\nMySQL 5.1.11 and earlier, an event could be dropped only by its\ndefiner, or by a user having the SUPER privilege.)\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-event.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-event.html'),
(300, 'INSERT SELECT', 27, 'Syntax:\nINSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]\n    [INTO] tbl_name [(col_name,...)]\n    SELECT ...\n    [ ON DUPLICATE KEY UPDATE col_name=expr, ... ]\n\nWith INSERT ... SELECT, you can quickly insert many rows into a table\nfrom one or many tables. For example:\n\nINSERT INTO tbl_temp2 (fld_id)\n  SELECT tbl_temp1.fld_order_id\n  FROM tbl_temp1 WHERE tbl_temp1.fld_order_id > 100;\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/insert-select.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/insert-select.html'),
(301, 'CREATE PROCEDURE', 38, 'Syntax:\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    PROCEDURE sp_name ([proc_parameter[,...]])\n    [characteristic ...] routine_body\n\nCREATE\n    [DEFINER = { user | CURRENT_USER }]\n    FUNCTION sp_name ([func_parameter[,...]])\n    RETURNS type\n    [characteristic ...] routine_body\n\nproc_parameter:\n    [ IN | OUT | INOUT ] param_name type\n\nfunc_parameter:\n    param_name type\n\ntype:\n    Any valid MySQL data type\n\ncharacteristic:\n    COMMENT ''string''\n  | LANGUAGE SQL\n  | [NOT] DETERMINISTIC\n  | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n  | SQL SECURITY { DEFINER | INVOKER }\n\nroutine_body:\n    Valid SQL routine statement\n\nThese statements create stored routines. By default, a routine is\nassociated with the default database. To associate the routine\nexplicitly with a given database, specify the name as db_name.sp_name\nwhen you create it.\n\nThe CREATE FUNCTION statement is also used in MySQL to support UDFs\n(user-defined functions). See\nhttp://dev.mysql.com/doc/refman/5.1/en/adding-functions.html. A UDF can\nbe regarded as an external stored function. Stored functions share\ntheir namespace with UDFs. See\nhttp://dev.mysql.com/doc/refman/5.1/en/function-resolution.html, for\nthe rules describing how the server interprets references to different\nkinds of functions.\n\nTo invoke a stored procedure, use the CALL statement (see [HELP CALL]).\nTo invoke a stored function, refer to it in an expression. The function\nreturns a value during expression evaluation.\n\nCREATE PROCEDURE and CREATE FUNCTION require the CREATE ROUTINE\nprivilege. They might also require the SUPER privilege, depending on\nthe DEFINER value, as described later in this section. If binary\nlogging is enabled, CREATE FUNCTION might require the SUPER privilege,\nas described in\nhttp://dev.mysql.com/doc/refman/5.1/en/stored-programs-logging.html.\n\nBy default, MySQL automatically grants the ALTER ROUTINE and EXECUTE\nprivileges to the routine creator. This behavior can be changed by\ndisabling the automatic_sp_privileges system variable. See\nhttp://dev.mysql.com/doc/refman/5.1/en/stored-routines-privileges.html.\n\nThe DEFINER and SQL SECURITY clauses specify the security context to be\nused when checking access privileges at routine execution time, as\ndescribed later in this section.\n\nIf the routine name is the same as the name of a built-in SQL function,\na syntax error occurs unless you use a space between the name and the\nfollowing parenthesis when defining the routine or invoking it later.\nFor this reason, avoid using the names of existing SQL functions for\nyour own stored routines.\n\nThe IGNORE_SPACE SQL mode applies to built-in functions, not to stored\nroutines. It is always permissible to have spaces after a stored\nroutine name, regardless of whether IGNORE_SPACE is enabled.\n\nThe parameter list enclosed within parentheses must always be present.\nIf there are no parameters, an empty parameter list of () should be\nused. Parameter names are not case sensitive.\n\nEach parameter is an IN parameter by default. To specify otherwise for\na parameter, use the keyword OUT or INOUT before the parameter name.\n\n*Note*: Specifying a parameter as IN, OUT, or INOUT is valid only for a\nPROCEDURE. For a FUNCTION, parameters are always regarded as IN\nparameters.\n\nAn IN parameter passes a value into a procedure. The procedure might\nmodify the value, but the modification is not visible to the caller\nwhen the procedure returns. An OUT parameter passes a value from the\nprocedure back to the caller. Its initial value is NULL within the\nprocedure, and its value is visible to the caller when the procedure\nreturns. An INOUT parameter is initialized by the caller, can be\nmodified by the procedure, and any change made by the procedure is\nvisible to the caller when the procedure returns.\n\nFor each OUT or INOUT parameter, pass a user-defined variable in the\nCALL statement that invokes the procedure so that you can obtain its\nvalue when the procedure returns. If you are calling the procedure from\nwithin another stored procedure or function, you can also pass a\nroutine parameter or local routine variable as an IN or INOUT\nparameter.\n\nThe following example shows a simple stored procedure that uses an OUT\nparameter:\n\nmysql> delimiter //\n\nmysql> CREATE PROCEDURE simpleproc (OUT param1 INT)\n    -> BEGIN\n    ->   SELECT COUNT(*) INTO param1 FROM t;\n    -> END//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> delimiter ;\n\nmysql> CALL simpleproc(@a);\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @a;\n+------+\n| @a   |\n+------+\n| 3    |\n+------+\n1 row in set (0.00 sec)\n\nThe example uses the mysql client delimiter command to change the\nstatement delimiter from ; to // while the procedure is being defined.\nThis enables the ; delimiter used in the procedure body to be passed\nthrough to the server rather than being interpreted by mysql itself.\nSee\nhttp://dev.mysql.com/doc/refman/5.1/en/stored-programs-defining.html.\n\nThe RETURNS clause may be specified only for a FUNCTION, for which it\nis mandatory. It indicates the return type of the function, and the\nfunction body must contain a RETURN value statement. If the RETURN\nstatement returns a value of a different type, the value is coerced to\nthe proper type. For example, if a function specifies an ENUM or SET\nvalue in the RETURNS clause, but the RETURN statement returns an\ninteger, the value returned from the function is the string for the\ncorresponding ENUM member of set of SET members.\n\nThe following example function takes a parameter, performs an operation\nusing an SQL function, and returns the result. In this case, it is\nunnecessary to use delimiter because the function definition contains\nno internal ; statement delimiters:\n\nmysql> CREATE FUNCTION hello (s CHAR(20))\nmysql> RETURNS CHAR(50) DETERMINISTIC\n    -> RETURN CONCAT(''Hello, '',s,''!'');\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT hello(''world'');\n+----------------+\n| hello(''world'') |\n+----------------+\n| Hello, world!  |\n+----------------+\n1 row in set (0.00 sec)\n\nParameter types and function return types can be declared to use any\nvalid data type, except that the COLLATE attribute cannot be used.\n\nThe routine_body consists of a valid SQL routine statement. This can be\na simple statement such as SELECT or INSERT, or a compound statement\nwritten using BEGIN and END. Compound statements can contain\ndeclarations, loops, and other control structure statements. The syntax\nfor these statements is described in\nhttp://dev.mysql.com/doc/refman/5.1/en/sql-syntax-compound-statements.h\ntml.\n\nMySQL permits routines to contain DDL statements, such as CREATE and\nDROP. MySQL also permits stored procedures (but not stored functions)\nto contain SQL transaction statements such as COMMIT. Stored functions\nmay not contain statements that perform explicit or implicit commit or\nrollback. Support for these statements is not required by the SQL\nstandard, which states that each DBMS vendor may decide whether to\npermit them.\n\nStatements that return a result set can be used within a stored\nprocedcure but not within a stored function. This prohibition includes\nSELECT statements that do not have an INTO var_list clause and other\nstatements such as SHOW, EXPLAIN, and CHECK TABLE. For statements that\ncan be determined at function definition time to return a result set, a\nNot allowed to return a result set from a function error occurs\n(ER_SP_NO_RETSET). For statements that can be determined only at\nruntime to return a result set, a PROCEDURE %s can''t return a result\nset in the given context error occurs (ER_SP_BADSELECT).\n\nUSE statements within stored routines are not permitted. When a routine\nis invoked, an implicit USE db_name is performed (and undone when the\nroutine terminates). This causes the routine to have the given default\ndatabase while it executes. References to objects in databases other\nthan the routine default database should be qualified with the\nappropriate database name.\n\nFor additional information about statements that are not permitted in\nstored routines, see\nhttp://dev.mysql.com/doc/refman/5.1/en/stored-program-restrictions.html\n.\n\nFor information about invoking stored procedures from within programs\nwritten in a language that has a MySQL interface, see [HELP CALL].\n\nMySQL stores the sql_mode system variable setting that is in effect at\nthe time a routine is created, and always executes the routine with\nthis setting in force, regardless of the server SQL mode in effect when\nthe routine is invoked.\n\nThe switch from the SQL mode of the invoker to that of the routine\noccurs after evaluation of arguments and assignment of the resulting\nvalues to routine parameters. If you define a routine in strict SQL\nmode but invoke it in nonstrict mode, assignment of arguments to\nroutine parameters does not take place in strict mode. If you require\nthat expressions passed to a routine be assigned in strict SQL mode,\nyou should invoke the routine with strict mode in effect.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-procedure.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-procedure.html'),
(302, 'VARBINARY', 22, 'VARBINARY(M)\n\nThe VARBINARY type is similar to the VARCHAR type, but stores binary\nbyte strings rather than nonbinary character strings. M represents the\nmaximum column length in bytes.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(303, 'LOAD INDEX', 26, 'Syntax:\nLOAD INDEX INTO CACHE\n  tbl_index_list [, tbl_index_list] ...\n\ntbl_index_list:\n  tbl_name\n    [[INDEX|KEY] (index_name[, index_name] ...)]\n    [IGNORE LEAVES]\n\nThe LOAD INDEX INTO CACHE statement preloads a table index into the key\ncache to which it has been assigned by an explicit CACHE INDEX\nstatement, or into the default key cache otherwise. LOAD INDEX INTO\nCACHE is used only for MyISAM tables. It is not supported for tables\nhaving user-defined partitioning (see\nhttp://dev.mysql.com/doc/refman/5.1/en/partitioning-limitations.html.)\n\nThe IGNORE LEAVES modifier causes only blocks for the nonleaf nodes of\nthe index to be preloaded.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/load-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/load-index.html'),
(304, 'UNION', 27, 'Syntax:\nSELECT ...\nUNION [ALL | DISTINCT] SELECT ...\n[UNION [ALL | DISTINCT] SELECT ...]\n\nUNION is used to combine the result from multiple SELECT statements\ninto a single result set.\n\nThe column names from the first SELECT statement are used as the column\nnames for the results returned. Selected columns listed in\ncorresponding positions of each SELECT statement should have the same\ndata type. (For example, the first column selected by the first\nstatement should have the same type as the first column selected by the\nother statements.)\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/union.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/union.html'),
(305, 'TO_DAYS', 31, 'Syntax:\nTO_DAYS(date)\n\nGiven a date date, returns a day number (the number of days since year\n0).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TO_DAYS(950501);\n        -> 728779\nmysql> SELECT TO_DAYS(''2007-10-07'');\n        -> 733321\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(306, 'NOT REGEXP', 36, 'Syntax:\nexpr NOT REGEXP pat, expr NOT RLIKE pat\n\nThis is the same as NOT (expr REGEXP pat).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/regexp.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/regexp.html'),
(307, 'SHOW INDEX', 26, 'Syntax:\nSHOW {INDEX | INDEXES | KEYS}\n    {FROM | IN} tbl_name\n    [{FROM | IN} db_name]\n\nSHOW INDEX returns table index information. The format resembles that\nof the SQLStatistics call in ODBC.\nYou can use db_name.tbl_name as an alternative to the tbl_name FROM\ndb_name syntax. These two statements are equivalent:\n\nSHOW INDEX FROM mytable FROM mydb;\nSHOW INDEX FROM mydb.mytable;\n\nYou can also list a table''s indexes with the mysqlshow -k db_name\ntbl_name command.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-index.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-index.html'),
(308, 'SHOW CREATE DATABASE', 26, 'Syntax:\nSHOW CREATE {DATABASE | SCHEMA} db_name\n\nShows the CREATE DATABASE statement that creates the given database.\nSHOW CREATE SCHEMA is a synonym for SHOW CREATE DATABASE.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-database.html\n\n', 'mysql> SHOW CREATE DATABASE test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test`\n                 /*!40100 DEFAULT CHARACTER SET latin1 */\n\nmysql> SHOW CREATE SCHEMA test\\G\n*************************** 1. row ***************************\n       Database: test\nCreate Database: CREATE DATABASE `test`\n                 /*!40100 DEFAULT CHARACTER SET latin1 */\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-database.html'),
(309, 'LEAVE', 23, 'Syntax:\nLEAVE label\n\nThis statement is used to exit the flow control construct that has the\ngiven label. It can be used within BEGIN ... END or loop constructs\n(LOOP, REPEAT, WHILE).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/leave-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/leave-statement.html'),
(310, 'NOT IN', 18, 'Syntax:\nexpr NOT IN (value,...)\n\nThis is the same as NOT (expr IN (value,...)).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(311, '!', 14, 'Syntax:\nNOT, !\n\nLogical NOT. Evaluates to 1 if the operand is 0, to 0 if the operand is\nnonzero, and NOT NULL returns NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html\n\n', 'mysql> SELECT NOT 10;\n        -> 0\nmysql> SELECT NOT 0;\n        -> 1\nmysql> SELECT NOT NULL;\n        -> NULL\nmysql> SELECT ! (1+1);\n        -> 0\nmysql> SELECT ! 1+1;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html'),
(312, 'DECLARE HANDLER', 23, 'Syntax:\nDECLARE handler_type HANDLER\n    FOR condition_value [, condition_value] ...\n    statement\n\nhandler_type:\n    CONTINUE\n  | EXIT\n  | UNDO\n\ncondition_value:\n    SQLSTATE [VALUE] sqlstate_value\n  | condition_name\n  | SQLWARNING\n  | NOT FOUND\n  | SQLEXCEPTION\n  | mysql_error_code\n\nThe DECLARE ... HANDLER statement specifies handlers that each may deal\nwith one or more conditions. If one of these conditions occurs, the\nspecified statement is executed. statement can be a simple statement\n(for example, SET var_name = value), or it can be a compound statement\nwritten using BEGIN and END (see [HELP BEGIN END]).\n\nFor a CONTINUE handler, execution of the current program continues\nafter execution of the handler statement. For an EXIT handler,\nexecution terminates for the BEGIN ... END compound statement in which\nthe handler is declared. (This is true even if the condition occurs in\nan inner block.) The UNDO handler type statement is not supported.\n\nIf a condition occurs for which no handler has been declared, the\ndefault action is EXIT.\n\nA condition_value for DECLARE ... HANDLER can be any of the following\nvalues:\n\no An SQLSTATE value (a 5-character string literal) or a MySQL error\n  code (a number). You should not use SQLSTATE value ''00000'' or MySQL\n  error code 0, because those indicate sucess rather than an error\n  condition. For a list of SQLSTATE values and MySQL error codes, see\n  http://dev.mysql.com/doc/refman/5.1/en/error-messages-server.html.\n\no A condition name previously specified with DECLARE ... CONDITION. See\n  [HELP DECLARE CONDITION].\n\no SQLWARNING is shorthand for the class of SQLSTATE values that begin\n  with ''01''.\n\no NOT FOUND is shorthand for the class of SQLSTATE values that begin\n  with ''02''. This is relevant only within the context of cursors and is\n  used to control what happens when a cursor reaches the end of a data\n  set. If no more rows are available, a No Data condition occurs with\n  SQLSTATE value 02000. To detect this condition, you can set up a\n  handler for it (or for a NOT FOUND condition). An example is shown in\n  http://dev.mysql.com/doc/refman/5.1/en/cursors.html. This condition\n  also occurs for SELECT ... INTO var_list statements that retrieve no\n  rows.\n\no SQLEXCEPTION is shorthand for the class of SQLSTATE values that do\n  not begin with ''00'', ''01'', or ''02''.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/declare-handler.html\n\n', 'mysql> CREATE TABLE test.t (s1 INT, PRIMARY KEY (s1));\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> delimiter //\n\nmysql> CREATE PROCEDURE handlerdemo ()\n    -> BEGIN\n    ->   DECLARE CONTINUE HANDLER FOR SQLSTATE ''23000'' SET @x2 = 1;\n    ->   SET @x = 1;\n    ->   INSERT INTO test.t VALUES (1);\n    ->   SET @x = 2;\n    ->   INSERT INTO test.t VALUES (1);\n    ->   SET @x = 3;\n    -> END;\n    -> //\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> CALL handlerdemo()//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT @x//\n    +------+\n    | @x   |\n    +------+\n    | 3    |\n    +------+\n    1 row in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/declare-handler.html'),
(313, 'DOUBLE', 22, 'DOUBLE[(M,D)] [UNSIGNED] [ZEROFILL]\n\nA normal-size (double-precision) floating-point number. Permissible\nvalues are -1.7976931348623157E+308 to -2.2250738585072014E-308, 0, and\n2.2250738585072014E-308 to 1.7976931348623157E+308. These are the\ntheoretical limits, based on the IEEE standard. The actual range might\nbe slightly smaller depending on your hardware or operating system.\n\nM is the total number of digits and D is the number of digits following\nthe decimal point. If M and D are omitted, values are stored to the\nlimits permitted by the hardware. A double-precision floating-point\nnumber is accurate to approximately 15 decimal places.\n\nUNSIGNED, if specified, disallows negative values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(314, 'TIME', 22, 'TIME\n\nA time. The range is ''-838:59:59'' to ''838:59:59''. MySQL displays TIME\nvalues in ''HH:MM:SS'' format, but permits assignment of values to TIME\ncolumns using either strings or numbers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-type-overview.html'),
(315, '&&', 14, 'Syntax:\nAND, &&\n\nLogical AND. Evaluates to 1 if all operands are nonzero and not NULL,\nto 0 if one or more operands are 0, otherwise NULL is returned.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html\n\n', 'mysql> SELECT 1 && 1;\n        -> 1\nmysql> SELECT 1 && 0;\n        -> 0\nmysql> SELECT 1 && NULL;\n        -> NULL\nmysql> SELECT 0 && NULL;\n        -> 0\nmysql> SELECT NULL && 0;\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/logical-operators.html'),
(316, 'X', 11, 'X(p)\n\nReturns the X-coordinate value for the Point object p as a\ndouble-precision number.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#point-property-functions\n\n', 'mysql> SELECT X(POINT(56.7, 53.34));\n+-----------------------+\n| X(POINT(56.7, 53.34)) |\n+-----------------------+\n|                  56.7 |\n+-----------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#point-property-functions'),
(317, 'FOUND_ROWS', 17, 'Syntax:\nFOUND_ROWS()\n\nA SELECT statement may include a LIMIT clause to restrict the number of\nrows the server returns to the client. In some cases, it is desirable\nto know how many rows the statement would have returned without the\nLIMIT, but without running the statement again. To obtain this row\ncount, include a SQL_CALC_FOUND_ROWS option in the SELECT statement,\nand then invoke FOUND_ROWS() afterward:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT SQL_CALC_FOUND_ROWS * FROM tbl_name\n    -> WHERE id > 100 LIMIT 10;\nmysql> SELECT FOUND_ROWS();\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(318, 'SYSTEM_USER', 17, 'Syntax:\nSYSTEM_USER()\n\nSYSTEM_USER() is a synonym for USER().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(319, 'CROSSES', 30, 'Crosses(g1,g2)\n\nReturns 1 if g1 spatially crosses g2. Returns NULL if g1 is a Polygon\nor a MultiPolygon, or if g2 is a Point or a MultiPoint. Otherwise,\nreturns 0.\n\nThe term spatially crosses denotes a spatial relation between two given\ngeometries that has the following properties:\n\no The two geometries intersect\n\no Their intersection results in a geometry that has a dimension that is\n  one less than the maximum dimension of the two given geometries\n\no Their intersection is not equal to either of the two given geometries\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html'),
(320, 'TRUNCATE TABLE', 27, 'Syntax:\nTRUNCATE [TABLE] tbl_name\n\nTRUNCATE TABLE empties a table completely. It requires the DROP\nprivilege as of MySQL 5.1.16. (Before 5.1.16, it requires the DELETE\nprivilege).\n\nLogically, TRUNCATE TABLE is equivalent to a DELETE statement that\ndeletes all rows, but there are practical differences under some\ncircumstances.\n\nFor an InnoDB table, InnoDB processes TRUNCATE TABLE by deleting rows\none by one if there are any FOREIGN KEY constraints that reference the\ntable. If there are no FOREIGN KEY constraints, InnoDB performs fast\ntruncation by dropping the original table and creating an empty one\nwith the same definition, which is much faster than deleting rows one\nby one. The AUTO_INCREMENT counter is reset to zero by TRUNCATE TABLE,\nregardless of whether there is a FOREIGN KEY constraint.\n\nIn the case that FOREIGN KEY constraints reference the table, InnoDB\ndeletes rows one by one and processes the constraints on each one. If\nthe FOREIGN KEY constraint specifies DELETE CASCADE, rows from the\nchild (referenced) table are deleted, and the truncated table becomes\nempty. If the FOREIGN KEY constraint does not specify CASCADE, the\nTRUNCATE TABLE statement deletes rows one by one and stops if it\nencounters a parent row that is referenced by the child, returning this\nerror:\n\nERROR 1451 (23000): Cannot delete or update a parent row: a foreign\nkey constraint fails (`test`.`child`, CONSTRAINT `child_ibfk_1`\nFOREIGN KEY (`parent_id`) REFERENCES `parent` (`id`))\n\nThis is the same as a DELETE statement with no WHERE clause.\n\nThe count of rows affected by TRUNCATE TABLE is accurate only when it\nis mapped to a DELETE statement.\n\nFor other storage engines, TRUNCATE TABLE differs from DELETE in the\nfollowing ways in MySQL 5.1:\n\no Truncate operations drop and re-create the table, which is much\n  faster than deleting rows one by one, particularly for large tables.\n\no Truncate operations cause an implicit commit.\n\no Truncation operations cannot be performed if the session holds an\n  active table lock.\n\no Truncation operations do not return a meaningful value for the number\n  of deleted rows. The usual result is "0 rows affected," which should\n  be interpreted as "no information."\n\no As long as the table format file tbl_name.frm is valid, the table can\n  be re-created as an empty table with TRUNCATE TABLE, even if the data\n  or index files have become corrupted.\n\no The table handler does not remember the last used AUTO_INCREMENT\n  value, but starts counting from the beginning. This is true even for\n  MyISAM and InnoDB, which normally do not reuse sequence values.\n\no When used with partitioned tables, TRUNCATE TABLE preserves the\n  partitioning; that is, the data and index files are dropped and\n  re-created, while the partition definitions (.par) file is\n  unaffected.\n\no Since truncation of a table does not make any use of DELETE, the\n  TRUNCATE TABLE statement does not invoke ON DELETE triggers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/truncate-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/truncate-table.html'),
(321, 'BIT_XOR', 16, 'Syntax:\nBIT_XOR(expr)\n\nReturns the bitwise XOR of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(322, 'CURRENT_DATE', 31, 'Syntax:\nCURRENT_DATE, CURRENT_DATE()\n\nCURRENT_DATE and CURRENT_DATE() are synonyms for CURDATE().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(323, 'START SLAVE', 26, 'Syntax:\nSTART SLAVE [thread_type [, thread_type] ... ]\nSTART SLAVE [SQL_THREAD] UNTIL\n    MASTER_LOG_FILE = ''log_name'', MASTER_LOG_POS = log_pos\nSTART SLAVE [SQL_THREAD] UNTIL\n    RELAY_LOG_FILE = ''log_name'', RELAY_LOG_POS = log_pos\n\nthread_type: IO_THREAD | SQL_THREAD\n\nSTART SLAVE with no thread_type options starts both of the slave\nthreads. The I/O thread reads events from the master server and stores\nthem in the relay log. The SQL thread reads events from the relay log\nand executes them. START SLAVE requires the SUPER privilege.\n\nIf START SLAVE succeeds in starting the slave threads, it returns\nwithout any error. However, even in that case, it might be that the\nslave threads start and then later stop (for example, because they do\nnot manage to connect to the master or read its binary log, or some\nother problem). START SLAVE does not warn you about this. You must\ncheck the slave''s error log for error messages generated by the slave\nthreads, or check that they are running satisfactorily with SHOW SLAVE\nSTATUS.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/start-slave.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/start-slave.html'),
(324, 'AREA', 2, 'Area(poly)\n\nReturns as a double-precision number the area of the Polygon value\npoly, as measured in its spatial reference system.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#polygon-property-functions\n\n', 'mysql> SET @poly = ''Polygon((0 0,0 3,3 0,0 0),(1 1,1 2,2 1,1 1))'';\nmysql> SELECT Area(GeomFromText(@poly));\n+---------------------------+\n| Area(GeomFromText(@poly)) |\n+---------------------------+\n|                         4 |\n+---------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#polygon-property-functions'),
(325, 'BEGIN END', 23, 'Syntax:\n[begin_label:] BEGIN\n    [statement_list]\nEND [end_label]\n\nBEGIN ... END syntax is used for writing compound statements, which can\nappear within stored programs. A compound statement can contain\nmultiple statements, enclosed by the BEGIN and END keywords.\nstatement_list represents a list of one or more statements, each\nterminated by a semicolon (;) statement delimiter. statement_list is\noptional, which means that the empty compound statement (BEGIN END) is\nlegal.\n\nUse of multiple statements requires that a client is able to send\nstatement strings containing the ; statement delimiter. This is handled\nin the mysql command-line client with the delimiter command. Changing\nthe ; end-of-statement delimiter (for example, to //) permit ; to be\nused in a program body. For an example, see\nhttp://dev.mysql.com/doc/refman/5.1/en/stored-programs-defining.html.\n\nA BEGIN ... END block can be labeled. Labels follow these rules:\n\no end_label cannot be given unless begin_label is also present.\n\no If both begin_label and end_label are present, they must be the same.\n\no Labels can be up to 16 characters long.\n\nLabels are also permitted for the LOOP, REPEAT, and WHILE statements.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/begin-end.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/begin-end.html'),
(326, 'FLUSH', 26, 'Syntax:\nFLUSH [NO_WRITE_TO_BINLOG | LOCAL]\n    flush_option [, flush_option] ...\n\nThe FLUSH statement clears or reloads various internal caches used by\nMySQL. One variant acquires a lock. To execute FLUSH, you must have the\nRELOAD privilege.\n\nBy default, FLUSH statements are written to the binary log so that they\nwill be replicated to replication slaves. Logging can be suppressed\nwith the optional NO_WRITE_TO_BINLOG keyword or its alias LOCAL.\n\n*Note*: FLUSH LOGS, FLUSH MASTER, FLUSH SLAVE, and FLUSH TABLES WITH\nREAD LOCK are not written to the binary log in any case because they\nwould cause problems if replicated to a slave.\n\nThe RESET statement is similar to FLUSH. See [HELP RESET], for\ninformation about using the RESET statement with replication.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/flush.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/flush.html'),
(327, 'SHOW PROCEDURE STATUS', 26, 'Syntax:\nSHOW PROCEDURE STATUS\n    [LIKE ''pattern'' | WHERE expr]\n\nThis statement is a MySQL extension. It returns characteristics of a\nstored procedure, such as the database, name, type, creator, creation\nand modification dates, and character set information. A similar\nstatement, SHOW FUNCTION STATUS, displays information about stored\nfunctions (see [HELP SHOW FUNCTION STATUS]).\n\nThe LIKE clause, if present, indicates which procedure or function\nnames to match. The WHERE clause can be given to select rows using more\ngeneral conditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-procedure-status.html\n\n', 'mysql> SHOW PROCEDURE STATUS LIKE ''sp1''\\G\n*************************** 1. row ***************************\n                  Db: test\n                Name: sp1\n                Type: PROCEDURE\n             Definer: testuser@localhost\n            Modified: 2004-08-03 15:29:37\n             Created: 2004-08-03 15:29:37\n       Security_type: DEFINER\n             Comment:\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-procedure-status.html'),
(328, 'DESCRIBE', 28, 'Syntax:\n{DESCRIBE | DESC} tbl_name [col_name | wild]\n\nDESCRIBE provides information about the columns in a table. It is a\nshortcut for SHOW COLUMNS FROM. These statements also display\ninformation for views. (See [HELP SHOW COLUMNS].)\n\ncol_name can be a column name, or a string containing the SQL "%" and\n"_" wildcard characters to obtain output only for the columns with\nnames matching the string. There is no need to enclose the string\nwithin quotation marks unless it contains spaces or other special\ncharacters.\n\nmysql> DESCRIBE City;\n+------------+----------+------+-----+---------+----------------+\n| Field      | Type     | Null | Key | Default | Extra          |\n+------------+----------+------+-----+---------+----------------+\n| Id         | int(11)  | NO   | PRI | NULL    | auto_increment |\n| Name       | char(35) | NO   |     |         |                |\n| Country    | char(3)  | NO   | UNI |         |                |\n| District   | char(20) | YES  | MUL |         |                |\n| Population | int(11)  | NO   |     | 0       |                |\n+------------+----------+------+-----+---------+----------------+\n5 rows in set (0.00 sec)\n\nThe description for SHOW COLUMNS provides more information about the\noutput columns (see [HELP SHOW COLUMNS]).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/describe.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/describe.html'),
(329, 'SHOW WARNINGS', 26, 'Syntax:\nSHOW WARNINGS [LIMIT [offset,] row_count]\nSHOW COUNT(*) WARNINGS\n\nSHOW WARNINGS shows the error, warning, and note messages that resulted\nfrom the last statement that generated messages in the current session.\nIt shows nothing if the last statement used a table and generated no\nmessages. (That is, a statement that uses a table but generates no\nmessages clears the message list.) Statements that do not use tables\nand do not generate messages have no effect on the message list.\n\nWarnings are generated for DML statements such as INSERT, UPDATE, and\nLOAD DATA INFILE as well as DDL statements such as CREATE TABLE and\nALTER TABLE.\n\nA related statement, SHOW ERRORS, shows only the errors. See [HELP SHOW\nERRORS].\n\nThe SHOW COUNT(*) WARNINGS statement displays the total number of\nerrors, warnings, and notes. You can also retrieve this number from the\nwarning_count variable:\n\nSHOW COUNT(*) WARNINGS;\nSELECT @@warning_count;\n\nThe value of warning_count might be greater than the number of messages\ndisplayed by SHOW WARNINGS if the max_error_count system variable is\nset so low that not all messages are stored. An example shown later in\nthis section demonstrates how this can happen.\n\nThe LIMIT clause has the same syntax as for the SELECT statement. See\nhttp://dev.mysql.com/doc/refman/5.1/en/select.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-warnings.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-warnings.html'),
(330, 'DROP USER', 10, 'Syntax:\nDROP USER user [, user] ...\n\nThe DROP USER statement removes one or more MySQL accounts and their\nprivileges. It removes privilege rows for the account from all grant\ntables. To use this statement, you must have the global CREATE USER\nprivilege or the DELETE privilege for the mysql database. Each account\nname uses the format described in\nhttp://dev.mysql.com/doc/refman/5.1/en/account-names.html. For example:\n\nDROP USER ''jeffrey''@''localhost'';\n\nIf you specify only the user name part of the account name, a host name\npart of ''%'' is used.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-user.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-user.html'),
(331, 'STDDEV_POP', 16, 'Syntax:\nSTDDEV_POP(expr)\n\nReturns the population standard deviation of expr (the square root of\nVAR_POP()). You can also use STD() or STDDEV(), which are equivalent\nbut not standard SQL.\n\nSTDDEV_POP() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(332, 'SHOW CHARACTER SET', 26, 'Syntax:\nSHOW CHARACTER SET\n    [LIKE ''pattern'' | WHERE expr]\n\nThe SHOW CHARACTER SET statement shows all available character sets.\nThe LIKE clause, if present, indicates which character set names to\nmatch. The WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html. For example:\n\nmysql> SHOW CHARACTER SET LIKE ''latin%'';\n+---------+-----------------------------+-------------------+--------+\n| Charset | Description                 | Default collation | Maxlen |\n+---------+-----------------------------+-------------------+--------+\n| latin1  | cp1252 West European        | latin1_swedish_ci |      1 |\n| latin2  | ISO 8859-2 Central European | latin2_general_ci |      1 |\n| latin5  | ISO 8859-9 Turkish          | latin5_turkish_ci |      1 |\n| latin7  | ISO 8859-13 Baltic          | latin7_general_ci |      1 |\n+---------+-----------------------------+-------------------+--------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-character-set.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-character-set.html'),
(333, 'SUBSTRING', 36, 'Syntax:\nSUBSTRING(str,pos), SUBSTRING(str FROM pos), SUBSTRING(str,pos,len),\nSUBSTRING(str FROM pos FOR len)\n\nThe forms without a len argument return a substring from string str\nstarting at position pos. The forms with a len argument return a\nsubstring len characters long from string str, starting at position\npos. The forms that use FROM are standard SQL syntax. It is also\npossible to use a negative value for pos. In this case, the beginning\nof the substring is pos characters from the end of the string, rather\nthan the beginning. A negative value may be used for pos in any of the\nforms of this function.\n\nFor all forms of SUBSTRING(), the position of the first character in\nthe string from which the substring is to be extracted is reckoned as\n1.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT SUBSTRING(''Quadratically'',5);\n        -> ''ratically''\nmysql> SELECT SUBSTRING(''foobarbar'' FROM 4);\n        -> ''barbar''\nmysql> SELECT SUBSTRING(''Quadratically'',5,6);\n        -> ''ratica''\nmysql> SELECT SUBSTRING(''Sakila'', -3);\n        -> ''ila''\nmysql> SELECT SUBSTRING(''Sakila'', -5, 3);\n        -> ''aki''\nmysql> SELECT SUBSTRING(''Sakila'' FROM -4 FOR 2);\n        -> ''ki''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(334, 'ISEMPTY', 35, 'IsEmpty(g)\n\nReturns 1 if the geometry value g is the empty geometry, 0 if it is not\nempty, and -1 if the argument is NULL. If the geometry is empty, it\nrepresents the empty point set.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#general-geometry-property-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#general-geometry-property-functions'),
(335, 'SHOW FUNCTION STATUS', 26, 'Syntax:\nSHOW FUNCTION STATUS\n    [LIKE ''pattern'' | WHERE expr]\n\nThis statement is similar to SHOW PROCEDURE STATUS but for stored\nfunctions. See [HELP SHOW PROCEDURE STATUS].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-function-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-function-status.html'),
(336, 'LTRIM', 36, 'Syntax:\nLTRIM(str)\n\nReturns the string str with leading space characters removed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT LTRIM(''  barbar'');\n        -> ''barbar''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(337, 'INTERSECTS', 30, 'Intersects(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 spatially intersects g2.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html'),
(338, 'CALL', 27, 'Syntax:\nCALL sp_name([parameter[,...]])\nCALL sp_name[()]\n\nThe CALL statement invokes a stored procedure that was defined\npreviously with CREATE PROCEDURE.\n\nAs of MySQL 5.1.13, stored procedures that take no arguments can be\ninvoked without parentheses. That is, CALL p() and CALL p are\nequivalent.\n\nCALL can pass back values to its caller using parameters that are\ndeclared as OUT or INOUT parameters. When the procedure returns, a\nclient program can also obtain the number of rows affected for the\nfinal statement executed within the routine: At the SQL level, call the\nROW_COUNT() function; from the C API, call the mysql_affected_rows()\nfunction.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/call.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/call.html'),
(339, 'MBRDISJOINT', 6, 'MBRDisjoint(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangles of\nthe two geometries g1 and g2 are disjoint (do not intersect).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html'),
(340, 'VALUES', 15, 'Syntax:\nVALUES(col_name)\n\nIn an INSERT ... ON DUPLICATE KEY UPDATE statement, you can use the\nVALUES(col_name) function in the UPDATE clause to refer to column\nvalues from the INSERT portion of the statement. In other words,\nVALUES(col_name) in the UPDATE clause refers to the value of col_name\nthat would be inserted, had no duplicate-key conflict occurred. This\nfunction is especially useful in multiple-row inserts. The VALUES()\nfunction is meaningful only in INSERT ... ON DUPLICATE KEY UPDATE\nstatements and returns NULL otherwise.\nhttp://dev.mysql.com/doc/refman/5.1/en/insert-on-duplicate.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> INSERT INTO table (a,b,c) VALUES (1,2,3),(4,5,6)\n    -> ON DUPLICATE KEY UPDATE c=VALUES(a)+VALUES(b);\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(341, 'SUBSTRING_INDEX', 36, 'Syntax:\nSUBSTRING_INDEX(str,delim,count)\n\nReturns the substring from string str before count occurrences of the\ndelimiter delim. If count is positive, everything to the left of the\nfinal delimiter (counting from the left) is returned. If count is\nnegative, everything to the right of the final delimiter (counting from\nthe right) is returned. SUBSTRING_INDEX() performs a case-sensitive\nmatch when searching for delim.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT SUBSTRING_INDEX(''www.mysql.com'', ''.'', 2);\n        -> ''www.mysql''\nmysql> SELECT SUBSTRING_INDEX(''www.mysql.com'', ''.'', -2);\n        -> ''mysql.com''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(342, 'ENCODE', 12, 'Syntax:\nENCODE(str,pass_str)\n\nEncrypt str using pass_str as the password. To decrypt the result, use\nDECODE().\n\nThe result is a binary string of the same length as str.\n\nThe strength of the encryption is based on how good the random\ngenerator is. It should suffice for short strings.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(343, 'LOOP', 23, 'Syntax:\n[begin_label:] LOOP\n    statement_list\nEND LOOP [end_label]\n\nLOOP implements a simple loop construct, enabling repeated execution of\nthe statement list, which consists of one or more statements, each\nterminated by a semicolon (;) statement delimiter. The statements\nwithin the loop are repeated until the loop is exited; usually this is\naccomplished with a LEAVE statement.\n\nA LOOP statement can be labeled. See [HELP BEGIN END] for the rules\nregarding label use.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/loop-statement.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/loop-statement.html'),
(344, 'TRUNCATE', 4, 'Syntax:\nTRUNCATE(X,D)\n\nReturns the number X, truncated to D decimal places. If D is 0, the\nresult has no decimal point or fractional part. D can be negative to\ncause D digits left of the decimal point of the value X to become zero.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT TRUNCATE(1.223,1);\n        -> 1.2\nmysql> SELECT TRUNCATE(1.999,1);\n        -> 1.9\nmysql> SELECT TRUNCATE(1.999,0);\n        -> 1\nmysql> SELECT TRUNCATE(-1.999,1);\n        -> -1.9\nmysql> SELECT TRUNCATE(122,-2);\n       -> 100\nmysql> SELECT TRUNCATE(10.28*100,0);\n       -> 1028\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(345, 'TIMESTAMPADD', 31, 'Syntax:\nTIMESTAMPADD(unit,interval,datetime_expr)\n\nAdds the integer expression interval to the date or datetime expression\ndatetime_expr. The unit for interval is given by the unit argument,\nwhich should be one of the following values: FRAC_SECOND\n(microseconds), SECOND, MINUTE, HOUR, DAY, WEEK, MONTH, QUARTER, or\nYEAR.\n\nBeginning with MySQL 5.1.24, it is possible to use MICROSECOND in place\nof FRAC_SECOND with this function, and FRAC_SECOND is deprecated.\nFRAC_SECOND is removed in MySQL 5.5.\n\nThe unit value may be specified using one of keywords as shown, or with\na prefix of SQL_TSI_. For example, DAY and SQL_TSI_DAY both are legal.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIMESTAMPADD(MINUTE,1,''2003-01-02'');\n        -> ''2003-01-02 00:01:00''\nmysql> SELECT TIMESTAMPADD(WEEK,1,''2003-01-02'');\n        -> ''2003-01-09''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(346, 'SHOW', 26, 'SHOW has many forms that provide information about databases, tables,\ncolumns, or status information about the server. This section describes\nthose following:\n\nSHOW AUTHORS\nSHOW {BINARY | MASTER} LOGS\nSHOW BINLOG EVENTS [IN ''log_name''] [FROM pos] [LIMIT [offset,] row_count]\nSHOW CHARACTER SET [like_or_where]\nSHOW COLLATION [like_or_where]\nSHOW [FULL] COLUMNS FROM tbl_name [FROM db_name] [like_or_where]\nSHOW CONTRIBUTORS\nSHOW CREATE DATABASE db_name\nSHOW CREATE EVENT event_name\nSHOW CREATE FUNCTION func_name\nSHOW CREATE PROCEDURE proc_name\nSHOW CREATE TABLE tbl_name\nSHOW CREATE TRIGGER trigger_name\nSHOW CREATE VIEW view_name\nSHOW DATABASES [like_or_where]\nSHOW ENGINE engine_name {STATUS | MUTEX}\nSHOW [STORAGE] ENGINES\nSHOW ERRORS [LIMIT [offset,] row_count]\nSHOW EVENTS\nSHOW FUNCTION CODE func_name\nSHOW FUNCTION STATUS [like_or_where]\nSHOW GRANTS FOR user\nSHOW INDEX FROM tbl_name [FROM db_name]\nSHOW INNODB STATUS\nSHOW MASTER STATUS\nSHOW OPEN TABLES [FROM db_name] [like_or_where]\nSHOW PLUGINS\nSHOW PROCEDURE CODE proc_name\nSHOW PROCEDURE STATUS [like_or_where]\nSHOW PRIVILEGES\nSHOW [FULL] PROCESSLIST\nSHOW PROFILE [types] [FOR QUERY n] [OFFSET n] [LIMIT n]\nSHOW PROFILES\nSHOW SCHEDULER STATUS\nSHOW SLAVE HOSTS\nSHOW SLAVE STATUS\nSHOW [GLOBAL | SESSION] STATUS [like_or_where]\nSHOW TABLE STATUS [FROM db_name] [like_or_where]\nSHOW [FULL] TABLES [FROM db_name] [like_or_where]\nSHOW TRIGGERS [FROM db_name] [like_or_where]\nSHOW [GLOBAL | SESSION] VARIABLES [like_or_where]\nSHOW WARNINGS [LIMIT [offset,] row_count]\n\nlike_or_where:\n    LIKE ''pattern''\n  | WHERE expr\n\nIf the syntax for a given SHOW statement includes a LIKE ''pattern''\npart, ''pattern'' is a string that can contain the SQL "%" and "_"\nwildcard characters. The pattern is useful for restricting statement\noutput to matching values.\n\nSeveral SHOW statements also accept a WHERE clause that provides more\nflexibility in specifying which rows to display. See\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show.html'),
(347, 'GREATEST', 18, 'Syntax:\nGREATEST(value1,value2,...)\n\nWith two or more arguments, returns the largest (maximum-valued)\nargument. The arguments are compared using the same rules as for\nLEAST().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT GREATEST(2,0);\n        -> 2\nmysql> SELECT GREATEST(34.0,3.0,5.0,767.0);\n        -> 767.0\nmysql> SELECT GREATEST(''B'',''A'',''C'');\n        -> ''C''\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(348, 'SHOW VARIABLES', 26, 'Syntax:\nSHOW [GLOBAL | SESSION] VARIABLES\n    [LIKE ''pattern'' | WHERE expr]\n\nSHOW VARIABLES shows the values of MySQL system variables. This\ninformation also can be obtained using the mysqladmin variables\ncommand. The LIKE clause, if present, indicates which variable names to\nmatch. The WHERE clause can be given to select rows using more general\nconditions, as discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html. This\nstatement does not require any privilege. It requires only the ability\nto connect to the server.\n\nWith the GLOBAL modifier, SHOW VARIABLES displays the values that are\nused for new connections to MySQL. If a variable has no global value,\nthe session value is displayed. With SESSION, SHOW VARIABLES displays\nthe values that are in effect for the current connection. If no\nmodifier is present, the default is SESSION. LOCAL is a synonym for\nSESSION.\nWith a LIKE clause, the statement displays only rows for those\nvariables with names that match the pattern. To obtain the row for a\nspecific variable, use a LIKE clause as shown:\n\nSHOW VARIABLES LIKE ''max_join_size'';\nSHOW SESSION VARIABLES LIKE ''max_join_size'';\n\nTo get a list of variables whose name match a pattern, use the "%"\nwildcard character in a LIKE clause:\n\nSHOW VARIABLES LIKE ''%size%'';\nSHOW GLOBAL VARIABLES LIKE ''%size%'';\n\nWildcard characters can be used in any position within the pattern to\nbe matched. Strictly speaking, because "_" is a wildcard that matches\nany single character, you should escape it as "\\_" to match it\nliterally. In practice, this is rarely necessary.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-variables.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-variables.html'),
(349, 'BINLOG', 26, 'Syntax:\nBINLOG ''str''\n\nBINLOG is an internal-use statement. It is generated by the mysqlbinlog\nprogram as the printable representation of certain events in binary log\nfiles. (See http://dev.mysql.com/doc/refman/5.1/en/mysqlbinlog.html.)\nThe ''str'' value is a base 64-encoded string the that server decodes to\ndetermine the data change indicated by the corresponding event. This\nstatement requires the SUPER privilege. It was added in MySQL 5.1.5.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/binlog.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/binlog.html'),
(350, 'BIT_AND', 16, 'Syntax:\nBIT_AND(expr)\n\nReturns the bitwise AND of all bits in expr. The calculation is\nperformed with 64-bit (BIGINT) precision.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(351, 'SECOND', 31, 'Syntax:\nSECOND(time)\n\nReturns the second for time, in the range 0 to 59.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT SECOND(''10:05:03'');\n        -> 3\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(352, 'ATAN2', 4, 'Syntax:\nATAN(Y,X), ATAN2(Y,X)\n\nReturns the arc tangent of the two variables X and Y. It is similar to\ncalculating the arc tangent of Y / X, except that the signs of both\narguments are used to determine the quadrant of the result.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT ATAN(-2,2);\n        -> -0.78539816339745\nmysql> SELECT ATAN2(PI(),0);\n        -> 1.5707963267949\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(353, 'MBRCONTAINS', 6, 'MBRContains(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangle of g1\ncontains the Minimum Bounding Rectangle of g2. This tests the opposite\nrelationship as MBRWithin().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', 'mysql> SET @g1 = GeomFromText(''Polygon((0 0,0 3,3 3,3 0,0 0))'');\nmysql> SET @g2 = GeomFromText(''Point(1 1)'');\nmysql> SELECT MBRContains(@g1,@g2), MBRContains(@g2,@g1);\n----------------------+----------------------+\n| MBRContains(@g1,@g2) | MBRContains(@g2,@g1) |\n+----------------------+----------------------+\n|                    1 |                    0 |\n+----------------------+----------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html'),
(354, 'HOUR', 31, 'Syntax:\nHOUR(time)\n\nReturns the hour for time. The range of the return value is 0 to 23 for\ntime-of-day values. However, the range of TIME values actually is much\nlarger, so HOUR can return values greater than 23.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT HOUR(''10:05:03'');\n        -> 10\nmysql> SELECT HOUR(''272:59:59'');\n        -> 272\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(355, 'SELECT', 27, 'Syntax:\nSELECT\n    [ALL | DISTINCT | DISTINCTROW ]\n      [HIGH_PRIORITY]\n      [STRAIGHT_JOIN]\n      [SQL_SMALL_RESULT] [SQL_BIG_RESULT] [SQL_BUFFER_RESULT]\n      [SQL_CACHE | SQL_NO_CACHE] [SQL_CALC_FOUND_ROWS]\n    select_expr [, select_expr ...]\n    [FROM table_references\n    [WHERE where_condition]\n    [GROUP BY {col_name | expr | position}\n      [ASC | DESC], ... [WITH ROLLUP]]\n    [HAVING where_condition]\n    [ORDER BY {col_name | expr | position}\n      [ASC | DESC], ...]\n    [LIMIT {[offset,] row_count | row_count OFFSET offset}]\n    [PROCEDURE procedure_name(argument_list)]\n    [INTO OUTFILE ''file_name''\n        [CHARACTER SET charset_name]\n        export_options\n      | INTO DUMPFILE ''file_name''\n      | INTO var_name [, var_name]]\n    [FOR UPDATE | LOCK IN SHARE MODE]]\n\nSELECT is used to retrieve rows selected from one or more tables, and\ncan include UNION statements and subqueries. See [HELP UNION], and\nhttp://dev.mysql.com/doc/refman/5.1/en/subqueries.html.\n\nThe most commonly used clauses of SELECT statements are these:\n\no Each select_expr indicates a column that you want to retrieve. There\n  must be at least one select_expr.\n\no table_references indicates the table or tables from which to retrieve\n  rows. Its syntax is described in [HELP JOIN].\n\no The WHERE clause, if given, indicates the condition or conditions\n  that rows must satisfy to be selected. where_condition is an\n  expression that evaluates to true for each row to be selected. The\n  statement selects all rows if there is no WHERE clause.\n\n  In the WHERE expression, you can use any of the functions and\n  operators that MySQL supports, except for aggregate (summary)\n  functions. See\n  http://dev.mysql.com/doc/refman/5.1/en/expressions.html, and\n  http://dev.mysql.com/doc/refman/5.1/en/functions.html.\n\nSELECT can also be used to retrieve rows computed without reference to\nany table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/select.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/select.html'),
(356, 'COT', 4, 'Syntax:\nCOT(X)\n\nReturns the cotangent of X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT COT(12);\n        -> -1.5726734063977\nmysql> SELECT COT(0);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(357, 'SHOW CREATE EVENT', 26, 'Syntax:\nSHOW CREATE EVENT event_name\n\nThis statement displays the CREATE EVENT statement needed to re-create\na given event. For example (using the same event e_daily defined and\nthen altered in [HELP SHOW EVENTS]):\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-event.html\n\n', 'mysql> SHOW CREATE EVENT test.e_daily\\G\n*************************** 1. row ***************************\n               Event: e_daily\n            sql_mode:\n           time_zone: SYSTEM\n        Create Event: CREATE EVENT `e_daily`\n                        ON SCHEDULE EVERY 1 DAY\n                        STARTS CURRENT_TIMESTAMP + INTERVAL 6 HOUR\n                        ON COMPLETION NOT PRESERVE\n                        ENABLE\n                        COMMENT ''Saves total number of sessions then\n                                clears the table each day''\n                        DO BEGIN\n                          INSERT INTO site_activity.totals (time, total)\n                            SELECT CURRENT_TIMESTAMP, COUNT(*)\n                            FROM site_activity.sessions;\n                          DELETE FROM site_activity.sessions;\n                        END\ncharacter_set_client: latin1\ncollation_connection: latin1_swedish_ci\n  Database Collation: latin1_swedish_ci\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-event.html'),
(358, 'BACKUP TABLE', 20, 'Syntax:\nBACKUP TABLE tbl_name [, tbl_name] ... TO ''/path/to/backup/directory''\n\n*Note*: This statement is deprecated and is removed in MySQL 5.5. As an\nalternative, mysqldump or mysqlhotcopy can be used instead.\n\nBACKUP TABLE copies to the backup directory the minimum number of table\nfiles needed to restore the table, after flushing any buffered changes\nto disk. The statement works only for MyISAM tables. It copies the .frm\ndefinition and .MYD data files. The .MYI index file can be rebuilt from\nthose two files. The directory should be specified as a full path name.\nTo restore the table, use RESTORE TABLE.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/backup-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/backup-table.html'),
(359, 'LOAD_FILE', 36, 'Syntax:\nLOAD_FILE(file_name)\n\nReads the file and returns the file contents as a string. To use this\nfunction, the file must be located on the server host, you must specify\nthe full path name to the file, and you must have the FILE privilege.\nThe file must be readable by all and its size less than\nmax_allowed_packet bytes. If the secure_file_priv system variable is\nset to a nonempty directory name, the file to be loaded must be located\nin that directory.\n\nIf the file does not exist or cannot be read because one of the\npreceding conditions is not satisfied, the function returns NULL.\n\nAs of MySQL 5.1.6, the character_set_filesystem system variable\ncontrols interpretation of file names that are given as literal\nstrings.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> UPDATE t\n            SET blob_col=LOAD_FILE(''/tmp/picture'')\n            WHERE id=1;\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(360, 'LOAD TABLE FROM MASTER', 26, 'Syntax:\nLOAD TABLE tbl_name FROM MASTER\n\nThis feature is deprecated and should be avoided. It is subject to\nremoval in a future version of MySQL.\n\nSince the current implementation of LOAD DATA FROM MASTER and LOAD\nTABLE FROM MASTER is very limited, these statements are deprecated as\nof MySQL 4.1 and removed in MySQL 5.5.\n\nThe recommended alternative solution to using LOAD DATA FROM MASTER or\nLOAD TABLE FROM MASTER is using mysqldump or mysqlhotcopy. The latter\nrequires Perl and two Perl modules (DBI and DBD:mysql) and works for\nMyISAM and ARCHIVE tables only. With mysqldump, you can create SQL\ndumps on the master and pipe (or copy) these to a mysql client on the\nslave. This has the advantage of working for all storage engines, but\ncan be quite slow, since it works using SELECT.\n\nTransfers a copy of the table from the master to the slave. This\nstatement is implemented mainly debugging LOAD DATA FROM MASTER\noperations. To use LOAD TABLE, the account used for connecting to the\nmaster server must have the RELOAD and SUPER privileges on the master\nand the SELECT privilege for the master table to load. On the slave\nside, the user that issues LOAD TABLE FROM MASTER must have privileges\nfor dropping and creating the table.\n\nThe conditions for LOAD DATA FROM MASTER apply here as well. For\nexample, LOAD TABLE FROM MASTER works only for MyISAM tables. The\ntimeout notes for LOAD DATA FROM MASTER apply as well.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/load-table-from-master.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/load-table-from-master.html'),
(361, 'POINTFROMTEXT', 3, 'PointFromText(wkt[,srid])\n\nConstructs a POINT value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkt-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkt-functions'),
(362, 'GROUP_CONCAT', 16, 'Syntax:\nGROUP_CONCAT(expr)\n\nThis function returns a string result with the concatenated non-NULL\nvalues from a group. It returns NULL if there are no non-NULL values.\nThe full syntax is as follows:\n\nGROUP_CONCAT([DISTINCT] expr [,expr ...]\n             [ORDER BY {unsigned_integer | col_name | expr}\n                 [ASC | DESC] [,col_name ...]]\n             [SEPARATOR str_val])\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', 'mysql> SELECT student_name,\n    ->     GROUP_CONCAT(test_score)\n    ->     FROM student\n    ->     GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(363, 'DATE_FORMAT', 31, 'Syntax:\nDATE_FORMAT(date,format)\n\nFormats the date value according to the format string.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATE_FORMAT(''2009-10-04 22:23:00'', ''%W %M %Y'');\n        -> ''Sunday October 2009''\nmysql> SELECT DATE_FORMAT(''2007-10-04 22:23:00'', ''%H:%i:%s'');\n        -> ''22:23:00''\nmysql> SELECT DATE_FORMAT(''1900-10-04 22:23:00'',\n    ->                 ''%D %y %a %d %m %b %j'');\n        -> ''4th 00 Thu 04 10 Oct 277''\nmysql> SELECT DATE_FORMAT(''1997-10-04 22:23:00'',\n    ->                 ''%H %k %I %r %T %S %w'');\n        -> ''22 22 10 10:23:00 PM 22:23:00 00 6''\nmysql> SELECT DATE_FORMAT(''1999-01-01'', ''%X %V'');\n        -> ''1998 52''\nmysql> SELECT DATE_FORMAT(''2006-06-00'', ''%d'');\n        -> ''00''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(364, 'BENCHMARK', 17, 'Syntax:\nBENCHMARK(count,expr)\n\nThe BENCHMARK() function executes the expression expr repeatedly count\ntimes. It may be used to time how quickly MySQL processes the\nexpression. The result value is always 0. The intended use is from\nwithin the mysql client, which reports query execution times:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT BENCHMARK(1000000,ENCODE(''hello'',''goodbye''));\n+----------------------------------------------+\n| BENCHMARK(1000000,ENCODE(''hello'',''goodbye'')) |\n+----------------------------------------------+\n|                                            0 |\n+----------------------------------------------+\n1 row in set (4.74 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(365, 'YEAR', 31, 'Syntax:\nYEAR(date)\n\nReturns the year for date, in the range 1000 to 9999, or 0 for the\n"zero" date.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT YEAR(''1987-01-01'');\n        -> 1987\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(366, 'SHOW ENGINE', 26, 'Syntax:\nSHOW ENGINE engine_name {STATUS | MUTEX}\n\nSHOW ENGINE displays operational information about a storage engine.\nThe following statements currently are supported:\n\nSHOW ENGINE INNODB STATUS\nSHOW ENGINE INNODB MUTEX\nSHOW ENGINE {NDB | NDBCLUSTER} STATUS\n\nOlder (and now deprecated) synonyms are SHOW INNODB STATUS for SHOW\nENGINE INNODB STATUS and SHOW MUTEX STATUS for SHOW ENGINE INNODB\nMUTEX. SHOW INNODB STATUS and SHOW MUTEX STATUS are removed in MySQL\n5.5.\n\nIn MySQL 5.0, SHOW ENGINE INNODB MUTEX is invoked as SHOW MUTEX STATUS.\nThe latter statement displays similar information but in a somewhat\ndifferent output format.\n\nSHOW ENGINE BDB LOGS formerly displayed status information about BDB\nlog files. As of MySQL 5.1.12, the BDB storage engine is not supported,\nand this statement produces a warning.\n\nSHOW ENGINE INNODB STATUS displays extensive information from the\nstandard InnoDB Monitor about the state of the InnoDB storage engine.\nFor information about the standard monitor and other InnoDB Monitors\nthat provide information about InnoDB processing, see\nhttp://dev.mysql.com/doc/refman/5.1/en/innodb-monitors.html.\n\nSHOW ENGINE INNODB MUTEX displays InnoDB mutex statistics. From MySQL\n5.1.2 to 5.1.14, the statement displays the following output fields:\n\no Type\n\n  Always InnoDB.\n\no Name\n\n  The mutex name and the source file where it is implemented. Example:\n  &pool->mutex:mem0pool.c\n\n  The mutex name indicates its purpose. For example, the log_sys mutex\n  is used by the InnoDB logging subsystem and indicates how intensive\n  logging activity is. The buf_pool mutex protects the InnoDB buffer\n  pool.\n\no Status\n\n  The mutex status. The fields contains several values:\n\n  o count indicates how many times the mutex was requested.\n\n  o spin_waits indicates how many times the spinlock had to run.\n\n  o spin_rounds indicates the number of spinlock rounds. (spin_rounds\n    divided by spin_waits provides the average round count.)\n\n  o os_waits indicates the number of operating system waits. This\n    occurs when the spinlock did not work (the mutex was not locked\n    during the spinlock and it was necessary to yield to the operating\n    system and wait).\n\n  o os_yields indicates the number of times a the thread trying to lock\n    a mutex gave up its timeslice and yielded to the operating system\n    (on the presumption that permitting other threads to run will free\n    the mutex so that it can be locked).\n\n  o os_wait_times indicates the amount of time (in ms) spent in\n    operating system waits, if the timed_mutexes system variable is 1\n    (ON). If timed_mutexes is 0 (OFF), timing is disabled, so\n    os_wait_times is 0. timed_mutexes is off by default.\n\nFrom MySQL 5.1.15 on, the statement displays the following output\nfields:\n\no Type\n\n  Always InnoDB.\n\no Name\n\n  The source file where the mutex is implemented, and the line number\n  in the file where the mutex is created. The line number may change\n  depending on your version of MySQL.\n\no Status\n\n  This field displays the same values as previously described (count,\n  spin_waits, spin_rounds, os_waits, os_yields, os_wait_times), but\n  only if UNIV_DEBUG was defined at MySQL compilation time (for\n  example, in include/univ.h in the InnoDB part of the MySQL source\n  tree). If UNIV_DEBUG was not defined, the statement displays only the\n  os_waits value. In the latter case (without UNIV_DEBUG), the\n  information on which the output is based is insufficient to\n  distinguish regular mutexes and mutexes that protect rw-locks (which\n  permit multiple readers or a single writer). Consequently, the output\n  may appear to contain multiple rows for the same mutex.\n\nInformation from this statement can be used to diagnose system\nproblems. For example, large values of spin_waits and spin_rounds may\nindicate scalability problems.\n\nIf the server has the NDBCLUSTER storage engine enabled, SHOW ENGINE\nNDB STATUS displays cluster status information such as the number of\nconnected data nodes, the cluster connectstring, and cluster binlog\nepochs, as well as counts of various Cluster API objects created by the\nMySQL Server when connected to the cluster. Sample output from this\nstatement is shown here:\n\nmysql> SHOW ENGINE NDB STATUS;\n+------------+-----------------------+--------------------------------------------------+\n| Type       | Name                  | Status                                           |\n+------------+-----------------------+--------------------------------------------------+\n| ndbcluster | connection            | cluster_node_id=7,\n  connected_host=192.168.0.103, connected_port=1186, number_of_data_nodes=4,\n  number_of_ready_data_nodes=3, connect_count=0                                         |\n| ndbcluster | NdbTransaction        | created=6, free=0, sizeof=212                    |\n| ndbcluster | NdbOperation          | created=8, free=8, sizeof=660                    |\n| ndbcluster | NdbIndexScanOperation | created=1, free=1, sizeof=744                    |\n| ndbcluster | NdbIndexOperation     | created=0, free=0, sizeof=664                    |\n| ndbcluster | NdbRecAttr            | created=1285, free=1285, sizeof=60               |\n| ndbcluster | NdbApiSignal          | created=16, free=16, sizeof=136                  |\n| ndbcluster | NdbLabel              | created=0, free=0, sizeof=196                    |\n| ndbcluster | NdbBranch             | created=0, free=0, sizeof=24                     |\n| ndbcluster | NdbSubroutine         | created=0, free=0, sizeof=68                     |\n| ndbcluster | NdbCall               | created=0, free=0, sizeof=16                     |\n| ndbcluster | NdbBlob               | created=1, free=1, sizeof=264                    |\n| ndbcluster | NdbReceiver           | created=4, free=0, sizeof=68                     |\n| ndbcluster | binlog                | latest_epoch=155467, latest_trans_epoch=148126,\n  latest_received_binlog_epoch=0, latest_handled_binlog_epoch=0,\n  latest_applied_binlog_epoch=0                                                         |\n+------------+-----------------------+--------------------------------------------------+\n\nThe rows with connection and binlog in the Name column were added to\nthe output of this statement in MySQL 5.1. The Status column in each of\nthese rows provides information about the MySQL server''s connection to\nthe cluster and about the cluster binary log''s status, respectively.\nThe Status information is in the form of comma-delimited set of\nname/value pairs.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-engine.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-engine.html'),
(367, 'NAME_CONST', 15, 'Syntax:\nNAME_CONST(name,value)\n\nReturns the given value. When used to produce a result set column,\nNAME_CONST() causes the column to have the given name. The arguments\nshould be constants.\n\nmysql> SELECT NAME_CONST(''myname'', 14);\n+--------+\n| myname |\n+--------+\n|     14 |\n+--------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(368, 'RELEASE_LOCK', 15, 'Syntax:\nRELEASE_LOCK(str)\n\nReleases the lock named by the string str that was obtained with\nGET_LOCK(). Returns 1 if the lock was released, 0 if the lock was not\nestablished by this thread (in which case the lock is not released),\nand NULL if the named lock did not exist. The lock does not exist if it\nwas never obtained by a call to GET_LOCK() or if it has previously been\nreleased.\n\nThe DO statement is convenient to use with RELEASE_LOCK(). See [HELP\nDO].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(369, 'IS NULL', 18, 'Syntax:\nIS NULL\n\nTests whether a value is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 1 IS NULL, 0 IS NULL, NULL IS NULL;\n        -> 0, 0, 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(370, 'CONVERT_TZ', 31, 'Syntax:\nCONVERT_TZ(dt,from_tz,to_tz)\n\nCONVERT_TZ() converts a datetime value dt from the time zone given by\nfrom_tz to the time zone given by to_tz and returns the resulting\nvalue. Time zones are specified as described in\nhttp://dev.mysql.com/doc/refman/5.1/en/time-zone-support.html. This\nfunction returns NULL if the arguments are invalid.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT CONVERT_TZ(''2004-01-01 12:00:00'',''GMT'',''MET'');\n        -> ''2004-01-01 13:00:00''\nmysql> SELECT CONVERT_TZ(''2004-01-01 12:00:00'',''+00:00'',''+10:00'');\n        -> ''2004-01-01 22:00:00''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(371, 'TIME_TO_SEC', 31, 'Syntax:\nTIME_TO_SEC(time)\n\nReturns the time argument, converted to seconds.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIME_TO_SEC(''22:23:00'');\n        -> 80580\nmysql> SELECT TIME_TO_SEC(''00:39:38'');\n        -> 2378\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(372, 'WEEKDAY', 31, 'Syntax:\nWEEKDAY(date)\n\nReturns the weekday index for date (0 = Monday, 1 = Tuesday, ... 6 =\nSunday).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT WEEKDAY(''2008-02-03 22:23:00'');\n        -> 6\nmysql> SELECT WEEKDAY(''2007-11-06'');\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(373, 'EXPORT_SET', 36, 'Syntax:\nEXPORT_SET(bits,on,off[,separator[,number_of_bits]])\n\nReturns a string such that for every bit set in the value bits, you get\nan on string and for every bit not set in the value, you get an off\nstring. Bits in bits are examined from right to left (from low-order to\nhigh-order bits). Strings are added to the result from left to right,\nseparated by the separator string (the default being the comma\ncharacter ","). The number of bits examined is given by number_of_bits\n(defaults to 64).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT EXPORT_SET(5,''Y'',''N'','','',4);\n        -> ''Y,N,Y,N''\nmysql> SELECT EXPORT_SET(6,''1'',''0'','','',10);\n        -> ''0,1,1,0,0,0,0,0,0,0''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(374, 'ALTER SERVER', 38, 'Syntax:\nALTER SERVER  server_name\n    OPTIONS (option [, option] ...)\n\nAlters the server information for server_name, adjusting the specified\noptions as per the CREATE SERVER statement. See [HELP CREATE SERVER].\nThe corresponding fields in the mysql.servers table are updated\naccordingly. This statement requires the SUPER privilege.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-server.html\n\n', 'ALTER SERVER s OPTIONS (USER ''sally'');\n', 'http://dev.mysql.com/doc/refman/5.1/en/alter-server.html'),
(375, 'TIME FUNCTION', 31, 'Syntax:\nTIME(expr)\n\nExtracts the time part of the time or datetime expression expr and\nreturns it as a string.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT TIME(''2003-12-31 01:02:03'');\n        -> ''01:02:03''\nmysql> SELECT TIME(''2003-12-31 01:02:03.000123'');\n        -> ''01:02:03.000123''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(376, 'DATE_ADD', 31, 'Syntax:\nDATE_ADD(date,INTERVAL expr unit), DATE_SUB(date,INTERVAL expr unit)\n\nThese functions perform date arithmetic. The date argument specifies\nthe starting date or datetime value. expr is an expression specifying\nthe interval value to be added or subtracted from the starting date.\nexpr is a string; it may start with a "-" for negative intervals. unit\nis a keyword indicating the units in which the expression should be\ninterpreted.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT ''2008-12-31 23:59:59'' + INTERVAL 1 SECOND;\n        -> ''2009-01-01 00:00:00''\nmysql> SELECT INTERVAL 1 DAY + ''2008-12-31'';\n        -> ''2009-01-01''\nmysql> SELECT ''2005-01-01'' - INTERVAL 1 SECOND;\n        -> ''2004-12-31 23:59:59''\nmysql> SELECT DATE_ADD(''2000-12-31 23:59:59'',\n    ->                 INTERVAL 1 SECOND);\n        -> ''2001-01-01 00:00:00''\nmysql> SELECT DATE_ADD(''2010-12-31 23:59:59'',\n    ->                 INTERVAL 1 DAY);\n        -> ''2011-01-01 23:59:59''\nmysql> SELECT DATE_ADD(''2100-12-31 23:59:59'',\n    ->                 INTERVAL ''1:1'' MINUTE_SECOND);\n        -> ''2101-01-01 00:01:00''\nmysql> SELECT DATE_SUB(''2005-01-01 00:00:00'',\n    ->                 INTERVAL ''1 1:1:1'' DAY_SECOND);\n        -> ''2004-12-30 22:58:59''\nmysql> SELECT DATE_ADD(''1900-01-01 00:00:00'',\n    ->                 INTERVAL ''-1 10'' DAY_HOUR);\n        -> ''1899-12-30 14:00:00''\nmysql> SELECT DATE_SUB(''1998-01-02'', INTERVAL 31 DAY);\n        -> ''1997-12-02''\nmysql> SELECT DATE_ADD(''1992-12-31 23:59:59.000002'',\n    ->            INTERVAL ''1.999999'' SECOND_MICROSECOND);\n        -> ''1993-01-01 00:00:01.000001''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(377, 'CAST', 36, 'Syntax:\nCAST(expr AS type)\n\nThe CAST() function takes a value of one type and produce a value of\nanother type, similar to CONVERT(). See the description of CONVERT()\nfor more information.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/cast-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/cast-functions.html'),
(378, 'SOUNDS LIKE', 36, 'Syntax:\nexpr1 SOUNDS LIKE expr2\n\nThis is the same as SOUNDEX(expr1) = SOUNDEX(expr2).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(379, 'PERIOD_DIFF', 31, 'Syntax:\nPERIOD_DIFF(P1,P2)\n\nReturns the number of months between periods P1 and P2. P1 and P2\nshould be in the format YYMM or YYYYMM. Note that the period arguments\nP1 and P2 are not date values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT PERIOD_DIFF(200802,200703);\n        -> 11\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(380, 'LIKE', 36, 'Syntax:\nexpr LIKE pat [ESCAPE ''escape_char'']\n\nPattern matching using SQL simple regular expression comparison.\nReturns 1 (TRUE) or 0 (FALSE). If either expr or pat is NULL, the\nresult is NULL.\n\nThe pattern need not be a literal string. For example, it can be\nspecified as a string expression or table column.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html\n\n', 'mysql> SELECT ''David!'' LIKE ''David_'';\n        -> 1\nmysql> SELECT ''David!'' LIKE ''%D%v%'';\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html'),
(381, 'MULTIPOINT', 24, 'MultiPoint(pt1,pt2,...)\n\nConstructs a MultiPoint value using Point or WKB Point arguments.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-mysql-specific-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-mysql-specific-functions'),
(382, '>>', 19, 'Syntax:\n>>\n\nShifts a longlong (BIGINT) number to the right.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT 4 >> 2;\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html'),
(383, 'FETCH', 23, 'Syntax:\nFETCH cursor_name INTO var_name [, var_name] ...\n\nThis statement fetches the next row (if a row exists) using the\nspecified open cursor, and advances the cursor pointer.\n\nIf no more rows are available, a No Data condition occurs with SQLSTATE\nvalue 02000. To detect this condition, you can set up a handler for it\n(or for a NOT FOUND condition). An example is shown in\nhttp://dev.mysql.com/doc/refman/5.1/en/cursors.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/fetch.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/fetch.html'),
(384, 'AVG', 16, 'Syntax:\nAVG([DISTINCT] expr)\n\nReturns the average value of expr. The DISTINCT option can be used to\nreturn the average of the distinct values of expr.\n\nAVG() returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', 'mysql> SELECT student_name, AVG(test_score)\n    ->        FROM student\n    ->        GROUP BY student_name;\n', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(385, 'TRUE FALSE', 29, 'The constants TRUE and FALSE evaluate to 1 and 0, respectively. The\nconstant names can be written in any lettercase.\n\nmysql> SELECT TRUE, true, FALSE, false;\n        -> 1, 1, 0, 0\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/boolean-values.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/boolean-values.html'),
(386, 'MBRWITHIN', 6, 'MBRWithin(g1,g2)\n\nReturns 1 or 0 to indicate whether the Minimum Bounding Rectangle of g1\nis within the Minimum Bounding Rectangle of g2. This tests the opposite\nrelationship as MBRContains().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html\n\n', 'mysql> SET @g1 = GeomFromText(''Polygon((0 0,0 3,3 3,3 0,0 0))'');\nmysql> SET @g2 = GeomFromText(''Polygon((0 0,0 5,5 5,5 0,0 0))'');\nmysql> SELECT MBRWithin(@g1,@g2), MBRWithin(@g2,@g1);\n+--------------------+--------------------+\n| MBRWithin(@g1,@g2) | MBRWithin(@g2,@g1) |\n+--------------------+--------------------+\n|                  1 |                  0 |\n+--------------------+--------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/relations-on-geometry-mbr.html'),
(387, 'IN', 18, 'Syntax:\nexpr IN (value,...)\n\nReturns 1 if expr is equal to any of the values in the IN list, else\nreturns 0. If all values are constants, they are evaluated according to\nthe type of expr and sorted. The search for the item then is done using\na binary search. This means IN is very quick if the IN value list\nconsists entirely of constants. Otherwise, type conversion takes place\naccording to the rules described in\nhttp://dev.mysql.com/doc/refman/5.1/en/type-conversion.html, but\napplied to all the arguments.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 2 IN (0,3,5,7);\n        -> 0\nmysql> SELECT ''wefwf'' IN (''wee'',''wefwf'',''weg'');\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(388, 'QUOTE', 36, 'Syntax:\nQUOTE(str)\n\nQuotes a string to produce a result that can be used as a properly\nescaped data value in an SQL statement. The string is returned enclosed\nby single quotation marks and with each instance of single quote ("''"),\nbackslash ("\\"), ASCII NUL, and Control-Z preceded by a backslash. If\nthe argument is NULL, the return value is the word "NULL" without\nenclosing single quotation marks.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT QUOTE(''Don\\''t!'');\n        -> ''Don\\''t!''\nmysql> SELECT QUOTE(NULL);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(389, 'SESSION_USER', 17, 'Syntax:\nSESSION_USER()\n\nSESSION_USER() is a synonym for USER().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(390, 'HELP COMMAND', 26, 'Syntax:\nmysql> help search_string\n\nIf you provide an argument to the help command, mysql uses it as a\nsearch string to access server-side help from the contents of the MySQL\nReference Manual. The proper operation of this command requires that\nthe help tables in the mysql database be initialized with help topic\ninformation (see\nhttp://dev.mysql.com/doc/refman/5.1/en/server-side-help-support.html).\n\nIf there is no match for the search string, the search fails:\n\nmysql> help me\n\nNothing found\nPlease try to run ''help contents'' for a list of all accessible topics\n\nUse help contents to see a list of the help categories:\n\nmysql> help contents\nYou asked for help about help category: "Contents"\nFor more information, type ''help <item>'', where <item> is one of the\nfollowing categories:\n   Account Management\n   Administration\n   Data Definition\n   Data Manipulation\n   Data Types\n   Functions\n   Functions and Modifiers for Use with GROUP BY\n   Geographic Features\n   Language Structure\n   Plugins\n   Storage Engines\n   Stored Routines\n   Table Maintenance\n   Transactions\n   Triggers\n\nIf the search string matches multiple items, mysql shows a list of\nmatching topics:\n\nmysql> help logs\nMany help items for your request exist.\nTo make a more specific request, please type ''help <item>'',\nwhere <item> is one of the following topics:\n   SHOW\n   SHOW BINARY LOGS\n   SHOW ENGINE\n   SHOW LOGS\n\nUse a topic as the search string to see the help entry for that topic:\n\nmysql> help show binary logs\nName: ''SHOW BINARY LOGS''\nDescription:\nSyntax:\nSHOW BINARY LOGS\nSHOW MASTER LOGS\n\nLists the binary log files on the server. This statement is used as\npart of the procedure described in [purge-binary-logs], that shows how\nto determine which logs can be purged.\n\nmysql> SHOW BINARY LOGS;\n+---------------+-----------+\n| Log_name      | File_size |\n+---------------+-----------+\n| binlog.000015 |    724935 |\n| binlog.000016 |    733481 |\n+---------------+-----------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mysql-server-side-help.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/mysql-server-side-help.html'),
(391, 'QUARTER', 31, 'Syntax:\nQUARTER(date)\n\nReturns the quarter of the year for date, in the range 1 to 4.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT QUARTER(''2008-04-01'');\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(392, 'POSITION', 36, 'Syntax:\nPOSITION(substr IN str)\n\nPOSITION(substr IN str) is a synonym for LOCATE(substr,str).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(393, 'SHOW CREATE FUNCTION', 26, 'Syntax:\nSHOW CREATE FUNCTION func_name\n\nThis statement is similar to SHOW CREATE PROCEDURE but for stored\nfunctions. See [HELP SHOW CREATE PROCEDURE].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-function.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-function.html'),
(394, 'IS_USED_LOCK', 15, 'Syntax:\nIS_USED_LOCK(str)\n\nChecks whether the lock named str is in use (that is, locked). If so,\nit returns the connection identifier of the client that holds the lock.\nOtherwise, it returns NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(395, 'POLYFROMTEXT', 3, 'PolyFromText(wkt[,srid]), PolygonFromText(wkt[,srid])\n\nConstructs a POLYGON value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkt-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkt-functions'),
(396, 'DES_ENCRYPT', 12, 'Syntax:\nDES_ENCRYPT(str[,{key_num|key_str}])\n\nEncrypts the string with the given key using the Triple-DES algorithm.\n\nThis function works only if MySQL has been configured with SSL support.\nSee http://dev.mysql.com/doc/refman/5.1/en/secure-connections.html.\n\nThe encryption key to use is chosen based on the second argument to\nDES_ENCRYPT(), if one was given. With no argument, the first key from\nthe DES key file is used. With a key_num argument, the given key number\n(0 to 9) from the DES key file is used. With a key_str argument, the\ngiven key string is used to encrypt str.\n\nThe key file can be specified with the --des-key-file server option.\n\nThe return string is a binary string where the first character is\nCHAR(128 | key_num). If an error occurs, DES_ENCRYPT() returns NULL.\n\nThe 128 is added to make it easier to recognize an encrypted key. If\nyou use a string key, key_num is 127.\n\nThe string length for the result is given by this formula:\n\nnew_len = orig_len + (8 - (orig_len % 8)) + 1\n\nEach line in the DES key file has the following format:\n\nkey_num des_key_str\n\nEach key_num value must be a number in the range from 0 to 9. Lines in\nthe file may be in any order. des_key_str is the string that is used to\nencrypt the message. There should be at least one space between the\nnumber and the key. The first key is the default key that is used if\nyou do not specify any key argument to DES_ENCRYPT().\n\nYou can tell MySQL to read new key values from the key file with the\nFLUSH DES_KEY_FILE statement. This requires the RELOAD privilege.\n\nOne benefit of having a set of default keys is that it gives\napplications a way to check for the existence of encrypted column\nvalues, without giving the end user the right to decrypt those values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT customer_address FROM customer_table \n     > WHERE crypted_credit_card = DES_ENCRYPT(''credit_card_number'');\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(397, 'CEIL', 4, 'Syntax:\nCEIL(X)\n\nCEIL() is a synonym for CEILING().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(398, 'LENGTH', 36, 'Syntax:\nLENGTH(str)\n\nReturns the length of the string str, measured in bytes. A multi-byte\ncharacter counts as multiple bytes. This means that for a string\ncontaining five two-byte characters, LENGTH() returns 10, whereas\nCHAR_LENGTH() returns 5.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT LENGTH(''text'');\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(399, 'STR_TO_DATE', 31, 'Syntax:\nSTR_TO_DATE(str,format)\n\nThis is the inverse of the DATE_FORMAT() function. It takes a string\nstr and a format string format. STR_TO_DATE() returns a DATETIME value\nif the format string contains both date and time parts, or a DATE or\nTIME value if the string contains only date or time parts. If the date,\ntime, or datetime value extracted from str is illegal, STR_TO_DATE()\nreturns NULL and produces a warning.\n\nThe server scans str attempting to match format to it. The format\nstring can contain literal characters and format specifiers beginning\nwith %. Literal characters in format must match literally in str.\nFormat specifiers in format must match a date or time part in str. For\nthe specifiers that can be used in format, see the DATE_FORMAT()\nfunction description.\n\nmysql> SELECT STR_TO_DATE(''01,5,2013'',''%d,%m,%Y'');\n        -> ''2013-05-01''\nmysql> SELECT STR_TO_DATE(''May 1, 2013'',''%M %d,%Y'');\n        -> ''2013-05-01''\n\nScanning starts at the beginning of str and fails if format is found\nnot to match. Extra characters at the end of str are ignored.\n\nmysql> SELECT STR_TO_DATE(''a09:30:17'',''a%h:%i:%s'');\n        -> ''09:30:17''\nmysql> SELECT STR_TO_DATE(''a09:30:17'',''%h:%i:%s'');\n        -> NULL\nmysql> SELECT STR_TO_DATE(''09:30:17a'',''%h:%i:%s'');\n        -> ''09:30:17''\n\nUnspecified date or time parts have a value of 0, so incompletely\nspecified values in str produce a result with some or all parts set to\n0:\n\nmysql> SELECT STR_TO_DATE(''abc'',''abc'');\n        -> ''0000-00-00''\nmysql> SELECT STR_TO_DATE(''9'',''%m'');\n        -> ''0000-09-00''\nmysql> SELECT STR_TO_DATE(''9'',''%s'');\n        -> ''00:00:09''\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(400, 'Y', 11, 'Y(p)\n\nReturns the Y-coordinate value for the Point object p as a\ndouble-precision number.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#point-property-functions\n\n', 'mysql> SELECT Y(POINT(56.7, 53.34));\n+-----------------------+\n| Y(POINT(56.7, 53.34)) |\n+-----------------------+\n|                 53.34 |\n+-----------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#point-property-functions'),
(401, 'SHOW INNODB STATUS', 26, 'Syntax:\nSHOW INNODB STATUS\n\nIn MySQL 5.1, this is a deprecated synonym for SHOW ENGINE INNODB\nSTATUS. See [HELP SHOW ENGINE]. SHOW INNODB STATUS is removed in MySQL\n5.5.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-innodb-status.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-innodb-status.html'),
(402, 'CHECKSUM TABLE', 20, 'Syntax:\nCHECKSUM TABLE tbl_name [, tbl_name] ... [ QUICK | EXTENDED ]\n\nCHECKSUM TABLE reports a table checksum.\n\nWith QUICK, the live table checksum is reported if it is available, or\nNULL otherwise. This is very fast. A live checksum is enabled by\nspecifying the CHECKSUM=1 table option when you create the table;\ncurrently, this is supported only for MyISAM tables. See [HELP CREATE\nTABLE].\n\nWith EXTENDED, the entire table is read row by row and the checksum is\ncalculated. This can be very slow for large tables.\n\nIf neither QUICK nor EXTENDED is specified, MySQL returns a live\nchecksum if the table storage engine supports it and scans the table\notherwise.\n\nFor a nonexistent table, CHECKSUM TABLE returns NULL and generates a\nwarning.\n\nThe checksum value depends on the table row format. If the row format\nchanges, the checksum also changes. For example, the storage format for\nVARCHAR changed between MySQL 4.1 and 5.0, so if a 4.1 table is\nupgraded to MySQL 5.0, the checksum value may change.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/checksum-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/checksum-table.html'),
(403, 'NUMINTERIORRINGS', 2, 'NumInteriorRings(poly)\n\nReturns the number of interior rings in the Polygon value poly.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#polygon-property-functions\n\n', 'mysql> SET @poly =\n    -> ''Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))'';\nmysql> SELECT NumInteriorRings(GeomFromText(@poly));\n+---------------------------------------+\n| NumInteriorRings(GeomFromText(@poly)) |\n+---------------------------------------+\n|                                     1 |\n+---------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#polygon-property-functions'),
(404, 'INTERIORRINGN', 2, 'InteriorRingN(poly,N)\n\nReturns the N-th interior ring for the Polygon value poly as a\nLineString. Rings are numbered beginning with 1.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#polygon-property-functions\n\n', 'mysql> SET @poly =\n    -> ''Polygon((0 0,0 3,3 3,3 0,0 0),(1 1,1 2,2 2,2 1,1 1))'';\nmysql> SELECT AsText(InteriorRingN(GeomFromText(@poly),1));\n+----------------------------------------------+\n| AsText(InteriorRingN(GeomFromText(@poly),1)) |\n+----------------------------------------------+\n| LINESTRING(1 1,1 2,2 2,2 1,1 1)              |\n+----------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#polygon-property-functions'),
(405, 'UTC_TIME', 31, 'Syntax:\nUTC_TIME, UTC_TIME()\n\nReturns the current UTC time as a value in ''HH:MM:SS'' or HHMMSS.uuuuuu\nformat, depending on whether the function is used in a string or\nnumeric context.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT UTC_TIME(), UTC_TIME() + 0;\n        -> ''18:07:53'', 180753.000000\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(406, 'DROP FUNCTION', 38, 'The DROP FUNCTION statement is used to drop stored functions and\nuser-defined functions (UDFs):\n\no For information about dropping stored functions, see [HELP DROP\n  PROCEDURE].\n\no For information about dropping user-defined functions, see [HELP DROP\n  FUNCTION UDF].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-function.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-function.html'),
(407, 'ALTER EVENT', 38, 'Syntax:\nALTER\n    [DEFINER = { user | CURRENT_USER }]\n    EVENT event_name\n    [ON SCHEDULE schedule]\n    [ON COMPLETION [NOT] PRESERVE]\n    [RENAME TO new_event_name]\n    [ENABLE | DISABLE | DISABLE ON SLAVE]\n    [COMMENT ''comment'']\n    [DO event_body]\n\nThe ALTER EVENT statement is used to change one or more of the\ncharacteristics of an existing event without the need to drop and\nrecreate it. The syntax for each of the DEFINER, ON SCHEDULE, ON\nCOMPLETION, COMMENT, ENABLE / DISABLE, and DO clauses is exactly the\nsame as when used with CREATE EVENT. (See [HELP CREATE EVENT].)\n\nSupport for the DEFINER clause was added in MySQL 5.1.17.\n\nBeginning with MySQL 5.1.12, this statement requires the EVENT\nprivilege. When a user executes a successful ALTER EVENT statement,\nthat user becomes the definer for the affected event.\n\n(In MySQL 5.1.11 and earlier, an event could be altered only by its\ndefiner, or by a user having the SUPER privilege.)\n\nALTER EVENT works only with an existing event:\n\nmysql> ALTER EVENT no_such_event \n     >     ON SCHEDULE \n     >       EVERY ''2:3'' DAY_HOUR;\nERROR 1517 (HY000): Unknown event ''no_such_event''\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-event.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/alter-event.html'),
(408, 'STDDEV', 16, 'Syntax:\nSTDDEV(expr)\n\nReturns the population standard deviation of expr. This function is\nprovided for compatibility with Oracle. The standard SQL function\nSTDDEV_POP() can be used instead.\n\nThis function returns NULL if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(409, 'DATE_SUB', 31, 'Syntax:\nDATE_SUB(date,INTERVAL expr unit)\n\nSee the description for DATE_ADD().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(410, 'PERIOD_ADD', 31, 'Syntax:\nPERIOD_ADD(P,N)\n\nAdds N months to period P (in the format YYMM or YYYYMM). Returns a\nvalue in the format YYYYMM. Note that the period argument P is not a\ndate value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT PERIOD_ADD(200801,2);\n        -> 200803\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(411, '|', 19, 'Syntax:\n|\n\nBitwise OR:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT 29 | 15;\n        -> 31\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html'),
(412, 'GEOMFROMTEXT', 3, 'GeomFromText(wkt[,srid]), GeometryFromText(wkt[,srid])\n\nConstructs a geometry value of any type using its WKT representation\nand SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkt-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkt-functions'),
(413, 'UUID_SHORT', 15, 'Syntax:\nUUID_SHORT()\n\nReturns a "short" universal identifier as a 64-bit unsigned integer\n(rather than a string-form 128-bit identifier as returned by the UUID()\nfunction).\n\nThe value of UUID_SHORT() is guaranteed to be unique if the following\nconditions hold:\n\no The server_id of the current host is unique among your set of master\n  and slave servers\n\no server_id is between 0 and 255\n\no You do not set back your system time for your server between mysqld\n  restarts\n\no You do not invoke UUID_SHORT() on average more than 16 million times\n  per second between mysqld restarts\n\nThe UUID_SHORT() return value is constructed this way:\n\n  (server_id & 255) << 56\n+ (server_startup_time_in_seconds << 24)\n+ incremented_variable++;\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> SELECT UUID_SHORT();\n        -> 92395783831158784\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(414, 'RIGHT', 36, 'Syntax:\nRIGHT(str,len)\n\nReturns the rightmost len characters from the string str, or NULL if\nany argument is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT RIGHT(''foobarbar'', 4);\n        -> ''rbar''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(415, 'DATEDIFF', 31, 'Syntax:\nDATEDIFF(expr1,expr2)\n\nDATEDIFF() returns expr1 - expr2 expressed as a value in days from one\ndate to the other. expr1 and expr2 are date or date-and-time\nexpressions. Only the date parts of the values are used in the\ncalculation.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATEDIFF(''2007-12-31 23:59:59'',''2007-12-30'');\n        -> 1\nmysql> SELECT DATEDIFF(''2010-11-30 23:59:59'',''2010-12-31'');\n        -> -31\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(416, 'DROP TABLESPACE', 38, 'Syntax:\nDROP TABLESPACE tablespace_name\n    ENGINE [=] engine_name\n\nThis statement drops a tablespace that was previously created using\nCREATE TABLESPACE (see [HELP CREATE TABLESPACE]).\n\n*Important*: The tablespace to be dropped must not contain any data\nfiles; in other words, before you can drop a tablespace, you must first\ndrop each of its data files using ALTER TABLESPACE ... DROP DATAFILE\n(see [HELP ALTER TABLESPACE]).\n\nThe ENGINE clause (required) specifies the storage engine used by the\ntablespace. In MySQL 5.1, the only accepted values for engine_name are\nNDB and NDBCLUSTER.\n\nDROP TABLESPACE was added in MySQL 5.1.6. In MySQL 5.1, it is useful\nonly with Disk Data storage for MySQL Cluster. See\nhttp://dev.mysql.com/doc/refman/5.1/en/mysql-cluster-disk-data.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-tablespace.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-tablespace.html'),
(417, 'DROP PROCEDURE', 38, 'Syntax:\nDROP {PROCEDURE | FUNCTION} [IF EXISTS] sp_name\n\nThis statement is used to drop a stored procedure or function. That is,\nthe specified routine is removed from the server. You must have the\nALTER ROUTINE privilege for the routine. (If the\nautomatic_sp_privileges system variable is enabled, that privilege and\nEXECUTE are granted automatically to the routine creator when the\nroutine is created and dropped from the creator when the routine is\ndropped. See\nhttp://dev.mysql.com/doc/refman/5.1/en/stored-routines-privileges.html.\n)\n\nThe IF EXISTS clause is a MySQL extension. It prevents an error from\noccurring if the procedure or function does not exist. A warning is\nproduced that can be viewed with SHOW WARNINGS.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/drop-procedure.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/drop-procedure.html'),
(418, 'CHECK TABLE', 20, 'Syntax:\nCHECK TABLE tbl_name [, tbl_name] ... [option] ...\n\noption = {FOR UPGRADE | QUICK | FAST | MEDIUM | EXTENDED | CHANGED}\n\nCHECK TABLE checks a table or tables for errors. CHECK TABLE works for\nMyISAM, InnoDB, and ARCHIVE tables. Starting with MySQL 5.1.9, CHECK\nTABLE is also valid for CSV tables, see\nhttp://dev.mysql.com/doc/refman/5.1/en/csv-storage-engine.html. For\nMyISAM tables, the key statistics are updated as well.\n\nCHECK TABLE can also check views for problems, such as tables that are\nreferenced in the view definition that no longer exist.\n\nBeginning with MySQL 5.1.27, CHECK TABLE is also supported for\npartitioned tables. Also beginning with MySQL 5.1.27, you can use ALTER\nTABLE ... CHECK PARTITION to check one or more partitions; for more\ninformation, see [HELP ALTER TABLE], and\nhttp://dev.mysql.com/doc/refman/5.1/en/partitioning-maintenance.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/check-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/check-table.html'),
(419, 'BIN', 36, 'Syntax:\nBIN(N)\n\nReturns a string representation of the binary value of N, where N is a\nlonglong (BIGINT) number. This is equivalent to CONV(N,10,2). Returns\nNULL if N is NULL.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT BIN(12);\n        -> ''1100''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(420, 'INSTALL PLUGIN', 5, 'Syntax:\nINSTALL PLUGIN plugin_name SONAME ''shared_library_name''\n\nThis statement installs a server plugin. It requires the INSERT\nprivilege for the mysql.plugin table.\n\nplugin_name is the name of the plugin as defined in the plugin\ndescriptor structure contained in the library file (see\nhttp://dev.mysql.com/doc/refman/5.1/en/plugin-data-structures.html).\nPlugin names are not case sensitive. For maximal compatibility, plugin\nnames should be limited to ASCII letters, digits, and underscore\nbecause they are used in C source files, shell command lines, M4 and\nBourne shell scripts, and SQL environments.\n\nshared_library_name is the name of the shared library that contains the\nplugin code. The name includes the file name extension (for example,\nlibmyplugin.so, libmyplugin.dll, or libmyplugin.dylib).\n\nThe shared library must be located in the plugin directory (the\ndirectory named by the plugin_dir system variable). The library must be\nin the plugin directory itself, not in a subdirectory. By default,\nplugin_dir is the plugin directory under the directory named by the\npkglibdir configuration variable, but it can be changed by setting the\nvalue of plugin_dir at server startup. For example, set its value in a\nmy.cnf file:\n\n[mysqld]\nplugin_dir=/path/to/plugin/directory\n\nIf the value of plugin_dir is a relative path name, it is taken to be\nrelative to the MySQL base directory (the value of the basedir system\nvariable).\n\nINSTALL PLUGIN loads and initializes the plugin code to make the plugin\navailable for use. A plugin is initialized by executing its\ninitialization function, which handles any setup that the plugin must\nperform before it can be used. When the server shuts down, it executes\nthe deinitialization function for each plugin that is loaded so that\nthe plugin has a change to perform any final cleanup.\n\nINSTALL PLUGIN also registers the plugin by adding a line that\nindicates the plugin name and library file name to the mysql.plugin\ntable. At server startup, the server loads and initializes any plugin\nthat is listed in the mysql.plugin table. This means that a plugin is\ninstalled with INSTALL PLUGIN only once, not every time the server\nstarts. Plugin loading at startup does not occur if the server is\nstarted with the --skip-grant-tables option.\n\nA plugin library can contain multiple plugins. For each of them to be\ninstalled, use a separate INSTALL PLUGIN statement. Each statement\nnames a different plugin, but all of them specify the same library\nname.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/install-plugin.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/install-plugin.html'),
(421, 'DECLARE CURSOR', 23, 'Syntax:\nDECLARE cursor_name CURSOR FOR select_statement\n\nThis statement declares a cursor. Multiple cursors may be declared in a\nstored program, but each cursor in a given block must have a unique\nname.\n\nThe SELECT statement cannot have an INTO clause.\n\nLocal variables should not be declared with the same name as columns\nreferenced by the SELECT statement, for reasons described in\nhttp://dev.mysql.com/doc/refman/5.1/en/local-variable-scope.html.\n\nFor information available through SHOW statements, it is possible in\nmany cases to obtain equivalent information by using a cursor with an\nINFORMATION_SCHEMA table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/declare-cursor.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/declare-cursor.html'),
(422, 'LOAD DATA', 27, 'Syntax:\nLOAD DATA [LOW_PRIORITY | CONCURRENT] [LOCAL] INFILE ''file_name''\n    [REPLACE | IGNORE]\n    INTO TABLE tbl_name\n    [CHARACTER SET charset_name]\n    [{FIELDS | COLUMNS}\n        [TERMINATED BY ''string'']\n        [[OPTIONALLY] ENCLOSED BY ''char'']\n        [ESCAPED BY ''char'']\n    ]\n    [LINES\n        [STARTING BY ''string'']\n        [TERMINATED BY ''string'']\n    ]\n    [IGNORE number LINES]\n    [(col_name_or_user_var,...)]\n    [SET col_name = expr,...]\n\nThe LOAD DATA INFILE statement reads rows from a text file into a table\nat a very high speed. The file name must be given as a literal string.\n\nLOAD DATA INFILE is the complement of SELECT ... INTO OUTFILE. (See\nhttp://dev.mysql.com/doc/refman/5.1/en/select.html.) To write data from\na table to a file, use SELECT ... INTO OUTFILE. To read the file back\ninto a table, use LOAD DATA INFILE. The syntax of the FIELDS and LINES\nclauses is the same for both statements. Both clauses are optional, but\nFIELDS must precede LINES if both are specified.\n\nFor more information about the efficiency of INSERT versus LOAD DATA\nINFILE and speeding up LOAD DATA INFILE, see\nhttp://dev.mysql.com/doc/refman/5.1/en/insert-speed.html.\n\nThe character set indicated by the character_set_database system\nvariable is used to interpret the information in the file. SET NAMES\nand the setting of character_set_client do not affect interpretation of\ninput. If the contents of the input file use a character set that\ndiffers from the default, it is usually preferable to specify the\ncharacter set of the file by using the CHARACTER SET clause, which is\navailable as of MySQL 5.1.17. A character set of binary specifies "no\nconversion."\n\nLOAD DATA INFILE interprets all fields in the file as having the same\ncharacter set, regardless of the data types of the columns into which\nfield values are loaded. For proper interpretation of file contents,\nyou must ensure that it was written with the correct character set. For\nexample, if you write a data file with mysqldump -T or by issuing a\nSELECT ... INTO OUTFILE statement in mysql, be sure to use a\n--default-character-set option with mysqldump or mysql so that output\nis written in the character set to be used when the file is loaded with\nLOAD DATA INFILE.\n\nNote that it is currently not possible to load data files that use the\nucs2 character set.\n\nAs of MySQL 5.1.6, the character_set_filesystem system variable\ncontrols the interpretation of the file name.\n\nYou can also load data files by using the mysqlimport utility; it\noperates by sending a LOAD DATA INFILE statement to the server. The\n--local option causes mysqlimport to read data files from the client\nhost. You can specify the --compress option to get better performance\nover slow networks if the client and server support the compressed\nprotocol. See http://dev.mysql.com/doc/refman/5.1/en/mysqlimport.html.\n\nIf you use LOW_PRIORITY, execution of the LOAD DATA statement is\ndelayed until no other clients are reading from the table. This affects\nonly storage engines that use only table-level locking (such as MyISAM,\nMEMORY, and MERGE).\n\nIf you specify CONCURRENT with a MyISAM table that satisfies the\ncondition for concurrent inserts (that is, it contains no free blocks\nin the middle), other threads can retrieve data from the table while\nLOAD DATA is executing. Using this option affects the performance of\nLOAD DATA a bit, even if no other thread is using the table at the same\ntime.\n\nPrior to MySQL 5.1.43, CONCURRENT was not replicated when using\nstatement-based replication (see Bug#34628\n(http://bugs.mysql.com/bug.php?id=34628)). However, it is replicated\nwhen using row-based replication, regardless of the version. See\nhttp://dev.mysql.com/doc/refman/5.1/en/replication-features-load-data.h\ntml, for more information.\n\n*Note*: Prior to MySQL 5.1.23, LOAD DATA performed very poorly when\nimporting into partitioned tables. The statement now uses buffering to\nimprove performance; however, the buffer uses 130KB memory per\npartition to achieve this. (Bug#26527\n(http://bugs.mysql.com/bug.php?id=26527))\n\nThe LOCAL keyword, if specified, is interpreted with respect to the\nclient end of the connection:\n\no If LOCAL is specified, the file is read by the client program on the\n  client host and sent to the server. The file can be given as a full\n  path name to specify its exact location. If given as a relative path\n  name, the name is interpreted relative to the directory in which the\n  client program was started.\n\no If LOCAL is not specified, the file must be located on the server\n  host and is read directly by the server. The server uses the\n  following rules to locate the file:\n\n  o If the file name is an absolute path name, the server uses it as\n    given.\n\n  o If the file name is a relative path name with one or more leading\n    components, the server searches for the file relative to the\n    server''s data directory.\n\n  o If a file name with no leading components is given, the server\n    looks for the file in the database directory of the default\n    database.\n\nNote that, in the non-LOCAL case, these rules mean that a file named as\n./myfile.txt is read from the server''s data directory, whereas the file\nnamed as myfile.txt is read from the database directory of the default\ndatabase. For example, if db1 is the default database, the following\nLOAD DATA statement reads the file data.txt from the database directory\nfor db1, even though the statement explicitly loads the file into a\ntable in the db2 database:\n\nLOAD DATA INFILE ''data.txt'' INTO TABLE db2.my_table;\n\nWindows path names are specified using forward slashes rather than\nbackslashes. If you do use backslashes, you must double them.\n\n*Note*: A regression in MySQL 5.1.40 caused the database referenced in\na fully qualified table name to be ignored by LOAD DATA when using\nreplication with either STATEMENT or MIXED as the binary logging\nformat; this could lead to problems if the table was not in the current\ndatabase. As a workaround, you can specify the correct database with\nthe USE statement prior to executing LOAD DATA. If necessary, you can\nreset the default database with a second USE statement following the\nLOAD DATA statement. This issue was fixed in MySQL 5.1.41. (Bug#48297\n(http://bugs.mysql.com/bug.php?id=48297))\n\nFor security reasons, when reading text files located on the server,\nthe files must either reside in the database directory or be readable\nby all. Also, to use LOAD DATA INFILE on server files, you must have\nthe FILE privilege. See\nhttp://dev.mysql.com/doc/refman/5.1/en/privileges-provided.html. For\nnon-LOCAL load operations, if the secure_file_priv system variable is\nset to a nonempty directory name, the file to be loaded must be located\nin that directory.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/load-data.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/load-data.html'),
(423, 'MULTILINESTRING', 24, 'MultiLineString(ls1,ls2,...)\n\nConstructs a MultiLineString value using LineString or WKB LineString\narguments.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-mysql-specific-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-mysql-specific-functions'),
(424, 'LOCALTIME', 31, 'Syntax:\nLOCALTIME, LOCALTIME()\n\nLOCALTIME and LOCALTIME() are synonyms for NOW().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(425, 'MPOINTFROMTEXT', 3, 'MPointFromText(wkt[,srid]), MultiPointFromText(wkt[,srid])\n\nConstructs a MULTIPOINT value using its WKT representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkt-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkt-functions'),
(426, 'BLOB', 22, 'BLOB[(M)]\n\nA BLOB column with a maximum length of 65,535 (216 - 1) bytes. Each\nBLOB value is stored using a two-byte length prefix that indicates the\nnumber of bytes in the value.\n\nAn optional length M can be given for this type. If this is done, MySQL\ncreates the column as the smallest BLOB type large enough to hold\nvalues M bytes long.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(427, 'SHA1', 12, 'Syntax:\nSHA1(str), SHA(str)\n\nCalculates an SHA-1 160-bit checksum for the string, as described in\nRFC 3174 (Secure Hash Algorithm). The value is returned as a binary\nstring of 40 hex digits, or NULL if the argument was NULL. One of the\npossible uses for this function is as a hash key. See the notes at the\nbeginning of this section about storing hash values efficiently. You\ncan also use SHA1() as a cryptographic function for storing passwords.\nSHA() is synonymous with SHA1().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT SHA1(''abc'');\n        -> ''a9993e364706816aba3e25717850c26c9cd0d89d''\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(428, 'SUBSTR', 36, 'Syntax:\nSUBSTR(str,pos), SUBSTR(str FROM pos), SUBSTR(str,pos,len), SUBSTR(str\nFROM pos FOR len)\n\nSUBSTR() is a synonym for SUBSTRING().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(429, 'PASSWORD', 12, 'Syntax:\nPASSWORD(str)\n\nCalculates and returns a password string from the plaintext password\nstr and returns a binary string, or NULL if the argument was NULL. This\nis the function that is used for encrypting MySQL passwords for storage\nin the Password column of the user grant table.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'mysql> SELECT PASSWORD(''badpwd'');\n        -> ''*AAB3E285149C0135D51A520E1940DD3263DC008C''\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(430, 'CHAR', 22, '[NATIONAL] CHAR[(M)] [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nA fixed-length string that is always right-padded with spaces to the\nspecified length when stored. M represents the column length in\ncharacters. The range of M is 0 to 255. If M is omitted, the length is\n1.\n\n*Note*: Trailing spaces are removed when CHAR values are retrieved\nunless the PAD_CHAR_TO_FULL_LENGTH SQL mode is enabled.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(431, 'UTC_DATE', 31, 'Syntax:\nUTC_DATE, UTC_DATE()\n\nReturns the current UTC date as a value in ''YYYY-MM-DD'' or YYYYMMDD\nformat, depending on whether the function is used in a string or\nnumeric context.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT UTC_DATE(), UTC_DATE() + 0;\n        -> ''2003-08-14'', 20030814\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(432, 'DIMENSION', 35, 'Dimension(g)\n\nReturns the inherent dimension of the geometry value g. The result can\nbe -1, 0, 1, or 2. The meaning of these values is given in\nhttp://dev.mysql.com/doc/refman/5.1/en/gis-class-geometry.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#general-geometry-property-functions\n\n', 'mysql> SELECT Dimension(GeomFromText(''LineString(1 1,2 2)''));\n+------------------------------------------------+\n| Dimension(GeomFromText(''LineString(1 1,2 2)'')) |\n+------------------------------------------------+\n|                                              1 |\n+------------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#general-geometry-property-functions'),
(433, 'COUNT DISTINCT', 16, 'Syntax:\nCOUNT(DISTINCT expr,[expr...])\n\nReturns a count of the number of rows with different non-NULL expr\nvalues.\n\nCOUNT(DISTINCT) returns 0 if there were no matching rows.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html\n\n', 'mysql> SELECT COUNT(DISTINCT results) FROM student;\n', 'http://dev.mysql.com/doc/refman/5.1/en/group-by-functions.html'),
(434, 'BIT', 22, 'BIT[(M)]\n\nA bit-field type. M indicates the number of bits per value, from 1 to\n64. The default is 1 if M is omitted.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(435, 'EQUALS', 30, 'Equals(g1,g2)\n\nReturns 1 or 0 to indicate whether g1 is spatially equal to g2.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/functions-that-test-spatial-relationships-between-geometries.html'),
(436, 'SHOW CREATE VIEW', 26, 'Syntax:\nSHOW CREATE VIEW view_name\n\nThis statement shows a CREATE VIEW statement that creates the given\nview.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-create-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-create-view.html'),
(437, 'INTERVAL', 18, 'Syntax:\nINTERVAL(N,N1,N2,N3,...)\n\nReturns 0 if N < N1, 1 if N < N2 and so on or -1 if N is NULL. All\narguments are treated as integers. It is required that N1 < N2 < N3 <\n... < Nn for this function to work correctly. This is because a binary\nsearch is used (very fast).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT INTERVAL(23, 1, 15, 17, 30, 44, 200);\n        -> 3\nmysql> SELECT INTERVAL(10, 1, 10, 100, 1000);\n        -> 2\nmysql> SELECT INTERVAL(22, 23, 30, 44, 200);\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(438, 'FROM_DAYS', 31, 'Syntax:\nFROM_DAYS(N)\n\nGiven a day number N, returns a DATE value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT FROM_DAYS(730669);\n        -> ''2007-07-03''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(439, 'ALTER PROCEDURE', 38, 'Syntax:\nALTER PROCEDURE proc_name [characteristic ...]\n\ncharacteristic:\n    COMMENT ''string''\n  | { CONTAINS SQL | NO SQL | READS SQL DATA | MODIFIES SQL DATA }\n  | SQL SECURITY { DEFINER | INVOKER }\n\nThis statement can be used to change the characteristics of a stored\nprocedure. More than one change may be specified in an ALTER PROCEDURE\nstatement. However, you cannot change the parameters or body of a\nstored procedure using this statement; to make such changes, you must\ndrop and re-create the procedure using DROP PROCEDURE and CREATE\nPROCEDURE.\n\nYou must have the ALTER ROUTINE privilege for the procedure. By\ndefault, that privilege is granted automatically to the procedure\ncreator. This behavior can be changed by disabling the\nautomatic_sp_privileges system variable. See\nhttp://dev.mysql.com/doc/refman/5.1/en/stored-routines-privileges.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-procedure.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/alter-procedure.html'),
(440, 'BIT_COUNT', 19, 'Syntax:\nBIT_COUNT(N)\n\nReturns the number of bits that are set in the argument N.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html\n\n', 'mysql> SELECT BIT_COUNT(29), BIT_COUNT(b''101010'');\n        -> 4, 3\n', 'http://dev.mysql.com/doc/refman/5.1/en/bit-functions.html'),
(441, 'OCTET_LENGTH', 36, 'Syntax:\nOCTET_LENGTH(str)\n\nOCTET_LENGTH() is a synonym for LENGTH().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(442, 'UTC_TIMESTAMP', 31, 'Syntax:\nUTC_TIMESTAMP, UTC_TIMESTAMP()\n\nReturns the current UTC date and time as a value in ''YYYY-MM-DD\nHH:MM:SS'' or YYYYMMDDHHMMSS.uuuuuu format, depending on whether the\nfunction is used in a string or numeric context.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT UTC_TIMESTAMP(), UTC_TIMESTAMP() + 0;\n        -> ''2003-08-14 18:08:04'', 20030814180804.000000\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(443, 'AES_ENCRYPT', 12, 'Syntax:\nAES_ENCRYPT(str,key_str)\n\nAES_ENCRYPT() and AES_DECRYPT() enable encryption and decryption of\ndata using the official AES (Advanced Encryption Standard) algorithm,\npreviously known as "Rijndael." Encoding with a 128-bit key length is\nused, but you can extend it up to 256 bits by modifying the source. We\nchose 128 bits because it is much faster and it is secure enough for\nmost purposes.\n\nAES_ENCRYPT() encrypts a string and returns a binary string.\nAES_DECRYPT() decrypts the encrypted string and returns the original\nstring. The input arguments may be any length. If either argument is\nNULL, the result of this function is also NULL.\n\nBecause AES is a block-level algorithm, padding is used to encode\nuneven length strings and so the result string length may be calculated\nusing this formula:\n\n16 * (trunc(string_length / 16) + 1)\n\nIf AES_DECRYPT() detects invalid data or incorrect padding, it returns\nNULL. However, it is possible for AES_DECRYPT() to return a non-NULL\nvalue (possibly garbage) if the input data or the key is invalid.\n\nYou can use the AES functions to store data in an encrypted form by\nmodifying your queries:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', 'INSERT INTO t VALUES (1,AES_ENCRYPT(''text'',''password''));\n', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(444, '+', 4, 'Syntax:\n+\n\nAddition:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html\n\n', 'mysql> SELECT 3+5;\n        -> 8\n', 'http://dev.mysql.com/doc/refman/5.1/en/arithmetic-functions.html'),
(445, 'INET_NTOA', 15, 'Syntax:\nINET_NTOA(expr)\n\nGiven a numeric network address in network byte order (4 or 8 byte),\nreturns the dotted-quad representation of the address as a string.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html\n\n', 'mysql> SELECT INET_NTOA(3520061480);\n        -> ''209.207.224.40''\n', 'http://dev.mysql.com/doc/refman/5.1/en/miscellaneous-functions.html'),
(446, 'ACOS', 4, 'Syntax:\nACOS(X)\n\nReturns the arc cosine of X, that is, the value whose cosine is X.\nReturns NULL if X is not in the range -1 to 1.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT ACOS(1);\n        -> 0\nmysql> SELECT ACOS(1.0001);\n        -> NULL\nmysql> SELECT ACOS(0);\n        -> 1.5707963267949\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(447, 'ISOLATION', 8, 'Syntax:\nSET [GLOBAL | SESSION] TRANSACTION ISOLATION LEVEL\n  {\n       READ UNCOMMITTED\n     | READ COMMITTED\n     | REPEATABLE READ\n     | SERIALIZABLE\n   }\n\nThis statement sets the transaction isolation level globally, for the\ncurrent session, or for the next transaction:\n\no With the GLOBAL keyword, the statement sets the default transaction\n  level globally for all subsequent sessions. Existing sessions are\n  unaffected.\n\no With the SESSION keyword, the statement sets the default transaction\n  level for all subsequent transactions performed within the current\n  session.\n\no Without any SESSION or GLOBAL keyword, the statement sets the\n  isolation level for the next (not started) transaction performed\n  within the current session.\n\nA change to the global default isolation level requires the SUPER\nprivilege. Any session is free to change its session isolation level\n(even in the middle of a transaction), or the isolation level for its\nnext transaction.\n\nSET TRANSACTION ISOLATION LEVEL without GLOBAL or SESSION is not\npermitted while there is an active transaction:\n\nmysql> START TRANSACTION;\nQuery OK, 0 rows affected (0.02 sec)\n\nmysql> SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;\nERROR 1568 (25001): Transaction isolation level can''t be changed\nwhile a transaction is in progress\n\nTo set the global default isolation level at server startup, use the\n--transaction-isolation=level option to mysqld on the command line or\nin an option file. Values of level for this option use dashes rather\nthan spaces, so the permissible values are READ-UNCOMMITTED,\nREAD-COMMITTED, REPEATABLE-READ, or SERIALIZABLE. For example, to set\nthe default isolation level to REPEATABLE READ, use these lines in the\n[mysqld] section of an option file:\n\n[mysqld]\ntransaction-isolation = REPEATABLE-READ\n\nTo determine the global and session transaction isolation levels at\nruntime, check the value of the tx_isolation system variable:\n\nSELECT @@GLOBAL.tx_isolation, @@tx_isolation;\n\nInnoDB supports each of the transaction isolation levels described here\nusing different locking strategies. The default level is REPEATABLE\nREAD. For additional information about InnoDB record-level locks and\nhow it uses them to execute various types of statements, see\nhttp://dev.mysql.com/doc/refman/5.1/en/innodb-record-level-locks.html,\nand http://dev.mysql.com/doc/refman/5.1/en/innodb-locks-set.html.\n\nThe following list describes how MySQL supports the different\ntransaction levels:\n\no READ UNCOMMITTED\n\n  SELECT statements are performed in a nonlocking fashion, but a\n  possible earlier version of a row might be used. Thus, using this\n  isolation level, such reads are not consistent. This is also called a\n  "dirty read." Otherwise, this isolation level works like READ\n  COMMITTED.\n\no READ COMMITTED\n\n  A somewhat Oracle-like isolation level with respect to consistent\n  (nonlocking) reads: Each consistent read, even within the same\n  transaction, sets and reads its own fresh snapshot. See\n  http://dev.mysql.com/doc/refman/5.1/en/innodb-consistent-read.html.\n\n  For locking reads (SELECT with FOR UPDATE or LOCK IN SHARE MODE),\n  InnoDB locks only index records, not the gaps before them, and thus\n  permits the free insertion of new records next to locked records. For\n  UPDATE and DELETE statements, locking depends on whether the\n  statement uses a unique index with a unique search condition (such as\n  WHERE id = 100), or a range-type search condition (such as WHERE id >\n  100). For a unique index with a unique search condition, InnoDB locks\n  only the index record found, not the gap before it. For range-type\n  searches, InnoDB locks the index range scanned, using gap locks or\n  next-key (gap plus index-record) locks to block insertions by other\n  sessions into the gaps covered by the range. This is necessary\n  because "phantom rows" must be blocked for MySQL replication and\n  recovery to work.\n\n  *Note*: In MySQL 5.1, if the READ COMMITTED isolation level is used\n  or the innodb_locks_unsafe_for_binlog system variable is enabled,\n  there is no InnoDB gap locking except for foreign-key constraint\n  checking and duplicate-key checking. Also, record locks for\n  nonmatching rows are released after MySQL has evaluated the WHERE\n  condition. As of MySQL 5.1, if you use READ COMMITTED or enable\n  innodb_locks_unsafe_for_binlog, you must use row-based binary\n  logging.\n\no REPEATABLE READ\n\n  This is the default isolation level for InnoDB. For consistent reads,\n  there is an important difference from the READ COMMITTED isolation\n  level: All consistent reads within the same transaction read the\n  snapshot established by the first read. This convention means that if\n  you issue several plain (nonlocking) SELECT statements within the\n  same transaction, these SELECT statements are consistent also with\n  respect to each other. See\n  http://dev.mysql.com/doc/refman/5.1/en/innodb-consistent-read.html.\n\n  For locking reads (SELECT with FOR UPDATE or LOCK IN SHARE MODE),\n  UPDATE, and DELETE statements, locking depends on whether the\n  statement uses a unique index with a unique search condition, or a\n  range-type search condition. For a unique index with a unique search\n  condition, InnoDB locks only the index record found, not the gap\n  before it. For other search conditions, InnoDB locks the index range\n  scanned, using gap locks or next-key (gap plus index-record) locks to\n  block insertions by other sessions into the gaps covered by the\n  range.\n\no SERIALIZABLE\n\n  This level is like REPEATABLE READ, but InnoDB implicitly converts\n  all plain SELECT statements to SELECT ... LOCK IN SHARE MODE if\n  autocommit is disabled. If autocommit is enabled, the SELECT is its\n  own transaction. It therefore is known to be read only and can be\n  serialized if performed as a consistent (nonlocking) read and need\n  not block for other transactions. (This means that to force a plain\n  SELECT to block if other transactions have modified the selected\n  rows, you should disable autocommit.)\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/set-transaction.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/set-transaction.html'),
(448, 'CEILING', 4, 'Syntax:\nCEILING(X)\n\nReturns the smallest integer value not less than X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT CEILING(1.23);\n        -> 2\nmysql> SELECT CEILING(-1.23);\n        -> -1\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(449, 'SIN', 4, 'Syntax:\nSIN(X)\n\nReturns the sine of X, where X is given in radians.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT SIN(PI());\n        -> 1.2246063538224e-16\nmysql> SELECT ROUND(SIN(PI()));\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(450, 'DAYOFWEEK', 31, 'Syntax:\nDAYOFWEEK(date)\n\nReturns the weekday index for date (1 = Sunday, 2 = Monday, ..., 7 =\nSaturday). These index values correspond to the ODBC standard.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYOFWEEK(''2007-02-03'');\n        -> 7\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(451, 'SHOW PROCESSLIST', 26, 'Syntax:\nSHOW [FULL] PROCESSLIST\n\nSHOW PROCESSLIST shows you which threads are running. You can also get\nthis information from the INFORMATION_SCHEMA PROCESSLIST table or the\nmysqladmin processlist command. If you have the PROCESS privilege, you\ncan see all threads. Otherwise, you can see only your own threads (that\nis, threads associated with the MySQL account that you are using). If\nyou do not use the FULL keyword, only the first 100 characters of each\nstatement are shown in the Info field.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-processlist.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-processlist.html'),
(452, 'LINEFROMWKB', 32, 'LineFromWKB(wkb[,srid]), LineStringFromWKB(wkb[,srid])\n\nConstructs a LINESTRING value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkb-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkb-functions'),
(453, 'GEOMETRYTYPE', 35, 'GeometryType(g)\n\nReturns as a string the name of the geometry type of which the geometry\ninstance g is a member. The name corresponds to one of the instantiable\nGeometry subclasses.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#general-geometry-property-functions\n\n', 'mysql> SELECT GeometryType(GeomFromText(''POINT(1 1)''));\n+------------------------------------------+\n| GeometryType(GeomFromText(''POINT(1 1)'')) |\n+------------------------------------------+\n| POINT                                    |\n+------------------------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#general-geometry-property-functions');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(454, 'CREATE VIEW', 38, 'Syntax:\nCREATE\n    [OR REPLACE]\n    [ALGORITHM = {UNDEFINED | MERGE | TEMPTABLE}]\n    [DEFINER = { user | CURRENT_USER }]\n    [SQL SECURITY { DEFINER | INVOKER }]\n    VIEW view_name [(column_list)]\n    AS select_statement\n    [WITH [CASCADED | LOCAL] CHECK OPTION]\n\nThe CREATE VIEW statement creates a new view, or replaces an existing\none if the OR REPLACE clause is given. If the view does not exist,\nCREATE OR REPLACE VIEW is the same as CREATE VIEW. If the view does\nexist, CREATE OR REPLACE VIEW is the same as ALTER VIEW.\n\nThe select_statement is a SELECT statement that provides the definition\nof the view. (When you select from the view, you select in effect using\nthe SELECT statement.) select_statement can select from base tables or\nother views.\n\nThe view definition is "frozen" at creation time, so changes to the\nunderlying tables afterward do not affect the view definition. For\nexample, if a view is defined as SELECT * on a table, new columns added\nto the table later do not become part of the view.\n\nThe ALGORITHM clause affects how MySQL processes the view. The DEFINER\nand SQL SECURITY clauses specify the security context to be used when\nchecking access privileges at view invocation time. The WITH CHECK\nOPTION clause can be given to constrain inserts or updates to rows in\ntables referenced by the view. These clauses are described later in\nthis section.\n\nThe CREATE VIEW statement requires the CREATE VIEW privilege for the\nview, and some privilege for each column selected by the SELECT\nstatement. For columns used elsewhere in the SELECT statement you must\nhave the SELECT privilege. If the OR REPLACE clause is present, you\nmust also have the DROP privilege for the view. CREATE VIEW might also\nrequire the SUPER privilege, depending on the DEFINER value, as\ndescribed later in this section.\n\nWhen a view is referenced, privilege checking occurs as described later\nin this section.\n\nA view belongs to a database. By default, a new view is created in the\ndefault database. To create the view explicitly in a given database,\nspecify the name as db_name.view_name when you create it:\n\nmysql> CREATE VIEW test.v AS SELECT * FROM t;\n\nWithin a database, base tables and views share the same namespace, so a\nbase table and a view cannot have the same name.\n\nColumns retrieved by the SELECT statement can be simple references to\ntable columns. They can also be expressions that use functions,\nconstant values, operators, and so forth.\n\nViews must have unique column names with no duplicates, just like base\ntables. By default, the names of the columns retrieved by the SELECT\nstatement are used for the view column names. To define explicit names\nfor the view columns, the optional column_list clause can be given as a\nlist of comma-separated identifiers. The number of names in column_list\nmust be the same as the number of columns retrieved by the SELECT\nstatement.\n\n*Note*: Prior to MySQL 5.1.29, when you modify an existing view, the\nserver saves a backup of the current view definition under the view\ndatabase directory, in a subdirectory named arc. The backup file for a\nview v is named v.frm-00001. If you alter the view again, the next\nbackup is named v.frm-00002. The three latest view backup definitions\nare stored. Backed up view definitions are not preserved by mysqldump,\nor any other such programs, but you can retain them using a file copy\noperation. However, they are not needed for anything but to provide you\nwith a backup of your previous view definition. It is safe to remove\nthese backup definitions, but only while mysqld is not running. If you\ndelete the arc subdirectory or its files while mysqld is running, an\nerror occurs the next time you try to alter the view: mysql> ALTER VIEW\nv AS SELECT * FROM t; ERROR 6 (HY000): Error on delete of\n''.\\test\\arc/v.frm-0004'' (Errcode: 2)\n\nUnqualified table or view names in the SELECT statement are interpreted\nwith respect to the default database. A view can refer to tables or\nviews in other databases by qualifying the table or view name with the\nproper database name.\n\nA view can be created from many kinds of SELECT statements. It can\nrefer to base tables or other views. It can use joins, UNION, and\nsubqueries. The SELECT need not even refer to any tables. The following\nexample defines a view that selects two columns from another table, as\nwell as an expression calculated from those columns:\n\nmysql> CREATE TABLE t (qty INT, price INT);\nmysql> INSERT INTO t VALUES(3, 50);\nmysql> CREATE VIEW v AS SELECT qty, price, qty*price AS value FROM t;\nmysql> SELECT * FROM v;\n+------+-------+-------+\n| qty  | price | value |\n+------+-------+-------+\n|    3 |    50 |   150 |\n+------+-------+-------+\n\nA view definition is subject to the following restrictions:\n\no The SELECT statement cannot contain a subquery in the FROM clause.\n\no The SELECT statement cannot refer to system or user variables.\n\no Within a stored program, the definition cannot refer to program\n  parameters or local variables.\n\no The SELECT statement cannot refer to prepared statement parameters.\n\no Any table or view referred to in the definition must exist. However,\n  after a view has been created, it is possible to drop a table or view\n  that the definition refers to. In this case, use of the view results\n  in an error. To check a view definition for problems of this kind,\n  use the CHECK TABLE statement.\n\no The definition cannot refer to a TEMPORARY table, and you cannot\n  create a TEMPORARY view.\n\no Any tables named in the view definition must exist at definition\n  time.\n\no You cannot associate a trigger with a view.\n\no As of MySQL 5.1.23, aliases for column names in the SELECT statement\n  are checked against the maximum column length of 64 characters (not\n  the maximum alias length of 256 characters).\n\nORDER BY is permitted in a view definition, but it is ignored if you\nselect from a view using a statement that has its own ORDER BY.\n\nFor other options or clauses in the definition, they are added to the\noptions or clauses of the statement that references the view, but the\neffect is undefined. For example, if a view definition includes a LIMIT\nclause, and you select from the view using a statement that has its own\nLIMIT clause, it is undefined which limit applies. This same principle\napplies to options such as ALL, DISTINCT, or SQL_SMALL_RESULT that\nfollow the SELECT keyword, and to clauses such as INTO, FOR UPDATE,\nLOCK IN SHARE MODE, and PROCEDURE.\n\nIf you create a view and then change the query processing environment\nby changing system variables, that may affect the results that you get\nfrom the view:\n\nmysql> CREATE VIEW v (mycol) AS SELECT ''abc'';\nQuery OK, 0 rows affected (0.01 sec)\n\nmysql> SET sql_mode = '''';\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT "mycol" FROM v;\n+-------+\n| mycol |\n+-------+\n| mycol |\n+-------+\n1 row in set (0.01 sec)\n\nmysql> SET sql_mode = ''ANSI_QUOTES'';\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SELECT "mycol" FROM v;\n+-------+\n| mycol |\n+-------+\n| abc   |\n+-------+\n1 row in set (0.00 sec)\n\nThe DEFINER and SQL SECURITY clauses determine which MySQL account to\nuse when checking access privileges for the view when a statement is\nexecuted that references the view. These clauses were addded in MySQL\n5.1.2. The legal SQL SECURITY characteristic values are DEFINER and\nINVOKER. These indicate that the required privileges must be held by\nthe user who defined or invoked the view, respectively. The default SQL\nSECURITY value is DEFINER.\n\nIf a user value is given for the DEFINER clause, it should be a MySQL\naccount specified as ''user_name''@''host_name'' (the same format used in\nthe GRANT statement), CURRENT_USER, or CURRENT_USER(). The default\nDEFINER value is the user who executes the CREATE VIEW statement. This\nis the same as specifying DEFINER = CURRENT_USER explicitly.\n\nIf you specify the DEFINER clause, these rules determine the legal\nDEFINER user values:\n\no If you do not have the SUPER privilege, the only legal user value is\n  your own account, either specified literally or by using\n  CURRENT_USER. You cannot set the definer to some other account.\n\no If you have the SUPER privilege, you can specify any syntactically\n  legal account name. If the account does not actually exist, a warning\n  is generated.\n\no Although it is possible to create a view with a nonexistent DEFINER\n  account, an error occurs when the view is referenced if the SQL\n  SECURITY value is DEFINER but the definer account does not exist.\n\nFor more information about view security, see\nhttp://dev.mysql.com/doc/refman/5.1/en/stored-programs-security.html.\n\nWithin a view definition, CURRENT_USER returns the view''s DEFINER value\nby default as of MySQL 5.1.12. For older versions, and for views\ndefined with the SQL SECURITY INVOKER characteristic, CURRENT_USER\nreturns the account for the view''s invoker. For information about user\nauditing within views, see\nhttp://dev.mysql.com/doc/refman/5.1/en/account-activity-auditing.html.\n\nWithin a stored routine that is defined with the SQL SECURITY DEFINER\ncharacteristic, CURRENT_USER returns the routine''s DEFINER value. This\nalso affects a view defined within such a routine, if the view\ndefinition contains a DEFINER value of CURRENT_USER.\n\nAs of MySQL 5.1.2 (when the DEFINER and SQL SECURITY clauses were\nimplemented), view privileges are checked like this:\n\no At view definition time, the view creator must have the privileges\n  needed to use the top-level objects accessed by the view. For\n  example, if the view definition refers to table columns, the creator\n  must have some privilege for each column in the select list of the\n  definition, and the SELECT privilege for each column used elsewhere\n  in the definition. If the definition refers to a stored function,\n  only the privileges needed to invoke the function can be checked. The\n  privileges required at function invocation time can be checked only\n  as it executes: For different invocations, different execution paths\n  within the function might be taken.\n\no The user who references a view must have appropriate privileges to\n  access it (SELECT to select from it, INSERT to insert into it, and so\n  forth.)\n\no When a view has been referenced, privileges for objects accessed by\n  the view are checked against the privileges held by the view DEFINER\n  account or invoker, depending on whether the SQL SECURITY\n  characteristic is DEFINER or INVOKER, respectively.\n\no If reference to a view causes execution of a stored function,\n  privilege checking for statements executed within the function depend\n  on whether the function SQL SECURITY characteristic is DEFINER or\n  INVOKER. If the security characteristic is DEFINER, the function runs\n  with the privileges of the DEFINER account. If the characteristic is\n  INVOKER, the function runs with the privileges determined by the\n  view''s SQL SECURITY characteristic.\n\nPrior to MySQL 5.1.2 (before the DEFINER and SQL SECURITY clauses were\nimplemented), privileges required for objects used in a view are\nchecked at view creation time.\n\nExample: A view might depend on a stored function, and that function\nmight invoke other stored routines. For example, the following view\ninvokes a stored function f():\n\nCREATE VIEW v AS SELECT * FROM t WHERE t.id = f(t.name);\n\nSuppose that f() contains a statement such as this:\n\nIF name IS NULL then\n  CALL p1();\nELSE\n  CALL p2();\nEND IF;\n\nThe privileges required for executing statements within f() need to be\nchecked when f() executes. This might mean that privileges are needed\nfor p1() or p2(), depending on the execution path within f(). Those\nprivileges must be checked at runtime, and the user who must possess\nthe privileges is determined by the SQL SECURITY values of the view v\nand the function f().\n\nThe DEFINER and SQL SECURITY clauses for views are extensions to\nstandard SQL. In standard SQL, views are handled using the rules for\nSQL SECURITY DEFINER. The standard says that the definer of the view,\nwhich is the same as the owner of the view''s schema, gets applicable\nprivileges on the view (for example, SELECT) and may grant them. MySQL\nhas no concept of a schema "owner", so MySQL adds a clause to identify\nthe definer. The DEFINER clause is an extension where the intent is to\nhave what the standard has; that is, a permanent record of who defined\nthe view. This is why the default DEFINER value is the account of the\nview creator.\n\nIf you invoke a view that was created before MySQL 5.1.2, it is treated\nas though it was created with a SQL SECURITY DEFINER characteristic and\nwith a DEFINER value that is the same as your account. However, because\nthe actual definer is unknown, MySQL issues a warning. To eliminate the\nwarning, it is sufficient to re-create the view so that the view\ndefinition includes a DEFINER clause.\n\nThe optional ALGORITHM clause is a MySQL extension to standard SQL. It\naffects how MySQL processes the view. ALGORITHM takes three values:\nMERGE, TEMPTABLE, or UNDEFINED. The default algorithm is UNDEFINED if\nno ALGORITHM clause is present. For more information, see\nhttp://dev.mysql.com/doc/refman/5.1/en/view-algorithms.html.\n\nSome views are updatable. That is, you can use them in statements such\nas UPDATE, DELETE, or INSERT to update the contents of the underlying\ntable. For a view to be updatable, there must be a one-to-one\nrelationship between the rows in the view and the rows in the\nunderlying table. There are also certain other constructs that make a\nview nonupdatable.\n\nThe WITH CHECK OPTION clause can be given for an updatable view to\nprevent inserts or updates to rows except those for which the WHERE\nclause in the select_statement is true.\n\nIn a WITH CHECK OPTION clause for an updatable view, the LOCAL and\nCASCADED keywords determine the scope of check testing when the view is\ndefined in terms of another view. The LOCAL keyword restricts the CHECK\nOPTION only to the view being defined. CASCADED causes the checks for\nunderlying views to be evaluated as well. When neither keyword is\ngiven, the default is CASCADED.\n\nFor more information about updatable views and the WITH CHECK OPTION\nclause, see\nhttp://dev.mysql.com/doc/refman/5.1/en/view-updatability.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-view.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-view.html'),
(455, 'TRIM', 36, 'Syntax:\nTRIM([{BOTH | LEADING | TRAILING} [remstr] FROM] str), TRIM([remstr\nFROM] str)\n\nReturns the string str with all remstr prefixes or suffixes removed. If\nnone of the specifiers BOTH, LEADING, or TRAILING is given, BOTH is\nassumed. remstr is optional and, if not specified, spaces are removed.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT TRIM(''  bar   '');\n        -> ''bar''\nmysql> SELECT TRIM(LEADING ''x'' FROM ''xxxbarxxx'');\n        -> ''barxxx''\nmysql> SELECT TRIM(BOTH ''x'' FROM ''xxxbarxxx'');\n        -> ''bar''\nmysql> SELECT TRIM(TRAILING ''xyz'' FROM ''barxxyz'');\n        -> ''barx''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(456, 'IS', 18, 'Syntax:\nIS boolean_value\n\nTests a value against a boolean value, where boolean_value can be TRUE,\nFALSE, or UNKNOWN.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 1 IS TRUE, 0 IS FALSE, NULL IS UNKNOWN;\n        -> 1, 1, 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(457, 'GET_FORMAT', 31, 'Syntax:\nGET_FORMAT({DATE|TIME|DATETIME}, {''EUR''|''USA''|''JIS''|''ISO''|''INTERNAL''})\n\nReturns a format string. This function is useful in combination with\nthe DATE_FORMAT() and the STR_TO_DATE() functions.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DATE_FORMAT(''2003-10-03'',GET_FORMAT(DATE,''EUR''));\n        -> ''03.10.2003''\nmysql> SELECT STR_TO_DATE(''10.31.2003'',GET_FORMAT(DATE,''USA''));\n        -> ''2003-10-31''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(458, 'TINYBLOB', 22, 'TINYBLOB\n\nA BLOB column with a maximum length of 255 (28 - 1) bytes. Each\nTINYBLOB value is stored using a one-byte length prefix that indicates\nthe number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(459, 'SAVEPOINT', 8, 'Syntax:\nSAVEPOINT identifier\nROLLBACK [WORK] TO [SAVEPOINT] identifier\nRELEASE SAVEPOINT identifier\n\nInnoDB supports the SQL statements SAVEPOINT, ROLLBACK TO SAVEPOINT,\nRELEASE SAVEPOINT and the optional WORK keyword for ROLLBACK.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/savepoint.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/savepoint.html'),
(460, 'USER', 17, 'Syntax:\nUSER()\n\nReturns the current MySQL user name and host name as a string in the\nutf8 character set.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT USER();\n        -> ''davida@localhost''\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(461, 'ALTER TABLE', 38, 'Syntax:\nALTER [ONLINE | OFFLINE] [IGNORE] TABLE tbl_name\n    alter_specification [, alter_specification] ...\n\nalter_specification:\n    table_options\n  | ADD [COLUMN] col_name column_definition\n        [FIRST | AFTER col_name ]\n  | ADD [COLUMN] (col_name column_definition,...)\n  | ADD {INDEX|KEY} [index_name]\n        [index_type] (index_col_name,...) [index_option] ...\n  | ADD [CONSTRAINT [symbol]] PRIMARY KEY\n        [index_type] (index_col_name,...) [index_option] ...\n  | ADD [CONSTRAINT [symbol]]\n        UNIQUE [INDEX|KEY] [index_name]\n        [index_type] (index_col_name,...) [index_option] ...\n  | ADD FULLTEXT [INDEX|KEY] [index_name]\n        (index_col_name,...) [index_option] ...\n  | ADD SPATIAL [INDEX|KEY] [index_name]\n        (index_col_name,...) [index_option] ...\n  | ADD [CONSTRAINT [symbol]]\n        FOREIGN KEY [index_name] (index_col_name,...)\n        reference_definition\n  | ALTER [COLUMN] col_name {SET DEFAULT literal | DROP DEFAULT}\n  | CHANGE [COLUMN] old_col_name new_col_name column_definition\n        [FIRST|AFTER col_name]\n  | MODIFY [COLUMN] col_name column_definition\n        [FIRST | AFTER col_name]\n  | DROP [COLUMN] col_name\n  | DROP PRIMARY KEY\n  | DROP {INDEX|KEY} index_name\n  | DROP FOREIGN KEY fk_symbol\n  | DISABLE KEYS\n  | ENABLE KEYS\n  | RENAME [TO] new_tbl_name\n  | ORDER BY col_name [, col_name] ...\n  | CONVERT TO CHARACTER SET charset_name [COLLATE collation_name]\n  | [DEFAULT] CHARACTER SET [=] charset_name [COLLATE [=] collation_name]\n  | DISCARD TABLESPACE\n  | IMPORT TABLESPACE\n  | partition_options\n  | ADD PARTITION (partition_definition)\n  | DROP PARTITION partition_names\n  | COALESCE PARTITION number\n  | REORGANIZE PARTITION [partition_names INTO (partition_definitions)]\n  | ANALYZE PARTITION  {partition_names | ALL }\n  | CHECK PARTITION  {partition_names | ALL }\n  | OPTIMIZE PARTITION  {partition_names | ALL }\n  | REBUILD PARTITION  {partition_names | ALL }\n  | REPAIR PARTITION  {partition_names | ALL }\n  | PARTITION BY partitioning_expression\n  | REMOVE PARTITIONING\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH}\n\nindex_option:\n    KEY_BLOCK_SIZE [=] value\n  | index_type\n  | WITH PARSER parser_name\n\ntable_options:\n    table_option [[,] table_option] ...  (see CREATE TABLE options)\n\nALTER TABLE enables you to change the structure of an existing table.\nFor example, you can add or delete columns, create or destroy indexes,\nchange the type of existing columns, or rename columns or the table\nitself. You can also change the comment for the table and type of the\ntable.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/alter-table.html'),
(462, 'MPOINTFROMWKB', 32, 'MPointFromWKB(wkb[,srid]), MultiPointFromWKB(wkb[,srid])\n\nConstructs a MULTIPOINT value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkb-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkb-functions'),
(463, 'CHAR BYTE', 22, 'The CHAR BYTE data type is an alias for the BINARY data type. This is a\ncompatibility feature.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(464, 'REPAIR TABLE', 20, 'Syntax:\nREPAIR [NO_WRITE_TO_BINLOG | LOCAL] TABLE\n    tbl_name [, tbl_name] ...\n    [QUICK] [EXTENDED] [USE_FRM]\n\nREPAIR TABLE repairs a possibly corrupted table. By default, it has the\nsame effect as myisamchk --recover tbl_name. REPAIR TABLE works for\nMyISAM and for ARCHIVE tables. Starting with MySQL 5.1.9, REPAIR is\nalso valid for CSV tables. See\nhttp://dev.mysql.com/doc/refman/5.1/en/myisam-storage-engine.html, and\nhttp://dev.mysql.com/doc/refman/5.1/en/archive-storage-engine.html, and\nhttp://dev.mysql.com/doc/refman/5.1/en/csv-storage-engine.html\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nBeginning with MySQL 5.1.27, REPAIR TABLE is also supported for\npartitioned tables. However, the USE_FRM option cannot be used with\nthis statement on a partitioned table.\n\nAlso beginning with MySQL 5.1.27, you can use ALTER TABLE ... REPAIR\nPARTITION to repair one or more partitions; for more information, see\n[HELP ALTER TABLE], and\nhttp://dev.mysql.com/doc/refman/5.1/en/partitioning-maintenance.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/repair-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/repair-table.html'),
(465, 'MERGE', 38, 'The MERGE storage engine, also known as the MRG_MyISAM engine, is a\ncollection of identical MyISAM tables that can be used as one.\n"Identical" means that all tables have identical column and index\ninformation. You cannot merge MyISAM tables in which the columns are\nlisted in a different order, do not have exactly the same columns, or\nhave the indexes in different order. However, any or all of the MyISAM\ntables can be compressed with myisampack. See\nhttp://dev.mysql.com/doc/refman/5.1/en/myisampack.html. Differences in\ntable options such as AVG_ROW_LENGTH, MAX_ROWS, or PACK_KEYS do not\nmatter.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/merge-storage-engine.html\n\n', 'mysql> CREATE TABLE t1 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> CREATE TABLE t2 (\n    ->    a INT NOT NULL AUTO_INCREMENT PRIMARY KEY,\n    ->    message CHAR(20)) ENGINE=MyISAM;\nmysql> INSERT INTO t1 (message) VALUES (''Testing''),(''table''),(''t1'');\nmysql> INSERT INTO t2 (message) VALUES (''Testing''),(''table''),(''t2'');\nmysql> CREATE TABLE total (\n    ->    a INT NOT NULL AUTO_INCREMENT,\n    ->    message CHAR(20), INDEX(a))\n    ->    ENGINE=MERGE UNION=(t1,t2) INSERT_METHOD=LAST;\n', 'http://dev.mysql.com/doc/refman/5.1/en/merge-storage-engine.html'),
(466, 'CREATE TABLE', 38, 'Syntax:\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    (create_definition,...)\n    [table_options]\n    [partition_options]\n\nOr:\n\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    [(create_definition,...)]\n    [table_options]\n    [partition_options]\n    select_statement\n\nOr:\n\nCREATE [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name\n    { LIKE old_tbl_name | (LIKE old_tbl_name) }\n\ncreate_definition:\n    col_name column_definition\n  | [CONSTRAINT [symbol]] PRIMARY KEY [index_type] (index_col_name,...)\n      [index_option] ...\n  | {INDEX|KEY} [index_name] [index_type] (index_col_name,...)\n      [index_option] ...\n  | [CONSTRAINT [symbol]] UNIQUE [INDEX|KEY]\n      [index_name] [index_type] (index_col_name,...)\n      [index_option] ...\n  | {FULLTEXT|SPATIAL} [INDEX|KEY] [index_name] (index_col_name,...)\n      [index_option] ...\n  | [CONSTRAINT [symbol]] FOREIGN KEY\n      [index_name] (index_col_name,...) reference_definition\n  | CHECK (expr)\n\ncolumn_definition:\n    data_type [NOT NULL | NULL] [DEFAULT default_value]\n      [AUTO_INCREMENT] [UNIQUE [KEY] | [PRIMARY] KEY]\n      [COMMENT ''string'']\n      [COLUMN_FORMAT {FIXED|DYNAMIC|DEFAULT}]\n      [STORAGE {DISK|MEMORY|DEFAULT}]\n      [reference_definition]\n\ndata_type:\n    BIT[(length)]\n  | TINYINT[(length)] [UNSIGNED] [ZEROFILL]\n  | SMALLINT[(length)] [UNSIGNED] [ZEROFILL]\n  | MEDIUMINT[(length)] [UNSIGNED] [ZEROFILL]\n  | INT[(length)] [UNSIGNED] [ZEROFILL]\n  | INTEGER[(length)] [UNSIGNED] [ZEROFILL]\n  | BIGINT[(length)] [UNSIGNED] [ZEROFILL]\n  | REAL[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | DOUBLE[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | FLOAT[(length,decimals)] [UNSIGNED] [ZEROFILL]\n  | DECIMAL[(length[,decimals])] [UNSIGNED] [ZEROFILL]\n  | NUMERIC[(length[,decimals])] [UNSIGNED] [ZEROFILL]\n  | DATE\n  | TIME\n  | TIMESTAMP\n  | DATETIME\n  | YEAR\n  | CHAR[(length)]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | VARCHAR(length)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | BINARY[(length)]\n  | VARBINARY(length)\n  | TINYBLOB\n  | BLOB\n  | MEDIUMBLOB\n  | LONGBLOB\n  | TINYTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | TEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | MEDIUMTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | LONGTEXT [BINARY]\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | ENUM(value1,value2,value3,...)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | SET(value1,value2,value3,...)\n      [CHARACTER SET charset_name] [COLLATE collation_name]\n  | spatial_type\n\nindex_col_name:\n    col_name [(length)] [ASC | DESC]\n\nindex_type:\n    USING {BTREE | HASH}\n\nindex_option:\n    KEY_BLOCK_SIZE [=] value\n  | index_type\n  | WITH PARSER parser_name\n\nreference_definition:\n    REFERENCES tbl_name (index_col_name,...)\n      [MATCH FULL | MATCH PARTIAL | MATCH SIMPLE]\n      [ON DELETE reference_option]\n      [ON UPDATE reference_option]\n\nreference_option:\n    RESTRICT | CASCADE | SET NULL | NO ACTION\n\ntable_options:\n    table_option [[,] table_option] ...\n\ntable_option:\n    ENGINE [=] engine_name\n  | AUTO_INCREMENT [=] value\n  | AVG_ROW_LENGTH [=] value\n  | [DEFAULT] CHARACTER SET [=] charset_name\n  | CHECKSUM [=] {0 | 1}\n  | [DEFAULT] COLLATE [=] collation_name\n  | COMMENT [=] ''string''\n  | CONNECTION [=] ''connect_string''\n  | DATA DIRECTORY [=] ''absolute path to directory''\n  | DELAY_KEY_WRITE [=] {0 | 1}\n  | INDEX DIRECTORY [=] ''absolute path to directory''\n  | INSERT_METHOD [=] { NO | FIRST | LAST }\n  | KEY_BLOCK_SIZE [=] value\n  | MAX_ROWS [=] value\n  | MIN_ROWS [=] value\n  | PACK_KEYS [=] {0 | 1 | DEFAULT}\n  | PASSWORD [=] ''string''\n  | ROW_FORMAT [=] {DEFAULT|DYNAMIC|FIXED|COMPRESSED|REDUNDANT|COMPACT}\n  | TABLESPACE tablespace_name [STORAGE {DISK|MEMORY|DEFAULT}]\n  | UNION [=] (tbl_name[,tbl_name]...)\n\npartition_options:\n    PARTITION BY\n        { [LINEAR] HASH(expr)\n        | [LINEAR] KEY(column_list)\n        | RANGE(expr)\n        | LIST(expr) }\n    [PARTITIONS num]\n    [SUBPARTITION BY\n        { [LINEAR] HASH(expr)\n        | [LINEAR] KEY(column_list) }\n      [SUBPARTITIONS num]\n    ]\n    [(partition_definition [, partition_definition] ...)]\n\npartition_definition:\n    PARTITION partition_name\n        [VALUES \n            {LESS THAN {(expr) | MAXVALUE} \n            | \n            IN (value_list)}]\n        [[STORAGE] ENGINE [=] engine_name]\n        [COMMENT [=] ''comment_text'' ]\n        [DATA DIRECTORY [=] ''data_dir'']\n        [INDEX DIRECTORY [=] ''index_dir'']\n        [MAX_ROWS [=] max_number_of_rows]\n        [MIN_ROWS [=] min_number_of_rows]\n        [TABLESPACE [=] tablespace_name]\n        [NODEGROUP [=] node_group_id]\n        [(subpartition_definition [, subpartition_definition] ...)]\n\nsubpartition_definition:\n    SUBPARTITION logical_name\n        [[STORAGE] ENGINE [=] engine_name]\n        [COMMENT [=] ''comment_text'' ]\n        [DATA DIRECTORY [=] ''data_dir'']\n        [INDEX DIRECTORY [=] ''index_dir'']\n        [MAX_ROWS [=] max_number_of_rows]\n        [MIN_ROWS [=] min_number_of_rows]\n        [TABLESPACE [=] tablespace_name]\n        [NODEGROUP [=] node_group_id]\n\nselect_statement:\n    [IGNORE | REPLACE] [AS] SELECT ...   (Some legal select statement)\n\nCREATE TABLE creates a table with the given name. You must have the\nCREATE privilege for the table.\n\nRules for permissible table names are given in\nhttp://dev.mysql.com/doc/refman/5.1/en/identifiers.html. By default,\nthe table is created in the default database. An error occurs if the\ntable exists, if there is no default database, or if the database does\nnot exist.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/create-table.html'),
(467, '>', 18, 'Syntax:\n>\n\nGreater than:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT 2 > 2;\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(468, 'ANALYZE TABLE', 20, 'Syntax:\nANALYZE [NO_WRITE_TO_BINLOG | LOCAL] TABLE\n    tbl_name [, tbl_name] ...\n\nANALYZE TABLE analyzes and stores the key distribution for a table.\nDuring the analysis, the table is locked with a read lock for MyISAM\nand InnoDB. This statement works with MyISAM and InnoDB tables. For\nMyISAM tables, this statement is equivalent to using myisamchk\n--analyze.\n\nFor more information on how the analysis works within InnoDB, see\nhttp://dev.mysql.com/doc/refman/5.1/en/innodb-restrictions.html.\n\nMySQL uses the stored key distribution to decide the order in which\ntables should be joined when you perform a join on something other than\na constant. In addition, key distributions can be used when deciding\nwhich indexes to use for a specific table within a query.\n\nThis statement requires SELECT and INSERT privileges for the table.\n\nBeginning with MySQL 5.1.27, ANALYZE TABLE is also supported for\npartitioned tables. Also beginning with MySQL 5.1.27, you can use ALTER\nTABLE ... ANALYZE PARTITION to analyze one or more partitions; for more\ninformation, see [HELP ALTER TABLE], and\nhttp://dev.mysql.com/doc/refman/5.1/en/partitioning-maintenance.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/analyze-table.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/analyze-table.html'),
(469, 'MICROSECOND', 31, 'Syntax:\nMICROSECOND(expr)\n\nReturns the microseconds from the time or datetime expression expr as a\nnumber in the range from 0 to 999999.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT MICROSECOND(''12:00:00.123456'');\n        -> 123456\nmysql> SELECT MICROSECOND(''2009-12-31 23:59:59.000010'');\n        -> 10\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(470, 'CONSTRAINT', 38, 'InnoDB supports foreign key constraints. The syntax for a foreign key\nconstraint definition in InnoDB looks like this:\n\n[CONSTRAINT [symbol]] FOREIGN KEY\n    [index_name] (index_col_name, ...)\n    REFERENCES tbl_name (index_col_name,...)\n    [ON DELETE reference_option]\n    [ON UPDATE reference_option]\n\nreference_option:\n    RESTRICT | CASCADE | SET NULL | NO ACTION\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/innodb-foreign-key-constraints.html\n\n', 'CREATE TABLE product (category INT NOT NULL, id INT NOT NULL,\n                      price DECIMAL,\n                      PRIMARY KEY(category, id)) ENGINE=INNODB;\nCREATE TABLE customer (id INT NOT NULL,\n                       PRIMARY KEY (id)) ENGINE=INNODB;\nCREATE TABLE product_order (no INT NOT NULL AUTO_INCREMENT,\n                            product_category INT NOT NULL,\n                            product_id INT NOT NULL,\n                            customer_id INT NOT NULL,\n                            PRIMARY KEY(no),\n                            INDEX (product_category, product_id),\n                            FOREIGN KEY (product_category, product_id)\n                              REFERENCES product(category, id)\n                              ON UPDATE CASCADE ON DELETE RESTRICT,\n                            INDEX (customer_id),\n                            FOREIGN KEY (customer_id)\n                              REFERENCES customer(id)) ENGINE=INNODB;\n', 'http://dev.mysql.com/doc/refman/5.1/en/innodb-foreign-key-constraints.html'),
(471, 'CREATE SERVER', 38, 'Syntax:\nCREATE SERVER server_name\n    FOREIGN DATA WRAPPER wrapper_name\n    OPTIONS (option [, option] ...)\n\noption:\n  { HOST character-literal\n  | DATABASE character-literal\n  | USER character-literal\n  | PASSWORD character-literal\n  | SOCKET character-literal\n  | OWNER character-literal\n  | PORT numeric-literal }\n\nThis statement creates the definition of a server for use with the\nFEDERATED storage engine. The CREATE SERVER statement creates a new row\nwithin the servers table within the mysql database. This statement\nrequires the SUPER privilege.\n\nThe server_name should be a unique reference to the server. Server\ndefinitions are global within the scope of the server, it is not\npossible to qualify the server definition to a specific database.\nserver_name has a maximum length of 64 characters (names longer than 64\ncharacters are silently truncated), and is case insensitive. You may\nspecify the name as a quoted string.\n\nThe wrapper_name should be mysql, and may be quoted with single\nquotation marks. Other values for wrapper_name are not currently\nsupported.\n\nFor each option you must specify either a character literal or numeric\nliteral. Character literals are UTF-8, support a maximum length of 64\ncharacters and default to a blank (empty) string. String literals are\nsilently truncated to 64 characters. Numeric literals must be a number\nbetween 0 and 9999, default value is 0.\n\n*Note*: Note that the OWNER option is currently not applied, and has no\neffect on the ownership or operation of the server connection that is\ncreated.\n\nThe CREATE SERVER statement creates an entry in the mysql.servers table\nthat can later be used with the CREATE TABLE statement when creating a\nFEDERATED table. The options that you specify will be used to populate\nthe columns in the mysql.servers table. The table columns are\nServer_name, Host, Db, Username, Password, Port and Socket.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/create-server.html\n\n', 'CREATE SERVER s\nFOREIGN DATA WRAPPER mysql\nOPTIONS (USER ''Remote'', HOST ''192.168.1.106'', DATABASE ''test'');\n', 'http://dev.mysql.com/doc/refman/5.1/en/create-server.html'),
(472, 'FIELD', 36, 'Syntax:\nFIELD(str,str1,str2,str3,...)\n\nReturns the index (position) of str in the str1, str2, str3, ... list.\nReturns 0 if str is not found.\n\nIf all arguments to FIELD() are strings, all arguments are compared as\nstrings. If all arguments are numbers, they are compared as numbers.\nOtherwise, the arguments are compared as double.\n\nIf str is NULL, the return value is 0 because NULL fails equality\ncomparison with any value. FIELD() is the complement of ELT().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT FIELD(''ej'', ''Hej'', ''ej'', ''Heja'', ''hej'', ''foo'');\n        -> 2\nmysql> SELECT FIELD(''fo'', ''Hej'', ''ej'', ''Heja'', ''hej'', ''foo'');\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(473, 'MAKETIME', 31, 'Syntax:\nMAKETIME(hour,minute,second)\n\nReturns a time value calculated from the hour, minute, and second\narguments.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT MAKETIME(12,15,30);\n        -> ''12:15:30''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(474, 'CURDATE', 31, 'Syntax:\nCURDATE()\n\nReturns the current date as a value in ''YYYY-MM-DD'' or YYYYMMDD format,\ndepending on whether the function is used in a string or numeric\ncontext.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT CURDATE();\n        -> ''2008-06-13''\nmysql> SELECT CURDATE() + 0;\n        -> 20080613\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(475, 'SET PASSWORD', 10, 'Syntax:\nSET PASSWORD [FOR user] =\n    {\n        PASSWORD(''some password'')\n      | OLD_PASSWORD(''some password'')\n      | ''encrypted password''\n    }\n\nThe SET PASSWORD statement assigns a password to an existing MySQL user\naccount.\n\nIf the password is specified using the PASSWORD() or OLD_PASSWORD()\nfunction, the literal text of the password should be given. If the\npassword is specified without using either function, the password\nshould be the already-encrypted password value as returned by\nPASSWORD().\n\nWith no FOR clause, this statement sets the password for the current\nuser. Any client that has connected to the server using a nonanonymous\naccount can change the password for that account.\n\nWith a FOR clause, this statement sets the password for a specific\naccount on the current server host. Only clients that have the UPDATE\nprivilege for the mysql database can do this. The user value should be\ngiven in user_name@host_name format, where user_name and host_name are\nexactly as they are listed in the User and Host columns of the\nmysql.user table entry. For example, if you had an entry with User and\nHost column values of ''bob'' and ''%.loc.gov'', you would write the\nstatement like this:\n\nSET PASSWORD FOR ''bob''@''%.loc.gov'' = PASSWORD(''newpass'');\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/set-password.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/set-password.html'),
(476, 'ALTER TABLESPACE', 38, 'Syntax:\nALTER TABLESPACE tablespace_name\n    {ADD|DROP} DATAFILE ''file_name''\n    [INITIAL_SIZE [=] size]\n    [WAIT]\n    ENGINE [=] engine_name\n\nThis statement can be used either to add a new data file, or to drop a\ndata file from a tablespace.\n\nThe ADD DATAFILE variant enables you to specify an initial size using\nan INITIAL_SIZE clause, where size is measured in bytes; the default\nvalue is 128M (128 megabytes). You may optionally follow this integer\nvalue with a one-letter abbreviation for an order of magnitude, similar\nto those used in my.cnf. Generally, this is one of the letters M (for\nmegabytes) or G (for gigabytes).\n\n*Note*: All MySQL Cluster Disk Data objects share the same namespace.\nThis means that each Disk Data object must be uniquely named (and not\nmerely each Disk Data object of a given type). For example, you cannot\nhave a tablespace and an data file with the same name, or an undo log\nfile and a with the same name.\n\nPrior to MySQL Cluster NDB 6.2.17, 6.3.23, and 6.4.3, path and file\nnames for data files could not be longer than 128 characters.\n(Bug#31770 (http://bugs.mysql.com/bug.php?id=31770))\n\nOn 32-bit systems, the maximum supported value for INITIAL_SIZE is 4G.\n(Bug#29186 (http://bugs.mysql.com/bug.php?id=29186))\n\nINITIAL_SIZE is rounded as for CREATE TABLESPACE. Beginning with MySQL\nCluster NDB 6.2.19, MySQL Cluster NDB 6.3.32, MySQL Cluster NDB 7.0.13,\nand MySQL Cluster NDB 7.1.2, this rounding is done explicitly (also as\nwith CREATE TABLESPACE).\n\nOnce a data file has been created, its size cannot be changed; however,\nyou can add more data files to the tablespace using additional ALTER\nTABLESPACE ... ADD DATAFILE statements.\n\nUsing DROP DATAFILE with ALTER TABLESPACE drops the data file\n''file_name'' from the tablespace. This file must already have been added\nto the tablespace using CREATE TABLESPACE or ALTER TABLESPACE;\notherwise an error will result.\n\nBoth ALTER TABLESPACE ... ADD DATAFILE and ALTER TABLESPACE ... DROP\nDATAFILE require an ENGINE clause which specifies the storage engine\nused by the tablespace. In MySQL 5.1, the only accepted values for\nengine_name are NDB and NDBCLUSTER.\n\nWAIT is parsed but otherwise ignored, and so has no effect in MySQL\n5.1. It is intended for future expansion.\n\nWhen ALTER TABLESPACE ... ADD DATAFILE is used with ENGINE = NDB, a\ndata file is created on each Cluster data node. You can verify that the\ndata files were created and obtain information about them by querying\nthe INFORMATION_SCHEMA.FILES table. For example, the following query\nshows all data files belonging to the tablespace named newts:\n\nmysql> SELECT LOGFILE_GROUP_NAME, FILE_NAME, EXTRA\n    -> FROM INFORMATION_SCHEMA.FILES\n    -> WHERE TABLESPACE_NAME = ''newts'' AND FILE_TYPE = ''DATAFILE'';\n+--------------------+--------------+----------------+\n| LOGFILE_GROUP_NAME | FILE_NAME    | EXTRA          |\n+--------------------+--------------+----------------+\n| lg_3               | newdata.dat  | CLUSTER_NODE=3 |\n| lg_3               | newdata.dat  | CLUSTER_NODE=4 |\n| lg_3               | newdata2.dat | CLUSTER_NODE=3 |\n| lg_3               | newdata2.dat | CLUSTER_NODE=4 |\n+--------------------+--------------+----------------+\n2 rows in set (0.03 sec)\n\nSee http://dev.mysql.com/doc/refman/5.1/en/files-table.html.\n\nALTER TABLESPACE was added in MySQL 5.1.6. In MySQL 5.1, it is useful\nonly with Disk Data storage for MySQL Cluster. See\nhttp://dev.mysql.com/doc/refman/5.1/en/mysql-cluster-disk-data.html.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/alter-tablespace.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/alter-tablespace.html'),
(477, 'IF FUNCTION', 7, 'Syntax:\nIF(expr1,expr2,expr3)\n\nIf expr1 is TRUE (expr1 <> 0 and expr1 <> NULL) then IF() returns\nexpr2; otherwise it returns expr3. IF() returns a numeric or string\nvalue, depending on the context in which it is used.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html\n\n', 'mysql> SELECT IF(1>2,2,3);\n        -> 3\nmysql> SELECT IF(1<2,''yes'',''no'');\n        -> ''yes''\nmysql> SELECT IF(STRCMP(''test'',''test1''),''no'',''yes'');\n        -> ''no''\n', 'http://dev.mysql.com/doc/refman/5.1/en/control-flow-functions.html'),
(478, 'ENUM', 22, 'ENUM(''value1'',''value2'',...) [CHARACTER SET charset_name] [COLLATE\ncollation_name]\n\nAn enumeration. A string object that can have only one value, chosen\nfrom the list of values ''value1'', ''value2'', ..., NULL or the special ''''\nerror value. An ENUM column can have a maximum of 65,535 distinct\nvalues. ENUM values are represented internally as integers.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(479, 'DATABASE', 17, 'Syntax:\nDATABASE()\n\nReturns the default (current) database name as a string in the utf8\ncharacter set. If there is no default database, DATABASE() returns\nNULL. Within a stored routine, the default database is the database\nthat the routine is associated with, which is not necessarily the same\nas the database that is the default in the calling context.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT DATABASE();\n        -> ''test''\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(480, 'POINTFROMWKB', 32, 'PointFromWKB(wkb[,srid])\n\nConstructs a POINT value using its WKB representation and SRID.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkb-functions\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/creating-spatial-values.html#gis-wkb-functions'),
(481, 'POWER', 4, 'Syntax:\nPOWER(X,Y)\n\nThis is a synonym for POW().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(482, 'ATAN', 4, 'Syntax:\nATAN(X)\n\nReturns the arc tangent of X, that is, the value whose tangent is X.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT ATAN(2);\n        -> 1.1071487177941\nmysql> SELECT ATAN(-2);\n        -> -1.1071487177941\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(483, 'STRCMP', 36, 'Syntax:\nSTRCMP(expr1,expr2)\n\nSTRCMP() returns 0 if the strings are the same, -1 if the first\nargument is smaller than the second according to the current sort\norder, and 1 otherwise.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html\n\n', 'mysql> SELECT STRCMP(''text'', ''text2'');\n        -> -1\nmysql> SELECT STRCMP(''text2'', ''text'');\n        -> 1\nmysql> SELECT STRCMP(''text'', ''text'');\n        -> 0\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-comparison-functions.html'),
(484, 'INSERT DELAYED', 27, 'Syntax:\nINSERT DELAYED ...\n\nThe DELAYED option for the INSERT statement is a MySQL extension to\nstandard SQL that is very useful if you have clients that cannot or\nneed not wait for the INSERT to complete. This is a common situation\nwhen you use MySQL for logging and you also periodically run SELECT and\nUPDATE statements that take a long time to complete.\n\nWhen a client uses INSERT DELAYED, it gets an okay from the server at\nonce, and the row is queued to be inserted when the table is not in use\nby any other thread.\n\nAnother major benefit of using INSERT DELAYED is that inserts from many\nclients are bundled together and written in one block. This is much\nfaster than performing many separate inserts.\n\nNote that INSERT DELAYED is slower than a normal INSERT if the table is\nnot otherwise in use. There is also the additional overhead for the\nserver to handle a separate thread for each table for which there are\ndelayed rows. This means that you should use INSERT DELAYED only when\nyou are really sure that you need it.\n\nThe queued rows are held only in memory until they are inserted into\nthe table. This means that if you terminate mysqld forcibly (for\nexample, with kill -9) or if mysqld dies unexpectedly, any queued rows\nthat have not been written to disk are lost.\n\nThere are some constraints on the use of DELAYED:\n\no INSERT DELAYED works only with MyISAM, MEMORY, ARCHIVE, and (as of\n  MySQL 5.1.19) BLACKHOLE tables. For engines that do not support\n  DELAYED, an error occurs.\n\no An error occurs for INSERT DELAYED if used with a table that has been\n  locked with LOCK TABLES because the insert must be handled by a\n  separate thread, not by the session that holds the lock.\n\no For MyISAM tables, if there are no free blocks in the middle of the\n  data file, concurrent SELECT and INSERT statements are supported.\n  Under these circumstances, you very seldom need to use INSERT DELAYED\n  with MyISAM.\n\no INSERT DELAYED should be used only for INSERT statements that specify\n  value lists. The server ignores DELAYED for INSERT ... SELECT or\n  INSERT ... ON DUPLICATE KEY UPDATE statements.\n\no Because the INSERT DELAYED statement returns immediately, before the\n  rows are inserted, you cannot use LAST_INSERT_ID() to get the\n  AUTO_INCREMENT value that the statement might generate.\n\no DELAYED rows are not visible to SELECT statements until they actually\n  have been inserted.\n\no INSERT DELAYED is treated as a normal INSERT if the statement inserts\n  multiple rows and binary logging is enabled and the global logging\n  format is to use statement-based logging (binlog_format is set to\n  STATEMENT). This restriction does not apply to row-based binary\n  logging.\n\no DELAYED is ignored on slave replication servers, so that INSERT\n  DELAYED is treated as a normal INSERT on slaves. This is because\n  DELAYED could cause the slave to have different data than the master.\n\no Pending INSERT DELAYED statements are lost if a table is write locked\n  and ALTER TABLE is used to modify the table structure.\n\no INSERT DELAYED is not supported for views.\n\no INSERT DELAYED is not supported for partitioned tables.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/insert-delayed.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/insert-delayed.html'),
(485, 'SHOW PROFILE', 26, 'Syntax:\nSHOW PROFILES\n\nThe SHOW PROFILE statement display profiling information that indicates\nresource usage for statements executed during the course of the current\nsession. It is used together with SHOW PROFILES; see [HELP SHOW\nPROFILES].\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-profile.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-profile.html');
INSERT INTO `help_topic` (`help_topic_id`, `name`, `help_category_id`, `description`, `example`, `url`) VALUES
(486, 'SHOW PROCEDURE CODE', 26, 'Syntax:\nSHOW PROCEDURE CODE proc_name\n\nThis statement is a MySQL extension that is available only for servers\nthat have been built with debugging support. It displays a\nrepresentation of the internal implementation of the named stored\nprocedure. A similar statement, SHOW FUNCTION CODE, displays\ninformation about stored functions (see [HELP SHOW FUNCTION CODE]).\n\nBoth statements require that you be the owner of the routine or have\nSELECT access to the mysql.proc table.\n\nIf the named routine is available, each statement produces a result\nset. Each row in the result set corresponds to one "instruction" in the\nroutine. The first column is Pos, which is an ordinal number beginning\nwith 0. The second column is Instruction, which contains an SQL\nstatement (usually changed from the original source), or a directive\nwhich has meaning only to the stored-routine handler.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-procedure-code.html\n\n', 'mysql> DELIMITER //\nmysql> CREATE PROCEDURE p1 ()\n    -> BEGIN\n    ->   DECLARE fanta INT DEFAULT 55;\n    ->   DROP TABLE t2;\n    ->   LOOP\n    ->     INSERT INTO t3 VALUES (fanta);\n    ->     END LOOP;\n    ->   END//\nQuery OK, 0 rows affected (0.00 sec)\n\nmysql> SHOW PROCEDURE CODE p1//\n+-----+----------------------------------------+\n| Pos | Instruction                            |\n+-----+----------------------------------------+\n|   0 | set fanta@0 55                         |\n|   1 | stmt 9 "DROP TABLE t2"                 |\n|   2 | stmt 5 "INSERT INTO t3 VALUES (fanta)" |\n|   3 | jump 2                                 |\n+-----+----------------------------------------+\n4 rows in set (0.00 sec)\n', 'http://dev.mysql.com/doc/refman/5.1/en/show-procedure-code.html'),
(487, 'MEDIUMTEXT', 22, 'MEDIUMTEXT [CHARACTER SET charset_name] [COLLATE collation_name]\n\nA TEXT column with a maximum length of 16,777,215 (224 - 1) characters.\nThe effective maximum length is less if the value contains multi-byte\ncharacters. Each MEDIUMTEXT value is stored using a three-byte length\nprefix that indicates the number of bytes in the value.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/string-type-overview.html'),
(488, 'LN', 4, 'Syntax:\nLN(X)\n\nReturns the natural logarithm of X; that is, the base-e logarithm of X.\nIf X is less than or equal to 0, then NULL is returned.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT LN(2);\n        -> 0.69314718055995\nmysql> SELECT LN(-2);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(489, 'RETURN', 23, 'Syntax:\nRETURN expr\n\nThe RETURN statement terminates execution of a stored function and\nreturns the value expr to the function caller. There must be at least\none RETURN statement in a stored function. There may be more than one\nif the function has multiple exit points.\n\nThis statement is not used in stored procedures, triggers, or events.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/return.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/return.html'),
(490, 'SHOW COLLATION', 26, 'Syntax:\nSHOW COLLATION\n    [LIKE ''pattern'' | WHERE expr]\n\nThis statement lists collations supported by the server. By default,\nthe output from SHOW COLLATION includes all available collations. The\nLIKE clause, if present, indicates which collation names to match. The\nWHERE clause can be given to select rows using more general conditions,\nas discussed in\nhttp://dev.mysql.com/doc/refman/5.1/en/extended-show.html. For example:\n\nmysql> SHOW COLLATION LIKE ''latin1%'';\n+-------------------+---------+----+---------+----------+---------+\n| Collation         | Charset | Id | Default | Compiled | Sortlen |\n+-------------------+---------+----+---------+----------+---------+\n| latin1_german1_ci | latin1  |  5 |         |          |       0 |\n| latin1_swedish_ci | latin1  |  8 | Yes     | Yes      |       0 |\n| latin1_danish_ci  | latin1  | 15 |         |          |       0 |\n| latin1_german2_ci | latin1  | 31 |         | Yes      |       2 |\n| latin1_bin        | latin1  | 47 |         | Yes      |       0 |\n| latin1_general_ci | latin1  | 48 |         |          |       0 |\n| latin1_general_cs | latin1  | 49 |         |          |       0 |\n| latin1_spanish_ci | latin1  | 94 |         |          |       0 |\n+-------------------+---------+----+---------+----------+---------+\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/show-collation.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/show-collation.html'),
(491, 'LOG', 4, 'Syntax:\nLOG(X), LOG(B,X)\n\nIf called with one parameter, this function returns the natural\nlogarithm of X. If X is less than or equal to 0, then NULL is returned.\n\nThe inverse of this function (when called with a single argument) is\nthe EXP() function.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT LOG(2);\n        -> 0.69314718055995\nmysql> SELECT LOG(-2);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(492, 'SET SQL_LOG_BIN', 26, 'Syntax:\nSET sql_log_bin = {0|1}\n\nDisables or enables binary logging for the current session (sql_log_bin\nis a session variable) if the client has the SUPER privilege. The\nstatement fails with an error if the client does not have that\nprivilege.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/set-sql-log-bin.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/set-sql-log-bin.html'),
(493, '!=', 18, 'Syntax:\n<>, !=\n\nNot equal:\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT ''.01'' <> ''0.01'';\n        -> 1\nmysql> SELECT .01 <> ''0.01'';\n        -> 0\nmysql> SELECT ''zapp'' <> ''zappp'';\n        -> 1\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(494, 'WHILE', 23, 'Syntax:\n[begin_label:] WHILE search_condition DO\n    statement_list\nEND WHILE [end_label]\n\nThe statement list within a WHILE statement is repeated as long as the\nsearch_condition is true. statement_list consists of one or more\nstatements.\n\nA WHILE statement can be labeled. See [HELP BEGIN END] for the rules\nregarding label use.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/while-statement.html\n\n', 'CREATE PROCEDURE dowhile()\nBEGIN\n  DECLARE v1 INT DEFAULT 5;\n\n  WHILE v1 > 0 DO\n    ...\n    SET v1 = v1 - 1;\n  END WHILE;\nEND;\n', 'http://dev.mysql.com/doc/refman/5.1/en/while-statement.html'),
(495, 'AES_DECRYPT', 12, 'Syntax:\nAES_DECRYPT(crypt_str,key_str)\n\nThis function decrypts data using the official AES (Advanced Encryption\nStandard) algorithm. For more information, see the description of\nAES_ENCRYPT().\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/encryption-functions.html'),
(496, 'DAYNAME', 31, 'Syntax:\nDAYNAME(date)\n\nReturns the name of the weekday for date. As of MySQL 5.1.12, the\nlanguage used for the name is controlled by the value of the\nlc_time_names system variable\n(http://dev.mysql.com/doc/refman/5.1/en/locale-support.html).\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html\n\n', 'mysql> SELECT DAYNAME(''2007-02-03'');\n        -> ''Saturday''\n', 'http://dev.mysql.com/doc/refman/5.1/en/date-and-time-functions.html'),
(497, 'COERCIBILITY', 17, 'Syntax:\nCOERCIBILITY(str)\n\nReturns the collation coercibility value of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT COERCIBILITY(''abc'' COLLATE latin1_swedish_ci);\n        -> 0\nmysql> SELECT COERCIBILITY(USER());\n        -> 3\nmysql> SELECT COERCIBILITY(''abc'');\n        -> 4\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(498, 'INT', 22, 'INT[(M)] [UNSIGNED] [ZEROFILL]\n\nA normal-size integer. The signed range is -2147483648 to 2147483647.\nThe unsigned range is 0 to 4294967295.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html\n\n', '', 'http://dev.mysql.com/doc/refman/5.1/en/numeric-type-overview.html'),
(499, 'GLENGTH', 13, 'GLength(ls)\n\nReturns as a double-precision number the length of the LineString value\nls in its associated spatial reference.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#linestring-property-functions\n\n', 'mysql> SET @ls = ''LineString(1 1,2 2,3 3)'';\nmysql> SELECT GLength(GeomFromText(@ls));\n+----------------------------+\n| GLength(GeomFromText(@ls)) |\n+----------------------------+\n|            2.8284271247462 |\n+----------------------------+\n', 'http://dev.mysql.com/doc/refman/5.1/en/geometry-property-functions.html#linestring-property-functions'),
(500, 'RADIANS', 4, 'Syntax:\nRADIANS(X)\n\nReturns the argument X, converted from degrees to radians. (Note that\nπ radians equals 180 degrees.)\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html\n\n', 'mysql> SELECT RADIANS(90);\n        -> 1.5707963267949\n', 'http://dev.mysql.com/doc/refman/5.1/en/mathematical-functions.html'),
(501, 'COLLATION', 17, 'Syntax:\nCOLLATION(str)\n\nReturns the collation of the string argument.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT COLLATION(''abc'');\n        -> ''latin1_swedish_ci''\nmysql> SELECT COLLATION(_utf8''abc'');\n        -> ''utf8_general_ci''\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(502, 'COALESCE', 18, 'Syntax:\nCOALESCE(value,...)\n\nReturns the first non-NULL value in the list, or NULL if there are no\nnon-NULL values.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html\n\n', 'mysql> SELECT COALESCE(NULL,1);\n        -> 1\nmysql> SELECT COALESCE(NULL,NULL,NULL);\n        -> NULL\n', 'http://dev.mysql.com/doc/refman/5.1/en/comparison-operators.html'),
(503, 'VERSION', 17, 'Syntax:\nVERSION()\n\nReturns a string that indicates the MySQL server version. The string\nuses the utf8 character set.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/information-functions.html\n\n', 'mysql> SELECT VERSION();\n        -> ''5.1.53-standard''\n', 'http://dev.mysql.com/doc/refman/5.1/en/information-functions.html'),
(504, 'MAKE_SET', 36, 'Syntax:\nMAKE_SET(bits,str1,str2,...)\n\nReturns a set value (a string containing substrings separated by ","\ncharacters) consisting of the strings that have the corresponding bit\nin bits set. str1 corresponds to bit 0, str2 to bit 1, and so on. NULL\nvalues in str1, str2, ... are not appended to the result.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT MAKE_SET(1,''a'',''b'',''c'');\n        -> ''a''\nmysql> SELECT MAKE_SET(1 | 4,''hello'',''nice'',''world'');\n        -> ''hello,world''\nmysql> SELECT MAKE_SET(1 | 4,''hello'',''nice'',NULL,''world'');\n        -> ''hello''\nmysql> SELECT MAKE_SET(0,''a'',''b'',''c'');\n        -> ''''\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html'),
(505, 'FIND_IN_SET', 36, 'Syntax:\nFIND_IN_SET(str,strlist)\n\nReturns a value in the range of 1 to N if the string str is in the\nstring list strlist consisting of N substrings. A string list is a\nstring composed of substrings separated by "," characters. If the first\nargument is a constant string and the second is a column of type SET,\nthe FIND_IN_SET() function is optimized to use bit arithmetic. Returns\n0 if str is not in strlist or if strlist is the empty string. Returns\nNULL if either argument is NULL. This function does not work properly\nif the first argument contains a comma (",") character.\n\nURL: http://dev.mysql.com/doc/refman/5.1/en/string-functions.html\n\n', 'mysql> SELECT FIND_IN_SET(''b'',''a,b,c,d'');\n        -> 2\n', 'http://dev.mysql.com/doc/refman/5.1/en/string-functions.html');

-- --------------------------------------------------------

--
-- Table structure for table `host`
--

CREATE TABLE IF NOT EXISTS `host` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Host`,`Db`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Host privileges;  Merged with database privileges';

--
-- Dumping data for table `host`
--


-- --------------------------------------------------------

--
-- Table structure for table `ndb_binlog_index`
--

CREATE TABLE IF NOT EXISTS `ndb_binlog_index` (
  `Position` bigint(20) unsigned NOT NULL,
  `File` varchar(255) NOT NULL,
  `epoch` bigint(20) unsigned NOT NULL,
  `inserts` bigint(20) unsigned NOT NULL,
  `updates` bigint(20) unsigned NOT NULL,
  `deletes` bigint(20) unsigned NOT NULL,
  `schemaops` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`epoch`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ndb_binlog_index`
--


-- --------------------------------------------------------

--
-- Table structure for table `plugin`
--

CREATE TABLE IF NOT EXISTS `plugin` (
  `name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `dl` char(128) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='MySQL plugins';

--
-- Dumping data for table `plugin`
--


-- --------------------------------------------------------

--
-- Table structure for table `proc`
--

CREATE TABLE IF NOT EXISTS `proc` (
  `db` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `name` char(64) NOT NULL DEFAULT '',
  `type` enum('FUNCTION','PROCEDURE') NOT NULL,
  `specific_name` char(64) NOT NULL DEFAULT '',
  `language` enum('SQL') NOT NULL DEFAULT 'SQL',
  `sql_data_access` enum('CONTAINS_SQL','NO_SQL','READS_SQL_DATA','MODIFIES_SQL_DATA') NOT NULL DEFAULT 'CONTAINS_SQL',
  `is_deterministic` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `security_type` enum('INVOKER','DEFINER') NOT NULL DEFAULT 'DEFINER',
  `param_list` blob NOT NULL,
  `returns` longblob NOT NULL,
  `body` longblob NOT NULL,
  `definer` char(77) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sql_mode` set('REAL_AS_FLOAT','PIPES_AS_CONCAT','ANSI_QUOTES','IGNORE_SPACE','NOT_USED','ONLY_FULL_GROUP_BY','NO_UNSIGNED_SUBTRACTION','NO_DIR_IN_CREATE','POSTGRESQL','ORACLE','MSSQL','DB2','MAXDB','NO_KEY_OPTIONS','NO_TABLE_OPTIONS','NO_FIELD_OPTIONS','MYSQL323','MYSQL40','ANSI','NO_AUTO_VALUE_ON_ZERO','NO_BACKSLASH_ESCAPES','STRICT_TRANS_TABLES','STRICT_ALL_TABLES','NO_ZERO_IN_DATE','NO_ZERO_DATE','INVALID_DATES','ERROR_FOR_DIVISION_BY_ZERO','TRADITIONAL','NO_AUTO_CREATE_USER','HIGH_NOT_PRECEDENCE','NO_ENGINE_SUBSTITUTION','PAD_CHAR_TO_FULL_LENGTH') NOT NULL DEFAULT '',
  `comment` char(64) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `character_set_client` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `collation_connection` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `db_collation` char(32) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `body_utf8` longblob,
  PRIMARY KEY (`db`,`name`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Stored Procedures';

--
-- Dumping data for table `proc`
--


-- --------------------------------------------------------

--
-- Table structure for table `procs_priv`
--

CREATE TABLE IF NOT EXISTS `procs_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Routine_name` char(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Routine_type` enum('FUNCTION','PROCEDURE') COLLATE utf8_bin NOT NULL,
  `Grantor` char(77) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Proc_priv` set('Execute','Alter Routine','Grant') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Host`,`Db`,`User`,`Routine_name`,`Routine_type`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Procedure privileges';

--
-- Dumping data for table `procs_priv`
--


-- --------------------------------------------------------

--
-- Table structure for table `servers`
--

CREATE TABLE IF NOT EXISTS `servers` (
  `Server_name` char(64) NOT NULL DEFAULT '',
  `Host` char(64) NOT NULL DEFAULT '',
  `Db` char(64) NOT NULL DEFAULT '',
  `Username` char(64) NOT NULL DEFAULT '',
  `Password` char(64) NOT NULL DEFAULT '',
  `Port` int(4) NOT NULL DEFAULT '0',
  `Socket` char(64) NOT NULL DEFAULT '',
  `Wrapper` char(64) NOT NULL DEFAULT '',
  `Owner` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`Server_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='MySQL Foreign Servers table';

--
-- Dumping data for table `servers`
--


-- --------------------------------------------------------

--
-- Table structure for table `slow_log`
--

CREATE TABLE IF NOT EXISTS `slow_log` (
  `start_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_host` mediumtext NOT NULL,
  `query_time` time NOT NULL,
  `lock_time` time NOT NULL,
  `rows_sent` int(11) NOT NULL,
  `rows_examined` int(11) NOT NULL,
  `db` varchar(512) NOT NULL,
  `last_insert_id` int(11) NOT NULL,
  `insert_id` int(11) NOT NULL,
  `server_id` int(10) unsigned NOT NULL,
  `sql_text` mediumtext NOT NULL
) ENGINE=CSV DEFAULT CHARSET=utf8 COMMENT='Slow log';

--
-- Dumping data for table `slow_log`
--


-- --------------------------------------------------------

--
-- Table structure for table `tables_priv`
--

CREATE TABLE IF NOT EXISTS `tables_priv` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Db` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Table_name` char(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Grantor` char(77) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Table_priv` set('Select','Insert','Update','Delete','Create','Drop','Grant','References','Index','Alter','Create View','Show view','Trigger') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `Column_priv` set('Select','Insert','Update','References') CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`Host`,`Db`,`User`,`Table_name`),
  KEY `Grantor` (`Grantor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table privileges';

--
-- Dumping data for table `tables_priv`
--


-- --------------------------------------------------------

--
-- Table structure for table `time_zone`
--

CREATE TABLE IF NOT EXISTS `time_zone` (
  `Time_zone_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Use_leap_seconds` enum('Y','N') NOT NULL DEFAULT 'N',
  PRIMARY KEY (`Time_zone_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zones' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `time_zone`
--


-- --------------------------------------------------------

--
-- Table structure for table `time_zone_leap_second`
--

CREATE TABLE IF NOT EXISTS `time_zone_leap_second` (
  `Transition_time` bigint(20) NOT NULL,
  `Correction` int(11) NOT NULL,
  PRIMARY KEY (`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Leap seconds information for time zones';

--
-- Dumping data for table `time_zone_leap_second`
--


-- --------------------------------------------------------

--
-- Table structure for table `time_zone_name`
--

CREATE TABLE IF NOT EXISTS `time_zone_name` (
  `Name` char(64) NOT NULL,
  `Time_zone_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone names';

--
-- Dumping data for table `time_zone_name`
--


-- --------------------------------------------------------

--
-- Table structure for table `time_zone_transition`
--

CREATE TABLE IF NOT EXISTS `time_zone_transition` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_time` bigint(20) NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`Time_zone_id`,`Transition_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transitions';

--
-- Dumping data for table `time_zone_transition`
--


-- --------------------------------------------------------

--
-- Table structure for table `time_zone_transition_type`
--

CREATE TABLE IF NOT EXISTS `time_zone_transition_type` (
  `Time_zone_id` int(10) unsigned NOT NULL,
  `Transition_type_id` int(10) unsigned NOT NULL,
  `Offset` int(11) NOT NULL DEFAULT '0',
  `Is_DST` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Abbreviation` char(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`Time_zone_id`,`Transition_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Time zone transition types';

--
-- Dumping data for table `time_zone_transition_type`
--


-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Host` char(60) COLLATE utf8_bin NOT NULL DEFAULT '',
  `User` char(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Password` char(41) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Select_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Insert_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Update_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Delete_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Drop_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Reload_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Shutdown_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Process_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `File_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Grant_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `References_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Index_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_db_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Super_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_tmp_table_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Lock_tables_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Execute_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_slave_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Repl_client_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Show_view_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Alter_routine_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Create_user_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Event_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `Trigger_priv` enum('N','Y') CHARACTER SET utf8 NOT NULL DEFAULT 'N',
  `ssl_type` enum('','ANY','X509','SPECIFIED') CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ssl_cipher` blob NOT NULL,
  `x509_issuer` blob NOT NULL,
  `x509_subject` blob NOT NULL,
  `max_questions` int(11) unsigned NOT NULL DEFAULT '0',
  `max_updates` int(11) unsigned NOT NULL DEFAULT '0',
  `max_connections` int(11) unsigned NOT NULL DEFAULT '0',
  `max_user_connections` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Host`,`User`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and global privileges';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Host`, `User`, `Password`, `Select_priv`, `Insert_priv`, `Update_priv`, `Delete_priv`, `Create_priv`, `Drop_priv`, `Reload_priv`, `Shutdown_priv`, `Process_priv`, `File_priv`, `Grant_priv`, `References_priv`, `Index_priv`, `Alter_priv`, `Show_db_priv`, `Super_priv`, `Create_tmp_table_priv`, `Lock_tables_priv`, `Execute_priv`, `Repl_slave_priv`, `Repl_client_priv`, `Create_view_priv`, `Show_view_priv`, `Create_routine_priv`, `Alter_routine_priv`, `Create_user_priv`, `Event_priv`, `Trigger_priv`, `ssl_type`, `ssl_cipher`, `x509_issuer`, `x509_subject`, `max_questions`, `max_updates`, `max_connections`, `max_user_connections`) VALUES
('localhost', 'root', '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '', '', 0, 0, 0, 0),
('127.0.0.1', 'root', '', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', 'Y', '', '', '', '', 0, 0, 0, 0),
('localhost', '', '', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', 'N', '', '', '', '', 0, 0, 0, 0);
--
-- Database: `polltest`
--
CREATE DATABASE `polltest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `polltest`;

-- --------------------------------------------------------

--
-- Table structure for table `aspirant`
--

CREATE TABLE IF NOT EXISTS `aspirant` (
  `asp_id` int(11) NOT NULL AUTO_INCREMENT,
  `asp_name` varchar(64) NOT NULL,
  `phone` varchar(24) NOT NULL,
  `asp_adm` varchar(15) NOT NULL,
  `asp_seat` varchar(64) NOT NULL,
  `year` varchar(50) NOT NULL,
  `party` varchar(50) NOT NULL,
  PRIMARY KEY (`asp_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `aspirant`
--

INSERT INTO `aspirant` (`asp_id`, `asp_name`, `phone`, `asp_adm`, `asp_seat`, `year`, `party`) VALUES
(1, 'patrick', '56467', 'trgsxjxvbm', 'chairperson', '', ''),
(2, 'jkaskjhkf', '3456457', 'ghfjhgjkhjkk', 'SEcretary general', '', ''),
(3, 'Duncan', '0714757241', 'CIT-223-015/201', 'chairperson', 'Y3S2', 'Jubilee'),
(4, 'Duncan', '23456789', '23456789', 'Secretary general', '7', 'Big Fish'),
(5, 'Pacheko', '0714757241', 'CIT-223-015/201', 'chairperson', 'Y3S2', 'Jubilee'),
(6, 'Pacheko', '0714757241', 'CIT-223-015/201', 'chairperson', 'Y3S2', 'Jubilee');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE IF NOT EXISTS `languages` (
  `lan_id` int(100) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(10) NOT NULL,
  `about` varchar(255) NOT NULL,
  `votecount` int(255) NOT NULL,
  PRIMARY KEY (`lan_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`lan_id`, `fullname`, `about`, `votecount`) VALUES
(1, 'BJP', 'BJP is', 5),
(2, 'CONGRESS', 'CONGRESS is', 6),
(3, 'AAP', 'AAP is', 21),
(4, 'TMC', 'TMC is', 17),
(5, 'NIRDLIY', 'NIRDLIY is ', 4);

-- --------------------------------------------------------

--
-- Table structure for table `loginusers`
--

CREATE TABLE IF NOT EXISTS `loginusers` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rank` varchar(80) NOT NULL DEFAULT 'voter',
  `status` varchar(10) NOT NULL DEFAULT 'ACTIVE',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `loginusers`
--

INSERT INTO `loginusers` (`id`, `username`, `password`, `rank`, `status`) VALUES
(47, 'helllo', 'b373c043b854b0ebb97afe9b0ba47059', 'voter', 'ACTIVE'),
(46, 'jaha', 'e3df9353ab12391b79865f25a0d7068e', 'voter', 'ACTIVE'),
(45, 'action', '1ace9555f0aafb4fe1e75309e8f79e4d', 'voter', 'ACTIVE'),
(44, 'arjun', '451d3eb1573c7ebb70c08dfee9766509', 'voter', 'ACTIVE'),
(43, 'niku19', 'ac61ebbe84c06debaa78c0a832330164', 'voter', 'ACTIVE'),
(42, 'ejjhed', 'b3f70c0d1b269668e937741a5d5797ab', 'voter', 'ACTIVE'),
(41, 'Anirban', '9a7108cfaa7f51efb5fcda9e9d4b7a90', 'voter', 'ACTIVE'),
(40, 'dnddd', 'b5d165334b465a7fc42310750430b3f9', 'voter', 'ACTIVE'),
(48, 'suraj', 'e10adc3949ba59abbe56e057f20f883e', 'voter', 'ACTIVE'),
(49, 'oluochp6@gmail', 'e10adc3949ba59abbe56e057f20f883e', 'voter', 'ACTIVE'),
(50, 'oluochp6@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'voter', 'ACTIVE'),
(51, 'www.pacheko.inc@gmail.com', '5d41402abc4b2a76b9719d911017c592', 'administrator', 'ACTIVE'),
(52, 'john@a.b', 'hello', 'voter', 'ACTIVE'),
(53, 'a@d.c', '5d41402abc4b2a76b9719d911017c592', 'voter', 'ACTIVE'),
(54, 'a@b.c', 'f898198629bb686f1dfc3d1ac8b13506', 'voter', 'ACTIVE'),
(55, 'mulongodancan25@gmail.com', '7492e2f3053c854d4e8f7e1ca149568c', 'voter', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE IF NOT EXISTS `voters` (
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'NOTVOTED',
  `voted` varchar(255) DEFAULT NULL,
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`firstname`, `lastname`, `username`, `status`, `voted`) VALUES
('sdjdjdj', 'djdjddjj', 'helllo', 'VOTED', 'python'),
('Anirban', 'oodoododo', 'jaha', 'NOTVOTED', NULL),
('Anirban', 'Dutta', 'action', 'VOTED', 'php'),
('Anirban', 'Dutta', 'arjun', 'NOTVOTED', NULL),
('janemaan', 'lohiid', 'niku19', 'VOTED', 'c++'),
('asdhk', 'ddddnd', 'ejjhed', 'NOTVOTED', NULL),
('Anirban', 'Dutta', 'Anirban', 'VOTED', 'java'),
('ndndnd', 'dhbhdd', 'dnddd', 'NOTVOTED', NULL),
('suraj', 'ghosh', 'suraj', 'VOTED', 'NIRDLIY'),
('patrick', 'admin@tictac.ro', 'oluochp6@gmail', 'NOTVOTED', NULL),
('pacheko', 'pacheko', 'oluochp6@gmail.com', 'NOTVOTED', NULL),
('hello', 'hello', 'www.pacheko.inc@gmail.com', 'NOTVOTED', NULL),
('doh', 'john', 'john@a.b', 'NOTVOTED', NULL),
('qqww', 'qqwee', 'a@d.c', 'NOTVOTED', NULL),
('doh', 'admin@tictac.ro', 'a@b.c', 'NOTVOTED', NULL),
('Duncan', 'Daniel', 'mulongodancan25@gmail.com', 'NOTVOTED', NULL);
--
-- Database: `school`
--
CREATE DATABASE `school` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `school`;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE IF NOT EXISTS `accounts` (
  `user_id` varchar(50) NOT NULL,
  `account_no` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`user_id`, `account_no`) VALUES
('0', '99978027');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `phone`, `address`, `email`, `password`, `role`) VALUES
('Duncan', '0714757241', '6787644', 'pyrum@manyali.com', '7492e2f3053c854d4e8f7e1ca149568c', 'user');
--
-- Database: `shoppingcart`
--
CREATE DATABASE `shoppingcart` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `shoppingcart`;

-- --------------------------------------------------------

--
-- Table structure for table `internet_shop`
--

CREATE TABLE IF NOT EXISTS `internet_shop` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `img` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `img` (`img`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=31 ;

--
-- Dumping data for table `internet_shop`
--

INSERT INTO `internet_shop` (`id`, `img`, `name`, `description`, `price`) VALUES
(12, 'k1.jpg', 'Wheat Flour', '2kgs Golden Temple Wheat Flour', 150),
(13, 'm1.jpg', 'Beef Stake', '1kg Beef Stake', 440),
(14, 'tt1.jpg', '6 Piece Apples', '6 apples packed', 200),
(15, 'tt4.jpg', 'Apricot Sun Kissed Super Snacks', 'Apricot Sun Kissed Super Snacks', 90),
(19, 'm5.jpg', 'Chicken Thighs', '2 chicken thighs', 250),
(20, 'k3.jpg', 'Ham Peas', '700mg Ham peas', 150),
(1, 't1.jpg', 'Sliced Beets', 'canned sliced beets 550ml', 500),
(2, 't2.jpg', 'Chicken with Rice', 'Canned Chicken with Rice', 600),
(3, 't3.jpg', 'Peeled tomatoes', 'canned peeled tomatoes', 100),
(30, '1.jpg', 'ttrtrrryry', 'tyyyeueu', 464);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `message_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(500) NOT NULL,
  PRIMARY KEY (`message_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=85 ;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `name`, `email`, `subject`, `message`) VALUES
(69, '', '', '', ''),
(70, 'patrick', 'oluochp6gmail.com', 'delay in delivery', 'hello there'),
(71, '', '', '', ''),
(72, '', '', '', ''),
(73, '', '', '', ''),
(75, '', '', '', ''),
(76, '', '', '', ''),
(77, '', '', '', ''),
(78, '', '', '', ''),
(79, '', '', '', ''),
(80, '', '', '', ''),
(81, 'hghgjjg', 'mulongodanaca12@gmail.com', 'jjjtjtjt', 'hthhthhtttjtjt'),
(82, '', '', '', ''),
(83, 'vvvvv', 'vvvv', 'vvv', 'vvvv'),
(84, '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `confirmation` varchar(30) NOT NULL,
  `total` varchar(100) NOT NULL,
  `design` varchar(300) NOT NULL,
  `note` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=75 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product`, `qty`, `confirmation`, `total`, `design`, `note`) VALUES
(23, '6 Piece Apples', 1, 'XBI-VC4', '200', 'design/', ''),
(25, 'Sliced Beets', 4, 'XBI-VC4', '2000', 'design/', ''),
(26, 'Chicken Thighs', 1, 'XBI-VC4', '250', 'design/', ''),
(36, '6 Piece Apples', 1, 'IUI-WAT', '200', 'design/', ''),
(37, 'Chicken with Rice', 1, 'HO-P31', '600', 'design/', ''),
(38, 'Wheat Flour', 1, 'KWPQ-V2O', '150', 'design/', ''),
(39, 'Beef Stake', 1, 'HO-P31', '440', 'design/', ''),
(40, 'Beef Stake', 4, 'PQGG-BWU', '1760', 'design/', ''),
(41, '6 Piece Apples', 1, 'FYW-YIJ', '200', 'design/', ''),
(42, 'Wheat Flour', 4, 'HKXJ-5QA', '600', 'design/', ''),
(43, '6 Piece Apples', 2, 'DFDU-VLX', '400', 'design/', ''),
(44, 'Apricot Sun Kissed Super Snacks', 3, 'THRW-PPN', '270', 'design/', ''),
(45, 'Wheat Flour', 3, 'LNGW-UIJ', '450', 'design/', ''),
(46, '6 Piece Apples', 3, 'LNGW-UIJ', '600', 'design/', ''),
(47, 'Wheat Flour', 3, 'BBK-MJ4', '450', 'design/', ''),
(48, '6 Piece Apples', 3, 'BBK-MJ4', '600', 'design/', ''),
(49, 'Beef Stake', 2, 'AHAW-D3M', '880', 'design/', ''),
(50, '6 Piece Apples', 4, 'AHAW-D3M', '800', 'design/', ''),
(51, 'Beef Stake', 3, 'ZV-XIP', '1320', 'design/', ''),
(53, '6 Piece Apples', 1, 'MSZ-3SH', '200', 'design/', ''),
(54, 'Peeled tomatoes', 1, 'LKZ-AFR', '100', 'design/', ''),
(55, '6 Piece Apples', 2, 'ZPR-Q1U', '400', 'design/', ''),
(56, 'Chicken Thighs', 4, 'ZPR-Q1U', '1000', 'design/', ''),
(57, '6 Piece Apples', 3, 'GVU-UH0', '600', 'design/', ''),
(58, 'Sliced Beets', 3, 'ODF-C2W', '1500', 'design/', ''),
(59, 'Wheat Flour', 2, 'GWJH-4YZ', '300', 'design/', 'Deliver'),
(61, 'Peeled tomatoes', 4, 'GWJH-4YZ', '400', 'design/', ''),
(62, 'Chicken with Rice', 3, 'HE-UWA', '1800', 'design/', ''),
(63, '6 Piece Apples', 4, 'S-TJ6', '800', 'design/', ''),
(64, 'Beef Stake', 5, 'FBJF-RIE', '2200', 'design/', ''),
(65, 'Peeled tomatoes', 4, 'FBJF-RIE', '400', 'design/', ''),
(66, 'Beef Stake', 5, 'KJ-JWR', '2200', 'design/', ''),
(67, 'Wheat Flour', 2, 'BZP-K55', '300', 'design/', ''),
(70, 'Apricot Sun Kissed Super Snacks', 2, 'TKP-Y6K', '180', 'design/', 'fruit'),
(71, 'Ham Peas', 4, 'IB-24T', '600', 'design/vcredist.bmp', 'fruit'),
(72, 'Chicken Thighs', 0, 'NBZ-LPR', '250', 'design/', ''),
(73, 'Chicken Thighs', 233, 'NBZ-LPR', '58250', 'design/1.jpg', 'weewww'),
(74, '6 Piece Apples', 566, 'US-AVB', '113200', 'design/', '77880');

-- --------------------------------------------------------

--
-- Table structure for table `paymentm`
--

CREATE TABLE IF NOT EXISTS `paymentm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dmethodid` varchar(30) NOT NULL,
  `methodname` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `paymentm`
--

INSERT INTO `paymentm` (`id`, `dmethodid`, `methodname`) VALUES
(1, '1', 'Cash On Delivery'),
(2, '2', 'MPESA'),
(3, '3', 'Paypal');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE IF NOT EXISTS `reservation` (
  `reservation_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `address` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact` int(20) NOT NULL,
  `payable` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `confirmation` varchar(20) NOT NULL,
  `delivery` varchar(300) NOT NULL,
  `date` varchar(30) NOT NULL,
  `time` varchar(100) NOT NULL,
  `payment` varchar(100) NOT NULL,
  `delivery_type` varchar(50) NOT NULL,
  PRIMARY KEY (`reservation_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`reservation_id`, `firstname`, `lastname`, `city`, `address`, `country`, `email`, `contact`, `payable`, `status`, `confirmation`, `delivery`, `date`, `time`, `payment`, `delivery_type`) VALUES
(22, 'Wesley', 'Ouma', 'Nairobi', 'Lower Kabete', '', 'wesley.akitch30@gmail.com', 706662222, 600, 'Pending', 'ZHZR-RQR', 'kabete', '', '', 'MPESA', ''),
(20, 'wesley', 'akitch', 'Nairobi', 'kabete', '', 'wesley.akitch30@gmail.com', 700000000, 150, 'Pending', 'NWON-WFH', 'Kabete', '', '', 'Cash On Delivery', ''),
(18, 'anastacia', 'mu', 'Nairobi', 'south b', '', 'ana@gmail.com', 700000444, 1640, 'Pending', 'PVL-2D2', 'Embakasi', '', '', 'Cash On Delivery', ''),
(19, 'wesley', 'akitch', 'Nairobi', 'kabete', '', 'wesley.akitch30@gmail.com', 700000000, 150, 'Pending', 'NWON-WFH', 'Kabete', '', '', 'Cash On Delivery', ''),
(17, 'wesley', 'akitch', 'Nairobi', 'kabete', '', 'wesley.akitch30@gmail.com', 700000000, 2850, 'Pending', 'XBI-VC4', 'Kabete', '19:06:30', '', 'MPESA', ''),
(23, 'wesley', 'akitch', 'nfdshf', '00', '', 'wesley.akitch30@gmail.com', 700000000, 600, 'Pending', 'HO-P31', 'skf ', '19:06:30', '', 'MPESA', 'Delivery Inside Nairobi'),
(24, 'wesley', 'akitch', 'Nairobi', 'kabete', '', 'wesley.akitch30@gmail.com', 700000000, 1040, 'Pending', 'HO-P31', 'Embakasi', '', '', 'Cash On Delivery', 'Cash On delivery'),
(25, 'wesley', 'akitch', 'Nairobi', 'kabete', '', 'wesley.akitch30@gmail.com', 700000000, 0, 'Pending', '<br />\r\n<b>Notice</b', 'Embakasi', '', '', '', ''),
(26, 'wesley', 'akitch', 'Nairobi', 'kabete', '', 'wesley.akitch30@gmail.com', 700000000, 0, 'Pending', '<br />\r\n<b>Notice</b', 'Embakasi', '', '', '', ''),
(27, 'wesley', 'akitch', 'Nairobi', 'kabete', '', 'wesley.akitch30@gmail.com', 700000000, 0, 'Pending', '<br />\r\n<b>Notice</b', 'Embakasi', '', '', '', ''),
(28, 'wesley', 'akitch', 'Nairobi', 'kabete', '', 'wesley.akitch30@gmail.com', 700000000, 0, 'Pending', '<br />\r\n<b>Notice</b', 'Embakasi', '', '', '', ''),
(31, 'ROY ', '455555', '464646464', 'bungoma', '', 'mulongodanaca12@gmail.come34', 646464646, 600, 'Pending', 'IB-24T', '656557575', '', '', 'Cash On Delivery', 'Cash On delivery'),
(32, 'yeyee', 'eiiiee', 'nairobi', 'hhfjks', '', 'eiiiee@gmail.com', 0, 113200, 'Pending', 'US-AVB', 'ggdhj', '', '', 'MPESA', 'Delivery Inside Nairobi');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `position` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `username`, `password`, `position`) VALUES
(1, 'admin', 'admin', 'front desk'),
(2, 'gesumwa', 'gesumwa', 'ges'),
(3, 'duncan', '@Dun0714757251', 'admin');
--
-- Database: `widema`
--
CREATE DATABASE `widema` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `widema`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `AuthorId` varchar(15) NOT NULL,
  `ArticleTitle` varchar(15) NOT NULL,
  `ArticleFullText` varchar(128) NOT NULL,
  `ArticleDisplay` varchar(15) NOT NULL,
  PRIMARY KEY (`AuthorId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `articles`
--


-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `fname` varchar(50) NOT NULL,
  `comment` varchar(100) NOT NULL,
  `id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `comment`
--


-- --------------------------------------------------------

--
-- Table structure for table `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `good_name` varchar(15) NOT NULL,
  `good_description` varchar(150) NOT NULL,
  `good_price` varchar(15) NOT NULL,
  `good_quantity` varchar(15) NOT NULL,
  `good_owner_id` varchar(15) NOT NULL DEFAULT '',
  `manufacturer_id` varchar(15) DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `good_cert` varchar(15) DEFAULT NULL,
  `good_type_id` varchar(15) NOT NULL,
  PRIMARY KEY (`good_owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goods`
--

INSERT INTO `goods` (`good_name`, `good_description`, `good_price`, `good_quantity`, `good_owner_id`, `manufacturer_id`, `image`, `good_cert`, `good_type_id`) VALUES
('ISUZU TRACK', 'BLACK, 360 litres fuel tank, 360 km/sec full speed.', '15000000', '3', '546464664', '5777474747', '', '7577477333', '2'),
('duncan', 'Good description', '236363', '233332', '23233', '4334343', 'Annotation 2020-03-11 175110 (2).png', '34343434', ''),
('Refrigerator', '60 watt consump', '15000/=', '2', '1233345', '3255454', '', '323545', '6'),
('peas', 'Green', '24000/=', '34', '34426799', '43434344', '', '434353', '4'),
('DELL LAPTOP', '8GB ram, 256 gb', '38000/=', '33', '3434434', '434455554', '', '43454', '5'),
('yyuuuu', 'Good descriptio', '24000/=', '3', '556666', '55666', '', '455566', '5'),
('DELL LAPTOP', 'Good deERRRRRRE', '6000000', '2', '54443', '3333', '', '333333', '5'),
('DELL LAPTOP', '500gb ram', '11000/=', '34', '4434344', '4343434', 'Shopping 02.jpg', '34344', '5'),
('toyata', 'fuel cobsumption', '15000000', '3', '4356227', '5362277', 'vcredist.bmp', '4343', '2'),
('DELL LAPTOP', 'Good description', '6000000', '2', '434343', '334344', '', '33444', '2'),
('Walking stick', 'Stick wooden', '250/=', '3', '12345676', '6464644747', '', '535353535353', '3'),
('DELL LAPTOP', 'Good description', '20/=', '2000', '65757584', '6557578448', '', '75784884', '5'),
('DELL LAPTOP', 'Good description', '15000000', '34', '4455555442', '566654444', '', '3443241', '5'),
('DELL LAPTOP', 'Good description', '758588484', '7885858', '644747447', '77578482', '', '3434556677', '4'),
('duncan', 'Good description', '236363', '33333', '3433434', '4377384', '239.jpg', '388384', '1'),
('ddsd', 'Good description', '236363', '233332', '46464646', '46464646', 'acad.err', '454454545', '1'),
('duncan', 'Good description', '33333', '33333', '222222', '222222', '239.jpg', '44455555', '3'),
('ddsd', 'Good ddddescription', '236363', '75775585', '44444', '4444', 'IMG_20191010_185535.jpg', '7777755', '3'),
('nnnsns', 'Good description', '777755758', '8884884', '74788884', '8888484', 'IMG_20191010_185436.jpg', '88888', '3'),
('duncan', 'Good description', '88899944', '9999494', '4999994', '49990004', '239.jpg', '4000404', '6'),
('duncan', 'Good description', '236363', '233332', '323232', '34344', 'Annotation 2020-03-11 175110 (2).png', '3343434', '');

-- --------------------------------------------------------

--
-- Table structure for table `gtype`
--

CREATE TABLE IF NOT EXISTS `gtype` (
  `good_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `good_type` varchar(15) NOT NULL,
  PRIMARY KEY (`good_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `gtype`
--

INSERT INTO `gtype` (`good_type_id`, `good_type`) VALUES
(1, 'land'),
(2, 'Machinery'),
(3, 'Traditional Art'),
(4, 'Agriculture'),
(5, 'Electronics'),
(6, 'Households'),
(7, 'Fashion');

-- --------------------------------------------------------

--
-- Table structure for table `ideas`
--

CREATE TABLE IF NOT EXISTS `ideas` (
  `idea_title` varchar(15) NOT NULL,
  `idea_description` varchar(15) NOT NULL,
  `idea_owner_id` varchar(15) NOT NULL,
  `image` varchar(15) DEFAULT NULL,
  `idea_certificate` varchar(15) DEFAULT NULL,
  `idea_type_id` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idea_owner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ideas`
--

INSERT INTO `ideas` (`idea_title`, `idea_description`, `idea_owner_id`, `image`, `idea_certificate`, `idea_type_id`) VALUES
('bidding site', 'bidding effecie', '34426795', '', '3444555', '1');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE IF NOT EXISTS `items` (
  `prod_id` int(15) unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(50) NOT NULL,
  `sname` varchar(50) NOT NULL,
  `quantity` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `price` int(50) NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`prod_id`, `pname`, `sname`, `quantity`, `category`, `price`) VALUES
(3, 'maize', '-1', '33333', 'cereal', 33333),
(5, '535363', '6373737', '6777', '33333', 120000),
(6, 'fgghh', '09997', '2234', '45555', 120000);

-- --------------------------------------------------------

--
-- Table structure for table `itype`
--

CREATE TABLE IF NOT EXISTS `itype` (
  `idea_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idea_type` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`idea_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `itype`
--

INSERT INTO `itype` (`idea_type_id`, `idea_type`) VALUES
(1, 'Project proposa'),
(2, 'General designs'),
(3, 'Formulations');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `fname` varchar(100) NOT NULL,
  `sname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` text NOT NULL,
  `gender` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `id` int(15) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`fname`, `sname`, `email`, `dob`, `gender`, `pass`, `id`) VALUES
('Duncan', 'nyongesa', 'pyrum@manyali.com', '2020-09-06', '0', '1234567', 0);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `service_name` varchar(15) NOT NULL,
  `service_description` varchar(15) NOT NULL,
  `service_measure` varchar(15) NOT NULL,
  `service_price` int(150) unsigned NOT NULL,
  `service_owner_Id` varchar(15) NOT NULL,
  `image` varchar(15) DEFAULT NULL,
  `service_certificate` varchar(15) DEFAULT NULL,
  `service_type_id` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`service_owner_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_name`, `service_description`, `service_measure`, `service_price`, `service_owner_Id`, `image`, `service_certificate`, `service_type_id`) VALUES
('Rongai bus serv', 'Transportation ', '200/= per 10 ki', 0, '34426795', '', '3444444444', '3'),
('Ongata bus', 'gdgdddhhhj', '44333444', 0, '4344434', '', '444444', '3');

-- --------------------------------------------------------

--
-- Table structure for table `stype`
--

CREATE TABLE IF NOT EXISTS `stype` (
  `service_type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service_type` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`service_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `stype`
--

INSERT INTO `stype` (`service_type_id`, `service_type`) VALUES
(1, 'Educational'),
(2, 'Recreational'),
(3, 'Transport'),
(4, 'Money Tranfer'),
(5, 'Banking'),
(6, 'Human resource'),
(7, 'Beauty');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `fullName` varchar(15) NOT NULL,
  `idNumber` varchar(15) NOT NULL,
  `address` varchar(15) NOT NULL,
  `PhoneNumber` varchar(15) NOT NULL,
  `email` varchar(15) NOT NULL,
  `accountNumber` varchar(15) NOT NULL,
  `userName` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `image` varchar(15) NOT NULL,
  `user_type` varchar(100) NOT NULL,
  PRIMARY KEY (`idNumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fullName`, `idNumber`, `address`, `PhoneNumber`, `email`, `accountNumber`, `userName`, `password`, `image`, `user_type`) VALUES
('Duncan', '34426795', 'Bungoma', '0714757251', 'mulongodanaca12', '34678765', 'sppd', '0714757251', 'IMG_20191010_18', '@admin'),
('pacheko', '546464664', '646477', '4666447', 'www@pacheko.com', '646748844', 'parcheko', '44444444', '', 'user'),
('dickson', '37343783', 'mombasa', '7777447', '3323333232@gmai', '37448784', 'cvppys', '44744477444', '', ''),
('duncan', '5466332', 'nyeri', '6466622', 'www@pacheko.com', '7474747', '64644747', '6474774744', '', ''),
('dominic', '666363', 'Webuye', '5464664', '34434344@gmail.', '64646644', 'sppd', '6646466', '', ''),
('dominic', '344245533', 'kisumu', '0754536', '34434344@gmail.', '55455363', 'sppd', '123345', '', ''),
('peter', '74744747', 'nakuru', '546478282', '77747338@gmail.', '334343433', 'sppd', '43334433', '', ''),
('kevin', '5456662', '6664662', '646662', 'gdgdhhdhdh@gmai', '6466464737', 'khb', '54636627', '', ''),
('dominic', '56262727227', 'bungoma', '9773746663', 'mulongodanaca12', '53464773', 'khb', '646646464', '', ''),
('6hdhgdhgf', '4733643', 'r77777774', '6666474774', '67788899999@gma', '6474747474', 'fdgdd', '435455544', '', ''),
('duncan', '23456789', 'bungoma', '345678', '3323333232@gmai', '3456789', 'weeee', '123456789', '', ''),
('duncan', '234567', '64646464', '553535', 'mulongodanaca12', '6466444', 'sppd', '445555', '', ''),
('duncan', '6665667', '747747', '77474747', '7764646@gmail.c', '7477884', 'sppd', '77474747', '', ''),
('duncan', '466787', 'bungomaf', '4577878', 'mulongodanaca12', '75465335', 'sppd', '35765', '', ''),
('duncan', '766544554', 'bungoma', '76643454', '34434344@gmail.', '234436565', 'sppd', 'n n nhhj', '', ''),
('tetetet', '34343434', 'dgdddd', '646474744', '67788899999@gma', '64647774', 'dddgggdg', 'tggggdgdgd', '', ''),
('duncan', '3243434', 'bungoma', '33333', '3333@gmail.com', '33333', 'sppd', '4444333', '', ''),
('duncan', '334443', '33333', '33333', '3333@gmail.com', '33333', 'sppd', '44444', '', ''),
('54343343', '443333', 'bungomaf', '443333', 'mulongodanaca12', '647377', 'sppd', '43333', '', ''),
('sppd', '68787878', '7689999', '77788888577', '34434344@gmail.', '5666644377763', '66646444', '646646464', '', ''),
('dominic', '546464774', '47737733', '65454634646', '34434344@gmail.', '56464646', 'sppd', '37337733737', '', ''),
('yyeyyyee', '3663633773', 'ueueueueu', '737737', 'ueueueueu@gmail', '5566626', 'sppd', 'tetyyywww', '', ''),
('sppd', '636363636', '53533663', '6363636', 'fsfsfsf@gmail.c', '6363663', 'sppd', '5535663663', '', ''),
('twttwtwt', '552552', '5255522', '5255255', '4555225@gmail.c', '5366606', 'rrwrwr', '535355', '', ''),
('gef', '633733', 'siaya', '536637', '9998@gmail.com', '4344553', 'fsdfs', '443535', '', ''),
('duncan', '64664474', '74747474', '747474', 'mulongodanaca12', '444444', 'sppd', '63636363', '', ''),
('duncan', '677747474', '8848484', '848484', '848484@gmail.co', '949494@gmail.co', '949494', '12345', '', ''),
('dunaa', '55353', 'bungoma', '5355533', '5535@gmail.com', '53533', '53533', '553535', '', ''),
('taf', '32332', 'Kisumu', '6663636', '6363663@gmail.c', '6663636', 'ras', '66633', '', ''),
('duncan', '4343434', 'bungoma', '44443', '334344@GMAIL.CO', '34434', '33344', '344443', '', ''),
('duncan', '5535353', '4353553', '5355353', 'mulongodanaca12', '5535533', 'sppd', '53535353', '', ''),
('duncan', '5353535', 'Kisumu', '5535353', 'www@pacheko.com', '5553553', '444443', '5355353553553', '', ''),
('6hdhgdhgf', '65757585', 'bungoma', '65657744', '75758585@gmail.', '333333', 'xrtpev', '3d8f3016918bf59', '', 'user'),
('5355353', '636363', '6363663', '223232', '553535@gmail.co', '33443434', 'userName', '81dc9bdb52d04dc', '', 'user'),
('patrick pacheko', '62626262', 'kisumu', '0878181', 'fggagag@gmail.c', '5525525', 'parcheko', '81dc9bdb52d04dc', '', 'user'),
('dedan', '1234', 'ewewww', '12345', '3233322@gmail.c', '949494@gmail.co', 'rtydss', '289dff07669d7a2', '', 'user'),
('pyrum', '3456782', 'kisumu', '0714526772', 'ppyrum.fff@gmai', '52566222', 'ppyrum', '81dc9bdb52d04dc', '', 'user'),
('doris', '672722', 'webuye', '074552522', 'sggsgsgsg@gmail', '09863636', 'web', '81dc9bdb52d04dc', '', 'user'),
('dev', '56633737', 'bungomaf', '535353', '67788899999@gma', '5353636', '535336', '81dc9bdb52d04dc', '', 'user'),
('3e333', '33333', '33333', '3333', '67788899999@gma', '6466464', '33333', '81dc9bdb52d04dc', '', 'user'),
('pacheko', '4343232323', 'ewewewew@gmail.', '5353363636', '5555353535@gmai', '3344555', 'kkkk4', '81dc9bdb52d04dc', '', 'user'),
('pius', '7858283', 'sffsf@gmail.com', '9877881', 'ggsggkl@gmail.c', '993837373', 'fity', '81dc9bdb52d04dc', '', 'user'),
('pacheko', '74747747', '33333', '0878181', '34434344@gmail.', '45777', 'dafsghkl;', '81dc9bdb52d04dc', '', 'user'),
('dupel', '654425', 'bungoma', '0735682234', 'fsfsffsf@gmail.', '6267277272', 'kevin', '81dc9bdb52d04dc', '', 'user'),
('duncan', '748484848', 'bungoma', '5353535', 'gddhdhdh@gmail.', '663663', 'selvix', '81dc9bdb52d04dc', '', 'user'),
('Patrick pacheko', '9876554666', '677788899', '455566777', '99888877@gmail.', '3232233', 'kevo', '81dc9bdb52d04dc', '', 'user'),
('duncan', '6367722', '53533772', '63633663', '636355@gmail.co', '3636633', 'petero', '81dc9bdb52d04dc', '', 'user'),
('sppd', 'ttettetetet', 'kisumu', 'YYRYYRY', '67788899999@gma', '5525525', 'ffre', '81dc9bdb52d04dc', 'vcredist.bmp', 'user'),
('nyongesa', '123456', 'errr', '0714757251', 'pyrum@manyali.c', '33343434', 'sam', 'ebcf4083c2aeb57', '239.jpg', 'user'),
('nyongesa', '1234567', 'errr', '0714757251', 'pyrum@manyali.c', '33343434', 'sppd2', '1156f69ba7d3cf5', '', 'user'),
('nyongesa', '12345678', '', '0714757251', 'pyrum@manyali.c', '', 'sppd3', '95a0a6a6ab9a2d5', '', 'user'),
('Emammanuel', '5636772', '673727882', '567373781', '773838839@gmail', '667738883', '77788832', '9d3aa9872081336', 'WIN_20200928_06', 'user'),
('nyongesa', '12345656', '6787644', '0714757251', 'pyrum@manyali.c', '33343434', 'Sam45', '50da8b3efde3b81', '', 'user'),
('nyongesa', '12345655', '6787644', '0714757251', 'pyrum@manyali.c', '33343434', 'Edwin', '308a3c9a057a648', '', 'user');
