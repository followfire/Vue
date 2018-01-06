<template>
  <div id="index">
    <header-theme/>
    <banner :data="list"/>
    <recommend/>
  </div>
</template>
<script>
import HeaderTheme from './HeaderTheme'
import Banner from './Banner'
import Recommend from './Recommend'
import utility from '../utility'
export default {
  name: 'Main',
  data: function () {
    return {
      list: []
    }
  },
  components: {
    HeaderTheme,
    Banner,
    Recommend
  },
  created: function () {
    this.getSwiperList()
  },
  methods: {
    getSwiperList: function () {
      var that = this
      utility.getData('static/data/get-swiper-list.php', function (data) {
        // console.log(data)
        that.list = data
      }, function (err) {
        console.log(err)
      })
    }
  }
}
</script>


