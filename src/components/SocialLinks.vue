<template>
  <div class="flex flex-row ml-4 max-md:items-center max-md:justify-center max-md:m-0 max-md:mt-4">
    <a href="https://github.com/Blackpolygon2" class="flex items-center justify-center ease duration-200 "
      ><img
        loading="lazy"
        class="ease duration-200 mr-2 w-7 max-md:w-12 mb-8 hover:w-9"
        :src="`/github.svg`"
        :alt="logo"
    /></a>
    <a href="https://www.linkedin.com/in/jomilojuadediran/" class="flex items-center justify-center ease duration-200"
      ><img
        loading="lazy"
        class="ease duration-200 mr-2 w-7 max-md:w-12 mb-8 hover:w-9"
        :src="`/linkedin.svg`"
        :alt="logo"
    /></a>
    <a href="" class="flex items-center justify-center ease duration-200"
      ><img
        loading="lazy"
        class="ease duration-200 mr-2 w-7 max-md:w-12 mb-8 hover:w-9"
        :src="`/fileicon.svg`"
        :alt="logo"
    /></a>
  </div>
</template>

<script setup lang="ts">
import { ref } from "vue";
defineProps(["logo", "name"]);
</script>
