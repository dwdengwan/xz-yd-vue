<template>
    <div class="app-register">
        <div class="mui-card">
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    用户名：<input type="text" value="" placeholder="请输入用户名" v-model="name" @blur.prevent="checkName">
                    密码：<input type="password" value="" placeholder="请输入密码" v-model="pwd">
                    确认密码：<input type="password" value="" placeholder="请输入确认密码" v-model="pwd2">
                    <mt-button size="large" @click.prevent="handleReg">注册</mt-button>
                    <mt-button size="large" @click.prevent="Login">登录</mt-button>
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    import {Toast} from "mint-ui";
    export default{
        data(){
            return{
                name:"",
                pwd:"",
                pwd2:"",
                isSubmit:false,
            }
        },
        methods:{
            Login(){
                this.$router.push("/Login")
            },
            handleReg(){
                if(!this.isSubmit){
                    Toast("用户名已存在,请修改.")
                    return;//禁止提交
                }
                // console.log(111);
                var n=this.name;
                var p=this.pwd;
                var p2=this.pwd2;
                // console.log(n+"|"+p+"|"+p2);
                var regname=/^[a-z0-9_]{8,12}$/i;
                var regpwd=/^[a-z0-9]{8,12}$/i;
                if(!regname.test(n)){
                Toast("用户名格式不正确");
                return;
                }
                if(!regpwd.test(p)){
                    Toast("密码格式不正确");
                    return;
                }
                if(p!=p2){
                    Toast("确认密码两次输入不一致");
                    return;
                }
                var url="http://127.0.0.1:3000";
                url+="/register?name="+n+"&pwd="+p;
                this.axios.get(url).then(result=>{
                    // console.log(result.data);
                    Toast(result.data.msg);
                    this.$router.push("/Login");//跳转到登录页面
                })
            },
            checkName(){
                // console.log(111);
                var name=this.name;
                var url="http://127.0.0.1:3000/existsName";
                url+="?name="+name;
                this.axios.get(url).then(
                    result=>{
                        // console.log(result);
                        // Toast(result.data.msg);
                        if(result.data.code>0){
                            Toast("可以使用");
                            this.isSubmit=true;//是否禁用提交
                        }
                        else{
                            Toast("用户名已存在，请修改");
                            this.isSubmit=false;
                        }
                })
            },
        }
    }
</script>
<style></style>