<template>
  <div class="music-cover">
      <img :src="imgUrl" alt="">
  </div>
</template>
<script>
export default {
  props: ['imgUrl']
}
</script>
<style>
 .music-cover{
     width: 100%;
     min-height:5rem;
     padding-top: 1rem;
     position: relative;
 }
 .music-cover img{
     width: 100%;
 }
</style>

