-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.1.73-community - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.5.0.5220
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- 导出  表 gourmet.advise 结构
CREATE TABLE IF NOT EXISTS `advise` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `wordsone` varchar(255) DEFAULT NULL COMMENT '标题',
  `wordstwo` varchar(255) DEFAULT NULL COMMENT '标题一',
  `wordsthree` varchar(255) DEFAULT NULL COMMENT '标题二',
  `wordsfour` varchar(255) DEFAULT NULL COMMENT '标题三',
  `wordsfive` varchar(255) DEFAULT NULL COMMENT '标题四',
  `wordssix` varchar(255) DEFAULT NULL COMMENT '标题五',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='建议表';

-- 正在导出表  gourmet.advise 的数据：~3 rows (大约)
DELETE FROM `advise`;
/*!40000 ALTER TABLE `advise` DISABLE KEYS */;
INSERT INTO `advise` (`id`, `image`, `wordsone`, `wordstwo`, `wordsthree`, `wordsfour`, `wordsfive`, `wordssix`) VALUES
	(1, 'http://127.0.0.1:7001/public/advice/health.jpg', '降血压食物推荐，从日常开始改善！', '日常按摩这些部位，养生更养身', '脑溢血原因，冬天要更注意', '孩子体质差总生病，父母该怎么办？', '专题┊那些美颜食物的神级吃法', '专题┊低卡减肥餐，让你瘦到飞起来'),
	(2, 'http://127.0.0.1:7001/public/advice/baking.jpg', '这些挑水果小窍门，你知道吗？', '网红肉松小贝，在家就能做！', '内藏惊喜的彩虹戚风蛋糕', '消耗蛋挞皮－简单版红薯酥', '菜单┊奥利奥的N种百搭吃法', '专题┊另类咸香口儿 满足你的味蕾！'),
	(3, 'http://127.0.0.1:7001/public/advice/recommend.jpg', '合理饮食，远离脂肪肝', '划重点！食物降血脂这些更有效', '粗粮细作：健康能量燕麦甜品', '妈妈派┊童趣童味，儿童创意餐点', '免费抽奖┊ACA ATO-HB38HT电烤箱', '专题┊酒后头痛，5种食物可缓解');
/*!40000 ALTER TABLE `advise` ENABLE KEYS */;

-- 导出  表 gourmet.book 结构
CREATE TABLE IF NOT EXISTS `book` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `content` varchar(255) DEFAULT NULL COMMENT '描述',
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.book 的数据：~14 rows (大约)
DELETE FROM `book`;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`id`, `name`, `content`, `image`) VALUES
	(1, '西瓜', '吃瓜群众的最爱', 'http://127.0.0.1:7001/public/book/xigua.jpg'),
	(2, '毛豆', '夜宵c位', 'http://127.0.0.1:7001/public/book/maodou.jpg'),
	(3, '丝瓜', '养颜美人水', 'http://127.0.0.1:7001/public/book/sigua.jpg'),
	(4, '西红柿', '水果or蔬菜', 'http://127.0.0.1:7001/public/book/xihongshi.jpg'),
	(5, '黄瓜', '厨房里的美容师', 'http://127.0.0.1:7001/public/book/huanggua.jpg'),
	(6, '茄子', '微笑代名词', 'http://127.0.0.1:7001/public/book/qiezi.jpg'),
	(7, '苦瓜', '共苦是件很甜的事', 'http://127.0.0.1:7001/public/book/kugua.jpg'),
	(8, '蛤蜊', '平民海鲜', 'http://127.0.0.1:7001/public/book/hali.jpg'),
	(9, '鸭肉', '夏季滋补佳品', 'http://127.0.0.1:7001/public/book/yarou.jpg'),
	(10, '鲫鱼', '一勺清汤胜万钱', 'http://127.0.0.1:7001/public/book/jiyu.jpg'),
	(11, '鸡翅', '老少通吃', 'http://127.0.0.1:7001/public/book/jichi.jpg'),
	(12, '排骨', '可记得吮指之乐', 'http://127.0.0.1:7001/public/book/paigu.jpg'),
	(13, '小龙虾', '社交新宠', 'http://127.0.0.1:7001/public/book/xiaolongxia.jpg'),
	(14, '猪里脊', '超嫩小鲜肉', 'http://127.0.0.1:7001/public/book/zhuliji.jpg');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;

-- 导出  表 gourmet.book_type 结构
CREATE TABLE IF NOT EXISTS `book_type` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `part` int(16) DEFAULT NULL COMMENT '分区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.book_type 的数据：~0 rows (大约)
DELETE FROM `book_type`;
/*!40000 ALTER TABLE `book_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_type` ENABLE KEYS */;

-- 导出  表 gourmet.food 结构
CREATE TABLE IF NOT EXISTS `food` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '菜谱标题',
  `userId` char(20) DEFAULT NULL COMMENT '发表用户',
  `image` varchar(255) DEFAULT NULL COMMENT '主页菜谱图片',
  `alone` varchar(255) DEFAULT NULL COMMENT '独家 tag',
  `typeId` int(16) DEFAULT NULL COMMENT '分类 id ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.food 的数据：~20 rows (大约)
DELETE FROM `food`;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` (`id`, `title`, `userId`, `image`, `alone`, `typeId`) VALUES
	(1, '猪仔包', 'rosejyy2000', 'http://127.0.0.1:7001/public/food/f1.jpg', '1', 5),
	(2, '话梅排骨', 'rosejyy2000', 'http://127.0.0.1:7001/public/food/f2.jpg', '0', 1),
	(3, '模具锅煎肉丸', 'rosejyy2000', 'http://127.0.0.1:7001/public/food/f3.jpg', '1', 3),
	(4, '发酵面糊猕猴桃三角松饼', '食●色', 'http://127.0.0.1:7001/public/food/f4.jpg', '1', 1),
	(5, '牛奶十字小饼', 'rosejyy2000', 'http://127.0.0.1:7001/public/food/f5.jpg', '1', 6),
	(6, '双重花生酱夹心华夫饼', '食●色', 'http://127.0.0.1:7001/public/food/f6.jpg', '0', 5),
	(7, '新奥尔良烤鸡翅', 'C00K100@@', 'http://127.0.0.1:7001/public/food/f7.jpg', '1', 2),
	(8, '咸腌豇豆', 'rosejyy2000', 'http://127.0.0.1:7001/public/food/f8.jpg', '1', 6),
	(9, '酸奶红心火龙果酱三角松饼', '食●色', 'http://127.0.0.1:7001/public/food/f9.jpg', '1', 3),
	(10, '蒜茸粉丝龙虾尾', 'rosejyy2000', 'http://127.0.0.1:7001/public/food/f10.jpg', '0', 4),
	(11, '肉末梅菜豇豆', 'rosejyy2000', 'http://127.0.0.1:7001/public/food/f11.jpg', '1', 2),
	(12, '淮盐黄金鸡棒槌', 'rosejyy2000', 'http://127.0.0.1:7001/public/food/f12.jpg', '1', 5),
	(13, '果汁汤种吐丝', 'rosejyy2000', 'http://127.0.0.1:7001/public/food/f13.jpg', '1', 4),
	(14, '排骨炖豇豆', 'rosejyy2000', 'http://127.0.0.1:7001/public/food/f14.jpg', '0', 2),
	(15, '发酵面糊 版芝麻花生酱华夫饼', '食●色', 'http://127.0.0.1:7001/public/food/f15.jpg', '1', 3),
	(16, '水晶盐煸鸡味凤爪', 'rosejyy2000', 'http://127.0.0.1:7001/public/food/f16.jpg', '1', 1),
	(17, '粤式牛仔骨', 'rosejyy2000', 'http://127.0.0.1:7001/public/food/f17.jpg', '1', 5),
	(18, '罗勒炒鸡翅，', 'rosejyy2000', 'http://127.0.0.1:7001/public/food/f18.jpg', '0', 6),
	(19, '烤蒜茸大茄子', 'rosejyy2000', 'http://127.0.0.1:7001/public/food/f19.jpg', '1', 3),
	(20, '香草烤猪臀肉', 'rosejyy2000', 'http://127.0.0.1:7001/public/food/f20.jpg', '1', 5);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;

-- 导出  表 gourmet.food_type 结构
CREATE TABLE IF NOT EXISTS `food_type` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `name` char(50) DEFAULT NULL COMMENT '分类名称',
  `part` int(16) DEFAULT NULL COMMENT '分区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.food_type 的数据：~6 rows (大约)
DELETE FROM `food_type`;
/*!40000 ALTER TABLE `food_type` DISABLE KEYS */;
INSERT INTO `food_type` (`id`, `name`, `part`) VALUES
	(1, '炒', 1),
	(2, '川菜', 3),
	(3, '凉菜', 6),
	(4, '英国菜', 4),
	(5, '米饭', 5),
	(6, '微辣', 2);
/*!40000 ALTER TABLE `food_type` ENABLE KEYS */;

-- 导出  表 gourmet.lbt 结构
CREATE TABLE IF NOT EXISTS `lbt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `images` varchar(255) DEFAULT NULL COMMENT '轮播图片',
  `url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.lbt 的数据：~6 rows (大约)
DELETE FROM `lbt`;
/*!40000 ALTER TABLE `lbt` DISABLE KEYS */;
INSERT INTO `lbt` (`id`, `images`, `url`) VALUES
	(1, 'http://127.0.0.1:7001/public/lbt/1.jpg', NULL),
	(2, 'http://127.0.0.1:7001/public/lbt/2.jpg', NULL),
	(3, 'http://127.0.0.1:7001/public/lbt/3.jpg', NULL),
	(4, 'http://127.0.0.1:7001/public/lbt/4.jpg', NULL),
	(5, 'http://127.0.0.1:7001/public/lbt/5.jpg', NULL),
	(6, 'http://127.0.0.1:7001/public/lbt/6.jpg', NULL);
/*!40000 ALTER TABLE `lbt` ENABLE KEYS */;

-- 导出  表 gourmet.myuser 结构
CREATE TABLE IF NOT EXISTS `myuser` (
  `id` int(16) NOT NULL AUTO_INCREMENT COMMENT '用户 id',
  `userName` varchar(255) DEFAULT NULL COMMENT '用户昵称',
  `userPwd` varchar(255) DEFAULT NULL COMMENT '用户密码',
  `userPic` varchar(255) DEFAULT NULL COMMENT '用户头像',
  `userSex` varchar(255) DEFAULT NULL COMMENT '用户性别',
  `address` varchar(255) DEFAULT NULL COMMENT '用户地址',
  `email` varchar(255) DEFAULT NULL COMMENT '电子邮箱',
  `says` varchar(255) DEFAULT NULL COMMENT '个性签名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.myuser 的数据：~3 rows (大约)
DELETE FROM `myuser`;
/*!40000 ALTER TABLE `myuser` DISABLE KEYS */;
INSERT INTO `myuser` (`id`, `userName`, `userPwd`, `userPic`, `userSex`, `address`, `email`, `says`) VALUES
	(1, 'rosejyy2000', 'rose123456', 'https://i5.meishichina.com/data/avatar/010/88/62/47_avatar_big.jpg', '女', '贵州贵阳', '56321456378@qq.com', NULL),
	(2, '食●色', 'ss123456', 'https://i5.meishichina.com/data/avatar/006/10/08/32_avatar_big.jpg', '女', '四川成都', '15632856941@qq.com', NULL),
	(3, 'C00K100@@', 'cook123456', 'https://i5.meishichina.com/data/avatar/000/40/41/88_avatar_big.jpg', '女', '贵州铜仁', '12364589632@qq.com', NULL);
/*!40000 ALTER TABLE `myuser` ENABLE KEYS */;

-- 导出  表 gourmet.shop 结构
CREATE TABLE IF NOT EXISTS `shop` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `price` float(32,0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.shop 的数据：~20 rows (大约)
DELETE FROM `shop`;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` (`id`, `image`, `name`, `price`) VALUES
	(1, 'http://127.0.0.1:7001/public/shop/1.jpg', '美的鸳鸯电火锅（MC-DY3030Easy102）', 169),
	(2, 'http://127.0.0.1:7001/public/shop/2.jpg', '美的三明治早餐机（JK1312P101R）', 159),
	(3, 'http://127.0.0.1:7001/public/shop/3.jpg', '乐扣乐扣耐热玻璃保鲜盒八件套装', 239),
	(4, 'http://127.0.0.1:7001/public/shop/4.jpg', '苏泊尔火红点不粘锅三件套', 519),
	(5, 'http://127.0.0.1:7001/public/shop/5.jpg', '九阳静音破壁机（Y921）', 1199),
	(6, 'http://127.0.0.1:7001/public/shop/6.jpg', '九阳破壁机（L18-Y915S）', 499),
	(7, 'http://127.0.0.1:7001/public/shop/7.jpg', '福库3L智能电饭煲（CR-0675FW）', 1399),
	(8, 'http://127.0.0.1:7001/public/shop/8.jpg', '苏泊尔4L球釜智能电饭煲（40FC9033Q）', 259),
	(9, 'http://127.0.0.1:7001/public/shop/9.jpg', '苏泊尔5L聚能精钢球釜双胆电压力锅', 1999),
	(10, 'http://127.0.0.1:7001/public/shop/10.jpg', '苏泊尔5L球釜双胆电压力锅（SY-50YC9001Q）', 359),
	(11, 'http://127.0.0.1:7001/public/shop/11.jpg', '海氏K5 海氏烤箱', 1469),
	(12, 'http://127.0.0.1:7001/public/shop/12.jpg', '海氏i7 大容量风炉烤箱', 1489),
	(13, 'http://127.0.0.1:7001/public/shop/13.jpg', '美的多功能风炉烤箱（PT3520W）', 1399),
	(14, 'http://127.0.0.1:7001/public/shop/14.jpg', '松下家用蒸烤箱15L  （NU-JA101W）', 2199),
	(15, 'http://127.0.0.1:7001/public/shop/15.jpg', '舌尖上的世界：（套装全3册）', 198),
	(16, 'http://127.0.0.1:7001/public/shop/16.jpg', '舌尖上的世界：（套装全3册）', 198),
	(17, 'http://127.0.0.1:7001/public/shop/17.jpg', '百度糯米500元充值卡', 500),
	(18, 'http://127.0.0.1:7001/public/shop/18.jpg', '百度糯米200元充值卡', 200),
	(19, 'http://127.0.0.1:7001/public/shop/19.jpg', '华为平板电脑 M6 10.8英寸', 2299),
	(20, 'http://127.0.0.1:7001/public/shop/20.jpg', 'Harthsun 牛排煎锅', 729);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;

-- 导出  表 gourmet.topic 结构
CREATE TABLE IF NOT EXISTS `topic` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `userId` int(16) DEFAULT NULL COMMENT '用户 id',
  `proDate` datetime DEFAULT NULL COMMENT '发表时间',
  `article` text COMMENT '内容',
  `image1` char(255) DEFAULT NULL COMMENT '图片1',
  `image2` varchar(255) DEFAULT NULL COMMENT '图片2',
  `image3` varchar(255) DEFAULT NULL COMMENT '图片3',
  `image4` varchar(255) DEFAULT NULL COMMENT '图片4',
  `image5` varchar(255) DEFAULT NULL COMMENT '图片5',
  `image6` varchar(255) DEFAULT NULL COMMENT '图片6',
  `title` varchar(255) DEFAULT NULL COMMENT '动态标题',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.topic 的数据：~3 rows (大约)
DELETE FROM `topic`;
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` (`id`, `userId`, `proDate`, `article`, `image1`, `image2`, `image3`, `image4`, `image5`, `image6`, `title`) VALUES
	(1, 1, '2020-08-21 18:35:38', '说是野生的，100克46元，感觉好贵，还好口感还是很不错', 'http://127.0.0.1:7001/public/topic/u1_1.jpg', 'http://127.0.0.1:7001/public/topic/u1_2.jpg', 'http://127.0.0.1:7001/public/topic/u1_3.jpg', 'http://127.0.0.1:7001/public/topic/u1_4.jpg', 'http://127.0.0.1:7001/public/topic/u1_5.jpg', 'http://127.0.0.1:7001/public/topic/u1_6.jpg', 'http://127.0.0.1:7001/public/topic/u1_7.jpg'),
	(2, 2, '2020-06-21 13:33:13', '#早餐# 芒果火腿吐司披萨', 'http://127.0.0.1:7001/public/topic/u2_1.jpg', 'http://127.0.0.1:7001/public/topic/u2_2.jpg', NULL, NULL, NULL, NULL, NULL),
	(3, 3, '2020-09-21 18:36:22', '#早餐# 早上好小宝贝儿们', 'http://127.0.0.1:7001/public/topic/u3_1.jpg', 'http://127.0.0.1:7001/public/topic/u2_2.jpg', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
