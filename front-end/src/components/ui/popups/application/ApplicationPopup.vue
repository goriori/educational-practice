<script setup>
import BasePopup from '@/components/ui/popups/base/BasePopup.vue'
import BaseInput from '@/components/ui/inputs/base/BaseInput.vue'
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'

const emits = defineEmits(['close'])

const sendApplication = () => {
  emits('close')
}
</script>

<template>
  <BasePopup>
    <template #window>
      <div class="application">
        <div class="application-title">
          <h2>Отправить заявку</h2>
        </div>
        <div class="application-form">
          <form @submit.prevent>
            <BaseInput type="text" placeholder="Ваше имя" />
            <BaseInput type="text" placeholder="Ваша фамилия" />
            <BaseInput type="text" placeholder="Ваше отчество" />
            <BaseInput type="phone" placeholder="Номер вашего телефона" />
            <BaseButton
              color="secondary"
              rounded="small"
              @click="sendApplication"
            >
              <p>Отправить заявку</p>
            </BaseButton>
          </form>
        </div>
      </div>
    </template>
  </BasePopup>
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables';

.application {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: $gap;
  max-width: 700px;
  min-height: 800px;
  margin: 0 auto;
  background: $background;
  border-radius: $border-radius;
  padding: 50px;
  color: #000;

  &-form {
    width: 100%;

    form {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      gap: $gap;
    }
  }
}
</style>
