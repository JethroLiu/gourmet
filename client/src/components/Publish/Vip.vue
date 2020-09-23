<template>
  <div id="Vip">
    <div class="detailMe">
      <router-link to="###" class="headPic"></router-link>
      <router-link to="##" class="username">{{ username }}</router-link>
      <div class="substatus">
        <router-link to="##" v-for="item in myTags" :key="item.name">
          <div class="tagnum">{{ item.num }}</div>
          <p class="tagname">{{ item.name }}</p>
        </router-link>
      </div>
      <div class="capsule">
        <router-link to="##">{{ mynav[0] }}</router-link>
        <router-link to="##">{{ mynav[1] }}</router-link>
        <router-link to="##">{{ mynav[2] }}</router-link>
      </div>
      <div class="serchBox">
        <input type="text" />
        <router-link to="##">搜索</router-link>
      </div>
    </div>
    <div class="dongtai">
         <router-link :to="el.link" v-for="el in title" :key=el.title>{{el.title}}</router-link>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      username: "我是用户名",
      myTags: [
        { name: "成长值", num: "0" },
        { name: "幸运草", num: "5" },
        { name: "美粒", num: "0" },
        { name: "关注", num: "21" },
        { name: "粉丝", num: "80" },
        { name: "赞与收藏", num: "9" },
      ],
      mynav: ["通知", "私信", "福利活动"],
      title:[{title:'我关注的动态',link:'###'},{title:'所有动态',link:'###'},{title:'我的动态',link:'###'}]
    };
  },
};
</script>

<style scoped>
#Vip {
  width: 90%;
  position: absolute;
  left: 110px;
  top: 0;
}

.detailMe {
  position: relative;
  width: 100%;
  height: 190px;
  padding: 20px 0;
}

.headPic {
  position: absolute;
  top: 26px;
  left: 26px;
  width: 150px;
  height: 150px;
  background-color: #4d90fe;
  border-radius: 50%;
  margin-left: 26px;
}

.myData {
  display: inline-block;
  margin-left: 26px;
}

.username {
  position: absolute;
  left: 230px;
  top: 26px;
  display: inline-block;
  font-size: 30px;
  color: #ff6767;
  text-decoration: none;
}

.username:hover {
  text-decoration: underline;
}

.substatus {
  position: absolute;
  left: 230px;
  top: 80px;
}

.substatus a {
  display: inline-block;
  margin-right: 15px;
  text-decoration: none;
}

.tagnum {
  vertical-align: top;
  width: 100%;
  height: 24px;
  font-size: 18px;
  color: #333333;
  text-align: center;
  line-height: 24px;
}
.tagname {
  display: block;
  width: 100%;
  height: 20px;
  font-size: 12px;
  color: #333333;
  text-align: center;
  line-height: 20px;
  letter-spacing: 1px;
}
.substatus a:hover .tagnum,
.substatus a:hover .tagname {
  color: #ff6767;
}
.capsule {
  position: absolute;
  left: 230px;
  top: 140px;
}
.capsule a:nth-of-type(1),
.capsule a:nth-of-type(2) {
  margin-right: 18px;
  display: inline-block;
  height: 24px;
  padding: 0 20px;
  font-size: 14px;
  color: #ff6767;
  text-decoration: none;
  line-height: 24px;
  border-radius: 6px;
  border: 1px solid #ff6767;
}

.capsule a:nth-of-type(1):hover,
.capsule a:nth-of-type(2):hover {
  color: #ffffff;
  background-color: #ff6767;
}

.capsule a:nth-of-type(3) {
  display: inline-block;
  height: 24px;
  padding: 0 20px;
  border-radius: 4px;
  font-size: 14px;
  text-decoration: none;
  color: #ffffff;
  line-height: 24px;
  background-color: #ff6767;
}
/* 搜索框 */
.serchBox {
  position: absolute;
  right: 0;
  top: 75px;
  width: 250px;
  height: 26px;
  border: 1px solid #cccccc;
  overflow: hidden;
  border-radius: 4px;
}
.serchBox input {
  vertical-align: top;
  border: none;
  outline: none;
  box-sizing: border-box;
  width: 170px;
  height: 26px;
  padding: 0 4px;
}
.serchBox a{
    text-decoration: none;
    display: inline-block;
    width: 80px;
    height: 26px;
    text-align: center;
    font-size: 14px;
    color: #fff;
    background-color: #999 ;
    line-height: 28px;
}
.serchBox a:hover{
    background-color: #ff6767;
    color: #fff;
}
.dongtai {
    display: inline-block;
    width: 70%;
    margin-left: 10px;
    border-bottom: 1px solid rgb(238,238,238);
}
.dongtai a{
    text-decoration: none;
    font-weight: 400;
    display: inline-block;
    font-size: 18px;
    margin-right: 20px;
    color: #656565;
    padding-bottom: 5px;
}
.dongtai a:hover{
    color:  #ff6767;
    border-bottom: 2px solid #ff6767;
}
</style>
