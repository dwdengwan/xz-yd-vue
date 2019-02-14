<template>
    <div class="app-home">
        <!-- 第一个:顶部状态栏 学子商城 -->
        <!-- <mt-header fixed title="学子商城"></mt-header> -->
        <!-- 第二个:轮播图 -->
        <mt-swipe :auto="3000">
            <mt-swipe-item v-for="item of list" :key="item.id">
                <img :src="item.img_url">
            </mt-swipe-item>
        </mt-swipe>
        <!-- 第三个:九宫格 -->
        <div class="mui-content">
            <ul class="mui-table-view mui-grid-view mui-grid-9">
                <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <router-link to="/Newslist">
                    <!-- <span class="mui-icon mui-icon-home"></span> -->
                    <img src="../../img/menu1.png" alt="">
                    <div class="mui-media-body">新闻资讯</div>
                </router-link>
                </li>
                <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <router-link to="/GoodsList">
                    <!-- <span class="mui-icon mui-icon-email"><span class="mui-badge">5</span></span> -->
                    <img src="../../img/menu2.png" alt="">
                    <div class="mui-media-body">商品###0</div>
                </router-link>
                </li>
                <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3">
                <router-link to="/GoodsInfo/2">
                    <!-- <span class="mui-icon mui-icon-chatbubble"></span> -->
                    <img src="../../img/menu3.png" alt="">
                    <div class="mui-media-body">购物车</div>
                </router-link>
                </li>
                <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="javascript:;">
                    <!-- <span class="mui-icon mui-icon-location"></span> -->
                    <img src="../../img/menu4.png" alt="">
                    <div class="mui-media-body">location</div></a>
                </li>
                <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="javascript:;">
                    <!-- <span class="mui-icon mui-icon-search"></span> -->
                    <img src="../../img/menu5.png" alt="">
                    <div class="mui-media-body">Search</div></a>
                </li>
                <li class="mui-table-view-cell mui-media mui-col-xs-4 mui-col-sm-3"><a href="javascript:;">
                    <!-- <span class="mui-icon mui-icon-phone"></span> -->
                    <img src="../../img/menu6.png" alt="">
                    <div class="mui-media-body">Phone</div></a>
                </li>
            </ul> 
        </div>
        <!-- 第四个:底部导航栏tabber -->
        
    </div>
</template>
<script>
    export default{
        data(){
            return{
                list:[]
            }
        },
        methods: {
            //创建自定义函数
            getImages(){
                // 完成一个功能,获取服务器端轮图片
                // 1.发送ajax请求
                // 2.获取返回数据 保存list
                // console.log(222);
                var url="http://127.0.0.1:3000/getImages";
                this.axios.get(url).then(result=>{
                    // console.log(result.data);
                    this.list=result.data;
                })
            }
        },
        created(){
            //当组件对象创建成功后 即可发送ajax请求
            this.getImages();
        }
    }
</script>
<style>
    .app-home .mui-content .mui-table-view{
        background:#fff ;
    }
    .app-home .mui-content .mui-table-view li{
        border:0;
    }
    .app-home .mui-content img{
        width: 50%;
    }
    .app-home .mint-swipe{
        height: 200px;
    }
    .app-home .mint-swipe img{
        width:100%;
    }
</style>