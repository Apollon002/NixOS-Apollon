{
  flake.modules = {
    nixos.grub =
      { config, pkgs, ... }:
      let
        src = pkgs.fetchFromGitHub {
          owner = "AdisonCavani";
          repo = "distro-grub-themes";
          rev = "ebbd17419890059e371a6f2dbf2a7e76190327d4";
          hash = "sha256-FWkDtoLMTTk2Lz4d4LkFjtV/xYyIlpwZlX5Np1QhXls=";
        };

        grubTheme = pkgs.callPackage "${src}/build/default.nix" { theme = "nixos"; };
      in
      {
        assertions = [
          {
            assertion = !(config.boot.loader.systemd-boot.enable or false);
            message = "GRUB and Systemd-Boot are both activated!";
          }
        ];
        boot.loader = {
          efi.canTouchEfiVariables = false; # because we use install as removable
          timeout = 1; # Skip grub (can be avoided by pressing any key)
          grub = {
            enable = true;
            devices = [ "nodev" ];
            efiSupport = true;
            useOSProber = true;
            efiInstallAsRemovable = true;
            configurationLimit = 5;
            theme = grubTheme;
          };
        };
      };
  };
}
