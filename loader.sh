#!/usr/bin/env bash
set -euo pipefail

echo "Loading data into the triplestore"

TTL_FILE="${1:-judaicalink-ontology.ttl}"

if [ ! -f "$TTL_FILE" ]; then
  echo "ERROR: TTL file '$TTL_FILE' not found." >&2
  exit 1
fi

: "${FUSEKI_URL:?FUSEKI_URL is not set}"
: "${FUSEKI_USER:?FUSEKI_USER is not set}"
: "${FUSEKI_PASSWORD:?FUSEKI_PASSWORD is not set}"

curl -u "${FUSEKI_USER}:${FUSEKI_PASSWORD}" \
     -X POST "${FUSEKI_URL}" \
     -H 'Content-Type: text/turtle' \
     --data-binary "@${TTL_FILE}"

echo "done"
