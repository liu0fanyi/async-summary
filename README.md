# 仓库介绍
* 这里是在星光2上使用rustsbi从hart0来跳转embassy并在hart1上运行u-boot的仓库

## 重现准备
* u-boot是已经编译好的，在`work/`下面，如果想自行编译见文档，从VisionFive2的sdk仓库编译
* 有git submodule, 见`.gitmodules`
* 额，编译环境使用的nix和flake+direnv，我是在nixos下直接使用的

## 分两个部分
### 第一个部分是直接在rustsbi中判断hart0则直接运行embassy与hart1的u-boot并行运行
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

