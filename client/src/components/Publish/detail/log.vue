<template>
<div>
    <div class="text">
         <div  class="log"> 你还没有发布任何日志,点击 <router-link to="###">发布日志</router-link>去发布</div>
    </div>
</div>


</template>
<script>export default {}</script>
<style scoped>
.text div{
      font-size: 20px;
    padding-right: 0;
    color: #999;
}
.log a{
    text-decoration: none;
    color: black;
    font-size: 18px;
}
.log a:hover{
    text-decoration: underline;
    color: red;
}
</style>