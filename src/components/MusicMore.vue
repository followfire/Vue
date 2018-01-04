<template>
  <div>
    <h2>相关推荐</h2>
    <recommend-list/>
  </div>
</template>
<script>
import RecommendList from './RecommendList'
export default {
  components: {
    RecommendList
  }
}
</script>
<style scoped>
div{
    background: #fff;
}
h2{
    text-align: center;
    color:#6ed56c;
    margin:1rem 0;
}
</style>
