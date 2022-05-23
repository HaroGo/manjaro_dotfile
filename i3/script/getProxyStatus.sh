#!/bin/bash

proxy_status=$(systemctl status v2ray|grep inactive)
if [ "$proxy_status" = "" ];then
	echo "" 
else
	echo ""
fi
