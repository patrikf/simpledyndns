#!/bin/bash

set -e

ALIAS="$1"
IP="$(echo "$SSH_CLIENT" | cut -d' ' -f1)"
TAB=$'\t'

echo
echo "IP:    $IP"
echo "Alias: $ALIAS"

HOME=/home/simpledyndns

cd "$HOME"

touch map
chmod 644 map

ENTRY="$IP$TAB$ALIAS"

echo "$ENTRY" >> map

echo "-- Entry added"
echo

exit 0

