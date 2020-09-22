<template>
  <div class="lbt w">
    <!-- element ui 轮播图 -->
    <div class="block">
      <el-carousel height="360px" indicator-position="none" arrow="never">
        <el-carousel-item v-for="item in lbtImg" :key="item">
          <!-- <h3 class="small">{{ item }}</h3> -->
          <img :src="item" alt="图片加载失败" />
        </el-carousel-item>
      </el-carousel>
    </div>

    <!-- 轮播图上方菜单 -->
    <div class="menu">
      <router-link class="part" to="##" v-for="item in menuItem" :key="item.title">
        {{item.title}}
        <div class="more">
          <router-link v-for="myItem in item.content" to="##" :key="myItem">{{myItem}}</router-link>
        </div>
      </router-link>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      lbtImg: "",
      menuItem: [
        {
          title: "菜谱大全",
          content: [
            "一周热门",
            "人气菜肴",
            "冬季食谱",
            "早餐",
            "高颜值",
            "凉菜",
            "热菜",
            "主食",
            "小吃",
            "酱泡腌菜",
            "新秀菜谱",
            "所有分类",
          ],
        },
        {
          title: "食材大全",
          content: [
            "秋葵",
            "西红柿",
            "黑木耳",
            "小龙虾",
            "螃蟹",
            "鸡翅",
            "肉禽蛋",
            "水产品",
            "蔬菜瓜菌",
            "鲜果干果",
            "米面豆乳",
            "营养排行",
          ],
        },
        {
          title: "饮食健康",
          content: [
            "最新推荐",
            "饮食常识",
            "瘦身美容",
            "气血双补",
            "痛经",
            "驱寒暖身",
            "对抗雾霾",
            "失眠",
            "食疗食补",
          ],
        },
        {
          title: "专题专区",
          content: ["菜单", "家常菜谱", "食疗食补"],
        },
        {
          title: "一起红",
          content: ["二维码"],
        },
      ],
    };
  },
  components: {},
  async mounted() {
    // 请求后台获取轮播图
    let result = await this.$axios.get("/lbt");
    this.lbtImg = result.data;
  },
};
</script>

<style scoped>
.lbt {
  position: relative;
}

.el-carousel__item h3 {
  color: #475669;
  font-size: 14px;
  opacity: 0.75;
  line-height: 150px;
  margin: 0;
}

.el-carousel__item:nth-child(2n) {
  background-color: #99a9bf;
}

.el-carousel__item:nth-child(2n + 1) {
  background-color: #d3dce6;
}

.menu {
  position: absolute;
  z-index: 2;
  top: 0;
  left: 0;
  width: 220px;
  height: 360px;
  background: rgba(68, 68, 68, 0.4);
}

.menu .part {
  display: inline-block;
  width: 100%;
  height: 60px;
  margin-top: 8px;
  font-size: 18px;
  line-height: 60px;
  text-align: center;
  color: #ffffff;
  text-decoration: none;
}

.menu .part:hover {
  background-color: #ff6767;
}

.menu .part:hover .more {
  display: block;
}

.more {
  position: absolute;
  left: 220px;
  top: 0;
  display: none;
  box-sizing: border-box;
  width: 490px;
  height: 360px;
  padding: 20px 50px 0;
  background-color: #fff;
  box-shadow: 0 1px 4px rgba(0, 0, 0, 0.1);
}

.more a {
  display: inline-block;
  width: 130px;
  height: 70px;
  margin-bottom: 10px;
  font-size: 18px;
  color: #333333;
  text-decoration: none;
}
.more a:hover {
  color: #ff6767;
}
</style>
