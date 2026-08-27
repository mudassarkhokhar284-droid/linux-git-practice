#!/bin/bash

echo "=== SYSTEM RESOURCE MONITOR ==="
echo "Timestamp: $(date)"
echo "-----------------------------------"

# 1. Disk Usage
echo "Disk Usage (Root Partition):"
df -h / | awk 'NR==2 {print "Used: " $3 " / Total: " $2 " (" $5 " used)"}'

echo ""

# 2. RAM Usage & Alert
echo "Memory Usage:"
RAM_TOTAL=$(free -m | awk '/Mem:/ {print $2}')
RAM_USED=$(free -m | awk '/Mem:/ {print $3}')
RAM_PERCENT=$(( RAM_USED * 100 / RAM_TOTAL ))

echo "RAM Used: ${RAM_USED}MB / ${RAM_TOTAL}MB (${RAM_PERCENT}%)"

if [ "$RAM_PERCENT" -gt 80 ]; then
    echo "⚠️ WARNING: High Memory Usage Detected!"
else
    echo "✅ Memory Usage Normal."
fi

echo "-----------------------------------"
