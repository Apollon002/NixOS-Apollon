# Include flake-file, flake-parts, import-tree and set outputs to include all modules 
# in ./modules relative to flake.nix.
# Generates the starting point of this config
{ inputs, lib, ... }:
{
  imports = [
    inputs.flake-file.flakeModules.dendritic
    inputs.flake-parts.flakeModules.modules # Expose flake.modules namespace
  ];

  flake-file = {
    description = "Apollon002's Nix configs";
    inputs = {
      nixpkgs.url = lib.mkForce "github:NixOS/nixpkgs/nixos-unstable";
    };
  };
}
