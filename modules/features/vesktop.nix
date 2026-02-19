{
  flake.modules.homeManager.vesktop =
    { pkgs, ... }:
    {
      programs.vesktop.enable = true;
      programs.vesktop.vencord.settings.enabledThemes = [ "dank-discord.css" ];
    };
}
