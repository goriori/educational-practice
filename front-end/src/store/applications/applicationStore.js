import { defineStore } from 'pinia'
import { ref } from 'vue'
import ApplicationService from '@/API/applications/applicationService.js'

export const useApplicationStore = defineStore('applicationStore', () => {
  const applications = ref([])
  const getApplications = async () => {
    applications.value = await ApplicationService.getApplication()
  }
  const createApplication = async (application) => {
    const response = await ApplicationService.createApplication(application)
    return response
  }
  const init = async () => {
    await getApplications()
  }

  return {
    applications,
    init,
    createApplication,
    getApplications
  }
})
