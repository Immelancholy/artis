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
## A kitty graphics protocol album art view for mpd

![SS1](/Screenshots/SS1.png?raw=true)

![SS2](/Screenshots/SS2.png?raw=true)

## Dependencies:
* chafa
* a terminal emulator supporting the kitty graphics protocol
* mpd
* mpc
* ffmpeg
* bash

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

Artis defaults to finding music in ```$HOME/Music```, but this can be changed either with the ```--music_dir``` flag or setting the ```ARTIS_MUSIC_DIR``` environment variable

## Nix with flakes

Add in your ```flake.nix```:

```
    inputs = {
        artis = {
            url = "github:Immelancholy/artis";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };
```
Pass inputs to your modules using ```specialArgs``` and then in your ```configuration.nix``` type:

```
    environment.systemPackages = [
        inputs.artis.packages.${pkgs.system}.default
    ];
```

## Nix with flakes + home-manager

Add in your ```flake.nix```:

```
    inputs = {
        artis = {
            url = "github:Immelancholy/artis";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };
```

Add the flakes home-manager module to your home configuration:

```
home-manager.users.mela = {
    imports = [
        inputs.artis.homeManagerModules.default
    ];
};
```

Then enable and configure the module like so:

```
{
  programs.artis = {
    enable = true;
    colors = {
      color1 = "#e8e1e1";
      color2 = "#e8e1e1";
      color3 = "#e8e1e1";
      color4 = "#e8e1e1";
      color5 = "#a585bc";
    };
  };
}
```
