<template>
<div>
    <div >
       <div class="text">
           <div v-if="showdata1" class="gofabu"> 你还没有发布任何话题,点击 <router-link to="/Publish/PBLtopic/fabu">发布话题</router-link>去发布</div>
           <span v-if="showdata2" @click="test" class="actived">已发布，点击刷新</span>
       </div>
       <div class="show" v-for="(el,index) in dataarr" :key="index">
           <div class="title">{{el.title}}</div>
           <div><img :src="el.userPic" alt=""></div>
           <div class="timeActive">{{el.time}} <span >0个喜欢，0个评论</span> </div>
           <div class="huati">{{el.huati}}</div>
       </div>
  </div>

</div>


</template>
<script>
export default {
data(){
    return{
        showdata1:true,
        showdata2:true,
        dataarr:[]

    }
},
methods:{
 async test(){
       let result = await this.$axios.get("/gethuati");
       this.dataarr = result.data.reverse()
        // console.log((result.data[0].time))
        if(result.data.length>0){
            this.showdata1 = false
            this.showdata2 = false
        }else{
            alert("您还没有发布任何话题")
        }
  }
},


}</script>
<style  scoped>
.text{
         display: flex;
}
.actived{
    margin-left: 20px;
    color: red;
    font-size: 12px;
}
.huati,.title{
    color: #666666;
    font-size: 14px;
    padding: 10px 0;
}
.show{
    width: 1100px;
    margin: auto;
    border-bottom: 1px dashed #ccc ;
    padding: 15px;
    box-sizing: border-box;
    height: 230px;
}
.show:hover{
    background-color: #FAFAFA;
}
.show img{
    width: 100px;
    height: 100px;
}

.timeActive{
    font-size: 12px;
    color: #999999;
    padding-top: 5px;
}
.show span{
    display: none;
    margin-left: 10px;
}
.show:hover span{
    display: inline-block;
}
.gofabu a{
    text-decoration: none;
    color: black;
    font-size: 18px;
}
.gofabu a:hover{
    text-decoration: underline;
    color: red;
}
</style>