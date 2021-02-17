#!/bin/sh
[[ -e /lib/systemd/system/helloworld.service ]] \
	&& systemctl is-active --quiet service \
	&& [[ $? -eq 0 ]] \
	&& systemctl stop helloworld || echo "Application not started"
