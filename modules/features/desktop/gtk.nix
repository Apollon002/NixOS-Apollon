{
  flake.modules = {
    nixos.desktop = {
      programs.dconf.enable = true;
    };

    homeManager.desktop =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [
          # Theme
          adw-gtk3

          nwg-look
        ];

        qt = {
          enable = true;
          platformTheme.name = "gtk3";
          style = {
            name = "adwaita";
            package = pkgs.adwaita-qt; # falls du explizit ein Paket setzen willst
          };
        };

        gtk = {
          enable = true;

          theme = {
            name = "adw-gtk3";
            package = pkgs.adw-gtk3;
          };

          iconTheme = {
            name = "Papirus-Dark";
            package = pkgs.papirus-icon-theme;
          };

          cursorTheme = {
            name = "Bibata-Modern-Classic";
            package = pkgs.bibata-cursors;
            size = 24;
          };

          gtk3.extraConfig = {
            "gtk-application-prefer-dark-theme" = 1;
          };
        };
      };
  };
}
