#!/usr/bin/env sh

sudo mv /tmp/dhcpd.conf /etc/dhcp/dhcpd.conf
sudo systemctl restart isc-dhcp-server
