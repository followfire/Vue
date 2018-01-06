<template>
  <div id="app">
    <!-- <img src="./assets/logo.png"> -->
    <transition :name='transition'>
      <keep-alive include='Main'>
        <router-view :showMusicBar='showMusicBar' class='Router'/>
      </keep-alive>
    </transition>
    <music-bar :data='data' v-if="mIsLoaded"/>
  </div>
</template>

<script>
import MusicBar from '@/components/MusicBar'
export default {
  name: 'app',
  data: function () {
    return {
      mIsLoaded: false,
      data: {},
      transition: 'slide-right'
    }
  },
  components: {
    MusicBar
  },
  methods: {
    showMusicBar: function (data) {
      // console.log(data)
      this.data = data
      this.mIsLoaded = true
    }
  },
  watch: {
    '$route' (to, from) {
      const toDepth = to.path.split('/').length
      const fromDepth = from.path.split('/').length
      // console.log(toDepth + ' ' + fromDepth)
      this.transition = toDepth < fromDepth ? 'slide-right' : 'slide-left'
      console.log(this.transition)
    }
  }
}
</script>

<style>
*{
  box-sizing: border-box;
}
#app {
  font-family:Roboto,Lato,sans-serif;
  color:rgba(0,0,0,.87);
  background: #fff;
  margin: 0;
  position: relative;

}
body{
  margin: 0;
  padding: 0;
  font-size: 12px;
}
p,h2,h3,h4,h5,h6{
  margin: 0;
  padding: 0;
}
a{
  text-decoration: none;
}
img{
  width: 100%;
}

.Router {
     position: absolute;
     width: 100%;
     transition: all .8s ease;
     padding-bottom: 6rem;
}
.slide-left-enter,
 .slide-right-leave-active {
    /* opacity: 0; */
    -webkit-transform: translate(100%, 0);
    transform: translate(100%, 0);
}
.slide-left-leave-active,
.slide-right-enter {
    /* opacity: 0; */
    -webkit-transform: translate(-100%, 0);
    transform: translate(-100% 0);
}
</style>
