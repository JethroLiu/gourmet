'use strict';

const Controller = require('egg').Controller;

class HomeController extends Controller {
  
  // 请求数据部分  轮播图 
  async lbt() {
    const { ctx } = this;
    ctx.body = await this.ctx.service.home.lbt();
    console.log(ctx.body)
  }

    // advice 健康 烘焙 为您推荐
  async advice() {
    const { ctx } = this;
    ctx.body = await this.ctx.service.home.advice();
    console.log(ctx.body)
  }

  //book  具体菜品展示
  async food() {
    const { ctx } = this;
    ctx.body = await this.ctx.service.home.food();
    console.log(ctx.body)
  }

   //book2  具体菜品展示
   async book() {
    const { ctx } = this;
    ctx.body = await this.ctx.service.home.book();
    console.log(ctx.body)
  }

  //话题
  async topic() {
    const { ctx } = this;
    ctx.body = await this.ctx.service.home.topic();
    console.log(ctx.body)
  }


}

module.exports = HomeController;
