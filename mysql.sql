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


-- 导出 gourmet 的数据库结构
CREATE DATABASE IF NOT EXISTS `gourmet` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gourmet`;

-- 导出  表 gourmet.advise 结构
CREATE TABLE IF NOT EXISTS `advise` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='建议表';

-- 正在导出表  gourmet.advise 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `advise` DISABLE KEYS */;
INSERT INTO `advise` (`id`, `image`) VALUES
	(1, 'http://127.0.0.1:7001/public/advice/health.jpg'),
	(2, 'http://127.0.0.1:7001/public/advice/baking.jpg'),
	(3, 'http://127.0.0.1:7001/public/advice/recommend.jpg');
/*!40000 ALTER TABLE `advise` ENABLE KEYS */;

-- 导出  表 gourmet.advise_title 结构
CREATE TABLE IF NOT EXISTS `advise_title` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) DEFAULT NULL COMMENT '推荐标题',
  `adviseId` int(16) DEFAULT NULL COMMENT '话题分区编号',
  `titlelink` varchar(500) DEFAULT NULL COMMENT '话题标题链接地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.advise_title 的数据：~18 rows (大约)
/*!40000 ALTER TABLE `advise_title` DISABLE KEYS */;
INSERT INTO `advise_title` (`id`, `title`, `adviseId`, `titlelink`) VALUES
	(1, '降血压食物推荐，从日常开始改善！', 1, 'https://www.meishichina.com/Health/CommonSense/202001/224129.html'),
	(2, '日常按摩这些部位，养生更养身', 1, 'https://www.meishichina.com/Health/JianKang/202001/224120.html'),
	(3, '脑溢血原因，冬天要更注意', 1, 'https://www.meishichina.com/Health/JianKang/202001/224117.html'),
	(4, '孩子体质差总生病，父母该怎么办？', 1, 'https://www.meishichina.com/Health/JianKang/202001/224115.html'),
	(5, '专题┊那些美颜食物的神级吃法', 1, 'https://www.meishichina.com/mofang/meiyanshiwu/'),
	(6, '不输猪油版的桃酥做法', 2, 'https://home.meishichina.com/pai-1127987.html'),
	(7, '这些挑水果小窍门，你知道吗？', 2, 'https://home.meishichina.com/pai-993792.html'),
	(8, '内藏惊喜的彩虹戚风蛋糕', 2, 'https://home.meishichina.com/pai-993792.html'),
	(9, '消耗蛋挞皮－简单版红薯酥', 2, 'https://home.meishichina.com/pai-730072.html'),
	(10, '菜单┊油条华丽转身，也是蛮拼哒', 2, 'https://home.meishichina.com/collect-4791212.html'),
	(11, '专题┊另类咸香口儿 满足你的味蕾！', 2, 'https://www.meishichina.com/mofang/xianweihb/'),
	(12, '合理饮食，远离脂肪肝', 3, 'https://www.meishichina.com/mofang/yuanlizhifanggan/'),
	(13, '划重点！食物降血脂这些更有效', 3, 'https://www.meishichina.com/mofang/shiwujiangxuezhi/'),
	(14, '粗粮细作：健康能量燕麦甜品', 3, 'https://www.meishichina.com/mofang/yanmaihb/'),
	(15, '妈妈派┊童趣童味，儿童创意餐点', 3, 'https://mamapai.meishichina.com/tongqutongwei/'),
	(16, '免费抽奖┊ACA ATO-HB38HT电烤箱', 3, 'https://zhen.meishichina.com/26840/'),
	(17, '专题┊酒后头痛，5种食物可缓解', 3, 'https://www.meishichina.com/mofang/huanjiejiuhoutoutengshiwu/'),
	(18, '专题┊快手早餐，营养满分の三明治', 1, 'https://www.meishichina.com/mofang/sanmingzhizuofadaquan/');
/*!40000 ALTER TABLE `advise_title` ENABLE KEYS */;

-- 导出  表 gourmet.book 结构
CREATE TABLE IF NOT EXISTS `book` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `content` varchar(255) DEFAULT NULL COMMENT '描述',
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.book 的数据：~14 rows (大约)
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
/*!40000 ALTER TABLE `book_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `book_type` ENABLE KEYS */;

-- 导出  表 gourmet.food 结构
CREATE TABLE IF NOT EXISTS `food` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '菜谱标题',
  `userId` int(16) DEFAULT NULL COMMENT '发表用户',
  `image` varchar(255) DEFAULT NULL COMMENT '主页菜谱图片',
  `alone` varchar(255) DEFAULT NULL COMMENT '独家 tag',
  `typeId` int(16) DEFAULT NULL COMMENT '分类 id ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.food 的数据：~20 rows (大约)
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` (`id`, `title`, `userId`, `image`, `alone`, `typeId`) VALUES
	(1, '猪仔包', 1, 'http://127.0.0.1:7001/public/food/f1.jpg', '1', 5),
	(2, '话梅排骨', 1, 'http://127.0.0.1:7001/public/food/f2.jpg', '0', 1),
	(3, '模具锅煎肉丸', 1, 'http://127.0.0.1:7001/public/food/f3.jpg', '1', 3),
	(4, '发酵面糊猕猴桃三角松饼', 2, 'http://127.0.0.1:7001/public/food/f4.jpg', '1', 1),
	(5, '牛奶十字小饼', 1, 'http://127.0.0.1:7001/public/food/f5.jpg', '1', 6),
	(6, '双重花生酱夹心华夫饼', 3, 'http://127.0.0.1:7001/public/food/f6.jpg', '0', 5),
	(7, '新奥尔良烤鸡翅', 1, 'http://127.0.0.1:7001/public/food/f7.jpg', '1', 2),
	(8, '咸腌豇豆', 4, 'http://127.0.0.1:7001/public/food/f8.jpg', '1', 6),
	(9, '酸奶红心火龙果酱三角松饼', 2, 'http://127.0.0.1:7001/public/food/f9.jpg', '1', 3),
	(10, '蒜茸粉丝龙虾尾', 2, 'http://127.0.0.1:7001/public/food/f10.jpg', '0', 4),
	(11, '肉末梅菜豇豆', 4, 'http://127.0.0.1:7001/public/food/f11.jpg', '1', 2),
	(12, '淮盐黄金鸡棒槌', 3, 'http://127.0.0.1:7001/public/food/f12.jpg', '1', 5),
	(13, '果汁汤种吐丝', 2, 'http://127.0.0.1:7001/public/food/f13.jpg', '1', 4),
	(14, '排骨炖豇豆', 1, 'http://127.0.0.1:7001/public/food/f14.jpg', '0', 2),
	(15, '芝麻花生酱华夫饼', 2, 'http://127.0.0.1:7001/public/food/f15.jpg', '1', 3),
	(16, '水晶盐煸鸡味凤爪', 3, 'http://127.0.0.1:7001/public/food/f16.jpg', '1', 1),
	(17, '粤式牛仔骨', 4, 'http://127.0.0.1:7001/public/food/f17.jpg', '1', 5),
	(18, '罗勒炒鸡翅，', 2, 'http://127.0.0.1:7001/public/food/f18.jpg', '0', 6),
	(19, '烤蒜茸大茄子', 1, 'http://127.0.0.1:7001/public/food/f19.jpg', '1', 3),
	(20, '香草烤猪臀肉', 1, 'http://127.0.0.1:7001/public/food/f20.jpg', '1', 5);
/*!40000 ALTER TABLE `food` ENABLE KEYS */;

-- 导出  表 gourmet.food_detail 结构
CREATE TABLE IF NOT EXISTS `food_detail` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `foodId` int(16) DEFAULT NULL COMMENT '菜谱id',
  `content` text COMMENT '菜谱描述',
  `main` varchar(500) DEFAULT NULL COMMENT '菜谱主料',
  `auxiliary` varchar(500) DEFAULT NULL COMMENT '菜谱辅料',
  `materials` varchar(500) DEFAULT NULL COMMENT '菜谱材料',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.food_detail 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `food_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `food_detail` ENABLE KEYS */;

-- 导出  表 gourmet.food_step 结构
CREATE TABLE IF NOT EXISTS `food_step` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `foodId` int(16) DEFAULT NULL COMMENT '菜谱id',
  `stepNum` int(11) DEFAULT NULL COMMENT '步骤序号',
  `stepPic` varchar(255) DEFAULT NULL COMMENT '步骤图片',
  `content` text COMMENT '步骤描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.food_step 的数据：~13 rows (大约)
/*!40000 ALTER TABLE `food_step` DISABLE KEYS */;
INSERT INTO `food_step` (`id`, `foodId`, `stepNum`, `stepPic`, `content`) VALUES
	(1, 1, 1, 'http://127.0.0.1:7001/public/step/0.jpg', '1.先来准备一下主要食材，面粉用的是普通的中筋面粉，南瓜用的是这种绿色的，味道很清爽。'),
	(2, 1, 2, 'http://127.0.0.1:7001/public/step/1.jpg', '2.南瓜洗净带皮擦成丝，带一点隐隐约约的绿色做出的丸子更加好看，用量比较随意，多点少点都可以。'),
	(3, 1, 3, 'http://127.0.0.1:7001/public/step/2.jpg', '3.面粉放入大碗，加入一丢丢盐和泡打粉搅拌均匀。'),
	(4, 1, 4, 'http://127.0.0.1:7001/public/step/3.jpg', '4.打入一枚鸡蛋。'),
	(5, 1, 5, 'http://127.0.0.1:7001/public/step/4.jpg', '5.把南瓜丝稍微剁碎一些，放入碗中，搅拌均匀。'),
	(6, 1, 6, 'http://127.0.0.1:7001/public/step/5.jpg', '6.最后加入少许十三香调味，搅拌均匀。'),
	(7, 1, 7, 'http://127.0.0.1:7001/public/step/6.jpg', '7.加入清水来调节浓稠程度，最终得到提起蛋抽，面糊可以呈片状掉落，蛋抽上仍有残留的面糊的状态即可，静置半小时。'),
	(8, 1, 8, 'http://127.0.0.1:7001/public/step/7.jpg', '8.多功能锅安装丸子盘，表面刷油，高高火预热1分钟，面糊不需要搅拌，倒入少量面糊在盘内，面糊一定不要多，过大的丸子不容易熟。'),
	(9, 1, 9, 'http://127.0.0.1:7001/public/step/8.jpg', '9.加盖加热，使锅内温度足够高。'),
	(10, 1, 10, 'http://127.0.0.1:7001/public/step/9.jpg', '10.当丸子四周凝固，表面仍有面糊时，用夹子或筷子将半个丸子取出，摞在另外半个丸子上，稍微用力下压，中心的面糊四溢，将两半个丸子粘紧实，这样就形成一个完整圆润的小丸子了。'),
	(11, 1, 11, 'http://127.0.0.1:7001/public/step/10.jpg', '11.继续加热丸子，并不时转动，使每一面都均匀受热，表面金黄色，出香味儿，就表示丸子熟了，要耐心煎，不确定是否熟透，可以用牙签扎一下丸子，没有湿湿的面糊带出来，就证明熟了。'),
	(12, 1, 12, 'http://127.0.0.1:7001/public/step/11.jpg', '12.用签子穿起来，可以搭配沙拉酱，蕃茄酱等酱料食用，直接吃也很美味～'),
	(13, 1, 13, 'http://127.0.0.1:7001/public/step/12.jpg', '开吃～');
/*!40000 ALTER TABLE `food_step` ENABLE KEYS */;

-- 导出  表 gourmet.food_type 结构
CREATE TABLE IF NOT EXISTS `food_type` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `name` char(50) DEFAULT NULL COMMENT '分类名称',
  `part` int(16) DEFAULT NULL COMMENT '分区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.food_type 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `food_type` DISABLE KEYS */;
INSERT INTO `food_type` (`id`, `name`, `part`) VALUES
	(1, '炒', 1),
	(2, '川菜', 3),
	(3, '凉菜', 6),
	(4, '英国菜', 4),
	(5, '米饭', 5),
	(6, '微辣', 2);
/*!40000 ALTER TABLE `food_type` ENABLE KEYS */;

-- 导出  表 gourmet.huati 结构
CREATE TABLE IF NOT EXISTS `huati` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userPic` varchar(255) DEFAULT '0',
  `title` varchar(255) DEFAULT '0',
  `huati` varchar(255) DEFAULT '0',
  `time` varchar(255) DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- 正在导出表  gourmet.huati 的数据：~14 rows (大约)
/*!40000 ALTER TABLE `huati` DISABLE KEYS */;
INSERT INTO `huati` (`id`, `userPic`, `title`, `huati`, `time`) VALUES
	(59, 'http://localhost:7001/public/upload/d6fd6b2a-3cb8-4323-ad16-1efcee315550.jpg', '听说今天阳光明媚', '是的，阳光很好，只是还是很冷', '2020/10/4 下午7:13:05');
/*!40000 ALTER TABLE `huati` ENABLE KEYS */;

-- 导出  表 gourmet.lbt 结构
CREATE TABLE IF NOT EXISTS `lbt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `images` varchar(255) DEFAULT NULL COMMENT '轮播图片',
  `url` varchar(255) DEFAULT NULL COMMENT '链接地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.lbt 的数据：~6 rows (大约)
/*!40000 ALTER TABLE `lbt` DISABLE KEYS */;
INSERT INTO `lbt` (`id`, `images`, `url`) VALUES
	(1, 'http://127.0.0.1:7001/public/lbt/1.jpg', 'https://home.meishichina.com/event-497.html#hmsr=www&hmpl=index&hmcu=magic&hmkw=D1&hmci=87154'),
	(2, 'http://127.0.0.1:7001/public/lbt/2.jpg', 'https://www.meishichina.com/mofang/zhongqiuyuebinggonglue/#hmsr=www&hmpl=index&hmcu=magic&hmkw=D2&hmci=62240'),
	(3, 'http://127.0.0.1:7001/public/lbt/3.jpg', 'https://www.meishichina.com/mofang/mogudezuofadaquan/#hmsr=www&hmpl=index&hmcu=magic&hmkw=D4&hmci=86243'),
	(4, 'http://127.0.0.1:7001/public/lbt/4.jpg', 'https://www.meishichina.com/mofang/malaxiaolongxia/#hmsr=www&hmpl=index&hmcu=magic&hmkw=D5&hmci=85191'),
	(5, 'http://127.0.0.1:7001/public/lbt/5.jpg', 'https://www.meishichina.com/mofang/suofen/#hmsr=www&hmpl=index&hmcu=magic&hmkw=D6&hmci=83977'),
	(6, 'http://127.0.0.1:7001/public/lbt/6.jpg', 'https://www.meishichina.com/mofang/qingfeishiwu/#hmsr=www&hmpl=index&hmcu=magic&hmkw=D3&hmci=89020');
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.myuser 的数据：~15 rows (大约)
/*!40000 ALTER TABLE `myuser` DISABLE KEYS */;
INSERT INTO `myuser` (`id`, `userName`, `userPwd`, `userPic`, `userSex`, `address`, `email`, `says`) VALUES
	(1, 'people1', '123', 'http://127.0.0.1:7001/public/headPic/0.jpg', '女', '贵州贵阳', '56321456378@qq.com', '头号人物的个性签名'),
	(2, '食色', '123', 'http://127.0.0.1:7001/public/headPic/1.jpg', '女', '四川成都', '15632856941@qq.com', '我是食色的个性签名'),
	(3, 'C00K100@@', '123', 'http://127.0.0.1:7001/public/headPic/2.jpg', '女', '贵州铜仁', '12364589632@qq.com', '女二号的个性签名'),
	(4, 'Jack', '123456', 'http://127.0.0.1:7001/public/headPic/3.jpg', '男', '四川成都', '123321456654@qq.com', '男一号的个性签名'),
	(21, NULL, '321', 'http://localhost:7001/public/upload/0d0c9305-d968-4559-a30f-544a762a121e.jpg', '女', NULL, '123', NULL),
	(22, NULL, 'gzl22', 'http://localhost:7001/public/upload/a06c40e5-6eda-463b-be45-ae5cd061a570.png', '女', NULL, 'cwm11', NULL);
/*!40000 ALTER TABLE `myuser` ENABLE KEYS */;

-- 导出  表 gourmet.myuser_vip 结构
CREATE TABLE IF NOT EXISTS `myuser_vip` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `userId` int(16) DEFAULT NULL COMMENT '对应用户id',
  `grow` int(11) DEFAULT NULL COMMENT '成长值',
  `lucky` int(11) DEFAULT NULL COMMENT '幸运草',
  `beauty` int(11) DEFAULT NULL COMMENT '美粒',
  `look` int(11) DEFAULT NULL COMMENT '关注',
  `fans` int(11) DEFAULT NULL COMMENT '粉丝',
  `zan` int(11) DEFAULT NULL COMMENT '赞与收藏',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.myuser_vip 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `myuser_vip` DISABLE KEYS */;
/*!40000 ALTER TABLE `myuser_vip` ENABLE KEYS */;

-- 导出  表 gourmet.shop 结构
CREATE TABLE IF NOT EXISTS `shop` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL COMMENT '图片',
  `name` varchar(255) DEFAULT NULL COMMENT '名称',
  `price` float(32,0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.shop 的数据：~20 rows (大约)
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
  `proDate` varchar(255) DEFAULT NULL COMMENT '发表时间',
  `article` text COMMENT '内容',
  `title` varchar(255) DEFAULT NULL COMMENT '动态标题',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.topic 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `topic` DISABLE KEYS */;
INSERT INTO `topic` (`id`, `userId`, `proDate`, `article`, `title`) VALUES
	(1, 1, '2020-08-21 18:35:38', '说是野生的，100克46元，感觉好贵，还好口感还是很不错', '周三早餐'),
	(2, 2, '2020-06-21 13:33:13', '#早餐# 芒果火腿吐司披萨', '我是这个话题的标题'),
	(3, 3, '2020-09-21 18:36:22', '#早餐# 早上好小宝贝儿们', '早安');
/*!40000 ALTER TABLE `topic` ENABLE KEYS */;

-- 导出  表 gourmet.topic_img 结构
CREATE TABLE IF NOT EXISTS `topic_img` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `topicId` int(16) DEFAULT NULL COMMENT '对应话题的id',
  `image` varchar(255) DEFAULT NULL COMMENT '话题的图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.topic_img 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `topic_img` DISABLE KEYS */;
INSERT INTO `topic_img` (`id`, `topicId`, `image`) VALUES
	(1, 1, 'http://127.0.0.1:7001/public/topic/u1_1.jpg'),
	(2, 1, 'http://127.0.0.1:7001/public/topic/u1_2.jpg'),
	(3, 1, 'http://127.0.0.1:7001/public/topic/u1_3.jpg'),
	(4, 1, 'http://127.0.0.1:7001/public/topic/u1_4.jpg'),
	(5, 1, 'http://127.0.0.1:7001/public/topic/u1_5.jpg'),
	(6, 1, 'http://127.0.0.1:7001/public/topic/u1_6.jpg'),
	(7, 2, 'http://127.0.0.1:7001/public/topic/u2_1.jpg'),
	(8, 2, 'http://127.0.0.1:7001/public/topic/u2_2.jpg'),
	(9, 3, 'http://127.0.0.1:7001/public/topic/u3_1.jpg'),
	(10, 3, 'http://127.0.0.1:7001/public/topic/u2_2.jpg');
/*!40000 ALTER TABLE `topic_img` ENABLE KEYS */;

-- 导出  表 gourmet.topic_like 结构
CREATE TABLE IF NOT EXISTS `topic_like` (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `userId` int(16) DEFAULT NULL COMMENT '喜欢的用户id',
  `topicId` int(16) DEFAULT NULL COMMENT '喜欢的话题id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

-- 正在导出表  gourmet.topic_like 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `topic_like` DISABLE KEYS */;
INSERT INTO `topic_like` (`id`, `userId`, `topicId`) VALUES
	(1, 1, 2),
	(2, 2, 1),
	(3, 3, 1);
/*!40000 ALTER TABLE `topic_like` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
