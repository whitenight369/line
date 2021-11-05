/*
SQLyog Enterprise - MySQL GUI v6.15
MySQL - 5.5.5-10.4.11-MariaDB : Database - leave_message
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `leave_message`;

USE `leave_message`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `admins` */

DROP TABLE IF EXISTS `admins`;

CREATE TABLE `admins` (
  `adminsId` int(11) NOT NULL AUTO_INCREMENT,
  `admins` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`adminsId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `admins` */

insert  into `admins`(`adminsId`,`admins`,`pwd`) values (1,'bainian','e10adc3949ba59abbe56e057f20f883e'),(2,'chenghui','e10adc3949ba59abbe56e057f20f883e');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `messageId` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `face` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1.gif',
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `addTime` datetime NOT NULL,
  `sh` smallint(2) NOT NULL DEFAULT 0,
  `reply` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zan` varchar(9) COLLATE utf8_unicode_ci DEFAULT '0',
  `top` smallint(2) DEFAULT 0,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `messages` */

insert  into `messages`(`messageId`,`author`,`face`,`title`,`content`,`addTime`,`sh`,`reply`,`zan`,`top`) values (19,'Faker','6.png','S6','输的时候，你说什么都像是借口！','2021-10-11 15:29:30',1,NULL,'0',1),(20,'ambition','1.png','s3','你不在上帝眷顾的名单里，但是你可以通过努力让上帝看到你。','2021-10-11 15:30:06',1,NULL,'0',0),(21,'刘晓燕','1.png','大雁南飞','真正的勇者不是流泪的人，是含泪奔跑的人。','2021-10-11 15:30:26',1,NULL,'1',0),(22,'pdd','1.png','2021','你一个上山的人凭什么瞧不起一个下山的神。','2021-10-11 15:30:54',1,NULL,'1',0),(23,'Do id','1.png','','如果你一辈子只有一次机会去翻身，那么你一定要去拼尽全力而不是最后才说我再努力一点就好了。','2021-10-11 15:31:28',1,NULL,'0',0),(24,'非榆晚桑','1.png','丸','人世间哪有那么多天才，就算碰上了，还是有很多人比你优秀，你只不过是没看到人家拼命的样子。你凭什么说你会比人家过得好。','2021-10-11 15:32:44',1,NULL,'1',0),(26,'1','3.png','三大错觉','1:你以为你喜欢的人也喜欢你 \r\n2:你以为你不会沦为普通人 \r\n3:你以为时间还很多。','2021-10-11 15:34:24',1,NULL,'0',0),(27,'小闭崽子','5.png','网抑云','半岁以内的宝宝喉部瓣膜很特殊，婴儿如果在水里的话，瓣膜就会自动将气道关闭，孩子是不会呛水的，一般我们称这种小孩叫做小闭崽子。','2021-10-11 15:35:04',1,NULL,'0',0),(28,'少年','1.png','加油吧','生活嘛，笑一笑就好了，只要你不认怂，生活就没法撂倒你，你又不差，加油！','2021-10-11 15:35:27',1,NULL,'1',0),(32,'网易云','1.png','2021/10/10','在最黑暗的那段人生，是我自己把自己拉出深渊。没有那个人，我就去做那个人。','2021-10-11 15:37:25',1,NULL,'9',0),(38,'网抑云','1.png','2021/9/27','心理学上说当你梦到一个人不是她在想你，也不是她在遗忘你，而是在你的潜意识里一直有她，于是以梦的形式告诉你，你一直都在想她从未放下过，频繁出现在你梦里的人是你的身体感觉到了思念，替你见了一面你朝思暮想的人。','2021-10-12 21:13:39',1,NULL,'0',1),(40,'僵小鱼','1.png','加油','哪有那么多天才  只不过是人家努力的时候你没看到而已。','2021-10-13 11:14:25',1,'dsadasdas','1',0),(43,'SDASDA','1.png','QWEQWDA','SDASDASDASDA','2021-11-05 11:38:51',1,NULL,'0',0),(44,'','1.png','奥术大师','','2021-11-05 16:06:10',0,NULL,'0',0),(45,'21432','1.png','撒大声地','大三大四大','2021-11-05 16:08:27',0,NULL,'0',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
