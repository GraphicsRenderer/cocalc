#!/bin/sh

if [[ -f "/etc/cloudflared/config.yml" ]]
then
    cloudflared --no-autoupdate tunnel run
fi