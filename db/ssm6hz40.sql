-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssm6hz40
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Current Database: `ssm6hz40`
--

/*!40000 DROP DATABASE IF EXISTS `ssm6hz40`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssm6hz40` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssm6hz40`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/1648224982414.png'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiezhongtixing`
--

DROP TABLE IF EXISTS `jiezhongtixing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiezhongtixing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tixingneirong` longtext COMMENT '提醒内容',
  `tixingshijian` datetime DEFAULT NULL COMMENT '提醒时间',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648224950944 DEFAULT CHARSET=utf8 COMMENT='接种提醒';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiezhongtixing`
--

LOCK TABLES `jiezhongtixing` WRITE;
/*!40000 ALTER TABLE `jiezhongtixing` DISABLE KEYS */;
INSERT INTO `jiezhongtixing` VALUES (41,'2022-03-25 15:36:06','标题1','提醒内容1','2022-03-25 23:36:06','upload/jiezhongtixing_tupian1.jpg','账号1','姓名1',1),(42,'2022-03-25 15:36:06','标题2','提醒内容2','2022-03-25 23:36:06','upload/jiezhongtixing_tupian2.jpg','账号2','姓名2',2),(43,'2022-03-25 15:36:06','标题3','提醒内容3','2022-03-25 23:36:06','upload/jiezhongtixing_tupian3.jpg','账号3','姓名3',3),(44,'2022-03-25 15:36:06','标题4','提醒内容4','2022-03-25 23:36:06','upload/jiezhongtixing_tupian4.jpg','账号4','姓名4',4),(45,'2022-03-25 15:36:06','标题5','提醒内容5','2022-03-25 23:36:06','upload/jiezhongtixing_tupian5.jpg','账号5','姓名5',5),(46,'2022-03-25 15:36:06','标题6','提醒内容6','2022-03-25 23:36:06','upload/jiezhongtixing_tupian6.jpg','账号6','姓名6',6),(1648224950943,'2022-03-25 16:15:50','xxxx','<p>xxxx</p>','2022-03-26 00:14:43','upload/1648224948794.png','111','张三',1648224799429);
/*!40000 ALTER TABLE `jiezhongtixing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jiezhongyuyue`
--

DROP TABLE IF EXISTS `jiezhongyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jiezhongyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yimiaomingcheng` varchar(200) DEFAULT NULL COMMENT '疫苗名称',
  `yimiaozhonglei` varchar(200) DEFAULT NULL COMMENT '疫苗种类',
  `picihao` varchar(200) DEFAULT NULL COMMENT '批次号',
  `yuyueshijian` datetime DEFAULT NULL COMMENT '预约时间',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yimiaotupian` varchar(200) DEFAULT NULL COMMENT '疫苗图片',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648224841198 DEFAULT CHARSET=utf8 COMMENT='接种预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jiezhongyuyue`
--

LOCK TABLES `jiezhongyuyue` WRITE;
/*!40000 ALTER TABLE `jiezhongyuyue` DISABLE KEYS */;
INSERT INTO `jiezhongyuyue` VALUES (31,'2022-03-25 15:36:06','疫苗名称1','疫苗种类1','批次号1','2022-03-25 23:36:06','备注1','upload/jiezhongyuyue_yimiaotupian1.jpg','账号1','姓名1',1,1,'是','',1),(32,'2022-03-25 15:36:06','疫苗名称2','疫苗种类2','批次号2','2022-03-25 23:36:06','备注2','upload/jiezhongyuyue_yimiaotupian2.jpg','账号2','姓名2',2,2,'是','',2),(33,'2022-03-25 15:36:06','疫苗名称3','疫苗种类3','批次号3','2022-03-25 23:36:06','备注3','upload/jiezhongyuyue_yimiaotupian3.jpg','账号3','姓名3',3,3,'是','',3),(34,'2022-03-25 15:36:06','疫苗名称4','疫苗种类4','批次号4','2022-03-25 23:36:06','备注4','upload/jiezhongyuyue_yimiaotupian4.jpg','账号4','姓名4',4,4,'是','',4),(35,'2022-03-25 15:36:06','疫苗名称5','疫苗种类5','批次号5','2022-03-25 23:36:06','备注5','upload/jiezhongyuyue_yimiaotupian5.jpg','账号5','姓名5',5,5,'是','',5),(36,'2022-03-25 15:36:06','疫苗名称6','疫苗种类6','批次号6','2022-03-25 23:36:06','备注6','upload/jiezhongyuyue_yimiaotupian6.jpg','账号6','姓名6',6,6,'是','',6),(1648224841197,'2022-03-25 16:14:01','疫苗名称1','疫苗种类1','批次号1','2022-03-26 00:12:57','XXX','upload/yimiaoxinxi_yimiaotupian1.jpg','111','张三',1648224799429,21,'是','',1648224799429);
/*!40000 ALTER TABLE `jiezhongyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='疫情动态';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (61,'2022-03-25 15:36:06','有梦想，就要努力去实现','不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。','upload/news_picture1.jpg','<p>不管你想要怎样的生活，你都要去努力争取，不多尝试一些事情怎么知道自己适合什么、不适合什么呢?</p><p>你说你喜欢读书，让我给你列书单，你还问我哪里有那么多时间看书;你说自己梦想的职业是广告文案，问我如何成为一个文案，应该具备哪些素质;你说你计划晨跑，但总是因为学习、工作辛苦或者身体不舒服第二天起不了床;你说你一直梦想一个人去长途旅行，但是没钱，父母觉得危险。其实，我已经厌倦了你这样说说而已的把戏，我觉得就算我告诉你如何去做，你也不会照做，因为你根本什么都不做。</p><p>真正有行动力的人不需要别人告诉他如何做，因为他已经在做了。就算碰到问题，他也会自己想办法，自己动手去解决或者主动寻求可以帮助他的人，而不是等着别人为自己解决问题。</p><p>首先要学习独立思考。花一点时间想一下自己喜欢什么，梦想是什么，不要别人说想环游世界，你就说你的梦想是环游世界。</p><p>很多人说现实束缚了自己，其实在这个世界上，我们一直都可以有很多选择，生活的决定权也—直都在自己手上，只是我们缺乏行动力而已。</p><p>如果你觉得安于现状是你想要的，那选择安于现状就会让你幸福和满足;如果你不甘平庸，选择一条改变、进取和奋斗的道路，在这个追求的过程中，你也一样会感到快乐。所谓的成功，即是按照自己想要的生活方式生活。最糟糕的状态，莫过于当你想要选择一条不甘平庸、改变、进取和奋斗的道路时，却以一种安于现状的方式生活，最后抱怨自己没有得到想要的人生。</p><p>因为喜欢，你不是在苦苦坚持，也因为喜欢，你愿意投入时间、精力，长久以往，获得成功就是自然而然的事情。</p>'),(62,'2022-03-25 15:36:06','又是一年毕业季','又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。','upload/news_picture2.jpg','<p>又是一年毕业季，感慨万千，还记的自己刚进学校那时候的情景，我拖着沉重的行李箱站在偌大的教学楼前面，感叹自己未来的日子即将在这个陌生的校园里度过，而如今斗转星移，浮光掠影，弹指之间，那些青葱岁月如同白驹过隙般悄然从指缝溜走。</p><p>过去的种种在胸口交集纠结，像打翻的五味瓶，甜蜜，酸楚，苦涩，一并涌上心头。一直都是晚会的忠实参与者，无论是台前还是幕后，忽然间，角色转变，那种感觉确实难以用语言表达。</p><p>	过去的三年，总是默默地期盼着这个好雨时节，因为这时候，会有灿烂的阳光，会有满目的百花争艳，会有香甜的冰激凌，这是个毕业的季节，当时不经世事的我们会殷切地期待学校那一大堆的活动，期待穿上绚丽的演出服或者礼仪服，站在大礼堂镁光灯下尽情挥洒我们的澎拜的激情。</p><p>百感交集，隔岸观火与身临其境的感觉竟是如此不同。从来没想过一场晚会送走的是我们自己的时候会是怎样的感情，毕业就真的意味着结束吗?倔强的我们不愿意承认，谢谢学弟学妹们慷慨的将这次的主题定为“我们在这里”。我知道，这可能是他们对我们这些过来人的尊敬和施舍。</p><p>没有为这场晚会排练、奔波，没有为班级、学生会、文学院出点力，还真有点不习惯，百般无奈中，用“工作忙”个万能的借口来搪塞自己，欺骗别人。其实自己心里明白，那只是在逃避，只是不愿面对繁华落幕后的萧条和落寞。大四了，大家各奔东西，想凑齐班上的人真的是难上加难，敏燕从越南回来，刚落地就匆匆回了学校，那么恋家的人也启程回来了，睿睿学姐也是从家赶来跟我们团圆。大家—如既往的寒暄、打趣、调侃对方，似乎一切又回到了当初的单纯美好。</p><p>看着舞台上活泼可爱的学弟学妹们，如同一群机灵的小精灵，清澈的眼神，稚嫩的肢体，轻快地步伐，用他们那热情洋溢的舞姿渲染着在场的每一个人，我知道，我不应该羡慕嫉妒他们，不应该顾自怜惜逝去的青春，不应该感叹夕阳无限好，曾经，我们也拥有过，曾经，我们也年轻过，曾经，我们也灿烂过。我深深地告诉自己，人生的每个阶段都是美的，年轻有年轻的活力，成熟也有成熟的魅力。多—份稳重、淡然、优雅，也是漫漫时光掠影遗留下的.珍贵赏赐。</p>'),(63,'2022-03-25 15:36:06','挫折路上，坚持常在心间','回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。','upload/news_picture3.jpg','<p>回头看看，你会不会发现，曾经的你在这里摔倒过;回头看看，你是否发现，一次次地重复着，却从没爬起过。而如今，让我们把视线转向前方，那一道道金色的弧线，是流星飞逝的痕迹，或是成功运行的轨道。今天的你，是否要扬帆起航，让幸福来敲门?</p><p>清晨的太阳撒向大地，神奇的宇宙赋予它神奇的色彩，大自然沐浴着春光，世界因太阳的照射而精彩，林中百鸟啾啾，河水轻轻流淌，汇成清宁的山间小调。</p><p>是的，面对道途上那无情的嘲讽，面对步伐中那重复的摔跤，面对激流与硬石之间猛烈的碰撞，我们必须选择那富于阴雨，却最终见到彩虹的荆棘路。也许，经历了那暴风雨的洗礼，我们便会变得自信，幸福也随之而来。</p><p>司马迁屡遭羞辱，却依然在狱中撰写《史记》，作为一名史学家，不因王权而极度赞赏，也不因卑微而极度批判，然而他在坚持自己操守的同时，却依然要受统治阶级的阻碍，他似乎无权选择自己的本职。但是，他不顾于此，只是在面对道途的阻隔之时，他依然选择了走下去的信念。终于一部开山巨作《史记》诞生，为后人留下一份馈赠，也许在他完成毕生的杰作之时，他微微地笑了，没有什么比梦想实现更快乐的了......</p><p>	或许正如“长风破浪会有时，直挂云帆济沧海”一般，欣欣然地走向看似深渊的崎岖路，而在一番耕耘之后，便会发现这里另有一番天地。也许这就是困难与快乐的交融。</p><p>也许在形形色色的社会中，我们常能看到一份坚持，一份自信，但这里却还有一类人。这类人在暴风雨来临之际，只会闪躲，从未懂得这也是一种历炼，这何尝不是一份快乐。在阴暗的角落里，总是独自在哭，带着伤愁，看不到一点希望。</p><p>我们不能堕落于此，而要像海燕那般，在苍茫的大海上，高傲地飞翔，任何事物都无法阻挡，任何事都是幸福快乐的。</p>'),(64,'2022-03-25 15:36:06','挫折是另一个生命的开端','当遇到挫折或失败，你是看见失败还是看见机会?挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。','upload/news_picture4.jpg','<p>当遇到挫折或失败，你是看见失败还是看见机会?</p><p>挫折是我们每个人成长的必经之路，它不是你想有就有，想没有就没有的。有句名言说的好，如果你想一生摆脱苦难，你就得是神或者是死尸。这句话形象地说明了挫折是伴随着人生的，是谁都逃不掉的。</p><p>人生在世，从古到今，不分天子平民，机遇虽有不同，但总不免有身陷困境或遭遇难题之处，这时候唯有通权达变，才能使人转危为安，甚至反败为胜。</p><p>大部分的人，一生当中，最痛苦的经验是失去所爱的人，其次是丢掉一份工作。其实，经得起考验的人，就算是被开除也不会惊慌，要学会面对。</p><p>	“塞翁失马，焉知非福。”人生的道路，并不是每一步都迈向成功，这就是追求的意义。我们还要认识到一点，挫折作为一种情绪状态和一种个人体验，各人的耐受性是大不相同的，有的人经历了一次次挫折，就能够坚忍不拔，百折不挠;有的人稍遇挫折便意志消沉，一蹶不振。所以，挫折感是一种主观感受，因为人的目的和需要不同，成功标准不同，所以同一种活动对于不同的人可能会造成不同的挫折感受。</p><p>凡事皆以平常心来看待，对于生命顺逆不要太执著。能够“破我执”是很高层的人生境界。</p><p>人事的艰难就是一种考验。就像—支剑要有磨刀来磨，剑才会利:一块璞玉要有粗石来磨，才会发出耀眼的光芒。我们能够做到的，只是如何减少、避免那些由于自身的原因所造成的挫折，而在遇到痛苦和挫折之后，则力求化解痛苦，争取幸福。我们要知道，痛苦和挫折是双重性的，它既是我们人生中难以完全避免的，也是我们在争取成功时，不可缺少的一种动力。因为我认为，推动我们奋斗的力量，不仅仅是对成功的渴望，还有为摆脱痛苦和挫折而进行的奋斗。</p>'),(65,'2022-03-25 15:36:06','你要去相信，没有到不了的明天','有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。','upload/news_picture5.jpg','<p>有梦想就去努力，因为在这一辈子里面，现在不去勇敢的努力，也许就再也没有机会了。你要去相信，一定要相信，没有到不了的明天。不要被命运打败，让自己变得更强大。</p><p>不管你现在是一个人走在异乡的街道上始终没有找到一丝归属感，还是你在跟朋友们一起吃饭开心址笑着的时候闪过一丝落寞。</p><p>	不管你现在是在图书馆里背着怎么也看不进去的英语单词，还是你现在迷茫地看不清未来的方向不知道要往哪走。</p><p>不管你现在是在努力着去实现梦想却没能拉近与梦想的距离，还是你已经慢慢地找不到自己的梦想了。</p><p>你都要去相信，没有到不了的明天。</p><p>	有的时候你的梦想太大，别人说你的梦想根本不可能实现;有的时候你的梦想又太小，又有人说你胸无大志;有的时候你对死党说着将来要去环游世界的梦想，却换来他的不屑一顾，于是你再也不提自己的梦想;有的时候你突然说起将来要开个小店的愿望，却发现你讲述的那个人，并没有听到你在说什么。</p><p>不过又能怎么样呢，未来始终是自己的，梦想始终是自己的，没有人会来帮你实现它。</p><p>也许很多时候我们只是需要朋友的一句鼓励，一句安慰，却也得不到。但是相信我，世界上还有很多人，只是想要和你说说话。</p><p>因为我们都一样。一样的被人说成固执，一样的在追逐他们眼里根本不在意的东西。</p><p>所以，又有什么关系呢，别人始终不是你、不能懂你的心情，你又何必多去解释呢。这个世界会来阻止你，困难也会接踵而至，其实真正关键的只有自己，有没有那个倔强。</p><p>这个世界上没有不带伤的人，真正能治愈自己的，只有自己。</p>'),(66,'2022-03-25 15:36:06','离开是一种痛苦，是一种勇气，但同样也是一个考验，是一个新的开端','无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。','upload/news_picture6.jpg','<p>无穷无尽是离愁，天涯海角遍寻思。当离别在即之时，当面对着相濡以沫兄弟般的朋友时，当面对着经历了四年的磨合而形成的真挚友谊之时，我内心激动无语，说一声再见，道一声珍重都很难出口。回想自己四年大学的风风雨雨，回想我们曾经共同经历的岁月流年，我感谢大家的相扶相依，感谢朋友们的莫大支持与帮助。虽然舍不得，但离别的脚步却不因我们的挚情而停滞。离别的确是一种痛苦，但同样也是我们走入社会，走向新环境、新领域的一个开端，希望大家在以后新的工作岗位上能够确定自己的新起点，坚持不懈，向着更新、更高的目标前进，因为人生最美好的东西永远都在最前方!</p><p>忆往昔峥嵘岁月，看今朝潮起潮落，望未来任重而道远。作为新时代的我们，就应在失败时，能拼搏奋起，去谱写人生的辉煌。在成功时，亦能居安思危，不沉湎于一时的荣耀、鲜花和掌声中，时时刻刻怀着一颗积极寻找自己新的奶酪的心，处变不惊、成败不渝，始终踏着自己坚实的步伐，从零开始，不断向前迈进，这样才能在这风起云涌、变幻莫测的社会大潮中成为真正的弄潮儿!</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1648224799429,'111','yonghu','用户','et7251tc2de50badms5f5y4tlllimcz0','2022-03-25 16:13:22','2022-03-25 17:16:55'),(2,1,'abo','users','管理员','1o63l78b9y90et5lmfl6kuuoxlj0gr60','2022-03-25 16:15:10','2022-03-25 17:15:10');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-25 15:36:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yimiaoxinxi`
--

DROP TABLE IF EXISTS `yimiaoxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yimiaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yimiaomingcheng` varchar(200) DEFAULT NULL COMMENT '疫苗名称',
  `yimiaozhonglei` varchar(200) DEFAULT NULL COMMENT '疫苗种类',
  `picihao` varchar(200) DEFAULT NULL COMMENT '批次号',
  `youxiaoqi` varchar(200) DEFAULT NULL COMMENT '有效期',
  `shengchanshang` varchar(200) DEFAULT NULL COMMENT '生产商',
  `yimiaoyuliang` int(11) DEFAULT NULL COMMENT '疫苗余量',
  `zhuyishixiang` longtext COMMENT '注意事项',
  `yimiaotupian` varchar(200) DEFAULT NULL COMMENT '疫苗图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648224934148 DEFAULT CHARSET=utf8 COMMENT='疫苗信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yimiaoxinxi`
--

LOCK TABLES `yimiaoxinxi` WRITE;
/*!40000 ALTER TABLE `yimiaoxinxi` DISABLE KEYS */;
INSERT INTO `yimiaoxinxi` VALUES (21,'2022-03-25 15:36:06','疫苗名称1','疫苗种类1','批次号1','有效期1','生产商1',1,'注意事项1','upload/yimiaoxinxi_yimiaotupian1.jpg'),(22,'2022-03-25 15:36:06','疫苗名称2','疫苗种类2','批次号2','有效期2','生产商2',2,'注意事项2','upload/yimiaoxinxi_yimiaotupian2.jpg'),(23,'2022-03-25 15:36:06','疫苗名称3','疫苗种类3','批次号3','有效期3','生产商3',3,'注意事项3','upload/yimiaoxinxi_yimiaotupian3.jpg'),(24,'2022-03-25 15:36:06','疫苗名称4','疫苗种类4','批次号4','有效期4','生产商4',4,'注意事项4','upload/yimiaoxinxi_yimiaotupian4.jpg'),(25,'2022-03-25 15:36:06','疫苗名称5','疫苗种类5','批次号5','有效期5','生产商5',5,'注意事项5','upload/yimiaoxinxi_yimiaotupian5.jpg'),(26,'2022-03-25 15:36:06','疫苗名称6','疫苗种类6','批次号6','有效期6','生产商6',6,'注意事项6','upload/yimiaoxinxi_yimiaotupian6.jpg'),(1648224934147,'2022-03-25 16:15:33','xxxxx','xxx','xxx','xxx','xxx',20,'xxxx','upload/1648224932418.png');
/*!40000 ALTER TABLE `yimiaoxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `dizhi` varchar(200) DEFAULT NULL COMMENT '地址',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1648224799430 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2022-03-25 15:36:06','账号1','123456','姓名1','男','13823888881','地址1','440300199101010001','upload/yonghu_touxiang1.jpg'),(12,'2022-03-25 15:36:06','账号2','123456','姓名2','男','13823888882','地址2','440300199202020002','upload/yonghu_touxiang2.jpg'),(13,'2022-03-25 15:36:06','账号3','123456','姓名3','男','13823888883','地址3','440300199303030003','upload/yonghu_touxiang3.jpg'),(14,'2022-03-25 15:36:06','账号4','123456','姓名4','男','13823888884','地址4','440300199404040004','upload/yonghu_touxiang4.jpg'),(15,'2022-03-25 15:36:06','账号5','123456','姓名5','男','13823888885','地址5','440300199505050005','upload/yonghu_touxiang5.jpg'),(16,'2022-03-25 15:36:06','账号6','123456','姓名6','男','13823888886','地址6','440300199606060006','upload/yonghu_touxiang6.jpg'),(1648224799429,'2022-03-25 16:13:19','111','111','张三','男','18154541454','XXX','441454145414541452','upload/1648224857402.png');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yuyuefenpei`
--

DROP TABLE IF EXISTS `yuyuefenpei`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yuyuefenpei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yimiaomingcheng` varchar(200) DEFAULT NULL COMMENT '疫苗名称',
  `yimiaozhonglei` varchar(200) DEFAULT NULL COMMENT '疫苗种类',
  `picihao` varchar(200) DEFAULT NULL COMMENT '批次号',
  `jiezhongdidian` varchar(200) DEFAULT NULL COMMENT '接种地点',
  `yimiaoyuliang` int(11) DEFAULT NULL COMMENT '疫苗余量',
  `yimiaotupian` varchar(200) DEFAULT NULL COMMENT '疫苗图片',
  `fenpeishijian` datetime DEFAULT NULL COMMENT '分配时间',
  `fenpeishuoming` varchar(200) DEFAULT NULL COMMENT '分配说明',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1648224963510 DEFAULT CHARSET=utf8 COMMENT='预约分配';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yuyuefenpei`
--

LOCK TABLES `yuyuefenpei` WRITE;
/*!40000 ALTER TABLE `yuyuefenpei` DISABLE KEYS */;
INSERT INTO `yuyuefenpei` VALUES (51,'2022-03-25 15:36:06','疫苗名称1','疫苗种类1','批次号1','接种地点1',1,'upload/yuyuefenpei_yimiaotupian1.jpg','2022-03-25 23:36:06','分配说明1','账号1','姓名1',1),(52,'2022-03-25 15:36:06','疫苗名称2','疫苗种类2','批次号2','接种地点2',2,'upload/yuyuefenpei_yimiaotupian2.jpg','2022-03-25 23:36:06','分配说明2','账号2','姓名2',2),(53,'2022-03-25 15:36:06','疫苗名称3','疫苗种类3','批次号3','接种地点3',3,'upload/yuyuefenpei_yimiaotupian3.jpg','2022-03-25 23:36:06','分配说明3','账号3','姓名3',3),(54,'2022-03-25 15:36:06','疫苗名称4','疫苗种类4','批次号4','接种地点4',4,'upload/yuyuefenpei_yimiaotupian4.jpg','2022-03-25 23:36:06','分配说明4','账号4','姓名4',4),(55,'2022-03-25 15:36:06','疫苗名称5','疫苗种类5','批次号5','接种地点5',5,'upload/yuyuefenpei_yimiaotupian5.jpg','2022-03-25 23:36:06','分配说明5','账号5','姓名5',5),(56,'2022-03-25 15:36:06','疫苗名称6','疫苗种类6','批次号6','接种地点6',6,'upload/yuyuefenpei_yimiaotupian6.jpg','2022-03-25 23:36:06','分配说明6','账号6','姓名6',6),(1648224963509,'2022-03-25 16:16:03','疫苗名称1','疫苗种类1','批次号1','xxxxx',20,'upload/yimiaoxinxi_yimiaotupian1.jpg','2022-03-30 00:00:00','xxxxx','111','张三',1648224799429);
/*!40000 ALTER TABLE `yuyuefenpei` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-26 17:48:40
