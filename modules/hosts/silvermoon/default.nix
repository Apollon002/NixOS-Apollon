{ config, ... }:
let
  modules = with config.flake.modules.nixos; [
    desktop
    fish
    fonts
    grub
    ly
    mango
    networkManager
    nvidia

    # Users
    jannik
  ];

  name = "silvermoon";
  sysStateVersion = "26.05";
in
{
  # Define system-wide modules for host
  flake.modules.nixos."hosts/${name}" =
    { ... }:
    {
      imports = modules;
    };

  flake.nixosConfigurations.${name} = config.flake.lib.mkSystem.linux "${name}" "${sysStateVersion}";
}
