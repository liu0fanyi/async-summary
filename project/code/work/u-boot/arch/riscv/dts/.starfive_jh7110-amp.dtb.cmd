cmd_arch/riscv/dts/starfive_jh7110-amp.dtb := mkdir -p arch/riscv/dts/ ; (cat /home/VisionFive2/u-boot/arch/riscv/dts/starfive_jh7110-amp.dts; echo '$(pound)include "starfive_jh7110-amp-u-boot.dtsi"') > arch/riscv/dts/.starfive_jh7110-amp.dtb.pre.tmp; cc -E -Wp,-MD,arch/riscv/dts/.starfive_jh7110-amp.dtb.d.pre.tmp -nostdinc -I/home/VisionFive2/u-boot/arch/riscv/dts -I/home/VisionFive2/u-boot/arch/riscv/dts/include -Iinclude -I/home/VisionFive2/u-boot/include -I/home/VisionFive2/u-boot/arch/riscv/include -include /home/VisionFive2/u-boot/include/linux/kconfig.h -D__ASSEMBLY__ -undef -D__DTS__ -x assembler-with-cpp -o arch/riscv/dts/.starfive_jh7110-amp.dtb.dts.tmp arch/riscv/dts/.starfive_jh7110-amp.dtb.pre.tmp ; ./scripts/dtc/dtc -O dtb -o arch/riscv/dts/starfive_jh7110-amp.dtb -b 0 -i /home/VisionFive2/u-boot/arch/riscv/dts/ -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-graph_port -Wno-unique_unit_address -Wno-simple_bus_reg -Wno-pci_device_reg -Wno-pci_bridge -Wno-pci_device_bus_num  -@ -R 4 -p 0x1000 -Wno-unit_address_vs_reg -Wno-unit_address_format -Wno-avoid_unnecessary_addr_size -Wno-alias_paths -Wno-graph_child_address -Wno-graph_port -Wno-unique_unit_address -Wno-simple_bus_reg -Wno-pci_device_reg -Wno-pci_bridge -Wno-pci_device_bus_num  -@ -d arch/riscv/dts/.starfive_jh7110-amp.dtb.d.dtc.tmp arch/riscv/dts/.starfive_jh7110-amp.dtb.dts.tmp || (echo "Check /home/VisionFive2/work/u-boot/arch/riscv/dts/.starfive_jh7110-amp.dtb.pre.tmp for errors" && false) ; sed "s:arch/riscv/dts/.starfive_jh7110-amp.dtb.pre.tmp:/home/VisionFive2/u-boot/arch/riscv/dts/starfive_jh7110-amp.dts:" arch/riscv/dts/.starfive_jh7110-amp.dtb.d.pre.tmp arch/riscv/dts/.starfive_jh7110-amp.dtb.d.dtc.tmp > arch/riscv/dts/.starfive_jh7110-amp.dtb.d

source_arch/riscv/dts/starfive_jh7110-amp.dtb := /home/VisionFive2/u-boot/arch/riscv/dts/starfive_jh7110-amp.dts

deps_arch/riscv/dts/starfive_jh7110-amp.dtb := \
    $(wildcard include/config/target/starfive/visionfive2.h) \
    $(wildcard include/config/target/starfive/devkits.h) \
  /home/VisionFive2/u-boot/include/linux/kconfig.h \
    $(wildcard include/config/booger.h) \
    $(wildcard include/config/foo.h) \
    $(wildcard include/config/spl/.h) \
    $(wildcard include/config/tpl/build.h) \
    $(wildcard include/config/spl/build.h) \
    $(wildcard include/config/spl/foo.h) \
    $(wildcard include/config/tpl/foo.h) \
    $(wildcard include/config/option.h) \
    $(wildcard include/config/acme.h) \
    $(wildcard include/config/spl/acme.h) \
    $(wildcard include/config/tpl/acme.h) \
  /home/VisionFive2/u-boot/arch/riscv/dts/starfive_visionfive2.dts \
  /home/VisionFive2/u-boot/arch/riscv/dts/jh7110.dtsi \
  /home/VisionFive2/u-boot/arch/riscv/dts/jh7110_clk.dtsi \
  /home/VisionFive2/u-boot/include/dt-bindings/reset/starfive-jh7110.h \
  /home/VisionFive2/u-boot/include/dt-bindings/clock/starfive-jh7110-clkgen.h \
  /home/VisionFive2/u-boot/include/dt-bindings/clock/starfive-jh7110-isp.h \
  /home/VisionFive2/u-boot/include/dt-bindings/gpio/gpio.h \
  /home/VisionFive2/u-boot/include/dt-bindings/pinctrl/pinctrl-starfive-jh7110.h \
  /home/VisionFive2/u-boot/arch/riscv/dts/starfive_jh7110-amp-u-boot.dtsi \
  /home/VisionFive2/u-boot/arch/riscv/dts/starfive_visionfive2-u-boot.dtsi \
  /home/VisionFive2/u-boot/arch/riscv/dts/jh7110-u-boot.dtsi \

arch/riscv/dts/starfive_jh7110-amp.dtb: $(deps_arch/riscv/dts/starfive_jh7110-amp.dtb)

$(deps_arch/riscv/dts/starfive_jh7110-amp.dtb):
