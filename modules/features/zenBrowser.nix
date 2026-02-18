{
  flake-file.inputs.zen-browser = {
    url = "github:youwen5/zen-browser-flake";
    inputs.nixpkgs.follows = "nixpkgs";
  };

  flake.modules.homeManager.zen-browser =
    {
      inputs,
      config,
      pkgs,
      ...
    }:
    {
      home.packages = [ inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default ];
      userSettings.defaultBrowser = "zen";
    };
}
