/*
 Navicat Premium Data Transfer
 Source Server         : 闪购
 Source Server Type    : MySQL
 Source Server Version : 80020
 Source Host           : 120.25.223.121:3306
 Source Schema         : shangou_db
 Target Server Type    : MySQL
 Target Server Version : 80020
 File Encoding         : 65001
 Date: 21/06/2020 21:13:01
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `address_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '收获地址id',
  `user_id` bigint(0) NOT NULL COMMENT '外键用户',
  `pcd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省市区',
  `floor_door_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '楼层门牌号',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货电话',
  `receiver` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '收货人',
  `moren` tinyint(1) NULL DEFAULT NULL COMMENT '是否默认：YES或NO',
  `tag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址标签：家、学校、公司',
  `lng` double NOT NULL COMMENT '经度',
  `lat` double NOT NULL COMMENT '纬度',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '小区大厦学校名称',
  `city_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市编码',
  PRIMARY KEY (`address_id`) USING BTREE,
  INDEX `user_id`(`user_id`) USING BTREE,
  INDEX `phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 96 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (7, 1, NULL, '20-1', '18223170162', 'hh', 0, 'la', 106.526685, 29.602544, '新牌坊三路与新牌坊二路交叉口西北100米 新牌坊社区', '023');
INSERT INTO `address` VALUES (10, 27, NULL, '7-8-12', '18166335013', '柏亮', 1, '家', 106.536925, 29.604095, '红枫路9号 首创十方界', '023');
INSERT INTO `address` VALUES (11, 6, NULL, '12-1', '15172359843', '柏亮', 0, 'bl', 106.484756, 29.53199, '石桥铺科园一路2号 大西洋国际大厦', '023');
INSERT INTO `address` VALUES (12, 12, NULL, '带西洋', '15923964455', '田宝山', 1, '啊啊', 106.484756, 29.53199, '石桥铺科园一路2号 大西洋国际大厦', '023');
INSERT INTO `address` VALUES (16, 1, NULL, '12', '18223170162', '12', 0, '12', 106.484756, 29.53199, '石桥铺科园一路2号 大西洋国际大厦', '023');
INSERT INTO `address` VALUES (24, 42, NULL, '1-2-1', '13223348730', '刘国彬', 1, '刚收', 106.484868, 29.534478, '渝州路27-29号 华宇名都城', '023');
INSERT INTO `address` VALUES (25, 93, NULL, '7-8-12', '18166335013', '柏亮', 1, '家', 106.536925, 29.604095, '红枫路9号 首创十方界', '023');
INSERT INTO `address` VALUES (26, 10, NULL, '12-1', '18883944248', '张三', 0, '公司', 106.484756, 29.53199, '石桥铺科园一路2号 大西洋国际大厦', '023');
INSERT INTO `address` VALUES (27, 10, NULL, '12-1', '18883944248', '张三', 0, '公司', 106.480781, 29.634179, '大竹林街道大竹林康庄美地二期 美地康二社区', '023');
INSERT INTO `address` VALUES (28, 5, NULL, '12-5', '17754923091', '陈', 0, 'gs', 106.484756, 29.53199, '石桥铺科园一路2号 大西洋国际大厦', '023');
INSERT INTO `address` VALUES (29, 93, NULL, '12-1', '18166335013', '柏亮', 1, '学校', 106.484756, 29.53199, '石桥铺科园一路2号 大西洋国际大厦', '023');
INSERT INTO `address` VALUES (30, 93, NULL, '7-8-12', '18166335013', '柏亮', 0, '学校', 106.485195, 29.53111, '科园一路6号(高新区管委会旁) 渝高未来大厦', '023');
INSERT INTO `address` VALUES (31, 6, NULL, '12-1', '15172359843', '柏亮', 0, 'bl', 106.536925, 29.604095, '红枫路9号 首创十方界', '023');
INSERT INTO `address` VALUES (32, 6, NULL, '12-1', '15172359843', '柏亮', 0, 'bl', 106.536925, 29.604095, '红枫路9号 首创十方界', '023');
INSERT INTO `address` VALUES (33, 81, NULL, '18-4', '18725906151', '啧啧啧', 1, 'ho', 106.484868, 29.534478, '渝州路27-29号 华宇名都城', '023');
INSERT INTO `address` VALUES (34, 27, NULL, '12-1', '18166335013', '柏亮', 1, '家', 106.484756, 29.53199, '石桥铺科园一路2号 大西洋国际大厦', NULL);
INSERT INTO `address` VALUES (35, 10, NULL, '12-1', '18883944248', '张三', 0, '公司', 106.540649, 29.402424, '行政中心1号楼巴南区政府大楼 巴南区政府大楼', '023');
INSERT INTO `address` VALUES (36, 9, NULL, '11-1', '18875150682', 'quincey', 0, '12', 106.484756, 29.53199, '石桥铺科园一路2号 大西洋国际大厦', '023');
INSERT INTO `address` VALUES (40, 9, NULL, '7-2', '18875150682', 'quincey', 0, '12', 106.482292, 29.529567, '雨林商都8层 重庆井边亭商务酒店(雨林商都店)', '023');
INSERT INTO `address` VALUES (45, 86, NULL, '12', '15077777777', '木木', 0, '测试', 106.484756, 29.53199, '石桥铺科园一路2号 大西洋国际大厦', '023');
INSERT INTO `address` VALUES (49, 89, NULL, '11-2', '16301011012', 'zz', 0, '家', 115.673546, 34.442871, '胜利东路100号 滨河安居小区', '023');
INSERT INTO `address` VALUES (50, 84, NULL, '11-2', '16301011012', '王大锤', 0, '家', 115.673546, 34.442871, '胜利东路100号 滨河安居小区', '0351');
INSERT INTO `address` VALUES (52, 25, NULL, '12-9', '18919560873', '山河社稷图', 0, '撒', 106.484756, 29.53199, '石桥铺科园一路2号 大西洋国际大厦', '023');
INSERT INTO `address` VALUES (54, 25, NULL, '12-9', '18919560873', '三十功名尘与土', 0, '撒', 116.375325, 39.911689, '堂子胡同9号西单新一代商城F1 名品女苑', '023');
INSERT INTO `address` VALUES (55, 84, NULL, '3-51', '16301011013', '王小锤1', 0, '公司', 112.531173, 37.870119, '望景路附近 滨河安居小区', '0351');
INSERT INTO `address` VALUES (62, 84, NULL, '11-2', '16301011012', '王大大锤', 0, '家', 115.676291, 34.443615, '胜利东路过河50米路南 胜利家园(胜利路)', '0351');
INSERT INTO `address` VALUES (63, 7, NULL, '12-10', '18375779001', 'lyk', 1, '公司', 106.484756, 29.53199, '石桥铺科园一路2号 大西洋国际大厦', '023');
INSERT INTO `address` VALUES (66, 84, NULL, '11-2', '16301011013', '王小锤', 0, '家', 115.672152, 34.44368, '胜利路与中州路交叉口农业银行南 银烁悦城小区', '0351');
INSERT INTO `address` VALUES (70, 86, NULL, '11', '15077777777', '木木', 0, '测试', 106.48563, 29.531708, '科园一路3号 航天C座', '023');
INSERT INTO `address` VALUES (71, 9, NULL, '11-1', '18875150682', 'quincey', 1, '12', 106.474473, 29.537153, '富洲路8号(石小路与经纬大道交汇处) 富州新城', '023');
INSERT INTO `address` VALUES (81, 5, NULL, '25-7', '12345678912', '晨曦', 0, 'js', 106.476246, 29.531188, '石桥铺白马凼 怡庭家园', '023');
INSERT INTO `address` VALUES (82, 5, NULL, '12-12', '17754923095', '1', 1, '25', 106.57212, 29.521141, '南坪南城大道协信星光2栋2楼(星光时代车库旁) 厚爱主题酒店', '023');
INSERT INTO `address` VALUES (83, 89, NULL, '11-2', '16301011012', 'zz', 1, '', 106.484756, 29.53199, '石桥铺科园一路2号 大西洋国际大厦', '023');
INSERT INTO `address` VALUES (86, 84, NULL, '5-3', '16301011013', '王小锤2', 1, '家', 106.576582, 29.556282, '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)', '023');
INSERT INTO `address` VALUES (87, 14, NULL, '1', '18182282703', '1', 1, '1', 106.514093, 29.528622, '谢家湾正街1号 重庆阿哆娜假日酒店(医科大学附一院袁家岗轻轨站店)', '023');
INSERT INTO `address` VALUES (88, 86, NULL, '11', '15077777777', '木木', 1, '测试', 106.515266, 29.508113, '西郊路3号 正升·百老汇名品街', '023');
INSERT INTO `address` VALUES (89, 100, NULL, '13栋2单元3-3', '13101261802', '邓际新', NULL, '', 106.509604, 29.506395, '杨家坪西郊支路18号(动物园老大门旁) 联发·嘉园', '023');
INSERT INTO `address` VALUES (94, 101, NULL, '4413', '13389662165', 'czh', 1, '', 106.329335, 29.593132, '重庆科技学院学术交流中心旁 重科大酒店(学术交流中心)', '023');
INSERT INTO `address` VALUES (95, 1, NULL, '12-01', '17346605396', '无刷你', 1, '公司', 106.484756, 29.53199, '石桥铺科园一路2号 大西洋国际大厦', '023');

-- ----------------------------
-- Table structure for app_config
-- ----------------------------
DROP TABLE IF EXISTS `app_config`;
CREATE TABLE `app_config`  (
  `config_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '配置id',
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '配置的键名',
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '配置的值：可以是url地址，可以是json字符串对象，可以是基本类型，详见配置说明',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '配置说明',
  `is_json` tinyint(1) NULL DEFAULT NULL COMMENT '是否是json字符串？',
  `class_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '反射类的全路径包名称？',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of app_config
-- ----------------------------
INSERT INTO `app_config` VALUES (3, 'headerImg', 'https://img30.360buyimg.com/mobilecms/jfs/t1/101865/32/17193/4964/5e854a4dE3c3fc28b/198215f64a6d0e6d.png', '首页=》头部=》背景色值', 0, '');
INSERT INTO `app_config` VALUES (4, 'bannerImg', 'data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAu4AAAEkBAMAAACCqKm2AAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAASUExURUdwTADQNgDROADQNwDQNgDPNyPCMLcAAAAFdFJOUwB4ObLfh8VTogAAAzZJREFUeNrt2utx2kAUgNG1K4hECgBSgSxSgEekApT+W8nY/uN4wLGItM/zlXBm5+5dQfitFAUE3LmLO3dx5y7u3MWdu7hz5y7u3MWdu7hzF3fu4s6du7hzF3fu4s5d3LmLO3dx585d3LmLO3dx5y7u3MWdO3dx5y7u3MWdu7hzF3fu3MWdu7hzF3fu4s5d3LmLO3fu4s5d3LmLO3dx5y7u3LmLO3dx5y7u3MWdu7hz5y7u3MWdu7hzF3fu4s5d3LlzF3fu4s5d3LmLO3dx585d3LmLO3dx5y7u3MWdO3cE3LmLO3dx5y7u3MWdu7hz5y7u3LW+++EXhOjNfQhhxyFywz689PgdRcSe39RfOvzEEalLH973w5iPMtifwocejflog/2D/AnMpk3X1I35uIP973bG/EaDfQifZqfcene81YMxv/pg/xa+kjEfb7Ab84kGu20+3sZuzOcx2I35VIM9+Giz3acYYz7Hwe4dFeedZMznM9g/yBvziwb7OureUQvfSfuwXi7YONepX0Xueyetre6CjXedumBTXacu2AXXadg0F2yc69QLNs7r1Cfi5UtMH2Jltdl+ibHapFpifJy/pf4UEtT8ajPsQ5qalk+m3vRS+ZxSvdml8q7/Cay+2rQmP/Uhj5pa5y+5qDclP+ek3sxDKjv1Jh5SaZ5JX1nna5afh33ItXrlc1av+AmbuXql8gWoVyhfiHpl8gWpVyRfmHol8gWqVyBfqHrh8gWrFyxfuHqZb9i5AvXy5GtRf60Y+arUi/k+n+X39ep/k7rUqJ79L+BTrepZy1et/tJDjgt9bZdpEWvl3IT6q3yXj/zchZbKZNBXP9avyKf/S+tze+rpB307Y/2KfLK31KVvVz3doB/7oNjjpuUBk+7QT456/EPvqKc49I56gkPvqH9+6HdeSKl2+tPq88VR/+J3s/WeU+cO+qJRvwb9ZTiiXNpxd4KeauDcSz8ZL/97zY5Ll8t5dJGuM3EWHPupM11Wtv/XuZ+Zb2R/2N3An6ehZ77twD923Tiez2/b+Xkcu+5onEuSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEmSJEnv+wPNS6G80SVejgAAAABJRU5ErkJggg==', '首页头部下面banner的图片', 0, NULL);
INSERT INTO `app_config` VALUES (5, 'indexImgs', '[\"https://img30.360buyimg.com/jddjadvertise/jfs/t1/127541/14/3087/199914/5eccc756E9262b335/5a87b49874a52f03.jpg\",\"https://img30.360buyimg.com/mobilecms/jfs/t1/131487/14/2567/367588/5eec7826Eeed24b56/ffca7087b8f55424.png\",\"https://img30.360buyimg.com/mobilecms/jfs/t1/116420/21/10323/270347/5ee9847eE1d5e0e5d/dbdab5a5ba558d38.png\",\"https://img30.360buyimg.com/mobilecms/jfs/t1/140565/25/1085/100100/5eec8dacEdd046c7e/8bc69822ca040bc7.jpg\",\"https://img30.360buyimg.com/jddjadvertise/jfs/t1/136383/15/734/142553/5ed0da66E002e03ef/76f16807caeedf2c.jpg\",\"https://img30.360buyimg.com/jddjadvertise/jfs/t1/144905/14/473/83974/5ee1fb22Edf3e57a8/301ec6845da3618f.jpg\",\"https://img30.360buyimg.com/mobilecms/jfs/t1/117246/6/10628/201326/5eee28d0E8ff798a4/eade2a0ce784cb74.png\",\"https://img30.360buyimg.com/mobilecms/jfs/t1/113500/21/10403/283942/5eec7514E19ccd0be/6718ce2a25a6de41.png\",\"https://img30.360buyimg.com/mobilecms/jfs/t1/137496/15/2527/99465/5eeb4856Ed83f238b/66d39c73631303eb.jpg\",\"https://img30.360buyimg.com/mobilecms/jfs/t1/114253/30/10519/283152/5eeb1e36Ebb22c76f/23d735903ce74fc8.png\"]', '首页轮播图', 1, NULL);
INSERT INTO `app_config` VALUES (6, 'indexGifImg', 'https://img30.360buyimg.com/mobilecms/jfs/t1/128181/20/4556/104191/5edf3627E894cf760/64c303325c501616.gif', '首页gif图片', 0, NULL);
INSERT INTO `app_config` VALUES (7, 'newPerson', 'https://imgcps.jd.com/djmarketing14/img_491324/img_491178/img_491153/wqU4/5paw5Lq65LiT5Lqr5ruh5YeP5Yi4/wqUxOA/5rKD5bCU546b5paw5Lq65LiT5Lqr/54Ot6ZSA/55u06ZmNOC44OeaKmA/5YePMC415YWD6L-Q6LS5/wqUxNi44/wqU4Ljg/wqUxMS44/IA/5Y6f5Lu3OS45/IA/5LuK5pel5LiL5Y2V6L-UNjblhYM/t-5e9e8c2ac941a59653aa0e8c/d6baeb67.png', '新人图片', 0, NULL);
INSERT INTO `app_config` VALUES (8, 'newPersonDown', 'https://img30.360buyimg.com/mobilecms/jfs/t1/134234/7/2673/107266/5eec75cdEcd3b457f/a9f15d7cb9a65aa1.gif', '新用户下面的动态图片', 0, NULL);
INSERT INTO `app_config` VALUES (9, 'hostWords', '[\"纯牛奶\",\"休闲食品\",\"伊利高钙\",\"鲜花\",\"伊利\",\"牙膏\",\"欧莱雅\",\"粽子1元12006614\",\"文具\",\"洗衣液\"]', '热点搜索关键字', 1, NULL);
INSERT INTO `app_config` VALUES (10, 'indexMenu', '[{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/96217/34/14648/6530/5e68986eE5dab2e42/13341609e6f7d689.png\",\"text\":\"话费充值\",\"url\":\"没得地址\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/86974/13/9784/6733/5e130594E0afe10ac/c31023f0681016d1.png\",\"text\":\"平台公示\",\"url\":\"没得地址\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/90395/11/9898/8772/5e1319ecE2a70bb80/9b0967954d11eb0b.png\",\"text\":\"签到\",\"url\":\"没得地址\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/110355/36/3573/7822/5e12fdadEddc69a75/709e7b81b039de24.png\",\"text\":\"超市\",\"url\":\"没得地址\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/96994/8/9821/8594/5e1319ffE94b786de/6050cfc0db1482c8.png\",\"text\":\"鲜豆庄园\",\"url\":\"没得地址\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/105571/28/16256/6940/5e7a2fedE88fd88e1/8567fdecbb34ef6f.png\",\"text\":\"手机数码\",\"url\":\"没得地址\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/88563/12/9867/8683/5e1300b9E6a5a7bc0/576888946c59b2da.png\",\"text\":\"鲜花礼品\",\"url\":\"没得地址\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/103222/36/9831/8835/5e130149Ece00bda1/f107c39cabe5676d.png\",\"text\":\"送药上门\",\"url\":\"没得地址\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/89290/3/12851/8961/5e4d2ab8E3c28a4c2/6701d0ef466c7c4b.png\",\"text\":\"每日领蛋\",\"url\":\"没得地址\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/104800/23/10811/9404/5e2050deEbc45604a/f1b4eaf2d48d97ec.png\",\"text\":\"烘焙蛋糕\",\"url\":\"没得地址\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/101750/23/19067/8918/5e99e354Ee8235bd7/d18c93451390d57b.png\",\"text\":\"0元专区\",\"url\":\"没得地址\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/85704/32/9880/9103/5e12ffdeE8db5c29a/21d02c131a8373ad.png\",\"text\":\"水果\",\"url\":\"没得地址\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/103361/21/10558/7417/5e1c6698E5ab446f9/f0beb6d5662103bd.png\",\"text\":\"家居时尚\",\"url\":\"没得地址\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/93109/40/9960/10139/5e12fe63Eccaacb36/1b74d332f526868f.png\",\"text\":\"买菜\",\"url\":\"没得地址\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/91844/10/9697/7304/5e130207Eea7b051f/7630985da2a4688f.png\",\"text\":\"大牌免运\",\"url\":\"没得地址\"}]', '首页菜单展示', 1, NULL);
INSERT INTO `app_config` VALUES (11, 'vipImgs', '[\"https://img30.360buyimg.com/mobilecms/jfs/t1/149207/23/1090/8504/5eecbf0eEa172aa03/270f1ccdbd08f94a.png\",\"https://img30.360buyimg.com/mobilecms/jfs/t1/124936/5/4840/10584/5ee64889E503b96a5/24b86ed63f23b533.png\",\"https://img30.360buyimg.com/mobilecms/jfs/t1/147195/24/671/7728/5ee64865Ec0a2c432/51cd870ff226456b.png\"]', 'vip会员的三张图', 1, NULL);
INSERT INTO `app_config` VALUES (12, 'userPageImgs', '[\"https://img30.360buyimg.com/mobilecms/jfs/t1/119767/30/5801/99141/5ec1fddcEad3cf323/b0dcd10cf877ac19.png\",\"https://img30.360buyimg.com/mobilecms/jfs/t1/116803/20/8815/70739/5ed46098E061e45e9/8ac6f4b4a215cbbb.png\"]', NULL, 1, NULL);
INSERT INTO `app_config` VALUES (13, 'userMenus', '[{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/113252/24/3266/5476/5ea6c0ebEd564555a/c426ede6bbcb0924.png\",\"text\":\"商家会员\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/115239/40/3898/3209/5eaa967dE4c28a170/5ad63e3dbe588bf4.png\",\"text\":\"V+会员\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/112282/8/3243/5355/5ea6c2a6E91aeb237/4b5528a010e1a578.png\",\"text\":\"金融权益\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/119589/12/1893/5431/5ea6c0bbE7fbe19e7/1e85f731ddbce83a.png\",\"text\":\"我的评价\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/111095/11/3330/5265/5ea6c0d3E7a08e774/04e4a659c3df2dec.png\",\"text\":\"我的地址\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/111584/9/3313/6034/5ea6c2d8E3fa1afe1/571399161e79c410.png\",\"text\":\"商家入驻\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/114514/18/10191/3623/5ee83d1dEdae682e3/69a62a0ca4e4b10e.png\",\"text\":\"白条立减\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/119776/35/1870/5602/5ea6c09eE660ae986/d7aacf124613fdcc.png\",\"text\":\"我的关注\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/108382/3/14756/4984/5ea6c288Ec8fe4d69/ffef369a8d84999c.png\",\"text\":\"关于我们\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/113197/2/3245/5374/5ea6c15bEd30c2d73/281fa8d98e2e160f.png\",\"text\":\"签到有惊喜\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/112542/16/3261/5236/5ea6c1a2E8747541c/cc04474fada775c8.png\",\"text\":\"售后退款\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/115212/14/3299/3070/5ea6c1f5Ec5d8088f/b7e9ffe9b7a92bbd.png\",\"text\":\"客服与帮助\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/111163/28/3293/5716/5ea6c263E2ede6d39/df672c7b28dc7d2e.png\",\"text\":\"配送员注册\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/107715/28/14430/4746/5ea6c2b1E8ca79ca7/3dfc596f68613f0b.png\",\"text\":\"办卡免单\"},{\"img\":\"https://img30.360buyimg.com/mobilecms/jfs/t1/110979/15/3260/3937/5ea6c2c1Ec24e0c74/f27797b58ff54966.png\",\"text\":\"支付优惠\"}]', NULL, 1, NULL);

-- ----------------------------
-- Table structure for approval_log
-- ----------------------------
DROP TABLE IF EXISTS `approval_log`;
CREATE TABLE `approval_log`  (
  `approval_log_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '审批的日志id',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '备注审核的内容',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '日志创建时间',
  `res` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核的结果:需重新提交、审核通过、暂不合作',
  `approval_user_id` bigint(0) NULL DEFAULT NULL COMMENT '审核人id',
  `approval_user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核人真实名字',
  `merchant_id` bigint(0) NULL DEFAULT NULL COMMENT '商户id',
  PRIMARY KEY (`approval_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13367 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of approval_log
-- ----------------------------
INSERT INTO `approval_log` VALUES (1, '1', '2020-06-05 14:20:35', '同意如入驻', 1, '张三', 1591264971747);
INSERT INTO `approval_log` VALUES (2, '1', '2020-06-05 14:55:05', '同意如入驻', NULL, NULL, 1591264971747);
INSERT INTO `approval_log` VALUES (3, '1', '2020-06-05 14:55:49', '同意如入驻', NULL, NULL, 1591264971747);
INSERT INTO `approval_log` VALUES (4, '1', '2020-06-05 14:57:37', NULL, NULL, NULL, 1591264971747);
INSERT INTO `approval_log` VALUES (5, NULL, '2020-06-05 15:07:16', NULL, NULL, NULL, 1591268241883);
INSERT INTO `approval_log` VALUES (100, '1', '2020-06-05 14:55:49', '同意如入驻', NULL, NULL, 1591264971747);
INSERT INTO `approval_log` VALUES (322, '1', '2020-06-05 14:55:49', '同意如入驻', NULL, NULL, 1591264971747);
INSERT INTO `approval_log` VALUES (2342, '1', '2020-06-05 14:55:49', '同意如入驻', NULL, NULL, 1591264971747);
INSERT INTO `approval_log` VALUES (13221, '1', '2020-06-05 14:55:49', '同意如入驻', NULL, NULL, 1591264971747);
INSERT INTO `approval_log` VALUES (13222, '121212', '2020-06-05 15:26:34', NULL, 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13223, '店铺很不错，可以入驻', '2020-06-05 15:27:20', '审核通过', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13224, '非常棒 ，可以', '2020-06-05 15:28:46', '审核通过', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13225, '不行', '2020-06-05 15:28:54', '需重新提交', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13226, '不行', '2020-06-05 15:29:08', '需重新提交', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13227, '111', '2020-06-05 15:29:26', '需重新提交', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13228, '就是爱你', '2020-06-05 15:32:28', '暂不合作', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13229, '号的', '2020-06-05 15:32:36', '审核中', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13230, '可以啊', '2020-06-05 15:32:41', '需重新提交', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13231, '', '2020-06-05 15:33:51', '审核通过', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13232, '1', '2020-06-05 15:34:13', '审核通过', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13233, '21', '2020-06-05 15:34:22', '审核通过', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13234, NULL, '2020-06-05 15:39:11', '待提交', NULL, NULL, 1591268241883);
INSERT INTO `approval_log` VALUES (13235, '可以搞', '2020-06-05 15:44:11', '审核通过', 5, 'cxd', 1591268241883);
INSERT INTO `approval_log` VALUES (13236, '很不错的店铺哦', '2020-06-05 15:44:39', '审核通过', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13237, '5', '2020-06-05 15:47:39', '需重新提交', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13238, '不错，可以营业', '2020-06-05 15:47:53', '审核通过', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13239, '手术室', '2020-06-05 15:48:26', '需重新提交', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13240, '社区卫生', '2020-06-05 15:48:33', '审核通过', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13241, '测试', '2020-06-05 15:50:42', '审核通过', 7, NULL, NULL);
INSERT INTO `approval_log` VALUES (13242, '太完美了申请通过', '2020-06-05 15:54:14', '审核通过', 7, 'lyk', 1591269559236);
INSERT INTO `approval_log` VALUES (13243, '太完美了申请通过', '2020-06-05 15:54:16', '审核通过', 7, 'lyk', 1591269559236);
INSERT INTO `approval_log` VALUES (13244, '快乐的日子开启咯', '2020-06-05 16:07:45', '审核通过', 7, 'lyk', 1591264971747);
INSERT INTO `approval_log` VALUES (13248, '资质合格，该店的门脸照片和室内照充分体现了店内特色。高端，典雅！', '2020-06-05 16:48:11', '审核通过', 10, '？？？？', NULL);
INSERT INTO `approval_log` VALUES (13249, '该店的特色十分明显，室内照和门脸照充分体现了店主对摆摊的渴望！', '2020-06-05 16:49:29', '审核通过', 10, '？？？？', NULL);
INSERT INTO `approval_log` VALUES (13250, '1', '2020-06-05 16:57:04', '审核通过', 8, 'sdf', 1591269559279);
INSERT INTO `approval_log` VALUES (13251, '???', '2020-06-05 17:16:46', '审核中', 6, 'hulei', 1591264971747);
INSERT INTO `approval_log` VALUES (13252, '很不错', '2020-06-05 17:23:09', '审核通过', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13257, '通过', '2020-06-05 18:32:21', '审核通过', 6, 'hulei', 1591264971747);
INSERT INTO `approval_log` VALUES (13258, '123123123', '2020-06-05 19:00:13', '需重新提交', 6, 'hulei', 1591264971747);
INSERT INTO `approval_log` VALUES (13259, '', '2020-06-05 20:17:08', '审核通过', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13260, '', '2020-06-05 20:17:16', '审核中', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13261, '', '2020-06-05 20:17:19', '需重新提交', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13262, '', '2020-06-05 20:17:28', '审核通过', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13263, '12 312 312 3', '2020-06-05 20:41:43', '暂不合作', 24, '李永楷', 1591264971747);
INSERT INTO `approval_log` VALUES (13264, '312 3123', '2020-06-05 20:42:14', '审核中', 24, '李永楷', 1591268241883);
INSERT INTO `approval_log` VALUES (13294, '无', '2020-06-06 10:39:16', '审核通过', 9, 'qc', 1591348173752);
INSERT INTO `approval_log` VALUES (13295, '123', '2020-06-06 10:39:39', '审核通过', 9, 'qc', 1591348173752);
INSERT INTO `approval_log` VALUES (13297, '没意见', '2020-06-06 10:42:29', '审核通过', 9, 'qc', 1591348173752);
INSERT INTO `approval_log` VALUES (13298, '合格', '2020-06-06 10:43:32', '审核通过', 10, 'ly', 1591268241883);
INSERT INTO `approval_log` VALUES (13299, '123', '2020-06-06 10:45:18', '审核通过', 9, 'qc', 1591348173752);
INSERT INTO `approval_log` VALUES (13300, '啥？？？？', '2020-06-06 10:47:59', '审核通过', 9, 'qc', 1591348173752);
INSERT INTO `approval_log` VALUES (13301, '333333', '2020-06-06 10:49:28', '审核通过', 9, 'qc', 1591348173752);
INSERT INTO `approval_log` VALUES (13303, '凄凄切切', '2020-06-06 10:53:00', '审核通过', 9, 'qc', 1591348173752);
INSERT INTO `approval_log` VALUES (13304, '不通过', '2020-06-06 10:59:12', '暂不合作', 12, 'ti', 1591319157884);
INSERT INTO `approval_log` VALUES (13305, '我觉得ok', '2020-06-06 11:01:22', '审核通过', 12, 'ti', 1591319157884);
INSERT INTO `approval_log` VALUES (13306, '还行', '2020-06-06 16:02:10', '审核通过', 48, '大司马', 1591411520193);
INSERT INTO `approval_log` VALUES (13307, NULL, NULL, '暂不合作', NULL, 'Tcy', 1591269559279);
INSERT INTO `approval_log` VALUES (13308, NULL, NULL, '审核通过', NULL, 'Tcy', 1591269559279);
INSERT INTO `approval_log` VALUES (13309, NULL, NULL, '审核中', NULL, 'Tcy', 1591269559279);
INSERT INTO `approval_log` VALUES (13310, NULL, NULL, '审核通过', NULL, 'Tcy', 1591269559279);
INSERT INTO `approval_log` VALUES (13311, NULL, NULL, '暂不合作', NULL, 'Tcy', 1591269559279);
INSERT INTO `approval_log` VALUES (13312, NULL, NULL, '审核通过', NULL, 'Tcy', 1591269559279);
INSERT INTO `approval_log` VALUES (13313, NULL, NULL, '审核通过', NULL, 'ni hao ', 1591269559279);
INSERT INTO `approval_log` VALUES (13314, NULL, NULL, '暂不合作', NULL, 'Tcy', 1591269559279);
INSERT INTO `approval_log` VALUES (13315, NULL, NULL, '审核通过', NULL, 'Tcy', 1591269559279);
INSERT INTO `approval_log` VALUES (13316, '123456', '2020-06-07 14:04:01', '审核通过', 6, 'hulei', 1591264971747);
INSERT INTO `approval_log` VALUES (13317, '我看行', '2020-06-07 17:55:29', '审核通过', 25, '夜十三', 1591345615638);
INSERT INTO `approval_log` VALUES (13318, NULL, NULL, '需重新提交', NULL, 'Tcy', 1591269559279);
INSERT INTO `approval_log` VALUES (13319, NULL, NULL, '审核通过', NULL, 'ni hao ', 1591269559279);
INSERT INTO `approval_log` VALUES (13320, NULL, NULL, '审核通过', NULL, 'ni hao ', 1591269559279);
INSERT INTO `approval_log` VALUES (13321, NULL, NULL, '审核中', NULL, 'Tcy', 1591269559279);
INSERT INTO `approval_log` VALUES (13322, NULL, NULL, '审核通过', NULL, 'Tcy', 1591269559279);
INSERT INTO `approval_log` VALUES (13323, NULL, NULL, '审核通过', NULL, 'Tcy', 1591269559279);
INSERT INTO `approval_log` VALUES (13324, NULL, NULL, '审核中', NULL, 'Tcy', 1591269559279);
INSERT INTO `approval_log` VALUES (13325, NULL, NULL, '审核通过', NULL, 'Tcy', 1591269559279);
INSERT INTO `approval_log` VALUES (13326, NULL, NULL, '审核通过', NULL, 'Tcy', 1591269559279);
INSERT INTO `approval_log` VALUES (13327, NULL, NULL, '审核通过', NULL, 'Tcy', 1591269559241);
INSERT INTO `approval_log` VALUES (13328, NULL, NULL, '暂不合作', NULL, 'ni hao ', 1591269559279);
INSERT INTO `approval_log` VALUES (13329, NULL, NULL, '审核通过', NULL, 'Tcy', 1591269559279);
INSERT INTO `approval_log` VALUES (13330, NULL, NULL, '审核中', NULL, 'Tcy', 1591269559279);
INSERT INTO `approval_log` VALUES (13331, NULL, NULL, '审核通过', NULL, 'Tcy', 1591269559279);
INSERT INTO `approval_log` VALUES (13332, '可以开店', '2020-06-08 09:14:16', '审核通过', 1, '李四', 1591578818999);
INSERT INTO `approval_log` VALUES (13333, '可以', '2020-06-08 09:23:40', '需重新提交', NULL, '王五', 1591269559241);
INSERT INTO `approval_log` VALUES (13334, '可以', '2020-06-08 09:24:08', '审核通过', NULL, '王五', 1591269559241);
INSERT INTO `approval_log` VALUES (13335, '1', '2020-06-08 09:42:33', '审核通过', 1, '李四', 1591264971747);
INSERT INTO `approval_log` VALUES (13336, '1', '2020-06-08 20:40:08', '审核中', 14, '法外狂徒张三', 1591619362903);
INSERT INTO `approval_log` VALUES (13337, '2', '2020-06-08 20:40:19', '审核通过', 14, '法外狂徒张三', 1591619362903);
INSERT INTO `approval_log` VALUES (13338, '店名太张狂', '2020-06-08 20:41:07', '需重新提交', 14, '法外狂徒张三', 1591619362903);
INSERT INTO `approval_log` VALUES (13339, '会所性质存疑', '2020-06-08 20:41:59', '需重新提交', 14, '法外狂徒张三', 1591264971747);
INSERT INTO `approval_log` VALUES (13340, '可以', '2020-06-08 20:57:36', '审核通过', 81, '请输入昵称', 1591264971747);
INSERT INTO `approval_log` VALUES (13341, '1', '2020-06-08 20:58:35', '暂不合作', 14, '法外狂徒张三', 1591411738290);
INSERT INTO `approval_log` VALUES (13342, '', '2020-06-08 20:58:40', '暂不合作', 14, '法外狂徒张三', 1591411738290);
INSERT INTO `approval_log` VALUES (13343, '可以', '2020-06-08 21:01:40', '需重新提交', 81, '请输入昵称', 1591264971747);
INSERT INTO `approval_log` VALUES (13344, '可以', '2020-06-08 21:02:11', '需重新提交', 81, '请输入昵称', 1591354760602);
INSERT INTO `approval_log` VALUES (13345, '手续齐全,给予通过', '2020-06-08 22:50:26', '审核通过', 14, '法外狂徒张三', 1591264971747);
INSERT INTO `approval_log` VALUES (13346, '木有问题', '2020-06-09 08:11:26', '审核通过', 84, '李雷', 1591619362903);
INSERT INTO `approval_log` VALUES (13347, '重新提交', '2020-06-09 10:43:59', '需重新提交', 84, '李雷', 1591619362903);
INSERT INTO `approval_log` VALUES (13348, '可以', '2020-06-10 11:39:02', '审核通过', 81, '请输入昵称', 1591588843787);
INSERT INTO `approval_log` VALUES (13349, '身份证p图了吧', '2020-06-10 14:27:03', '需重新提交', 84, '李雷', 1591693500276);
INSERT INTO `approval_log` VALUES (13350, '可以', '2020-06-10 16:04:15', '审核通过', 1, '原来你，这么好', 1591599587637);
INSERT INTO `approval_log` VALUES (13351, '可以我很满意', '2020-06-10 16:22:37', '审核通过', 27, '吴奇隆', 1591776244703);
INSERT INTO `approval_log` VALUES (13352, '木有问题', '2020-06-12 20:05:35', '审核通过', 84, '李雷', 1591878771520);
INSERT INTO `approval_log` VALUES (13353, 'zzz', '2020-06-12 20:07:23', '需重新提交', 84, '李雷', 1591878771520);
INSERT INTO `approval_log` VALUES (13354, '通过啦', '2020-06-12 20:08:47', '审核通过', 84, '李雷', 1591878771520);
INSERT INTO `approval_log` VALUES (13355, '批准', '2020-06-12 20:09:15', '审核通过', 84, '李雷', 1591878771518);
INSERT INTO `approval_log` VALUES (13356, '测试', '2020-06-12 20:10:48', '暂不合作', 24, '李永楷', 1591354760602);
INSERT INTO `approval_log` VALUES (13357, '好吧', '2020-06-12 20:11:10', '审核通过', 24, '李永楷', 1591354760602);
INSERT INTO `approval_log` VALUES (13358, '测试1', '2020-06-12 20:13:13', '暂不合作', 24, '李沁亮', 1591269151344);
INSERT INTO `approval_log` VALUES (13359, '测试2', '2020-06-12 20:13:23', '需重新提交', 24, '李沁亮', 1591269151344);
INSERT INTO `approval_log` VALUES (13360, '测试3', '2020-06-12 20:13:32', '审核通过', 24, '李沁亮', 1591269151344);
INSERT INTO `approval_log` VALUES (13361, '充值玩家----审核通过', '2020-06-14 23:12:13', '审核通过', 14, '法外狂徒张三', 1591619362903);
INSERT INTO `approval_log` VALUES (13362, '', '2020-06-15 16:42:18', '审核通过', 100, 'djx', 1592210502025);
INSERT INTO `approval_log` VALUES (13363, '', '2020-06-15 17:13:56', '暂不合作', 6, '胡磊', 1591264971747);
INSERT INTO `approval_log` VALUES (13364, '111', '2020-06-15 20:05:35', '审核通过', 90, NULL, 1591878771530);
INSERT INTO `approval_log` VALUES (13365, '123', '2020-06-16 11:53:01', '审核通过', 90, '123', 1592210502025);
INSERT INTO `approval_log` VALUES (13366, '', '2020-06-20 17:02:34', '审核通过', 93, '阿斯顿发', 1591599587637);

-- ----------------------------
-- Table structure for business_type
-- ----------------------------
DROP TABLE IF EXISTS `business_type`;
CREATE TABLE `business_type`  (
  `type_id` int(0) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '经营类别id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '类别名称',
  `parent_id` int(0) NOT NULL COMMENT '上级类别id，顶级就是0',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序字段',
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 194 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of business_type
-- ----------------------------
INSERT INTO `business_type` VALUES (1, '全球美食', 0, 10);
INSERT INTO `business_type` VALUES (2, '披萨', 1, 1);
INSERT INTO `business_type` VALUES (3, '意面', 1, 2);
INSERT INTO `business_type` VALUES (4, '沙拉', 1, 3);
INSERT INTO `business_type` VALUES (5, '三明治', 1, 4);
INSERT INTO `business_type` VALUES (6, '泰国菜', 1, 5);
INSERT INTO `business_type` VALUES (7, '印度菜', 1, 6);
INSERT INTO `business_type` VALUES (8, '新加坡菜', 1, 7);
INSERT INTO `business_type` VALUES (9, '越南菜', 1, 8);
INSERT INTO `business_type` VALUES (10, '马来西亚菜', 1, 9);
INSERT INTO `business_type` VALUES (11, '日本料理', 1, 10);
INSERT INTO `business_type` VALUES (12, '日式简餐', 1, 11);
INSERT INTO `business_type` VALUES (13, '日式烧烤', 1, 12);
INSERT INTO `business_type` VALUES (14, '刺身寿司', 1, 13);
INSERT INTO `business_type` VALUES (15, '韩式简餐', 1, 14);
INSERT INTO `business_type` VALUES (16, '韩国料理', 1, 15);
INSERT INTO `business_type` VALUES (17, '韩国炸鸡', 1, 16);
INSERT INTO `business_type` VALUES (18, '韩式烤肉', 1, 17);
INSERT INTO `business_type` VALUES (19, '焗饭', 1, 18);
INSERT INTO `business_type` VALUES (20, '牛排', 1, 19);
INSERT INTO `business_type` VALUES (21, '西班牙菜', 1, 20);
INSERT INTO `business_type` VALUES (22, '意大利菜', 1, 21);
INSERT INTO `business_type` VALUES (23, '法国菜', 1, 22);
INSERT INTO `business_type` VALUES (24, '墨西哥菜', 1, 23);
INSERT INTO `business_type` VALUES (25, '中亚/中东菜', 1, 24);
INSERT INTO `business_type` VALUES (26, '其他西餐', 1, 25);
INSERT INTO `business_type` VALUES (27, '小吃夜宵', 0, 0);
INSERT INTO `business_type` VALUES (28, '烧烤', 27, 27);
INSERT INTO `business_type` VALUES (29, '炸鸡炸串', 27, 28);
INSERT INTO `business_type` VALUES (30, '小龙虾', 27, 29);
INSERT INTO `business_type` VALUES (31, '花甲', 27, 30);
INSERT INTO `business_type` VALUES (32, '章鱼小丸子', 27, 31);
INSERT INTO `business_type` VALUES (33, '其他小吃', 27, 32);
INSERT INTO `business_type` VALUES (34, '钵钵鸡', 27, 33);
INSERT INTO `business_type` VALUES (35, '老妈兔头', 27, 34);
INSERT INTO `business_type` VALUES (36, '鸡架', 27, 35);
INSERT INTO `business_type` VALUES (37, '锅巴菜', 27, 36);
INSERT INTO `business_type` VALUES (38, '卤煮火烧', 27, 37);
INSERT INTO `business_type` VALUES (39, '糖葫芦', 27, 38);
INSERT INTO `business_type` VALUES (40, '烤冷面', 27, 39);
INSERT INTO `business_type` VALUES (41, '卤味鸭脖', 27, 40);
INSERT INTO `business_type` VALUES (42, '香锅火锅', 0, 1);
INSERT INTO `business_type` VALUES (43, '小火锅', 42, 42);
INSERT INTO `business_type` VALUES (44, '串串香', 42, 43);
INSERT INTO `business_type` VALUES (45, '羊蝎子', 42, 44);
INSERT INTO `business_type` VALUES (46, '川渝火锅', 42, 45);
INSERT INTO `business_type` VALUES (47, '焖锅', 42, 46);
INSERT INTO `business_type` VALUES (48, '港式火锅', 42, 47);
INSERT INTO `business_type` VALUES (49, '鱼火锅', 42, 48);
INSERT INTO `business_type` VALUES (50, '铜锅涮肉', 42, 49);
INSERT INTO `business_type` VALUES (51, '牛肉火锅', 42, 50);
INSERT INTO `business_type` VALUES (52, '麻辣香锅', 42, 51);
INSERT INTO `business_type` VALUES (53, '干锅', 42, 52);
INSERT INTO `business_type` VALUES (54, '鸡公煲', 42, 53);
INSERT INTO `business_type` VALUES (55, '砂锅', 42, 54);
INSERT INTO `business_type` VALUES (56, '烤鱼', 42, 55);
INSERT INTO `business_type` VALUES (57, '其他香锅火锅', 42, 56);
INSERT INTO `business_type` VALUES (58, '特色菜系', 0, 3);
INSERT INTO `business_type` VALUES (59, '川湘菜', 58, 58);
INSERT INTO `business_type` VALUES (60, '粤菜', 58, 59);
INSERT INTO `business_type` VALUES (61, '东北菜', 58, 60);
INSERT INTO `business_type` VALUES (62, '云南菜', 58, 61);
INSERT INTO `business_type` VALUES (63, '江浙菜', 58, 62);
INSERT INTO `business_type` VALUES (64, '西北菜', 58, 63);
INSERT INTO `business_type` VALUES (65, '鲁菜', 58, 64);
INSERT INTO `business_type` VALUES (66, '新疆菜', 58, 65);
INSERT INTO `business_type` VALUES (67, '海鲜', 58, 66);
INSERT INTO `business_type` VALUES (68, '其他菜系', 58, 67);
INSERT INTO `business_type` VALUES (69, '北京菜', 58, 68);
INSERT INTO `business_type` VALUES (70, '本帮菜', 58, 69);
INSERT INTO `business_type` VALUES (71, '徽菜', 58, 70);
INSERT INTO `business_type` VALUES (72, '贵州菜', 58, 71);
INSERT INTO `business_type` VALUES (73, '台湾菜', 58, 72);
INSERT INTO `business_type` VALUES (74, '江西菜', 58, 73);
INSERT INTO `business_type` VALUES (75, '闽菜', 58, 74);
INSERT INTO `business_type` VALUES (76, '茶餐厅', 58, 75);
INSERT INTO `business_type` VALUES (77, '私房菜', 58, 76);
INSERT INTO `business_type` VALUES (78, '创意菜', 58, 77);
INSERT INTO `business_type` VALUES (79, '素食', 58, 78);
INSERT INTO `business_type` VALUES (80, '清真菜', 58, 79);
INSERT INTO `business_type` VALUES (81, '盐帮菜', 58, 80);
INSERT INTO `business_type` VALUES (82, '湖北菜', 58, 81);
INSERT INTO `business_type` VALUES (83, '浏阳蒸菜', 58, 82);
INSERT INTO `business_type` VALUES (84, '顺德菜', 58, 83);
INSERT INTO `business_type` VALUES (85, '海南菜', 58, 84);
INSERT INTO `business_type` VALUES (86, '淮扬菜', 58, 85);
INSERT INTO `business_type` VALUES (87, '苏帮菜', 58, 86);
INSERT INTO `business_type` VALUES (88, '内蒙菜', 58, 87);
INSERT INTO `business_type` VALUES (89, '天津菜', 58, 88);
INSERT INTO `business_type` VALUES (90, '河北菜', 58, 89);
INSERT INTO `business_type` VALUES (91, '河南菜', 58, 90);
INSERT INTO `business_type` VALUES (92, '甘肃菜', 58, 91);
INSERT INTO `business_type` VALUES (93, '陕西菜', 58, 92);
INSERT INTO `business_type` VALUES (94, '金陵菜', 58, 93);
INSERT INTO `business_type` VALUES (95, '甜品饮品', 0, 4);
INSERT INTO `business_type` VALUES (96, '奶茶果汁', 95, 95);
INSERT INTO `business_type` VALUES (97, '甜品', 95, 96);
INSERT INTO `business_type` VALUES (98, '咖啡', 95, 97);
INSERT INTO `business_type` VALUES (99, '蛋糕', 95, 98);
INSERT INTO `business_type` VALUES (100, '面包', 95, 99);
INSERT INTO `business_type` VALUES (101, '冰淇淋', 95, 100);
INSERT INTO `business_type` VALUES (102, '中西糕点', 95, 101);
INSERT INTO `business_type` VALUES (103, '其他甜品饮品', 95, 102);
INSERT INTO `business_type` VALUES (104, '快餐便当', 0, 5);
INSERT INTO `business_type` VALUES (105, '盖浇饭', 104, 104);
INSERT INTO `business_type` VALUES (106, '汉堡薯条', 104, 105);
INSERT INTO `business_type` VALUES (107, '麻辣烫', 104, 106);
INSERT INTO `business_type` VALUES (108, '烧腊饭', 104, 107);
INSERT INTO `business_type` VALUES (109, '黄焖鸡米饭', 104, 108);
INSERT INTO `business_type` VALUES (110, '咖喱饭', 104, 109);
INSERT INTO `business_type` VALUES (111, '煲仔饭', 104, 110);
INSERT INTO `business_type` VALUES (112, '酸辣粉', 104, 111);
INSERT INTO `business_type` VALUES (113, '肠粉', 104, 112);
INSERT INTO `business_type` VALUES (114, '沙县小吃', 104, 113);
INSERT INTO `business_type` VALUES (115, '热干面', 104, 114);
INSERT INTO `business_type` VALUES (116, '重庆小面', 104, 115);
INSERT INTO `business_type` VALUES (117, '兰州拉面', 104, 116);
INSERT INTO `business_type` VALUES (118, '凉皮', 104, 117);
INSERT INTO `business_type` VALUES (119, '生煎', 104, 118);
INSERT INTO `business_type` VALUES (120, '锅贴', 104, 119);
INSERT INTO `business_type` VALUES (121, '脆皮鸡饭', 104, 120);
INSERT INTO `business_type` VALUES (122, '烤肉拌饭', 104, 121);
INSERT INTO `business_type` VALUES (123, '木桶饭', 104, 122);
INSERT INTO `business_type` VALUES (124, '炒饭', 104, 123);
INSERT INTO `business_type` VALUES (125, '冒菜', 104, 124);
INSERT INTO `business_type` VALUES (126, '烤鸭熟食', 104, 125);
INSERT INTO `business_type` VALUES (127, '粉丝汤', 104, 126);
INSERT INTO `business_type` VALUES (128, '胡辣汤', 104, 127);
INSERT INTO `business_type` VALUES (129, '煎饼', 104, 128);
INSERT INTO `business_type` VALUES (130, '驴肉火烧', 104, 129);
INSERT INTO `business_type` VALUES (131, '螺蛳粉', 104, 130);
INSERT INTO `business_type` VALUES (132, '米粉米线', 104, 131);
INSERT INTO `business_type` VALUES (133, '面馆', 104, 132);
INSERT INTO `business_type` VALUES (134, '包子汤包', 104, 133);
INSERT INTO `business_type` VALUES (135, '粥店', 104, 134);
INSERT INTO `business_type` VALUES (136, '豆浆油条', 104, 135);
INSERT INTO `business_type` VALUES (137, '饺子', 104, 136);
INSERT INTO `business_type` VALUES (138, '馄饨抄手', 104, 137);
INSERT INTO `business_type` VALUES (139, '牛肉饭', 104, 138);
INSERT INTO `business_type` VALUES (140, '排骨饭', 104, 139);
INSERT INTO `business_type` VALUES (141, '牛肉汤', 104, 140);
INSERT INTO `business_type` VALUES (142, '羊肉汤', 104, 141);
INSERT INTO `business_type` VALUES (143, '滋补炖汤', 104, 142);
INSERT INTO `business_type` VALUES (144, '蒸鸡滋补鸡', 104, 143);
INSERT INTO `business_type` VALUES (145, '肉夹馍', 104, 144);
INSERT INTO `business_type` VALUES (146, '葱油饼', 104, 145);
INSERT INTO `business_type` VALUES (147, '烧饼', 104, 146);
INSERT INTO `business_type` VALUES (148, '其他快餐', 104, 147);
INSERT INTO `business_type` VALUES (149, '瓦罐汤', 104, 148);
INSERT INTO `business_type` VALUES (150, '闽南咸饭', 104, 149);
INSERT INTO `business_type` VALUES (151, '沙茶面', 104, 150);
INSERT INTO `business_type` VALUES (152, '北京炸酱面', 104, 151);
INSERT INTO `business_type` VALUES (153, '羊杂割', 104, 152);
INSERT INTO `business_type` VALUES (154, '泡馍', 104, 153);
INSERT INTO `business_type` VALUES (155, '糁汤', 104, 154);
INSERT INTO `business_type` VALUES (156, '甏肉干饭', 104, 155);
INSERT INTO `business_type` VALUES (157, '朝天锅', 104, 156);
INSERT INTO `business_type` VALUES (158, '水果', 0, 6);
INSERT INTO `business_type` VALUES (159, '水果店', 158, 158);
INSERT INTO `business_type` VALUES (160, '果切', 158, 159);
INSERT INTO `business_type` VALUES (161, '水果捞', 158, 160);
INSERT INTO `business_type` VALUES (162, '鲜花绿植', 0, 7);
INSERT INTO `business_type` VALUES (163, '鲜花', 162, 162);
INSERT INTO `business_type` VALUES (164, '绿植', 162, 163);
INSERT INTO `business_type` VALUES (165, '医药健康', 0, 8);
INSERT INTO `business_type` VALUES (166, '药店', 165, 165);
INSERT INTO `business_type` VALUES (167, '成人用品', 165, 166);
INSERT INTO `business_type` VALUES (168, '滋补保健', 165, 167);
INSERT INTO `business_type` VALUES (169, '眼镜店', 165, 168);
INSERT INTO `business_type` VALUES (170, '医院诊所', 165, 169);
INSERT INTO `business_type` VALUES (171, '厨房生鲜', 0, 9);
INSERT INTO `business_type` VALUES (172, '社区生鲜店', 171, 171);
INSERT INTO `business_type` VALUES (173, '肉禽蛋品', 171, 172);
INSERT INTO `business_type` VALUES (174, '海鲜水产', 171, 173);
INSERT INTO `business_type` VALUES (175, '火锅烤串食材', 171, 174);
INSERT INTO `business_type` VALUES (176, '商店超市', 0, 10);
INSERT INTO `business_type` VALUES (177, '大型超市', 176, 176);
INSERT INTO `business_type` VALUES (178, '水站', 176, 177);
INSERT INTO `business_type` VALUES (179, '奶站', 176, 178);
INSERT INTO `business_type` VALUES (180, '粮油副食', 176, 179);
INSERT INTO `business_type` VALUES (181, '茶行', 176, 180);
INSERT INTO `business_type` VALUES (182, '便利店', 176, 181);
INSERT INTO `business_type` VALUES (183, '休闲零食', 176, 182);
INSERT INTO `business_type` VALUES (184, '名酒坊', 176, 183);
INSERT INTO `business_type` VALUES (185, '饮料冰品', 176, 184);
INSERT INTO `business_type` VALUES (186, '冷冻速食', 176, 185);
INSERT INTO `business_type` VALUES (187, '宠物超市', 176, 186);
INSERT INTO `business_type` VALUES (188, '3C电器', 176, 187);
INSERT INTO `business_type` VALUES (189, '日用百货', 176, 188);
INSERT INTO `business_type` VALUES (190, '美妆个护', 176, 189);
INSERT INTO `business_type` VALUES (191, '母婴', 176, 190);
INSERT INTO `business_type` VALUES (192, '服装鞋包', 176, 191);
INSERT INTO `business_type` VALUES (193, '其他商店', 176, 192);

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `merchant_id` bigint(0) NOT NULL COMMENT '商家id',
  `goods_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '商品id',
  `goods_type_id` bigint(0) NOT NULL COMMENT '商家的商品类型id',
  `business_type_id` int(0) NOT NULL COMMENT '商家经营类型id(主要类型)',
  `pic` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品的主图',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品的标题',
  `old_price` decimal(10, 1) NULL DEFAULT NULL COMMENT '商品原价',
  `now_price` decimal(10, 1) NULL DEFAULT NULL COMMENT '现在价格',
  `detail` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '富文本（就是放商品详情的）',
  `on_sale` tinyint(1) NULL DEFAULT NULL COMMENT '在售：1 否则0',
  `stock` int(0) NULL DEFAULT NULL COMMENT '库存',
  `imgs` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品详情页面的轮播图格式如：img1Url|img2Url',
  `sub_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品副标题',
  `packaging_fee` decimal(10, 1) NULL DEFAULT NULL COMMENT '包装费',
  `province` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '省字段，分片键',
  `takeaway` tinyint(1) NULL DEFAULT NULL COMMENT '能否外卖',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序编号',
  `weight` double NULL DEFAULT NULL COMMENT '重量',
  `taste` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '口味',
  `sold` int(0) NULL DEFAULT NULL COMMENT '已经售出的总数',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最后修改时间',
  `update_user` bigint(0) NULL DEFAULT NULL COMMENT '最后修改人',
  `praise` int(0) NULL DEFAULT NULL COMMENT '好评次数',
  `is_coupon` tinyint(1) NULL DEFAULT NULL COMMENT '是否是团购：优惠券和外卖单独结算，优惠券按照优惠券提成抽成',
  PRIMARY KEY (`goods_id`) USING BTREE,
  INDEX `type_index`(`goods_type_id`) USING BTREE,
  INDEX `merchant_index`(`merchant_id`) USING BTREE,
  INDEX `onSale_index`(`on_sale`) USING BTREE,
  INDEX `type_id`(`goods_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 110 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (1591616829215, 2, 11, 1, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '牛奶布丁', 12.0, 5.9, '<p><img src=\"/upload/365586a2-8324-4b77-bc6d-303a515bf6c0.jpg\" style=\"max-width:100%;\"><br></p>', 0, 500, '', '', 1.0, '重庆市', 1, 3, 550, '茉莉花香', 1000, '2020-06-06 15:14:17', '2020-06-06 15:14:17', 83, 500, 1);
INSERT INTO `goods` VALUES (1591264971747, 5, 12, 1, '/upload/64bb6229-c48e-42b4-afde-e9d8adf1cf18.jpg', '双皮奶', 2.2, 2.3, '<p><br></p>', 1, 100, '/upload/ddaf4fc2-6fe8-4937-a704-a58916d272ff.jpg', '红色高跟鞋', 1.0, '北京', 1, 3, 2, '甜味', 200, '2020-06-07 10:37:04', '2020-06-15 17:46:52', 6, NULL, 1);
INSERT INTO `goods` VALUES (1591264971747, 7, 11, 2, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '高端红酒', 2.2, 2.3, '<p><br></p>', 1, 100, '/upload/643e80a0-7c85-40c2-a752-6bde1e508fe0.jpg', '上流社会必备', 1.0, '北京', 1, 3, 2, '甜味', 110, '2020-06-07 12:10:21', '2020-06-15 17:47:08', 6, NULL, 1);
INSERT INTO `goods` VALUES (1591264971747, 8, 11, 1, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '冰红茶1', 2.2, 2.3, '<p><br></p>', 1, 100, '/upload/77ecfbb4-aa7f-4afa-837f-9b0b927334e2.jpg', '冰红茶', 1.0, '北京', 1, 3, 2, '甜味', 100, '2020-06-07 12:15:14', '2020-06-15 17:47:38', 6, NULL, 1);
INSERT INTO `goods` VALUES (1591264971747, 10, 11, 1, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '皮卡丘1', 2.2, 2.3, '<p><br></p>', 1, 100, '/upload/c63803c9-b3f2-4e0c-b339-d9f4969a16e3.jpg', '皮卡皮卡', 1.0, '北京', 1, 0, 2, '完美', 100, '2020-06-07 15:44:55', '2020-06-15 17:47:53', 6, NULL, 1);
INSERT INTO `goods` VALUES (1591269151344, 11, 23, 1, '/upload/180e07b6-94cf-4969-9ef6-51501be76204.jpg', '富士山极品水果', 12.0, 5.9, '<p></p><p></p><p></p><p><span style=\"font-style: italic; color: rgb(249, 150, 59);\">富士山苹果</span></p><p><img src=\"/upload/94d34a0e-952c-4af9-af6c-3e0b726f7cfd.jpg\" style=\"max-width:100%;\"><span style=\"font-style: italic; color: rgb(249, 150, 59);\"><br></span></p><p></p><p><br></p><p></p><p><br></p>', 1, 1000, '/upload/goods/42eea780-f11a-4a55-ab1d-e97e533c623b.jpg', '高原水分，值得拥有', 1.0, '重庆市', 0, 3, 100, '脆，甜', 50, '2020-06-07 16:23:08', '2020-06-09 10:35:35', 10, 5000, 0);
INSERT INTO `goods` VALUES (1591269151344, 15, 22, 1, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '回忆童年', 12.0, 5.9, '<p><span style=\"font-style: italic; color: rgb(249, 150, 59);\">娃哈哈，真好喝！</span></p><p><br></p>', 1, 100, '/upload/6cb9ec36-2b9f-4ce8-ae85-ea9ef19f42be.jpg', '想不想回到过去', 1.0, '重庆市', 0, 3, 200, '奶味', 1000, '2020-06-07 17:46:46', '2020-06-07 17:46:46', 10, 1000, 1);
INSERT INTO `goods` VALUES (1591319157884, 16, 5, 1, NULL, '秘制小汉堡', 1.0, 1.0, NULL, 0, NULL, NULL, NULL, 1.0, '重庆市', 0, 0, NULL, NULL, 200, '2020-06-08 10:16:36', NULL, 1, NULL, 1);
INSERT INTO `goods` VALUES (1591345615638, 17, 3, 2, NULL, '好喝的娃哈哈', 8.0, 7.9, NULL, 1, 1000, NULL, '谁还不想个ad钙奶', 1.0, '重庆市', 0, 4, 60, '酸奶', 100, '2020-06-08 10:21:03', '2020-06-08 10:21:06', 25, 550, 1);
INSERT INTO `goods` VALUES (1591264971747, 18, 31, 1, '/upload/234e7d18-65c5-47ed-b9c5-c247118a5c94.jpg', '和路雪', 2.2, 2.3, '<p><br></p>', 1, 100, '/upload/e727ccd6-df62-4240-ab8d-c2a75a566be0.jpg', '漂亮', 1.0, '北京', 1, 3, 2, '完美', 200, '2020-06-08 10:40:11', '2020-06-15 17:49:17', 6, NULL, 1);
INSERT INTO `goods` VALUES (1591269559279, 20, 1, 1, NULL, '韭菜', 2.2, 5.0, '<p>牛逼</p>', 1, 300, NULL, '可爱', 1.0, '重庆', 1, 2, 3, '好的', 200, '2020-06-08 11:32:27', '2020-06-08 11:32:29', 8, 593, 1);
INSERT INTO `goods` VALUES (1591578818999, 22, 5, 28, '/upload/goods/e2100ec1-1e2e-45c6-a26a-bd1c56e6cad3.jpg', '鸭子', 1.0, 21.0, '<p><img src=\"/upload/88857731-aa61-4d86-ab48-70ad7d5ffada.jpg\" style=\"max-width:100%;\"><img src=\"/upload/cd0f4808-ee88-4202-88b0-88172119b8ed.jpg\" style=\"max-width: 100%;\"><img src=\"/upload/a9964c12-dbb7-4948-8e65-936c8d5d20f6.jpg\" style=\"max-width: 100%;\"><br></p><p>很好的吃的鸭子</p>', 1, 1000, '/upload/goods/893e38fc-6972-4663-bd90-36bd629711a8.jpg,/upload/goods/27eaa2f3-2bc0-4d37-bc69-11b4e648901e.jpg,/upload/goods/4dd0901a-7391-46e6-9d4c-734afd44e6e5.jpg,/upload/goods/91515926-9832-490d-8314-7a053f993ee1.jpg', '好大个鸭子', 1.0, '重庆市', 1, 2, 0.1, '微辣', 300, '2020-06-08 12:31:12', '2020-06-08 12:31:12', 1, NULL, 1);
INSERT INTO `goods` VALUES (1591578818999, 23, 8, 28, '/upload/goods/4d270078-a11a-4572-b3e5-4ec915b4e3e1.jpg', '你真好耍', 111.0, 0.1, '<p>招牌菜哦<img src=\"/upload/69097d4b-eac1-4b80-9901-80338cdd4dde.jpg\" style=\"max-width: 100%;\"><img src=\"/upload/845b2a08-4981-4d2a-b0e0-32cfd2b83fc9.jpg\" style=\"max-width: 100%;\"></p><p><br></p>', 0, 1000, '/upload/goods/5f1b8730-be5d-43d3-8259-5c4ce608b52e.jpg,/upload/goods/5249b6ed-f304-4c28-8c8d-f7828544fc5c.jpg,/upload/goods/296ce88e-24c0-4bab-8ef8-adb3f8da236b.jpg', '好像有点饿了', 1.0, '重庆市', 1, 111, 111, '酸甜11', 12, '2020-06-08 12:35:21', '2020-06-08 12:35:21', 10, NULL, 1);
INSERT INTO `goods` VALUES (1591578818999, 24, 6, 28, '/upload/goods/1cc63baf-b6ac-4caa-ba6e-36a9655bbc12.png', '呵呵呵', 21.0, 12.0, '<p><img src=\"/upload/5b3dcf0e-6850-489c-8624-9addbbaf81b1.jpg\" style=\"max-width:100%;\"><br></p><p><br></p>', 1, 1000, '/upload/goods/9cad361a-6cd0-45bf-9cc6-ab19c40de6a3.jpg,/upload/goods/c34c026e-08d9-406d-9310-b03aae4499fb.png,/upload/goods/97265f04-b394-44c8-900f-e9dfd5e19f74.png,/upload/goods/e997319a-f863-4d51-b8b0-1a5a7e33f846.png', '21', 1.0, '重庆市', 1, 1, 0.1, '', 13, '2020-06-08 12:44:24', '2020-06-08 12:44:24', 1, NULL, 1);
INSERT INTO `goods` VALUES (1591578818999, 25, 5, 28, '/upload/goods/56033393-59c8-4bd9-b2bf-9cd4ac223bdb.jpg', '1', 21.0, 12.0, '<p><img src=\"/upload/5b3dcf0e-6850-489c-8624-9addbbaf81b1.jpg\" style=\"max-width:100%;\"><br></p>', 0, 1000, '/upload/goods/9cad361a-6cd0-45bf-9cc6-ab19c40de6a3.jpg', '21', 1.0, '重庆市', 1, 1, 0.1, '', 200, '2020-06-08 12:44:50', '2020-06-08 12:44:50', 1, NULL, 0);
INSERT INTO `goods` VALUES (1591578818999, 26, 6, 28, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '11', 21.0, 12.0, '<p><img src=\"/upload/92dc0323-8f37-4bd6-866c-9a5b60628e76.jpg\" style=\"max-width:100%;\"><br></p>', 1, 1000, '/upload/goods/fbea408c-6ea4-483c-8f1a-a6cc66702962.jpg', '21', 1.0, '重庆市', 1, 1, 0.1, '', 100, '2020-06-08 12:45:24', '2020-06-08 12:45:24', 1, NULL, NULL);
INSERT INTO `goods` VALUES (1591578818999, 27, 5, 28, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '121', 21.0, 12.0, '<p><img src=\"/upload/92dc0323-8f37-4bd6-866c-9a5b60628e76.jpg\" style=\"max-width:100%;\"><br></p>', 1, 1000, '/upload/goods/fbea408c-6ea4-483c-8f1a-a6cc66702962.jpg', '21', 1.0, '重庆市', 1, 1, 0.1, '', 1000, '2020-06-08 12:52:37', '2020-06-08 12:52:37', 1, NULL, NULL);
INSERT INTO `goods` VALUES (1591578818999, 29, 5, 28, '/upload/goods/cd155e85-0ee4-41d8-b493-b7f59c430c62.jpg', '21', 21.0, 21.0, '<p><img src=\"/upload/18899482-4086-4361-b2bc-dec5e5ee616f.jpg\" style=\"max-width:100%;\"><img src=\"/upload/4c45c9ed-05e6-4e66-8656-59978723f7f3.jpg\" style=\"max-width: 100%;\"><img src=\"/upload/cca7acd7-d554-436e-b0e4-20a3dfdd5929.jpg\" style=\"max-width: 100%;\"><br></p>', 1, 1000, '/upload/goods/109807fe-0444-4ccd-810b-6b71747554f0.jpg', '12', 1.0, '重庆市', 1, 1, 0.1, '', 10, '2020-06-08 12:53:15', '2020-06-08 12:53:15', 1, NULL, NULL);
INSERT INTO `goods` VALUES (1591578818999, 30, 6, 28, '/upload/goods/edc88484-35d3-4318-8c4a-57b7baf6d759.jpg', '卤肉饭', 12.0, 12.0, '<p><img src=\"/upload/4fe47b6e-f9b1-46b7-8441-78be6f5903ef.jpg\" style=\"max-width:100%;\"><img src=\"/upload/cc5d2aec-68ed-4b0d-ad7b-f1d70e9f33d1.jpg\" style=\"max-width: 100%;\"><img src=\"/upload/f7729dd5-e1bd-46e1-847c-351f9d0af5ab.jpg\" style=\"max-width: 100%;\"><img src=\"/upload/6b948e73-0b44-49ed-aff7-0e6428122c0b.jpg\" style=\"max-width: 100%;\"><br></p>', 1, 1000, '/upload/goods/7e2bc5a2-0fbc-4176-892f-8bde628a3b34.jpg', '12', 1.0, '重庆市', 1, 0, 0.1, '21', 1000, '2020-06-08 12:54:01', '2020-06-08 12:54:01', 1, NULL, NULL);
INSERT INTO `goods` VALUES (1591578818999, 31, 5, 28, '/upload/goods/b0f7655d-29af-40b8-aad5-5ea859849451.jpg', '21', 21.0, 21.0, '<p>12<img src=\"/upload/5762c907-828a-4a21-9c42-d380c66acddb.jpg\" style=\"max-width: 100%;\"><img src=\"/upload/b77434f7-37a6-4c19-9405-c9ac699715c6.jpg\" style=\"max-width: 100%;\"></p>', 1, 1000, '/upload/goods/83173b23-b792-4c9f-89fc-310f89d7bcf3.jpg', '21', 1.0, '重庆市', 1, 1, 0.1, '', 200, '2020-06-08 12:55:00', '2020-06-08 12:55:00', 1, NULL, NULL);
INSERT INTO `goods` VALUES (1591578818999, 32, 5, 28, '/upload/goods/7e7bdf8f-3f1b-4aaa-b7b5-736de2d23906.jpg', '21', 21.0, 21.0, '<p><img src=\"/upload/53314878-81ad-4ff5-a782-e40c9ce676e1.jpg\" style=\"max-width:100%;\"><img src=\"/upload/53678174-f66c-4041-874a-46c1c8b3eedc.jpg\" style=\"max-width: 100%;\"><img src=\"/upload/817f057e-092e-4b31-a10d-4494729702f7.jpg\" style=\"max-width: 100%;\"><br></p>', 1, 1000, '/upload/goods/1d25cc2b-f6f1-4b0e-96d8-701e348e374f.jpg', '21', 1.0, '重庆市', 1, 1, 0.1, '21', 300, '2020-06-08 12:55:35', '2020-06-08 12:55:35', 1, NULL, NULL);
INSERT INTO `goods` VALUES (1591578818999, 34, 5, 28, '/upload/goods/53e3f153-a881-4a30-b81d-c4c500e41db9.jpg', '12', 21.0, 12.0, '<p><img src=\"/upload/dc196f09-dc7f-4bc4-8062-e7ccb552e401.jpg\" style=\"max-width:100%;\"><img src=\"/upload/eedd0528-56ae-4d62-b91c-f6e6069bb30b.jpg\" style=\"max-width: 100%;\"><img src=\"/upload/f3106973-a590-490d-b29a-ef3ad01c7082.jpg\" style=\"max-width: 100%;\"><br></p>', 1, 1000, '/upload/goods/3c60678b-bebc-43a0-bf61-85341967ea74.jpg,/upload/goods/a92323be-8b33-4186-87ae-83c5ab891bc8.jpg,/upload/goods/15733b56-1ae6-4dc9-bba3-99ec74d2c559.jpg,/upload/goods/4c2c12e8-6815-4a97-acae-2cae05ab353c.jpg,/upload/goods/aeb7704e-5998-47ef-b01d-f7f926cb7af3.jpg', '12', 1.0, '重庆市', NULL, 1, 0.1, '12', 300, '2020-06-08 15:26:04', '2020-06-08 15:26:04', 1, NULL, 1);
INSERT INTO `goods` VALUES (1591578818999, 35, 5, 28, '/upload/goods/3b9bce8f-c627-41a8-ac1c-f94d80403b2e.jpg', '21', 21.0, 21.0, '<p><img src=\"/upload/378957ee-cb06-4a0a-82e3-5477a1b344f6.jpg\" style=\"max-width:100%;\"><img src=\"/upload/0922f798-5681-4524-a4f4-3ad614e0b604.jpg\" style=\"max-width: 100%;\"><img src=\"/upload/530c4aed-e40c-4ea0-a058-18ce58387796.jpg\" style=\"max-width: 100%;\"><br></p>', 1, 1000, '/upload/goods/921230db-c6df-4bb7-9fc4-0a1d87760e39.jpg,/upload/goods/d4200048-ef66-4ea8-9b21-17405dcf6536.jpg,/upload/goods/75bdbf69-a2da-46bb-b083-52470b2c4d22.jpg,/upload/goods/6ccbf1ee-7b2c-42b7-9127-b3ab71e5fa21.jpg', '21', 1.0, '重庆市', 1, 121, 0.1, '21', 20, '2020-06-08 15:33:21', '2020-06-08 15:33:21', 1, NULL, NULL);
INSERT INTO `goods` VALUES (1591578818999, 36, 7, 28, '/upload/goods/46958541-e61d-4ab9-8948-ae260de08421.jpg', '12', 12.0, 12.0, '<p><img src=\"/upload/b76e9fa8-602e-4fdd-8d1c-b58040f6a620.jpg\" style=\"max-width:100%;\"><img src=\"/upload/4c8ded67-3433-41d6-b447-f0e65bc5ea2e.jpg\" style=\"max-width: 100%;\"><img src=\"/upload/0a07b10a-955f-4e99-a3cf-0e6351263df0.jpg\" style=\"max-width: 100%;\"><img src=\"/upload/62b747e3-f153-43e2-9126-c39e8cb88899.jpg\" style=\"max-width: 100%;\"><br></p>', 1, 1000, '/upload/goods/778c2276-7957-43a7-8bd0-1f0a0e34cdb4.jpg,/upload/goods/fedb8bf9-bafb-4421-bfc3-b1e79baf842c.jpg,/upload/goods/192fb564-21dc-44a5-ab92-3da72389e192.jpg', '12', 1.0, '重庆市', 1, 1, 0.1, '12', 200, '2020-06-08 15:35:59', '2020-06-08 15:35:59', 1, NULL, NULL);
INSERT INTO `goods` VALUES (1591616829215, 43, 9, 96, '/upload/goods/f5e67926-d121-4034-9492-6757153af613.jpg', '珍珠奶茶', 12.0, 8.0, '<h2><span style=\"font-weight: bold; font-style: italic;\">这是一款苹果味的奶茶</span><span style=\"font-size: x-small;\"><img src=\"/upload/9dc005ed-aca1-4a1d-b9d9-12dfa527e494.jpg\" style=\"max-width: 100%;\"></span></h2>', 1, 1000, '/upload/goods/d63b5dcf-9158-45c9-9b3a-fe2416c391a4.jpg', '', 0.0, '重庆市', 1, 1, 0.1, '', NULL, '2020-06-09 16:44:33', '2020-06-09 16:44:33', 83, NULL, 1);
INSERT INTO `goods` VALUES (1591269151344, 44, 22, 1, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '冰糖雪梨', 12.0, 5.9, '<p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p><span style=\"font-style: italic; color: rgb(249, 150, 59);\">冰糖雪梨</span></p><p><img src=\"/upload/9c0de44b-2d20-4bc5-9aad-25afc0e88054.jpg\" style=\"max-width:100%;\"><br></p><p></p><p><br></p><p></p><p><br></p><p></p><p><br></p><p></p><p><br></p><p></p><p><br></p><p></p><p><br></p><p></p><p><br></p><p></p><p><br></p><p></p><p><br></p><p></p><p><br></p>', 1, 100, '/upload/ccb2d887-b63c-4dc5-9b9b-b3cee44ae70c.jpg', '甜进你的心扉', 1.0, '重庆市', 0, 2, 550, '甜甜的味道', 400, '2020-06-08 19:02:50', '2020-06-09 08:19:39', 10, 1000, 1);
INSERT INTO `goods` VALUES (1591345615638, 45, 10, 2, '/upload/goods/32d16b57-ebac-4f0d-9ba6-bbd16deab8ac.jpg', '干笋子炒小鲜肉', 123.0, 120.0, '<p><img src=\"/upload/6ced187e-e657-432b-ba49-77fb1d484908.jpg\" style=\"max-width:100%;\"><img src=\"/upload/aeed90b0-ae66-4fce-891d-2ae9146c39ca.jpg\" style=\"max-width: 100%;\"><br></p>', 1, 1000, '/upload/goods/772d5ea6-909c-4282-8d23-3deacf7ea370.jpg,/upload/goods/9a8c39c0-ac75-4350-a321-9bfd29a60205.jpg,/upload/goods/f1d9988b-acec-4819-8dab-c260354565ed.jpg', '小时候谁没吹过？', 1.0, '北京市-北京市-西城区', 1, 1, 0.1, '酸甜苦辣都有，火辣辣', 2100, '2020-06-08 19:31:05', '2020-06-08 19:31:05', 25, NULL, 1);
INSERT INTO `goods` VALUES (1591588843787, 46, 9, 2, '/upload/goods/ee1e03af-bce2-4a1a-8ab0-01315ce92dd7.jpg', '干笋子炒小鲜肉', 112.0, 120.0, '<p><img src=\"/upload/5bb32c8b-f61e-400d-af4e-f39e8e3d1810.jpg\" style=\"max-width:100%;\"><br></p><p><br></p>', 1, 1000, '/upload/goods/e551c66b-0eb8-44aa-9717-de31d1449019.jpg,/upload/goods/2f539815-9dff-430d-b9d0-f39d14aea581.jpg,/upload/goods/a4fd410b-831e-4d79-9dda-c05ad38db290.jpg', '', 1.0, '北京市-北京市-西城区', 1, 2, 0.1, '酸甜苦辣都有，火辣辣', 100, '2020-06-08 19:34:43', '2020-06-08 19:34:43', 25, NULL, 1);
INSERT INTO `goods` VALUES (1591268241883, 47, 16, 96, '/upload/goods/3f93179a-1429-48ec-bd88-c433561f3f2a.jpg', '焦糖奶茶', 12.0, 10.0, '<p><br></p>', 1, 1000, '/upload/goods/8d3bbc78-9305-4c01-bda8-20da93a011ca.jpg,/upload/goods/811623e1-7d94-4082-be00-e29b7347ece0.jpg,/upload/goods/7dece5e6-3d17-4079-81c3-65a5579a058b.jpg', '冬日必备', 1.0, '重庆市', 1, 1, 300, '甜', 200, '2020-06-08 19:44:18', '2020-06-08 19:44:18', 5, NULL, 1);
INSERT INTO `goods` VALUES (1591345615638, 48, 9, 2, '/upload/goods/d9be3d54-e680-42a0-acea-f429236c11ea.jpg', '而且风衣', 220.0, 230.0, '<p><br></p>', 1, 1000, NULL, '风去', 1.0, '北京市-北京市-西城区', 1, 1, 0.1, '没得', 6000, '2020-06-08 19:43:30', '2020-06-08 19:43:30', 25, NULL, 0);
INSERT INTO `goods` VALUES (1591345615638, 49, 9, 2, '/upload/goods/d56220cd-9d3a-4e34-8636-91a005353e95.jpg', '大风车', 123.0, 120.0, '<p><img src=\"/upload/2b748e77-9afd-49c3-96af-a327c7028805.jpg\" style=\"max-width:100%;\"><br></p>', 1, 1000, '/upload/goods/a525ec15-dcc1-4ad7-8d22-5c30985a5ad9.jpg,/upload/goods/c73ecbb5-900f-4823-a7f2-260ae82ee0d1.jpg', '之悠悠转', 1.0, '北京市-北京市-西城区', 1, 1, 0.1, '没得', 200, '2020-06-08 19:48:05', '2020-06-08 19:48:05', 25, NULL, 0);
INSERT INTO `goods` VALUES (1591345615638, 50, 9, 2, '/upload/goods/c862fe23-0d71-4387-a0f4-13bfd58954b7.jpg', '火锅', 123.0, 230.0, '<p><br></p>', 1, 1000, NULL, '之悠悠转', 1.0, '北京市-北京市-西城区', 1, 1, 0.1, '酸甜苦辣都有，火辣辣', 100, '2020-06-08 19:58:16', '2020-06-08 19:58:16', 25, NULL, 0);
INSERT INTO `goods` VALUES (1591345615638, 51, 9, 2, NULL, '风衣', 123.0, 120.0, '<p><br></p>', 1, 1000, NULL, '阿萨德？', 1.0, '北京市-北京市-西城区', 1, 1, 0.1, '酸甜苦辣都有，火辣辣', 10, '2020-06-08 20:04:34', '2020-06-08 20:04:34', 25, NULL, 0);
INSERT INTO `goods` VALUES (1591345615638, 53, 9, 2, '/upload/goods/d6bb006a-aae3-4132-93db-03a9ffaab65d.jpg', '风衣', 123.0, 120.0, '<p><br></p>', 1, 1000, NULL, '之悠悠转', 1.0, '北京市-北京市-西城区', 1, 1, 0.1, '酸甜苦辣都有，火辣辣', 20, '2020-06-08 20:10:03', '2020-06-08 20:10:03', 25, NULL, 0);
INSERT INTO `goods` VALUES (1591345615638, 54, 9, 2, '/upload/goods/d6bb006a-aae3-4132-93db-03a9ffaab65d.jpg', '大风车', 123.0, 120.0, '<p><img src=\"/upload/8b2706bd-f279-47a3-9b67-58f2e24bbca2.jpg\" style=\"max-width:100%;\"><br></p>', 1, 1000, '/upload/goods/1c5faa84-4468-47e2-9160-30e025f13552.jpg', '之悠悠转', 1.0, '北京市-北京市-西城区', 1, 1, 0.1, '酸甜苦辣都有，火辣辣', 10, '2020-06-08 20:12:23', '2020-06-08 20:12:23', 25, NULL, 0);
INSERT INTO `goods` VALUES (1591345615638, 55, 9, 2, '/upload/goods/d6bb006a-aae3-4132-93db-03a9ffaab65d.jpg', '大风车', 123.0, 120.0, '<p><img src=\"/upload/8b2706bd-f279-47a3-9b67-58f2e24bbca2.jpg\" style=\"max-width:100%;\"><br></p>', 1, 1000, '/upload/goods/1c5faa84-4468-47e2-9160-30e025f13552.jpg', '之悠悠转', 1.0, '北京市-北京市-西城区', 1, 1, 0.1, '酸甜苦辣都有，火辣辣', 10, '2020-06-08 20:12:27', '2020-06-08 20:12:27', 25, NULL, 0);
INSERT INTO `goods` VALUES (1591268241883, 56, 13, 96, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '可可冰淇淋', 123.0, 1.0, '<p><img src=\"/upload/9e798cea-8233-41c0-ba30-163d97516532.jpg\" style=\"max-width:100%;\"><img src=\"/upload/38cd7126-036d-434a-b02f-105953a56d24.jpg\" style=\"max-width:100%;\"><img src=\"/upload/203bf6f9-4beb-4b82-ab22-8695acb73097.jpg\" style=\"max-width:100%;\"></p>', 1, 1000, '/upload/goods/2a8bd3b5-9cd4-4673-a2c2-6b8920335baf.jpg,/upload/goods/2d0d98f7-03ef-4e9f-8c08-b727fae3ee16.jpg,/upload/goods/c80fa58e-0c87-4cf3-a144-15c9eb1c0c0d.jpg', '好吃不贵', 1.0, '重庆市', 1, 1, 120, '甜', 300, '2020-06-08 20:26:38', '2020-06-08 20:26:38', 5, NULL, 0);
INSERT INTO `goods` VALUES (1591616829215, 57, 15, 96, '/upload/goods/c0c4bbf4-ad51-45c0-ac32-5044972377f2.jpg', '丝滑拿铁', 20.0, 18.0, '<p><br></p>', 1, 1000, NULL, '', 0.0, '重庆市', 1, 2, 0.1, '冷、热', NULL, '2020-06-09 16:50:41', '2020-06-09 16:50:41', 83, NULL, 0);
INSERT INTO `goods` VALUES (1591348173752, 60, 19, 2, '/upload/goods/2e235447-7af8-40dd-a300-2765ea9c4fbb.jpg', '香蕉小', 4.0, 2.0, '<p><br></p>', 1, 111, NULL, '香蕉', 1.0, '重庆市', 1, 2, 1, '中', 10, '2020-06-10 00:08:24', '2020-06-10 00:08:24', 9, 111, 1);
INSERT INTO `goods` VALUES (1591578818999, 61, 6, 28, '/upload/goods/a804be9a-9a90-4c86-8dc0-b0b81cab2597.jpg', '9527', 9527.0, 9527.0, '<p>9527</p>', 1, 1000, '/upload/goods/2786d684-a214-4179-bb39-0ff884d0d18d.jpg,/upload/goods/505c6d89-3219-48ce-b4cd-c8fd0e3e6a80.jpg,/upload/goods/b0fcb2d9-ab69-4fea-b02c-04e9f6778e0b.jpg', '9527', 1.0, '重庆市', 1, 1, 0.1, '9527', 1000, '2020-06-10 15:00:46', '2020-06-10 15:00:46', 1, NULL, 1);
INSERT INTO `goods` VALUES (1591599587637, 62, 35, 28, '/upload/goods/ee50d75b-8b1b-44da-a953-5dfd7f65fc61.jpg', '卤肉饭饭', 88.0, 88.0, '<p><br></p>', 1, 1000, '/upload/goods/1aa8ea13-aa56-4e2d-a3c9-567671706ad2.jpg', '', 1.0, '北京市', 1, 1, 0.1, '', 200, '2020-06-10 16:17:31', '2020-06-10 16:17:31', 81, NULL, 0);
INSERT INTO `goods` VALUES (1591599587637, 63, 36, 28, '/upload/goods/64c8cece-137a-4d0c-b7af-c0ee052bac38.jpg', '4253', 36.0, 6.0, '<p><br></p>', 0, 1000, '/upload/goods/770610ea-ece5-4b59-92b6-884fcc2e5e67.jpg', '9', 1.0, '北京市', 1, 1, 0.1, '', 200, '2020-06-10 16:18:26', '2020-06-10 16:18:26', 81, NULL, 0);
INSERT INTO `goods` VALUES (1591776244703, 65, 42, 161, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '美国大香蕉', NULL, 12.5, '<p>好吃不腻，欢迎购买<img src=\"/upload/6e4da91a-446b-44ca-96a0-3b4cedfe7582.jpg\" style=\"max-width: 100%;\"></p>', 1, 9999, '/upload/goods/655d23e5-faa0-4572-82d4-2e5c091ebfb8.jpg', '好吃不腻', 1.0, '重庆市', 1, 0, 1, '甜', 333, '2020-06-10 16:38:53', '2020-06-10 16:38:53', 27, 333, 1);
INSERT INTO `goods` VALUES (1591264971747, 66, 11, 35, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '红茶', 3.0, 2.5, '<p><br></p>', 1, 1000, '/upload/71bf81f8-cc23-4eed-84de-f52a31ebde75.jpg', '皮卡皮卡', 1.0, '重庆', 1, 2, 2, '完美', 225, '2020-06-10 20:35:49', '2020-06-15 17:49:32', 6, NULL, 1);
INSERT INTO `goods` VALUES (1591348173752, 67, 19, 2, '/upload/goods/8adda43e-a303-4fa8-bae0-a6ebeb70e804.jpg', '大菠萝', 12.0, 11.0, '<p><br></p>', 1, 1000, '/upload/goods/785f502c-4e56-4dd4-ad15-5fae107fd9f0.jpg', '大菠萝', 1.0, '重庆市', 1, 1, 1, '1', 0, '2020-06-11 00:46:03', '2020-06-11 00:46:03', 9, NULL, 1);
INSERT INTO `goods` VALUES (1591693500276, 68, 38, 29, '/upload/goods/0b566afc-9f1c-4c72-8d68-a0e46c2bde7b.jpg', 'aaa', 23.0, 11.0, '<p>好吃不贵系列</p><p><img src=\"/upload/95f588dc-b8ae-480d-94d2-3364d8034e4e.jpeg\" style=\"max-width:100%;\"><br></p>', 1, 1000, '/upload/goods/f6cde4d5-2e41-44b5-beda-4f1eed2829f8.jpg,/upload/goods/49d55d4a-fdd1-4ec6-a5a9-24d68bab228a.jpg', 'sss', 1.0, '山西省', 1, 1, 1, '辣', 88, '2020-06-11 07:24:58', '2020-06-11 07:24:58', 87, NULL, 1);
INSERT INTO `goods` VALUES (1591693500276, 69, 40, 29, '/upload/goods/4cf9805e-1590-4615-92e7-3d7315036988.jpg', '苦瓜汁', 8.0, 6.0, '<p>吃不吃</p><p><img src=\"/upload/95f588dc-b8ae-480d-94d2-3364d8034e4e.jpeg\" style=\"max-width:100%;\"><br></p><p>吃</p><p><img src=\"/upload/428b3ea4-c4b3-4658-a707-34132059201f.jpg\" style=\"max-width:100%;\"><br></p>', 1, 20, '/upload/goods/3ec65ec3-786f-4247-b2ee-fbba9cca4876.jpeg,/upload/goods/67538633-fdb2-4d7b-82fb-83f23b04c6de.jpg,/upload/goods/b7552487-0b7a-488e-9db5-bcbfe3cef05c.jpg', '啦啦啦222', 1.0, '山西省', 1, 2, 1, '', 10, '2020-06-11 07:28:50', '2020-06-11 08:30:22', 87, NULL, 1);
INSERT INTO `goods` VALUES (1591264971747, 72, 46, 35, '/upload/941b6f48-b3d0-47d9-b815-fb3b8c89a382.jpg', '洗脚', 500.0, 250.0, '<p><br></p>', 1, 1000000, '/upload/23eb847d-8657-4962-85a2-ddeda707d49e.jpg', '皮卡皮卡', 1.0, '重庆', 1, 0, 0, '完美', 2222, '2020-06-11 09:58:58', '2020-06-15 17:49:48', 6, NULL, 1);
INSERT INTO `goods` VALUES (1591264971747, 73, 46, 35, '/upload/e6cc563f-4684-4f84-a460-ac4bce5455a8.jpg', '泰式按摩', 501.0, 251.0, '<p><br></p>', 1, 22222, '/upload/df55ee9f-9424-462f-93f8-36793963c3f7.jpg', '啥子', 1.0, '重庆', 1, 0, 0, '完美', 2232, '2020-06-11 09:59:53', '2020-06-15 17:50:01', 6, NULL, 1);
INSERT INTO `goods` VALUES (1591264971747, 74, 45, 35, '/upload/bb430559-267e-49b7-b4bc-0f53c45d58fa.jpg', '阿威十八式', 255.0, 155.0, '<p><br></p>', 1, 10000, '/upload/5de697f5-cdbb-4646-a145-194cc2eaea16.jpg', '啥子', 1.0, '重庆', 1, 0, 0, '完美', 222, '2020-06-11 10:01:41', '2020-06-15 17:50:15', 6, NULL, 1);
INSERT INTO `goods` VALUES (1591264971747, 75, 14, 35, '/upload/48290837-f219-4a9c-ba67-c82f375ee9da.jpg', '一只老奶牛', 15.0, 8.5, '<p><br></p>', 1, 22222, '/upload/7f49bf5f-6946-431e-82f9-cf81c000e5d7.jpg', '皮卡皮卡', 1.0, '重庆', 1, 0, 0.5, '完美', 2222, '2020-06-11 10:03:18', '2020-06-15 17:50:30', 6, NULL, 1);
INSERT INTO `goods` VALUES (1591264971747, 76, 31, 35, '/upload/cdba77be-09ed-4ab3-bac3-16dc470ff3de.jpg', '哈根达斯', 50.0, 33.0, '<p><br></p>', 1, 10000, '/upload/505b05d3-761f-4b0b-a1fb-656cdea8e773.jpg', '爱他就来吃', 1.0, '重庆', 1, 3, 0.2, '完美', 2222, '2020-06-11 10:04:46', '2020-06-15 17:50:47', 6, NULL, 1);
INSERT INTO `goods` VALUES (1591264971747, 77, 12, 35, '/upload/168bff20-b161-436e-b407-072f96b6a347.jpg', '甜心', 15.0, 9.9, '<p><br></p>', 1, 9999, '/upload/4f4e666f-22ef-4001-9998-ab05378cd0cd.jpg', '心甜', 1.0, '重庆', 1, 0, 0.5, '甜', 222, '2020-06-11 10:08:54', '2020-06-15 17:51:01', 6, NULL, 1);
INSERT INTO `goods` VALUES (1591348173752, 78, 19, 2, '/upload/goods/106bcd4f-06e1-400c-a7d4-0ebc23bb987c.jpg', '橘子', 12.0, 10.0, NULL, 1, 1111, '/upload/goods/cb7ee078-15be-4008-9e0e-55b4dfb3c12a.jpg', '大苹果', 3.0, '重庆市', 1, 66, 3, '重', 88, '2020-06-11 11:14:58', '2020-06-11 11:14:58', 9, 88, 1);
INSERT INTO `goods` VALUES (1591348173752, 79, 19, 2, '/upload/goods/d6dd393e-0be8-46f5-8af6-aad74b3c5664.jpg', '', NULL, NULL, NULL, 1, NULL, NULL, '', NULL, '重庆市', 1, NULL, NULL, '', NULL, '2020-06-11 11:28:01', '2020-06-11 11:28:01', 9, NULL, 1);
INSERT INTO `goods` VALUES (1591599587637, 80, 37, 28, '/upload/goods/a85a51db-741c-43cd-88e6-b0a52094dc9b.jpg', '秘制小憨包', 9999.0, 9998.0, '<p><br></p>', 1, 1000, '/upload/goods/5aa40e9a-5819-4b00-9880-c09b91e928ff.jpg', '憨憨', 100.0, '北京市', 1, 1, 180, '微胖', NULL, '2020-06-11 11:54:08', '2020-06-11 11:54:08', 81, NULL, 0);
INSERT INTO `goods` VALUES (1591599587637, 81, 36, 28, '/upload/goods/af893a8d-c2a9-4ec5-820b-8c70c3a7b534.jpg', '巨无霸宝', 343.0, 3432.0, '<p><br></p>', 1, 1000, '/upload/goods/89d98bc1-016a-4c09-a3f8-52d038fb64d8.jpg', '324', 0.0, '北京市', 1, 1, 0.1, '343', NULL, '2020-06-11 11:56:53', '2020-06-11 11:56:53', 81, NULL, 0);
INSERT INTO `goods` VALUES (1591599587637, 82, 36, 28, '/upload/goods/af893a8d-c2a9-4ec5-820b-8c70c3a7b534.jpg', '4253', 343.0, 3432.0, '<p><br></p>', 1, 1000, '/upload/goods/89d98bc1-016a-4c09-a3f8-52d038fb64d8.jpg', '324', 0.0, '北京市', 1, 1, 0.1, '343', NULL, '2020-06-11 11:57:51', '2020-06-11 11:57:51', 81, NULL, 0);
INSERT INTO `goods` VALUES (1591348173752, 84, 18, 2, '/upload/goods/3f868ffb-4d92-4722-b9f0-8f6d0a1dfb8f.jpg', '小香蕉', 12.0, 10.0, NULL, 1, 111, '/upload/goods/f1eeca27-3233-48aa-83ac-67cee6b057b3.jpg', '大苹果', 1.0, '重庆市', 1, 66, 3, '重', 88, '2020-06-11 18:51:52', '2020-06-11 18:51:52', 9, 88, 1);
INSERT INTO `goods` VALUES (1591348173752, 85, 18, 2, '/upload/goods/3f868ffb-4d92-4722-b9f0-8f6d0a1dfb8f.jpg', '小香蕉', 12.0, 10.0, NULL, 1, 111, '/upload/goods/f1eeca27-3233-48aa-83ac-67cee6b057b3.jpg', '大苹果', 1.0, '重庆市', 1, 66, 3, '重', 88, '2020-06-11 18:54:37', '2020-06-11 18:54:37', 9, 88, 0);
INSERT INTO `goods` VALUES (1591348173752, 86, 18, 2, '/upload/goods/3f868ffb-4d92-4722-b9f0-8f6d0a1dfb8f.jpg', '小香蕉', 12.0, 10.0, NULL, 1, 111, '/upload/goods/f1eeca27-3233-48aa-83ac-67cee6b057b3.jpg', '大苹果', 1.0, '重庆市', 1, 66, 3, '重', 88, '2020-06-11 18:55:03', '2020-06-11 18:55:03', 9, 88, 1);
INSERT INTO `goods` VALUES (1591348173752, 87, 18, 2, '/upload/goods/f0ff8758-0d88-4a79-a0ca-dc8a840e40de.jpg', '大菠萝', 12.0, 10.0, '<p>11111111<img src=\"/upload/459c471a-2954-4205-9d8b-f2fbb1cffcdd.jpg\" style=\"max-width: 100%;\"></p>', 1, 111, '/upload/goods/3ee1e1d8-74e7-4bb6-8d8e-6e6fe5f633b6.jpg', '大菠萝111111', 3.0, '重庆市', 1, 66, 3, '中', 88, '2020-06-11 19:14:27', '2020-06-11 19:14:27', 9, 88, 1);
INSERT INTO `goods` VALUES (1591878771513, 88, 48, 61, '/upload/goods/c7d5720f-c9c6-4239-8fdc-9bb8a15789fe.jpg', '没烦恼药丸', 12.0, 10.0, '<h1><img src=\"/upload/00f64577-2e8a-415b-bf7d-6af86c2e1156.jpg\" style=\"max-width:100%;\"><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[舔屏]\" data-w-e=\"1\" style=\"font-size: 14px;\"><br></h1>', 1, 1000, '/upload/goods/d4e12fbc-9b80-42e1-b11e-0aa2ea186f6f.jpg', '快乐药丸', 1.0, '北京市', 1, 1, 0.1, '酸辣', 0, '2020-06-11 23:48:35', '2020-06-11 23:48:35', 42, NULL, 1);
INSERT INTO `goods` VALUES (1591269559236, 89, 51, 8, '/upload/goods/7370bc35-e910-48a9-a846-30d3052ed442.png', '甜甜圈', 11.0, 17.0, '<p><br></p>', 1, 1000, '/upload/goods/59f32412-06b5-4b58-a766-83010313f8f6.png', '香得很', 0.0, '重庆市', 1, 1, 0.1, '多糖', NULL, '2020-06-12 20:18:17', '2020-06-12 20:18:17', 7, NULL, 0);
INSERT INTO `goods` VALUES (1591878771518, 90, 53, 135, '/upload/goods/02b742f7-9009-4c83-b2b8-78394fb83113.jpg', '皮蛋瘦肉粥', 20.0, 18.0, '<p>养生皮蛋瘦肉粥</p><p><span style=\"font-weight: bold; font-family: 宋体;\"><img src=\"/upload/22197345-7487-4079-b7db-4764c8e123d3.jpg\" style=\"max-width:100%;\"><br></span></p><p><span style=\"color: rgb(77, 128, 191); font-weight: bold; font-family: 宋体;\">特好吃</span></p><p><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[舔屏]\" data-w-e=\"1\"><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[舔屏]\" data-w-e=\"1\"><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[舔屏]\" data-w-e=\"1\"><span style=\"color: rgb(77, 128, 191); font-weight: bold; font-family: 宋体;\"><br></span></p>', 1, 50, '/upload/goods/55326276-6401-4914-81b6-a779a0f1b330.jpg,/upload/goods/b3fa748e-44c3-4ef5-8b19-c1e8f769ffa5.jpg', '好吃好吃', 1.0, '山西省', 1, 1, 0.25, '清淡', 333, '2020-06-12 20:41:20', '2020-06-12 20:41:20', 88, NULL, 1);
INSERT INTO `goods` VALUES (1591878771518, 91, 53, 135, '/upload/goods/d77bae1b-2d9e-4e9d-8936-be1c611dd13c.jpg', '牛肉粥', 30.0, 18.0, '<p>牛肉粥</p><p><img src=\"/upload/ed15305a-0702-4e83-af8a-c704c935c291.jpg\" style=\"max-width:100%;\"><span style=\"font-weight: bold; font-family: 宋体;\"><br></span></p><p><span style=\"color: rgb(77, 128, 191); font-weight: bold; font-family: 宋体;\">特好吃</span></p><p><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[舔屏]\" data-w-e=\"1\"><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[舔屏]\" data-w-e=\"1\"><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[舔屏]\" data-w-e=\"1\"><span style=\"color: rgb(77, 128, 191); font-weight: bold; font-family: 宋体;\"><br></span></p>', 1, 50, '/upload/goods/9f2a17ee-c189-4132-9275-f5ce1969a1b7.jpg', '好吃好吃', 1.0, '山西省', 1, 2, 0.25, '清淡', 350, '2020-06-12 20:43:04', '2020-06-12 20:43:04', 88, NULL, 1);
INSERT INTO `goods` VALUES (1591878771518, 92, 54, 135, '/upload/goods/a23956ff-d756-48a6-a082-5ca84f269811.jpg', '蟹黄饺', 18.0, 14.0, '<p>牛肉粥</p><p><img src=\"/upload/d568e9e1-ce2c-4871-b5d2-14775a6f96aa.jpg\" style=\"max-width:100%;\"><span style=\"font-weight: bold; font-family: 宋体;\"><br></span></p><p><span style=\"color: rgb(77, 128, 191); font-weight: bold; font-family: 宋体;\">特好吃</span></p><p><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[舔屏]\" data-w-e=\"1\"><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[舔屏]\" data-w-e=\"1\"><img src=\"http://img.t.sinajs.cn/t4/appstyle/expression/ext/normal/40/pcmoren_tian_org.png\" alt=\"[舔屏]\" data-w-e=\"1\"><span style=\"color: rgb(77, 128, 191); font-weight: bold; font-family: 宋体;\"><br></span></p>', 1, 20, '/upload/goods/362f8e97-f450-4731-a92b-a241e59806e5.jpg', '好吃好吃', 1.0, '山西省', 1, 3, 0.25, '清淡', 210, '2020-06-12 20:44:27', '2020-06-12 20:44:27', 88, NULL, 1);
INSERT INTO `goods` VALUES (1591878771518, 93, 55, 135, '/upload/goods/78892702-6cb4-4a54-b2b9-0ad08121f254.jpg', '豪华双人餐', 86.0, 50.0, '<p><img src=\"/upload/954a1049-2d51-4338-9afa-360a70d72d01.jpg\" style=\"max-width:100%;\"></p><p><img src=\"/upload/ffdbe812-923b-4f09-843c-61165c7a38e1.jpg\" style=\"max-width: 100%;\"><img src=\"/upload/63fbf583-c4a6-4e31-a433-e331a77e6dcd.jpg\" style=\"max-width: 100%;\"><img src=\"/upload/fe222254-14b6-4161-9c4d-4a77216edf2c.jpg\" style=\"max-width: 100%;\"><br></p>', 1, 50, '/upload/goods/74214c10-6ef7-4c5e-ba0b-e85e329db4b7.jpg,/upload/goods/150b4f40-73a3-4d8d-ab0a-2ddbdad3e7b2.jpg,/upload/goods/9cc88296-9a7a-4766-b241-23e2c9074547.jpg,/upload/goods/8489da32-d12c-4332-89e4-98a99389a107.jpg', '巨划算', 4.0, '山西省', 1, 1, 1.2, '清淡', 1000, '2020-06-12 20:47:52', '2020-06-12 20:47:52', 88, NULL, 1);
INSERT INTO `goods` VALUES (1591878771518, 94, 55, 135, '/upload/goods/78892702-6cb4-4a54-b2b9-0ad08121f254.jpg', '营养套餐', 50.0, 25.0, '<p><img src=\"/upload/954a1049-2d51-4338-9afa-360a70d72d01.jpg\" style=\"max-width:100%;\"></p><p><img src=\"/upload/ffdbe812-923b-4f09-843c-61165c7a38e1.jpg\" style=\"max-width: 100%;\"><img src=\"/upload/fe222254-14b6-4161-9c4d-4a77216edf2c.jpg\" style=\"max-width: 100%;\"><br></p>', 1, 50, '/upload/goods/74214c10-6ef7-4c5e-ba0b-e85e329db4b7.jpg,/upload/goods/150b4f40-73a3-4d8d-ab0a-2ddbdad3e7b2.jpg,/upload/goods/8489da32-d12c-4332-89e4-98a99389a107.jpg', '巨划算', 2.0, '山西省', 1, 2, 0.8, '清淡', 670, '2020-06-12 20:49:04', '2020-06-12 20:49:31', 88, NULL, 1);
INSERT INTO `goods` VALUES (1591878771520, 95, 56, 97, '/upload/goods/5eaf822e-53c1-4880-94d0-a07e380e109d.jpg', '创意蛋糕', 277.0, 210.0, '<p><img src=\"/upload/02fadb88-6423-4a8f-96ed-e3f3c556f48f.jpg\" style=\"max-width:100%;\"><br></p>', 1, 200, '/upload/goods/59f50870-254e-4f56-a337-5c175b6f1fae.jpg', '好看', 10.0, '山西省', 1, 1, 1.5, '甜', 200, '2020-06-12 20:58:24', '2020-06-12 20:58:24', 96, NULL, 1);
INSERT INTO `goods` VALUES (1591878771520, 96, 56, 97, '/upload/goods/5eaf822e-53c1-4880-94d0-a07e380e109d.jpg', '慕斯蛋糕', 399.0, 299.0, '<p><img src=\"/upload/02fadb88-6423-4a8f-96ed-e3f3c556f48f.jpg\" style=\"max-width:100%;\"><br></p>', 1, 150, '/upload/goods/59f50870-254e-4f56-a337-5c175b6f1fae.jpg', '好看好吃', 15.0, '山西省', 1, 1, 1.8, '甜', 150, '2020-06-12 20:59:15', '2020-06-12 20:59:15', 96, NULL, 1);
INSERT INTO `goods` VALUES (1591878771520, 97, 57, 97, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '杨枝甘露', 20.0, 18.0, '<p><img src=\"/upload/356a1426-2725-448f-8080-1294f43c8c32.jpg\" style=\"max-width:100%;\"><br></p>', 1, 1000, '/upload/goods/b2287c39-943f-424f-bbb3-b370802bc733.jpg', '好看好吃', 1.0, '山西省', 1, 1, 0.3, '甜', 500, '2020-06-12 21:00:23', '2020-06-12 21:00:23', 96, NULL, 1);
INSERT INTO `goods` VALUES (1591878771520, 98, 59, 97, '/upload/goods/4d774b09-2d63-4b7f-a148-0f0f62edde2f.jpg', '芒果绵冰', 20.0, 15.0, '<p><img src=\"/upload/91ecb684-f1e6-4225-ba9b-52d0465b78f6.jpg\" style=\"max-width:100%;\"><br></p>', 1, 1000, '/upload/goods/5bd7e0d6-5b16-4886-b913-feaecc1cc528.jpg', '好看好吃', 1.0, '山西省', 1, 1, 0.3, '甜', 1000, '2020-06-12 21:01:43', '2020-06-12 21:01:43', 96, NULL, 1);
INSERT INTO `goods` VALUES (1591878771520, 99, 57, 97, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '杨枝', 21.0, 19.0, '<p><img src=\"/upload/356a1426-2725-448f-8080-1294f43c8c32.jpg\" style=\"max-width:100%;\"><br></p>', 1, 1000, '/upload/goods/b2287c39-943f-424f-bbb3-b370802bc733.jpg', '好看好吃', 1.0, '山西省', 1, 1, 0.3, '甜', 200, '2020-06-12 21:00:23', '2020-06-12 21:00:23', 96, NULL, 1);
INSERT INTO `goods` VALUES (1591878771520, 100, 57, 97, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '杨枝甘2', 20.0, 18.0, '<p><img src=\"/upload/356a1426-2725-448f-8080-1294f43c8c32.jpg\" style=\"max-width:100%;\"><br></p>', 1, 1000, '/upload/goods/b2287c39-943f-424f-bbb3-b370802bc733.jpg', '好看好吃', 1.0, '山西省', 1, 1, 0.3, '甜', 210, '2020-06-12 21:00:23', '2020-06-12 21:00:23', 96, NULL, 1);
INSERT INTO `goods` VALUES (1591878771520, 101, 57, 97, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '杨枝甘3', 20.0, 18.0, '<p><img src=\"/upload/356a1426-2725-448f-8080-1294f43c8c32.jpg\" style=\"max-width:100%;\"><br></p>', 1, 1000, '/upload/goods/b2287c39-943f-424f-bbb3-b370802bc733.jpg', '好看好吃', 1.0, '山西省', 1, 1, 0.3, '甜', 220, '2020-06-12 21:00:23', '2020-06-12 21:00:23', 96, NULL, 1);
INSERT INTO `goods` VALUES (1591878771520, 102, 59, 97, '/upload/goods/4d774b09-2d63-4b7f-a148-0f0f62edde2f.jpg', '芒果汁2', 18.0, 12.0, '<p><img src=\"/upload/91ecb684-f1e6-4225-ba9b-52d0465b78f6.jpg\" style=\"max-width:100%;\"><br></p>', 1, 1000, '/upload/goods/5bd7e0d6-5b16-4886-b913-feaecc1cc528.jpg', '好看好吃', 1.0, '山西省', 1, 1, 0.3, '甜', 100, '2020-06-12 21:01:43', '2020-06-12 21:01:43', 96, NULL, 1);
INSERT INTO `goods` VALUES (1591878771520, 103, 59, 97, '/upload/goods/4d774b09-2d63-4b7f-a148-0f0f62edde2f.jpg', '芒果西米露', 20.0, 19.0, '<p><img src=\"/upload/91ecb684-f1e6-4225-ba9b-52d0465b78f6.jpg\" style=\"max-width:100%;\"><br></p>', 1, 1000, '/upload/goods/5bd7e0d6-5b16-4886-b913-feaecc1cc528.jpg', '好看好吃', 1.0, '山西省', 1, 1, 0.3, '甜', 800, '2020-06-12 21:01:43', '2020-06-12 21:01:43', 96, NULL, 1);
INSERT INTO `goods` VALUES (1592210502025, 104, 60, 17, '/upload/goods/c855cf83-0687-428c-a5d7-6f4360153641.jpg', '韩式炸鸡', 48.0, 21.9, '<p><br></p>', 1, 1000, NULL, '用心做鸡', 2.0, '重庆市', 1, 1, 260, '蜂蜜芥末', 0, '2020-06-15 19:29:47', '2020-06-15 19:29:47', 100, NULL, 1);
INSERT INTO `goods` VALUES (1591878771530, 107, 62, 2, '/upload/goods/a3ed26cb-34f1-4de2-95d5-b5cdab65a1ba.png', '123', 123.0, 123.0, '<p><br></p>', 1, 1000, NULL, '123', 0.0, '北京市', 1, 110, 0.1, '', 0, '2020-06-16 21:12:05', '2020-06-16 21:12:05', 90, NULL, 0);
INSERT INTO `goods` VALUES (1591878771530, 108, 62, 2, '/upload/goods/0ae70e5b-3173-42c2-8a7a-945f195c1bed.jpg', '小汉堡儿', 123.0, 123.0, '<p>小汉堡儿</p><p><br></p>', 1, 1000, 'http://localhost/pages/back/goods/editPre/108', '小汉堡儿', 0.0, '北京市', 1, 1, 0.1, '', 0, '2020-06-16 21:13:46', '2020-06-16 21:13:46', 90, NULL, 0);
INSERT INTO `goods` VALUES (1591878771530, 109, 61, 2, '/upload/goods/7bf2b755-138c-4761-910c-171563e308bc.jpg', '垃圾', 123.0, 123.0, '<p><br></p>', 1, 1000, NULL, '垃圾', 0.0, '北京市', 1, 1, 0.1, '', 0, '2020-06-18 15:14:47', '2020-06-18 15:14:47', 90, NULL, 0);

-- ----------------------------
-- Table structure for goods_type
-- ----------------------------
DROP TABLE IF EXISTS `goods_type`;
CREATE TABLE `goods_type`  (
  `goods_type_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '商品类型id',
  `type_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '商品类型名称',
  `sort` int(0) NULL DEFAULT 10 COMMENT '排序编号，越小越在前面',
  `merchant_id` bigint(0) NOT NULL COMMENT '是哪个商家的（分片键）',
  PRIMARY KEY (`goods_type_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods_type
-- ----------------------------
INSERT INTO `goods_type` VALUES (5, '招牌菜', 1, 1591578818999);
INSERT INTO `goods_type` VALUES (6, '凉菜', 2, 1591578818999);
INSERT INTO `goods_type` VALUES (7, '套饭', 3, 1591578818999);
INSERT INTO `goods_type` VALUES (8, '汤菜', 4, 1591578818999);
INSERT INTO `goods_type` VALUES (9, '稀饭', 10, 1591345615638);
INSERT INTO `goods_type` VALUES (10, '小炒', 11, 1591345615638);
INSERT INTO `goods_type` VALUES (11, '冰红茶', 12, 1591264971747);
INSERT INTO `goods_type` VALUES (12, '奶茶', 13, 1591264971747);
INSERT INTO `goods_type` VALUES (13, '冰淇淋', 3, 1591268241883);
INSERT INTO `goods_type` VALUES (14, '酸奶', 14, 1591264971747);
INSERT INTO `goods_type` VALUES (15, '奶盖', 2, 1591268241883);
INSERT INTO `goods_type` VALUES (16, '奶茶', 1, 1591268241883);
INSERT INTO `goods_type` VALUES (17, '快餐', 10, 1591319157884);
INSERT INTO `goods_type` VALUES (18, '冰淇淋', 10, 1591348173752);
INSERT INTO `goods_type` VALUES (19, '快餐', 10, 1591348173752);
INSERT INTO `goods_type` VALUES (20, '热菜', 10, 1591348173752);
INSERT INTO `goods_type` VALUES (21, '奶茶', 10, 1591348173752);
INSERT INTO `goods_type` VALUES (22, '饮品', 5, 1591269151344);
INSERT INTO `goods_type` VALUES (23, '果蔬', 5, 1591269151344);
INSERT INTO `goods_type` VALUES (24, '西式甜品', 5, 1591269151344);
INSERT INTO `goods_type` VALUES (25, '极品海鲜', 5, 1591269151344);
INSERT INTO `goods_type` VALUES (26, '中式正餐', 5, 1591269151344);
INSERT INTO `goods_type` VALUES (29, '鸡蛋饼', 6, 1591348173752);
INSERT INTO `goods_type` VALUES (31, '冰淇淋', 4, 1591264971747);
INSERT INTO `goods_type` VALUES (34, '快餐', 1, 1591578818999);
INSERT INTO `goods_type` VALUES (35, '好吃点', 10, 1591599587637);
INSERT INTO `goods_type` VALUES (36, '多吃点', 10, 1591599587637);
INSERT INTO `goods_type` VALUES (37, '少吃点', 10, 1591599587637);
INSERT INTO `goods_type` VALUES (38, '秒杀套餐', 1, 1591693500276);
INSERT INTO `goods_type` VALUES (39, '招牌菜', 2, 1591693500276);
INSERT INTO `goods_type` VALUES (40, '鲜榨果汁', 3, 1591693500276);
INSERT INTO `goods_type` VALUES (42, '水果', 0, 1591776244703);
INSERT INTO `goods_type` VALUES (45, '打折', 0, 1591264971747);
INSERT INTO `goods_type` VALUES (46, '特色', 12, 1591264971747);
INSERT INTO `goods_type` VALUES (48, '零食', 9, 1591878771513);
INSERT INTO `goods_type` VALUES (49, '水果', 10, 1591878771513);
INSERT INTO `goods_type` VALUES (50, '火锅', 11, 1591878771513);
INSERT INTO `goods_type` VALUES (51, '甜品', 23, 1591269559236);
INSERT INTO `goods_type` VALUES (53, '养生粥', 1, 1591878771518);
INSERT INTO `goods_type` VALUES (54, '必备点心', 2, 1591878771518);
INSERT INTO `goods_type` VALUES (55, '超值套餐', 0, 1591878771518);
INSERT INTO `goods_type` VALUES (56, '蛋糕', 1, 1591878771520);
INSERT INTO `goods_type` VALUES (57, '甜品', 2, 1591878771520);
INSERT INTO `goods_type` VALUES (59, '饮品', 3, 1591878771520);
INSERT INTO `goods_type` VALUES (60, '炸鸡', 10, 1592210502025);
INSERT INTO `goods_type` VALUES (61, '垃圾', 10, 1591878771530);
INSERT INTO `goods_type` VALUES (62, '老八秘制小汉堡', 110, 1591878771530);

-- ----------------------------
-- Table structure for img_cache
-- ----------------------------
DROP TABLE IF EXISTS `img_cache`;
CREATE TABLE `img_cache`  (
  `img_url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '图片的地址',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '图片缓存的时间节点',
  PRIMARY KEY (`img_url`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of img_cache
-- ----------------------------

-- ----------------------------
-- Table structure for merchant
-- ----------------------------
DROP TABLE IF EXISTS `merchant`;
CREATE TABLE `merchant`  (
  `merchant_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '商家id',
  `user_id` bigint(0) NOT NULL COMMENT '外键userId，是哪个用户的商户',
  `phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `shop_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '店铺名称',
  `shop_logo` varchar(1255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺logo',
  `shop_detail` varchar(2005) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺详情',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `contact_name` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人姓名',
  `pcd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省市区（门店区域）：重庆市-重庆市-渝中区',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细的街道地址',
  `location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户输入的坐标：百脑汇大夕阳国际',
  `lng` double NULL DEFAULT NULL COMMENT '经度',
  `lat` double NULL DEFAULT NULL COMMENT '纬度',
  `is_open` tinyint(1) NULL DEFAULT NULL COMMENT '营业状态：营业中1，关门了0',
  `approval_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审批状态：待提交、审核中，审核通过，需重新提交',
  `street` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '店铺所在的街道（营业执照上面的街道）',
  `title1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标语1',
  `title2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标语2',
  `title3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标语3',
  `min_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '最少起送价格',
  `business_start_time1` time(0) NULL DEFAULT NULL COMMENT '营业开始时间1',
  `business_end_time1` time(0) NULL DEFAULT NULL COMMENT '营业结束时间1',
  `business_start_time2` time(0) NULL DEFAULT NULL COMMENT '营业开始时间2',
  `business_end_time2` time(0) NULL DEFAULT NULL COMMENT '营业结束时间2',
  `province` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '根据这个省字段分商品表',
  `door_img` varchar(2555) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '门脸图',
  `interior_img` varchar(2555) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '室内图',
  `business_type` int(0) NULL DEFAULT NULL COMMENT '主要经营类目id',
  `takeaway_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '外卖电话',
  `is_plat_send` tinyint(1) NULL DEFAULT NULL COMMENT '是否开启了平台配送：1或0',
  `card_user_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人身份证正面',
  `card_guohui_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人身份证国徽面照片',
  `card_hand_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人手持身份证正面照片',
  `business_license_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '营业执照图片',
  `security_permit_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '安全许可证图片',
  `other_voucher_img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其他凭证',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最近更新时间',
  `max_delivery_area` double NULL DEFAULT NULL COMMENT '最大配送范围：单位km',
  PRIMARY KEY (`merchant_id`) USING BTREE,
  UNIQUE INDEX `user_id`(`user_id`) USING BTREE,
  UNIQUE INDEX `phone`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1592210511633 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of merchant
-- ----------------------------
INSERT INTO `merchant` VALUES (1591264971747, 6, '15172359843', '柏亮会所', '/upload/3c6b4361-9478-425f-9dd8-398497548416.jpg', NULL, '110110@qq.com', '柏亮', '重庆市-重庆市-九龙坡区', '大西洋国际大厦', '九龙坡区', 106.484756, 29.53199, 1, '暂不合作', NULL, '1', '2', '3', 2.20, NULL, NULL, NULL, NULL, '重庆市', '/upload/3c6b4361-9478-425f-9dd8-398497548416.jpg', '/upload/790af02a-15d2-448f-81f3-d526348306e5.jpg', 35, '110110', 1, '/upload/3c6b4361-9478-425f-9dd8-398497548416.jpg', '/upload/3c6b4361-9478-425f-9dd8-398497548416.jpg', '/upload/3c6b4361-9478-425f-9dd8-398497548416.jpg', '/upload/3c6b4361-9478-425f-9dd8-398497548416.jpg', '/upload/3c6b4361-9478-425f-9dd8-398497548416.jpg', '/upload/3c6b4361-9478-425f-9dd8-398497548416.jpg', '2020-06-04 18:02:52', '2020-06-04 18:02:52', 3000);
INSERT INTO `merchant` VALUES (1591268241883, 5, '17754923091', '喝不起奶茶', '/upload/2feaac76-b8a7-4248-ad30-c017ffd11895.jpg', NULL, '1282304433@qq.com', '李永凯', '重庆市-重庆市-九龙坡区', '杨家坪西郊支路19号 重庆科技学院家属区', '', 106.508944, 29.507549, 1, '审核通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '重庆市', '/upload/9f387ad3-a2be-448d-a813-0b0d440d89d0.jpg,/upload/866ba63a-2f4e-40f6-b14d-67149acc2dd3.jpg', '/upload/2feaac76-b8a7-4248-ad30-c017ffd11895.jpg', 96, '7474740', 1, '/upload/7b2d0b9d-8df5-440f-9084-819b38b93db3.jpg', '/upload/3344ceb3-5e34-49b6-8ed9-11b981d9ed95.jpg', '/upload/c47fe5df-3581-47ba-9453-8844dbf533e4.jpg', '/upload/d9efee5e-f24e-4973-9fc6-d9774576a382.jpg', '/upload/4f722b93-d685-455c-b801-533e970722d9.jpg', '/upload/9b1d8312-1762-4cea-96b4-0baad27e141e.jpg', '2020-06-04 19:10:05', '2020-06-04 19:10:05', 3);
INSERT INTO `merchant` VALUES (1591269151344, 10, '18883944248', '流光溢彩', '/upload/0cafd95b-7f67-4506-9d19-98dcdf2476f7.jpg', NULL, '123@qq.com', 'ly', '重庆市-重庆市-巴南区', '重庆市巴南区巴南区政府', NULL, 106.54697, 29.408072, 1, '审核通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '重庆市', '/upload/b9a6c40e-26bc-48ce-8f9f-7a0cde849786.jpg', '/upload/b9a6c40e-26bc-48ce-8f9f-7a0cde849786.jpg', 1, '12', 1, '/upload/b9a6c40e-26bc-48ce-8f9f-7a0cde849786.jpg', '/upload/b9a6c40e-26bc-48ce-8f9f-7a0cde849786.jpg', '/upload/b9a6c40e-26bc-48ce-8f9f-7a0cde849786.jpg', '/upload/b9a6c40e-26bc-48ce-8f9f-7a0cde849786.jpg', '/upload/b9a6c40e-26bc-48ce-8f9f-7a0cde849786.jpg', '/upload/b9a6c40e-26bc-48ce-8f9f-7a0cde849786.jpg', '2020-06-04 19:12:39', '2020-06-04 19:12:39', 3);
INSERT INTO `merchant` VALUES (1591269559236, 7, '18375779001', '熙达万能店铺', NULL, NULL, '857684513@qq.com', '晨曦达', '重庆市-重庆市-九龙坡区', '石桥铺科园一路2号 大西洋国际大厦', NULL, 106.484756, 29.53199, 1, '审核通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '重庆市', '/upload/ab0d80eb-f8aa-4cc3-93e1-72175a6dd350.png', '/upload/8aac5b75-7ad7-4fff-a165-5112d220a60a.png', 8, '1857662358', 1, '/upload/e592075d-163e-4186-aff5-e6e28f48a205.png', '/upload/217f94b0-8c29-4bd5-a40c-f75bad24c3ba.png', '/upload/f1254f46-0c81-4f20-ac50-24078d668503.png', '/upload/d7880141-8f7b-4beb-b24c-3213b4f998d3.png', '/upload/6848a345-96b6-4c76-99b2-4852c23afc49.png', '/upload/5916c21b-a340-42f7-b977-7ed5cccf2ec4.png', '2020-06-04 19:48:43', '2020-06-04 19:48:43', 3);
INSERT INTO `merchant` VALUES (1591269559241, 41, '18725620041', '达达夜宵', NULL, NULL, '', '委屈', '重庆市-重庆市-渝中区', '切切', NULL, NULL, NULL, 1, '审核通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '重庆市', '/upload/62254376-f091-42d0-9c05-2ecc6e482ec3.jpg', '/upload/f3e128bb-21a2-4e36-9dff-7b7ae58cd5e0.jpg', 32, '222', 1, '/upload/a0f0a642-9f9d-48a0-a7d9-9573b3d68304.jpg', '/upload/110edc1d-89ac-4735-878f-d1afd96dfdb8.jpg', '/upload/b6be32bf-f371-46bc-983f-1fbf7e86756e.jpg', '/upload/b25780ec-fd16-4607-bf4d-a020883c4d5c.jpg', '/upload/1af0a1df-560d-4788-a89c-cf7abb11d381.jpg', '/upload/b5eccdbd-86d3-43ba-9a15-522abd84aa35.jpg', '2020-06-04 20:43:29', '2020-06-04 20:43:29', 3);
INSERT INTO `merchant` VALUES (1591269559279, 8, '13996054565', '我醉烧', NULL, NULL, '852555@qq.com', 'Tcy', '重庆-市-永川市', '黄龙路10号16层 重庆瑞丽公寓(3号店)', NULL, 106.484756, 29.53199, 1, '审核通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '重庆', '/upload/7c03a9ce-5871-4ba4-afa5-e6e85cb8dae1.png', NULL, 43, '110', 1, NULL, NULL, NULL, NULL, NULL, '/upload/7c03a9ce-5871-4ba4-afa5-e6e85cb8dae1.png', '2020-06-05 08:54:16', '2020-06-05 08:54:16', 3);
INSERT INTO `merchant` VALUES (1591319157884, 12, '15923964455', '白给有限公司', NULL, NULL, '876992776@qq.com', 'tbs', '上海市-上海市-徐汇区', '京良路南侧 芭蕾雨·悦都', NULL, 116.18565, 39.761212, 1, '审核通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '上海市', '/upload/fb7423d5-64f2-4ba0-9dd8-94ec7311d369.jpg', '/upload/fb4d2f79-8795-4e6a-8964-94f3ef0d3e00.jpg', 6, '444', 1, '/upload/3291462d-77e6-4f37-a606-1df1b28eda5c.jpg', '/upload/9b5a950d-baa9-4229-8365-790f68e9c094.jpg', '/upload/85baf137-3311-4404-a4e0-324b3bb2edca.jpg', '/upload/07350414-b08c-4532-9fa4-b5fdaeab3594.jpg', '/upload/18c7d7f2-57c6-4b0e-ba4a-7b100041fc9e.jpg', '/upload/6971e1a0-b782-43cf-a111-55f0a7d97f2b.jpg', '2020-06-05 09:47:14', '2020-06-06 11:01:22', 3);
INSERT INTO `merchant` VALUES (1591345615638, 25, '18717092213', '无产阶级之捅', NULL, NULL, '', '十八厘米', '北京市-北京市-西城区', '莲花池东路116-2号 瑞尔威写字楼', NULL, 116.323847, 39.895922, NULL, '审核通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '北京市-北京市-西城区', '/upload/dcbc77f2-2b60-4f14-8d48-9ce3cea85fc4.jpg', '/upload/0fcfa5c4-e1ad-42c7-a95f-b80d95defdcd.jpg', 2, '1231231', NULL, '/upload/6e0f8efa-2918-4526-b18f-a66b0f54a257.jpg', '/upload/d796dfe3-f431-4a2e-b833-a09e0e4451a2.jpg', '/upload/acb64e1e-96e6-452a-bbd8-76b0c3779d94.jpg', '/upload/469a2b93-bf34-4968-86ea-8751b544868e.jpg', '/upload/355faba4-73b3-40ce-8385-8db02939f458.jpg', '/upload/9e6361ce-0bf7-431c-b09a-c0d51a3f0342.jpg', '2020-06-05 16:33:15', '2020-06-05 16:33:15', 3);
INSERT INTO `merchant` VALUES (1591348173752, 9, '18875150682', '星期天摆地摊', NULL, NULL, '12345@qq.com', 'quincey', '重庆市-重庆市-万州区', '中国联通(高创营业厅)高创四楼 七加一连锁酒店(石桥铺赛博店)', NULL, 106.484698, 29.532469, 1, '审核通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '重庆市', '/upload/1982e7b3-428f-4f8a-ae69-d05d64eff377.jpg', NULL, 2, '1234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-06-05 17:12:52', '2020-06-05 17:12:52', 3);
INSERT INTO `merchant` VALUES (1591354760602, 30, '15683305716', '阴阳怪虾', NULL, NULL, '1334684045@qq.com', 'dmh', '重庆市-重庆市-江北区', '东直门南大街1-2号 Raffles City Residence Beijing', NULL, NULL, NULL, NULL, '审核通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '重庆市', '/upload/f59cab05-a44c-4043-ab90-81ce9560738d.jpg', '/upload/8a5e919b-044e-43f1-b09e-773233b95271.jpg', 2, '15683305716', NULL, '/upload/2d72c25e-6d3f-4ad3-9c63-4bb97915de52.jpg', '/upload/369fc97e-a503-4186-a434-2876f49f7414.jpg', '/upload/986e781e-497d-43f6-86ac-856bc1d17af8.jpg', '/upload/4520b86b-3371-45e5-9838-e089d385db0a.jpg', '/upload/2528ef02-6743-4b8e-93ae-460777200f90.jpg', '/upload/e9889638-8955-4f82-b2bc-eb783f269bfb.jpg', '2020-06-05 18:59:21', '2020-06-05 18:59:21', 3);
INSERT INTO `merchant` VALUES (1591411520193, 48, '13527332786', '鸡你太美', NULL, NULL, '1683990909@qq.com', '蔡某某', '北京市-北京市-东城区', '灵境胡同12号 灵境胡同12号院', NULL, 116.380311, 39.913907, NULL, '审核通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '北京市', '/upload/b8cf374a-ef77-46b9-a927-ead4d9d70377.jpg', '/upload/ca293b55-96f2-4d1f-bbae-b6fde957e394.jpg', 2, '13527332786', NULL, '/upload/16e3bed7-a0b6-4fd4-98a7-a8df576a18a7.jpg', '/upload/e1aff824-028d-4794-959c-dee58810cd32.jpg', '/upload/4ffb47e6-e540-4996-8b39-0eaccc585d86.jpg', '/upload/09de4b33-dab7-4200-99d2-c864d6ceae10.jpg', '/upload/7fb723b5-cdad-47d6-a928-bd1b124cdd5d.jpg', '/upload/48b50932-0b64-406f-8053-bc576a3060a2.jpg', '2020-06-06 10:45:37', '2020-06-06 10:45:37', 3);
INSERT INTO `merchant` VALUES (1591411738290, 61, '15373023157', '翔哥牛逼', NULL, NULL, '', '翔哥牛逼', '北京市-北京市-东城区', '广安门外红居街13号 翔峰大厦', NULL, 116.339269, 39.88785, NULL, '暂不合作', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '北京市', '/upload/ef27953a-aae4-44fa-84e6-070e2d09b061.jpg', '/upload/393dcd82-8e16-4dbb-a6b6-90775badf8e2.jpg', 2, '', NULL, '/upload/7e96a145-6dea-4677-a2ac-53044bb4454a.jpg', '/upload/863b656c-9307-4854-be68-291b6ddcd5be.jpg', '/upload/91e33051-0093-473f-b43c-1379782e6a26.jpg', '/upload/aa061a8f-59bc-4020-82db-61bf675c33b6.jpg', '/upload/f82bb1be-492a-4433-92e3-9f2775d1a08d.jpg', '/upload/619d0ee5-8bd6-46bf-a971-f15bf96f3adc.jpg', '2020-06-06 10:48:58', '2020-06-06 10:48:58', 3);
INSERT INTO `merchant` VALUES (1591578818999, 1, '18223170162', '2022世界杯宵夜摊摊', NULL, NULL, '', '黎杭', '重庆市-重庆市-渝中区', '石桥铺科园一路2号 大西洋国际大厦', NULL, 106.484756, 29.53199, NULL, '审核通过', NULL, '顺丰专送', '基础运费¥5', '满108送梁山好汉', NULL, NULL, NULL, NULL, NULL, '重庆市', '/upload/461e5ac2-7335-4728-9d7e-9d6c79582627.jpg', '/upload/3f887372-6859-4dad-9117-f8d0cc072e37.jpg', 28, '123456', NULL, '/upload/9469115a-921f-47cd-af90-02db658efb94.jpg', '/upload/e30be65b-c3a0-4680-a714-d385cc590c21.jpg', '/upload/e4cda8de-2df8-4b71-ba6c-a554e0171666.jpg', '/upload/ed91db51-f1af-443b-a5c8-610c789197b5.jpg', '/upload/1a45e2bc-c560-4894-82e7-28aef28620b5.jpg', '/upload/722bc8bc-9c5a-4cf9-86b9-9ce94da10431.jpg', '2020-06-08 09:13:39', '2020-06-08 09:13:39', 3);
INSERT INTO `merchant` VALUES (1591588843787, 2, '18223170163', '8386', NULL, NULL, '', '533368', '北京市-北京市-西城区', '建国路88号院8号 SOHO现代城C座', NULL, 116.475819, 39.907396, NULL, '审核通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '北京市', '/upload/067125d9-4b6f-4f7a-ae2e-50035ed7062c.jpg', '/upload/41e08452-7990-4dfd-95f6-c3a13845f1f3.jpg', 28, '4756756', NULL, '/upload/1d81a5d0-cba0-40e8-a24a-d04b6994710e.jpg', '/upload/ea1f1297-ae89-435b-866e-daacca90b474.jpg', '/upload/25e0e005-3a46-4f34-bbb9-0e4b8c0ca00e.jpg', '/upload/34dff34f-11cf-403d-9663-d290f2138d2d.jpg', '/upload/4dc27f17-fd66-454c-9f43-5fdd93ec52ba.jpg', '/upload/4f71a71f-6ff7-4f55-8bc2-4d5041586229.jpg', '2020-06-08 12:00:44', '2020-06-08 12:00:44', 3);
INSERT INTO `merchant` VALUES (1591599587637, 81, '18725906151', '润肤乳', NULL, NULL, '', 'zzz', '北京市-北京市-昌平区', '张家湾镇里二泗村 佑民雅居', NULL, 116.76321, 39.833404, NULL, '审核通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '北京市', '/upload/23456750-1406-4eff-9854-98bab6072573.jpg', '/upload/d5c25322-0f77-443f-867c-6b49c0db3589.jpg', 28, '4354354', NULL, '/upload/ca9e2e74-17c4-4c24-b67d-1c3e6c62b5da.jpg', '/upload/4a8e54db-8b37-47e7-8a5e-5aaa275072e1.jpg', '/upload/3f954108-6715-4075-bf65-1f02db25486d.jpg', '/upload/c9791bad-9c66-4167-95e4-eabd728efbf3.jpg', '/upload/8610f8fe-f5be-4ea3-b3a0-56ba96986e6a.jpg', '/upload/f591569e-c159-4d1e-b0fb-4edf8806e30b.jpg', '2020-06-08 14:59:48', '2020-06-08 14:59:48', 3);
INSERT INTO `merchant` VALUES (1591616829215, 83, '15077777777', '木木', NULL, NULL, '', '木木', '重庆市-重庆市-巴南区', '龙洲大道5号 巴南万达广场写字楼A座', NULL, 106.544098, 29.399726, NULL, '审核通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '重庆市', '/upload/e661faa0-8a17-4108-8256-32a08c176069.jpg', '/upload/767b9335-5b60-4a42-85d7-a1351a77c37c.jpg', 96, '02312345678', NULL, '/upload/b78ddc1a-53bd-4f8a-966a-7875ccbb310f.jpg', '/upload/4827e892-988c-4f19-a6e4-a5994592736a.jpg', '/upload/b7a50ce6-1ec6-4d35-8928-a63e544b5cbb.jpg', '/upload/bf8eabaa-8899-4b6e-9129-f4e65c6f7cf8.jpg', '/upload/bae42675-427c-4985-b6c8-680ade9e347d.jpg', '/upload/a94a5680-8431-4b59-958a-2958e44dc4f3.jpg', '2020-06-08 19:47:09', '2020-06-08 19:47:09', 3);
INSERT INTO `merchant` VALUES (1591619362903, 14, '18182282703', '法外狂徒张三重庆分三', NULL, NULL, '1454594675@qq.com', '法外狂徒张三', '重庆市-重庆市-九龙坡区', '三里屯北街南路43号 同里大厦', NULL, 116.454354, 39.936263, NULL, '审核通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '重庆市', '/upload/ae3fc52e-0799-494b-b463-1d3b26396139.jpg', '/upload/783f6722-bedb-41f9-b5f2-7cb9fd8df45d.jpg', 2, '023594740', NULL, '/upload/bbaf8463-1b20-4cec-9c1a-3efa2062edc3.jpg', '/upload/7b907629-5962-4a6c-8d70-c5706e739f3f.jpg', '/upload/98aa9234-d1e4-4f81-98f9-25e2176b4ba3.jpg', '/upload/24ed46c6-6d72-41c6-ba4f-c93eb65e0c81.jpg', '/upload/aa8daba4-78ff-4b81-8401-a7dff356ccb3.jpg', '/upload/4487ce21-7b2f-426d-9a6b-0a8f74155fc3.jpg', '2020-06-08 20:29:23', '2020-06-08 20:29:23', 3);
INSERT INTO `merchant` VALUES (1591693500276, 87, '16602140000', '啤酒炸鸡', '/upload/merchant/7781b781-2f3d-4820-be5f-eaaf3b6f059a.jpg', NULL, '', '燕小六', '山西省-太原市-市辖区', '滨河西路25号漪汾桥南太原教育电视台南侧 港澳中心(滨河西路辅路)', NULL, 112.532704, 37.870409, NULL, '需重新提交', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '山西省', '/upload/merchant/7781b781-2f3d-4820-be5f-eaaf3b6f059a.jpg', '/upload/merchant/8782074b-2fd8-49da-ac13-2558761bd5e8.jpg', 29, '01011010', NULL, '/upload/merchant/4096f848-b7df-430b-87c7-723d4b03c330.jpg', '/upload/merchant/4d0c7c7a-8900-4395-ae90-a808303c353e.jpg', '/upload/merchant/cae0df37-1476-4b43-b987-c813d4dd284f.jpg', '/upload/merchant/79340d2a-6b76-4e01-aedc-d0207c1f7f6b.jpg', '/upload/merchant/97bc619e-4ad9-4d45-9fad-80036efc7272.jpg', '/upload/merchant/912ec566-7454-4ba8-9c8d-07563113c289.jpg', '2020-06-10 10:21:26', '2020-06-10 10:21:26', 3);
INSERT INTO `merchant` VALUES (1591776244703, 27, '18166335013', '心态爆炸了呀', '/upload/60de3234-5e2a-437b-9006-110017a35830.jpg', NULL, '1124717018@qq.com', '柏亮', '重庆市-重庆市-渝北区', '红枫路9号 首创十方界', '十方界', 106.536925, 29.604095, NULL, '审核通过', NULL, '顺丰专送', '基础运费¥5', '满108送梁山好汉', NULL, NULL, NULL, NULL, NULL, '重庆市', '/upload/56736522-9fa4-46eb-a164-d9008d93085b.jpg', '/upload/eb57af71-1e4d-478f-bfc0-02b577186153.jpg', 161, '18166335013', 1, '/upload/7dbf03a1-24e8-49aa-8f53-5755560b4089.jpg', '/upload/09020e5b-8c3f-4b69-847a-140cbabdc0e3.jpg', '/upload/2f411d3c-c271-4d6c-9d25-c7fec7b6481a.jpg', '/upload/a764fb82-b88f-43fb-8e28-11312ffae3fb.jpg', '/upload/6779a89f-43c9-482c-b51c-71b4cb76b0c2.jpg', '/upload/17c9bf67-fd09-4982-9e82-2a293c8fd7d2.jpg', '2020-06-10 16:04:05', '2020-06-10 16:04:05', 3);
INSERT INTO `merchant` VALUES (1591878771513, 42, '15310490231', '1', NULL, NULL, '2991808620@qq.com', '1', '北京市-北京市-崇文区', '石桥铺科园一路2号 大西洋国际大厦', NULL, 106.484756, 29.53199, NULL, '审核中', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '北京市', '/upload/f897a4a8-8ac9-444e-b8d7-061a5cb8e014.jpg', '/upload/caccfec1-2cd6-4163-933c-223b792e656a.jpg', 61, '124234', NULL, '/upload/aea4cf6f-765e-4250-a5a0-171f21bb9f42.jpg', '/upload/34f0ba90-4183-4aec-b073-f0624bdd3d74.jpg', '/upload/57589a88-1c9e-455c-82cd-4529853a2872.jpg', '/upload/d7f82263-997a-4945-bfa4-dfa8b6fc3521.jpg', '/upload/5a5fa6b8-675e-4d15-9f51-07faccb16adc.jpg', NULL, '2020-06-11 20:32:52', '2020-06-11 20:32:52', 3);
INSERT INTO `merchant` VALUES (1591878771518, 88, '16602140001', '好粥道', '/upload/merchant/f164d9ee-8f05-4d6a-b20c-4bb23b688d43.jpg', NULL, '', '哇哈哈', '重庆市-重庆市-渝中区', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)', NULL, 106.576582, 29.556282, NULL, '审核通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '重庆市', '/upload/merchant/23844df1-70e1-48f6-a586-e4b81181f7dd.jpg', '/upload/merchant/a8aac74e-9759-4395-8f51-362e79734a27.jpg', 135, '01011011', NULL, '/upload/merchant/1e28401f-abf8-4b40-8309-f829ff2697e8.jpg', '/upload/merchant/f8c38eda-2df4-4b5a-ac15-17a6a008fc16.jpg', '/upload/merchant/e1df733b-530c-4c03-a57b-004fc9dc9725.jpg', '/upload/merchant/eaa09aef-7ba7-428c-bf5f-463311f0937e.png', '/upload/merchant/624fb940-3c08-40ce-a617-5b4dcfcee14c.png', '/upload/merchant/315f039e-c6f6-43eb-81cf-ae483e618421.png', '2020-06-12 19:55:46', '2020-06-12 19:55:46', 3);
INSERT INTO `merchant` VALUES (1591878771520, 96, '16602140002', '甜点', '/upload/merchant/f164d9ee-8f05-4d6a-b20c-4bb23b688d42.jpg', NULL, '', '甜蜜蜜', '重庆市-重庆市-渝中区', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)', NULL, 106.576582, 29.556282, NULL, '审核通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '重庆市', '/upload/merchant/e1318ef8-2c03-40f6-bef1-c70fa72a2d56.jpg', '/upload/merchant/ea7c64b8-1a0b-49f0-b8e3-07c78563b499.jpg', 97, '01011013', NULL, '/upload/merchant/db1e5bc6-1f2a-4ce7-ae0e-868d71c183c0.jpg', '/upload/merchant/2ef98f12-a37a-41c6-805e-5b47b3894d89.jpg', '/upload/merchant/61a311ac-b502-4e68-b293-a507881e537f.jpg', '/upload/merchant/cef3cbda-2d87-4dc9-b497-e7dce7a6d715.png', '/upload/merchant/350dd710-e4f2-495f-9a10-c0672d1152a7.png', '/upload/merchant/2385226e-d6f7-40f7-ad14-59cce1c4c57c.png', '2020-06-12 20:04:10', '2020-06-12 20:04:10', 3);
INSERT INTO `merchant` VALUES (1591878771530, 90, '12312312312', '123', NULL, NULL, '123@123.com', '444', '北京市-北京市-西城区', '广莲路13号 京铁大酒店(北京西站南广场店)', NULL, 116.322407, 39.893693, NULL, '审核通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '北京市', '/upload/2b29b682-89e3-493a-b377-9dcd5216a0e6.jpeg', '/upload/8681bf26-5a69-41b7-b36a-d1b310f84481.jpeg', 2, '123', NULL, '/upload/fbb76a69-eee4-43ab-b87a-51b43a945478.jpeg', '/upload/7624fcb8-a7c2-442c-8103-157b8db85d7d.jpeg', '/upload/ea16d130-f6e9-4aba-8006-a12071cad413.jpeg', '/upload/88a6aa2b-8b84-4cb8-a065-3a9729869d43.jpeg', '/upload/134d9aaf-bd7d-4807-a145-8edde30e0cda.jpeg', '/upload/dfa3b4fb-8844-4d18-8da7-fd008ca675a7.jpeg', '2020-06-13 11:08:42', '2020-06-13 11:08:42', 3);
INSERT INTO `merchant` VALUES (1592210502025, 100, '13101261802', '韩式炸鸡店', NULL, NULL, '', '邓际新', '重庆市-重庆市-九龙坡区', '石桥铺科园一路2号 大西洋国际大厦', NULL, 106.484756, 29.53199, NULL, '审核通过', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '重庆市', '/upload/06a954ec-a81b-45d9-8a53-0b4d36e36c29.jpg', '/upload/95f2319d-a509-4f03-837a-8ee7255c5b7f.jpg', 17, '', NULL, '/upload/f3ec5b32-e83a-40ae-973b-5c71031c73dc.jpg', '/upload/41ca90cf-8751-4d1e-a89c-749f5da41628.jpg', '/upload/f404e5e1-15f4-4738-a0d0-4da9607a98db.jpg', '/upload/102d040b-afb9-4177-8e72-7cfb7e6fcc52.jpg', '/upload/d40f6883-d1cc-4716-98e5-3ccffdde10b4.jpg', '/upload/ea67f0c8-3eab-496e-b19d-01f8f63419c2.jpg', '2020-06-15 16:41:42', '2020-06-15 16:41:42', 3);

-- ----------------------------
-- Table structure for order_item
-- ----------------------------
DROP TABLE IF EXISTS `order_item`;
CREATE TABLE `order_item`  (
  `order_id` bigint(0) NOT NULL COMMENT '订单id',
  `goods_img` varchar(2555) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '下单时候的商品图片地址',
  `goods_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '下单时候的商品数量',
  `origin_goods_id` bigint(0) NULL DEFAULT NULL COMMENT '原来的商品id',
  `goods_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '下单时候的商品名称',
  `goods_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '下单时候的价格',
  `merchant_id` bigint(0) NULL DEFAULT NULL COMMENT '商户id:冗余字段：是专门拿来给程序查询用的',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '用户id'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_item
-- ----------------------------
INSERT INTO `order_item` VALUES (1, '/upload/goods/1cc63baf-b6ac-4caa-ba6e-36a9655bbc12.png', '1', 24, '呵呵呵', 12.00, 1591578818999, '2020-06-12 11:27:58', 1);
INSERT INTO `order_item` VALUES (1, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '6', 26, '11', 12.00, 1591578818999, '2020-06-12 11:27:58', 1);
INSERT INTO `order_item` VALUES (1, '/upload/goods/edc88484-35d3-4318-8c4a-57b7baf6d759.jpg', '1', 30, '卤肉饭', 12.00, 1591578818999, '2020-06-12 11:27:58', 1);
INSERT INTO `order_item` VALUES (1, '/upload/goods/a804be9a-9a90-4c86-8dc0-b0b81cab2597.jpg', '7', 61, '9527', 9527.00, 1591578818999, '2020-06-12 11:27:58', 1);
INSERT INTO `order_item` VALUES (2, '/upload/goods/1cc63baf-b6ac-4caa-ba6e-36a9655bbc12.png', '1', 24, '呵呵呵', 12.00, 1591578818999, '2020-06-12 11:28:19', 1);
INSERT INTO `order_item` VALUES (2, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '6', 26, '11', 12.00, 1591578818999, '2020-06-12 11:28:19', 1);
INSERT INTO `order_item` VALUES (2, '/upload/goods/edc88484-35d3-4318-8c4a-57b7baf6d759.jpg', '1', 30, '卤肉饭', 12.00, 1591578818999, '2020-06-12 11:28:19', 1);
INSERT INTO `order_item` VALUES (2, '/upload/goods/a804be9a-9a90-4c86-8dc0-b0b81cab2597.jpg', '7', 61, '9527', 9527.00, 1591578818999, '2020-06-12 11:28:19', 1);
INSERT INTO `order_item` VALUES (3, '/upload/goods/1cc63baf-b6ac-4caa-ba6e-36a9655bbc12.png', '1', 24, '呵呵呵', 12.00, 1591578818999, '2020-06-12 11:33:34', 1);
INSERT INTO `order_item` VALUES (3, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '6', 26, '11', 12.00, 1591578818999, '2020-06-12 11:33:34', 1);
INSERT INTO `order_item` VALUES (3, '/upload/goods/edc88484-35d3-4318-8c4a-57b7baf6d759.jpg', '1', 30, '卤肉饭', 12.00, 1591578818999, '2020-06-12 11:33:34', 1);
INSERT INTO `order_item` VALUES (3, '/upload/goods/a804be9a-9a90-4c86-8dc0-b0b81cab2597.jpg', '7', 61, '9527', 9527.00, 1591578818999, '2020-06-12 11:33:34', 1);
INSERT INTO `order_item` VALUES (4, '/upload/goods/1cc63baf-b6ac-4caa-ba6e-36a9655bbc12.png', '1', 24, '呵呵呵', 12.00, 1591578818999, '2020-06-12 11:52:41', 1);
INSERT INTO `order_item` VALUES (4, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '6', 26, '11', 12.00, 1591578818999, '2020-06-12 11:52:41', 1);
INSERT INTO `order_item` VALUES (4, '/upload/goods/edc88484-35d3-4318-8c4a-57b7baf6d759.jpg', '1', 30, '卤肉饭', 12.00, 1591578818999, '2020-06-12 11:52:41', 1);
INSERT INTO `order_item` VALUES (4, '/upload/goods/a804be9a-9a90-4c86-8dc0-b0b81cab2597.jpg', '7', 61, '9527', 9527.00, 1591578818999, '2020-06-12 11:52:41', 1);
INSERT INTO `order_item` VALUES (5, '/upload/goods/1cc63baf-b6ac-4caa-ba6e-36a9655bbc12.png', '1', 24, '呵呵呵', 12.00, 1591578818999, '2020-06-12 12:02:24', 1);
INSERT INTO `order_item` VALUES (5, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '6', 26, '11', 12.00, 1591578818999, '2020-06-12 12:02:24', 1);
INSERT INTO `order_item` VALUES (5, '/upload/goods/edc88484-35d3-4318-8c4a-57b7baf6d759.jpg', '1', 30, '卤肉饭', 12.00, 1591578818999, '2020-06-12 12:02:24', 1);
INSERT INTO `order_item` VALUES (5, '/upload/goods/a804be9a-9a90-4c86-8dc0-b0b81cab2597.jpg', '2', 61, '9527', 9527.00, 1591578818999, '2020-06-12 12:02:24', 1);
INSERT INTO `order_item` VALUES (6, '/upload/goods/1cc63baf-b6ac-4caa-ba6e-36a9655bbc12.png', '1', 24, '呵呵呵', 12.00, 1591578818999, '2020-06-12 12:03:01', 1);
INSERT INTO `order_item` VALUES (6, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '6', 26, '11', 12.00, 1591578818999, '2020-06-12 12:03:01', 1);
INSERT INTO `order_item` VALUES (6, '/upload/goods/edc88484-35d3-4318-8c4a-57b7baf6d759.jpg', '1', 30, '卤肉饭', 12.00, 1591578818999, '2020-06-12 12:03:01', 1);
INSERT INTO `order_item` VALUES (6, '/upload/goods/a804be9a-9a90-4c86-8dc0-b0b81cab2597.jpg', '2', 61, '9527', 9527.00, 1591578818999, '2020-06-12 12:03:01', 1);
INSERT INTO `order_item` VALUES (7, NULL, '20', 16, '秘制小汉堡', 1.00, 1591319157884, '2020-06-12 12:16:02', 1);
INSERT INTO `order_item` VALUES (7, '/upload/goods/e2100ec1-1e2e-45c6-a26a-bd1c56e6cad3.jpg', '20', 22, '鸭子', 21.00, 1591578818999, '2020-06-12 12:16:02', 1);
INSERT INTO `order_item` VALUES (7, '/upload/goods/56033393-59c8-4bd9-b2bf-9cd4ac223bdb.jpg', '33', 25, '1', 12.00, 1591578818999, '2020-06-12 12:16:02', 1);
INSERT INTO `order_item` VALUES (7, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '9', 27, '121', 12.00, 1591578818999, '2020-06-12 12:16:02', 1);
INSERT INTO `order_item` VALUES (7, '/upload/goods/cd155e85-0ee4-41d8-b493-b7f59c430c62.jpg', '4', 29, '21', 21.00, 1591578818999, '2020-06-12 12:16:02', 1);
INSERT INTO `order_item` VALUES (8, NULL, '1', 16, '秘制小汉堡', 1.00, 1591319157884, '2020-06-12 12:28:08', 1);
INSERT INTO `order_item` VALUES (8, '/upload/goods/e2100ec1-1e2e-45c6-a26a-bd1c56e6cad3.jpg', '4', 22, '鸭子', 21.00, 1591578818999, '2020-06-12 12:28:08', 1);
INSERT INTO `order_item` VALUES (8, '/upload/goods/56033393-59c8-4bd9-b2bf-9cd4ac223bdb.jpg', '3', 25, '1', 12.00, 1591578818999, '2020-06-12 12:28:08', 1);
INSERT INTO `order_item` VALUES (9, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '2', 26, '11', 12.00, 1591578818999, '2020-06-12 14:19:55', 1);
INSERT INTO `order_item` VALUES (9, '/upload/goods/1cc63baf-b6ac-4caa-ba6e-36a9655bbc12.png', '3', 24, '呵呵呵', 12.00, 1591578818999, '2020-06-12 14:19:55', 1);
INSERT INTO `order_item` VALUES (9, '/upload/goods/edc88484-35d3-4318-8c4a-57b7baf6d759.jpg', '2', 30, '卤肉饭', 12.00, 1591578818999, '2020-06-12 14:19:55', 1);
INSERT INTO `order_item` VALUES (10, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '2', 26, '11', 12.00, 1591578818999, '2020-06-12 15:10:00', 1);
INSERT INTO `order_item` VALUES (10, '/upload/goods/1cc63baf-b6ac-4caa-ba6e-36a9655bbc12.png', '3', 24, '呵呵呵', 12.00, 1591578818999, '2020-06-12 15:10:00', 1);
INSERT INTO `order_item` VALUES (10, '/upload/goods/edc88484-35d3-4318-8c4a-57b7baf6d759.jpg', '2', 30, '卤肉饭', 12.00, 1591578818999, '2020-06-12 15:10:00', 1);
INSERT INTO `order_item` VALUES (11, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '2', 26, '11', 12.00, 1591578818999, '2020-06-12 15:15:38', 1);
INSERT INTO `order_item` VALUES (11, '/upload/goods/1cc63baf-b6ac-4caa-ba6e-36a9655bbc12.png', '3', 24, '呵呵呵', 12.00, 1591578818999, '2020-06-12 15:15:38', 1);
INSERT INTO `order_item` VALUES (11, '/upload/goods/edc88484-35d3-4318-8c4a-57b7baf6d759.jpg', '2', 30, '卤肉饭', 12.00, 1591578818999, '2020-06-12 15:15:38', 1);
INSERT INTO `order_item` VALUES (12, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '1', 26, '11', 12.00, 1591578818999, '2020-06-12 16:01:02', 1);
INSERT INTO `order_item` VALUES (13, '/upload/goods/1cc63baf-b6ac-4caa-ba6e-36a9655bbc12.png', '3', 24, '呵呵呵', 12.00, 1591578818999, '2020-06-12 16:02:54', 1);
INSERT INTO `order_item` VALUES (13, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '5', 26, '11', 12.00, 1591578818999, '2020-06-12 16:02:54', 1);
INSERT INTO `order_item` VALUES (13, '/upload/goods/edc88484-35d3-4318-8c4a-57b7baf6d759.jpg', '2', 30, '卤肉饭', 12.00, 1591578818999, '2020-06-12 16:02:54', 1);
INSERT INTO `order_item` VALUES (14, '/upload/goods/1cc63baf-b6ac-4caa-ba6e-36a9655bbc12.png', '3', 24, '呵呵呵', 12.00, 1591578818999, '2020-06-12 16:07:27', 1);
INSERT INTO `order_item` VALUES (14, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '5', 26, '11', 12.00, 1591578818999, '2020-06-12 16:07:27', 1);
INSERT INTO `order_item` VALUES (14, '/upload/goods/edc88484-35d3-4318-8c4a-57b7baf6d759.jpg', '2', 30, '卤肉饭', 12.00, 1591578818999, '2020-06-12 16:07:27', 1);
INSERT INTO `order_item` VALUES (15, '/upload/goods/1cc63baf-b6ac-4caa-ba6e-36a9655bbc12.png', '3', 24, '呵呵呵', 12.00, 1591578818999, '2020-06-12 16:10:53', 1);
INSERT INTO `order_item` VALUES (15, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '5', 26, '11', 12.00, 1591578818999, '2020-06-12 16:10:53', 1);
INSERT INTO `order_item` VALUES (15, '/upload/goods/edc88484-35d3-4318-8c4a-57b7baf6d759.jpg', '2', 30, '卤肉饭', 12.00, 1591578818999, '2020-06-12 16:10:53', 1);
INSERT INTO `order_item` VALUES (16, '/upload/goods/53e3f153-a881-4a30-b81d-c4c500e41db9.jpg', '1', 34, '12', 12.00, 1591578818999, '2020-06-12 16:14:48', 24);
INSERT INTO `order_item` VALUES (17, NULL, '2', 16, '秘制小汉堡', 1.00, 1591319157884, '2020-06-12 16:56:21', 10);
INSERT INTO `order_item` VALUES (17, '/upload/goods/e2100ec1-1e2e-45c6-a26a-bd1c56e6cad3.jpg', '2', 22, '鸭子', 21.00, 1591578818999, '2020-06-12 16:56:21', 10);
INSERT INTO `order_item` VALUES (17, '/upload/goods/56033393-59c8-4bd9-b2bf-9cd4ac223bdb.jpg', '2', 25, '1', 12.00, 1591578818999, '2020-06-12 16:56:21', 10);
INSERT INTO `order_item` VALUES (17, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '2', 27, '121', 12.00, 1591578818999, '2020-06-12 16:56:21', 10);
INSERT INTO `order_item` VALUES (17, '/upload/goods/cd155e85-0ee4-41d8-b493-b7f59c430c62.jpg', '2', 29, '21', 21.00, 1591578818999, '2020-06-12 16:56:21', 10);
INSERT INTO `order_item` VALUES (18, '/upload/goods/3f93179a-1429-48ec-bd88-c433561f3f2a.jpg', '1', 47, '焦糖奶茶', 10.00, 1591268241883, '2020-06-12 17:30:00', 5);
INSERT INTO `order_item` VALUES (19, '/upload/goods/3f93179a-1429-48ec-bd88-c433561f3f2a.jpg', '1', 47, '焦糖奶茶', 10.00, 1591268241883, '2020-06-12 17:36:12', 5);
INSERT INTO `order_item` VALUES (20, '/upload/goods/3f93179a-1429-48ec-bd88-c433561f3f2a.jpg', '1', 47, '焦糖奶茶', 10.00, 1591268241883, '2020-06-12 17:36:53', 5);
INSERT INTO `order_item` VALUES (27, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-12 18:20:33', 6);
INSERT INTO `order_item` VALUES (28, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-12 18:21:41', 6);
INSERT INTO `order_item` VALUES (29, '/upload/58ac7b6a-7216-4613-90d2-7b889381d6c2.jpg', '1', 73, '泰式按摩', 251.00, 1591264971747, '2020-06-12 18:23:41', 6);
INSERT INTO `order_item` VALUES (33, '/upload/58ac7b6a-7216-4613-90d2-7b889381d6c2.jpg', '1', 73, '泰式按摩', 251.00, 1591264971747, '2020-06-12 18:30:57', 6);
INSERT INTO `order_item` VALUES (35, '/upload/cc02b537-7b27-4ef9-a6cb-01767bce988c.jpg', '1', 72, '洗脚', 250.00, 1591264971747, '2020-06-12 18:38:08', 6);
INSERT INTO `order_item` VALUES (41, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '1', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-12 18:55:49', 93);
INSERT INTO `order_item` VALUES (44, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-12 19:03:07', 81);
INSERT INTO `order_item` VALUES (45, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '1', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-12 19:03:12', 27);
INSERT INTO `order_item` VALUES (46, '/upload/goods/e2100ec1-1e2e-45c6-a26a-bd1c56e6cad3.jpg', '1', 22, '鸭子', 21.00, 1591578818999, '2020-06-12 19:03:30', 10);
INSERT INTO `order_item` VALUES (46, '/upload/goods/56033393-59c8-4bd9-b2bf-9cd4ac223bdb.jpg', '1', 25, '1', 12.00, 1591578818999, '2020-06-12 19:03:30', 10);
INSERT INTO `order_item` VALUES (47, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '1', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-12 19:08:56', 27);
INSERT INTO `order_item` VALUES (48, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '2', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-12 19:16:13', 27);
INSERT INTO `order_item` VALUES (49, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '2', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-12 19:21:19', 27);
INSERT INTO `order_item` VALUES (50, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '1', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-12 19:24:08', 27);
INSERT INTO `order_item` VALUES (51, '/upload/goods/a804be9a-9a90-4c86-8dc0-b0b81cab2597.jpg', '1', 61, '9527', 9527.00, 1591578818999, '2020-06-12 19:26:29', 27);
INSERT INTO `order_item` VALUES (52, '/upload/d149f33c-db3d-4876-8b6e-f11c6d71e63c.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-12 19:27:26', 62);
INSERT INTO `order_item` VALUES (53, '/upload/58ac7b6a-7216-4613-90d2-7b889381d6c2.jpg', '1', 73, '泰式按摩', 251.00, 1591264971747, '2020-06-12 19:29:56', 27);
INSERT INTO `order_item` VALUES (54, '/upload/goods/3f868ffb-4d92-4722-b9f0-8f6d0a1dfb8f.jpg', '1', 84, '小香蕉', 10.00, 1591348173752, '2020-06-12 19:37:32', 1);
INSERT INTO `order_item` VALUES (55, '/upload/cc02b537-7b27-4ef9-a6cb-01767bce988c.jpg', '1', 72, '洗脚', 250.00, 1591264971747, '2020-06-12 19:41:57', 6);
INSERT INTO `order_item` VALUES (56, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '5', 15, '回忆童年', 5.90, 1591269151344, '2020-06-12 19:42:52', 10);
INSERT INTO `order_item` VALUES (56, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-12 19:42:52', 10);
INSERT INTO `order_item` VALUES (57, '/upload/58ac7b6a-7216-4613-90d2-7b889381d6c2.jpg', '1', 73, '泰式按摩', 251.00, 1591264971747, '2020-06-12 19:43:18', 6);
INSERT INTO `order_item` VALUES (58, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '1', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-12 19:48:57', 6);
INSERT INTO `order_item` VALUES (59, '/upload/cc02b537-7b27-4ef9-a6cb-01767bce988c.jpg', '1', 72, '洗脚', 250.00, 1591264971747, '2020-06-12 19:51:20', 27);
INSERT INTO `order_item` VALUES (60, '/upload/goods/e2100ec1-1e2e-45c6-a26a-bd1c56e6cad3.jpg', '3', 22, '鸭子', 21.00, 1591578818999, '2020-06-12 19:53:43', 10);
INSERT INTO `order_item` VALUES (60, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '2', 27, '121', 12.00, 1591578818999, '2020-06-12 19:53:43', 10);
INSERT INTO `order_item` VALUES (61, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '10', 15, '回忆童年', 5.90, 1591269151344, '2020-06-12 19:57:41', 10);
INSERT INTO `order_item` VALUES (61, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-12 19:57:41', 10);
INSERT INTO `order_item` VALUES (62, '/upload/cc02b537-7b27-4ef9-a6cb-01767bce988c.jpg', '1', 72, '洗脚', 250.00, 1591264971747, '2020-06-12 20:02:30', 27);
INSERT INTO `order_item` VALUES (63, '/upload/cc02b537-7b27-4ef9-a6cb-01767bce988c.jpg', '1', 72, '洗脚', 250.00, 1591264971747, '2020-06-12 20:03:33', 27);
INSERT INTO `order_item` VALUES (64, '/upload/58ac7b6a-7216-4613-90d2-7b889381d6c2.jpg', '1', 73, '泰式按摩', 251.00, 1591264971747, '2020-06-12 20:03:45', 9);
INSERT INTO `order_item` VALUES (64, '/upload/cc02b537-7b27-4ef9-a6cb-01767bce988c.jpg', '1', 72, '洗脚', 250.00, 1591264971747, '2020-06-12 20:03:45', 9);
INSERT INTO `order_item` VALUES (65, '/upload/cc02b537-7b27-4ef9-a6cb-01767bce988c.jpg', '1', 72, '洗脚', 250.00, 1591264971747, '2020-06-12 20:07:57', 9);
INSERT INTO `order_item` VALUES (66, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '1', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-12 20:14:29', 6);
INSERT INTO `order_item` VALUES (67, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-12 20:16:14', 6);
INSERT INTO `order_item` VALUES (68, '/upload/goods/c7d5720f-c9c6-4239-8fdc-9bb8a15789fe.jpg', '1', 88, '没烦恼药丸', 10.00, 1591878771513, '2020-06-12 20:25:59', 1);
INSERT INTO `order_item` VALUES (69, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-12 20:26:47', 6);
INSERT INTO `order_item` VALUES (70, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '1', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-12 20:29:49', 27);
INSERT INTO `order_item` VALUES (71, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '1', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-12 20:35:23', 27);
INSERT INTO `order_item` VALUES (72, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '1', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-12 20:38:35', 6);
INSERT INTO `order_item` VALUES (73, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-12 20:48:11', 6);
INSERT INTO `order_item` VALUES (74, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '1', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-12 20:54:05', 27);
INSERT INTO `order_item` VALUES (75, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-12 20:56:05', 6);
INSERT INTO `order_item` VALUES (76, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-12 20:59:37', 6);
INSERT INTO `order_item` VALUES (77, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '1', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-12 21:02:05', 27);
INSERT INTO `order_item` VALUES (78, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-12 21:09:15', 6);
INSERT INTO `order_item` VALUES (79, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-12 21:11:23', 6);
INSERT INTO `order_item` VALUES (80, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '10', 15, '回忆童年', 5.90, 1591269151344, '2020-06-12 21:14:55', 10);
INSERT INTO `order_item` VALUES (80, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-12 21:14:55', 10);
INSERT INTO `order_item` VALUES (81, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '1', 15, '回忆童年', 5.90, 1591269151344, '2020-06-12 21:21:56', 10);
INSERT INTO `order_item` VALUES (82, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '1', 15, '回忆童年', 5.90, 1591269151344, '2020-06-12 21:24:35', 10);
INSERT INTO `order_item` VALUES (83, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '1', 15, '回忆童年', 5.90, 1591269151344, '2020-06-12 21:26:35', 10);
INSERT INTO `order_item` VALUES (84, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '1', 15, '回忆童年', 5.90, 1591269151344, '2020-06-12 21:36:30', 10);
INSERT INTO `order_item` VALUES (84, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-12 21:36:30', 10);
INSERT INTO `order_item` VALUES (85, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-12 21:47:01', 6);
INSERT INTO `order_item` VALUES (86, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '1', 15, '回忆童年', 5.90, 1591269151344, '2020-06-12 21:48:54', 10);
INSERT INTO `order_item` VALUES (86, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-12 21:48:54', 10);
INSERT INTO `order_item` VALUES (87, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '1', 15, '回忆童年', 5.90, 1591269151344, '2020-06-12 21:48:54', 10);
INSERT INTO `order_item` VALUES (87, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-12 21:48:54', 10);
INSERT INTO `order_item` VALUES (88, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '1', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-12 22:18:16', 27);
INSERT INTO `order_item` VALUES (89, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '1', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-12 22:22:50', 27);
INSERT INTO `order_item` VALUES (90, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '1', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-12 22:43:32', 99);
INSERT INTO `order_item` VALUES (91, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '10', 15, '回忆童年', 5.90, 1591269151344, '2020-06-13 08:45:55', 10);
INSERT INTO `order_item` VALUES (91, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-13 08:45:55', 10);
INSERT INTO `order_item` VALUES (92, '/upload/cc02b537-7b27-4ef9-a6cb-01767bce988c.jpg', '3', 72, '洗脚', 250.00, 1591264971747, '2020-06-13 08:54:13', 12);
INSERT INTO `order_item` VALUES (92, '/upload/58ac7b6a-7216-4613-90d2-7b889381d6c2.jpg', '3', 73, '泰式按摩', 251.00, 1591264971747, '2020-06-13 08:54:13', 12);
INSERT INTO `order_item` VALUES (93, '/upload/763041a5-b479-4db8-95c5-f8bc66a6bd9e.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-13 09:11:49', 1);
INSERT INTO `order_item` VALUES (93, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 09:11:49', 1);
INSERT INTO `order_item` VALUES (94, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '10', 15, '回忆童年', 5.90, 1591269151344, '2020-06-13 09:14:16', 10);
INSERT INTO `order_item` VALUES (94, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-13 09:14:16', 10);
INSERT INTO `order_item` VALUES (95, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '10', 15, '回忆童年', 5.90, 1591269151344, '2020-06-13 09:22:23', 10);
INSERT INTO `order_item` VALUES (95, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-13 09:22:23', 10);
INSERT INTO `order_item` VALUES (96, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 09:50:41', 6);
INSERT INTO `order_item` VALUES (97, '/upload/58ac7b6a-7216-4613-90d2-7b889381d6c2.jpg', '1', 73, '泰式按摩', 251.00, 1591264971747, '2020-06-13 09:52:45', 6);
INSERT INTO `order_item` VALUES (98, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '1', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-13 11:34:06', 7);
INSERT INTO `order_item` VALUES (99, '/upload/goods/3f93179a-1429-48ec-bd88-c433561f3f2a.jpg', '2', 47, '焦糖奶茶', 10.00, 1591268241883, '2020-06-13 14:14:14', 1);
INSERT INTO `order_item` VALUES (100, '/upload/abddc119-994d-40e0-9db8-ba290b8a74a3.jpg', '1', 74, '阿威十八式', 155.00, 1591264971747, '2020-06-13 14:21:57', 6);
INSERT INTO `order_item` VALUES (102, '/upload/abddc119-994d-40e0-9db8-ba290b8a74a3.jpg', '1', 74, '阿威十八式', 155.00, 1591264971747, '2020-06-13 14:23:18', 6);
INSERT INTO `order_item` VALUES (103, '/upload/7b42603e-a02a-4886-b068-f482b90c44a9.jpg', '1', 76, '哈根达斯', 33.00, 1591264971747, '2020-06-13 14:24:04', 6);
INSERT INTO `order_item` VALUES (106, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '2', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 14:28:03', 9);
INSERT INTO `order_item` VALUES (106, '/upload/763041a5-b479-4db8-95c5-f8bc66a6bd9e.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-13 14:28:03', 9);
INSERT INTO `order_item` VALUES (106, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 14:28:03', 9);
INSERT INTO `order_item` VALUES (106, '/upload/f24f4e86-b83d-497c-afc9-bcfff2179c34.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-13 14:28:03', 9);
INSERT INTO `order_item` VALUES (107, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '2', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 14:29:49', 9);
INSERT INTO `order_item` VALUES (107, '/upload/763041a5-b479-4db8-95c5-f8bc66a6bd9e.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-13 14:29:49', 9);
INSERT INTO `order_item` VALUES (107, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 14:29:49', 9);
INSERT INTO `order_item` VALUES (107, '/upload/f24f4e86-b83d-497c-afc9-bcfff2179c34.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-13 14:29:49', 9);
INSERT INTO `order_item` VALUES (110, '/upload/763041a5-b479-4db8-95c5-f8bc66a6bd9e.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-13 14:44:25', 1);
INSERT INTO `order_item` VALUES (110, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 14:44:25', 1);
INSERT INTO `order_item` VALUES (109, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '2', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 14:43:32', 9);
INSERT INTO `order_item` VALUES (109, '/upload/763041a5-b479-4db8-95c5-f8bc66a6bd9e.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-13 14:43:32', 9);
INSERT INTO `order_item` VALUES (109, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 14:43:32', 9);
INSERT INTO `order_item` VALUES (109, '/upload/f24f4e86-b83d-497c-afc9-bcfff2179c34.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-13 14:43:32', 9);
INSERT INTO `order_item` VALUES (111, '/upload/843e10f0-dbd7-4d54-af14-1947bbecd106.jpg', '1', 18, '和路雪', 2.30, 1591264971747, '2020-06-13 14:52:03', 6);
INSERT INTO `order_item` VALUES (112, '/upload/7b42603e-a02a-4886-b068-f482b90c44a9.jpg', '1', 76, '哈根达斯', 33.00, 1591264971747, '2020-06-13 14:54:02', 6);
INSERT INTO `order_item` VALUES (113, '/upload/843e10f0-dbd7-4d54-af14-1947bbecd106.jpg', '1', 18, '和路雪', 2.30, 1591264971747, '2020-06-13 14:55:24', 6);
INSERT INTO `order_item` VALUES (114, '/upload/843e10f0-dbd7-4d54-af14-1947bbecd106.jpg', '1', 18, '和路雪', 2.30, 1591264971747, '2020-06-13 14:56:06', 6);
INSERT INTO `order_item` VALUES (115, '/upload/843e10f0-dbd7-4d54-af14-1947bbecd106.jpg', '1', 18, '和路雪', 2.30, 1591264971747, '2020-06-13 14:56:45', 6);
INSERT INTO `order_item` VALUES (116, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '2', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 14:57:08', 9);
INSERT INTO `order_item` VALUES (116, '/upload/763041a5-b479-4db8-95c5-f8bc66a6bd9e.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-13 14:57:08', 9);
INSERT INTO `order_item` VALUES (116, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 14:57:08', 9);
INSERT INTO `order_item` VALUES (116, '/upload/f24f4e86-b83d-497c-afc9-bcfff2179c34.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-13 14:57:08', 9);
INSERT INTO `order_item` VALUES (118, '/upload/843e10f0-dbd7-4d54-af14-1947bbecd106.jpg', '1', 18, '和路雪', 2.30, 1591264971747, '2020-06-13 15:02:45', 6);
INSERT INTO `order_item` VALUES (117, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '2', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 15:02:06', 9);
INSERT INTO `order_item` VALUES (117, '/upload/763041a5-b479-4db8-95c5-f8bc66a6bd9e.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-13 15:02:06', 9);
INSERT INTO `order_item` VALUES (117, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 15:02:06', 9);
INSERT INTO `order_item` VALUES (117, '/upload/f24f4e86-b83d-497c-afc9-bcfff2179c34.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-13 15:02:06', 9);
INSERT INTO `order_item` VALUES (119, '/upload/843e10f0-dbd7-4d54-af14-1947bbecd106.jpg', '1', 18, '和路雪', 2.30, 1591264971747, '2020-06-13 15:03:12', 6);
INSERT INTO `order_item` VALUES (120, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '2', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 15:05:44', 9);
INSERT INTO `order_item` VALUES (120, '/upload/763041a5-b479-4db8-95c5-f8bc66a6bd9e.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-13 15:05:44', 9);
INSERT INTO `order_item` VALUES (120, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 15:05:44', 9);
INSERT INTO `order_item` VALUES (120, '/upload/f24f4e86-b83d-497c-afc9-bcfff2179c34.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-13 15:05:44', 9);
INSERT INTO `order_item` VALUES (121, '/upload/7b42603e-a02a-4886-b068-f482b90c44a9.jpg', '1', 76, '哈根达斯', 33.00, 1591264971747, '2020-06-13 15:07:50', 6);
INSERT INTO `order_item` VALUES (122, '/upload/7b42603e-a02a-4886-b068-f482b90c44a9.jpg', '1', 76, '哈根达斯', 33.00, 1591264971747, '2020-06-13 15:18:05', 6);
INSERT INTO `order_item` VALUES (123, '/upload/843e10f0-dbd7-4d54-af14-1947bbecd106.jpg', '2', 18, '和路雪', 2.30, 1591264971747, '2020-06-13 15:21:33', 6);
INSERT INTO `order_item` VALUES (124, '/upload/843e10f0-dbd7-4d54-af14-1947bbecd106.jpg', '2', 18, '和路雪', 2.30, 1591264971747, '2020-06-13 15:22:46', 6);
INSERT INTO `order_item` VALUES (124, '/upload/7b42603e-a02a-4886-b068-f482b90c44a9.jpg', '1', 76, '哈根达斯', 33.00, 1591264971747, '2020-06-13 15:22:46', 6);
INSERT INTO `order_item` VALUES (125, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '3', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-13 15:28:09', 5);
INSERT INTO `order_item` VALUES (126, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '3', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-13 15:28:26', 5);
INSERT INTO `order_item` VALUES (127, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '3', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-13 15:28:37', 5);
INSERT INTO `order_item` VALUES (128, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '2', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 15:33:12', 9);
INSERT INTO `order_item` VALUES (128, '/upload/763041a5-b479-4db8-95c5-f8bc66a6bd9e.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-13 15:33:12', 9);
INSERT INTO `order_item` VALUES (128, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 15:33:12', 9);
INSERT INTO `order_item` VALUES (128, '/upload/f24f4e86-b83d-497c-afc9-bcfff2179c34.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-13 15:33:12', 9);
INSERT INTO `order_item` VALUES (129, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '2', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 15:35:04', 9);
INSERT INTO `order_item` VALUES (129, '/upload/763041a5-b479-4db8-95c5-f8bc66a6bd9e.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-13 15:35:04', 9);
INSERT INTO `order_item` VALUES (129, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 15:35:04', 9);
INSERT INTO `order_item` VALUES (129, '/upload/f24f4e86-b83d-497c-afc9-bcfff2179c34.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-13 15:35:04', 9);
INSERT INTO `order_item` VALUES (130, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 15:37:59', 6);
INSERT INTO `order_item` VALUES (131, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '2', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 15:37:50', 9);
INSERT INTO `order_item` VALUES (131, '/upload/763041a5-b479-4db8-95c5-f8bc66a6bd9e.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-13 15:37:50', 9);
INSERT INTO `order_item` VALUES (131, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 15:37:50', 9);
INSERT INTO `order_item` VALUES (131, '/upload/f24f4e86-b83d-497c-afc9-bcfff2179c34.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-13 15:37:50', 9);
INSERT INTO `order_item` VALUES (132, '/upload/f24f4e86-b83d-497c-afc9-bcfff2179c34.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-13 15:50:11', 6);
INSERT INTO `order_item` VALUES (133, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 15:52:39', 6);
INSERT INTO `order_item` VALUES (135, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '2', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 16:08:38', 9);
INSERT INTO `order_item` VALUES (135, '/upload/763041a5-b479-4db8-95c5-f8bc66a6bd9e.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-13 16:08:38', 9);
INSERT INTO `order_item` VALUES (135, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 16:08:38', 9);
INSERT INTO `order_item` VALUES (135, '/upload/f24f4e86-b83d-497c-afc9-bcfff2179c34.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-13 16:08:38', 9);
INSERT INTO `order_item` VALUES (136, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '1', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-13 16:10:29', 9);
INSERT INTO `order_item` VALUES (137, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '2', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 16:11:35', 9);
INSERT INTO `order_item` VALUES (137, '/upload/763041a5-b479-4db8-95c5-f8bc66a6bd9e.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-13 16:11:35', 9);
INSERT INTO `order_item` VALUES (137, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 16:11:35', 9);
INSERT INTO `order_item` VALUES (137, '/upload/f24f4e86-b83d-497c-afc9-bcfff2179c34.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-13 16:11:35', 9);
INSERT INTO `order_item` VALUES (138, '/upload/d149f33c-db3d-4876-8b6e-f11c6d71e63c.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-13 16:12:38', 6);
INSERT INTO `order_item` VALUES (139, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 16:17:59', 9);
INSERT INTO `order_item` VALUES (140, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 16:23:28', 6);
INSERT INTO `order_item` VALUES (141, '/upload/f24f4e86-b83d-497c-afc9-bcfff2179c34.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-13 16:26:55', 6);
INSERT INTO `order_item` VALUES (145, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '3', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-13 16:32:58', 5);
INSERT INTO `order_item` VALUES (146, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '3', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-13 16:34:46', 5);
INSERT INTO `order_item` VALUES (147, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '3', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-13 16:35:55', 5);
INSERT INTO `order_item` VALUES (148, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '3', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-13 16:36:48', 5);
INSERT INTO `order_item` VALUES (149, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 16:50:38', 6);
INSERT INTO `order_item` VALUES (150, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 16:54:06', 9);
INSERT INTO `order_item` VALUES (151, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 16:58:52', 6);
INSERT INTO `order_item` VALUES (152, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 16:59:24', 9);
INSERT INTO `order_item` VALUES (152, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 16:59:24', 9);
INSERT INTO `order_item` VALUES (153, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '2', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 17:01:00', 9);
INSERT INTO `order_item` VALUES (153, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 17:01:00', 9);
INSERT INTO `order_item` VALUES (154, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '2', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 17:02:21', 9);
INSERT INTO `order_item` VALUES (154, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 17:02:21', 9);
INSERT INTO `order_item` VALUES (155, '/upload/goods/3f868ffb-4d92-4722-b9f0-8f6d0a1dfb8f.jpg', '1', 84, '小香蕉', 10.00, 1591348173752, '2020-06-13 17:12:41', 9);
INSERT INTO `order_item` VALUES (156, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-13 17:15:34', 10);
INSERT INTO `order_item` VALUES (156, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-13 17:15:34', 10);
INSERT INTO `order_item` VALUES (157, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 17:18:32', 9);
INSERT INTO `order_item` VALUES (157, '/upload/763041a5-b479-4db8-95c5-f8bc66a6bd9e.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-13 17:18:32', 9);
INSERT INTO `order_item` VALUES (158, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 17:20:51', 9);
INSERT INTO `order_item` VALUES (158, '/upload/763041a5-b479-4db8-95c5-f8bc66a6bd9e.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-13 17:20:51', 9);
INSERT INTO `order_item` VALUES (159, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 17:21:58', 6);
INSERT INTO `order_item` VALUES (160, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 17:28:27', 6);
INSERT INTO `order_item` VALUES (161, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-13 17:32:56', 9);
INSERT INTO `order_item` VALUES (161, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 17:32:56', 9);
INSERT INTO `order_item` VALUES (162, '/upload/goods/3f868ffb-4d92-4722-b9f0-8f6d0a1dfb8f.jpg', '1', 86, '小香蕉', 10.00, 1591348173752, '2020-06-13 17:34:46', 9);
INSERT INTO `order_item` VALUES (163, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 17:36:30', 6);
INSERT INTO `order_item` VALUES (164, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 17:37:28', 6);
INSERT INTO `order_item` VALUES (165, '/upload/185eaf14-5d2c-4563-b2be-6a85e2be92c1.jpg', '1', 5, '你真好耍', 2.30, 1591264971747, '2020-06-13 17:37:56', 9);
INSERT INTO `order_item` VALUES (166, '/upload/185eaf14-5d2c-4563-b2be-6a85e2be92c1.jpg', '1', 5, '你真好耍', 2.30, 1591264971747, '2020-06-13 17:40:08', 9);
INSERT INTO `order_item` VALUES (167, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-13 17:43:49', 10);
INSERT INTO `order_item` VALUES (167, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-13 17:43:49', 10);
INSERT INTO `order_item` VALUES (168, '/upload/185eaf14-5d2c-4563-b2be-6a85e2be92c1.jpg', '1', 5, '你真好耍', 2.30, 1591264971747, '2020-06-13 17:45:41', 9);
INSERT INTO `order_item` VALUES (169, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 17:47:35', 6);
INSERT INTO `order_item` VALUES (170, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-13 17:49:01', 10);
INSERT INTO `order_item` VALUES (170, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-13 17:49:01', 10);
INSERT INTO `order_item` VALUES (171, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-13 17:50:16', 10);
INSERT INTO `order_item` VALUES (171, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-13 17:50:16', 10);
INSERT INTO `order_item` VALUES (172, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 17:55:21', 6);
INSERT INTO `order_item` VALUES (173, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-13 17:56:27', 10);
INSERT INTO `order_item` VALUES (173, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-13 17:56:27', 10);
INSERT INTO `order_item` VALUES (174, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-13 17:58:28', 10);
INSERT INTO `order_item` VALUES (174, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-13 17:58:28', 10);
INSERT INTO `order_item` VALUES (175, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 18:00:40', 6);
INSERT INTO `order_item` VALUES (176, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-13 18:01:25', 10);
INSERT INTO `order_item` VALUES (176, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-13 18:01:25', 10);
INSERT INTO `order_item` VALUES (177, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-13 18:01:57', 6);
INSERT INTO `order_item` VALUES (178, '/upload/d149f33c-db3d-4876-8b6e-f11c6d71e63c.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-13 18:03:07', 6);
INSERT INTO `order_item` VALUES (179, '/upload/185eaf14-5d2c-4563-b2be-6a85e2be92c1.jpg', '1', 5, '你真好耍', 2.30, 1591264971747, '2020-06-13 18:04:33', 9);
INSERT INTO `order_item` VALUES (180, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-13 18:08:07', 10);
INSERT INTO `order_item` VALUES (180, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-13 18:08:07', 10);
INSERT INTO `order_item` VALUES (181, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-13 18:09:54', 10);
INSERT INTO `order_item` VALUES (181, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-13 18:09:54', 10);
INSERT INTO `order_item` VALUES (182, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-13 18:20:48', 10);
INSERT INTO `order_item` VALUES (182, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-13 18:20:48', 10);
INSERT INTO `order_item` VALUES (183, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-14 10:04:03', 10);
INSERT INTO `order_item` VALUES (183, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-14 10:04:03', 10);
INSERT INTO `order_item` VALUES (184, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-14 10:07:47', 10);
INSERT INTO `order_item` VALUES (184, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-14 10:07:47', 10);
INSERT INTO `order_item` VALUES (185, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-14 10:09:21', 10);
INSERT INTO `order_item` VALUES (185, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-14 10:09:21', 10);
INSERT INTO `order_item` VALUES (188, '/upload/goods/4d774b09-2d63-4b7f-a148-0f0f62edde2f.jpg', '1', 98, '芒果绵冰', 15.00, 1591878771520, '2020-06-14 11:09:42', 84);
INSERT INTO `order_item` VALUES (188, '/upload/goods/5eaf822e-53c1-4880-94d0-a07e380e109d.jpg', '1', 95, '创意蛋糕', 210.00, 1591878771520, '2020-06-14 11:09:42', 84);
INSERT INTO `order_item` VALUES (189, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-14 11:22:38', 10);
INSERT INTO `order_item` VALUES (189, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-14 11:22:38', 10);
INSERT INTO `order_item` VALUES (190, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-14 11:25:46', 10);
INSERT INTO `order_item` VALUES (190, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-14 11:25:46', 10);
INSERT INTO `order_item` VALUES (191, '/upload/goods/4d774b09-2d63-4b7f-a148-0f0f62edde2f.jpg', '1', 98, '芒果绵冰', 15.00, 1591878771520, '2020-06-14 11:30:26', 84);
INSERT INTO `order_item` VALUES (191, '/upload/goods/5eaf822e-53c1-4880-94d0-a07e380e109d.jpg', '1', 95, '创意蛋糕', 210.00, 1591878771520, '2020-06-14 11:30:26', 84);
INSERT INTO `order_item` VALUES (192, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 11:31:34', 84);
INSERT INTO `order_item` VALUES (193, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 11:34:13', 84);
INSERT INTO `order_item` VALUES (194, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 11:36:04', 84);
INSERT INTO `order_item` VALUES (195, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 11:41:18', 84);
INSERT INTO `order_item` VALUES (196, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '3', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 11:51:53', 84);
INSERT INTO `order_item` VALUES (197, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '3', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 11:53:02', 84);
INSERT INTO `order_item` VALUES (198, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '3', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 11:53:47', 84);
INSERT INTO `order_item` VALUES (199, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '3', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 12:59:39', 84);
INSERT INTO `order_item` VALUES (200, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '3', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 13:02:30', 84);
INSERT INTO `order_item` VALUES (201, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '3', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 13:04:35', 84);
INSERT INTO `order_item` VALUES (202, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '3', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 13:06:44', 84);
INSERT INTO `order_item` VALUES (203, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '3', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 13:06:53', 84);
INSERT INTO `order_item` VALUES (204, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '3', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 13:11:47', 84);
INSERT INTO `order_item` VALUES (205, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '2', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 13:24:12', 84);
INSERT INTO `order_item` VALUES (206, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '2', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 13:31:00', 84);
INSERT INTO `order_item` VALUES (207, '/upload/goods/4d774b09-2d63-4b7f-a148-0f0f62edde2f.jpg', '1', 103, '芒果西米露', 19.00, 1591878771520, '2020-06-14 13:38:33', 89);
INSERT INTO `order_item` VALUES (208, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 100, '杨枝甘2', 18.00, 1591878771520, '2020-06-14 13:40:24', 84);
INSERT INTO `order_item` VALUES (209, '/upload/goods/4d774b09-2d63-4b7f-a148-0f0f62edde2f.jpg', '1', 102, '芒果汁2', 12.00, 1591878771520, '2020-06-14 14:12:37', 84);
INSERT INTO `order_item` VALUES (210, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 101, '杨枝甘3', 18.00, 1591878771520, '2020-06-14 14:17:23', 84);
INSERT INTO `order_item` VALUES (211, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 101, '杨枝甘3', 18.00, 1591878771520, '2020-06-14 14:22:34', 84);
INSERT INTO `order_item` VALUES (211, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 14:22:34', 84);
INSERT INTO `order_item` VALUES (212, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 14:25:05', 84);
INSERT INTO `order_item` VALUES (212, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 101, '杨枝甘3', 18.00, 1591878771520, '2020-06-14 14:25:05', 84);
INSERT INTO `order_item` VALUES (213, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 14:30:20', 84);
INSERT INTO `order_item` VALUES (213, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 101, '杨枝甘3', 18.00, 1591878771520, '2020-06-14 14:30:20', 84);
INSERT INTO `order_item` VALUES (214, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 14:31:21', 84);
INSERT INTO `order_item` VALUES (214, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 101, '杨枝甘3', 18.00, 1591878771520, '2020-06-14 14:31:21', 84);
INSERT INTO `order_item` VALUES (215, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-14 15:12:28', 6);
INSERT INTO `order_item` VALUES (216, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-14 15:16:10', 6);
INSERT INTO `order_item` VALUES (217, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-14 15:18:15', 6);
INSERT INTO `order_item` VALUES (218, '/upload/goods/4d774b09-2d63-4b7f-a148-0f0f62edde2f.jpg', '1', 98, '芒果绵冰', 15.00, 1591878771520, '2020-06-14 15:19:15', 84);
INSERT INTO `order_item` VALUES (219, '/upload/d149f33c-db3d-4876-8b6e-f11c6d71e63c.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-14 15:35:59', 6);
INSERT INTO `order_item` VALUES (220, '/upload/cc02b537-7b27-4ef9-a6cb-01767bce988c.jpg', '1', 72, '洗脚', 250.00, 1591264971747, '2020-06-14 15:43:40', 9);
INSERT INTO `order_item` VALUES (221, '/upload/cc02b537-7b27-4ef9-a6cb-01767bce988c.jpg', '1', 72, '洗脚', 250.00, 1591264971747, '2020-06-14 15:49:29', 9);
INSERT INTO `order_item` VALUES (222, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-14 15:51:04', 9);
INSERT INTO `order_item` VALUES (222, '/upload/91c1dedb-49a2-4aba-95e7-917cb206f633.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-14 15:51:04', 9);
INSERT INTO `order_item` VALUES (223, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-14 15:55:22', 6);
INSERT INTO `order_item` VALUES (224, '/upload/goods/4d774b09-2d63-4b7f-a148-0f0f62edde2f.jpg', '1', 98, '芒果绵冰', 15.00, 1591878771520, '2020-06-14 15:56:53', 84);
INSERT INTO `order_item` VALUES (225, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-14 15:57:46', 9);
INSERT INTO `order_item` VALUES (226, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-14 16:00:18', 6);
INSERT INTO `order_item` VALUES (227, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-14 16:00:55', 9);
INSERT INTO `order_item` VALUES (228, '/upload/goods/4d774b09-2d63-4b7f-a148-0f0f62edde2f.jpg', '2', 98, '芒果绵冰', 15.00, 1591878771520, '2020-06-14 16:06:18', 84);
INSERT INTO `order_item` VALUES (229, '/upload/goods/4d774b09-2d63-4b7f-a148-0f0f62edde2f.jpg', '2', 98, '芒果绵冰', 15.00, 1591878771520, '2020-06-14 16:23:36', 84);
INSERT INTO `order_item` VALUES (230, '/upload/goods/4d774b09-2d63-4b7f-a148-0f0f62edde2f.jpg', '1', 103, '芒果西米露', 19.00, 1591878771520, '2020-06-14 16:27:07', 84);
INSERT INTO `order_item` VALUES (231, '/upload/goods/4d774b09-2d63-4b7f-a148-0f0f62edde2f.jpg', '1', 103, '芒果西米露', 19.00, 1591878771520, '2020-06-14 16:36:25', 84);
INSERT INTO `order_item` VALUES (231, '/upload/goods/4d774b09-2d63-4b7f-a148-0f0f62edde2f.jpg', '1', 98, '芒果绵冰', 15.00, 1591878771520, '2020-06-14 16:36:25', 84);
INSERT INTO `order_item` VALUES (232, '/upload/goods/4d774b09-2d63-4b7f-a148-0f0f62edde2f.jpg', '1', 98, '芒果绵冰', 15.00, 1591878771520, '2020-06-14 16:52:20', 84);
INSERT INTO `order_item` VALUES (232, '/upload/goods/4d774b09-2d63-4b7f-a148-0f0f62edde2f.jpg', '1', 103, '芒果西米露', 19.00, 1591878771520, '2020-06-14 16:52:20', 84);
INSERT INTO `order_item` VALUES (233, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-14 16:57:11', 6);
INSERT INTO `order_item` VALUES (234, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-14 17:11:00', 6);
INSERT INTO `order_item` VALUES (235, '/upload/goods/5eaf822e-53c1-4880-94d0-a07e380e109d.jpg', '1', 95, '创意蛋糕', 210.00, 1591878771520, '2020-06-14 17:10:49', 89);
INSERT INTO `order_item` VALUES (236, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 17:53:52', 84);
INSERT INTO `order_item` VALUES (236, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 101, '杨枝甘3', 18.00, 1591878771520, '2020-06-14 17:53:52', 84);
INSERT INTO `order_item` VALUES (237, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 17:59:36', 84);
INSERT INTO `order_item` VALUES (237, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 101, '杨枝甘3', 18.00, 1591878771520, '2020-06-14 17:59:36', 84);
INSERT INTO `order_item` VALUES (238, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '2', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 18:02:04', 84);
INSERT INTO `order_item` VALUES (238, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 101, '杨枝甘3', 18.00, 1591878771520, '2020-06-14 18:02:04', 84);
INSERT INTO `order_item` VALUES (239, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '2', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 18:07:24', 84);
INSERT INTO `order_item` VALUES (239, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 101, '杨枝甘3', 18.00, 1591878771520, '2020-06-14 18:07:24', 84);
INSERT INTO `order_item` VALUES (240, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '2', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 18:12:29', 84);
INSERT INTO `order_item` VALUES (240, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 101, '杨枝甘3', 18.00, 1591878771520, '2020-06-14 18:12:29', 84);
INSERT INTO `order_item` VALUES (240, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 99, '杨枝', 19.00, 1591878771520, '2020-06-14 18:12:29', 84);
INSERT INTO `order_item` VALUES (241, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 18:13:36', 84);
INSERT INTO `order_item` VALUES (241, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 99, '杨枝', 19.00, 1591878771520, '2020-06-14 18:13:36', 84);
INSERT INTO `order_item` VALUES (241, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 101, '杨枝甘3', 18.00, 1591878771520, '2020-06-14 18:13:36', 84);
INSERT INTO `order_item` VALUES (242, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-14 18:17:31', 6);
INSERT INTO `order_item` VALUES (243, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-14 18:21:14', 6);
INSERT INTO `order_item` VALUES (244, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 18:21:18', 84);
INSERT INTO `order_item` VALUES (244, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 99, '杨枝', 19.00, 1591878771520, '2020-06-14 18:21:18', 84);
INSERT INTO `order_item` VALUES (244, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 101, '杨枝甘3', 18.00, 1591878771520, '2020-06-14 18:21:18', 84);
INSERT INTO `order_item` VALUES (245, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-14 18:22:02', 6);
INSERT INTO `order_item` VALUES (246, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-14 18:27:08', 6);
INSERT INTO `order_item` VALUES (247, '/upload/goods/5eaf822e-53c1-4880-94d0-a07e380e109d.jpg', '1', 95, '创意蛋糕', 210.00, 1591878771520, '2020-06-14 18:31:02', 84);
INSERT INTO `order_item` VALUES (248, '/upload/d149f33c-db3d-4876-8b6e-f11c6d71e63c.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-14 18:34:53', 6);
INSERT INTO `order_item` VALUES (249, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-14 18:37:04', 6);
INSERT INTO `order_item` VALUES (250, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-14 18:40:10', 6);
INSERT INTO `order_item` VALUES (251, '/upload/goods/5eaf822e-53c1-4880-94d0-a07e380e109d.jpg', '2', 95, '创意蛋糕', 210.00, 1591878771520, '2020-06-14 18:40:53', 84);
INSERT INTO `order_item` VALUES (252, '/upload/goods/5eaf822e-53c1-4880-94d0-a07e380e109d.jpg', '3', 95, '创意蛋糕', 210.00, 1591878771520, '2020-06-14 18:41:43', 84);
INSERT INTO `order_item` VALUES (253, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '2', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 18:44:35', 84);
INSERT INTO `order_item` VALUES (253, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 99, '杨枝', 19.00, 1591878771520, '2020-06-14 18:44:35', 84);
INSERT INTO `order_item` VALUES (253, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 101, '杨枝甘3', 18.00, 1591878771520, '2020-06-14 18:44:35', 84);
INSERT INTO `order_item` VALUES (254, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '2', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 19:13:37', 84);
INSERT INTO `order_item` VALUES (254, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 99, '杨枝', 19.00, 1591878771520, '2020-06-14 19:13:37', 84);
INSERT INTO `order_item` VALUES (254, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 101, '杨枝甘3', 18.00, 1591878771520, '2020-06-14 19:13:37', 84);
INSERT INTO `order_item` VALUES (255, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 19:53:00', 84);
INSERT INTO `order_item` VALUES (256, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 97, '杨枝甘露', 18.00, 1591878771520, '2020-06-14 20:13:45', 84);
INSERT INTO `order_item` VALUES (257, '/upload/goods/4d774b09-2d63-4b7f-a148-0f0f62edde2f.jpg', '1', 98, '芒果绵冰', 15.00, 1591878771520, '2020-06-14 21:05:47', 84);
INSERT INTO `order_item` VALUES (258, '/upload/goods/0d82ff35-68a8-4bdc-a97e-3c20d25db394.jpg', '1', 99, '杨枝', 19.00, 1591878771520, '2020-06-14 21:11:33', 84);
INSERT INTO `order_item` VALUES (259, '/upload/goods/a23956ff-d756-48a6-a082-5ca84f269811.jpg', '1', 92, '蟹黄饺', 14.00, 1591878771518, '2020-06-14 21:21:40', 84);
INSERT INTO `order_item` VALUES (260, '/upload/goods/a23956ff-d756-48a6-a082-5ca84f269811.jpg', '2', 92, '蟹黄饺', 14.00, 1591878771518, '2020-06-14 21:30:37', 84);
INSERT INTO `order_item` VALUES (261, '/upload/goods/a23956ff-d756-48a6-a082-5ca84f269811.jpg', '1', 92, '蟹黄饺', 14.00, 1591878771518, '2020-06-14 21:33:37', 84);
INSERT INTO `order_item` VALUES (262, '/upload/goods/78892702-6cb4-4a54-b2b9-0ad08121f254.jpg', '1', 94, '营养套餐', 25.00, 1591878771518, '2020-06-14 21:41:06', 84);
INSERT INTO `order_item` VALUES (263, '/upload/goods/3f868ffb-4d92-4722-b9f0-8f6d0a1dfb8f.jpg', '1个', 84, '小香蕉', 10.00, 1591348173752, '2020-06-14 22:03:00', 14);
INSERT INTO `order_item` VALUES (264, '/upload/185eaf14-5d2c-4563-b2be-6a85e2be92c1.jpg', '1', 5, '你真好耍', 2.30, 1591264971747, '2020-06-14 22:05:00', 14);
INSERT INTO `order_item` VALUES (265, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '1个', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-14 22:55:23', 14);
INSERT INTO `order_item` VALUES (266, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '1', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-15 16:06:39', 27);
INSERT INTO `order_item` VALUES (267, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '1', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-15 16:06:45', 27);
INSERT INTO `order_item` VALUES (268, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-15 16:16:26', 6);
INSERT INTO `order_item` VALUES (269, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-15 16:25:52', 6);
INSERT INTO `order_item` VALUES (270, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '1', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-15 16:30:26', 27);
INSERT INTO `order_item` VALUES (271, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-15 16:38:53', 6);
INSERT INTO `order_item` VALUES (272, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-15 16:51:23', 6);
INSERT INTO `order_item` VALUES (273, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '3', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-15 16:57:59', 5);
INSERT INTO `order_item` VALUES (274, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '4', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-15 17:04:45', 6);
INSERT INTO `order_item` VALUES (275, '/upload/763041a5-b479-4db8-95c5-f8bc66a6bd9e.jpg', '4', 7, '高端红酒', 2.30, 1591264971747, '2020-06-15 17:06:24', 6);
INSERT INTO `order_item` VALUES (276, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 17:08:27', 10);
INSERT INTO `order_item` VALUES (276, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 17:08:27', 10);
INSERT INTO `order_item` VALUES (277, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 17:08:44', 10);
INSERT INTO `order_item` VALUES (277, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '1', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 17:08:44', 10);
INSERT INTO `order_item` VALUES (278, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 17:09:56', 10);
INSERT INTO `order_item` VALUES (278, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 17:09:56', 10);
INSERT INTO `order_item` VALUES (279, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 17:10:34', 10);
INSERT INTO `order_item` VALUES (279, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 17:10:34', 10);
INSERT INTO `order_item` VALUES (280, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-15 17:10:41', 6);
INSERT INTO `order_item` VALUES (281, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '1', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-15 17:11:32', 6);
INSERT INTO `order_item` VALUES (282, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 17:13:28', 10);
INSERT INTO `order_item` VALUES (282, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 17:13:28', 10);
INSERT INTO `order_item` VALUES (283, '/upload/f24f4e86-b83d-497c-afc9-bcfff2179c34.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-15 17:14:31', 6);
INSERT INTO `order_item` VALUES (284, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 17:16:36', 10);
INSERT INTO `order_item` VALUES (284, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 17:16:36', 10);
INSERT INTO `order_item` VALUES (285, '/upload/49be52bd-7952-4bc7-8b8a-c8c4181f6f4f.jpg', '1', 77, '甜心', 9.90, 1591264971747, '2020-06-15 17:18:20', 6);
INSERT INTO `order_item` VALUES (286, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 17:20:09', 10);
INSERT INTO `order_item` VALUES (286, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 17:20:09', 10);
INSERT INTO `order_item` VALUES (287, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '3', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-15 17:20:44', 5);
INSERT INTO `order_item` VALUES (288, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '3', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-15 17:24:39', 5);
INSERT INTO `order_item` VALUES (289, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-15 17:27:36', 6);
INSERT INTO `order_item` VALUES (290, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 17:29:51', 10);
INSERT INTO `order_item` VALUES (290, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 17:29:51', 10);
INSERT INTO `order_item` VALUES (291, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-15 17:30:27', 6);
INSERT INTO `order_item` VALUES (292, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 17:41:33', 10);
INSERT INTO `order_item` VALUES (292, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 17:41:33', 10);
INSERT INTO `order_item` VALUES (293, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 17:47:13', 10);
INSERT INTO `order_item` VALUES (293, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 17:47:13', 10);
INSERT INTO `order_item` VALUES (294, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 19:03:08', 10);
INSERT INTO `order_item` VALUES (294, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 19:03:08', 10);
INSERT INTO `order_item` VALUES (295, '/upload/bb430559-267e-49b7-b4bc-0f53c45d58fa.jpg', '1', 74, '阿威十八式', 155.00, 1591264971747, '2020-06-15 19:17:29', 6);
INSERT INTO `order_item` VALUES (296, '/upload/goods/02b742f7-9009-4c83-b2b8-78394fb83113.jpg', '1', 90, '皮蛋瘦肉粥', 18.00, 1591878771518, '2020-06-15 19:18:37', 84);
INSERT INTO `order_item` VALUES (297, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 19:30:54', 10);
INSERT INTO `order_item` VALUES (297, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 19:30:54', 10);
INSERT INTO `order_item` VALUES (298, '/upload/goods/c855cf83-0687-428c-a5d7-6f4360153641.jpg', '1', 104, '韩式炸鸡', 21.90, 1592210502025, '2020-06-15 19:36:21', 101);
INSERT INTO `order_item` VALUES (299, '/upload/goods/c855cf83-0687-428c-a5d7-6f4360153641.jpg', '2', 104, '韩式炸鸡', 21.90, 1592210502025, '2020-06-15 19:36:50', 100);
INSERT INTO `order_item` VALUES (301, '/upload/goods/02b742f7-9009-4c83-b2b8-78394fb83113.jpg', '1', 90, '皮蛋瘦肉粥', 18.00, 1591878771518, '2020-06-15 19:36:51', 84);
INSERT INTO `order_item` VALUES (300, '/upload/goods/c855cf83-0687-428c-a5d7-6f4360153641.jpg', '1', 104, '韩式炸鸡', 21.90, 1592210502025, '2020-06-15 19:36:54', 86);
INSERT INTO `order_item` VALUES (302, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-15 19:37:58', 9);
INSERT INTO `order_item` VALUES (302, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-15 19:37:58', 9);
INSERT INTO `order_item` VALUES (302, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-15 19:37:58', 9);
INSERT INTO `order_item` VALUES (303, '/upload/goods/1cc63baf-b6ac-4caa-ba6e-36a9655bbc12.png', '1', 24, '呵呵呵', 12.00, 1591578818999, '2020-06-15 19:38:42', 86);
INSERT INTO `order_item` VALUES (303, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '3', 26, '11', 12.00, 1591578818999, '2020-06-15 19:38:42', 86);
INSERT INTO `order_item` VALUES (303, '/upload/goods/edc88484-35d3-4318-8c4a-57b7baf6d759.jpg', '2', 30, '卤肉饭', 12.00, 1591578818999, '2020-06-15 19:38:42', 86);
INSERT INTO `order_item` VALUES (304, '/upload/goods/c855cf83-0687-428c-a5d7-6f4360153641.jpg', '2', 104, '韩式炸鸡', 21.90, 1592210502025, '2020-06-15 19:40:13', 100);
INSERT INTO `order_item` VALUES (305, '/upload/goods/c3c6e1cb-0fc6-4ff2-9c5b-c62a82928619.jpg', '1', 65, '美国大香蕉', 12.50, 1591776244703, '2020-06-15 19:41:33', 27);
INSERT INTO `order_item` VALUES (306, '/upload/goods/02b742f7-9009-4c83-b2b8-78394fb83113.jpg', '1', 90, '皮蛋瘦肉粥', 18.00, 1591878771518, '2020-06-15 19:42:29', 84);
INSERT INTO `order_item` VALUES (307, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 19:46:44', 10);
INSERT INTO `order_item` VALUES (307, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 19:46:44', 10);
INSERT INTO `order_item` VALUES (308, '/upload/goods/1cc63baf-b6ac-4caa-ba6e-36a9655bbc12.png', '1', 24, '呵呵呵', 12.00, 1591578818999, '2020-06-15 19:51:12', 86);
INSERT INTO `order_item` VALUES (308, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '3', 26, '11', 12.00, 1591578818999, '2020-06-15 19:51:12', 86);
INSERT INTO `order_item` VALUES (308, '/upload/goods/edc88484-35d3-4318-8c4a-57b7baf6d759.jpg', '2', 30, '卤肉饭', 12.00, 1591578818999, '2020-06-15 19:51:12', 86);
INSERT INTO `order_item` VALUES (309, '/upload/goods/02b742f7-9009-4c83-b2b8-78394fb83113.jpg', '1', 90, '皮蛋瘦肉粥', 18.00, 1591878771518, '2020-06-15 19:51:47', 84);
INSERT INTO `order_item` VALUES (310, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 19:55:16', 10);
INSERT INTO `order_item` VALUES (310, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 19:55:16', 10);
INSERT INTO `order_item` VALUES (311, '/upload/goods/1cc63baf-b6ac-4caa-ba6e-36a9655bbc12.png', '1', 24, '呵呵呵', 12.00, 1591578818999, '2020-06-15 19:57:51', 86);
INSERT INTO `order_item` VALUES (311, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '3', 26, '11', 12.00, 1591578818999, '2020-06-15 19:57:51', 86);
INSERT INTO `order_item` VALUES (311, '/upload/goods/edc88484-35d3-4318-8c4a-57b7baf6d759.jpg', '2', 30, '卤肉饭', 12.00, 1591578818999, '2020-06-15 19:57:51', 86);
INSERT INTO `order_item` VALUES (312, '/upload/goods/1cc63baf-b6ac-4caa-ba6e-36a9655bbc12.png', '1', 24, '呵呵呵', 12.00, 1591578818999, '2020-06-15 19:58:27', 86);
INSERT INTO `order_item` VALUES (312, '/upload/goods/bd82070f-9e86-4d3e-a730-dedbe616ac5d.jpg', '3', 26, '11', 12.00, 1591578818999, '2020-06-15 19:58:27', 86);
INSERT INTO `order_item` VALUES (312, '/upload/goods/edc88484-35d3-4318-8c4a-57b7baf6d759.jpg', '2', 30, '卤肉饭', 12.00, 1591578818999, '2020-06-15 19:58:27', 86);
INSERT INTO `order_item` VALUES (313, '/upload/goods/c7d5720f-c9c6-4239-8fdc-9bb8a15789fe.jpg', '3', 88, '没烦恼药丸', 10.00, 1591878771513, '2020-06-15 20:01:22', 42);
INSERT INTO `order_item` VALUES (314, '/upload/goods/c7d5720f-c9c6-4239-8fdc-9bb8a15789fe.jpg', '3', 88, '没烦恼药丸', 10.00, 1591878771513, '2020-06-15 20:01:23', 42);
INSERT INTO `order_item` VALUES (315, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 20:01:37', 10);
INSERT INTO `order_item` VALUES (315, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 20:01:37', 10);
INSERT INTO `order_item` VALUES (316, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 20:05:44', 10);
INSERT INTO `order_item` VALUES (316, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 20:05:44', 10);
INSERT INTO `order_item` VALUES (317, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 20:09:50', 10);
INSERT INTO `order_item` VALUES (317, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 20:09:50', 10);
INSERT INTO `order_item` VALUES (318, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 20:13:15', 10);
INSERT INTO `order_item` VALUES (318, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 20:13:15', 10);
INSERT INTO `order_item` VALUES (319, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 20:21:10', 10);
INSERT INTO `order_item` VALUES (319, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 20:21:10', 10);
INSERT INTO `order_item` VALUES (320, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 20:24:54', 10);
INSERT INTO `order_item` VALUES (320, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 20:24:54', 10);
INSERT INTO `order_item` VALUES (321, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '2', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 20:28:23', 10);
INSERT INTO `order_item` VALUES (321, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 20:28:23', 10);
INSERT INTO `order_item` VALUES (327, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-15 20:33:34', 25);
INSERT INTO `order_item` VALUES (327, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-15 20:33:34', 25);
INSERT INTO `order_item` VALUES (327, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-15 20:33:34', 25);
INSERT INTO `order_item` VALUES (327, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-15 20:33:34', 25);
INSERT INTO `order_item` VALUES (328, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-15 20:36:32', 25);
INSERT INTO `order_item` VALUES (328, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-15 20:36:32', 25);
INSERT INTO `order_item` VALUES (328, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-15 20:36:32', 25);
INSERT INTO `order_item` VALUES (328, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-15 20:36:32', 25);
INSERT INTO `order_item` VALUES (329, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-15 20:36:44', 25);
INSERT INTO `order_item` VALUES (329, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-15 20:36:44', 25);
INSERT INTO `order_item` VALUES (329, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-15 20:36:44', 25);
INSERT INTO `order_item` VALUES (329, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-15 20:36:44', 25);
INSERT INTO `order_item` VALUES (330, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '3', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 20:36:46', 10);
INSERT INTO `order_item` VALUES (330, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 20:36:46', 10);
INSERT INTO `order_item` VALUES (331, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-15 20:37:59', 25);
INSERT INTO `order_item` VALUES (331, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-15 20:37:59', 25);
INSERT INTO `order_item` VALUES (331, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-15 20:37:59', 25);
INSERT INTO `order_item` VALUES (331, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-15 20:37:59', 25);
INSERT INTO `order_item` VALUES (332, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-15 20:38:36', 25);
INSERT INTO `order_item` VALUES (332, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-15 20:38:36', 25);
INSERT INTO `order_item` VALUES (332, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-15 20:38:36', 25);
INSERT INTO `order_item` VALUES (332, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-15 20:38:36', 25);
INSERT INTO `order_item` VALUES (333, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-15 20:42:19', 25);
INSERT INTO `order_item` VALUES (333, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-15 20:42:19', 25);
INSERT INTO `order_item` VALUES (333, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-15 20:42:19', 25);
INSERT INTO `order_item` VALUES (333, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-15 20:42:19', 25);
INSERT INTO `order_item` VALUES (334, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-15 20:42:21', 25);
INSERT INTO `order_item` VALUES (334, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-15 20:42:21', 25);
INSERT INTO `order_item` VALUES (334, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-15 20:42:21', 25);
INSERT INTO `order_item` VALUES (334, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-15 20:42:21', 25);
INSERT INTO `order_item` VALUES (335, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '3', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 20:42:43', 10);
INSERT INTO `order_item` VALUES (335, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 20:42:43', 10);
INSERT INTO `order_item` VALUES (336, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-15 20:43:06', 25);
INSERT INTO `order_item` VALUES (336, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-15 20:43:06', 25);
INSERT INTO `order_item` VALUES (336, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-15 20:43:06', 25);
INSERT INTO `order_item` VALUES (336, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-15 20:43:06', 25);
INSERT INTO `order_item` VALUES (337, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-15 20:45:49', 25);
INSERT INTO `order_item` VALUES (337, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-15 20:45:49', 25);
INSERT INTO `order_item` VALUES (337, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-15 20:45:49', 25);
INSERT INTO `order_item` VALUES (337, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-15 20:45:49', 25);
INSERT INTO `order_item` VALUES (338, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-15 20:47:46', 25);
INSERT INTO `order_item` VALUES (338, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-15 20:47:46', 25);
INSERT INTO `order_item` VALUES (338, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-15 20:47:46', 25);
INSERT INTO `order_item` VALUES (338, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-15 20:47:46', 25);
INSERT INTO `order_item` VALUES (339, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-15 20:48:46', 25);
INSERT INTO `order_item` VALUES (339, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-15 20:48:46', 25);
INSERT INTO `order_item` VALUES (339, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-15 20:48:46', 25);
INSERT INTO `order_item` VALUES (339, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-15 20:48:46', 25);
INSERT INTO `order_item` VALUES (340, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-15 20:51:27', 25);
INSERT INTO `order_item` VALUES (340, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-15 20:51:27', 25);
INSERT INTO `order_item` VALUES (340, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-15 20:51:27', 25);
INSERT INTO `order_item` VALUES (340, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-15 20:51:27', 25);
INSERT INTO `order_item` VALUES (341, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '3', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 20:53:46', 10);
INSERT INTO `order_item` VALUES (341, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 20:53:46', 10);
INSERT INTO `order_item` VALUES (342, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-15 21:00:17', 25);
INSERT INTO `order_item` VALUES (342, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-15 21:00:17', 25);
INSERT INTO `order_item` VALUES (342, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-15 21:00:17', 25);
INSERT INTO `order_item` VALUES (342, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-15 21:00:17', 25);
INSERT INTO `order_item` VALUES (343, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '3', 15, '回忆童年', 5.90, 1591269151344, '2020-06-15 21:13:23', 10);
INSERT INTO `order_item` VALUES (343, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-15 21:13:23', 10);
INSERT INTO `order_item` VALUES (344, '/upload/goods/02b742f7-9009-4c83-b2b8-78394fb83113.jpg', '1', 90, '皮蛋瘦肉粥', 18.00, 1591878771518, '2020-06-15 21:31:54', 84);
INSERT INTO `order_item` VALUES (345, '/upload/goods/02b742f7-9009-4c83-b2b8-78394fb83113.jpg', '1', 90, '皮蛋瘦肉粥', 18.00, 1591878771518, '2020-06-15 21:50:29', 84);
INSERT INTO `order_item` VALUES (346, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-15 23:57:13', 9);
INSERT INTO `order_item` VALUES (346, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-15 23:57:13', 9);
INSERT INTO `order_item` VALUES (346, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-15 23:57:13', 9);
INSERT INTO `order_item` VALUES (347, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '6', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-15 23:59:58', 104);
INSERT INTO `order_item` VALUES (348, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-16 00:01:25', 104);
INSERT INTO `order_item` VALUES (349, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-16 08:13:37', 25);
INSERT INTO `order_item` VALUES (349, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-16 08:13:37', 25);
INSERT INTO `order_item` VALUES (349, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-16 08:13:37', 25);
INSERT INTO `order_item` VALUES (349, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-16 08:13:37', 25);
INSERT INTO `order_item` VALUES (350, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-16 08:16:56', 25);
INSERT INTO `order_item` VALUES (350, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-16 08:16:56', 25);
INSERT INTO `order_item` VALUES (350, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-16 08:16:56', 25);
INSERT INTO `order_item` VALUES (350, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-16 08:16:56', 25);
INSERT INTO `order_item` VALUES (352, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-16 08:20:25', 25);
INSERT INTO `order_item` VALUES (352, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-16 08:20:25', 25);
INSERT INTO `order_item` VALUES (352, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-16 08:20:25', 25);
INSERT INTO `order_item` VALUES (352, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-16 08:20:25', 25);
INSERT INTO `order_item` VALUES (351, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-16 08:20:25', 25);
INSERT INTO `order_item` VALUES (351, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-16 08:20:25', 25);
INSERT INTO `order_item` VALUES (351, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-16 08:20:25', 25);
INSERT INTO `order_item` VALUES (351, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-16 08:20:25', 25);
INSERT INTO `order_item` VALUES (353, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-16 08:24:50', 25);
INSERT INTO `order_item` VALUES (353, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-16 08:24:50', 25);
INSERT INTO `order_item` VALUES (353, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-16 08:24:50', 25);
INSERT INTO `order_item` VALUES (353, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-16 08:24:50', 25);
INSERT INTO `order_item` VALUES (354, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-16 08:48:35', 9);
INSERT INTO `order_item` VALUES (354, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-16 08:48:35', 9);
INSERT INTO `order_item` VALUES (354, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-16 08:48:35', 9);
INSERT INTO `order_item` VALUES (355, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-16 16:24:31', 6);
INSERT INTO `order_item` VALUES (356, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '1', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-16 17:40:44', 9);
INSERT INTO `order_item` VALUES (357, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-16 18:10:43', 25);
INSERT INTO `order_item` VALUES (357, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-16 18:10:43', 25);
INSERT INTO `order_item` VALUES (357, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-16 18:10:43', 25);
INSERT INTO `order_item` VALUES (357, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-16 18:10:43', 25);
INSERT INTO `order_item` VALUES (358, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-16 18:42:25', 25);
INSERT INTO `order_item` VALUES (358, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-16 18:42:25', 25);
INSERT INTO `order_item` VALUES (358, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-16 18:42:25', 25);
INSERT INTO `order_item` VALUES (358, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-16 18:42:25', 25);
INSERT INTO `order_item` VALUES (359, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-16 18:46:29', 9);
INSERT INTO `order_item` VALUES (359, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-16 18:46:29', 9);
INSERT INTO `order_item` VALUES (359, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-16 18:46:29', 9);
INSERT INTO `order_item` VALUES (360, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-16 18:53:32', 25);
INSERT INTO `order_item` VALUES (360, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-16 18:53:32', 25);
INSERT INTO `order_item` VALUES (360, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-16 18:53:32', 25);
INSERT INTO `order_item` VALUES (360, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-16 18:53:32', 25);
INSERT INTO `order_item` VALUES (361, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-16 18:57:20', 25);
INSERT INTO `order_item` VALUES (361, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-16 18:57:20', 25);
INSERT INTO `order_item` VALUES (361, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-16 18:57:20', 25);
INSERT INTO `order_item` VALUES (361, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-16 18:57:20', 25);
INSERT INTO `order_item` VALUES (362, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-16 18:57:28', 25);
INSERT INTO `order_item` VALUES (362, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-16 18:57:28', 25);
INSERT INTO `order_item` VALUES (362, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-16 18:57:28', 25);
INSERT INTO `order_item` VALUES (362, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-16 18:57:28', 25);
INSERT INTO `order_item` VALUES (363, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-16 18:58:39', 25);
INSERT INTO `order_item` VALUES (363, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-16 18:58:39', 25);
INSERT INTO `order_item` VALUES (363, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-16 18:58:39', 25);
INSERT INTO `order_item` VALUES (363, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-16 18:58:39', 25);
INSERT INTO `order_item` VALUES (364, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-16 19:01:49', 25);
INSERT INTO `order_item` VALUES (364, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-16 19:01:49', 25);
INSERT INTO `order_item` VALUES (364, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-16 19:01:49', 25);
INSERT INTO `order_item` VALUES (364, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-16 19:01:49', 25);
INSERT INTO `order_item` VALUES (365, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-16 19:03:02', 25);
INSERT INTO `order_item` VALUES (365, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-16 19:03:02', 25);
INSERT INTO `order_item` VALUES (365, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-16 19:03:02', 25);
INSERT INTO `order_item` VALUES (365, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-16 19:03:02', 25);
INSERT INTO `order_item` VALUES (366, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-16 19:06:42', 25);
INSERT INTO `order_item` VALUES (366, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-16 19:06:42', 25);
INSERT INTO `order_item` VALUES (366, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-16 19:06:42', 25);
INSERT INTO `order_item` VALUES (366, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-16 19:06:42', 25);
INSERT INTO `order_item` VALUES (367, '/upload/goods/c7d5720f-c9c6-4239-8fdc-9bb8a15789fe.jpg', '1', 88, '没烦恼药丸', 10.00, 1591878771513, '2020-06-16 20:06:44', 9);
INSERT INTO `order_item` VALUES (368, '/upload/goods/c0c4bbf4-ad51-45c0-ac32-5044972377f2.jpg', '1', 57, '丝滑拿铁', 18.00, 1591616829215, '2020-06-16 20:09:43', 9);
INSERT INTO `order_item` VALUES (369, '/upload/goods/c0c4bbf4-ad51-45c0-ac32-5044972377f2.jpg', '1', 57, '丝滑拿铁', 18.00, 1591616829215, '2020-06-16 20:34:48', 9);
INSERT INTO `order_item` VALUES (370, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '3', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-16 23:16:09', 5);
INSERT INTO `order_item` VALUES (371, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '3', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-16 23:16:09', 5);
INSERT INTO `order_item` VALUES (372, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-17 12:37:04', 25);
INSERT INTO `order_item` VALUES (372, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-17 12:37:04', 25);
INSERT INTO `order_item` VALUES (372, '/upload/6a010950-cf03-42da-a3c4-4f2afb4e9c4d.jpg', '1', 10, '皮卡丘1', 2.30, 1591264971747, '2020-06-17 12:37:04', 25);
INSERT INTO `order_item` VALUES (372, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-17 12:37:04', 25);
INSERT INTO `order_item` VALUES (373, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-17 20:38:47', 9);
INSERT INTO `order_item` VALUES (373, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-17 20:38:47', 9);
INSERT INTO `order_item` VALUES (374, '/upload/goods/4d270078-a11a-4572-b3e5-4ec915b4e3e1.jpg', '2', 23, '你真好耍', 0.10, 1591578818999, '2020-06-18 17:36:58', 1);
INSERT INTO `order_item` VALUES (375, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '1', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-18 17:46:26', 9);
INSERT INTO `order_item` VALUES (376, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '1', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-18 17:48:38', 9);
INSERT INTO `order_item` VALUES (378, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '1', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-18 17:50:06', 9);
INSERT INTO `order_item` VALUES (377, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '1', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-18 17:50:05', 9);
INSERT INTO `order_item` VALUES (380, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-18 17:56:22', 9);
INSERT INTO `order_item` VALUES (380, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-18 17:56:22', 9);
INSERT INTO `order_item` VALUES (381, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-18 19:15:53', 9);
INSERT INTO `order_item` VALUES (381, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-18 19:15:53', 9);
INSERT INTO `order_item` VALUES (382, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-18 19:22:23', 9);
INSERT INTO `order_item` VALUES (382, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-18 19:22:23', 9);
INSERT INTO `order_item` VALUES (383, '/upload/goods/cebf4df4-fd81-4439-8db2-e303d3aa301e.jpg', '1', 56, '可可冰淇淋', 1.00, 1591268241883, '2020-06-20 18:09:32', 9);
INSERT INTO `order_item` VALUES (384, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-20 18:12:39', 9);
INSERT INTO `order_item` VALUES (384, '/upload/7c271e58-0aaf-4483-b0d5-1d836e19776f.jpg', '1', 66, '红茶', 2.50, 1591264971747, '2020-06-20 18:12:39', 9);
INSERT INTO `order_item` VALUES (384, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-20 18:12:39', 9);
INSERT INTO `order_item` VALUES (385, '/upload/15d6a7e1-fc23-4acb-9b43-e441c29dc9c6.jpg', '3', 15, '回忆童年', 5.90, 1591269151344, '2020-06-20 19:56:21', 10);
INSERT INTO `order_item` VALUES (385, '/upload/14039649-5047-4fa2-8370-a725b467bc1e.jpg', '2', 44, '冰糖雪梨', 5.90, 1591269151344, '2020-06-20 19:56:21', 10);
INSERT INTO `order_item` VALUES (385, '/upload/180e07b6-94cf-4969-9ef6-51501be76204.jpg', '1', 11, '富士山极品水果', 5.90, 1591269151344, '2020-06-20 19:56:21', 10);
INSERT INTO `order_item` VALUES (386, '/upload/acc3e9dd-2223-42bf-a052-79cdb054d8f8.jpg', '1', 2, '牛奶布丁', 5.90, 1591616829215, '2020-06-21 00:31:08', 1);
INSERT INTO `order_item` VALUES (386, '/upload/eb7acd97-9fb8-442d-9bba-e4696dc9b5f1.jpg', '1', 7, '高端红酒', 2.30, 1591264971747, '2020-06-21 00:31:08', 1);
INSERT INTO `order_item` VALUES (386, '/upload/875ad335-7868-4c02-9c6d-cf44bb98e6cb.jpg', '1', 8, '冰红茶1', 2.30, 1591264971747, '2020-06-21 00:31:08', 1);
INSERT INTO `order_item` VALUES (387, '/upload/941b6f48-b3d0-47d9-b815-fb3b8c89a382.jpg', '3', 72, '洗脚', 250.00, 1591264971747, '2020-06-21 13:29:31', 12);
INSERT INTO `order_item` VALUES (387, '/upload/e6cc563f-4684-4f84-a460-ac4bce5455a8.jpg', '3', 73, '泰式按摩', 251.00, 1591264971747, '2020-06-21 13:29:31', 12);
INSERT INTO `order_item` VALUES (388, '/upload/941b6f48-b3d0-47d9-b815-fb3b8c89a382.jpg', '3', 72, '洗脚', 250.00, 1591264971747, '2020-06-21 13:29:54', 12);
INSERT INTO `order_item` VALUES (388, '/upload/e6cc563f-4684-4f84-a460-ac4bce5455a8.jpg', '3', 73, '泰式按摩', 251.00, 1591264971747, '2020-06-21 13:29:54', 12);

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission`  (
  `permission_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '权限id',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限的名称',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图标',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序字段:越小越排在前面',
  `flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标记字段：就是根据这个字段来判断是否有这个权限',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限的说明',
  `show` tinyint(1) NULL DEFAULT NULL COMMENT '是否展示：展示1，不展示0',
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '访问的地址',
  PRIMARY KEY (`permission_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES (1, '商品添加', '1', 3, 'goods:add', '商品的添加（商户才能干）', 1, '/pages/back/goods/addPre');
INSERT INTO `permission` VALUES (2, '商品列表(商户)', 'layui-icon-light', 3, 'goods:merchant:list', '商户对商品进行列表展示', 1, '/pages/back/goods/merchantList');
INSERT INTO `permission` VALUES (3, '商品修改', '', 3, 'goods:edit', '修改不需要展示出来', 1, '/pages/back/goods/editPre');
INSERT INTO `permission` VALUES (6, '订单列表(平台)', NULL, 0, 'platOrderList', '平台查看所有订单', 1, '/pages/back/order/platOrderList');
INSERT INTO `permission` VALUES (10, '用户列表', '', 3, 'user:list', '用户信息展示', 1, '/pages/back/user/list');
INSERT INTO `permission` VALUES (15, '角色列表', NULL, 1, 'role', '不要删除了', 1, '/pages/back/role/list');
INSERT INTO `permission` VALUES (16, '权限列表', NULL, 2, 'permission:list', '对全县进行列表 ', 1, '/pages/back/permission/list');
INSERT INTO `permission` VALUES (110, '商户列表', '', 1, 'merchant:list', '商户进行列表操作', 1, '/pages/back/merchant/list');
INSERT INTO `permission` VALUES (113, '商品列表(平台)', 'layui-icon-light', 1, 'goods:plat:list', '平台对所有商品进行列表', 1, '/pages/back/goods/list');
INSERT INTO `permission` VALUES (117, '商品类型列表', '3', 4, 'goodsType', '商品类型列表', 1, '/pages/back/goodsType/list');
INSERT INTO `permission` VALUES (118, '订单列表(商户)', '', 0, 'merchantOrderlist', '商户查看自己店铺订单', 1, '/pages/back/order/merchantOrderList');
INSERT INTO `permission` VALUES (119, '配置列表', '3', 1, '', 'config:list', 1, '/pages/back/config/list');
INSERT INTO `permission` VALUES (120, '配置列表', '', 1, 'config:list', '对系统配置进行列表', 1, '/pages/back/config/list');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名称',
  `sort` int(0) NULL DEFAULT NULL COMMENT '排序字段',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图标',
  `flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标记：这个标记就是存到用户session里边，就是根据这个标记来判断用户是否有这个角色',
  `note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色是备注或者说明：给分配角色和权限的人看的',
  `permissions` varchar(2555) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '一个用户权限组的的字符串，按照逗号拆分',
  `system` tinyint(1) NULL DEFAULT NULL COMMENT '是否是系统级别的最高角色？拥有这个角色所有的权限。是调用权限的参考模板，所有权限都将会展示出来，任何人的角色权限都将是这个级别之下的。',
  `role_id` int(0) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('商品管理', 1, 'layui-icon-star-fill', 'goods', '（平台）对商品进行管理', '1,2,113,117', 1, 1);
INSERT INTO `role` VALUES ('订单管理', 2, 'layui-icon-cart', 'order', '对订单进行管理', '6,118', 1, 2);
INSERT INTO `role` VALUES ('用户管理', 3, 'layui-icon-user', 'user', '对用户进行管理', '10', 1, 3);
INSERT INTO `role` VALUES ('财务管理', 4, 'layui-icon-rmb', 'caiwu', '对财务进行管理', '', 1, 4);
INSERT INTO `role` VALUES ('角色权限', 12, 'layui-icon-heart-fill', 'roleAndPermission', '角色和权限列表', '15,16', 1, 5);
INSERT INTO `role` VALUES ('商户管理', 1, 'layui-icon-user', 'merchant', '商户管理列表等操作', '110', 1, 6);
INSERT INTO `role` VALUES ('商品管理', 0, 'layui-icon-star-fill', 'goods', '==> 新增角色：', '1,2,3,113,117', 0, 29);
INSERT INTO `role` VALUES ('订单管理', 2, 'layui-icon-cart', 'order', '==> 新增角色：', '6', 0, 31);
INSERT INTO `role` VALUES ('用户管理', 3, 'layui-icon-user', 'user', '==> 新增角色：', '10', 0, 32);
INSERT INTO `role` VALUES ('财务管理', 4, 'layui-icon-rmb', 'caiwu', '==> 新增角色：', '', 0, 33);
INSERT INTO `role` VALUES ('角色权限', 12, 'layui-icon-heart-fill', 'roleAndPermission', '==> 新增角色：', '15,16', 0, 34);
INSERT INTO `role` VALUES ('商品管理', 0, 'layui-icon-star-fill', 'goods', '==> 新增角色：', '1,3,113,117', 0, 35);
INSERT INTO `role` VALUES ('商品管理', 0, 'layui-icon-star-fill', 'goods', '==> 新增角色：', '113', 0, 36);
INSERT INTO `role` VALUES ('配置管理', 1, '3', 'config', '==> 新增角色：', '119', 0, 38);
INSERT INTO `role` VALUES ('商品管理', 0, 'layui-icon-star-fill', 'goods', '==>新增分配角色：', '1,2,3,113', 0, 39);
INSERT INTO `role` VALUES ('角色权限', 12, 'layui-icon-heart-fill', 'roleAndPermission', '==>新增分配角色：', '15', 0, 40);
INSERT INTO `role` VALUES ('商品管理', 0, 'layui-icon-star-fill', 'goods', '==>新增分配角色：', '1,3', 0, 41);
INSERT INTO `role` VALUES ('商品管理', 0, 'layui-icon-star-fill', 'goods', '==>新增分配角色：', '1,2', 0, 42);
INSERT INTO `role` VALUES ('商品管理', 0, 'layui-icon-star-fill', 'goods', '==> 新增角色：', '1', 0, 43);
INSERT INTO `role` VALUES ('商品管理', 0, 'layui-icon-star-fill', 'goods', '==> 新增角色：', '113,117', 0, 44);
INSERT INTO `role` VALUES ('商品管理', 0, 'layui-icon-star-fill', 'goods', '==>新增角色：', '1,2,3', 0, 47);
INSERT INTO `role` VALUES ('商品管理', 0, 'layui-icon-star-fill', 'goods', '==> 新增角色：', '1,2,3,117', 0, 49);
INSERT INTO `role` VALUES ('商户管理', 1, 'layui-icon-user', 'merchant', '==> 新增角色：', '110', 0, 50);
INSERT INTO `role` VALUES ('商品管理', 0, 'layui-icon-star-fill', 'goods', '==> 新增角色：', '1,2,3,6,10,15,16,110,113,117', 0, 51);
INSERT INTO `role` VALUES ('商户管理', 1, 'layui-icon-user', 'merchant', '==> 新增角色：', '3,110', 0, 52);
INSERT INTO `role` VALUES ('订单管理', 2, 'layui-icon-cart', 'order', '==> 新增角色：', '6,118', 0, 53);
INSERT INTO `role` VALUES ('商品管理', 1, 'layui-icon-star-fill', 'goods', '==> 新增角色：', '1,2,117', 0, 56);
INSERT INTO `role` VALUES ('订单管理', 2, 'layui-icon-cart', 'order', '==> 新增角色：', '118', 0, 57);
INSERT INTO `role` VALUES ('商品管理', 1, 'layui-icon-star-fill', 'goods', '==> 新增角色：', '1,2,113,117', 0, 58);
INSERT INTO `role` VALUES ('系统配置', 11, 'layui-icon-set-fill', '', '对客户端进行配置', '120', 1, 59);
INSERT INTO `role` VALUES ('系统配置', 11, 'layui-icon-set-fill', '', '==> 新增角色：', '120', 0, 60);

-- ----------------------------
-- Table structure for sg_order
-- ----------------------------
DROP TABLE IF EXISTS `sg_order`;
CREATE TABLE `sg_order`  (
  `order_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '订单编号，（自增）',
  `merchant_id` bigint(0) NOT NULL COMMENT '商户id,是哪个商家的订单，需要解决商家查询订单时候扫表',
  `user_id` bigint(0) NOT NULL COMMENT '用户id,是哪个用户的',
  `pay_status` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款状态：待付款，待发货，待收货，待评价，已取消，退款中，已退款，已评价',
  `receiver_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人',
  `receiver_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货人电话',
  `receiver_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '详细收货地址',
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址标签：可要可不要',
  `create_time` datetime(0) NOT NULL COMMENT '下单时间：按照时间分成12个月',
  `pay_time` datetime(0) NULL DEFAULT NULL COMMENT '付款时间：没有付款，就是null',
  `pay_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '付款方式：支付宝，微信，余额付款',
  `coupon_relief` decimal(10, 2) NULL DEFAULT NULL COMMENT '优惠券减免1:金额',
  `red_bag_relief` decimal(10, 2) NULL DEFAULT NULL COMMENT '红包减免2：',
  `goods_relief` decimal(10, 2) NULL DEFAULT NULL COMMENT '商品总减免3：商品原价-商品现在的价格',
  `plat_relief` decimal(10, 2) NULL DEFAULT NULL COMMENT '平台减免4：平台减免',
  `arrival_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '送达时间：',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '订单备注：客户写的',
  `actually_paid` decimal(10, 2) NOT NULL COMMENT '实际付款金额：',
  `all_cost` decimal(10, 2) NULL DEFAULT NULL COMMENT '订单原价总金额（无任何优惠的，还有配送费）',
  `all_relief` decimal(10, 2) NULL DEFAULT NULL COMMENT '总减免：红包+优惠券减免+商品优惠+平台优惠',
  `packaging_fee` decimal(10, 2) NULL DEFAULT NULL COMMENT '包装费总和',
  `delivery_fee` decimal(10, 2) NULL DEFAULT NULL COMMENT '配送费',
  `is_plat_send` tinyint(1) NULL DEFAULT NULL COMMENT '是否平台配送:1和0',
  `receiver_lng` double NULL DEFAULT NULL COMMENT '收货地址经度：这个是拿来算配送费的',
  `receiver_lat` double NULL DEFAULT NULL COMMENT '收货地址纬度：这个是拿来算配送费的',
  `receiver_city_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '收货城市编码：用于查看运费：一般第三方配送平台都需要传递这个参数',
  `is_coupon` tinyint(1) NULL DEFAULT NULL COMMENT '是否团购：团购的抽成是不一样的',
  `merchant_price` decimal(10, 1) NULL DEFAULT NULL COMMENT '商户此单平台价格：所有商品现价*数量，排开运费，折扣，这个金额是跟商户结算的金额，这个金额*（1-商家给平台的佣金）就等于要给商家的钱',
  `commission` decimal(10, 2) NULL DEFAULT NULL COMMENT '商户给平台的佣金：当前这个订单的佣金',
  `commission_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '佣金类型：代金券、商户自配、平台配送',
  PRIMARY KEY (`order_id`) USING BTREE,
  INDEX `userId_index`(`user_id`) USING BTREE,
  INDEX `merchant_id`(`merchant_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 386 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sg_order
-- ----------------------------
INSERT INTO `sg_order` VALUES (1, 1591578818999, 1, '已取消', '12', '18223170162', '石桥铺科园一路2号 大西洋国际大厦12', '12', '2020-06-12 11:27:58', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 66800.01, 66863.00, 63.00, 15.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (2, 1591578818999, 1, '已取消', '12', '18223170162', '石桥铺科园一路2号 大西洋国际大厦12', '12', '2020-06-12 11:28:19', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 66800.01, 66863.00, 63.00, 15.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (3, 1591578818999, 1, '已取消', '12', '18223170162', '石桥铺科园一路2号 大西洋国际大厦12', '12', '2020-06-12 11:33:34', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 66800.01, 66863.00, 63.00, 15.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (4, 1591578818999, 1, '已取消', '12', '18223170162', '石桥铺科园一路2号 大西洋国际大厦12', '12', '2020-06-12 11:52:41', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 66800.01, 66863.00, 63.00, 15.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (5, 1591578818999, 1, '已取消', '12', '18223170162', '石桥铺科园一路2号 大西洋国际大厦12', '12', '2020-06-12 12:02:24', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 19160.01, 19223.00, 63.00, 10.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (6, 1591578818999, 1, '已取消', '12', '18223170162', '石桥铺科园一路2号 大西洋国际大厦12', '12', '2020-06-12 12:03:01', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 19160.01, 19223.00, 63.00, 10.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (7, 1591578818999, 1, '已取消', 'hh', '18223170162', '新牌坊三路与新牌坊二路交叉口西北100米 新牌坊社区20-1', 'la', '2020-06-12 12:16:02', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 1114.00, 1092.00, -22.00, 86.00, 32.00, NULL, 106.526685, 29.602544, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (8, 1591578818999, 1, '已取消', 'hh', '18223170162', '新牌坊三路与新牌坊二路交叉口西北100米 新牌坊社区20-1', 'la', '2020-06-12 12:28:08', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 129.00, 76.00, -53.00, 8.00, 32.00, NULL, 106.526685, 29.602544, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (9, 1591578818999, 1, '已取消', '12', '18223170162', '石桥铺科园一路2号 大西洋国际大厦12', '12', '2020-06-12 14:19:55', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 91.01, 136.00, 45.00, 7.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (10, 1591578818999, 1, '已取消', '12', '18223170162', '石桥铺科园一路2号 大西洋国际大厦12', '12', '2020-06-12 15:10:00', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 91.01, 136.00, 45.00, 7.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (11, 1591578818999, 1, '已取消', '12', '18223170162', '石桥铺科园一路2号 大西洋国际大厦12', '12', '2020-06-12 15:15:38', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 91.01, 136.00, 45.00, 7.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (12, 1591578818999, 1, '已取消', '12', '18223170162', '石桥铺科园一路2号 大西洋国际大厦12', '12', '2020-06-12 16:01:02', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.01, 22.00, 9.00, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (13, 1591578818999, 1, '已取消', 'hh', '18223170162', '新牌坊三路与新牌坊二路交叉口西北100米 新牌坊社区20-1', 'la', '2020-06-12 16:02:54', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 130.00, 202.00, 72.00, 10.00, 32.00, NULL, 106.526685, 29.602544, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (14, 1591578818999, 1, '已取消', 'hh', '18223170162', '新牌坊三路与新牌坊二路交叉口西北100米 新牌坊社区20-1', 'la', '2020-06-12 16:07:27', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 130.00, 202.00, 72.00, 10.00, 32.00, NULL, 106.526685, 29.602544, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (15, 1591578818999, 1, '已取消', 'hh', '18223170162', '新牌坊三路与新牌坊二路交叉口西北100米 新牌坊社区20-1', 'la', '2020-06-12 16:10:53', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 130.00, 202.00, 72.00, 10.00, 32.00, NULL, 106.526685, 29.602544, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (16, 1591578818999, 24, '待付款', NULL, NULL, NULL, NULL, '2020-06-12 16:14:48', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.00, 22.00, 9.00, 1.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (17, 1591578818999, 10, '已取消', '张三', '18883944248', '石桥铺科园一路2号 大西洋国际大厦12-1', '公司', '2020-06-12 16:56:21', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 144.01, 140.00, -4.00, 10.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (18, 1591268241883, 5, '待付款', '陈', '17754923091', '石桥铺科园一路2号 大西洋国际大厦12-5', 'gs', '2020-06-12 17:30:00', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 11.00, 13.00, 2.00, 1.00, 14.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (19, 1591268241883, 5, '待付款', '陈', '17754923091', '石桥铺科园一路2号 大西洋国际大厦12-5', 'gs', '2020-06-12 17:36:12', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 11.00, 13.00, 2.00, 1.00, 14.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (20, 1591268241883, 5, '待付款', '陈', '17754923091', '石桥铺科园一路2号 大西洋国际大厦12-5', 'gs', '2020-06-12 17:36:53', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 11.00, 13.00, 2.00, 1.00, 14.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (21, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 18:01:12', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (22, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 18:04:14', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (23, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 18:09:32', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (24, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 18:10:03', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (25, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 18:12:23', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (26, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 18:15:06', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (27, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 18:20:33', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (28, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 18:21:41', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (29, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 18:23:41', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 252.01, 502.00, 250.00, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (30, 1591264971747, 93, '已取消', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 18:28:21', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 503.00, 1003.00, 500.00, 2.00, 0.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (31, 1591264971747, 93, '已取消', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 18:28:23', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 503.00, 1003.00, 500.00, 2.00, 32.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (32, 1591776244703, 93, '已取消', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 18:29:55', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.51, 1.00, -12.50, 1.00, 8.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (33, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 18:30:57', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 252.01, 502.00, 250.00, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (34, 1591776244703, 93, '已取消', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 18:34:09', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.51, 1.00, -12.50, 1.00, 8.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (35, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 18:38:08', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 251.01, 501.00, 250.00, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (39, 1591776244703, 93, '已取消', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 18:53:06', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.51, 1.00, -12.50, 1.00, 8.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (40, 1591776244703, 93, '已取消', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 18:53:06', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.51, 1.00, -12.50, 1.00, 8.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (41, 1591776244703, 93, '已取消', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 18:55:49', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.51, 1.00, -12.50, 1.00, 8.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (44, 1591264971747, 81, '待付款', '啧啧啧', '18725906151', '渝州路27-29号 华宇名都城18-4', 'ho', '2020-06-12 19:03:07', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 3.31, 3.20, -0.10, 1.00, 8.00, NULL, 106.484868, 29.534478, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (45, 1591776244703, 27, '待付款', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 19:03:12', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.51, 1.00, -12.50, 1.00, 8.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (46, 1591578818999, 10, '已取消', '张三', '18883944248', '石桥铺科园一路2号 大西洋国际大厦12-1', '公司', '2020-06-12 19:03:30', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 35.01, 24.00, -11.00, 2.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (47, 1591776244703, 27, '待付款', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 19:08:56', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.51, 1.00, -12.50, 1.00, 8.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (48, 1591776244703, 27, '待付款', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 19:16:13', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 27.01, 2.00, 0.00, 2.00, 8.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (49, 1591776244703, 27, '待付款', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 19:21:19', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 27.00, 2.00, 0.00, 2.00, 0.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (50, 1591776244703, 27, '待付款', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 19:24:08', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.51, 1.00, 0.00, 1.00, 8.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (51, 1591578818999, 27, '待付款', '柏亮', '18166335013', '石桥铺科园一路2号 大西洋国际大厦12-1', '家', '2020-06-12 19:26:29', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 9528.00, 9528.00, 0.00, 1.00, 32.00, NULL, 106.484756, 29.53199, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (52, 1591264971747, 62, '待付款', NULL, NULL, NULL, NULL, '2020-06-12 19:27:26', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 3.50, 4.00, 0.50, 1.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (53, 1591264971747, 27, '待付款', '柏亮', '18166335013', '石桥铺科园一路2号 大西洋国际大厦12-1', '家', '2020-06-12 19:29:56', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 252.00, 502.00, 250.00, 1.00, 32.00, NULL, 106.484756, 29.53199, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (54, 1591348173752, 1, '已取消', 'hh', '18223170162', '新牌坊三路与新牌坊二路交叉口西北100米 新牌坊社区20-1', 'la', '2020-06-12 19:37:32', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 11.00, 13.00, 2.00, 1.00, 32.00, NULL, 106.526685, 29.602544, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (55, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 19:41:57', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '123', 251.01, 501.00, 250.00, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (56, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-12 19:42:52', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 48.31, 91.00, 42.70, 7.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (57, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 19:43:18', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 252.01, 502.00, 250.00, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (58, 1591776244703, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 19:48:57', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.50, 1.00, -12.50, 1.00, 32.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (59, 1591264971747, 27, '待付款', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 19:51:20', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 251.00, 501.00, 250.00, 1.00, 32.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (60, 1591578818999, 10, '已取消', '张三', '18883944248', '石桥铺科园一路2号 大西洋国际大厦12-1', '公司', '2020-06-12 19:53:43', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 92.01, 50.00, -42.00, 5.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (61, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-12 19:57:41', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 82.81, 156.00, 73.20, 12.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (62, 1591264971747, 27, '待付款', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 20:02:30', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 251.00, 501.00, 250.00, 1.00, 0.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (63, 1591264971747, 27, '待付款', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 20:03:33', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 251.00, 501.00, 250.00, 1.00, 32.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (64, 1591264971747, 9, '待付款', NULL, NULL, NULL, NULL, '2020-06-12 20:03:45', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 503.00, 1003.00, 500.00, 2.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (65, 1591264971747, 9, '待付款', 'quincey', '18875150682', '石桥铺科园一路2号 大西洋国际大厦11-1', '12', '2020-06-12 20:07:57', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 251.01, 501.00, 250.00, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (66, 1591776244703, 6, '待付款', '柏亮', '15172359843', '红枫路9号 首创十方界12-1', 'bl', '2020-06-12 20:14:29', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.51, 1.00, 0.00, 1.00, 8.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (67, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 20:16:14', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (68, 1591878771513, 1, '已取消', 'hh', '18223170162', '新牌坊三路与新牌坊二路交叉口西北100米 新牌坊社区20-1', 'la', '2020-06-12 20:25:59', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 11.00, 13.00, 2.00, 1.00, 0.00, NULL, 106.526685, 29.602544, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (69, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 20:26:47', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (70, 1591776244703, 27, '待付款', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 20:29:49', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.51, 1.00, 0.00, 1.00, 8.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (71, 1591776244703, 27, '待付款', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 20:35:23', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.51, 1.00, 0.00, 1.00, 8.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (72, 1591776244703, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 20:38:35', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.50, 1.00, 0.00, 1.00, 32.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (73, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 20:48:11', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (74, 1591776244703, 27, '待付款', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 20:54:05', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.51, 1.00, 0.00, 1.00, 8.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (75, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 20:56:05', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (76, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 20:59:37', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.90, 13.00, 6.10, 1.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (77, 1591776244703, 27, '待付款', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 21:02:05', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.50, 1.00, 0.00, 1.00, 0.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (78, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 21:09:15', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (79, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 21:11:23', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (80, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-12 21:14:55', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 82.81, 156.00, 73.20, 12.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (81, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-12 21:21:56', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (82, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-12 21:24:35', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (83, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-12 21:26:35', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (84, 1591269151344, 10, '已取消', '张三', '18883944248', '石桥铺科园一路2号 大西洋国际大厦12-1', '公司', '2020-06-12 21:36:30', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.80, 26.00, 12.20, 2.00, 38.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (85, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-12 21:47:01', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (86, 1591269151344, 10, '已取消', '张三', '18883944248', '石桥铺科园一路2号 大西洋国际大厦12-1', '公司', '2020-06-12 21:48:54', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.80, 26.00, 12.20, 2.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (87, 1591269151344, 10, '已取消', '张三', '18883944248', '石桥铺科园一路2号 大西洋国际大厦12-1', '公司', '2020-06-12 21:48:54', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.80, 26.00, 12.20, 2.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (88, 1591776244703, 27, '待付款', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 22:18:16', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.50, 1.00, 0.00, 1.00, 12.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (89, 1591776244703, 27, '待付款', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-12 22:22:50', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.50, 1.00, 0.00, 1.00, 12.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (90, 1591776244703, 99, '待付款', NULL, NULL, NULL, NULL, '2020-06-12 22:43:32', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.50, 1.00, 0.00, 1.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (91, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-13 08:45:55', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 82.81, 156.00, 73.20, 12.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (92, 1591264971747, 12, '待付款', '田宝山', '15923964455', '石桥铺科园一路2号 大西洋国际大厦带西洋', '啊啊', '2020-06-13 08:54:13', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '用力点', 1509.01, 3009.00, 1500.00, 6.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (93, 1591264971747, 1, '已取消', '12', '18223170162', '石桥铺科园一路2号 大西洋国际大厦12', '12', '2020-06-13 09:11:49', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.61, 6.40, -0.20, 2.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (94, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-13 09:14:16', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 82.81, 156.00, 73.20, 12.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (95, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-13 09:22:23', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 82.81, 156.00, 73.20, 12.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (96, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 09:50:41', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (97, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 09:52:45', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 252.01, 502.00, 250.00, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (98, 1591268241883, 7, '待付款', NULL, NULL, NULL, NULL, '2020-06-13 11:34:06', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 2.00, 124.00, 122.00, 1.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (99, 1591268241883, 1, '已取消', 'hh', '18223170162', '新牌坊三路与新牌坊二路交叉口西北100米 新牌坊社区20-1', 'la', '2020-06-13 14:14:14', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 22.00, 26.00, 4.00, 2.00, 32.00, NULL, 106.526685, 29.602544, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (100, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 14:21:57', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 156.01, 256.00, 100.00, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (101, 1591264971747, 9, '代付款', NULL, NULL, '石桥铺科园一路2号 大西洋国际大厦11-1', '12', '2020-06-13 14:22:00', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 16.81, 22.60, 5.80, 4.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (102, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 14:23:18', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 156.01, 256.00, 100.00, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (103, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 14:24:04', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 34.01, 51.00, 17.00, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (104, 1591264971747, 9, '代付款', NULL, NULL, '石桥铺科园一路2号 大西洋国际大厦11-1', '12', '2020-06-13 14:24:07', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 16.81, 22.60, 5.80, 4.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (105, 1591264971747, 9, '代付款', NULL, NULL, '石桥铺科园一路2号 大西洋国际大厦11-1', '12', '2020-06-13 14:25:25', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 16.81, 22.60, 5.80, 4.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (106, 1591264971747, 9, '待付款', 'quincey', '18875150682', '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 14:28:03', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 23.70, 35.60, 11.90, 5.00, 0.00, NULL, 106.474473, 29.537153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (107, 1591264971747, 9, '待付款', 'quincey', '18875150682', '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 14:29:49', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 23.70, 35.60, 11.90, 5.00, 0.00, NULL, 106.474473, 29.537153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (109, 1591264971747, 9, '待付款', 'quincey', '18875150682', '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 14:43:32', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 23.70, 35.60, 11.90, 5.00, 0.00, NULL, 106.474473, 29.537153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (110, 1591264971747, 1, '已取消', '12', '18223170162', '石桥铺科园一路2号 大西洋国际大厦12', '12', '2020-06-13 14:44:25', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.61, 6.40, -0.20, 2.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (111, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 14:52:03', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 3.31, 3.20, -0.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (112, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 14:54:02', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 34.01, 51.00, 17.00, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (113, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 14:55:24', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 3.31, 3.20, -0.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (114, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 14:56:06', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 3.31, 3.20, -0.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (115, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 14:56:45', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 3.31, 3.20, -0.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (116, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 14:57:08', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 23.70, 35.60, 11.90, 5.00, 0.00, NULL, 106.474473, 29.537153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (117, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 15:02:06', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 23.70, 35.60, 11.90, 5.00, 0.00, NULL, 106.474473, 29.537153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (118, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 15:02:45', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 3.31, 3.20, -0.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (119, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 15:03:12', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 3.31, 3.20, -0.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (120, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 15:05:44', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 23.70, 35.60, 11.90, 5.00, 0.00, NULL, 106.474473, 29.537153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (121, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 15:07:50', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 34.01, 51.00, 17.00, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (122, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 15:18:05', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 34.00, 51.00, 17.00, 1.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (123, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 15:21:33', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.60, 6.40, -0.20, 2.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (124, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 15:22:46', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 40.60, 57.40, 16.80, 3.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (125, 1591268241883, 5, '待付款', '陈', '17754923091', '石桥铺科园一路2号 大西洋国际大厦12-5', 'gs', '2020-06-13 15:28:09', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.00, 372.00, 366.00, 3.00, 16.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (126, 1591268241883, 5, '待付款', '陈', '17754923091', '石桥铺科园一路2号 大西洋国际大厦12-5', 'gs', '2020-06-13 15:28:26', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.00, 372.00, 366.00, 3.00, 16.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (127, 1591268241883, 5, '待付款', '陈', '17754923091', '石桥铺科园一路2号 大西洋国际大厦12-5', 'gs', '2020-06-13 15:28:37', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.00, 372.00, 366.00, 3.00, 16.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (128, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 15:33:12', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 23.70, 35.60, 11.90, 5.00, 0.00, NULL, 106.474473, 29.537153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (129, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 15:35:04', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 23.70, 35.60, 11.90, 5.00, 0.00, NULL, 106.474473, 29.537153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (130, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 15:37:59', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.90, 13.00, 6.10, 1.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (131, 1591264971747, 9, '待付款', 'quincey', '18875150682', '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 15:37:50', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 23.70, 35.60, 11.90, 5.00, 0.00, NULL, 106.474473, 29.537153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (132, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 15:50:11', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 3.30, 3.20, -0.10, 1.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (133, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 15:52:39', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.90, 13.00, 6.10, 1.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (134, 1591268241883, 5, '待付款', '1', '17754923095', '南坪南城大道协信星光2栋2楼(星光时代车库旁) 厚爱主题酒店12-12', '25', '2020-06-13 16:07:32', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.00, 372.00, 366.00, 3.00, 34.00, NULL, 106.57212, 29.521141, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (135, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 16:08:38', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 23.70, 35.60, 11.90, 5.00, 0.00, NULL, 106.474473, 29.537153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (136, 1591268241883, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 16:10:29', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 2.00, 124.00, 122.00, 1.00, 0.00, NULL, 106.474473, 29.537153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (137, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 16:11:35', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 23.70, 35.60, 11.90, 5.00, 0.00, NULL, 106.474473, 29.537153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (138, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 16:12:38', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 3.50, 4.00, 0.50, 1.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (139, 1591264971747, 9, '待付款', 'quincey', '18875150682', '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 16:17:59', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.90, 13.00, 6.10, 1.00, 0.00, NULL, 106.474473, 29.537153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (140, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 16:23:28', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.90, 13.00, 6.10, 1.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (141, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 16:26:55', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 3.30, 3.20, -0.10, 1.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (145, 1591268241883, 5, '待付款', '1', '17754923095', '南坪南城大道协信星光2栋2楼(星光时代车库旁) 厚爱主题酒店12-12', '25', '2020-06-13 16:32:58', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.00, 372.00, 366.00, 3.00, 34.00, NULL, 106.57212, 29.521141, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (146, 1591268241883, 5, '待付款', '1', '17754923095', '南坪南城大道协信星光2栋2楼(星光时代车库旁) 厚爱主题酒店12-12', '25', '2020-06-13 16:34:46', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.00, 372.00, 366.00, 3.00, 34.00, NULL, 106.57212, 29.521141, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (147, 1591268241883, 5, '待付款', '1', '17754923095', '南坪南城大道协信星光2栋2楼(星光时代车库旁) 厚爱主题酒店12-12', '25', '2020-06-13 16:35:55', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.00, 372.00, 366.00, 3.00, 34.00, NULL, 106.57212, 29.521141, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (148, 1591268241883, 5, '待付款', '1', '17754923095', '南坪南城大道协信星光2栋2楼(星光时代车库旁) 厚爱主题酒店12-12', '25', '2020-06-13 16:36:48', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.00, 372.00, 366.00, 3.00, 34.00, NULL, 106.57212, 29.521141, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (149, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 16:50:38', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.90, 13.00, 6.10, 1.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (150, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 16:54:06', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 6.90, 13.00, 6.10, 1.00, 0.00, NULL, 106.474473, 29.537153, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (151, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 16:58:52', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.90, 13.00, 6.10, 1.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (152, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 16:59:24', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 10.20, 16.20, 6.00, 2.00, 10.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (153, 1591264971747, 9, '代付款', NULL, NULL, '雨林商都8层 重庆井边亭商务酒店(雨林商都店)7-2', '12', '2020-06-13 17:01:00', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 17.10, 29.20, 12.10, 3.00, 10.00, NULL, 106.482292, 29.529567, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (154, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 17:02:21', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 17.10, 29.20, 12.10, 3.00, 10.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (155, 1591348173752, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 17:12:41', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 11.01, 13.00, 2.00, 1.00, 8.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (156, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-13 17:15:34', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 30.20, 39.00, 18.30, 3.00, 9.50, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (157, 1591264971747, 9, '代付款', NULL, NULL, '石桥铺科园一路2号 大西洋国际大厦11-1', '12', '2020-06-13 17:18:32', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 6.60, 6.40, -0.20, 2.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (158, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 17:20:51', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 6.60, 6.40, -0.20, 2.00, 10.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (159, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 17:21:58', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.90, 13.00, 6.10, 1.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (160, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 17:28:27', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.90, 13.00, 6.10, 1.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (161, 1591264971747, 9, '代付款', 'quincey', '18875150682', '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 17:32:56', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 10.20, 16.20, 6.00, 2.00, 10.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (162, 1591348173752, 9, '代付款', 'quincey', '18875150682', '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 17:34:46', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 11.01, 13.00, 2.00, 1.00, 8.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (163, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 17:36:30', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.90, 13.00, 6.10, 1.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (164, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 17:37:28', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.90, 13.00, 6.10, 1.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (165, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 17:37:56', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 3.30, 3.20, -0.10, 1.00, 10.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (166, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 17:40:08', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 3.30, 3.20, -0.10, 1.00, 10.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (167, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-13 17:43:49', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 30.20, 39.00, 18.30, 3.00, 9.50, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (168, 1591264971747, 9, '待付款', 'quincey', '18875150682', '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 17:45:41', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 3.30, 3.20, -0.10, 1.00, 0.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (169, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 17:47:35', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.90, 13.00, 6.10, 1.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (170, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-13 17:49:01', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 30.20, 39.00, 18.30, 3.00, 9.50, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (171, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-13 17:50:16', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 30.20, 39.00, 18.30, 3.00, 9.50, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (172, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 17:55:21', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.90, 13.00, 6.10, 1.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (173, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-13 17:56:27', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 30.20, 39.00, 18.30, 3.00, 9.50, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (174, 1591269151344, 10, '待发货', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-13 17:58:28', '2020-06-13 18:13:22', '微信支付', 0.00, 0.00, NULL, NULL, NULL, '', 30.20, 39.00, 18.30, 3.00, 9.50, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (175, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 18:00:40', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.90, 13.00, 6.10, 1.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (176, 1591269151344, 10, '待发货', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-13 18:01:25', '2020-06-13 18:15:59', '微信支付', 0.00, 0.00, NULL, NULL, NULL, '', 30.20, 39.00, 18.30, 3.00, 9.50, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (177, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 18:01:57', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.90, 13.00, 6.10, 1.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (178, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-13 18:03:07', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 3.50, 4.00, 0.50, 1.00, 10.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (179, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-13 18:04:33', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 3.30, 3.20, -0.10, 1.00, 10.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (180, 1591269151344, 10, '待发货', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-13 18:08:07', '2020-06-13 18:12:38', '微信支付', 0.00, 0.00, NULL, NULL, NULL, '', 30.20, 39.00, 18.30, 3.00, 9.50, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (181, 1591269151344, 10, '待发货', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-13 18:09:54', '2020-06-13 18:14:23', '微信支付', 0.00, 0.00, NULL, NULL, NULL, '', 30.20, 39.00, 18.30, 3.00, 9.50, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (182, 1591269151344, 10, '待发货', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-13 18:20:48', '2020-06-13 18:21:44', '微信支付', 0.00, 0.00, NULL, NULL, NULL, '', 30.20, 39.00, 18.30, 3.00, 9.50, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (183, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-14 10:04:03', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 30.20, 39.00, 18.30, 3.00, 9.50, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (184, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-14 10:07:47', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 30.20, 39.00, 18.30, 3.00, 9.50, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (185, 1591269151344, 10, '待发货', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-14 10:09:21', '2020-06-14 11:51:45', '微信支付', 0.00, 0.00, NULL, NULL, NULL, '', 30.20, 39.00, 18.30, 3.00, 9.50, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (188, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 11:09:42', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 236.01, 308.00, 72.00, 11.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (189, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-14 11:22:38', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 28.70, 39.00, 18.30, 3.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (190, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-14 11:25:46', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 28.70, 39.00, 18.30, 3.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (210, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 14:17:23', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 19.01, 21.00, 2.00, 1.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (211, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 14:22:34', '2020-06-14 14:23:57', NULL, 0.00, 0.00, NULL, NULL, NULL, '', 38.01, 42.00, 4.00, 2.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (212, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 14:25:05', '2020-06-14 14:30:11', NULL, 0.00, 0.00, NULL, NULL, NULL, '', 38.01, 42.00, 4.00, 2.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (213, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 14:30:20', '2020-06-14 14:31:01', NULL, 0.00, 0.00, NULL, NULL, NULL, '', 38.01, 42.00, 4.00, 2.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (214, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 14:31:21', '2020-06-14 14:43:01', NULL, 0.00, 0.00, NULL, NULL, NULL, '', 38.01, 42.00, 4.00, 2.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (215, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-14 15:12:28', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (216, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-14 15:16:10', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (217, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-14 15:18:15', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (218, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 15:19:15', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 16.01, 21.00, 5.00, 1.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (219, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-14 15:35:59', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 3.51, 4.00, 0.50, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (220, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-14 15:43:40', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 251.01, 501.00, 250.00, 1.00, 8.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (221, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-14 15:49:29', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 251.01, 501.00, 250.00, 1.00, 8.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (222, 1591264971747, 9, '待付款', 'quincey', '18875150682', '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-14 15:51:04', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 10.21, 16.20, 6.00, 2.00, 8.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (223, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-14 15:55:22', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (224, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 15:56:53', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 16.01, 21.00, 5.00, 1.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (225, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-14 15:57:46', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (226, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-14 16:00:18', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (227, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-14 16:00:55', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (228, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 16:06:18', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 32.01, 42.00, 10.00, 2.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (229, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 16:23:36', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 32.00, 42.00, 10.00, 2.00, 0.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (230, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 16:27:07', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 20.01, 21.00, 1.00, 1.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (231, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 16:36:25', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 36.01, 42.00, 6.00, 2.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (232, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 16:52:20', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 36.01, 42.00, 6.00, 2.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (233, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-14 16:57:11', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (234, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-14 17:11:00', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (235, 1591878771520, 89, '待付款', 'zz', '16301011012', '石桥铺科园一路2号 大西洋国际大厦11-2', '', '2020-06-14 17:10:49', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 220.00, 287.00, 67.00, 10.00, 30.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (236, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 17:53:52', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 38.00, 42.00, 4.00, 2.00, 0.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (237, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 17:59:36', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 38.01, 42.00, 4.00, 2.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (238, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 18:02:04', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 57.01, 63.00, 6.00, 3.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (239, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 18:07:24', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 57.01, 63.00, 6.00, 3.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (240, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 18:12:29', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 77.01, 85.00, 8.00, 4.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (241, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 18:13:36', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 58.01, 64.00, 6.00, 3.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (242, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-14 18:17:31', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (243, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-14 18:21:14', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (244, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 18:21:18', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 58.00, 64.00, 6.00, 3.00, 0.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (245, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-14 18:22:02', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (246, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-14 18:27:08', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (247, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 18:31:02', '2020-06-14 19:05:48', NULL, 0.00, 0.00, NULL, NULL, NULL, '', 220.01, 287.00, 67.00, 10.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (248, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-14 18:34:53', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 3.51, 4.00, 0.50, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (249, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-14 18:37:04', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (250, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-14 18:40:10', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (251, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 18:40:53', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 440.00, 574.00, 134.00, 20.00, 0.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (252, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 18:41:43', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 660.01, 861.00, 201.00, 30.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (253, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 18:44:35', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 77.01, 85.00, 8.00, 4.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (254, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 19:13:37', '2020-06-14 19:14:25', NULL, 0.00, 0.00, NULL, NULL, NULL, '', 77.01, 85.00, 8.00, 4.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (255, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 19:53:00', '2020-06-14 19:53:56', NULL, 0.00, 0.00, NULL, NULL, NULL, '', 19.01, 21.00, 2.00, 1.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (256, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 20:13:45', '2020-06-14 20:15:37', NULL, 0.00, 0.00, NULL, NULL, NULL, '', 19.01, 21.00, 2.00, 1.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (257, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 21:05:47', '2020-06-14 21:06:50', NULL, 0.00, 0.00, NULL, NULL, NULL, '', 16.01, 21.00, 5.00, 1.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (258, 1591878771520, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 21:11:33', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 20.01, 22.00, 2.00, 1.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (259, 1591878771518, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 21:21:40', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 15.01, 19.00, 4.00, 1.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (260, 1591878771518, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 21:30:37', '2020-06-14 21:31:32', NULL, 0.00, 0.00, NULL, NULL, NULL, '', 30.01, 38.00, 8.00, 2.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (261, 1591878771518, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 21:33:37', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 15.01, 19.00, 4.00, 1.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (262, 1591878771518, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-14 21:41:06', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 27.01, 52.00, 25.00, 2.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (263, 1591348173752, 14, '待付款', NULL, NULL, NULL, NULL, '2020-06-14 22:03:00', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 11.00, 13.00, 2.00, 1.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (264, 1591264971747, 14, '待付款', '1', '18182282703', '谢家湾正街1号 重庆阿哆娜假日酒店(医科大学附一院袁家岗轻轨站店)1', '1', '2020-06-14 22:05:00', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 3.30, 3.20, -0.10, 1.00, 16.00, NULL, 106.514093, 29.528622, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (265, 1591268241883, 14, '待付款', '1', '18182282703', '谢家湾正街1号 重庆阿哆娜假日酒店(医科大学附一院袁家岗轻轨站店)1', '1', '2020-06-14 22:55:23', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 2.00, 124.00, 122.00, 1.00, 16.00, NULL, 106.514093, 29.528622, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (266, 1591776244703, 27, '待付款', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-15 16:06:39', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.51, 1.00, 0.00, 1.00, 8.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (267, 1591776244703, 27, '待付款', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-15 16:06:45', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.51, 1.00, 0.00, 1.00, 8.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (268, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-15 16:16:26', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (269, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-15 16:25:52', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (270, 1591776244703, 27, '待付款', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-15 16:30:26', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.51, 1.00, 0.00, 1.00, 8.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (271, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-15 16:38:53', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (272, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-15 16:51:23', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (273, 1591268241883, 5, '待付款', '1', '17754923095', '南坪南城大道协信星光2栋2楼(星光时代车库旁) 厚爱主题酒店12-12', '25', '2020-06-15 16:57:59', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.00, 372.00, 366.00, 3.00, 0.00, NULL, 106.57212, 29.521141, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (274, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-15 17:04:45', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 27.61, 52.00, 24.40, 4.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (275, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-15 17:06:24', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.21, 12.80, -0.40, 4.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (276, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 17:08:27', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 28.70, 39.00, 18.30, 3.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (277, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 17:08:44', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 28.70, 39.00, 18.30, 3.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (278, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 17:09:56', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (279, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 17:10:34', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (280, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-15 17:10:41', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (281, 1591268241883, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-15 17:11:32', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 2.00, 124.00, 122.00, 1.00, 14.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (282, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 17:13:28', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (283, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-15 17:14:31', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 3.31, 3.20, -0.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (284, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 17:16:36', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (285, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-15 17:18:20', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 10.91, 16.00, 5.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (286, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 17:20:09', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (287, 1591268241883, 5, '待付款', '1', '17754923095', '南坪南城大道协信星光2栋2楼(星光时代车库旁) 厚爱主题酒店12-12', '25', '2020-06-15 17:20:44', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.00, 372.00, 366.00, 3.00, 32.00, NULL, 106.57212, 29.521141, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (288, 1591268241883, 5, '已付款', '1', '17754923095', '南坪南城大道协信星光2栋2楼(星光时代车库旁) 厚爱主题酒店12-12', '25', '2020-06-15 17:24:39', '2020-06-15 17:24:57', '支付宝', 0.00, 0.00, NULL, NULL, NULL, '', 0.01, 372.00, 366.00, 3.00, 32.00, NULL, 106.57212, 29.521141, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (289, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-15 17:27:36', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (290, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 17:29:51', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (291, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-15 17:30:27', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '辣一点', 6.91, 13.00, 6.10, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (292, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 17:41:33', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (293, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 17:47:13', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (294, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 19:03:08', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (295, 1591264971747, 6, '待发货', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-15 19:17:29', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 156.01, 256.00, 100.00, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (296, 1591878771518, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-15 19:18:37', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 19.01, 21.00, 2.00, 1.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (297, 1591269151344, 10, '待发货', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 19:30:54', '2020-06-15 20:05:48', '微信支付', 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (298, 1592210502025, 101, '待付款', NULL, NULL, NULL, NULL, '2020-06-15 19:36:21', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 23.90, 50.00, 26.10, 2.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (299, 1592210502025, 100, '待付款', NULL, NULL, NULL, NULL, '2020-06-15 19:36:50', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 47.80, 100.00, 52.20, 4.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (300, 1592210502025, 86, '代付款', '木木', '15077777777', '西郊路3号 正升·百老汇名品街11', '测试', '2020-06-15 19:36:54', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 23.90, 50.00, 26.10, 2.00, 0.00, NULL, 106.515266, 29.508113, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (301, 1591878771518, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-15 19:36:51', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 19.01, 21.00, 2.00, 1.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (302, 1591264971747, 9, '待付款', 'quincey', '18875150682', '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-15 19:37:58', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.71, 20.20, 6.50, 3.00, 8.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (303, 1591578818999, 86, '代付款', '木木', '15077777777', '科园一路3号 航天C座11', '测试', '2020-06-15 19:38:42', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 78.01, 114.00, 36.00, 6.00, 8.00, NULL, 106.48563, 29.531708, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (304, 1592210502025, 100, '待付款', '邓际新', '13101261802', '杨家坪西郊支路18号(动物园老大门旁) 联发·嘉园13栋2单元3-3', '', '2020-06-15 19:40:13', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 47.80, 100.00, 52.20, 4.00, 16.00, NULL, 106.509604, 29.506395, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (305, 1591776244703, 27, '待付款', '柏亮', '18166335013', '红枫路9号 首创十方界7-8-12', '家', '2020-06-15 19:41:33', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.51, 1.00, 0.00, 1.00, 8.00, NULL, 106.536925, 29.604095, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (306, 1591878771518, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-15 19:42:29', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 19.01, 21.00, 2.00, 1.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (307, 1591269151344, 10, '待发货', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 19:46:44', '2020-06-15 20:01:08', '微信支付', 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (308, 1591578818999, 86, '代付款', '木木', '15077777777', '西郊路3号 正升·百老汇名品街11', '测试', '2020-06-15 19:51:12', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 78.00, 114.00, 36.00, 6.00, 0.00, NULL, 106.515266, 29.508113, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (309, 1591878771518, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-15 19:51:47', '2020-06-15 19:52:45', NULL, 0.00, 0.00, NULL, NULL, NULL, '', 19.01, 21.00, 2.00, 1.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (310, 1591269151344, 10, '待发货', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 19:55:16', '2020-06-15 19:55:32', '微信支付', 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (311, 1591578818999, 86, '代付款', '木木', '15077777777', '西郊路3号 正升·百老汇名品街11', '测试', '2020-06-15 19:57:51', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 78.00, 114.00, 36.00, 6.00, 0.00, NULL, 106.515266, 29.508113, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (312, 1591578818999, 86, '代付款', '木木', '15077777777', '西郊路3号 正升·百老汇名品街11', '测试', '2020-06-15 19:58:27', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 78.00, 114.00, 36.00, 6.00, 14.00, NULL, 106.515266, 29.508113, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (313, 1591878771513, 42, '待付款', '刘国彬', '13223348730', '渝州路27-29号 华宇名都城1-2-1', '刚收', '2020-06-15 20:01:22', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 33.01, 39.00, 6.00, 3.00, 8.00, NULL, 106.484868, 29.534478, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (314, 1591878771513, 42, '待付款', '刘国彬', '13223348730', '渝州路27-29号 华宇名都城1-2-1', '刚收', '2020-06-15 20:01:23', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 33.01, 39.00, 6.00, 3.00, 8.00, NULL, 106.484868, 29.534478, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (315, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 20:01:37', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (316, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 20:05:44', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (317, 1591269151344, 10, '待发货', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 20:09:50', '2020-06-15 20:14:10', '微信支付', 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (318, 1591269151344, 10, '待发货', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 20:13:15', '2020-06-15 20:13:31', '微信支付', 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (319, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 20:21:10', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (320, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 20:24:54', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (321, 1591269151344, 10, '待发货', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 20:28:23', '2020-06-15 20:28:37', '微信支付', 0.00, 0.00, NULL, NULL, NULL, '', 35.60, 52.00, 24.40, 4.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (322, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-15 20:29:54', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (323, 1591264971747, 25, '代付款', '三十功名尘与土', '18919560873', '堂子胡同9号西单新一代商城F1 名品女苑12-9', '撒', '2020-06-15 20:30:49', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 116.375325, 39.911689, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (324, 1591264971747, 25, '代付款', '三十功名尘与土', '18919560873', '堂子胡同9号西单新一代商城F1 名品女苑12-9', '撒', '2020-06-15 20:31:17', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 116.375325, 39.911689, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (325, 1591264971747, 25, '代付款', '三十功名尘与土', '18919560873', '堂子胡同9号西单新一代商城F1 名品女苑12-9', '撒', '2020-06-15 20:32:31', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 116.375325, 39.911689, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (326, 1591264971747, 25, '代付款', '三十功名尘与土', '18919560873', '堂子胡同9号西单新一代商城F1 名品女苑12-9', '撒', '2020-06-15 20:32:56', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 116.375325, 39.911689, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (327, 1591264971747, 25, '代付款', '三十功名尘与土', '18919560873', '堂子胡同9号西单新一代商城F1 名品女苑12-9', '撒', '2020-06-15 20:33:34', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 116.375325, 39.911689, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (328, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-15 20:36:32', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (329, 1591264971747, 25, '代付款', '三十功名尘与土', '18919560873', '堂子胡同9号西单新一代商城F1 名品女苑12-9', '撒', '2020-06-15 20:36:44', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 116.375325, 39.911689, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (330, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 20:36:46', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 42.50, 65.00, 30.50, 5.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (331, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-15 20:37:59', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (332, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-15 20:38:36', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (333, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-15 20:42:19', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (334, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-15 20:42:21', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (335, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 20:42:43', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 42.50, 65.00, 30.50, 5.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (336, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-15 20:43:06', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (337, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-15 20:45:49', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (338, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-15 20:47:46', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (339, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-15 20:48:46', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (340, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-15 20:51:27', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (341, 1591269151344, 10, '已取消', '张三', '18883944248', '石桥铺科园一路2号 大西洋国际大厦12-1', '公司', '2020-06-15 20:53:46', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 72.50, 65.00, 30.50, 5.00, 38.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (342, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-15 21:00:17', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (343, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-15 21:13:23', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 42.50, 65.00, 30.50, 5.00, 8.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (344, 1591878771518, 84, '待发货', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-15 21:31:54', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 19.01, 21.00, 2.00, 1.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (345, 1591878771518, 84, '待付款', '王小锤2', '16301011013', '民权路17号5层 希岸酒店(重庆解放碑步行街中心店)5-3', '家', '2020-06-15 21:50:29', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 19.01, 21.00, 2.00, 1.00, 8.00, NULL, 106.576582, 29.556282, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (346, 1591264971747, 9, '待付款', 'quincey', '18875150682', '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-15 23:57:13', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.70, 20.20, 6.50, 3.00, 12.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (347, 1591264971747, 104, '待付款', NULL, NULL, NULL, NULL, '2020-06-15 23:59:58', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 41.40, 78.00, 36.60, 6.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (348, 1591264971747, 104, '待发货', NULL, NULL, NULL, NULL, '2020-06-16 00:01:25', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.90, 13.00, 6.10, 1.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (349, 1591264971747, 25, '待付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-16 08:13:37', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.41, 13.60, 0.20, 4.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (350, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-16 08:16:56', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (351, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-16 08:20:25', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (352, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-16 08:20:25', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (353, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-16 08:24:50', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (354, 1591264971747, 9, '待付款', 'quincey', '18875150682', '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-16 08:48:35', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.71, 20.20, 6.50, 3.00, 8.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (355, 1591264971747, 6, '待付款', '柏亮', '15172359843', '石桥铺科园一路2号 大西洋国际大厦12-1', 'bl', '2020-06-16 16:24:31', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 3.51, 4.00, 0.50, 1.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (356, 1591268241883, 9, '待付款', 'quincey', '18875150682', '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-16 17:40:44', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 2.00, 124.00, 122.00, 1.00, 18.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (357, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-16 18:10:43', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (358, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-16 18:42:25', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (359, 1591264971747, 9, '待付款', 'quincey', '18875150682', '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-16 18:46:29', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.71, 20.20, 6.50, 3.00, 8.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (360, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-16 18:53:32', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (361, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-16 18:57:20', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (362, 1591264971747, 25, '代付款', '三十功名尘与土', '18919560873', '堂子胡同9号西单新一代商城F1 名品女苑12-9', '撒', '2020-06-16 18:57:28', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 116.375325, 39.911689, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (363, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-16 18:58:39', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (364, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-16 19:01:49', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (365, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-16 19:03:02', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (366, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-16 19:06:42', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (367, 1591878771513, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-16 20:06:44', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 11.01, 13.00, 2.00, 1.00, 8.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (368, 1591268241883, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-16 20:09:43', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 18.00, 20.00, 2.00, 0.00, 18.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (369, 1591268241883, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-16 20:34:48', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 18.00, 20.00, 2.00, 0.00, 0.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (370, 1591268241883, 5, '待付款', '1', '17754923095', '南坪南城大道协信星光2栋2楼(星光时代车库旁) 厚爱主题酒店12-12', '25', '2020-06-16 23:16:09', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.00, 372.00, 366.00, 3.00, 36.00, NULL, 106.57212, 29.521141, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (371, 1591268241883, 5, '待付款', '1', '17754923095', '南坪南城大道协信星光2栋2楼(星光时代车库旁) 厚爱主题酒店12-12', '25', '2020-06-16 23:16:09', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 6.00, 372.00, 366.00, 3.00, 36.00, NULL, 106.57212, 29.521141, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (372, 1591264971747, 25, '代付款', '山河社稷图', '18919560873', '石桥铺科园一路2号 大西洋国际大厦12-9', '撒', '2020-06-17 12:37:04', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.40, 13.60, 0.20, 4.00, 0.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (373, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-17 20:38:47', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 10.40, 17.00, 6.60, 2.00, 0.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (374, 1591578818999, 1, '已取消', 'hh', '18223170162', '新牌坊三路与新牌坊二路交叉口西北100米 新牌坊社区20-1', 'la', '2020-06-18 17:36:58', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 2.20, 224.00, 221.80, 2.00, 32.00, NULL, 106.526685, 29.602544, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (375, 1591268241883, 9, '代付款', NULL, NULL, NULL, NULL, '2020-06-18 17:46:26', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 2.00, 124.00, 122.00, 1.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (376, 1591268241883, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-18 17:48:38', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 2.00, 124.00, 122.00, 1.00, 0.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (377, 1591268241883, 9, '代付款', NULL, NULL, NULL, NULL, '2020-06-18 17:50:05', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 2.00, 124.00, 122.00, 1.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (378, 1591268241883, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-18 17:50:06', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 2.00, 124.00, 122.00, 1.00, 0.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (380, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-18 17:56:22', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 10.40, 17.00, 6.60, 2.00, 0.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (381, 1591264971747, 9, '待付款', 'quincey', '18875150682', '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-18 19:15:53', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 10.40, 17.00, 6.60, 2.00, 0.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (382, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-18 19:22:23', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 10.40, 17.00, 6.60, 2.00, 0.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (383, 1591268241883, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-20 18:09:32', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 2.00, 124.00, 122.00, 1.00, 0.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (384, 1591264971747, 9, '代付款', NULL, NULL, '富洲路8号(石小路与经纬大道交汇处) 富州新城11-1', '12', '2020-06-20 18:12:39', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, NULL, 13.70, 20.20, 6.50, 3.00, 0.00, NULL, 106.474473, 29.537153, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (385, 1591269151344, 10, '已取消', '张三', '18883944248', '行政中心1号楼巴南区政府大楼 巴南区政府大楼12-1', '公司', '2020-06-20 19:56:21', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 51.40, 78.00, 36.60, 6.00, 10.00, NULL, 106.540649, 29.402424, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (386, 1591264971747, 1, '已取消', '无刷你', '17346605396', '石桥铺科园一路2号 大西洋国际大厦12-01', '公司', '2020-06-21 00:31:08', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 13.50, 19.40, 5.90, 3.00, 16.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (387, 1591264971747, 12, '待付款', '田宝山', '15923964455', '石桥铺科园一路2号 大西洋国际大厦带西洋', '啊啊', '2020-06-21 13:29:31', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 1509.01, 3009.00, 1500.00, 6.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);
INSERT INTO `sg_order` VALUES (388, 1591264971747, 12, '待付款', '田宝山', '15923964455', '石桥铺科园一路2号 大西洋国际大厦带西洋', '啊啊', '2020-06-21 13:29:54', NULL, NULL, 0.00, 0.00, NULL, NULL, NULL, '', 1509.01, 3009.00, 1500.00, 6.00, 8.00, NULL, 106.484756, 29.53199, '023', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for shop_car
-- ----------------------------
DROP TABLE IF EXISTS `shop_car`;
CREATE TABLE `shop_car`  (
  `shop_car_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '购物车子的id',
  `user_id` bigint(0) NULL DEFAULT NULL COMMENT '用户id',
  `merchant_id` bigint(0) NULL DEFAULT NULL COMMENT '商户id',
  `count` int(0) NULL DEFAULT NULL COMMENT '购物车的数量',
  `goods_id` bigint(0) NULL DEFAULT NULL COMMENT '商品id',
  PRIMARY KEY (`shop_car_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 238 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of shop_car
-- ----------------------------
INSERT INTO `shop_car` VALUES (10, 42, 1591268241883, 2, 56);
INSERT INTO `shop_car` VALUES (12, 5, 1591268241883, 4, 56);
INSERT INTO `shop_car` VALUES (15, 27, 1591776244703, 1, 65);
INSERT INTO `shop_car` VALUES (16, NULL, 1591264971747, 2, 5);
INSERT INTO `shop_car` VALUES (17, NULL, 1591264971747, 3, 5);
INSERT INTO `shop_car` VALUES (18, NULL, 1591264971747, 3, 77);
INSERT INTO `shop_car` VALUES (19, NULL, 1591264971747, 2, 5);
INSERT INTO `shop_car` VALUES (20, NULL, 1591264971747, 1, 5);
INSERT INTO `shop_car` VALUES (21, NULL, 1591264971747, 0, 5);
INSERT INTO `shop_car` VALUES (22, NULL, 1591264971747, 1, 77);
INSERT INTO `shop_car` VALUES (23, NULL, 1591264971747, 0, 77);
INSERT INTO `shop_car` VALUES (24, NULL, 1591264971747, 1, 77);
INSERT INTO `shop_car` VALUES (25, NULL, 1591264971747, 2, 77);
INSERT INTO `shop_car` VALUES (26, NULL, 1591264971747, 3, 77);
INSERT INTO `shop_car` VALUES (27, NULL, 1591264971747, 1, 5);
INSERT INTO `shop_car` VALUES (28, NULL, 1591264971747, 2, 5);
INSERT INTO `shop_car` VALUES (29, NULL, 1591264971747, 3, 5);
INSERT INTO `shop_car` VALUES (30, NULL, 1591264971747, 4, 5);
INSERT INTO `shop_car` VALUES (31, NULL, 1591264971747, 5, 5);
INSERT INTO `shop_car` VALUES (32, 24, 1591268241883, 1, 56);
INSERT INTO `shop_car` VALUES (33, 24, 1591268241883, 3, 47);
INSERT INTO `shop_car` VALUES (34, 24, 1591268241883, 5, 57);
INSERT INTO `shop_car` VALUES (35, NULL, 1591264971747, 0, 5);
INSERT INTO `shop_car` VALUES (36, NULL, 1591264971747, 1, 77);
INSERT INTO `shop_car` VALUES (37, NULL, 1591264971747, 0, 77);
INSERT INTO `shop_car` VALUES (38, NULL, 1591264971747, 1, 5);
INSERT INTO `shop_car` VALUES (39, NULL, 1591264971747, 1, 77);
INSERT INTO `shop_car` VALUES (40, NULL, 1591264971747, 0, 5);
INSERT INTO `shop_car` VALUES (41, NULL, 1591264971747, 0, 77);
INSERT INTO `shop_car` VALUES (47, NULL, 1591264971747, 0, 5);
INSERT INTO `shop_car` VALUES (48, NULL, 1591264971747, 1, 77);
INSERT INTO `shop_car` VALUES (49, NULL, 1591264971747, 0, 77);
INSERT INTO `shop_car` VALUES (50, NULL, 1591264971747, 1, 5);
INSERT INTO `shop_car` VALUES (51, NULL, 1591264971747, 1, 77);
INSERT INTO `shop_car` VALUES (52, NULL, 1591268241883, 1, 56);
INSERT INTO `shop_car` VALUES (53, NULL, 1591268241883, 2, 56);
INSERT INTO `shop_car` VALUES (54, NULL, 1591268241883, 1, 56);
INSERT INTO `shop_car` VALUES (55, NULL, 1591268241883, 2, 56);
INSERT INTO `shop_car` VALUES (56, NULL, 1591268241883, 1, 56);
INSERT INTO `shop_car` VALUES (57, NULL, 1591268241883, 1, 57);
INSERT INTO `shop_car` VALUES (58, NULL, 1591268241883, 2, 57);
INSERT INTO `shop_car` VALUES (59, NULL, 1591268241883, 1, 47);
INSERT INTO `shop_car` VALUES (60, NULL, 1591264971747, 1, 77);
INSERT INTO `shop_car` VALUES (61, NULL, 1591264971747, 1, 5);
INSERT INTO `shop_car` VALUES (62, NULL, 1591264971747, 2, 5);
INSERT INTO `shop_car` VALUES (63, NULL, 1591264971747, 3, 5);
INSERT INTO `shop_car` VALUES (64, NULL, 1591264971747, 4, 5);
INSERT INTO `shop_car` VALUES (65, NULL, 1591264971747, 2, 5);
INSERT INTO `shop_car` VALUES (66, NULL, 1591264971747, 1, 2);
INSERT INTO `shop_car` VALUES (67, NULL, 1591264971747, 2, 2);
INSERT INTO `shop_car` VALUES (68, 27, 1591264971747, 2, 2);
INSERT INTO `shop_car` VALUES (69, NULL, 1591264971747, 1, 10);
INSERT INTO `shop_car` VALUES (70, NULL, 1591264971747, 1, 8);
INSERT INTO `shop_car` VALUES (71, NULL, 1591264971747, 3, 10);
INSERT INTO `shop_car` VALUES (72, NULL, 1591264971747, 2, 8);
INSERT INTO `shop_car` VALUES (73, NULL, 1591264971747, 2, 10);
INSERT INTO `shop_car` VALUES (74, 6, 1591264971747, 4, 2);
INSERT INTO `shop_car` VALUES (75, NULL, 1591264971747, 1, 10);
INSERT INTO `shop_car` VALUES (76, NULL, 1591264971747, 1, 2);
INSERT INTO `shop_car` VALUES (77, NULL, 1591264971747, 1, 66);
INSERT INTO `shop_car` VALUES (78, NULL, 1591264971747, 1, 8);
INSERT INTO `shop_car` VALUES (79, 6, 1591264971747, 2, 5);
INSERT INTO `shop_car` VALUES (80, 6, 1591264971747, 1, 5);
INSERT INTO `shop_car` VALUES (81, 6, 1591264971747, 0, 5);
INSERT INTO `shop_car` VALUES (82, 6, 1591264971747, 1, 5);
INSERT INTO `shop_car` VALUES (83, 6, 1591264971747, 1, 75);
INSERT INTO `shop_car` VALUES (84, 6, 1591264971747, 1, 72);
INSERT INTO `shop_car` VALUES (85, 6, 1591264971747, 1, 66);
INSERT INTO `shop_car` VALUES (87, NULL, 1591264971747, 1, 2);
INSERT INTO `shop_car` VALUES (101, 25, 1591268241883, 2, 56);
INSERT INTO `shop_car` VALUES (102, 25, 1591268241883, 2, 57);
INSERT INTO `shop_car` VALUES (103, 12, 1591264971747, 3, 73);
INSERT INTO `shop_car` VALUES (104, 12, 1591264971747, 3, 72);
INSERT INTO `shop_car` VALUES (105, 2, 1591268241883, 2, 56);
INSERT INTO `shop_car` VALUES (106, 13, 1591578818999, 0, 16);
INSERT INTO `shop_car` VALUES (107, 13, 1591578818999, 0, 22);
INSERT INTO `shop_car` VALUES (108, 13, 1591578818999, 0, 25);
INSERT INTO `shop_car` VALUES (109, 13, 1591578818999, 0, 27);
INSERT INTO `shop_car` VALUES (110, 13, 1591578818999, 0, 29);
INSERT INTO `shop_car` VALUES (111, 13, 1591578818999, 0, 31);
INSERT INTO `shop_car` VALUES (112, 13, 1591578818999, 0, 34);
INSERT INTO `shop_car` VALUES (113, 13, 1591578818999, 0, 32);
INSERT INTO `shop_car` VALUES (114, 25, 1591264971747, 1, 7);
INSERT INTO `shop_car` VALUES (115, 25, 1591264971747, 1, 8);
INSERT INTO `shop_car` VALUES (116, 25, 1591264971747, 1, 66);
INSERT INTO `shop_car` VALUES (117, 42, 1591264971747, 2, 2);
INSERT INTO `shop_car` VALUES (118, 42, 1591264971747, 1, 7);
INSERT INTO `shop_car` VALUES (119, 42, 1591264971747, 1, 8);
INSERT INTO `shop_car` VALUES (120, 42, 1591264971747, 1, 10);
INSERT INTO `shop_car` VALUES (121, 42, 1591264971747, 1, 66);
INSERT INTO `shop_car` VALUES (122, 93, 1591264971747, 1, 72);
INSERT INTO `shop_car` VALUES (123, 93, 1591264971747, 1, 73);
INSERT INTO `shop_car` VALUES (124, 25, 1591264971747, 1, 10);
INSERT INTO `shop_car` VALUES (125, 10, 1591269151344, 2, 15);
INSERT INTO `shop_car` VALUES (126, 10, 1591269151344, 2, 44);
INSERT INTO `shop_car` VALUES (127, 10, 1591269151344, 1, 11);
INSERT INTO `shop_car` VALUES (128, 6, 1591264971747, 4, 7);
INSERT INTO `shop_car` VALUES (129, 6, 1591264971747, 1, 8);
INSERT INTO `shop_car` VALUES (131, 9, 1591264971747, 1, 2);
INSERT INTO `shop_car` VALUES (132, 9, 1591264971747, 0, 7);
INSERT INTO `shop_car` VALUES (133, 9, 1591264971747, 1, 8);
INSERT INTO `shop_car` VALUES (134, 9, 1591264971747, 0, 10);
INSERT INTO `shop_car` VALUES (137, 1, 1591578818999, 1, 16);
INSERT INTO `shop_car` VALUES (138, 1, 1591578818999, 4, 22);
INSERT INTO `shop_car` VALUES (139, 1, 1591578818999, 3, 25);
INSERT INTO `shop_car` VALUES (140, 1, 1591578818999, 5, 26);
INSERT INTO `shop_car` VALUES (141, 1, 1591578818999, 3, 24);
INSERT INTO `shop_car` VALUES (142, 1, 1591578818999, 2, 30);
INSERT INTO `shop_car` VALUES (143, 24, 1591578818999, 1, 34);
INSERT INTO `shop_car` VALUES (144, 5, 1591268241883, 1, 47);
INSERT INTO `shop_car` VALUES (149, 27, 1591878771513, 1, 88);
INSERT INTO `shop_car` VALUES (150, 6, 1591264971747, 1, 73);
INSERT INTO `shop_car` VALUES (151, 93, 1591776244703, 1, 65);
INSERT INTO `shop_car` VALUES (152, 10, 1591578818999, 1, 16);
INSERT INTO `shop_car` VALUES (153, 10, 1591578818999, 3, 22);
INSERT INTO `shop_car` VALUES (154, 10, 1591578818999, 1, 25);
INSERT INTO `shop_car` VALUES (157, 27, 1591578818999, 1, 61);
INSERT INTO `shop_car` VALUES (158, 62, 1591264971747, 1, 7);
INSERT INTO `shop_car` VALUES (159, 62, 1591264971747, 1, 66);
INSERT INTO `shop_car` VALUES (160, 27, 1591264971747, 1, 73);
INSERT INTO `shop_car` VALUES (161, 1, 1591348173752, 1, 84);
INSERT INTO `shop_car` VALUES (162, 6, 1591776244703, 1, 65);
INSERT INTO `shop_car` VALUES (163, 27, 1591264971747, 1, 72);
INSERT INTO `shop_car` VALUES (164, 10, 1591578818999, 2, 27);
INSERT INTO `shop_car` VALUES (165, 9, 1591264971747, 1, 72);
INSERT INTO `shop_car` VALUES (166, 1, 1591878771513, 1, 88);
INSERT INTO `shop_car` VALUES (172, 99, 1591776244703, 1, 65);
INSERT INTO `shop_car` VALUES (174, 1, 1591264971747, 1, 7);
INSERT INTO `shop_car` VALUES (175, 1, 1591264971747, 1, 8);
INSERT INTO `shop_car` VALUES (176, 84, 1591693500276, 2, 68);
INSERT INTO `shop_car` VALUES (177, 89, 1591264971747, 1, 75);
INSERT INTO `shop_car` VALUES (178, 89, 1591693500276, 2, 68);
INSERT INTO `shop_car` VALUES (179, 25, 1591264971747, 0, 2);
INSERT INTO `shop_car` VALUES (180, 25, 1591348173752, 2, 84);
INSERT INTO `shop_car` VALUES (181, 84, 1591693500276, 3, 69);
INSERT INTO `shop_car` VALUES (182, 7, 1591268241883, 1, 56);
INSERT INTO `shop_car` VALUES (183, 1, 1591268241883, 2, 47);
INSERT INTO `shop_car` VALUES (184, 6, 1591264971747, 2, 74);
INSERT INTO `shop_car` VALUES (185, 6, 1591264971747, 1, 76);
INSERT INTO `shop_car` VALUES (186, 1, 1591264971747, 1, 18);
INSERT INTO `shop_car` VALUES (187, 1, 1591264971747, 1, 76);
INSERT INTO `shop_car` VALUES (188, 6, 1591264971747, 2, 18);
INSERT INTO `shop_car` VALUES (189, 6, NULL, NULL, NULL);
INSERT INTO `shop_car` VALUES (190, 6, 1591264971747, 1, 10);
INSERT INTO `shop_car` VALUES (191, 9, 1591348173752, 0, 84);
INSERT INTO `shop_car` VALUES (192, 9, 1591578818999, 0, 16);
INSERT INTO `shop_car` VALUES (193, 9, 1591578818999, 6, 25);
INSERT INTO `shop_car` VALUES (194, 9, 1591348173752, 0, 85);
INSERT INTO `shop_car` VALUES (195, 9, 1591348173752, 1, 86);
INSERT INTO `shop_car` VALUES (196, 9, 1591264971747, 1, 5);
INSERT INTO `shop_car` VALUES (201, 89, 1591268241883, 2, 47);
INSERT INTO `shop_car` VALUES (202, 89, 1591268241883, 2, 57);
INSERT INTO `shop_car` VALUES (203, 89, 1591264971747, 1, 5);
INSERT INTO `shop_car` VALUES (204, 89, 1591878771518, 2, 90);
INSERT INTO `shop_car` VALUES (205, 84, 1591878771518, 1, 90);
INSERT INTO `shop_car` VALUES (206, 84, 1591264971747, 2, 7);
INSERT INTO `shop_car` VALUES (207, 84, 1591878771518, 0, 92);
INSERT INTO `shop_car` VALUES (210, 89, 1591878771520, 1, 103);
INSERT INTO `shop_car` VALUES (217, 89, 1591878771520, 1, 95);
INSERT INTO `shop_car` VALUES (220, 84, 1591878771520, 1, 99);
INSERT INTO `shop_car` VALUES (221, 84, 1591878771518, 1, 94);
INSERT INTO `shop_car` VALUES (222, 14, 1591348173752, 1, 84);
INSERT INTO `shop_car` VALUES (223, 14, 1591264971747, 1, 5);
INSERT INTO `shop_car` VALUES (224, 14, 1591268241883, 1, 56);
INSERT INTO `shop_car` VALUES (225, 6, 1591268241883, 1, 56);
INSERT INTO `shop_car` VALUES (226, 86, 1592210502025, 1, 104);
INSERT INTO `shop_car` VALUES (227, 101, 1592210502025, 1, 104);
INSERT INTO `shop_car` VALUES (228, 100, 1592210502025, 2, 104);
INSERT INTO `shop_car` VALUES (229, 9, 1591264971747, 1, 66);
INSERT INTO `shop_car` VALUES (230, 42, 1591878771513, 2, 88);
INSERT INTO `shop_car` VALUES (231, 104, 1591264971747, 1, 2);
INSERT INTO `shop_car` VALUES (232, 8, 1591348173752, 2, 84);
INSERT INTO `shop_car` VALUES (233, 9, 1591268241883, 1, 56);
INSERT INTO `shop_car` VALUES (234, 9, 1591878771513, 1, 88);
INSERT INTO `shop_car` VALUES (235, 9, 1591268241883, 1, 57);
INSERT INTO `shop_car` VALUES (236, 1, 1591578818999, 2, 23);
INSERT INTO `shop_car` VALUES (237, 1, 1591264971747, 1, 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '用户主键id',
  `nick_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `real_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '真名字',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱可以为null',
  `last_login_ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '上次登录ip:检测用户异地登录',
  `last_login_time` datetime(0) NULL DEFAULT NULL COMMENT '上次登录日期',
  `roles` varchar(2555) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色组',
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `photo` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '原来你，这么好', '黎杭', 'DF18F83EEF64E7CD1F19C0C11175FE71', '18223170162', '2', '0:0:0:0:0:0:0:1', '2020-06-21 21:11:46', '32,33,34,50,53,58,60', '街角的扛把子', '/upload/user/8ded744e-f950-4a90-a37d-ff9fa3497aeb.png');
INSERT INTO `user` VALUES (5, 'test', 'cxd', 'DF18F83EEF64E7CD1F19C0C11175FE71', '17754923091', 'email', '119.86.110.251', '2020-06-21 15:30:57', '1,2,3,4,5,6,7', NULL, NULL);
INSERT INTO `user` VALUES (6, '胡磊', 'hulei', '2984C92C08A43223DD724C832107D051', '15172359843', '', '106.91.71.81', '2020-06-16 16:24:27', '32,33,34,38,52,53,58', '', '/upload/user/785e7d01-601b-4ebd-88b3-2fdcf213a6e0.jpg');
INSERT INTO `user` VALUES (7, 'lyk', 'lyk', 'DF18F83EEF64E7CD1F19C0C11175FE71', '18375779001', '857684513@qq.com', '192.168.1.18', '2020-06-15 17:28:20', '1,2,3,4,5,6,7', NULL, NULL);
INSERT INTO `user` VALUES (8, 'tcy', 'tcy', 'DF18F83EEF64E7CD1F19C0C11175FE71', '13996054565', NULL, '0:0:0:0:0:0:0:1', '2020-06-16 15:01:38', '1,2,3,4,5,6,7,30,31,32,33,34,36,38', NULL, NULL);
INSERT INTO `user` VALUES (9, 'quincey', 'quincey', 'DF18F83EEF64E7CD1F19C0C11175FE71', '18875150682', NULL, '106.91.70.22', '2020-06-20 18:12:33', '1,3,4,5,6,31,37', NULL, '/upload/user/15279f71-de99-4de5-b6aa-710108b7b7dd.jpg');
INSERT INTO `user` VALUES (10, '很幸运，遇见你', 'ly', 'DF18F83EEF64E7CD1F19C0C11175FE71', '18883944248', NULL, '0:0:0:0:0:0:0:1', '2020-06-21 18:36:22', '32,33,34,50,53,58,60', NULL, '/upload/1da436ae-a734-4b61-9edc-06c5522273fe.jpg');
INSERT INTO `user` VALUES (12, 'ti', 'ti', 'DF18F83EEF64E7CD1F19C0C11175FE71', '15923964455', NULL, '0:0:0:0:0:0:0:1', '2020-06-21 13:21:33', '29,30,31,32,33,34,38', NULL, NULL);
INSERT INTO `user` VALUES (13, '木木', NULL, 'DF18F83EEF64E7CD1F19C0C11175FE71', '15012345678', NULL, '192.168.1.30', '2020-06-11 19:44:29', '1,2,3,4,5,6,7', NULL, NULL);
INSERT INTO `user` VALUES (14, '法外狂徒张三', '法外狂徒张三', '610A0381936A591C52B67AAA44A9B9C8', '18182282703', NULL, '106.91.71.81', '2020-06-15 22:45:31', '1,2,3,4,5,6,7', NULL, NULL);
INSERT INTO `user` VALUES (24, '小龙虾', '李沁亮', 'DF18F83EEF64E7CD1F19C0C11175FE71', '13628353146', NULL, '0:0:0:0:0:0:0:1', '2020-06-18 11:39:54', '1,2,3,4,5,6,7', NULL, NULL);
INSERT INTO `user` VALUES (25, '社会主义十字斩', '夜十三', 'DF18F83EEF64E7CD1F19C0C11175FE71', '18717092213', NULL, '0:0:0:0:0:0:0:1', '2020-06-16 08:13:34', '1,2,3,4,5,6,7', NULL, NULL);
INSERT INTO `user` VALUES (26, '请改昵称', NULL, NULL, '17783370717', NULL, NULL, '2020-06-03 10:29:26', '1,231124', NULL, NULL);
INSERT INTO `user` VALUES (27, '柏亮', '吴奇隆', '2984C92C08A43223DD724C832107D051', '18166335013', '112471701@qq.com', '172.16.231.232', '2020-06-15 19:41:17', '32,33,34,38,51,52,53', '这条街最亮的仔', '/upload/60de3234-5e2a-437b-9006-110017a35830.jpg');
INSERT INTO `user` VALUES (30, 'dmh', 'dmh', 'DF18F83EEF64E7CD1F19C0C11175FE71', '15683305716', NULL, '106.91.64.63', '2020-06-17 20:16:03', '1,2,3,4,5,6,7', NULL, NULL);
INSERT INTO `user` VALUES (41, '德玛西亚', '231', 'DF18F83EEF64E7CD1F19C0C11175FE71', '18725620041', NULL, NULL, '2020-06-04 09:11:46', '1,2,3,4,5,6,7', NULL, NULL);
INSERT INTO `user` VALUES (42, '德华', '华仔', 'DF18F83EEF64E7CD1F19C0C11175FE71', '15310490231', NULL, '0:0:0:0:0:0:0:1', '2020-06-20 22:55:39', '1,2,3,4,5,6,7', NULL, NULL);
INSERT INTO `user` VALUES (45, 'flying', NULL, '123456', '18223129318', NULL, NULL, '2020-06-05 15:24:16', '1,2,3,4,5,6,7', NULL, NULL);
INSERT INTO `user` VALUES (48, '肉蛋葱鸡', '大司马', 'DF18F83EEF64E7CD1F19C0C11175FE71', '13527332786', NULL, NULL, NULL, '29,30,31,32,33,34,38', NULL, NULL);
INSERT INTO `user` VALUES (62, '清风', NULL, 'DF18F83EEF64E7CD1F19C0C11175FE71', '17623547928', NULL, '0:0:0:0:0:0:0:1', '2020-06-12 19:26:05', '1,2,3,4,5,6,7', NULL, NULL);
INSERT INTO `user` VALUES (68, 'hulei2', 'hulei2', 'DF18F83EEF64E7CD1F19C0C11175FE71', '15172359842', NULL, NULL, NULL, '1,2,3,4,5,6,7', NULL, NULL);
INSERT INTO `user` VALUES (81, '请输入昵称', 'wudi', '10D0D15F9848E093A067126A003E02B5', '18725906151', NULL, '106.91.71.81', '2020-06-15 19:49:25', '29,31,32,33,34,38,50', NULL, '/upload/user/ea8ba105-a631-402e-82b0-06ce78ffa67b.jpg');
INSERT INTO `user` VALUES (82, 'Cyj', '陈冠希', 'DF18F83EEF64E7CD1F19C0C11175FE71', '17754923092', '1282304433@qq.com', '192.168.1.32', '2020-06-10 16:15:34', '39,40', '通', NULL);
INSERT INTO `user` VALUES (83, '请改昵称', NULL, NULL, '15594552506', NULL, NULL, '2020-06-08 19:25:13', '7,8,9,10,11,12', NULL, NULL);
INSERT INTO `user` VALUES (84, '二狗子', '李二狗', '70D39E22AD48A8E6B236AC50C82F0929', '16602147325', NULL, NULL, '2020-06-08 19:25:13', '29,31,32,33,34,38,50', '啦啦啦', '/upload/user/e90ed36b-8309-46b0-9a24-d5e68aa6ceb6.jpg');
INSERT INTO `user` VALUES (86, '梦与想', '木木', '8D6D3077D2CD3A737D753ACE579757BD', '15077777777', NULL, NULL, NULL, '1,2,3,4,5,6,7', NULL, NULL);
INSERT INTO `user` VALUES (87, 'zzz', 'zzz', '2687F70192FFCA54B8194A7CFF53893C', '16602140000', NULL, NULL, '2020-06-08 19:25:13', '31,33,49', '', NULL);
INSERT INTO `user` VALUES (88, 'yyy', 'yyy', '2687F70192FFCA54B8194A7CFF53893C', '16602140001', NULL, NULL, '2020-06-08 19:25:13', '33,56,57', '', NULL);
INSERT INTO `user` VALUES (89, 'xxx', 'xx', 'DF18F83EEF64E7CD1F19C0C11175FE71', '16600000000', NULL, '0:0:0:0:0:0:0:1', '2020-06-14 17:09:52', '1,2,3,4,5,6', '', '/upload/user/20181229212334.jpeg');
INSERT INTO `user` VALUES (90, '123', '123', '123123', '12312312312', NULL, '0:0:0:0:0:0:0:1', '2020-06-15 19:43:03', '1,2,3,4,5,6', NULL, NULL);
INSERT INTO `user` VALUES (93, '阿凡大叔', '阿斯顿发', 'DF18F83EEF64E7CD1F19C0C11175FE71', '13648449785', '123456865@qq.com', '0:0:0:0:0:0:0:1', '2020-06-20 16:59:49', '32,33,34,50,53,58,60', '测试', '/upload/60de3234-5e2a-437b-9006-110017a35830.jpg');
INSERT INTO `user` VALUES (94, '111', '111', '123456', '11111111111', NULL, NULL, NULL, '1,2,3,4,5,6', NULL, NULL);
INSERT INTO `user` VALUES (95, '请改昵称', NULL, '123123', '13983219734', NULL, '192.168.1.18', '2020-06-15 17:26:44', NULL, NULL, NULL);
INSERT INTO `user` VALUES (96, 'sss', 'sss', '2687F70192FFCA54B8194A7CFF53893C', '16602140002', NULL, NULL, '2020-06-08 19:25:13', '33,56,57', '', '/upload/user/20181229212334.jpeg');
INSERT INTO `user` VALUES (98, '李四', '张三', '123456', '12345678910', '123456789@qq.com', NULL, NULL, NULL, NULL, '/upload/1d7db541-67c9-43b7-8576-33bb3e1e5c74.jpg');
INSERT INTO `user` VALUES (99, '00000000-0000-0008-0000-000000000004', NULL, NULL, '18875135646', NULL, '192.168.31.235', '2020-06-12 22:43:18', NULL, NULL, NULL);
INSERT INTO `user` VALUES (100, '皮皮虾', 'djx', 'DF18F83EEF64E7CD1F19C0C11175FE71', '13101261802', NULL, '106.91.71.81', '2020-06-16 14:09:58', '32,33,34,38,52,53,58', NULL, NULL);
INSERT INTO `user` VALUES (101, '请改昵称', NULL, 'DF18F83EEF64E7CD1F19C0C11175FE71', '13389662165', NULL, '119.85.172.11', '2020-06-15 19:22:05', '32,34,38,52,53,58', NULL, NULL);
INSERT INTO `user` VALUES (102, '请改昵称', NULL, NULL, '15002366287', NULL, '125.62.5.67', '2020-06-15 20:11:26', NULL, NULL, NULL);
INSERT INTO `user` VALUES (103, '需要空调', '郝热', '2687F70192FFCA54B8194A7CFF53893C', '15501011111', NULL, NULL, NULL, '1,2,3,4,5,6', NULL, NULL);
INSERT INTO `user` VALUES (104, '请改昵称', NULL, NULL, '17583114002', NULL, '183.227.139.171', '2020-06-15 23:59:55', NULL, NULL, NULL);
INSERT INTO `user` VALUES (105, '请改昵称', NULL, NULL, '17784773211', NULL, '106.91.64.63', '2020-06-17 17:30:00', '32,33,34,38,52,53,58', NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
