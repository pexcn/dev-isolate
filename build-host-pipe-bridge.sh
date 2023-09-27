#!/bin/sh

[ -p /var/run/host-pipe-bridge ] || mkfifo -m 0644 /var/run/host-pipe-bridge

while true; do
  eval "$(cat /var/run/host-pipe-bridge)"
done >/dev/stdout 2>/dev/stderr &
