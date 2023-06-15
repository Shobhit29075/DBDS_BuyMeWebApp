CREATE DATABASE  IF NOT EXISTS `buymedatabase` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `buymedatabase`;
-- MySQL dump 10.13  Distrib 8.0.31, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: buymedatabase
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alerts` (
  `alert_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `alert_comment` varchar(5000) NOT NULL,
  `alert_status` varchar(20) NOT NULL DEFAULT 'Unread',
  PRIMARY KEY (`alert_id`),
  KEY `username` (`username`),
  CONSTRAINT `alerts_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
INSERT INTO `alerts` VALUES (1,'Jane',' 7, where you were the highest bider is being bid','Unread'),(2,'Harry','6, where you were the highest bider is being bid','Unread'),(3,'John','1, where you were the highest bider is being bid','Unread'),(4,'Jane',' 1, where you were the highest bider is being bid','Unread'),(5,'Jane',' 1, where you were the highest bider is being bid','Unread'),(6,'Jane',' 1, where you were the highest bider is being bid','Unread'),(7,'Jane',' 1 is being auctioned at higher price than set upper limit.','Unread'),(8,'Jane',' 8, where you were the highest bider is being bid','Unread'),(9,'Jane','8, failed to sell','Unread'),(10,'Jane',' 9, where you were the highest bider is being bid','Unread'),(11,'Roy','9, has been bought','Unread'),(12,'Jane','9, SOLD','Unread'),(13,'Jane','10 is being available which matches your wishlist','Unread'),(14,'Roy',' 11, where you were the highest bider is being bid','Unread'),(15,'Harry',' 12, where you were the highest bider is being bid','Unread'),(16,'Harry','11, has been bought','Unread'),(17,'Roy','11, SOLD','Unread'),(18,'John','12, has been bought','Unread'),(19,'Harry','12, SOLD','Unread'),(20,'John',' 13, where you were the highest bider is being bid','Unread'),(21,'Jane',' 13, where you were the highest bider is being bid','Unread'),(22,'Harry','13, has been bought','Unread'),(23,'John','13, SOLD','Unread'),(24,'John',' 2, where you were the highest bider is being bid','Unread'),(25,'Roy',' 10, where you were the highest bider is being bid','Unread'),(26,'Jane',' 10, where you were the highest bider is being bid','Unread'),(27,'Nikhil',' 10, where you were the highest bider is being bid','Unread'),(28,'Nikhil',' 10, where you were the highest bider is being bid','Unread'),(29,'Jane',' 10, where you were the highest bider is being bid','Unread'),(30,'Roy',' 10, where you were the highest bider is being bid','Unread');
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auto_bid`
--

DROP TABLE IF EXISTS `auto_bid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auto_bid` (
  `item_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `upper_price` int NOT NULL,
  PRIMARY KEY (`item_id`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `auto_bid_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE,
  CONSTRAINT `auto_bid_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auto_bid`
--

LOCK TABLES `auto_bid` WRITE;
/*!40000 ALTER TABLE `auto_bid` DISABLE KEYS */;
INSERT INTO `auto_bid` VALUES (1,'Jane',700);
/*!40000 ALTER TABLE `auto_bid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bid_history`
--

DROP TABLE IF EXISTS `bid_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bid_history` (
  `item_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `bid_price` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_id`,`bid_price`),
  CONSTRAINT `bid_history_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bid_history`
--

LOCK TABLES `bid_history` WRITE;
/*!40000 ALTER TABLE `bid_history` DISABLE KEYS */;
INSERT INTO `bid_history` VALUES (1,'Jane','510','2023-05-01 04:39:42'),(1,'Roy','520','2023-05-01 04:40:24'),(1,'Jane','530','2023-05-01 04:40:24'),(1,'Roy','540','2023-05-01 04:40:37'),(1,'Jane','550','2023-05-01 04:40:37'),(1,'Roy','800','2023-05-01 04:40:54'),(7,'Roy','520','2023-05-01 04:35:18'),(8,'Harry','640','2023-05-01 04:48:57'),(9,'Roy','650','2023-05-01 04:57:28'),(10,'Nikhil','360','2023-05-01 05:56:18'),(10,'Roy','520','2023-05-01 06:03:43'),(11,'Harry','1000','2023-05-01 05:30:27'),(12,'John','250','2023-05-01 05:31:37'),(13,'Jane','1040','2023-05-01 05:33:14'),(13,'Harry','1540','2023-05-01 05:33:30');
/*!40000 ALTER TABLE `bid_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `cat_id` int NOT NULL AUTO_INCREMENT,
  `item_id` int NOT NULL,
  `subcategory` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `ram` int NOT NULL,
  `disk` int NOT NULL,
  `screen_resolution` varchar(50) NOT NULL,
  PRIMARY KEY (`cat_id`),
  KEY `item_id` (`item_id`),
  CONSTRAINT `category_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,1,'Mobile','Apple',8,64,'1080'),(2,2,'Laptop','Dell',32,1024,'4196'),(3,3,'Tabet','Apple',2,8,'720'),(4,4,'Mobile','Samsung',8,32,'1080'),(5,5,'SmartWatch','Apple',1,2,'720'),(7,7,'Mobile','Apple',8,512,'720'),(8,8,'Laptop','Lenovo',16,1000,'1080'),(9,9,'Laptop','Lenovo',16,1000,'1080'),(10,10,'Laptop','Dell',8,512,'720'),(11,11,'Mobile','Samsung',32,512,'1080'),(12,12,'SmartWatch','Apple',12,10,'720'),(13,13,'Laptop','Dell',32,2000,'1080');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `faq`
--

DROP TABLE IF EXISTS `faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `faq` (
  `faq_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `faq_question` varchar(5000) NOT NULL,
  `faq_answer` varchar(5000) NOT NULL DEFAULT 'UNANSWERED',
  PRIMARY KEY (`faq_id`),
  KEY `username` (`username`),
  CONSTRAINT `faq_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `faq`
--

LOCK TABLES `faq` WRITE;
/*!40000 ALTER TABLE `faq` DISABLE KEYS */;
INSERT INTO `faq` VALUES (1,'Jane','Why cant i bid on item 2?','UNANSWERED'),(2,'Jane','When will the item on my wishlist be available?','UNANSWERED'),(3,'Jane','How does an auction end?','It ends when the auction end time is reached'),(4,'Jane','Why cant she bid for an item with id 3?','UNANSWERED');
/*!40000 ALTER TABLE `faq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(50) NOT NULL,
  `item_description` varchar(5000) NOT NULL,
  `sold_status` varchar(20) NOT NULL DEFAULT 'not_sold',
  `username` varchar(50) NOT NULL DEFAULT '',
  `up_time` datetime NOT NULL,
  `report_count` int NOT NULL DEFAULT '0',
  `start_bid` int NOT NULL,
  `highest_bider` varchar(50) NOT NULL DEFAULT '',
  `increase_bid` int NOT NULL,
  `min_price` int NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_id`),
  KEY `username` (`username`),
  CONSTRAINT `item_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,'iphone','New Iphone 12 that is just 2 months old','not_sold','John','2023-05-16 23:49:00',0,800,'Roy',10,700,'2023-05-01 03:50:30'),(2,'Dell 5233','Dell Laptop that is 4 months old','not_sold','John','2023-05-30 23:51:00',0,1360,'Jane',20,1500,'2023-05-01 03:52:53'),(3,'Apple Tab','Old apple tab','not_sold','Roy','2023-05-09 23:53:00',0,200,'Roy',5,300,'2023-05-01 03:54:12'),(4,'Phone(android)','Samsung s5 in good condition','not_sold','Roy','2023-05-09 23:54:00',0,300,'Roy',20,500,'2023-05-01 03:55:44'),(5,'Apple Watch','Apple Watch in good condition','not_sold','Roy','2023-05-22 23:56:00',0,100,'Roy',10,200,'2023-05-01 03:56:55'),(7,'iphone','New','not_sold','Jane','2023-05-10 00:32:00',0,520,'Roy',20,600,'2023-05-01 04:32:47'),(8,'Legion i5','New laptop','never_sold','Jane','2023-05-01 00:51:00',0,640,'Harry',15,700,'2023-05-01 04:48:30'),(9,'Legion i5','New laptop','sold','Jane','2023-05-01 01:00:00',0,650,'Roy',15,630,'2023-05-01 04:57:08'),(10,'Dell XPS','New','not_sold','Roy','2023-05-17 01:19:00',0,520,'Roy',20,400,'2023-05-01 05:20:08'),(11,'Samsung Galaxy note 5','New','sold','Roy','2023-05-01 01:33:00',0,1000,'Harry',20,1000,'2023-05-01 05:30:00'),(12,'iWatch','3rd gen','sold','Harry','2023-05-01 01:33:00',0,250,'John',20,240,'2023-05-01 05:31:19'),(13,'Alienware','Gaming top notch','sold','John','2023-05-01 01:34:00',0,1540,'Harry',30,1500,'2023-05-01 05:32:51');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report`
--

DROP TABLE IF EXISTS `report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `report` (
  `item_id` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `report_comment` varchar(5000) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending',
  PRIMARY KEY (`item_id`,`username`),
  KEY `username` (`username`),
  CONSTRAINT `report_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE,
  CONSTRAINT `report_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `item` (`item_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report`
--

LOCK TABLES `report` WRITE;
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(20) NOT NULL DEFAULT '',
  `bank_account` varchar(20) NOT NULL DEFAULT '',
  `role` varchar(50) NOT NULL DEFAULT 'customer',
  `managed_by` varchar(50) NOT NULL DEFAULT 'not_set',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('admin','admin123','admin@buyme.com','','','admin','NONE'),('cust1','cust1_123','cust1@buyme.com','','','customer','Shobhit'),('cust10','cust10_123','cust10@buyme.com','','','customer','Priyanshu'),('cust11','cust11_123','cust11@buyme.com','','','customer','Nikhil'),('cust12','cust12_123','cust12@buyme.com','','','customer','Shreeja'),('cust13','cust13_123','cust13@buyme.com','','','customer','Shobhit'),('cust14','cust14_123','cust14@buyme.com','','','customer','Shobhit'),('cust15','cust15_123','cust15@buyme.com','','','customer','Priyanshu'),('cust16','cust16_123','cust16@buyme.com','','','customer','Priyanshu'),('cust17','cust17_123','cust17@buyme.com','','','customer','Nikhil'),('cust18','cust18_123','cust18@buyme.com','','','customer','Nikhil'),('cust19','cust19_123','cust19@buyme.com','','','customer','Shreeja'),('cust2','cust2_123','cust2@buyme.com','','','customer','Shobhit'),('cust20','cust20_123','cust20@buyme.com','','','customer','Shreeja'),('cust3','cust3_123','cust3@buyme.com','','','customer','Priyanshu'),('cust5','cust5_123','cust5@buyme.com','','','customer','Nikhil'),('cust6','cust6_123','cust6@buyme.com','','','customer','Nikhil'),('cust7','cust7_123','cust7@buyme.com','','','customer','Shreeja'),('cust8','cust8_123','cust8@buyme.com','','','customer','Shreeja'),('cust9','cust9_123','cust9@buyme.com','','','customer','Shobhit'),('George','george','george@example.com','12882397','','staff','not_set'),('Harry','harry','harry@example.com','987987982','12893791','customer','Shreeja'),('Jane','jan@123','jane@example1.com','789879879','124314423','customer','Nikhil'),('John','john','john@example.com','987987987','11221122','customer','Shobhit'),('Nikhil','nikhil123','nikhil@buyme.com','','','staff','not_set'),('Priyanshu','priyanshu123','priyanshu@buyme.com','','','staff','not_set'),('Roy','roy','roy@example.com','987987980','12371237','customer','Priyanshu'),('Shobhit','shobhit123','shobhit@buyme.com','','','staff','not_set'),('Shreeja','shreeja123','shreeja@buyme.com','','','staff','not_set');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `Serial_no` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `subcategory` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `ram` int NOT NULL,
  `disk` varchar(50) NOT NULL,
  `screen_resolution` varchar(50) NOT NULL,
  PRIMARY KEY (`Serial_no`),
  KEY `username` (`username`),
  CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
INSERT INTO `wishlist` VALUES (1,'Jane','Laptop','Dell',8,'512','720');
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-01 20:53:51
