# xv6-docker
Follow along with the MIT Operating Systems course (https://pdos.csail.mit.edu/6.828/2017/) for learning more about kernel and os development. This repo contains a dockerized environment for developing and debugging to xv6 kernel, with a few utilities to make things easier to get started.

## First time setup

I've created a fork of the os source and linked as a submodule. To grab the source, update this dependency: 
```bash
git submodule update --init --recursive
```

The next step is to build the docker image. This will pull the required dependencies for compiling the xv6 source, grab qemu for running the kernel. Installing all the dependencies takes a short while, but it only has to be done once. 

## Run the virtual machine
To run the image do the following:
```bash
docker-compose run --rm vm
```

This will launch a shell inside the container connected to your terminal.

Browse and edit the xv6 source locally and compile through the virtual machine by running

```bash
qemu-nox
```

exit qemu by pressing ```CTRL+A, X```


