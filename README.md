# 仓库介绍
* 这里是在星光2上使用rustsbi从hart0来跳转embassy并在hart1上运行u-boot的仓库

## 重现准备
* u-boot是已经编译好的，在`work/`下面，如果想自行编译见文档，从VisionFive2的sdk仓库编译
* 有git submodule, 见`.gitmodules`
* 额，编译环境使用的nix和flake+direnv，我是在nixos下直接使用的

## 分两个部分
### 第一个部分是直接在rustsbi中判断是hart0则直接运行embassy，与hart1的u-boot并行运行
* 在rustsbi的branch:`xingguang-embassy-in-rustsbi`里
* 这个rustsbi依赖特定的embassy，一并在submodule下面已经fork到我的仓库里，并进行了相应的修改（只添加了一个feature）
* 直接在`rustsbi/`目录下编译rustsbi: ` cargo -vv prototyper --payload ../work/u-boot/u-boot.bin --fdt ../work/u-boot/arch/riscv/dts/starfive_visionfive2.dtb`
* 然后在`code/`目录下生成img: `mkimage -f payload_image.its -A riscv -O u-boot -T firmware visionfive2_fw_payload.img`
* 然后使用串口烧录即可

### 第二个部分是通过rustsbi来跳转embassy_app的bin文件来在hart0上运行embassy，并在hart1上运行u-boot没变
* rustsbi的branch:`xingguang-rustsbi-load-embassy-by-bin`
* 这也是git submodule的默认branch
* 在`embassy_app`下编译:`cargo build -Z build-std --release`，因为需要特定的编译条件，所以需要使用build-std
* rustsbi的编译同上
* mkimage同上
* 然后使用串口烧录即可


## 2025-7-13 更新使用docker
```bash
## 获取子仓库
git submodule init
git submodule update
cd project
## build dockerfile
docker buildx build . -t async-summary
## docker run
## 注意proxy设置成自己的或者不设置
## 注意-v后面接的目录设置成自己的async-summary目录
docker run -it -e http_proxy="192.168.1.100:7890" -e https_proxy="192.168.1.100:7890" --name async-summary --privileged -v /home/liu/async-summary:/home async-summary /bin/bash
## 后续不需要重新run，再进入使用
## docker start -ai async-summary
## 下面在docker内部进行编译
## 首先编译embassy_app的单独文件
cd /home/project/code/embassy_app
cargo build -Z build-std --release
## 然后生成bin文件供给rustsbi加载
rust-objcopy --binary-architecture=riscv64 target/riscv64imc/release/embassy_app -O binary embassy_app.bin
## 编译rustsbi
cd /home/project/code/rustsbi
cargo -vv prototyper --payload ../work/u-boot/u-boot.bin --fdt ../work/u-boot/arch/riscv/dts/starfive_visionfive2.dtb
## 生成最终的镜像文件img
cd /home/project/code/
mkimage -f payload_image.its -A riscv -O u-boot -T firmware visionfive2_fw_payload.img
```

## 串口烧录文件visionfive2_fw_payload.img
* 使用工具[Tera Term VT](https://teratermproject.github.io/index-en.html)
* 拨码拨到uart
* 按reset
* 文件->传输->XMODEM->发送, 选择jh7110-recovery-20230322.bin
* 选2
* 文件->传输->XMODEM->发送, 选择刚才编译出来的visionfive2_fw_payload.img
* 拨码拨回正常位置
* 按reset
