import { defineStore } from 'pinia'
import { ref } from 'vue'

export const useBasketStore = defineStore('basketStore', () => {
  const basket = ref([])
  const addToBasket = (object) => {
    basket.value.push(object)
  }
  const removeFromBasket = (id) => {
    basket.value = basket.value.filter((object) => object.id !== id)
  }
  return {
    basket,
    addToBasket,
    removeFromBasket,
  }
})
