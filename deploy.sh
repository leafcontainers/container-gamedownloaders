#!/usr/bin/env bash
docker compose -f compose.yaml build
docker compose -f compose.yaml up -d
docker compose -f compose.yaml logs -f
docker attach gamedownloader
