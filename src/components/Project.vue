
<template>
  <a :href="`${link}`" class="no-underline text-white">
  <div :class="'flex flex-row border-1 rounded-xl mb-8 hover:inset-shadow-sm inset-shadow-green-900/50 ease duration-400'">
    <div class="">
      <img :src="`/${image}.png`" :alt="image" class="w-80 h-60 object-contain m-8 mr-0 rounded" loading="lazy" />
    </div>

    <div class="flex flex-col items-center mt-2 mx-4">
      <h4 class="m-0 mb-2 mt-4">{{ name }}</h4>
      <p class="m-0 text-xs text-white/70 w-50">{{ description }}</p>
      <div class="flex flex-row w-fit mt-auto mb-6">
        <div  v-for="skill in skills">
          <img loading="lazy" class="mr-2 w-5" :src="`/${skill}.svg`" :alt="skill" />
        </div>
      </div>
    </div>
  </div>
  </a>
</template>




<script setup lang="ts">
import { ref, onMounted } from "vue";


const props = defineProps<{
  image?: string
  name?: string
  description?: string
  link?: string
  skills?: string[]
}>()

const prominentColor = ref<string | null>(null)
let shadow_color;
onMounted(async () => {
  if (!props.image) return
  const imagePath = `/${props.image}.png`
  console.log('loading image for color extraction:', imagePath)


  const img = new Image()
  img.crossOrigin = 'Anonymous'
  img.src = imagePath

  try {
    await new Promise((resolve, reject) => {
      img.onload = () => resolve(true)
      img.onerror = (e) => reject(e)
    })


    const { default: ColorThief } = await import('colorthief')
    const ct = new ColorThief()

    const color = ct.getColor(img) as number[]
    if (Array.isArray(color)) {
      const [r, g, b] = color
      shadow_color=color
      prominentColor.value = `rgb(${r}, ${g}, ${b})`
      console.log('color thief prominent color:', prominentColor.value)
    }
  } catch (err) {
    console.error('Error extracting color with ColorThief', err)
  }
})

</script>
