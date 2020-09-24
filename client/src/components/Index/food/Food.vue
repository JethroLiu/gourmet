<template>
  <div id="food" class="w">
    <div class="food">
      <!-- 菜谱左边 -->
      <div class="foodleft">
        <a href="##" class="leftitem">
          <h3 class="h3 xinxiu">新秀菜谱</h3>
          <h3 class="h3">一周热门</h3>
          <h3 class="h3">最受欢迎的家常菜</h3>
        </a>
      </div>
      <!-- 菜谱右边 -->
      <div class="foodright">
        <!-- <router-link to="##" v-for="item in foodItem1" :key="item">{{item}}</router-link> -->
      </div>
    </div>
    <div class="foodbox">
      <div
        class="foodkinds"
        v-for="item in foodobj"
        :key="item.id"
        @click="toDetails(item.id)"
      >
        <div style="overflow: hidden">
          <img :src="item.image" alt="图片加载失败" />
        </div>
        <p class="foodtile">{{ item.title }}</p>
        <p class="foodp">{{ item.userName }}</p>
        <div class="foodtag" v-if="Boolean(Number(item.alone))">独家</div>
      </div>
    </div>
  </div>
</template>



<script>
export default {
  data() {
    return {
      foodItem: ["热菜", "凉菜", "汤羹", "主食", "小吃", "西餐", "菜谱首页"],
      foodobj: [],
    };
  },

  // 请求数据库首页新秀菜谱的数据
  async mounted() {
    let result = await this.$axios.get("/food");
    this.foodobj = result.data;
  },

  methods: {
    toDetails(foodId) {
      alert(foodId);
      this.$router.push({ name: "Details", params: { foodId } });
    },
  },
};
</script>



<style scoped>
.food {
  height: 40px;
  margin-top: 30px;
  position: relative;
  line-height: 40px;
  border-bottom: 1px solid #cccccc;
}

.foodleft {
  position: absolute;
  left: 0;
  top: 0;
}

.h3 {
  display: inline-block;
  margin-right: 15px;
  color: black;
  /* font-family: "微软雅黑"; */
  font: 20px "Hiragino Sans GB", STHeiti, 微软雅黑, "Microsoft YaHei", Helvetica,
    Arial, serif;
  padding-bottom: 9px;
}

.xinxiu {
  color: #ff6767;
  border-bottom: 3px solid #ff6767;
}

.h3:hover {
  color: #ff6767;
  border-bottom: 3px solid #ff6767;
}

.foodright {
  position: absolute;
  right: 0;
  top: 0;
}

.foodright a {
  display: inline-block;
  height: 40px;
  padding: 0 10px;
  line-height: 40px;
  text-decoration: none;
  font-size: 16px;
  color: black;
}

.foodright a:hover {
  color: #ff6767;
}

.foodbox {
  display: flex;
  justify-content: space-between;
  margin-top: 12px;
  flex-wrap: wrap;
  text-decoration: none;
  color: #000000;
}

.foodkinds {
  position: relative;
  width: 230px;
  height: 305px;
  margin-bottom: 5px;
  cursor: pointer;
}

.foodtag {
  position: absolute;
  top: 5px;
  left: 5px;
  font-size: 12px;
  text-align: center;
  background: rgba(0, 0, 0, 0.5);
  border-radius: 3px;
  color: #fff;
  height: 20px;
  line-height: 20px;
  padding: 1px 4px;
  position: absolute;
  z-index: 2;
}

/* 图片缓慢放大效果 */
.foodkinds img {
  width: 230px;
  height: 230px;
  transition-property: transform;
  transition-duration: 0.5s;
  transition-timing-function: ease-in-out;
  transition-delay: 0s;
  margin-bottom: 4px;
}

.foodkinds img:hover {
  transform: scale(1.1, 1.1);
}

.foodkinds .foodtile:hover {
  color: #ff6767;
}

.foodkinds p {
  height: 20px;
  text-align: center;
  line-height: 20px;
  margin: 8px;
}
/* 图片上的独家标签 */
.foodsole {
  display: inline-block;
  position: relative;
  left: 0;
  top: -299px;
  color: #ffffff;
  background: rgba(0, 0, 0, 0.5);
  padding: 2px;
  border-radius: 4px;
  width: 32px;
  height: 20px;
  line-height: 20px;
  font-size: 12px;
  text-align: center;
}

.foodtile {
  overflow: hidden; /*超出部分隐藏*/
  text-overflow: ellipsis; /* 超出部分显示省略号 */
  white-space: nowrap; /*规定段落中的文本不进行换行 */
  font-size: 18px;
}

.foodp {
  font-size: 12px;
  color: #7a7474;
}

.foodp:hover {
  color: #ff6767;
}
</style>