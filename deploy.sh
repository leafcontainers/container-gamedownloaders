#!/usr/bin/env bash
set -x
docker compose -f compose.yaml build
docker compose -f compose.yaml up -d
docker compose -f compose.yaml logs -f
docker attach gamedownloader
