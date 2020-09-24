<template>
    <div class="register">
      <!-- 用户邮箱 -->
        <div>
            <label for="email">用户邮箱:</label>
            <input type="text" v-model="email" id="email" placeholder="请输入密码"/>
        </div>
        <div class="emailErr" >
          <span v-if="prompt1">*该邮箱已被注册</span>
        </div>
        <!-- 用户密码 -->
        <div>
            <label for="userPwd">用户密码:</label>
            <input type="text" v-model="userPwd"  id="userPwd" placeholder="请输入密码"/>
        </div>
        <!-- 用户头像 -->
        <div class="avatar">
            <label class="userActive" >头　像:</label>
            <input type="file" @change="fileChange($event)" class="avaterActive"/>
        </div>

        <!-- 验证码 -->
        <div class="yanzheng">
            <label >验证码:</label>
            <input type="text" v-model="userSvg"  class="input"/>
            <span @click="changeSvg" v-html="svg"></span>
        </div>
        <div class="svgErr"> 
          <span v-if="mysvg">验证码错误</span>
        </div>
        <div class="makeSure">
            <button>登录</button>
            <button @click="send">立即注册</button>
        </div>
    </div>
</template>

<script>
export default {
    name: "Register",
    data() {
        return {
            email: "",
            userPwd: "",
            svg: "",
            userSvg: "",
            userPic: "",
            prompt1: "",
            mysvg: "",
        };
    },
    mounted() {
        // 发起网络请求
        this.$axios.get("/verification").then((res) => {
            this.svg = res.data.data;
        });
    },
    methods: {
        async send() {
            // 交互结果
            let fileReader = new FormData();
            fileReader.append("userPic", this.userPic);
            fileReader.append("email", this.email);
            fileReader.append("userPwd", this.userPwd);
            fileReader.append("svg", this.userSvg);
            // 发送注册的请求，并得到返回结果
            let myres = await this.$axios.post("/register", fileReader, { header: { "Content-Type": "pplication/x-www-form-urlencoded" } });
            // .then((res) => {res.data里面有404 以及注册等数据 })
            // 根据错误码执行相对应的逻辑
            console.log(myres);
            if (myres.data.code == 4001) {
                this.mysvg = true;
            } else if (myres.data.code == 4002) {
                this.prompt1 = true;
            } else if (myres.data.code == 2001) {
                this.$router.push("/MyUser/Login?userPwd=${this.userPwd}&email=${this.email}");
                // this.$router.push({
                //   path: "/",
                //   params: { email: this.email, userPwd: this.userPwd },
                // });
            }
        },
        changeSvg() {
            this.$axios.get("/verification", { params: { id: 666 } }).then((res) => {
                this.svg = res.data.data;
            });
        },
        fileChange(event) {
            this.userPic = event.target.files[0];
        },
    },
    components: {},
};
</script>

<style scoped>
.register {
    background-color: rgba(255, 255, 255, 0.8);
    border-bottom-right-radius: 5px;
    border-bottom-left-radius: 5px;
    font: 16px "Hiragino Sans GB", "STHeiti", "微软雅黑", "Microsoft YaHei", Helvetica, Arial, serif;
    color: #333;
    position: relative;
    top: 1px;
    padding-top: 10px;
}
.register input {
    width: 200px;
    height: 26px;
    padding: 0 6px;
    border: 1px solid #4d90fe;
    outline: none;
}
p {
    padding: 15px;
}
.avatar {
    padding: 15px;
}
.avatar input {
    border: transparent;
}
.fileImg{
  width: 60px;
  height: 50px;
  border: 1px  solid red;
  position: relative;
  left: 220px;
  top: -10px;
}
.makeSure {
    display: flex;
    justify-content: space-around;
    box-sizing: border-box;
    height: 70px;
    padding: 5px;
    box-sizing: border-box;
}
.title {
    display: inline-block;
    width: 80px;
    height: 21px;
}

.makeSure button {
    display: inline-block;
    height: 40px;
    padding: 0 20px;
    border: 1px solid #4d90fe;
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
.yanzheng {
    display: flex;
    padding: 5px 15px 0 15px;
    align-items: center;
    justify-content: center;
}
.yanzheng input{
  width: 100px;
}
.yanzheng span{
  display: block;
}

.mysvg {
    position: relative;
    bottom: 0;
    left: -100px;
}
 .svgErr,.emailErr{
  height: 30px;
}
 .svgErr span,  .emailErr span{
  font-size: 12px;
    color: red;
}
label{
  display: inline-block;
    width: 100px;
    height: 40px;
    font-size: 16px;
    line-height: 40px;
    letter-spacing: 1px;
    text-align: center;
}
/* .userActive{
  letter-spacing: 2px;
} */
</style>
