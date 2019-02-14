<template>
    <div class="app-goodslist">
        <!-- <h3>商品列表</h3> -->
        <!-- 商品列表项 start -->
        <div class="goods-item" v-for="item in list" :key="item.id">
            <img :src="item.img_url" alt="" @click="jumpDetail" :data-id="item.id">
            <h3 class="title">{{item.name}}</h3>
            <div class="info">
                <div class="price">
                    <span class="now">{{(item.price*0.9).toFixed(2)}}</span>
                    <span class="old">{{item.price}}</span>
                </div>
                <div class="sell">
                        <span>热卖中</span>
                        <span>还剩1件</span>
                    </div>
            </div>
            
        </div>
        <!-- 商品列表项 end -->
    </div>
</template>
<script>
    export default{
        data(){
            return {
                list:[],
                pageSize:4,
                pageCount:1,
                pageIndex:0,
            }
        },
        created() {
            this.getMore();
        },
        methods:{
            getMore(){
                this.pageIndex++;
                var pno=this.pageIndex;
                var ps=this.pageSize;
                // 1:创建url地址
                var url="http://127.0.0.1:3000";
                url+="/getGoodsList?pno="+pno;
                url+="&pageSize="+ps;
                // 2:发送ajax请求
                this.axios.get(url).then(
                    result=>{
                        this.list=result.data.data;
                        console.log(this.list);
                    }
                )
                // 3:获取返回数据
                // 4:在模板循环创建数据
            },
            jumpDetail(event){
                //获取参数
                var id=event.target.dataset.id;
                console.log(id);
                //跳转到商品详情
                this.$router.push("/GoodsInfo/"+id);
            }
        }
    }
</script>
<style>
/* 商品列表 */
.app-goodslist{
    width: 100%;
    display: flex;
    flex-wrap:wrap;
    /* flex-direction: row; */
    justify-content: space-between;
    padding:7px;
}
/* 商品项目 */
.app-goodslist .goods-item{
    width: 49%;
    border:1px solid #ccc;
    box-shadow:0 0 8px #ccc;
    display: flex;
    /* flex-wrap: column nowrap; */
    flex-direction: column;
    justify-content: space-between;
    margin:4px 0;
    padding:2px;
    min-height: 180px;
}
.app-goodslist .goods-item h3{
    font-size:18px;
}
.app-goodslist .goods-item img{
    width: 100%;
}  
.app-goodslist .goods-item .now{
    color:red;
    font-weight: bold;
    font-size: 16px;
}
.app-goodslist .goods-item .old{
    font-size: 12px;
    text-decoration: line-through;
}
</style>