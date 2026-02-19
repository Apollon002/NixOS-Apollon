{
  flake.modules.homeManager.core =
    { lib, ... }:
    {
      options.userSettings = {
        gitName = lib.mkOption {
          type = lib.types.nullOr lib.types.str;
          default = null;
          description = "Git Username";
        };

        gitMail = lib.mkOption {
          type = lib.types.nullOr lib.types.str;
          default = null;
          description = "Git Mail-Adress";
        };

        defaultBrowser = lib.mkOption {
          type = lib.types.nullOr lib.types.str;
          default = "";
          description = "Default Browser for user";
        };
        defaultFileBrowser = lib.mkOption {
          type = lib.types.nullOr lib.types.str;
          default = "";
          description = "Default File-Browser for user";
        };
      };
    };
}
