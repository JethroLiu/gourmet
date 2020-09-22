<template>
  <div id="details">
    <LogoBar></LogoBar>
    <Advertising></Advertising>
    <Content></Content>
    <Footer></Footer>
  </div>
</template>

<script>
import LogoBar from "@/components/Details/header/LogoBar";
import Advertising from "@/components/Details/header/Advertising";
import Content from "@/components/Details/Content";
import Footer from "@/components/Details/footer/Footer";

export default {
  components: {
    LogoBar,
    Advertising,
    Footer,
    Content,
  },
  mounted() {
    // 根据菜谱的 id 请求菜谱的详细信息
    let foodId = this.$route.params.foodId;
    // let foodObj = await this.$axios.get("/Detailes");
  },
};
</script>

<style scoped>
#details {
  margin-top: 40px;
}
</style>