<template>
  <div class="recommend-item">
      <recommend-item  :route="'/Detail/'+item.m_id">
        <img :src='item.m_image' alt="">
        <p class="mname">{{item.m_name}}</p>
      </recommend-item>
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
  .recommend-item {
    display: inline-block;
    width: 50%;
    padding: 1rem 1rem 6px;
    background: #fff;
  }
  img{
    width: 100%;
    min-height:1.6rem;
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