# Compile
```bash
sudo apt update && sudo apt install git dpkg-dev debhelper dh-dkms -y
git clone https://github.com/firlin123/steamdeck-dkms.git
cd steamdeck-dkms
dpkg-buildpackage -us -uc
```

# Get files
```bash
sudo apt update && sudo apt install git -y
git clone https://github.com/firlin123/steamdeck-dkms.git
git clone https://gitlab.com/evlaV/linux-integration.git
cd linux-integration
git checkout "<kernel package version>"
cp drivers/mfd/steamdeck.c ../steamdeck-dkms/steamdeck.c
cp drivers/hwmon/steamdeck-hwmon.c ../steamdeck-dkms/steamdeck_hwmon.c
cp drivers/leds/leds-steamdeck.c ../steamdeck-dkms/steamdeck_leds.c
cp drivers/extcon/extcon-steamdeck.c ../steamdeck-dkms/steamdeck_extcon.c
```
