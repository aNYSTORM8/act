#!/bin/sh
/app/bitpingd login --email "$BITPING_EMAIL" --password "$BITPING_PASSWORD"
echo "Container alive, starting ping..."
ping "$PING_TARGET"