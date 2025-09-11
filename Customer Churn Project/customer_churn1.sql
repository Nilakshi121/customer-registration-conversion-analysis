-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: customer_churn1
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` int DEFAULT NULL,
  `category_name` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Beverages','Soft drinks, coffees, teas, beers, and ales'),(2,'Condiments','Sweet and savory sauces, relishes, spreads, and seasonings'),(3,'Confections','Desserts, candies, and sweet breads'),(4,'Dairy Products','Cheeses'),(5,'Grains/Cereals','Breads, crackers, pasta, and cereal'),(6,'Meat/Poultry','Prepared meats'),(7,'Produce','Dried fruit and bean curd'),(8,'Seafood','Seaweed and fish');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `channels`
--

DROP TABLE IF EXISTS `channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `channels` (
  `id` int DEFAULT NULL,
  `channel_name` text,
  `MyUnknownColumn` text,
  `MyUnknownColumn_[0]` text,
  `MyUnknownColumn_[1]` text,
  `MyUnknownColumn_[2]` text,
  `MyUnknownColumn_[3]` text,
  `MyUnknownColumn_[4]` text,
  `MyUnknownColumn_[5]` text,
  `MyUnknownColumn_[6]` text,
  `MyUnknownColumn_[7]` text,
  `MyUnknownColumn_[8]` text,
  `MyUnknownColumn_[9]` text,
  `MyUnknownColumn_[10]` text,
  `MyUnknownColumn_[11]` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channels`
--

LOCK TABLES `channels` WRITE;
/*!40000 ALTER TABLE `channels` DISABLE KEYS */;
INSERT INTO `channels` VALUES (1,'Organic Search','','','','','','','','','','','','',''),(2,'Direct','','','','','','','','','','','','',''),(3,'Referral','','','','','','','','','','','','',''),(4,'Social','','','','','','','','','','','','',''),(5,'Paid Search','','','','','','','','','','','','',''),(6,'Email','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int DEFAULT NULL,
  `email` text,
  `full_name` text,
  `address` text,
  `city` text,
  `region` text,
  `postal_code` int DEFAULT NULL,
  `country` text,
  `phone` text,
  `registration_date` text,
  `channel_id` int DEFAULT NULL,
  `first_order_id` text,
  `first_order_date` text,
  `last_order_id` text,
  `last_order_date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (847,'don.wilson@course.vertabelo.com','Don Wilson','275 Franklin Street','Dothan','Alabama',36303,'USA','+1 334-677-3732','2024-05-09',1,NULL,NULL,NULL,NULL),(14,'yang.wang@course.vertabelo.com','Yang Wang','Hauptstr. 29','Bern',NULL,3012,'Switzerland',NULL,'2017-01-17',1,NULL,NULL,NULL,NULL),(130,'jason.kemp@course.vertabelo.com','Jason Kemp','1933 Everette Alley','Fort Lauderdale','Florida',33308,'USA','+1 954-739-1284','2017-05-24',3,NULL,NULL,NULL,NULL),(790,'noel.pick@course.vertabelo.com','Noel Pick','384 Taylor Street','Scarsdale','New York',10583,'USA','+1 914-724-4728','2024-03-08',1,NULL,NULL,NULL,NULL),(68,'michael.holz@course.vertabelo.com','Michael Holz','Grenzacherweg 237','Genève',NULL,1203,'Switzerland',NULL,'2017-03-17',1,'128','2017-03-31','7872','2023-11-09'),(1,'maria.anders@course.vertabelo.com','Maria Anders','Obere Str. 57','Berlin',NULL,12209,'Germany','030-0076545','2017-01-03',1,NULL,NULL,NULL,NULL),(2,'ana.trujillo@course.vertabelo.com','Ana Trujillo','Avda. de la Constitución 2222','México D.F.',NULL,5021,'Mexico','(5) 555-3745','2017-01-04',5,'11','2017-01-14','10117','2024-04-01'),(3,'antonio.moreno@course.vertabelo.com','Antonio Moreno','Mataderos 2312','México D.F.',NULL,5023,'Mexico',NULL,'2017-01-05',1,'19','2017-01-24','10899','2024-06-12'),(6,'hanna.moos@course.vertabelo.com','Hanna Moos','Forsterstr. 57','Mannheim',NULL,68306,'Germany','0621-08924','2017-01-08',3,'6','2017-01-10','7815','2023-11-06'),(7,'frederique.citeaux@course.vertabelo.com','Frédérique Citeaux','24, place Kléber','Strasbourg',NULL,67000,'France','88.60.15.32','2017-01-03',2,'2','2017-01-06','11461','2024-08-28'),(8,'martin.sommer@course.vertabelo.com','Martín Sommer','C/ Araquil, 67','Madrid',NULL,28023,'Spain','(91) 555 91 99','2017-01-10',2,'12','2017-01-14','9037','2024-01-14'),(9,'laurence.lebihan@course.vertabelo.com','Laurence Lebihan','12, rue des Bouchers','Marseille',NULL,13008,'France','91.24.45.41','2017-01-11',1,NULL,NULL,NULL,NULL),(12,'patricio.simpson@course.vertabelo.com','Patricio Simpson','Cerrito 333','Buenos Aires',NULL,1010,'Argentina','(1) 135-4892','2016-12-30',1,'4','2017-01-07','7871','2023-11-09'),(13,'francisco.chang@course.vertabelo.com','Francisco Chang','Sierras de Granada 9993','México D.F.',NULL,5022,'Mexico','(5) 555-7293','2017-01-16',1,'20','2017-01-26','11554','2024-09-21'),(17,'sven.ottlieb@course.vertabelo.com','Sven Ottlieb','Walserweg 21','Aachen',NULL,52066,'Germany','0241-059428','2016-12-23',2,'3','2017-01-06','11594','2024-10-09'),(18,'janine.labrune@course.vertabelo.com','Janine Labrune','67, rue des Cinquante Otages','Nantes',NULL,44000,'France','40.67.89.89','2017-01-05',1,'10','2017-01-13','10769','2024-05-29'),(20,'roland.mendel@course.vertabelo.com','Roland Mendel','Kirchgasse 6','Graz',NULL,8010,'Austria','7675-3426','2017-01-23',1,'21','2017-01-30','10633','2024-05-13'),(664,'laura.ballard@course.vertabelo.com','Laura Ballard','1179 Cityview Drive','Wayne','Pennsylvania',19087,'USA','+1 610-503-8324','2018-12-29',1,NULL,NULL,NULL,NULL),(791,'ricky.bosse@course.vertabelo.com','Ricky Bosse','759 Brannon Street','Los Angeles','California',90014,'USA','+1 213-234-8211','2024-02-26',1,'9761','2024-03-03','9761','2024-03-03'),(792,'alexandra.stillings@course.vertabelo.com','Alexandra Stillings','1905 Quiet Valley Lane','North Hollywood','California',91605,'USA','+1 818-982-0940','2024-03-10',1,NULL,NULL,NULL,NULL),(793,'howard.love@course.vertabelo.com','Howard Love','4059 Dennison Street','Stockton','California',95207,'USA','+1 209-473-7877','2024-03-11',1,NULL,NULL,NULL,NULL),(794,'alyce.beasley@course.vertabelo.com','Alyce Beasley','4450 Morgan Street','Pensacola','Florida',32501,'USA','+1 850-501-1019','2024-03-12',1,'9914','2024-03-14','10678','2024-05-17'),(795,'arthur.araujo@course.vertabelo.com','Arthur Araujo','289 Ridenour Street','Boca Raton','Florida',33486,'USA','+1 786-215-2035','2024-03-13',1,NULL,NULL,NULL,NULL),(796,'austin.hussey@course.vertabelo.com','Austin Hussey','2574 Rowes Lane','Elizabethtown','Kentucky',42701,'USA','+1 270-613-7026','2024-03-14',1,NULL,NULL,NULL,NULL),(797,'victor.davidson@course.vertabelo.com','Victor Davidson','4042 Par Drive','Bakersfield','California',93301,'USA','+1 805-885-6133','2024-03-15',1,NULL,NULL,NULL,NULL),(798,'katrina.lambright@course.vertabelo.com','Katrina Lambright','3621 Saints Alley','Tampa','Florida',33614,'USA','+1 813-787-6847','2024-02-04',1,'9681','2024-02-25','9681','2024-02-25'),(799,'bernice.priester@course.vertabelo.com','Bernice Priester','2922 Duke Lane','South River','New Jersey',8882,'USA','+1 732-698-1694','2024-03-18',3,NULL,NULL,NULL,NULL),(800,'jonathan.dawson@course.vertabelo.com','Jonathan Dawson','612 Stoney Lonesome Road','Scranton','Pennsylvania',18503,'USA','+1 570-393-3483','2024-03-19',1,NULL,NULL,NULL,NULL),(801,'david.mahoney@course.vertabelo.com','David Mahoney','2240 Dog Hill Lane','Salina','Kansas',67401,'USA','+1 785-727-5269','2024-03-20',1,NULL,NULL,NULL,NULL),(802,'jacqueline.castilleja@course.vertabelo.com','Jacqueline Castilleja','860 Vine Street','Chicago','Illinois',60631,'USA','+1 847-630-4583','2024-03-21',1,NULL,NULL,NULL,NULL),(803,'frank.mixson@course.vertabelo.com','Frank Mixson','2182 Sardis Sta','Fort Worth','Texas',76118,'USA','+1 817-590-4127','2024-02-21',1,'9827','2024-03-07','10917','2024-06-13'),(804,'james.upshaw@course.vertabelo.com','James Upshaw','3345 Scheuvront Drive','Ward','Colorado',80481,'USA','+1 303-459-2038','2024-03-23',1,NULL,NULL,NULL,NULL),(805,'mary.garcia@course.vertabelo.com','Mary Garcia','633 Meadowview Drive','Lovettsville','Virginia',22080,'USA','+1 540-822-9344','2024-03-24',1,'10138','2024-04-02','11578','2024-09-30'),(806,'josephine.oden@course.vertabelo.com','Josephine Oden','2645 Hart Ridge Road','Bay City','Michigan',48706,'USA','+1 989-339-6078','2024-03-25',1,NULL,NULL,NULL,NULL),(807,'jennifer.burton@course.vertabelo.com','Jennifer Burton','2495 Tenmile Road','North Billerica','Massachusetts',1862,'USA','+1 781-718-3794','2024-03-26',1,'10262','2024-04-11','11298','2024-07-30'),(808,'christine.hamilton@course.vertabelo.com','Christine Hamilton','3562 Boone Crockett Lane','Seattle','Washington',98109,'USA','+1 360-386-9551','2024-03-27',1,NULL,NULL,NULL,NULL),(809,'pia.steele@course.vertabelo.com','Pia Steele','679 Tenmile','Fredericksburg','Virginia',22401,'USA','+1 757-897-5652','2024-03-29',1,NULL,NULL,NULL,NULL),(44,'renate.messner@course.vertabelo.com','Renate Messner','Magazinweg 7','Frankfurt a.M.',NULL,60528,'Germany','069-0245874','2017-02-19',1,NULL,NULL,NULL,NULL),(810,'everett.little@course.vertabelo.com','Everett Little','3503 Golden Ridge Road','Schenectady','New York',12305,'USA','+1 518-370-1322','2024-03-30',1,NULL,NULL,NULL,NULL),(811,'michael.montes@course.vertabelo.com','Michael Montes','3292 Findley Avenue','East Grand Forks','North Dakota',56721,'USA','+1 701-885-3477','2024-03-31',1,'10325','2024-04-16','10325','2024-04-16'),(812,'edgar.allen@course.vertabelo.com','Edgar Allen','4544 Orchard Street','Burnsville','Minnesota',55337,'USA','+1 952-894-1010','2024-04-01',1,'10154','2024-04-03','10953','2024-06-17'),(813,'kevin.oconnell@course.vertabelo.com','Kevin Oconnell','908 Wayside Lane','San Francisco','California',94103,'USA','+1 510-315-6324','2024-04-02',1,'10340','2024-04-17','11058','2024-06-28'),(814,'thomas.helmick@course.vertabelo.com','Thomas Helmick','3083 Coffman Alley','Madisonville','Kentucky',42431,'USA','+1 270-752-6673','2024-03-20',3,'10071','2024-03-27','10954','2024-06-17'),(815,'michael.johnson@course.vertabelo.com','Michael Johnson','128 Goldleaf Lane','Secaucus','New Jersey',7094,'USA','+1 201-608-4850','2024-04-04',1,NULL,NULL,NULL,NULL),(816,'joseph.ramirez@course.vertabelo.com','Joseph Ramirez','1587 Ventura Drive','Santa Cruz','California',95062,'USA','+1 831-475-6462','2024-04-05',1,'10326','2024-04-16','11013','2024-06-23'),(817,'eric.james@course.vertabelo.com','Eric James','2348 Pine Street','Springdale','Pennsylvania',15144,'USA','+1 724-274-6605','2024-03-15',1,'10061','2024-03-26','11466','2024-08-28'),(818,'greg.smith@course.vertabelo.com','Greg Smith','4237 Sunrise Road','Las Vegas','Nevada',89107,'USA','+1 702-822-6847','2024-03-20',3,'10092','2024-03-29','11337','2024-08-06'),(819,'doreen.kimble@course.vertabelo.com','Doreen Kimble','4639 Hart Ridge Road','Saginaw','Michigan',48603,'USA','+1 989-249-8309','2024-04-08',2,NULL,NULL,NULL,NULL),(820,'milford.mejia@course.vertabelo.com','Milford Mejia','1165 Riverwood Drive','Chico','California',95926,'USA','+1 530-364-5336','2024-03-09',4,'10048','2024-03-25','11174','2024-07-14'),(821,'michael.williams@course.vertabelo.com','Michael Williams','4336 Railroad Street','Starke','Florida',32091,'USA','+1 904-966-5036','2024-03-30',1,'10178','2024-04-05','10518','2024-05-01'),(822,'ronald.yang@course.vertabelo.com','Ronald Yang','3518 Kyle Street','Grand Island','Nebraska',68801,'USA','+1 308-380-8892','2024-04-12',1,NULL,NULL,NULL,NULL),(823,'mary.laboy@course.vertabelo.com','Mary Laboy','70 Bassell Avenue','Little Rock','Arkansas',72210,'USA','+1 501-733-0152','2024-04-07',1,'10252','2024-04-10','10252','2024-04-10'),(824,'stephen.edington@course.vertabelo.com','Stephen Edington','3160 Green Avenue','San Jose','California',95131,'USA','+1 510-859-4955','2024-04-14',1,NULL,NULL,NULL,NULL),(825,'brittany.martinez@course.vertabelo.com','Brittany Martinez','2195 Twin Willow Lane','Wilmington','North Carolina',28403,'USA','+1 910-452-9166','2024-04-15',3,NULL,NULL,NULL,NULL),(826,'edward.hutchinson@course.vertabelo.com','Edward Hutchinson','717 Junkins Avenue','Fitzgerald','Georgia',31750,'USA','+1 229-426-7333','2024-04-16',1,NULL,NULL,NULL,NULL),(827,'juan.railsback@course.vertabelo.com','Juan Railsback','3001 Woodland Avenue','Metairie','Louisiana',70007,'USA','+1 985-746-0267','2024-04-17',2,NULL,NULL,NULL,NULL),(828,'shannon.olsen@course.vertabelo.com','Shannon Olsen','1987 Yorkie Lane','Richmond Hill','Georgia',31324,'USA','+1 912-756-1258','2024-04-18',2,NULL,NULL,NULL,NULL),(829,'christa.burpee@course.vertabelo.com','Christa Burpee','4075 Straford Park','Somerset','Kentucky',42501,'USA','+1 606-677-8795','2024-03-28',2,'10217','2024-04-08','11274','2024-07-26'),(830,'darren.byrd@course.vertabelo.com','Darren Byrd','1178 Eastland Avenue','Jackson','Mississippi',39212,'USA','+1 601-371-2455','2024-04-21',2,NULL,NULL,NULL,NULL),(831,'james.thompson@course.vertabelo.com','James Thompson','2720 Richland Avenue','Valley Lodge','Texas',77020,'USA','+1 281-346-9272','2024-04-22',2,NULL,NULL,NULL,NULL),(22,'diego.roel@course.vertabelo.com','Diego Roel','C/ Moralzarzal, 86','Madrid',NULL,28034,'Spain','(91) 555 55 93','2016-12-25',1,'7','2017-01-10','11165','2024-07-14'),(23,'martine.rancé@course.vertabelo.com','Martine Rancé','184, chaussée de Tournai','Lille',NULL,59000,'France','20.16.10.17','2016-12-18',1,'5','2017-01-07','11390','2024-08-16'),(25,'peter.franken@course.vertabelo.com','Peter Franken','Berliner Platz 43','München',NULL,80805,'Germany','089-0877451','2016-12-30',2,'14','2017-01-14','7683','2023-10-29'),(26,'carine.schmitt@course.vertabelo.com','Carine Schmitt','54, rue Royale','Nantes',NULL,44000,'France','40.32.21.20','2016-12-21',1,'8','2017-01-10','11617','2024-10-23'),(27,'paolo.accorti@course.vertabelo.com','Paolo Accorti','Via Monte Bianco 34','Torino',NULL,10100,'Italy','011-4988261','2017-01-01',1,'16','2017-01-16','10282','2024-04-14'),(28,'lino.rodriguez@course.vertabelo.com','Lino Rodriguez','Jardim das rosas n. 32','Lisboa',NULL,1675,'Portugal','(1) 354-2535','2017-02-01',2,'43','2017-02-16','8584','2023-12-19'),(29,'eduardo.saavedra@course.vertabelo.com','Eduardo Saavedra','Rambla de Cataluña, 23','Barcelona',NULL,8022,'Spain','(93) 203 4561','2017-02-02',3,'37','2017-02-12','10837','2024-06-05'),(30,'jose.pedro.freyre@course.vertabelo.com','José Pedro Freyre','C/ Romero, 33','Sevilla',NULL,41101,'Spain',NULL,'2017-02-03',1,NULL,NULL,NULL,NULL),(32,'howard.snyder@course.vertabelo.com','Howard Snyder','2732 Baker Blvd.','Eugene','OR',97403,'USA',NULL,'2017-02-06',1,'52','2017-02-22','11577','2024-09-29'),(33,'manuel.pereira@course.vertabelo.com','Manuel Pereira','5ª Ave. Los Palos Grandes','Caracas','DF',1081,'Venezuela','(2) 283-3397','2017-02-07',3,'56','2017-02-24','7249','2018-12-12'),(35,'carlos.hernandez@course.vertabelo.com','Carlos Hernández','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira',5022,'Venezuela','(5) 555-1948','2017-02-09',1,'34','2017-02-09','6523','2018-11-05'),(36,'yoshi.latimer@course.vertabelo.com','Yoshi Latimer','City Center Plaza 516 Main St.','Elgin','OR',97827,'USA','(503) 555-2376','2017-02-10',1,'35','2017-02-10','11342','2024-08-08'),(37,'patricia.mckenna@course.vertabelo.com','Patricia McKenna','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland','2967 3333','2017-02-11',1,'60','2017-02-27','8993','2024-01-12'),(39,'philip.cramer@course.vertabelo.com','Philip Cramer','Maubelstr. 90','Brandenburg',NULL,14776,'Germany',NULL,'2017-02-13',1,NULL,NULL,NULL,NULL),(40,'daniel.tonini@course.vertabelo.com','Daniel Tonini','67, avenue de l\'Europe','Versailles',NULL,78000,'France','30.59.85.11','2017-02-08',1,'36','2017-02-11','9223','2024-01-27'),(41,'annette.roulet@course.vertabelo.com','Annette Roulet','1 rue Alsace-Lorraine','Toulouse',NULL,31000,'France','61.77.61.11','2017-02-15',1,NULL,NULL,NULL,NULL),(43,'john.steel@course.vertabelo.com','John Steel','12 Orchestra Terrace','Walla Walla','WA',99362,'USA','(509) 555-6221','2017-02-18',2,'58','2017-02-25','9094','2024-01-18'),(45,'jaime.yorres@course.vertabelo.com','Jaime Yorres','87 Polk St. Suite 5','San Francisco','CA',94117,'USA',NULL,'2017-01-15',1,'23','2017-02-02','7749','2023-11-02'),(46,'carlos.gonzalez@course.vertabelo.com','Carlos González','Carrera 52 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara',3508,'Venezuela','(9) 331-7256','2017-02-05',1,'40','2017-02-13','11126','2024-07-09'),(47,'felipe.izquierdo@course.vertabelo.com','Felipe Izquierdo','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta',4980,'Venezuela','(8) 34-93-93','2017-01-13',1,'24','2017-02-02','8771','2023-12-29'),(48,'fran.wilson@course.vertabelo.com','Fran Wilson','89 Chiaroscuro Rd.','Portland','OR',97219,'USA','(503) 555-9646','2017-01-24',5,'32','2017-02-08','11548','2024-09-19'),(49,'giovanni.rovelli@course.vertabelo.com','Giovanni Rovelli','Via Ludovico il Moro 22','Bergamo',NULL,24100,'Italy','035-640231','2017-02-24',1,NULL,NULL,NULL,NULL),(52,'alexander.feuer@course.vertabelo.com','Alexander Feuer','Heerstr. 22','Leipzig',NULL,4179,'Germany',NULL,'2017-01-08',1,'25','2017-02-02','11024','2024-06-25'),(54,'yvonne.moncada@course.vertabelo.com','Yvonne Moncada','Ing. Gustavo Moncada 8585 Piso 20-A','Buenos Aires',NULL,1010,'Argentina','(1) 135-5535','2017-03-02',1,'122','2017-03-28','10925','2024-06-15');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_items` (
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `discount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (1,2,19,20,0),(1,68,12.5,18,0.2),(2,23,7.2,60,0),(2,63,35.1,65,0),(3,3,10,30,0),(3,26,31.23,35,0.25),(3,29,123.79,10,0.25),(4,14,23.25,11,0.15),(4,42,14,28,0.15),(5,1,18,25,0.25),(5,5,21.35,30,0.25),(6,23,7.2,60,0),(6,63,35.1,65,0),(7,10,24.8,30,0.2),(7,26,24.9,16,0),(7,60,27.2,8,0.2),(8,16,17.45,20,0),(8,62,49.3,20,0),(9,12,30.4,12,0.05),(10,26,31.23,5,0),(10,41,9.65,6,0),(10,75,7.75,10,0),(11,11,21,3,0),(11,33,2.5,8,0.2),(11,72,34.8,9,0),(12,52,7,6,0.05),(12,76,18,60,0),(13,58,13.25,40,0.05),(13,71,21.5,20,0),(14,45,9.5,4,0),(14,74,10,5,0),(15,16,17.45,55,0),(15,24,4.5,20,0),(15,36,19,40,0),(16,28,45.6,3,0),(17,2,15.2,40,0),(17,36,15.2,40,0.25),(17,59,44,30,0.25),(17,62,39.4,15,0),(18,19,7.3,40,0),(18,65,16.8,35,0),(18,71,17.2,2,0),(19,19,9.2,12,0),(19,49,20,10,0),(19,61,28.5,5,0),(20,24,3.6,25,0),(20,57,15.6,25,0),(21,56,38,30,0),(22,28,45.6,8,0.15),(22,43,46,36,0.15),(22,77,13,28,0.15),(23,6,25,20,0.25),(23,14,23.25,20,0.25),(23,19,9.2,10,0.25),(24,25,11.2,60,0.05),(24,42,11.2,20,0.05),(25,19,9.2,12,0),(25,49,20,10,0),(25,61,28.5,5,0),(26,65,21.05,40,0),(26,75,7.75,20,0),(27,54,5.9,15,0),(28,10,31,20,0),(28,41,9.65,4,0),(28,47,9.5,15,0),(29,41,9.65,14,0),(29,52,7,8,0),(30,47,9.5,12,0),(31,7,30,35,0),(31,18,62.5,50,0),(31,51,53,15,0),(31,75,7.75,2,0),(32,2,19,15,0),(32,17,39,6,0),(32,62,49.3,50,0),(33,25,14,12,0.25),(33,27,43.9,40,0),(33,43,46,30,0.25),(34,1,18,50,0),(34,21,10,30,0),(34,50,16.25,40,0),(35,18,62.5,24,0),(35,44,19.45,16,0),(35,59,55,45,0),(35,72,34.8,7,0),(36,35,18,10,0),(36,63,43.9,40,0),(37,19,7.3,40,0),(37,65,16.8,35,0),(37,71,17.2,2,0),(38,36,19,30,0.2),(39,11,21,50,0.1),(39,51,53,10,0.1),(39,54,7.45,7,0.1),(40,7,30,12,0),(40,16,17.45,15,0),(40,41,9.65,5,0),(41,45,7.6,15,0.2),(41,52,5.6,20,0.2),(41,53,26.2,40,0);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int DEFAULT NULL,
  `customer_id` int DEFAULT NULL,
  `order_date` text,
  `total_amount` double DEFAULT NULL,
  `ship_name` text,
  `ship_address` text,
  `ship_city` text,
  `ship_region` text,
  `ship_postal_code` text,
  `ship_country` text,
  `shipped_date` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (12,8,'2017-01-14',1122,'Martín Sommer','C/ Araquil, 67','Madrid',NULL,'28023','Spain','2017-01-25'),(13,10,'2017-01-14',960,'Elizabeth Lincoln','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada','2017-01-18'),(14,25,'2017-01-14',88,'Peter Franken','Berliner Platz 43','München',NULL,'80805','Germany','2017-01-16'),(15,21,'2017-01-16',1809.75,'Aria Cruz','Rua Orós, 92','Sao Paulo','SP','05442-030','Brazil','2017-01-20'),(16,27,'2017-01-16',136.8,'Paolo Accorti','Via Monte Bianco 34','Torino',NULL,'10100','Italy','2017-01-28'),(17,5,'2017-01-17',3127,'Christina Berglund','Berguvsvägen 8','Luleå',NULL,'S-958 22','Sweden','2017-01-23'),(18,16,'2017-01-23',914.4,'Elizabeth Brown','Berkeley Gardens 12 Brewery','London',NULL,'WX1 6LT','UK','2017-02-13'),(19,3,'2017-01-24',452.9,'Antonio Moreno','Mataderos 2312','México D.F.',NULL,'5023','Mexico','2017-01-30'),(20,13,'2017-01-26',480,'Francisco Chang','Sierras de Granada 9993','México D.F.',NULL,'5022','Mexico','2017-01-31'),(21,20,'2017-01-30',1140,'Roland Mendel','Kirchgasse 6','Graz',NULL,'8010','Austria','2017-02-05'),(22,22,'2017-02-01',2384.8,'Diego Roel','C/ Moralzarzal, 86','Madrid',NULL,'28034','Spain','2017-02-03'),(23,45,'2017-02-02',1057,'Jaime Yorres','87 Polk St. Suite 5','San Francisco','CA','94117','USA','2017-02-06'),(24,47,'2017-02-02',896,'Felipe Izquierdo','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela','2017-02-12'),(25,52,'2017-02-02',452.9,'Alexander Feuer','Heerstr. 22','Leipzig',NULL,'4179','Germany','2017-02-08'),(26,51,'2017-02-03',997,'Jean Fresnière','43 rue St. Laurent','Montréal','Québec','H1J 1C3','Canada','2017-02-13'),(27,12,'2017-02-05',88.5,'Patricio Simpson','Cerrito 333','Buenos Aires',NULL,'1010','Argentina','2017-02-10'),(28,16,'2017-02-05',801.1,'Elizabeth Brown','Berkeley Gardens 12 Brewery','London',NULL,'WX1 6LT','UK','2017-02-09'),(29,26,'2017-02-05',191.1,'Carine Schmitt','54, rue Royale','Nantes',NULL,'44000','France','2017-02-20'),(30,53,'2017-02-07',114,'Simon Crowther','South House 300 Queensbridge','London',NULL,'SW7 1RZ','UK','2017-02-11'),(31,3,'2017-02-08',4985.5,'Antonio Moreno','Mataderos 2312','México D.F.',NULL,'5023','Mexico','2017-02-14'),(32,48,'2017-02-08',2984,'Fran Wilson','89 Chiaroscuro Rd.','Portland','OR','97219','USA','2017-02-12'),(33,15,'2017-02-09',3304,'Pedro Afonso','Av. dos Lusíadas, 23','Sao Paulo','SP','05432-043','Brazil','2017-02-18'),(34,35,'2017-02-09',1850,'Carlos Hernández','Carrera 22 con Ave. Carlos Soublette #8-35','San Cristóbal','Táchira','5022','Venezuela','2017-02-19'),(35,36,'2017-02-10',4529.8,'Yoshi Latimer','City Center Plaza 516 Main St.','Elgin','OR','97827','USA','2017-02-19'),(36,40,'2017-02-11',1936,'Daniel Tonini','67, avenue de l\'Europe','Versailles',NULL,'78000','France','2017-02-17'),(37,29,'2017-02-12',914.4,'Eduardo Saavedra','Rambla de Cataluña, 23','Barcelona',NULL,'8022','Spain','2017-03-05'),(38,50,'2017-02-12',570,'Catherine Dewey','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium','2017-02-21'),(39,20,'2017-02-13',1632.15,'Roland Mendel','Kirchgasse 6','Graz',NULL,'8010','Austria','2017-02-23'),(40,46,'2017-02-13',670,'Carlos González','Carrera 52 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela','2017-02-25'),(41,42,'2017-02-14',1274,'Yoshi Tannamuri','1900 Oak St.','Vancouver','BC','V3F 2K1','Canada','2017-02-15'),(42,5,'2017-02-15',928.75,'Christina Berglund','Berguvsvägen 8','Luleå',NULL,'S-958 22','Sweden','2017-02-18'),(43,28,'2017-02-16',1030.76,'Lino Rodriguez','Jardim das rosas n. 32','Lisboa',NULL,'1675','Portugal','2017-02-21'),(44,13,'2017-02-19',530.4,'Francisco Chang','Sierras de Granada 9993','México D.F.',NULL,'5022','Mexico','2017-03-01'),(45,8,'2017-02-20',959.2,'Martín Sommer','C/ Araquil, 67','Madrid',NULL,'28023','Spain','2017-02-22'),(46,17,'2017-02-20',443.4,'Sven Ottlieb','Walserweg 21','Aachen',NULL,'52066','Germany','2017-02-27'),(47,6,'2017-02-21',1050.6,'Hanna Moos','Forsterstr. 57','Mannheim',NULL,'68306','Germany','2017-03-01'),(48,7,'2017-02-21',1586,'Frédérique Citeaux','24, place Kléber','Strasbourg',NULL,'67000','France','2017-02-27'),(49,27,'2017-02-21',2262.5,'Paolo Accorti','Via Monte Bianco 34','Torino',NULL,'10100','Italy','2017-02-24'),(50,10,'2017-02-22',704,'Elizabeth Lincoln','23 Tsawassen Blvd.','Tsawassen','BC','T2F 8M4','Canada','2017-03-26'),(51,25,'2017-02-22',386.2,'Peter Franken','Berliner Platz 43','München',NULL,'80805','Germany','2017-03-02'),(52,32,'2017-02-22',1328,'Howard Snyder','2732 Baker Blvd.','Eugene','OR','97403','USA','2017-03-01'),(53,21,'2017-02-23',2327,'Aria Cruz','Rua Orós, 92','Sao Paulo','SP','05442-030','Brazil','2017-03-04'),(54,2,'2017-02-24',2040,'Ana Trujillo','Avda. de la Constitución 2222','México D.F.',NULL,'5021','Mexico','2017-03-02'),(55,11,'2017-02-24',1112,'Victoria Ashworth','Fauntleroy Circus','London',NULL,'EC2 5NT','UK','2017-02-25'),(56,33,'2017-02-24',1764,'Manuel Pereira','5ª Ave. Los Palos Grandes','Caracas','DF','1081','Venezuela','2017-03-06'),(57,31,'2017-02-25',479.75,'André Fonseca','Av. Brasil, 442','Campinas','SP','04876-786','Brazil','2017-03-03'),(58,43,'2017-02-25',848,'John Steel','12 Orchestra Terrace','Walla Walla','WA','99362','USA','2017-03-07'),(59,23,'2017-02-26',5256.5,'Martine Rancé','184, chaussée de Tournai','Lille',NULL,'59000','France','2017-03-21'),(60,37,'2017-02-27',240.4,'Patricia McKenna','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland','2017-03-02'),(61,18,'2017-02-28',1296,'Janine Labrune','67, rue des Cinquante Otages','Nantes',NULL,'44000','France','2017-03-05'),(62,34,'2017-02-28',875,'Mario Pontes','Rua do Paço, 67','Rio de Janeiro','RJ','05454-876','Brazil','2017-03-01'),(63,38,'2017-02-28',2275.25,'Helen Bennett','Garden House Crowther Way','Cowes','Isle of Wight','PO31 7PJ','UK','2017-03-08'),(64,16,'2017-03-01',231.4,'Elizabeth Brown','Berkeley Gardens 12 Brewery','London',NULL,'WX1 6LT','UK','2017-03-04'),(65,18,'2017-03-02',112,'Janine Labrune','67, rue des Cinquante Otages','Nantes',NULL,'44000','France','2017-03-03'),(66,13,'2017-03-03',5502.11,'Francisco Chang','Sierras de Granada 9993','México D.F.',NULL,'5022','Mexico','2017-03-05'),(67,15,'2017-03-03',925.1,'Pedro Afonso','Av. dos Lusíadas, 23','Sao Paulo','SP','05432-043','Brazil','2017-03-05'),(68,43,'2017-03-03',3900,'John Steel','12 Orchestra Terrace','Walla Walla','WA','99362','USA','2017-03-10'),(69,60,'2017-03-03',1191.2,'Isabel de Castro','Estrada da saúde n. 58','Lisboa',NULL,'1756','Portugal','2017-03-12'),(70,70,'2017-03-03',1873.5,'Jonas Bergulfsen','Erling Skakkes gate 78','Stavern',NULL,'4110','Norway','2017-03-04'),(71,47,'2017-03-04',2048,'Felipe Izquierdo','Ave. 5 de Mayo Porlamar','I. de Margarita','Nueva Esparta','4980','Venezuela','2017-03-10'),(72,52,'2017-03-05',477,'Alexander Feuer','Heerstr. 22','Leipzig',NULL,'4179','Germany','2017-03-14'),(73,73,'2017-03-05',1051.2,'Jytte Petersen','Vinbæltet 34','Kobenhavn',NULL,'1734','Denmark','2017-03-12'),(74,22,'2017-03-06',2413.9,'Diego Roel','C/ Moralzarzal, 86','Madrid',NULL,'28034','Spain','2017-03-10'),(75,53,'2017-03-06',1422,'Simon Crowther','South House 300 Queensbridge','London',NULL,'SW7 1RZ','UK','2017-03-13'),(76,78,'2017-03-08',155.4,'Liu Wong','55 Grizzly Peak Rd.','Butte','MT','59801','USA','2017-03-14'),(77,3,'2017-03-09',2334,'Antonio Moreno','Mataderos 2312','México D.F.',NULL,'5023','Mexico','2017-03-13'),(78,7,'2017-03-09',3891,'Frédérique Citeaux','24, place Kléber','Strasbourg',NULL,'67000','France','2017-03-15'),(79,55,'2017-03-09',326,'Rene Phillips','2743 Bering St.','Anchorage','AK','99508','USA','2017-03-11'),(80,59,'2017-03-10',468,'Georg Pipps','Geislweg 14','Salzburg',NULL,'5020','Austria','2017-03-13'),(81,20,'2017-03-11',1075,'Roland Mendel','Kirchgasse 6','Graz',NULL,'8010','Austria','2017-03-19'),(82,27,'2017-03-11',2614.5,'Paolo Accorti','Via Monte Bianco 34','Torino',NULL,'10100','Italy','2017-03-18'),(83,33,'2017-03-11',1388.5,'Manuel Pereira','5ª Ave. Los Palos Grandes','Caracas','DF','1081','Venezuela','2017-03-18'),(84,50,'2017-03-11',480,'Catherine Dewey','Rue Joseph-Bens 532','Bruxelles',NULL,'B-1180','Belgium','2017-03-16'),(85,66,'2017-03-11',997,'Maurizio Moroni','Strada Provinciale 124','Reggio Emilia',NULL,'42100','Italy','2017-03-21'),(86,23,'2017-03-12',864,'Martine Rancé','184, chaussée de Tournai','Lille',NULL,'59000','France','2017-03-18'),(87,45,'2017-03-12',1299,'Jaime Yorres','87 Polk St. Suite 5','San Francisco','CA','94117','USA','2017-03-18'),(88,46,'2017-03-12',17250,'Carlos González','Carrera 52 con Ave. Bolívar #65-98 Llano Largo','Barquisimeto','Lara','3508','Venezuela','2017-03-22'),(89,8,'2017-03-14',6164.9,'Martín Sommer','C/ Araquil, 67','Madrid',NULL,'28023','Spain','2017-04-02'),(90,51,'2017-03-14',1832.8,'Jean Fresnière','43 rue St. Laurent','Montréal','Québec','H1J 1C3','Canada','2017-03-18'),(91,69,'2017-03-14',1838,'Alejandra Camino','Gran Vía, 1','Madrid',NULL,'28001','Spain','2017-03-19'),(92,56,'2017-03-15',516.8,'Henriette Pfalzheim','Mehrheimerstr. 369','Köln',NULL,'50739','Germany','2017-03-22'),(93,25,'2017-03-16',93,'Peter Franken','Berliner Platz 43','München',NULL,'80805','Germany','2017-03-19'),(94,37,'2017-03-16',3600.73,'Patricia McKenna','8 Johnstown Road','Cork','Co. Cork',NULL,'Ireland','2017-03-24'),(95,5,'2017-03-17',68,'Christina Berglund','Berguvsvägen 8','Luleå',NULL,'S-958 22','Sweden','2017-03-24'),(96,31,'2017-03-18',6375,'André Fonseca','Av. Brasil, 442','Campinas','SP','04876-786','Brazil','2017-03-22'),(97,62,'2017-03-19',4210.5,'Lúcia Carvalho','Alameda dos Canàrios, 891','Sao Paulo','SP','05487-020','Brazil','2017-03-28'),(98,17,'2017-03-21',1823.8,'Sven Ottlieb','Walserweg 21','Aachen',NULL,'52066','Germany','2017-03-26'),(99,42,'2017-03-21',1140,'Yoshi Tannamuri','1900 Oak St.','Vancouver','BC','V3F 2K1','Canada','2017-03-28'),(100,57,'2017-03-21',704,'Marie Bertrand','265, boulevard Charonne','Paris',NULL,'75012','France','2017-04-22'),(101,77,'2017-03-21',740,'Liz Nixon','89 Jefferson Way Suite 2','Portland','OR','97201','USA','2017-03-28'),(102,81,'2017-03-21',4157,'Anabela Domingues','Av. Inês de Castro, 414','Sao Paulo','SP','05634-030','Brazil','2017-04-16'),(103,65,'2017-03-22',858,'Paula Wilson','2817 Milton Dr.','Albuquerque','NM','87110','USA','2017-03-29'),(104,11,'2017-03-23',320,'Victoria Ashworth','Fauntleroy Circus','London',NULL,'EC2 5NT','UK','2017-04-06'),(105,21,'2017-03-23',605,'Aria Cruz','Rua Orós, 92','Sao Paulo','SP','05442-030','Brazil','2017-03-30'),(106,48,'2017-03-23',636,'Fran Wilson','89 Chiaroscuro Rd.','Portland','OR','97219','USA','2017-03-30'),(107,75,'2017-03-23',1650,'Art Braunschweiger','P.O. Box 555','Lander','WY','82520','USA','2017-03-27'),(108,58,'2017-03-24',781,'Guillermo Fernández','Calle Dr. Jorge Cash 321','México D.F.',NULL,'5033','Mexico','2017-04-02'),(109,64,'2017-03-24',918,'Sergio Gutiérrez','Av. del Libertador 900','Buenos Aires',NULL,'1010','Argentina','2017-03-30'),(110,72,'2017-03-24',237.9,'Hari Kumar','90 Wadhurst Rd.','London',NULL,'OX15 4NB','UK','2017-04-01'),(111,2,'2017-03-25',3127,'Ana Trujillo','Avda. de la Constitución 2222','México D.F.',NULL,'5021','Mexico','2017-03-31');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int DEFAULT NULL,
  `product_name` text,
  `category_id` int DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `discontinued` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Chai',1,18,0),(2,'Chang',1,19,0),(3,'Aniseed Syrup',2,10,0),(4,'Chef Anton\'s Cajun Seasoning',2,22,0),(5,'Chef Anton\'s Gumbo Mix',2,21.35,1),(6,'Grandma\'s Boysenberry Spread',2,25,0),(7,'Uncle Bob\'s Organic Dried Pears',7,30,0),(8,'Northwoods Cranberry Sauce',2,40,0),(9,'Mishi Kobe Niku',6,97,1),(10,'Ikura',8,31,0),(11,'Queso Cabrales',4,21,0),(12,'Queso Manchego La Pastora',4,38,0),(13,'Konbu',8,6,0),(14,'Tofu',7,23.25,0),(15,'Genen Shouyu',2,15.5,0),(16,'Pavlova',3,17.45,0),(17,'Alice Mutton',6,39,1),(18,'Carnarvon Tigers',8,62.5,0),(19,'Teatime Chocolate Biscuits',3,9.2,0),(20,'Sir Rodney\'s Marmalade',3,81,0),(21,'Sir Rodney\'s Scones',3,10,0),(22,'Gustaf\'s Knäckebröd',5,21,0),(23,'Tunnbröd',5,9,0),(24,'Guaraná Fantástica',1,4.5,1),(25,'NuNuCa Nuß-Nougat-Creme',3,14,0),(26,'Gumbär Gummibärchen',3,31.23,0),(27,'Schoggi Schokolade',3,43.9,0),(28,'Rössle Sauerkraut',7,45.6,1),(29,'Thüringer Rostbratwurst',6,123.79,1),(30,'Nord-Ost Matjeshering',8,25.89,0),(31,'Gorgonzola Telino',4,12.5,0),(32,'Mascarpone Fabioli',4,32,0),(33,'Geitost',4,2.5,0),(34,'Sasquatch Ale',1,14,0),(35,'Steeleye Stout',1,18,0),(36,'Inlagd Sill',8,19,0),(37,'Gravad lax',8,26,0),(38,'Côte de Blaye',1,263.5,0),(39,'Chartreuse verte',1,18,0),(40,'Boston Crab Meat',8,18.4,0),(41,'Jack\'s New England Clam Chowder',8,9.65,0),(42,'Singaporean Hokkien Fried Mee',5,14,1),(43,'Ipoh Coffee',1,46,0),(44,'Gula Malacca',2,19.45,0),(45,'Rogede sild',8,9.5,0),(46,'Spegesild',8,12,0),(47,'Zaanse koeken',3,9.5,0),(48,'Chocolade',3,12.75,0),(49,'Maxilaku',3,20,0),(50,'Valkoinen suklaa',3,16.25,0),(51,'Manjimup Dried Apples',7,53,0),(52,'Filo Mix',5,7,0),(53,'Perth Pasties',6,32.8,1),(54,'Tourtière',6,7.45,0),(55,'Pâté chinois',6,24,0),(56,'Gnocchi di nonna Alice',5,38,0),(57,'Ravioli Angelo',5,19.5,0),(58,'Escargots de Bourgogne',8,13.25,0),(59,'Raclette Courdavault',4,55,0),(60,'Camembert Pierrot',4,34,0),(61,'Sirop d\'érable',2,28.5,0),(62,'Tarte au sucre',3,49.3,0),(63,'Vegie-spread',2,43.9,0),(64,'Wimmers gute Semmelknödel',5,33.25,0),(65,'Louisiana Fiery Hot Pepper Sauce',2,21.05,0),(66,'Louisiana Hot Spiced Okra',2,17,0),(67,'Laughing Lumberjack Lager',1,14,0),(68,'Scottish Longbreads',3,12.5,0),(69,'Gudbrandsdalsost',4,36,0),(70,'Outback Lager',1,15,0),(71,'Flotemysost',4,21.5,0),(72,'Mozzarella di Giovanni',4,34.8,0),(73,'Röd Kaviar',8,15,0),(74,'Longlife Tofu',7,10,0),(75,'Rhönbräu Klosterbier',1,7.75,0),(76,'Lakkalikööri',1,18,0),(77,'Original Frankfurter grüne Soße',2,13,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-09-12  0:21:47
