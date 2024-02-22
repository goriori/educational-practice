<script setup>
import BaseCard from '@/components/ui/cards/base/BaseCard.vue'
import ServicesFilter from '@/components/modules/lists/modules/filters/ServicesFilter.vue'
import ServiceSearch from '@/components/modules/lists/modules/search/ServiceSearch.vue'
import ApplicationModule from '@/components/modules/application/ApplicationModule.vue'
import { useObjectsStore } from '@/store/objects/objectsStore.js'
import ObjectPopupModule from '@/components/modules/popups/object/ObjectPopupModule.vue'
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
import { useBasketStore } from '@/store/basket/basketStore.js'

const objectsStore = useObjectsStore()
const basketStore = useBasketStore()
const onAddToBasket = (object) => {
  basketStore.addToBasket(object)
}
const onTarget = (object) => {
  objectsStore.targetObject.value = object
}
</script>

<template>
  <div class="list">
    <div class="list-filters">
      <ServiceSearch />
      <ServicesFilter />
    </div>

    <div class="list-service">
      <BaseCard
        v-for="item in objectsStore.objects"
        :key="item"
        rounded
        :image="item.image"
        @click="onTarget(item)"
      >
        <template #title>{{ item.name }}</template>
        <template #content>
          {{ item.description }}
        </template>
        <template #actions>
          <BaseButton
            color="secondary"
            rounded="small"
            @click="onAddToBasket(item)"
            >В корзину</BaseButton
          >
          <div class="price">{{ item.price }}Р</div>
        </template>
      </BaseCard>
    </div>
  </div>
</template>

<style scoped lang="scss">
@import '@/assets/scss/mixins';
@import '@/assets/scss/variables';

.list {
  display: flex;
  flex-direction: column;
  justify-content: center;
  gap: $gap;

  &-filters {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    max-height: 100px;
    gap: $gap;
  }

  &-service {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    justify-content: center;
    align-items: center;
    gap: $gap;

    @media (max-width: $md2 + px) {
      grid-template-columns: repeat(3, 1fr);
    }
    @media (max-width: $md3 + px) {
      grid-template-columns: repeat(2, 1fr);
    }
    @media (max-width: $md4 + px) {
      grid-template-columns: repeat(1, 1fr);
    }
  }
}

.price {
  border-radius: 16px;
  padding: 15px 20px;
  background: #4a52e5;
  color: $white;
  @media (max-width: $md2 + px) {
    font-size: 16px;
  }

}
</style>
