#!/bin/bash
PORT="${1:-${KANATA_PORT:-5829}}"

ncat 127.0.0.1 "$PORT" | jq --unbuffered -r '
  to_entries[] | 
  # (?<a>[A-Z]) captures the capital letter as "a"
  # We replace it with " " + .a
  (.key | gsub("(?<a>[A-Z])"; " \(.a)") | ltrimstr(" ")) + ": " + (.value.new // .value | tostring | if startswith("/") then . else (.[0:1] | ascii_upcase) + .[1:] end )
' | while read -r line; do
  notify-send -a "Kanata" "Event" "$line" -t 1500
done
