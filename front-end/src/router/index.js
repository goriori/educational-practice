import { createRouter, createWebHistory } from 'vue-router'
import { useSessionStore } from '@/store/session/sessionStore.js'

const Main = () => import('@/pages/main/Main.vue')
const Services = () => import('@/pages/services/Services.vue')
const About = () => import('@/pages/about/About.vue')
const Session = () => import('@/pages/session/Session.vue')
const Account = () => import('@/pages/account/Account.vue')
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
      path: '/session',
      name: 'session',
      props: {
        title: 'Войти',
        visibility: true,
      },
      component: Session,
    },
    {
      path: '/account',
      name: 'account',
      props: {
        title: 'Личный кабинет',
        visibility: false,
      },
      component: Account,
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
  const sessionStore = useSessionStore()
  if (!sessionStore.session && to.name === 'account') {
    next({ name: 'session' })
  } else {
    next()
  }
})
export default router
