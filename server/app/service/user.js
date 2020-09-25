"use strict";

const Service = require("egg").Service;
const svgCaptcha = require("svg-captcha");
class UserService extends Service {
    async verification() {
        const { ctx } = this;
        const data = svgCaptcha.create({
            size: 4, // 验证码长度
            noise: 3, // 线条
            ignoreChars: "0o1i", // 验证码字符中排除 0o1i
            fontSize: 50,
            width: 100,
            height: 40,
            color: true, // 随机线条颜色
            background: "#f1f3f4",
        });
        // 为每一个请求的ip地址开辟一篇空间，用来存储只属于这个用户的数据
        // session 的属性名是自定义的，用来保存某个数据
        this.ctx.session.verif = data.text;//缓存验证码
        return data;
    }

    async register(userinfo) {
        // 判断从前端传过来的数据 先验证码再其它
        const { ctx } = this;
        console.log(userinfo);//打印前端传过来的数据信息 包括用户输入的验证码、邮箱等所有数据
        // console.log(this.ctx.session.verif);//打印显示在服务器上的验证码
        // 验证数据中的数据
        if (userinfo.svg.toUpperCase() !== this.ctx.session.verif.toUpperCase()) {//不区分大小写
            return { code: "4001", info: "验证码错误" };
        } else {
            let selectsql = `select *from myuser where email ="${userinfo.email}"`;
            let result = await this.app.mysql.query(selectsql);
            if (result[0]) {//数组取ling 数据库中已有该数据
                return { code: "4002", info: "邮箱已经注册过了" };
            } else {
                let insertsql = `insert into myuser (email, userPwd, userPic) values ("${userinfo.email}","${userinfo.userPwd}","${userinfo.userPic}")`;
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
        let sql = `select *from myuser where email="${logininfo.email}" and userPwd="${logininfo.userPwd}"`;
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
