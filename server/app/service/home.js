"use strict";
const Service = require("egg").Service;

class HomeService extends Service {
    //轮播图部分
    async lbt() {
        // var data = await this.app.mysql.query(" select * from lbt")
        // return data;
        return [
            "http://127.0.0.1:7001/public/lbt/1.jpg",
            "http://127.0.0.1:7001/public/lbt/2.jpg",
            "http://127.0.0.1:7001/public/lbt/3.jpg",
            "http://127.0.0.1:7001/public/lbt/4.jpg",
            "http://127.0.0.1:7001/public/lbt/5.jpg",
            "http://127.0.0.1:7001/public/lbt/6.jpg",
        ];
    }
    //advice 健康 烘焙 为您推荐
    async advice() {
        // var data = await this.app.mysql.query(" select * from advise")
        // return data;
        return [
            {
                title1: "健康",
                title2: "食疗",
                title3: "健康首页",
                image: "http://127.0.0.1:7001/public/advice/health.jpg",
                content: [
                    "降血压食物推荐，从日常开始改善！",
                    "日常按摩这些部位，养生更养身",
                    "脑溢血原因，冬天要更注意",
                    "孩子体质差总生病，父母该怎么办？",
                    "专题|快手早餐，营养满分の三明治",
                    "专题|那些美颜食物的神级吃法",
                ],
            },
            {
                title1: "烘焙",
                title2: "食谱",
                title3: "烘焙专区",
                image: "http://127.0.0.1:7001/public/advice/baking.jpg",
                content: [
                    "不输猪油版的桃酥做法",
                    "这些挑水果小窍门，你知道吗？",
                    "内藏惊喜的彩虹戚风蛋糕",
                    "消耗蛋挞皮－简单版红薯酥",
                    "菜单|油条华丽转身，也是蛮拼哒",
                    "专题|另类咸香口儿 满足你的味蕾！",
                ],
            },
            {
                title1: "为您推荐",
                title2: "",
                title3: "我的收藏",
                image: "http://127.0.0.1:7001/public/advice/recommend.jpg",
                content: [
                    "合理饮食，远离脂肪肝",
                    "划重点！食物降血脂这些更有效",
                    "粗粮细作：健康能量燕麦甜品 ",
                    "妈妈派|童趣童味，儿童创意餐点",
                    "免费抽奖|ACA ATO-HB38HT电烤箱",
                    "专题|酒后头痛，5种食物可缓解",
                ],
            },
        ];
    }
    //book  具体菜品展示
    async food() {
        // var data = await this.app.mysql.query(" select * from food")
        // return data;
        return "book  具体菜品展示1 ";
    }

    //book2  具体菜品2展示
    async book() {
        // var data = await this.app.mysql.query(" select * from book")
        // return data;
        return "book2  具体菜品展示2 ";
    }

    //话题
    async topic() {
        // var data = await this.app.mysql.query(" select * from topic")
        // return data;
        return "这是话题 ";
    }
}

module.exports = HomeService;
