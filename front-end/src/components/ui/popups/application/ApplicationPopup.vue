<script setup>
import BasePopup from '@/components/ui/popups/base/BasePopup.vue'
import BaseInput from '@/components/ui/inputs/base/BaseInput.vue'
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
import { ref } from 'vue'

const emits = defineEmits(['close', 'sendApplicationForm'])
const applicationForm = ref({
  firstname: '',
  surname: '',
  lastname: '',
  phone: '',
})
const sendApplication = () => {

  emits('sendApplicationForm', applicationForm.value)
}
const cancelApplication = () => {
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
            <BaseInput
              type="text"
              placeholder="Ваше имя"
              v-model="applicationForm.firstname"
            />
            <BaseInput
              type="text"
              placeholder="Ваша фамилия"
              v-model="applicationForm.surname"
            />
            <BaseInput
              type="text"
              placeholder="Ваше отчество"
              v-model="applicationForm.lastname"
            />
            <BaseInput
              type="phone"
              placeholder="Номер вашего телефона"
              v-model="applicationForm.phone"
            />
            <div class="application-form-actions">
              <BaseButton
                color="secondary"
                rounded="small"
                @click="sendApplication"
              >
                <p>Отправить заявку</p>
              </BaseButton>
              <BaseButton
                color="primary"
                rounded="small"
                @click="cancelApplication"
              >
                <p>Отменить</p>
              </BaseButton>
            </div>
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

    &-actions {
      display: flex;
      align-items: center;
      justify-content: center;
      gap: $gap;
    }
  }
}
</style>
