{
  flake.modules.homeManager.pearDesktop =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [ pear-desktop ];
    };
}
