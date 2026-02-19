{
  flake.modules.homeManager.evince =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [ evince ];

      userSettings.defaultPdfViewer = "org.gnome.Evince";
    };
}
