
echo " "
echo "DNS and DHCP Uptime Monitoring "

if systemctl is-active --quiet named; then
        echo " "
        echo "DNS server is running."
        echo " "

        start_time=$(systemctl show -p ExecMainStartTimestamp --value named)

        current_time=$(date +%s)

        uptime=$((current_time - $(date -d "$start_time" +%s)))

        days=$((uptime / 86400))
        seconds=$((uptime % 60))
        minutes=$((uptime % 3600 / 60))
        hours=$((uptime % 86400 / 3600))


        echo "Uptime: $days days, $hours hours, $minutes minutes, $seconds sec"
        echo " "
else
        echo " "
        echo "DNS server is not running"
	echo " "
fi

if systemctl is-active --quiet dhcpd; then
        echo " "
        echo "DHCP server is running."
        echo " "

        start_time=$(systemctl show -p ExecMainStartTimestamp --value dhcpd)

        current_time=$(date +%s)

        uptime=$((current_time - $(date -d "$start_time" +%s)))

        days=$((uptime / 86400))
        seconds=$((uptime % 60))
        minutes=$((uptime % 3600 / 60))
        hours=$((uptime % 86400 / 3600))


        echo "Uptime: $days days, $hours hours, $minutes minutes, $seconds sec"
        echo " "
else
        echo " "
        echo "DHCP server is not running"
        echo " "
fi
