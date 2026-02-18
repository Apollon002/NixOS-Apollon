{
  flake.modules = {

    nixos.desktop = {
      security.polkit.enable = true;
    };

    homeManager.desktop =
      { pkgs, ... }:
      {
        home.packages = with pkgs; [ polkit_gnome ];
        services.polkit-gnome.enable = true;
      };
  };
}
