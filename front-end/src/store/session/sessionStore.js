import { defineStore } from 'pinia'
import { ref } from 'vue'
import SessionService from '@/API/session/sessionService.js'

export const useSessionStore = defineStore('sessionStore', () => {
  const session = ref(null)

  const authorization = async (formAuth) => {
    const response = await SessionService.authorization(formAuth)
    session.value = { ...response }
  }
  const registration = async (formReg) => {
    const response = await SessionService.registration(formReg)
    console.log(response)
  }
  return {
    session,
    authorization,
    registration,
  }
})
