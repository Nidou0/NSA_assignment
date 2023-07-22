echo " "
echo "UPTIME"

if systemctl is-active --quiet apache2; then
	echo " "
	echo "Apache2 is running."
	echo " "

	start_time=$(systemctl show -p ExecMainStartTimestamp --value apache2)

	current_time=$(date +%s)

	uptime=$((current_time - $(date -d "$start_time" +%s)))

	days=$((uptime / 86400))
	seconds=$((uptime % 60))
	minutes=$((uptime % 3600 / 60))
	hours=$((uptime % 86400 / 3600))


	echo "Uptime: $days days, $hours hours, $minutes minutes, $seconds seconds."
	echo " "
else
	echo " "
	echo "Apache2 is not running"
fi


echo " "

echo "MEMORY"

echo " "

pid=$(pgrep apache2)

mem=$(pmap -x $pid | tail -n 1 | awk '{print $4}')

echo "Memory Usage: $mem KB"
echo " "

echo " "

echo "DISK USAGE"

echo " "

du -sh /var/www/html
echo " "


echo " "

