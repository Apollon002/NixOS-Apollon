{
  flake.modules.homeManager.fileRoller =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [
        file-roller # gnomes archive manager
        p7zip # to pack and unpack archives
      ];

      userSettings.defaultArchive = "org.gnome.FileRoller";
    };
}
