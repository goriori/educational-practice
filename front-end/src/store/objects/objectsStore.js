import { defineStore } from 'pinia'
import { ref } from 'vue'
import ObjectsService from '@/API/objects/objectsService.js'

export const useObjectsStore = defineStore('objectsStore', () => {
  const objectsOrigin = ref([])
  const objects = ref([])
  const targetObject = ref({})
  const getObjects = async () => {
    objectsOrigin.value = await ObjectsService.getObjects()
  }
  const sortCharObject = () => {
    let i = 0
    objects.value = objectsOrigin.value.sort((a, b) => {
      i++
      const aChar = a.name.charAt(0)
      const bChar = b.name.charAt(0)
      if (aChar < bChar) return -1
      return 0
    })
    console.log('sort iteration: ', i)
  }
  const searchObjects = (textName) => {
    objects.value = [
      ...objectsOrigin.value.filter((object) => object.name.includes(textName)),
    ]
  }
  const init = async () => {
    getObjects().then(sortCharObject)
  }
  return {
    objects,
    targetObject,
    searchObjects,
    init,
  }
})
