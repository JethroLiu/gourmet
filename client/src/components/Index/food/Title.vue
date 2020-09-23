<template>

    <div id="" class="w food">
        <!-- 菜谱左边 -->
        <div class="foodleft">
            <a href="##" class="leftitem">
                <h3 class="h3 xinxiu">新秀菜谱</h3>
                <h3 class="h3">一周热门</h3>
                <h3 class="h3">最受欢迎的家常菜</h3>
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
        // 首页新秀食谱的标题接口
        // async mounted() {
        //     let result = await this.$axios.get("/food");
        //     this.foodItem = result.data;
        // }
    }
</script>




<style scoped>
    .food {
        height: 40px;
        /* background-color: burlywood; */
        margin-top: 30px;
        position: relative;
        line-height: 40px;
        border-bottom: 1px solid #cccccc;
        
    }

    .foodleft {
        position: absolute;
        left: 0;
        top: 0;
    }

    .h3 {
        display: inline-block;
        margin-right: 15px;
        color: black;
        /* font-family: "微软雅黑"; */
        font: 20px "Hiragino Sans GB", STHeiti, 微软雅黑, "Microsoft YaHei", Helvetica, Arial, serif;
        padding-bottom: 9px;

    }

    .xinxiu {
        color: #ff6767;
        border-bottom: 3px solid #ff6767;
        
    }


    .h3:hover {
        color: #ff6767;
        border-bottom: 3px solid #ff6767;
    }

    .foodright {
        position: absolute;
        right: 0;
        top: 0;

    }

    .foodright a {
        display: inline-block;
        height: 40px;
        padding: 0 10px;
        line-height: 40px;
        text-decoration: none;
        font-size: 16px;
        color: black;
    }

    .foodright a:hover {
        color: #ff6767;
    }
</style>