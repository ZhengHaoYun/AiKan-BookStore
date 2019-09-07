/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50562
Source Host           : localhost:3306
Source Database       : mybookstore

Target Server Type    : MYSQL
Target Server Version : 50562
File Encoding         : 65001

Date: 2019-07-03 21:33:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', 'admin');

-- ----------------------------
-- Table structure for `book`
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `introduction` varchar(200) DEFAULT NULL COMMENT '简单的介绍书籍',
  `stock` int(10) NOT NULL COMMENT '书本库存',
  `category` varchar(50) NOT NULL,
  `cover` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`category`),
  KEY `name` (`name`),
  KEY `price` (`price`),
  KEY `cover` (`cover`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`category`) REFERENCES `category` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=89 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '平凡的世界', '郑皓云', '11', '平凡的世界 平凡的你我', '0', '小说', '/img/product/3.jpg');
INSERT INTO `book` VALUES ('2', '怦然心动', '文德琳', '13', '不要忘记每一次的心动', '2', '小说', '/img/product/1.jpg');
INSERT INTO `book` VALUES ('3', '都挺好', '阿耐', '111', '《大江大河》《欢乐颂》作者、高人气畅销书作家阿耐扛鼎力作！', '20', '小说', '/img/product/3.jpg');
INSERT INTO `book` VALUES ('4', '走着走着，花就开了', '丁立梅', '1111', '《读者》《青年文摘》签约作家丁立梅散文新作，多地中小学列入课外阅读推荐书目，上百篇文章被设计成语文考试现代文阅读材料', '20', '小说', '/img/product/4.jpg');
INSERT INTO `book` VALUES ('5', '我的京都', '渡边淳一', '40', '渡边淳一和风十足的京都闲居随笔。', '19', '小说', '/img/product/3.jpg');
INSERT INTO `book` VALUES ('6', '漫步在青春的河畔', '林清玄', '60', '华语散文名家林清玄给少年的一堂生命课，生前为该书亲拟书名+亲定新篇+亲笔书信，人间已无我，见字亦如面，从成名作到新作品，全面展现文学大师的创作历程', '30', '小说', '/img/product/8.jpg');
INSERT INTO `book` VALUES ('7', '我在等风，也在等你', '白凝', '50', '沈从文、钱钟书、朱生豪、徐志摩、鲁迅……等民国大师的爱情哲学。这是一本洗涤心灵、遇见爱情的书。听爱情“朗诵者”的肺腑之言，邂逅更好的爱情。', '40', '小说', '/img/product/7.jpg');
INSERT INTO `book` VALUES ('8', '何必等来生', '燕子', '999', '老狼、柏邦妮感动推荐。这世上真正属于你的东西是你的时光，只有你自己可以决定以什么情绪参与。附赠感人至深的《十年》别册。', '999', '小说', '/img/product/16.jpg');
INSERT INTO `book` VALUES ('9', '我把活着欢喜过了', '梁实秋', '5', '文学泰斗梁实秋的全部生活智慧，三代中国人的心灵读本。生活只有一种英雄主义，那就是认清生活的真相之后依然热爱生活', '55', '小说', '/img/product/19.jpg');
INSERT INTO `book` VALUES ('10', '秋灯琐忆', '蒋坦', '55', '晚清江南夫妇充满风雅、才情、闲趣的诗意日常。本版咸丰二年初版原文，并精心校注，简洁白话译述，更好阅读。', '7', '小说', '/img/product/17.jpg');
INSERT INTO `book` VALUES ('11', '牛顿传记', '西安出版社', '11', '牛顿是著名的物理学家、数学家、光学家、经济学家，百科全书式的全才，万有引力和三大运动定律的发现者，反射式望远镜的发明者。', '52', '传记', '/img/product/14.jpg');
INSERT INTO `book` VALUES ('12', '傅译传记', '傅雷', '25', '家书', '56', '传记', '/img/product/18.jpg');
INSERT INTO `book` VALUES ('13', '《名人传记》珍藏本', '潦寒', '45', '影响中国的20位经济学家\r\n顾准，吴敬琏，茅于轼，厉以宁，张五常，林毅夫，郎咸平，许小年，胡鞍钢··· 伫立在中国经济学界的殿堂之上', '45', '传记', '/img/product/16.jpg');
INSERT INTO `book` VALUES ('14', '卡尔罗杰斯传记', '霍华德基尔申鲍姆', '78', '极具影响力的心理学家。当今人本主义心理学主要代表人物，美国心理学会杰出科学贡献奖获得者。 主要著作有：《咨询和心理治疗：新近的概念和实践》', '12', '传记', '/img/product/17.jpg');
INSERT INTO `book` VALUES ('15', '爱迪生传记', '西安出版社', '15', '伟大的发明家', '44', '传记', '/img/product/15.jpg');
INSERT INTO `book` VALUES ('16', '胡适传记', '胡适', '16', '胡适是中国现代思想学术***具争议的焦点，赞扬者有之，批判者也不乏其人。他让*纠结，让蒋介石、李敖推崇，他一生拥有三十五个博士头衔，被称为“九项全能”学者，还获得过诺贝尔文学奖提名', '44', '传记', '/img/product/11.jpg');
INSERT INTO `book` VALUES ('17', '你好旧时光', '唐七', '45', '振华三部曲', '60', '青春文学', '/img/product/7.jpg');
INSERT INTO `book` VALUES ('18', '我念你如初', '顾西爵', '42', '白马时光', '73', '青春文学', '/img/product/9.jpg');
INSERT INTO `book` VALUES ('19', '最好的我们', '唐七', '33', '美好的高中时光', '36', '青春文学', '/img/product/19.jpg');
INSERT INTO `book` VALUES ('20', '暗恋橘生淮南', '唐七', '32', '这是一个关于暗恋的故事', '96', '青春文学', '/img/product/17.jpg');
INSERT INTO `book` VALUES ('21', '只为遇见你', '未再', '26', '新锐珠宝设计师vs野性神秘富三代，携手共赴璀璨爱情盛宴。随书附赠精美海报', '79', '青春文学', '/img/product/26.jpg');
INSERT INTO `book` VALUES ('22', '摄影基础', '李一', '11', '美好的事物', '66', '摄影', '/img/product/28.jpg');
INSERT INTO `book` VALUES ('23', '大自然的礼物', '依依', '55', '大自然神奇美丽的礼物', '88', '摄影', '/img/product/29.jpg');
INSERT INTO `book` VALUES ('24', '神奇动物', '比尔', '35', '美丽迷人的动物', '46', '摄影', '/img/product/28.jpg');
INSERT INTO `book` VALUES ('25', '大奇河', '昆池', '156', '各大美丽景色', '64', '摄影', '/img/product/23.jpg');
INSERT INTO `book` VALUES ('26', '向日葵', '凡尔高', '19', '美丽的花', '66', '艺术', '/img/product/13.jpg');
INSERT INTO `book` VALUES ('27', '烟火', '拉拉', '65', '带你领略慢节奏生活', '41', '艺术', '/img/product/8.jpg');
INSERT INTO `book` VALUES ('28', '泡沫', 'kiko', '13', '人生是一场旅行', '64', '艺术', '/img/product/1.jpg');
INSERT INTO `book` VALUES ('29', '肖恩的葬礼', '拉萨', '47', '奇妙艺术人生', '77', '艺术', '/img/product/18.jpg');
INSERT INTO `book` VALUES ('30', '调音师', 'yeah', '65', '反转惊奇', '14', '艺术', '/img/product/16.jpg');
INSERT INTO `book` VALUES ('31', '印象', '哈利', '16', '朦胧美', '66', '艺术', '/img/product/17.jpg');
INSERT INTO `book` VALUES ('32', '我不', '大冰', '32', '生活的旅行', '13', '心灵鸡汤', '/img/product/13.jpg');
INSERT INTO `book` VALUES ('33', '乖！摸摸头', '大冰', '34', '又一部巨作', '6', '心灵鸡汤', '/img/product/14.jpg');
INSERT INTO `book` VALUES ('34', '阿弥托佛么么哒', '大冰', '32', '大冰又一巨作', '46', '心灵鸡汤', '/img/product/15.jpg');
INSERT INTO `book` VALUES ('35', '别放弃', '顾伟', '25', '生活不易每个人都要努力', '36', '心灵鸡汤', '/img/product/16.jpg');
INSERT INTO `book` VALUES ('36', '马克思哲学', '马克思', '33', '绝妙的哲学', '36', '人生哲学', '/img/product/17.jpg');
INSERT INTO `book` VALUES ('37', '生活哲学', '群一', '33', '不同的人对生活的看法', '66', '人生哲学', '/img/product/5.jpg');
INSERT INTO `book` VALUES ('41', '上帝笑了99次', '彼得·凯弗', '35', '未读·思想家 | 趣味哲学集大成之书。和哲学家一起攻破99个哲学迷宫。', '46', '人生哲学', '/img/product/1.jpg');
INSERT INTO `book` VALUES ('42', '入职小技巧', '直人', '36', '对入职的人很有帮助', '99', '职场', '/img/product/7.jpg');
INSERT INTO `book` VALUES ('43', '你必须掌握的技巧', '五一', '16', '教你职场如何做事', '31', '职场', '/img/product/16.jpg');
INSERT INTO `book` VALUES ('44', '你不知道的小技巧', '烟雨', '41', '做事事倍功半', '42', '职场', '/img/product/11.jpg');
INSERT INTO `book` VALUES ('45', '如何说话', '语言大师', '33', '教你如何与别人交流', '65', '人际交往', '/img/product/9.jpg');
INSERT INTO `book` VALUES ('46', '礼仪大方', '研一', '33', '如何让从容面对交流场面', '33', '人际交往', '/img/product/3.jpg');
INSERT INTO `book` VALUES ('47', '交往小技巧', '叮当', '17', '交往中的注意细节', '33', '人际交往', '/img/product/7.jpg');
INSERT INTO `book` VALUES ('48', '书本教材解析', '李国强', '21', '教材完美解读', '63', '教师用书', '/img/product/4.jpg');
INSERT INTO `book` VALUES ('49', '中小学校园足球教师用书 ', '人民教育出版社', '34', '教你如何踢足球', '46', '教师用书', '/img/product/1.jpg');
INSERT INTO `book` VALUES ('50', '小学英语活动课程', '北京师范大学', '23', '一本在手就不愁', '69', '教师用书', '/img/product/9.jpg');
INSERT INTO `book` VALUES ('51', '完全解读', '李伟', '26', '全方位解析', '56', '教师用书', '/img/product/8.jpg');
INSERT INTO `book` VALUES ('52', '看图说话', '幼儿教育', '22', '教会小孩子意识看图', '65', '中小学教辅', '/img/product/8.jpg');
INSERT INTO `book` VALUES ('53', '小学生导刊', '青年文社', '33', '拓展知识', '70', '中小学教辅', '/img/product/10.jpg');
INSERT INTO `book` VALUES ('54', '文学导读', '兰州大学', '55', '增强意识能力', '54', '中小学教辅', '/img/product/12.jpg');
INSERT INTO `book` VALUES ('55', '拼图解法', '算法', '26', '增强动手能力', '66', '中小学教辅', '/img/product/13.jpg');
INSERT INTO `book` VALUES ('56', '五三模拟', '彭树民', '39', '海量提醒', '77', '大中专教辅', '/img/product/16.jpg');
INSERT INTO `book` VALUES ('57', '一本', '李志文', '33', '全方位题型', '48', '大中专教辅', '/img/product/24.jpg');
INSERT INTO `book` VALUES ('58', '书博士', '王强', '36', '高分解读', '59', '大中专教辅', '/img/product/14.jpg');
INSERT INTO `book` VALUES ('59', '成人自考', '蒋辉', '47', '全方位讲解', '16', '大中专教辅', '/img/product/16.jpg');
INSERT INTO `book` VALUES ('60', '刑事诉讼法一本通', '妮妮', '46', '一本通', '89', '考研', '/img/product/19.jpg');
INSERT INTO `book` VALUES ('61', '汉字是画出来的', '启方', '46', '汉语言文学', '47', '考研', '/img/product/24.jpg');
INSERT INTO `book` VALUES ('62', '经济学原理', '曼昆', '42', '全方位讲解经济', '46', '考研', '/img/product/20.jpg');
INSERT INTO `book` VALUES ('63', '简单统计学', '树根', '48', '统计学的天堂', '79', '考研', '/img/product/27.jpg');
INSERT INTO `book` VALUES ('64', ' 人工智能算法', '圣经', '28', '深度讲解', '100', '考研', '/img/product/27.jpg');
INSERT INTO `book` VALUES ('65', '公务员笔试', '元', '41', '笔试内容', '96', '公务员', '/img/product/21.jpg');
INSERT INTO `book` VALUES ('66', '公务员面试', '明', '56', '公务员面试技能', '45', '公务员', '/img/product/22.jpg');
INSERT INTO `book` VALUES ('67', '马克思教育', '一宿', '45', '公务员考试考点', '100', '公务员', '/img/product/18.jpg');
INSERT INTO `book` VALUES ('68', '简答技巧', '尹娜', '39', '公务员知识必备', '75', '公务员', '/img/product/17.jpg');
INSERT INTO `book` VALUES ('69', '大主宰', '诺伊', '46', '神秘大陆休闲人', '46', '修仙', '/img/product/23.jpg');
INSERT INTO `book` VALUES ('70', '南明王', '一小', '37', '神奇大陆', '103', '修仙', '/img/product/16.jpg');
INSERT INTO `book` VALUES ('71', '惊奇大陆', '灵梦', '68', '梦幻大陆', '566', '修仙', '/img/product/13.jpg');
INSERT INTO `book` VALUES ('72', '梦幻岛', '定元', '28', '神秘家族', '466', '修仙', '/img/product/17.jpg');
INSERT INTO `book` VALUES ('73', '甄嬛传', '吉尔', '39', '历史', '466', '历史改编', '/img/product/19.jpg');
INSERT INTO `book` VALUES ('74', '如懿传', '阿梓', '33', '后宫争夺', '123', '历史改编', '/img/product/16.jpg');
INSERT INTO `book` VALUES ('75', '大唐传奇', '唐明', '49', '辉煌唐朝', '333', '历史改编', '/img/product/9.jpg');
INSERT INTO `book` VALUES ('76', '记元宗录', '维安', '23', '书生逆袭', '336', '历史改编', '/img/product/18.jpg');
INSERT INTO `book` VALUES ('77', '清露', '盖伊', '48', '架空大陆', '995', '架空', '/img/product/15.jpg');
INSERT INTO `book` VALUES ('78', '唐砖', '七公子', '53', '伪唐朝', '254', '架空', '/img/product/13.jpg');
INSERT INTO `book` VALUES ('79', '奇异志', '洛奇', '29', '收集奇异事件录', '456', '架空', '/img/product/19.jpg');
INSERT INTO `book` VALUES ('80', '圣朝天', '瓦拉', '64', '国度朝圣', '645', '架空', '/img/product/14.jpg');
INSERT INTO `book` VALUES ('81', '青云志', '李易峰', '46', '少年逆袭之路', '425', '玄幻', '/img/product/5.jpg');
INSERT INTO `book` VALUES ('82', '仙剑奇侠传', '胡歌', '64', '少年救世', '3', '玄幻', '/img/product/24.jpg');
INSERT INTO `book` VALUES ('83', '白蛇传', '杨紫', '69', '人蛇恋', '645', '玄幻', '/img/product/19.jpg');
INSERT INTO `book` VALUES ('84', '轩辕剑', '唐嫣', '33', '世代家族争夺宝物', '64', '玄幻', '/img/product/17.jpg');
INSERT INTO `book` VALUES ('85', '半夜鬼敲门', 'na次', '34', '恐怖事件', '36', '灵异', '/img/product/15.jpg');
INSERT INTO `book` VALUES ('86', '两个月亮', '豹子女士', '47', '妇人不断复活', '342', '灵异', '/img/product/26.jpg');
INSERT INTO `book` VALUES ('87', '他来了请闭眼', '霍建华', '36', '解密重重疑惑', '6', '灵异', '/img/product/18.jpg');
INSERT INTO `book` VALUES ('88', '冥界', '自拉', '46', '恐怖事件不断发生', '46', '灵异', '/img/product/9.jpg');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL COMMENT '分类名称，如：小说',
  `grade` int(10) NOT NULL DEFAULT '1' COMMENT '分类等级，若是1，则为最大分类',
  `parent` int(10) NOT NULL DEFAULT '0' COMMENT '上级分类，若为0则表示是根目录',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '文艺', '1', '0');
INSERT INTO `category` VALUES ('2', '励志', '1', '0');
INSERT INTO `category` VALUES ('3', '教育', '1', '0');
INSERT INTO `category` VALUES ('4', '网络文学', '1', '0');
INSERT INTO `category` VALUES ('5', '小说', '2', '1');
INSERT INTO `category` VALUES ('6', '传记', '2', '1');
INSERT INTO `category` VALUES ('7', '青春文学', '2', '1');
INSERT INTO `category` VALUES ('8', '心灵鸡汤', '2', '2');
INSERT INTO `category` VALUES ('9', '人生哲学', '2', '2');
INSERT INTO `category` VALUES ('10', '教师用书', '2', '3');
INSERT INTO `category` VALUES ('11', '中小学教辅', '2', '3');
INSERT INTO `category` VALUES ('12', '考研', '2', '3');
INSERT INTO `category` VALUES ('13', '修仙', '2', '4');
INSERT INTO `category` VALUES ('14', '玄幻', '2', '4');
INSERT INTO `category` VALUES ('15', '摄影', '2', '1');
INSERT INTO `category` VALUES ('16', '艺术', '2', '1');
INSERT INTO `category` VALUES ('17', '职场', '2', '2');
INSERT INTO `category` VALUES ('18', '人际交往', '2', '2');
INSERT INTO `category` VALUES ('19', '大中专教辅', '2', '3');
INSERT INTO `category` VALUES ('20', '公务员', '2', '3');
INSERT INTO `category` VALUES ('21', '历史改编', '2', '4');
INSERT INTO `category` VALUES ('22', '架空', '2', '4');
INSERT INTO `category` VALUES ('23', '灵异', '2', '4');

-- ----------------------------
-- Table structure for `orders`
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL DEFAULT '1',
  `total` int(10) NOT NULL,
  `user` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('2', '平凡的世界', '12', '1', '12', 'admin@qq.com');
INSERT INTO `orders` VALUES ('3', '平凡的世界', '12', '1', '12', 'admin@qq.com');
INSERT INTO `orders` VALUES ('4', '平凡的世界2', '60', '2', '120', 'admin@qq.com');
INSERT INTO `orders` VALUES ('5', '平凡的时间5', '999', '1', '999', 'admin@qq.com');
INSERT INTO `orders` VALUES ('6', '平凡的世界', '12', '1', '12', 'abc@qq.com');
INSERT INTO `orders` VALUES ('7', '平凡的世界2', '60', '1', '60', 'abc@qq.com');
INSERT INTO `orders` VALUES ('8', '平凡的世界', '12', '1', '12', 'abc@qq.com');
INSERT INTO `orders` VALUES ('9', '平凡的世界2', '60', '1', '60', 'zhenggoutou@qq.com');
INSERT INTO `orders` VALUES ('10', '平凡的时间5', '999', '1', '999', 'zhenggoutou@qq.com');
INSERT INTO `orders` VALUES ('11', '怦然心动', '13', '2', '26', 'admin@admin.com');
INSERT INTO `orders` VALUES ('12', '怦然心动', '13', '1', '13', 'admin@admin.com');
INSERT INTO `orders` VALUES ('13', '怦然心动', '13', '2', '26', 'admin@admin.com');
INSERT INTO `orders` VALUES ('14', '怦然心动', '13', '1', '13', 'admin@admin.com');
INSERT INTO `orders` VALUES ('15', '我的京都', '40', '1', '40', 'admin@admin.com');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(12) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `nickname` varchar(50) NOT NULL COMMENT '昵称',
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('18', '1013431730@qq.com', 'haha1234', '6ZoYxCjLONXyYIU2eJIuAw==');
INSERT INTO `user` VALUES ('26', 'admin@qq.com', 'admin', '4QrcOUm6Wau+VuBX8g+IPg==');
INSERT INTO `user` VALUES ('27', 'abc@qq.com', '112233', '0JcHFHV3g+bPF7JvuOIpjw==');
INSERT INTO `user` VALUES ('28', 'zhenggoutou@qq.com', '201750080616', '6mwpo6KoTBygGGlvXsQQhg==');
INSERT INTO `user` VALUES ('29', 'hahah', 'hahha', 'EBpuyfk4iF3wpE8gRY0utA==');
INSERT INTO `user` VALUES ('30', 'admin@admin.com', 'admin', '4QrcOUm6Wau+VuBX8g+IPg==');
