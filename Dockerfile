FROM debian:buster 

COPY . /serenity

SHELL ["/bin/bash", "-c"]
RUN \
	apt-get update && \
	apt-get upgrade -y && \
	apt-get install apt-utils -y && \
	apt-get install build-essential libmpfr-dev libmpc-dev libgmp-dev e2fsprogs gawk wget curl sudo qemu-system-i386 qemu-utils -y && \
	cd /serenity/Toolchain && \
	./BuildIt.sh

CMD ["/serenity/Kernel/nyanpost.sh"]
