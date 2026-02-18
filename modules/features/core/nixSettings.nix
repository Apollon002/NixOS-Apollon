{
  flake.modules.nixos.core =
    { lib, ... }:
    {
      services.journald = {
        extraConfig = "SystemMaxUse=50M\nSystemMaxFiles=5";
        rateLimitBurst = 500;
        rateLimitInterval = "30s";
      };

      time.timeZone = "Europe/Berlin";
      services.timesyncd.enable = true;

      i18n = {
        defaultLocale = "en_US.UTF-8";
        extraLocaleSettings = {
          LC_ADDRESS = "de_DE.UTF-8";
          LC_IDENTIFICATION = "de_DE.UTF-8";
          LC_MEASUREMENT = "de_DE.UTF-8";
          LC_MONETARY = "de_DE.UTF-8";
          LC_NAME = "de_DE.UTF-8";
          LC_NUMERIC = "de_DE.UTF-8";
          LC_PAPER = "de_DE.UTF-8";
          LC_TELEPHONE = "de_DE.UTF-8";
          LC_TIME = "de_DE.UTF-8";
        };
        supportedLocales = [
          "en_US.UTF-8/UTF-8"
          "de_DE.UTF-8/UTF-8"
        ];
      };

      programs.nano.enable = lib.mkForce false;

      console = {
        font = "Lat2-Terminus16";
        keyMap = "de";
      };

      # Automated garbage collection & flake activation
      nix = {
        settings = {

          experimental-features = [
            "nix-command"
            "flakes"
          ];
          trusted-users = [ "@wheel" ];
          auto-optimise-store = true;
        };
        gc = {
          automatic = true;
          dates = "weekly";
          options = "--delete-older-than 7d";
        };
      };
      nixpkgs.config.allowUnfree = true;
    };
}
