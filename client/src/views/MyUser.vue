<template>
  <div id="myUser">
    <div class="box">
       <router-link :to="el.link" :class="{show:change!=index}" v-for="(el,index) in datas" :key=index @click.native="mychange(index)">{{el.title}}</router-link> 
        <router-view></router-view>
    </div>
  </div>
</template>

<script>
export default {
  methods: {
    mychange(e){

      this.change=e;
    }
  },
  data() {
    return {
      change:0,
      datas:[{title:'登录',link:'/MyUser/Login'},{title:'注册',link:'/MyUser/Register'}]
    }
  },
};
</script>

<style scoped>
#myUser {
  position: fixed;
  top: 40px;
  left: 0;
  background-size: cover;
  background-image: url(https://i3.meishichina.com/attachment/magic/2017/04/11/20170411149189588154913.jpg);
  height: 100%;  
  width: 100%;
  padding-top: 100px;
}
.box{
  width: 530px;
  height: 50px;
  line-height: 50px;
  text-align: center;
  font-size: 20px;
   background-color: rgba(255,255,255,.8);
  margin: 0px auto;
  position: relative;
  border-top-left-radius: 5px;
   border-top-right-radius: 5px;
}
/*登录注册两个盒子*/
.box a{
  display: inline-block;
  color: #000;
  text-decoration: none;
  width: 50%;
}
/*登录*/
.box a:nth-of-type(1){
  border-top-left-radius: 5px;
}
/*注册*/
.box a:nth-of-type(2){
  border-top-right-radius: 5px;
}
.show{
  background-color: rgba(0,0,0,.6);
   color: #fff !important;
  
}
</style>
