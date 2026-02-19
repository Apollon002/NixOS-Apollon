{
  flake.modules.homeManager.kitty =
    { config, lib, ... }:
    {
      programs.kitty = {
        enable = true;

        font = {
          name = "FiraCode Nerd Font";
          size = 12;
          package = null;
        };

        settings = lib.mkMerge [
          {
            background_opacity = 0.65;
            background = "black";
          }
          (lib.mkIf config.programs.fish.enable {
            shell = "fish";
          })
        ];
        extraConfig =
          if config.programs.dank-material-shell.enable then
            ''
              include dank-tabs.conf
              include dank-theme.conf
            ''
          else
            "";

        # TODO: DMS CONDITIONAL COLORS IMPORT
      };
    };
}
