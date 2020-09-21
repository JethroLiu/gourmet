import Vue from "vue";
import App from "./App.vue";
import router from "./router";
import axios from "axios";
// import VueAwesomeSwiper from 'vue-awesome-swiper';
// import 'swiper/dist/css/swiper.css';
// Vue.use( VueAwesomeSwiper);

// 配置全局的 axios 基础网址，可以只写路由了
// 但是并不影响 绝对网络路径的请求
axios.defaults.baseURL = "http://127.0.0.1:7001";

// 允许请求时携带 cookie
axios.defaults.withCredentials = true;
Vue.prototype.$axios = axios;

Vue.config.productionTip = false;

new Vue({
    router,
    render: (h) => h(App),
}).$mount("#app");
