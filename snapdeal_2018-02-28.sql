# ************************************************************
# Sequel Pro SQL dump
# Version 4499
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.17)
# Database: snapdeal
# Generation Time: 2018-02-28 10:58:21 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table all_product_tb
# ------------------------------------------------------------

DROP TABLE IF EXISTS `all_product_tb`;

CREATE TABLE `all_product_tb` (
  `product_id` bigint(20) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `brand_name` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `price` float(11,0) DEFAULT NULL,
  `short_desc` varchar(255) DEFAULT NULL,
  `long_desc` varchar(255) DEFAULT NULL,
  `rating` float(20,2) DEFAULT '0.00',
  `buy_count` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `all_product_tb` WRITE;
/*!40000 ALTER TABLE `all_product_tb` DISABLE KEYS */;

INSERT INTO `all_product_tb` (`product_id`, `company_name`, `category`, `brand_name`, `product_name`, `price`, `short_desc`, `long_desc`, `rating`, `buy_count`, `image`)
VALUES
	(1,'Snapdeal','Mobile','Iphone',' 4s',33000,'Android Lolipop\r\nSingle Sim\r\nWhite Color','Android Lolipop\r\nSingle Sim\r\nWhite Color\r\nFront Camera-3Mp\r\nRear Camera-5Mp\r\nRam-2GB\r\nProcessor-1.2GHz\r\nDisplay-3.5 inch\r\nInternal Memory-8GB\r\n',0.00,9,'iphone-4s.jpg'),
	(2,'Snapdeal','Mobile','Samsung','S2',20000,'Android Lolipop\r\nSingle Sim\r\nWhite Color','Android Lolipop\r\nDual Sim\r\nBlack Color\r\nFront Camera-2Mp\r\nRear Camera-6Mp\r\nRam-1.5GB\r\nProcessor-1.5GHz\r\nDisplay-5 inch\r\nInternal Memory-16GB\r\n',1.00,13,'samsung_s2.jpg'),
	(3,'Snapdeal','Laptop','Lenovo','YOGA-300',26000,'Pentium Quad Core\r\n4 GB DDR3 RAM\r\n500 GB HDD','Pentium Quad Core\r\nBrand	LENOVO\r\nModel Name	Yoga\r\nPart Number	80M0007KIN\r\nModel ID	300\r\nLifestyle	Everyday Use\r\nColor	Black\r\n4 GB DDR3 RAM\r\n500 GB HDD',1.00,15,'lenovo_yoga.jpg'),
	(4,'Snapdeal','Laptop','HP','Pavilion-15',23000,'Intel Core i5 (6th G...\r\n4 GB DDR3 RAM\r\n1 TB HDD, NA SSD','Intel Core i5-6200U Processor\r\n15.6\" Full HD Display 1920 x 1080 (1080p)\r\n1TB HDD /4GB RAM\r\nTurbo silver\r\nDOS\r\n4 GB DDR3 RAM\r\n1 TB HDD, NA SSD',1.00,14,'hp_pavilion.jpg'),
	(5,'Snapdeal','Tablet','Apple','iPad',39000,'iOS 7\r\n1.2 MP Secondary Cam...\r\n5 MP Primary camera\r\niOS 8 Upgradable','5 MP Primary Camera\r\nUpgradable to iOS 8\r\nInternal Memory: 16 GB\r\nFull HD Recording\r\niOS 7\r\n1.2 MP Secondary Camera\r\n7.9 inch Touchscreen',1.00,8,'appleipad.jpg'),
	(6,'Snapdeal','Tablet','Samsung','Galaxy Tab4',24000,'Quad Core Processor\r\n7 inch Display\r\n8 GB Storage\r\n','3 MP Primary Camera\r\nBluetooth Support\r\n7 inch LCD Touchscreen\r\nAndroid v4.4 (KitKat) OS\r\n1.3 MP Secondary Camera\r\nExpandable Storage Capacity of 32 GB\r\n1.2 GHz Quad Core Processor\r\nWi-Fi Enabled\r\n8 GB Internal Memory',0.00,7,'GALAXYTab4.jpg'),
	(7,'Snapdeal','Television','Panasonic','81cm LED TV',30000,'HD Ready, 1366 x 768\r\n1 x HDMI, 1 x USB','LED Display\r\n81 cm (32)\r\nHD Ready, 1366 x 768\r\n1 x HDMI, 1 x USB\r\nRefresh Rate - Panel Drive: 100 Hz',5.00,8,'panasonic-tv-1.jpg'),
	(8,'Snapdeal','Television','Micromax','HD LED TV',23000,'Full HD, 1920 x 1080\r\n2 x HDMI, 2 x USB','LED Display\r\n127 cm (50)\r\nFull HD, 1920 x 1080\r\n2 x HDMI, 2 x USB\r\nRefresh Rate - Motion Rate: 60 Hz',5.00,10,'micromaxtv.jpg');

/*!40000 ALTER TABLE `all_product_tb` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table review_tb
# ------------------------------------------------------------

DROP TABLE IF EXISTS `review_tb`;

CREATE TABLE `review_tb` (
  `review_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `review_type` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table user_tb
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_tb`;

CREATE TABLE `user_tb` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT '',
  `mobile_no` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT '',
  `password` varchar(255) DEFAULT '',
  `status` varchar(255) DEFAULT NULL,
  `otp` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `user_tb` WRITE;
/*!40000 ALTER TABLE `user_tb` DISABLE KEYS */;

INSERT INTO `user_tb` (`user_id`, `user_name`, `mobile_no`, `email`, `password`, `status`, `otp`)
VALUES
	(50,'akshay',888888888,'kharadeakshay25@gmail.com','1234567@a','check','0811'),
	(51,'akshay',88888888,'kharadeakshay25@gmail.com','1234567@a','check','6861'),
	(52,'akshay',88888888,'kharadeakshay25@gmail.com','1234567@a','check','1107');

/*!40000 ALTER TABLE `user_tb` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
