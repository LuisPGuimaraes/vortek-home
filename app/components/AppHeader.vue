<template>
  <header class="bg-green-600">
    <nav class="mx-auto flex max-w-7xl items-center justify-between p-6 lg:px-8" aria-label="Global">
      <!-- Logo e Nome -->
      <div class="flex items-center">
        <h1 class="text-4xl font-bold tracking-tight text-gray-900 sm:text-6xl">
          Vortek
        </h1>
      </div>

      <!-- Menu Desktop -->
      <div class="hidden lg:flex lg:gap-x-8">
        <a href="#home" class="nav-link">Início</a>
        <a href="#team" class="nav-link">Equipe</a>
        <a href="#projects" class="nav-link">Projetos</a>
        <a href="#contact" class="nav-link">Contato</a>
      </div>

      <!-- GitHub Link -->
      <div class="hidden lg:flex">
        <a href="https://github.com/vortek-api" 
           class="btn-github"
           target="_blank">
          <svg class="h-5 w-5 mr-2" fill="currentColor" viewBox="0 0 24 24">
            <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/>
          </svg>
          GitHub
        </a>
      </div>

      <!-- Menu Mobile Button -->
      <div class="lg:hidden">
        <button type="button" 
                class="mobile-menu-btn"
                @click="mobileMenuOpen = !mobileMenuOpen">
          <span class="sr-only">Abrir menu</span>
          <svg class="h-6 w-6" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16M4 18h16" />
          </svg>
        </button>
      </div>
    </nav>

    <!-- Menu Mobile -->
    <div v-if="mobileMenuOpen" class="lg:hidden bg-green-700">
      <div class="px-6 py-4 space-y-2">
        <a href="#home" class="mobile-nav-link" @click="mobileMenuOpen = false">Início</a>
        <a href="#team" class="mobile-nav-link" @click="mobileMenuOpen = false">Equipe</a>
        <a href="#projects" class="mobile-nav-link" @click="mobileMenuOpen = false">Projetos</a>
        <a href="#contact" class="mobile-nav-link" @click="mobileMenuOpen = false">Contato</a>
        <a href="https://github.com/vortek-api" 
           class="mobile-nav-link" 
           target="_blank"
           @click="mobileMenuOpen = false">
          GitHub
        </a>
      </div>
    </div>
  </header>
</template>

<script setup>
import { ref } from 'vue'

const mobileMenuOpen = ref(false)
</script>

<style scoped>
/* Header Styles */
.bg-green-600 {
  background-color: #059669;
}

.bg-green-700 {
  background-color: #047857;
}

/* Navigation Links */
.nav-link {
  color: #ffffff;
  text-decoration: none;
  font-weight: 600;
  font-size: 1rem;
  padding: 0.5rem 1rem;
  border-radius: 0.375rem;
  transition: all 0.2s ease;
}

.nav-link:hover {
  background-color: rgba(255, 255, 255, 0.1);
  color: #f3f4f6;
}

/* GitHub Button */
.btn-github {
  display: inline-flex;
  align-items: center;
  padding: 0.5rem 1rem;
  background-color: #374151;
  color: #ffffff;
  text-decoration: none;
  font-weight: 600;
  border-radius: 0.375rem;
  transition: all 0.2s ease;
}

.btn-github:hover {
  background-color: #1f2937;
  transform: translateY(-1px);
}

/* Mobile Menu Button */
.mobile-menu-btn {
  color: #ffffff;
  padding: 0.5rem;
  border-radius: 0.375rem;
  transition: background-color 0.2s ease;
}

.mobile-menu-btn:hover {
  background-color: rgba(255, 255, 255, 0.1);
}

/* Mobile Navigation Links */
.mobile-nav-link {
  display: block;
  color: #ffffff;
  text-decoration: none;
  font-weight: 600;
  padding: 0.75rem 1rem;
  border-radius: 0.375rem;
  transition: background-color 0.2s ease;
}

.mobile-nav-link:hover {
  background-color: rgba(255, 255, 255, 0.1);
}

/* Utility Classes */
.flex { display: flex; }
.items-center { align-items: center; }
.justify-between { justify-content: space-between; }
.max-w-7xl { max-width: 80rem; }
.mx-auto { margin-left: auto; margin-right: auto; }
.p-6 { padding: 1.5rem; }
.px-6 { padding-left: 1.5rem; padding-right: 1.5rem; }
.py-4 { padding-top: 1rem; padding-bottom: 1rem; }
.mr-2 { margin-right: 0.5rem; }
.mr-4 { margin-right: 1rem; }
.h-5 { height: 1.25rem; }
.w-5 { width: 1.25rem; }
.h-6 { height: 1.5rem; }
.w-6 { width: 1.5rem; }
.h-12 { height: 3rem; }
.w-auto { width: auto; }
.text-2xl { font-size: 1.5rem; }
.font-bold { font-weight: 700; }
.text-white { color: #ffffff; }
.hidden { display: none; }
.space-y-2 > * + * { margin-top: 0.5rem; }
.sr-only { 
  position: absolute; 
  width: 1px; 
  height: 1px; 
  padding: 0; 
  margin: -1px; 
  overflow: hidden; 
  clip: rect(0, 0, 0, 0); 
  white-space: nowrap; 
  border-width: 0; 
}

@media (min-width: 1024px) {
  .lg\:px-8 { padding-left: 2rem; padding-right: 2rem; }
  .lg\:flex { display: flex; }
  .lg\:hidden { display: none; }
  .lg\:gap-x-8 { column-gap: 2rem; }
}
</style>
