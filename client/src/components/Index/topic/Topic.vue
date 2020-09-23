<template>
  <div class="w" id="topic">
    <!--模拟body标签  到时候要删除-->
    <div class="topic">
      <!--话题模块》标题行-->
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
      <!--话题模块》用户动态-->
      <div v-for="(ell,indexx) in topiccontent" :key="indexx" class="topic-content">
        <div>
          <img :src="ell.avatar" alt class="avatar" />
          <div class="user-time">
            <router-link to="###" class="user">{{ell.name}}</router-link>
            <p>{{ell.time}}</p>
          </div>
        </div>
        <router-link to="###" class="user-content">
          <span>{{ell.title}}</span>
          <br />
          {{ell.content}}
        </router-link>
        <img v-for="(img,index3) in ell.img" :src="img" alt="加载失败" :key="index3" class="user-img" />
        <p class="like">{{ell.like}}个喜欢，{{ell.comment}}条评论</p>
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
      topiccontent: [],
    };
  },
  async mounted() {
    // 请求后台获取
    let result = await this.$axios.get("/topic");
    this.topiccontent = result.data;
    console.log(this.topiccontent); //[{},{},{},{}]
    for(let el in this.topiccontent){
        
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
/*用户评论*/
.user-content {
  display: block;
  text-decoration: none;
  color: #666;
  font-size: 14px;
  margin: 5px 0;
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
.like {
  font-size: 12px;
  color: #666;
}
</style>