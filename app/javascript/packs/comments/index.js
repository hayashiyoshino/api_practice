import Vue from 'vue/dist/vue.esm';
import axios from 'axios';

new Vue ({
  el: '.js-commentsIndex',
  data: {
    commentInfo: {},
    commentInfoBool: false
  },
  methods: {
    commentShow(id){
      axios.get(`api/v1/comments/${id}.json`)
        .then(res => {
          this.commentInfo = res.data;
          this.commentInfoBool = true;
        });
    }
  }
});