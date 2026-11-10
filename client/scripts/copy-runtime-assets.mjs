import { cp, rm } from "node:fs/promises";

const publicDirectory = "public";

// Cesium loads workers, widgets, and other assets by URL at runtime. Vite serves
// `public` unchanged in development and copies it to `dist` for production.
await Promise.all([
  rm(`${publicDirectory}/cesium`, { recursive: true, force: true }),
  rm(`${publicDirectory}/resources`, { recursive: true, force: true }),
]);

await Promise.all([
  cp("node_modules/cesium/Build/Cesium", `${publicDirectory}/cesium`, {
    recursive: true,
  }),
  cp("resources", `${publicDirectory}/resources`, { recursive: true }),
]);
