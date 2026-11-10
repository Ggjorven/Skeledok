# Build & Run instructions for Client

The client is a Node.js/Vite application.

## Prerequisites

1. Open a terminal in the root of the cloned **Skeledok** directory.

2. Navigate to the client directory:
    ```sh
    cd client
    ```

3. Install the node_modules:
    ```sh
    npm install
    ```

## Building

1. While developing run:
    ```sh
    npm run dev
    ```
    Then open the local URL printed by Vite (usually `http://localhost:5173`).  
    To create a production build run:
    ```sh
    npm run build
    npm run preview
    ```

Cesium is installed from npm. The development and build commands automatically copy its required browser assets into generated directories; do not add a separate Cesium checkout under `client/vendor/`.
