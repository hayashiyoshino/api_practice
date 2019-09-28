import Vue from 'vue/dist/vue.esm';
import axios from 'axios';

new Vue({
  el: 'js-commentsIndex',
  data: {
    commentInfo: {},
  },
  methods: {
    setCommentInfo(id){
      axios.get(`api/v1/comments/${id}.json`)
        .then(res => {
          this.commentInfo = res.data;
        });
    }
  }
});