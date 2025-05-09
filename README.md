```
          _                   _         _          _         _        
         / /\                /\ \      /\ \       /\ \      / /\      
        / /  \              /  \ \     \_\ \      \ \ \    / /  \     
       / / /\ \            / /\ \ \    /\__ \     /\ \_\  / / /\ \__  
      / / /\ \ \          / / /\ \_\  / /_ \ \   / /\/_/ / / /\ \___\ 
     / / /  \ \ \        / / /_/ / / / / /\ \ \ / / /    \ \ \ \/___/ 
    / / /___/ /\ \      / / /__\/ / / / /  \/_// / /      \ \ \       
   / / /_____/ /\ \    / / /_____/ / / /      / / /   _    \ \ \      
  / /_________/\ \ \  / / /\ \ \  / / /   ___/ / /__ /_/\__/ / /      
 / / /_       __\ \_\/ / /  \ \ \/_/ /   /\__\/_/___\\ \/___/ /       
 \_\___\     /____/_/\/_/    \_\/\_\/    \/_________/ \_____\/                                                                            
```                                                                  
# Artis
## A kitty terminal album art view for mpd

## Dependencies:
* kitty
* mpd
* mpc
* ffmpeg
* imagemagick

## Installation
```
# Clone the repo
$ git clone https://github.com/Immelancholy/artis.git

# Cd into the dir
$ cd artis

# Make it executable
$ chmod +x artis

# copy to bin
$ cp artis /usr/bin
```

## Usage
```
usage: artis [-h|--help] [--music_dir \"path/to/dir\"]

optional arguments:
	 -h, --help            show this help message and exit
	 --music_dir           the music directory which MPD plays from
```
You can change the colors by creating a file called colors in .config/artis like so. It takes in these 5 colors in hexadecimal, and uses them for the colors of the text.
```
#e8e1e1
#e8e1e1
#e8e1e1
#e8e1e1
#a585bc
```

## Nix


