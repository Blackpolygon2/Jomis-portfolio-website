<template>
  <div class="">
    <div>
      <img :src="`/${image}.svg`" :alt="image" />
    </div>
    <div>
      <h1>{{ name }}</h1>
      <p>{{ description }}</p>
      <li v-for="skill in skills">
        <img class="mr-2 w-6" :src="`/${skill}.svg`" :alt="skill" />
      </li>
    </div>
  </div>
</template>

<script setup lang="ts">
import { ref } from "vue";
defineProps<{
  image?: string;
  name?: string;
  description?: number;
  skills?: string[];
}>();
</script>
