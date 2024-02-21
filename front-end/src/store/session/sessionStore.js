import { defineStore } from 'pinia'
import { ref } from 'vue'
import SessionService from '@/API/session/sessionService.js'

export const useSessionStore = defineStore('sessionStore', () => {
  const session = ref(null || JSON.parse(localStorage.getItem('session')))

  const authorization = async (formAuth) => {
    const response = await SessionService.authorization(formAuth)
    localStorage.setItem('session', JSON.stringify(response))
    session.value = { ...response }
  }
  const registration = async (formReg) => {
    const response = await SessionService.registration(formReg)
    console.log(response)
  }

  const logout = () => {
    session.value = null
    localStorage.removeItem('session')
  }

  return {
    session,
    authorization,
    registration,
    logout,
  }
})
