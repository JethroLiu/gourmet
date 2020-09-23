/*
 Navicat Premium Data Transfer

 Source Server         : jethro
 Source Server Type    : MySQL
 Source Server Version : 50173
 Source Host           : localhost:3306
 Source Schema         : gourmet

 Target Server Type    : MySQL
 Target Server Version : 50173
 File Encoding         : 65001

 Date: 23/09/2020 17:35:25
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for advise
-- ----------------------------
DROP TABLE IF EXISTS `advise`;
CREATE TABLE `advise`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '建议表' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of advise
-- ----------------------------
INSERT INTO `advise` VALUES (1, 'http://127.0.0.1:7001/public/advice/health.jpg');
INSERT INTO `advise` VALUES (2, 'http://127.0.0.1:7001/public/advice/baking.jpg');
INSERT INTO `advise` VALUES (3, 'http://127.0.0.1:7001/public/advice/recommend.jpg');

-- ----------------------------
-- Table structure for advise_title
-- ----------------------------
DROP TABLE IF EXISTS `advise_title`;
CREATE TABLE `advise_title`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '推荐标题',
  `adviseId` int(16) NULL DEFAULT NULL COMMENT '话题分区编号',
  `titlelink` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '话题标题链接地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of advise_title
-- ----------------------------
INSERT INTO `advise_title` VALUES (1, '降血压食物推荐，从日常开始改善！', 1, 'https://www.meishichina.com/Health/CommonSense/202001/224129.html');
INSERT INTO `advise_title` VALUES (2, '日常按摩这些部位，养生更养身', 1, 'https://www.meishichina.com/Health/JianKang/202001/224120.html');
INSERT INTO `advise_title` VALUES (3, '脑溢血原因，冬天要更注意', 1, 'https://www.meishichina.com/Health/JianKang/202001/224117.html');
INSERT INTO `advise_title` VALUES (4, '孩子体质差总生病，父母该怎么办？', 1, 'https://www.meishichina.com/Health/JianKang/202001/224115.html');
INSERT INTO `advise_title` VALUES (5, '专题┊那些美颜食物的神级吃法', 1, 'https://www.meishichina.com/mofang/meiyanshiwu/');
INSERT INTO `advise_title` VALUES (6, '不输猪油版的桃酥做法', 2, 'https://home.meishichina.com/pai-1127987.html');
INSERT INTO `advise_title` VALUES (7, '这些挑水果小窍门，你知道吗？', 2, 'https://home.meishichina.com/pai-993792.html');
INSERT INTO `advise_title` VALUES (8, '内藏惊喜的彩虹戚风蛋糕', 2, 'https://home.meishichina.com/pai-993792.html');
INSERT INTO `advise_title` VALUES (9, '消耗蛋挞皮－简单版红薯酥', 2, 'https://home.meishichina.com/pai-730072.html');
INSERT INTO `advise_title` VALUES (10, '菜单┊油条华丽转身，也是蛮拼哒', 2, 'https://home.meishichina.com/collect-4791212.html');
INSERT INTO `advise_title` VALUES (11, '专题┊另类咸香口儿 满足你的味蕾！', 2, 'https://www.meishichina.com/mofang/xianweihb/');
INSERT INTO `advise_title` VALUES (12, '合理饮食，远离脂肪肝', 3, 'https://www.meishichina.com/mofang/yuanlizhifanggan/');
INSERT INTO `advise_title` VALUES (13, '划重点！食物降血脂这些更有效', 3, 'https://www.meishichina.com/mofang/shiwujiangxuezhi/');
INSERT INTO `advise_title` VALUES (14, '粗粮细作：健康能量燕麦甜品', 3, 'https://www.meishichina.com/mofang/yanmaihb/');
INSERT INTO `advise_title` VALUES (15, '妈妈派┊童趣童味，儿童创意餐点', 3, 'https://mamapai.meishichina.com/tongqutongwei/');
INSERT INTO `advise_title` VALUES (16, '免费抽奖┊ACA ATO-HB38HT电烤箱', 3, 'https://zhen.meishichina.com/26840/');
INSERT INTO `advise_title` VALUES (17, '专题┊酒后头痛，5种食物可缓解', 3, 'https://www.meishichina.com/mofang/huanjiejiuhoutoutengshiwu/');
INSERT INTO `advise_title` VALUES (18, '专题┊快手早餐，营养满分の三明治', 1, 'https://www.meishichina.com/mofang/sanmingzhizuofadaquan/');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, '西瓜', '吃瓜群众的最爱', 'http://127.0.0.1:7001/public/book/xigua.jpg');
INSERT INTO `book` VALUES (2, '毛豆', '夜宵c位', 'http://127.0.0.1:7001/public/book/maodou.jpg');
INSERT INTO `book` VALUES (3, '丝瓜', '养颜美人水', 'http://127.0.0.1:7001/public/book/sigua.jpg');
INSERT INTO `book` VALUES (4, '西红柿', '水果or蔬菜', 'http://127.0.0.1:7001/public/book/xihongshi.jpg');
INSERT INTO `book` VALUES (5, '黄瓜', '厨房里的美容师', 'http://127.0.0.1:7001/public/book/huanggua.jpg');
INSERT INTO `book` VALUES (6, '茄子', '微笑代名词', 'http://127.0.0.1:7001/public/book/qiezi.jpg');
INSERT INTO `book` VALUES (7, '苦瓜', '共苦是件很甜的事', 'http://127.0.0.1:7001/public/book/kugua.jpg');
INSERT INTO `book` VALUES (8, '蛤蜊', '平民海鲜', 'http://127.0.0.1:7001/public/book/hali.jpg');
INSERT INTO `book` VALUES (9, '鸭肉', '夏季滋补佳品', 'http://127.0.0.1:7001/public/book/yarou.jpg');
INSERT INTO `book` VALUES (10, '鲫鱼', '一勺清汤胜万钱', 'http://127.0.0.1:7001/public/book/jiyu.jpg');
INSERT INTO `book` VALUES (11, '鸡翅', '老少通吃', 'http://127.0.0.1:7001/public/book/jichi.jpg');
INSERT INTO `book` VALUES (12, '排骨', '可记得吮指之乐', 'http://127.0.0.1:7001/public/book/paigu.jpg');
INSERT INTO `book` VALUES (13, '小龙虾', '社交新宠', 'http://127.0.0.1:7001/public/book/xiaolongxia.jpg');
INSERT INTO `book` VALUES (14, '猪里脊', '超嫩小鲜肉', 'http://127.0.0.1:7001/public/book/zhuliji.jpg');

-- ----------------------------
-- Table structure for book_type
-- ----------------------------
DROP TABLE IF EXISTS `book_type`;
CREATE TABLE `book_type`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `part` int(16) NULL DEFAULT NULL COMMENT '分区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜谱标题',
  `userId` int(16) NULL DEFAULT NULL COMMENT '发表用户',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主页菜谱图片',
  `alone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '独家 tag',
  `typeId` int(16) NULL DEFAULT NULL COMMENT '分类 id ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES (1, '猪仔包', 1, 'http://127.0.0.1:7001/public/food/f1.jpg', '1', 5);
INSERT INTO `food` VALUES (2, '话梅排骨', 1, 'http://127.0.0.1:7001/public/food/f2.jpg', '0', 1);
INSERT INTO `food` VALUES (3, '模具锅煎肉丸', 1, 'http://127.0.0.1:7001/public/food/f3.jpg', '1', 3);
INSERT INTO `food` VALUES (4, '发酵面糊猕猴桃三角松饼', 2, 'http://127.0.0.1:7001/public/food/f4.jpg', '1', 1);
INSERT INTO `food` VALUES (5, '牛奶十字小饼', 1, 'http://127.0.0.1:7001/public/food/f5.jpg', '1', 6);
INSERT INTO `food` VALUES (6, '双重花生酱夹心华夫饼', 3, 'http://127.0.0.1:7001/public/food/f6.jpg', '0', 5);
INSERT INTO `food` VALUES (7, '新奥尔良烤鸡翅', 1, 'http://127.0.0.1:7001/public/food/f7.jpg', '1', 2);
INSERT INTO `food` VALUES (8, '咸腌豇豆', 4, 'http://127.0.0.1:7001/public/food/f8.jpg', '1', 6);
INSERT INTO `food` VALUES (9, '酸奶红心火龙果酱三角松饼', 2, 'http://127.0.0.1:7001/public/food/f9.jpg', '1', 3);
INSERT INTO `food` VALUES (10, '蒜茸粉丝龙虾尾', 2, 'http://127.0.0.1:7001/public/food/f10.jpg', '0', 4);
INSERT INTO `food` VALUES (11, '肉末梅菜豇豆', 4, 'http://127.0.0.1:7001/public/food/f11.jpg', '1', 2);
INSERT INTO `food` VALUES (12, '淮盐黄金鸡棒槌', 3, 'http://127.0.0.1:7001/public/food/f12.jpg', '1', 5);
INSERT INTO `food` VALUES (13, '果汁汤种吐丝', 2, 'http://127.0.0.1:7001/public/food/f13.jpg', '1', 4);
INSERT INTO `food` VALUES (14, '排骨炖豇豆', 1, 'http://127.0.0.1:7001/public/food/f14.jpg', '0', 2);
INSERT INTO `food` VALUES (15, '芝麻花生酱华夫饼', 2, 'http://127.0.0.1:7001/public/food/f15.jpg', '1', 3);
INSERT INTO `food` VALUES (16, '水晶盐煸鸡味凤爪', 3, 'http://127.0.0.1:7001/public/food/f16.jpg', '1', 1);
INSERT INTO `food` VALUES (17, '粤式牛仔骨', 4, 'http://127.0.0.1:7001/public/food/f17.jpg', '1', 5);
INSERT INTO `food` VALUES (18, '罗勒炒鸡翅，', 2, 'http://127.0.0.1:7001/public/food/f18.jpg', '0', 6);
INSERT INTO `food` VALUES (19, '烤蒜茸大茄子', 1, 'http://127.0.0.1:7001/public/food/f19.jpg', '1', 3);
INSERT INTO `food` VALUES (20, '香草烤猪臀肉', 1, 'http://127.0.0.1:7001/public/food/f20.jpg', '1', 5);

-- ----------------------------
-- Table structure for food_detail
-- ----------------------------
DROP TABLE IF EXISTS `food_detail`;
CREATE TABLE `food_detail`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `foodId` int(16) NULL DEFAULT NULL COMMENT '菜谱id',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '菜谱描述',
  `main` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜谱主料',
  `auxiliary` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜谱辅料',
  `materials` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜谱材料',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for food_step
-- ----------------------------
DROP TABLE IF EXISTS `food_step`;
CREATE TABLE `food_step`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `foodId` int(16) NULL DEFAULT NULL COMMENT '菜谱id',
  `stepNum` int(11) NULL DEFAULT NULL COMMENT '步骤序号',
  `stepPic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '步骤图片',
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '步骤描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of food_step
-- ----------------------------
INSERT INTO `food_step` VALUES (1, 1, 1, 'http://127.0.0.1:7001/public/step/0.jpg', '1.先来准备一下主要食材，面粉用的是普通的中筋面粉，南瓜用的是这种绿色的，味道很清爽。');
INSERT INTO `food_step` VALUES (2, 1, 2, 'http://127.0.0.1:7001/public/step/1.jpg', '2.南瓜洗净带皮擦成丝，带一点隐隐约约的绿色做出的丸子更加好看，用量比较随意，多点少点都可以。');
INSERT INTO `food_step` VALUES (3, 1, 3, 'http://127.0.0.1:7001/public/step/2.jpg', '3.面粉放入大碗，加入一丢丢盐和泡打粉搅拌均匀。');
INSERT INTO `food_step` VALUES (4, 1, 4, 'http://127.0.0.1:7001/public/step/3.jpg', '4.打入一枚鸡蛋。');
INSERT INTO `food_step` VALUES (5, 1, 5, 'http://127.0.0.1:7001/public/step/4.jpg', '5.把南瓜丝稍微剁碎一些，放入碗中，搅拌均匀。');
INSERT INTO `food_step` VALUES (6, 1, 6, 'http://127.0.0.1:7001/public/step/5.jpg', '6.最后加入少许十三香调味，搅拌均匀。');
INSERT INTO `food_step` VALUES (7, 1, 7, 'http://127.0.0.1:7001/public/step/6.jpg', '7.加入清水来调节浓稠程度，最终得到提起蛋抽，面糊可以呈片状掉落，蛋抽上仍有残留的面糊的状态即可，静置半小时。');
INSERT INTO `food_step` VALUES (8, 1, 8, 'http://127.0.0.1:7001/public/step/7.jpg', '8.多功能锅安装丸子盘，表面刷油，高高火预热1分钟，面糊不需要搅拌，倒入少量面糊在盘内，面糊一定不要多，过大的丸子不容易熟。');
INSERT INTO `food_step` VALUES (9, 1, 9, 'http://127.0.0.1:7001/public/step/8.jpg', '9.加盖加热，使锅内温度足够高。');
INSERT INTO `food_step` VALUES (10, 1, 10, 'http://127.0.0.1:7001/public/step/9.jpg', '10.当丸子四周凝固，表面仍有面糊时，用夹子或筷子将半个丸子取出，摞在另外半个丸子上，稍微用力下压，中心的面糊四溢，将两半个丸子粘紧实，这样就形成一个完整圆润的小丸子了。');
INSERT INTO `food_step` VALUES (11, 1, 11, 'http://127.0.0.1:7001/public/step/10.jpg', '11.继续加热丸子，并不时转动，使每一面都均匀受热，表面金黄色，出香味儿，就表示丸子熟了，要耐心煎，不确定是否熟透，可以用牙签扎一下丸子，没有湿湿的面糊带出来，就证明熟了。');
INSERT INTO `food_step` VALUES (12, 1, 12, 'http://127.0.0.1:7001/public/step/11.jpg', '12.用签子穿起来，可以搭配沙拉酱，蕃茄酱等酱料食用，直接吃也很美味～');
INSERT INTO `food_step` VALUES (13, 1, 13, 'http://127.0.0.1:7001/public/step/12.jpg', '开吃～');

-- ----------------------------
-- Table structure for food_type
-- ----------------------------
DROP TABLE IF EXISTS `food_type`;
CREATE TABLE `food_type`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `name` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '分类名称',
  `part` int(16) NULL DEFAULT NULL COMMENT '分区',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of food_type
-- ----------------------------
INSERT INTO `food_type` VALUES (1, '炒', 1);
INSERT INTO `food_type` VALUES (2, '川菜', 3);
INSERT INTO `food_type` VALUES (3, '凉菜', 6);
INSERT INTO `food_type` VALUES (4, '英国菜', 4);
INSERT INTO `food_type` VALUES (5, '米饭', 5);
INSERT INTO `food_type` VALUES (6, '微辣', 2);

-- ----------------------------
-- Table structure for lbt
-- ----------------------------
DROP TABLE IF EXISTS `lbt`;
CREATE TABLE `lbt`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `images` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '轮播图片',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '链接地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lbt
-- ----------------------------
INSERT INTO `lbt` VALUES (1, 'http://127.0.0.1:7001/public/lbt/1.jpg', 'https://home.meishichina.com/event-497.html#hmsr=www&hmpl=index&hmcu=magic&hmkw=D1&hmci=87154');
INSERT INTO `lbt` VALUES (2, 'http://127.0.0.1:7001/public/lbt/2.jpg', 'https://www.meishichina.com/mofang/zhongqiuyuebinggonglue/#hmsr=www&hmpl=index&hmcu=magic&hmkw=D2&hmci=62240');
INSERT INTO `lbt` VALUES (3, 'http://127.0.0.1:7001/public/lbt/3.jpg', 'https://www.meishichina.com/mofang/mogudezuofadaquan/#hmsr=www&hmpl=index&hmcu=magic&hmkw=D4&hmci=86243');
INSERT INTO `lbt` VALUES (4, 'http://127.0.0.1:7001/public/lbt/4.jpg', 'https://www.meishichina.com/mofang/malaxiaolongxia/#hmsr=www&hmpl=index&hmcu=magic&hmkw=D5&hmci=85191');
INSERT INTO `lbt` VALUES (5, 'http://127.0.0.1:7001/public/lbt/5.jpg', 'https://www.meishichina.com/mofang/suofen/#hmsr=www&hmpl=index&hmcu=magic&hmkw=D6&hmci=83977');
INSERT INTO `lbt` VALUES (6, 'http://127.0.0.1:7001/public/lbt/6.jpg', 'https://www.meishichina.com/mofang/qingfeishiwu/#hmsr=www&hmpl=index&hmcu=magic&hmkw=D3&hmci=89020');

-- ----------------------------
-- Table structure for myuser
-- ----------------------------
DROP TABLE IF EXISTS `myuser`;
CREATE TABLE `myuser`  (
  `id` int(16) NOT NULL AUTO_INCREMENT COMMENT '用户 id',
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `userPwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户密码',
  `userPic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `userSex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户性别',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户地址',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电子邮箱',
  `says` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个性签名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of myuser
-- ----------------------------
INSERT INTO `myuser` VALUES (1, 'people1', '123', 'http://127.0.0.1:7001/public/headPic/0.jpg', '女', '贵州贵阳', '56321456378@qq.com', '头号人物的个性签名');
INSERT INTO `myuser` VALUES (2, '食色', '123', 'http://127.0.0.1:7001/public/headPic/1.jpg', '女', '四川成都', '15632856941@qq.com', '我是食色的个性签名');
INSERT INTO `myuser` VALUES (3, 'C00K100@@', '123', 'http://127.0.0.1:7001/public/headPic/2.jpg', '女', '贵州铜仁', '12364589632@qq.com', '女二号的个性签名');
INSERT INTO `myuser` VALUES (4, 'Jack', '123456', 'http://127.0.0.1:7001/public/headPic/3.jpg', '男', '四川成都', '123321456654@qq.com', '男一号的个性签名');

-- ----------------------------
-- Table structure for myuser_vip
-- ----------------------------
DROP TABLE IF EXISTS `myuser_vip`;
CREATE TABLE `myuser_vip`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `userId` int(16) NULL DEFAULT NULL COMMENT '对应用户id',
  `grow` int(11) NULL DEFAULT NULL COMMENT '成长值',
  `lucky` int(11) NULL DEFAULT NULL COMMENT '幸运草',
  `beauty` int(11) NULL DEFAULT NULL COMMENT '美粒',
  `look` int(11) NULL DEFAULT NULL COMMENT '关注',
  `fans` int(11) NULL DEFAULT NULL COMMENT '粉丝',
  `zan` int(11) NULL DEFAULT NULL COMMENT '赞与收藏',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for shop
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名称',
  `price` float(32, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO `shop` VALUES (1, 'http://127.0.0.1:7001/public/shop/1.jpg', '美的鸳鸯电火锅（MC-DY3030Easy102）', 169);
INSERT INTO `shop` VALUES (2, 'http://127.0.0.1:7001/public/shop/2.jpg', '美的三明治早餐机（JK1312P101R）', 159);
INSERT INTO `shop` VALUES (3, 'http://127.0.0.1:7001/public/shop/3.jpg', '乐扣乐扣耐热玻璃保鲜盒八件套装', 239);
INSERT INTO `shop` VALUES (4, 'http://127.0.0.1:7001/public/shop/4.jpg', '苏泊尔火红点不粘锅三件套', 519);
INSERT INTO `shop` VALUES (5, 'http://127.0.0.1:7001/public/shop/5.jpg', '九阳静音破壁机（Y921）', 1199);
INSERT INTO `shop` VALUES (6, 'http://127.0.0.1:7001/public/shop/6.jpg', '九阳破壁机（L18-Y915S）', 499);
INSERT INTO `shop` VALUES (7, 'http://127.0.0.1:7001/public/shop/7.jpg', '福库3L智能电饭煲（CR-0675FW）', 1399);
INSERT INTO `shop` VALUES (8, 'http://127.0.0.1:7001/public/shop/8.jpg', '苏泊尔4L球釜智能电饭煲（40FC9033Q）', 259);
INSERT INTO `shop` VALUES (9, 'http://127.0.0.1:7001/public/shop/9.jpg', '苏泊尔5L聚能精钢球釜双胆电压力锅', 1999);
INSERT INTO `shop` VALUES (10, 'http://127.0.0.1:7001/public/shop/10.jpg', '苏泊尔5L球釜双胆电压力锅（SY-50YC9001Q）', 359);
INSERT INTO `shop` VALUES (11, 'http://127.0.0.1:7001/public/shop/11.jpg', '海氏K5 海氏烤箱', 1469);
INSERT INTO `shop` VALUES (12, 'http://127.0.0.1:7001/public/shop/12.jpg', '海氏i7 大容量风炉烤箱', 1489);
INSERT INTO `shop` VALUES (13, 'http://127.0.0.1:7001/public/shop/13.jpg', '美的多功能风炉烤箱（PT3520W）', 1399);
INSERT INTO `shop` VALUES (14, 'http://127.0.0.1:7001/public/shop/14.jpg', '松下家用蒸烤箱15L  （NU-JA101W）', 2199);
INSERT INTO `shop` VALUES (15, 'http://127.0.0.1:7001/public/shop/15.jpg', '舌尖上的世界：（套装全3册）', 198);
INSERT INTO `shop` VALUES (16, 'http://127.0.0.1:7001/public/shop/16.jpg', '舌尖上的世界：（套装全3册）', 198);
INSERT INTO `shop` VALUES (17, 'http://127.0.0.1:7001/public/shop/17.jpg', '百度糯米500元充值卡', 500);
INSERT INTO `shop` VALUES (18, 'http://127.0.0.1:7001/public/shop/18.jpg', '百度糯米200元充值卡', 200);
INSERT INTO `shop` VALUES (19, 'http://127.0.0.1:7001/public/shop/19.jpg', '华为平板电脑 M6 10.8英寸', 2299);
INSERT INTO `shop` VALUES (20, 'http://127.0.0.1:7001/public/shop/20.jpg', 'Harthsun 牛排煎锅', 729);

-- ----------------------------
-- Table structure for topic
-- ----------------------------
DROP TABLE IF EXISTS `topic`;
CREATE TABLE `topic`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `userId` int(16) NULL DEFAULT NULL COMMENT '用户 id',
  `proDate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发表时间',
  `article` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '内容',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动态标题',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of topic
-- ----------------------------
INSERT INTO `topic` VALUES (1, 1, '2020-08-21 18:35:38', '说是野生的，100克46元，感觉好贵，还好口感还是很不错', '周三早餐');
INSERT INTO `topic` VALUES (2, 2, '2020-06-21 13:33:13', '#早餐# 芒果火腿吐司披萨', '我是这个话题的标题');
INSERT INTO `topic` VALUES (3, 3, '2020-09-21 18:36:22', '#早餐# 早上好小宝贝儿们', '早安');

-- ----------------------------
-- Table structure for topic_img
-- ----------------------------
DROP TABLE IF EXISTS `topic_img`;
CREATE TABLE `topic_img`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `topicId` int(16) NULL DEFAULT NULL COMMENT '对应话题的id',
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '话题的图片',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of topic_img
-- ----------------------------
INSERT INTO `topic_img` VALUES (1, 1, 'http://127.0.0.1:7001/public/topic/u1_1.jpg');
INSERT INTO `topic_img` VALUES (2, 1, 'http://127.0.0.1:7001/public/topic/u1_2.jpg');
INSERT INTO `topic_img` VALUES (3, 1, 'http://127.0.0.1:7001/public/topic/u1_3.jpg');
INSERT INTO `topic_img` VALUES (4, 1, 'http://127.0.0.1:7001/public/topic/u1_4.jpg');
INSERT INTO `topic_img` VALUES (5, 1, 'http://127.0.0.1:7001/public/topic/u1_5.jpg');
INSERT INTO `topic_img` VALUES (6, 1, 'http://127.0.0.1:7001/public/topic/u1_6.jpg');
INSERT INTO `topic_img` VALUES (7, 2, 'http://127.0.0.1:7001/public/topic/u2_1.jpg');
INSERT INTO `topic_img` VALUES (8, 2, 'http://127.0.0.1:7001/public/topic/u2_2.jpg');
INSERT INTO `topic_img` VALUES (9, 3, 'http://127.0.0.1:7001/public/topic/u3_1.jpg');
INSERT INTO `topic_img` VALUES (10, 3, 'http://127.0.0.1:7001/public/topic/u2_2.jpg');

-- ----------------------------
-- Table structure for topic_like
-- ----------------------------
DROP TABLE IF EXISTS `topic_like`;
CREATE TABLE `topic_like`  (
  `id` int(16) NOT NULL AUTO_INCREMENT,
  `userId` int(16) NULL DEFAULT NULL COMMENT '喜欢的用户id',
  `topicId` int(16) NULL DEFAULT NULL COMMENT '喜欢的话题id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of topic_like
-- ----------------------------
INSERT INTO `topic_like` VALUES (1, 1, 2);
INSERT INTO `topic_like` VALUES (2, 2, 1);
INSERT INTO `topic_like` VALUES (3, 3, 1);

SET FOREIGN_KEY_CHECKS = 1;
