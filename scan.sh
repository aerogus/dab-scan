#!/usr/bin/env bash

OPTIONS="-j "           # export json
if [[ ! -z $1 ]]; then
  OPTIONS+="-G $1 "     # gain manuel (0 -> 100)
else
  OPTIONS+="-Q "        # gain auto
fi
OPTIONS+="-B BAND_III " # bande VHF III
OPTIONS+="-C 5A "       # canal de départ
OPTIONS+="-d 15 " # timeout pour time sync. unité ?
OPTIONS+="-D 15 " # timeout pour full sync. unité ?
OUTPUT_TMP=dab-scan.json.tmp
OUTPUT_JSON=dab-scan-G$1-$(date +%Y%m%d-%H%M%S).json
OUTPUT_LOG=/dev/null

if [[ -f "${OUTPUT_TMP}" ]]; then
  rm "${OUTPUT_TMP}"
fi

echo "$(date) DEBUT dab-scanner"
echo "$(date) GAIN = $1"
dab-scanner-rtlsdr $OPTIONS > "${OUTPUT_TMP}" 2> "$OUTPUT_LOG"
echo "$(date) finalisation..."
mv "${OUTPUT_TMP}" "${OUTPUT_JSON}"
echo "$(date) FIN dab-scanner"
