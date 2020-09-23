<template>
  <div id="PBLmenu">
    <div class="my">
      <div class="my-left">
        <router-link :to="el.link" v-for="el in title" :key=el.title>{{el.title}}</router-link>
      </div>
      <div>
         <router-link to="###" class="my-right">创建新菜单</router-link>
      </div>
     
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
        title:[
        {title:'我的菜单',link:'###'}
      ]
    }
  },
};
</script>

<style scoped>
#PBLmenu{
   margin-left: 135px;
  padding-top: 15px;
}
.my {
  display: flex;
  margin-right:25px; 
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
.my-right{
  text-decoration: none;
  background-color:#ff6767;
  color: white;
  padding: 3px 5px;
  border-radius: 5px;
  margin-bottom: 5px;
}
</style>
