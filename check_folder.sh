#!/bin/bash
SCHEMA=JsonSchema.json
JSON_FOLDER=./file_sd/*.json
for f in $JSON_FOLDER; do
  echo "running json validator for $f"
  json validate --schema-file=$SCHEMA --document-file=$f
done