<script setup>
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
import BaseCard from '@/components/ui/cards/base/BaseCard.vue'
import ServicesList from '@/components/modules/lists/services/ServicesList.vue'
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
      </div>
      <ServicesList />
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
  padding: 50px;

  &__content {
    display: flex;
    flex-direction: column;
    justify-content: center;
    gap: 50px;
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
}
</style>
