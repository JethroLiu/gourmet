<template>
    <div id="footer" class="w">
        <router-link to="##" class="redTitle">{{ redText }}</router-link>

        <p class="about">
            <span v-for="item in aboutMe" :key="item.name">
                <span>&nbsp;-&nbsp;</span>
                <router-link :to="item.addr">{{ item.name }}</router-link>
            </span>
        </p>
        <div class="myapp">
            <img src="../../../assets/msc_app.png" alt="图片加载失败" width="82px" />
            <p>手机客户端</p>
        </div>
        <div class="friendship">
            <span>友情链接：</span>
            <router-link to="##" v-for="item in friendLink" :key="item.name">{{ item.name }}</router-link>
        </div>
        <p class="copyright">
            <span>版权所有 © 2004-2020</span>
            <router-link to="##">&nbsp;美食天下&nbsp;</router-link>
            <span>保留所有权利 -</span>
            <router-link to="##">&nbsp;京公网安备 11010502031041号&nbsp; </router-link>
            <span>/ 京ICP证090244号 /</span>
            <router-link to="##"> &nbsp;京ICP备10020153号&nbsp;</router-link>
        </p>
    </div>
</template>

<script>
export default {
    data() {
        return {
            redText: "美食天下 - 让吃更美好！",
            aboutMe: [
                {
                    name: "关于我们",
                    addr: "##",
                },
                {
                    name: "联系我们",
                    addr: "##",
                },
                {
                    name: "加入我们",
                    addr: "##",
                },
                {
                    name: "服务声明",
                    addr: "##",
                },
                {
                    name: "友情链接",
                    addr: "##",
                },
                {
                    name: "网站地图",
                    addr: "##",
                },
                {
                    name: "移动应用",
                    addr: "##",
                },
            ],
            friendLink: [
                { name: "愉悦妈妈", addr: "##" },
                { name: "自游乐", addr: "##" },
                { name: "爱奇艺生活", addr: "##" },
                { name: "中华美食网", addr: "##" },
                { name: "太平洋亲子网", addr: "##" },
                { name: "美食杰", addr: "##" },
                { name: "红餐网", addr: "##" },
                { name: "妈妈网", addr: "##" },
                { name: "亲宝网", addr: "##" },
                { name: "6296网址大全", addr: "##" },
                { name: "中国地图", addr: "##" },
                { name: "三九养生堂", addr: "##" },
                { name: "饭菜网", addr: "##" },
                { name: "波奇网", addr: "##" },
                { name: "慧聪网", addr: "##" },
                { name: "企业服务平台", addr: "##" },
                { name: "农经网", addr: "##" },
                { name: "885财经", addr: "##" },
                { name: "餐饮杰", addr: "##" },
            ],
        };
    },
};
</script>

<style scoped>
#footer {
    position: relative;
    top: 20px;
    height: 250px;
    border-top: 1px solid #e5e5e5;
}

.redTitle {
    position: absolute;
    top: 10px;
    left: 0;
    display: block;
    font-size: 14px;
    font-weight: bolder;
    text-decoration: none;
    color: #ff5500;
}

.redTitle:hover {
    text-decoration: underline;
}

.about {
    position: absolute;
    top: 40px;
    left: 0;
    overflow: hidden;
    text-align: left;
    text-indent: -12px;
}

.about a {
    font-size: 12px;
    color: #666666;
    text-decoration: none;
}

.about a:hover {
    color: #ff6767;
    text-decoration: underline;
}

.myapp {
    position: absolute;
    top: 12px;
    right: 0;
    width: 82px;
    height: 105px;
}

.myapp p {
    font-size: 12px;
    color: #333333;
    text-align: center;
}
.friendship {
    position: absolute;
    top: 120px;
    left: 0;
}

.friendship span {
    font-size: 12px;
    font-weight: bolder;
    margin-right: 5px;
    color: #000000;
}

.friendship a {
    font-size: 12px;
    color: #666666;
    text-decoration: none;
    margin-right: 17px;
}

.friendship a:hover {
    color: #ff6767;
    text-decoration: underline;
}

.copyright {
    position: absolute;
    top: 190px;
    left: 0;
}

.copyright span {
    font-size: 12px;
    color: #333333;
}

.copyright a {
    font-size: 12px;
    color: #333333;
    text-decoration: none;
}
.copyright a:hover {
    color: #ff6767;
    text-decoration: underline;
}
</style>
