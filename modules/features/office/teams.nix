{
  flake.modules.homeManager.office =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [ teams-for-linux ];
    };
}
