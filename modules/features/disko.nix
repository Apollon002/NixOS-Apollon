{
  flake-file.inputs = {
    disko = {
      url = "github:nix-community/disko/latest";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  flake.modules.nixos.disko =
    { inputs, ... }:
    {
      imports = [ inputs.disko.nixosModules.disko ];
    };
}
