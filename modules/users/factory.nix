{config, lib, ... }:
{
  config.flake.factory.user = { username, isAdmin, gitName ? null, gitMail ? null }: {
    nixos."${username}" = {
      users.users."${username}" = {
        isNormalUser = true;
        createHome = true;
        extraGroups = [
          "networkmanager"
	  "input"
	  "dialout"
	  "video"
	  "render"
	  "lp"
	  "scanner"
        ] 
        ++ lib.optionals isAdmin [ "wheel" ];
      };
    };
    homeManager."${username}" = {
      userSettings.gitName = gitName;
      userSettings.gitMail = gitMail;
    };
  };
}
