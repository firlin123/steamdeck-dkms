obj-m += steamdeck.o
obj-m += steamdeck_hwmon.o
obj-m += steamdeck_leds.o
obj-m += steamdeck_extcon.o

KERNEL_DIR ?= /lib/modules/$(shell uname -r)/build

all:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) modules
clean:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) clean
