# Creates factory namespace to store factory aspect functions in
{ config, lib, ...}:
{
  options.flake.factory = lib.mkOption {
    type = lib.types.attrsOf lib.types.unspecified;
    default = { };
  };
}