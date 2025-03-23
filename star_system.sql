/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80039 (8.0.39)
 Source Host           : localhost:3306
 Source Schema         : star_system

 Target Server Type    : MySQL
 Target Server Version : 80039 (8.0.39)
 File Encoding         : 65001

 Date: 21/03/2025 20:19:40
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for artist
-- ----------------------------
DROP TABLE IF EXISTS `artist`;
CREATE TABLE `artist` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `name` varchar(50) NOT NULL COMMENT '艺人姓名',
  `stage_name` varchar(50) DEFAULT NULL COMMENT '艺名',
  `gender` char(1) DEFAULT NULL COMMENT '性别',
  `birth_date` date DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(100) DEFAULT NULL COMMENT '电子邮箱',
  `image` varchar(255) DEFAULT NULL COMMENT '头像',
  `id_card` varchar(18) DEFAULT NULL COMMENT '身份证号',
  `address` varchar(200) DEFAULT NULL COMMENT '居住地址',
  `education` varchar(50) DEFAULT NULL COMMENT '学历',
  `skills` text COMMENT '特长技能',
  `description` text COMMENT '艺人简介',
  `status` tinyint DEFAULT '1' COMMENT '状态(1:正常 0:禁用)',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='艺人基本信息表';

-- ----------------------------
-- Records of artist
-- ----------------------------
BEGIN;
INSERT INTO `artist` (`id`, `name`, `stage_name`, `gender`, `birth_date`, `phone`, `email`, `image`, `id_card`, `address`, `education`, `skills`, `description`, `status`, `create_time`, `update_time`) VALUES (2, '周迅', '小迅', '女', '1974-10-18', '13800138002', 'zhou@example.com', 'default.jpg', '310104197410182225', '上海市静安区', '大专', '演技,舞蹈,声乐', '实力派演员，获得多个影后称号', 1, '2025-03-20 12:40:50', '2025-03-20 12:40:50');
INSERT INTO `artist` (`id`, `name`, `stage_name`, `gender`, `birth_date`, `phone`, `email`, `image`, `id_card`, `address`, `education`, `skills`, `description`, `status`, `create_time`, `update_time`) VALUES (3, '刘德华', '华仔', '男', '1961-09-27', '13800138003', 'liu@example.com', 'default.jpg', '440301196109273456', '香港九龙', '高中', '演技,唱歌,舞蹈', '著名演员歌手，演艺双栖发展', 1, '2025-03-20 12:40:50', '2025-03-20 12:40:50');
INSERT INTO `artist` (`id`, `name`, `stage_name`, `gender`, `birth_date`, `phone`, `email`, `image`, `id_card`, `address`, `education`, `skills`, `description`, `status`, `create_time`, `update_time`) VALUES (4, '章子怡', '茶蛋', '女', '1979-02-09', '13800138004', 'zhang@example.com', 'default.jpg', '110108197902094567', '北京市海淀区', '本科', '演技,舞蹈', '国际影星，多次获得国际电影节奖项', 1, '2025-03-20 12:40:50', '2025-03-20 12:40:50');
INSERT INTO `artist` (`id`, `name`, `stage_name`, `gender`, `birth_date`, `phone`, `email`, `image`, `id_card`, `address`, `education`, `skills`, `description`, `status`, `create_time`, `update_time`) VALUES (5, '王俊凯', 'karry', '男', '1999-09-21', '13800138005', 'wang@example.com', 'default.jpg', '500103199909215678', '重庆市渝中区', '在读本科', '唱歌,跳舞,演技', '年轻实力派偶像，演技与歌唱俱佳', 1, '2025-03-20 12:40:50', '2025-03-20 12:40:50');
INSERT INTO `artist` (`id`, `name`, `stage_name`, `gender`, `birth_date`, `phone`, `email`, `image`, `id_card`, `address`, `education`, `skills`, `description`, `status`, `create_time`, `update_time`) VALUES (6, '杨幂', '幂幂', '女', '1986-09-12', '13800138006', 'yang@example.com', 'default.jpg', '110108198609126789', '北京市西城区', '本科', '演技,主持,商业', '著名演员，商业价值高', 1, '2025-03-20 12:40:50', '2025-03-20 12:40:50');
INSERT INTO `artist` (`id`, `name`, `stage_name`, `gender`, `birth_date`, `phone`, `email`, `image`, `id_card`, `address`, `education`, `skills`, `description`, `status`, `create_time`, `update_time`) VALUES (7, '吴京', '京哥', '男', '1974-04-03', '13800138007', 'wu@example.com', 'default.jpg', '110101197404037890', '北京市东城区', '中专', '武术,导演,演技', '著名动作演员，导演代表作《战狼》系列', 1, '2025-03-20 12:40:50', '2025-03-20 12:40:50');
INSERT INTO `artist` (`id`, `name`, `stage_name`, `gender`, `birth_date`, `phone`, `email`, `image`, `id_card`, `address`, `education`, `skills`, `description`, `status`, `create_time`, `update_time`) VALUES (8, '赵丽颖', '颖宝', '女', '1987-10-16', '13800138008', 'zhao@example.com', 'default.jpg', '410303198710168901', '河北省廊坊市', '高中', '演技,舞蹈,声乐', '人气演员，演技实力派', 1, '2025-03-20 12:40:50', '2025-03-20 12:40:50');
INSERT INTO `artist` (`id`, `name`, `stage_name`, `gender`, `birth_date`, `phone`, `email`, `image`, `id_card`, `address`, `education`, `skills`, `description`, `status`, `create_time`, `update_time`) VALUES (9, '易烊千玺', '千玺', '男', '2000-11-28', '13800138009', 'yi@example.com', 'default.jpg', '110101200011289012', '北京市朝阳区', '在读本科', '演技,舞蹈,唱歌', '青年演员，表演实力突出', 1, '2025-03-20 12:40:50', '2025-03-20 12:40:50');
INSERT INTO `artist` (`id`, `name`, `stage_name`, `gender`, `birth_date`, `phone`, `email`, `image`, `id_card`, `address`, `education`, `skills`, `description`, `status`, `create_time`, `update_time`) VALUES (10, '迪丽热巴', '热巴', '女', '1992-06-03', '13800138010', 'dilireba@example.com', 'default.jpg', '650102199206030123', '新疆乌鲁木齐', '本科', '演技,舞蹈,主持', '新生代实力演员，形象佳', 1, '2025-03-20 12:40:50', '2025-03-20 12:40:50');
COMMIT;

-- ----------------------------
-- Table structure for contract
-- ----------------------------
DROP TABLE IF EXISTS `contract`;
CREATE TABLE `contract` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `contract_no` varchar(50) NOT NULL COMMENT '合同编号',
  `artist_id` bigint NOT NULL COMMENT '艺人ID',
  `contract_type` tinyint DEFAULT NULL COMMENT '合同类型(1:经纪合同 2:商业合同 3:影视合同)',
  `partner_id` bigint DEFAULT NULL COMMENT '合作方ID',
  `start_date` date DEFAULT NULL COMMENT '合同开始日期',
  `end_date` date DEFAULT NULL COMMENT '合同结束日期',
  `contract_amount` decimal(12,2) DEFAULT NULL COMMENT '合同金额',
  `content` text COMMENT '合同主要内容',
  `attachment_url` varchar(255) DEFAULT NULL COMMENT '合同附件URL',
  `status` tinyint DEFAULT '1' COMMENT '状态(1:有效 0:终止)',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='合同信息表';

-- ----------------------------
-- Records of contract
-- ----------------------------
BEGIN;
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (1, 'HT202401001', 1, 1, NULL, '2024-01-01', '2026-12-31', 5000000.00, '张艺谋导演经纪约合同，全面负责艺人影视作品导演工作', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (2, 'HT202401002', 1, 2, NULL, '2024-01-15', '2024-12-31', 2000000.00, '某品牌广告代言合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (3, 'HT202401003', 2, 1, NULL, '2024-01-01', '2025-12-31', 3000000.00, '周迅演员经纪约合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (4, 'HT202401004', 2, 3, NULL, '2024-03-01', '2024-08-31', 1500000.00, '电视剧《青春如歌》主演合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (5, 'HT202401005', 3, 1, NULL, '2024-01-01', '2026-12-31', 8000000.00, '刘德华艺人经纪约合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (6, 'HT202401006', 3, 2, NULL, '2024-02-01', '2024-12-31', 5000000.00, '某汽车品牌全年代言合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (7, 'HT202401007', 4, 1, NULL, '2024-01-01', '2025-12-31', 4000000.00, '章子怡演员经纪约合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (8, 'HT202401008', 4, 3, NULL, '2024-04-01', '2024-09-30', 3000000.00, '电影《东方往事》主演合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (9, 'HT202401009', 5, 1, NULL, '2024-01-01', '2024-12-31', 2000000.00, '王俊凯艺人经纪约合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (10, 'HT202401010', 5, 2, NULL, '2024-01-15', '2024-12-31', 1500000.00, '某饮料品牌代言合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (11, 'HT202401011', 6, 1, NULL, '2024-01-01', '2025-12-31', 5000001.00, '杨幂艺人经纪约合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (12, 'HT202401012', 6, 2, NULL, '2024-02-01', '2024-12-31', 3000000.00, '某化妆品品牌代言合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (13, 'HT202401013', 7, 1, NULL, '2024-01-01', '2026-12-31', 6000000.00, '吴京导演演员经纪约合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (14, 'HT202401014', 7, 3, NULL, '2024-03-01', '2024-12-31', 4000000.00, '电影《战狼3》主演导演合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (15, 'HT202401015', 8, 1, NULL, '2024-01-01', '2025-12-31', 4000000.00, '赵丽颖艺人经纪约合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (16, 'HT202401016', 8, 2, NULL, '2024-01-15', '2024-12-31', 2000000.00, '某护肤品牌代言合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (17, 'HT202401017', 9, 1, NULL, '2024-01-01', '2024-12-31', 3000000.00, '易烊千玺艺人经纪约合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (18, 'HT202401018', 9, 3, NULL, '2024-04-01', '2024-09-30', 2000000.00, '电影《少年的你2》主演合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (19, 'HT202401019', 10, 1, NULL, '2024-01-01', '2025-12-31', 4000000.00, '迪丽热巴艺人经纪约合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (20, 'HT202401020', 10, 2, NULL, '2024-02-01', '2024-12-31', 2500000.00, '某奢侈品牌代言合同', NULL, 1, '2025-03-20 12:48:11', '2025-03-20 12:48:11');
INSERT INTO `contract` (`id`, `contract_no`, `artist_id`, `contract_type`, `partner_id`, `start_date`, `end_date`, `contract_amount`, `content`, `attachment_url`, `status`, `create_time`, `update_time`) VALUES (21, 'HT1742475091196077872', 11, 1, NULL, '2025-03-19', '2025-03-26', 100000.00, '测试', '7ef6a554-8fda-484e-918a-8b2fe29cbb4b.pdf', 1, '2025-03-20 12:51:31', '2025-03-20 12:51:31');
COMMIT;

-- ----------------------------
-- Table structure for income_record
-- ----------------------------
DROP TABLE IF EXISTS `income_record`;
CREATE TABLE `income_record` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `artist_id` bigint NOT NULL COMMENT '艺人ID',
  `contract_id` bigint DEFAULT NULL COMMENT '关联合同ID',
  `income_type` tinyint DEFAULT NULL COMMENT '收入类型(1:演出 2:广告 3:影视 4:其他)',
  `amount` decimal(12,2) DEFAULT NULL COMMENT '收入金额',
  `payment_date` date DEFAULT NULL COMMENT '收款日期',
  `description` text COMMENT '收入说明',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='收入记录表';

-- ----------------------------
-- Records of income_record
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for marketing_campaign
-- ----------------------------
DROP TABLE IF EXISTS `marketing_campaign`;
CREATE TABLE `marketing_campaign` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `campaign_name` varchar(100) NOT NULL COMMENT '活动名称',
  `artist_id` bigint NOT NULL COMMENT '艺人ID',
  `partner_id` bigint DEFAULT NULL COMMENT '合作方ID',
  `campaign_type` tinyint DEFAULT NULL COMMENT '活动类型(1:代言 2:广告 3:商业演出)',
  `start_date` date DEFAULT NULL COMMENT '开始日期',
  `image` varchar(255) DEFAULT NULL COMMENT '活动图片',
  `end_date` date DEFAULT NULL COMMENT '结束日期',
  `budget` decimal(12,2) DEFAULT NULL COMMENT '预算金额',
  `actual_cost` decimal(12,2) DEFAULT NULL COMMENT '实际花费',
  `description` text COMMENT '活动描述',
  `status` tinyint DEFAULT '1' COMMENT '状态(1:筹备中 2:进行中 3:已完成 4:已取消)',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='营销活动表';

-- ----------------------------
-- Records of marketing_campaign
-- ----------------------------
BEGIN;
INSERT INTO `marketing_campaign` (`id`, `campaign_name`, `artist_id`, `partner_id`, `campaign_type`, `start_date`, `image`, `end_date`, `budget`, `actual_cost`, `description`, `status`, `create_time`, `update_time`) VALUES (2, '华为P70系列代言', 2, 3, 1, '2025-03-14', 'default.jpg', '2025-03-21', 3000000.00, NULL, '华为P70系列旗舰手机全国代言人，包括电视广告、线下活动等', 1, '2025-03-20 13:45:52', '2025-03-20 22:13:58');
INSERT INTO `marketing_campaign` (`id`, `campaign_name`, `artist_id`, `partner_id`, `campaign_type`, `start_date`, `image`, `end_date`, `budget`, `actual_cost`, `description`, `status`, `create_time`, `update_time`) VALUES (3, '欧莱雅美妆大使', 3, 4, 1, '2025-03-01', 'default.jpg', '2026-02-28', 5000000.00, NULL, '欧莱雅年度美妆大使，负责品牌全线产品宣传', 1, '2025-03-20 13:45:52', '2025-03-20 13:46:48');
INSERT INTO `marketing_campaign` (`id`, `campaign_name`, `artist_id`, `partner_id`, `campaign_type`, `start_date`, `image`, `end_date`, `budget`, `actual_cost`, `description`, `status`, `create_time`, `update_time`) VALUES (4, '春季美妆种草计划', 4, 7, 2, '2025-03-01', 'default.jpg', '2025-05-31', 800000.00, NULL, '抖音平台春季美妆产品推广视频系列，共15支短视频内容', 1, '2025-03-20 13:45:52', '2025-03-20 13:46:48');
INSERT INTO `marketing_campaign` (`id`, `campaign_name`, `artist_id`, `partner_id`, `campaign_type`, `start_date`, `image`, `end_date`, `budget`, `actual_cost`, `description`, `status`, `create_time`, `update_time`) VALUES (5, '春节品牌广告大片', 5, 6, 2, '2025-03-20', 'default.jpg', '2025-04-20', 1500000.00, NULL, '2025年春节系列品牌形象广告片，全国卫视及网络投放', 1, '2025-03-20 13:45:52', '2025-03-20 13:46:48');
INSERT INTO `marketing_campaign` (`id`, `campaign_name`, `artist_id`, `partner_id`, `campaign_type`, `start_date`, `image`, `end_date`, `budget`, `actual_cost`, `description`, `status`, `create_time`, `update_time`) VALUES (6, '春季新品推广', 6, 5, 2, '2025-03-01', 'default.jpg', '2025-05-31', 1200000.00, NULL, '某知名品牌春季新品推广活动，包括视频广告和线下快闪店', 1, '2025-03-20 13:45:52', '2025-03-20 13:46:48');
INSERT INTO `marketing_campaign` (`id`, `campaign_name`, `artist_id`, `partner_id`, `campaign_type`, `start_date`, `image`, `end_date`, `budget`, `actual_cost`, `description`, `status`, `create_time`, `update_time`) VALUES (7, '上海春季音乐节', 7, 10, 3, '2025-04-05', 'default.jpg', '2025-04-06', 3000000.00, NULL, '2025上海春季音乐节特邀表演嘉宾', 1, '2025-03-20 13:45:52', '2025-03-20 13:46:48');
INSERT INTO `marketing_campaign` (`id`, `campaign_name`, `artist_id`, `partner_id`, `campaign_type`, `start_date`, `image`, `end_date`, `budget`, `actual_cost`, `description`, `status`, `create_time`, `update_time`) VALUES (8, '品牌春季发布会', 8, 8, 3, '2025-03-15', 'default.jpg', '2025-03-15', 500000.00, NULL, '某奢侈品品牌上海春季大秀特邀表演嘉宾', 1, '2025-03-20 13:45:52', '2025-03-20 13:46:48');
INSERT INTO `marketing_campaign` (`id`, `campaign_name`, `artist_id`, `partner_id`, `campaign_type`, `start_date`, `image`, `end_date`, `budget`, `actual_cost`, `description`, `status`, `create_time`, `update_time`) VALUES (9, '综艺节目录制', 9, 11, 3, '2025-03-01', 'default.jpg', '2025-05-31', 2000000.00, NULL, '某王牌综艺节目固定嘉宾，春季档', 1, '2025-03-20 13:45:52', '2025-03-20 13:46:48');
INSERT INTO `marketing_campaign` (`id`, `campaign_name`, `artist_id`, `partner_id`, `campaign_type`, `start_date`, `image`, `end_date`, `budget`, `actual_cost`, `description`, `status`, `create_time`, `update_time`) VALUES (10, '商场三周年庆典', 10, 9, 3, '2025-03-20', 'default.jpg', '2025-03-20', 300000.00, NULL, '某购物中心三周年庆典演出及剪彩活动', 1, '2025-03-20 13:45:52', '2025-03-20 13:46:48');
COMMIT;

-- ----------------------------
-- Table structure for partner
-- ----------------------------
DROP TABLE IF EXISTS `partner`;
CREATE TABLE `partner` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `partner_name` varchar(100) NOT NULL COMMENT '合作方名称',
  `partner_type` tinyint DEFAULT NULL COMMENT '合作方类型(1:品牌商 2:广告公司 3:制作公司)',
  `contact_person` varchar(50) DEFAULT NULL COMMENT '联系人',
  `contact_phone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `contact_email` varchar(100) DEFAULT NULL COMMENT '联系邮箱',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `description` text COMMENT '合作方描述',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='合作伙伴表';

-- ----------------------------
-- Records of partner
-- ----------------------------
BEGIN;
INSERT INTO `partner` (`id`, `partner_name`, `partner_type`, `contact_person`, `contact_phone`, `contact_email`, `address`, `description`, `create_time`, `update_time`) VALUES (1, '耐克中国', 1, '张经理', '13800138001', 'nike@example.com', '上海市浦东新区世纪大道100号', '全球知名运动品牌，长期合作伙伴', '2025-03-20 13:30:52', '2025-03-20 13:30:52');
INSERT INTO `partner` (`id`, `partner_name`, `partner_type`, `contact_person`, `contact_phone`, `contact_email`, `address`, `description`, `create_time`, `update_time`) VALUES (2, '阿迪达斯', 1, '李总监', '13800138002', 'adidas@example.com', '北京市朝阳区建国路甲92号', '知名运动服饰品牌，战略合作伙伴', '2025-03-20 13:30:52', '2025-03-20 13:30:52');
INSERT INTO `partner` (`id`, `partner_name`, `partner_type`, `contact_person`, `contact_phone`, `contact_email`, `address`, `description`, `create_time`, `update_time`) VALUES (3, '华为消费者', 1, '王主管', '13800138003', 'huawei@example.com', '深圳市龙岗区坂田华为基地', '国内领先科技企业，深度合作伙伴', '2025-03-20 13:30:52', '2025-03-20 13:30:52');
INSERT INTO `partner` (`id`, `partner_name`, `partner_type`, `contact_person`, `contact_phone`, `contact_email`, `address`, `description`, `create_time`, `update_time`) VALUES (4, '欧莱雅中国', 1, '刘总监', '13800138004', 'loreal@example.com', '上海市静安区南京西路1266号', '全球知名化妆品公司，重要合作伙伴', '2025-03-20 13:30:52', '2025-03-20 13:30:52');
INSERT INTO `partner` (`id`, `partner_name`, `partner_type`, `contact_person`, `contact_phone`, `contact_email`, `address`, `description`, `create_time`, `update_time`) VALUES (5, '灵狐广告', 2, '赵总', '13900139001', 'linghu@example.com', '北京市朝阳区望京SOHO', '专业广告策划公司，擅长品牌营销', '2025-03-20 13:30:52', '2025-03-20 13:30:52');
INSERT INTO `partner` (`id`, `partner_name`, `partner_type`, `contact_person`, `contact_phone`, `contact_email`, `address`, `description`, `create_time`, `update_time`) VALUES (6, '创想广告', 2, '钱经理', '13900139002', 'chuangxiang@example.com', '上海市徐汇区漕河泾开发区', '资深广告制作团队，专注内容创作', '2025-03-20 13:30:52', '2025-03-20 13:30:52');
INSERT INTO `partner` (`id`, `partner_name`, `partner_type`, `contact_person`, `contact_phone`, `contact_email`, `address`, `description`, `create_time`, `update_time`) VALUES (7, '聚力传媒', 2, '孙总监', '13900139003', 'juli@example.com', '广州市天河区珠江新城', '全案广告服务机构，经验丰富', '2025-03-20 13:30:52', '2025-03-20 13:30:52');
INSERT INTO `partner` (`id`, `partner_name`, `partner_type`, `contact_person`, `contact_phone`, `contact_email`, `address`, `description`, `create_time`, `update_time`) VALUES (8, '星光广告', 2, '周主管', '13900139004', 'xingguang@example.com', '深圳市南山区科技园', '新锐广告公司，创意见长', '2025-03-20 13:30:52', '2025-03-20 13:30:52');
INSERT INTO `partner` (`id`, `partner_name`, `partner_type`, `contact_person`, `contact_phone`, `contact_email`, `address`, `description`, `create_time`, `update_time`) VALUES (9, '光线影业', 3, '吴导演', '13700137001', 'guangxian@example.com', '北京市朝阳区光华路9号', '知名影视制作公司，作品质量上乘', '2025-03-20 13:30:52', '2025-03-20 13:30:52');
INSERT INTO `partner` (`id`, `partner_name`, `partner_type`, `contact_person`, `contact_phone`, `contact_email`, `address`, `description`, `create_time`, `update_time`) VALUES (10, '博纳影业', 3, '郑制片', '13700137002', 'bona@example.com', '北京市朝阳区东三环中路7号', '综合性影视集团，资源丰富', '2025-03-20 13:30:52', '2025-03-20 13:30:52');
INSERT INTO `partner` (`id`, `partner_name`, `partner_type`, `contact_person`, `contact_phone`, `contact_email`, `address`, `description`, `create_time`, `update_time`) VALUES (11, '万达影视', 3, '冯导演', '13700137003', 'wanda@example.com', '北京市朝阳区建国路93号', '大型影视制作公司，实力雄厚', '2025-03-20 13:30:52', '2025-03-20 13:30:52');
INSERT INTO `partner` (`id`, `partner_name`, `partner_type`, `contact_person`, `contact_phone`, `contact_email`, `address`, `description`, `create_time`, `update_time`) VALUES (12, '华谊兄弟', 3, '陈总监', '13700137004', 'huayi@example.com', '北京市朝阳区东四环中路阜通东大街', '知名娱乐集团，全方位合作伙伴', '2025-03-20 13:30:52', '2025-03-20 13:30:52');
COMMIT;

-- ----------------------------
-- Table structure for schedule
-- ----------------------------
DROP TABLE IF EXISTS `schedule`;
CREATE TABLE `schedule` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `artist_id` bigint NOT NULL COMMENT '艺人ID',
  `title` varchar(100) NOT NULL COMMENT '日程标题',
  `schedule_type` tinyint DEFAULT NULL COMMENT '日程类型(1:演出 2:商业活动 3:采访 4:会议)',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `location` varchar(200) DEFAULT NULL COMMENT '地点',
  `description` text COMMENT '日程描述',
  `status` tinyint DEFAULT '1' COMMENT '状态(1:待进行 2:进行中 3:已完成 4:已取消)',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日程安排表';

-- ----------------------------
-- Records of schedule
-- ----------------------------
BEGIN;
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (1, 1, '《英雄》导演特别放映会', 1, '2025-03-15 19:00:00', '2025-03-15 22:00:00', '北京电影学院放映厅', '导演作品展映活动，与青年导演交流分享', 2, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (2, 1, '某汽车品牌广告拍摄', 2, '2025-03-20 09:00:00', '2025-03-20 18:00:00', '上海影视基地', '豪华汽车品牌年度广告大片拍摄指导', 1, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (3, 2, '电影《江湖》拍摄', 1, '2025-03-10 10:00:00', '2025-03-10 20:00:00', '横店影视城', '新电影重要场景拍摄', 2, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (4, 2, '时尚杂志封面拍摄', 2, '2025-03-12 14:00:00', '2025-03-12 20:00:00', '上海1933老场坊', '春季刊时尚大片拍摄', 1, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (5, 3, '春季巡回演唱会上海站', 1, '2025-03-01 19:30:00', '2025-03-01 22:30:00', '上海梅赛德斯奔驰文化中心', '2025春季巡回演唱会上海站', 1, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (6, 3, '公益基金会活动', 2, '2025-03-25 09:00:00', '2025-03-25 11:30:00', '香港儿童医院', '刘德华慈善基金会春季探访活动', 1, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (7, 4, '新片《东方》首映礼', 3, '2025-03-18 14:00:00', '2025-03-18 16:00:00', '北京国贸大酒店', '新电影首映礼及媒体见面会', 1, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (8, 4, '奢侈品牌代言活动', 2, '2025-03-22 10:00:00', '2025-03-22 11:30:00', '上海外滩茂悦大酒店', '某法国奢侈品牌春季发布会', 1, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (9, 5, '新专辑制作会议', 1, '2025-03-16 13:00:00', '2025-03-16 17:00:00', '北京环球音乐', '新专辑制作讨论会', 2, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (10, 5, '综艺节目录制', 3, '2025-03-19 09:00:00', '2025-03-19 18:00:00', '浙江卫视演播厅', '春季档综艺节目录制', 1, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (11, 6, '电视剧《风起》拍摄', 1, '2025-03-05 09:30:00', '2025-03-05 20:30:00', '横店影视城', '新剧重要剧情拍摄', 1, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (12, 6, '美妆品牌活动', 2, '2025-03-28 14:00:00', '2025-03-28 16:00:00', '成都太古里', '春季新品发布会', 1, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (13, 7, '电影《战狼4》筹备会', 4, '2025-03-17 10:00:00', '2025-03-17 12:00:00', '中国电影基地', '新电影项目筹备讨论', 2, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (14, 7, '动作指导工作坊', 4, '2025-03-21 14:00:00', '2025-03-21 17:00:00', '北京电影学院', '电影动作指导专题讲座', 1, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (15, 8, '新剧本讨论会', 4, '2025-03-23 10:00:00', '2025-03-23 18:00:00', '北京华策影视', '新电视剧项目剧本讨论', 1, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (16, 8, '护肤品牌广告拍摄', 2, '2025-03-26 09:00:00', '2025-03-26 17:00:00', '上海摄影基地', '春季新品广告拍摄', 1, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (17, 9, '新电影路演活动', 1, '2025-03-02 14:00:00', '2025-03-02 18:00:00', '广州太古汇影城', '新片全国路演广州站', 1, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (18, 9, '音乐节彩排', 1, '2025-03-29 13:00:00', '2025-03-29 18:00:00', '深圳春茧体育馆', '音乐节演出彩排', 1, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (19, 10, '品牌代言活动', 2, '2025-03-08 14:00:00', '2025-03-08 16:00:00', '上海恒隆广场', '某奢侈品牌春季大秀', 1, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (20, 10, '新剧开机仪式', 1, '2025-03-30 10:00:00', '2025-03-30 12:00:00', '象山影视城', '新电视剧开机仪式及媒体发布会', 1, '2025-03-20 13:03:12', '2025-03-20 13:03:12');
INSERT INTO `schedule` (`id`, `artist_id`, `title`, `schedule_type`, `start_time`, `end_time`, `location`, `description`, `status`, `create_time`, `update_time`) VALUES (21, 2, '测试', 1, '2025-03-20 00:00:00', '2025-03-27 00:00:00', '横店', '横店', 1, '2025-03-20 21:13:15', '2025-03-20 21:13:15');
COMMIT;

-- ----------------------------
-- Table structure for social_media
-- ----------------------------
DROP TABLE IF EXISTS `social_media`;
CREATE TABLE `social_media` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `artist_id` bigint NOT NULL COMMENT '艺人ID',
  `platform_type` tinyint DEFAULT NULL COMMENT '平台类型(1:微博 2:微信 3:抖音 4:Instagram)',
  `account_name` varchar(100) DEFAULT NULL COMMENT '账号名称',
  `account_url` varchar(255) DEFAULT NULL COMMENT '账号链接',
  `followers_count` bigint DEFAULT NULL COMMENT '粉丝数量',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='社交媒体账号表';

-- ----------------------------
-- Records of social_media
-- ----------------------------
BEGIN;
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (1, 1, 1, '张艺谋导演', 'https://weibo.com/u/yimou', 2850000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (2, 1, 3, '张艺谋导演', 'https://douyin.com/yimou', 1200000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (3, 2, 1, '周迅', 'https://weibo.com/zhouxun', 4800000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (4, 2, 2, '周迅工作室', 'https://mp.weixin.qq.com/zhouxun', 980000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (5, 2, 3, '周迅', 'https://douyin.com/zhouxun', 3200000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (6, 2, 4, 'zhoxun_official', 'https://instagram.com/zhouxun', 1500000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (7, 3, 1, '刘德华Andy Lau', 'https://weibo.com/andylau', 12500000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (8, 3, 2, '华仔天地', 'https://mp.weixin.qq.com/andylau', 2800000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (9, 3, 3, '刘德华', 'https://douyin.com/andylau', 8500000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (10, 3, 4, 'andylau.official', 'https://instagram.com/andylau', 3600000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (11, 4, 1, '章子怡', 'https://weibo.com/zhangziyi', 5600000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (12, 4, 3, '章子怡', 'https://douyin.com/zhangziyi', 4200000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (13, 4, 4, 'ziyi_zhang', 'https://instagram.com/zhangiyi', 2800000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (14, 5, 1, '王俊凯', 'https://weibo.com/karry', 9800000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (15, 5, 2, '王俊凯工作室', 'https://mp.weixin.qq.com/karry', 3200000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (16, 5, 3, '王俊凯', 'https://douyin.com/karry', 7500000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (17, 5, 4, 'karry_official', 'https://instagram.com/karry', 2100000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (18, 6, 1, '杨幂', 'https://weibo.com/yangmi', 13200000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (19, 6, 2, '杨幂工作室', 'https://mp.weixin.qq.com/yangmi', 2600000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (20, 6, 3, '杨幂', 'https://douyin.com/yangmi', 9800000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (21, 6, 4, 'yangmi_official', 'https://instagram.com/yangmi', 4200000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (22, 7, 1, '吴京', 'https://weibo.com/wujing', 7800000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (23, 7, 2, '吴京影视', 'https://mp.weixin.qq.com/wujing', 1800000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (24, 7, 3, '吴京', 'https://douyin.com/wujing', 6500000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (25, 8, 1, '赵丽颖', 'https://weibo.com/zhaoliying', 11500000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (26, 8, 2, '赵丽颖工作室', 'https://mp.weixin.qq.com/zhaoliying', 2900000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (27, 8, 3, '赵丽颖', 'https://douyin.com/zhaoliying', 8800000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (28, 8, 4, 'zhaoliying_official', 'https://instagram.com/zhaoliying', 3100000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (29, 9, 1, '易烊千玺', 'https://weibo.com/jackson', 10200000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (30, 9, 2, '易烊千玺工作室', 'https://mp.weixin.qq.com/jackson', 3500000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (31, 9, 3, '易烊千玺', 'https://douyin.com/jackson', 9200000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (32, 9, 4, 'jackson_yee', 'https://instagram.com/jackson', 2800000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (33, 10, 1, '迪丽热巴', 'https://weibo.com/dilireba', 9600000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (34, 10, 2, '嘉行迪丽热巴工作室', 'https://mp.weixin.qq.com/dilireba', 2400000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (35, 10, 3, '迪丽热巴', 'https://douyin.com/dilireba', 8100000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
INSERT INTO `social_media` (`id`, `artist_id`, `platform_type`, `account_name`, `account_url`, `followers_count`, `create_time`, `update_time`) VALUES (36, 10, 4, 'dilireba_official', 'https://instagram.com/dilireba', 3800000, '2025-03-20 13:15:31', '2025-03-20 13:15:31');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `username` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` (`id`, `username`, `password`, `create_time`, `update_time`) VALUES (1, 'hzzaz', '$2a$10$NGmM1.enYV3M2BqoJSQ0Uujvw3y7CSn/Sc07LQHpktdD3xyJfSQ62', '2025-03-20 12:36:01', '2025-03-20 12:36:01');
COMMIT;

-- ----------------------------
-- Table structure for work
-- ----------------------------
DROP TABLE IF EXISTS `work`;
CREATE TABLE `work` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `artist_id` bigint NOT NULL COMMENT '艺人ID',
  `work_name` varchar(100) NOT NULL COMMENT '作品名称',
  `work_type` tinyint DEFAULT NULL COMMENT '作品类型(1:影视剧 2:音乐 3:广告 4:综艺)',
  `release_date` date DEFAULT NULL COMMENT '发布日期',
  `image` varchar(255) DEFAULT NULL COMMENT '作品图片',
  `role_name` varchar(50) DEFAULT NULL COMMENT '担任角色',
  `description` text COMMENT '作品描述',
  `partner_id` bigint DEFAULT NULL COMMENT '合作方ID',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='作品信息表';

-- ----------------------------
-- Records of work
-- ----------------------------
BEGIN;
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (1, 1, '英雄', 1, '2002-12-24', NULL, '导演', '一部史诗般的武侠电影，由李连杰、梁朝伟、张曼玉等主演，获得多个国际奖项提名', NULL, '2025-03-20 12:54:45', '2025-03-20 12:54:45');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (2, 1, '满城尽带黄金甲', 1, '2006-12-14', NULL, '导演', '大型古装剧情片，周润发、巩俐主演，以唐朝为背景的宫廷剧', NULL, '2025-03-20 12:54:45', '2025-03-20 12:54:45');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (3, 2, '如懿传', 1, '2018-08-20', NULL, '如懿', '清宫剧情剧，在剧中饰演女主角如懿', NULL, '2025-03-20 12:54:45', '2025-03-20 12:54:45');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (4, 2, '喜宝', 1, '2020-10-16', NULL, '喜宝', '都市爱情电影，展现都市女性的情感故事', NULL, '2025-03-20 12:54:45', '2025-03-20 12:54:45');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (5, 3, '扫毒3', 1, '2023-07-01', NULL, '刘正风', '警匪动作电影，饰演缉毒警察', NULL, '2025-03-20 12:54:45', '2025-03-20 12:54:45');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (6, 3, '澳门风云', 1, '2014-01-31', NULL, '冷锋', '赌场题材喜剧电影，展现澳门赌场的故事', NULL, '2025-03-20 12:54:45', '2025-03-20 12:54:45');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (7, 4, '卧虎藏龙', 1, '2000-07-07', NULL, '玉娇龙', '李安导演的武侠电影，一举成名的作品', NULL, '2025-03-20 12:54:45', '2025-03-20 12:54:45');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (8, 4, '艺伎回忆录', 1, '2005-12-09', NULL, '千代子', '好莱坞电影，饰演日本艺伎', NULL, '2025-03-20 12:54:45', '2025-03-20 12:54:45');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (9, 5, '星辰大海', 2, '2023-12-01', '9d40f6cc-331a-4a4f-a59b-05d8e77c91f9.png', '演唱者', '个人音乐专辑，展现音乐才华', NULL, '2025-03-20 12:54:45', '2025-03-20 12:54:45');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (10, 5, '大主宰', 1, '2021-08-08', NULL, '牧尘', '玄幻网络剧，担任男主角', NULL, '2025-03-20 12:54:45', '2025-03-20 12:54:45');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (11, 1, '英雄', 1, '2002-12-24', NULL, '导演', '一部史诗般的武侠电影，由李连杰、梁朝伟、张曼玉等主演，获得多个国际奖项提名', NULL, '2025-03-20 12:56:39', '2025-03-20 12:56:39');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (12, 1, '满城尽带黄金甲', 1, '2006-12-14', NULL, '导演', '大型古装剧情片，周润发、巩俐主演，以唐朝为背景的宫廷剧', NULL, '2025-03-20 12:56:39', '2025-03-20 12:56:39');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (13, 2, '如懿传', 1, '2018-08-20', NULL, '如懿', '清宫剧情剧，在剧中饰演女主角如懿', NULL, '2025-03-20 12:56:39', '2025-03-20 12:56:39');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (14, 2, '喜宝', 1, '2020-10-16', NULL, '喜宝', '都市爱情电影，展现都市女性的情感故事', NULL, '2025-03-20 12:56:39', '2025-03-20 12:56:39');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (15, 3, '扫毒3', 1, '2023-07-01', NULL, '刘正风', '警匪动作电影，饰演缉毒警察', NULL, '2025-03-20 12:56:39', '2025-03-20 12:56:39');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (16, 3, '澳门风云', 1, '2014-01-31', NULL, '冷锋', '赌场题材喜剧电影，展现澳门赌场的故事', NULL, '2025-03-20 12:56:39', '2025-03-20 12:56:39');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (17, 4, '卧虎藏龙', 1, '2000-07-07', NULL, '玉娇龙', '李安导演的武侠电影，一举成名的作品', NULL, '2025-03-20 12:56:39', '2025-03-20 12:56:39');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (18, 4, '艺伎回忆录', 1, '2005-12-09', NULL, '千代子', '好莱坞电影，饰演日本艺伎', NULL, '2025-03-20 12:56:39', '2025-03-20 12:56:39');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (19, 5, '星辰大海', 2, '2023-12-01', NULL, '演唱者', '个人音乐专辑，展现音乐才华', NULL, '2025-03-20 12:56:39', '2025-03-20 12:56:39');
INSERT INTO `work` (`id`, `artist_id`, `work_name`, `work_type`, `release_date`, `image`, `role_name`, `description`, `partner_id`, `create_time`, `update_time`) VALUES (20, 5, '大主宰', 1, '2021-08-08', NULL, '牧尘', '玄幻网络剧，担任男主角', NULL, '2025-03-20 12:56:39', '2025-03-20 12:56:39');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
