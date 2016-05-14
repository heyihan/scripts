#!/bin/bash
 
cd `dirname $0` || exit
dir_name=`pwd`

start() {
        sleep 1
        mkdir -p logs
        supervisord -c supervisord.conf
}

stop() {
    if [ -f logs/supervisord.pid ]
    then
        pid=`cat logs/supervisord.pid`
        kill $pid
    fi
}
 
case "$1" in
    start)
        stop
        start
        echo "Done!"
        ;;
    stop)
        stop
        echo "Done!"
        ;;
    *)
        echo "Usage: $0 {start|stop}"
        ;;
esac
