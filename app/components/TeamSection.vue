<template>
  <div class="avatar-section">
    <div class="text-center mb-8">
      <h2 class="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl">Nossa Equipe</h2>
      <p class="mt-4 text-lg leading-8 text-gray-600">Conheça os desenvolvedores que fazem a Vortek acontecer</p>
    </div>
    
    <UAvatarGroup size="2xl" max="8">
      <ULink
        to="https://github.com/BeatrizPlacido"
        target="_blank"
        class="hover:ring-primary transition"
        raw
      >
        <UAvatar
          src="https://github.com/BeatrizPlacido.png"
          alt="Beatriz Placido"
        />
      </ULink>

      <ULink
        to="https://github.com/DiegoSGamero"
        target="_blank"
        class="hover:ring-primary transition"
        raw
      >
        <UAvatar
          src="https://github.com/DiegoSGamero.png"
          alt="Diego Gamero"
        />
      </ULink>

      <ULink
        to="https://github.com/jaupventur"
        target="_blank"
        class="hover:ring-primary transition"
        raw
      >
        <UAvatar
          src="https://github.com/jaupventur.png"
          alt="João Ventura"
        />
      </ULink>

      <ULink
        to="https://github.com/LuisPGuimaraes"
        target="_blank"
        class="hover:ring-primary transition"
        raw
      >
        <UAvatar
          src="https://github.com/LuisPGuimaraes.png"
          alt="Luis Guimarães"
        />
      </ULink>

      <ULink
        to="https://github.com/luizricar"
        target="_blank"
        class="hover:ring-primary transition"
        raw
      >
        <UAvatar
          src="https://github.com/luizricar.png"
          alt="Luiz Ricardo"
        />
      </ULink>

      <ULink
        to="https://github.com/mariinetic"
        target="_blank"
        class="hover:ring-primary transition"
        raw
      >
        <UAvatar
          src="https://github.com/mariinetic.png"
          alt="Mariane"
        />
      </ULink>

      <ULink
        to="https://github.com/thiagosabreu"
        target="_blank"
        class="hover:ring-primary transition"
        raw
      >
        <UAvatar
          src="https://github.com/thiagosabreu.png"
          alt="Thiago Sabreu"
        />
      </ULink>

      <ULink
        to="https://github.com/tiago17santos"
        target="_blank"
        class="hover:ring-primary transition"
        raw
      >
        <UAvatar
          src="https://github.com/tiago17santos.png"
          alt="Tiago Santos"
        />
      </ULink>
    </UAvatarGroup>
  </div>
</template>

<script setup>
import { onMounted } from 'vue'

// Apply circular styling to avatar images
onMounted(() => {
  setTimeout(() => {
    const avatarImages = document.querySelectorAll('img[src*="github.com"]')
    avatarImages.forEach(img => {
      img.style.borderRadius = '50%'
      img.style.border = '3px solid white'
      img.style.boxShadow = '0 1px 3px 0 rgb(0 0 0 / 0.1), 0 1px 2px -1px rgb(0 0 0 / 0.1)'
      img.style.objectFit = 'cover'
      img.style.width = '5rem'
      img.style.height = '5rem'
      
      // Apply to parent container too
      const parent = img.closest('.inline-flex')
      if (parent) {
        parent.style.width = '5rem'
        parent.style.height = '5rem'
        parent.style.borderRadius = '50%'
        parent.style.overflow = 'hidden'
      }
    })
  }, 100)
})
</script>

<style scoped>
.avatar-section {
  padding: 48px 24px;
  display: flex;
  flex-direction: column;
  align-items: center;
  background: linear-gradient(to bottom, #f9fafb, #ffffff);
}

/* Classes utilitárias */
.text-center { text-align: center; }
.mb-8 { margin-bottom: 2rem; }
.text-3xl { font-size: 1.875rem; }
.font-bold { font-weight: 700; }
.tracking-tight { letter-spacing: -0.025em; }
.text-gray-900 { color: #111827; }
.mt-4 { margin-top: 1rem; }
.text-lg { font-size: 1.125rem; }
.leading-8 { line-height: 2rem; }
.text-gray-600 { color: #4b5563; }

@media (min-width: 640px) {
  .sm\:text-4xl { font-size: 2.25rem; }
}
</style>
