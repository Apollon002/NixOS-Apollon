{
  flake.modules.homeManager.microfetch =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [ microfetch ];
    };
}
