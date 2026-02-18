{
  config,
  lib,
  inputs,
  ...
}:
let

  mkNixos =
    system: hostname: sysStateVersion:
    let

      # get all homeManager module that import modules per user on this host (these end with user@system)
      hmImportModuleKeys = builtins.filter (key: lib.hasSuffix "@${hostname}" key) (
        builtins.attrNames config.flake.modules.homeManager
      );
      # Helper function to extract username from the key "username@host"
      # Splits username@hostname to list = [ "username" "hostname"] and gets first element
      usernameOf = key: builtins.elemAt (lib.splitString "@" key) 0;
      # Create attrs username.importModule for each user with hm config for this host
      hmUsers = builtins.listToAttrs (
        map (key: {
          name = usernameOf key;
          value = lib.mkMerge [
            config.flake.modules.homeManager.${key}
            { home.stateVersion = sysStateVersion; }
          ];
        }) hmImportModuleKeys
      );

    in
    inputs.nixpkgs.lib.nixosSystem {
      inherit system;

      modules = [
        config.flake.modules.nixos.core # Imports general modules (git, vim, etc.)
        config.flake.modules.nixos."hosts/${hostname}" # Imports host specific modules

        {
          # import all hm modules for each user defined in this host
          home-manager = {
            users = hmUsers;
            extraSpecialArgs = {
              hostname = "${hostname}";
            };
          };
        }

        {
          networking.hostName = lib.mkDefault hostname;
          nixpkgs.hostPlatform = lib.mkDefault system;
          system.stateVersion = sysStateVersion;
        }
      ];

      specialArgs = { inherit inputs; };
    };

  linux = mkNixos "x86_64-linux";
  linuxArm = mkNixos "aarch64-linux";
in
{
  flake.lib.mkSystem = {
    inherit linux;
    inherit linuxArm;
  };
}
