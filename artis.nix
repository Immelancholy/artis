# {writeShellScriptBin, ...}: writeShellScriptBin "artis" (builtins.readFile ./artis)
{
  writeShellApplication,
  pkgs,
  ...
}:
writeShellApplication {
  name = "artis";

  runtimeInputs = with pkgs; [
    kitty
    mpd
    mpc
    ffmpeg
    imagemagick
    bash
  ];

  text = builtins.readFile ./artis;
}
