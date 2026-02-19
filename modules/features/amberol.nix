{
  flake.modules.homeManager.amberol =
    { pkgs, ... }:
    {
      home.packages = with pkgs; [ amberol ];

      userSettings.defaultAudioPlayer = "io.bassi.Amberol";
    };
}
