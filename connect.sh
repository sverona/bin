#!/bin/bash

echo 'Connecting to WKU-WIRELESS...'
connmanctl <<< 'connect wifi_0018deafc09f_5744b552d574952454c455353_managed_none'
sleep 3
echo 'Logging in...'
curl 'https://nac.wku.edu/guest/nacwebauth.php?_browser=1' \
	-d 'mac=00:18:de:af:c0:9f' \
	-d 'username=jnm47447' \
	-d 'password=transeo8' \
	>/dev/null
