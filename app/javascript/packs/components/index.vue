<template>
  <div>
    <div v-if="errors.length" class="error-box">
      <ul>
        <li v-for="error in errors" class="errors-list">{{ error }}</li>
      </ul>
    </div>
    <div class="row justify-content-center search-box">
      <div class="col-offset-2 col-sm-8 col-offset-2">
        <from @submit.prevent="exec">
          <div class="input-group">
            <input v-model="area" class="form-control text-center" placeholder="キーワード">
            <span class="input-group-addon btn"><button type="submit">検索</button></span>
          </div>
        </from>
      </div>
    </div>
    <div class="row justify-content-center">
      <div v-for="shop in shops" v-if="shops" v-bind:id="'row_shop_' + shop.id">
        <div class="shop-list">
          <a :href="shop.url" target="_blank">
            {{shop.name}}
            <img :src="shop.image_url.shop_image1">
          </a>
        </div>
      </div>
    </div>
  </div>
</template>