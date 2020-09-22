import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import axios from "axios";
// element-ui
import ElementUI from "element-ui"; // 引入组件库
import "element-ui/lib/theme-chalk/index.css"; // 全局的css样式

Vue.use(ElementUI);

// 配置全局的 axios 基础网址
axios.defaults.baseURL = "http://127.0.0.1:7001";

// 允许请求时携带 cookie
axios.defaults.withCredentials = true;
Vue.prototype.$axios = axios;

Vue.config.productionTip = false;

new Vue({
    router,
    render: (h) => h(App),
}).$mount("#app");
