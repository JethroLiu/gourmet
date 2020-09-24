<template>
    <div id="myUser">
        <!-- element ui 轮播图 -->
        <div class="block">
            <el-carousel :height="`${screenHeight}px`" indicator-position="none" arrow="never">
                <el-carousel-item>
                    <img src="../assets/bg1.jpeg" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
                <el-carousel-item>
                    <img src="../assets/bg2.png" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
                <el-carousel-item>
                    <img src="../assets/bg3.png" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
                <el-carousel-item>
                    <img src="../assets/bg4.jpg" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
                <el-carousel-item>
                    <img src="../assets/bg5.jpg" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
            </el-carousel>
        </div>

        <div class="box">
            <router-link
                :to="el.link"
                :class="{ show: change != index }"
                v-for="(el, index) in datas"
                :key="index"
                @click.native="mychange(index)"
                >{{ el.title }}</router-link
            >
            <router-view></router-view>
        </div>
    </div>
</template>

<script>
export default {
    methods: {
        mychange(e) {
            this.change = e;
        },
    },
    data() {
        return {
            screenWidth: document.body.clientWidth, // 屏幕尺寸
            screenHeight: document.documentElement.clientHeight || document.body.clientHeight, // 屏幕尺寸
            change: 0,
            datas: [
                { title: "登录", link: "/MyUser/Login" },
                { title: "注册", link: "/MyUser/Register" },
            ],
        };
    },
    mounted() {
        const that = this;
        window.onresize = () => {
            that.screenWidth = document.body.clientWidth;
            that.screenHeight = document.documentElement.clientHeight || document.body.clientHeight;
        };
    },
};
</script>

<style scoped>
#myUser {
    position: fixed;
    top: 40px;
    left: 0;
    width: 100%;
    padding-top: 100px;
}
/* 轮播图 */
.block {
    position: fixed;
    left: 0;
    top: 0;
    z-index: 0;
    width: 100%;
    height: 100%;
}

/* 轮播图结束 */
.box {
    width: 530px;
    height: 50px;
    line-height: 50px;
    text-align: center;
    font-size: 20px;
    background-color: rgba(255, 255, 255, 0.8);
    margin: 0px auto;
    position: relative;
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
}
/*登录注册两个盒子*/
.box a {
    display: inline-block;
    color: #000;
    text-decoration: none;
    width: 50%;
    z-index: 1;
}
/*登录*/
.box a:nth-of-type(1) {
    border-top-left-radius: 5px;
}
/*注册*/
.box a:nth-of-type(2) {
    border-top-right-radius: 5px;
}
.show {
    background-color: rgba(0, 0, 0, 0.6);
    color: #fff !important;
}
</style>
