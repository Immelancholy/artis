self: {
  lib,
  pkgs,
  config,
  self,
  ...
}: let
  inherit (pkgs.stdenv.hostPlatform) system;
  cfg = config.programs.artis;
  package = self.packages.${system}.default;
in {
  options.programs.artis = {
    enable = lib.mkEnableOption "Enable artis";
    package = lib.mkOption {
      type = with lib.types; nullOr package;
      default = package;
      description = "Package of artis to use";
    };
    colors = {
      color1 = lib.mkOption {
        type = lib.types.str;
        default = "#e8e1e1";
        description = "Color of 1st line";
      };
      color2 = lib.mkOption {
        type = lib.types.str;
        default = "#e8e1e1";
        description = "Color of 1st word of 2nd line";
      };
      color3 = lib.mkOption {
        type = lib.types.str;
        default = "#e8e1e1";
        description = "Color of 2nd word of 2nd line";
      };
      color4 = lib.mkOption {
        type = lib.types.str;
        default = "#e8e1e1";
        description = "Color of 3rd word of 2nd line";
      };
      color5 = lib.mkOption {
        type = lib.types.str;
        default = "#a585bc";
        description = "Color of last line";
      };
    };
  };
  config = lib.mkIf cfg.enable {
    home.packages = lib.mkIf (cfg.package != null) [cfg.package];

    xdg.configFile."artis/colors" = lib.mkIf (cfg.colors != {}) {
      text = ''
        ${cfg.colors.color1}
        ${cfg.colors.color2}
        ${cfg.colors.color3}
        ${cfg.colors.color4}
        ${cfg.colors.color5}
      '';
    };
  };
}
