<template>
<div>
    <div class="text">
           <div  class="caidan">您还没有创建新菜单噢，快点击这里<router-link to="/Publish/PBLtopic/fabu">创建新菜单</router-link>吧！</div>
           
       </div>
</div>


</template>
<script>export default {}</script>
<style scoped>
.text{
        font-size: 20px;
    padding-right: 0;
    color: #999;
}
.caidan a{
    text-decoration: none;
    color: black;
    font-size: 18px;
}
.caidan a:hover{
    text-decoration: underline;
    color: red;
}
</style>