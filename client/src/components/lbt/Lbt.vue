<template>
	<div class="big-lbt-box">
		<div class="big-lbt">
		</div>
		<lbtkind :data='lbtkind'></lbtkind>
		
	</div>
	
</template>

<script>
	import lbtkind from './lbtKind.vue'
	export default{
		name:'carrousel',
		components:{
			lbtkind
		},
		data(){
			return {
				lbtkind:[
					{title:'菜谱大全',data:['早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐']},
					{title:'菜谱大全',data:['早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐']},
					{title:'菜谱大全',data:['早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐']},
					{title:'菜谱大全',data:['早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐']},
					{title:'菜谱大全',data:['早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐','早餐']},
				]
			}
		}
		,
		
	}
</script>

<style scoped>
.big-lbt-box{
	width: 990px;
	height: 360px;
	box-sizing: border-box;
	background-color: #DEB887;
	margin: 0px auto;
	position: relative;
}
</style>
