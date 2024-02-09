<script setup>
const props = defineProps({
  image: {
    type: String,
    default: '',
  },
  rounded: {
    type: Boolean,
    default: false,
  },
  outline: {
    type: Boolean,
    default: false,
  },
})
</script>

<template>
  <div>
    <slot name="module" />
    <div
      :class="[
        'card',
        {
          'card-rounded': props.rounded,
          'card-outline': props.outline,
        },
      ]"
    >
      <div class="card__image">
        <img :src="image" alt="" />
      </div>
      <div class="card__title">
        <slot name="title" />
      </div>
      <div class="card__content">
        <slot name="content" />
      </div>
      <div class="card__actions">
        <slot name="actions" />
      </div>
    </div>
  </div>
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables';

$radius: 12px;
$gap: 30px;

.card {
  cursor: pointer;
  padding: 32px;
  display: flex;
  flex-direction: column;
  gap: $gap;
  border: 1px solid transparent;
  background: $background;
  width: 100%;
  min-height: 400px;
  transition: 0.3s all ease-in-out;

  &:hover {
    transform: scale(1.05);
    -webkit-box-shadow: 0 0 20px 0 rgba(34, 60, 80, 0.2);
    -moz-box-shadow: 0 0 20px 0 rgba(34, 60, 80, 0.2);
    box-shadow: 0 0 20px 0 rgba(34, 60, 80, 0.2);
  }

  &__image {
    width: 100%;
    height: 100%;

    img {
      width: 100%;
      height: 100%;
      object-fit: cover;
      border-radius: $radius;
    }
  }

  &__title {
    font-size: 36px;
    font-weight: bold;
  }

  &__content {
    font-size: 16px;
    line-height: normal;
    min-height: 100px;
    max-height: 100px;
    overflow: hidden;
    text-overflow: ellipsis;
  }

  &__actions {
    display: flex;
    justify-content: flex-start;
    align-items: center;
    gap: $gap;
  }

  &-rounded {
    border-radius: $radius;
  }

  &-outline {
    background: none;
    border-color: black;
  }
}
</style>
