/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - qj-ssmj
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`qj-ssmj` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `qj-ssmj`;

/*Table structure for table `banji` */

DROP TABLE IF EXISTS `banji`;

CREATE TABLE `banji` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '班级名称  Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='班级表';

/*Data for the table `banji` */

insert  into `banji`(`id`,`name`) values (1,'班级1'),(2,'班级2'),(3,'班级3');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/fd-ssmj/upload/1613705295135.jpg'),(2,'picture2','http://localhost:8080/fd-ssmj/upload/1613705301525.jpg'),(3,'picture3','http://localhost:8080/fd-ssmj/upload/1613799912302.JPG'),(4,'picture4','http://localhost:8080/fd-ssmj/upload/1613705325348.jpg'),(5,'picture5','http://localhost:8080/fd-ssmj/upload/1613705332544.jpg'),(6,'homepage','http://localhost:8080/fd-ssmj/upload/1613705342094.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',2,'男',NULL,'2021-01-25 11:41:54'),(2,'sex_types','性别',1,'女',NULL,'2021-01-25 11:41:54'),(3,'sp_types','审批状态',1,'待审',NULL,'2021-01-25 11:41:54'),(4,'sp_types','审批状态',2,'通过',NULL,'2021-01-25 11:41:54'),(5,'sp_types','审批状态',3,'驳回',NULL,'2021-01-25 11:41:54'),(6,'qj_types','请假类型',1,'病假',NULL,'2021-02-23 17:13:39'),(7,'qj_types','请假类型',2,'家里有事',NULL,'2021-02-23 17:13:40'),(8,'qj_types','请假类型',3,'其他原因',NULL,'2021-02-23 17:13:41');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名称 Search',
  `account` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `sex_types` tinyint(255) DEFAULT NULL COMMENT '性别',
  `img_photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`name`,`account`,`password`,`sex_types`,`img_photo`,`role`) values (1,'111','111','111',1,'http://localhost:8080/qj-ssmj/file/download?fileName=1614078472650.JPG','老师'),(2,'222','222','222',2,'http://localhost:8080/qj-ssmj/file/download?fileName=1614078465359.JPG','老师');

/*Table structure for table `liuyanxinxi` */

DROP TABLE IF EXISTS `liuyanxinxi`;

CREATE TABLE `liuyanxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `note` varchar(255) DEFAULT NULL COMMENT '留言信息',
  `yhnote` varchar(11) DEFAULT NULL COMMENT '留言人',
  `note_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '留言时间 Search',
  `reply` varchar(255) DEFAULT NULL COMMENT '回复',
  `glreply` varchar(11) DEFAULT NULL COMMENT '回复人',
  `reply_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '回复时间 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `liuyanxinxi` */

insert  into `liuyanxinxi`(`id`,`note`,`yhnote`,`note_time`,`reply`,`glreply`,`reply_time`) values (4,'1231111','admin','2021-02-23 20:33:54','只有管理员和老师可以回复','111','2021-02-23 20:33:55'),(8,'12132231312','小札','2021-02-23 20:33:42','asdas','111','2021-02-23 20:33:42'),(9,'qweqew','小札','2021-02-23 20:59:38','qqqq','admin','2021-02-23 20:59:39');

/*Table structure for table `qingjia` */

DROP TABLE IF EXISTS `qingjia`;

CREATE TABLE `qingjia` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xs_types` tinyint(4) DEFAULT NULL COMMENT '学生',
  `xy_types` tinyint(4) DEFAULT NULL COMMENT '学院 Search',
  `zy_types` tinyint(4) DEFAULT NULL COMMENT '专业 Search',
  `bj_types` tinyint(4) DEFAULT NULL COMMENT '班级 Search',
  `qj_types` tinyint(4) DEFAULT NULL COMMENT '请假类型 Search',
  `start_time` date DEFAULT NULL COMMENT '开始时间',
  `finish_time` date DEFAULT NULL COMMENT '结束时间',
  `sp_types` tinyint(4) DEFAULT NULL COMMENT '审批状态',
  `notice_content` varchar(200) DEFAULT NULL COMMENT '请假原因',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='请假表';

/*Data for the table `qingjia` */

insert  into `qingjia`(`id`,`xs_types`,`xy_types`,`zy_types`,`bj_types`,`qj_types`,`start_time`,`finish_time`,`sp_types`,`notice_content`) values (7,1,3,3,3,6,'2021-02-05','2021-02-06',5,'qweqweqwe\r\n');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` int(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1,'admin','users','管理员','gkd6g6zcpwzfutcrfdn75ewlepirufjf','2021-02-23 17:40:10','2021-02-23 21:57:44'),(4,1,'111','users','老师','8grh7n16y05qmtrmlwozcc8isyppx32d','2021-02-23 20:18:32','2021-02-23 21:58:04'),(5,1,'小札','users','学生','8ecorb8lzkkf4fd3fr51k56ll3po4lxz','2021-02-23 20:19:08','2021-02-23 21:58:09'),(6,2,'小站','users','学生','m6qgqugevcg3yj3u1o59arwgybnkrkq7','2021-02-23 21:00:19','2021-02-23 22:00:20');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) NOT NULL DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-01-28 18:04:51');

/*Table structure for table `xueshengxinxi` */

DROP TABLE IF EXISTS `xueshengxinxi`;

CREATE TABLE `xueshengxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名称 Search',
  `account` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `sex_types` tinyint(255) DEFAULT NULL COMMENT '性别',
  `img_photo` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '身份',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `xueshengxinxi` */

insert  into `xueshengxinxi`(`id`,`name`,`account`,`password`,`sex_types`,`img_photo`,`role`) values (1,'小札','111','111',1,'http://localhost:8080/qj-ssmj/file/download?fileName=1614078455993.jpg','学生'),(2,'小站','222','222',2,'http://localhost:8080/qj-ssmj/file/download?fileName=1614078407818.jpg','学生');

/*Table structure for table `xueyuan` */

DROP TABLE IF EXISTS `xueyuan`;

CREATE TABLE `xueyuan` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '学院名称  Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='学院表';

/*Data for the table `xueyuan` */

insert  into `xueyuan`(`id`,`name`) values (1,'学院1'),(2,'学院2'),(3,'学院3');

/*Table structure for table `zhuanye` */

DROP TABLE IF EXISTS `zhuanye`;

CREATE TABLE `zhuanye` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(200) DEFAULT NULL COMMENT '专业名称  Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='专业表';

/*Data for the table `zhuanye` */

insert  into `zhuanye`(`id`,`name`) values (1,'专业1'),(2,'专业2'),(3,'专业3');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
