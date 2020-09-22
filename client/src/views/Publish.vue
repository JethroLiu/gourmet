<template>
    <div id="publish">
        <router-link to="/Publish/Vip">会员中心</router-link>
        <router-link to="/Publish/MyBook">菜谱</router-link>
        <router-link to="/Publish/PBLtopic">话题</router-link>
        <router-link to="/Publish/PBLlog">日志</router-link>
        <router-link to="/Publish/PBLmenu">菜单</router-link>
        <router-link to="/Publish/Favorite">收藏</router-link>
        <router-link to="/Publish/MySelf">账户设置</router-link>
        <router-view></router-view>
    </div>
</template>

<script>
export default {
    components: {},
};
</script>

<style scoped>
#publish {
    margin-top: 40px;
}
</style>
