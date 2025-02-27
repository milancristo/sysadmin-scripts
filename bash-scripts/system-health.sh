#!/bin/bash

echo "🔍 System Health Report - $(date)"
echo "-------------------------------------"
echo "🖥️ Hostname: $(hostname)"
echo "📊 Uptime: $(uptime -p)"
echo "🖥️ CPU Usage: $(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')%"
echo "💾 Memory Usage: $(free -h | awk 'NR==2 {print $3 "/" $2}')"
echo "💿 Disk Usage:"
df -h | grep "^/dev/"
echo "👥 Active Users:"
who
