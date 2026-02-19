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
          type = lib.types.str;
          default = "";
          description = "Default Browser for user (desktop entry without .desktop!)";
        };
        defaultMailClient = lib.mkOption {
          type = lib.types.str;
          default = "";
          description = "Default Mail-Client for user (desktop entry without .desktop!)";
        };
        defaultFileBrowser = lib.mkOption {
          type = lib.types.str;
          default = "";
          description = "Default File-Browser for user (desktop entry without .desktop!)";
        };

        defaultEditor = lib.mkOption {
          type = lib.types.str;
          default = "";
          description = "Default Editor for user (desktop entry without .desktop!)";
        };
        defaultPdfViewer = lib.mkOption {
          type = lib.types.str;
          default = "";
          description = "Default PDF Viewer for user (desktop entry without .desktop!)";
        };
        defaultImageViewer = lib.mkOption {
          type = lib.types.str;
          default = "";
          description = "Default Image Viewer for user (desktop entry without .desktop!)";
        };
        defaultVideoPlayer = lib.mkOption {
          type = lib.types.str;
          default = "";
          description = "Default Video Player for user (desktop entry without .desktop!)";
        };
        defaultAudioPlayer = lib.mkOption {
          type = lib.types.str;
          default = "";
          description = "Default Audio Player for user (desktop entry without .desktop!)";
        };
        defaultArchive = lib.mkOption {
          type = lib.types.str;
          default = "";
          description = "Default Archive App for user (desktop entry without .desktop!)";
        };
        defaultOffice = lib.mkOption {
          type = lib.types.str;
          default = "";
          description = "Default Office App for user (desktop entry without .desktop!)";
        };

      };
    };
}
