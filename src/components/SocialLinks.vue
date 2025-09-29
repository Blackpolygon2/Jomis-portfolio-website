<template>
    <div class="flex flex-row ml-4">
        <a href="" class="flex items-center justify-center"><img loading="lazy" class="mr-2 w-7 mb-8" :src="`/github.svg`" :alt="logo"></a>
        <a href="" class="flex items-center justify-center"><img loading="lazy" class="mr-2 w-7 mb-8" :src="`/linkedin.svg`" :alt="logo"></a>
        <a href="" class="flex items-center justify-center"><img loading="lazy" class="mr-2 w-7 mb-8" :src="`/fileicon.svg`" :alt="logo"></a>
    </div>
</template>



<script setup lang="ts">
import { ref } from "vue";
defineProps(['logo', 'name'])
</script>



