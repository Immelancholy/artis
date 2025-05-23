{
  writeShellApplication,
  pkgs,
  ...
}:
writeShellApplication {
  name = "artis";

  runtimeInputs = with pkgs; [
    chafa
    mpc
    ffmpeg
    imagemagick
  ];

  text = builtins.readFile ./artis;
}
