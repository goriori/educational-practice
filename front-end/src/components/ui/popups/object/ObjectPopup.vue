<script setup>
import BasePopup from '@/components/ui/popups/base/BasePopup.vue'
import BaseInput from '@/components/ui/inputs/base/BaseInput.vue'
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
import { ref } from 'vue'

const emits = defineEmits(['close', 'sendApplicationForm'])
const applicationForm = ref({
  firstname: '',
  surname: '',
  lastname: '',
  phone: '',
})
const sendApplication = () => {
  emits('sendApplicationForm', applicationForm.value)
}
const cancelApplication = () => {
  emits('close')
}
</script>

<template>
  <BasePopup>
    <template #window>
      <div class="application">
        <div class="application-title">
          <h2>Информация об услуге</h2>
        </div>
      </div>
    </template>
  </BasePopup>
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables';

.application {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  gap: $gap;
  max-width: 700px;
  min-height: 800px;
  margin: 0 auto;
  background: $background;
  border-radius: $border-radius;
  padding: 50px;
  color: #000;

}
</style>