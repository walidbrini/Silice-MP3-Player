import os
from PIL import Image
import numpy as np
import matplotlib.pyplot as plt

def generate_palette():
    """Generate the same 8x8x4 color palette as the C code."""
    palette = []
    for r in range(8):
        for g in range(8):
            for b in range(4):
                red = (r * 255) // 7
                green = (g * 255) // 7
                blue = (b * 255) // 3
                palette.append((red, green, blue))
    return np.array(palette)

def rgb_to_palette_index(rgb, palette):
    """Find the closest palette color using Euclidean distance."""
    r, g, b = rgb
    distances = np.sum((palette - np.array([r, g, b])) ** 2, axis=1)
    return np.argmin(distances)

def convert_image_to_raw(image_path, width=128, height=128, debug=True):
    # Open and resize image
    img = Image.open(image_path)
    img = img.convert('RGB')
    img = img.resize((width, height))
    
    # Perform a horizontal flip
    flipped_img = img.transpose(Image.FLIP_LEFT_RIGHT)
    
    # Rotate the image 90 degrees
    rotated_img = flipped_img.rotate(90, expand=True)
    
    # Resize again to match the output size (128x128)
    rotated_img = rotated_img.resize((width, height))
    
    # Generate palette
    palette = generate_palette()
    
    # Convert image to indexed format
    indexed_image = np.zeros((height, width), dtype=np.uint8)
    rgb_array = np.array(rotated_img)
    
    # Debug: Save original image
    if debug:
        plt.figure(figsize=(15, 5))
        plt.subplot(131)
        plt.imshow(img)
        plt.title('Original Image')
        
        plt.subplot(132)
        plt.imshow(rotated_img)
        plt.title('Flipped and Rotated Image')
        
    # Process each pixel
    print("Converting image to indexed format...")
    for y in range(height):
        for x in range(width):
            rgb = rgb_array[y, x]
            index = rgb_to_palette_index(rgb, palette)
            indexed_image[y, x] = index
            
    # Debug: Create reconstructed image
    if debug:
        reconstructed = np.zeros((height, width, 3), dtype=np.uint8)
        for y in range(height):
            for x in range(width):
                index = indexed_image[y, x]
                reconstructed[y, x] = palette[index]
        
        # Show palette
        palette_viz = np.zeros((16, 16, 3), dtype=np.uint8)
        for i in range(256):
            y, x = divmod(i, 16)
            palette_viz[y, x] = palette[i]
        
        # Plot debug images
        plt.subplot(133)
        plt.imshow(palette_viz)
        plt.title('Color Palette (256 colors)')
        
        plt.tight_layout()
        plt.savefig('debug_output.png')
        plt.close()
        
        # Save indexed image visualization
        plt.figure(figsize=(5, 5))
        plt.imshow(indexed_image, cmap='viridis')
        plt.colorbar(label='Palette Index')
        plt.title('Palette Indices')
        plt.savefig('debug_indices.png')
        plt.close()
    
    return indexed_image.flatten(), palette

def save_raw_image_data(raw_image_data, palette, output_file):
    """Save the raw image data in the format expected by the C code."""
    print(f"Saving raw image data to {output_file}")
    with open(output_file, 'wb') as f:
        # Write the raw image data (128x128 bytes)
        f.write(raw_image_data.tobytes())
        
        # Debug: Print some statistics
        print(f"Raw image statistics:")
        print(f"  Size: {len(raw_image_data)} bytes")
        print(f"  Index range: {raw_image_data.min()}-{raw_image_data.max()}")
        unique_indices = np.unique(raw_image_data)
        print(f"  Unique colors used: {len(unique_indices)}")

def convert_all_images(input_dir, output_dir, width=128, height=128, debug=False):
    """Iterate over all images in the input directory and convert them."""
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)
    
    # Iterate over all image files in the directory
    for file_name in os.listdir(input_dir):
        if file_name.lower().endswith(('.png', '.jpg', '.jpeg')):  # Adjust image extensions
            image_path = os.path.join(input_dir, file_name)
            print(f"Processing image: {image_path}")
            
            # Convert image to raw data
            raw_image_data, palette = convert_image_to_raw(image_path, width, height, debug)
            
            # Define output file path
            output_file = os.path.join(output_dir, f"{os.path.splitext(file_name)[0]}.raw")
            
            # Save the raw image data
            save_raw_image_data(raw_image_data, palette, output_file)
            print(f"Image saved as {output_file}")

def main():
    input_dir = "Image"  # Replace with the path to your images directory
    output_dir = "converted_raw"  # Output directory for raw image data
    
    print(f"Converting all images in {input_dir}...")
    convert_all_images(input_dir, output_dir, debug=False)
    
    print("Conversion complete!")

if __name__ == "__main__":
    main()
