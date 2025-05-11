{
  artisPkgs = {
    artis = final: _prev: import ../artis.nix final.pkgs;
  };
}
