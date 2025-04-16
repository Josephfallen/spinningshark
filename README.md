Below is an example of a complete `README.md` file for your project:

---

```markdown
# Spinningshark

**Spinningshark** is a fun CLI tool that displays a full-color ASCII art animation of the iconic IKEA Blåhaj shark directly in your terminal. Perfect for adding a touch of whimsy to your command line!

## Overview

This project converts a shark GIF into a series of image frames and then uses [chafa](https://github.com/hackerb9/chafa) to render each frame as colorful ASCII art in your terminal. The script loops through these frames at a customizable framerate, creating a smooth animation.

## Features

- **Full-color ASCII animation:** Enjoy a vibrant, animated shark in your terminal.
- **Customizable framerate:** Adjust the speed of the animation by editing the `FPS` variable.
- **System-wide installation:** Once installed, run the `spinningshark` command from any shell.
- **Easy setup:** Use your own GIF by following simple instructions to download and convert it.

## Requirements

- **Operating System:** Linux (works best in X11 terminals)
- **Shell:** Bash or any POSIX-compatible shell
- **Dependencies:**
  - [chafa](https://github.com/hackerb9/chafa) – For converting images to ASCII art  
    Install via:
    ```bash
    sudo apt install chafa
    ```
  - [ImageMagick](https://imagemagick.org/) – For converting GIFs into frames  
    Install via:
    ```bash
    sudo apt install imagemagick
    ```

## Installation

### 1. Clone the Repository

Clone the project from GitHub:

```bash
git clone https://github.com/yourusername/spinningshark.git
cd spinningshark
```

### 2. Prepare the Shark Frames

Create a directory for your shark frames, download your chosen shark GIF, and convert it into individual frames:

```bash
mkdir -p ~/.shark && cd ~/.shark
wget "[https://media.tenor.com/aSHAbIYWqF8AAAAi/blahaj-blåhaj.gif](https://media.tenor.com/Gav8AArqfnIAAAAj/blahaj-bl%C3%A5haj.gif)" -O shark.gif
rm frame_*.png 2>/dev/null
convert -coalesce shark.gif frame_%03d.png
```

### 3. Install the Spinningshark Script Globally

Copy the script to `/usr/local/bin` so it can be run from anywhere:

```bash
sudo cp spinningshark.sh /usr/local/bin/spinningshark
sudo chmod +x /usr/local/bin/spinningshark
```

## Usage

To start the ASCII shark animation, simply run:

```bash
spinningshark
```

The script will continuously loop through the frames in `~/.shark` and render them as colorful ASCII art in your terminal.

## Configuration

The framerate of the animation is controlled by the `FPS` variable in the script. To change it, edit the script:

```bash
sudo nano /usr/local/bin/spinningshark
```

Locate the line:

```bash
FPS=10
```

and change `10` to your desired framerate (for example, `20` for a faster animation or `5` for a slower one).

## Troubleshooting

- **chafa not found:**  
  Make sure chafa is installed:
  ```bash
  sudo apt install chafa
  ```

- **ImageMagick errors during conversion:**  
  Ensure that ImageMagick is properly installed:
  ```bash
  sudo apt install imagemagick
  ```

- **No frames generated:**  
  Verify that the `shark.gif` file was downloaded correctly and that the conversion command ran without errors.

## Contributing

Contributions are welcome! If you have ideas for improvements or encounter any issues, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

## Acknowledgments

- **IKEA** – For the Blåhaj inspiration.
- The developers of [chafa](https://github.com/hackerb9/chafa) and [ImageMagick](https://imagemagick.org/) for their fantastic tools.
```
