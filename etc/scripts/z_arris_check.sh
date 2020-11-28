#!/bin/sh
# ARRIS CHECK Script
if test -f /usr/sbin/nvread
then
    enable_startup=`nvread 0.0.2 long`;
    startup_file=`nvread 0.0.1 str`;

    if [[ -z $enable_startup ]] || [[ -z $startup_file ]]
    then
        if [[ -f /usr/sbin/setstartup ]]
        then
            ## Install default startup handler
            /usr/sbin/setstartup -t;

            if [[ ! -x /nvram/1/run_docsis ]]
            then
                # run_docsis does not exist or is not executable.  Need to install handlers to boot 
                # to App mode.  This is the normal path for new units at the factory.
                /usr/sbin/setstartup -e;
            fi
        else
	    echo "Error: setstartup utility not found."
            exit 2;
        fi
    fi
else
	echo "Error: nvread utility not found."
	exit 2;
fi
exit 0;


