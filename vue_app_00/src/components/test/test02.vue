<template>
    <div>
        <h2>test02.vue</h2>
    </div>
</template>
<script>
    export default{
        data(){
            return{}
        },
        created() {
            // console.log(this.$route.query.id);
            console.log(this.$route.params.age);
        },
    }
</script>
<style>
</style>