{ ... }:
{
  flake.modules.packages.apolloNvim = { ... }: {
    vim.tabline.nvimBufferline = {
      enable = true;
      mappings.closeCurrent = "<C-q>";
      mappings.cycleNext = "<C-right>";
      mappings.cyclePrevious = "<C-left>";
    };
  };
}
