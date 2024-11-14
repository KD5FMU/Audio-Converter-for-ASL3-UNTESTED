# Audio-Converter-for-ASL3
This is a simple script file that will allow you to convert .mp3 and/or .wav files to a format that can be played by the Asterisk server in AllStarLink version 3

This  script file uses the "sox" application to do the acutal file conversion. If for any reason sox in not installed you can do so by running this line:
```
sudo apt-get install sox libsox-fmt-all
```
Make sure you make the script file executable
```
chmod +x /path/to/your/convert_audio.sh
```
