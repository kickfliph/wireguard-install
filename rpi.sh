apt install raspberrypi-kernel-headers libelf-dev libmnl-dev build-essential git
git clone https://git.zx2c4.com/wireguard-linux-compat
git clone https://git.zx2c4.com/wireguard-tools

#Compile and install the module
make -C wireguard-linux-compat/src -j$(nproc)
sudo make -C wireguard-linux-compat/src install

#Compile and install the wg(8) tool
make -C wireguard-tools/src -j$(nproc)
sudo make -C wireguard-tools/src install

#Once WireGuard is done installing we're gonna enable IP Forwarding then reboot the Pi:
sudo perl -pi -e 's/#{1,}?net.ipv4.ip_forward ?= ?(0|1)/net.ipv4.ip_forward = 1/g' /etc/sysctl.conf
sysctl net.ipv4.ip_forward 
