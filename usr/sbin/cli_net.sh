#! /bin/sh

echo Network devices list:
ifconfig
echo Link status:
cat /proc/avalanche/cpmac_link
cat /proc/avalanche/usb_link
route
route -A inet6
echo ARP Table:
arp -n
echo Networking statistics:
cat /proc/net/dev
echo Protocols statistics:
cat /proc/net/protocols
cat /proc/net/dbrctl/show
cat /proc/net/dbrctl/counters
cat /proc/net/dbrctl/mcastmac
regs 3 0x9118000 256
regs 3 0x904a500 32
