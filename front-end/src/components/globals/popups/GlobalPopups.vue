<script setup>
import PopupErrorServer from '@/components/globals/popups/popup-error-server/PopupErrorServer.vue'
import PopupErrorValid from '@/components/globals/popups/popup-error-valid/PopupErrorValid.vue'
import { useStateStore } from '@/store/state/stateStore.js'
import PopupBasket from '@/components/globals/popups/popup-basket/PopupBasket.vue'

const stateStore = useStateStore()
</script>

<template>
  <Teleport to="body">
    <Transition name="fade">
      <PopupBasket
        v-if="stateStore.popupModules.basket.visibility"
        @close="stateStore.popupModules.basket.visibility = false"
      />
    </Transition>
    <Transition name="fade">
      <PopupErrorServer
        v-if="stateStore.popupMessages.errorServer"
        @close="stateStore.popupMessages.errorServer = false"
      />
    </Transition>
    <Transition name="fade">
      <PopupErrorValid
        v-if="stateStore.popupMessages.errorValid"
        @close="stateStore.popupMessages.errorValid = false"
      />
    </Transition>
  </Teleport>
</template>

<style scoped lang="scss"></style>