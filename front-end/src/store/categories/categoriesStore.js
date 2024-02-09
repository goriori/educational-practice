import { defineStore } from 'pinia'
import { ref } from 'vue'
import CategoriesService from '@/API/categories/categoriesService.js'

export const useCategoriesStore = defineStore('categoriesStore', () => {
  const categoriesService = ref([])
  const getCategories = async () => {
    categoriesService.value = await CategoriesService.getCategories()
    rebuildCategories()
  }
  const rebuildCategories = () => {
    categoriesService.value.forEach((category) => (category.isActive = false))
  }
  const init = async () => {
    await getCategories()
  }
  return {
    categoriesService,
    init,
  }
})
