{
  flake.modules.homeManager.amberol =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [ amberol ];
    };
}
