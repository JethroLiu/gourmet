"use strict";

/**
 * @param {Egg.Application} app - egg application
 */
module.exports = (app) => {
    const { router, controller } = app;
    router.get("/lbt", controller.home.lbt); //lbt为轮播图请求地址
    router.get("/advice", controller.home.advice); //advice 健康 烘焙 为您推荐
    router.get("/food", controller.home.food); //food  新秀菜谱 一周热度
    router.get("/book", controller.home.book); //book  时令食材
    router.get("/topic", controller.home.topic); //话题
    router.get("/verification", controller.user.verification); //话题
    router.get("/details",controller.details.details);//详情页
    router.post("/register", controller.user.register);  // 注册
    router.post("/login", controller.user.login);  // 登录
    // router.post("/mycount", controller.user.mycount); //我的账户设置
    router.post("/huati", controller.user.huati); //个人话题发表
    router.get("/gethuati", controller.user.gethuati); //获取个人话题发表数据
};
