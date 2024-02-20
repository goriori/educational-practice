import { axiosInstance } from '@/utils/axios/axios'

export default class SessionService {
  static async authorization({ login, password }) {
    try {
      const response = await axiosInstance({
        url: '/user/auth',
        headers: {
          'Content-Type': 'application/json',
          Accept: 'application/json',
        },
        method: 'POST',
        data: { login, password },
      })
      return response.data
    } catch (e) {
      throw e
    }
  }

  static async registration({ name, lastName, login, phone, password }) {
    try {
      const response = await axiosInstance({
        url: '/user/auth',
        headers: {
          'Content-Type': 'application/json',
          Accept: 'application/json',
        },
        method: 'POST',
        data: { name, lastName, login, phone, password },
      })
      return response.data
    } catch (e) {
      throw e
    }
  }
}
