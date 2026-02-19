{
  flake.modules.homeManager.nemo =
    { pkgs, ... }:
    {
      userSettings.defaultFileBrowser = "nemo";

      home.packages = with pkgs; [
        nemo # file manager
        file-roller # gnomes archive manager
        p7zip # to pack and unpack archives
      ];
    };
}
