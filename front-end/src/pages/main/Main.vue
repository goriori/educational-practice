<script setup>
import MainSlider from '@/components/ui/sliders/main/MainSlider.vue'
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
import { useRouter } from 'vue-router'


const props = defineProps({
  states: {
    type: Array,
    default: [],
  },
})
const router = useRouter()

</script>
<template>
  <div class="page">
    <div class="page__content container">
      <div class="page__title">
        <h1>Gleaming Clean</h1>
        <p>
          Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus
          accusantium beatae dicta dolore ducimus earum, error impedit ipsum
          iure laboriosam molestiae nam nesciunt nostrum, pariatur recusandae
          saepe sint vel velit? Lorem ipsum dolor sit amet, consectetur
          adipisicing elit. Accusamus accusantium beatae dicta dolore ducimus
          earum, error impedit ipsum iure laboriosam molestiae nam nesciunt
          nostrum, pariatur recusandae saepe sint vel velit?
        </p>
        <p>Средняя цена услуг: 1 500 Р</p>
        <BaseButton
          color="secondary"
          rounded="small"
          id="btn-services"
          @click="router.push('/services')"
        >
          <p>Посмотреть услуги</p>
        </BaseButton>
      </div>
      <div class="page__presentation">
        <MainSlider />
      </div>
    </div>
  </div>
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables';

#btn-services {
  max-width: 230px;

  p {
    color: $white;
  }
}

.page {
  display: flex;
  justify-content: center;
  align-items: center;
  background: $primary;
  color: #000;

  &__content {
    display: flex;
    align-items: center;
    justify-content: space-between;

    @media (max-width: $md2 + px) {
      flex-direction: column-reverse;
      gap: $gap;
    }
  }

  &__title {
    display: flex;
    flex-direction: column;
    gap: 20px;
    color: $white;
    max-width: 800px;

    h1 {
      color: #050931;
      font-size: 100px;
      @media (max-width: $md4 + px) {
        font-size: 50px;
      }
    }

    p {
      color: #767877;
      font-size: 20px;
      line-height: 1.5;
    }
  }

  &__presentation {
    max-width: 800px;
    max-height: 550px;
  }
}
</style>
