#!/bin/bash

set -e

/usr/local/rtpengine/rtpengine -p /var/run/rtpengine.pid --interface 0.0.0.0 --listen-ng 0.0.0.0:60000 -m 50000 -M 55000 -E -L 3 -f

if [[ $1 == "-d" ]]; then
  tail -f /dev/null
fi

if [[ $1 == "-bash" ]]; then
  /bin/bash
fi
