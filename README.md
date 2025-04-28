# DataStore
Collection of scripts to save certain public available date locally.

## Youtube

Save Youtube videos. The main workhorse is [yt-dlp](https://github.com/yt-dlp/yt-dlp).

The config file is prepared with configvalues and properties suiting my needs. Please adjust to your needs. Especially `--print-to-file`, `-o` and `--batch-file` regarding the folders.

### yt-load.sh

Just a wrapper to start the loading with one easy command. If you store your config file on another folder or using another name, please adjust this file.

### yt.conf

Central definition of config parameters and values so I don't need to pass them everytime to the yt-dlp command. In the config file they can also kept clearer and more visible.

### yt-urls.txt

A simple list of Youtube videos, channels, shorts to downloads. Put everything on a new line. For more details please consult the yt-dlp documentation.