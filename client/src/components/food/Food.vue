<template>
  <div class="foodbox w">
      <div class="foodkinds">
          <img :src="data1.image">
          <p>{{data1.title}}</p>
          <p>{{data1.userId}}</p>
          <p></p>
      </div>
  </div>
</template>



<script>
export default{
    data(){
        return{
        data1:[{
            id:1,
            image:"https://i3.meishichina.com/attachment/recipe/2020/09/21/2020092116006813137998197577.jpg",
            title:"猪仔包",
            userId:"rosejyy2000"
            

        }]
        }
    },
}
</script>



<style scoped>
 .foodbox{
     height: 1525px;
 }
</style>