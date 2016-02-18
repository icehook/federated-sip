#!/bin/bash

set -e

/usr/local/opensips/sbin/opensips -u opensips -g opensips -f /usr/local/opensips/etc/opensips/opensips.cfg -D

if [[ $1 == "-d" ]]; then
  tail -f /dev/null
fi

if [[ $1 == "-bash" ]]; then
  /bin/bash
fi
