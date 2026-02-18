{ config, lib, ... }:
let
  username = "jannik";
  isAdmin = true;
  gitName = "Apollon002";
  gitMail = "accounts@jannikzenker.de";
in
{
  flake.modules = lib.mkMerge [
    (config.flake.factory.user {
      inherit username;
      inherit isAdmin;
      inherit gitName;
      inherit gitMail;
    })
  ];
}
