#!/bin/bash

# Get the SSID of the currently connected Wi-Fi network
SSID=$(iwgetid -r)

if [ -n "$SSID" ]; then
    # Return signal strength and SSID on the same line
    echo "$SSID"
fi

