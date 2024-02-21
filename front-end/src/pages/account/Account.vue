<script setup>
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
import { useSessionStore } from '@/store/session/sessionStore.js'
import { useRouter } from 'vue-router'
import { useApplicationStore } from '@/store/applications/applicationStore.js'
import { onMounted } from 'vue'

const sessionStore = useSessionStore()
const applicationStore = useApplicationStore()
const router = useRouter()
const onLogout = () => {
  router.push({ name: 'session' })
  const routes = router.getRoutes()
  routes[3].props.default.visibility = true
  routes[4].props.default.visibility = false
  setTimeout(sessionStore.logout, 200)
}
onMounted(async () => {
  await applicationStore.getApplications()
})
</script>

<template>
  <div class="page">
    <div class="page__container">
      <div class="left">
        <div class="account account-head">
          <div class="account-head-avatar">
            <img
              src="https://mir-s3-cdn-cf.behance.net/project_modules/1400/317aaa78753417.5cae0255c608a.jpg"
              alt=""
            />
          </div>
          <div class="account-head-name">
            {{
              sessionStore.session.name + ' ' + sessionStore.session.lastName
            }}
          </div>
        </div>
        <div class="account account-balance">
          <!--        <div class="account-balance-main">-->
          <!--          <p>Баланс: <span>100 Рублей</span></p>-->
          <!--        </div>-->
          <div class="account-balance-bonus">
            <p>
              Бонусов:
              <span
                >{{ sessionStore.session.bonusBalance || '0' }} бонусов</span
              >
            </p>
          </div>
        </div>
        <div class="account-actions">
          <BaseButton color="secondary" rounded="small" @click="onLogout"
            >Выйти
          </BaseButton>
        </div>
      </div>
      <div class="right">
        <div class="account account-history">
          <table class="history-list">
            <tr class="history-list-head">
              <td><strong>Дата:</strong></td>
              <td><strong>Статус:</strong></td>
              <td><strong>Стоимость:</strong></td>
              <td><strong>Услуга:</strong></td>
            </tr>
            <tr class="history-item" v-for="item in 10" :key="item">
              <td>12.02.2024</td>
              <td>Выполнено</td>
              <td>1500 Рублей</td>
              <td>Химчистка ковра</td>
            </tr>
          </table>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables';

.page__container {
  display: flex;
  align-items: start;
  gap: $gap;
}

.left,
.right {
  display: flex;
  flex-direction: column;
  justify-content: center;
  gap: $gap;
}

.account {
  background: $background;
  padding: 20px;
  border-radius: $border-radius;

  &-head {
    display: flex;
    align-items: center;
    gap: $gap;
    max-width: 500px;
    max-height: 150px;

    &-avatar {
      max-width: 100px;

      img {
        width: 100%;
        height: 100px;
        object-fit: cover;
        border-radius: 100%;
      }
    }

    &-name {
      font-size: 32px;
      text-transform: uppercase;
    }
  }

  &-balance {
    display: flex;
    align-items: center;
    gap: $gap;
    background: $background;
    border-radius: $border-radius;
    padding: 20px;
    font-size: 20px;

    &-main,
    &-bonus {
      span {
        color: $secondary;
      }
    }
  }
}

.history {
  &-list {
    display: block;
    max-height: 200px;
    overflow-y: scroll;

    td {
      padding: 10px 20px;
    }
  }
}
</style>
