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

  bashOptions = [
  ];

  runtimeInputs = with pkgs; [
    chafa
    mpc
    ffmpeg
    imagemagick
  ];

  text = ''
    ${builtins.readFile ./artis}
  '';
}
