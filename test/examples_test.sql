-- MySQL dump 10.13  Distrib 5.5.19, for osx10.7 (i386)
--
-- Host: localhost    Database: examples_development
-- ------------------------------------------------------
-- Server version	5.5.19

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
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_companies_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` VALUES (5,'MNU','2012-02-26 22:11:12','2012-02-26 22:11:12'),(6,'SkyNet','2012-02-26 22:11:12','2012-02-26 22:11:12'),(7,'Coders Unlimited','2012-02-26 22:11:12','2012-02-26 22:11:12'),(8,'Shift-Command-4 Limited','2012-02-26 22:11:12','2012-02-26 22:11:12');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priorities`
--

DROP TABLE IF EXISTS `priorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `priorities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_priorities_on_name` (`name`),
  KEY `index_priorities_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priorities`
--

LOCK TABLES `priorities` WRITE;
/*!40000 ALTER TABLE `priorities` DISABLE KEYS */;
INSERT INTO `priorities` VALUES (6,'Urgent',0,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(7,'High',1,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(8,'Normal',2,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(9,'Low',3,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(10,'Anecdotic',4,'2012-02-26 22:11:12','2012-02-26 22:11:12');
/*!40000 ALTER TABLE `priorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_roles`
--

DROP TABLE IF EXISTS `project_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `can_close_tasks` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_project_roles_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_roles`
--

LOCK TABLES `project_roles` WRITE;
/*!40000 ALTER TABLE `project_roles` DISABLE KEYS */;
INSERT INTO `project_roles` VALUES (5,'Manager',1,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(6,'Customer',1,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(7,'Developer',0,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(8,'QualityAssurance',0,'2012-02-26 22:11:12','2012-02-26 22:11:12');
/*!40000 ALTER TABLE `project_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_projects_on_customer_id` (`customer_id`),
  KEY `index_projects_on_supplier_id` (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (4,'Ultimate Website',5,7,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(5,'Super Game',5,8,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(6,'Divine Firmware',6,7,'2012-02-26 22:11:12','2012-02-26 22:11:12');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120224193505'),('20120224193517'),('20120224193522'),('20120224193529'),('20120224193537'),('20120224193543'),('20120224193550'),('20120224193610'),('20120224195351'),('20120224195521'),('20120610091944');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statuses`
--

DROP TABLE IF EXISTS `statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_statuses_on_name` (`name`),
  KEY `index_statuses_on_position` (`position`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statuses`
--

LOCK TABLES `statuses` WRITE;
/*!40000 ALTER TABLE `statuses` DISABLE KEYS */;
INSERT INTO `statuses` VALUES (10,'New',0,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(11,'Assigned',1,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(12,'Started',2,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(13,'Resolved',3,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(14,'Duplicate',4,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(15,'Cancelled',5,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(16,'Postponed',6,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(17,'Closed',7,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(18,'Verified',8,'2012-02-26 22:11:12','2012-02-26 22:11:12');
/*!40000 ALTER TABLE `statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `created_by_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `priority_id` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `relevant_version_id` int(11) DEFAULT NULL,
  `expected_version_id` int(11) DEFAULT NULL,
  `estimated_time` float DEFAULT NULL,
  `archived` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_tasks_on_title` (`title`),
  KEY `index_tasks_on_created_by_id` (`created_by_id`),
  KEY `index_tasks_on_project_id` (`project_id`),
  KEY `index_tasks_on_priority_id` (`priority_id`),
  KEY `index_tasks_on_status_id` (`status_id`),
  KEY `index_tasks_on_relevant_version_id` (`relevant_version_id`),
  KEY `index_tasks_on_expected_version_id` (`expected_version_id`)
) ENGINE=InnoDB AUTO_INCREMENT=557 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES (507,'sed impedit iste','Velit atque sapiente aspernatur sint fuga.',13,4,'2013-01-26',NULL,11,15,14,2,0,'2011-09-13 22:11:12','2012-01-14 22:11:12'),(508,'sequi','In recusandae quibusdam consequatur odio dicta sit.',21,5,'2012-07-29',8,16,17,18,10,0,'2011-11-09 22:11:12','2011-11-26 22:11:12'),(509,'ab','Repudiandae voluptatibus sed perferendis quia sit voluptates ea delectus.',14,5,'2013-03-18',10,12,NULL,18,8,0,'2011-08-13 22:11:12','2011-12-07 22:11:12'),(510,'sint voluptatem','Eos qui est quis.',20,6,'2012-07-02',7,10,22,21,19,0,'2011-09-25 22:11:12','2012-02-19 22:11:12'),(511,'est maiores delectus','In occaecati at facilis ut consectetur dolorum officia.',21,5,'2012-11-07',8,15,18,NULL,18,0,'2011-10-25 22:11:12','2011-11-25 22:11:12'),(512,'dolore ad','Asperiores odio repellendus ut voluptate.',18,5,'2013-01-24',6,14,NULL,19,4,0,'2011-10-30 22:11:12','2012-02-11 22:11:12'),(513,'nihil','Ut ex ipsam a.',14,5,'2012-12-24',8,16,NULL,NULL,13,1,'2011-08-18 22:11:12','2012-01-05 22:11:12'),(514,'quia dignissimos maiores','Mollitia aliquam ratione perferendis reprehenderit dolor quod.',17,6,'2012-12-14',6,14,20,NULL,6,0,'2011-08-11 22:11:12','2011-12-19 22:11:12'),(515,'voluptatum non','Vero sit voluptate sed tempora et provident sequi nihil.',22,5,'2012-11-05',7,15,NULL,19,8,0,'2011-09-29 22:11:12','2012-02-02 22:11:12'),(516,'dolorem','Et vel ipsa illo aut error voluptatem autem qui.',22,5,'2013-01-14',7,14,NULL,NULL,20,0,'2011-11-08 22:11:12','2011-11-29 22:11:12'),(517,'repellat voluptates','Commodi et et nisi ipsam corporis.',16,6,'2012-06-30',10,12,NULL,NULL,10,0,'2011-09-06 22:11:12','2011-12-18 22:11:12'),(518,'sunt et ipsa','Id sunt et pariatur quis quaerat veritatis distinctio voluptate.',20,6,'2013-01-27',7,17,NULL,21,17,0,'2011-08-30 22:11:12','2012-01-30 22:11:12'),(519,'consequatur minus et','Corporis facilis eos magni repellendus.',17,4,'2012-11-22',9,11,12,12,12,0,'2011-09-22 22:11:12','2012-01-15 22:11:12'),(520,'odit','Id sint quidem esse blanditiis.',14,6,'2012-11-18',NULL,17,NULL,NULL,8,0,'2011-09-28 22:11:12','2011-11-21 22:11:12'),(521,'tempora','Assumenda illo quia molestiae nihil quis nulla.',18,5,'2012-12-25',9,14,NULL,18,13,0,'2011-09-03 22:11:12','2011-12-28 22:11:12'),(522,'rerum','Aut et eos nostrum et recusandae ab.',18,4,'2013-01-07',6,14,NULL,NULL,17,0,'2011-09-25 22:11:12','2012-01-26 22:11:12'),(523,'dolores delectus','Iure tenetur cum aut optio et quia similique debitis.',19,4,'2012-10-11',NULL,15,NULL,14,8,0,'2011-11-16 22:11:12','2011-11-20 22:11:12'),(524,'quod dolor inventore','Atque omnis fugiat totam dolorum.',13,4,'2012-12-29',9,15,16,15,8,1,'2011-10-07 22:11:12','2012-01-25 22:11:12'),(525,'at et','Aut unde porro veritatis debitis sint.',18,4,'2012-11-05',NULL,13,12,14,17,0,'2011-09-16 22:11:12','2011-12-08 22:11:12'),(526,'quibusdam temporibus et','Amet laudantium aut labore ut consequatur sunt.',15,4,'2012-08-14',NULL,12,NULL,NULL,14,0,'2011-11-05 22:11:12','2012-01-22 22:11:12'),(527,'voluptates corporis velit','Ratione ea amet quam enim illo.',14,5,'2013-03-24',NULL,15,NULL,18,3,0,'2011-10-11 22:11:12','2012-01-06 22:11:12'),(528,'omnis perferendis et','Aut nobis quod dolore.',16,6,'2012-07-02',9,16,NULL,21,19,0,'2011-10-04 22:11:12','2011-11-22 22:11:12'),(529,'dolor et corporis','Voluptate occaecati quisquam in et qui nostrum eos minus.',20,6,'2012-08-19',6,16,22,NULL,16,0,'2011-09-27 22:11:12','2012-01-26 22:11:12'),(530,'sint adipisci','Consequatur omnis similique quidem quia a.',22,5,'2013-01-16',10,18,NULL,19,16,0,'2011-09-09 22:11:12','2011-11-26 22:11:12'),(531,'veniam tempora','Rerum magni similique eum architecto ea aspernatur.',18,5,'2012-10-13',6,15,NULL,NULL,12,0,'2011-08-18 22:11:12','2012-01-30 22:11:12'),(532,'ducimus','Tempore nesciunt ullam consequatur est magnam deserunt voluptatem nam.',21,5,'2012-06-12',NULL,17,18,NULL,4,0,'2011-11-05 22:11:12','2012-01-04 22:11:12'),(533,'fugit unde eligendi','Et nobis occaecati impedit fugit.',13,4,'2012-12-10',NULL,18,14,12,1,1,'2011-11-09 22:11:12','2012-01-30 22:11:12'),(534,'corporis expedita vel','Dolore quibusdam et eos earum expedita veniam excepturi.',13,4,'2012-11-19',NULL,13,NULL,12,10,0,'2011-11-13 22:11:12','2012-01-23 22:11:12'),(535,'temporibus et','Quia quasi maiores suscipit fugit ipsam.',22,5,'2012-07-15',9,17,17,NULL,20,0,'2011-09-23 22:11:12','2012-02-16 22:11:12'),(536,'et','Est et mollitia sed et possimus.',23,4,'2013-03-29',8,12,NULL,15,10,0,'2011-11-15 22:11:12','2011-12-31 22:11:12'),(537,'ut ipsum excepturi','Cumque repellat dignissimos voluptatem aspernatur perspiciatis quis.',22,4,'2012-11-09',NULL,11,12,NULL,8,0,'2011-10-02 22:11:12','2011-12-17 22:11:12'),(538,'commodi neque aut','Vel magnam minus aut modi voluptatem consequuntur molestias.',20,6,'2012-07-11',10,12,NULL,22,20,0,'2011-09-10 22:11:12','2012-02-11 22:11:12'),(539,'mollitia veritatis','Cum dolorum iusto quia.',16,4,'2013-01-29',10,17,16,14,6,0,'2011-08-11 22:11:12','2011-12-24 22:11:12'),(540,'inventore architecto aut','Possimus quia dolores tenetur voluptatem ipsa ipsum est.',13,4,'2012-12-13',6,11,14,NULL,14,0,'2011-08-22 22:11:12','2011-11-30 22:11:12'),(541,'fuga dolorem placeat','Molestiae voluptates accusamus quo aut rerum et eum.',24,5,'2013-03-30',NULL,10,17,19,7,0,'2011-08-14 22:11:12','2012-01-30 22:11:12'),(542,'accusantium','Odio ut ipsam aut dolorem in quod dicta hic.',16,4,'2012-12-31',10,15,12,12,16,0,'2011-09-06 22:11:12','2011-12-01 22:11:12'),(543,'velit quasi aperiam','In libero assumenda qui.',16,6,'2012-09-13',NULL,14,21,NULL,6,0,'2011-10-08 22:11:12','2011-11-20 22:11:12'),(544,'maiores nesciunt','Ullam doloremque nisi rerum non non itaque esse adipisci.',16,6,'2012-06-14',9,14,22,21,12,0,'2011-08-29 22:11:12','2011-12-21 22:11:12'),(545,'velit sit','Officia quam odit voluptatem delectus debitis velit quibusdam eum.',23,4,'2012-08-18',8,12,12,NULL,12,0,'2011-08-27 22:11:12','2012-01-07 22:11:12'),(546,'qui animi','Quaerat aperiam in distinctio.',18,4,'2013-03-16',6,14,NULL,NULL,3,0,'2011-11-09 22:11:12','2012-01-10 22:11:12'),(547,'dolores','Ad sunt vel maxime labore temporibus incidunt quidem.',21,5,'2013-02-23',8,13,NULL,NULL,1,0,'2011-11-13 22:11:12','2012-01-26 22:11:12'),(548,'adipisci ullam','Vel quas dolores nobis.',16,6,'2012-11-22',NULL,16,NULL,NULL,7,0,'2011-11-16 22:11:12','2011-12-24 22:11:12'),(549,'alias','Dicta sit necessitatibus ut dolorem.',14,5,'2012-07-27',7,12,NULL,NULL,16,0,'2011-10-08 22:11:12','2011-12-24 22:11:12'),(550,'velit aliquam','Ut quidem neque qui.',14,5,'2012-08-29',NULL,14,18,19,11,1,'2011-10-09 22:11:12','2011-12-30 22:11:12'),(551,'doloremque','Adipisci illo alias eos reprehenderit.',20,6,'2012-06-30',6,15,NULL,20,1,0,'2011-09-25 22:11:12','2012-01-15 22:11:12'),(552,'est','Totam aut ex quia repudiandae dolor.',17,6,'2012-08-05',NULL,14,NULL,NULL,10,0,'2011-10-19 22:11:12','2011-11-30 22:11:12'),(553,'voluptas id','Accusamus voluptas sunt deleniti iusto dolorem repudiandae.',20,6,'2012-09-26',NULL,10,22,NULL,7,0,'2011-08-28 22:11:12','2012-01-06 22:11:12'),(554,'necessitatibus in','Inventore iure eos labore ipsum.',22,4,'2012-10-02',8,18,NULL,NULL,20,0,'2011-08-18 22:11:12','2011-12-07 22:11:12'),(555,'numquam nisi vero','Dolorum consequatur non molestias.',17,4,'2013-02-09',NULL,13,15,14,3,0,'2011-08-27 22:11:12','2012-02-10 22:11:12'),(556,'quia exercitationem','Adipisci voluptate sed esse velit.',20,6,'2013-02-02',10,16,NULL,20,8,0,'2011-09-29 22:11:12','2012-01-23 22:11:12');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_users`
--

DROP TABLE IF EXISTS `tasks_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks_users` (
  `task_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  KEY `index_tasks_users_on_task_id` (`task_id`),
  KEY `index_tasks_users_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_users`
--

LOCK TABLES `tasks_users` WRITE;
/*!40000 ALTER TABLE `tasks_users` DISABLE KEYS */;
INSERT INTO `tasks_users` VALUES (1,10),(2,5),(2,4),(3,1),(7,6),(7,7),(9,6),(9,7),(10,1),(11,7),(13,10),(14,5),(15,6),(17,6),(17,10),(18,1),(19,9),(20,8),(20,1),(22,6),(22,12),(23,8),(23,11),(23,4),(25,10),(26,10),(26,4),(28,5),(30,7),(30,12),(30,10),(33,9),(34,5),(35,5),(35,1),(35,6),(37,8),(40,5),(43,11),(43,2),(44,6),(44,8),(45,10),(45,1),(46,12),(46,3),(46,7),(48,6),(49,6),(49,7),(49,3),(51,5),(51,2),(52,10),(55,10),(57,8),(60,8),(61,9),(61,8),(61,3),(62,1),(63,8),(64,8),(64,5),(65,7),(65,6),(69,12),(69,10),(70,3),(70,9),(70,6),(73,8),(75,3),(78,1),(78,8),(79,8),(79,11),(81,5),(82,8),(82,1),(83,3),(83,6),(84,2),(85,2),(88,7),(88,3),(90,12),(90,6),(92,8),(92,11),(92,2),(93,2),(94,12),(94,10),(95,6),(95,3),(95,10),(96,6),(98,5),(98,8),(99,3),(99,10),(99,6),(101,12),(101,10),(101,6),(102,11),(102,5),(104,8),(104,6),(105,8),(105,4),(105,5),(106,5),(106,8),(107,6),(107,8),(108,7),(108,10),(110,7),(110,6),(112,6),(112,10),(113,5),(113,10),(113,11),(115,8),(115,9),(116,4),(117,6),(117,7),(117,3),(119,6),(119,10),(119,3),(120,12),(120,6),(120,10),(121,8),(121,5),(122,10),(122,6),(123,7),(124,4),(124,11),(124,5),(125,11),(125,10),(128,11),(128,8),(129,7),(132,8),(133,7),(133,12),(134,11),(134,4),(136,12),(138,6),(138,9),(139,4),(141,8),(142,8),(142,5),(143,8),(143,4),(144,2),(145,8),(145,1),(146,5),(147,1),(147,9),(148,2),(148,11),(149,3),(149,10),(149,12),(150,6),(150,10),(151,10),(152,8),(152,11),(153,7),(154,6),(155,6),(155,10),(155,3),(156,11),(156,4),(157,6),(157,1),(158,6),(159,9),(159,8),(160,6),(161,5),(161,6),(164,8),(164,5),(165,8),(165,1),(165,5),(166,11),(166,8),(167,10),(167,8),(167,9),(168,7),(168,6),(168,12),(169,12),(169,6),(170,3),(170,6),(171,11),(171,8),(171,2),(172,11),(172,8),(173,10),(173,7),(174,1),(175,9),(176,8),(176,3),(176,5),(178,6),(182,8),(182,9),(183,6),(183,7),(183,10),(184,8),(184,4),(185,10),(185,5),(185,4),(186,10),(188,6),(190,1),(190,10),(190,5),(191,3),(191,9),(192,1),(194,6),(196,12),(197,3),(198,1),(198,3),(199,10),(200,11),(201,3),(201,7),(201,6),(203,4),(203,8),(205,11),(206,12),(206,7),(206,6),(207,6),(207,10),(209,12),(209,3),(210,9),(211,6),(211,8),(212,7),(212,10),(212,3),(213,8),(213,11),(215,7),(216,8),(216,10),(216,11),(217,9),(217,1),(217,6),(218,3),(218,6),(220,3),(220,8),(221,1),(222,6),(222,10),(223,7),(225,10),(226,10),(227,7),(227,3),(228,8),(231,7),(233,11),(235,11),(235,4),(235,10),(236,5),(236,6),(237,9),(237,8),(238,7),(239,12),(239,10),(241,8),(242,11),(242,8),(244,7),(245,5),(245,10),(246,3),(248,6),(249,6),(249,10),(250,12),(252,7),(254,10),(254,2),(254,4),(255,6),(256,6),(257,6),(258,7),(258,6),(260,6),(261,10),(261,4),(262,3),(262,5),(262,8),(263,4),(264,10),(264,5),(264,4),(265,5),(266,10),(269,3),(270,10),(270,5),(272,3),(273,1),(273,6),(274,4),(274,8),(277,10),(278,1),(278,6),(279,1),(280,2),(280,4),(281,6),(281,7),(282,6),(282,9),(282,1),(285,1),(287,3),(287,7),(289,3),(290,10),(291,2),(291,8),(291,10),(294,9),(294,1),(296,1),(296,6),(298,8),(298,11),(298,2),(301,8),(302,6),(303,6),(304,8),(304,11),(305,8),(306,1),(306,9),(307,5),(307,6),(307,1),(308,6),(309,11),(309,10),(310,3),(310,7),(311,7),(311,10),(314,5),(315,7),(317,10),(317,3),(318,10),(319,8),(321,6),(321,3),(321,10),(322,5),(322,11),(323,8),(324,6),(324,3),(326,3),(326,6),(327,11),(327,5),(327,8),(328,5),(328,10),(328,8),(330,2),(331,3),(334,8),(334,11),(334,4),(336,8),(337,7),(340,8),(340,11),(341,4),(341,8),(343,5),(344,3),(344,10),(346,8),(346,1),(346,6),(347,7),(347,12),(347,3),(348,8),(349,1),(349,3),(349,6),(353,11),(353,2),(354,10),(356,5),(356,2),(356,8),(357,7),(358,6),(358,1),(359,1),(360,10),(361,3),(364,5),(367,7),(367,6),(367,3),(370,9),(370,5),(371,7),(371,6),(372,1),(373,3),(374,11),(375,1),(375,6),(376,11),(376,10),(377,1),(378,3),(378,7),(379,6),(380,7),(380,12),(381,10),(381,9),(381,6),(382,9),(382,8),(383,7),(384,7),(385,9),(387,1),(387,8),(387,6),(391,2),(392,6),(393,11),(393,4),(395,12),(395,10),(396,10),(398,3),(399,6),(399,10),(400,8),(400,5),(401,3),(401,6),(402,2),(402,5),(402,4),(403,9),(403,1),(403,8),(404,9),(405,11),(405,8),(406,6),(406,5),(406,9),(407,3),(407,7),(408,7),(408,3),(409,4),(410,8),(410,3),(411,6),(411,12),(412,7),(412,3),(414,9),(414,1),(414,5),(415,8),(415,10),(417,9),(418,5),(418,4),(418,11),(420,10),(420,7),(421,10),(421,8),(422,5),(422,8),(422,2),(423,12),(425,8),(426,11),(427,3),(427,6),(430,11),(430,10),(431,8),(434,4),(435,3),(438,10),(440,3),(440,7),(442,7),(442,3),(443,7),(444,8),(444,2),(448,3),(448,7),(449,1),(449,6),(450,10),(450,7),(451,7),(452,5),(454,8),(456,10),(458,3),(459,5),(461,10),(461,11),(462,11),(463,8),(463,5),(465,12),(465,10),(465,7),(466,6),(466,8),(466,1),(467,7),(468,8),(468,5),(469,8),(469,10),(469,6),(470,10),(470,1),(470,3),(471,8),(471,11),(472,5),(472,1),(473,8),(473,2),(473,4),(475,10),(475,6),(476,10),(476,1),(476,3),(479,9),(479,10),(480,2),(480,11),(481,8),(481,3),(483,1),(483,3),(484,10),(486,6),(487,6),(488,12),(488,10),(490,8),(491,12),(491,3),(491,10),(492,10),(492,8),(493,8),(493,10),(494,8),(494,11),(497,10),(498,11),(498,4),(500,5),(500,4),(501,3),(501,7),(502,6),(503,6),(505,5),(505,2),(506,7),(508,22),(510,16),(510,14),(511,22),(512,18),(512,21),(513,22),(513,14),(514,14),(515,18),(517,16),(518,20),(519,16),(520,14),(520,16),(522,23),(522,18),(522,13),(523,13),(524,19),(525,22),(526,15),(526,19),(527,18),(527,22),(528,20),(528,14),(528,17),(529,16),(529,17),(531,14),(532,14),(532,22),(532,21),(534,13),(534,22),(534,15),(535,21),(535,22),(536,15),(536,13),(536,17),(537,15),(537,16),(538,14),(538,17),(538,16),(539,16),(539,23),(539,13),(540,17),(541,22),(541,14),(541,18),(542,17),(542,18),(543,17),(545,17),(546,17),(546,13),(548,20),(549,21),(549,24),(551,20),(554,22),(554,19),(555,18),(555,23);
/*!40000 ALTER TABLE `tasks_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_project_participations`
--

DROP TABLE IF EXISTS `user_project_participations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_project_participations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `project_role_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_user_project_participations_on_project_id` (`project_id`),
  KEY `index_user_project_participations_on_user_id` (`user_id`),
  KEY `index_user_project_participations_on_project_role_id` (`project_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_project_participations`
--

LOCK TABLES `user_project_participations` WRITE;
/*!40000 ALTER TABLE `user_project_participations` DISABLE KEYS */;
INSERT INTO `user_project_participations` VALUES (24,4,13,5,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(25,4,13,6,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(26,6,14,6,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(27,5,14,6,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(28,4,15,8,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(29,4,15,6,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(30,4,16,8,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(31,6,16,8,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(32,6,17,7,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(33,4,17,8,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(34,4,18,6,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(35,5,18,6,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(36,4,19,5,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(37,6,20,8,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(38,5,21,5,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(39,4,22,7,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(40,5,22,6,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(41,5,22,8,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(42,4,23,8,'2012-02-26 22:11:12','2012-02-26 22:11:12'),(43,5,24,8,'2012-02-26 22:11:12','2012-02-26 22:11:12');
/*!40000 ALTER TABLE `user_project_participations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (13,'Wikus van de Merwe','2012-02-26 22:11:12','2012-02-26 22:11:12'),(14,'Grey Bradnam','2012-02-26 22:11:12','2012-02-26 22:11:12'),(15,'Christopher Johnson','2012-02-26 22:11:12','2012-02-26 22:11:12'),(16,'Piet Smit','2012-02-26 22:11:12','2012-02-26 22:11:12'),(17,'Fundiswa Mhlanga','2012-02-26 22:11:12','2012-02-26 22:11:12'),(18,'Tania van de Merwe','2012-02-26 22:11:12','2012-02-26 22:11:12'),(19,'Obesandjo','2012-02-26 22:11:12','2012-02-26 22:11:12'),(20,'Dirk Michaels','2012-02-26 22:11:12','2012-02-26 22:11:12'),(21,'Ross Pienaar','2012-02-26 22:11:12','2012-02-26 22:11:12'),(22,'Koobus Venter','2012-02-26 22:11:12','2012-02-26 22:11:12'),(23,'Dirk Michaels','2012-02-26 22:11:12','2012-02-26 22:11:12'),(24,'Sarah Livingstone','2012-02-26 22:11:12','2012-02-26 22:11:12');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_versions_on_name` (`name`),
  KEY `index_versions_on_project_id` (`project_id`),
  KEY `index_versions_on_status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `versions`
--

LOCK TABLES `versions` WRITE;
/*!40000 ALTER TABLE `versions` DISABLE KEYS */;
INSERT INTO `versions` VALUES (12,'1.0',4,'development','2012-02-26 22:11:12','2012-02-26 22:11:12'),(13,'1.1',4,'development','2012-02-26 22:11:12','2012-02-26 22:11:12'),(14,'1.2',4,'production','2012-02-26 22:11:12','2012-02-26 22:11:12'),(15,'2.0',4,'testing','2012-02-26 22:11:12','2012-02-26 22:11:12'),(16,'3.0',4,'production','2012-02-26 22:11:12','2012-02-26 22:11:12'),(17,'1.0',5,'development','2012-02-26 22:11:12','2012-02-26 22:11:12'),(18,'88.1',5,'production','2012-02-26 22:11:12','2012-02-26 22:11:12'),(19,'99.0',5,'production','2012-02-26 22:11:12','2012-02-26 22:11:12'),(20,'6.0',6,'testing','2012-02-26 22:11:12','2012-02-26 22:11:12'),(21,'7.1',6,'production','2012-02-26 22:11:12','2012-02-26 22:11:12'),(22,'8.0',6,'testing','2012-02-26 22:11:12','2012-02-26 22:11:12');
/*!40000 ALTER TABLE `versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wice_grid_serialized_queries`
--

DROP TABLE IF EXISTS `wice_grid_serialized_queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wice_grid_serialized_queries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `grid_name` varchar(255) DEFAULT NULL,
  `query` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_wice_grid_serialized_queries_on_grid_name` (`grid_name`),
  KEY `index_wice_grid_serialized_queries_on_grid_name_and_id` (`grid_name`,`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wice_grid_serialized_queries`
--

LOCK TABLES `wice_grid_serialized_queries` WRITE;
/*!40000 ALTER TABLE `wice_grid_serialized_queries` DISABLE KEYS */;
INSERT INTO `wice_grid_serialized_queries` VALUES (50,'1','grid','--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\norder: statuses.name\norder_direction: asc\n','2012-06-19 22:24:03','2012-06-19 22:24:03'),(59,'dffg','grid','--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\norder: statuses.name\norder_direction: asc\n','2012-06-19 22:25:28','2012-06-19 22:25:28');
/*!40000 ALTER TABLE `wice_grid_serialized_queries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-07-09 23:38:46
