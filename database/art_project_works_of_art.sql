-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: art_project
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `works_of_art`
--

DROP TABLE IF EXISTS `works_of_art`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `works_of_art` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(55) DEFAULT NULL,
  `ARTIST` varchar(55) DEFAULT NULL,
  `DATE` varchar(50) DEFAULT NULL,
  `IMAGE_URL` varchar(2500) DEFAULT NULL,
  `MOVEMENT` int(11) DEFAULT NULL,
  `DESCRIPTION` varchar(5000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works_of_art`
--

LOCK TABLES `works_of_art` WRITE;
/*!40000 ALTER TABLE `works_of_art` DISABLE KEYS */;
INSERT INTO `works_of_art` VALUES (1,'Mona Lisa','Leonardo da Vinci','1503','https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg/1200px-Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg',1,'The painting Mona Lisa by Leonardo Da Vinci is one of the most famous and recognized paintings in history. Unarguably it is the most discussed painting because of the enigmatic smile. There have been many discussions about the smile of Mona Lisa, whether she is smiling or not. The major feature of this painting is that Da Vinci has painted her eyes in such a way that even when you change the angle of the view, the eyes of Mona Lisa seems to always follow you. The painting is done in oil on wood and is presently under the ownership of the Government of France. Mona Lisa is exhibited in Louvre, Paris and it belongs to the public, which means that it cannot be bought or sold.'),(2,'Primavera','Sandro Botticelli','1482','https://upload.wikimedia.org/wikipedia/commons/thumb/3/3c/Botticelli-primavera.jpg/445px-Botticelli-primavera.jpg',1,'The word means spring in Italian. Primavera is a painting of Sandro Botticelli whose original name was Alessandro di Mariano Filipepi. The painting is also known as \'Allegory of Spring\'. It is believed that Botticelli is created this piece of art around 1482 and is said to be one of the prime examples of Renaissance art. Many have attempted to interpret the painting and many have come up with explanations. Some say it is a mythical allegory while some say it is about the change of season into spring. This painting is popular because of the use of color and different explanations attached to it. Primavera is believed to be the most controversial painting in the world.'),(3,'The Creation of Adam','Michelangelo Buonarroti','1512','https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/%27Adam%27s_Creation_Sistine_Chapel_ceiling%27_by_Michelangelo_JBU33cut.jpg/600px-%27Adam%27s_Creation_Sistine_Chapel_ceiling%27_by_Michelangelo_JBU33cut.jpg',1,'Created in 1512, this is one of the iconic paintings of Michelangelo. The creation of Adam is the painting on the ceiling of the Sistine Chapel. Even though this is one of the most replicated paintings of all time, it is only second in popularity to Mona Lisa. The painting has become a symbol of humanity as the image depicts the hand of both God and Adam on the verge of touching.'),(4,'The Last Supper','Leonardo Da Vinci','1498','https://cdn.shopify.com/s/files/1/1414/2472/files/4-_640px-Ultima_Cena_-_Da_Vinci_5-compressor.jpg?v=1558424856',1,'Considered to be the best artwork by Leonardo Da Vinci in 1498, the Last Supper is an important painting of the Renaissance period. The image shows Jesus with his disciples for his last supper. The painting is noted for its clever use of color, light, and anatomy. The painting is also a subject of many discussions and conjectures. Many have proposed that the disciple sitting to the right of Jesus is Mary Magdalene and many have also wondered the significance or meaning of the V shape between Jesus and the person on the right. Despite all the conjectures, the Last Supper is one of the masterpieces by Leonardo Da Vinci.'),(5,'The School of Athens','Raphael','1511','https://cdn.shopify.com/s/files/1/1414/2472/files/5-The_School_of_Athens__by_Raffaello_Sanzio_da_Urbino.jpg?v=1558424890',1,'Painted in 1511, it stands one among the four main frescos on the walls of Apostolic Palace in the Vatican. The four frescos symbolize Philosophy, Poetry, Theology, and Law. The painting symbolizes philosophy because it is said the painting is a representation of the finest period of Greek Philosophy as one can find Aristotle and Plato in the center of the painting. This painting has perfectly captured the classical spirit of the Renaissance.'),(6,'The Kiss of Judas','Giotto di Bondone','1306','https://cdn.shopify.com/s/files/1/1414/2472/files/6-Giotto_-_Scrovegni_-_-31-_-_Kiss_of_Judas-compressor.jpg?v=1558424997',1,'Painted in the year 1306 by Giotto di Bondone, this painting depicts the moment of betrayal of Jesus by Judas Iscariot who identifies Jesus to the Roman soldiers by kissing him. The Scrovegni Chapel is home to the fresco cycle by Giotto di Bondone, and the Kiss of Judas is the most famous painting in the cycle. Many critics believe that Giotto is a genius and no artist has been able to surpass his work. His mastery is evident in the way he captured the expression of Jesus and Judas at that scene of betrayal.'),(8,'Sistine Madonna','Raphael','1512','https://cdn.shopify.com/s/files/1/1414/2472/files/8-657px-RAFAEL_-_Madonna_Sixtina__Gemaldegalerie_Alter_Meister__Dresden__1513-14._Oleo_sobre_lienzo__265_x_196_cm.jpg?v=1558428497',1,'Raffaello Sanzio popularly known as Raphael painted the Sistine Madonna in 1512. The painting shows Mother Mary holding baby Jesus in her hands with Saint Barbara and Saint Sixtus on both her sides and two cherubs beneath her. This is one of the most famous works of Raphael and important painting of the Renaissance.'),(10,'The Birth of Venus','Sandro Botticelli','1485','https://cdn.shopify.com/s/files/1/1414/2472/files/10-1200px-Sandro_Botticelli_-_La_nascita_di_Venere_-_Google_Art_Project_-_edited.jpg?v=1558428557',1,'Created in 1485, the painting shows Goddess Venus arriving on the island of Cyprus. She is depicted as a pure and mature woman standing on a seashell. Botticelli had given much attention to every detail of Venus. This painting was done in a period where nudity was a subject in paintings and thus makes this one an important painting of the Renaissance.'),(12,'Annunciation','Leonardo da Vinci','1475','https://imgix.ranker.com/node_img/149/2961369/original/annunciation-artwork-photo-1?w=650&q=50&fm=pjpg&fit=crop&crop=faces',1,'Leonardo da Vinci\'s painting The Annunciation captures many of the most common and symbolically charged motifs of the well-known biblical story. Mary is visited by an angel as she sits inside a walled garden before a Renaissance palace, evoking the hortus conclusus (enclosed garden) that alludes to her purity.'),(13,'Bacchus and Ariadne','Titian','1520','https://imgix.ranker.com/node_img/27/529392/original/bacchus-and-ariadne-artwork-photo-1?w=650&q=50&fm=pjpg&fit=crop&crop=faces',1,'Bacchus and Ariadne illustrates mythological texts by the Latin poets Catullus and Ovid, which Titian would have been required to read. They refer to the story of Princess Ariadne, who, in love with the hero Theseus, helped him to kill the Minotaur at the palace of Knossos on the island of Crete.'),(14,'Christ among the Doctors','Albrecht Dürer','1506','https://imgix.ranker.com/node_img/943/18853394/original/christ-among-the-doctors-artwork-photo-1?w=650&q=50&fm=pjpg&fit=crop&crop=faces',1,'Christ among the Doctors (1506) was executed by Albrecht Dürer during his second trip to Italy. The panel depicts an episode from the life of Christ - at age twelve, young Jesus goes along with Joseph and Mary on a pilgrimage to Jerusalem. Jesus lingers at the temple and is later found in discussion with the elders of the temple. The painting contains a Latin inscription, located on a page slip in the book held by the elder on the left: Opus quinque dierum, meaning “work executed in five days”. Scholars agree that this refers to the swift execution of the painting, which has a base of tempera and a thin coat of oil paint.'),(15,'Doni Tondo','Michelangelo','1504','https://imgix.ranker.com/node_img/44/877329/original/doni-tondo-artwork-photo-1?w=650&q=60&fm=pjpg&fit=crop&crop=faces',1,'The Doni Tondo or Doni Madonna, is the only finished panel painting by the mature Michelangelo to survive. ... The painting is in the form of a tondo, meaning in Italian, \'round\', a shape which is frequently associated during the Renaissance with domestic ideas.');
/*!40000 ALTER TABLE `works_of_art` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-24 16:47:55
