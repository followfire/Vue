<template>
    <router-link :to="route">
      <slot></slot>
    </router-link>
</template>
<script>
export default {
  name: 'RecommendItem',
  props: ['route'],
  mounted: function () {
    console.log('item mounted')
  }
}
</script>
<style scoped>
  .recommend-item {
    display: inline-block;
    width: 100%;
    padding: 1rem 1rem 6px;
    background: #fff;
  }
  img{
    width: 100%;
    min-height:1.6rem;
  }
</style>