<template>
  <div id="section">
     <div class="left-path">
        <span>你的位置：</span>
        <a href="###">美食天下</a>
        <span>&gt;</span>
        <a href="###">菜谱</a>
        <span>&gt;</span>
        <a href="###">热菜</a>
        <a href="###">家常菜</a>
      </div>
       <!-- 菜名以及菜的说明 -->
      <div class="caipu-name">
        <h1>
          <a href="###" class="caiming">{{caixinxi.caiming}}</a>
        </h1>
        <a href="###" class="user-avator">
          <!-- 用户的头像 -->
          <img
            src="https://i5.meishichina.com/data/avatar/009/17/98/77_avatar_big.jpg?x-oss-process=style/c320&v=20200922"
            alt="图片加载失败"
          />
          <p>用户名</p>
        </a>
      </div>
      <a href="###" class="cai-img">
        <img
          :src="caixinxi.caiimg1"
          alt="图片加载失败"
        />
      </a>
      <div class="cai-text">
        <span>{{caixinxi.text}}</span>
      </div>
      <div class="caidetail">
        <div class="quan">
          <div class="quan1"></div>
        </div>
        <h3>食材明细</h3>
      </div>
      <!-- 调料的 -->
      <fieldset v-for="el in cailiao" :key="el.id">
        <legend v-show="el.clname">{{el.clname}}</legend>
        <div class="cailiao">
          <span v-for="el1 in el.detai" :key="el1">{{el1}}</span>
        </div>
      </fieldset>
      <div class="caidetail">
        <div class="quan">
          <div class="quan1"></div>
        </div>
        <h3>排包的做法步骤</h3>
      </div>
       <!-- 做菜的步骤 -->
      <div class="buzhou" v-for="el in buzhou" :key="el.id1">
        <img :src="el.img1" alt />
        <div class="content">
          <div class="id1">{{el.id1}}</div>
          <div class="cont-text">{{el.describle}}</div>
        </div>
      </div>
    
      <div class="caidetail">
        <div class="quan">
          <div class="quan1"></div>
        </div>
        <h3>小窍门</h3>
      </div>
      <!-- 做菜小窍门部分 -->
      <div class="qiaomen">
        <p v-for="el in qiaomen" :key="el.id">{{el.id}}、{{el.text}}</p>
        <p class="username">
          来自美食天下
          <a href="###">xxxxxxxxx</a>的作品
        </p>
        <p>使用的厨具：炒锅</p>
        <p>
          所属分类：
          <a href="###">热菜</a>
          <a href="###">家常菜</a>
          <a href="###">下饭菜</a>
        </p>
      </div>
      <!-- 图标部分 -->
      <div class="tubiao">
        <router-link to="###" class="singletb" v-for="el in xiaotubiao" :key="el.id">
          <span><img :src="tubiao" alt="" :style="'left:'+el.left1+'px'" @mouseenter="fn(el)" @mouseout="fn1(el)"></span>
          <p>{{el.text}}</p>
        </router-link>
      </div>
      <div class="pinglun">
        <textarea name="" id="" cols="30" rows="10"></textarea>
        <div class="fabiao">
          <div class="fabiao-left">Ctrl+Enter 也可提交哦</div>
          <div class="fabiao-right">发表评论</div>
        </div>
        <div class="tiaoshu">
          <span></span>
        </div>
      </div>
  </div>
</template>

<script>
export default {
  methods: {
    fn(arg1){
      let imgs = document.querySelectorAll(".singletb img");
      imgs[arg1.id-1].style.left = `${arg1.left2}px`;
    },
    fn1(arg1){
      let imgs = document.querySelectorAll(".singletb img");
      imgs[arg1.id-1].style.left = `${arg1.left1}px`;
    }
  },
  data() {
    return {
      data1:0,
      tubiao:"http://static.meishichina.com/v6/img/zhen/ix2.png?v=4",
      // 菜的详细信息
      caixinxi:{
        caiming:"宽粉炖鸡块",
        caiimg1:"https://i8.meishichina.com/attachment/recipe/2020/09/16/202009161600243928756795730571.jpg?x-oss-process=style/p800",
        text:"宽粉炖鸡块，泽瑞妈认为这是一道足可以和小鸡炖蘑菇比肩的美食，宽粉吸足了鸡肉的汤汁，晶莹剔透， Q弹爽滑，鸡肉酥烂、鲜香入味，却香而不腻，简直是太好吃了。",
      },
      // 八个小图标部分的数据，转发评论的
      xiaotubiao:[{
        id:1,
        left1:-210,
        left2:-180,
        text:"人点赞",
      },{
        id:2,
        left1:0,
        left2:-30,
        text:"人收藏",
      },{
        id:3,
        left1:-240,
        text:"加入菜单",
      },{
        id:4,
        left1:-270,
        text:"条评论",
      },{
        id:5,
        left1:-150,
        text:"微信",
      },{
        id:6,
        left1:-90,
        text:"QQ好友",
      },{
        id:7,
        left1:-120,
        text:"QQ空间",
      },{
        id:8,
        left1:-60,
        text:"新浪微博",
      }],
      // 口味
      cailiao: [
        { id: 1, clname: "主料", detai: ["油", "盐", "酱", "醋"] },
        {
          id: 2,
          clname: "辅料",
          detai: ["油", "盐", "酱油", "醋"],
        },
        {
          id: 3,
          clname: "",
          detai: ["油", "盐", "酱油", "醋"],
        },
      ],
      // 做菜步骤
      buzhou: [
        {
          id1: 4,
          img1:
            "https://i8.meishichina.com/attachment/recipe/2020/09/22/2020092216007543727947377756041.jpg?x-oss-process=style/p320",
          describle:
            "准备好所需要的食材，这次使用的高筋面粉是金龙鱼面包粉，很细腻，很容易出膜，所使用的食材也是配方的1.2倍。",
        },
        {
          id1: 5,
          img1:
            "https://i8.meishichina.com/attachment/recipe/2020/09/22/2020092216007543727947377756041.jpg?x-oss-process=style/p320",
          describle:
            "准备好所需要的食材，这次使用的高筋面粉是金龙鱼面包粉，很细腻，很容易出膜，所使用的食材也是配方的1.2倍。",
        },
        {
          id1: 6,
          img1:
            "https://i8.meishichina.com/attachment/recipe/2020/09/22/2020092216007543727947377756041.jpg?x-oss-process=style/p320",
          describle:
            "准备好所需要的食材，这次使用的高筋面粉是金龙鱼面包粉，很细腻，很容易出膜，所使用的食材也是配方的1.2倍。",
        },
        {
          id1: 7,
          img1:
            "https://i8.meishichina.com/attachment/recipe/2020/09/22/2020092216007543727947377756041.jpg?x-oss-process=style/p320",
          describle:
            "准备好所需要的食材，这次使用的高筋面粉是金龙鱼面包粉，很细腻，很容易出膜，所使用的食材也是配方的1.2倍。",
        },
      ],
      // 做菜小窍门
      qiaomen: [
        {
          id: 1,
          text: "肉类可以用猪里脊，鸡胸肉，牛里脊都可以",
        },
        {
          id: 2,
          text:
            "肉腌制一定要入味，起码一个小时以上，汤汁是酸甜的，如果肉再没有味道这个菜就不好吃了。",
        },
        {
          id: 3,
          text: "玉米淀粉是干的往肉上裹的，不需要用水。",
        },
        {
          id: 4,
          text:
            "糖醋汁比例方便大家记我按54321排比写的，如果拿不准混合好以后可以尝下，根据自家口味进行微调。",
        },
        {
          id: 5,
          text: "肉类可以用猪里脊，鸡胸肉，牛里脊都可以",
        },
      ],
    };
  },
};
</script>

<style  scoped>

* {
  margin: 0;
  padding: 0;
}
#section {
  position: absolute;
  left: 0;
  top: 0;
  width: 640px;
}
.pinglun textarea{
  overflow: hidden;
  height: 90px;
  line-height: 20px;
  font-size: 14px;
  width: 640px;
  outline: 0;
  padding: 5px;
}
.fabiao{
  width: 640px;
  display: flex;
  justify-content: space-between;
  border: 1px solid #ccc;
  height: 30px;
  font-size: 12px;
  background-color: #EEEEEE;
}
.fabiao .fabiao-left{
  padding-left: 10px;
  color: #666;
  height: 30px;
  line-height: 30px;
}
.fabiao .fabiao-right{
  color: #fff;
  height: 30px;
  width: 100px;
  line-height: 30px;
  text-align: center;
  background-color: #ff6767;
  border-left: 1px solid #ccc;
}
.tubiao {
  height: 83px;
  color: #666;
  font-size: 12px;
  display: flex;
  justify-content: space-between;
}
.tubiao .singletb{
  margin-top: 15px;
  width: 77px;
  height: 53px;
  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;
}
.tubiao img{
  width: 300px;
  height: 30px;
  position: relative;
  /* left: -60px; */
}
.tubiao span{
  width: 30px;
  height: 30px;
  display: inline-block;
  overflow: hidden;
}
.caipu-left {
  width: 640px;
  height: 900px;
}
.caipu-right {
  width: 300px;
  height: 900px;
  /* 高度 */
  background-color: rosybrown;
}
.left-path {
  font-size: 12px;
  height: 19px;
  color: #111;
  line-height: 19px;
}
.left-path a {
  text-decoration: none;
  color: #111;
  padding: 0 3px 0 3px;
}
.left-path a:last-of-type {
  padding-left: 20px;
}
.left-path a:hover {
  color: #e55d5d;
  text-decoration: underline;
}
.user-avator,
.caiming {
  text-decoration: none;
  color: #111;
}

.user-avator img {
  width: 34px;
  height: 34px;
  border-radius: 50%;
}
.caipu-name {
  height: 70px;
  position: relative;
}
.user-avator {
  font-size: 12px;
  position: absolute;
  right: 0;
  top: 10px;
  text-align: center;
}
.caipu-name h1 {
  height: 70px;
  width: 200px;
  line-height: 70px;
}
.cai-img img {
  width: 640px;
  height: 426px;
  margin-top: 10px;
}
.cai-text {
  margin-top: 20px;
}
.cai-text span::before,
.cai-text span::after {
  content: "“";
  display: inline-block;
  text-indent: -10px;
  height: 24px;
  width: 30px;
  font-size: 40px;
  font-family: "宋体", "Hiragino Sans GB", STHeiti, "微软雅黑",
    "Microsoft YaHei";
  color: #bfbfbf;
  vertical-align: bottom;
}
.cai-text span::after {
  content: "”";
}
.caidetail {
  height: 60px;
  margin-top: 20px;
  display: flex;
  justify-content: flex-start;
  align-items: center;
}
.caidetail .quan {
  width: 20px;
  height: 20px;
  background-color: #ff6767;
  border-radius: 50%;
  display: inline-block;
  display: flex;
  justify-content: center;
  align-items: center;
}
.quan .quan1 {
  width: 10px;
  height: 10px;
  display: inline-block;
  background-color: #fff;
  border-radius: 5px;
}
.caidetail h3 {
  display: inline-block;
  margin-left: 10px;
}
.cailiao {
  width: 638px;
  height: 70px;
  display: flex;
  justify-content: space-around;
  align-items: center;
  font-size: 20px;
}
.cailiao span:hover {
  color: #ff6767;
}
fieldset {
  border: 1px solid #ccc;
  border-radius: 10px;
  margin-bottom: 20px;
}
fieldset legend {
  margin-left: 50px;
  text-align: start;
  padding: 0 10px;
}
.buzhou {
  height: 165px;
  background-color: sandybrown;
  margin-bottom: 40px;
  display: flex;
  margin-left: 20px;
}
.buzhou img {
  width: 220px;
  height: auto;
}

.content {
  margin-left: 20px;
  font-size: 18px;
}
.content .id1 {
  width: 36px;
  height: 36px;
  /* background-color: sandybrown; */
  border-radius: 50%;
  text-align: center;
  line-height: 36px;
  border: 1px solid #ccc;
  margin: 22px 0 10px 0;
}
.qiaomen p:nth-last-of-type(1),
.qiaomen p:nth-last-of-type(2),
.qiaomen p:nth-last-of-type(3) {
  margin: 10px 0;
}
.qiaomen a {
  padding: 0 5px;
  text-decoration: navajowhite;
  color: #000;
}
.qiaomen a:hover {
  color: #ff6767;
}
</style>