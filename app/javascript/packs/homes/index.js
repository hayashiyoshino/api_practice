import Vue from 'vue/dist/vue.esm';
import axios from 'axios';

new Vue({
  el: '#unit-conversion',
  data: {
    km: 0,
    m: 0,
    mm:0
  },
  watch: {
    km: function(value) {
      this.km = value
      this.m = value * 1000
      this.mm = value * 1000 * 1000
    },
    m: function(value) {
      this.km = value / 1000
      this.m = value
      this.mm = value * 1000
    },
    mm: function(value) {
      this.km = value / 1000 /1000
      this.m = value / 1000
      this.mm = value
    }
  }
})

new Vue({
  el: '#rakuten-api',
  data: {
    keyword: ''
  },
  watch: {
    keyword: function(value) {
      axios.get(`api/v1/searches`)
      .then(res => {
        this.itemInfo = res.data;
      })
    },
  }
})
