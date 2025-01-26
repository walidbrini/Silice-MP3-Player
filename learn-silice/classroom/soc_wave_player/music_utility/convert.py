import os
import subprocess

def convert_mp3_to_raw(mp3_path, raw_path):
    """
    Converts an MP3 file to RAW format using ffmpeg.

    Parameters:
        mp3_path (str): Path to the input MP3 file.
        raw_path (str): Path to the output RAW file.
    """
    try:
        # Construct the ffmpeg command
        command = [
            'ffmpeg',
            '-i', mp3_path,         # Input file
            '-acodec', 'pcm_u8',    # Audio codec
            '-f', 'u8',             # Output format
            '-filter:a', 'volume=0.5',  # Adjust volume
            '-ac', '1',             # Audio channels (mono)
            '-ar', '8000',          # Sampling rate
            raw_path                # Output file
        ]
        
        # Execute the command
        subprocess.run(command, check=True)
        print(f"Converted {mp3_path} to {raw_path}")
    except subprocess.CalledProcessError as e:
        print(f"Error occurred while processing {mp3_path}: {e}")

def process_folder(input_folder, output_folder):
    """
    Converts all MP3 files in a folder to RAW format.

    Parameters:
        input_folder (str): Path to the folder containing MP3 files.
        output_folder (str): Path to the folder for saving RAW files.
    """
    # Ensure the output folder exists
    os.makedirs(output_folder, exist_ok=True)

    # Iterate over all files in the input folder
    for filename in os.listdir(input_folder):
        if filename.lower().endswith('.mp3'):
            mp3_path = os.path.join(input_folder, filename)
            raw_filename = os.path.splitext(filename)[0] + '.raw'
            raw_path = os.path.join(output_folder, raw_filename)
            convert_mp3_to_raw(mp3_path, raw_path)

# Example usage
input_folder = '.\input_mp3'
output_folder = '.\output_raw'
process_folder(input_folder, output_folder)
