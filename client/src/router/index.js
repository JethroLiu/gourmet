import Vue from "vue";
import VueRouter from "vue-router";

Vue.use(VueRouter);

const routes = [
    {
        // 首页
        path: "/",
        name: "Index",
        component: () => import("../views/Index.vue"),
    },
    {
        // 菜谱细节
        path: "/Details",
        name: "Details",
        component: () => import("../views/Details.vue"),
    },
    {
        // 登录注册
        path: "/MyUser",
        name: "MyUser",
        component: () => import("../views/MyUser.vue"),
        redirect: "/MyUser/Login",
        children: [
            {
                path: "Login",
                name: "Login",
                component: () => import("@/components/MyUser/Login.vue"),
            },
            {
                path: "Register",
                name: "Register",
                component: () => import("@/components/MyUser/Register.vue"),
            },
        ],
    },
    {
        // 发表各种、个人中心、收藏
        path: "/Publish",
        name: "Publish",
        component: () => import("../views/Publish.vue"),
        redirect:'Publish/PBLtopic/mytopic',
        children: [
            {
                path: "Vip",
                name: "Vip",
                component: () => import("@/components/Publish/Vip.vue"),
            },
            {
                path: "MyBook",
                name: "MyBook",
                component: () => import("@/components/Publish/MyBook.vue"),
               
            },
            {
                path: "PBLtopic",
                name: "PBLtopic",
                component: () => import("@/components/Publish/PBLtopic.vue"),
                redirect:'/Publish/PBLtopic/mytopic',
                children:[
                    {
                        path:"mytopic",
                        component:() => import("@/components/Publish/detail/mytopic.vue"),
                         
                    },
                    {
                        path:"fabu",
                        component:() => import("@/components/Publish/detail/fabu.vue")
                      }
                ]
            },
            {
                path: "PBLlog",
                name: "PBLlog",
                component: () => import("@/components/Publish/PBLlog.vue"),
            },
            {
                path: "PBLmenu",
                name: "PBLmenu",
                component: () => import("@/components/Publish/PBLmenu.vue"),
            },
            {
                path: "Favorite",
                name: "Favorite",
                component: () => import("@/components/Publish/Favorite.vue"),
                redirect:'/Publish/Favorite/favorite',
                children:[
                    {
                        path:"favorite",
                        component:() => import("@/components/Publish/detail/Favorite.vue")
                    },
                    {
                        path:"topic",
                        component:() => import("@/components/Publish/detail/topic.vue")
                    },
                    {
                        path:"log",
                        component:() => import("@/components/Publish/detail/log.vue")
                    },
                    {
                        path:"zhaunti",
                        component:() => import("@/components/Publish/detail/zhaunti.vue")
                    },
                    {
                        path:"caidan",
                        component:() => import("@/components/Publish/detail/caidan.vue")
                    },
                ]
            },
            {
                path: "MySelf",
                name: "MySelf",
                component: () => import("@/components/Publish/MySelf.vue"),
                redirect:'/Publish/MySelf/myself',
                children:[
                    {
                    path:"myself",
                    component:() => import("@/components/Publish/detail/Myself.vue"),
                    meta: { keepAlive: true }
                },
                {
                    path:"adress",
                    component:() => import("@/components/Publish/detail/adress.vue"),
                },
            ]
            },
        ],
    },
];

const router = new VueRouter({
    mode: "history",
    base: process.env.BASE_URL,
    routes,
});

// 全局前置守卫 访问拦截
router.beforeEach((to, from, next) => {
    // 允许访问首页和登录注册
    // if (to.path == "/" || to.path == "/MyUser/Login") {
    //     next();
    // } else {
    //     // 查看用户是否登录
    //     let flag = localStorage.getItem("islogin"); // 取本地缓存查看是否登陆过
    //     if (flag) {
    //         next();
    //     } else {
    //         next("/Login"); // next 也会触发 beforeEach
    //     }
    // }

    // if (to.path == "/Publish") {
    //     alert("全局前置守卫拦截了你的访问");
    //     next("/MyUser/Login");
    // }
    next();
});

export default router;
