<template>
  <div id="recommend">
    <recommend-title/>
    <recommend-list/>
  </div>
</template>
<script>
import RecommendTitle from './RecommendTitle'
import RecommendList from './RecommendList'
export default {
  name: 'Recommend',
  components: {
    RecommendTitle,
    RecommendList
  }
}
</script>

