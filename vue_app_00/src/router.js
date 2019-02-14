import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
import testContainer from "./components/testContainer.vue"
// 将home导出从"./components/tabbar/home.vue"导出
import home from "./components/tabbar/home.vue"
import Newslist from "./components/home/Newslist.vue"
import test01 from "./components/test/test01.vue"
import test02 from "./components/test/test02.vue"
import NewsInfo from "./components/home/NewsInfo.vue"
import GoodsList from "./components/goods/GoodsList.vue"
import GoodsInfo from "./components/goods/GoodsInfo.vue"
import Register from "./components/tabbar/Register.vue"
import Login from "./components/tabbar/Login.vue"
import ShopList from "./components/tabbar/ShopList.vue"
import Logout from "./components/home/Logout.vue"
Vue.use(Router)

export default new Router({
  routes: [
    // {path:'/',component:HelloContainer},
    //用户访问/时 重新定位 /home home显示 重定向
    {path:'/',redirect:'/home'},
    {path:'/test',component:testContainer},
    // 将home路径挂载在home下
    {path:'/home',component:home},
    {path:'/Newslist',component:Newslist},
    {path:'/test01',component:test01},
    {path:'/test02/:age',component:test02},
    {path:'/NewsInfo',component:NewsInfo},
    {path:'/GoodsList',component:GoodsList},
    {path:'/GoodsInfo/:id',component:GoodsInfo},
    {path:'/Register',component:Register},
    {path:'/Login',component:Login},
    {path:'/ShopList',component:ShopList},
    {path:'/Logout',component:Logout},
  ]
})
