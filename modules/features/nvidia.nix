{ inputs, ... }:
{
  flake.modules = {
    nixos.nvidia =
      { config, pkgs, ... }:
      {
        imports = with inputs.self.modules.nixos; [ graphicsBase ];

        boot.initrd.kernelModules = [ "nvidia" ];
        boot.extraModulePackages = [ config.boot.kernelPackages.nvidia_x11 ];

        services.xserver.videoDrivers = [ "nvidia" ];

        hardware.nvidia = {
          open = true;
          nvidiaSettings = true;
          modesetting.enable = true;
        };

        hardware.graphics.extraPackages = with pkgs; [
          vulkan-loader
          vulkan-validation-layers
        ];
      };
  };
}
