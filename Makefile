obj-m += steamdeck.o
obj-m += steamdeck_hwmon.o
obj-m += steamdeck_leds.o
obj-m += steamdeck_extcon.o

KERNELRELEASE ?= $(shell uname -r)
KERNEL_DIR ?= /lib/modules/$(KERNELRELEASE)/build

all:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) modules
clean:
	$(MAKE) -C $(KERNEL_DIR) M=$(PWD) clean
