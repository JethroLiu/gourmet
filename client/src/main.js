import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import axios from "axios";
// element-ui
import ElementUI from "element-ui"; // 引入组件库
import "element-ui/lib/theme-chalk/index.css"; // 全局的css样式

import Vuex from "vuex";

Vue.use(ElementUI);
Vue.use(Vuex);

// 创建 vue 仓库
const store = new Vuex.Store({
    state: { myFoodId: "我是菜谱的id" },
    mutations: {
        //默认传第一个参数传state
        increment(state, obj) {
            // 变更状态
            state.myFoodId = obj.n;
        },
    },
});

// 配置全局的 axios 基础网址
axios.defaults.baseURL = "http://localhost:7001";

// 允许请求时携带 cookie
axios.defaults.withCredentials = true;
Vue.prototype.$axios = axios;

Vue.config.productionTip = false;

new Vue({
    render: (h) => h(App),
    router,
    store, // 挂载仓库
}).$mount("#app");
