#!/bin/sh

# ARRIS ADD begin
if test -f /gw/gw_startup.sh
then
	exec /gw/gw_startup.sh&
fi
# ARRIS ADD end
#
echo -n 'EMIF Controller and DDR PHY in ' && cat /proc/avalanche/ddr_sync_state
# Start up DOCSIS
runall -U 4
