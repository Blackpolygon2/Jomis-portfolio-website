<template>
  <a :href="`${link}`" class="no-underline text-white">
  <div class="flex flex-row border-1 rounded-xl mb-8 max-md:flex-col">
    <div class="flex flex-row justify-start items-center max-md:w-full">
      <img :src="`/${image}.png`" :alt="image" class="w-80 h-60 object-contain m-8 mr-0 rounded max-md:m-0 max-md:mx-auto max-md:mt-4 max-md:w-11/12 " loading="lazy" />
    </div>

    <div class="flex flex-col items-center mt-2 mx-4">
      <h4 class="m-0 mb-2 mt-4">{{ name }}</h4>
      <p class="m-0 text-xs text-white/70 w-50">{{ description }}</p>
      <div class="flex flex-row w-fit mt-auto mb-6 max-md:mt-6">
        <div  v-for="skill in skills">
          <img loading="lazy" class="mr-2 w-5" :src="`/${skill}.svg`" :alt="skill" />
        </div>
      </div>
    </div>
  </div>
  </a>
</template>

<script setup lang="ts">
import { ref } from "vue";
 
defineProps<{
  image?: string;
  name?: string;
  description?: string;
  link?:string,
  skills?: string[];
}>();


</script>
