{
  flake.modules = {
    nixos.grub =
      { config, ... }:
      {
        assertions = [
          {
            assertion = !(config.boot.loader.systemd-boot.enable or false);
            message = "GRUB and Systemd-Boot are both activated!";
          }
        ];
        boot.loader.efi.canTouchEfiVariables = false; # because we use install as removable

        boot.loader.grub = {
          enable = true;
          devices = [ "nodev" ];
          efiSupport = true;
          useOSProber = true;
          efiInstallAsRemovable = true;
          configurationLimit = 5;
        };
      };
  };
}
