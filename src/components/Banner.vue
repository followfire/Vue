<template>
  <div id='banner'>
    <div class="swiper-container swiper swiper-container-horizontal"> 
      <div class="swiper-wrapper"> 
        <div v-for="item in data" :key="item.m_id" class="swiper-slide" 
          style="width: 100%;" 
          >
          <recommend-item :route="'/detail/'+item.m_id">
            <div class="swiper-content" :style="{
              backgroundImage: 
              'url('+item.m_image+')',
              backgroundSize:'cover',
              height:0,
              width:'100%',
              paddingBottom:'40%'
              }"></div>
          </recommend-item>
        </div>
      </div> 
      <div class="swiper-pagination"></div>
    </div> 
  </div>
</template>
<script>
import Swiper from '../../static/swiper-3.4.2.min.js'
import RecommendItem from './RecommendItem'
// let galleryThumbs
export default {
  name: 'banner',
  props: ['data'],
  data: function () {
    return {
      swiper: ''
    }
  },
  updated: function () {
    console.log('updated')
    this.lunbo()
  },
  components: {
    RecommendItem
  },
  methods: {
    lunbo () {
      console.log('轮播')
      this.swiper = new Swiper('.swiper', {
        spaceBetween: 0,
        grabCursor: true,
        initialSlide: 0,
        pagination: '.swiper-pagination',
        autoplayDisableOnInteraction: false,
        // autoplay: 2000,
        speed: 2000,
        loop: true
      })
    }
  }
}
</script>
<style>
@import url("../assets/swiper-3.4.2.min.css"); 
  .swiper-container {
    z-index: 0;
  }
  .swiper-wrapper{
    z-index: 0;
    
  }
  .swiper-content{
    
  }
</style>

