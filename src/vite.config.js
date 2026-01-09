// src/vite.config.js
import { defineConfig } from 'vite';
import laravel from 'laravel-vite-plugin';

export default defineConfig({
  plugins: [
    laravel({
      input: ['resources/css/app.css', 'resources/js/app.js'],
      refresh: true,

      // Deixa explícito para evitar “cada ambiente inventa um caminho”
      publicDirectory: 'public',
      buildDirectory: 'build',
      hotFile: 'public/hot',
    }),
  ],

  server: {
    host: true,        // 0.0.0.0 dentro do container
    port: 5173,
    strictPort: true,
    hmr: {
      host: 'localhost', // browser acessa via localhost
      port: 5173,
    },
  },
});
