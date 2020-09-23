<template>
  <div id="favorite">
    <div class="my">
      <div class="my-left">
        <router-link :to="el.link" v-for="el in title" :key=el.title>{{el.title}}</router-link>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
        title:[
        {title:'我收藏的菜谱',link:'###'},{title:'话题',link:'###'},{title:'日志',link:'###'}
        ,{title:'菜单',link:'###'},{title:'专题',link:'###'}
      ]
    }
  },

};
</script>

<style scoped>
#favorite {
  margin-left: 135px;
  padding-top: 15px;
}
.my {
  display: flex;
  margin-right: 25px;
  justify-content: space-between;
  border-bottom: 1px solid rgb(238, 238, 238);
}
.my-left a {
  text-decoration: none;
  font-weight: 400;
  display: inline-block;
  font-size: 18px;
  margin-right: 20px;
  color: #656565;
  padding-bottom: 5px;
}
.my-left a:hover {
  color: #ff6767;
  border-bottom: 2px solid #ff6767;
}
</style>
