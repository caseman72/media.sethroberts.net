#!/bin/bash

# Replace these three settings.
PROJDIR="/site/run"
PIDFILE="$PROJDIR/lighttpd_media.pid"

cd $PROJDIR
if [ -f $PIDFILE ]; then
    kill `cat -- $PIDFILE`
    rm -f -- $PIDFILE
fi

lighttpd -f /site/apps/media.sethroberts.net/lighttpd.conf >& /dev/null

