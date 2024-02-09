<script setup>
const props = defineProps({
  modelValue: {
    type: [String, Number],
    default: '',
  },
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
const emits = defineEmits(['update:modelValue'])
const onChange = (e) => {
  emits('update:modelValue', e.target.value)
}
</script>

<template>
  <input
    :type="type"
    :value="modelValue"
    :placeholder="placeholder"
    @input="onChange"
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
