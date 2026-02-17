{ ... }:
{
  flake.modules.packages.apolloNvim =
    { ... }:
    {
      vim.mini = {
        icons.enable = true;
        indentscope.enable = true;
        surround = {
          enable = true;
          setupOpts.mappings = {
            add = "sa";
            delete = "sa";
            find = "sf";
            find_left = "sF";
            highlight = "sh";
            replace = "sr";
          };
        };
      };
    };
}
