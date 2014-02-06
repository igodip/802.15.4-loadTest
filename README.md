802.15.4-loadTest
=================
This project aims to create a small 802.15.4 network and to analyze the information circulating on the network.

Install coordinator
-----------------

    $cd coordinator
    $make telosb install bsl,/dev/ttyUSBx

Install sniffer
-----------------
    
    $cd packetsniffer
    $make telosb install bsl,/dev/ttyUSBx

Install endDevice
-----------------

    $cd device
    $make telosb install bsl,/dev/ttyUSBx
    
