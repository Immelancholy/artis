{
  writeShellApplication,
  pkgs,
  ...
}:
writeShellApplication {
  name = "artis";

  excludeShellChecks = [
    "SC2086"
  ];

  runtimeInputs = with pkgs; [
    chafa
    mpc
    ffmpeg
    imagemagick
  ];

  text = builtins.readFile ./artis;
}
