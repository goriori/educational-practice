<script setup>
const websiteTitle = window.WEBSITE_NAME
</script>

<template>
  <footer class="footer">
    <div class="footer__container container">
      <div class="footer__title">
        <h2>{{ websiteTitle }}</h2>
      </div>
    </div>
  </footer>
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables';

.footer {
  display: flex;
  justify-content: center;
  align-items: center;
  background: $background;
  padding: 20px;

  &__title {
    font-size: 32px;
  }
}
</style>
