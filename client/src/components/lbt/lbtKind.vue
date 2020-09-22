<template>
	<div class="lbt-kind">
		<ul><li v-for="(el,index1) in data" :key='index1'><a href="###" v-text="el.title" class="bb"></a><span>></span>
			<div class="lbt-kind-content">
				<div class="sbox">
					<a href="###" v-for='(item ,index2)in el.data'  :key="index2" v-text='item' class="lbt-kind-content-item" >lbt-kind-content</a>
				</div>
			</div>
			</li>
		</ul>
	</div>
</template>

<script>
	export default{
		props:['data']
	}
</script>

<style scoped>
	.lbt-kind{
		width: 220px;
		height: 360px;
		position: absolute;
		top:0px;
		left: 0px;
		background: rgba(68,68,68,.4);
	}
	.lbt-kind ul li{
		list-style: none;
		color: #fff;
		display: flex;
		justify-content: space-around;
		font-size: 18px;
	}
	.lbt-kind ul li:hover{
		background-color: #ff6767
	}
	.lbt-kind ul li:hover .lbt-kind-content{
		display: block;
	}
	.lbt-kind ul{
		position: relative;
		padding: 30px 0px;
	}
	.lbt-kind ul li .bb{
		display: inline-block;
		text-decoration: none;
		color: #fff;
		height: 20px;
		line-height: 20px;
		padding: 20px 0;
	}
	.lbt-kind ul li span{
		display: inline-block;
		text-align: center;
		height: 20px;
		line-height: 20px;
		padding: 20px 0;
	}
	.lbt-kind-content{
		display: none;
	}
	.lbt-kind-content .sbox{
		display: flex;
		position: absolute;
		top:0;
		left: 220px;
		width: 490px;
		height: 360px;
		background-color: white;
		flex-wrap: wrap;
		justify-content: center;
		align-items: center;
	}
	.sbox a{
		text-decoration: none;
		display: inline-block;
		color: #000;
		width: 130px;
		height: 70px;
		text-align: center;
		line-height: 64px;	
	}
</style>
