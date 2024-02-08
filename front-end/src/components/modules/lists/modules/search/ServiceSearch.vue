<script setup>
import SearchButton from '@/components/ui/buttons/search/SearchButton.vue'
import { ref } from 'vue'

const isActive = ref(false)
const close = ref(false)
const activate = () => {
  close.value = !!isActive.value
  setTimeout(() => (isActive.value = !isActive.value), 100)
}
</script>

<template>
  <div class="search">
    <input
      type="text"
      placeholder="Поиск"
      :class="{ 'input-active': !close, 'input-close': close }"
      v-if="isActive"
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
