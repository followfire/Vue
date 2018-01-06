<template>
  <div class="recommend-item-container">
    <div>
      <recommend-item  :route="'/Detail/'+item.m_id">
        <img :src='item.m_image' alt="">
        <p class="mname">{{item.m_name}}</p>
      </recommend-item>
    </div>
    <p class="channel">
      <a>{{item.m_channel}}</a>
      频道
    </p>
  </div>
</template>
<script>
import RecommendItem from './RecommendItem'
export default {
  name: 'RecommendItemContainer',
  props: ['item'],
  components: {
    RecommendItem
  }
  // ,
  // mounted: function () {
  //   console.log(this.$props.item)
  // }
}
</script>
<style scoped>
.recommend-item-container{
  width: 50%;
  display: inline-block;
  padding: 1rem 1rem 6px;
}
  
  p.mname{
    padding-top: 5px;
    white-space: nowrap;
    text-overflow:ellipsis;
    overflow: hidden;
    color: #666;
    font-size: 1.1rem;
  }
  p.channel {
      font-size: 12px;
      color: #999;
  }
  p.channel a{
      display: inline-block;
      width: 75%;
      vertical-align: middle;
      text-overflow: ellipsis;
      white-space: nowrap;
      overflow: hidden;
      color: #7dd97f;
  }
</style>