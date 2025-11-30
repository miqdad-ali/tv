#!/bin/bash

set -e

mkdir -p config/jellyfin \
         config/radarr \
         config/sonarr \
         config/jackett \
         config/qbittorrent \
         config/cloudflare \
         media/movies \
         media/tv \
         downloads

chmod -R 777 config media downloads

echo "dirs created \n"

