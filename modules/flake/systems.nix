# Imports all systems flake parts will be able to build for
{ inputs, ... }:
{
  # Add nix-systems input via flake-file
  flake-file.inputs = {
    systems.url = "github:nix-systems/default-linux";
  };

  # set systems list for flake parts (important for perSystems evalutations)
  systems = import inputs.systems;
}

