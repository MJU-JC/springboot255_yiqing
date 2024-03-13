/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yiqingxinxi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yiqingxinxi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yiqingxinxi`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `daka` */

DROP TABLE IF EXISTS `daka`;

CREATE TABLE `daka` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `daka_time` timestamp NULL DEFAULT NULL COMMENT '打卡时间',
  `insert_time` date DEFAULT NULL COMMENT '打卡日期',
  `didian_address` varchar(200) DEFAULT NULL COMMENT '打卡地点 Search111  ',
  `daka_content` text COMMENT '打卡备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='打卡';

/*Data for the table `daka` */

insert  into `daka`(`id`,`yonghu_id`,`daka_time`,`insert_time`,`didian_address`,`daka_content`,`create_time`) values (2,3,'2022-04-29 20:47:54','2022-04-29','打卡地点2','打卡备注2','2022-04-29 20:47:54'),(3,2,'2022-04-29 20:47:54','2022-04-29','打卡地点3','打卡备注3','2022-04-29 20:47:54'),(4,3,'2022-04-29 20:47:54','2022-04-29','打卡地点4','打卡备注4','2022-04-29 20:47:54'),(5,1,'2022-04-29 20:47:54','2022-04-29','打卡地点5','打卡备注5','2022-04-29 20:47:54'),(7,1,'2022-04-30 21:32:32','2022-04-30','地点1111','<p>电视电话啥都好说</p>','2022-04-30 21:32:32');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-30 20:47:51'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-30 20:47:51'),(3,'zhiwei_types','职位',1,'职位1',NULL,NULL,'2022-04-30 20:47:51'),(4,'zhiwei_types','职位',2,'职位2',NULL,NULL,'2022-04-30 20:47:51'),(5,'zhiwei_types','职位',3,'职位3',NULL,NULL,'2022-04-30 20:47:51'),(6,'shequ_types','所属社区',1,'社区1',NULL,NULL,'2022-04-30 20:47:51'),(7,'shequ_types','所属社区',2,'社区2',NULL,NULL,'2022-04-30 20:47:51'),(8,'shequ_types','所属社区',3,'社区3',NULL,NULL,'2022-04-30 20:47:51'),(9,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-30 20:47:51'),(10,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-30 20:47:51'),(11,'yiqingxinxi_types','疫情信息类型',1,'疫情信息类型1',NULL,NULL,'2022-04-30 20:47:51'),(12,'yiqingxinxi_types','疫情信息类型',2,'疫情信息类型2',NULL,NULL,'2022-04-30 20:47:51'),(13,'zhen_types','第几针',1,'第一针',NULL,NULL,'2022-04-30 20:47:51'),(14,'zhen_types','第几针',2,'第二针',NULL,NULL,'2022-04-30 20:47:51'),(15,'zhen_types','第几针',3,'第三针',NULL,NULL,'2022-04-30 20:47:51'),(16,'zhen_types','第几针',4,'加强针',NULL,NULL,'2022-04-30 20:47:51'),(17,'yimiaoyuyue_types','疫苗预约状态',1,'已预约',NULL,NULL,'2022-04-30 20:47:51'),(18,'yimiaoyuyue_types','疫苗预约状态',2,'已取消',NULL,NULL,'2022-04-30 20:47:51'),(19,'yimiaoyuyue_types','疫苗预约状态',3,'已打针',NULL,NULL,'2022-04-30 20:47:51'),(20,'yimiaogongsi_types','疫苗公司',1,'疫苗公司1',NULL,NULL,'2022-04-30 20:47:51'),(21,'yimiaogongsi_types','疫苗公司',2,'疫苗公司2',NULL,NULL,'2022-04-30 20:47:51'),(22,'yimiaogongsi_types','疫苗公司',3,'疫苗公司3',NULL,NULL,'2022-04-30 20:47:51'),(23,'yimiaogongsi_types','疫苗公司',4,'疫苗公司4',NULL,NULL,'2022-04-30 20:47:51'),(24,'jiancedian_types','检测点',1,'检测点1',NULL,NULL,'2022-04-30 20:47:51'),(25,'jiancedian_types','检测点',2,'检测点2',NULL,NULL,'2022-04-30 20:47:51'),(26,'jiancedian_types','检测点',3,'检测点3',NULL,NULL,'2022-04-30 20:47:51'),(27,'jiancedian_types','检测点',4,'检测点4',NULL,NULL,'2022-04-30 20:47:51'),(28,'hesuanyuyue_types','核酸预约状态',1,'已预约',NULL,NULL,'2022-04-30 20:47:51'),(29,'hesuanyuyue_types','核酸预约状态',2,'已取消',NULL,NULL,'2022-04-30 20:47:51'),(30,'hesuanyuyue_types','核酸预约状态',3,'已检测',NULL,NULL,'2022-04-30 20:47:51'),(31,'jiancejieguo_types','检测结果',1,'阴性',NULL,NULL,'2022-04-30 20:47:51'),(32,'jiancejieguo_types','检测结果',2,'阳性',NULL,NULL,'2022-04-30 20:47:51'),(33,'fengxian_types','地区风险等级',1,'低级',NULL,NULL,'2022-04-30 20:47:51'),(34,'fengxian_types','地区风险等级',2,'中级',NULL,NULL,'2022-04-30 20:47:51'),(35,'fengxian_types','地区风险等级',3,'高级',NULL,NULL,'2022-04-30 20:47:51'),(36,'zhiwei_types','职位',4,'职位4',NULL,'','2022-04-30 21:28:34');

/*Table structure for table `diqu` */

DROP TABLE IF EXISTS `diqu`;

CREATE TABLE `diqu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `diqu_uuid_number` varchar(200) DEFAULT NULL COMMENT '地区编号 Search111  ',
  `diqu_name` varchar(200) DEFAULT NULL COMMENT '地区名称 Search111  ',
  `diqu_address` varchar(200) DEFAULT NULL COMMENT '地区位置 Search111  ',
  `fengxian_types` int(11) NOT NULL COMMENT '地区风险等级 Search111 ',
  `diqu_content` text COMMENT '地区详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='地区';

/*Data for the table `diqu` */

insert  into `diqu`(`id`,`diqu_uuid_number`,`diqu_name`,`diqu_address`,`fengxian_types`,`diqu_content`,`create_time`) values (1,'165132287485594','地区名称1','地区位置1',1,'地区详情1','2022-04-30 20:47:54'),(2,'165132287485586','地区名称2','地区位置2',2,'地区详情2','2022-04-30 20:47:54'),(3,'165132287485574','地区名称3','地区位置3',1,'地区详情3','2022-04-30 20:47:54'),(4,'16513228748556','地区名称4','地区位置4',2,'地区详情4','2022-04-30 20:47:54'),(5,'16513228748568','地区名称5','地区位置5',3,'<p>地区详情5dd </p>','2022-04-30 20:47:54');

/*Table structure for table `diquyiqingmeiriguanli` */

DROP TABLE IF EXISTS `diquyiqingmeiriguanli`;

CREATE TABLE `diquyiqingmeiriguanli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `jinriquezhen_number` int(11) NOT NULL COMMENT '今日确诊人数',
  `leijiquezhen_number` int(11) NOT NULL COMMENT '累计确诊人数',
  `jinrizhiyu_number` int(11) NOT NULL COMMENT '今日治愈人数',
  `leijizhiyu_number` int(11) NOT NULL COMMENT '累计治愈人数',
  `jinrisiwang_number` int(11) NOT NULL COMMENT '今日死亡人数',
  `leijisiwang_number` int(11) NOT NULL COMMENT '累计死亡人数',
  `suoshu_time` date DEFAULT NULL COMMENT '所属日期 Search111  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='地区疫情每日管理';

/*Data for the table `diquyiqingmeiriguanli` */

insert  into `diquyiqingmeiriguanli`(`id`,`jinriquezhen_number`,`leijiquezhen_number`,`jinrizhiyu_number`,`leijizhiyu_number`,`jinrisiwang_number`,`leijisiwang_number`,`suoshu_time`,`insert_time`,`create_time`) values (1,10,11,12,13,14,15,'2022-04-30','2022-04-30 21:27:43','2022-04-30 21:27:43'),(2,14,15,19,12,56,47,'2022-04-29','2022-04-30 21:30:30','2022-04-30 21:30:30');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `gonggao_content` text COMMENT '公告内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_types`,`gonggao_content`,`insert_time`,`create_time`) values (1,'公告名称1',1,'公告内容1','2022-04-30 20:47:54','2022-04-30 20:47:54'),(2,'公告名称2',2,'公告内容2','2022-04-30 20:47:54','2022-04-30 20:47:54'),(3,'公告名称3',1,'公告内容3','2022-04-30 20:47:54','2022-04-30 20:47:54'),(4,'公告名称4',1,'公告内容4','2022-04-30 20:47:54','2022-04-30 20:47:54'),(5,'公告名称5',1,'<p>公告内容511</p>','2022-04-30 20:47:54','2022-04-30 20:47:54'),(6,'公告111',1,'<p>时尚感刚刚过</p>','2022-04-30 21:34:00','2022-04-30 21:34:00');

/*Table structure for table `hesuanyuyue` */

DROP TABLE IF EXISTS `hesuanyuyue`;

CREATE TABLE `hesuanyuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `hesuanyuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约编号 Search111  ',
  `yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约检测时间',
  `jiancedian_types` int(11) DEFAULT NULL COMMENT '检测点 Search111 ',
  `yuyue_content` text COMMENT '预约备注',
  `hesuanyuyue_types` int(11) DEFAULT NULL COMMENT '核酸预约状态 Search111 ',
  `shiji_time` timestamp NULL DEFAULT NULL COMMENT '实际检测时间',
  `jiancejieguo_types` int(11) DEFAULT NULL COMMENT '检测结果 Search111 ',
  `hesuanyuyue_file` varchar(200) DEFAULT NULL COMMENT '检测文件',
  `beizhu_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='核酸预约';

/*Data for the table `hesuanyuyue` */

insert  into `hesuanyuyue`(`id`,`yonghu_id`,`hesuanyuyue_uuid_number`,`yuyue_time`,`jiancedian_types`,`yuyue_content`,`hesuanyuyue_types`,`shiji_time`,`jiancejieguo_types`,`hesuanyuyue_file`,`beizhu_content`,`insert_time`,`create_time`) values (1,1,'16513228748611','2022-04-30 20:47:54',2,'预约备注1',1,'2022-04-30 20:47:54',1,'http://localhost:8080/yiqingxinxi/upload/file.rar','备注1','2022-04-30 20:47:54','2022-04-30 20:47:54'),(2,1,'165132287486171','2022-04-30 20:47:54',4,'预约备注2',2,'2022-04-30 20:47:54',2,'http://localhost:8080/yiqingxinxi/upload/file.rar','备注2','2022-04-30 20:47:54','2022-04-30 20:47:54'),(3,3,'165132287486110','2022-04-30 20:47:54',4,'预约备注3',2,'2022-04-30 20:47:54',1,'http://localhost:8080/yiqingxinxi/upload/file.rar','备注3','2022-04-30 20:47:54','2022-04-30 20:47:54'),(4,2,'165132287486137','2022-04-30 20:47:54',3,'预约备注4',1,'2022-04-30 20:47:54',2,'http://localhost:8080/yiqingxinxi/upload/file.rar','备注4','2022-04-30 20:47:54','2022-04-30 20:47:54'),(5,1,'165132287486129','2022-04-30 20:47:54',2,'预约备注5',3,'2022-04-30 20:47:54',2,'http://localhost:8080/yiqingxinxi/upload/file.rar','备注5','2022-04-30 20:47:54','2022-04-30 20:47:54'),(6,1,'1651323207685','2022-05-01 00:00:00',3,'<p>大叔大婶啥都好说的和房东说</p>',1,NULL,NULL,'','','2022-04-30 20:58:00','2022-04-30 20:58:00'),(7,1,'1651323491930','2022-05-06 00:00:00',2,'<p>萨达阿萨德单号是</p>',3,'2022-05-06 00:00:00',2,'http://localhost:8080/yiqingxinxi/upload/1651324357914.rar','<p>撒大大说个事</p>','2022-04-30 20:58:18','2022-04-30 20:58:18'),(8,1,'1651323502268','2022-05-05 00:00:00',3,'<p>啥撒嘎嘎</p>',2,NULL,NULL,'','','2022-04-30 20:58:28','2022-04-30 20:58:28'),(9,1,'1651325470712','2022-05-06 00:00:00',4,'<p>的点点滴滴</p>',2,NULL,NULL,'','','2022-04-30 21:31:20','2022-04-30 21:31:20'),(10,1,'1651325488845','2022-05-07 00:00:00',1,'<p>大多数的或或或或</p>',3,'2022-05-06 00:00:00',1,'http://localhost:8080/yiqingxinxi/upload/1651325678293.rar','<p>萨嘎嘎嘎过</p>','2022-04-30 21:31:38','2022-04-30 21:31:38');

/*Table structure for table `shequguankong` */

DROP TABLE IF EXISTS `shequguankong`;

CREATE TABLE `shequguankong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shequ_types` int(11) DEFAULT NULL COMMENT '社区 Search111 ',
  `kaishi_time` timestamp NULL DEFAULT NULL COMMENT '管控开始时间 Search111  ',
  `jieshu_time` timestamp NULL DEFAULT NULL COMMENT '管控结束时间 Search111  ',
  `yuanyou_content` text COMMENT '管控原因 ',
  `fengxian_types` int(11) NOT NULL COMMENT '管控等级 Search111 ',
  `beizhu_content` text COMMENT '管控备注 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='社区管控';

/*Data for the table `shequguankong` */

insert  into `shequguankong`(`id`,`shequ_types`,`kaishi_time`,`jieshu_time`,`yuanyou_content`,`fengxian_types`,`beizhu_content`,`insert_time`,`create_time`) values (1,3,'2022-04-30 20:47:54','2022-04-30 20:47:54','管控原因1',1,'管控备注1','2022-04-30 20:47:54','2022-04-30 20:47:54'),(2,3,'2022-04-30 20:47:54','2022-04-30 20:47:54','管控原因2',1,'管控备注2','2022-04-30 20:47:54','2022-04-30 20:47:54'),(3,1,'2022-04-30 20:47:54','2022-04-30 20:47:54','管控原因3',2,'管控备注3','2022-04-30 20:47:54','2022-04-30 20:47:54'),(4,3,'2022-04-30 20:47:54','2022-04-30 20:47:54','管控原因4',2,'管控备注4','2022-04-30 20:47:54','2022-04-30 20:47:54'),(5,2,'2022-04-30 20:47:54','2022-04-30 20:47:54','管控原因5',2,'管控备注5','2022-04-30 20:47:54','2022-04-30 20:47:54'),(6,2,'2022-05-06 00:00:00','2022-05-20 00:00:00','<p>地点</p>',3,'<p>十三阿哥sssff</p>','2022-04-30 21:18:20','2022-04-30 21:18:20');

/*Table structure for table `shequguanliyuan` */

DROP TABLE IF EXISTS `shequguanliyuan`;

CREATE TABLE `shequguanliyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `shequguanliyuan_uuid_number` varchar(200) DEFAULT NULL COMMENT '社区管理员编号 Search111 ',
  `shequguanliyuan_name` varchar(200) DEFAULT NULL COMMENT '社区管理员姓名 Search111 ',
  `shequguanliyuan_phone` varchar(200) DEFAULT NULL COMMENT '社区管理员手机号',
  `shequguanliyuan_id_number` varchar(200) DEFAULT NULL COMMENT '社区管理员身份证号',
  `shequguanliyuan_photo` varchar(200) DEFAULT NULL COMMENT '社区管理员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `zhiwei_types` int(11) DEFAULT NULL COMMENT '职位 Search111 ',
  `shequ_types` int(11) DEFAULT NULL COMMENT '所属社区 Search111 ',
  `shequguanliyuan_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='社区管理员';

/*Data for the table `shequguanliyuan` */

insert  into `shequguanliyuan`(`id`,`username`,`password`,`shequguanliyuan_uuid_number`,`shequguanliyuan_name`,`shequguanliyuan_phone`,`shequguanliyuan_id_number`,`shequguanliyuan_photo`,`sex_types`,`zhiwei_types`,`shequ_types`,`shequguanliyuan_email`,`create_time`) values (1,'a1','123456','165132287487930','社区管理员姓名1','17703786901','410224199610232001','http://localhost:8080/yiqingxinxi/upload/shequguanliyuan1.jpg',1,3,3,'1@qq.com','2022-04-30 20:47:54'),(2,'a2','123456','165132287487935','社区管理员姓名2','17703786902','410224199610232002','http://localhost:8080/yiqingxinxi/upload/shequguanliyuan2.jpg',1,1,2,'2@qq.com','2022-04-30 20:47:54'),(3,'a3','123456','165132287487964','社区管理员姓名3','17703786903','410224199610232003','http://localhost:8080/yiqingxinxi/upload/shequguanliyuan3.jpg',1,1,1,'3@qq.com','2022-04-30 20:47:54');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','9t0b87g8fo3qvdvutqzc3p4dh1zcgxfb','2022-04-30 20:37:22','2022-04-30 22:40:03'),(2,1,'a1','yonghu','用户','8xfmzpclmc42eem4kqx9jf5dnqh1ht6b','2022-04-30 20:51:20','2022-04-30 22:30:51'),(3,1,'a1','shequguanliyuan','社区管理员','lzea9fjdchzk7v1ovmzpn9zjafnaufn9','2022-04-30 21:09:26','2022-04-30 22:33:18');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','admin','管理员','2022-05-02 14:51:13');

/*Table structure for table `yimiaoyuyue` */

DROP TABLE IF EXISTS `yimiaoyuyue`;

CREATE TABLE `yimiaoyuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `yimiaoyuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '预约编号 Search111  ',
  `zhen_types` int(11) DEFAULT NULL COMMENT '第几针 Search111 ',
  `yuyue_content` text COMMENT '预约备注',
  `yimiaoyuyue_types` int(11) DEFAULT NULL COMMENT '疫苗预约状态 Search111 ',
  `yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约打针时间',
  `shiji_time` timestamp NULL DEFAULT NULL COMMENT '实际打针时间',
  `yimiao_bianhao` varchar(200) DEFAULT NULL COMMENT '疫苗编号 Search111  ',
  `yimiaoshengchan_time` timestamp NULL DEFAULT NULL COMMENT '疫苗生产日期',
  `yimiaogongsi_types` int(11) DEFAULT NULL COMMENT '疫苗公司 Search111 ',
  `beizhu_content` text COMMENT '备注',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='疫苗预约';

/*Data for the table `yimiaoyuyue` */

insert  into `yimiaoyuyue`(`id`,`yonghu_id`,`yimiaoyuyue_uuid_number`,`zhen_types`,`yuyue_content`,`yimiaoyuyue_types`,`yuyue_time`,`shiji_time`,`yimiao_bianhao`,`yimiaoshengchan_time`,`yimiaogongsi_types`,`beizhu_content`,`insert_time`,`create_time`) values (1,3,'165132287487019',3,'预约备注1',2,'2022-04-30 20:47:54','2022-04-30 20:47:54','疫苗编号1','2022-04-30 20:47:54',1,'备注1','2022-04-30 20:47:54','2022-04-30 20:47:54'),(2,3,'165132287487063',3,'预约备注2',1,'2022-04-30 20:47:54','2022-04-30 20:47:54','疫苗编号2','2022-04-30 20:47:54',3,'备注2','2022-04-30 20:47:54','2022-04-30 20:47:54'),(3,3,'165132287487019',3,'预约备注3',3,'2022-04-30 20:47:54','2022-04-30 20:47:54','疫苗编号3','2022-04-30 20:47:54',3,'备注3','2022-04-30 20:47:54','2022-04-30 20:47:54'),(4,1,'165132287487048',2,'预约备注4',2,'2022-04-30 20:47:54','2022-04-30 20:47:54','疫苗编号4','2022-04-30 20:47:54',4,'备注4','2022-04-30 20:47:54','2022-04-30 20:47:54'),(5,1,'165132287487043',2,'预约备注5',3,'2022-04-30 20:47:54','2022-04-30 20:47:54','疫苗编号5','2022-04-30 20:47:54',2,'备注5','2022-04-30 20:47:54','2022-04-30 20:47:54'),(6,1,'1651323880564',3,'<p>萨萨嘎爱迪生</p>',2,'2022-05-05 00:00:00',NULL,'',NULL,NULL,'','2022-04-30 21:05:49','2022-04-30 21:05:49'),(7,1,'1651323991084',3,'<p>的的撒很高大很多事</p>',1,'2022-05-07 00:00:00',NULL,'',NULL,NULL,'','2022-04-30 21:06:39','2022-04-30 21:06:39'),(8,1,'1651324009387',1,'<p>sagahgdshd</p>',3,'2022-06-04 00:00:00','2022-04-23 00:00:00','659445.434','2022-05-07 00:00:00',3,'<p>我试试</p>','2022-04-30 21:06:58','2022-04-30 21:06:58'),(9,1,'1651325503597',2,'<p>的点点滴滴过过过</p>',3,'2022-06-04 00:00:00','2022-05-06 00:00:00','2478546454','2022-04-13 00:00:00',3,'<p>三国杀是个好</p>','2022-04-30 21:31:53','2022-04-30 21:31:53');

/*Table structure for table `yiqingxinxi` */

DROP TABLE IF EXISTS `yiqingxinxi`;

CREATE TABLE `yiqingxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yiqingxinxi_name` varchar(200) DEFAULT NULL COMMENT '疫情信息名称 Search111  ',
  `yiqingxinxi_types` int(11) NOT NULL COMMENT '疫情信息类型 Search111 ',
  `yiqingxinxi_content` text COMMENT '疫情信息内容 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '疫情信息发布时间 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='疫情信息';

/*Data for the table `yiqingxinxi` */

insert  into `yiqingxinxi`(`id`,`yiqingxinxi_name`,`yiqingxinxi_types`,`yiqingxinxi_content`,`insert_time`,`create_time`) values (1,'疫情信息名称1',2,'疫情信息内容1','2022-04-30 20:47:54','2022-04-30 20:47:54'),(2,'疫情信息名称2',2,'疫情信息内容2','2022-04-30 20:47:54','2022-04-30 20:47:54'),(3,'疫情信息名称3',2,'疫情信息内容3','2022-04-30 20:47:54','2022-04-30 20:47:54'),(4,'疫情信息名称4',2,'疫情信息内容4','2022-04-30 20:47:54','2022-04-30 20:47:54'),(5,'疫情信息名称5',1,'<p>疫情信息内容5是是是</p>','2022-04-30 20:47:54','2022-04-30 20:47:54');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_uuid_number` varchar(200) DEFAULT NULL COMMENT '用户编号 Search111 ',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_uuid_number`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','165132287487525','用户姓名1','17703786901','410224199610232001','http://localhost:8080/yiqingxinxi/upload/yonghu1.jpg',1,'1@qq.com','2022-04-30 20:47:54'),(2,'a2','123456','165132287487594','用户姓名2','17703786902','410224199610232002','http://localhost:8080/yiqingxinxi/upload/yonghu2.jpg',1,'2@qq.com','2022-04-30 20:47:54'),(3,'a3','123456','165132287487584','用户姓名3','17703786903','410224199610232003','http://localhost:8080/yiqingxinxi/upload/yonghu3.jpg',1,'3@qq.com','2022-04-30 20:47:54');

/*Table structure for table `yonghuxingcheng` */

DROP TABLE IF EXISTS `yonghuxingcheng`;

CREATE TABLE `yonghuxingcheng` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `diqu_id` int(11) DEFAULT NULL COMMENT '地区',
  `qu_time` timestamp NULL DEFAULT NULL COMMENT '去的时间 Search111  ',
  `hui_time` timestamp NULL DEFAULT NULL COMMENT '回的时间 Search111  ',
  `yuanyou_content` text COMMENT '去的缘由 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户行程';

/*Data for the table `yonghuxingcheng` */

insert  into `yonghuxingcheng`(`id`,`yonghu_id`,`diqu_id`,`qu_time`,`hui_time`,`yuanyou_content`,`insert_time`,`create_time`) values (1,2,1,'2022-04-30 20:47:54','2022-04-30 20:47:54','去的缘由1','2022-04-30 20:47:54','2022-04-30 20:47:54'),(2,2,2,'2022-04-30 20:47:54','2022-04-30 20:47:54','去的缘由2','2022-04-30 20:47:54','2022-04-30 20:47:54'),(3,2,3,'2022-04-30 20:47:54','2022-04-30 20:47:54','去的缘由3','2022-04-30 20:47:54','2022-04-30 20:47:54'),(4,2,4,'2022-04-30 20:47:54','2022-04-30 20:47:54','去的缘由4','2022-04-30 20:47:54','2022-04-30 20:47:54'),(5,3,5,'2022-04-30 20:47:54','2022-04-30 20:47:54','去的缘由5','2022-04-30 20:47:54','2022-04-30 20:47:54'),(6,1,4,'2022-05-01 00:00:00','2022-05-02 00:00:00','<p>大叔大婶东方红</p>','2022-04-30 21:09:19','2022-04-30 21:09:19'),(7,1,3,'2022-05-07 00:00:00','2022-05-07 10:00:00','<p>所说的发广告</p>','2022-04-30 21:33:01','2022-04-30 21:33:01');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
