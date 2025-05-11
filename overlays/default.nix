{
  outputs,
  pkgs,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) system;
in {
  artis = final: _prev: import outputs.packages.${system}.artis final.pkgs;
}
