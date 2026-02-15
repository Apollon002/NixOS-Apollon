{ ... }:
{
  flake.modules = {

    nixos.desktop = { ... }: {
      security.polkit.enable = true;
    };

    homeManager.desktop = { ... }: {
      services.polkit-gnome.enable = true;
    };
  };
}
