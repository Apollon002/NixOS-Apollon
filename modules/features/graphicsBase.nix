{
  flake.modules = {
    nixos.graphicsBase =
      { pkgs, ... }:
      {
        hardware.graphics.enable = true;
        hardware.graphics.enable32Bit = true;

        environment.systemPackages = with pkgs; [
          vulkan-tools
        ];
      };
  };
}
