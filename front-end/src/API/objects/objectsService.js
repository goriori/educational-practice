import { axiosInstance } from '@/utils/axios/axios'

export default class ObjectsService {
  static async getObjects() {
    try {
      const response = await axiosInstance({
        url: '/objects',
        method: 'GET',
      })
      return response.data
    } catch (e) {
      throw e
    }
  }
}
