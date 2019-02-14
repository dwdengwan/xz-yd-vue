<template>
    <div>
        <h2>test01.vue</h2>
        <h3>方式1:</h3>
        <router-link :to="'/test02?id='+id">
            跳转test02组件
        </router-link>
        <h3>方式2:</h3>
        <h4 @click="jump()">跳转test02组件</h4>
    </div>
</template>
<script>
    export default{
        data(){
            return{id:5}
        },
        methods: {
            jump(){
                // this.$router.push("/test02?id="+this.id);
                this.$router.push("/test02/19")
            }
        },
    }
</script>
<style>
</style>