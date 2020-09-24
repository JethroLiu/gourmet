"use strict";
const Service = require("egg").Service;

class HomeService extends Service {
    // 详情页
    async detail(info) {
        let fooId = info[0]
        const sql = "SELECT * FROM book ORDER BY book.id LIMIT 14";
        // let data = await this.app.mysql.query(sql);
        console.log(fooid)
        
        return '详情页的信息';
    }

   
}

module.exports = HomeService;
