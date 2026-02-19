{ config, ... }:
let
  modules = with config.flake.modules.homeManager; [
    apolloNvim
    bitwarden
    core
    desktop
    dms
    fish
    fonts
    git
    jannik
    kitty
    mango
    documentIO
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
