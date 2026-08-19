#!/bin/bash

SERVICES=("NetworkManager" "cron" "dbus")

echo "============================================================="
echo "+++++++++++ SYSTEM SERVICE HEALTH CHECK  +++++++++++"
echo "============================================================"

for SERVICE in "${SERVICES[@]}";
do 
  if systemctl is-active --quiet "$SERVICE";
then
 echo "[OK] $SERVICE is Running,"
else 
echo "[FAIL] $SERVICE is Not Running."
fi
done

