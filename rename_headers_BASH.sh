#!/bin/bash

filePath="C:\\{Enter folder path here}\\{filename}.fna"
filePath2="C:\\{Enter folder path here}\\{New filename}.fna"

# Read the content of the file
fileContent=$(<"$filePath")

# Regex Pattern
pattern="([A-Za-z0-9]+(_[A-Za-z0-9]+)+)"

# Loop through each line and replace matching lines with a modified line
modifiedContent=""
while IFS= read -r line; do
    if [[ "$line" =~ ">" ]]; then
        matchedSubstring=$(echo "$line" | grep -oE "$pattern" | head -n 1)
        if [ -n "$matchedSubstring" ]; then
            line=">$matchedSubstring"
        else
            echo "No match found."
        fi
    fi
    modifiedContent+="$line"$'\n'
done <<< "$fileContent"

# Save the modified content to a new file
echo "$modifiedContent" > "$filePath2"
