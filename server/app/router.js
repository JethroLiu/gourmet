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
};
