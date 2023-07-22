#!/bin/bash
echo UPTIME
uptime
echo " "
echo MEMORY USAGE
free
echo " "
echo TEMPERATURE
sensors
echo " "
echo DISK USAGE
du -sh /home/nidal/Documents
echo " "
echo CONNECTED CLIENTS
connected_clients=$(netstat -ant | grep ":80" | wc -l)
echo $connected_clients
echo " "
echo CPU USAGE
grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}'
echo " "
echo BANDWIDTH
INTERFACE=enp0s3
echo "$INTERFACE down (Kib/s) up (Kib/s)"
while :
do
awk '{
if (rx) {
	printf (" %.0f   %.0f\n", ($2-rx)/1024, ($10-tx)/1024)
} 	else {
	rx=$2; tx=$10;
}
}' \
	<(grep $INTERFACE /proc/net/dev) \
	<(sleep 1; grep $INTERFACE /proc/net/dev)
	sleep 2;
done

