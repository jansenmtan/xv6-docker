FROM ubuntu:latest

RUN apt-get -qq update

RUN apt-get install -y git \
                    build-essential \
                    gdb \
                    gcc-multilib \
                    tmux

RUN apt-get install -y qemu-kvm qemu
RUN rm -rf /var/lib/apt/lists/

WORKDIR xv6-public

CMD ["bash"]
