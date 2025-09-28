<template>
    <div class="w-fit flex flex-col mt-5 mr-9 justify-start content-start">
        <p class="w-fit m-0 h-auto text-center text-sm mb-1 text-white/70">{{ place }}</p>
        <p class="w-fit m-0 h-auto text-center text-xs ">{{ position }}</p>
        <p class="w-fit m-0 h-auto text-center text-xs text-white/60">{{ duration }}</p>
        
    </div>
</template>



<script setup lang="ts">
//import { ref } from "vue";
defineProps(['place', 'position', 'duration'])
</script>