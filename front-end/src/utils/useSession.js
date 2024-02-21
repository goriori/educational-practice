import { useRouter } from 'vue-router'
import { useSessionStore } from '@/store/session/sessionStore.js'

export const useSession = () => {
  const sessionStore = useSessionStore()
  const router = useRouter()
  const routes = router.getRoutes()
  if (!sessionStore.session) {
    routes[3].props.default.visibility = true
    routes[4].props.default.visibility = false
  } else if (sessionStore.session) {
    routes[3].props.default.visibility = false
    routes[4].props.default.visibility = true
  }
}
