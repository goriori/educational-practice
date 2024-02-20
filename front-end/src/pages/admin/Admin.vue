<script setup>
import { useApplicationStore } from '@/store/applications/applicationStore.js'
import BaseButton from '@/components/ui/buttons/base/BaseButton.vue'

const applicationStore = useApplicationStore()
applicationStore.init()
</script>

<template>
  <div class="page">
    <div class="page__container">
      <div class="page__applications">
        <div class="application__table">
          <div class="application__table-head">
            <p>id</p>
            <p>Name</p>
            <p>Surname</p>
            <p>LastName</p>
            <p>Phone</p>
            <p>Actions</p>
          </div>
          <div
            class="application__table-item item"
            v-for="application in applicationStore.applications"
            :key="application.id"
          >
            <p>{{ application.id }}</p>
            <p>{{ application.name }}</p>
            <p>{{ application.surname }}</p>
            <p>{{ application.lastName }}</p>
            <p>{{ application.phone }}</p>
            <div class="item-actions">
              <BaseButton color="secondary"> Удалить </BaseButton>
              <BaseButton color="secondary"> Обнвоить </BaseButton>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables';

.page {

}

.application {
  &__table {
    display: flex;
    flex-direction: column;
    gap: 20px;

    &-head {
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      justify-content: start;
      align-items: center;
      gap: 50px;
      border: 1px solid black;
      border-radius: 16px;
      padding: 20px;
    }

    &-item {
      padding: 20px;
      display: grid;
      grid-template-columns: repeat(6, 1fr);
      justify-content: start;
      align-items: center;
      gap: 50px;
      border-bottom: 1px solid black;
    }
  }
}

.item {
  &-actions {
    display: flex;
    gap: 20px;
  }
}
</style>
