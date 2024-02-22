<script setup>
import ServicesList from '@/components/modules/lists/services/ServicesList.vue'
import ServiceSlider from '@/components/ui/sliders/services/ServiceSlider.vue'
import ServiceOftenList from '@/components/modules/lists/services/ServiceOftenList.vue'
import ObjectPopupModule from '@/components/modules/popups/object/ObjectPopupModule.vue'
</script>

<template>
  <div class="page">
    <div class="page__content container">
      <div class="page__title">
        <h1>Gleaming Clean</h1>
        <p>
          Мы рады приветствовать вас и предложить наши профессиональные услуги в
          области химической чистки мебели, диванов и других ценных вещей. Наша
          компания специализируется на не только на предоставлении
          высококачественных услуг, но и на создании надежного и комфортного
          опыта для каждого нашего клиента. Чистота и блеск вашей мебели - наша
          страсть и главная цель. Мы используем передовые технологии и
          экологически чистые химикаты, чтобы обеспечить максимальную
          эффективность и сохранить красоту и долговечность ваших ценностей.
        </p>
      </div>
      <div class="page__modules">
        <div class="module-object">
          <Teleport to="body">
            <Transition name="fade">
              <ObjectPopupModule v-if="false" />
            </Transition>
          </Teleport>
        </div>
        <div class="module-often">
          <h2>Часто покупаемые услуги</h2>
          <ServiceOftenList />
        </div>
        <div class="module-slider">
          <ServiceSlider />
        </div>
        <div class="module-list">
          <ServicesList />
        </div>
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
  padding: 10px 0;

  &__content {
    display: flex;
    flex-direction: column;
    justify-content: center;
    gap: 50px;
    @media (max-width: $md4 + px) {
      gap: 20px;
    }

  }

  &__title {
    display: flex;
    flex-direction: column;
    gap: 20px;
    color: $white;
    max-width: 1000px;

    h1 {
      color: #050931;
      font-size: 100px;
      @media (max-width: $md4 + px) {
        font-size: 50px;
      }
      @media (max-width: $md5 + px) {
        font-size: 30px;
      }
    }

    p {
      color: #767877;
      font-size: 20px;
      line-height: 1.5;
      @media (max-width: $md4 + px) {
        font-size: 15px;
      }
      @media (max-width: $md5 + px) {
        font-size: 10px;
      }
    }
  }

  &__modules {
    display: flex;
    flex-direction: column;
    gap: $gap;
  }
}

.module {
  &-often {
    display: flex;
    flex-direction: column;
    gap: $gap;
  }

  &-list {
    display: flex;
    flex-direction: column;
    gap: $gap;
  }
}
</style>
