<script setup></script>

<template>
  <div class="page">
    <div class="page__container container">
      <div class="page__title">
        <h1>О нас</h1>
      </div>
      <div class="page__subtitle">
        <h2>
          Компания Gleaming Clean - ваш надежный партнер в химической чистке
          мебели и текстиля
        </h2>
      </div>
      <div class="page__description">
        <p>
          Мы рады приветствовать вас в нашей компании Gleaming Clean - экспертах
          в области химической чистки мебели, диванов, кресел, белья и других
          текстильных изделий. Наша приверженность к высоким стандартам качества
          и нашему постоянному стремлению к удовлетворению потребностей клиентов
          являются основой нашей деятельности.
        </p>
      </div>
      <hr />
      <div class="page__advantages">
        <div class="page__advantages-title">
          <h3>
            Особенности, которые делают Gleaming Clean вашим лучшим выбором
          </h3>
        </div>
        <div class="page__advantages-description">
          В Gleaming Clean мы гордимся нашими уникальными особенностями, которые
          выделяют нашу компанию среди других на рынке химической чистки.
        </div>
        <div class="page__advantages-list">
          <ul>
            <li>
              Профессиональное обслуживание: Наша команда состоит из
              высококвалифицированных специалистов, которые имеют многолетний
              опыт в области химической чистки. Мы стремимся предоставить вам
              самые лучшие результаты, используя передовые технологии и
              проверенные методы.
            </li>
            <li>
              Индивидуальный подход: Мы понимаем, что каждое изделие уникально и
              требует специального внимания. Поэтому мы разрабатываем
              индивидуальные решения, чтобы удовлетворить ваши конкретные
              потребности. Наша цель - вернуть вашей мебели и текстилю прежний
              блеск и свежесть.
            </li>
            <li>
              Экологическая ответственность: Мы придерживаемся экологически
              чистых и безопасных методов чистки, чтобы защитить окружающую
              среду и ваше здоровье. Мы используем нежные, но эффективные
              чистящие средства, которые не только эффективно удаляют
              загрязнения, но и сохраняют цвет и качество вашей мебели.
            </li>
          </ul>
        </div>
      </div>
      <hr />
      <div class="page__contactus">
        <h3 class="page__contactus-title">Свяжитесь с нами</h3>
        <div class="page__contactus-description">
          <p>
            Мы полностью посвящены вашей удовлетворенности, и наша команда
            готова принять ваши заказы и ответить на все ваши вопросы. Мы всегда
            готовы помочь вам восстановить свою мебель к прежней свежести и
            чистоте.
          </p>
          <p>Контактная информация Gleaming Clean:</p>
          <ul>
            <li>Телефон: +1234567890</li>
            <li>Электронная почта: info@gleamingclean.com</li>
            <li>
              Социальные сети: Мы активны в Instagram и Facebook, следите за
              нашими последними новостями и акциями!
            </li>
          </ul>
          <hr>
          <p>
            Не стесняйтесь обращаться к нам, и мы обеспечим профессиональный
            уровень чистки для ваших ценных предметов мебели и текстиля.
            Gleaming Clean - ваш надежный выбор для безупречной чистки!
          </p>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped lang="scss">
@import '@/assets/scss/variables';

$subtitle: 26px;

hr {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 2px;
  background: #000;
}

.page {
  display: flex;
  justify-content: center;
  align-items: center;
  background: $primary;
  line-height: normal;
  line-height: 2;
  color: #000;

  &__container {
    display: flex;
    flex-direction: column;
    justify-content: center;
    gap: $gap;
  }

  &__title {
    font-size: 40px;
  }

  &__subtitle {
    font-size: $subtitle;
  }

  &__description {
    font-size: 20px;
  }

  &__advantages {
    display: flex;
    flex-direction: column;
    gap: $gap;

    &-title {
      font-size: 26px;
    }

    &-description {
      font-size: 20px;
    }

    &-list {
      ul {
        display: flex;
        justify-content: space-between;
        align-items: center;
        gap: $gap;
      }
    }
  }

  &__contactus {
    display: flex;
    flex-direction: column;
    justify-content: center;
    gap: $gap;

    &-title {
      font-size: $subtitle;
    }

    &-description {
      display: flex;
      flex-direction: column;
      justify-content: center;
      gap: $gap;
      p:nth-child(5) {
        max-width: 900px;
        text-align: center;
        font-weight: bold;
        margin:0 auto;
      }
    }
  }
}
</style>
