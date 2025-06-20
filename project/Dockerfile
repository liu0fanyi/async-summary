FROM ubuntu:24.04
 
ENV HTTP_PROXY="http://172.17.0.1:20171"
ENV HTTPS_PROXY="http://172.17.0.1:20171"
ENV http_proxy="http://172.17.0.1:20171"
ENV https_proxy="http://172.17.0.1:20171"

RUN set -eux \
    && apt-get update \
    && apt-get -yq upgrade \
    && apt-get -yq install \
    build-essential automake libtool texinfo bison flex gawk g++ git xxd curl wget gdisk gperf cpio bc screen texinfo unzip libgmp-dev libmpfr-dev libmpc-dev libssl-dev libncurses-dev libglib2.0-dev libpixman-1-dev  libyaml-dev patchutils python3-pip zlib1g-dev device-tree-compiler dosfstools mtools kpartx rsync \
    && rm -rf /var/lib/apt/lists/* \
    && exit 0

RUN set -eux \
    && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"

RUN set -eux \
    && ls -lah /root/ && ls -lah /root/.cargo/ && rustc --version

RUN set -eux \
    && rustup target add armv7-unknown-linux-gnueabihf

RUN set -eux \
    && rustup target add wasm32-unknown-unknown
