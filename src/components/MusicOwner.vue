<template>
  <div class="music-owner">
    <router-link to="" class="avatar">
      <img :src="data.u_avatar" alt="">
      
    </router-link>
    <span>{{data.u_name}}</span>
    <div class="fans">
      粉丝 
      <span>{{data.u_fans}}</span>
    </div>
  </div>
</template>
<script>
export default {
  props: ['data']
}
</script>
<style scoped>
 .music-owner{
     padding:3rem 1.2rem 0;
     color:#666;
 }
 .avatar {
     display: inline-block;
     width: 2.5rem;
     height: 2.5rem;
     vertical-align: middle;
     border-radius: 50%;
     overflow: hidden;
     margin-right: .5rem;
 }
 .avatar img{
     width: 100%;
     height: 100%;
 }
 .fans {
     float: right;
     height: 2.5rem;
     line-height: 2.5rem;
 }
 .fans span{
     color:#00ae05;
 }
</style>
