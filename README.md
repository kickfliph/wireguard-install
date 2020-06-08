# WireGuard installer

THis is bash script that automate the [WireGuard](https://www.wireguard.com/) setup proces. WireGuard is a point-to-point VPN that can be used in different ways. Here, we mean a VPN as in: the client will forward all its traffic trough an encrypted tunnel to the server.

The server will apply NAT to the client's traffic so it will appear as if the client is browsing the web with the server's IP,The script supports both IPv4 and IPv6. 

This script is a folk of https://github.com/Nyr/wireguard-install code, where I'm [WireGuard-GO](https://github.com/WireGuard/wireguard-go) and for the virtual environment 

## Requirements

Supported distributions:
- Ubuntu
- Debian
- Fedora
- CentOS
- Arch Linux

## Usage

Download and execute the script. Answer the questions asked by the script and it will take care of the rest, make sure login as root.

```curl -O https://github.com/kickfliph/wireguard-install/blob/master/wireguard-install.sh```
```chmod +x wireguard-install.sh```
```./wireguard-install.sh```

It will install WireGuard (kernel module and tools) on the server, configure it, create a systemd service and a client configuration file with QR. 
