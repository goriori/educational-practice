import { createRouter, createWebHistory } from 'vue-router'

const Main = () => import('@/pages/main/Main.vue')
const Services = () => import('@/pages/services/Services.vue')
const About = () => import('@/pages/about/About.vue')
const Admin = () => import('@/pages/admin/Admin.vue')
const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      props: {
        title: 'Главная',
        visibility: true,
      },
      component: Main,
    },
    {
      path: '/services',
      name: 'services',
      props: {
        title: 'Услуги',
        visibility: true,
      },
      component: Services,
    },
    {
      path: '/about',
      name: 'about',
      props: {
        title: 'О нас',
        visibility: true,
      },
      component: About,
    },
    {
      path: '/admin',
      name: 'admin',
      props: {
        title: 'Панель администратора',
        visibility: false,
      },
      component: Admin,
    },
  ],
})
router.beforeEach((to, from, next) => {
  next()
})
export default router
