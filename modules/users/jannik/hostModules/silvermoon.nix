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
    fileRoller
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
    showtime
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
