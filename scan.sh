#!/usr/bin/env bash

GAIN="-G 80" # manuel
#GAIN="-Q" # auto

OUTPUT_JSON=dab-scan.json
OUTPUT_LOG=/dev/null

dab-scanner-rtlsdr $GAIN -j > "${OUTPUT_JSON}.tmp" 2> "$OUTPUT_LOG"
mv "${OUTPUT_JSON}.tmp" "${OUTPUT_JSON}"

