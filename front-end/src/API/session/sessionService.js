import { axiosInstance } from '@/utils/axios/axios'

export default class SessionService {
  static async authorization(formAuth) {
    try {
      const response = await axiosInstance({
        url: '/user/auth',
        headers: {
          'Content-Type': 'application/json',
          Accept: 'application/json',
        },
        method: 'POST',
        data: {...formAuth},
      })
      return response.data
    } catch (e) {
      throw e
    }
  }

  static async registration(formReg) {
    try {
      const response = await axiosInstance({
        url: '/user/reg',
        headers: {
          'Content-Type': 'application/json',
          Accept: 'application/json',
        },
        method: 'POST',
        data: { ...formReg },
      })
      return response.data
    } catch (e) {
      throw e
    }
  }
}
