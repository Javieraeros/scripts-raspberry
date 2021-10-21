#!/bin/sh

SERVICES="photoprism supysonic nextcloud"

for SERVICE in $SERVICES; do
    FILE="${HOME}/docker/${SERVICE}-compose/docker-compose.yml"
    /usr/bin/docker-compose -f $FILE restart && result="restarted" || result="failed"
    raspibot "$SERVICE $result"
done
