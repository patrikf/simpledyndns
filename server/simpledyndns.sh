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

TIMESTAMP="$(date +"%Y-%m-%d %H:%M:%S")"

ENTRY="$IP$TAB$ALIAS$TAB# $TIMESTAMP"

echo "$ENTRY" >> map

echo "-- Entry added"
echo

exit 0

