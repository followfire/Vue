<template>
  <div id="index">
    <header-theme/>
    <banner/>
    <recommend/>
  </div>
</template>
<script>
import HeaderTheme from './HeaderTheme'
import Banner from './Banner'
import Recommend from './Recommend'
export default {
  name: 'Main',
  data: function () {
    return {

    }
  },
  components: {
    HeaderTheme,
    Banner,
    Recommend
  }
}
</script>
<style scoped>
 #index{
   padding-bottom: 1rem;
 }
</style>


