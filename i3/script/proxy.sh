#!/bin/bash
path=$(dirname $0)
./proxyStatus

status=$(sh $path/getProxyStatus.sh)
if [[ "$status" = ""  ]]; then
	exec systemctl stop v2ray
else
	exec systemctl start v2ray
fi
