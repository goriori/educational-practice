<script setup>
</script>

<template>
  <footer class="footer">
    <div class="footer__container container">
      <div class="footer__title">
        <h2>© Copyright 2022 by Ranu Hasan</h2>
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
  background: $primary;
  padding: 20px;

  &__title {
    display: flex;
    justify-content: center;
    font-size: 12px;
  }
}
</style>
