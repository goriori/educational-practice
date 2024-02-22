<script setup>
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
import { ref } from 'vue'
import BaseInput from '@/components/ui/inputs/base/BaseInput.vue'
import { useSessionStore } from '@/store/session/sessionStore.js'
import { useRouter } from 'vue-router'
import { useStateStore } from '@/store/state/stateStore.js'

const emits = defineEmits(['toRegistration'])
const sessionStore = useSessionStore()
const stateStore = useStateStore()
const router = useRouter()
const form = ref({
  phone: '',
  password: '',
})
const clearForm = () => {
  form.value = {
    phone: '',
    password: '',
  }
}
const routes = router.getRoutes()
const onSendForm = () => {
  sessionStore
    .authorization(form.value)
    .then(clearForm)
    .then(() => {
      const routes = router.getRoutes()
      routes[3].props.default.visibility = false
      routes[4].props.default.visibility = true
    })
    .then(() => router.push('/account'))
    .catch((e) => {
      const status = e.response.status
      if (status >= 500) stateStore.popupMessages.errorServer = true
      else if (status >= 400) stateStore.popupMessages.errorValid = true
    })
}
</script>

<template>
  <form class="form" @submit.prevent>
    <div class="form-field">
      <label for="">Номер телефона</label>
      <BaseInput type="tel" placeholder="Номер телефона" v-model="form.phone" />
    </div>
    <div class="form-field">
      <label for="">Пароль</label>
      <BaseInput type="password" placeholder="Пароль" v-model="form.password" />
    </div>
    <BaseButton color="secondary" rounded="small" @click="onSendForm">
      Войти
    </BaseButton>
    <p>
      У вас нет аккаунта?
      <span @click="emits('toRegistration')">Зарегестрироваться</span>
    </p>
  </form>
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables.scss';

.form {
  display: flex;
  flex-direction: column;
  gap: 30px;
  padding: 50px;
  border-radius: 16px;
  background: $background;
  min-width: 500px;

  &-field {
    display: flex;
    flex-direction: column;
    gap: 10px;
  }
}

input,
label {
  display: block;
}

label {
  font-size: 20px;
}

input {
  padding: 15px;
  border-radius: 16px;
}

p {
  text-align: center;

  span {
    cursor: pointer;
    color: $secondary;
  }
}
</style>
