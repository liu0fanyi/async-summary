FROM ubuntu:24.04
 

# 设置环境变量，避免交互式配置
ENV DEBIAN_FRONTEND=noninteractive


# 复制本地的 ubuntu.sources 到镜像中
COPY ubuntu.sources /etc/apt/sources.list.d/ubuntu.sources

RUN set -eux \
    && apt-get update \
    && apt-get -yq upgrade \
    && apt-get -yq install \
    build-essential u-boot-tools automake libtool texinfo bison flex gawk g++ git xxd curl wget gdisk gperf cpio bc screen texinfo unzip libgmp-dev libmpfr-dev libmpc-dev libssl-dev libncurses-dev libglib2.0-dev libpixman-1-dev  libyaml-dev patchutils python3-pip zlib1g-dev device-tree-compiler dosfstools mtools kpartx rsync \
    && rm -rf /var/lib/apt/lists/* \
    && exit 0

# warning: 添加了自己的proxy用来加速rust
# ENV HTTP_PROXY="http://192.168.1.100:7890"
# ENV HTTPS_PROXY="http://192.168.1.100:7890"
# ENV http_proxy="http://192.168.1.100:7890"
# ENV https_proxy="http://192.168.1.100:7890"

RUN set -eux \
    && curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

ENV PATH="/root/.cargo/bin:${PATH}"

RUN set -eux \
    && ls -lah /root/ && ls -lah /root/.cargo/ && rustc --version


RUN set -eux \
    && cargo install cargo-binutils
