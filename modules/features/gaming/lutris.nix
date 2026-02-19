{
  flake.modules.nixos.gaming =
    { pkgs, ... }:
    {
      environment.systemPackages = with pkgs; [
        (lutris.override {
          # In case games are unable to run due to missing dependencies
          # List of additional system libraries
          extraLibraries = pkgs: [ ];

          # List of additional system packages
          extraPkgs = pkgs: [ ];
        })
      ];
    };
}
