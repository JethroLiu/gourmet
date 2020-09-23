<template>
  <div class="register">
    <h1>注册</h1>
    <p>
      用户邮箱:
      <input type="text" v-model="email" />
    </p>
    <p>
      用户密码:
      <input type="text" v-model="password" />
    </p>
    <p>
      头像:
      <input type="file" @change="fileChange" />
    </p>
    <p>
      验证码:
      <input type="text" v-model="userSvg" />
      <span @click="changeSvg" v-html="svg"></span>
    </p>
    <p>
      <button>登录</button>
      <button @click="send">立即注册</button>
    </p>
  </div>
</template>

<script>
export default {
  name: "Register",
  data() {
    return {
      email: "",
      password: "",
      svg: "",
      userSvg: "",
      myfile: "",
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
      fileReader.append("userPic", this.myfile);
      fileReader.append("email", this.email);
      fileReader.append("password", this.password);
      fileReader.append("svg", this.userSvg);
      // 发送注册的请求，并得到返回结果
      let myres = await this.$axios.post("/register", fileReader, {
        header: { "Content-Type": "pplication/x-www-form-urlencoded" },
      });
      // 根据错误码执行相对应的逻辑
      if (myres.data.code == 4001) {
        console.log("验证码错误");
      } else if (myres.data.code == 4002) {
        console.log("邮箱已经注册过了");
      } else if (myres.data.code == 2001) {
        this.$router.push({
          path: "/Login",
          params: { email: this.email, password: this.password },
        });
      }
    },
    changeSvg() {
      this.$axios.get("/verification").then((res) => {
        this.svg = res.data.data;
      });
    },
    fileChange(event) {
      this.myfile = event.target.files[0];
    },
  },
  components: {},
};
</script>

<style scoped></style>
