{ lib, self, ... }:
let
  username = "<NAME>";
  isAdmin = false;
  gitName = null;
  gitMail = null;
in
{
  flake.modules = lib.mkMerge [
    (self.factory.user {
      username = username;
      isAdmin = isAdmin;
      gitName = gitName;
      gitMail = gitMail;
    })

    {
      nixos.${username} = {
        # additional customization for NixOS user module
      };
    }
  ];
}
