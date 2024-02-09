<script setup>
import { useRoute } from 'vue-router'
import { useStateStore } from '@/store/state/stateStore.js'
import { stores } from '@/store/index.js'
import { onMounted } from 'vue'
import Header from './components/globals/header/Header.vue'
import Footer from './components/globals/footer/Footer.vue'
import VLoadPage from '@/components/VLoadPage.vue'

const route = useRoute()
const stateStore = useStateStore()
onMounted(async () => {
  stores.map(async (store) => await store().init())
})
</script>

<template>
  <main class="main">
    <Transition name="fade">
      <VLoadPage v-if="stateStore.isLoading" />
    </Transition>
    <RouterView v-slot="{ Component }">
      <template v-if="Component">
        <Header />
        <transition name="fade-page" mode="out-in">
          <suspense>
            <component :is="Component" :key="route.fullPath"></component>
          </suspense>
        </transition>
        <Footer />
      </template>
    </RouterView>
  </main>
</template>

<style scoped></style>
