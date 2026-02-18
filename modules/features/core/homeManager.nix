# Integrates home-manager into nixos evalutation graph
{
  flake-file.inputs = {
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  flake.modules.nixos.core =
    { inputs, ... }:
    {
      imports = [
        inputs.home-manager.nixosModules.home-manager
      ];

      home-manager = {
        useGlobalPkgs = true;
        useUserPackages = true;

        backupFileExtension = "backup";

        extraSpecialArgs = { inherit inputs; };
      };
    };
}
