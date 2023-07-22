echo " "
echo Apache Web Server Error Logs
echo " "

logfile="/var/log/apache2/error.log"

if [[ -f "$logfile" ]]; then
	tail -n 10 "$logfile" | while read -r line
	do
		echo "[$(date +'%Y-%m-%d %H:%M:%S')] $line"
		echo " "
	done
else
	echo "Error log file not found."
fi
