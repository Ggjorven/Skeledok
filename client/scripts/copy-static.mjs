import { cp, rm } from "node:fs/promises";

// Cesium and the project's models/textures are served as runtime assets rather
// than bundled JavaScript modules, so copy them into the production output.
await Promise.all([
  rm("dist/vendor", { recursive: true, force: true }),
  rm("dist/resources", { recursive: true, force: true }),
]);

await Promise.all([
  cp("vendor", "dist/vendor", { recursive: true }),
  cp("resources", "dist/resources", { recursive: true }),
]);
