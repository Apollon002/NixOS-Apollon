{ inputs, lib, ... }:
{
  flake-file.inputs = {
    nvf = {
      url = "github:notashelf/nvf";
    };
  };
  
  perSystem = { pkgs, ...}: {
    packages.apolloNvim =
      (inputs.nvf.lib.neovimConfiguration {
        pkgs = pkgs;
        modules = [ inputs.self.modules.packages.apolloNvim ];
      }).neovim;
  };
}
