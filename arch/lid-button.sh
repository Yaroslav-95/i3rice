#!/bin/sh
case "$1" in
	close)
		logger "LID close test 123"
		su yaroslav -c "DISPLAY=:0 i3 exec 'i3session suspend' | logger"
		;;
	open)
		logger "LID open test 123" ;;
	*)
		logger "LID undefined action $1" ;;
esac
