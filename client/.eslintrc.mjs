import js from "@eslint/js";
import globals from "globals";

export default [
  {
    ignores: []
  },
  js.configs.recommended,
  {
    languageOptions: {
      ecmaVersion: "latest",
      sourceType: "module",
      globals: {
        ...globals.browser,
        bootstrap: "readonly"
      }
    },
    rules: {
      "no-unused-vars": ["error", {
        varsIgnorePattern: "^_",
        argsIgnorePattern: "^_"
      }]
    }
  }
];
