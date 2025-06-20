# 使用docker来编译uboot
* 前提是clone了VisionFive2 sdk仓库，这里没有添加这个仓库太大不方便处理
* docker buildx build . -t rustsbi
## 注意-v {改成自己的目录}:/home
* docker run -it --name rustsbi -v /home/liu/my/os/workshop:/home rustsbi /bin/bash
## 这里在docker的环境下了, VisionFive2是那个sdk仓库的默认目录名
* cd /home/VisionFive2
* make uboot -j$(nproc)
