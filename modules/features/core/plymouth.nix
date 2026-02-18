{
  flake.modules.nixos.core =
    { pkgs, ... }:
    {
      boot = {
        plymouth = {
          enable = true;
        };
        # Enable "Silent boot"
        consoleLogLevel = 3;
        initrd.verbose = false;
        kernelParams = [
          "quiet"
          "udev.log_level=3"
          "systemd.show_status=auto"
        ];
      };
    };
}
