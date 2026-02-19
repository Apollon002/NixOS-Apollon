{
  flake.modules.nixos.powerProfiles = {
    services.power-profiles-daemon.enable = true;
  };
}
