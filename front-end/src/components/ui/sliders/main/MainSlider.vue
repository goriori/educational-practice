<script setup>
import BaseSlider from '@/components/ui/sliders/base/BaseSlider.vue'

const images = window.SLIDERS.MAIN
</script>

<template>
  <BaseSlider :images="images" size="default" />
</template>

<style scoped lang="scss"></style>
