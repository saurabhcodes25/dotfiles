#!/bin/bash

status=$(protonvpn s | awk '{print $2}')

connection_status=$(awk 'FNR == 4 {print}' <<< $status)

if [ "$connection_status" = 'Connected' ]
then
  # create cache for `notify-send` because `protonvpn s` is very slow
  cache_filename="protonvpn-status-cache"
  if test -f "/tmp/$cache_filename.*"; then
    rm /tmp/$cache_filename.*
  fi

  tmpfile=$(mktemp /tmp/$cache_filename.XXXXX)
  echo "$status" > $tmpfile

  server=$(awk 'FNR == 7 {print}' <<< $status)
  emoji=$([ $(awk 'FNR == 8 {print}' <<< $status) == "Secure-Core" ] && echo "🔐" || echo "🔒")
  echo "$emoji $server"
else
  echo ""
fi
