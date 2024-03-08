/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - zhuangshigongchengguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`zhuangshigongchengguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `zhuangshigongchengguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'lixiangxiangmu_types','保养类型',1,'测试类型1',NULL,NULL,'2022-03-14 09:44:49'),(2,'lixiangxiangmu_types','保养类型',2,'测试类型2',NULL,NULL,'2022-03-14 09:44:49'),(3,'lixiangxiangmu_types','保养类型',3,'测试类型3',NULL,NULL,'2022-03-14 09:44:49'),(4,'lixiangxiangmu_yesno_types','审核结果',1,'未审核',NULL,NULL,'2022-03-14 09:44:49'),(5,'lixiangxiangmu_yesno_types','审核结果',2,'通过',NULL,NULL,'2022-03-14 09:44:49'),(6,'lixiangxiangmu_yesno_types','审核结果',3,'拒绝',NULL,NULL,'2022-03-14 09:44:49'),(7,'zhuangshicailiao_types','材料类型',1,'材料类型1',NULL,NULL,'2022-03-14 09:44:49'),(8,'zhuangshicailiao_types','材料类型',2,'材料类型2',NULL,NULL,'2022-03-14 09:44:49'),(9,'zhuangshicailiao_types','材料类型',3,'材料类型3',NULL,NULL,'2022-03-14 09:44:49'),(10,'sex_types','性别',1,'男',NULL,NULL,'2022-03-14 09:44:49'),(11,'sex_types','性别',2,'女',NULL,NULL,'2022-03-14 09:44:49'),(12,'sex_types','性别',1,'男',NULL,NULL,'2022-03-14 09:44:50'),(13,'sex_types','性别',2,'女',NULL,NULL,'2022-03-14 09:44:50'),(14,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-03-14 09:44:50'),(15,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-03-14 09:44:50'),(16,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-03-14 09:44:50');

/*Table structure for table `hetong` */

DROP TABLE IF EXISTS `hetong`;

CREATE TABLE `hetong` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lixiangxiangmu_id` int(11) DEFAULT NULL COMMENT '立项项目',
  `hetong_name` varchar(200) DEFAULT NULL COMMENT '合同名称  Search111 ',
  `hetong_file` varchar(200) DEFAULT NULL COMMENT '合同文件',
  `hetong_text` text COMMENT '合同详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='合同管理';

/*Data for the table `hetong` */

insert  into `hetong`(`id`,`lixiangxiangmu_id`,`hetong_name`,`hetong_file`,`hetong_text`,`insert_time`,`create_time`) values (1,1,'合同名称1','http://localhost:8080/zhuangshigongchengguanli/upload/file.rar','合同详情1','2022-03-14 09:49:05','2022-03-14 09:49:05'),(2,2,'合同名称2','http://localhost:8080/zhuangshigongchengguanli/upload/file.rar','合同详情2','2022-03-14 09:49:05','2022-03-14 09:49:05'),(3,3,'合同名称3','http://localhost:8080/zhuangshigongchengguanli/upload/file.rar','合同详情3','2022-03-14 09:49:05','2022-03-14 09:49:05'),(4,4,'合同名称4','http://localhost:8080/zhuangshigongchengguanli/upload/file.rar','合同详情4','2022-03-14 09:49:05','2022-03-14 09:49:05'),(5,5,'合同名称5','http://localhost:8080/zhuangshigongchengguanli/upload/file.rar','合同详情5','2022-03-14 09:49:05','2022-03-14 09:49:05'),(6,7,'合同标题1','http://localhost:8080/zhuangshigongchengguanli/upload/1647223418100.doc','详情11111','2022-03-14 10:03:52','2022-03-14 10:03:52');

/*Table structure for table `hetongbaojia` */

DROP TABLE IF EXISTS `hetongbaojia`;

CREATE TABLE `hetongbaojia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `hetong_id` int(11) DEFAULT NULL COMMENT '合同',
  `hetongbaojia_money` decimal(10,2) DEFAULT NULL COMMENT '报价金额',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='合同报价';

/*Data for the table `hetongbaojia` */

insert  into `hetongbaojia`(`id`,`hetong_id`,`hetongbaojia_money`,`insert_time`,`create_time`) values (1,1,'135.39','2022-03-14 09:49:05','2022-03-14 09:49:05'),(2,2,'532.28','2022-03-14 09:49:05','2022-03-14 09:49:05'),(3,3,'498.83','2022-03-14 09:49:05','2022-03-14 09:49:05'),(4,4,'483.87','2022-03-14 09:49:05','2022-03-14 09:49:05'),(5,5,'519.32','2022-03-14 09:49:05','2022-03-14 09:49:05'),(6,6,'99999.00','2022-03-14 10:04:06','2022-03-14 10:04:06');

/*Table structure for table `kehu` */

DROP TABLE IF EXISTS `kehu`;

CREATE TABLE `kehu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `kehu_name` varchar(200) DEFAULT NULL COMMENT '客户姓名 Search111 ',
  `kehu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `kehu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `kehu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `kehu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='客户';

/*Data for the table `kehu` */

insert  into `kehu`(`id`,`username`,`password`,`kehu_name`,`kehu_photo`,`sex_types`,`kehu_phone`,`kehu_email`,`kehu_delete`,`create_time`) values (1,'a1','123456','客户姓名1','http://localhost:8080/zhuangshigongchengguanli/upload/kehu1.jpg',2,'17703786901','1@qq.com',1,'2022-03-14 09:49:05'),(2,'a2','123456','客户姓名2','http://localhost:8080/zhuangshigongchengguanli/upload/kehu2.jpg',2,'17703786902','2@qq.com',1,'2022-03-14 09:49:05'),(3,'a3','123456','客户姓名3','http://localhost:8080/zhuangshigongchengguanli/upload/kehu3.jpg',2,'17703786903','3@qq.com',1,'2022-03-14 09:49:05');

/*Table structure for table `lixiangxiangmu` */

DROP TABLE IF EXISTS `lixiangxiangmu`;

CREATE TABLE `lixiangxiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lixiangxiangmu_uuid_number` varchar(200) DEFAULT NULL COMMENT '项目编号',
  `lixiangxiangmu_name` varchar(200) DEFAULT NULL COMMENT '项目名称  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '员工',
  `kehu_id` int(11) DEFAULT NULL COMMENT '客户',
  `lixiangxiangmu_types` int(11) DEFAULT NULL COMMENT '项目类型  Search111 ',
  `lixiangxiangmu_file` varchar(200) DEFAULT NULL COMMENT '项目文件',
  `lixiangxiangmu_yesno_types` int(11) DEFAULT NULL COMMENT '审核结果',
  `lixiangxiangmu_yesno_text` text COMMENT '审核原因',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='立项项目';

/*Data for the table `lixiangxiangmu` */

insert  into `lixiangxiangmu`(`id`,`lixiangxiangmu_uuid_number`,`lixiangxiangmu_name`,`yonghu_id`,`kehu_id`,`lixiangxiangmu_types`,`lixiangxiangmu_file`,`lixiangxiangmu_yesno_types`,`lixiangxiangmu_yesno_text`,`create_time`) values (1,'164722254561019','项目名称1',1,2,3,'http://localhost:8080/zhuangshigongchengguanli/upload/file.rar',1,NULL,'2022-03-14 09:49:05'),(2,'164722254561014','项目名称2',3,2,1,'http://localhost:8080/zhuangshigongchengguanli/upload/file.rar',3,'审核拒绝','2022-03-14 09:49:05'),(3,'164722254561018','项目名称3',3,1,3,'http://localhost:8080/zhuangshigongchengguanli/upload/file.rar',2,'通过1111','2022-03-14 09:49:05'),(4,'164722254561016','项目名称4',3,1,1,'http://localhost:8080/zhuangshigongchengguanli/upload/file.rar',3,'拒绝1111','2022-03-14 09:49:05'),(5,'164722254561010','项目名称5',2,1,1,'http://localhost:8080/zhuangshigongchengguanli/upload/file.rar',2,'通过1111','2022-03-14 09:49:05'),(7,'1647223323059','员工测试项目1111',1,1,2,'http://localhost:8080/zhuangshigongchengguanli/upload/1647223338523.rar',2,'审核通过','2022-03-14 10:02:20');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',3,'http://localhost:8080/zhuangshigongchengguanli/upload/news1.jpg','2022-03-14 09:49:05','公告详情1','2022-03-14 09:49:05'),(2,'公告标题2',2,'http://localhost:8080/zhuangshigongchengguanli/upload/news2.jpg','2022-03-14 09:49:05','公告详情2','2022-03-14 09:49:05'),(3,'公告标题3',3,'http://localhost:8080/zhuangshigongchengguanli/upload/news3.jpg','2022-03-14 09:49:05','公告详情3','2022-03-14 09:49:05'),(4,'公告标题4',1,'http://localhost:8080/zhuangshigongchengguanli/upload/news4.jpg','2022-03-14 09:49:05','公告详情4','2022-03-14 09:49:05'),(5,'公告标题5',1,'http://localhost:8080/zhuangshigongchengguanli/upload/news5.jpg','2022-03-14 09:49:05','公告详情5','2022-03-14 09:49:05');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','1cl7xckgdxspn16yzf07vqga732x7za3','2022-03-14 09:47:04','2022-03-14 11:15:28'),(2,1,'a1','yonghu','员工','jl37jy9ghzbdrfl6aiybmx35igswmalj','2022-03-14 09:54:13','2022-03-14 11:03:32');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '员工姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_delete`,`create_time`) values (1,'a1','123456','员工姓名1','http://localhost:8080/zhuangshigongchengguanli/upload/yonghu1.jpg',1,'17703786901','410224199610232001','1@qq.com',1,'2022-03-14 09:49:05'),(2,'a2','123456','员工姓名2','http://localhost:8080/zhuangshigongchengguanli/upload/yonghu2.jpg',2,'17703786902','410224199610232002','2@qq.com',1,'2022-03-14 09:49:05'),(3,'a3','123456','员工姓名3','http://localhost:8080/zhuangshigongchengguanli/upload/yonghu3.jpg',1,'17703786903','410224199610232003','3@qq.com',1,'2022-03-14 09:49:05');

/*Table structure for table `yushuanbaojia` */

DROP TABLE IF EXISTS `yushuanbaojia`;

CREATE TABLE `yushuanbaojia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lixiangxiangmu_id` int(11) DEFAULT NULL COMMENT '立项项目',
  `yushuanbaojia_money` decimal(10,2) DEFAULT NULL COMMENT '报价金额',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='预算报价';

/*Data for the table `yushuanbaojia` */

insert  into `yushuanbaojia`(`id`,`lixiangxiangmu_id`,`yushuanbaojia_money`,`insert_time`,`create_time`) values (1,1,'386.29','2022-03-14 09:49:05','2022-03-14 09:49:05'),(2,2,'211.29','2022-03-14 09:49:05','2022-03-14 09:49:05'),(3,3,'368.92','2022-03-14 09:49:05','2022-03-14 09:49:05'),(4,4,'372.66','2022-03-14 09:49:05','2022-03-14 09:49:05'),(5,5,'509.10','2022-03-14 09:49:05','2022-03-14 09:49:05'),(6,5,'798987.00','2022-03-14 10:05:31','2022-03-14 10:05:31'),(7,5,'77777.00','2022-03-14 10:05:40','2022-03-14 10:05:40'),(8,5,'77777.00','2022-03-14 10:05:41','2022-03-14 10:05:41');

/*Table structure for table `zhuangshicailiao` */

DROP TABLE IF EXISTS `zhuangshicailiao`;

CREATE TABLE `zhuangshicailiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lixiangxiangmu_id` int(11) DEFAULT NULL COMMENT '立项项目',
  `zhuangshicailiao_name` varchar(200) DEFAULT NULL COMMENT '材料名称 Search111 ',
  `zhuangshicailiao_photo` varchar(255) DEFAULT NULL COMMENT '材料图片',
  `zhuangshicailiao_money` decimal(10,2) DEFAULT NULL COMMENT '材料价格',
  `zhuangshicailiao_types` int(11) DEFAULT NULL COMMENT '材料类型',
  `zhuangshicailiao_number` int(11) DEFAULT NULL COMMENT '采购数量',
  `zhuangshicailiao_danwei` varchar(255) DEFAULT NULL COMMENT '单位',
  `zhuangshicailiao_text` text COMMENT '材料详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='装饰材料总计划';

/*Data for the table `zhuangshicailiao` */

insert  into `zhuangshicailiao`(`id`,`lixiangxiangmu_id`,`zhuangshicailiao_name`,`zhuangshicailiao_photo`,`zhuangshicailiao_money`,`zhuangshicailiao_types`,`zhuangshicailiao_number`,`zhuangshicailiao_danwei`,`zhuangshicailiao_text`,`insert_time`,`create_time`) values (1,1,'材料名称1','http://localhost:8080/zhuangshigongchengguanli/upload/1647224023862.jpeg','750.42',3,229,'个','材料详情1','2022-03-14 09:49:05','2022-03-14 09:49:05'),(2,2,'材料名称2','http://localhost:8080/zhuangshigongchengguanli/upload/1647224017370.jpeg','29.47',1,341,'个','材料详情2','2022-03-14 09:49:05','2022-03-14 09:49:05'),(3,3,'材料名称3','http://localhost:8080/zhuangshigongchengguanli/upload/1647224008547.jpeg','197.96',1,196,'个','材料详情3','2022-03-14 09:49:05','2022-03-14 09:49:05'),(4,4,'材料名称4','http://localhost:8080/zhuangshigongchengguanli/upload/1647224000482.jpg','696.43',1,171,'个','材料详情4','2022-03-14 09:49:05','2022-03-14 09:49:05'),(5,5,'材料名称5','http://localhost:8080/zhuangshigongchengguanli/upload/1647223993067.jpeg','177.24',3,422,'个','材料详情5','2022-03-14 09:49:05','2022-03-14 09:49:05');

/*Table structure for table `zhuangxiujindu` */

DROP TABLE IF EXISTS `zhuangxiujindu`;

CREATE TABLE `zhuangxiujindu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `lixiangxiangmu_id` int(11) DEFAULT NULL COMMENT '立项项目',
  `zhuangxiujindu_name` varchar(200) DEFAULT NULL COMMENT '进度标题 Search111 ',
  `zhuangxiujindu_photo` varchar(255) DEFAULT NULL COMMENT '进度图片',
  `zhuangxiujindu_text` text COMMENT '进度详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='装修进度';

/*Data for the table `zhuangxiujindu` */

insert  into `zhuangxiujindu`(`id`,`lixiangxiangmu_id`,`zhuangxiujindu_name`,`zhuangxiujindu_photo`,`zhuangxiujindu_text`,`insert_time`,`create_time`) values (6,5,'标题11','http://localhost:8080/zhuangshigongchengguanli/upload/1647223943619.jpeg','详情11','2022-03-14 10:12:31','2022-03-14 10:12:31');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
