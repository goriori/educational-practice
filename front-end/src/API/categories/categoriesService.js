import { axiosInstance } from '@/utils/axios/axios'

export default class CategoriesService {
  static async getCategories() {
    try {
      const response = await axiosInstance({
        url: '/category',
        method: 'GET',
      })
      return response.data
    } catch (e) {
      throw e
    }
  }
}
