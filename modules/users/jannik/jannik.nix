{ config, lib, self, ... }:
let
  username = "jannik";
  isAdmin = true;
  gitName = "Apollon002";
  gitMail = "accounts@jannikzenker.de";
in
{
  flake.modules = lib.mkMerge [
    (config.flake.factory.user {
      username = username;
      isAdmin = isAdmin;
      gitName = gitName;
      gitMail = gitMail; 
    })
  ];
}
