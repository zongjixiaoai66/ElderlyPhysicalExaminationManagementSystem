/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t284`;
CREATE DATABASE IF NOT EXISTS `t284` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t284`;

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int DEFAULT NULL COMMENT '状态',
  `chat_types` int DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='在线咨询';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `yonghu_id`, `chat_issue`, `issue_time`, `chat_reply`, `reply_time`, `zhuangtai_types`, `chat_types`, `insert_time`) VALUES
	(1, 1, '用户的咨询信息1111', '2022-03-13 16:00:00', NULL, NULL, 2, 1, '2022-03-14 08:33:39'),
	(2, 1, NULL, NULL, '管理回复', '2022-03-13 16:00:00', NULL, 2, '2022-03-14 08:37:20');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'http://localhost:8080/laonianrentijian/upload/config1.jpg'),
	(2, '轮播图2', 'http://localhost:8080/laonianrentijian/upload/config2.jpg'),
	(3, '轮播图3', 'http://localhost:8080/laonianrentijian/upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COMMENT='字典表';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'single_seach_types', '单页数据类型', 1, '网站介绍', NULL, NULL, '2022-03-14 06:39:16'),
	(2, 'tijianxiangmu_types', '体检项目类型', 1, '体检项目类型1', NULL, NULL, '2022-03-14 06:39:16'),
	(3, 'tijianxiangmu_types', '体检项目类型', 2, '体检项目类型2', NULL, NULL, '2022-03-14 06:39:16'),
	(4, 'tijianxiangmu_types', '体检项目类型', 3, '体检项目类型3', NULL, NULL, '2022-03-14 06:39:16'),
	(5, 'tijianxiangmuyuyye_yesno_types', '审核状态', 1, '处理中', NULL, NULL, '2022-03-14 06:39:16'),
	(6, 'tijianxiangmuyuyye_yesno_types', '审核状态', 2, '受理', NULL, NULL, '2022-03-14 06:39:16'),
	(7, 'tijianxiangmuyuyye_yesno_types', '审核状态', 3, '拒绝', NULL, NULL, '2022-03-14 06:39:16'),
	(8, 'tijiantixing_types', '体检状态', 1, '未体检', NULL, NULL, '2022-03-14 06:39:16'),
	(9, 'tijiantixing_types', '体检状态', 2, '已体检', NULL, NULL, '2022-03-14 06:39:16'),
	(10, 'tijiantixing_types', '体检状态', 3, '已上传体检报告', NULL, NULL, '2022-03-14 06:39:17'),
	(11, 'sex_types', '性别', 1, '男', NULL, NULL, '2022-03-14 06:39:17'),
	(12, 'sex_types', '性别', 2, '女', NULL, NULL, '2022-03-14 06:39:17'),
	(13, 'chat_types', '数据类型', 1, '问题', NULL, NULL, '2022-03-14 06:39:17'),
	(14, 'chat_types', '数据类型', 2, '回复', NULL, NULL, '2022-03-14 06:39:17'),
	(15, 'zhuangtai_types', '状态', 1, '未回复', NULL, NULL, '2022-03-14 06:39:17'),
	(16, 'zhuangtai_types', '状态', 2, '已回复', NULL, NULL, '2022-03-14 06:39:17'),
	(17, 'jiangkangchangshi_types', '健康常识类型', 1, '健康常识类型1', NULL, NULL, '2022-03-14 06:39:17'),
	(18, 'jiangkangchangshi_types', '健康常识类型', 2, '健康常识类型2', NULL, NULL, '2022-03-14 06:39:17'),
	(19, 'jiangkangchangshi_types', '健康常识类型', 3, '健康常识类型3', NULL, NULL, '2022-03-14 06:39:17'),
	(20, 'jibingyufang_types', '科普类型', 1, '科普类型1', NULL, NULL, '2022-03-14 06:39:17'),
	(21, 'jibingyufang_types', '科普类型', 2, '科普类型2', NULL, NULL, '2022-03-14 06:39:17'),
	(22, 'jibingyufang_types', '科普类型', 3, '科普类型3', NULL, NULL, '2022-03-14 06:39:17'),
	(23, 'forum_state_types', '帖子状态', 1, '发帖', NULL, NULL, '2022-03-14 06:39:17'),
	(24, 'forum_state_types', '帖子状态', 2, '回帖', NULL, NULL, '2022-03-14 06:39:17'),
	(25, 'tijianxiangmuyuyye_yesno_types', '审核状态', 4, '已添加提醒', NULL, NULL, NULL);

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `users_id` int DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int DEFAULT NULL COMMENT '父id',
  `forum_state_types` int DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COMMENT='论坛';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `forum_name`, `yonghu_id`, `users_id`, `forum_content`, `super_ids`, `forum_state_types`, `insert_time`, `update_time`, `create_time`) VALUES
	(1, '帖子标题1', 2, NULL, '发布内容1', NULL, 1, '2022-03-14 06:39:26', '2022-03-14 06:39:26', '2022-03-14 06:39:26'),
	(2, '帖子标题2', 2, NULL, '发布内容2', NULL, 1, '2022-03-14 06:39:26', '2022-03-14 06:39:26', '2022-03-14 06:39:26'),
	(3, '帖子标题3', 2, NULL, '发布内容3', NULL, 1, '2022-03-14 06:39:26', '2022-03-14 06:39:26', '2022-03-14 06:39:26'),
	(4, '帖子标题4', 1, NULL, '发布内容4', NULL, 1, '2022-03-14 06:39:26', '2022-03-14 06:39:26', '2022-03-14 06:39:26'),
	(5, '帖子标题5', 1, NULL, '发布内容5', NULL, 1, '2022-03-14 06:39:26', '2022-03-14 06:39:26', '2022-03-14 06:39:26'),
	(6, NULL, 1, NULL, '用户回帖', 5, 2, '2022-03-14 08:33:05', NULL, '2022-03-14 08:33:05'),
	(7, NULL, NULL, 1, '管理回复', 5, 2, '2022-03-14 08:37:45', NULL, '2022-03-14 08:37:45');

DROP TABLE IF EXISTS `jiangkangchangshi`;
CREATE TABLE IF NOT EXISTS `jiangkangchangshi` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiangkangchangshi_name` varchar(200) DEFAULT NULL COMMENT '健康常识标题  Search111 ',
  `jiangkangchangshi_types` int DEFAULT NULL COMMENT '健康常识类型  Search111 ',
  `jiangkangchangshi_photo` varchar(200) DEFAULT NULL COMMENT '健康常识图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `jiangkangchangshi_content` text COMMENT '健康常识详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='健康常识';

DELETE FROM `jiangkangchangshi`;
INSERT INTO `jiangkangchangshi` (`id`, `jiangkangchangshi_name`, `jiangkangchangshi_types`, `jiangkangchangshi_photo`, `insert_time`, `jiangkangchangshi_content`, `create_time`) VALUES
	(1, '健康常识标题1', 1, 'http://localhost:8080/laonianrentijian/upload/1647240463985.jpeg', '2022-03-14 06:39:26', '<p>健康常识详情1</p>', '2022-03-14 06:39:26'),
	(2, '健康常识标题2', 1, 'http://localhost:8080/laonianrentijian/upload/1647240455949.jpeg', '2022-03-14 06:39:26', '<p>健康常识详情2</p>', '2022-03-14 06:39:26'),
	(3, '健康常识标题3', 1, 'http://localhost:8080/laonianrentijian/upload/1647240446765.jpeg', '2022-03-14 06:39:26', '<p>健康常识详情3</p>', '2022-03-14 06:39:26'),
	(4, '健康常识标题4', 1, 'http://localhost:8080/laonianrentijian/upload/1647240437560.jpeg', '2022-03-14 06:39:26', '<p>健康常识详情4</p>', '2022-03-14 06:39:26'),
	(5, '健康常识标题5', 1, 'http://localhost:8080/laonianrentijian/upload/1647240428758.jpeg', '2022-03-14 06:39:26', '<p>健康常识详情5</p>', '2022-03-14 06:39:26');

DROP TABLE IF EXISTS `jibingyufang`;
CREATE TABLE IF NOT EXISTS `jibingyufang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jibingyufang_name` varchar(200) DEFAULT NULL COMMENT '疾病预防疾病预防标题  Search111 ',
  `jibingyufang_types` int DEFAULT NULL COMMENT '科普类型  Search111 ',
  `jibingyufang_photo` varchar(200) DEFAULT NULL COMMENT '疾病预防图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `jibingyufang_content` text COMMENT '疾病预防详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='疾病预防';

DELETE FROM `jibingyufang`;
INSERT INTO `jibingyufang` (`id`, `jibingyufang_name`, `jibingyufang_types`, `jibingyufang_photo`, `insert_time`, `jibingyufang_content`, `create_time`) VALUES
	(1, '疾病预防疾病预防标题1', 3, 'http://localhost:8080/laonianrentijian/upload/1647242146732.jpeg', '2022-03-14 06:39:26', '<p>疾病预防详情1</p>', '2022-03-14 06:39:26'),
	(2, '疾病预防疾病预防标题2', 1, 'http://localhost:8080/laonianrentijian/upload/1647242139200.jpeg', '2022-03-14 06:39:26', '<p>疾病预防详情2</p>', '2022-03-14 06:39:26'),
	(3, '疾病预防疾病预防标题3', 1, 'http://localhost:8080/laonianrentijian/upload/1647242131875.jpeg', '2022-03-14 06:39:26', '<p>疾病预防详情3</p>', '2022-03-14 06:39:26'),
	(4, '疾病预防疾病预防标题4', 3, 'http://localhost:8080/laonianrentijian/upload/1647242122476.jpeg', '2022-03-14 06:39:26', '<p>疾病预防详情4</p>', '2022-03-14 06:39:26'),
	(5, '疾病预防疾病预防标题5', 1, 'http://localhost:8080/laonianrentijian/upload/1647242114711.jpeg', '2022-03-14 06:39:26', '<p>疾病预防详情5</p>', '2022-03-14 06:39:26');

DROP TABLE IF EXISTS `single_seach`;
CREATE TABLE IF NOT EXISTS `single_seach` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int DEFAULT NULL COMMENT '数据类型',
  `single_seach_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='单页数据';

DELETE FROM `single_seach`;
INSERT INTO `single_seach` (`id`, `single_seach_name`, `single_seach_types`, `single_seach_content`, `create_time`) VALUES
	(1, '网站介绍标题', 1, '<p>网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍5448</p>', '2022-03-14 07:22:29');

DROP TABLE IF EXISTS `tijiantixing`;
CREATE TABLE IF NOT EXISTS `tijiantixing` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '用户 ',
  `tijianxiangmu_id` int DEFAULT NULL COMMENT '体检项目',
  `tijiantixing_date_time` date DEFAULT NULL COMMENT '体检日期',
  `tijiantixing_shijian` varchar(200) DEFAULT NULL COMMENT '体检时间',
  `tijiantixing_number` decimal(10,2) DEFAULT NULL COMMENT '预计花费',
  `tijiantixing_address` varchar(200) DEFAULT NULL COMMENT '体检地点',
  `tijiantixing_phone` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `tijiantixing_file` varchar(200) DEFAULT NULL COMMENT '体检报告',
  `tijiantixing_types` int DEFAULT NULL COMMENT '体检状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COMMENT='体检提醒';

DELETE FROM `tijiantixing`;
INSERT INTO `tijiantixing` (`id`, `yonghu_id`, `tijianxiangmu_id`, `tijiantixing_date_time`, `tijiantixing_shijian`, `tijiantixing_number`, `tijiantixing_address`, `tijiantixing_phone`, `tijiantixing_file`, `tijiantixing_types`, `create_time`) VALUES
	(7, 1, 4, '2022-03-15', '下午1点', 500.00, '体检地点123', '17711155161', '', 1, '2022-03-14 07:52:07'),
	(11, 1, 2, '2022-03-14', '下午3点后都可以', 200.00, 'xxx小区广场', '17785599674', 'http://localhost:8080/laonianrentijian/upload/1647247209941.xls', 3, '2022-03-14 08:39:07');

DROP TABLE IF EXISTS `tijianxiangmu`;
CREATE TABLE IF NOT EXISTS `tijianxiangmu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tijianxiangmu_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `tijianxiangmu_types` int DEFAULT NULL COMMENT '体检项目类型  Search111 ',
  `tijianxiangmu_photo` varchar(200) DEFAULT NULL COMMENT '项目封面',
  `tijianxiangmu_content` text COMMENT '体检项目详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COMMENT='体检项目';

DELETE FROM `tijianxiangmu`;
INSERT INTO `tijianxiangmu` (`id`, `tijianxiangmu_name`, `tijianxiangmu_types`, `tijianxiangmu_photo`, `tijianxiangmu_content`, `create_time`) VALUES
	(1, '标题1', 3, 'http://localhost:8080/laonianrentijian/upload/1647241169999.jpeg', '<p>体检项目详情1</p>', '2022-03-14 06:39:26'),
	(2, '标题2', 3, 'http://localhost:8080/laonianrentijian/upload/1647241154611.jpeg', '<p>体检项目详情2</p>', '2022-03-14 06:39:26'),
	(3, '标题3', 1, 'http://localhost:8080/laonianrentijian/upload/1647241134694.jpeg', '<p>体检项目详情3</p>', '2022-03-14 06:39:26'),
	(4, '标题4', 2, 'http://localhost:8080/laonianrentijian/upload/1647241126107.jpeg', '<p>体检项目详情4</p>', '2022-03-14 06:39:26'),
	(5, '标题5', 1, 'http://localhost:8080/laonianrentijian/upload/1647241115855.jpeg', '<p>体检项目详情5</p>', '2022-03-14 06:39:26');

DROP TABLE IF EXISTS `tijianxiangmuyuyye`;
CREATE TABLE IF NOT EXISTS `tijianxiangmuyuyye` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tijianxiangmu_id` int DEFAULT NULL COMMENT '体检项目 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户 ',
  `tijianxiangmuyuyye_yesno_types` int DEFAULT NULL COMMENT '审核状态 ',
  `tijianxiangmuyuyye_yesno_text` text COMMENT '审核结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3 COMMENT='体检项目预约';

DELETE FROM `tijianxiangmuyuyye`;
INSERT INTO `tijianxiangmuyuyye` (`id`, `tijianxiangmu_id`, `yonghu_id`, `tijianxiangmuyuyye_yesno_types`, `tijianxiangmuyuyye_yesno_text`, `create_time`) VALUES
	(1, 1, 2, 1, NULL, '2022-03-14 06:39:26'),
	(2, 2, 2, 1, NULL, '2022-03-14 06:39:26'),
	(3, 3, 1, 1, NULL, '2022-03-14 06:39:26'),
	(4, 4, 2, 1, NULL, '2022-03-14 06:39:26'),
	(5, 5, 2, 1, NULL, '2022-03-14 06:39:26'),
	(11, 4, 1, 4, '受理体检请求', '2022-03-14 07:21:15'),
	(12, 2, 1, 4, '通过', '2022-03-14 08:32:49'),
	(13, 4, 1, 1, NULL, '2024-07-24 02:14:42');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', '6a0czs72pygrkq3jzn8clswrotg90vgq', '2022-03-14 06:44:49', '2024-07-24 03:12:37'),
	(2, 1, 'a1', 'yonghu', '用户', 'z3fnf4t9cjvnhieu3sd6nvyr36awfbkn', '2022-03-14 07:16:23', '2024-07-24 03:14:11');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2022-04-30 16:00:00');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_address` varchar(200) DEFAULT NULL COMMENT '住址',
  `yonghu_chushengriqi` varchar(200) DEFAULT NULL COMMENT '出生日期',
  `yonghu_delete` int DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_photo`, `sex_types`, `yonghu_phone`, `yonghu_id_number`, `yonghu_email`, `yonghu_address`, `yonghu_chushengriqi`, `yonghu_delete`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', 'http://localhost:8080/laonianrentijian/upload/yonghu1.jpg', 1, '17703786901', '410224199610232001', '1@qq.com', '住址1', '出生日期1', 1, '2022-03-14 06:39:26'),
	(2, '用户2', '123456', '用户姓名2', 'http://localhost:8080/laonianrentijian/upload/yonghu2.jpg', 2, '17703786902', '410224199610232002', '2@qq.com', '住址2', '出生日期2', 1, '2022-03-14 06:39:26'),
	(3, '用户3', '123456', '用户姓名3', 'http://localhost:8080/laonianrentijian/upload/yonghu3.jpg', 2, '17703786903', '410224199610232003', '3@qq.com', '住址3', '出生日期3', 1, '2022-03-14 06:39:26');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
