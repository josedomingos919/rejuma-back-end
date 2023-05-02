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
-- Dumping data for table `_prisma_migrations`
--

LOCK TABLES `_prisma_migrations` WRITE;
/*!40000 ALTER TABLE `_prisma_migrations` DISABLE KEYS */;
INSERT INTO `_prisma_migrations` VALUES ('0447e367-2030-4fde-81a7-c1e37efc448a','7d9ce5359229e2b854376ba9a084062018ef2f8779c58267f53ec8866f3fda8a','2023-03-19 00:02:17.537','20230319000056_unique_school_year',NULL,NULL,'2023-03-19 00:02:17.505',1),('1f3d2f4b-91e7-4ae1-9c96-4ad5ca8ededa','b9e61edba374343ee5c425690b75f05c53325c70cac905ded4242a0e2b1dc555','2023-03-19 00:02:17.405','20230318235105_add_school_year',NULL,NULL,'2023-03-19 00:02:17.342',1),('2228bace-2084-452f-85b4-c217250077aa','541d6d8bc2eb6667c4d5d31f5c3194b97e846240d3d9870b17f912beeefbfc7b','2023-03-19 00:02:17.311','20230318231541_add_course_table',NULL,NULL,'2023-03-19 00:02:17.074',1),('2251bc2b-6acf-46df-88dd-fbce8154266c','1f334166859ed2e2473bd15579d6dc2c179b41c07a0d0857a8be5b17e5a8d937','2023-03-19 00:02:17.072','20230318085532_unique_tables',NULL,NULL,'2023-03-19 00:02:17.009',1),('66e57f41-7d15-4c79-838c-239133dee3c1','fe58d8ab97b9e355f1a38c5d580301a463b5977d2a50403b654ad39677286069','2023-03-19 00:02:17.335','20230318234141_unique_course_name',NULL,NULL,'2023-03-19 00:02:17.318',1),('89071e22-ad38-4cfa-8797-2b8f5294aa38','fd956441ded27918b280277f05e5860b7399de3d87997e072c17922266a3e454','2023-03-19 00:02:16.691','20230318082732_add_classroom',NULL,NULL,'2023-03-19 00:02:16.649',1),('9f9c86cc-d2ef-4a57-a5cc-78c600e54d7e','0d37d2c36bf5593c90685f73d6738bf7cf5656a45711e02c7eb3c7ba17b8a660','2023-03-19 00:02:17.504','20230319000010_change_big_int_to_int',NULL,NULL,'2023-03-19 00:02:17.412',1),('c4fd0746-6ab7-4117-90de-3810bcce6680','b7840c90f7807c73c29d67aa4d04bc0bc73a29a2b4f074cbc6c8cfb55a7a008c','2023-03-19 00:02:16.641','20230313000318_ndefined',NULL,NULL,'2023-03-19 00:02:15.815',1),('d30cda00-ac2b-48a6-9df0-6aee486bd9c1','aef511546984ebe363eeab8b735883e012e4f062c0a5e9ad4ad69d2504621b6e','2023-03-19 00:02:17.002','20230318084818_add_discipline_and_class',NULL,NULL,'2023-03-19 00:02:16.692',1);
/*!40000 ALTER TABLE `_prisma_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `class`
--

LOCK TABLES `class` WRITE;
/*!40000 ALTER TABLE `class` DISABLE KEYS */;
INSERT INTO `class` VALUES (1,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','1ª'),(2,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','2ª'),(3,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','3ª'),(4,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','4ª'),(5,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','5ª'),(6,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','6ª'),(7,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','7ª'),(8,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','8ª'),(9,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','9ª'),(10,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','10ª'),(11,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','11ª'),(12,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','12ª');
/*!40000 ALTER TABLE `class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `classdisciplines`
--

LOCK TABLES `classdisciplines` WRITE;
/*!40000 ALTER TABLE `classdisciplines` DISABLE KEYS */;
/*!40000 ALTER TABLE `classdisciplines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `classroom`
--

LOCK TABLES `classroom` WRITE;
/*!40000 ALTER TABLE `classroom` DISABLE KEYS */;
INSERT INTO `classroom` VALUES (1,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','1',NULL),(2,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','2',NULL),(3,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','3',NULL),(4,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','4',NULL),(5,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','5',NULL),(6,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','6',NULL),(7,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','7',NULL),(8,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','8',NULL),(9,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','9',NULL),(10,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','10',NULL),(11,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','11',NULL),(12,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','12',NULL),(13,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','13',NULL),(14,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','14',NULL),(15,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','15',NULL);
/*!40000 ALTER TABLE `classroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'2023-02-20 10:10:10.000','2023-02-20 10:10:10.000','Angola','244');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Ciências Económicas e Jurídicas',NULL),(2,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Ciências Físicas e Biológicas',NULL);
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `coursedisciplines`
--

LOCK TABLES `coursedisciplines` WRITE;
/*!40000 ALTER TABLE `coursedisciplines` DISABLE KEYS */;
/*!40000 ALTER TABLE `coursedisciplines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `discipline`
--

LOCK TABLES `discipline` WRITE;
/*!40000 ALTER TABLE `discipline` DISABLE KEYS */;
INSERT INTO `discipline` VALUES (1,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Língua Poruguesa',''),(2,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','História',NULL),(3,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Geografia',NULL),(4,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Química',NULL),(5,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Ciencia da Natureza',NULL),(6,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Língua Inglesa',NULL),(7,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Estudo do Meio',NULL),(8,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Informática',NULL),(9,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Educação Física',NULL),(10,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Desenho',NULL),(11,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Geometria Descritiva',NULL),(12,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Literatura',NULL),(13,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Introducão ao Direito',NULL),(14,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Introducão a Economia',NULL),(15,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Desenvovimento Económico e Social',NULL),(16,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Biologia',NULL),(17,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Geologia',NULL);
/*!40000 ALTER TABLE `discipline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'2023-03-19 07:03:12.665','2023-03-19 07:03:12.665','José Dominos Cassua Ndonge','007914682LA040','2001-01-19 00:00:00.000','Solteiro/a','Masculino','Avenida 21 de Janeiro, Luanda','Fixo',2000.000000000000000000000000000000,'josedomingos919@gmail.com','944666640','999666640',1,3,1);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `office`
--

LOCK TABLES `office` WRITE;
/*!40000 ALTER TABLE `office` DISABLE KEYS */;
INSERT INTO `office` VALUES (1,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Professor','PF'),(2,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Director Pedagógico','DP'),(3,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Director Gearl','DG'),(4,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Monitor','MT');
/*!40000 ALTER TABLE `office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `province`
--

LOCK TABLES `province` WRITE;
/*!40000 ALTER TABLE `province` DISABLE KEYS */;
INSERT INTO `province` VALUES (1,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Luanda',1),(2,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Benguela',1),(3,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Huila',1),(4,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Malange',1),(5,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Cuando Cubango',1),(6,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Lunda Norte',1),(7,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Lunda Sul',1),(8,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Muxico',1),(9,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Zaire',1),(10,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Huambo',1),(11,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Cabinda',1),(12,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Cunene',1),(13,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Bengo',1),(14,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Bié',1),(15,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Namibe',1),(16,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Kwanza Norte',1),(17,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Kwanza Sul',1),(18,'2023-01-02 10:10:10.000','2023-01-02 10:10:10.000','Uíge',1);
/*!40000 ALTER TABLE `province` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `schoolyear`
--

LOCK TABLES `schoolyear` WRITE;
/*!40000 ALTER TABLE `schoolyear` DISABLE KEYS */;
INSERT INTO `schoolyear` VALUES (1,'2023-03-19 00:02:28.208','2023-03-19 00:02:28.208',2023,'descrição');
/*!40000 ALTER TABLE `schoolyear` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Activo','ACTI','Activado'),(2,'2023-03-23 10:10:10.000','2023-03-23 10:10:10.000','Inactivo','INACT','Desativado');
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2023-03-19 07:03:50.896','2023-03-19 07:03:50.896','944666640','$argon2id$v=19$m=65536,t=3,p=4$QAnEsU24MVFlC7+NCN5/rw$dp+47d9+i6FgydX0db6hqUSHpD/sVjRgUklwtZdn7LA','Admin',1,1);
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

-- Dump completed on 2023-03-19  8:05:44