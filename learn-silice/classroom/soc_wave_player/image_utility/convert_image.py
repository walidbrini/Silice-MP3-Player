from PIL import Image
import numpy as np
import os

def convert_to_grayscale(image_path, output_path):
    # Open the image
    img = Image.open(image_path)

    # Convert the image to grayscale
    grayscale_img = img.convert('L')

    # Resize the image to 128x128
    resized_img = grayscale_img.resize((128, 128))

    # Perform a horizontal flip
    flipped_img = resized_img.transpose(Image.FLIP_LEFT_RIGHT)

    # Rotate the image 90 degrees
    rotated_img = flipped_img.rotate(90, expand=True)

    # Convert the image to a numpy array (single channel)
    img_array = np.array(rotated_img)

    # Save the resulting image as raw
    with open(output_path, 'wb') as f:
        img_array.tofile(f)

def process_folder(input_folder, output_folder):
    # Ensure the output folder exists
    os.makedirs(output_folder, exist_ok=True)

    # Iterate over all files in the input folder
    for filename in os.listdir(input_folder):
        input_path = os.path.join(input_folder, filename)

        # Check if the file is an image (by extension)
        if filename.lower().endswith(('.png', '.jpg', '.jpeg', '.bmp', '.tiff')):
            output_path = os.path.join(output_folder, os.path.splitext(filename)[0] + '.raw')
            try:
                convert_to_grayscale(input_path, output_path)
                print(f"Processed: {filename} -> {output_path}")
            except Exception as e:
                print(f"Error processing {filename}: {e}")

# Example usage
input_folder = 'C:\msys64\home\LENOVO\Silice\learn-silice\classroom\soc_wave_player\Image_utility'
output_folder = 'C:\msys64\home\LENOVO\Silice\learn-silice\classroom\soc_wave_player\Image_utility\output_raw'
process_folder(input_folder, output_folder)
