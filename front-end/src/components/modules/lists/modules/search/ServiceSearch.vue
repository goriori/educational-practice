<script setup>
import SearchButton from '@/components/ui/buttons/search/SearchButton.vue'
import { ref, watchEffect } from 'vue'
import { useObjectsStore } from '@/store/objects/objectsStore.js'

const objectsStore = useObjectsStore()
const isActive = ref(false)
const close = ref(false)
const searchValue = ref('')
const activate = () => {
  close.value = !!isActive.value
  setTimeout(() => (isActive.value = !isActive.value), 100)
}
const onSearchObjects = () => {
  objectsStore.searchObjects(searchValue.value)
}
watchEffect(() => {
  if (!isActive.value) searchValue.value = ''
  onSearchObjects(searchValue)
})
</script>

<template>
  <div class="search">
    <input
      v-if="isActive"
      :class="{ 'input-active': !close, 'input-close': close }"
      v-model="searchValue"
      type="text"
      placeholder="Поиск"
    />
    <SearchButton @click="activate" />
  </div>
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables';

.search {
  display: flex;
  justify-content: center;
  gap: $gap;

  input {
    padding: 20px;
    animation-delay: 0.2s;
    border-radius: $border-radius;
  }

  //.input-active {
  //  animation: field;
  //  animation-direction: normal;
  //  animation-duration: $time-animation;
  //  animation-iteration-count: 1;
  //  animation-timing-function: ease-in-out;
  //  @keyframes field {
  //    0% {
  //      max-width: 50px;
  //    }
  //    100% {
  //      max-width: 250px;
  //    }
  //  }
  //}
  //
  //.input-close {
  //  animation: close-field;
  //  animation-direction: normal;
  //  animation-duration: $time-animation;
  //  animation-iteration-count: 1;
  //  animation-timing-function: ease-in-out;
  //  @keyframes close-field {
  //    0% {
  //      max-width: 250px;
  //    }
  //    100% {
  //      max-width: 0;
  //    }
  //  }
  //}
}
</style>
