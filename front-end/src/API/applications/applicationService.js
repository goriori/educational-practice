import { axiosInstance } from '@/utils/axios/axios'

export default class ApplicationService {
  static async getApplication() {
    try {
      const response = await axiosInstance({
        url: '/applications',
        headers: {
          'Content-Type': 'application/json',
          Accept: 'application/json',
        },
        method: 'GET',
      })
      return response.data
    } catch (e) {
      throw e
    }
  }

  static async createApplication(application) {
    try {
      const response = await axiosInstance({
        url: '/applications',
        headers: {
          'Content-Type': 'application/json',
          Accept: 'application/json',
        },
        method: 'POST',
        data: { ...application },
      })
      return response
    } catch (e) {
      throw e
    }
  }
}
