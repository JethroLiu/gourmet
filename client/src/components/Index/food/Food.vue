<template>
  <div class="w">
    <div class="foodbox">
      <div
        class="foodkinds"
        v-for="foodobj in foodMun"
        :key="foodobj.id"
        @click="toDetails(foodobj.id)"
      >
        <div style="overflow: hidden;">
          <img :src="foodobj.image" alt="图片加载失败" />
        </div>
        <p class="foodtile">{{foodobj.title}}</p>
        <p class="foodp">{{foodobj.userId}}</p>
      </div>
    </div>
  </div>
</template>



<script>
export default {
  data() {
    return {
      foodMun: [
        {
          id: 1,
          image:
            "https://i3.meishichina.com/attachment/recipe/2020/09/22/2020092216007465652048197577.jpg?x-oss-process=style/c320",
          title: "猪仔包",
          userId: "rosejyy2000",
          alone: "独家",
        },
        {
          id: 2,
          image:
            "https://i3.meishichina.com/attachment/recipe/2020/09/22/2020092216007445885588197577.jpg?x-oss-process=style/c320",
          title: "猪仔包",
          userId: "rosejyy2000",
        },
        {
          id: 3,
          image:
            "https://i3.meishichina.com/attachment/recipe/2020/09/22/2020092216007445885588197577.jpg?x-oss-process=style/c320",
          title: "猪仔包",
          userId: "rosejyy2000",
          alone: "独家",
        },
        {
          id: 4,
          image:
            "https://i3.meishichina.com/attachment/recipe/2020/09/22/2020092216007445885588197577.jpg?x-oss-process=style/c320",
          title: "猪仔包",
          userId: "rosejyy2000",
          alone: "独家",
        },
        {
          id: 5,
          image:
            "https://i3.meishichina.com/attachment/recipe/2020/09/22/2020092216007445885588197577.jpg?x-oss-process=style/c320",
          title: "猪仔包",
          userId: "rosejyy2000",
        },
        {
          id: 6,
          image:
            "https://i3.meishichina.com/attachment/recipe/2020/09/22/2020092216007445885588197577.jpg?x-oss-process=style/c320",
          title: "猪仔包",
          userId: "rosejyy2000",
        },
        {
          id: 7,
          image:
            "https://i3.meishichina.com/attachment/recipe/2020/09/22/2020092216007445885588197577.jpg?x-oss-process=style/c320",
          title: "猪仔包",
          userId: "rosejyy2000",
        },
        {
          id: 8,
          image:
            "https://i3.meishichina.com/attachment/recipe/2020/09/22/2020092216007445885588197577.jpg?x-oss-process=style/c320",
          title: "猪仔包",
          userId: "rosejyy2000",
        },
      ],
    };
  },
  // 请求数据库首页新秀菜谱的数据
  // async mounted() {
  //     let result = await this.$axios.get("/food");
  //     this.foodMun = result.data;
  // },
  methods: {
    toDetails(foodId) {
      alert(foodId);
      this.$router.push({ name: "Details", params: { foodId } });
    },
  },
};
</script>



<style scoped>
.foodbox {
  display: flex;
  justify-content: space-between;
  background-color: rgb(213, 192, 233);
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