<script setup>
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
import { useRouter, useRoute } from 'vue-router'
import { computed, ref, toRef } from 'vue'
import ApplicationModule from '@/components/modules/application/ApplicationModule.vue'

const router = useRouter()
const route = useRoute()
const pages = router.getRoutes()
const targetPage = computed(() => route.name)
const websiteTitle = window.WEBSITE_NAME
</script>

<template>
  <header class="header">
    <div class="header__container container">
      <div class="header__title">
        <h2 @click="router.push('/')">{{ websiteTitle }}</h2>
      </div>

      <div class="header__lead">
        <div class="header__nav">
          <a
            href="#"
            v-for="page in pages"
            :key="page.name"
            :class="[
              'header__nav-item',
              { 'nav-active': page.name === targetPage },
            ]"
            @click="router.push(page.path)"
            >{{ page.props.default?.title }}</a
          >
        </div>
        <ApplicationModule />
      </div>
    </div>
  </header>
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables';

.header {
  display: flex;
  width: 100dvw;
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
    color: #222326;
    font-size: 32px;
  }

  &__lead {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 20px;
  }

  &__nav {
    display: flex;
    align-items: center;
    color: $white;

    @media (max-width: $md4 + px) {
      display: none;
    }

    &-item {
      color: rgba(34, 35, 38, 0.8);
      margin: 0 10px;
      padding: 10px;
      border-radius: 10px;
      transition: 0.1s color ease-in-out;

      &:hover {
        color: #232528;
      }

      &.nav-active {
        color: $secondary;
      }
    }
  }
}
</style>
