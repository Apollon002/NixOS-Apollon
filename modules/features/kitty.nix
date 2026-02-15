{ ... }:
{
  flake.modules.homeManager.kitty = { config, lib, ... }: {
    programs.kitty = {
      enable = true;

      font = {
        name = "FiraCode Nerd Font";
        size = 12;
        package = null; 
      };
      
      settings = lib.mkMerge [
        {
          background_opacity = 0.3;
          background = "black";
        }
        (lib.mkIf (config.programs.fish.enable) {
          shell = "fish";
        })
      ];

      # TODO: DMS CONDITIONAL COLORS IMPORT
    };
  };
}
