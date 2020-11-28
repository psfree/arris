#! /bin/sh

if test -f /var/tmp/c.tmp
then
    # Start shell
    rm -f /var/tmp/c.tmp
    exec /bin/sh
else
    # Start CLI
    if test -f /usr/sbin/cli
    then   
        echo -n > /var/tmp/c.tmp
        exec /usr/sbin/cli
    fi
fi

