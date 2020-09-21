<template>
	<div class="big-lbt-box">
		<div class="big-lbt">
			<!-- <swiper-slide :options="swiperOption" ref="mySwiper" @someSwiperEvent="callback">
				<swiper-slide>img 1</swiper-slide>
				<swiper-slide>img 2</swiper-slide>
				<swiper-slide>img 3</swiper-slide>
				<swiper-slide>img 4</swiper-slide>
				<swiper-slide>img 5</swiper-slide>
				<swiper-slide>img 6</swiper-slide>
				<div class="swiper-pagination" slot="pagination"></div> 
				<div class="swiper-button-prev" slot="button-prev"></div>
				<div class="swiper-button-next" slot="button-next"></div>
				<div class="swiper-scrollbar" slot="scrollbar"></div>
			</swiper-slide> -->
		</div>
		<lbtkind :data='lbtkind'></lbtkind>
		
	</div>
	
</template>

<script>
	// import '@/components/lbt/'
	// import 'swiper/dist/css/swiper.css'
	// import {swiper,swiperSlide} from "vue-awesome-swiper"
	import lbtkind from './lbtKind.vue'
	export default{
		name:'carrousel',
		components:{
			// swiper,swiperSlide,
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
		// data(){
		// 	return {
		// 		swiperOption:{
		// 			loop:true,
		// 			pagination:{
		// 				el:".swiper-pagination",
		// 				type:"bullets",
		// 				clickable:true,
		// 				dynamicBullets:false
		// 			},
		// 			speed:1000,
		// 			autoplay:{
		// 				delay:3000,
		// 				disableOnInteraction:false
		// 			},
		// 			effect:'slide',
		// 			navigation:{
		// 				nextEl:'.swiper-button-next',
		// 				prevEl:'.swiper-button-prev',
		// 			}
		// 		}
		// 	}
		// },
		// computed:{
		// 	swiper(){
		// 		return this.$refs.mySwiper.swiper
		// 	}
		// },
		// mounted(){
		// 	this.swiper.slideTo(3,1000,false)
		// }
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
