"use strict";
const Service = require("egg").Service;

class HomeService extends Service {
    // 轮播图
    async lbt() {
        const sql = "select * from lbt";
        let data = await this.app.mysql.query(sql);
        return data;
    }

    // advice
    async advice() {
        const sql =
            "SELECT advise_title.adviseId,advise.image,advise_title.title,advise_title.titlelink FROM advise,advise_title WHERE advise.id = advise_title.adviseId";
        let data = await this.app.mysql.query(sql);
        return data;
    }

    // food  新秀菜谱 一周热度
    async food() {
        const sql =
            "SELECT food.id, food.title, food.image, food.alone, myuser.userName FROM food, myuser WHERE food.userId = myuser.id ORDER BY food.id LIMIT 20";
        var data = await this.app.mysql.query(sql);
        return data;
    }

    // book  时令食材
    async book() {
        const sql = "SELECT * FROM book ORDER BY book.id LIMIT 14";
        let data = await this.app.mysql.query(sql);
        return data;
    }

    // 话题
    async topic() {
        const sql1 = "SELECT topic.id, topic.proDate, topic.article, topic.title FROM topic";
        let data1 = await this.app.mysql.query(sql1);
        let res = data1;

        const sql2 = "SELECT topic_img.topicId, topic_img.image FROM topic_img";
        let data2 = await this.app.mysql.query(sql2);

        res.forEach((item) => {
            item.content = [];
        });

        for (let i = 0; i < data2.length; i++) {
            res[data2[i].topicId - 1].content.push(data2[i].image);
        }

        const sql3 =
            "SELECT topic.id, myuser.userName, myuser.userPic FROM myuser, topic WHERE topic.userId = myuser.id";
        let data3 = await this.app.mysql.query(sql3);

        for (let i = 0; i < res.length; i++) {
            res[i].userName = data3[i].userName;
            res[i].userPic = data3[i].userPic;
        }

        return res;
    }
}

module.exports = HomeService;
