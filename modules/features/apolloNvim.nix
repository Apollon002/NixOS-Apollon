{
  flake.modules.homeManager.apolloNvim =
    { inputs, pkgs, ... }:
    {
      home.packages = [ inputs.self.packages.${pkgs.stdenv.hostPlatform.system}.apolloNvim ];

      userSettings.defaultEditor = "nvim";
    };
}
