<template>
    <div class="tuijian" class="w"></div>
    <div id="food" class="w">
        <!-- 菜谱左边 -->
        <div class="foodleft">
            <a href="##" class="leftitem">
                <h3>新秀菜谱</h3>
                <h3>一周热门</h3>
                <h3>最受欢迎的家常菜</h3>
            </a>
        </div>
        <!-- 菜谱右边 -->
        <div class="foodright">
            <router-link to="##" v-for="item in foodItem" :key="item">{{item}}</router-link>
        </div>
    </div>
</template>



<script>
    export default {
        data() {
            return {
                foodItem: ["热菜", "凉菜", "汤羹", "主食", "小吃", "西餐", "菜谱首页"]
            };
        },
    }
</script>




<style scoped>
    .tuijian {
        height: 386px;
        background-color: aquamarine;
    }

    #food {
        height: 37px;
        background-color: burlywood;
        position: relative;
    }
    .foodleft{
        position: absolute;
        left: 0;
       top: 0;
    }

    .foodright{
        position: absolute;
        right: 0;
        top: 0;
    }
</style>