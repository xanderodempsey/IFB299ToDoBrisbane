-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: smartcity
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add mall',1,'add_mall'),(2,'Can change mall',1,'change_mall'),(3,'Can delete mall',1,'delete_mall'),(4,'Can add museum',2,'add_museum'),(5,'Can change museum',2,'change_museum'),(6,'Can delete museum',2,'delete_museum'),(7,'Can add park',3,'add_park'),(8,'Can change park',3,'change_park'),(9,'Can delete park',3,'delete_park'),(10,'Can add restaurant',4,'add_restaurant'),(11,'Can change restaurant',4,'change_restaurant'),(12,'Can delete restaurant',4,'delete_restaurant'),(13,'Can add zoo',5,'add_zoo'),(14,'Can change zoo',5,'change_zoo'),(15,'Can delete zoo',5,'delete_zoo'),(16,'Can add log entry',6,'add_logentry'),(17,'Can change log entry',6,'change_logentry'),(18,'Can delete log entry',6,'delete_logentry'),(19,'Can add group',7,'add_group'),(20,'Can change group',7,'change_group'),(21,'Can delete group',7,'delete_group'),(22,'Can add user',8,'add_user'),(23,'Can change user',8,'change_user'),(24,'Can delete user',8,'delete_user'),(25,'Can add permission',9,'add_permission'),(26,'Can change permission',9,'change_permission'),(27,'Can delete permission',9,'delete_permission'),(28,'Can add content type',10,'add_contenttype'),(29,'Can change content type',10,'change_contenttype'),(30,'Can delete content type',10,'delete_contenttype'),(31,'Can add session',11,'add_session'),(32,'Can change session',11,'change_session'),(33,'Can delete session',11,'delete_session'),(34,'Can add user profile',12,'add_userprofile'),(35,'Can change user profile',12,'change_userprofile'),(36,'Can delete user profile',12,'delete_userprofile');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$il4YcLbX6N0p$Y8riHJTT9q6lhqyUsdUoJ39EdFv5vgPCWkpmBg8w+wc=','2017-10-18 03:01:11.681886',0,'test5','','','test@test.com',0,1,'2017-10-18 02:49:16.740802'),(2,'pbkdf2_sha256$30000$2Lx5HIdXCX71$RCAEzy2WcIpk1S73YUSrwX2iBY1/oZSBN1UuWnTvMdc=','2017-10-18 03:01:39.855691',1,'Susan','','','susan@smartcity.com',1,1,'2017-10-18 02:56:40.795201'),(3,'pbkdf2_sha256$24000$NQHQVIQ9kXFm$Tpt7DqbukG7lCaHGupGJFaunNR9nRsJ23rMmBxdtWeI=','2017-10-20 20:12:45.608634',0,'test6','','','test6@gmail.com',0,1,'2017-10-20 20:12:45.443136'),(4,'pbkdf2_sha256$24000$1h70Wnx1apX6$5XRU3Bjm+6D6qmUo5KQKvOkjwwC0uERJrrH239iUrVg=','2017-10-21 18:00:15.083631',0,'test7','test','7','test7@gmail.com',0,1,'2017-10-21 18:00:14.903630'),(5,'pbkdf2_sha256$24000$g6nIxwKqailv$jMyVaF0whgYpQf9GrOi1qtwb7ZKodJju0ghsdIY6HuU=','2017-10-21 18:27:55.198785',0,'test8','test','8','test8@gmail.com',0,1,'2017-10-21 18:27:55.011734'),(6,'pbkdf2_sha256$24000$53MiGLSmtCTD$R5NYGRlAkUKyA2hnVW+48/r6w5IEQ7xrgRtBaGEoLx0=',NULL,0,'test9','test','9','test9@gmail.com',0,1,'2017-10-22 07:10:40.201369'),(7,'pbkdf2_sha256$24000$gRk9GBuva3Sx$DnQhLuxHc6gLPv4CVXGjvcDhImaQe7MAILsujSvvgb0=',NULL,0,'test10','test','10','test10@gmail.com',0,1,'2017-10-22 07:12:49.456748'),(8,'pbkdf2_sha256$24000$bwaDlD8aQJL1$eQP2qXE8ej40eVz2sePC4t+vIY3kPm+2V60/AGig/mQ=',NULL,0,'test11','test','11','test11@gmail.com',0,1,'2017-10-22 07:22:57.376406'),(9,'pbkdf2_sha256$24000$wrJWJtBDy4PH$2QmPBjI7cV5Vpkb4U7nflP+kilPsdmsVXQ9U+jckVy4=',NULL,0,'test12','test','12','test12@gmail.com',0,1,'2017-10-22 07:24:05.338192'),(10,'pbkdf2_sha256$24000$dDZKwflKrbI1$i8q/+R4Zm3qROjIrfkF2zmpTqmi40tDI9trr4grHggI=',NULL,0,'test13','test','13','test13@gmail.com',0,1,'2017-10-22 07:28:46.234290'),(11,'pbkdf2_sha256$24000$SW5iVEDhFite$vm/xgjTsILtWGlsllsnbD8yWw57pO/Ks+Cdnw8bQi3M=',NULL,0,'test14','test','14','test14@gmail.com',0,1,'2017-10-22 07:29:58.995604'),(12,'pbkdf2_sha256$24000$kXn0YwAv3Eqy$8mMPeY/Dm0OA9+2onwqMGzBEfX3eG1lL3zeF+cv18M8=',NULL,0,'test15','test','15','test15@gmail.com',0,1,'2017-10-22 07:31:36.388434'),(13,'pbkdf2_sha256$24000$V8rNjA4WfAG9$Nlpa3SvYyS+EsX61zJ8XU4ibcqQ2NLuZtVm56P1AB4s=',NULL,0,'test16','test','16','test16@gmail.com',0,1,'2017-10-22 07:35:53.477609'),(14,'pbkdf2_sha256$24000$5wy728pCMZ7M$Z5XAnVVTkocdoo5hR5H1ZWjMdhEvfLfB1a0vhIAFdxY=',NULL,0,'test1.1','test','1.1','test1.1@gmail.com',0,1,'2017-10-22 15:19:33.562530'),(15,'pbkdf2_sha256$24000$UNOmsE9PVjsh$VZG2KlpPF8akTWAMfzb5RfW/rdaktUhV+W+rcZ+kSTA=',NULL,0,'test1.2','test','1.2','test1.2@gmail.com',0,1,'2017-10-22 15:33:10.575163'),(16,'pbkdf2_sha256$24000$tsf6UG2WXkuy$F5UCftuUQ6qNefdNJNenYYpuQkwvQB/PUUKIhZkdYEY=',NULL,0,'test1.3','test','1.3','test1.3@gmail.com',0,1,'2017-10-22 15:37:50.840013'),(17,'pbkdf2_sha256$24000$wJUrnKLCK31E$WChH9ip3u2HnlKDVBTECextdG04B4pD3CXn0l30Z7Is=','2017-10-22 15:39:37.634946',0,'test1.4','test','1.4','test1.4@gmail.com',0,1,'2017-10-22 15:39:37.453901'),(18,'pbkdf2_sha256$24000$eqYVuMTYCi4m$x0MULV9NwJlQqTC5+IQZmnPnoY+8rZTqVnvQ9g6RtVg=','2017-10-22 15:41:03.042178',0,'test1.5','test','1.5','test1.5@gmail.com',0,1,'2017-10-22 15:41:02.897099'),(19,'pbkdf2_sha256$24000$3nq9wdfPMlHD$7U/FM+/R1iN1RQzJlQCkzKHv84zNsRYI5Y07ysL7ZO0=','2017-10-22 15:42:00.568407',0,'test1.6','test','1.6','test1.6@gmail.com',0,1,'2017-10-22 15:42:00.437849'),(20,'pbkdf2_sha256$24000$A8yRUWsvsSGm$FjjKJuvgucjaoxbk7gdQs07PSzWXVohTtd6mBK5q0UE=','2017-10-22 15:43:35.336784',0,'test1.7','test','1.7','test1.7@gmail.com',0,1,'2017-10-22 15:43:35.132945'),(21,'pbkdf2_sha256$24000$wreYLrGD7RUU$QC99lMdUk3O+skuwXz4FOes/F1w7TyrjnBGjaI32hGI=','2017-10-22 16:53:49.700267',0,'testa','test','a','testa@gmail.com',0,1,'2017-10-22 16:53:49.561739'),(22,'pbkdf2_sha256$24000$U00KDAn4rEKP$oKc4a4a0bE4KkpOMgymyOmGrsCexSNHE7aR/f3iKXog=',NULL,0,'testb','test','b','testb@gmail.com',0,1,'2017-10-22 17:16:51.780240'),(23,'pbkdf2_sha256$24000$nMy6BasTHU6L$aFcOtHmtFP3WGsH78QJ/bwNc0DB6ZnjeAp9e93pXhCc=',NULL,0,'testc','test','c','testc@gmail.com',0,1,'2017-10-22 17:29:58.074723'),(24,'pbkdf2_sha256$24000$ldpposFSOc5y$OPJ7WVUzepNvL4FbGEMvHSlpuI7EoScUC6qbJDAvYp0=','2017-10-22 17:34:17.181064',0,'testd','test','d','testd@gmail.com',0,1,'2017-10-22 17:34:16.858564'),(25,'pbkdf2_sha256$24000$exS1BIwLekWU$qUj4WFe0ebx9o2OQGVmwKQGt3iFa4tkp8vGifC+k7Z4=','2017-10-22 17:34:50.471772',0,'teste','test','e','teste@gmail.com',0,1,'2017-10-22 17:34:50.312271'),(26,'pbkdf2_sha256$24000$Jq40ZqN4K3GD$u2fWtPVhjqC754jDj8npf9rV+QaiQy43zDogN8pPCnM=','2017-10-22 18:01:42.938670',0,'testf','test','f','testf@gmail.com',0,1,'2017-10-22 18:01:42.680670'),(27,'pbkdf2_sha256$24000$S8gBxKYXRIcU$0HcCh5AQfDgNdQxpkdMb01dwfjWjl6s/S1tpR2VcWU8=','2017-10-23 13:49:53.110700',0,'testg','test','g','testg@gmail.com',0,1,'2017-10-23 13:49:52.904756'),(28,'pbkdf2_sha256$24000$ydCBUD20gs6e$H4rBKMQ46OsIGGWJZH/Y+3GcHIjbJrRlEQ6sPVnWyK0=','2017-10-23 14:10:49.117194',0,'business','','','business@gmail.com',0,1,'2017-10-23 14:10:48.910123'),(29,'pbkdf2_sha256$24000$y4uW1RPonvet$jkcaZVwxb1AxmgPDWYWjlI+Plv8DDIfvHpEKIqGJxAE=','2017-10-23 14:11:21.531690',0,'student','','','student@gmail.com',0,1,'2017-10-23 14:11:21.399168'),(30,'pbkdf2_sha256$24000$Aa6Wi602DWlm$CpYUH+nou2pmea8drGmR7SHZF0s2/ZBUrWkRbHhwu6w=','2017-10-23 14:11:56.977347',0,'tourist','','','tourist@gmail.com',0,1,'2017-10-23 14:11:48.610462');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `city` (
  `CITY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITY_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CITY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cityinformation_mall`
--

DROP TABLE IF EXISTS `cityinformation_mall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cityinformation_mall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `address` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `emailAddress` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cityinformation_mall`
--

LOCK TABLES `cityinformation_mall` WRITE;
/*!40000 ALTER TABLE `cityinformation_mall` DISABLE KEYS */;
INSERT INTO `cityinformation_mall` VALUES (1,'test','3','4','5');
/*!40000 ALTER TABLE `cityinformation_mall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cityinformation_museum`
--

DROP TABLE IF EXISTS `cityinformation_museum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cityinformation_museum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `address` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `emailAddress` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cityinformation_museum`
--

LOCK TABLES `cityinformation_museum` WRITE;
/*!40000 ALTER TABLE `cityinformation_museum` DISABLE KEYS */;
/*!40000 ALTER TABLE `cityinformation_museum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cityinformation_park`
--

DROP TABLE IF EXISTS `cityinformation_park`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cityinformation_park` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `address` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `emailAddress` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cityinformation_park`
--

LOCK TABLES `cityinformation_park` WRITE;
/*!40000 ALTER TABLE `cityinformation_park` DISABLE KEYS */;
/*!40000 ALTER TABLE `cityinformation_park` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cityinformation_restaurant`
--

DROP TABLE IF EXISTS `cityinformation_restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cityinformation_restaurant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `address` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `emailAddress` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cityinformation_restaurant`
--

LOCK TABLES `cityinformation_restaurant` WRITE;
/*!40000 ALTER TABLE `cityinformation_restaurant` DISABLE KEYS */;
/*!40000 ALTER TABLE `cityinformation_restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cityinformation_zoo`
--

DROP TABLE IF EXISTS `cityinformation_zoo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cityinformation_zoo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `address` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `emailAddress` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cityinformation_zoo`
--

LOCK TABLES `cityinformation_zoo` WRITE;
/*!40000 ALTER TABLE `cityinformation_zoo` DISABLE KEYS */;
/*!40000 ALTER TABLE `cityinformation_zoo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colleges`
--

DROP TABLE IF EXISTS `colleges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colleges` (
  `COLLEGE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITY_ID` int(11) DEFAULT NULL,
  `COLLEGE_NAME` varchar(50) DEFAULT NULL,
  `STREET` varchar(50) DEFAULT NULL,
  `SUBURB` varchar(50) DEFAULT NULL,
  `POSTCODE` int(11) DEFAULT NULL,
  PRIMARY KEY (`COLLEGE_ID`),
  KEY `CITY_ID` (`CITY_ID`),
  CONSTRAINT `colleges_ibfk_1` FOREIGN KEY (`CITY_ID`) REFERENCES `city` (`CITY_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colleges`
--

LOCK TABLES `colleges` WRITE;
/*!40000 ALTER TABLE `colleges` DISABLE KEYS */;
/*!40000 ALTER TABLE `colleges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COLLEGE_ID` int(11) DEFAULT NULL,
  `DEPARTMENT_NAME` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `COLLEGE_ID` (`COLLEGE_ID`),
  CONSTRAINT `departments_ibfk_1` FOREIGN KEY (`COLLEGE_ID`) REFERENCES `colleges` (`COLLEGE_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-10-18 02:57:54.786590','1','test',1,'[{\"added\": {}}]',1,2);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (6,'admin','logentry'),(7,'auth','group'),(9,'auth','permission'),(8,'auth','user'),(1,'CityInformation','mall'),(2,'CityInformation','museum'),(3,'CityInformation','park'),(4,'CityInformation','restaurant'),(5,'CityInformation','zoo'),(10,'contenttypes','contenttype'),(11,'sessions','session'),(12,'users','userprofile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'CityInformation','0001_initial','2017-10-18 01:56:32.749554'),(2,'CityInformation','0002_auto_20170929_0207','2017-10-18 01:56:32.999579'),(3,'contenttypes','0001_initial','2017-10-18 01:56:33.202735'),(4,'auth','0001_initial','2017-10-18 01:56:36.167446'),(5,'admin','0001_initial','2017-10-18 01:56:36.915416'),(6,'admin','0002_logentry_remove_auto_add','2017-10-18 01:56:36.931074'),(7,'contenttypes','0002_remove_content_type_name','2017-10-18 01:56:37.477977'),(8,'auth','0002_alter_permission_name_max_length','2017-10-18 01:56:37.743633'),(9,'auth','0003_alter_user_email_max_length','2017-10-18 01:56:38.040535'),(10,'auth','0004_alter_user_username_opts','2017-10-18 01:56:38.056161'),(11,'auth','0005_alter_user_last_login_null','2017-10-18 01:56:38.196803'),(12,'auth','0006_require_contenttypes_0002','2017-10-18 01:56:38.212428'),(13,'auth','0007_alter_validators_add_error_messages','2017-10-18 01:56:38.228055'),(14,'auth','0008_alter_user_username_max_length','2017-10-18 01:56:38.524969'),(15,'sessions','0001_initial','2017-10-18 01:56:38.775978'),(16,'users','0001_initial','2017-10-18 01:56:39.343151');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('inw9hi6z3g7flesiwcbr2zrnsgudrhsi','YTQ1NDYyMjYyYWI0ODkwZjhlYmQwMjBiN2Y4ZTUxOTMzZWIxODBhMzp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzQ2NTIzMzMyMTQ4ZGEyYWYwN2ExMjFmNGQwMTJlOWM0NDdlYTg2ZCJ9','2017-11-06 14:11:57.003359');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industry`
--

DROP TABLE IF EXISTS `industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `industry` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITY_ID` int(11) DEFAULT NULL,
  `BUSINESS_NAME` varchar(50) DEFAULT NULL,
  `INDUSTRY_TYPE` int(11) DEFAULT NULL,
  `STREET` varchar(50) DEFAULT NULL,
  `SUBURB` varchar(50) DEFAULT NULL,
  `POSTCODE` int(11) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `CITY_ID` (`CITY_ID`),
  KEY `INDUSTRY_TYPE` (`INDUSTRY_TYPE`),
  CONSTRAINT `industry_ibfk_1` FOREIGN KEY (`CITY_ID`) REFERENCES `city` (`CITY_ID`) ON UPDATE CASCADE,
  CONSTRAINT `industry_ibfk_2` FOREIGN KEY (`INDUSTRY_TYPE`) REFERENCES `industrytype` (`INDUSTRY_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industry`
--

LOCK TABLES `industry` WRITE;
/*!40000 ALTER TABLE `industry` DISABLE KEYS */;
/*!40000 ALTER TABLE `industry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `industrytype`
--

DROP TABLE IF EXISTS `industrytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `industrytype` (
  `INDUSTRY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `INDUSTRY_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`INDUSTRY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `industrytype`
--

LOCK TABLES `industrytype` WRITE;
/*!40000 ALTER TABLE `industrytype` DISABLE KEYS */;
/*!40000 ALTER TABLE `industrytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libraries`
--

DROP TABLE IF EXISTS `libraries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libraries` (
  `LIBRARY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITY_ID` int(11) DEFAULT NULL,
  `STREET` varchar(50) DEFAULT NULL,
  `SUBURB` varchar(50) DEFAULT NULL,
  `POSTCODE` int(11) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` int(11) DEFAULT NULL,
  PRIMARY KEY (`LIBRARY_ID`),
  KEY `CITY_ID` (`CITY_ID`),
  CONSTRAINT `libraries_ibfk_1` FOREIGN KEY (`CITY_ID`) REFERENCES `city` (`CITY_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libraries`
--

LOCK TABLES `libraries` WRITE;
/*!40000 ALTER TABLE `libraries` DISABLE KEYS */;
/*!40000 ALTER TABLE `libraries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `malls`
--

DROP TABLE IF EXISTS `malls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `malls` (
  `MALL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITY_ID` int(11) DEFAULT NULL,
  `STREET` varchar(50) DEFAULT NULL,
  `SUBURB` varchar(50) DEFAULT NULL,
  `POSTCODE` int(11) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` int(11) DEFAULT NULL,
  PRIMARY KEY (`MALL_ID`),
  KEY `CITY_ID` (`CITY_ID`),
  CONSTRAINT `malls_ibfk_1` FOREIGN KEY (`CITY_ID`) REFERENCES `city` (`CITY_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `malls`
--

LOCK TABLES `malls` WRITE;
/*!40000 ALTER TABLE `malls` DISABLE KEYS */;
/*!40000 ALTER TABLE `malls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `museums`
--

DROP TABLE IF EXISTS `museums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `museums` (
  `MUSEUM_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITY_ID` int(11) DEFAULT NULL,
  `MUSEUM_NAME` varchar(50) DEFAULT NULL,
  `STREET` varchar(50) DEFAULT NULL,
  `SUBURB` varchar(50) DEFAULT NULL,
  `POSTCODE` int(11) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` int(11) DEFAULT NULL,
  PRIMARY KEY (`MUSEUM_ID`),
  KEY `CITY_ID` (`CITY_ID`),
  CONSTRAINT `museums_ibfk_1` FOREIGN KEY (`CITY_ID`) REFERENCES `city` (`CITY_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `museums`
--

LOCK TABLES `museums` WRITE;
/*!40000 ALTER TABLE `museums` DISABLE KEYS */;
/*!40000 ALTER TABLE `museums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `park`
--

DROP TABLE IF EXISTS `park`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `park` (
  `PARK_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITY_ID` int(11) DEFAULT NULL,
  `PARK_NAME` varchar(50) DEFAULT NULL,
  `STREET` varchar(50) DEFAULT NULL,
  `SUBURB` varchar(50) DEFAULT NULL,
  `POSTCODE` int(11) DEFAULT NULL,
  PRIMARY KEY (`PARK_ID`),
  KEY `CITY_ID` (`CITY_ID`),
  CONSTRAINT `park_ibfk_1` FOREIGN KEY (`CITY_ID`) REFERENCES `city` (`CITY_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `park`
--

LOCK TABLES `park` WRITE;
/*!40000 ALTER TABLE `park` DISABLE KEYS */;
/*!40000 ALTER TABLE `park` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restaurant` (
  `RESTAURANT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITY_ID` int(11) DEFAULT NULL,
  `RESTAURANT_NAME` varchar(50) DEFAULT NULL,
  `CUISINE` varchar(20) DEFAULT NULL,
  `STREET` varchar(50) DEFAULT NULL,
  `SUBURB` varchar(50) DEFAULT NULL,
  `POSTCODE` int(11) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` int(11) DEFAULT NULL,
  PRIMARY KEY (`RESTAURANT_ID`),
  KEY `CITY_ID` (`CITY_ID`),
  CONSTRAINT `restaurant_ibfk_1` FOREIGN KEY (`CITY_ID`) REFERENCES `city` (`CITY_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurant`
--

LOCK TABLES `restaurant` WRITE;
/*!40000 ALTER TABLE `restaurant` DISABLE KEYS */;
/*!40000 ALTER TABLE `restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_userprofile`
--

DROP TABLE IF EXISTS `users_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(50) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `users_userprofile_user_id_87251ef1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile`
--

LOCK TABLES `users_userprofile` WRITE;
/*!40000 ALTER TABLE `users_userprofile` DISABLE KEYS */;
INSERT INTO `users_userprofile` VALUES (1,NULL,1),(2,NULL,2),(3,NULL,3),(4,NULL,4),(5,NULL,5),(6,'Business',16),(7,'Business',17),(8,'Business',18),(9,'Business',19),(10,'',20),(11,'',21),(12,'',22),(13,'',23),(14,'1',24),(15,'3',25),(16,'2',26),(17,'2',27),(18,'1',28),(19,'2',29),(20,'3',30);
/*!40000 ALTER TABLE `users_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertype`
--

DROP TABLE IF EXISTS `usertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertype` (
  `TYPE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `TYPE_NAME` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`TYPE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertype`
--

LOCK TABLES `usertype` WRITE;
/*!40000 ALTER TABLE `usertype` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zoo`
--

DROP TABLE IF EXISTS `zoo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zoo` (
  `ZOO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CITY_ID` int(11) DEFAULT NULL,
  `ZOO_NAME` varchar(50) DEFAULT NULL,
  `STREET` varchar(50) DEFAULT NULL,
  `SUBURB` varchar(50) DEFAULT NULL,
  `POSTCODE` int(11) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL,
  `PHONE_NUMBER` int(11) DEFAULT NULL,
  PRIMARY KEY (`ZOO_ID`),
  KEY `CITY_ID` (`CITY_ID`),
  CONSTRAINT `zoo_ibfk_1` FOREIGN KEY (`CITY_ID`) REFERENCES `city` (`CITY_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zoo`
--

LOCK TABLES `zoo` WRITE;
/*!40000 ALTER TABLE `zoo` DISABLE KEYS */;
/*!40000 ALTER TABLE `zoo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-24  0:39:36
