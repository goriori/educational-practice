import { createRouter, createWebHistory } from 'vue-router'

const Main = () => import('@/pages/main/Main.vue')
const Services = () => import('@/pages/services/Services.vue')
const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      props: {
        title: 'Главная',
      },
      component: Main,
    },
    {
      path: '/services',
      name: 'services',
      props: {
        title: 'Услуги',
      },
      component: Services,
    },
  ],
})
router.beforeEach((to, from, next) => {
  next()
})
export default router
