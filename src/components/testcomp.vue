
<template>
  <p class="greeting">{{ greeting }}</p>
</template>

<script setup lang="ts">
import { ref } from 'vue'
const greeting = ref('Hello World!')
</script>



