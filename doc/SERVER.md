# Build & Run instructions for Server

## Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/ggjorven/Skeledok.git
    cd Skeledok/server
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
