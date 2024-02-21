<script setup>
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
import { useRouter, useRoute } from 'vue-router'
import { computed, onBeforeMount, onMounted, ref, toRef } from 'vue'
import ApplicationModule from '@/components/modules/application/ApplicationModule.vue'
import { useSessionStore } from '@/store/session/sessionStore.js'
import { useSession } from '@/utils/useSession.js'

const router = useRouter()
const route = useRoute()
const pages = router.getRoutes()
const sessionStore = useSessionStore()
const targetPage = computed(() => route.name)
const websiteTitle = window.WEBSITE_NAME

const toPage = async (path) => {
  await router.push(path)
}

onBeforeMount(() => useSession())
</script>

<template>
  <header class="header">
    <div class="header__container container">
      <div class="header__title">
        <h2 @click="router.push('/')">{{ websiteTitle }}</h2>
      </div>

      <div class="header__lead">
        <div class="header__nav">
          <div v-for="page in pages" :key="page.name">
            <a
              href="#"
              v-if="page.props.default?.visibility"
              :class="[
                'header__nav-item',
                { 'nav-active': page.name === targetPage },
              ]"
              @click="toPage(page.path)"
              >{{ page.props.default?.title }}</a
            >
          </div>
        </div>
        <ApplicationModule />
      </div>
    </div>
  </header>
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables';

.header {
  position: sticky;
  top: 0;
  z-index: 100;
}

.header {
  display: flex;
  width: 100dvw;
  justify-content: center;
  align-items: center;
  padding: 20px;
  background: $background;
  color: #fff;
  -webkit-box-shadow: 0 10px 15px 0 rgba(34, 60, 80, 0.2);
  -moz-box-shadow: 0 10px 15px 0 rgba(34, 60, 80, 0.2);
  box-shadow: 0 10px 15px 0 rgba(34, 60, 80, 0.2);

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
