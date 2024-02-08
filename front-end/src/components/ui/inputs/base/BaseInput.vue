<script setup>
const props = defineProps({
  type: {
    type: String,
    default: 'text',
  },
  placeholder: {
    type: String,
    default: '',
  },
  size: {
    type: String,
    default: 'default',
  },
  rounded: {
    type: String,
    default: 'full',
  },
})
</script>

<template>
  <input
    :type="type"
    :placeholder="placeholder"
    :class="[
      'base__input',
      {
        'base__input-default': size === 'default',
        'base__input-rounded': rounded,
      },
    ]"
  />
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables';

input {
  display: block;
  animation-delay: 0.2s;

}

.base__input {
  width: 100%;
  height: 100%;
  border-color: black;
  &-default {
    padding: 20px;
  }

  &-rounded {
    border-radius: $border-radius;
  }
}
</style>
