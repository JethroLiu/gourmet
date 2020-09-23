<template>
  <div id="myUser">
    <router-link to="/MyUser/Login">登录</router-link>
    <router-link to="/MyUser/Register">注册</router-link>
    <router-view></router-view>
  </div>
</template>

<script>
export default {};
</script>

<style scoped>
#myUser {
  margin-top: 40px;
}
</style>
