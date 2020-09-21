<template>
    <div class="box">
        <div class="topnav">
            <!-- 左边导航 -->
            <div class="leftnav">
                <a href="##" class="leftLogo">
                    <span>美食天下</span>
                    <span>首页</span>
                </a>
                <div class="centerbtn">
                    <router-link to="##" v-for="item in navtile" :key="item">{{ item }}</router-link>
                </div>
            </div>
            <!-- 右边导航 -->
            <div class="rightnav">
                <router-link to="##">注册</router-link>
                <router-link to="##">登录</router-link>
                <router-link to="##">QQ登录 </router-link>
                <div>发布</div>
                <div>签到有礼</div>
                <div>客户端</div>
            </div>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            navtile: ["菜谱", "食材", "珍选", "健康", "专题", "社区", "话题", "活动", "搜索", "烘焙", "妈妈派"],
        };
    },
};
</script>

<style scoped>
.topnav {
    position: relative;
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

.rightnav div {
    display: inline-block;
    height: 40px;
    padding: 0 14px;
    line-height: 40px;
    font-size: 12px;
    color: #ffffff;
    cursor: pointer;
}

.rightnav div:first-of-type {
    background-color: #59c3d1;
}
.rightnav div:nth-of-type(2) {
    background-color: #ffa859;
}
.rightnav div:nth-of-type(3) {
    background-color: #fe5761;
}
</style>
