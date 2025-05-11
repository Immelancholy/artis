{outputs, ...}: {
  artis = final: _prev: import outputs.packages.artis final.pkgs;
}
