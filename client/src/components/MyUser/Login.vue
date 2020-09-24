<template>
    <div class="login ">
        <div class="loginBox">
            <div class="userEmail">
                <label for="email">用户邮箱</label>
                <input id="email" type="text" v-model="email" placeholder="请输入您的邮箱" />
            </div>

            <div class="userPassword">
                <label for="password">用户密码</label>
                <input id="password" type="text" v-model="userPwd" placeholder="请输入您的密码" />
            </div>
            <div class="loginErr">
                <span v-if="tishi">账号或密码错误</span>
            </div>

            <div class="makeSure">
                <button @click="login">立即登录</button>
                <button @click="toRegister">注册账号</button>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    name: "Login",
    data() {
        return {
            email: "",
            userPwd: "",
            tishi: false,
        };
    },
    mounted() {
        // console.log(this.$route)
        // this.email = this.$route.query.email;
        // this.userPwd = this.$route.query.userPwd;
    },
    methods: {
        toRegister() {
            this.$router.push("/Register");
        },
        async login() {
            let loginRes = await this.$axios.post("/login", {
                email: this.email,
                userPwd: this.userPwd,
            });
            if (loginRes.data.code == 2002) {
                // 登陆成功,先缓存，再跳转
                /* 
                    前端缓存 localstorage sessionStorage cookie
                    后端缓存 后2前1 前(cookie)
                */
                // 前端缓存
                window.localStorage.setItem("islogin", true);
                this.$router.push("/");
            } else if (loginRes.data.code == 4005) {
                // 账号或密码错误
                this.tishi = true;
            }
        },
    },
};
</script>
<style scoped>
.login {
    position: absolute;
    left: 0;
    top: 50px;
    width: 100%;
    background-color: rgba(255, 255, 255, 0.8);
    border-bottom-right-radius: 5px;
    border-bottom-left-radius: 5px;
}
.loginBox {
    box-sizing: border-box;
    width: 100%;
    height: 240px;
    padding: 10px;
    font: 16px "Hiragino Sans GB", "STHeiti", "微软雅黑", "Microsoft YaHei", Helvetica, Arial, serif;
    color: #333;
}

.userEmail,
.userPassword {
    height: 40px;
    margin-top: 10px;
}

.loginErr {
    height: 30px;
}

.loginErr span {
    height: 30px;
    line-height: 30px;
    user-select: none;
    font-size: 14px;
    display: inline-block;
    color: red;
}

.makeSure {
    display: flex;
    justify-content: space-around;
    box-sizing: border-box;
    height: 40px;
    margin-top: 4px;
    padding: 0 40px 0;
}

.userEmail label,
.userPassword label {
    display: inline-block;
    width: 100px;
    height: 40px;
    font-size: 16px;
    line-height: 40px;
    letter-spacing: 1px;
    text-align: center;
    user-select: none;
}

.userEmail input,
.userPassword input {
    vertical-align: middle;
    box-sizing: border-box;
    width: 200px;
    height: 26px;
    padding: 0 6px;
    border: 1px solid #4d90fe;
    outline: none;
}

.makeSure button {
    display: inline-block;
    height: 40px;
    padding: 0 20px;
    border: 1px solid#4d90fe;
    border-radius: 6px;
    font-size: 16px;
    line-height: 40px;
    color: #4d90fe;
    user-select: none;
    background-color: #ffffff;
    outline: none;
    cursor: pointer;
    transition: all 0.5s;
}

.makeSure button:hover {
    transform: translate3d(0, -1px, 0);
    box-shadow: 0 3px 6px rgba(0, 0, 0, 0.2);
}
</style>
