<template>
	<div class="box">
		<!-- 左边导航 -->
		<div class="topnav">
			<div class="leftnav" >
				<a href="##" class="leftLogo">
					<img />
					<span>首页</span>
				</a>
				<router-link to="##" v-for="item in navtile" :key="item">{{item}}</router-link>
				<a></a>
			</div>
				<!-- 右边导航 -->
			<div class="rightnav">
				<div class="rightbox1">注册</div>
				<div class="rightbox1">登录</div>
				<div class="rightbox1">
					<span>+</span>
					<span>QQ登录</span>
				</div>
				<div class="rightbox1">
					<span>+</span>
					<span>QQ登录</span>
				</div>
				<div class="rightbox1">
					<span>+</span>
					<span>QQ登录</span>
				</div>
			</div>
		</div>
	</div>
</template>


<script>
	export default{
		data(){
			return{
				navtile:["菜谱","食材","珍选","健康","专题","社区","话题","活动","搜索"]
			}
		}
	}
</script>


<style>
	
	.topnav{
		position: relative;
		width: 100%;
		height: 40px;
		background-color: #333;
		
	}
	.leftnav{
		position: absolute;
		left: 0;
		top: 0;
		width: 10%;
		height: 40px;
		line-height: 40px;
		color: #CCCCCC;
		font-size: 14px;
	}
	
	/* 文字导航 */
	.nava{
		font-size: 14px;
		cursor: pointer;
		
	}
	.leftnav :hover .nava{
		color: #ffffff;
	}
	.midle{
		width: 20%;
		height: 40px;
		background-color: yellow;
		line-height: 40px;
	}
	.rightnav{
		position: absolute;
		right: 0;
		top: 0;
		width: 30%;
		height: 40px;
		background-color: red;
		line-height: 40px;
	}
	.rightbox1{
		width: 25%;
		height: 40px;
		background-color: blue;
		margin-left: 1px;
	}
	
	
</style>