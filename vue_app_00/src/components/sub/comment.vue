<template>
    <div class="app-comment">
        <h3>评论子组件</h3>
        <!-- 发表评论区域 -->
        <textarea placeholder="请吐槽最多120字" maxlength="120" v-model="msg"></textarea>
        <mt-button size="large" @click="addComment()">发表评论</mt-button>
        <!-- 1.显示评论区域 -->
        <div class="cmt-list">
            <div class="cmt-item" v-for="(item,i) in list" :key="item.id">
                第{{i+1}}楼:发表时间{{item.ctime | datetimeFilter}}
                <div class="cmt-body">
                    评论内容:{{item.content}}
                </div>
            </div>
        </div>
        <mt-button size="large" @click="getMore()">加载更多</mt-button>
    </div>
</template>
<script>
    //独立引入mint-ui数据库中的
    import {Toast} from "mint-ui"
    export default{
        data(){
            return {
                msg:"",
                list:[],//返回数据
                pageIndex:0,//当前页码
                pageSize:7,//页大小
                pageCount:1,//总页数
            }
        },
        props:["id"],
        created(){
            console.log(this.id);
            this.getMore();
    },
    methods:{
        addComment(){
            // 1:获取两个参数 nid content
            var nid=this.id;//获取新闻的id
            var content=this.msg;//获取评论内容
            var size=content.trim().length;//内容长度
            if(size===0){
                Toast("评论内容不能为空!");//显示消息
                return;
            }
            // 2:发送ajax请求
            var url="http://127.0.0.1:3000/";
                // Vue.prototype.axios=axios;
                url+="addComment";
                url+="?nid="+nid+"&content="+content;
            this.axios.get(url).then(result=>{
                if(result.data.code==1){
                Toast(result.data.msg);
                this.msg="";// 3:接收返回数据
                this.list=[];
                this.pageIndex=0;
                this.getMore();
            }
                else {Tost(result.data.msg)}
            });
        },
        getMore(){
            // 1.获取新闻的编号 nid  pno页编号  pageSize页大小
            var nid=this.id;
            this.pageIndex++;
            var pno=this.pageIndex;
            var ps=this.pageSize;
            // 2.当前页码自增
            // 3.创建变量url
            var url="http://127.0.0.1:3000";
                url+="/getComments?pno="+pno;
                url+="&nid="+nid+"&pageSize="+ps;
            // 4.发送ajax请求
            this.axios.get(url).then(result=>{
                console.log(result);
                // 5.获取返回数据 追加 
                var rows=this.list.concat(result.data.data);
                this.list=rows;
            })
        }
    }
    }
</script>
<style>
    .app-comment h3{
        font-size:18px;
    }
    .app-comment textarea{
        font-size:14px;
        height:60px;
        margin:0;
    }
    /* 评论列表 */
    .app-comment .cmt-list{
        margin:5px 0;
    }
    .app-comment .cmt-list .cmt-item{
        border:1px solid #aaa;
        margin-top:15px;
    }
</style>