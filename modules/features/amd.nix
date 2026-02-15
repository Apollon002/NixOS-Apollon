{ inputs, ... }:
{
  flake.modules = {
    nixos.amd = { ... }: {
      imports = with inputs.self.modules.nixos; [ graphicsBase ];
    };
  };
}
