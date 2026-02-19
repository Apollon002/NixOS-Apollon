{ config, ... }:
let
  modules = with config.flake.modules.homeManager; [
    amberol
    apolloNvim
    bitwarden
    core
    desktop
    dms
    documentIO
    evince
    fish
    fonts
    git
    gthumb
    jannik
    kitty
    mango
    megacmd
    microfetch
    nemo
    office
    pearDesktop
    pywalfox
    starship
    thunderbird
    typst
    vesktop
    zenBrowser
  ];
in
{
  flake.modules.homeManager."jannik@silvermoon" =
    { ... }:
    {
      imports = modules;
    };
}
