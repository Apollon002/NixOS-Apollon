{ ... }:
{
  flake.modules.homeManager.core = { lib, ... }: {

    options.userSettings.gitName = lib.mkOption {
      type = lib.types.nullOr lib.types.str;
      default = null;
      description = "Git Username";
    };

    options.userSettings.gitMail = lib.mkOption {
      type = lib.types.nullOr lib.types.str;
      default = null;
      description = "Git Mail-Adress";
    };

    options.userSettings.defaultBrowser = lib.mkOption {
      type = lib.types.nullOr lib.types.str;
      default = "";
      description = "Default Browser for user";
    };
  };
}
