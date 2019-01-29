# Misc

## sysreq config file
`/etc/sysctl.d/10-magic-sysrq.conf`

## ubuntu configure keyboard
```bash
sudo dpkg-reconfigure keyboard-configuration
```

## Add "Open In Terminal" to context menus on Nautilus (file manager)
```bash
sudo apt-get install nautilus-open-terminal
```

## Remove the endless interruptions of logs when running in the TTY - better put into /etc/rc.local (w/o sudo)
```bash
sudo dmesg -n 1
```

## Add openssh server - so that you can SSH into your terminal from afar :)
```bash
sudo apt-get install openssh-server
```

## NodeJS

### install nvm
```bash
curl https://raw.githubusercontent.com/creationix/nvm/v0.23.3/install.sh | bash
```

## npm install access error
- "locking Error: EACCES, open"
```bash
sudo chown -R `whoami` ~/.npm
sudo chown -R `whoami` /usr/local/lib/node_modules
```

# Mouse
## Bluetooth Mouse 
### Service crashes
open `/etc/bluetooth/input.conf`
uncomment and set `IdleTimeout=0`

### Lag / Slow
```bash
sudo tee /etc/modprobe.d/iwlwifi-opt.conf <<< "options iwlwifi bt_coex_active=0"
```

```bash
sudo apt-get install gnome-tweak-tool
```
# Wifi
## Asus wifi fix
```bash
echo "options asus_nb_wmi wapf=1" | sudo tee /etc/modprobe.d/asus_nb_wmi.conf
```

### Touchpad
- Disable
```bash
xinput disable 12
```
- Enable
```bash
xinput enable 12
```
#### Fix FN-F9 toggle
```bash
sudo apt purge xserver-xorg-input-synaptics && sudo apt install xserver-xorg-input-libinput
``` 
Then restart

# Printer
## Xerox 6128
### Drivers
https://drive.google.com/open?id=0B3bpyA8KbMaXMzRUV3E2N3dBOTQ

# sysctl configuration
Append to end of `/etc/sysctl.conf`
```
fs.inotify.max_user_watches=524288
vm.swappiness = 5
vm.min_free_kbytes = 1000000
```
Then run 
```bash
sudo sysctl -p
```
