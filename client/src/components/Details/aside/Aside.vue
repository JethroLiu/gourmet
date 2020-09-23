<template>
  <div id="aside">

    <!-- 详情右侧广告部分 -->
    <div class="guanggao">
      <div class="guangtext">Google提供的广告
        <div v-if="this.closedata"><img :src="imgsrc" alt="图片加载失败">
          <div class="xtimes" @click="closeadv">广告 &times;</div>
        </div>
      </div>
    </div>
    <!-- 详情广告下侧的分类 -->
    <div class="xqright">
      <!-- 标题 -->
      <div class="xqtitle">
        <a href="##">
          <h3 class="xrimen">热门专题</h3>
          <span class="xmore">更多</span>
        </a>
      </div>
      <!-- 分类的部分 -->
      <div class="typebox">
        <div class="xtype">
          <router-link to="##" v-for="item in xqType2" :key="item">{{item}}</router-link>
        </div>
      </div>
    </div>

<!-- 第二部分广告部分 -->

<div id="aside2">


  <!-- 详情右侧第二部分广告部分 -->
  <div class="guanggao2">
    <div class="ximgbox" v-for="asobj in xImg" :key="asobj.id">
      <img :src="asobj.ximage" alt="加载图片失败" class="ximage">
      <p class="asp">{{asobj.xtitle}}</p>
    </div>
  </div>
  <div class="xqright">
    <!-- 标题 -->
    <div class="xqtitle">
      <a href="##">
        <h3 class="xrimen">最受欢迎的家常菜</h3>
        <span class="xmore2">更多</span>
      </a>
    </div>
    <!-- 详情右侧最受欢迎的家常菜 -->
    <div class="typebox">
      <div class="xtype">
        <router-link to="##" v-for="item in xqType" :key="item">{{item}}</router-link>
      </div>
    </div>
  </div>
</div>




  </div>
</template>

<script>
  export default {
    data() {

      return {
        closedata: "true",
        imgsrc: "https://tpc.googlesyndication.com/simgad/837638829849209966?sqp=4sqPyQQ7QjkqNxABHQAAtEIgASgBMAk4A0DwkwlYAWBfcAKAAQGIAQGdAQAAgD-oAQGwAYCt4gS4AV_FAS2ynT4&rs=AOga4qnv3zmitxl9C1bU0FTMNEV6OamaWw",
        xqType: ["炒三丝", "白灼芥蓝", "啤酒卤蛋", "芹菜炒肉丝", "咸肉菜饭", "银耳雪梨羹", "草莓奶油蛋糕卷", "小炒杏鲍菇", "南瓜银耳羹",
          "茄子炖土豆", "牛肉松", "香煎藕盒", "韭菜虾皮炒鸡蛋", "冬瓜虾仁汤", "香椿豆", "香菇猪肉包", "东北杀猪菜",
          "日本豆腐", "蓝莓果酱蛋糕卷", "香葱炒鸡蛋", "牛奶小面包", "酱烤鱿鱼", "核桃面包", "炒拉条", "蒜香意大利面", "香菇牛肉面",
          "老干妈炒饭", "酥皮蛋挞", "笋干炒肉", "家常黄焖鸡"],

          xqType2: ["红烧肉", "红烧茄子", "红烧鱼", "鱼香肉丝", "可乐鸡翅", "宫保鸡丁", "红烧排骨", "糖醋排骨", "水煮肉片",
          "佛跳墙", "麻婆豆腐", "麻辣香锅", "年夜饭", "瘦身", "补气血", "秋葵", "黑木耳",
          "大闸蟹"],
          xImg: [
          {
            id:1,
            ximage: "https://f10.baidu.com/it/u1=1474303683&u2=2459712297&fm=76",
            xtitle:"正宗大闸蟹价格"
          }, {
            id:2,
            ximage: "https://f12.baidu.com/it/u1=784109678&u2=2267326853&fm=76",
            xtitle:"教包子技术"
          }, { 
            id:3,
            ximage: "https://t12.baidu.com/it/u1=2535850916&u2=4094324195&fm=76",
            xtitle:"孩子的营养食谱"
          }, { 
            id:4,
            ximage: "https://t12.baidu.com/it/u1=4218289688&u2=1678097688&fm=76",
            xtitle:"培训烘焙西点"
          }
        ]
      };
    },
    methods: {
      closeadv() {
        this.closedata = 0;
      }
    }
  };
</script>

<style scoped>
  #aside {
    position: absolute;
    right: 0;
    top: 0;
    width: 300px;
  }

  .guanggao {
    width: 300px;
    height: 250px;
    margin-top: 60px;

  }

  /* 广告下面隐藏的盒子 */
  .guangtext {
    width: 300px;
    height: 250px;
    margin-top: 60px;
    background-color: rgb(219, 216, 219);
    position: relative;
    font-size: 24px;
    text-align: center;


    /* display: none; */
  }

  /* 广告图片 */
  .guangtext img {
    width: 300px;
    height: 250px;
    margin-top: -30px;
  }

  /* 关闭的小图标 */
  .xtimes {
    color: #ffffff;
    position: absolute;
    right: 0;
    bottom: 0;
    cursor: pointer;
    background-color: #cccc;
    font-size: 14px;
  }

  .xqright {
    width: 300px;
    margin-top: 30px;

  }

  .xqtitle {
    border-bottom: 1px solid #cccccc;
  }

  .xqtitle a {
    text-decoration: none;
    color: black;
    position: relative;

  }

  .xrimen {
    display: inline-block;
    color: #ff6767;
    border-bottom: 3px solid #ff6767;
    font: 20px "Hiragino Sans GB", STHeiti, 微软雅黑, "Microsoft YaHei", Helvetica, Arial, serif;
    /* position: absolute; */

  }

  .xmore {
    display: inline-block;
    position: absolute;
    right: -212px;
    top: 0;
  }

  .xmore:hover {
    color: #ff6767;
  }

  /* 热门专题的种类 */
  .typebox {
    width: 300px;
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
    margin-top: 14px;

  }

  .xtype a {
    display: inline-block;
    width: 90px;
    height: 36px;
    border: 1px solid #cccccc;
    font-size: 14px;
    text-align: center;
    line-height: 36px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    text-decoration: none;
    color: black;
    margin-right: 8px;
    margin-bottom: 6px;
  }

  .xtype a:hover {
    border: 1px solid #ff6767;
    color: #ff6767;
  }


  /* 第二部分广告 */
  .guanggao2 {
    width: 300px;
    height: 255px;
    /* background-color: rgb(219, 216, 219); */
    margin-top: 60px;
    display: flex;
    justify-content: space-around;
    flex-wrap: wrap;
    border: 1px solid #cccccc;
  }
  
  .ximgbox,
  .ximage{
    width: 140px;
    height: 99px;
    
  }
  .ximage:hover{
    width: 140px;
    height: 99px;
    /* margin-top: 3px; */
    border: 1px solid  #ff6767;
    cursor: pointer;

  }
  .xmore2 {
    display: inline-block;
    position: absolute;
    right: -140px;
    top: 0;
  }
  .xmore2:hover {
    color: #ff6767;
  }
 
  .ximgbox p{
    height: 20px;
    line-height: 20px;
    width: 120px;
    text-align: center;
    font-size: 12px;
  }
  .asp:hover{
    color: #ff6767;
  }
  
</style>