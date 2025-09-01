<template>
  <main class="main-content">
    <div class="max-w-7xl mx-auto px-6 lg:px-8">
      <!-- Projects Section -->
      <div class="py-16">
        <h2 class="text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl text-center mb-12">
          Nossos Projetos
        </h2>
        
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-2 gap-8">
          <div v-for="project in projects" :key="project.name" class="bg-white rounded-lg shadow-md p-6 hover:shadow-lg transition-shadow">
            <div class="flex items-center mb-4">
              <div class="flex-shrink-0">
                <div v-html="project.icon" class="w-8 h-8 text-indigo-600"></div>
              </div>
              <h3 class="ml-3 text-lg font-semibold text-gray-900">{{ project.name }}</h3>
              <UBadge 
                class="ml-3"
                :class="project.status === 'done' ? 'badge-green' : 'badge-yellow'"
                :color="project.status === 'done' ? 'green' : 'yellow'"
                :variant="'solid'"
                size="sm"
              >
                {{ project.status === 'done' ? 'Done' : 'In Progress' }}
              </UBadge>
            </div>
            <p class="text-gray-600 mb-4">{{ project.description }}</p>
            <div class="flex flex-wrap gap-2">
              <span v-for="tech in project.technologies" :key="tech" 
                    class="inline-flex items-center rounded-md bg-indigo-50 px-2 py-1 text-xs font-medium text-indigo-700 ring-1 ring-inset ring-indigo-700/10">
                {{ tech }}
              </span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </main>
</template>

<script setup>
import { onMounted } from 'vue'

const projects = [
  {
    name: 'TimeSync',
    description: 'Aplicação web projetada para gerenciar o controle de ponto de funcionários em empresas terceirizadas.',
    technologies: ['Vue.js', 'Node.js', 'PostgreSQL'],
    icon: '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><polyline points="12,6 12,12 16,14"/></svg>',
    status: 'done'
  },
  {
    name: 'Transit Dashboard',
    description: 'Dashboard para gerenciamento das operações da rede de mobilidade de São José dos Campos.',
    technologies: ['Express.js', 'MongoDB', 'Redis'],
    icon: '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="1" y="3" width="15" height="13"/><polygon points="16,8 20,8 23,11 23,16 16,16"/><circle cx="5.5" cy="18.5" r="2.5"/><circle cx="18.5" cy="18.5" r="2.5"/></svg>',
    status: 'in-progress'
  },

]

// Apply styles to badges based on their content
onMounted(() => {
  setTimeout(() => {
    const badges = document.querySelectorAll('span.font-medium.inline-flex.items-center')
    badges.forEach(badge => {
      const text = badge.textContent || ''
      if (text.includes('Done')) {
        badge.style.backgroundColor = '#dcfce7'
        badge.style.color = '#166534'
        badge.style.borderColor = '#bbf7d0'
      } else if (text.includes('Progress')) {
        badge.style.backgroundColor = '#fef3c7'
        badge.style.color = '#d97706'
        badge.style.borderColor = '#fde68a'
      }
      // Ensure consistent styling
      badge.style.borderRadius = '0.375rem'
      badge.style.padding = '0.25rem 0.75rem'
      badge.style.fontSize = '0.75rem'
      badge.style.fontWeight = '500'
      badge.style.textTransform = 'uppercase'
      badge.style.letterSpacing = '0.025em'
      badge.style.border = '1px solid'
    })
  }, 100)
})
</script>

<style scoped>
.main-content {
  background: linear-gradient(to bottom, #ffffff, #f9fafb);
  min-height: calc(100vh - 200px);
}
</style>
