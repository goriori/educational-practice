<script setup>
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
import ApplicationPopup from '@/components/ui/popups/application/ApplicationPopup.vue'
import { ref } from 'vue'

const isActive = ref(false)
const onOpenPopup = () => (isActive.value = true)
const onClosePopup = () => (isActive.value = false)
const onSendApplication = (applicationForm) => {
  console.log(applicationForm)
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
