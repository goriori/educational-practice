import { defineStore } from 'pinia'
import { ref } from 'vue'

export const useStateStore = defineStore('stateStore', () => {
  const isLoading = ref(false)
  const popupModules = ref({
    basket: {
      visibility: false,
    },
  })
  const popupMessages = ref({
    errorServer: false,
    errorValid: false,
  })
  return {
    isLoading,
    popupMessages,
    popupModules
  }
})
