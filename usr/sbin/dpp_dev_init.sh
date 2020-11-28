#!/bin/sh

DPP_CDEV=docsis_pp_counters

DPP_MAJOR=`grep ${DPP_CDEV} /proc/devices | cut -f 1 -d ' '`
mknod /dev/${DPP_CDEV}0 c $DPP_MAJOR 0

