# !/bin/sh
if test -f /usr/sbin/nvread
then
	enable_startup=`nvread 0.0.2 long`   
	if [ -z $enable_startup ]; then \
		echo "Warning: system startup is not initialized, applying default values." ;\
		if test -f /usr/sbin/setstartup ;\
                then \
	       	    /usr/sbin/setstartup --default ;\
		    enable_startup=`nvread 0.0.2 long`; \
		else \
		    echo "Cannot set default values, missing setstartup utility." ;\
		fi; \
	fi
	if [ $enable_startup -eq 1 ]; then \
		startup_file=`nvread 0.0.1 str`; \
		if [ ! -f $startup_file ]; then \
			echo "Error: unable to find the selected startup file ($startup_file)."; \
			echo "Please use CLI to setup the system startup (system->startup menu)."; \
			exit 1; \
		fi; \
	fi
else
	echo "Error: nvread utility not found."
	exit 2
fi
