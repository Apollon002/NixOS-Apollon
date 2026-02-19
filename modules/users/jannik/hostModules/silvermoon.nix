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
    jannik
    kitty
    mango
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
