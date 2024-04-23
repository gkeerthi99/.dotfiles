#!/bin/bash

nmcli device wifi list --rescan auto | rofi -dmenu -i -p "ᯤ WIFI" | awk '{print $9}' &
