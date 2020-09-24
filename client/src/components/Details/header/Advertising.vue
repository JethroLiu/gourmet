<template>
  <div id="advertising" class="w">
    <div class="advst">
     <a href="##"><img :src="advimg" alt="图片加载失败"></a>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      advimg:"https://static.meishichina.com/img/banner/3.jpg"
    };
  },
};
</script>

<style  scoped>
  .advst{
    height: 90px;
    margin-top: 12px;
  }
</style>