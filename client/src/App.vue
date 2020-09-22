<template>
    <div id="app">
        <div id="topbar">
            <div class="topnav">
                <div class="leftnav">
                    <!-- 首页 -->
                    <router-link to="/" class="leftLogo">
                        <span>美食天下</span>
                        <span>首页</span>
                    </router-link>
                    <div class="centerbtn">
                        <router-link :to="item.toWhere" v-for="item in navtile" :key="item.navName">{{
                            item.navName
                        }}</router-link>
                    </div>
                </div>
                <!-- 右边导航 -->
                <div class="rightnav">
                    <router-link to="##">注册</router-link>
                    <router-link to="##">登录</router-link>
                    <router-link to="##">QQ登录</router-link>
                    <router-link to="/Publish">发布</router-link>
                    <router-link to="##">签到有礼</router-link>
                    <router-link to="##">客户端</router-link>
                </div>
            </div>
        </div>

        <router-view></router-view>
    </div>
</template>

<script>
export default {
    data() {
        return {
            navtile: [
                { navName: "菜谱", toWhere: "##" },
                { navName: "食材", toWhere: "##" },
                { navName: "珍选", toWhere: "##" },
                { navName: "健康", toWhere: "##" },
                { navName: "专题", toWhere: "##" },
                { navName: "社区", toWhere: "##" },
                { navName: "活动", toWhere: "##" },
                { navName: "搜索", toWhere: "##" },
                { navName: "烘焙", toWhere: "##" },
                { navName: "妈妈派", toWhere: "##" },
            ],
        };
    },
    components: {},
    mounted() {},
};
</script>

<style>
* {
    padding: 0;
    margin: 0;
}

.w {
    width: 990px;
    margin: 0 auto;
}

#topbar {
    position: fixed;
    top: 0;
    left: 0;
    z-index: 10;
    height: 40px;
    width: 100%;
    background-color: #333333;
}

.leftnav {
    position: absolute;
    top: 0;
    left: 0;
    font-size: 14px;
    line-height: 40px;
    color: #cccccc;
}

.leftLogo {
    display: inline-block;
    width: 114px;
    height: 40px;
}

.leftLogo:hover,
.centerbtn a:hover,
.rightnav a:hover {
    background-color: #0d0d0d;
}

.leftLogo span:first-of-type {
    display: inline-block;
    height: 40px;
    margin-left: 10px;
    line-height: 40px;
    font-size: 14px;
    font-weight: bolder;
    color: #cccccc;
}

.leftLogo span:last-of-type {
    display: inline-block;
    height: 40px;
    margin-left: 10px;
    line-height: 40px;
    font-size: 14px;
    color: #cccccc;
}

.centerbtn {
    display: inline-block;
}

.centerbtn a {
    display: inline-block;
    height: 40px;
    padding: 0 10px;
    line-height: 40px;
    text-decoration: none;
    font-size: 14px;
    color: #cccccc;
}
.rightnav {
    position: absolute;
    right: 0;
    top: 0;
}

.rightnav a {
    vertical-align: top;
    display: inline-block;
    height: 40px;
    padding: 0 10px;
    font-size: 14px;
    line-height: 40px;
    text-decoration: none;
    color: #cccccc;
}

.rightnav a:nth-of-type(3) {
    vertical-align: top;
    display: inline-block;
    height: 40px;
    padding: 0 10px;
    line-height: 40px;
    font-size: 12px;
    text-decoration: none;
}

.rightnav a:nth-of-type(4),
.rightnav a:nth-of-type(5),
.rightnav a:nth-of-type(6) {
    display: inline-block;
    height: 40px;
    padding: 0 14px;
    line-height: 40px;
    font-size: 12px;
    color: #ffffff;
    cursor: pointer;
}

.rightnav a:nth-of-type(4) {
    background-color: #59c3d1;
}

.rightnav a:nth-of-type(5) {
    background-color: #ffa859;
}

.rightnav a:nth-of-type(6) {
    background-color: #fe5761;
}
</style>
