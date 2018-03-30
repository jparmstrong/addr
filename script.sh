#!/bin/bash

if [ ! -f "config" ]; then
  echo "config file must exist."
  exit 1
fi

source config

IP=`curl -s -q0 'https://api.ipify.org?format=txt'`
CURRENT_HN=`cat hostip`

if [ ! "${IP}" == "${CURRENT_HN}" ]; then
  echo "IP address changed! ${IP}" | ./twilio-sms -c config $TO
  echo $IP > hostip
else
  echo "No IP change, not sending text"
fi
