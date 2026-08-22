#!/bin/bash

LOG_FILE="app.log"
echo " ================================================================================== "
echo " REPORT Generated ON  : $(date) "
echo " ================================================================================== "
echo " ---------------------------------------------------------------------------------- "

# Total Error Count 
ERROR_COUNT=$(grep -c "ERROR" "$LOG_FILE" 2>/dev/null || echo 0)
echo " TOTAL ERROR FOUND : $ERROR_COUNT "

echo " "
echo " ====== TOP ERROR MESSAGES ======= "
grep "ERROR" "$LOG_FILE" 2>/dev/null | awk -F 'ERROR' '{print $2}' | sort | uniq -c | sort -nr
echo " ==================================================================================== "
echo " ------------------------------------------------------------------------------------ "
