'use strict';
const Service = require('egg').Service;

class HomeService extends Service {
    
    //轮播图部分 
    async lbt() {
        var data = await this.app.mysql.query(" select * from lbt")
        return data;
        // return "轮播图  "
    }
    //advice 健康 烘焙 为您推荐
    async advice() {
        var data = await this.app.mysql.query(" select * from advise")
        return data;
        // return "advice 健康 烘焙 为您推荐 "
    }
    //book  具体菜品展示
    async food() {
        var data = await this.app.mysql.query(" select * from food")
        return data;
        // return "book  具体菜品展示1 "
    }

    //book2  具体菜品2展示
    async book() {
        var data = await this.app.mysql.query(" select * from book")
        return data;
        // return "book2  具体菜品展示2 "
    }

     //话题
     async topic() {
        var data = await this.app.mysql.query(" select * from topic")
        return data;
        // return "这是话题 "
    }


}

module.exports = HomeService;