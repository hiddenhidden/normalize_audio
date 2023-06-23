# Volume Normalizer: Installation and Usage Guide

This Python script normalizes the volume of all audio files in the same directory as the script. It supports .wav and .mp3 file formats and normalizes the audio volume to -23.0 dBFS by default. This guide will help you install the necessary prerequisites, modify the target volume level, and use the script on an OS X machine.

## Prerequisites

Before you start, ensure that you have Python 3 and the pydub library installed on your system. If not, follow these steps to install them:

### Step 1: Install Python 3

If you haven't already installed Python 3, follow these steps:

1. Open Terminal.
2. If you have Homebrew installed, you can install Python 3 by typing:

    `brew install python3`

3. Confirm the Python version by typing:

    `python3 --version`

### Step 2: Install pydub

Pydub is a simple and easy-to-use Python library for audio manipulation. To install pydub, type:

    `python3 -m pip install pydub`

## Install the Volume Normalizer Script

1. Open TextEdit, found in the Applications folder.
2. Go to TextEdit > Preferences (or press Command+,) and select "Plain text" under Format.
3. Copy the Volume Normalizer script code into the TextEdit window.
4. Save the file with a ".py" extension, for example, "volume_normalizer.py", to your preferred directory.

## Modify the Target Volume Level

The script normalizes audio to -23.0 dBFS by default. If you want to change this target volume level:

1. Open the "volume_normalizer.py" file in TextEdit.
2. Find the line `normalize_audio(audio_file, -23.0)`.
3. Change `-23.0` to your desired volume level. For instance, if you want to make it quieter, you might set it to `-30.0`. If you want to make it louder, you might set it to `-20.0`. Save the changes.

## How to Use the Script

1. Place your audio files (either .wav or .mp3) in the same directory as the "volume_normalizer.py" script.
2. Open Terminal and navigate to the directory where the "volume_normalizer.py" script is saved.
3. Run the script by typing:

    `python3 volume_normalizer.py`

The script will load each audio file, display its duration and current volume, normalize the volume to the target level you set, and then save the normalized audio file.
