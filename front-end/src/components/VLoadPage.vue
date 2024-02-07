<script setup></script>

<template>
  <div class="page-loader">
    <div class="page-loader__background">
      <img src="/main.gif" alt="" />
    </div>
    <div class="page-loader__message">
      <div class="page-loader__message-bg"></div>
      <p class="page-loader__message-content">Load page, please wait load...</p>
    </div>
  </div>
</template>

<style scoped lang="scss">
.page-loader {
  color: black;
  position: absolute;
  width: 100vw;
  height: 100vh;
  z-index: 100;

  &__background {
    width: 100%;
    height: 100%;

    img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
  }

  &__message {
    display: flex;
    justify-content: center;
    align-items: center;
    position: absolute;
    transform: translate(-50%, -50%);
    top: 50%;
    left: 50%;
    &-bg {
      position: absolute;
      content: ' ';
      width: 50vw;
      height: 50vh;
      background-color: #fff;
      border-radius: 20px;
      opacity: 0.5;
      z-index: 101;
    }
    &-content {
      color: #77eed8;
    }
  }
}
</style>
