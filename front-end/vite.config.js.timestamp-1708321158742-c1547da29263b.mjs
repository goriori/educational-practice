// vite.config.js
import { fileURLToPath, URL } from "node:url";
import { defineConfig } from "file:///C:/goriori/github/educational-practice/front-end/node_modules/vite/dist/node/index.js";
import vue from "file:///C:/goriori/github/educational-practice/front-end/node_modules/@vitejs/plugin-vue/dist/index.mjs";
import imagemin from "file:///C:/goriori/github/educational-practice/front-end/node_modules/unplugin-imagemin/dist/vite.mjs";
var __vite_injected_original_import_meta_url = "file:///C:/goriori/github/educational-practice/front-end/vite.config.js";
var vite_config_default = defineConfig({
  plugins: [
    vue(),
    imagemin({
      // Default mode sharp. support squoosh and sharp
      mode: "sharp",
      beforeBundle: false,
      // Default configuration options for compressing different pictures
      compress: {
        jpg: {
          quality: 100
        },
        jpeg: {
          quality: 100
        },
        png: {
          quality: 100
        },
        webp: {
          quality: 100
        }
      },
      conversion: [
        { from: "jpeg", to: "webp" },
        { from: "JPEG", to: "webp" },
        { from: "png", to: "webp" },
        { from: "PNG", to: "webp" },
        { from: "JPG", to: "webp" },
        { from: "jpg", to: "webp" }
      ]
    })
  ],
  resolve: {
    alias: {
      "@": fileURLToPath(new URL("./src", __vite_injected_original_import_meta_url))
    }
  },
  build: {
    rollupOptions: {
      output: {
        manualChunks(id) {
          if (id.includes("node_modules")) {
            return id.toString().split("node_modules/")[1].split("/")[0].toString();
          }
        }
      }
    }
  }
});
export {
  vite_config_default as default
};
//# sourceMappingURL=data:application/json;base64,ewogICJ2ZXJzaW9uIjogMywKICAic291cmNlcyI6IFsidml0ZS5jb25maWcuanMiXSwKICAic291cmNlc0NvbnRlbnQiOiBbImNvbnN0IF9fdml0ZV9pbmplY3RlZF9vcmlnaW5hbF9kaXJuYW1lID0gXCJDOlxcXFxnb3Jpb3JpXFxcXGdpdGh1YlxcXFxlZHVjYXRpb25hbC1wcmFjdGljZVxcXFxmcm9udC1lbmRcIjtjb25zdCBfX3ZpdGVfaW5qZWN0ZWRfb3JpZ2luYWxfZmlsZW5hbWUgPSBcIkM6XFxcXGdvcmlvcmlcXFxcZ2l0aHViXFxcXGVkdWNhdGlvbmFsLXByYWN0aWNlXFxcXGZyb250LWVuZFxcXFx2aXRlLmNvbmZpZy5qc1wiO2NvbnN0IF9fdml0ZV9pbmplY3RlZF9vcmlnaW5hbF9pbXBvcnRfbWV0YV91cmwgPSBcImZpbGU6Ly8vQzovZ29yaW9yaS9naXRodWIvZWR1Y2F0aW9uYWwtcHJhY3RpY2UvZnJvbnQtZW5kL3ZpdGUuY29uZmlnLmpzXCI7aW1wb3J0IHsgZmlsZVVSTFRvUGF0aCwgVVJMIH0gZnJvbSAnbm9kZTp1cmwnXG5pbXBvcnQgeyBkZWZpbmVDb25maWcgfSBmcm9tICd2aXRlJ1xuaW1wb3J0IHZ1ZSBmcm9tICdAdml0ZWpzL3BsdWdpbi12dWUnXG5pbXBvcnQgaW1hZ2VtaW4gZnJvbSAndW5wbHVnaW4taW1hZ2VtaW4vdml0ZSdcblxuLy8gaHR0cHM6Ly92aXRlanMuZGV2L2NvbmZpZy9cbmV4cG9ydCBkZWZhdWx0IGRlZmluZUNvbmZpZyh7XG4gIHBsdWdpbnM6IFtcbiAgICB2dWUoKSxcbiAgICBpbWFnZW1pbih7XG4gICAgICAvLyBEZWZhdWx0IG1vZGUgc2hhcnAuIHN1cHBvcnQgc3F1b29zaCBhbmQgc2hhcnBcbiAgICAgIG1vZGU6ICdzaGFycCcsXG4gICAgICBiZWZvcmVCdW5kbGU6IGZhbHNlLFxuICAgICAgLy8gRGVmYXVsdCBjb25maWd1cmF0aW9uIG9wdGlvbnMgZm9yIGNvbXByZXNzaW5nIGRpZmZlcmVudCBwaWN0dXJlc1xuICAgICAgY29tcHJlc3M6IHtcbiAgICAgICAganBnOiB7XG4gICAgICAgICAgcXVhbGl0eTogMTAwLFxuICAgICAgICB9LFxuICAgICAgICBqcGVnOiB7XG4gICAgICAgICAgcXVhbGl0eTogMTAwLFxuICAgICAgICB9LFxuICAgICAgICBwbmc6IHtcbiAgICAgICAgICBxdWFsaXR5OiAxMDAsXG4gICAgICAgIH0sXG4gICAgICAgIHdlYnA6IHtcbiAgICAgICAgICBxdWFsaXR5OiAxMDAsXG4gICAgICAgIH0sXG4gICAgICB9LFxuICAgICAgY29udmVyc2lvbjogW1xuICAgICAgICB7IGZyb206ICdqcGVnJywgdG86ICd3ZWJwJyB9LFxuICAgICAgICB7IGZyb206ICdKUEVHJywgdG86ICd3ZWJwJyB9LFxuICAgICAgICB7IGZyb206ICdwbmcnLCB0bzogJ3dlYnAnIH0sXG4gICAgICAgIHsgZnJvbTogJ1BORycsIHRvOiAnd2VicCcgfSxcbiAgICAgICAgeyBmcm9tOiAnSlBHJywgdG86ICd3ZWJwJyB9LFxuICAgICAgICB7IGZyb206ICdqcGcnLCB0bzogJ3dlYnAnIH0sXG4gICAgICBdLFxuICAgIH0pLFxuICBdLFxuICByZXNvbHZlOiB7XG4gICAgYWxpYXM6IHtcbiAgICAgICdAJzogZmlsZVVSTFRvUGF0aChuZXcgVVJMKCcuL3NyYycsIGltcG9ydC5tZXRhLnVybCkpLFxuICAgIH0sXG4gIH0sXG4gIGJ1aWxkOiB7XG4gICAgcm9sbHVwT3B0aW9uczoge1xuICAgICAgb3V0cHV0OiB7XG4gICAgICAgIG1hbnVhbENodW5rcyhpZCkge1xuICAgICAgICAgIGlmIChpZC5pbmNsdWRlcygnbm9kZV9tb2R1bGVzJykpIHtcbiAgICAgICAgICAgIHJldHVybiBpZFxuICAgICAgICAgICAgICAudG9TdHJpbmcoKVxuICAgICAgICAgICAgICAuc3BsaXQoJ25vZGVfbW9kdWxlcy8nKVsxXVxuICAgICAgICAgICAgICAuc3BsaXQoJy8nKVswXVxuICAgICAgICAgICAgICAudG9TdHJpbmcoKVxuICAgICAgICAgIH1cbiAgICAgICAgfSxcbiAgICAgIH0sXG4gICAgfSxcbiAgfSxcbn0pXG4iXSwKICAibWFwcGluZ3MiOiAiO0FBQTRVLFNBQVMsZUFBZSxXQUFXO0FBQy9XLFNBQVMsb0JBQW9CO0FBQzdCLE9BQU8sU0FBUztBQUNoQixPQUFPLGNBQWM7QUFINEwsSUFBTSwyQ0FBMkM7QUFNbFEsSUFBTyxzQkFBUSxhQUFhO0FBQUEsRUFDMUIsU0FBUztBQUFBLElBQ1AsSUFBSTtBQUFBLElBQ0osU0FBUztBQUFBO0FBQUEsTUFFUCxNQUFNO0FBQUEsTUFDTixjQUFjO0FBQUE7QUFBQSxNQUVkLFVBQVU7QUFBQSxRQUNSLEtBQUs7QUFBQSxVQUNILFNBQVM7QUFBQSxRQUNYO0FBQUEsUUFDQSxNQUFNO0FBQUEsVUFDSixTQUFTO0FBQUEsUUFDWDtBQUFBLFFBQ0EsS0FBSztBQUFBLFVBQ0gsU0FBUztBQUFBLFFBQ1g7QUFBQSxRQUNBLE1BQU07QUFBQSxVQUNKLFNBQVM7QUFBQSxRQUNYO0FBQUEsTUFDRjtBQUFBLE1BQ0EsWUFBWTtBQUFBLFFBQ1YsRUFBRSxNQUFNLFFBQVEsSUFBSSxPQUFPO0FBQUEsUUFDM0IsRUFBRSxNQUFNLFFBQVEsSUFBSSxPQUFPO0FBQUEsUUFDM0IsRUFBRSxNQUFNLE9BQU8sSUFBSSxPQUFPO0FBQUEsUUFDMUIsRUFBRSxNQUFNLE9BQU8sSUFBSSxPQUFPO0FBQUEsUUFDMUIsRUFBRSxNQUFNLE9BQU8sSUFBSSxPQUFPO0FBQUEsUUFDMUIsRUFBRSxNQUFNLE9BQU8sSUFBSSxPQUFPO0FBQUEsTUFDNUI7QUFBQSxJQUNGLENBQUM7QUFBQSxFQUNIO0FBQUEsRUFDQSxTQUFTO0FBQUEsSUFDUCxPQUFPO0FBQUEsTUFDTCxLQUFLLGNBQWMsSUFBSSxJQUFJLFNBQVMsd0NBQWUsQ0FBQztBQUFBLElBQ3REO0FBQUEsRUFDRjtBQUFBLEVBQ0EsT0FBTztBQUFBLElBQ0wsZUFBZTtBQUFBLE1BQ2IsUUFBUTtBQUFBLFFBQ04sYUFBYSxJQUFJO0FBQ2YsY0FBSSxHQUFHLFNBQVMsY0FBYyxHQUFHO0FBQy9CLG1CQUFPLEdBQ0osU0FBUyxFQUNULE1BQU0sZUFBZSxFQUFFLENBQUMsRUFDeEIsTUFBTSxHQUFHLEVBQUUsQ0FBQyxFQUNaLFNBQVM7QUFBQSxVQUNkO0FBQUEsUUFDRjtBQUFBLE1BQ0Y7QUFBQSxJQUNGO0FBQUEsRUFDRjtBQUNGLENBQUM7IiwKICAibmFtZXMiOiBbXQp9Cg==
