FROM ubuntu:latest

RUN apt-get -qq update

RUN apt-get install -y git \
                    build-essential \
                    gdb \
                    gcc-multilib \
                    perl
RUN apt-get install -y qemu-kvm qemu
RUN apt-get install -y dos2unix
RUN rm -rf /var/lib/apt/lists/

WORKDIR xv6-public

CMD ["bash"]
