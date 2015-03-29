#!/bin/sh

# OpenVPN /etc/resolv.conf updates
/opt/vpn_quassel/client.up

# Start Quassel
/usr/bin/quasselcore -c /opt/vpn_quassel --listen=0.0.0.0
