<template>
    <!-- <h3>购物车列表</h3> -->
    <div class="app-login">
        <div class="mui-card">
            <div class="mui-card-header">
                <h3>购物车列表</h3>
            </div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                <ul>
                    <li class="mui-table-view-cell mui-media" v-for="key in list" :key="key.id">
                        <a href="javascript:;">
                            <img class="mui-media-object mui-pull-left" src="">
                            <div class="mui-media-body">
                                    标题:{{key.name}}
                                <p class='mui-ellipsis'>价格:￥{{key.price}}</p>
                                <button @click="change" :data-id="key.id">-</button>
                                <span>{{key.count}}</span>
                                <button @click="change2" :data-id="key.id">+</button>
                            </div>
                            <div class="mui-card-footer">
                                小计:￥{{key.count*key.price}}
                            </div>
                        </a>
                    </li>
                    <div>
                        总计:￥{{getSubTotal}}
                        <!-- 总计:￥{{total=key.count*key.price}} -->
                    </div>
                </ul>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    export default{
        data(){
            return{
                list:[],
                // total:0,
            }
        },
        // 计算属性
        computed:{
            getSubTotal:function(){
                var sum=0;
                for(var item of this.list){
                    sum+=item.price*item.count;
                }
                return sum;
            }
        },
        methods:{
            change2(e){
                //1.获取当前按钮绑定购物车id
                var id=e.target.dataset.id;
                //2.创建循环购物车数组内容
                for(var key of this.list){
                //3.判断当前元素id是否与元素id一致
                    if(key.id==id){
                        key.count++;
                        this.select(key.id,key.count);
                        // this.total+=(key.count*key.price);
                        // console.log(this.total);
                        break;
                    }
                }
                //4.修改数据
            },
            change(e){
                var id=e.target.dataset.id;
                // console.log(id);
                // console.log("2:"+id);
                for(var key of this.list){
                    if(key.id==id){
                        if(key.count>1){
                        key.count--;
                        this.select(key.id,key.count);
                    }
                        // this.total-=(key.count*key.price);
                        // console.log(this.total);
                        break;
                    }
                }
            },
            login(){
                var url="http://127.0.0.1:3000/getCartList";
                this.axios.get(url).then(result=>{
                    // console.log(result.data);
                    this.list=result.data.data;
                    // console.log(this.list);
                })
            },
            //同步到数据库 count
            select(id,count){
                var url="http://127.0.0.1:3000/updateCart?id="+id+"&count="+count;
                this.axios.get(url).then(result=>{
                    // console.log(result);
                })
            },
        },
        created(){
            this.login();
            this.select();
        }
    }
</script>
<style>
.app-login .mui-card .mui-card-content .mui-media .mui-media-body span{
    display:inline-block;
    width: 40px;
    height: 33px;
    line-height: 33px;
    text-align: center;
    border:1px solid #999;
}
</style>