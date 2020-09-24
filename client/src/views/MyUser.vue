<template>
    <div id="myUser">
        <!-- 背景轮播图 -->
        <div class="block">
            <el-carousel :height="`${screenHeight}px`" indicator-position="none" arrow="never">
                <el-carousel-item>
                    <img src="../assets/1.jpg" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
                <el-carousel-item>
                    <img src="../assets/2.jpg" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
                <el-carousel-item>
                    <img src="../assets/3.jpg" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
                <el-carousel-item>
                    <img src="../assets/4.jpg" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
                <el-carousel-item>
                    <img src="../assets/5.jpg" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
                <el-carousel-item>
                    <img src="../assets/6.jpg" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
                <el-carousel-item>
                    <img src="../assets/7.jpg" alt="图片加载失败" width="100%" height="100%" />
                </el-carousel-item>
            </el-carousel>
        </div>

        <div class="box">
            <router-link :class="showClass" to="/MyUser/Login" @click.native="choosePlay(1)">登录</router-link>
            <router-link :class="otherClass" to="/MyUser/Register" @click.native="choosePlay(2)">注册</router-link>
            <router-view></router-view>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            screenWidth: document.body.clientWidth, // 屏幕尺寸
            screenHeight: document.documentElement.clientHeight || document.body.clientHeight, // 屏幕尺寸
            showClass: "mybox selected",
            otherClass: "mybox",
        };
    },
    mounted() {
        const that = this;
        window.onresize = () => {
            that.screenWidth = document.body.clientWidth;
            that.screenHeight = document.documentElement.clientHeight || document.body.clientHeight;
        };
        if (this.$route.fullPath == "/MyUser/Login") {
            this.showClass = "mybox selected";
            this.otherClass = "mybox";
        } else if (this.$route.fullPath == "/MyUser/Register") {
            this.otherClass = "mybox selected";
            this.showClass = "mybox";
        }
    },
    methods: {
        choosePlay(arg) {
            if (arg == 1) {
                this.showClass = "mybox selected";
                this.otherClass = "mybox";
            } else if (arg == 2) {
                this.otherClass = "mybox selected";
                this.showClass = "mybox";
            }
        },
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
    background-color: rgba(255, 255, 255, 0.9);
    margin: 0px auto;
    position: relative;
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
}

/* 登录注册两个盒子 */
.mybox {
    display: inline-block;
    color: #000000;
    text-decoration: none;
    width: 50%;
    z-index: 1;
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;
}

.selected {
    background-color: #4d90fe;
    color: #ffffff;
}
</style>
