<template>
    <div class="app-login">
        <div class="mui-card">
            <div class="mui-card-header">
                <h3>用户登录</h3>
            </div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <!-- <form action=""> -->
                        用户名：<input type="text" value="" placeholder="请输入用户名" v-model="name">
                        密码：<input type="password" value="" placeholder="请输入密码"  v-model="pwd">
                        <mt-button size="large" @click.prevent="handleLogin">登录</mt-button>
                        <mt-button size="large" @click.prevent="register">注册</mt-button>
                    <!-- </form> -->
                </div>
            </div>
        </div>
    </div>
</template>
<script>
    import {Toast} from "mint-ui"
    export default{
        data(){
            return {
                name:"",
                pwd:"",
            }
        },
        methods:{
            register(){
                this.$router.push("/Register");
            },
            handleLogin(){
                // 1.获取用户输入 用户名和密码
                var name=this.name;
                var pwd=this.pwd;
                // 2.验证
                var reg=/^\w{3,16}$/;
                var reg2=/^\w{3,12}$/;
                if(!reg.test(name)){
                    Toast("用户名不符合格式");
                    return;
                }
                if(!reg2.test(pwd)){
                    Toast("密码格式不正确");
                    return;
                }
                // console.log(name+":"+pwd);
                // 3.验证失败提示消息
                // 4.发送ajax请求
                var url="http://127.0.0.1:3000/login?name="+name+"&pwd="+pwd;
                this.axios.get(url).then(result=>{
                    // console.log(result.data);
                    if(result.data.code==1){
                        Toast("登录成功");
                        this.$router.push("/home");//跳转到首页
                    }else{
                        Toast("用户名或者密码不正确");
                        // this.$router.push("/Register");
                    }
                })
                // 5.如果登录成功 跳转/home
                // 6.如果失败 提示消息
            }
        }
    }
</script>
<style></style>