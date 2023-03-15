-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: cookpad
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `alat`
--

DROP TABLE IF EXISTS `alat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alat` (
  `idalat` int DEFAULT NULL,
  `idresep` int DEFAULT NULL,
  `nama_alat` varchar(255) DEFAULT NULL,
  `keterangan` varchar(45) DEFAULT NULL,
  `resep_idresep` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alat`
--

LOCK TABLES `alat` WRITE;
/*!40000 ALTER TABLE `alat` DISABLE KEYS */;
/*!40000 ALTER TABLE `alat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bahan`
--

DROP TABLE IF EXISTS `bahan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bahan` (
  `idbahan` int DEFAULT NULL,
  `idresep` int DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `satuan` varchar(255) DEFAULT NULL,
  `banyak` decimal(10,0) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `resep_idresep` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bahan`
--

LOCK TABLES `bahan` WRITE;
/*!40000 ALTER TABLE `bahan` DISABLE KEYS */;
/*!40000 ALTER TABLE `bahan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_`
--

DROP TABLE IF EXISTS `log_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `log_` (
  `idlog` int DEFAULT NULL,
  `module` varchar(45) DEFAULT NULL,
  `action_` varchar(45) DEFAULT NULL,
  `date_` int DEFAULT NULL,
  `useracses` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_`
--

LOCK TABLES `log_` WRITE;
/*!40000 ALTER TABLE `log_` DISABLE KEYS */;
/*!40000 ALTER TABLE `log_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rating`
--

DROP TABLE IF EXISTS `rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rating` (
  `idrating` int DEFAULT NULL,
  `idresep` varchar(45) DEFAULT NULL,
  `rating` int DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `resep_idresep` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rating`
--

LOCK TABLES `rating` WRITE;
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resep`
--

DROP TABLE IF EXISTS `resep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resep` (
  `idresep` int DEFAULT NULL,
  `judul` varchar(45) DEFAULT NULL,
  `gambar` varchar(45) DEFAULT NULL,
  `cara_pembuatan` longtext,
  `status` enum('draf','submit','publish','unpublished','delete') DEFAULT NULL,
  `email_create` varchar(255) DEFAULT NULL,
  `vidio` varchar(255) DEFAULT NULL,
  `user_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resep`
--

LOCK TABLES `resep` WRITE;
/*!40000 ALTER TABLE `resep` DISABLE KEYS */;
/*!40000 ALTER TABLE `resep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resepview`
--

DROP TABLE IF EXISTS `resepview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resepview` (
  `idresep_view` int DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date_` datetime DEFAULT NULL,
  `resep_idresep` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resepview`
--

LOCK TABLES `resepview` WRITE;
/*!40000 ALTER TABLE `resepview` DISABLE KEYS */;
/*!40000 ALTER TABLE `resepview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('ADMIN','USER') DEFAULT NULL,
  `email_validate` varchar(255) DEFAULT NULL,
  `status` enum('AKTIF','NON-AKTIF') DEFAULT NULL,
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cookpad'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-13 18:58:02
