{
  flake.modules.homeManager.showtime =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [ showtime ];
    };
}
