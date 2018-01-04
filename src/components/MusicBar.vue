<template>
 <div id="music-bar">
  <div>
    <audio :src="data.m_url" autoplay='true' ref='audio' @play="handlePlay" @ended="handleEnd"  @timeupdate="handleProgress"></audio>
    <a class="cover animate" :style="animate">
      <img :src="data.m_image" alt="">
    </a>
    <div class="info">
      <p>{{data.m_name}}</p>
      <p></p>
    </div>
    <div class="controller">
      <button>queue_music</button>
      <button class="play" @click="changeState">{{isPlay?'pause':'play_arrow'}}</button>
      <button>skip_next</button>
    </div>
  </div>
  <div class="progress-container">
    <div class="progress" ref='progress'></div>
  </div>
 </div>
</template>
<script>
export default {
  name: 'MusicBar',
  data: function () {
    return {
      isPlay: true
    }
  },
  props: ['data'],
  mounted: function () {
    console.log(this.$props.data.m_url)
    this.isPlay = true
  },
  computed: {
    animate: function () {
      return this.isPlay ? '' : 'animation-play-state:paused'
    }
  },
  methods: {
    changeState: function () {
      let audio = this.$refs.audio
      if (audio.paused) {
        audio.play()
        this.isPlay = true
      } else {
        audio.pause()
        this.isPlay = false
      }
    },
    handlePlay: function () {
      this.isPlay = true
    },
    handleProgress: function () {
      if (this.$refs.audio) {
        let audio = this.$refs.audio
        let progress = (audio.currentTime / audio.duration).toFixed(2)
        this.$refs.progress.style.width = progress * 100 + '%'
      }
    },
    handleEnd: function () {
      this.isPlay = false
      console.log('end')
    }
  }
}
</script>
<style scoped>
  #music-bar{
      width: 100%;
      position: fixed;
      bottom: 0;
      padding: .5rem;
      border-top:1px solid rgb(77, 76, 76);
      background: rgba(255,255,255, .8);
  }
  #music-bar>div:first-child{
    display: flex;
    align-items: center;
  }
  .cover{
    width: 3rem;
    height: 3rem;
    display: inline-block;
    border-radius: 50%;
    overflow: hidden;
    animation-fill-mode:forwards;
  }
  #music-bar .animate{
    animation: goRound 3s linear infinite;
  }
  .cover img{
    width: 100%;
    height: 100%;
  }
  .info{
    padding: 0 .2rem;
    flex: 1;
    overflow: hidden;
  }
  .info p{
    text-overflow: ellipsis;
    overflow: hidden;
    white-space: nowrap;
  }
  @font-face {
    font-family:Material Icons ;
    src: url(../assets/MaterialIcons-Regular.woff2);
  }
  div.controller button{
   font-family: Material Icons;
   padding: 0;
   border:1px solid #5e5e5e;
   color: #5e5e5e;
   width: 2.5rem;
   height: 2.5rem;
   vertical-align: middle;
   border-radius: 50%;
   background: #fff;
   outline: none;
   font-size: 1.4rem;
  }
  div.controller button.play{
    width: 3rem;
    height: 3rem;
    font-size:2rem;
    margin:.5rem;
  }
  .progress-container{
    height:.5rem;
    background: #5e5e5e;
  }
  .progress{
    height: 100%;
    width:0;
    background: #00ae05;
  }
  @keyframes goRound {
    from{
      transform: rotate(0deg)
    }
    to{
      transform: rotate(180deg)
    }
    to{
      transform: rotate(360deg)
    }
  }
</style>

