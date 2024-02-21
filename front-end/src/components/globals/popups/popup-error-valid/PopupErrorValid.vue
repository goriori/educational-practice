<script setup>
import BasePopup from '@/components/ui/popups/base/BasePopup.vue'
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
import ErrorIcon from '@/components/ui/icons/ErrorIcon.vue'

const emits = defineEmits(['close'])
</script>

<template>
  <BasePopup>
    <template #window>
      <div class="window">
        <div class="window-container">
          <div class="window-content">
            <ErrorIcon />
            <h3>Поля заполнены не верно.<br/> Пожалуйста проверьте еще раз!</h3>
            <BaseButton color="secondary" rounded="small" @click="emits('close')">
              <p>Закрыть</p>
            </BaseButton>
          </div>
        </div>
      </div>
    </template>
  </BasePopup>
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables';

.window {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: $gap;
  max-width: 700px;
  min-height: 300px;
  margin: 0 auto;
  background: $background;
  border-radius: $border-radius;
  padding: 50px;
  color: #000;

  &-container {
    padding: 20px 38px;
  }

  &-content {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    gap: 20px;
    text-align: center;
    line-height: normal;
  }
}
</style>
