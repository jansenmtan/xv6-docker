# xv6 through QEMU through Docker

## First time setup
### Step 0: Install Docker
Make sure you have Docker and Docker Compose installed on your system
  - For Windows and Mac users, both are installed together
  - For Linux users, first install Docker then Docker Compose

Read more: https://docs.docker.com/compose/install/

### Step 1: Clone this repository 
Navigate to a fitting folder and run the following command:
```bash
git clone https://github.com/anton-christensen/xv6-docker.git
```

### Step 2: Download the xv6 source code
The source for the operating system is included as a submodule in this repository.
To download the newest version run the following command in the newly created *xv6-docker* folder:
```bash
git submodule update --init --recursive
```

### Step 3: Build the Docker image
The first time you run the image with the following command, the Docker image will be built.
The required dependencies are downloaded, compiled and run, which might take a few minutes, but only needs to be done once.
```bash
docker-compose run --rm vm
```

## Running the Docker image
The docker image can be run with the same command used to build it: 
```bash
docker-compose run --rm vm
```

This launches a shell inside the container which is connected to your terminal.
Running the following command in that terminal compiles and runs the xv6 source code.
```bash
make qemu
```

In order to exit QEMU press ```Ctrl + A, X```

## Editing xv6
Any changes you make to the files in the *xv6-docker/xv6-public* folder are also present inside the container, but you will need the run ```make qemu``` in order to compile your latest changes.


