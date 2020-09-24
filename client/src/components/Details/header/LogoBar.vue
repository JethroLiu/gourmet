<template>
  <div id="logobar" class="w">
    <div class="logoBox">
      <div class="logoPic"></div>
      <div class="caipubox"><a href="##">菜谱</a></div>
      <div class="logoNav">
        <router-link to="##" v-for="item in navItem" :key="item">{{ item }}</router-link>
      </div>
      <div class="serchBox">
        <input type="text" />
        <router-link to="##">搜索</router-link>
      </div>
    </div>
    <!-- 详情页搜索下方的小分类-->
    <div class="sernav">
      <ul class="serUl">
        <li v-for="item2 in navItem2" :key="item2">
          <router-link to="##">{{item2}}</router-link>
        </li>
      </ul>
    </div>

  </div>

</template>

<script>
  export default {
    data() {
      return {
        navItem: ["菜谱首页", "分类", "菜单", "排行", "食材", "食疗食补"],
        navItem2: ["全部", "热菜", "凉菜", "汤羹", "主食", "小吃", "西餐", "烘焙", "饮品", "零食", "泡酱腌菜", "自制食材", "最新菜谱", "浏览全部菜谱"]
      };
    },
  };
</script>

<style scoped>
  #logobar {
    position: relative;
    height: 115px;
  }

  .logoBox {
    box-sizing: border-box;


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

  .caipubox {
    position: absolute;
    top: 35px;
    left: 130px;
    width: 62px;
    height: 60px;
  }

  .caipubox a {
    width: 40px;
    height: 34px;
    background: #FF838B;
    border-radius: 5px;
    color: #fff;
    display: block;
    font-size: 20px;
    padding: 0 10px;
    text-decoration: none;
    text-align: center;
    line-height: 30px;
    
  }
  .caipubox a:hover{
    background: #FF6767;
    text-decoration: none
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

  .trangle {
    width: 20px;
    /*设置宽高为0，所以div的内容为空，从才能形成三角形尖角*/
    height: 20px;

    /*transparent 表示透明*/
    border: 1px solid #ff6767;
    /* border-right: 200px solid transparent; */
    border-bottom: 1px solid transparent;
    border-left: 1px solid transparent;
    border-right: 1px solid transparent;
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

  .logoNav a:nth-of-type(2) {
    color: #ff6767;
  }

  /* 搜索下方小导航 */
  .sernav {
    width: 990px;
    height: 34px;
    border-bottom: 1px solid #ff6767;
    border-top: 1px solid #ff6767;
    margin-top: 40px;
    position: absolute;
    top: 42px;
    left: 0;
  }

  .serUl {
    list-style: none;
    display: flex;
    justify-content: space-between;
  }

  li a {
    display: block;
    padding: 0 3px;
    height: 34px;
    font-size: 14px;
    line-height: 34px;
    color: black;
    text-decoration: none;
  }

  li a:hover {
    color: #ff6767;
    text-decoration: none
  }
</style>