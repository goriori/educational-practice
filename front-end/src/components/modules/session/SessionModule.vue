<script setup>
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
import { ref } from 'vue'
import Authorization from '@/components/modules/session/Authorization.vue'
import Registration from '@/components/modules/session/Registration.vue'

const stateSession = ref('authorization')
</script>

<template>
  <div class="session__module">
    <Authorization
      v-if="stateSession === 'authorization'"
      @toRegistration="stateSession = 'registration'"
    />
    <Registration
      v-if="stateSession === 'registration'"
      @toAuthorization="stateSession = 'authorization'"
    />
  </div>
</template>

<style scoped lang="scss"></style>
