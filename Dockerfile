FROM debian:jessie

RUN DEBIAN_FRONTEND=noninteractive apt-get --quiet --yes update \
    && DEBIAN_FRONTEND=noninteractive apt-get --quiet --yes install \
        avr-libc \
        avra \
        avrdude \
        avrp \
        avrprog \
#        build-essential \
        binutils-avr \
        gcc-avr \
        gdb-avr \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists

WORKDIR /tmp