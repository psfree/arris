#! /bin/sh

cat /proc/cpuinfo
echo Process information:
ps
sched
echo Memory information:
cat /proc/meminfo
echo Slab information:
cat /proc/slabinfo
echo Zone information:
cat /proc/zoneinfo
echo Alignment:
cat /proc/cpu/alignment
echo MTDs:
cat /proc/mtd
echo Mounts:
cat /proc/mounts
echo ICC information:
iccctl status
iccctl messages
iccctl mallocs
iccctl owners

