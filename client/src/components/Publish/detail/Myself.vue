<template>
  <div class="myself">
    <!-- 头像 -->
    <div>
      <div class="usertext">头像</div>
      <div class="userPic">
        <img :src="this.userPic1" alt="" />
      </div>
    </div>
    <!-- 头像图片 -->
    <div>
      <input type="file" @change="fileChange($event)" />
    </div>
    <!-- 性别 -->
    <div class="sexbox">
      <div class="usertext">性别</div>
      <div class="outsexbox">
        <div v-for="(el, index) in sexarr" :key="index">
          <span
            @click="getsex(index, $event)"
            :class="{ sexactived: current == index }"
            >{{ el.userSex }}</span
          >
        </div>
      </div>
    </div>

    <!-- 地址 -->
    <div>
      <div class="usertext">家乡</div>
      <div>
        <!-- 省份选择 -->
        <select v-model="selectedProv" class="selectedProv">
          <option
            v-for="item in listProv"
            v-bind:value="item.id"
            :key="item.id">
            {{ item.name }}
          </option>
        </select>

        <!-- 城市选择 -->
        <select v-model="selectedCity" class="selectedCity">
          <option
            v-for="item in listCity"
            v-bind:value="item.id"
            :key="item.id">
            {{ item.name }}
          </option>
        </select>
      </div>
    </div>

     <!-- 邮箱 -->
    <div>
      <div class="usertext">电子邮箱</div>
      <div class="email">
          <input type="text" v-model="email"  />
      </div>
    </div>
     <!-- 个人签名 -->
    <div>
      <div class="usertext">个人签名</div>
      <div class="says">
        <input type="text" v-model="qianming">
      </div>
    </div>
    <!-- 保存修改按钮 -->
    <div class="savemsg">
      <button @click="savemsg">保存修改</button>
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      userPic: "",
      userPic1: "",
      sexactived: false,
      current: 0,
      selectedProv: "",
      selectedCity: "",
      listProv: [],
      listCity: [],
      email:"",
      qianming:"",
      sexarr: [{ userSex: "男" }, { userSex: "女" }, { userSex: "保密" }],
      cityAll: [
        { pid: "1", id: "1", name: "成都" },
        { pid: "1", id: "2", name: "南充" },
        { pid: "1", id: "3", name: "广元" },
        { pid: "1", id: "4", name: "绵阳" },
        { pid: "2", id: "5", name: "朝阳区" },
        { pid: "2", id: "6", name: "东城区" },
        { pid: "2", id: "7", name: "丰台区" },
        { pid: "2", id: "8", name: "石景山区" },
      ],
    };
  },
  mounted() {
    // 发起网络请求
    this.$axios.get("/verification").then((res) => {
      this.svg = res.data.data;
    });
  },
   created: function () {
    this.getProvList();
  },
  watch: {
    selectedProv: 'getCityList'
  },
  methods: {
    async savemsg() {
    alert("保存成功")
    this.userPic1 = this.userPic1;
    this.email = this.email
    // this.qianming = this.qianming
    },
    // 头像选择
    fileChange(event) {
      // console.log(event)
      this.userPic = event.target.files[0];
      let f = new FileReader();
      f.readAsDataURL(this.userPic);
      f.onload = (event) => {
        this.userPic1 = event.target.result;
      };
    },
    // 性别设置
    getsex(index, event) {
      console.log(index, event.target.innerHTML);
      this.current = index;
    },
     //获取省份列表
    getProvList() {
      this.listProv = [{ "id": "1", "name": "四川省" }, { "id": "2", "name": "北京" }]
      console.log(this.listProv)
    },
     // 获取当前选择省份下的城市列表
    getCityList() {
      let vm = this;
      this.listCity = this.cityAll.filter(function (city) {
        return city.pid == vm.selectedProv
      })
      console.log(this.listCity)
    }
  },
 
  components: {},
};
</script>


}
</script>
<style scoped>
.myself{
  position: relative;
}
.myself>div{
  margin-top: 20px;
}
.usertext {
  color: #888888;
  font-size: 12px;
  margin-top: 10px;
}
.userPic {
  width: 120px;
  height: 120px;
  border: 1px solid #ccc;
  background-color: seagreen;
  margin-bottom: 10px;
}
.userPic img {
  width: 120px;
  height: 120px;
}
.sex {
  width: 30px;
  border-radius: 10px;
  outline: none;
}
.sexbox span {
  display: inline-block;
  width: 35px;
  height: 25px;
  text-align: center;
  line-height: 25px;
  border: 1px solid #ccc;
  border-radius: 6px;
  margin: 5px 10px 0 5px;
  color: #999999;
  font-size: 12px;
}
.sexbox .outsexbox {
  display: flex;
}
.sexbox .sexactived {
  color: white;
  background-color: #ff8d8d;
  border-color: #ff8d8d;
}
.sexbox:hover {
  cursor: pointer;
}
.selectedCity,.selectedProv{
  border: 1opx  solid #ccc;
  width: 80px;
  height: 25px;
  margin-right: 10px;
  color: #333333;
  font-size: 12px;
}
.selectedCity:focus,.selectedProv:focus{
  outline: none;
  /* border-color: blue; */
}
.selectedCity option:focus,.selectedProv option:focus{
  outline: none;
  /* border-color: blue; */
}
.email input,.says input{
  outline: none;
  height: 25px;
}

.savemsg button {
  width: 140px;
  height: 38px;
  line-height: 38px;
  text-align: center;
  background-color: #ff8d8d;
  color: white;
  outline: none;
  border: 0 none;
  margin-top: 20px;
}

</style>