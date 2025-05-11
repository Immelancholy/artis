{outputs, ...}: {
  artis = final: _prev: import outputs.packages.default final.pkgs;
}
