<script setup>
import BasePopup from '@/components/ui/popups/base/BasePopup.vue'
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
import { useBasketStore } from '@/store/basket/basketStore.js'

const emits = defineEmits(['close'])
const basketStore = useBasketStore()
const onRemoveFromBasket = (id) => {
  basketStore.removeFromBasket(id)
}
</script>

<template>
  <BasePopup>
    <template #window>
      <div class="window">
        <div class="window-container">
          <div class="window-content">
            <div class="basket">
              <h2>Корзина</h2>
              <div class="basket-list">
                <div
                  class="basket-item"
                  v-for="item in basketStore.basket"
                  :key="item"
                >
                  <img
                    :src="item.image"
                    alt=""
                  />
                  <h2>{{ item.name }}</h2>

                  <div class="basket-item-actions">
                    <BaseButton
                      rounded="small"
                      color="secondary"
                      @click="onRemoveFromBasket(item.id)"
                    >
                      Удалить
                    </BaseButton>
                  </div>
                </div>
                <div
                  class="basket-empty"
                  v-if="basketStore.basket.length === 0"
                >
                  В корзине пусто
                </div>
              </div>
              <BaseButton
                color="secondary"
                rounded="small"
                @click="emits('close')"
              >
                <p>Закрыть</p>
              </BaseButton>
            </div>
          </div>
        </div>
      </div>
    </template>
  </BasePopup>
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables';
@import '@/assets/scss/mixins';

.window {
  max-width: 800px;
  margin: 0 auto;
  background: $background;
  border-radius: $border-radius;
  padding: 50px;
  color: #000;

  &-container {
    padding: 20px 38px;
  }

  &-content {
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 20px;
    line-height: normal;
  }
}

.basket {
  display: flex;
  flex-direction: column;
  gap: 20px;

  &-list {
    display: grid;
    grid-template-columns: repeat(2, 1fr);
    gap: 10px;
    width: 100%;
    height: 100%;
    max-height: 800px;
    overflow-y: scroll;
    @include no-scroll();
  }

  &-empty {
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
  }

  &-item {
    width: 100%;
    height: 100%;
    padding: 10px;
    border-radius: $border-radius;
    background: $primary;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    gap: 20px;
    text-align: center;

    img {
      border-radius: $border-radius;
      max-width: 200px;
      max-height: 150px;
      object-fit: cover;
    }
  }

  &-info {
    width: 100%;
    height: 100%;
    padding: 10px;
    background: $background;
    border-radius: $border-radius;
  }
}

.price {
  border-radius: 16px;
  padding: 15px 20px;
  background: #4a52e5;
  color: $white;
}
</style>
