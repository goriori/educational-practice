<script setup>
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
import ApplicationPopup from '@/components/ui/popups/application/ApplicationPopup.vue'
import { ref } from 'vue'
import { useApplicationStore } from '@/store/applications/applicationStore.js'

const applicationStore = useApplicationStore()
const isActive = ref(false)
const statusForm = ref('none')
const onOpenPopup = () => (isActive.value = true)
const onClosePopup = () => (isActive.value = false)
const onSendApplication = (applicationForm) => {
  applicationStore
    .createApplication(applicationForm)
    .then(() => (isActive.value = false))
    .catch(() => {
      statusForm.value = 'error'
      setTimeout(() => {
        statusForm.value = 'none'
      }, 5000)
    })
}
</script>

<template>
  <div class="application__module">
    <div class="application__module-btn">
      <BaseButton
        rounded="small"
        color="secondary"
        id="btn-lead"
        @click="onOpenPopup"
      >
        <p>Оставить заявку</p>
      </BaseButton>
    </div>
    <Teleport to="body">
      <Transition name="fade">
        <ApplicationPopup
          :status="statusForm"
          @close="onClosePopup"
          @sendApplicationForm="onSendApplication"
          v-if="isActive"
        />
      </Transition>
    </Teleport>
  </div>
</template>

<style scoped lang="scss">
.application__module {
}
</style>
