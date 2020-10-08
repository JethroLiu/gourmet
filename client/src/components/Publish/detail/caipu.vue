<template>
<div>
    <div >
       <div class="text">
           <div v-if="showdata1" class="gofabu"> 你还没有发布任何菜谱,点击 <router-link to="/Publish/PBLtopic/fabu">发布菜谱</router-link>去发布</div>
           
       </div>
  </div>

</div>


</template>
<script>
export default {
data(){
    return{
        showdata1:true,

    }
},
methods:{
},


}</script>
<style  scoped>
.text div{
      font-size: 20px;
    padding-right: 0;
    color: #999;
}
.gofabu a{
    text-decoration: none;
    color: black;
    font-size: 18px;
}
.gofabu a:hover{
    text-decoration: underline;
    color: red;
}
</style>