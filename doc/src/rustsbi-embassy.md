# 塞昉星光2

<iframe srcdoc='
<!DOCTYPE html>
<style>
body { font-family: sans-serif; }
table, th, td { border: 1px solid #A0A0A0; border-collapse: collapse; padding: 3px; vertical-align: top; }
li { }
img { max-width: 75%; height: auto; }
</style>
<table style="border-width: 2pt; font-size: 14pt;">
<tr>
<td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">昉·星光 2
  <table style="border-width: 2pt; font-size: 13pt;">
  <tr>
  <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
    <table style="border-width: 2pt; font-size: 12pt;">
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">tags
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">Q
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">TODO
    </td>
    </tr>
    </table>
  </td>
  <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
  </td>
  </tr>
  <tr>
  <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
    <table style="border-width: 2pt; font-size: 12pt;">
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">编译rustsbi+uboot
    </td>
    </tr>
    </table>
  </td>
  <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
    <table style="border-width: 2pt; font-size: 12pt;">
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">ref
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">https://github.com/rustsbi/rustsbi/blob/main/prototyper/docs/booting-in-visionfive2-using-uboot-and-rustsbi.md#%E7%83%A7%E5%BD%95-payload-%E9%95%9C%E5%83%8F
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">steps
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">mkdir workshop 
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">cd workshop
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">git clone https://github.com/starfive-tech/VisionFive2.git
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">cd VisionFive2
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">git checkout JH7110_VisionFive2_devel
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">git submodule update --init --recursive
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">这一步会卡住，因为里面有linux内核嗯很大
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">建议看.gitmodules分别手动clone然后checkout到对应分支
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">其中soft_3rdpart clone还会2次失败
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">因为一个60MB的img-gpu-powervr-bin-1.1.5...无法downloading
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">但目前没用到gpu，没遇到什么问题
        </td>
        </tr>
        </table>
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">cd workshop/VisionFive2
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">git clone https://github.com/rustsbi/rustsbi
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">需要switch到v0.0.0-oscomp-2020的tag上
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">cd workshop/VisionFive2
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">添加workshop/VisionFive2/payload_image.its
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">/dts-v1/;
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">/ {
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">description = "U-boot-spl FIT image for JH7110 VisionFive2";
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">#address-cells = &lt;2&gt;;
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">images {
            <table style="border-width: 2pt; font-size: 8pt;">
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">firmware {
              <table style="border-width: 2pt; font-size: 7pt;">
              <tr>
              <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">description = "u-boot";
              </td>
              </tr>
              <tr>
              <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">data = /incbin/("./rustsbi/target/riscv64imac-unknown-none-elf/release/rustsbi-prototyper-payload.bin");
              </td>
              </tr>
              <tr>
              <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">type = "firmware";
              </td>
              </tr>
              <tr>
              <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">arch = "riscv";
              </td>
              </tr>
              <tr>
              <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">os = "u-boot";
              </td>
              </tr>
              <tr>
              <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">load = &lt;0x0 0x40000000&gt;;
              </td>
              </tr>
              <tr>
              <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">entry = &lt;0x0 0x40000000&gt;;
              </td>
              </tr>
              <tr>
              <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">compression = "none";
              </td>
              </tr>
              </table>
            </td>
            </tr>
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">};
            </td>
            </tr>
            </table>
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">};
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">configurations {
            <table style="border-width: 2pt; font-size: 8pt;">
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">default = "config-1";
            </td>
            </tr>
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">config-1 {
              <table style="border-width: 2pt; font-size: 7pt;">
              <tr>
              <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">description = "U-boot-spl FIT config for JH7110 VisionFive2";
              </td>
              </tr>
              <tr>
              <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">firmware = "firmware";
              </td>
              </tr>
              </table>
            </td>
            </tr>
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">};
            </td>
            </tr>
            </table>
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">};
          </td>
          </tr>
          </table>
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">};
        </td>
        </tr>
        </table>
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">实际编译sdk，包含很多内容，linux内核，buildroot，非常耗时
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">bash
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">make -j$(nproc)
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">nushell
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">make -j (sys cpu | get name | length)
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">然鹅
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">可以直接make uboot
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">因为只用到了uboot
          </td>
          </tr>
          </table>
        </td>
        </tr>
        </table>
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">开始报错
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">/usr/bin/file么有
          </td>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
            <table style="border-width: 2pt; font-size: 8pt;">
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">我的nix的锅
            </td>
            </tr>
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">flake.nix添加file
            </td>
            </tr>
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">将对应的文件里的/usr/bin/file替换成了file
            </td>
            </tr>
            </table>
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">没有bc
          </td>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">在flake.nix里添加bc
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">继续报错
          </td>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">nix路线舍弃
          </td>
          </tr>
          </table>
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">改用docker环境
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: bold;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">dockerfile见仓库
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">一个bug
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">https://github.com/starfive-tech/VisionFive2/issues/111
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">没有后文，但对我没有影响
          </td>
          </tr>
          </table>
        </td>
        </tr>
        </table>
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">实际编译rustsbi
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">cd workshop/VisionFive2/rustsbi 
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">cargo prototyper --payload ../work/u-boot/u-boot.bin --fdt ../work/u-boot/arch/riscv/dts/starfive_visionfive2.dtb 
        </td>
        </tr>
        </table>
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">这部分nix下可以搞定
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">实际生成img，用于烧录
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">cd workshop/VisionFive2
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">apt install u-boot-tools
          </td>
          </tr>
          </table>
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">mkimage -f payload_image.its -A riscv -O u-boot -T firmware visionfive2_fw_payload.img
        </td>
        </tr>
        </table>
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">这部分在docker内部编译
      </td>
      </tr>
      </table>
    </td>
    </tr>
    </table>
  </td>
  </tr>
  <tr>
  <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
    <table style="border-width: 2pt; font-size: 12pt;">
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">硬件管脚图
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">uart和gpio都用得到
    </td>
    </tr>
    </table>
  </td>
  <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
    <table style="border-width: 2pt; font-size: 12pt;">
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;"><img src="https://raw.githubusercontent.com/liu0fanyi/async-summary/refs/heads/main/example/src/fe6f57cd6c.png" />
    </td>
    </tr>
    </table>
  </td>
  </tr>
  <tr>
  <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">烧录
  </td>
  <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
    <table style="border-width: 2pt; font-size: 12pt;">
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">鉴于直接修改的rustsbi经常就因为实现错误卡住没uboot什么事
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">只能串口烧录
      </td>
      </tr>
      </table>
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">烧录要用到的管脚
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">直接参考
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">https://doc.rvspace.org/VisionFive2/SDK_Quick_Start_Guide/VisionFive2_SDK_QSG/recovering_bootloader%20-%20vf2.html
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">传输软件
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">windows下使用tera
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">https://github.com/TeraTermProject/teraterm/releases/tag/v5.4.0
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">因为支持XMODEM传输
          </td>
          </tr>
          </table>
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">需要设置波特率为
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">115200
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">然后每次选择
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">文件-&gt;传输-&gt;XMODEM-&gt;发送
        </td>
        </tr>
        </table>
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">拨码
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;"><img src="https://raw.githubusercontent.com/liu0fanyi/async-summary/refs/heads/main/example/src/3436a55010.png" />
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">关键步骤
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">插好对应的串口管脚
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">买一个uart转usb的串口转换小设备即可
          </td>
          </tr>
          </table>
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">下电
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">先拨拨码，进入uart模式
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">俩码都拨到上图对面
          </td>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">拨码
          </td>
          </tr>
          </table>
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">上电
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">看到CCCC是正确的
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">不然就是波特率设置错了
          </td>
          </tr>
          </table>
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">烧录官方提供的
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">jh7110-recovery-&lt;Version&gt;.bin
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
            <table style="border-width: 2pt; font-size: 8pt;">
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">地址
            </td>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">https://github.com/starfive-tech/Tools/tree/master/recovery
            </td>
            </tr>
            </table>
          </td>
          </tr>
          </table>
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">选2
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">烧录刚才编译出的
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">visionfive2_fw_payload.img
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">下电
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">拨码，回到flash模式
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">上图就是
          </td>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">拨码
          </td>
          </tr>
          </table>
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">上电后应该有打印
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        </td>
        </tr>
        </table>
      </td>
      </tr>
      </table>
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
    </td>
    </tr>
    </table>
  </td>
  </tr>
  <tr>
  <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">参考文档
  </td>
  <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
    <table style="border-width: 2pt; font-size: 12pt;">
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">JH7110_Datasheet
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">硬件特性，用处没有那么大
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">JH7110_TRM_StarFive_Preliminary_V2
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">一些硬件的编程手册，稍微有点用处
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">https://doc-en.rvspace.org/JH7110/TRM/JH7110_TRM/sys_crg.html?hl=stg%2Capb
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">在线版本的TRM手册，用处见后面
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">sifive-interrupt-cookbook-v1p2.pdf
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">中断书，有CLINT的细节
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">Both the CLINT and CLIC integrate registers mtime and mtimecmp to configure timer interrupts,and msip to trigger software interrupts. Additionally, both the CLINT and the CLIC run at the core clock frequency.
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">提到了CLINT跑在core clock frequency
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">没有更多了
      </td>
      </tr>
      </table>
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">https://five-embeddev.com/baremetal/timer/
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">嵌入式timer讲解的blog
      </td>
      </tr>
      </table>
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">https://github.com/riscvarchive/riscv-aclint/blob/main/riscv-aclint.adoc
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">riscv-aclint的规范
      </td>
      </tr>
      </table>
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">https://docs.u-boot.org/en/latest/board/starfive/visionfive2.html
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">最有用的是u-boot的已有驱动和dts
    </td>
    </tr>
    </table>
  </td>
  </tr>
  <tr>
  <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">阶段1
    <table style="border-width: 2pt; font-size: 12pt;">
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">在rustsbi的
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">boot hart
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">就是
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">hart 1
      </td>
      </tr>
      </table>
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">启动embassy
    </td>
    </tr>
    </table>
  </td>
  <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
    <table style="border-width: 2pt; font-size: 12pt;">
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">Q
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">如何确定启动hart
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">A
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">代码内打印当前hart
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">dts内有boot核的设置
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">u-boot/arch/riscv/dts/starfive_visionfive2.dts
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">boot-hart-id = &lt;1&gt;
        </td>
        </tr>
        </table>
      </td>
      </tr>
      </table>
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">Q
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">最小需要实现什么
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">A
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">embassy的timer抽象层
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">参考
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">embassy-rp/src/time_driver.rs
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">这个实现就比较基本，方便参考
          </td>
          </tr>
          </table>
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">esp-hal-embassy/src/time_driver.rs
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">这个实现更加复杂
          </td>
          </tr>
          </table>
        </td>
        </tr>
        </table>
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">实现
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">ipi已经实现了基本的timer功能，可以直接使用
        </td>
        <td style="font-weight: bold;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">rustsbi/ipi
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">从platform可以获得ipi
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">主要需要实现embassy_time_driver::Driver
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">其中的
          </td>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">now
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          </td>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">schedule_wake
          </td>
          </tr>
          </table>
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">还需要注册一个time handler
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">用于在每次触发硬件timer中断时
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">填充embassy-timer使用的queue
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">实现在prototyper/prototyper/src/sbi/trap/mod.rs
            <table style="border-width: 2pt; font-size: 8pt;">
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">Trap::Interrupt(Interrupt::MachineTimer
            </td>
            </tr>
            </table>
          </td>
          </tr>
          </table>
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        </td>
        </tr>
        </table>
      </td>
      </tr>
      </table>
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">Q
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">FREQ的转换
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">A
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">embassy-time的feature定义embassy的ticks
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">从ipi读出的timer是ticks
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">但embassy需要的now()返回的是us
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">所以需要根据几个ticks做转换
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">embassy默认设置的ticks在TICK_HZ里
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">实际的FREQ_RATIO = CLINT_FREQ_HZ / TICK_HZ
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">然后根据读出的clint ticks * FREQ_RATIO就能得到us
      </td>
      </tr>
      </table>
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">Q
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">CLINT的FREQ是多少
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">A
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">没有找到具体的描述
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">https://www.kernel.org/doc/Documentation/devicetree/bindings/timer/sifive%2Cclint.yaml
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">提到timebase-frequency设置（在dts）
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">使用的dts是starfive_visionfive2没有这个设置
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">u-boot/arch/riscv/dts/starfive_visionfive2.dts
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">但隔壁的dtsi里出现了配置是4m
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">u-boot/arch/riscv/dts/jh7110-u-boot.dtsi
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">延用，目前看起来可行
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        </td>
        </tr>
        </table>
      </td>
      </tr>
      </table>
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">Q
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">CriticalSection需要实现
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">A
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">在直接使用embassy-executor的riscv+thread的feature的时候，会用到
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">实现就是直接开关中断，比较直接
      </td>
      </tr>
      </table>
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">Q
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">目前timer实现使用Mutex来包装Queue
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">而rp的实现里用了critical_section来包装
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">没有细想，critical_section主要在开关中断
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">但基本各种实现周围都加上了开关中断的逻辑
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">或许可以直接包一层critical_section吧
      </td>
      </tr>
      </table>
    </td>
    </tr>
    </table>
  </td>
  </tr>
  <tr>
  <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">阶段2
    <table style="border-width: 2pt; font-size: 12pt;">
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">实现gpio驱动
    </td>
    </tr>
    </table>
  </td>
  <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
    <table style="border-width: 2pt; font-size: 12pt;">
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">理由
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">鉴于在启动第二个核的时候，
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">第一个核进入uboot可能会接管uart
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">这件事现在有不同的现象
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">hart2启动embassy，hart1进入u-boot，只能看到hart1的打印
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">hart0启动embassy，hart1进入u-boot，这俩的打印都能看见
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">TODO
        </td>
        </tr>
        </table>
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">使用gpio来点个灯来确定embassy在正常运行
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      </table>
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">参考
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">https://doc.rvspace.org/VisionFive2/40_Pin_GPIO_Header_UG/Shared/c_legal_notice_OP.html
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">gpio相关文档
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">至少给我提供了管脚图=_=
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">其他没啥用，都是linux下使用`^
        </td>
        </tr>
        </table>
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">https://doc-en.rvspace.org/JH7110/TRM/JH7110_TRM/sys_crg.html?hl=stg%2Capb
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">在线版本的TRM手册
      </td>
      </tr>
      </table>
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">实现
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">上面的参考查询困难
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">没有找到GPIO_DOEN的相关数据
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">只有个代码参考在TRM里
        </td>
        </tr>
        </table>
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;"><img src="https://raw.githubusercontent.com/liu0fanyi/async-summary/refs/heads/main/example/src/f45d6694cc.png" />
        </td>
        </tr>
        </table>
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">但在u-boot内有驱动
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">有寄存器的准确定义
        </td>
        </tr>
        </table>
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">gpio驱动实现
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">drivers/gpio/starfive-gpio.c
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">gpio的相关关键信息定义
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">u-boot/arch/riscv/include/asm/arch-jh7110/gpio.h
        </td>
        </tr>
        </table>
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">做了rust的最简单实现
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">没有实现embassy里的异步流程
        </td>
        </tr>
        </table>
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      </table>
    </td>
    </tr>
    </table>
  </td>
  </tr>
  <tr>
  <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">阶段3
    <table style="border-width: 2pt; font-size: 12pt;">
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">在hart2上运行embassy
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">hart1上运行u-boot
    </td>
    </tr>
    </table>
  </td>
  <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
    <table style="border-width: 2pt; font-size: 12pt;">
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">一开始
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">使用hsm进行同步
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">预计hart2等待hart1 remote_hsm后开启embassy
      </td>
      </tr>
      </table>
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">后来
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">发现没有必要，在PLATFORM.ready()就做了某种程度上的同步
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">因而直接在hart2上启动embassy没有遇到更多问题
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">比实现gpio还要简单一些
      </td>
      </tr>
      </table>
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">TODO
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">hart2上跑的uart打印都看不见
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">只能看到uboot的打印
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">hart2上的embassy运行的task的呼吸灯正常运行
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">但hart0的行为不一样，或许需要解释一下
      </td>
      </tr>
      </table>
    </td>
    </tr>
    </table>
  </td>
  </tr>
  <tr>
  <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">阶段4
    <table style="border-width: 2pt; font-size: 12pt;">
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">在hart0小核上运行embassy
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">hart1上运行u-boot
    </td>
    </tr>
    </table>
  </td>
  <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
    <table style="border-width: 2pt; font-size: 12pt;">
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">Q
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">直接将current_hartid() 从2改到0发生了什么
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">A
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">程序卡在某个位置，后续没有任何事情发生
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">没有panic
      </td>
      </tr>
      </table>
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">Q
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">如何在embassy里使用log的日志功能
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">A
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">开启embassy的log feature
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">log
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">由于log是项目中只允许一个全局的log::Log实现
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">因而embassy也会使用当前rustsbi的log::Log实现
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">在串口进行打印
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      </table>
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">Q
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">定位过程
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">A
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">通过加打印首先
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">卡在了spawn操作,spawn没有返回
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">spawn的task也会执行一次
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">没有task:run()里的打印，因而task也没有实际进入
        </td>
        </tr>
        </table>
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">executor.run(|spawner| {
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">info!("in executor run");
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">match spawner.spawn(run()) {
            <table style="border-width: 2pt; font-size: 8pt;">
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">Ok(_) =&gt; info!("spawn ok"),
            </td>
            </tr>
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">Err(e) =&gt; info!("spawn one err{}", e),
            </td>
            </tr>
            </table>
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">}
          </td>
          </tr>
          </table>
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">})
        </td>
        </tr>
        </table>
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">清空了spawn里的操作，没有变化
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">与spawn无关
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">是run先初始化返回Token的过程有问题
        </td>
        </tr>
        </table>
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">run这个task本身使用宏#[embassy_executor::task]标记
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">cargo expand展开宏
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">其中run会被pool_get._spawn_async_fn调用
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">经过一串打印_spawn_async_fn-&gt;spawn_impl-&gt;AvailableTask::claim-&gt;task.raw.state.spawn-&gt;compare_exchange
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">最后卡死在这里
        </td>
        </tr>
        </table>
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      </td>
      </tr>
      </table>
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">Q
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">为什么会卡死在compare_exechange
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">A
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">异构参考
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">https://cloud.tencent.com/developer/article/2386842
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">这里是个更复杂的异构
          </td>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">arm+riscv
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">甚至不共享内存
          </td>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">里面主要提到的是通信
          </td>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
            <table style="border-width: 2pt; font-size: 8pt;">
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">AMP+RPMsg
            </td>
            </tr>
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">linux和uboot都有相关实现
            </td>
            </tr>
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">rustsbi没到那个层级没有这方面支持
            </td>
            </tr>
            </table>
          </td>
          </tr>
          </table>
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">0阶段引导
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">零阶段引导程序.pdf
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">RustSBI_零阶段引导程序.pdf
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">https://github.com/rustsbi/bouffaloader?tab=readme-ov-file
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">https://github.com/YuzukiHD/SyterKit
          </td>
          </tr>
          </table>
        </td>
        </tr>
        </table>
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">riscv参考
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">https://five-embeddev.com/riscv-priv-isa-manual/Priv-v1.12/machine.html
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">一些riscv必要寄存器的讲解
          </td>
          </tr>
          </table>
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">https://kaifu6821.gitbook.io/os-on-hifive-unmatched/boot-s7#ying-jian-bei-jing
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">提到了S7
          </td>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">fdt print /cpus；fdt list /cpus：查看设备信息，如图；可以看到cpu相关信息，大核和小核的架构不同，
            <table style="border-width: 2pt; font-size: 8pt;">
            <tr>
            <td style="font-weight: bold;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">小核不支持页表，不支持浮点运算，且没有d-cache
            </td>
            </tr>
            </table>
          </td>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          </td>
          </tr>
          <tr>
          <td style="font-weight: bold;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">由于S74核只支持IMAC指令集，因此本项目中采用-march=rv64imac -mabi=lp64 -mcmodel=medany的组合
          </td>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
            <table style="border-width: 2pt; font-size: 8pt;">
            <tr>
            <td style="font-weight: bold;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">I（Integer）：支持整数基本指令集
            </td>
            </tr>
            <tr>
            <td style="font-weight: bold;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">M（Mul/Div）：支持整数乘除法
            </td>
            </tr>
            <tr>
            <td style="font-weight: bold;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">A（Atomic）：说明理论上支持原子指令
            </td>
            </tr>
            <tr>
            <td style="font-weight: bold;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">C（Compressed）：支持压缩指令
            </td>
            </tr>
            </table>
          </td>
          </tr>
          </table>
        </td>
        </tr>
        </table>
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">关于A扩展
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">Atomic::load/store 实际上生成的是 普通的 lw/sw 指令（不是 lr.w / sc.w），
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">所以不依赖于 A 扩展，
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">在所有基本支持 I 指令集的核上都能正常运行。
          </td>
          </tr>
          </table>
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">compare_exchange / fetch_add / swap 等 需要“读-改-写”语义
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">会使用lr.w/sc.w
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">需要 A 扩展了。
          </td>
          </tr>
          </table>
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">AtomicPtr 只有在执行涉及“读-改-写”语义的操作时才会依赖 A 扩展（也就是 LR/SC 指令）。
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">方法
            <table style="border-width: 2pt; font-size: 8pt;">
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">load(Ordering)	
            </td>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">❌ 否
            </td>
            </tr>
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">store(val, Ordering)	
            </td>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">❌ 否
            </td>
            </tr>
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">swap(val, Ordering)	
            </td>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">✅ 是（使用 lr/sc）
            </td>
            </tr>
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">compare_exchange(...)	
            </td>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">✅ 是（使用 lr/sc）
            </td>
            </tr>
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">fetch_update(...)	
            </td>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">✅ 是
            </td>
            </tr>
            </table>
          </td>
          </tr>
          </table>
        </td>
        </tr>
        </table>
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">打印misa
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">misa
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">https://five-embeddev.com/riscv-priv-isa-manual/Priv-v1.12/machine.html
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">3.1.1 Machine ISA Register misa
          </td>
          </tr>
          </table>
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">hart 1 misa
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">0x80...094112f
          </td>
          </tr>
          </table>
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">hart 0 misa
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">0x80...0901107
          </td>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
            <table style="border-width: 2pt; font-size: 8pt;">
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">相对上面，没了
            </td>
            </tr>
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">单精度，双精度浮点
            </td>
            </tr>
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">没了S态
            </td>
            </tr>
            </table>
          </td>
          </tr>
          </table>
        </td>
        </tr>
        </table>
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">因而
      </td>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">理论上hart 0支持A扩展
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">支持IMAC
          </td>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
            <table style="border-width: 2pt; font-size: 8pt;">
            <tr>
            <td style="font-weight: bold;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">I（Integer）：支持整数基本指令集
            </td>
            </tr>
            <tr>
            <td style="font-weight: bold;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">M（Mul/Div）：支持整数乘除法
            </td>
            </tr>
            <tr>
            <td style="font-weight: bold;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">A（Atomic）：说明理论上支持原子指令
            </td>
            </tr>
            <tr>
            <td style="font-weight: bold;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">C（Compressed）：支持压缩指令
            </td>
            </tr>
            </table>
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">不支持的是
          </td>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
            <table style="border-width: 2pt; font-size: 8pt;">
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">单精度浮点
            </td>
            </tr>
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">双精度浮点
            </td>
            </tr>
            <tr>
            <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">S态
            </td>
            </tr>
            </table>
          </td>
          </tr>
          </table>
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">实际上在time_driver使用了Atomic64
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">load/store可用
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
          <table style="border-width: 2pt; font-size: 9pt;">
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">经过asm直接验证
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">使用lw/sw不会卡死
          </td>
          </tr>
          <tr>
          <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">使用lr.w和sc.w确实会卡死
          </td>
          </tr>
          </table>
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">认为A扩展本身可能有问题
        </td>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        </td>
        </tr>
        </table>
      </td>
      </tr>
      </table>
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">Q
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">embassy要如何修改
    </td>
    </tr>
    <tr>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">A
    </td>
    <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
      <table style="border-width: 2pt; font-size: 11pt;">
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">先实现了一个state的没有Atomic的版本
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">发现没有必要
        </td>
        </tr>
        </table>
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">embassy考虑了没有各种Atomic的情况，因而有多个版本的
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">state
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">run_queue
        </td>
        </tr>
        </table>
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">但是根据target_has_atomic配置
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">不想修改编译的情况下
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">直接添加了一个feature用于强行使用state和run_queue的非atomic的版本
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">使用的是critical_section的版本
        </td>
        </tr>
        </table>
      </td>
      </tr>
      <tr>
      <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">
        <table style="border-width: 2pt; font-size: 10pt;">
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">其中raw::executor也使用了AtomicPtr
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">但只使用了load,store所以道理上不用修改
        </td>
        </tr>
        <tr>
        <td style="font-weight: normal;font-style: normal;font-family: sans-serif;background-color: #FFFFFF;color: #000000;">也实际上没有使用target_has_atomic做区分
        </td>
        </tr>
        </table>
      </td>
      </tr>
      </table>
    </td>
    </tr>
    </table>
  </td>
  </tr>
  </table>
</td>
</tr>
</table>
' width="100%" height="1200px"></iframe>
