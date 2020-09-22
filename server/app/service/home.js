"use strict";
const Service = require("egg").Service;

class HomeService extends Service {
    //轮播图部分
    async lbt() {
        var data = await this.app.mysql.query(" select images from lbt");
        var arr = [];
        for (var i = 0; i < data.length; i++) {
            arr.push(data[i]["images"]);
        }
        return arr;
    }
    //advice 健康 烘焙 为您推荐
    async advice() {
        var res = await this.app.mysql.query(
            " select  image,wordsone,wordstwo,wordsthree,wordsfour,wordsfive,wordssix from advise"
        );
        var arr = [];
        for (var i = 0; i < res.length; i++) {
            let obj = {};
            obj.image = res[i].image;
            obj.content = [];
            obj.content.push(res[i]["wordsone"]);
            obj.content.push(res[i]["wordstwo"]);
            obj.content.push(res[i]["wordsthree"]);
            obj.content.push(res[i]["wordsfour"]);
            obj.content.push(res[i]["wordsfive"]);
            obj.content.push(res[i]["wordssix"]);
            arr.push(obj);
        }
        return arr;
    }
    //food  新秀菜谱 一周热度
    async food() {
        var data = await this.app.mysql.query(" select  id,image,title,userId from food");
        return data;
    }

    //book  时令食材
    async book() {
        var data = await this.app.mysql.query(" select * from book")
        return data;
        // return "book2  具体菜品展示2 ";
    }

    //话题
    async topic() {
        var data = await this.app.mysql.query(
            "select t.*,m.userPic,m.userName from topic t,myuser m where m.id=t.userId"
        );
        return data;
    }
}

module.exports = HomeService;
