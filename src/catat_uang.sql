-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: catat_uang
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.25-MariaDB

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
-- Temporary view structure for view `balances`
--

DROP TABLE IF EXISTS `balances`;
/*!50001 DROP VIEW IF EXISTS `balances`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `balances` AS SELECT 
 1 AS `userID`,
 1 AS `Balances`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dataexpenses`
--

DROP TABLE IF EXISTS `dataexpenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dataexpenses` (
  `userID` int(11) NOT NULL,
  `expensesID` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `Notes` varchar(150) NOT NULL,
  `Categories` varchar(15) NOT NULL,
  `Amount` int(11) NOT NULL,
  PRIMARY KEY (`expensesID`),
  KEY `dataexpenses_ibfk_1` (`userID`),
  CONSTRAINT `dataexpenses_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `datauser` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataexpenses`
--

LOCK TABLES `dataexpenses` WRITE;
/*!40000 ALTER TABLE `dataexpenses` DISABLE KEYS */;
INSERT INTO `dataexpenses` VALUES (1,1,'2023-05-10','','Food',10000),(4,2,'2023-05-10','','Food',10000),(3,3,'2023-05-24','','Medical',25000),(1,5,'2023-05-18','','Laundry',30000),(1,25,'2023-05-17','','Transport',80000),(1,27,'2023-05-05','123','Food',123),(1,28,'2023-05-06','','Medical',123),(1,29,'2023-06-01','nitessss','Medical',2223),(1,30,'2023-05-05','321','Medical',321),(5,31,'2023-05-04','test','Food',500000),(1,34,'2023-05-05','123','Food',123321),(2,46,'2023-05-01','123','Medical',50000),(2,47,'2023-05-04','123','Medical',30000),(2,48,'2023-05-03','','Food',20000);
/*!40000 ALTER TABLE `dataexpenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataincomes`
--

DROP TABLE IF EXISTS `dataincomes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dataincomes` (
  `userID` int(11) NOT NULL,
  `IDincomes` int(11) NOT NULL AUTO_INCREMENT,
  `Date` date NOT NULL,
  `Notes` varchar(150) DEFAULT '',
  `Categories` varchar(20) NOT NULL,
  `Amount` int(20) NOT NULL,
  PRIMARY KEY (`IDincomes`),
  KEY `userID` (`userID`),
  CONSTRAINT `dataincomes_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `datauser` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataincomes`
--

LOCK TABLES `dataincomes` WRITE;
/*!40000 ALTER TABLE `dataincomes` DISABLE KEYS */;
INSERT INTO `dataincomes` VALUES (1,5,'2023-05-12','23','Profit',3122222),(1,6,'2023-05-31','','Salary',50000),(1,7,'2023-05-05','','Salary',321123),(1,8,'2023-05-24','','Profit',1),(1,14,'2023-05-01','','Salary',23),(1,15,'2023-05-31','s','Return',2325);
/*!40000 ALTER TABLE `dataincomes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datauser`
--

DROP TABLE IF EXISTS `datauser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datauser` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datauser`
--

LOCK TABLES `datauser` WRITE;
/*!40000 ALTER TABLE `datauser` DISABLE KEYS */;
INSERT INTO `datauser` VALUES (1,'afwa@gmail.com','afwaa','123'),(2,'afwaa@gmail.com','aaa','aaa'),(3,'kkk@gmail.com','aaa','akk'),(4,'maaa@gmail.com','malamal','999'),(5,'test@gmail.com','test','test'),(7,'azka@gmail.com','azkaa','123');
/*!40000 ALTER TABLE `datauser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `expensepercategory`
--

DROP TABLE IF EXISTS `expensepercategory`;
/*!50001 DROP VIEW IF EXISTS `expensepercategory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `expensepercategory` AS SELECT 
 1 AS `userID`,
 1 AS `Categories`,
 1 AS `Amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `incomepercategory`
--

DROP TABLE IF EXISTS `incomepercategory`;
/*!50001 DROP VIEW IF EXISTS `incomepercategory`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `incomepercategory` AS SELECT 
 1 AS `userID`,
 1 AS `Categories`,
 1 AS `Amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `totalexpenses`
--

DROP TABLE IF EXISTS `totalexpenses`;
/*!50001 DROP VIEW IF EXISTS `totalexpenses`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `totalexpenses` AS SELECT 
 1 AS `userID`,
 1 AS `Total Expenses`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `totalincomes`
--

DROP TABLE IF EXISTS `totalincomes`;
/*!50001 DROP VIEW IF EXISTS `totalincomes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `totalincomes` AS SELECT 
 1 AS `userID`,
 1 AS `Total Incomes`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `transactionhistoryall`
--

DROP TABLE IF EXISTS `transactionhistoryall`;
/*!50001 DROP VIEW IF EXISTS `transactionhistoryall`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `transactionhistoryall` AS SELECT 
 1 AS `userID`,
 1 AS `Type`,
 1 AS `Date`,
 1 AS `Notes`,
 1 AS `Categories`,
 1 AS `Amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `transactionhistoryday`
--

DROP TABLE IF EXISTS `transactionhistoryday`;
/*!50001 DROP VIEW IF EXISTS `transactionhistoryday`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `transactionhistoryday` AS SELECT 
 1 AS `userID`,
 1 AS `Type`,
 1 AS `Date`,
 1 AS `Amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `transactionhistorymonth`
--

DROP TABLE IF EXISTS `transactionhistorymonth`;
/*!50001 DROP VIEW IF EXISTS `transactionhistorymonth`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `transactionhistorymonth` AS SELECT 
 1 AS `userID`,
 1 AS `Type`,
 1 AS `Date`,
 1 AS `Month`,
 1 AS `Amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `transactionhistoryyear`
--

DROP TABLE IF EXISTS `transactionhistoryyear`;
/*!50001 DROP VIEW IF EXISTS `transactionhistoryyear`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `transactionhistoryyear` AS SELECT 
 1 AS `userID`,
 1 AS `Type`,
 1 AS `Year`,
 1 AS `Amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'catat_uang'
--

--
-- Final view structure for view `balances`
--

/*!50001 DROP VIEW IF EXISTS `balances`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `balances` AS select `du`.`ID` AS `userID`,concat('Rp. ',coalesce(sum(`di`.`Amount`),0) - coalesce(sum(`de`.`Amount`),0)) AS `Balances` from ((`datauser` `du` left join (select `dataincomes`.`userID` AS `userID`,sum(`dataincomes`.`Amount`) AS `Amount` from `dataincomes` group by `dataincomes`.`userID`) `di` on(`du`.`ID` = `di`.`userID`)) left join (select `dataexpenses`.`userID` AS `userID`,sum(`dataexpenses`.`Amount`) AS `Amount` from `dataexpenses` group by `dataexpenses`.`userID`) `de` on(`du`.`ID` = `de`.`userID`)) group by `du`.`ID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `expensepercategory`
--

/*!50001 DROP VIEW IF EXISTS `expensepercategory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `expensepercategory` AS select `dataexpenses`.`userID` AS `userID`,`dataexpenses`.`Categories` AS `Categories`,sum(`dataexpenses`.`Amount`) AS `Amount` from `dataexpenses` group by `dataexpenses`.`userID`,`dataexpenses`.`Categories` order by `dataexpenses`.`userID`,sum(`dataexpenses`.`Amount`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `incomepercategory`
--

/*!50001 DROP VIEW IF EXISTS `incomepercategory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `incomepercategory` AS select `dataincomes`.`userID` AS `userID`,`dataincomes`.`Categories` AS `Categories`,sum(`dataincomes`.`Amount`) AS `Amount` from `dataincomes` group by `dataincomes`.`userID`,`dataincomes`.`Categories` order by `dataincomes`.`userID`,sum(`dataincomes`.`Amount`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `totalexpenses`
--

/*!50001 DROP VIEW IF EXISTS `totalexpenses`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `totalexpenses` AS select `dataexpenses`.`userID` AS `userID`,concat('Rp. ',sum(`dataexpenses`.`Amount`)) AS `Total Expenses` from `dataexpenses` group by `dataexpenses`.`userID` order by `dataexpenses`.`userID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `totalincomes`
--

/*!50001 DROP VIEW IF EXISTS `totalincomes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `totalincomes` AS select `dataincomes`.`userID` AS `userID`,concat('Rp. ',sum(`dataincomes`.`Amount`)) AS `Total Incomes` from `dataincomes` group by `dataincomes`.`userID` order by `dataincomes`.`userID` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `transactionhistoryall`
--

/*!50001 DROP VIEW IF EXISTS `transactionhistoryall`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `transactionhistoryall` AS select `dataincomes`.`userID` AS `userID`,'Income' AS `Type`,`dataincomes`.`Date` AS `Date`,`dataincomes`.`Notes` AS `Notes`,`dataincomes`.`Categories` AS `Categories`,`dataincomes`.`Amount` AS `Amount` from `dataincomes` union select `dataexpenses`.`userID` AS `userID`,'Expense' AS `TYPE`,`dataexpenses`.`Date` AS `Date`,`dataexpenses`.`Notes` AS `Notes`,`dataexpenses`.`Categories` AS `Categories`,concat('-',`dataexpenses`.`Amount`) AS `Amount` from `dataexpenses` order by `userID`,`Date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `transactionhistoryday`
--

/*!50001 DROP VIEW IF EXISTS `transactionhistoryday`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `transactionhistoryday` AS select `dataincomes`.`userID` AS `userID`,'Income' AS `Type`,`dataincomes`.`Date` AS `Date`,sum(`dataincomes`.`Amount`) AS `Amount` from `dataincomes` group by `dataincomes`.`userID`,`dataincomes`.`Date` union select `dataexpenses`.`userID` AS `userID`,'Expense' AS `Type`,`dataexpenses`.`Date` AS `Date`,concat('-',sum(`dataexpenses`.`Amount`)) AS `Amount` from `dataexpenses` group by `dataexpenses`.`userID`,`dataexpenses`.`Date` order by `Date` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `transactionhistorymonth`
--

/*!50001 DROP VIEW IF EXISTS `transactionhistorymonth`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `transactionhistorymonth` AS select `dataincomes`.`userID` AS `userID`,'Income' AS `Type`,`dataincomes`.`Date` AS `Date`,concat(monthname(`dataincomes`.`Date`),', ',year(`dataincomes`.`Date`)) AS `Month`,sum(`dataincomes`.`Amount`) AS `Amount` from `dataincomes` group by `dataincomes`.`userID`,concat(monthname(`dataincomes`.`Date`),', ',year(`dataincomes`.`Date`)) union select `dataexpenses`.`userID` AS `userID`,'Expense' AS `Type`,`dataexpenses`.`Date` AS `Date`,concat(monthname(`dataexpenses`.`Date`),', ',year(`dataexpenses`.`Date`)) AS `MONTH`,concat('-',sum(`dataexpenses`.`Amount`)) AS `Amount` from `dataexpenses` group by `dataexpenses`.`userID`,concat(monthname(`dataexpenses`.`Date`),', ',year(`dataexpenses`.`Date`)) order by `userID`,year(`Date`) desc,month(`Date`) desc,`Type` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `transactionhistoryyear`
--

/*!50001 DROP VIEW IF EXISTS `transactionhistoryyear`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `transactionhistoryyear` AS select `dataincomes`.`userID` AS `userID`,'Income' AS `Type`,year(`dataincomes`.`Date`) AS `Year`,sum(`dataincomes`.`Amount`) AS `Amount` from `dataincomes` group by `dataincomes`.`userID`,year(`dataincomes`.`Date`) union select `dataexpenses`.`userID` AS `userID`,'Expense' AS `Type`,year(`dataexpenses`.`Date`) AS `Year`,concat('-',sum(`dataexpenses`.`Amount`)) AS `Amount` from `dataexpenses` group by `dataexpenses`.`userID`,year(`dataexpenses`.`Date`) order by `userID`,`Year` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-28 23:55:02
