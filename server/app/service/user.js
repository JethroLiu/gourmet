"use strict";

const Service = require("egg").Service;
const svgCaptcha = require("svg-captcha");
class UserService extends Service {
    async verification() {
        const { ctx } = this;
        const data = svgCaptcha.create({
            size: 4,
            fontSize: 50,
            width: 100,
            height: 40,
            background: "#cc9966",
        });
        // 为每一个请求的ip地址开辟一篇空间，用来存储只属于这个用户的数据
        // session 的属性名是自定义的，用来保存某个数据
        this.ctx.session.verif = data.text;
        return data;
    }

    async register(userinfo) {
        const { ctx } = this;
        console.log(userinfo);
        console.log(this.ctx.session.verif);
        // 验证数据中的数据
        if (userinfo.verification.toUpperCase() !== this.ctx.session.verification.toUpperCase()) {
            return { code: "4001", info: "验证码错误" };
        } else {
            let selectsql = `select *from myuser where email ="${userinfo.email}"`;
            let result = await this.app.mysql.query(selectsql);
            if (result[0]) {
                return { code: "4002", info: "邮箱已经注册过了" };
            } else {
                let insertsql = `insert into myuser (email, password, img) values ("${userinfo.email}","${userinfo.password}","${userinfo.myfile}")`;
                let result = await this.app.mysql.query(insertsql);
                if (result.affectedRows > 0) {
                    return { code: "2001", info: "注册成功" };
                } else {
                    return { code: "5001", info: "后台错误" };
                }
            }
        }
    }

    async login(logininfo) {
        const { ctx } = this;
        let sql = `select *from myuser where email="${logininfo.email}" and password="${logininfo.password}"`;
        let result = await this.app.mysql.query(sql);
        return result;
    }

    async session1() {
        const { ctx } = this;
        let sql = `select *from myuser where email="${ctx.session.email}"`;
        let result = await this.app.mysql.query(sql);
        return result;
    }
}

module.exports = UserService;
