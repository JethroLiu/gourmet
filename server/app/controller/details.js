"use strict";

const Controller = require("egg").Controller;

class HomeController extends Controller {
    //详情页
    async details() {
        const { ctx } = this;
        let res = ctx.request.query;
        console.log("传递过来的参数为",res);
        ctx.body = await this.ctx.service.details.detail(res);
        // console.log(ctx.body);
    }
}

module.exports = HomeController;
