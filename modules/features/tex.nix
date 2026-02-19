{
  flake.modules.homeManager.tex =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [ texlive.combined.scheme-full ];
    };
}
