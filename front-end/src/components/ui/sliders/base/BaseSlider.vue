<script setup>
import { register } from 'swiper/element/bundle'

register()
const props = defineProps({
  images: {
    type: Array,
    default: [],
  },
  size: {
    type: String,
    default: 'default',
  },
})
</script>

<template>
  <swiper-container
    :slides-per-view="1"
    :space-between="10"
    :pagination="{
      hideOnClick: true,
    }"
  >
    <swiper-slide v-for="image in images" :key="image">
      <img
        :src="image"
        alt=""
        :class="[
          'slider',
          {
            'slider-default':size === 'default',
            'slider-small': size === 'small',
          },
        ]"
      />
    </swiper-slide>
  </swiper-container>
</template>

<style scoped lang="scss">
img {
  border-radius: 20px;
  width: 100%;
  height: 100%;
  object-fit: cover;
}

.slider {
  &-default {
    min-height: 550px;
  }
  &-small {
    max-height: 350px;
  }
}
</style>
