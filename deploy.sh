#!/usr/bin/env bash
set -x
source gamedownloaders.cfg
docker compose -f compose.yaml build
docker compose -f compose.yaml up -d
docker compose -f compose.yaml logs -f
if [ "$lgogdownloader" == 'y' ]
then
  docker exec -i -t gamedownloader lgogdownloader --login
  docker exec -i -t gamedownloader lgogdownloader --list
  docker exec -i -t gamedownloader $lgogdownloader_options
fi
if [ "$itchiodl" == 'y' ]
then
  docker exec -i -t gamedownloader python -m itchiodl.bundle_tool --api-key=$itchio_api_key
  docker exec -i -t gamedownloader python -m itchiodl.downloader --api-key=$itchio_api_key $itchiodl_options
fi
