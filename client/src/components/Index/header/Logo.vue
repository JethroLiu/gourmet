<template>
  <div id="logo" class="w">
    <div class="logoPic"></div>
    <div class="logoNav">
      <router-link to="##" v-for="item in navItem" :key="item">{{ item }}</router-link>
    </div>
    <div class="serchBox">
      <input type="text" />
      <router-link to="##">搜索</router-link>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      navItem: ["首页", "菜谱", "食材", "珍选", "健康", "专题", "社区", "话题"],
    };
  },
};
</script>

<style scoped>
#logo {
  position: relative;
  height: 115px;
}

.logoPic {
  position: absolute;
  top: 30px;
  left: 0;
  width: 104px;
  height: 43px;
  background-image: url(../../../assets/logo.png);
  background-size: 104px 43px;
}

.logoNav {
  position: absolute;
  left: 220px;
  top: 16px;
  height: 65px;
}

.logoNav a {
  display: inline-block;
  height: 65px;
  padding: 0 10px;
  font-size: 20px;
  line-height: 65px;
  text-decoration: none;
  color: #333333;
}

.serchBox {
  position: absolute;
  right: 0;
  top: 34px;
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

.serchBox a {
  vertical-align: top;
  display: inline-block;
  width: 80px;
  height: 26px;
  background-color: #999999;
  font-size: 14px;
  text-decoration: none;
  line-height: 26px;
  text-align: center;
  color: #ffffff;
}

.serchBox a:hover {
  background-color: #ff6767;
}
.logoNav a:hover {
  color: #ff6767;
}
</style>
