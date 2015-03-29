#!/bin/sh

# VPNC
/usr/sbin/vpnc /opt/vpn_quassel/vpnconfig.conf

# Start Quassel
/usr/bin/quasselcore -c /opt/vpn_quassel --listen=0.0.0.0
