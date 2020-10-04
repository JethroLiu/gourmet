<template>
  <div class="myself" >
    <!-- 头像图片 -->
    <div>
      <div class="usertext">上传图片</div>
      <input type="file" @change="fileChange($event)" />
    </div>
    <!-- 头像 -->
    <div>
      <div class="userPic" v-if="this.boolean">
        <img :src="this.userPic1" alt="" />
      </div>
      <!-- 加个标题 -->
      <div>
        <div class="usertext">加个标题</div>
        <input type="text" class="outline" v-model="title" />
      </div>
      <!-- 写话题 -->
      <div>
        <div class="usertext">写话题</div>
        <input type="text" class="outline1" v-model="huati" />
      </div>
      <!-- 确认修改 -->
      <div @click="getSure" class="getSure">确认修改</div>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      userPic: "",
      userPic1: "",
      boolean:"",
      title:"",
      huati:"",
      time:''
    };
  },
  methods: {
 async getSure() {
    // 发表时间处理
      let temptime = new Date();
      this.time =temptime .toLocaleString()
      // 交互结果
      let fileReader = new FormData();
      fileReader.append("userPic", this.userPic);
      fileReader.append("title", this.title);
      fileReader.append("huati", this.huati);
       fileReader.append("time", this.time);
      // 发送的请求，并得到返回结果
      let myres = await this.$axios.post("/huati", fileReader, {
        header: { "Content-Type": "pplication/x-www-form-urlencoded" },
      });
    },
    // 头像选择
    fileChange(event) {
      this.boolean = true
      this.userPic = event.target.files[0];
      let f = new FileReader();
      f.readAsDataURL(this.userPic);
      f.onload = (event) => {
        this.userPic1 = event.target.result;
      };
    },
  },

};
</script>


}
</script>
<style scoped>
.myself > div {
  margin-top: 20px;
}
.usertext {
  color: #888888;
  font-size: 12px;
  margin-top: 10px;
  margin-bottom: 10px;
}
.userPic {
  width: 170px;
  height: 170px;
  border: 1px solid #ccc;
  margin-bottom: 8px;
}
.userPic img {
  width: 170px;
  height: 170px;
}
.outline1,
.outline {
  outline: none;
  width: 200px;
  height: 30px;
  border: 1px solid #ccc;
  padding-left: 10px;
}
.outline1 {
  width: 500px;
  height: 200px;
}
.getSure{
  width: 100px;
  height: 30px;
  line-height: 30px;
  text-align: center;
  background-color: #FF6767;
  color: white;
  border-radius: 5px;
  margin-top: 15px;
}
</style>