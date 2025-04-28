#!/bin/bash
export MAX_LENGTH_FILENAME=255

# Loglevel
# static: All logs and errors are outputted to the console, but disables any animations.
# quiet: Only important info and non-critical errors will be logged (e.g. episode download started).
# silent: Only critical error messages will be be logged.
export LOG_LEVEL=silent

CONFIG_OPTIONS="--override --include-meta --include-episode-meta --include-episode-images --add-mp3-metadata --include-episode-transcripts --attempts 5 --threads 1 --archive"


CMD="./podcast-dl-10.4.1-macos-x64 $CONFIG_OPTIONS --url "

# Ensure the while loop works even with names in quotes
while IFS= read -r line || [[ -n "$line" ]]; do
  # Extract everything before the last space as the name
  name=$(echo "$line" | sed -E 's/(.*)[[:space:]]+[^[:space:]]+/\1/')
  # Extract everything after the last space as the URL
  url=$(echo "$line" | sed -E 's/.*[[:space:]]+([^[:space:]]+)/\1/')
  
  echo ">> Downloading podcast: $name"
  $CMD "$url"
done < ./podcast-urls.txt