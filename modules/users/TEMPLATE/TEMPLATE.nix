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
      inherit username;
      inherit isAdmin;
      inherit gitName;
      inherit gitMail;
    })

    {
      nixos.${username} = {
        # additional customization for NixOS user module
      };
    }
  ];
}
