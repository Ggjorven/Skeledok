# Build & Run instructions for Server

The server is a Spring Boot application coupled with a database and a local LLM.

## Prerequisites

> [!IMPORTANT]
> Make sure that you also installed all the prerequisites listed in the [main README](./../README.md).

1. Open a terminal in the root of the cloned **Skeledok** directory.

2. Install An LLM Model using [these instructions](./Model-help.md).

3. Navigate to the server directory:
    ```sh
    cd server
    ```

### Database

Before we can start our Spring Boot server we must ensure that the database is up and running.

1. First navigate to the database directory.
    ```sh
    cd database
    ```

2. Start the container:
    ```sh
    docker compose up -d
    ```

3. Now navigate back to the server:
    ```sh
    cd ..
    ```

### LLM

We also need to have our ollama server up and running before starting Spring Boot.

1. First navigate to the llm directory:
    ```sh
    cd llm
    ```

2. Start the container:
    ```sh
    docker compose up -d
    ```

3. Navigate back to the server folder:
    ```sh
    cd server
    ```

## Building

### IntelliJ

1. Open your **IntelliJ** app on your local system.

2. Click the **Open** button and navigate to the location where you just cloned **Skeledok**.

3. Wait for the project to fully load.

4. (Optional) If you get any errors related to the **JDK** version click on the hamburger menu in the top left and navigate to **File** -> **Project Structure**.

5. (Optional) Then under **SDK** select your local **Java 21** installation (if you can't find it install it with [these instructions](./Java-21-help.md)). Then hit **Ok**.

6. (Optional) Then in the **Gradle** window click the **Sync** button and it should be resolved.

7. Now while still in the **Gradle** menu navigate to **Skeledok** -> **Tasks** -> **build** -> **build** and double click.

### Eclipse

1. // TODO: ...

### Gradle

#### Windows

1. While you are still in the server directory of the **Skeledok** run:
    ```sh
    ./gradlew.bat build
    ```

#### Linux & MacOS

1. While you are still in the server directory of the **Skeledok** run:
    ```sh
    ./gradlew build
    ```

## Testing

### IntelliJ

1. While still having the project open go to the **Gradle** menu.

2. Now navigate to **Skeledok** -> **Tasks** -> **verification** -> **test** and double click.

### Eclipse

1. // TODO: ...

### Gradle

#### Windows

1. While you are still in the server directory of the **Skeledok** run:
    ```sh
    ./gradlew.bat test
    ```

#### Linux & MacOS

1. While you are still in the server directory of the **Skeledok** run:
    ```sh
    ./gradlew test
    ```

## Running

### IntelliJ

1. While still having the project open go to the **Gradle** menu.

2. Now navigate to **Skeledok** -> **Tasks** -> **application** -> **run** and double click.

### Eclipse

1. // TODO: ...

### Gradle

#### Windows

1. While you are still in the server directory of the **Skeledok** run:
    ```sh
    ./gradlew.bat run
    ```

#### Linux & MacOS

1. While you are still in the server directory of the **Skeledok** run:
    ```sh
    ./gradlew run
    ```
