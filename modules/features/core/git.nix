{
  flake.modules = {
    nixos.core = { ... }: {
      programs.git.enable = true;
    };

    homeManager.git = { config, ... }: 
      let
        uName = config.userSettings.gitName;
        uMail = config.userSettings.gitMail;
      in {
      programs.git = {
        enable = true;
        settings = {
          init.defaultBranch = "main";
          user = {
            name = if ( uName != null ) then uName else "";
            email = if ( uMail != null ) then uMail else "";
          };
        };
      };
    };
  };
}
