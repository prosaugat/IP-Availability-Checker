# IP-Availability-Checker

This script defines the network range as 192.168.12, and then uses a for loop to iterate through all possible IP addresses in that range. For each IP address, it pings the address and checks the return code. If the return code is 0, it means the IP address is in use and it will print the IP address is in use. If the return code is not 0, it means the IP address is not in use and it will print the IP address is not in use.

You can modify this script to match your specific network range by changing the value of the network variable.

Note that this script uses the ping command which is not available on all systems. If ping is not present you can use nc command to check the reachability of the IP.
