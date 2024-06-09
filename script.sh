#!/bin/bash

# Directory to scan
DIR="/path/to/directory"
LOGFILE="/path/to/logfile.log"

# Create or clear the logfile
> "$LOGFILE"

# List files and log their sizes
for FILE in "$DIR"/*; do
  if [ -f "$FILE" ]; then
    FILESIZE=$(stat --printf="%s" "$FILE")
    echo "File: $FILE Size: $FILESIZE bytes" >> "$LOGFILE"
  fi
done

# Summary
echo "Scan complete. Details logged to $LOGFILE."