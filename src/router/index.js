import Vue from 'vue'
import Router from 'vue-router'
import Main from '@/components/Main'
import Detail from '@/components/Detail'
Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/Main',
      name: 'Main',
      component: Main
    },
    {
      path: '/',
      redirect: Main
    },
    {
      path: '*',
      redirect: Main
    },
    {
      path: '/detail/:mid',
      name: 'Detail',
      component: Detail
    }
  ]
})
