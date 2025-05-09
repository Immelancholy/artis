{
  description = "A kitty terminal mpd album art viewer";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
    ...
  }: let
    systems = [
      "x86_64-linux"
      "aarch64-linux"
      "x86_64-darwin"
      "aarch64-darwin"
    ];
    forAllSystems = nixpkgs.lib.genAttrs systems;
  in {
    packages = forAllSystems (
      system: let
        pkgs = import nixpkgs {inherit system;};
      in rec {
        artis = pkgs.callPackage ./artis.nix {};
        default = artis;
      }
    );
    formatter = forAllSystems (system: nixpkgs.legacyPackages.${system}.alejandra);

    homeManagerModules.default = import ./modules/hm-module.nix self;
  };
}
