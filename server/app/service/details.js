"use strict";
const Service = require("egg").Service;

class HomeService extends Service {
    // 详情页
    async detail(info) {
        console.log(info);
        const sql = "";
        // let data1 = await this.app.mysql.query(sql);

        // return data1;
    }
}

module.exports = HomeService;
