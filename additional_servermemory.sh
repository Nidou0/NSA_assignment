echo " "
echo "Server Memory Monitoring"
echo " "

monitor_memory() {
        process_name=$1
        pid=$(pgrep $process_name)

        if [[ -n $pid ]]; then
                mem_usage=$(pmap -x $pid | tail -n 1 | awk '{print $3}')
                echo "$process_name service memory usage: $mem_usage kB"
        else
                echo "$process_name service is not running."
        fi
}


echo "Web Server:"
monitor_memory "apache2"
echo " "
echo "DNS Server"
monitor_memory "named"
echo " "
echo "DHCP server"
monitor_memory "dhcpd"
echo " "
