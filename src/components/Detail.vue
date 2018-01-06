<template>
  <div class="detail">
    <a class="back-arrow" href="javascript:void(0);" @click="goBack">返回</a>
    <music-owner :data="data.msg"/>
    <music-cover :imgUrl="data.msg.m_image"/>
    <music-info :info="data.msg"/>
    <music-more/>

  </div>
</template>
<script>
import MusicOwner from './MusicOwner'
import MusicCover from './MusicCover'
import MusicInfo from './MusicInfo'
import MusicMore from './MusicMore'
export default {
  name: 'Detail',
  data: function () {
    return {
      data: {
        msg: {
          m_image: '',
          m_url: '',
          m_name: '',
          u_avatar: '',
          u_fans: 0
        }

      }
    }
  },
  props: ['showMusicBar'],
  components: {
    MusicOwner,
    MusicCover,
    MusicInfo,
    MusicMore
  },
  watch: {
    // 如果路由有变化，会再次执行该方法
    '$route': 'getData'
  },
  created: function () {
    console.log('detail created')
    this.getData()
  },
  mounted: function () {
    // console.log(this.$route.params)
    console.log('detail mouted')
    window.scrollTo(0, 0)
  },
  methods: {
    goBack: function () {
      this.$router.push({
        name: 'Main'
      })
    },
    getData () {
      fetch('static/data/get-detail.php?m_id=' + this.$route.params.mid)
      .then(response => response.json())
      .then(data => {
        this.data = data
        // console.log(this.data)
        this.$props.showMusicBar(this.data.msg)
      })
    }
  }
}
</script>
<style scoped>
  .detail{
    background: #f6f6f6;
  }
  .back-arrow{
    font-size: 1rem;
    color:rgb(59, 59, 216);
    position: absolute;
    left: 1rem;
    top: 1rem;
    color:rgb(66, 60, 60);
  }
</style>

