🧠 Final Assessment – Network & System Administration (NSA)
This project was completed as the final assessment for the Network and System Administration course in the Bachelor of Computer Networking & Security program at Sunway University. The goal was to simulate a real-world network setup involving:

DHCP Server (IP Address Management)

DNS Server (Domain Resolution)

Web Server (Landing Page Hosting)

Wireless Access Point (WAP) with captive redirection

🎯 Project Objectives
Configure and deploy DHCP, DNS, and Web servers on a local network

Host a wireless access point (WAP) and redirect clients to the hosted website upon connection

Demonstrate secure, functional, and integrated network services

🛠️ Tools & Technologies
💻 Virtual Machines / Bare Metal: Ubuntu Server / Debian / CentOS

🔁 DHCP Server: isc-dhcp-server

🌐 DNS Server: bind9 (BIND DNS)

🕸️ Web Server: Apache2 (with HTML/CSS landing page)

📶 WAP: Hostapd + dnsmasq (for captive portal simulation)

🔌 Network Emulation: Bridged networks / VLAN config (if applicable)

🔐 iptables / UFW: For NAT and redirection

📦 System Architecture
bash
Copy
Edit
+-----------------+         +------------------+         +-----------------+
|     Client      | <-----> | Wireless Access  | <-----> |    Server VM    |
|  (Mobile/PC)    |         |   Point (WAP)    |         | DHCP + DNS +    |
| Connects via WiFi        | (hostapd + dnsmasq)        |  Apache Web     |
+-----------------+         +------------------+         +-----------------+
                                                           |
                                                           |
                                                   [ HTML Landing Page ]
⚙️ Key Functionalities
Component	Function
DHCP	Automatically assigns IP addresses to connected devices
DNS	Resolves the domain name (e.g. furkidsfarm.local) to the web server’s IP
Web Server	Hosts a simple website (e.g. for pet adoption, awareness)
WAP	Provides Wi-Fi access and redirects users to the hosted website
Captive Portal Simulation	Clients connecting to Wi-Fi are redirected to a landing page via DNS hijack or iptables redirection

🧑‍🎓 Learning Outcomes
✅ Hands-on deployment of DNS, DHCP, and Apache servers
✅ Captive portal simulation using routing and firewall rules
✅ Integration of network services in a local network environment
✅ Basic wireless access point configuration (Linux-hosted WAP)
✅ Debugging, testing, and troubleshooting using CLI tools
