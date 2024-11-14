/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xinshengbaodao
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xinshengbaodao` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xinshengbaodao`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-05-06 11:11:41'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-05-06 11:11:41'),(3,'xueyuan_types','学院类型名称',1,'法学院',NULL,'2021-05-06 11:11:41'),(4,'xueyuan_types','学院类型名称',2,'经济与管理学院',NULL,'2021-05-06 11:11:41'),(5,'xueyuan_types','学院类型名称',3,'教育科学学院',NULL,'2021-05-06 11:11:41'),(6,'zhuanye_types','专业类型名称',1,'国际经贸规则专业',NULL,'2021-05-06 11:11:41'),(7,'zhuanye_types','专业类型名称',2,'司法警察学专业',NULL,'2021-05-06 11:11:41'),(8,'zhuanye_types','专业类型名称',3,'社会政策专业',NULL,'2021-05-06 11:11:41'),(9,'banji_types','班级类型名称',1,'一班',NULL,'2021-05-06 11:11:41'),(10,'banji_types','班级类型名称',2,'二班',NULL,'2021-05-06 11:11:41'),(11,'banji_types','班级类型名称',3,'三班',NULL,'2021-05-06 11:11:41'),(12,'yonghu_yesno_types','是否报道',1,'未报到',NULL,'2021-05-06 11:11:41'),(13,'yonghu_yesno_types','是否报道',2,'已报到',NULL,'2021-05-06 11:11:41'),(14,'jiaofei_types','缴费类型名称',1,'住宿费用',NULL,'2021-05-06 11:11:41'),(15,'jiaofei_types','缴费类型名称',2,'电费',NULL,'2021-05-06 11:11:41'),(16,'jiaofei_types','缴费类型名称',3,'工本费',NULL,'2021-05-06 11:11:41'),(17,'jiaofei_types','缴费类型名称',4,'学费',NULL,'2021-05-06 11:11:41'),(18,'gonggao_types','公告类型名称',1,'日常公告',NULL,'2021-05-06 11:11:41'),(19,'gonggao_types','公告类型名称',2,'紧急公告',NULL,'2021-05-06 11:11:41'),(20,'fudaoyuan_types','辅导员名字名称',1,'张三',NULL,'2021-05-06 11:26:16'),(21,'fudaoyuan_types','辅导员名字名称',2,'王五',NULL,'2021-05-06 11:26:16'),(22,'fudaoyuan_types','辅导员名字名称',3,'赵六',NULL,'2021-05-06 11:26:16'),(23,'fudaoyuan_types','辅导员名字名称',4,'呼气',NULL,'2021-05-06 14:36:11'),(24,'zhuanye_types','专业类型名称',4,'专业4',NULL,'2021-05-06 14:40:51');

/*Table structure for table `fuzeren` */

DROP TABLE IF EXISTS `fuzeren`;

CREATE TABLE `fuzeren` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `fuzeren_name` varchar(200) DEFAULT NULL COMMENT '负责人姓名 Search111 ',
  `fuzeren_phone` varchar(200) DEFAULT NULL COMMENT '负责人手机号 Search111 ',
  `fuzeren_id_number` varchar(200) DEFAULT NULL COMMENT '负责人身份证号 Search111 ',
  `fuzeren_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='负责人';

/*Data for the table `fuzeren` */

insert  into `fuzeren`(`id`,`username`,`password`,`fuzeren_name`,`fuzeren_phone`,`fuzeren_id_number`,`fuzeren_photo`,`sex_types`,`create_time`) values (25,'a11','123456','张11','17703786911','410224199610232011','http://localhost:8080/xinshengbaodao/file/download?fileName=1620281808365.jpg',2,'2021-05-06 14:16:51'),(26,'a22','123456','张22','17703786922','410224199610232022','http://localhost:8080/xinshengbaodao/file/download?fileName=1620283119720.jpg',2,'2021-05-06 14:38:41');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111 ',
  `gonggao_types` int(11) DEFAULT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `gonggao_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (3,'公告1',1,'2021-05-06 14:32:41','公告1的详情\r\n','2021-05-06 14:32:41'),(4,'公告2',1,'2021-05-06 14:32:50','公告2的详情\r\n','2021-05-06 14:32:50'),(5,'公告3',2,'2021-05-06 14:40:18','公告3的详情\r\n','2021-05-06 14:40:18');

/*Table structure for table `jiaofei` */

DROP TABLE IF EXISTS `jiaofei`;

CREATE TABLE `jiaofei` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `jiaofei_name` varchar(200) DEFAULT NULL COMMENT '缴费名目 Search111 ',
  `jiaofei_types` int(11) DEFAULT NULL COMMENT '缴费类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `jiaofei_yingjiao_money` decimal(10,4) DEFAULT NULL COMMENT '应缴金额',
  `jiaofei_shishou_money` decimal(10,4) DEFAULT NULL COMMENT '实收金额',
  `jiaofei_content` text COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='缴费';

/*Data for the table `jiaofei` */

insert  into `jiaofei`(`id`,`yonghu_id`,`jiaofei_name`,`jiaofei_types`,`insert_time`,`jiaofei_yingjiao_money`,`jiaofei_shishou_money`,`jiaofei_content`,`create_time`) values (3,25,'2021年上半年学费',4,'2021-05-06 14:32:27','1000.0000',NULL,'','2021-05-06 14:32:27'),(4,27,'2021年1月份电费',2,'2021-05-06 14:39:59','100.0000','100.0000','无\r\n','2021-05-06 14:39:59');

/*Table structure for table `sushe` */

DROP TABLE IF EXISTS `sushe`;

CREATE TABLE `sushe` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `building` varchar(200) DEFAULT NULL COMMENT '楼栋 Search111 ',
  `unit` varchar(200) DEFAULT NULL COMMENT '单元 Search111 ',
  `room` varchar(200) DEFAULT NULL COMMENT '房间号 Search111 ',
  `sushe_number` int(11) DEFAULT '0' COMMENT '已住人员',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='宿舍信息';

/*Data for the table `sushe` */

insert  into `sushe`(`id`,`building`,`unit`,`room`,`sushe_number`,`create_time`) values (1,'鸿儒1栋','1','101',0,'2021-05-06 14:17:17'),(2,'娇子1栋','1','101',1,'2021-05-06 14:17:40'),(3,'鸿儒1栋','1','102',2,'2021-05-06 14:39:03');

/*Table structure for table `sushe_yonghu` */

DROP TABLE IF EXISTS `sushe_yonghu`;

CREATE TABLE `sushe_yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户id',
  `sushe_id` int(11) DEFAULT NULL COMMENT '宿舍id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='人员与宿舍关系';

/*Data for the table `sushe_yonghu` */

insert  into `sushe_yonghu`(`id`,`yonghu_id`,`sushe_id`,`create_time`) values (1,26,2,'2021-05-06 14:17:54'),(2,27,3,'2021-05-06 14:39:13'),(3,25,3,'2021-05-06 14:41:32');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','t4su9uvyyeqq079g95ru703bhdnr15ll','2021-05-06 11:58:27','2021-05-06 15:37:11'),(2,25,'a11','fuzeren','负责人','0k7qrwsczgpq948x9uulzteub5oi62sy','2021-05-06 14:40:59','2021-05-06 15:41:00'),(3,27,'a3','yonghu','用户','1zlbt99f1tl2dptghrrfpiz949vhlda0','2021-05-06 14:42:03','2021-05-06 15:42:03');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-04-27 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_number` varchar(200) DEFAULT NULL COMMENT '学号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '学生姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '学生手机号 Search111 ',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '学生身份证号 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '学生照片',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `xueyuan_types` int(11) DEFAULT NULL COMMENT '学院 Search111 ',
  `zhuanye_types` int(11) DEFAULT NULL COMMENT '专业 Search111 ',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级 Search111 ',
  `fudaoyuan_types` int(11) DEFAULT NULL COMMENT '辅导员 Search111 ',
  `yonghu_yesno_types` int(11) DEFAULT NULL COMMENT '是否报道 Search111 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`xueyuan_types`,`zhuanye_types`,`banji_types`,`fudaoyuan_types`,`yonghu_yesno_types`,`create_time`) values (25,'a1','123456','111','张1','17703786901','410224199610232001','http://localhost:8080/xinshengbaodao/file/download?fileName=1620281749723.jpg',1,3,3,3,2,1,'2021-05-06 14:15:52'),(26,'a2','123456','222','张2','17703786902','410224199610232002','http://localhost:8080/xinshengbaodao/file/download?fileName=1620281774709.jpg',1,2,2,2,2,1,'2021-05-06 14:16:27'),(27,'a3','123456','333','张3','17703786903','410224199610232003','http://localhost:8080/xinshengbaodao/file/download?fileName=1620283060910.jpg',1,1,1,1,3,2,'2021-05-06 14:38:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
