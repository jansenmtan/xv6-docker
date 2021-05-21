FROM ubuntu:latest

RUN apt-get -qq update

RUN DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

RUN apt-get install -y git \
                    build-essential \
                    gdb \
                    gcc-multilib \
                    perl
RUN apt-get install -y qemu-kvm qemu qemu-system-misc
RUN apt-get install -y gdb-multiarch
RUN apt-get install -y gcc-riscv64-linux-gnu
RUN apt-get install -y dos2unix
RUN rm -rf /var/lib/apt/lists/

WORKDIR xv6-riscv

CMD ["bash"]
