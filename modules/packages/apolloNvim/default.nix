{ inputs, ... }:
{
  flake-file.inputs = {
    nvf = {
      url = "github:notashelf/nvf";
    };
  };

  perSystem =
    { pkgs, ... }:
    {
      packages.apolloNvim =
        (inputs.nvf.lib.neovimConfiguration {
          inherit pkgs;
          modules = [ inputs.self.modules.packages.apolloNvim ];
        }).neovim;
    };
}
