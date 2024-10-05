# AutoHotkey Sound Key Mapping Script

This AutoHotkey script plays custom sound effects when specific keys are pressed and released. It uses a `.env` file for configuration, allowing you to define sound directories, file extensions, and other parameters. The script is ideal for adding auditory feedback to keypresses.

## Features

- Plays sounds for both number keys, letters, special function keys (e.g., Shift, Ctrl, Alt), and punctuation.
- Reads environment variables from a `.env` file for sound configuration.
- Uses `FFplay` to play audio files in the background without displaying any output.
- Supports key press and release events for various keyboard keys.
  
## Requirements

- [AutoHotkey](https://www.autohotkey.com/download/) installed.
- [FFmpeg](https://ffmpeg.org/download.html) installed (specifically `ffplay`).
- A `.env` file configured with paths and sound settings.
- RustyVibes compatible soundpacks ([Download here](https://drive.google.com/file/d/1LQEQ9aOVQAs_wgVecXkjaA9K4LXnCdp_/view))
- **This is windows only** (naturally).

## .env Configuration

Create a `.env` file in the script directory with the following variables:

```
SOUNDPACK_DIR="C:/path/to/soundpacks/"
SOUNDPACK_NAME="mech-key-name/"
FFPLAY_PATH="C:/path/to/ffplay.exe"
AUDIO_EXT=".ogg"
```

## Usage

1. Ensure you have FFplay installed and accessible.
2. Set up your `.env` file with the correct paths and configurations.
3. Run the script using AutoHotkey (run as an administrator for support in terminal).
4. Press any of the mapped keys, and enjoy the sounds.

## Customization

- You can modify the script to change which keys trigger sounds.
- Add or update sound files in your sound pack directory with appropriate names to match the key mappings.
