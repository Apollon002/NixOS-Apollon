{ config, ... }:
let
  modules = with config.flake.modules.homeManager; [
    apolloNvim
    bitwarden
    core
    desktop
    dms
    documentIO
    fish
    fonts
    git
    icons
    jannik
    kitty
    mango
    nemo
    typst
    zen-browser
  ];
in
{
  flake.modules.homeManager."jannik@silvermoon" =
    { ... }:
    {
      imports = modules;
    };
}
