{
  flake.modules = {
    nixos.systemdboot =
      { config, ... }:
      {
        assertions = [
          {
            assertion = !(config.boot.loader.grub.enable or false);
            message = "GRUB and Systemd-Boot are both activated!";
          }
        ];

        boot.loader = {
          timeout = 1;
          efi = {
            canTouchEfiVariables = true;
            efiSysMountPoint = "/boot";
          };

          systemd-boot = {
            enable = true;
            configurationLimit = 5;
          };
        };
      };
  };
}
