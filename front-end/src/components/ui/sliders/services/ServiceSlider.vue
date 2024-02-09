<script setup>
import BaseSlider from '@/components/ui/sliders/base/BaseSlider.vue'

const images = window.SLIDERS.SERVICES
</script>

<template>
  <BaseSlider :images="images" size="small"/>
</template>

<style scoped lang="scss"></style>
