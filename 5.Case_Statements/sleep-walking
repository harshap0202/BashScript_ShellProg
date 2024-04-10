#!/bin/bash

case "$1" in
	start)
		echo "Starting..."
		/tmp/sleep-walking-server &
		;;
	stop)
		echo "Stopped"
		kill $(cat /tmp/sleep-walking-server.pid)
		;;
	*)
		echo "Usage sleep walking start|stop"
		exit 1
		;;
esac
