{
  flake.modules.homeManager.nemo =
    { pkgs, ... }:
    {
      userSettings.defaultFileBrowser = "nemo";

      home.packages = with pkgs; [
        nemo
      ];
    };
}
