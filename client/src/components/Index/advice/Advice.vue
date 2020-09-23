<template>
  <div id="advice" class="w">
    <div class="adBox" v-for="itemBox in adData" :key="itemBox.title1">
      <div class="titleBox">
        <span class="title1">{{itemBox.title1}}</span>
        <span class="title2">{{itemBox.title2}}</span>
        <span class="title3">{{itemBox.title3}}</span>
      </div>
      <img :src="itemBox.images" alt="图片加载失败" width="310px" />
      <a
        :href="myitem.where"
        v-for="myitem in itemBox.content"
        :key="myitem.name"
        target="_blank"
      >{{myitem.name}}</a>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      adData: [
        {
          title1: "健康",
          title2: "食疗",
          title3: "健康首页",
          images: "",
          content: [],
        },
        {
          title1: "烘焙",
          title2: "食谱",
          title3: "烘焙专区",
          images: "",
          content: [],
        },
        {
          title1: "为您推荐",
          title2: "",
          title3: "我的收藏",
          images: "",
          content: [],
        },
      ],
    };
  },
  async mounted() {
    // 请求推荐模块全部内容
    let result = await this.$axios.get("/advice");
    // 提取三栏内容
    for (let i = 0; i < result.data.length; i++) {
      if (result.data[i].adviseId == 1) {
        this.adData[0].images = result.data[i].image;
        this.adData[0].content.push({
          name: result.data[i].title,
          where: result.data[i].titlelink,
        });
      } else if (result.data[i].adviseId == 2) {
        this.adData[1].images = result.data[i].image;
        this.adData[1].content.push({
          name: result.data[i].title,
          where: result.data[i].titlelink,
        });
      } else if (result.data[i].adviseId == 3) {
        this.adData[2].images = result.data[i].image;
        this.adData[2].content.push({
          name: result.data[i].title,
          where: result.data[i].titlelink,
        });
      }
    }
  },
};
</script>

<style scoped>
#advice {
  display: flex;
  justify-content: space-between;
  height: 384px;
  margin-top: 20px;
}

.adBox {
  box-sizing: border-box;
  width: 310px;
  height: 384px;
}

.titleBox {
  position: relative;
  width: 100%;
  height: 36px;
  border-bottom: 1px solid #999999;
}

.title1,
.title2,
.title3 {
  vertical-align: top;
  box-sizing: border-box;
  display: inline-block;
  color: #333333;
  height: 36px;
  line-height: 36px;
  cursor: pointer;
}

.title1 {
  border-bottom: 2px solid transparent;
  font-size: 20px;
}

.title2 {
  margin-left: 20px;
  border-bottom: 2px solid transparent;
  font-size: 20px;
}

.title3 {
  position: absolute;
  right: 0;
  top: 0;
  font-size: 16px;
}

.title1:hover,
.title2:hover {
  color: #ff6767;
  border-bottom: 2px solid #ff6767;
}

.title3:hover {
  color: #ff6767;
}

.adBox img {
  margin-top: 10px;
}

.adBox a {
  display: block;
  margin-top: 10px;
  height: 26px;
  font-size: 16px;
  line-height: 26px;
  color: #333333;
  text-decoration: none;
  text-align: left;
}

.adBox a:hover {
  color: #ff6767;
}

.adBox a::before {
  content: "o";
  color: #999999;
  margin-right: 8px;
}
</style>
