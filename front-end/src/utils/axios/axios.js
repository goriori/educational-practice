import axios from 'axios'

const API = window.API_URL
export const axiosInstance = axios.create({
  baseURL: API,
})
