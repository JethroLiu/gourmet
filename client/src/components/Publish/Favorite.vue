<template>
  <div id="favorite">
    <div class="my">
      <div class="my-left">
        <router-link :to="el.link" v-for="el in title" :key=el.title>{{el.title}}</router-link>
      </div>
    </div>
     <router-view></router-view>
  </div>
</template>

<script>
export default {
  data() {
    return {
        title:[
        {title:'我收藏的菜谱',link:'/Publish/Favorite/favorite'},{title:'话题',link:'/Publish/Favorite/topic'},{title:'日志',link:'/Publish/Favorite/log'}
        ,{title:'菜单',link:'/Publish/Favorite/caidan'},{title:'专题',link:'/Publish/Favorite/zhaunti'}
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
  border-bottom: 2px  solid transparent;
}
.my-left a:hover {
  color: #ff6767;
  border-bottom: 2px solid #ff6767;
}
</style>
