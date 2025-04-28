# DataStore
Collection of scripts to save certain public available date locally.

The intention to start saving certain data came after these days more and more data is getting lost. Podcasts are getting deleted. Or the aggregators only provide the last X episodes. For news podcasts that can be ok, for podcasts telling stories it is fatal when you muss part of the story.


## Podcasts
Saving podcast episodes. Worker here is [podcast-dl](https://github.com/lightpohl/podcast-dl). Please follow the installation routine there for further informations.

### podcast-load.sh

Just a wrapper to start the loading with one easy command. If you store your url file in another folder or using another name, please adjust this file.

Because podcast-dl does not support a dedicated config file, please read the parameters in `CONFIG_OPTIONS` carefully and adjust to your needs.

The usage of `--archive` in the config options ensures that episodes are only loaded once and not everytime the script is started.

### podcast-urls.txt

The lists of podcasts you want to download.

`"podcast name" podcasturl`

> [!IMPORTANT]  
> Put the podcast name in "".

For example:

`"Music For Programming" https://musicforprogramming.net/rss.xml`

> [!CAUTION]
> There needs to be at least one line!



## Youtube

Save Youtube videos. The main workhorse is [yt-dlp](https://github.com/yt-dlp/yt-dlp). Please follow the installation routine there for further informations.

The config file is prepared with configvalues and properties suiting my needs. Please adjust to your needs. Especially `--print-to-file`, `-o` and `--batch-file` regarding the folders.

### yt-load.sh

Just a wrapper to start the loading with one easy command. If you store your config file on another folder or using another name, please adjust this file.

### yt.conf

Central definition of config parameters and values so I don't need to pass them everytime to the `yt-dlp` command. In the config file they can also kept clearer and more visible.

### yt-urls.txt

A simple list of Youtube videos, channels, shorts to downloads. Put everything on a new line. For more details please consult the [yt-dlp](https://github.com/yt-dlp/yt-dlp) documentation.