# scripts

## Lists XBPS packages that were manually installed
```bash
while read -r package ; do               
  echo "${package%-*}"       
done < <(xbps-query -lm)
```

### Output

alsa-plugins-pulseaudio
apulse
pamixer
pavucontrol
pulseaudio

bluez

chromium
wireguard-dkms
wireguard-tools

cryptsetup
dejavu-fonts-ttf
docker
fish-shell
font-firacode
htop
jq
lsof
lvm2
nano
ncdu
neofetch
redshift-gtk
safeeyes
scrot
telegram-desktop
ulauncher
unzip

xtools
zopfli
