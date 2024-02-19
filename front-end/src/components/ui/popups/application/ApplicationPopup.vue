<script setup>
import BasePopup from '@/components/ui/popups/base/BasePopup.vue'
import BaseInput from '@/components/ui/inputs/base/BaseInput.vue'
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
import { ref } from 'vue'

const emits = defineEmits(['close', 'sendApplicationForm'])
const props = defineProps({
  status: {
    type: String,
    default: 'none',
  },
})
const applicationForm = ref({
  firstname: '',
  surname: '',
  lastname: '',
  phone: '',
})

const sendApplication = () => {
  emits('sendApplicationForm', applicationForm.value)
  clearForm()
}

const cancelApplication = () => {
  emits('close')
}
const clearForm = () => {
  applicationForm.value = {
    firstname: '',
    surname: '',
    lastname: '',
    phone: '',
  }
}
</script>

<template>
  <BasePopup>
    <template #window>
      <div class="application">
        <div class="application-message message" v-if="status !== 'none'">
          <div class="message-error" v-if="status === 'error'">
            Произошла ошибка, попробуйте еще раз позднее!
          </div>
        </div>
        <div class="application-title">
          <h2>Отправить заявку</h2>
          <p>
            В течении некоторого времени ваша заявка будет обрабатываться!
            Пожалуйста ожидайте, в скором времени с вами свяжуться наши
            операторы для уточнения информации и составления заказа
          </p>
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

  &-title {
    display: flex;
    flex-direction: column;
    gap: 20px;
    text-align: center;
    line-height: 120%;
  }

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

.message {
  &-error {
    padding: 20px;
    background: red;
    color: white;
    border-radius: 12px;
  }
}
</style>
