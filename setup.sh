#!/bin/bash

set -e

mkdir -p config/jellyfin \
         config/radarr \
         config/sonarr \
         config/jackett \
         config/qbittorrent \
         config/cloudflare \
         media \
         downloads

chmod -R 777 config media downloads

echo "Directories created and permissions applied. \n"

