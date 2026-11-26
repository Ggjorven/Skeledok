# Model help

Before this project can be run an LLM model must be downloaded. The repository does not provide one. This instruction file helps with installing your own LLM model.

## Prerequisites

> [!IMPORTANT]
> Make sure that you also installed all the prerequisites listed in the [main README](./../README.md).

1. Open a terminal in the root of the cloned **Skeledok** directory.

2. Navigate to the server directory:
    ```sh
    cd server
    ```

## Downloading the model

To download the model we'll start our ollama container and download a model through there.

1. First navigate to the llm folder:
    ```sh
    cd llm
    ```

2. In that folder start the container:
    ```sh
    docker compose up -d
    ```

3. Now get into the shell of that container:
    ```sh
    docker exec -it skeledok-llm bash
    ```

4. Now pull a model, we use `gemma4:e4b`:
    ```sh
    ollama pull gemma4:e4b
    ```

5. You can now check if the model is installed by running:
    ```sh
    ollama list
    ```
    You should see your just installed model in that list.

6. Finally exit the shell of the container:
    ```sh
    exit
    ```
