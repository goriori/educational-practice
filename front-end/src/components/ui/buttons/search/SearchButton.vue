<script setup>
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
</script>

<template>
  <BaseButton color="secondary" rounded="small">
    <svg
      xmlns="http://www.w3.org/2000/svg"
      width="800px"
      height="800px"
      viewBox="0 0 24 24"
      fill="none"
    >
      <path
        d="M15.7955 15.8111L21 21M18 10.5C18 14.6421 14.6421 18 10.5 18C6.35786 18 3 14.6421 3 10.5C3 6.35786 6.35786 3 10.5 3C14.6421 3 18 6.35786 18 10.5Z"
        stroke="#fff"
        stroke-width="2"
        stroke-linecap="round"
        stroke-linejoin="round"
      />
    </svg>
  </BaseButton>
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables';

svg {
  max-width: 40px;
  max-height: 40px;
  @media (max-width: $md3 + px) {
    max-width: 30px;
    max-height: 30px;
  }
  @media (max-width: $md4 + px) {
    max-width: 20px;
    max-height: 20px;
  }
}
</style>
