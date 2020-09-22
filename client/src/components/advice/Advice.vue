<template>
  <div id="advice" class="w">
    <div class="adBox" v-for="itemBox in adData" :key="itemBox.title1">
      <div class="titleBox">
        <span class="title1">{{itemBox.title1}}</span>
        <span class="title2">{{itemBox.title2}}</span>
        <span class="title3">{{itemBox.title3}}</span>
      </div>
      <img :src="itemBox.image" alt="图片加载失败" width="310px" />
      <router-link to="##" v-for="myitem in itemBox.content" :key="myitem">{{myitem}}</router-link>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      adData: "",
    };
  },
  async mounted() {
    let result = await this.$axios.get("/advice");
    this.adData = result.data;
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
