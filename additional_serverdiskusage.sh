echo " "
echo "Server Disk Usage"
echo " "

echo "Web Server:"

echo "Configuration files:" 
du -sh /etc/httpd/
echo "Web Content:" 
du -sh /srv/http/

echo " "

echo "DNS Server:"

echo "Configuration files:" 
du -sh /etc/named/
echo "Zone files:" 
du -sh /var/named/

echo " "

echo "DHCP Server:"

echo "Configuration files:" 
du -sh /etc/dhcpd/
echo "Lease database:" 
du -sh /var/lib/dhcpd/

echo " "

