{
  writeShellApplication,
  pkgs,
  ...
}:
writeShellApplication {
  name = "artis";

  runtimeInputs = with pkgs; [
    kitty
    mpc
    ffmpeg
    imagemagick
  ];

  text = builtins.readFile ./artis;
}
