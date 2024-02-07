<script setup>
const websiteTitle = window.WEBSITE_NAME
</script>

<template>
  <header class="header">
    <div class="header__container container">
      <div class="header__title">
        <h2>{{ websiteTitle }}</h2>
      </div>
      <div class="header__nav">
        <nav>
          <a href="#" class="header__nav-item">Оставить заявку</a>
        </nav>
      </div>
    </div>
  </header>
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables';

.header {
  display: flex;
  width: 100%;
  justify-content: center;
  align-items: center;
  padding: 20px;
  background: $background;
  color: #fff;
  &__container {
    display: flex;
    justify-content: space-between;
    align-items: center;
  }
  &__title {
    font-size: 32px;
  }
  &__nav {
    &-item {
      color: #fff;
      margin: 0 20px;
      padding: 10px;
      border-radius: 10px;
      transition: 0.1s background-color ease-in-out;

      &:hover {
        background: #67a3ff;
      }
    }
  }
}
</style>
