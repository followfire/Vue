<template>
  <div class="recommend-list">
    <recommend-item-container v-for="item in recommendList" :key="item.m_id" :item="item"/>
  </div>
</template>
<script>
import RecommendItemContainer from './RecommendItemContainer'
export default {
  name: 'RecommendList',
  data: function () {
    return {
      recommendList: []
    }
  },
  // mounted: function () {
  //   console.log('mouted')
  // },
  created: function () {
    // console.log('created')
    fetch('static/data/get-recommend-list.php').then((response) => response.json())
    .then(data => {
      this.recommendList = data
      // console.log(this.recommendList)
    })
    .catch(err => console.log(err))
  },
  components: {
    RecommendItemContainer
  },
  methods: {
  }
}
</script>