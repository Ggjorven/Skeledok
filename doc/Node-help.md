# Node.js Help

This project uses **Node.js** to run and build the client application.

## Windows

1. Go to the [Node.js download page](https://nodejs.org/en/download).

2. Download the **LTS** Windows installer (`.msi`).

3. Run the installer and keep the default options, including **npm package manager**.

4. Close and reopen your terminal, then run the version commands above.

## Linux

Use [nvm](https://github.com/nvm-sh/nvm) to install and switch Node.js versions:

1. Install `nvm` using the command from its installation instructions. This is the latest at the time of writing:
    ```sh
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.41.0/install.sh | bash
    ```

2. Close and reopen your terminal, or load nvm for the current session.

3. Install the current Node.js 22 LTS release:

    ```sh
    nvm install 22
    nvm use 22
    ```

4. (optional) Make it the default for new terminals

    ```sh
    nvm alias default 22
    ```

## macOS

### Homebrew

If [Homebrew](https://brew.sh/) is installed, run:

```sh
brew install node@22
brew link --overwrite node@22
```

Then run the version commands above to verify the installation.

### Installer

Alternatively, download and run the **LTS** macOS installer from the [Node.js download page](https://nodejs.org/en/download).
