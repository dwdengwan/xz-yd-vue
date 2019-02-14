<template>
    <div class="app-swiper">
        <!-- <h3>这是个轮播图的子组件</h3> -->
        <div class="app-swiper">
            <mt-swipe :auto="4000">
                <mt-swipe-item v-for="item in list" :key="item.id">
                    <img :src="item.img_url">
                </mt-swipe-item>
            </mt-swipe>
        </div> 
        <!-- 1:创建子组件; -->
        <!-- 2:创建父组件list; -->
    </div>
</template>
<script>
    export default{
        data(){
            return{
                // list:[]
            }
        },
        props:["list"],
        created() {
            console.log(this.list)
        },
    }
</script>
<style>
   .app-swiper .mint-swipe{height:200px;}
  .app-swiper .mint-swipe img{width:100%}
</style>