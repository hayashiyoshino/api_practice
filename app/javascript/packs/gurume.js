import Vue from 'vue/dist/vue.esm.js'
import Routr from './router/router'
import Header from './components/header.vue'

import BootstrapVue from 'bootstrap-vue'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
Vue.use(BootstrapVue)

Vue.config.productionTip = false

var app = new Vue({
  router: Router,
  el: '#app',
  components: {
    'navbar': Header,
  }
});