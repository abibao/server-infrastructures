#!/bin/sh
set -e

export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin

case "$1" in

  start)
    echo "start"
    ;;

  stop)
    echo "stop"
    ;;

  restart)
    echo "restart"
    ;;

  status)
    echo "status"
    ;;

  *)
    echo "Usage: service docker {start|stop|restart|status}"
    exit 1
    ;;

esac
