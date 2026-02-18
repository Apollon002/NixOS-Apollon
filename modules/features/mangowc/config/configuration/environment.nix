{
  flake.modules = {
    nixos.mango =
      { config, lib, ... }:
      {
        environment.sessionVariables = lib.mkIf config.hardware.nvidia.modesetting.enable {
          WLR_DRM_NO_ATOMIC = 1;
        };
      };

    homeManager.mango = {
      wayland.windowManager.mango.settings = "";
    };
  };
}
