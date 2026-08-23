#!/bin/bash

echo " ====================================================================== "
echo "                                                                          "
echo " ======== NETWORK DIAGNOSTIC REPORT =========  "
echo "                                                                       "
echo " ---------------------------------------------------------------------- "
echo " 1- Active TCP Listennning Port : "
ss -tuln | grep "LISTEN" | awk '{print $5}'

echo " 2- Testing The Internet Connectivity "
if curl -sI --head https://google.com | grep "HTTP/" > /dev/null;
then
echo " STATUS : ONLINE (REACHABILITY: OK) "
else 
 echo " STATUS : OFFLINE OR BLOCKED "
fi
