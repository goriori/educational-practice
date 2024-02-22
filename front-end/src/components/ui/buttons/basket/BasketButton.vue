<script setup>
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
import BasketIcon from '@/components/ui/icons/BasketIcon.vue'
import { useBasketStore } from '@/store/basket/basketStore.js'

const basketStore = useBasketStore()
</script>

<template>
  <BaseButton rounded="small" color="secondary">
    <div class="count" v-if="basketStore.basket.length > 0">
      {{ basketStore.basket.length }}
    </div>
    <BasketIcon class="basket-icon" />
  </BaseButton>
</template>

<style scoped lang="scss">
.basket-icon {
  max-width: 25px;
  max-height: 25px;
}

.count {
  position: absolute;
  top: 0;
  right: 5px;
  background: red;
  width: 100%;
  height: 100%;
  display: flex;
  justify-content: center;
  align-items: center;
  max-width: 20px;
  max-height: 20px;
  border-radius: 100%;
}
</style>
