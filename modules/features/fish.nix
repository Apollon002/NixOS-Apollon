{
  flake.modules = {
    nixos.fish = {
      programs.fish = {
        enable = true;
        interactiveShellInit = ''
          set fish_greeting
        '';
      };
      # Fix long rebuild times when using fish
      documentation.man.generateCaches = false;
    };

    homeManager.fish =
      { config, lib, ... }:
      {
        programs.fish = {
          enable = true;
          shellInit = ''
            if type -q microfetch
              microfetch
            end
          ''
          + lib.optionalString (config.home.username == "jannik") ''
            export SSH_AUTH_SOCK=/home/jannik/.bitwarden-ssh-agent.sock
          '';
        };
      };
  };
}
