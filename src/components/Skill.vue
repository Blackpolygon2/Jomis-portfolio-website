<template>
    <div class="m-4 w-fit flex flex-row justify-start items-center">
        <img class="mr-2 w-9" :src="`/${logo}.svg`" :alt="logo">
        <p class="">{{ name }}</p>
    </div>
</template>



<script setup lang="ts">
import { ref } from "vue";
defineProps(['logo', 'name'])
</script>