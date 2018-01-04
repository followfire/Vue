// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'

Vue.config.productionTip = true

/* eslint-disable no-new */
// router.afterEach((to, from, next) => {
//   console.log(to)
//   console.log(from)
// })
new Vue({
  el: '#app',
  router,
  template: '<App/>',
  components: { App }
})
