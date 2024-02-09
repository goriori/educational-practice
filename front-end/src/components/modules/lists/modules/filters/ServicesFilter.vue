<script setup>
import FilterButton from '@/components/ui/buttons/filter/FilterButton.vue'
import { ref } from 'vue'
import { useCategoriesStore } from '@/store/categories/categoriesStore.js'

const categoriesStore = useCategoriesStore()
const isActive = ref(false)
const close = ref(false)
const activate = () => {
  close.value = !!isActive.value
  setTimeout(() => (isActive.value = !isActive.value), 100)
}
const activeCategory = (category) => {
  category.isActive = !category.isActive
}
</script>

<template>
  <div class="filter">
    <div class="filter-categories" v-if="isActive">
      <div
        v-for="category in categoriesStore.categoriesService"
        v-ripple
        :class="[
          'filter-item',
          {
            'filter-active': category?.isActive,
          },
        ]"
        @click="activeCategory(category)"
      >
        {{ category.title }}
      </div>
    </div>
    <FilterButton class="button-filter" @click="activate" />
  </div>
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables';

.filter {
  height: 100%;
  display: flex;
  justify-content: center;
  gap: $gap;

  &-categories {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: $gap;
    padding: 0 20px;
    background: #fff;
    min-width: 200px;
    border-radius: $border-radius;
  }

  &-item {
    position: relative;
    overflow: hidden;
    cursor: pointer;
    border-radius: $border-radius;
    padding: 15px 20px;
    background: $primary;

    &.filter-active {
      color: $white;
      background: $secondary;
    }
  }
}
</style>
