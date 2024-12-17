#!/bin/bash

# This file was created by Freddie Mac - KD5FMU with the help of ChatGpt
# on November 14th, 2024

# This file was created to make the audio file conversion process more pleasent 
# and easy so that customized audio files may be used for many purposes as well as custom
# ID's and announcements

# Just customize the patch of your audio files in the 'DIRECTORY" line below

# Directory containing the MP3 or WAV files to be converted
DIRECTORY='/var/lib/audio'

# Loop through all MP3 and WAV files in the specified directory
for file in "$DIRECTORY"/*.{mp3,wav}
do
    if [ -f "$file" ]; then
        # Extract the filename without the extension
        base_name=$(basename "$file" | cut -d. -f1)
        
        # Define the output filename with '_converted' suffix
        output_file="$DIRECTORY/${base_name}_converted.wav"
        
        # Use Sox to convert the file to 8000 Hz, 16-bit mono WAV
        sox "$file" -r 8000 -b 16 -c 1 "$output_file"
        
        echo "Converted $file to $output_file"
    fi
done

echo "All conversions are complete."
