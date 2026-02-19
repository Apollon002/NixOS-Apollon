{
  flake.modules.homeManager.gthumb =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [ gthumb ];

      userSettings.defaultImageViewer = "org.gnome.gThumb";
    };
}
