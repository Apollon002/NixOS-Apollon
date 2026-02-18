{
  flake-file.inputs = {
    mango = {
      url = "github:DreamMaoMao/mango";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  flake.modules = {
    nixos.mango =
      { inputs, ... }:
      {
        imports = [ inputs.mango.nixosModules.mango ];

        programs.mango.enable = true;
      };

    homeManager.mango =
      { inputs, ... }:
      {
        imports = [ inputs.mango.hmModules.mango ];
        wayland.windowManager.mango.enable = true;
      };
  };
}
