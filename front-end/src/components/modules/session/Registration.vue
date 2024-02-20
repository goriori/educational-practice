<script setup>
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
import { ref } from 'vue'
import BaseInput from "@/components/ui/inputs/base/BaseInput.vue";

const emits = defineEmits(['toAuthorization'])

const form = ref({
  name: '',
  lastName: '',
  phone: '',
  password: '',
})
const onSendForm = () => {}
</script>

<template>
  <form class="form" @submit.prevent>
    <div class="form-field">
      <label for="">Имя</label>
      <BaseInput type="text" placeholder="Имя" v-model="form.name" />
    </div>
    <div class="form-field">
      <label for="">Фамилия</label>
      <BaseInput type="text" placeholder="Фамилия" v-model="form.lastName" />
    </div>
    <div class="form-field">
      <label for="">Номер телефона</label>
      <BaseInput type="tel" placeholder="Номер телефона" v-model="form.phone" />
    </div>
    <div class="form-field">
      <label for="">Пароль</label>
      <BaseInput type="text" placeholder="Пароль" v-model="form.password" />
    </div>
    <BaseButton color="secondary" rounded="small"> Войти</BaseButton>
    <p>
      У вас уже есть аккаунт?
      <span @click="emits('toAuthorization')">Войти</span>
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
