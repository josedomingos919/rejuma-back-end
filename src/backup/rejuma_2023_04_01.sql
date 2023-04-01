-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: rejuma
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Table structure for table `_prisma_migrations`
--

DROP TABLE IF EXISTS `_prisma_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_prisma_migrations` (
  `id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `finished_at` datetime(3) DEFAULT NULL,
  `migration_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logs` text COLLATE utf8mb4_unicode_ci,
  `rolled_back_at` datetime(3) DEFAULT NULL,
  `started_at` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `applied_steps_count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('03a3de88-f3e1-4abf-ba7a-88b2e53bac7c','7d9ce5359229e2b854376ba9a084062018ef2f8779c58267f53ec8866f3fda8a','2023-03-22 14:39:48.896','20230319000056_unique_school_year',NULL,NULL,'2023-03-22 14:39:48.870',1),('0447e367-2030-4fde-81a7-c1e37efc448a','7d9ce5359229e2b854376ba9a084062018ef2f8779c58267f53ec8866f3fda8a','2023-03-19 00:02:17.537','20230319000056_unique_school_year',NULL,NULL,'2023-03-19 00:02:17.505',1),('06a24c38-9250-4521-9f7c-0b686e426675','356f3d25a9a08f3d73316cc28eb48aaecede4b0f75c67da9daf8a63cd6652d41','2023-03-22 14:39:57.089','20230322143957_te',NULL,NULL,'2023-03-22 14:39:57.063',1),('0a272a8a-2bfd-4f1b-84c2-489b79f86239','2e4dd8aca266043729531bc90c480e962260a86095257c8fb47ae054b2ebf6c1','2023-03-22 14:40:30.895','20230322144030_remove_default_value_conmtry',NULL,NULL,'2023-03-22 14:40:30.865',1),('0d072f32-886c-47ee-9aad-0e0a979dba9a','a0da2bb920cb2ace29a16728809a429d696633998935a4f4e75162c943f1750f','2023-03-27 12:57:59.238','20230326215749_init',NULL,NULL,'2023-03-27 12:57:56.936',1),('1b082f8d-9cbc-4895-9cf5-1c48aa84900f','b9e61edba374343ee5c425690b75f05c53325c70cac905ded4242a0e2b1dc555','2023-03-22 14:39:48.785','20230318235105_add_school_year',NULL,NULL,'2023-03-22 14:39:48.716',1),('1f3d2f4b-91e7-4ae1-9c96-4ad5ca8ededa','b9e61edba374343ee5c425690b75f05c53325c70cac905ded4242a0e2b1dc555','2023-03-19 00:02:17.405','20230318235105_add_school_year',NULL,NULL,'2023-03-19 00:02:17.342',1),('2228bace-2084-452f-85b4-c217250077aa','541d6d8bc2eb6667c4d5d31f5c3194b97e846240d3d9870b17f912beeefbfc7b','2023-03-19 00:02:17.311','20230318231541_add_course_table',NULL,NULL,'2023-03-19 00:02:17.074',1),('2251bc2b-6acf-46df-88dd-fbce8154266c','1f334166859ed2e2473bd15579d6dc2c179b41c07a0d0857a8be5b17e5a8d937','2023-03-19 00:02:17.072','20230318085532_unique_tables',NULL,NULL,'2023-03-19 00:02:17.009',1),('372ccdb7-d704-480a-9d81-5fd09023e6a6','fe58d8ab97b9e355f1a38c5d580301a463b5977d2a50403b654ad39677286069','2023-03-24 06:43:27.385','20230318234141_unique_course_name',NULL,NULL,'2023-03-24 06:43:27.331',1),('3bd79eaf-78b3-4855-a881-8227c7115369','7d9ce5359229e2b854376ba9a084062018ef2f8779c58267f53ec8866f3fda8a','2023-03-24 06:43:27.544','20230319000056_unique_school_year',NULL,NULL,'2023-03-24 06:43:27.507',1),('3ca3add9-7355-442c-8964-77a6d1d46a3c','fe58d8ab97b9e355f1a38c5d580301a463b5977d2a50403b654ad39677286069','2023-03-22 14:39:48.715','20230318234141_unique_course_name',NULL,NULL,'2023-03-22 14:39:48.685',1),('48af244d-80d0-4d04-9499-88ae48c8a10b','c70f9538e44fa997e0f2d658b45170cd39c54e3380a4efff1eb13c693f286d27','2023-03-24 06:43:27.705','20230322143704_add_country',NULL,NULL,'2023-03-24 06:43:27.544',1),('61bd5fb6-fcd9-4747-8c4f-7558e024306a','32635a3ae41b1a55aac7b106ee70cd2064cd2fa381324f2966c3bc2b3f74cd83','2023-03-24 06:43:41.651','20230324064341_add_show_in_status',NULL,NULL,'2023-03-24 06:43:41.577',1),('66e57f41-7d15-4c79-838c-239133dee3c1','fe58d8ab97b9e355f1a38c5d580301a463b5977d2a50403b654ad39677286069','2023-03-19 00:02:17.335','20230318234141_unique_course_name',NULL,NULL,'2023-03-19 00:02:17.318',1),('6e4d7679-70f3-4062-b536-fa31b8cc53e1','356f3d25a9a08f3d73316cc28eb48aaecede4b0f75c67da9daf8a63cd6652d41','2023-03-24 06:43:27.732','20230322143957_te',NULL,NULL,'2023-03-24 06:43:27.706',1),('7491adc1-4a2a-4333-a5c2-83a4954623a4','fd956441ded27918b280277f05e5860b7399de3d87997e072c17922266a3e454','2023-03-24 06:43:26.471','20230318082732_add_classroom',NULL,NULL,'2023-03-24 06:43:26.411',1),('7de38ead-2d5d-4a11-ae41-6feac1b4de21','b7840c90f7807c73c29d67aa4d04bc0bc73a29a2b4f074cbc6c8cfb55a7a008c','2023-03-24 06:43:26.409','20230313000318_ndefined',NULL,NULL,'2023-03-24 06:43:25.495',1),('87bbba3a-be7d-4eb6-9ebf-7e6a93e82808','0d37d2c36bf5593c90685f73d6738bf7cf5656a45711e02c7eb3c7ba17b8a660','2023-03-24 06:43:27.501','20230319000010_change_big_int_to_int',NULL,NULL,'2023-03-24 06:43:27.433',1),('89071e22-ad38-4cfa-8797-2b8f5294aa38','fd956441ded27918b280277f05e5860b7399de3d87997e072c17922266a3e454','2023-03-19 00:02:16.691','20230318082732_add_classroom',NULL,NULL,'2023-03-19 00:02:16.649',1),('898561cd-b9fd-4a8d-ae26-6809ad0e0888','fd956441ded27918b280277f05e5860b7399de3d87997e072c17922266a3e454','2023-03-22 14:39:47.988','20230318082732_add_classroom',NULL,NULL,'2023-03-22 14:39:47.915',1),('947e583f-5acd-4193-98ca-c11668f68e7c','aef511546984ebe363eeab8b735883e012e4f062c0a5e9ad4ad69d2504621b6e','2023-03-24 06:43:26.911','20230318084818_add_discipline_and_class',NULL,NULL,'2023-03-24 06:43:26.472',1),('99ec61d0-887b-419c-b59f-2ebfbe0163d8','c70f9538e44fa997e0f2d658b45170cd39c54e3380a4efff1eb13c693f286d27','2023-03-22 14:39:49.104','20230322143704_add_country',NULL,NULL,'2023-03-22 14:39:48.898',1),('9e43a87d-e043-4402-8feb-00d960a0a1e0','b7840c90f7807c73c29d67aa4d04bc0bc73a29a2b4f074cbc6c8cfb55a7a008c','2023-03-22 14:39:47.913','20230313000318_ndefined',NULL,NULL,'2023-03-22 14:39:47.103',1),('9f9c86cc-d2ef-4a57-a5cc-78c600e54d7e','0d37d2c36bf5593c90685f73d6738bf7cf5656a45711e02c7eb3c7ba17b8a660','2023-03-19 00:02:17.504','20230319000010_change_big_int_to_int',NULL,NULL,'2023-03-19 00:02:17.412',1),('a2f7711d-64c3-4623-9700-2e639a537b09','b9e61edba374343ee5c425690b75f05c53325c70cac905ded4242a0e2b1dc555','2023-03-24 06:43:27.432','20230318235105_add_school_year',NULL,NULL,'2023-03-24 06:43:27.386',1),('a43d5647-44b4-41bb-961d-74ed74642457','1f334166859ed2e2473bd15579d6dc2c179b41c07a0d0857a8be5b17e5a8d937','2023-03-22 14:39:48.400','20230318085532_unique_tables',NULL,NULL,'2023-03-22 14:39:48.345',1),('a81cc3d8-d928-4d39-af6a-2490f379defc','541d6d8bc2eb6667c4d5d31f5c3194b97e846240d3d9870b17f912beeefbfc7b','2023-03-22 14:39:48.678','20230318231541_add_course_table',NULL,NULL,'2023-03-22 14:39:48.401',1),('b17a635e-fe55-4110-8309-ec1b60ef8fd2','541d6d8bc2eb6667c4d5d31f5c3194b97e846240d3d9870b17f912beeefbfc7b','2023-03-24 06:43:27.330','20230318231541_add_course_table',NULL,NULL,'2023-03-24 06:43:26.992',1),('b3a50e78-76cb-4914-9150-83b5b8a85b26','c70f9538e44fa997e0f2d658b45170cd39c54e3380a4efff1eb13c693f286d27',NULL,'20230322143704_add_country','A migration failed to apply. New migrations cannot be applied before the error is recovered from. Read more about how to resolve migration issues in a production database: https://pris.ly/d/migrate-resolve\n\nMigration name: 20230322143704_add_country\n\nDatabase error code: 1452\n\nDatabase error:\nCannot add or update a child row: a foreign key constraint fails (`rejuma`.`#sql-2bb8_1a`, CONSTRAINT `employees_countryId_fkey` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`) ON UPDATE CASCADE)\n\nPlease check the query number 2 from the migration file.\n\n   0: sql_migration_connector::apply_migration::apply_script\n           with migration_name=\"20230322143704_add_country\"\n             at migration-engine\\connectors\\sql-migration-connector\\src\\apply_migration.rs:105\n   1: migration_core::commands::apply_migrations::Applying migration\n           with migration_name=\"20230322143704_add_country\"\n             at migration-engine\\core\\src\\commands\\apply_migrations.rs:91\n   2: migration_core::state::ApplyMigrations\n             at migration-engine\\core\\src\\state.rs:200',NULL,'2023-03-22 14:37:04.196',0),('c4fd0746-6ab7-4117-90de-3810bcce6680','b7840c90f7807c73c29d67aa4d04bc0bc73a29a2b4f074cbc6c8cfb55a7a008c','2023-03-19 00:02:16.641','20230313000318_ndefined',NULL,NULL,'2023-03-19 00:02:15.815',1),('d30cda00-ac2b-48a6-9df0-6aee486bd9c1','aef511546984ebe363eeab8b735883e012e4f062c0a5e9ad4ad69d2504621b6e','2023-03-19 00:02:17.002','20230318084818_add_discipline_and_class',NULL,NULL,'2023-03-19 00:02:16.692',1),('d4601d55-eb55-4ece-8548-d253b5ccbf37','0d37d2c36bf5593c90685f73d6738bf7cf5656a45711e02c7eb3c7ba17b8a660','2023-03-22 14:39:48.868','20230319000010_change_big_int_to_int',NULL,NULL,'2023-03-22 14:39:48.787',1),('e8a43db6-1e16-4209-b18b-b465198c1979','aef511546984ebe363eeab8b735883e012e4f062c0a5e9ad4ad69d2504621b6e','2023-03-22 14:39:48.339','20230318084818_add_discipline_and_class',NULL,NULL,'2023-03-22 14:39:47.989',1),('fafaf059-64ec-43c1-94eb-86808872a469','1f334166859ed2e2473bd15579d6dc2c179b41c07a0d0857a8be5b17e5a8d937','2023-03-24 06:43:26.984','20230318085532_unique_tables',NULL,NULL,'2023-03-24 06:43:26.913',1),('ff75c08a-16ff-48b4-9d7e-2ae6f24dfcb7','2e4dd8aca266043729531bc90c480e962260a86095257c8fb47ae054b2ebf6c1','2023-03-24 06:43:27.765','20230322144030_remove_default_value_conmtry',NULL,NULL,'2023-03-24 06:43:27.738',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `class` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','1ª'),(2,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','2ª'),(3,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','3ª'),(4,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','4ª'),(5,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','5ª'),(6,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','6ª'),(7,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','7ª'),(8,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','8ª'),(9,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','9ª'),(10,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','10ª'),(11,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','11ª'),(12,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','12ª');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classdisciplines`
--

DROP TABLE IF EXISTS `classdisciplines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classdisciplines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `disciplineId` int(11) NOT NULL,
  `classId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ClassDisciplines_disciplineId_fkey` (`disciplineId`),
  KEY `ClassDisciplines_classId_fkey` (`classId`),
  CONSTRAINT `ClassDisciplines_classId_fkey` FOREIGN KEY (`classId`) REFERENCES `class` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `ClassDisciplines_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `discipline` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classdisciplines`
--

LOCK TABLES `classdisciplines` WRITE;
/*!40000 ALTER TABLE `classdisciplines` DISABLE KEYS */;
/*!40000 ALTER TABLE `classdisciplines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classroom`
--

DROP TABLE IF EXISTS `classroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `classroom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Classroom_name_key` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classroom`
--

LOCK TABLES `classroom` WRITE;
/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;
INSERT INTO `classroom` VALUES (1,'2023-01-02 10:10:10.000','2023-03-31 16:06:08.281','1','Sala da  pré-classe'),(2,'2023-01-02 10:10:10.000','2023-03-31 16:53:22.408','2','9ª Classe'),(4,'2023-01-02 10:10:10.000','2023-03-31 16:58:14.021','4','Sala da Diretora'),(5,'2023-01-02 10:10:10.000','2023-03-31 16:58:30.669','5','Casa de banho dos rapazes'),(6,'2023-01-02 10:10:10.000','2023-03-31 16:58:51.312','6','Casa de Banho das meninas'),(7,'2023-01-02 10:10:10.000','2023-03-31 16:58:58.877','7','Secretária'),(8,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','8',NULL),(9,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','9',NULL),(10,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','10',NULL),(11,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','11',NULL),(12,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','12',NULL),(13,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','13',NULL);
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Country_code_key` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'2023-02-20 10:10:10.000','2023-02-20 10:10:10.000','Angola','244'),(2,'2023-02-20 10:10:10.000','2023-02-20 10:10:10.000','Portugal','344');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Course_name_key` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Ciências Económicas e Jurídicas',NULL),(2,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Ciências Físicas e Biológicas',NULL);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coursedisciplines`
--

DROP TABLE IF EXISTS `coursedisciplines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coursedisciplines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `courseId` int(11) NOT NULL,
  `disciplineId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `CourseDisciplines_courseId_fkey` (`courseId`),
  KEY `CourseDisciplines_disciplineId_fkey` (`disciplineId`),
  CONSTRAINT `CourseDisciplines_courseId_fkey` FOREIGN KEY (`courseId`) REFERENCES `course` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `CourseDisciplines_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `discipline` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coursedisciplines`
--

LOCK TABLES `coursedisciplines` WRITE;
/*!40000 ALTER TABLE `coursedisciplines` DISABLE KEYS */;
/*!40000 ALTER TABLE `coursedisciplines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discipline`
--

DROP TABLE IF EXISTS `discipline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discipline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Discipline_name_key` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discipline`
--

LOCK TABLES `discipline` WRITE;
/*!40000 ALTER TABLE `discipline` DISABLE KEYS */;
INSERT INTO `discipline` VALUES (1,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Língua Poruguesa',''),(2,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','História',NULL),(3,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Geografia',NULL),(4,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Química',NULL),(5,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Ciencia da Natureza',NULL),(6,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Língua Inglesa',NULL),(7,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Estudo do Meio',NULL),(8,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Informática',NULL),(9,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Educação Física',NULL),(10,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Desenho',NULL),(11,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Geometria Descritiva',NULL),(12,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Literatura',NULL),(13,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Introducão ao Direito',NULL),(14,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Introducão a Economia',NULL),(15,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Desenvovimento Económico e Social',NULL),(16,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Biologia',NULL),(17,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Geologia',NULL),(18,'2023-03-24 14:32:17.166','2023-03-24 14:32:17.166','Teste1','Teste22');
/*!40000 ALTER TABLE `discipline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthDay` datetime(3) DEFAULT NULL,
  `civilState` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salaryType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` decimal(65,30) NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryId` int(11) NOT NULL,
  `statusId` int(11) NOT NULL,
  `officeId` int(11) NOT NULL,
  `provinceId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_bi_key` (`bi`),
  KEY `employees_countryId_fkey` (`countryId`),
  KEY `employees_statusId_fkey` (`statusId`),
  KEY `employees_officeId_fkey` (`officeId`),
  KEY `employees_provinceId_fkey` (`provinceId`),
  CONSTRAINT `employees_countryId_fkey` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `employees_officeId_fkey` FOREIGN KEY (`officeId`) REFERENCES `office` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `employees_provinceId_fkey` FOREIGN KEY (`provinceId`) REFERENCES `province` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `employees_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'2023-03-19 07:03:12.665','2023-03-24 10:53:18.220','José Dominos Cassua Ndonge','007914682LA040','2001-01-19 00:00:00.000','Solteiro/a','Masculino','Avenida 21 de Janeiro, Luanda','Fixo',2000.000000000000000000000000000000,'josedomingos919@gmail.com','944666640','999666640',1,3,1,1),(2,'2023-03-19 18:16:28.792','2023-03-24 09:37:58.533','Osvaldo Domingos Ndonge','007914682LA041','2023-03-24 00:00:00.000','Solteiro/a','Masculino','Luanda','Por Tempo',400.000000000000000000000000000000,'josedomingos9@gmail.com','99978637456','234364564',1,1,1,1),(3,'2023-03-19 18:17:46.620','2023-03-24 14:22:59.283','Robson Martin Rejuma','007914682LA042','2023-03-01 00:00:00.000','Casado/a','Feminino','Luanda, rua 56','Fixo',355.000000000000000000000000000000,'robson@gmail.com','9996666355','9998364873',1,4,1,1),(4,'2023-03-22 16:55:29.163','2023-03-24 09:37:42.638','Onésimo Gouveia','000005845LA441','2001-01-19 00:00:00.000','Solteiro/a','Masculino','Luanda 56, 84','Fixo',5000.000000000000000000000000000000,'josedomingos919@gmail.com','944666640','',1,3,1,1),(5,'2023-03-23 07:22:38.781','2023-03-24 08:40:40.284','Antónica Domingos Ndonge','007914682LA0456','2003-02-15 00:00:00.000','Solteiro/a','Masculino','Bairro Dangereux, Rua 3','Fixo',400.000000000000000000000000000000,'antonica@gmail.com','999888837874','99934878384',1,1,1,1),(6,'2023-03-23 22:41:03.629','2023-03-23 22:41:03.629','Osvaldo José Domingos Ndonge','000384949LA833','1988-02-10 00:00:00.000','Casado/a','Masculino','Dangereux','Fixo',80000.000000000000000000000000000000,'osvaldo@gmail.com','9996854515','9856552525',1,1,1,1),(7,'2023-03-23 22:43:35.734','2023-03-24 09:45:03.160','Delfina Campos Cassua','039298387LA82','1988-05-19 00:00:00.000','Casado/a','Masculino','Luanda','Por Tempo',1000.000000000000000000000000000000,'josedomingos919@gmail.com','98598652','',1,2,1,1),(8,'2023-03-23 22:44:42.210','2023-03-24 09:44:50.753','Juliana Domingos Cassua Ndonge','4852585225LA74472','2008-01-23 00:00:00.000','Solteiro/a','Feminino','Luanda, Avenida 4 de Agosto','Fixo',9998.000000000000000000000000000000,'juliana@gmail.com','985999981','',1,3,1,1),(9,'2023-03-23 22:53:35.953','2023-03-24 10:46:00.072','Genilson António Mete Araújo','0025343545LA7283','2006-09-01 00:00:00.000','Solteiro/a','Masculino','Portugal ','Fixo',250000.000000000000000000000000000000,'ggenilson@gmail.com','9996858743','25452599987',1,2,1,1),(10,'2023-03-23 22:54:50.041','2023-03-24 10:49:49.463','Miguel Pedro Buca','00544555LA744','2001-05-08 00:00:00.000','Solteiro/a','Masculino','Golf II','Fixo',150000.000000000000000000000000000000,'miguelbuca@gmail.com','99884526','98565252',1,4,1,1),(11,'2023-03-23 23:27:43.855','2023-03-24 09:38:06.485','Mohamed Lamini Victorino Ture','00525845LA44','2003-02-15 00:00:00.000','Solteiro/a','Masculino','Luanda','Fixo',800000.000000000000000000000000000000,'mohamed@gmail.com','9986554222','',1,5,1,1),(12,'2023-03-23 23:39:23.801','2023-03-24 10:48:26.710','Kuenda João António Mayeye','02520LA71741','2006-02-02 00:00:00.000','Solteiro/a','Masculino','Luanda, Sapu','Por Tempo',8000.000000000000000000000000000000,'mayeye@gmail.com','998965666','985852252',1,1,1,1),(13,'2023-03-24 14:22:00.374','2023-03-24 14:22:35.031','Helio Brash','007914682LA0568','2001-01-19 00:00:00.000','Solteiro/a','Masculino','Nova Vida, Rua 32, Casa 34','Fixo',100000.000000000000000000000000000000,'helio@gmail.com','944666650','944666689',1,1,1,1),(14,'2023-03-24 14:31:44.395','2023-03-24 14:36:09.997','Bia Ndonge','00454085LA7415','2023-03-10 00:00:00.000','Solteiro/a','Masculino','Luanda','Fixo',800000.000000000000000000000000000000,'bia@gmail.com','94488585854','99855462636',1,5,1,1);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `office`
--

DROP TABLE IF EXISTS `office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `office` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Office_code_key` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `office`
--

LOCK TABLES `office` WRITE;
/*!40000 ALTER TABLE `office` DISABLE KEYS */;
INSERT INTO `office` VALUES (1,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Professor/a','PF'),(2,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Director Pedagógico/a','DP'),(3,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Director/a Gearl','DG'),(4,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Monitor/a','MT'),(5,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Secretário/a','SEC'),(6,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Secretário/Geral/a','SCGER');
/*!40000 ALTER TABLE `office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `province`
--

DROP TABLE IF EXISTS `province`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `province` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countryId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Province_countryId_fkey` (`countryId`),
  CONSTRAINT `Province_countryId_fkey` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (1,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Luanda',1),(2,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Benguela',1),(3,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Huila',1),(4,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Malange',1),(5,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Cuando Cubango',1),(6,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Lunda Norte',1),(7,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Lunda Sul',1),(8,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Muxico',1),(9,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Zaire',1),(10,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Huambo',1),(11,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Cabinda',1),(12,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Cunene',1),(13,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Bengo',1),(14,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Bié',1),(15,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Namibe',1),(16,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Kwanza Norte',1),(17,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Kwanza Sul',1),(18,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Uíge',1),(19,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Madeira',2),(20,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Porto',2);
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schoolyear`
--

DROP TABLE IF EXISTS `schoolyear`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schoolyear` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `year` int(11) NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `SchoolYear_year_key` (`year`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schoolyear`
--

LOCK TABLES `schoolyear` WRITE;
/*!40000 ALTER TABLE `schoolyear` DISABLE KEYS */;
INSERT INTO `schoolyear` VALUES (1,'2023-03-19 00:02:28.208','2023-03-19 00:02:28.208',2023,'descrição');
/*!40000 ALTER TABLE `schoolyear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `status_code_key` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Activo','ACTI','Activado',1),(2,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Inactivo','INACT','Desativado',1),(3,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Suspenso','SUSP','Suspenso',1),(4,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Trasferidos','TRAN','Trasferidos',1),(5,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Expúlso','EXP','Expúlso',1),(6,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Eliminado','ELIM','Eliminado',0);
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bi` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthDay` datetime(3) DEFAULT NULL,
  `civilState` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `countryId` int(11) NOT NULL,
  `statusId` int(11) NOT NULL,
  `provinceId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Student_bi_key` (`bi`),
  KEY `Student_countryId_fkey` (`countryId`),
  KEY `Student_statusId_fkey` (`statusId`),
  KEY `Student_provinceId_fkey` (`provinceId`),
  CONSTRAINT `Student_countryId_fkey` FOREIGN KEY (`countryId`) REFERENCES `country` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `Student_provinceId_fkey` FOREIGN KEY (`provinceId`) REFERENCES `province` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `Student_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'2023-03-27 14:01:35.611','2023-03-27 14:01:35.611','setgeg','dsfgdfgdfg','2023-03-07 00:00:00.000','Casado/a','Masculino','dfgdfg','sdfsdf456456@gmail.com','436456754','6456456',1,1,2);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacherdisciplines`
--

DROP TABLE IF EXISTS `teacherdisciplines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacherdisciplines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `teacherId` int(11) NOT NULL,
  `disciplineId` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `teacherDisciplines_teacherId_fkey` (`teacherId`),
  KEY `teacherDisciplines_disciplineId_fkey` (`disciplineId`),
  CONSTRAINT `teacherDisciplines_disciplineId_fkey` FOREIGN KEY (`disciplineId`) REFERENCES `discipline` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `teacherDisciplines_teacherId_fkey` FOREIGN KEY (`teacherId`) REFERENCES `teachers` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacherdisciplines`
--

LOCK TABLES `teacherdisciplines` WRITE;
/*!40000 ALTER TABLE `teacherdisciplines` DISABLE KEYS */;
INSERT INTO `teacherdisciplines` VALUES (1,'2023-03-27 13:28:56.243','2023-03-27 13:28:56.243',1,1),(2,'2023-03-27 13:28:56.243','2023-03-27 13:28:56.243',1,2),(3,'2023-03-27 13:49:19.040','2023-03-27 13:49:19.040',2,3),(4,'2023-03-27 13:49:19.040','2023-03-27 13:49:19.040',2,2),(5,'2023-03-27 13:49:19.040','2023-03-27 13:49:19.040',2,4),(17,'2023-03-31 16:57:28.321','2023-03-31 16:57:28.321',3,1),(18,'2023-03-31 16:57:28.321','2023-03-31 16:57:28.321',3,2);
/*!40000 ALTER TABLE `teacherdisciplines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `employeeId` int(11) NOT NULL,
  `academicLevel` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teachers_employeeId_key` (`employeeId`),
  KEY `teachers_statusId_fkey` (`statusId`),
  CONSTRAINT `teachers_employeeId_fkey` FOREIGN KEY (`employeeId`) REFERENCES `employees` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `teachers_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES (1,'2023-03-27 13:28:56.243','2023-03-30 04:53:40.734',1,'12º Classe',6),(2,'2023-03-27 13:49:19.040','2023-03-27 13:49:19.040',2,'12º Classe',1),(3,'2023-03-30 04:54:02.659','2023-03-31 16:57:28.321',5,'10º Classe',1);
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `createdAt` datetime(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
  `updatedAt` datetime(3) NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employeeId` int(11) NOT NULL,
  `statusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_phone_key` (`phone`),
  KEY `users_employeeId_fkey` (`employeeId`),
  KEY `users_statusId_fkey` (`statusId`),
  CONSTRAINT `users_employeeId_fkey` FOREIGN KEY (`employeeId`) REFERENCES `employees` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `users_statusId_fkey` FOREIGN KEY (`statusId`) REFERENCES `status` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2023-03-31 13:56:18.266','2023-03-31 13:56:18.266','944666640','$argon2id$v=19$m=65536,t=3,p=4$rCnwLfMNkOm2s1BN6AlBRg$UZuzSJXJHrwGp7LYFtZaqiyokVLp5AlxDd1bWcQerag','Admin',6,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-01  7:42:52
