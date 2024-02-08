<script setup>
const props = defineProps({
  size: {
    type: String,
    default: 'small',
  },
  color: {
    type: String,
    default: 'primary',
  },
  shadow: {
    type: String,
    default: 'primary',
  },
  rounded: {
    type: String,
    default: 'full',
  },
  outline: {
    type: Boolean,
    default: false,
  },
  isActive: {
    type: Boolean,
    default: false,
  },
})
</script>

<template>
  <div>
    <button
      v-ripple
      :class="[
        'btn',
        {
          'btn-small': size === 'small',
          'btn-medium': size === 'medium',
          'btn-big': size === 'big',
        },
        {
          'btn-primary': color === 'primary',
          'btn-secondary': color === 'secondary',
        },
        {
          'btn-shadow-primary': shadow === 'primary',
        },
        {
          'btn-rounded-small': rounded === 'small',
          'btn-rounded-full': rounded === 'full',
        },
        {
          'btn-outlined': outline,
        },
        {
          'btn-active': isActive,
        },
      ]"
    >
      <div class="btn-content">
        <slot />
      </div>
    </button>
  </div>
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables';

.btn {
  cursor: pointer;
  width: 100%;
  position: relative;
  overflow: hidden;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 12.5px 20px;
  font-size: 20px;
  border: 1px solid transparent;
  transition: 0.15s all ease-in-out;

  @media (max-width: $md2 + px) {
    font-size: 18px;
    padding: 10px 16px;
  }

  // Size
  &-small {
    min-height: 49px;
  }

  &-medium {
    min-height: 60px;
    max-height: 60px;
  }

  &-big {
    padding: 20px 32px;

    @media (max-width: 1900px) {
      padding: 20px;
    }

    @media (max-width: 1700px) {
      padding: 32px 16px;
    }

    @media (max-width: $md3 + px) {
      padding: 22px 6px;
      border-radius: 6px !important;
      svg {
        width: 100%;
      }
    }
    @media (max-width: $md4 + px) {
      padding: 12px 6px;
    }
  }

  // Colors
  &-primary {
    background: $primary;
    border-color: $primary;
    color: #fff;

    &:hover {
      path {
        fill: $secondary;
      }

      color: $secondary;
      border-color: $secondary;
    }
  }

  &-secondary {
    color: $white;
    background: $secondary;
  }

  &-balance-primary {
    background: $primary;
    color: $white;

    &:hover {
      background: $secondary;
    }
  }

  &-withdrawal-primary {
    background: $primary;
    color: $white;

    &:hover {
      background: $secondary;
    }
  }

  // Shadow

  &-shadow-primary {
    box-shadow: $shadow-primary;

    &:hover {
      box-shadow: $shadow-secondary;
    }
  }

  // rounded
  &-rounded-small {
    border-radius: 16px;
    @media (max-width: $md2 + px) {
      border-radius: 8px;
    }
  }

  &-rounded-full {
    border-radius: 36px;
    @media (max-width: $md2 + px) {
      border-radius: 18px;
    }
  }

  // outline

  &-outlined {
    background: none;
  }

  &-active {
    background: $secondary;
  }
}
</style>
