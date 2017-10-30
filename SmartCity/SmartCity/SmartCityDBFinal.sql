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

CREATE database SmartCity;
USE SmartCity;

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
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$30000$il4YcLbX6N0p$Y8riHJTT9q6lhqyUsdUoJ39EdFv5vgPCWkpmBg8w+wc=','2017-10-18 03:01:11.681886',0,'test5','','','test@test.com',0,1,'2017-10-18 02:49:16.740802'),(2,'pbkdf2_sha256$30000$2Lx5HIdXCX71$RCAEzy2WcIpk1S73YUSrwX2iBY1/oZSBN1UuWnTvMdc=','2017-10-30 03:47:50.023832',1,'Susan','','','susan@smartcity.com',1,1,'2017-10-18 02:56:40.795201'),(3,'pbkdf2_sha256$24000$NQHQVIQ9kXFm$Tpt7DqbukG7lCaHGupGJFaunNR9nRsJ23rMmBxdtWeI=','2017-10-20 20:12:45.608634',0,'test6','','','test6@gmail.com',0,1,'2017-10-20 20:12:45.443136'),(4,'pbkdf2_sha256$24000$1h70Wnx1apX6$5XRU3Bjm+6D6qmUo5KQKvOkjwwC0uERJrrH239iUrVg=','2017-10-21 18:00:15.083631',0,'test7','test','7','test7@gmail.com',0,1,'2017-10-21 18:00:14.903630'),(5,'pbkdf2_sha256$24000$g6nIxwKqailv$jMyVaF0whgYpQf9GrOi1qtwb7ZKodJju0ghsdIY6HuU=','2017-10-21 18:27:55.198785',0,'test8','test','8','test8@gmail.com',0,1,'2017-10-21 18:27:55.011734'),(6,'pbkdf2_sha256$24000$53MiGLSmtCTD$R5NYGRlAkUKyA2hnVW+48/r6w5IEQ7xrgRtBaGEoLx0=',NULL,0,'test9','test','9','test9@gmail.com',0,1,'2017-10-22 07:10:40.201369'),(7,'pbkdf2_sha256$24000$gRk9GBuva3Sx$DnQhLuxHc6gLPv4CVXGjvcDhImaQe7MAILsujSvvgb0=',NULL,0,'test10','test','10','test10@gmail.com',0,1,'2017-10-22 07:12:49.456748'),(8,'pbkdf2_sha256$24000$bwaDlD8aQJL1$eQP2qXE8ej40eVz2sePC4t+vIY3kPm+2V60/AGig/mQ=',NULL,0,'test11','test','11','test11@gmail.com',0,1,'2017-10-22 07:22:57.376406'),(9,'pbkdf2_sha256$24000$wrJWJtBDy4PH$2QmPBjI7cV5Vpkb4U7nflP+kilPsdmsVXQ9U+jckVy4=',NULL,0,'test12','test','12','test12@gmail.com',0,1,'2017-10-22 07:24:05.338192'),(10,'pbkdf2_sha256$24000$dDZKwflKrbI1$i8q/+R4Zm3qROjIrfkF2zmpTqmi40tDI9trr4grHggI=',NULL,0,'test13','test','13','test13@gmail.com',0,1,'2017-10-22 07:28:46.234290'),(11,'pbkdf2_sha256$24000$SW5iVEDhFite$vm/xgjTsILtWGlsllsnbD8yWw57pO/Ks+Cdnw8bQi3M=',NULL,0,'test14','test','14','test14@gmail.com',0,1,'2017-10-22 07:29:58.995604'),(12,'pbkdf2_sha256$24000$kXn0YwAv3Eqy$8mMPeY/Dm0OA9+2onwqMGzBEfX3eG1lL3zeF+cv18M8=',NULL,0,'test15','test','15','test15@gmail.com',0,1,'2017-10-22 07:31:36.388434'),(13,'pbkdf2_sha256$24000$V8rNjA4WfAG9$Nlpa3SvYyS+EsX61zJ8XU4ibcqQ2NLuZtVm56P1AB4s=',NULL,0,'test16','test','16','test16@gmail.com',0,1,'2017-10-22 07:35:53.477609'),(14,'pbkdf2_sha256$24000$5wy728pCMZ7M$Z5XAnVVTkocdoo5hR5H1ZWjMdhEvfLfB1a0vhIAFdxY=',NULL,0,'test1.1','test','1.1','test1.1@gmail.com',0,1,'2017-10-22 15:19:33.562530'),(15,'pbkdf2_sha256$24000$UNOmsE9PVjsh$VZG2KlpPF8akTWAMfzb5RfW/rdaktUhV+W+rcZ+kSTA=',NULL,0,'test1.2','test','1.2','test1.2@gmail.com',0,1,'2017-10-22 15:33:10.575163'),(16,'pbkdf2_sha256$24000$tsf6UG2WXkuy$F5UCftuUQ6qNefdNJNenYYpuQkwvQB/PUUKIhZkdYEY=',NULL,0,'test1.3','test','1.3','test1.3@gmail.com',0,1,'2017-10-22 15:37:50.840013'),(17,'pbkdf2_sha256$24000$wJUrnKLCK31E$WChH9ip3u2HnlKDVBTECextdG04B4pD3CXn0l30Z7Is=','2017-10-22 15:39:37.634946',0,'test1.4','test','1.4','test1.4@gmail.com',0,1,'2017-10-22 15:39:37.453901'),(18,'pbkdf2_sha256$24000$eqYVuMTYCi4m$x0MULV9NwJlQqTC5+IQZmnPnoY+8rZTqVnvQ9g6RtVg=','2017-10-22 15:41:03.042178',0,'test1.5','test','1.5','test1.5@gmail.com',0,1,'2017-10-22 15:41:02.897099'),(19,'pbkdf2_sha256$24000$3nq9wdfPMlHD$7U/FM+/R1iN1RQzJlQCkzKHv84zNsRYI5Y07ysL7ZO0=','2017-10-22 15:42:00.568407',0,'test1.6','test','1.6','test1.6@gmail.com',0,1,'2017-10-22 15:42:00.437849'),(20,'pbkdf2_sha256$24000$A8yRUWsvsSGm$FjjKJuvgucjaoxbk7gdQs07PSzWXVohTtd6mBK5q0UE=','2017-10-22 15:43:35.336784',0,'test1.7','test','1.7','test1.7@gmail.com',0,1,'2017-10-22 15:43:35.132945'),(21,'pbkdf2_sha256$24000$wreYLrGD7RUU$QC99lMdUk3O+skuwXz4FOes/F1w7TyrjnBGjaI32hGI=','2017-10-22 16:53:49.700267',0,'testa','test','a','testa@gmail.com',0,1,'2017-10-22 16:53:49.561739'),(22,'pbkdf2_sha256$24000$U00KDAn4rEKP$oKc4a4a0bE4KkpOMgymyOmGrsCexSNHE7aR/f3iKXog=',NULL,0,'testb','test','b','testb@gmail.com',0,1,'2017-10-22 17:16:51.780240'),(23,'pbkdf2_sha256$24000$nMy6BasTHU6L$aFcOtHmtFP3WGsH78QJ/bwNc0DB6ZnjeAp9e93pXhCc=',NULL,0,'testc','test','c','testc@gmail.com',0,1,'2017-10-22 17:29:58.074723'),(24,'pbkdf2_sha256$24000$ldpposFSOc5y$OPJ7WVUzepNvL4FbGEMvHSlpuI7EoScUC6qbJDAvYp0=','2017-10-22 17:34:17.181064',0,'testd','test','d','testd@gmail.com',0,1,'2017-10-22 17:34:16.858564'),(25,'pbkdf2_sha256$24000$exS1BIwLekWU$qUj4WFe0ebx9o2OQGVmwKQGt3iFa4tkp8vGifC+k7Z4=','2017-10-22 17:34:50.471772',0,'teste','test','e','teste@gmail.com',0,1,'2017-10-22 17:34:50.312271'),(26,'pbkdf2_sha256$24000$Jq40ZqN4K3GD$u2fWtPVhjqC754jDj8npf9rV+QaiQy43zDogN8pPCnM=','2017-10-22 18:01:42.938670',0,'testf','test','f','testf@gmail.com',0,1,'2017-10-22 18:01:42.680670'),(27,'pbkdf2_sha256$24000$S8gBxKYXRIcU$0HcCh5AQfDgNdQxpkdMb01dwfjWjl6s/S1tpR2VcWU8=','2017-10-23 13:49:53.110700',0,'testg','test','g','testg@gmail.com',0,1,'2017-10-23 13:49:52.904756'),(28,'pbkdf2_sha256$24000$ydCBUD20gs6e$H4rBKMQ46OsIGGWJZH/Y+3GcHIjbJrRlEQ6sPVnWyK0=','2017-10-23 14:10:49.117194',0,'business','','','business@gmail.com',0,1,'2017-10-23 14:10:48.910123'),(29,'pbkdf2_sha256$24000$y4uW1RPonvet$jkcaZVwxb1AxmgPDWYWjlI+Plv8DDIfvHpEKIqGJxAE=','2017-10-23 14:11:21.531690',0,'student','','','student@gmail.com',0,1,'2017-10-23 14:11:21.399168'),(30,'pbkdf2_sha256$30000$4Yr4W97g3biS$OvYID8qps3KbK7wLfk03Qv+QX7/LgYyxKhODgsm9+W4=','2017-10-30 08:11:44.666554',0,'tourist','','','tourist@gmail.com',0,1,'2017-10-23 14:11:48.610462'),(31,'pbkdf2_sha256$30000$xwFfoEzLhUJq$lNkubCTAVp7CxB7BXik9SqkMhPGF0o29gru6yiAr7g0=','2017-10-27 17:48:32.050123',0,'tourist3','','','tourist3@gmail.com',0,1,'2017-10-25 01:01:57.570930'),(32,'pbkdf2_sha256$30000$Uy05noBB6C6q$I5ODwvCdExXwDkrNrcXhRKZQ3XQHenH02qSfml08jek=','2017-10-25 01:05:23.222240',0,'student3','','','student3@gmail.com',0,1,'2017-10-25 01:04:46.226464'),(33,'pbkdf2_sha256$30000$0OwdKoNxQmzm$0WZ/OuLZao7JO0hVsrMxxB5sJRAzzrQZ6fmRqEXqOHM=','2017-10-25 01:11:00.724572',0,'business2','','','business2@gmail.com',0,1,'2017-10-25 01:11:00.608574'),(34,'pbkdf2_sha256$30000$nJYApLX1cmIv$hHT5XYYqfxjVk9senEK9AtPJWnOdov6ELB4nnADVuws=','2017-10-25 01:11:48.518952',0,'business3','','','business3@gmail.com',0,1,'2017-10-25 01:11:48.406962'),(35,'pbkdf2_sha256$30000$1DgzmytDKquQ$gYMlaJRjy2BqkocBrWaFSIQSBvAb120lm9TRESVKxuE=','2017-10-25 01:13:53.005226',0,'business4','','','business4@gmail.com',0,1,'2017-10-25 01:13:52.869220'),(36,'pbkdf2_sha256$30000$EbDqu5ZKViWo$jmUn6FxmGmDwmbNJT4t2Xd+k3eTkIilQ9gvNyNn98+g=','2017-10-25 01:17:20.496585',0,'business5','','','b5@gmail.com',0,1,'2017-10-25 01:17:20.392584'),(37,'pbkdf2_sha256$30000$pThszhDtOOh3$QGZWNHM19z4TC8DxCX7IVbRCcw0dRRB3ITIikiIvNkw=','2017-10-25 04:54:34.618190',0,'business6','','','b6@gmail.com',0,1,'2017-10-25 01:20:26.461942'),(38,'pbkdf2_sha256$30000$So6G163n2m0X$1WY6zf0MJ3Nf1X3yyj/ip4y9taEnyQN3NP8GcgSmu7s=','2017-10-25 01:23:03.914707',0,'business7','','','b7@gmail.com',0,1,'2017-10-25 01:22:31.078826'),(39,'pbkdf2_sha256$30000$f2EHN8XrWzzm$bBlwQr9buwQJtEVg1ECdjJSk03Guai9WDeTMIhLokQY=','2017-10-25 01:34:17.980240',0,'tourist6','','','t6@gmail.com',0,1,'2017-10-25 01:34:17.864241'),(40,'pbkdf2_sha256$30000$CZaEOFp8zfJp$PCx7gB5Wkm9RXiE9N6ZICVoU7hRXXcqiqTCLmIQptHs=','2017-10-25 01:59:18.343506',0,'student5','','','s5@gmail.com',0,1,'2017-10-25 01:59:18.223190'),(41,'pbkdf2_sha256$30000$oRmn5wwy5uVG$kq8sP0UHuzvEcRSHNRUPEBQBYYnXC9/j9NYHlIXzeuE=','2017-10-25 02:02:04.752190',0,'b2','','','b2@gmail.com',0,1,'2017-10-25 02:02:04.632188'),(42,'pbkdf2_sha256$30000$1fGzusBGhBqq$ijGrIZ0xAv/uEget7vgGLfHfaVUdQsURtOlrt66PBnc=','2017-10-25 02:09:27.271772',0,'b3','','','b3@gmail.com',0,1,'2017-10-25 02:09:27.143773'),(43,'pbkdf2_sha256$30000$ZKtGFEeh8fst$VKJwmiuu6N/HmiNJWmm/yfIDOvR7DsJUDOodZkZ434o=','2017-10-25 02:12:01.620739',0,'b4','','','b4@gmail.com',0,1,'2017-10-25 02:12:01.508708'),(44,'pbkdf2_sha256$30000$dsYyMvV9sOBB$PiczqRzR3OsT+WFD30hoBZ3sBceH6maKZWvKiAN4VXc=','2017-10-25 02:12:33.221875',0,'b5','','','b5@gmail.com',0,1,'2017-10-25 02:12:33.109885'),(45,'pbkdf2_sha256$30000$OQnCrfgthbTm$G5BBGHH62ZDZ5+PwgxE72dBH876/BQOAU77s4NZ264Y=','2017-10-25 02:14:27.237999',0,'b6','','','b6@gmail.com',0,1,'2017-10-25 02:14:27.069999'),(46,'pbkdf2_sha256$30000$2vxk1S6jOvJ0$AUC+owrvpP/bPzzuDPWlrVEtghcltTHW9IglO82+Er4=','2017-10-25 02:17:07.970546',0,'b7','','','b7@gmail.com',0,1,'2017-10-25 02:17:07.858385'),(47,'pbkdf2_sha256$30000$XiSvDMtnMgHh$SxEYhUu259LGAhua8iOoRa4N9NqkH07CKwAr69Qiwa0=','2017-10-25 02:18:18.059321',0,'b8','','','b8@gmail.com',0,1,'2017-10-25 02:18:17.923322'),(48,'pbkdf2_sha256$30000$0y9h78WKUFuG$4eT8vj75flhIGB/b7fanYgeW0cK+jYZYg87xU+2BLRM=','2017-10-25 02:19:27.278245',0,'b9','','','b9@gmail.com',0,1,'2017-10-25 02:19:27.138245'),(49,'pbkdf2_sha256$30000$OGzwDvoWcAuu$NPolAZHFsG9PlNM83x6wRB8PtKPtDEfz0tVdujar1q0=','2017-10-25 12:05:34.133974',0,'b10','','','b10@gmail.com',0,1,'2017-10-25 02:20:44.838436'),(50,'pbkdf2_sha256$30000$9hR69gSJDyUY$VXMZk2waSGg/HbXdvVvQOVC8uT1sDw3ftdpNlh6ucU4=','2017-10-25 02:24:03.085920',0,'b11','','','b11@gmail.com',0,1,'2017-10-25 02:24:02.965757'),(51,'pbkdf2_sha256$30000$rIG7j9dqEtoF$T6Hd1g3Dla4FX95jRdDopPollICvBhvS9dVzzJRGefU=','2017-10-25 02:26:03.080027',0,'b12','','','b12@gmail.com',0,1,'2017-10-25 02:26:02.960027'),(52,'pbkdf2_sha256$30000$Zl0xHGIOX6L4$kMRH4bRNCYB3DS3166FLw/khbz/E2B4rmxUl/2mCOKc=','2017-10-25 02:30:58.424785',0,'b13','','','b13@gmail.com',0,1,'2017-10-25 02:30:58.296634'),(53,'pbkdf2_sha256$30000$QgUsVRgUe4bA$eHYTK0PIqxlRLfeuowWaFexlTJ/bITdHAG4W8WKWBxI=','2017-10-25 02:37:01.892537',0,'b14','','','b14@gmail.com',0,1,'2017-10-25 02:37:01.784502'),(54,'pbkdf2_sha256$30000$gI3pgiKEKdBo$gkppxGawVrzO8FDJ3LZzFkC/6hh343oquWJbIgZDPf4=','2017-10-25 02:40:58.951934',0,'b15','','','b15@gmail.com',0,1,'2017-10-25 02:40:58.828285'),(55,'pbkdf2_sha256$30000$BIGPg1gAD7iE$mhFToaXlgqjv+kzXlcbXNLtpXigfbQjrsjBzWAcSlnc=','2017-10-25 02:41:36.650288',0,'b16','','','b16@gmail.com',0,1,'2017-10-25 02:41:36.546287'),(56,'pbkdf2_sha256$30000$y2SVTmlUWDzm$sOLiYxCNbwq3HhlmZViGw+QySe3CQguBPJa4prQzG7c=','2017-10-25 02:43:38.661158',0,'b17','','','b17@gmail.com',0,1,'2017-10-25 02:43:38.485162'),(57,'pbkdf2_sha256$30000$cKViswCFkswT$ZjcqJGqCFA2hMQRcp2yaF7pGzZDQoZNomJZ3HubQ6T4=','2017-10-25 04:16:32.723649',0,'b20','','','b20@gmail.com',0,1,'2017-10-25 04:16:32.544187'),(58,'pbkdf2_sha256$30000$0YTXZgHdezqy$7hxIgFWi3HnIbYlSJWPZBmgC2jIWp+MfaJ3LiktyAx0=','2017-10-25 04:19:33.577572',0,'b21','','','b21@gmail.com',0,1,'2017-10-25 04:19:33.425161'),(59,'pbkdf2_sha256$30000$PQXe77VRWky1$4yYAy20aZO7CuKmbjkIOrLb6XMG+yGk0sMd9i5I3axo=','2017-10-25 04:20:59.646440',0,'b22','','','b22@gmail.com',0,1,'2017-10-25 04:20:59.537409'),(60,'pbkdf2_sha256$30000$xm9TgIV9E3gA$j6FCVHVokiQlA4UhXpohI/9rVYtStXT1MeNDktPyYqw=','2017-10-25 04:22:55.542414',0,'b23','','','b23@gmail.com',0,1,'2017-10-25 04:22:55.434703'),(61,'pbkdf2_sha256$30000$kBqaJJZFSDOc$kUqm60fmBFRCCTofRYF49mDn64o5cUN8b9RDGhAxZZs=','2017-10-25 04:25:28.153167',0,'b24','','','b24@gmail.com',0,1,'2017-10-25 04:25:28.046890'),(62,'pbkdf2_sha256$30000$vtbHZHqFbMuF$i8SuOHV9Q9rrdETlekiOXBznZqvXbGHXFm5/0H3H7MM=','2017-10-25 04:28:26.106269',0,'b25','','','b25@gmail.com',0,1,'2017-10-25 04:28:25.998369'),(63,'pbkdf2_sha256$30000$5AsbBE8TR1pE$LBr+5yHtmxrnlZuE6dlA1A+B5PGfXOsTlufMKKPUGRg=','2017-10-25 04:31:27.956873',0,'b26','','','b26@gmail.com',0,1,'2017-10-25 04:31:27.846252'),(64,'pbkdf2_sha256$30000$jE1VAorSTalJ$d2a0n27kVcMUCNXtO65gYME5vDyS7Bz62ZjTbVEZS38=','2017-10-25 04:32:42.573367',0,'b27','','','b27@gmail.com',0,1,'2017-10-25 04:32:42.456229'),(65,'pbkdf2_sha256$30000$rBlJcMNPg7HK$DXV8HiJfWZb/TeOngE+N6Of51ZbVuBu6+fcfwYZvGlk=','2017-10-25 04:34:09.303868',0,'b28','','','b28@gmail.com',0,1,'2017-10-25 04:34:09.191586'),(66,'pbkdf2_sha256$30000$A3a2LMlH4b9q$36i34egzxueQ73RWaNCQ+OWH9Oaq/FHcjtvWFr5SLzA=','2017-10-25 04:39:17.852296',0,'b30','','','b30@gmail.com',0,1,'2017-10-25 04:39:17.746309'),(67,'pbkdf2_sha256$30000$37oAhWrQvblO$82iL3ffpZSl/GaZjnxa/9iPfLWBrOuIxqy50hp01rYY=','2017-10-25 04:41:34.623255',0,'b31','','','b31@gmail.com',0,1,'2017-10-25 04:41:34.497542'),(68,'pbkdf2_sha256$30000$WWHvaQcnU1I0$5vx5xfARCR19DdY8maIsVEXVG8QL72CMkkgg8YKOmSU=','2017-10-25 04:42:02.284003',0,'t15','','','t15@gmail.com',0,1,'2017-10-25 04:42:02.158250'),(69,'pbkdf2_sha256$30000$YGDQRx5LhccE$59VoyqJr9dg5ZYzUOfycDKfPxtn4Gld7oGdgXvtYRxE=','2017-10-25 10:37:50.807436',0,'b32','','','b32@gmail.com',0,1,'2017-10-25 10:28:06.418589'),(70,'pbkdf2_sha256$30000$c6MNn4LFxfvf$vUvmBkUDZrR0T5IBTBIuJylXDTbgnUxwrQ07J7NASoI=','2017-10-27 16:08:32.738069',0,'t1','','','t1@gmail.com',0,1,'2017-10-25 10:39:06.427315'),(71,'pbkdf2_sha256$30000$06sdKAujuu7m$MJSj1zoqJWoNbWBcWJs8+MHseAWqQx4y88QUU/7jXis=','2017-10-27 05:20:27.366818',0,'s1','','','s1@gmail.com',0,1,'2017-10-27 04:18:18.629754'),(72,'pbkdf2_sha256$30000$boDsxRZsM3d4$nxmOsjonNmmBtL+UeGd60CTNXIkfghvSNzVgcyLHkDE=','2017-10-27 05:20:43.071833',0,'b1','','','b1@gmail.com',0,1,'2017-10-27 05:20:42.935497');
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
-- Table structure for table `cityinformation_college`
--

DROP TABLE IF EXISTS `cityinformation_college`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cityinformation_college` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `address` longtext NOT NULL,
  `departments` longtext NOT NULL,
  `emailAddress` longtext NOT NULL,
  `latitude` longtext NOT NULL,
  `longitude` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cityinformation_college`
--

LOCK TABLES `cityinformation_college` WRITE;
/*!40000 ALTER TABLE `cityinformation_college` DISABLE KEYS */;
INSERT INTO `cityinformation_college` VALUES (1,'Queensland University of Technology','2 George Street Brisbane','QUT Business School\r\nCreative Industries\r\nEducation\r\nHealth\r\nLaw\r\nScience and Engineering','3138 2000','-27.4785','153.0262'),(2,'University of Queensland','St Lucia QLD 4072','Business, Economics & Law\r\nEngineering, Architecture & Information Technology\r\nHealth and Behavioural Sciences\r\nHumanities and Social Sciences\r\nMedicine\r\nScience','studentadmin@uq.edu.au','-27.4954','153.0120'),(3,'Griffith University','170 Kessels Road\' Nathan','Accounting finance and economics\r\nEmployment relations and human services\r\nGovernment and international  relations\r\ninternational business and asian studies\r\nMarketing\r\nTourist, sport, and hotel management','international@griffith.edu.au','-27.5551','153.0533'),(4,'Australian Catholoc University','1100 Nudgee Rd, Banyo QLD 4014','Education and arts\r\nHealth Sciences\r\nLaw and business\r\nTheology and philosophy','askacu@acu.edu.au','-27.377891','153.089321');
/*!40000 ALTER TABLE `cityinformation_college` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cityinformation_hotel`
--

DROP TABLE IF EXISTS `cityinformation_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cityinformation_hotel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `address` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `emailAddress` longtext NOT NULL,
  `latitude` longtext NOT NULL,
  `longitude` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cityinformation_hotel`
--

LOCK TABLES `cityinformation_hotel` WRITE;
/*!40000 ALTER TABLE `cityinformation_hotel` DISABLE KEYS */;
INSERT INTO `cityinformation_hotel` VALUES (1,'Prince of Wales Hotel','1154 Sandgate Road\' Nundah','3266 8077','prince.of.wales.hotel@alhgroup.com.au','-27.4037','153.0601'),(2,'Ibis Budget Brisbane Airport','18 Navigator Place Hendra','3868 3457','h3512@accor.com','-27.4127','153.0761'),(3,'Hilton Brisbane','190 Elizabeth Street\' Brisbane','3234 2000','brisbane.info@hilton.com','-27.4692','153.0268'),(4,'Spicers Balfour Hotel','37 Balfour Street\', \'New Farm\'','1300 597 540','reception.balfour@spicersretreats.com','-27.4638','153.0403');
/*!40000 ALTER TABLE `cityinformation_hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cityinformation_industry`
--

DROP TABLE IF EXISTS `cityinformation_industry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cityinformation_industry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `address` longtext NOT NULL,
  `type` longtext NOT NULL,
  `emailAddress` longtext NOT NULL,
  `latitude` longtext NOT NULL,
  `longitude` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cityinformation_industry`
--

LOCK TABLES `cityinformation_industry` WRITE;
/*!40000 ALTER TABLE `cityinformation_industry` DISABLE KEYS */;
INSERT INTO `cityinformation_industry` VALUES (1,'SAP','20/140 Creek Street\' Brisbane','Software','brisbane.enquiry@sap.com','-27.46662365','153.02781207'),(2,'Oracle','16/340 Adelaide Street\' Brisbane','Software','\'contact@oracle.com','-27.46453433','153.02956112'),(3,'Rio Tinto','123 Albert Street Brisbane','Mining','contact@riotinto.com','-27.467956','153.018788'),(4,'Toll','16 Terrace Place Murrarrie','Logistics','contact@toll.com.au','-27.45309850','153.09856250');
/*!40000 ALTER TABLE `cityinformation_industry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cityinformation_library`
--

DROP TABLE IF EXISTS `cityinformation_library`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cityinformation_library` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` longtext NOT NULL,
  `address` longtext NOT NULL,
  `phone` longtext NOT NULL,
  `emailAddress` longtext NOT NULL,
  `latitude` longtext NOT NULL,
  `longitude` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cityinformation_library`
--

LOCK TABLES `cityinformation_library` WRITE;
/*!40000 ALTER TABLE `cityinformation_library` DISABLE KEYS */;
INSERT INTO `cityinformation_library` VALUES (1,'Carindale Library','1151 Creek Road Carindale','3407 1490','N/A','-27.503654','153.101765'),(2,'Annerley Library\'','450 Ipswich Road Annerley','3403 1735','N/A','-27.509424','153.033385'),(3,'Toowong Library','9 Sherwood Road Toowong','3403 2590','N/A','-27.485336','152.992139'),(4,'Wynnum Library','145 Florence Street\' Wynnum','3403 2199','N/A','-27.444639','153.171465');
/*!40000 ALTER TABLE `cityinformation_library` ENABLE KEYS */;
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
  `Latitude` longtext NOT NULL,
  `Longitude` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cityinformation_mall`
--

LOCK TABLES `cityinformation_mall` WRITE;
/*!40000 ALTER TABLE `cityinformation_mall` DISABLE KEYS */;
INSERT INTO `cityinformation_mall` VALUES (2,'Westfield Garden City','Logan Rd & Kessels Rd, Upper Mount Gravatt','(07) 3135 5450','gardencity@scentregroup.com','-27.5630','153.0825'),(3,'Westfield Chermside','Gympie Rd & Hamilton Rd, Chermside','3117 5300','chermside@scentregroup.com','-27.3847','153.0321'),(4,'Westfield Carindale','1151 Creek Road	Carindale','3120 5400','carindale@scentregroup.com','-27.5030','153.1016'),(5,'Toombul Shopping Centre','1015 Sandgate Road Toombul','3135 5450','toombul@mirvac.com','-27.4090','153.0619');
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
  `Latitude` longtext,
  `Longitude` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cityinformation_museum`
--

LOCK TABLES `cityinformation_museum` WRITE;
/*!40000 ALTER TABLE `cityinformation_museum` DISABLE KEYS */;
INSERT INTO `cityinformation_museum` VALUES (1,'Queensland Museum','Grey St & Melbourne St, South Brisbane QLD 4101','(07) 3840 7555','info@qm.qld.gov.au','-27.472886','153.017916'),(2,'Gallery of Modern Art','Stanley Place South Brisbane','3840 7303','gallery@qagoma.qld.gov.au','-27.4706','153.0170'),(3,'Museum of Brisbane','64 Adelaide Street  Brisbane','3339 0800','info@museumofbrisbane.com.au','-27.4688','153.0236'),(4,'Queensland Maritime Museum','412 Stanley St, South Brisbane','3844 5361','info@maritimemuseum.com.au','-27.4818','153.0256');
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
  `Latitude` longtext,
  `Longitude` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cityinformation_park`
--

LOCK TABLES `cityinformation_park` WRITE;
/*!40000 ALTER TABLE `cityinformation_park` DISABLE KEYS */;
INSERT INTO `cityinformation_park` VALUES (1,'Kalinga Park','31 Kalinga Street Clayfield','N/A','N/A','-27.4087','153.0541'),(2,'Hidden World','411 Roghan Road Fitzgibbon','N/A','N/A','-27.337866','153.034057'),(3,'Lower Moora Park','65a Park Parade\' Shorncliffe','N/A','N/A','-27.3225','153.0834'),(4,'Habitat Drive Park','45 Habitat Drive Wakerley','N/A','N/A','-27.487164','153.162818');
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
  `Latitude` longtext,
  `Longitude` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cityinformation_restaurant`
--

LOCK TABLES `cityinformation_restaurant` WRITE;
/*!40000 ALTER TABLE `cityinformation_restaurant` DISABLE KEYS */;
INSERT INTO `cityinformation_restaurant` VALUES (1,'Thai Naramit','4/5 Zilman Road	Hendra','3268 5146','bookingthainaramit@gmail.com','-27.4226','153.0637'),(2,'El & Dora','8/31 Alexandra Road	Ascot','3262 2242','info@elanddora.com','-27.4285','153.0585'),(3,'Ze Pickle','1 Prospect Street Fortitude Valley','3252 0186','contact@zepickle.com.au','-27.452388','153.03734'),(4,'Vintaged Bar + Grill','6/190 Elizabeth Street Brisbane','3231 3265','eat@vintagedbarandgrill.com','-27.4694','153.0270');
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
  `Latitude` longtext,
  `Longitude` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cityinformation_zoo`
--

LOCK TABLES `cityinformation_zoo` WRITE;
/*!40000 ALTER TABLE `cityinformation_zoo` DISABLE KEYS */;
INSERT INTO `cityinformation_zoo` VALUES (1,'Lone Pine Koala Sanctuary','708 Jesmond Road','3378 1366','service@koala.net','-27.5338','152.9688'),(2,'Australia Zoo','1638 Steve Irwin Way Beerwah','5436 2000','contact@australiazoo.com.au','-26.8357','152.9631'),(3,'Paradise Country','Production Drive Oxenford','13 33 86','contact@paradisecountry.com.au','-27.911622','153.310058'),(4,'Currumbin Wildlife Sanctuary','28 Tomewin Street Currumbin','5534 1266','enquiries@cws.org.au','-28.1356','153.4886');
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
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2017-10-18 02:57:54.786590','1','test',1,'[{\"added\": {}}]',1,2),(2,'2017-10-25 06:16:45.346889','2','Westfield Garden City',1,'[{\"added\": {}}]',1,2),(3,'2017-10-25 06:16:57.898105','1','test',3,'',1,2),(4,'2017-10-25 06:20:04.079596','1','Queensland Museum',1,'[{\"added\": {}}]',2,2),(5,'2017-10-27 08:07:53.956790','2','Westfield Garden City',2,'[{\"changed\": {\"fields\": [\"Latitude\", \"Longitude\"]}}]',1,2),(6,'2017-10-30 03:48:07.233060','2','Westfield Garden City',2,'[]',1,2),(7,'2017-10-30 03:53:30.468762','3','Westfield Chermside',1,'[{\"added\": {}}]',1,2),(8,'2017-10-30 04:53:36.364321','4','Westfield Carindale',1,'[{\"added\": {}}]',1,2),(9,'2017-10-30 04:54:47.625706','5','Toombul Shopping Centre',1,'[{\"added\": {}}]',1,2),(10,'2017-10-30 04:59:53.063955','1','Queensland Museum',2,'[{\"changed\": {\"fields\": [\"emailAddress\", \"latitude\", \"longitude\"]}}]',2,2),(11,'2017-10-30 05:02:00.130159','2','Gallery of Modern Art',1,'[{\"added\": {}}]',2,2),(12,'2017-10-30 05:02:51.555444','2','Gallery of Modern Art',2,'[]',2,2),(13,'2017-10-30 05:04:30.127585','3','Museum of Brisbane',1,'[{\"added\": {}}]',2,2),(14,'2017-10-30 05:06:25.378944','4','Queensland Maritime Museum',1,'[{\"added\": {}}]',2,2),(15,'2017-10-30 05:15:53.064625','1','Queensland University of Technology',1,'[{\"added\": {}}]',13,2),(16,'2017-10-30 05:19:41.426597','2','University of Queensland',1,'[{\"added\": {}}]',13,2),(17,'2017-10-30 05:24:40.880853','3','Griffith University',1,'[{\"added\": {}}]',13,2),(18,'2017-10-30 05:26:48.442889','1','Prince of Wales Hotel',1,'[{\"added\": {}}]',14,2),(19,'2017-10-30 05:28:18.004813','2','Ibis Budget Brisbane Airport',1,'[{\"added\": {}}]',14,2),(20,'2017-10-30 05:29:39.226781','3','Hilton Brisbane',1,'[{\"added\": {}}]',14,2),(21,'2017-10-30 05:30:46.860629','4','Spicers Balfour Hotel',1,'[{\"added\": {}}]',14,2),(22,'2017-10-30 05:32:48.655854','1','SAP',1,'[{\"added\": {}}]',15,2),(23,'2017-10-30 05:34:45.762884','2','Oracle',1,'[{\"added\": {}}]',15,2),(24,'2017-10-30 05:38:00.089017','3','Rio Tinto',1,'[{\"added\": {}}]',15,2),(25,'2017-10-30 05:39:20.505597','4','Toll',1,'[{\"added\": {}}]',15,2),(26,'2017-10-30 05:41:48.841375','1','Carindale Library',1,'[{\"added\": {}}]',16,2),(27,'2017-10-30 05:44:03.424079','2','Annerley Library\'',1,'[{\"added\": {}}]',16,2),(28,'2017-10-30 05:45:07.588612','3','Toowong Library',1,'[{\"added\": {}}]',16,2),(29,'2017-10-30 05:46:14.357787','4','Wynnum Library',1,'[{\"added\": {}}]',16,2),(30,'2017-10-30 05:47:56.272691','1','Kalinga Park',1,'[{\"added\": {}}]',3,2),(31,'2017-10-30 05:49:24.383231','2','Hidden World',1,'[{\"added\": {}}]',3,2),(32,'2017-10-30 05:51:16.289054','3','Lower Moora Park',1,'[{\"added\": {}}]',3,2),(33,'2017-10-30 05:52:50.617370','4','Habitat Drive Park',1,'[{\"added\": {}}]',3,2),(34,'2017-10-30 05:54:23.587642','1','Thai Naramit',1,'[{\"added\": {}}]',4,2),(35,'2017-10-30 05:55:35.411710','2','El & Dora',1,'[{\"added\": {}}]',4,2),(36,'2017-10-30 05:57:25.551391','3','Ze Pickle',1,'[{\"added\": {}}]',4,2),(37,'2017-10-30 05:59:12.090467','4','Vintaged Bar + Grill',1,'[{\"added\": {}}]',4,2),(38,'2017-10-30 06:01:44.015194','1','Lone Pine Koala Sanctuary',1,'[{\"added\": {}}]',5,2),(39,'2017-10-30 06:03:35.175410','2','Australia Zoo',1,'[{\"added\": {}}]',5,2),(40,'2017-10-30 06:05:16.188719','3','Paradise Country',1,'[{\"added\": {}}]',5,2),(41,'2017-10-30 06:06:16.522776','4','Currumbin Wildlife Sanctuary',1,'[{\"added\": {}}]',5,2),(42,'2017-10-30 06:09:10.942368','4','Australian Catholoc University',1,'[{\"added\": {}}]',13,2),(43,'2017-10-30 06:11:39.821085','4','Westfield Carindale',2,'[{\"changed\": {\"fields\": [\"address\"]}}]',1,2),(44,'2017-10-30 06:13:52.378013','2','Westfield Garden City',2,'[{\"changed\": {\"fields\": [\"emailAddress\"]}}]',1,2),(45,'2017-10-30 06:14:44.388752','4','Westfield Carindale',2,'[]',1,2),(46,'2017-10-30 06:14:49.264955','3','Westfield Chermside',2,'[{\"changed\": {\"fields\": [\"phone\", \"emailAddress\"]}}]',1,2),(47,'2017-10-30 06:18:02.306528','3','Westfield Chermside',2,'[{\"changed\": {\"fields\": [\"address\"]}}]',1,2),(48,'2017-10-30 06:18:07.066129','2','Westfield Garden City',2,'[{\"changed\": {\"fields\": [\"address\"]}}]',1,2);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (6,'admin','logentry'),(7,'auth','group'),(9,'auth','permission'),(8,'auth','user'),(13,'CityInformation','college'),(14,'CityInformation','hotel'),(15,'CityInformation','industry'),(16,'CityInformation','library'),(1,'CityInformation','mall'),(2,'CityInformation','museum'),(3,'CityInformation','park'),(4,'CityInformation','restaurant'),(5,'CityInformation','zoo'),(10,'contenttypes','contenttype'),(11,'sessions','session'),(12,'users','userprofile');
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'CityInformation','0001_initial','2017-10-18 01:56:32.749554'),(2,'CityInformation','0002_auto_20170929_0207','2017-10-18 01:56:32.999579'),(3,'contenttypes','0001_initial','2017-10-18 01:56:33.202735'),(4,'auth','0001_initial','2017-10-18 01:56:36.167446'),(5,'admin','0001_initial','2017-10-18 01:56:36.915416'),(6,'admin','0002_logentry_remove_auto_add','2017-10-18 01:56:36.931074'),(7,'contenttypes','0002_remove_content_type_name','2017-10-18 01:56:37.477977'),(8,'auth','0002_alter_permission_name_max_length','2017-10-18 01:56:37.743633'),(9,'auth','0003_alter_user_email_max_length','2017-10-18 01:56:38.040535'),(10,'auth','0004_alter_user_username_opts','2017-10-18 01:56:38.056161'),(11,'auth','0005_alter_user_last_login_null','2017-10-18 01:56:38.196803'),(12,'auth','0006_require_contenttypes_0002','2017-10-18 01:56:38.212428'),(13,'auth','0007_alter_validators_add_error_messages','2017-10-18 01:56:38.228055'),(14,'auth','0008_alter_user_username_max_length','2017-10-18 01:56:38.524969'),(15,'sessions','0001_initial','2017-10-18 01:56:38.775978'),(16,'users','0001_initial','2017-10-18 01:56:39.343151'),(17,'CityInformation','0003_museum_test','2017-10-27 07:04:21.566914'),(18,'CityInformation','0004_remove_museum_test','2017-10-27 07:05:01.279239'),(19,'CityInformation','0005_museum_image','2017-10-27 07:48:12.370772'),(20,'CityInformation','0006_auto_20171027_1806','2017-10-27 08:06:21.788076'),(21,'CityInformation','0003_auto_20171027_1829','2017-10-30 04:21:54.888407'),(22,'CityInformation','0004_auto_20171029_0154','2017-10-30 04:21:55.805367'),(23,'CityInformation','0005_industry','2017-10-30 04:21:55.958712'),(24,'CityInformation','0006_college','2017-10-30 04:21:56.074642'),(25,'CityInformation','0007_library','2017-10-30 04:21:56.174922');
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
INSERT INTO `django_session` VALUES ('2wsnmr6948j8vhjutukh5igs8f7jzrj5','YmE2OWE0YjZmOTBkNjc4Y2QyMDRiMzE5NmQ3NDU2MGU4MzgwZDA2MDp7fQ==','2017-11-08 04:28:26.093245'),('40iljtm2lvieu6gd1onnm748i64dn14f','YmE2OWE0YjZmOTBkNjc4Y2QyMDRiMzE5NmQ3NDU2MGU4MzgwZDA2MDp7fQ==','2017-11-08 04:16:32.716879'),('8pc4kl6h0i0c74nrc5aksn6mnluln2rl','YmE2OWE0YjZmOTBkNjc4Y2QyMDRiMzE5NmQ3NDU2MGU4MzgwZDA2MDp7fQ==','2017-11-08 04:34:09.297818'),('8wyywrpsfx5uqe9ogj4nz2bsic0qfwei','YmE2OWE0YjZmOTBkNjc4Y2QyMDRiMzE5NmQ3NDU2MGU4MzgwZDA2MDp7fQ==','2017-11-08 04:32:42.567323'),('c9re2q80rsff9ra0mr8clke4d6q6r9xl','YmE2OWE0YjZmOTBkNjc4Y2QyMDRiMzE5NmQ3NDU2MGU4MzgwZDA2MDp7fQ==','2017-11-08 11:53:16.863552'),('ct78t7yod6bxgqssh2huwxecnju5pjeo','YmE2OWE0YjZmOTBkNjc4Y2QyMDRiMzE5NmQ3NDU2MGU4MzgwZDA2MDp7fQ==','2017-11-08 11:58:07.774907'),('gf8c2yoq9etewx2ifw5pdrl5f1b4c22j','YmE2OWE0YjZmOTBkNjc4Y2QyMDRiMzE5NmQ3NDU2MGU4MzgwZDA2MDp7fQ==','2017-11-08 04:22:55.535899'),('inw9hi6z3g7flesiwcbr2zrnsgudrhsi','YTQ1NDYyMjYyYWI0ODkwZjhlYmQwMjBiN2Y4ZTUxOTMzZWIxODBhMzp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMzQ2NTIzMzMyMTQ4ZGEyYWYwN2ExMjFmNGQwMTJlOWM0NDdlYTg2ZCJ9','2017-11-06 14:11:57.003359'),('j85f6zgny81pgcso9vfrya630514ssv7','YmE2OWE0YjZmOTBkNjc4Y2QyMDRiMzE5NmQ3NDU2MGU4MzgwZDA2MDp7fQ==','2017-11-08 12:10:15.186438'),('k7n2eet1mzs15o19jy9dv2v69yw83q8p','YmE2OWE0YjZmOTBkNjc4Y2QyMDRiMzE5NmQ3NDU2MGU4MzgwZDA2MDp7fQ==','2017-11-08 04:25:28.146979'),('n1urrio4i05bvyryq29zbx61i8afiee9','YmE2OWE0YjZmOTBkNjc4Y2QyMDRiMzE5NmQ3NDU2MGU4MzgwZDA2MDp7fQ==','2017-11-08 10:57:48.351662'),('oz29agp3liq58plkvzrqrel6wdg0i95t','YmE2OWE0YjZmOTBkNjc4Y2QyMDRiMzE5NmQ3NDU2MGU4MzgwZDA2MDp7fQ==','2017-11-08 11:22:43.806823'),('pb11ic5woo0wsgd80xm6105m03bw27f2','YmE2OWE0YjZmOTBkNjc4Y2QyMDRiMzE5NmQ3NDU2MGU4MzgwZDA2MDp7fQ==','2017-11-08 04:20:59.640152'),('ts0j1tymgthy2x3jnjkesi4jmv4opf1a','YmE2OWE0YjZmOTBkNjc4Y2QyMDRiMzE5NmQ3NDU2MGU4MzgwZDA2MDp7fQ==','2017-11-08 10:58:37.396467'),('vs35rrxnjhak80oerp9gihpmoau8f4f3','NWFkOWJiMDNiOTMzMzhlYmQwZjJlMmNkMzZhMWEzODE0M2EwOGNjNzp7Il9hdXRoX3VzZXJfaWQiOiIzMCIsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiYTc2YWJmN2IwZjIyMWVlZDU4NzE4ZGYzYTMzZDU0MDE4YmNjNGQ3NiJ9','2017-11-13 08:11:44.682694'),('x0v0yw8emfr7kxt8svjsyk5s4ovq9pho','YmE2OWE0YjZmOTBkNjc4Y2QyMDRiMzE5NmQ3NDU2MGU4MzgwZDA2MDp7fQ==','2017-11-08 04:19:33.569555'),('zn0wlqv0rd1gd8qbcwosxgpz1ma5phhc','YmE2OWE0YjZmOTBkNjc4Y2QyMDRiMzE5NmQ3NDU2MGU4MzgwZDA2MDp7fQ==','2017-11-08 12:03:15.239323'),('zukna41dloipld7cmuv83cy9aymnl11y','YmE2OWE0YjZmOTBkNjc4Y2QyMDRiMzE5NmQ3NDU2MGU4MzgwZDA2MDp7fQ==','2017-11-08 11:20:16.896900');
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_userprofile`
--

LOCK TABLES `users_userprofile` WRITE;
/*!40000 ALTER TABLE `users_userprofile` DISABLE KEYS */;
INSERT INTO `users_userprofile` VALUES (1,NULL,1),(2,NULL,2),(3,NULL,3),(4,NULL,4),(5,NULL,5),(6,'Business',16),(7,'Business',17),(8,'Business',18),(9,'Business',19),(10,'',20),(11,'',21),(12,'',22),(13,'',23),(14,'1',24),(15,'3',25),(16,'2',26),(17,'2',27),(18,'1',28),(19,'2',29),(20,'3',30),(21,'3',31),(22,'2',32),(23,'1',33),(24,'1',34),(25,'1',35),(26,'1',36),(27,'1',37),(28,'1',38),(29,'3',39),(30,'2',40),(31,'1',41),(32,'1',42),(33,'1',43),(34,'1',44),(35,'1',45),(36,'1',46),(37,'1',47),(38,'1',48),(39,'1',49),(40,'1',50),(41,'1',51),(42,'1',52),(43,'1',53),(44,'1',54),(45,'1',55),(46,'1',56),(47,'1',57),(48,'1',58),(49,'1',59),(50,'1',60),(51,'1',61),(52,'1',62),(53,'1',63),(54,'1',64),(55,'1',65),(56,'1',66),(57,'1',67),(58,'3',68),(59,'1',69),(60,'3',70),(61,'2',71),(62,'1',72);
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

-- Dump completed on 2017-10-30 18:22:19
