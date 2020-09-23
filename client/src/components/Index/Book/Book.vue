<template>
  <div id="book" class="w">
    <div class="book-nav">
      <h2 class="nav-left">
        <a href="###" class="shicai">时令食材</a>
      </h2>
      <ul>
          <li>肉禽蛋</li>
          <li>水产品</li>
          <li>蔬菜</li>
          <li>米面豆乳</li>
          <li>食材首页</li>
      </ul>
    </div>
    <div class="book">
      <ul>
        <li v-for="el in arr1" class="single-book" :key="el.id">
          <a href="###">
            <img :src="el.image" class="book-img" alt="图片显示失败" />
            <p>{{el.name}}</p>
          </a>
          <p class="content">{{el.content}}</p>
        </li>
      </ul>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      arr:[],
      arr1: [
        {
          id: 1,
          image: "https://static.meishichina.com/img/shicai/xigua.jpg",
          name: "西瓜",
          content: "吃瓜群众的最爱",
        },
        {
          id: 2,
          image: "https://static.meishichina.com/img/shicai/xigua.jpg",
          name: "西瓜",
          content: "吃瓜群众的最爱",
        },
        {
          id: 3,
          image: "https://static.meishichina.com/img/shicai/xigua.jpg",
          name: "西瓜",
          content: "吃瓜群众的最爱",
        },
        {
          id: 4,
          image: "https://static.meishichina.com/img/shicai/xigua.jpg",
          name: "西瓜",
          content: "吃瓜群众的最爱",
        },
        {
          id: 5,
          image: "https://static.meishichina.com/img/shicai/xigua.jpg",
          name: "西瓜",
          content: "吃瓜群众的最爱",
        },
        {
          id: 6,
          image: "https://static.meishichina.com/img/shicai/xigua.jpg",
          name: "西瓜",
          content: "吃瓜群众的最爱",
        },
        {
          id: 7,
          image: "https://static.meishichina.com/img/shicai/xigua.jpg",
          name: "西瓜",
          content: "吃瓜群众的最爱",
        },
        {
          id: 8,
          image: "https://static.meishichina.com/img/shicai/xigua.jpg",
          name: "西瓜",
          content: "吃瓜群众的最爱",
        },
        {
          id: 9,
          image: "https://static.meishichina.com/img/shicai/xigua.jpg",
          name: "西瓜",
          content: "吃瓜群众的最爱",
        },
        {
          id: 10,
          image: "https://static.meishichina.com/img/shicai/xigua.jpg",
          name: "西瓜",
          content: "吃瓜群众的最爱",
        },
        {
          id: 11,
          image: "https://static.meishichina.com/img/shicai/xigua.jpg",
          name: "西瓜",
          content: "吃瓜群众的最爱",
        },
        {
          id: 12,
          image: "https://static.meishichina.com/img/shicai/xigua.jpg",
          name: "西瓜",
          content: "吃瓜群众的最爱",
        },
        {
          id: 13,
          image: "https://static.meishichina.com/img/shicai/xigua.jpg",
          name: "西瓜",
          content: "吃瓜群众的最爱",
        },
        {
          id: 14,
          image: "https://static.meishichina.com/img/shicai/xigua.jpg",
          name: "西瓜",
          content: "吃瓜群众的最爱",
        },
      ],
    };
  },
   async mounted() {
    let result = await this.$axios.get("/book");
    this.arr = result.data;
  },
};
</script>
<style scoped>
#book{
  margin-top: 30px;
}
.book {
  height: 370px;
}
.book ul {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
}
ul .single-book {
  list-style: none;
  width: 126px;
  text-align: center;
  display: inline-block;
  padding-top: 10px;
}
ul .book-img {
  width: 126px;
  height: 126px;
  margin-bottom: 5px;
}
.single-book a {
  text-decoration: none;
  color: #000;
}
.book .content {
  font-size: 12px;
  color: #ccc;
  padding-top: 5px;
}
.book-nav {
  height: 36px;
  display: flex;
  justify-content: space-between;
  text-align: center;
  line-height: 36px;
  border-bottom: 1px solid #E8E8E8;
}
.book-nav .shicai {
  color: #ff6767;
  text-decoration: none;
  padding-bottom: 5px;
  border-bottom: 2px solid #ff6767;
  font-size: 20px;
}
.nav-left{
    display: inline-block;
}
.book-nav ul{
    display: inline-block;
}
.book-nav li{
    display: inline-block;
    list-style: none;
    padding-left: 20px;
}
.book-nav li:hover{
    color:  #ff6767;
}
</style>