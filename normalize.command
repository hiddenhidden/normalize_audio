#!/usr/bin/env python3

import os
import glob
from pydub import AudioSegment

def match_target_amplitude(sound, target_dBFS):
    change_in_dBFS = target_dBFS - sound.dBFS
    return sound.apply_gain(change_in_dBFS)

def normalize_audio(filename, target_dBFS):
    print(f"Loading {filename}...")
    audio = AudioSegment.from_file(filename)
    print(f"Loaded {filename} with duration {len(audio)} ms and volume {audio.dBFS} dBFS.")
    
    print(f"Normalizing {filename}...")
    normalized_audio = match_target_amplitude(audio, target_dBFS)  # normalized to target dBFS
    print(f"Normalized {filename} to volume {normalized_audio.dBFS} dBFS.")
    
    print(f"Saving normalized {filename}...")
    normalized_audio.export(filename, format=filename.split('.')[-1])
    print(f"Saved normalized {filename}.")

def main():
    script_dir = os.path.dirname(os.path.realpath(__file__))
    audio_files = glob.glob(os.path.join(script_dir, "*.[wm]av")) + glob.glob(os.path.join(script_dir, "*.mp3"))
    audio_files.sort()
    if not audio_files:
        print("No .wav or .mp3 files found in the script's directory.")
        return

    for audio_file in audio_files:
        normalize_audio(audio_file, -23.0)

if __name__ == "__main__":
    main()
