<script setup>
import { register } from 'swiper/element/bundle'

register()
const props = defineProps({
  images: {
    type: Array,
    default: [],
  },
})
const onProgress = (e) => {
  const [swiper, progress] = e.detail
  console.log(progress)
}
</script>

<template>
  <swiper-container
    :slides-per-view="1"
    :space-between="10"
    :pagination="{
      hideOnClick: true,
    }"
    @swiperprogress="onProgress"
  >
    <swiper-slide v-for="image in images" :key="image">
      <img :src="image" alt="" />
    </swiper-slide>
  </swiper-container>
</template>

<style scoped lang="scss">
img {
  border-radius: 20px;
  width: 100%;
  height: 100%;
  min-height: 550px;
  object-fit: cover;
}
</style>
