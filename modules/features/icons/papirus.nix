{
  flake.modules.homeManager.icons =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [ papirus-icon-theme ];
    };
}
