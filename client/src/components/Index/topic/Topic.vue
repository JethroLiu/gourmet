<template>
  <div class="w" id="topic">
    <!--模拟body标签  到时候要删除-->
    <div class="topic">
      <!--标题行 整体标题 热门话题-->
      <div class="topic-left topictitle">
        <span v-for="(el,index) in  topictitle" :key="index">{{el}}</span>
      </div>
      <div class="topic-right topictitle">
        <router-link
          to="##"
          v-for="(el2,index2) in  topicadv"
          :key="index2"
          class="topic-right-a"
        >{{el2}}</router-link>
      </div>
    </div>
    <div class="dongtai">
      <!--用户动态-->
      <div v-for="item in pageContent" :key="item.id" class="topic-content">
        <div>
          <!-- 用户头像 -->
          <img :src="item.userPic" alt class="avatar" />
          <!-- 用户发表时间 -->
          <div class="user-time">
            <router-link to="###" class="user">{{item.userName}}</router-link>
            <p>{{item.proDate}}</p>
          </div>
        </div>
        <!-- 标题 -->
        <router-link to="###" class="user-content">
          <span class="title">{{item.title}}</span>
          <br />
          <!-- 发表内容 -->
          {{item.article}}
        </router-link>
        <!-- 用户发表图片 -->
        <img v-for="myitem in item.content" :src="myitem" alt="加载失败" :key="myitem" class="user-img" />
        <!-- 喜欢 和评论-->
        <!-- <p class="like">{{ell.like}}个喜欢，{{ell.comment}}条评论</p> -->
        <p class="like">1个喜欢，1条评论</p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  components: {},

  data() {
    return {
      topictitle: ["热门话题", "精华日志"],
      topicadv: ["全部话题", "全部话题", "全部话题"],
      content: "",
      pageContent: [],
    };
  },
  async mounted() {
    // 请求后台获取
    let result = await this.$axios.get("/topic");
    this.content = result.data;

    for (let i = 0; i < this.content.length; i++) {
      // 长度为 3,放入数据
      let obj = {};
      obj.id = this.content[i].id;
      obj.article = this.content[i].article;
      obj.proDate = this.content[i].proDate;
      obj.title = this.content[i].title;
      obj.userName = this.content[i].userName;
      obj.userPic = this.content[i].userPic;
      obj.content = [];

      // 限制图片长度为4
      if (this.content[i].content.length < 4) {
        for (let j = 0; j < this.content[i].content.length; j++) {
          obj.content.push(this.content[i].content[j]);
        }
        obj.num = this.content[i].content.length;
        this.pageContent.push(obj);
      } else {
        for (let j = 0; j < 4; j++) {
          obj.content.push(this.content[i].content[j]);
        }
        obj.num = this.content[i].content.length;
        this.pageContent.push(obj);
      }
    }
  },
};
</script>
<style>
#topic {
  margin-top: 30px;
}
/* topic标题大盒子 */
.topic {
  position: relative;
  border-bottom: 1px solid #e8e8e8;
  height: 35px;
}
/* topic盒子里的左右两个盒子 */
.topictitle {
  display: inline-block;
}

.topic-left {
  position: absolute;
  left: 0px;
}

.topic-right {
  position: absolute;
  right: 0px;
}

/* topic左边盒子里的内容盒子*/
.topic-left span {
  display: inline-block;
  height: 35px;
  font-size: 20px;
  line-height: 35px;
  color: #666;
  margin-right: 20px;
}

.topic-left span:hover {
  color: #ff6767;
  border-bottom: 2px solid #ff6767;
  cursor: pointer;
}

/* topic右边盒子里的内容盒子*/
.topic-right .topic-right-a {
  display: inline-block;
  text-decoration: none;
  height: 35px;
  color: #000;
  line-height: 35px;
  margin-left: 20px;
  font-size: 16px;
}

.topic-right .topic-right-a:hover {
  color: #ff6767;
}

/* 从这开始是用户话题模块css样式修改 */
/* 话题大盒子 */
.dongtai {
  display: flex;
  justify-content: space-between;
  flex-wrap: wrap;
  padding: 10px 0px;
}

/* 每个话题小盒子 */
.topic-content {
  width: 460px;
  display: inline-block;
  margin-bottom: 20px;
}

.topic-content .avatar {
  width: 40px;
  height: 40px;
  border-radius: 50%;
  vertical-align: top;
  margin-right: 5px;
  background-color: #ddc; /*有图片数据时可去掉*/
}



/* 用户名那一大块 */
.user-time {
  height: 40px;
  display: inline-block;
  color: #666;
  font-size: 10px;
}

.user {
  text-decoration: none;
  color: #111;
  font-size: 14px;
}
.user:hover{
text-decoration: underline;
}

/*用户评论*/
.user-content {
  display: block;
  text-decoration: none;
  color: #666;
  font-size: 14px;
  margin: 5px 0;
}
.user-content:hover{
  text-decoration: underline;
}
.user-content .title{
  font-weight: 600;
}
.user-to span {
  font-weight: 900;
  font-size: 16px;
}
.user-img {
  width: 100px;
  height: 100px;
  margin-right: 5px;
}
.user-img:hover{
  cursor: pointer;
}
.like {
  font-size: 12px;
  color: #666;
}
</style>