"use strict";

const Controller = require("egg").Controller;

class HomeController extends Controller {
    //详情页
    async details() {
        const { ctx } = this;
        let reqId = ctx.request.query.foodId;
        let res = await this.ctx.service.details.detail(reqId);
        console.log(res);
        ctx.body = "success";
    }
}

module.exports = HomeController;
