{
  flake.modules.homeManager.showtime =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [ showtime ];

      userSettings.defaultVideoPlayer = "org.gnome.Showtime";
    };
}
