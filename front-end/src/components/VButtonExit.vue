<script setup>
import {onMounted, ref} from "vue";

const button = ref(null);
let timerId;
const requestOption = {
  method: 'GET',
  headers: {
    'Content-Type': 'application/json',
  },
}

const exit = async () => {
  try {
    await fetch('http://localhost:1702', requestOption)
  } catch (e) {
    console.err(e)
    return false
  }
}

function buttonPressed() {
  timerId = setTimeout(exit, 10000);
}

function buttonReleased() {
  clearTimeout(timerId);
}

onMounted(() => {
  if (button.value) {
    button.value.addEventListener('mousedown', buttonPressed);
    button.value.addEventListener('touchstart', buttonPressed);
    button.value.addEventListener('mouseup', buttonReleased);
    button.value.addEventListener('touchend', buttonReleased);
  }
})


</script>

<template>
  <div id="exit" ref="button"
       style="width: 300px; height: 300px; position: fixed; top: 0; left: 0; z-index: 100;"></div>
</template>

<style scoped>

</style>