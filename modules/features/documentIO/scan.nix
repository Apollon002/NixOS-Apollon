{
  flake.modules.nixos.documentIO = {
    hardware.sane.enable = true;
  };

  flake.modules.homeManager.documentIO =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [ simple-scan ];
    };
}
