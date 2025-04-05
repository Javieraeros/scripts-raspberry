#!/bin/sh

SERVICES="immich gokapi audiobookshelf notemark jellyfin homepage mediatracker"
RESULTS=""

for SERVICE in $SERVICES; do
    FILE="${HOME}/docker/${SERVICE}-compose/docker-compose.yml"
    /usr/bin/docker-compose -f $FILE restart && result="restarted" || result="failed"
    RESULTS="${RESULTS}$SERVICE $result\n"
done

echo "$RESULTS" | raspibot -
