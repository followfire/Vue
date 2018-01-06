<template>
   <div class="recommend-item">
      <router-link :to="route">
        <slot></slot>
      </router-link>
    </div>
</template>
<script>
export default {
  name: 'RecommendItem',
  props: ['route']
  // ,
  // mounted: function () {
  //   console.log('item mounted')
  // }
}
</script>
<style scoped>
.recommend-item {
  display: block;
  width: 100%;
  background: #fff;
}

</style>