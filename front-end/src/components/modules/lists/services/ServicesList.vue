<script setup>
import BaseCard from '@/components/ui/cards/base/BaseCard.vue'
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'
import ServicesFilter from '@/components/modules/lists/modules/filters/ServicesFilter.vue'
import ServiceSearch from '@/components/modules/lists/modules/search/ServiceSearch.vue'
import ApplicationModule from "@/components/modules/application/ApplicationModule.vue";
</script>

<template>
  <div class="list">
    <div class="list-filters">
      <ServiceSearch />
      <ServicesFilter />
    </div>
    <div class="list-service">
      <BaseCard
        v-for="item in 10"
        :key="item"
        rounded
        image="https://images.unsplash.com/photo-1517677208171-0bc6725a3e60?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
      >
        <template #title>Card service</template>
        <template #content>
          Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus
          accusantium beatae dicta dolore ducimus earum, error impedit ipsum
          iure laboriosam molestiae nam nesciunt nostrum, pariatur recusandae
          saepe sint vel velit? Lorem ipsum dolor sit amet, consectetur
          adipisicing elit. Accusamus accusantium beatae dicta dolore ducimus
          earum, error impedit ipsum iure laboriosam molestiae nam nesciunt
          nostrum, pariatur recusandae saepe sint vel velit?
        </template>
        <template #actions>
          <ApplicationModule />
          <div>1000 Р</div>
        </template>
      </BaseCard>
    </div>
  </div>
</template>

<style scoped lang="scss">
@import '@/assets/scss/mixins';
@import '@/assets/scss/variables';

.list {
  display: flex;
  flex-direction: column;
  justify-content: center;
  gap: $gap;

  &-filters {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    max-height: 100px;
    gap: $gap;
  }

  &-service {
    display: grid;
    grid-template-columns: repeat(4, 1fr);
    justify-content: center;
    align-items: center;
    gap: $gap;

    @media (max-width: $md2 + px) {
      grid-template-columns: repeat(3, 1fr);
    }
    @media (max-width: $md3 + px) {
      grid-template-columns: repeat(2, 1fr);
    }
    @media (max-width: $md4 + px) {
      grid-template-columns: repeat(1, 1fr);
    }
  }
}
</style>
