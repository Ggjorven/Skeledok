# Docker help

A lot of the parts of this application run through docker containers. So your system will need to have all of the docker components installed. This file provides the instructions to help you do so.

## Windows

On Windows you must install Docker with Docker Desktop.

1. Navigate to [https://www.docker.com/products/docker-desktop/](https://www.docker.com/products/docker-desktop/) and download the **Windows AMD64** version for x86_64 processors and **Windows AMR64** for ARM processors (duh).

2. Then run the installer file and walk through all the steps. (Keep them default).

3. That's it.

## Linux

On Linux you have many options on how to install docker and all it's components. I have listed some major distributions and their respective instructions below:
- **Debian** - [instructions](https://docs.docker.com/engine/install/debian/#installation-methods)
- **Fedora** - [instructions](https://docs.docker.com/engine/install/fedora/#installation-methods)
- **Arch** - [instructions](https://wiki.archlinux.org/title/Docker)

If your distribution is not listed here follow [these instructions](https://docs.docker.com/engine/install/).

## MacOS

On MacOS you must also install Docker with Docker Desktop.

1. Navigate to [https://www.docker.com/products/docker-desktop/](https://www.docker.com/products/docker-desktop/) and download the **MacOS Intel** variant for older laptops with an Intel CPU and download the **MacOS Apple Silicon** for newer apple systems.

2. Double click the downloaded `.dmg` file. This will mount the disk iamge.

3. Now you'll see a new drive icon, navigate to that "drive". There you'll find the Docker Desktop app icon.

4. Now drag that icon to your Applications folder.

5. Now Docker Desktop is installed, but the disk image is still open. So in Finder under Locations click the small eject button (it looks like an up arrow).
