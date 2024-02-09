<script setup>
import BaseCard from '@/components/ui/cards/base/BaseCard.vue'
import ServicesFilter from '@/components/modules/lists/modules/filters/ServicesFilter.vue'
import ServiceSearch from '@/components/modules/lists/modules/search/ServiceSearch.vue'
import ApplicationModule from '@/components/modules/application/ApplicationModule.vue'
import { useObjectsStore } from '@/store/objects/objectsStore.js'

const objectsStore = useObjectsStore()
const onTarget = (object) => {
  objectsStore.targetObject = object
}
</script>

<template>
  <div class="list">
    <div class="list-service">
      <BaseCard
        v-for="item in objectsStore.objects.slice(0, 8)"
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
          <ApplicationModule />
          <div>{{ item.price }}Р</div>
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
</style>
