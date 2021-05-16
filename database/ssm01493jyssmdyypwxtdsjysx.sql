/*
 Navicat Premium Data Transfer

 Source Server         : localdb
 Source Server Type    : MySQL
 Source Server Version : 50732
 Source Host           : localhost:3306
 Source Schema         : ssm01493jyssmdyypwxtdsjysx

 Target Server Type    : MySQL
 Target Server Version : 50732
 File Encoding         : 65001

 Date: 15/05/2021 19:17:55
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '帐号',
  `pwd` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES (1, 'admin', 'admin', '2020-03-06 20:04:15');
INSERT INTO `admins` VALUES (2, 'user00', 'user00', '2021-03-18 22:14:58');

-- ----------------------------
-- Table structure for dianyingchangci
-- ----------------------------
DROP TABLE IF EXISTS `dianyingchangci`;
CREATE TABLE `dianyingchangci`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dianyingxinxiid` int(10) UNSIGNED NOT NULL COMMENT '电影信息id',
  `dianyingbianhao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电影编号',
  `fenlei` int(10) UNSIGNED NOT NULL COMMENT '分类',
  `dianyingmingcheng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电影名称',
  `dianyinghaibao` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电影海报',
  `piaojia` decimal(10, 2) NOT NULL COMMENT '票价',
  `fangyingting` int(10) UNSIGNED NOT NULL COMMENT '放映厅',
  `kaichangshijian` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '开场时间',
  `sanchangshijian` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '散场时间',
  `shengyupiaoshu` int(11) NOT NULL COMMENT '剩余票数',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dianyingchangci_dianyingxinxiid_index`(`dianyingxinxiid`) USING BTREE,
  INDEX `dianyingchangci_fenlei_index`(`fenlei`) USING BTREE,
  INDEX `dianyingchangci_fangyingting_index`(`fangyingting`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dianyingchangci
-- ----------------------------
INSERT INTO `dianyingchangci` VALUES (1, 7, '03062056316500', 5, '关云长', 'upload/20200306/78681583499429376.png,upload/20200306/93291583499444716.png,upload/20200306/25461583499449691.png,upload/20200306/9711583499455302.png,upload/20200306/62501583499461556.png', 38.00, 1, '2020-03-06 21:02:07', '22:00', 58, '2020-03-06 21:02:37');
INSERT INTO `dianyingchangci` VALUES (2, 7, '03062056316500', 5, '关云长', 'upload/20200306/78681583499429376.png,upload/20200306/93291583499444716.png,upload/20200306/25461583499449691.png,upload/20200306/9711583499455302.png,upload/20200306/62501583499461556.png', 38.00, 2, '2020-03-06 21:02:52', '22:00', 50, '2020-03-06 21:02:59');
INSERT INTO `dianyingchangci` VALUES (3, 6, '03062050541571', 4, '不可思异', 'upload/20200306/51841583499251788.png,upload/20200306/60211583499260477.png,upload/20200306/97741583499265884.png,upload/20200306/31371583499271527.png,upload/20200306/62041583499281813.png', 38.00, 1, '2020-03-07 21:03:04', '20:30', 50, '2020-03-06 21:03:13');
INSERT INTO `dianyingchangci` VALUES (4, 6, '03062050541571', 4, '不可思异', 'upload/20200306/51841583499251788.png,upload/20200306/60211583499260477.png,upload/20200306/97741583499265884.png,upload/20200306/31371583499271527.png,upload/20200306/62041583499281813.png', 38.00, 2, '2020-03-09 21:03:17', '21:30', 50, '2020-03-06 21:03:24');
INSERT INTO `dianyingchangci` VALUES (5, 5, '03062049341620', 6, '爵迹2', 'upload/20200306/17471583498993063.png', 39.00, 1, '2020-03-06 21:03:28', '21:00', 50, '2020-03-06 21:03:39');
INSERT INTO `dianyingchangci` VALUES (6, 4, '03062047473923', 6, '熊出没·狂野大陆', 'upload/20200306/22861583498880127.png,upload/20200306/97591583498886888.png,upload/20200306/77841583498892451.png,upload/20200306/13091583498897829.png,upload/20200306/56011583498910379.png', 38.00, 2, '2020-03-09 21:03:45', '20:30', 50, '2020-03-06 21:03:52');
INSERT INTO `dianyingchangci` VALUES (7, 3, '03062045272112', 6, '姜子牙', 'upload/20200306/39921583498741978.png,upload/20200306/33381583498752845.png,upload/20200306/20911583498776745.png,upload/20200306/80061583498781481.png,upload/20200306/76381583498790254.png', 38.00, 2, '2020-03-09 21:03:58', '20:30', 65, '2020-03-06 21:04:05');
INSERT INTO `dianyingchangci` VALUES (8, 2, '03062043251177', 1, '囧妈', 'upload/20200306/62901583498620356.png,upload/20200306/6391583498628769.png,upload/20200306/981583498633501.png,upload/20200306/58221583498638184.png,upload/20200306/59571583498648826.png,upload/20200306/11121583498653642.png', 38.00, 3, '2020-03-10 21:04:12', '20:30', 49, '2020-03-06 21:04:19');
INSERT INTO `dianyingchangci` VALUES (9, 1, '03062040121320', 1, '唐人街探案3', 'upload/20200306/75521583498424137.png,upload/20200306/36741583498432035.png,upload/20200306/54411583498439896.png,upload/20200306/53671583498446083.png,upload/20200306/33251583498451895.png,upload/20200306/82061583498457693.png', 38.00, 2, '2020-03-09 21:04:23', '22:00', 60, '2020-03-06 21:04:32');
INSERT INTO `dianyingchangci` VALUES (10, 8, '03071410345552', 3, '测试', 'upload/20200307/91441583561460178.png,upload/20200307/60881583561470089.png', 28.00, 4, '2020-03-09 08:10:00', '13:30', 97, '2020-03-07 14:13:07');
INSERT INTO `dianyingchangci` VALUES (11, 8, '03071410345552', 3, '测试', 'upload/20200307/91441583561460178.png,upload/20200307/60881583561470089.png', 28.00, 4, '2020-03-07 14:13:11', '13:30', 60, '2020-03-07 14:13:17');

-- ----------------------------
-- Table structure for dianyingxinxi
-- ----------------------------
DROP TABLE IF EXISTS `dianyingxinxi`;
CREATE TABLE `dianyingxinxi`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dianyingbianhao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电影编号',
  `fenlei` int(10) UNSIGNED NOT NULL COMMENT '分类',
  `dianyinghaibao` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电影海报',
  `dianyingmingcheng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电影名称',
  `daoyan` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '导演',
  `zhuyan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主演',
  `shangyingshijian` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '上映时间',
  `shifoureying` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '是否热映',
  `piaojia` decimal(10, 2) NOT NULL COMMENT '票价',
  `shichang` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '时长',
  `jianjie` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '简介',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `dianyingxinxi_fenlei_index`(`fenlei`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of dianyingxinxi
-- ----------------------------
INSERT INTO `dianyingxinxi` VALUES (1, '03062040121320', 1, 'upload/20200306/75521583498424137.png,upload/20200306/36741583498432035.png,upload/20200306/54411583498439896.png,upload/20200306/53671583498446083.png,upload/20200306/33251583498451895.png,upload/20200306/82061583498457693.png', '唐人街探案3', '陈思诚', '王宝强,刘昊然,妻夫木聪,托尼·贾', '2020-03-06', '是', 38.00, '136分钟', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal;\">继曼谷、纽约之后，东京再出大案。唐人街神探唐仁（王宝强 饰）、秦风（刘昊然 饰）受侦探野田昊（妻夫木聪 饰）的邀请前往破案。“CRIMASTER世界侦探排行榜”中的侦探们闻讯后也齐聚东京，加入挑战，而排名第一Q的现身，让这个大案更加扑朔迷离，一场亚洲最强神探之间的较量即将爆笑展开……</span></p>', '2020-03-06 20:43:24');
INSERT INTO `dianyingxinxi` VALUES (2, '03062043251177', 1, 'upload/20200306/62901583498620356.png,upload/20200306/6391583498628769.png,upload/20200306/981583498633501.png,upload/20200306/58221583498638184.png,upload/20200306/59571583498648826.png,upload/20200306/11121583498653642.png', '囧妈', '徐峥', '徐峥,黄梅莹,袁泉,贾冰', '2020-03-06', '否', 38.00, '126分钟', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal;\">徐伊万（徐峥 饰）缠身于婚姻危机和商业纠纷中，却阴差阳错与妈妈坐上了开往俄罗斯的火车。生活方式和观念的冲突，使他与妈妈产生了激烈矛盾，同时还要与妻子斗智斗勇。一路风景奇遇，囧事不断……</span></p>', '2020-03-06 20:45:26');
INSERT INTO `dianyingxinxi` VALUES (3, '03062045272112', 6, 'upload/20200306/39921583498741978.png,upload/20200306/33381583498752845.png,upload/20200306/20911583498776745.png,upload/20200306/80061583498781481.png,upload/20200306/76381583498790254.png', '姜子牙', '程腾', '郑希,杨凝,图特哈蒙', '2020-03-06', '否', 38.00, '110分钟', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal;\">昆仑弟子姜子牙（郑希 配音）率领众神伐纣，赢得封神大战胜利。即将受封成为众神之长的他，却因一时过失引得昆仑大乱，从此被贬北海，为世人所唾弃。十年后，因一个契机，姜子牙踏上重回昆仑的旅途。在战后的废墟之上，他重新找到自我，也洞悉了十年前的一切真相。</span></p>', '2020-03-06 20:47:46');
INSERT INTO `dianyingxinxi` VALUES (4, '03062047473923', 6, 'upload/20200306/22861583498880127.png,upload/20200306/97591583498886888.png,upload/20200306/77841583498892451.png,upload/20200306/13091583498897829.png,upload/20200306/56011583498910379.png', '熊出没·狂野大陆', '丁亮', '张秉君,谭笑,张伟', '2020-03-06', '否', 38.00, '99分钟', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal;\">什么才是快乐的真谛？一场起源于爱的冒险！狗熊岭附近新开业了一个神奇的“狂野大陆”，在那里，通过基因技术人可以自由变身各种动物，享受无比的自由和快乐。导游事业受挫的光头强（谭笑 配音），阴差阳错与神秘人乐天（刘沛 配音）和熊二（张秉君 配音）组队，参加乐园里奖金丰厚的比赛，却遭遇了队友乐天的背叛，历尽艰险终于获得冠军之际，却意外发现狂野大陆中出现了肆意袭击他人的混合变身怪兽，同时也明白了队友乐天窃取基因手环的背后的真相。为了守护基因变身技术所承载的美好初衷，光头强与乐天冒险闯入总部，却再次发现在老板汤姆（朱光祖 配音）背后隐藏着真正的幕后黑手，他们是否能够获取最终的胜利？神秘人乐天背后又有着怎样的故事…</span></p>', '2020-03-06 20:49:30');
INSERT INTO `dianyingxinxi` VALUES (5, '03062049341620', 6, 'upload/20200306/17471583498993063.png', '爵迹2', '郭敬明', '范冰冰,吴亦凡,陈学冬,陈伟霆', '2020-03-06', '是', 39.00, '120分钟', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal;\">为了完成前六度王爵西流尔的遗愿，鬼山莲泉、银尘、麒零、天束幽花四人决定一起前往，解救被白银祭司封印的前一度王爵吉尔伽美什。而当四人克服重重阻碍赶到囚禁之地，却不幸遇上白银祭司派出的最强杀手阵容：幽冥、特蕾娅、漆拉，一场正面交锋在所难免，整个亚斯蓝帝国最阴暗的秘密也将逐渐浮出水面。</span></p>', '2020-03-06 20:50:53');
INSERT INTO `dianyingxinxi` VALUES (6, '03062050541571', 4, 'upload/20200306/51841583499251788.png,upload/20200306/60211583499260477.png,upload/20200306/97741583499265884.png,upload/20200306/31371583499271527.png,upload/20200306/62041583499281813.png', '不可思异', '孙周', '王宝强,小沈阳,大棚,杨抒文', '2020-03-06', '是', 38.00, '99分钟', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal;\">影片讲述了外星人么么哒在地球做样本勘测过程中遇到的不可思议的种种趣事。唐力果（王宝强 饰）五年前因为一场意外失去了女儿，在消沉与悔恨中度日。开普勒星球的“外星生物”为了采集人类样本来到地球，闯入了唐力果的生活中……唐力果的好哥们王若水（小沈阳 饰）因遭遇竞争对手的吞并阴谋，落入陷阱并欠下巨额高利贷，公司面临倒闭边缘。外星生物的奇功异能被贪婪的竞争对手老板一哥（大鹏 饰）发现并企图据为己有，人类贪婪欲望再一次暴露。地球陷入一场“不可思异”的危机当中……</span></p>', '2020-03-06 20:56:02');
INSERT INTO `dianyingxinxi` VALUES (7, '03062056316500', 5, 'upload/20200306/78681583499429376.png,upload/20200306/93291583499444716.png,upload/20200306/25461583499449691.png,upload/20200306/9711583499455302.png,upload/20200306/62501583499461556.png', '关云长', '麦兆辉', '甄子丹,姜文,孙俪', '2020-03-06', '否', 38.00, '109分钟', '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, Helvetica, Arial, sans-serif; font-size: 14px; white-space: normal;\">东汉末年乱世中，刘备的两位夫人、以及一位未过门的小妾绮兰（孙俪 饰）受困曹营，关云长（甄子丹 饰）为存忠义投降曹操（姜文 饰），但始终不能原谅曹操操控汉室的狼子野心，希望能够重回刘备身边。曹操倾慕关羽之将才以及仁者之心，试图用天下苍生之利益说服后者。适逢袁绍起兵伐曹，关云长于阵斩杀颜良，获封汉寿亭侯，并与张辽（邵兵 饰）结下同袍之谊。曹操将两位刘夫人遣返后，在关云长酒中加入春药，欲使其与绮兰发生不义关系——关云长昔日对同乡绮兰暗怀情意，甚至曾经不惜为她杀死官兵，这段感情终究被叔嫂之礼阻断，清醒过来的关云长携绮兰投奔刘备，沿路冲破重重关卡，留下“过五关斩六将”的千古传奇……</span></p>', '2020-03-06 20:58:53');
INSERT INTO `dianyingxinxi` VALUES (8, '03071410345552', 3, 'upload/20200307/91441583561460178.png,upload/20200307/60881583561470089.png', '测试', '测试', '测试,测试1,测试3', '2020-03-07', '是', 28.00, '123分钟', '<p>测试测试测试测试测试测试测试测试</p>', '2020-03-07 14:11:46');

-- ----------------------------
-- Table structure for dianyingyuan
-- ----------------------------
DROP TABLE IF EXISTS `dianyingyuan`;
CREATE TABLE `dianyingyuan`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `yingyuanmingcheng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `yingyuandizhi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dianyingyuan
-- ----------------------------
INSERT INTO `dianyingyuan` VALUES (1, '中宁国际影城（京新广场店', '浦口区柳洲东路189号京新广场4楼');
INSERT INTO `dianyingyuan` VALUES (2, 'CGV影城（百家湖ScreenX店）', '江宁区双龙大道1698号景枫广场3F-4F');
INSERT INTO `dianyingyuan` VALUES (3, '时代影城', '高淳区富克斯5楼');
INSERT INTO `dianyingyuan` VALUES (4, '中广汪海国际影城', '雨花台区板桥街道雄风路汪海商业街486号（国美电器梅山店）');
INSERT INTO `dianyingyuan` VALUES (5, '南京科技馆影城', '雨花台区紫荆花路9号（科技馆北门）');

-- ----------------------------
-- Table structure for fangyingting
-- ----------------------------
DROP TABLE IF EXISTS `fangyingting`;
CREATE TABLE `fangyingting`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `yingtingbianhao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '影厅编号',
  `yingtingmingcheng` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '影厅名称',
  `jipai` int(11) NOT NULL COMMENT '几排',
  `jilie` int(11) NOT NULL COMMENT '几列',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fangyingting
-- ----------------------------
INSERT INTO `fangyingting` VALUES (1, '03062101152064', '壹号厅', 8, 8, '2020-03-06 21:01:27');
INSERT INTO `fangyingting` VALUES (2, '03062101281069', '贰号厅', 9, 12, '2020-03-06 21:01:42');
INSERT INTO `fangyingting` VALUES (3, '03062101431982', '叁号厅', 12, 15, '2020-03-06 21:01:56');
INSERT INTO `fangyingting` VALUES (4, '03071412031989', '肆号厅', 10, 10, '2020-03-07 14:12:25');

-- ----------------------------
-- Table structure for goupiao
-- ----------------------------
DROP TABLE IF EXISTS `goupiao`;
CREATE TABLE `goupiao`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `dianyingchangciid` int(10) UNSIGNED NOT NULL COMMENT '电影场次id',
  `dianyingbianhao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电影编号',
  `fenlei` int(10) UNSIGNED NOT NULL COMMENT '分类',
  `dianyingmingcheng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电影名称',
  `piaojia` decimal(10, 2) NOT NULL COMMENT '票价',
  `fangyingting` int(10) UNSIGNED NOT NULL COMMENT '放映厅',
  `kaichangshijian` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '开场时间',
  `sanchangshijian` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '散场时间',
  `goumaishu` int(11) NOT NULL COMMENT '购买数',
  `xuanzuo` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '选座',
  `xiaoji` decimal(10, 2) NOT NULL COMMENT '小计',
  `goupiaoren` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '购票人',
  `dingpiaozhuangtai` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '订票状态',
  `iszf` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '否' COMMENT '是否支付',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `goupiao_dianyingchangciid_index`(`dianyingchangciid`) USING BTREE,
  INDEX `goupiao_fenlei_index`(`fenlei`) USING BTREE,
  INDEX `goupiao_fangyingting_index`(`fangyingting`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of goupiao
-- ----------------------------
INSERT INTO `goupiao` VALUES (1, 1, '03062056316500', 5, '关云长', 38.00, 1, '2020-03-06 21:02:07', '22:00', 2, '6_4,6_5', 76.00, 'walala', '已退票', '是', '2020-03-06 21:58:57');
INSERT INTO `goupiao` VALUES (2, 7, '03062045272112', 6, '姜子牙', 38.00, 2, '2020-03-09 21:03:58', '20:30', 2, '7_6,7_7', 76.00, 'hahaha', '已退票', '是', '2020-03-07 14:16:39');
INSERT INTO `goupiao` VALUES (3, 10, '03071410345552', 3, '测试', 28.00, 4, '2020-03-09 08:10:00', '13:30', 1, '3_7', 28.00, 'admin', '已出票', '是', '2021-03-18 22:16:59');
INSERT INTO `goupiao` VALUES (4, 10, '03071410345552', 3, '测试', 19.60, 4, '2020-03-09 08:10:00', '13:30', 2, '4_3,4_5', 39.20, 'user00', '已出票', '是', '2021-03-20 01:34:53');
INSERT INTO `goupiao` VALUES (5, 8, '03062043251177', 1, '囧妈', 26.60, 3, '2020-03-10 21:04:12', '20:30', 1, '5_10', 26.60, 'user00', '待支付', '否', '2021-03-20 01:37:28');

-- ----------------------------
-- Table structure for lunbotu
-- ----------------------------
DROP TABLE IF EXISTS `lunbotu`;
CREATE TABLE `lunbotu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '标题',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '图片',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '连接地址',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lunbotu
-- ----------------------------
INSERT INTO `lunbotu` VALUES (1, '1', 'upload/20200307/93941583561158504.png', '#', '2020-03-07 14:06:01');
INSERT INTO `lunbotu` VALUES (2, '2', 'upload/20200307/91741583561171921.png', '#', '2020-03-07 14:06:13');
INSERT INTO `lunbotu` VALUES (3, '3', 'upload/20200307/21721583561634454.png', '#', '2020-03-07 14:13:56');

-- ----------------------------
-- Table structure for pingjia
-- ----------------------------
DROP TABLE IF EXISTS `pingjia`;
CREATE TABLE `pingjia`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `score` int(11) NULL DEFAULT NULL,
  `createtime` timestamp(0) NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP(0),
  `uid` int(11) NULL DEFAULT NULL,
  `vid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pingjia
-- ----------------------------
INSERT INTO `pingjia` VALUES (1, 'dsfsdfdfs', 3, '2021-03-19 19:40:37', 3, 1);
INSERT INTO `pingjia` VALUES (2, '', NULL, NULL, 0, 0);
INSERT INTO `pingjia` VALUES (3, '', NULL, NULL, 0, 0);
INSERT INTO `pingjia` VALUES (4, '', NULL, NULL, 0, 0);
INSERT INTO `pingjia` VALUES (5, '', NULL, NULL, 0, 0);
INSERT INTO `pingjia` VALUES (6, '', NULL, NULL, 0, 0);
INSERT INTO `pingjia` VALUES (7, '', NULL, NULL, 0, 0);
INSERT INTO `pingjia` VALUES (8, '', NULL, NULL, 0, 0);
INSERT INTO `pingjia` VALUES (9, '', NULL, NULL, 0, 0);
INSERT INTO `pingjia` VALUES (10, '', NULL, NULL, 0, 0);
INSERT INTO `pingjia` VALUES (11, '', NULL, NULL, 0, 0);
INSERT INTO `pingjia` VALUES (12, '', NULL, NULL, 0, 0);
INSERT INTO `pingjia` VALUES (13, '', NULL, NULL, 3, 8);
INSERT INTO `pingjia` VALUES (14, '', NULL, NULL, 3, 8);
INSERT INTO `pingjia` VALUES (15, '123', NULL, '2021-03-19 19:52:38', 3, 8);
INSERT INTO `pingjia` VALUES (16, '456', NULL, '2021-03-19 19:52:51', 3, 8);
INSERT INTO `pingjia` VALUES (17, '213123', NULL, '2021-03-19 19:54:53', 3, 5);
INSERT INTO `pingjia` VALUES (18, '很好看', NULL, '2021-03-19 19:54:59', 3, 5);
INSERT INTO `pingjia` VALUES (19, '我觉得不错', NULL, '2021-03-19 19:55:04', 3, 5);
INSERT INTO `pingjia` VALUES (20, '嘻嘻嘻', 0, '2021-03-19 19:58:59', 3, 8);
INSERT INTO `pingjia` VALUES (21, '我', 0, '2021-03-19 19:59:19', 3, 8);
INSERT INTO `pingjia` VALUES (22, '111', 4, '2021-03-19 20:05:10', 3, 8);
INSERT INTO `pingjia` VALUES (23, 'dwadawdwaawdwdawdwadawdwdawd', 5, '2021-03-19 19:11:18', 3, 8);
INSERT INTO `pingjia` VALUES (24, 'AWDwda', 2, '2021-03-19 19:11:45', 3, 6);
INSERT INTO `pingjia` VALUES (25, 'dwadwdwad', 5, '2021-03-19 19:11:58', 3, 5);
INSERT INTO `pingjia` VALUES (26, 'nihao', 5, '2021-03-21 04:00:55', 1, 8);
INSERT INTO `pingjia` VALUES (27, 'xxixixi', 5, '2021-03-21 04:01:01', 1, 8);
INSERT INTO `pingjia` VALUES (28, '很不错', 3, '2021-03-21 04:06:40', 4, 5);
INSERT INTO `pingjia` VALUES (29, '这个电影里面的校色我喜欢', 3, '2021-03-21 04:07:09', 4, 5);

-- ----------------------------
-- Table structure for pingjiafankui
-- ----------------------------
DROP TABLE IF EXISTS `pingjiafankui`;
CREATE TABLE `pingjiafankui`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `xingming` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `lianxidianhua` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系电话',
  `neirong` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '内容',
  `pingjiaren` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '评价人',
  `huifuneirong` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '回复内容',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pingjiafankui
-- ----------------------------
INSERT INTO `pingjiafankui` VALUES (1, '萧萧', '13800138000', '感觉还阔以吧！', 'walala', '非常感谢！', '2020-03-07 13:25:46');
INSERT INTO `pingjiafankui` VALUES (2, '哈哈哈', '13800138000', '测试评论反馈', 'hahaha', '', '2020-03-07 14:18:43');

-- ----------------------------
-- Table structure for shoucangjilu
-- ----------------------------
DROP TABLE IF EXISTS `shoucangjilu`;
CREATE TABLE `shoucangjilu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `xwid` int(10) UNSIGNED NOT NULL,
  `biao` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `biaoti` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ziduan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shoucangjilu
-- ----------------------------
INSERT INTO `shoucangjilu` VALUES (1, 'walala', 6, 'dianyingxinxi', '不可思异', 'http://localhost:8080/dianyingxinxidetail.do?id=6', 'dianyingmingcheng', '2020-03-07 13:34:05');
INSERT INTO `shoucangjilu` VALUES (2, 'hahaha', 2, 'dianyingxinxi', '囧妈', 'http://localhost:8080/dianyingxinxidetail.do?id=2', 'dianyingmingcheng', '2020-03-07 14:15:35');
INSERT INTO `shoucangjilu` VALUES (3, 'user00', 8, 'dianyingxinxi', '测试', 'http://localhost:8080/dianyingxinxidetail.do?id=8', 'dianyingmingcheng', '2021-03-18 21:47:39');

-- ----------------------------
-- Table structure for yingpianfenlei
-- ----------------------------
DROP TABLE IF EXISTS `yingpianfenlei`;
CREATE TABLE `yingpianfenlei`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fenleimingcheng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '分类名称',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yingpianfenlei
-- ----------------------------
INSERT INTO `yingpianfenlei` VALUES (1, '喜剧', '2020-03-06 20:38:34');
INSERT INTO `yingpianfenlei` VALUES (2, '恐怖', '2020-03-06 20:38:40');
INSERT INTO `yingpianfenlei` VALUES (3, '爱情', '2020-03-06 20:38:43');
INSERT INTO `yingpianfenlei` VALUES (4, '科幻', '2020-03-06 20:38:46');
INSERT INTO `yingpianfenlei` VALUES (5, '动作', '2020-03-06 20:38:49');
INSERT INTO `yingpianfenlei` VALUES (6, '动画', '2020-03-06 20:38:57');

-- ----------------------------
-- Table structure for yingpiaotuiding
-- ----------------------------
DROP TABLE IF EXISTS `yingpiaotuiding`;
CREATE TABLE `yingpiaotuiding`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `goupiaoid` int(10) UNSIGNED NOT NULL COMMENT '购票id',
  `dianyingbianhao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电影编号',
  `fenlei` int(10) UNSIGNED NOT NULL COMMENT '分类',
  `dianyingmingcheng` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '电影名称',
  `piaojia` decimal(10, 2) NOT NULL COMMENT '票价',
  `goumaishu` int(11) NOT NULL COMMENT '购买数',
  `xiaoji` decimal(10, 2) NOT NULL COMMENT '小计',
  `goupiaoren` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '购票人',
  `kaichangshijian` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '开场时间',
  `tuipiaozhangshu` int(11) NOT NULL COMMENT '退票张数',
  `tuikuanjine` decimal(10, 2) NOT NULL COMMENT '退款金额',
  `tuipiaoyuanyin` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '退票原因',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `yingpiaotuiding_goupiaoid_index`(`goupiaoid`) USING BTREE,
  INDEX `yingpiaotuiding_fenlei_index`(`fenlei`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of yingpiaotuiding
-- ----------------------------
INSERT INTO `yingpiaotuiding` VALUES (1, 1, '03062056316500', 5, '关云长', 38.00, 2, 76.00, 'walala', '2020-03-06 21:02:07', 2, 68.00, '', '2020-03-07 13:48:40');
INSERT INTO `yingpiaotuiding` VALUES (2, 2, '03062045272112', 6, '姜子牙', 38.00, 2, 76.00, 'hahaha', '2020-03-09 21:03:58', 2, 68.00, '不想看了', '2020-03-07 14:18:03');

-- ----------------------------
-- Table structure for youqinglianjie
-- ----------------------------
DROP TABLE IF EXISTS `youqinglianjie`;
CREATE TABLE `youqinglianjie`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `wangzhanmingcheng` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '网站名称',
  `wangzhi` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '网址',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of youqinglianjie
-- ----------------------------
INSERT INTO `youqinglianjie` VALUES (1, '百度', 'http://www.baidu.com', '2020-03-06 20:00:26');
INSERT INTO `youqinglianjie` VALUES (2, '谷歌', 'http://www.google.cn', '2020-03-06 20:00:26');
INSERT INTO `youqinglianjie` VALUES (3, '新浪', 'http://www.sina.com', '2020-03-06 20:00:26');
INSERT INTO `youqinglianjie` VALUES (4, 'QQ', 'http://www.qq.com', '2020-03-06 20:00:26');
INSERT INTO `youqinglianjie` VALUES (5, '网易', 'http://www.163.com', '2020-03-06 20:00:26');

-- ----------------------------
-- Table structure for zhuceyonghu
-- ----------------------------
DROP TABLE IF EXISTS `zhuceyonghu`;
CREATE TABLE `zhuceyonghu`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `yonghuming` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `mima` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `xingming` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `xingbie` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `shoujihao` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '手机号',
  `touxiang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '头像',
  `addtime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '添加时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zhuceyonghu
-- ----------------------------
INSERT INTO `zhuceyonghu` VALUES (1, 'walala', '000', '萧萧', '女', '13800138000', 'upload/20200306/80211583503065084.png', '2020-03-06 21:57:46');
INSERT INTO `zhuceyonghu` VALUES (2, 'hahaha', '000', '张小明', '男', '13800138008', 'upload/20200307/64411583561686960.png', '2020-03-07 14:14:47');
INSERT INTO `zhuceyonghu` VALUES (3, 'user00', 'user00', 'user00', '男', '15724574983', 'upload/20210318/9221616075125936.jpeg', '2021-03-16 21:45:29');
INSERT INTO `zhuceyonghu` VALUES (4, 'test001', 'test001', 'test001', '男', '', '', '2021-03-21 04:06:02');
INSERT INTO `zhuceyonghu` VALUES (5, 'mintonmu', 'Root1234', 'mintonomu', '男', '15724564983', 'upload/20210515/57161621065502902.jpeg', '2021-05-15 15:58:30');

SET FOREIGN_KEY_CHECKS = 1;
